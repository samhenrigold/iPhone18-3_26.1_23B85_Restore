@interface _SWCTrackingDomainInfo
+ (OS_dispatch_queue)_queue;
+ (id)_trackingDomainInfoWithDomain:(id)domain JSONObject:(id)object;
+ (id)_trackingDomainInfoWithDomain:(id)domain JSONObject:(id)object expectedSources:(unint64_t)sources;
+ (id)_trackingDomainInfoWithDomains:(id)domains;
+ (id)_trackingDomainInfoWithDomains:(id)domains sources:(unint64_t)sources;
+ (id)trackingDomainInfoWithDomains:(id)domains;
+ (void)_getTrackingDomainInfoWithDomains:(id)domains sources:(unint64_t)sources completionHandler:(id)handler;
+ (void)getTrackingDomainInfoWithDomains:(id)domains sources:(unint64_t)sources completion:(id)completion;
- (BOOL)canBlockRequest;
- (_SWCTrackingDomainInfo)initWithCoder:(id)coder;
- (id)_initWithDomain:(id)domain JSONObject:(id)object;
- (unint64_t)source;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _SWCTrackingDomainInfo

+ (id)trackingDomainInfoWithDomains:(id)domains
{
  v20 = *MEMORY[0x277D85DE8];
  domainsCopy = domains;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__2;
  v16 = __Block_byref_object_dispose__2;
  v17 = 0;
  if (qword_280B21958 != -1)
  {
    dispatch_once(&qword_280B21958, &__block_literal_global_93);
  }

  v4 = qword_280B21950;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v10 = getpid();
    *buf = 134217984;
    v19 = v10;
    _os_log_debug_impl(&dword_265F54000, v4, OS_LOG_TYPE_DEBUG, "Process %llu is getting tracking domain info out-of-process", buf, 0xCu);
  }

  v5 = _SWCGetServerConnection();
  v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_7];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __56___SWCTrackingDomainInfo_trackingDomainInfoWithDomains___block_invoke_2;
  v11[3] = &unk_279BBE108;
  v11[4] = &v12;
  [v6 getTrackingDomains:domainsCopy sources:3 completionHandler:v11];

  v7 = v13[5];
  if (!v7)
  {
    v13[5] = MEMORY[0x277CBEC10];
    v7 = v13[5];
  }

  v8 = v7;
  _Block_object_dispose(&v12, 8);

  return v8;
}

+ (void)getTrackingDomainInfoWithDomains:(id)domains sources:(unint64_t)sources completion:(id)completion
{
  v20 = *MEMORY[0x277D85DE8];
  domainsCopy = domains;
  completionCopy = completion;
  if (qword_280B21958 != -1)
  {
    dispatch_once(&qword_280B21958, &__block_literal_global_93);
  }

  v9 = qword_280B21950;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v19 = getpid();
    _os_log_impl(&dword_265F54000, v9, OS_LOG_TYPE_INFO, "Process %llu is getting tracking domain info out-of-process", buf, 0xCu);
  }

  v10 = _SWCGetServerConnection();
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __78___SWCTrackingDomainInfo_getTrackingDomainInfoWithDomains_sources_completion___block_invoke;
  v16[3] = &unk_279BBE000;
  v11 = completionCopy;
  v17 = v11;
  v12 = [v10 remoteObjectProxyWithErrorHandler:v16];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __78___SWCTrackingDomainInfo_getTrackingDomainInfoWithDomains_sources_completion___block_invoke_2;
  v14[3] = &unk_279BBE130;
  v13 = v11;
  v15 = v13;
  [v12 getTrackingDomains:domainsCopy sources:sources completionHandler:v14];
}

- (unint64_t)source
{
  v2 = [(NSDictionary *)self->_JSONObject objectForKeyedSubscript:@"s"];
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (BOOL)canBlockRequest
{
  v2 = [(NSDictionary *)self->_JSONObject objectForKeyedSubscript:@"dnbr"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue ^ 1;
}

+ (id)_trackingDomainInfoWithDomain:(id)domain JSONObject:(id)object
{
  v4 = [self _trackingDomainInfoWithDomain:domain JSONObject:object expectedSources:3];

  return v4;
}

+ (id)_trackingDomainInfoWithDomain:(id)domain JSONObject:(id)object expectedSources:(unint64_t)sources
{
  domainCopy = domain;
  objectCopy = object;
  v9 = objc_autoreleasePoolPush();
  if (_NSIsNSDictionary())
  {
    v10 = [[_SWCTrackingDomainInfo alloc] _initWithDomain:domainCopy JSONObject:objectCopy];
    if (([v10 source] & sources) != 0)
    {
      v11 = v10;
      goto LABEL_6;
    }
  }

  v11 = 0;
LABEL_6:
  objc_autoreleasePoolPop(v9);

  return v11;
}

+ (id)_trackingDomainInfoWithDomains:(id)domains
{
  v3 = [self _trackingDomainInfoWithDomains:domains sources:3];

  return v3;
}

+ (id)_trackingDomainInfoWithDomains:(id)domains sources:(unint64_t)sources
{
  v41 = *MEMORY[0x277D85DE8];
  domainsCopy = domains;
  v6 = _SWCGetBundle();
  v25 = v6;
  if (v6)
  {
    v24 = [v6 URLForResource:@"trackingdomains" withExtension:@"json"];
    if (v24)
    {
      v37 = 0;
      v7 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfURL:v24 options:1 error:&v37];
      v8 = v37;
      v22 = v7;
      if (v7)
      {
        v36 = v8;
        v9 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v7 options:0 error:&v36];
        v23 = v36;

        if (v9)
        {
          if (domainsCopy)
          {
            v27 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(domainsCopy, "count")}];
            v34 = 0u;
            v35 = 0u;
            v32 = 0u;
            v33 = 0u;
            v10 = domainsCopy;
            v11 = [v10 countByEnumeratingWithState:&v32 objects:v40 count:16];
            if (v11)
            {
              v12 = *v33;
              do
              {
                for (i = 0; i != v11; ++i)
                {
                  if (*v33 != v12)
                  {
                    objc_enumerationMutation(v10);
                  }

                  v14 = *(*(&v32 + 1) + 8 * i);
                  v15 = [v9 objectForKeyedSubscript:v14];
                  if (v15)
                  {
                    v16 = [self _trackingDomainInfoWithDomain:v14 JSONObject:v15 expectedSources:sources];
                    [v27 setObject:v16 forKeyedSubscript:v14];
                  }
                }

                v11 = [v10 countByEnumeratingWithState:&v32 objects:v40 count:16];
              }

              while (v11);
            }
          }

          else
          {
            v19 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v9, "count")}];
            v28[0] = MEMORY[0x277D85DD0];
            v28[1] = 3221225472;
            v28[2] = __65___SWCTrackingDomainInfo__trackingDomainInfoWithDomains_sources___block_invoke;
            v28[3] = &unk_279BBE158;
            v27 = v19;
            v29 = v27;
            selfCopy = self;
            sourcesCopy = sources;
            [v9 enumerateKeysAndObjectsUsingBlock:v28];
          }
        }

        else
        {
          if (qword_280B21958 != -1)
          {
            dispatch_once(&qword_280B21958, &__block_literal_global_93);
          }

          v18 = qword_280B21950;
          if (os_log_type_enabled(qword_280B21950, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v39 = v23;
            _os_log_error_impl(&dword_265F54000, v18, OS_LOG_TYPE_ERROR, "Failed to read tracking domains JSON file: %@", buf, 0xCu);
          }

          v27 = 0;
        }
      }

      else
      {
        if (qword_280B21958 != -1)
        {
          dispatch_once(&qword_280B21958, &__block_literal_global_93);
        }

        v17 = qword_280B21950;
        if (os_log_type_enabled(qword_280B21950, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v39 = v8;
          _os_log_error_impl(&dword_265F54000, v17, OS_LOG_TYPE_ERROR, "Failed to find tracking domains JSON file: %@", buf, 0xCu);
        }

        v27 = 0;
        v23 = v8;
      }
    }

    else
    {
      v27 = 0;
    }
  }

  else
  {
    v27 = 0;
  }

  v20 = [v27 copy];

  return v20;
}

+ (void)_getTrackingDomainInfoWithDomains:(id)domains sources:(unint64_t)sources completionHandler:(id)handler
{
  domainsCopy = domains;
  handlerCopy = handler;
  _queue = [self _queue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __86___SWCTrackingDomainInfo__getTrackingDomainInfoWithDomains_sources_completionHandler___block_invoke;
  v13[3] = &unk_279BBE180;
  selfCopy = self;
  sourcesCopy = sources;
  v14 = domainsCopy;
  v15 = handlerCopy;
  v11 = handlerCopy;
  v12 = domainsCopy;
  dispatch_async(_queue, v13);
}

- (id)_initWithDomain:(id)domain JSONObject:(id)object
{
  domainCopy = domain;
  objectCopy = object;
  v14.receiver = self;
  v14.super_class = _SWCTrackingDomainInfo;
  v8 = [(_SWCTrackingDomainInfo *)&v14 init];
  if (v8)
  {
    v9 = [domainCopy copy];
    domain = v8->_domain;
    v8->_domain = v9;

    v11 = [objectCopy copy];
    JSONObject = v8->_JSONObject;
    v8->_JSONObject = v11;
  }

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_domain forKey:@"domain"];
  [coderCopy encodeObject:self->_JSONObject forKey:@"JSONObject"];
}

- (_SWCTrackingDomainInfo)initWithCoder:(id)coder
{
  v15[5] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = _SWCTrackingDomainInfo;
  v5 = [(_SWCTrackingDomainInfo *)&v14 init];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277CBEB98]);
    v15[0] = objc_opt_class();
    v15[1] = objc_opt_class();
    v15[2] = objc_opt_class();
    v15[3] = objc_opt_class();
    v15[4] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:5];
    v8 = [v6 initWithArray:v7];

    v9 = [coderCopy swc_decodeObjectOfClass:objc_opt_class() forKey:@"domain"];
    domain = v5->_domain;
    v5->_domain = v9;

    v11 = [coderCopy swc_decodeObjectOfClasses:v8 forKey:@"JSONObject"];
    JSONObject = v5->_JSONObject;
    v5->_JSONObject = v11;
  }

  return v5;
}

+ (OS_dispatch_queue)_queue
{
  if (qword_280B21948 != -1)
  {
    dispatch_once(&qword_280B21948, &__block_literal_global_86);
  }

  v3 = _MergedGlobals_6;

  return v3;
}

@end