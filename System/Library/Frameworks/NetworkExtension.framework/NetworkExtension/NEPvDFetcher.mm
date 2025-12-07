@interface NEPvDFetcher
- (BOOL)isActive;
- (NEPvDFetcher)initWithDelegate:(id)delegate queue:(id)queue url:(id)url identityRef:(__SecIdentity *)ref;
- (id)findProxy:(void *)proxy proxyToFind:(void *)find;
- (id)formatExpirationDateFrom:(void *)from;
- (void)URLSession:(id)session task:(id)task didReceiveChallenge:(id)challenge completionHandler:(id)handler;
- (void)URLSession:(id)session taskIsWaitingForConnectivity:(id)connectivity;
- (void)dealloc;
- (void)fetchPvDConfig;
- (void)setQueue:(uint64_t)queue;
@end

@implementation NEPvDFetcher

- (void)URLSession:(id)session task:(id)task didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  v26 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  taskCopy = task;
  challengeCopy = challenge;
  handlerCopy = handler;
  v14 = ne_log_obj();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    protectionSpace = [challengeCopy protectionSpace];
    authenticationMethod = [protectionSpace authenticationMethod];
    v24 = 138412290;
    v25 = authenticationMethod;
    _os_log_debug_impl(&dword_1BA83C000, v14, OS_LOG_TYPE_DEBUG, "PvD got challenge type %@", &v24, 0xCu);
  }

  if (!challengeCopy)
  {
    goto LABEL_14;
  }

  protectionSpace2 = [challengeCopy protectionSpace];
  authenticationMethod2 = [protectionSpace2 authenticationMethod];
  isEqualToString = objc_msgSend_isEqualToString_(authenticationMethod2);

  if (!isEqualToString)
  {
    goto LABEL_14;
  }

  if (!self || (identityRef = self->_identityRef) == 0)
  {
    v21 = ne_log_obj();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      LOWORD(v24) = 0;
      _os_log_impl(&dword_1BA83C000, v21, OS_LOG_TYPE_INFO, "PvD requesting client cert but none provided", &v24, 2u);
    }

    goto LABEL_13;
  }

  v19 = [MEMORY[0x1E696AF30] credentialWithIdentity:identityRef certificates:0 persistence:1];
  if (!v19)
  {
    v21 = ne_log_obj();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v24) = 0;
      _os_log_error_impl(&dword_1BA83C000, v21, OS_LOG_TYPE_ERROR, "Unable to create client credential for PvD challenge", &v24, 2u);
    }

LABEL_13:

LABEL_14:
    handlerCopy[2](handlerCopy, 1, 0);
    goto LABEL_15;
  }

  v20 = v19;
  handlerCopy[2](handlerCopy, 0, v19);

LABEL_15:
}

- (void)URLSession:(id)session taskIsWaitingForConnectivity:(id)connectivity
{
  v10 = *MEMORY[0x1E69E9840];
  connectivityCopy = connectivity;
  v5 = ne_log_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    currentRequest = [connectivityCopy currentRequest];
    v7 = [currentRequest URL];
    v8 = 138412290;
    v9 = v7;
    _os_log_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_DEFAULT, "PvD configuration fetch is waiting for connectivity for %@", &v8, 0xCu);
  }
}

- (BOOL)isActive
{
  if (self)
  {
    self = objc_getProperty(self, a2, 48, 1);
  }

  return self != 0;
}

- (void)dealloc
{
  if (self)
  {
    session = self->_session;
    if (session)
    {
      [(NSURLSession *)session invalidateAndCancel];
      objc_storeStrong(&self->_session, 0);
    }

    fetchTimer = self->_fetchTimer;
    if (fetchTimer)
    {
      dispatch_source_cancel(fetchTimer);
      objc_storeStrong(&self->_fetchTimer, 0);
    }
  }

  [(NEPvDFetcher *)self setQueue:?];
  v5.receiver = self;
  v5.super_class = NEPvDFetcher;
  [(NEPvDFetcher *)&v5 dealloc];
}

- (void)setQueue:(uint64_t)queue
{
  if (queue)
  {
    objc_storeStrong((queue + 32), a2);
  }
}

- (NEPvDFetcher)initWithDelegate:(id)delegate queue:(id)queue url:(id)url identityRef:(__SecIdentity *)ref
{
  location[3] = *MEMORY[0x1E69E9840];
  delegateCopy = delegate;
  queueCopy = queue;
  urlCopy = url;
  v13 = urlCopy;
  if (!urlCopy)
  {
    v31 = ne_log_obj();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
    {
      LODWORD(location[0]) = 136315138;
      *(location + 4) = "[NEPvDFetcher initWithDelegate:queue:url:identityRef:]";
      _os_log_fault_impl(&dword_1BA83C000, v31, OS_LOG_TYPE_FAULT, "%s called with null url", location, 0xCu);
    }

    goto LABEL_8;
  }

  host = [urlCopy host];

  if (!host)
  {
    v31 = ne_log_obj();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
    {
      LODWORD(location[0]) = 136315138;
      *(location + 4) = "[NEPvDFetcher initWithDelegate:queue:url:identityRef:]";
      _os_log_fault_impl(&dword_1BA83C000, v31, OS_LOG_TYPE_FAULT, "%s called with null url.host", location, 0xCu);
    }

LABEL_8:

LABEL_9:
    v30 = 0;
    goto LABEL_14;
  }

  v36.receiver = self;
  v36.super_class = NEPvDFetcher;
  self = [(NEPvDFetcher *)&v36 init];
  if (!self)
  {
    self = ne_log_obj();
    if (os_log_type_enabled(&self->super, OS_LOG_TYPE_FAULT))
    {
      LOWORD(location[0]) = 0;
      _os_log_fault_impl(&dword_1BA83C000, &self->super, OS_LOG_TYPE_FAULT, "[super init] failed", location, 2u);
    }

    goto LABEL_9;
  }

  v15 = objc_alloc_init(MEMORY[0x1E696AF20]);
  [v15 setScheme:@"https"];
  [v15 setPath:@"/.well-known/pvd"];
  host2 = [v13 host];
  [v15 setHost:host2];

  port = [v13 port];
  [v15 setPort:port];

  v18 = [v15 URL];
  objc_storeStrong(&self->_url, v18);

  if (self->_url)
  {
    v19 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    objc_storeStrong(&self->_queue, v19);

    [(NSOperationQueue *)self->_queue setUnderlyingQueue:queueCopy];
    ephemeralSessionConfiguration = [MEMORY[0x1E696AF80] ephemeralSessionConfiguration];
    [ephemeralSessionConfiguration setWaitsForConnectivity:1];
    v21 = MEMORY[0x1E696AF78];
    v22 = self->_queue;
    v23 = [v21 sessionWithConfiguration:ephemeralSessionConfiguration delegate:self delegateQueue:v22];
    objc_storeStrong(&self->_session, v23);

    objc_storeWeak(&self->_delegate, delegateCopy);
    self->_identityRef = ref;
    v24 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, queueCopy);
    objc_storeStrong(&self->_fetchTimer, v24);

    objc_initWeak(location, self);
    fetchTimer = self->_fetchTimer;
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __55__NEPvDFetcher_initWithDelegate_queue_url_identityRef___block_invoke;
    v33[3] = &unk_1E7F0A020;
    selfCopy = self;
    v34 = selfCopy;
    v27 = fetchTimer;
    objc_copyWeak(&v35, location);
    dispatch_source_set_event_handler(v27, v33);

    v28 = self->_fetchTimer;
    v29 = dispatch_time(0x8000000000000000, 86400000000000);
    dispatch_source_set_timer(v28, v29, 0xFFFFFFFFFFFFFFFFLL, 0);

    dispatch_activate(self->_fetchTimer);
    [(NEPvDFetcher *)selfCopy fetchPvDConfig];
    v30 = selfCopy;
    objc_destroyWeak(&v35);

    objc_destroyWeak(location);
  }

  else
  {
    ephemeralSessionConfiguration = ne_log_obj();
    if (os_log_type_enabled(ephemeralSessionConfiguration, OS_LOG_TYPE_FAULT))
    {
      LODWORD(location[0]) = 136315138;
      *(location + 4) = "[NEPvDFetcher initWithDelegate:queue:url:identityRef:]";
      _os_log_fault_impl(&dword_1BA83C000, ephemeralSessionConfiguration, OS_LOG_TYPE_FAULT, "%s called with null self.url", location, 0xCu);
    }

    v30 = 0;
  }

LABEL_14:
  return v30;
}

void __55__NEPvDFetcher_initWithDelegate_queue_url_identityRef___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = ne_log_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_1BA83C000, v2, OS_LOG_TYPE_DEFAULT, "PvD fetch for %@ fired", &v7, 0xCu);
  }

  v4 = os_transaction_create();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    [(NEPvDFetcher *)WeakRetained fetchPvDConfig];
  }
}

- (void)fetchPvDConfig
{
  v20 = *MEMORY[0x1E69E9840];
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3032000000;
  v16[3] = __Block_byref_object_copy__20481;
  v16[4] = __Block_byref_object_dispose__20482;
  v17 = 0;
  if ((*(self + 8) & 1) == 0)
  {
    *(self + 8) = 1;
    v2 = *(self + 16);
    v3 = [MEMORY[0x1E696AF68] requestWithURL:*(self + 16) cachePolicy:1 timeoutInterval:30.0];
    objc_initWeak(&location, self);
    v4 = ne_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v19 = v2;
      _os_log_debug_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_DEBUG, "Fetching PvD configuration for url %@", buf, 0xCu);
    }

    v5 = *(self + 24);
    v8 = MEMORY[0x1E69E9820];
    v9 = 3221225472;
    v10 = __30__NEPvDFetcher_fetchPvDConfig__block_invoke;
    v11 = &unk_1E7F0A048;
    v6 = v2;
    v12 = v6;
    v13 = v16;
    objc_copyWeak(&v14, &location);
    v7 = [v5 dataTaskWithRequest:v3 completionHandler:&v8];

    [v7 resume];
    objc_destroyWeak(&v14);

    objc_destroyWeak(&location);
  }

  _Block_object_dispose(v16, 8);
}

void __30__NEPvDFetcher_fetchPvDConfig__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v146 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a4;
  if (v8)
  {
    WeakRetained = ne_log_obj();
    if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_ERROR))
    {
      v10 = [v8 localizedDescription];
      v11 = *(a1 + 32);
      *buf = 138543618;
      v139 = v10;
      v140 = 2112;
      v141 = v11;
      v12 = "Fetching PvD configuration resulted in error: %{public}@ with url: %@";
      v13 = WeakRetained;
      goto LABEL_4;
    }

    goto LABEL_36;
  }

  v14 = [a3 statusCode];
  v15 = v14;
  if (!v7 || v14 != 200)
  {
    WeakRetained = ne_log_obj();
    if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_ERROR))
    {
      v33 = *(a1 + 32);
      *buf = 134218242;
      v139 = v15;
      v140 = 2112;
      v141 = v33;
      _os_log_error_impl(&dword_1BA83C000, WeakRetained, OS_LOG_TYPE_ERROR, "Fetching proxy PvD configuration resulted in unexpected response: %ld with url: %@", buf, 0x16u);
    }

    goto LABEL_36;
  }

  v127 = 0;
  v16 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v7 options:0 error:&v127];
  WeakRetained = v127;
  v17 = *(*(a1 + 40) + 8);
  v18 = *(v17 + 40);
  *(v17 + 40) = v16;

  if ((isa_nsdictionary(*(*(*(a1 + 40) + 8) + 40)) & 1) == 0)
  {
    v10 = ne_log_obj();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_35;
    }

    v34 = *(a1 + 32);
    *buf = 138412546;
    v139 = WeakRetained;
    v140 = 2112;
    v141 = v34;
    v12 = "Fetching proxy PvD configuration resulted in malformed JSON object: %@ with url: %@";
    v13 = v10;
LABEL_4:
    _os_log_error_impl(&dword_1BA83C000, v13, OS_LOG_TYPE_ERROR, v12, buf, 0x16u);
LABEL_35:

    goto LABEL_36;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v19 = *(a1 + 32);
    v20 = *(*(*(a1 + 40) + 8) + 40);
    v21 = v19;
    v22 = [v20 objectForKey:@"identifier"];
    v23 = 0x1E695D000uLL;
    if (v22)
    {
      v24 = v22;
      v25 = [v20 objectForKey:@"proxies"];
      if (v25)
      {
        v26 = v25;
        v27 = [v20 objectForKey:@"expires"];

        v23 = 0x1E695D000uLL;
        if (v27)
        {
          v28 = [v20 objectForKey:@"expires"];
          v29 = [NEPvDFetcher formatExpirationDateFrom:v28];
          v30 = [MEMORY[0x1E695DF00] now];
          v126 = v29;
          v31 = [v30 compare:v29];

          if (v31 != -1)
          {
            v32 = ne_log_obj();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
            {
              *v142 = 138412546;
              v143 = v28;
              v144 = 2112;
              v145 = v21;
              _os_log_error_impl(&dword_1BA83C000, v32, OS_LOG_TYPE_ERROR, "PvD configuration is expired (%@) from %@", v142, 0x16u);
            }

LABEL_23:
            goto LABEL_24;
          }

          v125 = [v20 objectForKey:@"identifier"];
          v123 = v28;
          if (!isa_nsstring(v125) || ([v21 host], v49 = objc_claimAutoreleasedReturnValue(), isEqualToString = objc_msgSend_isEqualToString_(v125), v49, (isEqualToString & 1) == 0))
          {
            v69 = ne_log_obj();
            v124 = v69;
            if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
            {
              *v142 = 138412546;
              v143 = v21;
              v144 = 2112;
              v145 = v125;
              _os_log_error_impl(&dword_1BA83C000, v69, OS_LOG_TYPE_ERROR, "Matching identifier for PvD was not found in response for url %@ : %@", v142, 0x16u);
            }

            v70 = 0;
            v71 = v126;
LABEL_81:

            if (v70)
            {
              v75 = [objc_getProperty(WeakRetained v74];
              v76 = [v75 isEqualToDictionary:*(*(*(a1 + 40) + 8) + 40)];

              if ((v76 & 1) == 0)
              {
                v77 = ne_log_obj();
                if (os_log_type_enabled(v77, OS_LOG_TYPE_INFO))
                {
                  Property = objc_getProperty(WeakRetained, v78, 72, 1);
                  v80 = @"updated";
                  v81 = *(a1 + 32);
                  if (!Property)
                  {
                    v80 = @"first";
                  }

                  *buf = 138412546;
                  v139 = v80;
                  v140 = 2112;
                  v141 = v81;
                  _os_log_impl(&dword_1BA83C000, v77, OS_LOG_TYPE_INFO, "Got %@ PvD configuration from %@", buf, 0x16u);
                }

                v82 = [[NEPvDConfiguration alloc] initWithDictionary:?];
                objc_setProperty_atomic(WeakRetained, v83, v82, 72);

                v35 = objc_loadWeakRetained(&WeakRetained[8].isa);
                if (objc_opt_respondsToSelector())
                {
                  [v35 configUpdated:objc_getProperty(WeakRetained, v84, 72, 1)];
                }

                goto LABEL_26;
              }
            }

LABEL_24:
            v35 = ne_log_obj();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
            {
              v72 = *(a1 + 32);
              *buf = 138412290;
              v139 = v72;
              _os_log_debug_impl(&dword_1BA83C000, v35, OS_LOG_TYPE_DEBUG, "Ignoring invalid or unchanged PvD configuration for %@", buf, 0xCu);
            }

LABEL_26:

            v36 = [*(v23 + 3840) now];
            objc_setProperty_atomic(WeakRetained, v37, v36, 48);

            LOBYTE(WeakRetained[1].isa) = 0;
            if (objc_getProperty(WeakRetained, v38, 72, 1))
            {
              v40 = [objc_getProperty(WeakRetained v39];
              v41 = [v40 valueForKey:@"expires"];

              v42 = [NEPvDFetcher formatExpirationDateFrom:v41];
              v43 = [*(v23 + 3840) now];
              [v42 timeIntervalSinceDate:v43];
              v45 = v44;

              v46 = 300.0;
              if (v45 >= 300.0)
              {
                v46 = v45;
                if (v45 > 86400.0)
                {
                  v46 = 86400.0;
                }
              }
            }

            else
            {
              v46 = 86400.0;
            }

            v47 = ne_log_obj();
            if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412546;
              v139 = WeakRetained;
              v140 = 2048;
              v141 = v46 / 60;
              _os_log_debug_impl(&dword_1BA83C000, v47, OS_LOG_TYPE_DEBUG, "Fetching new PvD %@ in %lu mins", buf, 0x16u);
            }

            v10 = WeakRetained[7].isa;
            v48 = dispatch_time(0x8000000000000000, (v46 * 1000000000.0));
            dispatch_source_set_timer(v10, v48, 0xFFFFFFFFFFFFFFFFLL, 0);
            goto LABEL_35;
          }

          v51 = [v20 objectForKey:@"proxies"];
          v124 = v51;
          if (isa_nsarray(v51) && [v51 count])
          {
            v52 = [v20 objectForKey:@"proxy-match"];
            if (isa_nsarray(v52) && [v52 count])
            {
              v134 = 0u;
              v135 = 0u;
              v132 = 0u;
              v133 = 0u;
              v53 = v52;
              v119 = [v53 countByEnumeratingWithState:&v132 objects:buf count:16];
              log = v53;
              if (v119)
              {
                v112 = 0;
                v115 = *v133;
                while (2)
                {
                  for (i = 0; i != v119; ++i)
                  {
                    if (*v133 != v115)
                    {
                      objc_enumerationMutation(v53);
                    }

                    v55 = *(*(&v132 + 1) + 8 * i);
                    v56 = [v55 objectForKey:@"ports"];
                    if (isa_nsarray(v56) && [v56 count])
                    {
                      v113 = v56;
                      v85 = ne_log_obj();
                      if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
                      {
                        *v142 = 138412290;
                        v143 = v56;
                        _os_log_error_impl(&dword_1BA83C000, v85, OS_LOG_TYPE_ERROR, "PvD: Ports are not currently supported in proxy-match rules: %@", v142, 0xCu);
                      }

                      v136 = 0;
                      goto LABEL_100;
                    }

                    v57 = [v55 objectForKey:@"proxies"];
                    v58 = v57;
                    if (v57 && [v57 count])
                    {
                      v113 = v56;
                      if (!isa_nsarray(v58) || ([v58 objectAtIndexedSubscript:0], v59 = objc_claimAutoreleasedReturnValue(), v60 = isa_nsstring(v59), v59, (v60 & 1) == 0))
                      {
                        v86 = ne_log_obj();
                        if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
                        {
                          *v142 = 138412290;
                          v143 = v58;
                          _os_log_error_impl(&dword_1BA83C000, v86, OS_LOG_TYPE_ERROR, "PvD: invalid proxies key value: %@", v142, 0xCu);
                        }

LABEL_99:

                        v136 = 0;
LABEL_100:

                        v88 = log;
LABEL_101:

                        goto LABEL_102;
                      }

                      if ([v58 count]>= 2)
                      {
                        v61 = ne_log_obj();
                        if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
                        {
                          v64 = [v58 objectAtIndexedSubscript:1];
                          *v142 = 138412290;
                          v143 = v64;
                          _os_log_debug_impl(&dword_1BA83C000, v61, OS_LOG_TYPE_DEBUG, "PvD: ignore fallback proxy identifiers %@", v142, 0xCu);
                        }
                      }

                      v62 = [v58 objectAtIndexedSubscript:0];
                      if (v112)
                      {
                        v63 = objc_msgSend_isEqualToString_(v112);

                        if ((v63 & 1) == 0)
                        {
                          v86 = ne_log_obj();
                          if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
                          {
                            v89 = [v58 objectAtIndexedSubscript:0];
                            *v142 = 138412546;
                            v143 = v112;
                            v144 = 2112;
                            v145 = v89;
                            _os_log_error_impl(&dword_1BA83C000, v86, OS_LOG_TYPE_ERROR, "PvD: match rules refer to different identifiers %@ != %@", v142, 0x16u);
                          }

                          goto LABEL_99;
                        }
                      }

                      else
                      {
                        v112 = v62;
                      }

                      v53 = log;
                      v56 = v113;
                    }
                  }

                  v119 = [v53 countByEnumeratingWithState:&v132 objects:buf count:16];
                  if (v119)
                  {
                    continue;
                  }

                  break;
                }

                if (!v112)
                {
                  v112 = 0;
LABEL_91:
                  v136 = 1;
LABEL_102:
                  v23 = 0x1E695D000;
                  v71 = v126;

                  v70 = v136;
                  goto LABEL_80;
                }

                v120 = [NEPvDFetcher findProxy:v124 proxyToFind:v112];
                if (!v120 || [v120 count]!= 2)
                {
                  v90 = ne_log_obj();
                  if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
                  {
                    *v142 = 138412546;
                    v143 = v112;
                    v144 = 2112;
                    v145 = v120;
                    _os_log_error_impl(&dword_1BA83C000, v90, OS_LOG_TYPE_ERROR, "PvD: Referenced proxy %@ did not have 2 entries: %@", v142, 0x16u);
                  }

                  v136 = 0;
                  goto LABEL_130;
                }

                v65 = [v120 objectAtIndexedSubscript:0];
                v66 = [v65 objectForKey:@"protocol"];

                LOBYTE(v65) = objc_msgSend_isEqualToString_(v66);
                v116 = objc_msgSend_isEqualToString_(v66);
                v67 = [v120 objectAtIndexedSubscript:1];
                v111 = [v67 objectForKey:@"protocol"];

                if (v65)
                {
                  v68 = 0;
                }

                else
                {
                  v68 = objc_msgSend_isEqualToString_(v111) ^ 1;
                }

                if (v116)
                {
                  v91 = 0;
                }

                else
                {
                  v91 = objc_msgSend_isEqualToString_(v111) ^ 1;
                }

                if ((v68 | v91))
                {
                  v92 = ne_log_obj();
                  if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
                  {
                    *v142 = 138412290;
                    v143 = v112;
                    v93 = "PvD: Proxy identifier %@ does not handle both TCP and UDP";
LABEL_139:
                    _os_log_error_impl(&dword_1BA83C000, v92, OS_LOG_TYPE_ERROR, v93, v142, 0xCu);
                    goto LABEL_129;
                  }

                  goto LABEL_129;
                }

                v117 = [v120 objectAtIndexedSubscript:0];
                v94 = [v117 objectForKey:@"alpn"];
                v95 = [v120 objectAtIndexedSubscript:1];
                v96 = [v95 objectForKey:@"alpn"];
                v97 = [v94 isEqual:v96];

                if ((v97 & 1) == 0)
                {
                  v92 = ne_log_obj();
                  if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
                  {
                    *v142 = 138412290;
                    v143 = v120;
                    v93 = "PvD: Two proxies do not have matching ALPN values: %@";
                    goto LABEL_139;
                  }

LABEL_129:

                  v136 = 0;
LABEL_130:
                  v88 = v120;
                  goto LABEL_101;
                }

                v130 = 0u;
                v131 = 0u;
                v128 = 0u;
                v129 = 0u;
                v53 = v120;
                v110 = [v53 countByEnumeratingWithState:&v128 objects:v137 count:16];
                if (v110)
                {
                  v109 = *v129;
                  while (2)
                  {
                    for (j = 0; j != v110; ++j)
                    {
                      if (*v129 != v109)
                      {
                        objc_enumerationMutation(v53);
                      }

                      v98 = *(*(&v128 + 1) + 8 * j);
                      v99 = [v98 objectForKey:@"proxy"];
                      v100 = [v21 host];
                      v118 = v99;
                      LOBYTE(v99) = [v99 containsString:v100];

                      if ((v99 & 1) == 0)
                      {
                        v106 = ne_log_obj();
                        if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
                        {
                          v108 = [v21 host];
                          *v142 = 138412546;
                          v143 = v118;
                          v144 = 2112;
                          v145 = v108;
                          _os_log_error_impl(&dword_1BA83C000, v106, OS_LOG_TYPE_ERROR, "PvD: Proxy URL %@ does not contain relay host %@", v142, 0x16u);
                        }

                        v136 = 0;
                        goto LABEL_137;
                      }

                      v114 = [v98 objectForKey:@"protocol"];
                      if (objc_msgSend_isEqualToString_(v114))
                      {
                        v101 = MEMORY[0x1E695DFF8];
                        v102 = [v98 objectForKey:@"proxy"];
                        v103 = [v101 URLWithString:v102];

                        v104 = [v103 path];
                        v105 = v104;
                        if (!v104 || ([v104 containsString:@".well-known/masque/udp"] & 1) == 0)
                        {
                          v107 = ne_log_obj();
                          if (os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
                          {
                            *v142 = 138412290;
                            v143 = v103;
                            _os_log_error_impl(&dword_1BA83C000, v107, OS_LOG_TYPE_ERROR, "PvD: connect-udp proxy URI path must contain '.well-known/masque/udp/{target_host}/{target_port}': %@", v142, 0xCu);
                          }

                          v136 = 0;
LABEL_137:

                          goto LABEL_102;
                        }
                      }
                    }

                    v110 = [v53 countByEnumeratingWithState:&v128 objects:v137 count:16];
                    if (v110)
                    {
                      continue;
                    }

                    break;
                  }
                }
              }

              else
              {
                v112 = 0;
              }

              goto LABEL_91;
            }

            log = v52;
            v73 = ne_log_obj();
            if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
            {
              *v142 = 0;
              _os_log_error_impl(&dword_1BA83C000, v73, OS_LOG_TYPE_ERROR, "Ignoring PvD configuration, no valid proxy-match criteria", v142, 2u);
            }

            v70 = 0;
          }

          else
          {
            log = ne_log_obj();
            if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
            {
              *v142 = 0;
              _os_log_error_impl(&dword_1BA83C000, log, OS_LOG_TYPE_ERROR, "Invalid PvD configuration, no valid proxies", v142, 2u);
            }

            v70 = 0;
          }

          v71 = v126;
LABEL_80:

          goto LABEL_81;
        }
      }

      else
      {
      }
    }

    v28 = ne_log_obj();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *v142 = 0;
      _os_log_error_impl(&dword_1BA83C000, v28, OS_LOG_TYPE_ERROR, "PvD configuration missing mandatory fields", v142, 2u);
    }

    goto LABEL_23;
  }

LABEL_36:
}

- (id)formatExpirationDateFrom:(void *)from
{
  v1 = MEMORY[0x1E696AB78];
  fromCopy = from;
  v3 = objc_alloc_init(v1);
  v4 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"en_US_POSIX"];
  [v3 setLocale:v4];

  [v3 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ssZZZZZ"];
  v5 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:0];
  [v3 setTimeZone:v5];

  v6 = [v3 dateFromString:fromCopy];

  return v6;
}

- (id)findProxy:(void *)proxy proxyToFind:(void *)find
{
  v25 = *MEMORY[0x1E69E9840];
  proxyCopy = proxy;
  findCopy = find;
  array = [MEMORY[0x1E695DF70] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = proxyCopy;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v19;
    *&v8 = 138412290;
    v17 = v8;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        if (isa_nsdictionary(v12))
        {
          v13 = [v12 objectForKey:@"identifier"];
          isEqualToString = objc_msgSend_isEqualToString_(findCopy);

          if (isEqualToString)
          {
            if (!array)
            {
              array = objc_alloc(MEMORY[0x1E695DF70]);
            }

            [array addObject:{v12, v17, v18}];
          }
        }

        else
        {
          v15 = ne_log_obj();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            *buf = v17;
            v23 = v12;
            _os_log_error_impl(&dword_1BA83C000, v15, OS_LOG_TYPE_ERROR, "Invalid proxy configuration, not a dictionary: %@", buf, 0xCu);
          }
        }
      }

      v9 = [v6 countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v9);
  }

  return array;
}

@end