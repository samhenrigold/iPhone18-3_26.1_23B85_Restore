@interface CoreDAVDiscoveryTaskGroup
- (CoreDAVDiscoveryTaskGroup)initWithAccountInfoProvider:(id)provider taskManager:(id)manager;
- (CoreDAVDiscoveryTaskGroup)initWithAccountInfoProvider:(id)provider taskManager:(id)manager httpPorts:(id)ports httpsPorts:(id)httpsPorts httpServiceString:(id)string httpsServiceString:(id)serviceString wellKnownPath:(id)path potentialContextPaths:(id)self0 requiredComplianceClass:(id)self1;
- (id)allDiscoveryPaths:(id)paths;
- (id)allDiscoveryPorts:(id)ports withScheme:(id)scheme;
- (id)cleanedStringsFromResponseHeaders:(id)headers forHeader:(id)header;
- (id)extractPrincipalURLFromPropFindTask:(id)task error:(id *)error;
- (id)propFindProperties;
- (id)setupDiscoveries:(id)discoveries withSchemes:(id)schemes;
- (void)addToDiscoveryArray:(id *)array discovery:(id)discovery;
- (void)cancelTaskGroup;
- (void)completeDiscovery:(id)discovery error:(id)error;
- (void)completeOptionsTask:(id)task error:(id)error;
- (void)getDiscoveryStatus:(id)status priorFailed:(id *)failed subsequentFailed:(id *)subsequentFailed priorIncomplete:(id *)incomplete subsequentIncomplete:(id *)subsequentIncomplete priorSuccess:(id *)success subsequentSuccess:(id *)subsequentSuccess;
- (void)noteDefinitiveAuthFailureFromTask:(id)task;
- (void)optionsTask:(id)task error:(id)error;
- (void)propFindTaskFinished:(id)finished;
- (void)srvLookupTask:(id)task error:(id)error;
- (void)startOptionsTask:(id)task;
- (void)startPropfindTask:(id)task;
- (void)startSRVLookup:(id)lookup serviceString:(id)string;
- (void)startTaskGroup;
- (void)startWellKnownFallbackHeadTask:(id)task withURL:(id)l;
- (void)startWellKnownLocationTask:(id)task withURL:(id)l;
- (void)task:(id)task didFinishWithError:(id)error;
- (void)taskGroupWillCancelWithError:(id)error;
@end

@implementation CoreDAVDiscoveryTaskGroup

- (CoreDAVDiscoveryTaskGroup)initWithAccountInfoProvider:(id)provider taskManager:(id)manager httpPorts:(id)ports httpsPorts:(id)httpsPorts httpServiceString:(id)string httpsServiceString:(id)serviceString wellKnownPath:(id)path potentialContextPaths:(id)self0 requiredComplianceClass:(id)self1
{
  portsCopy = ports;
  httpsPortsCopy = httpsPorts;
  stringCopy = string;
  serviceStringCopy = serviceString;
  pathCopy = path;
  pathsCopy = paths;
  classCopy = class;
  v31.receiver = self;
  v31.super_class = CoreDAVDiscoveryTaskGroup;
  v19 = [(CoreDAVTaskGroup *)&v31 initWithAccountInfoProvider:provider taskManager:manager];
  if (v19)
  {
    lowercaseString = [classCopy lowercaseString];
    requiredComplianceClass = v19->_requiredComplianceClass;
    v19->_requiredComplianceClass = lowercaseString;

    objc_storeStrong(&v19->_httpPorts, ports);
    objc_storeStrong(&v19->_httpsPorts, httpsPorts);
    objc_storeStrong(&v19->_httpServiceString, string);
    objc_storeStrong(&v19->_httpsServiceString, serviceString);
    objc_storeStrong(&v19->_wellKnownPath, path);
    objc_storeStrong(&v19->_potentialContextPaths, paths);
    v19->_didReceiveAuthenticationError = 0;
    v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
    discoveries = v19->_discoveries;
    v19->_discoveries = v22;
  }

  return v19;
}

- (CoreDAVDiscoveryTaskGroup)initWithAccountInfoProvider:(id)provider taskManager:(id)manager
{
  v6 = MEMORY[0x277CBEA60];
  managerCopy = manager;
  providerCopy = provider;
  v9 = [v6 cdvArrayWithIntegers:{80, 0}];
  v10 = [MEMORY[0x277CBEA60] cdvArrayWithIntegers:{443, 0}];
  v11 = [MEMORY[0x277CBEA60] arrayWithObject:@"/"];
  v12 = [(CoreDAVDiscoveryTaskGroup *)self initWithAccountInfoProvider:providerCopy taskManager:managerCopy httpPorts:v9 httpsPorts:v10 httpServiceString:0 httpsServiceString:0 wellKnownPath:0 potentialContextPaths:v11 requiredComplianceClass:0];

  return v12;
}

- (void)taskGroupWillCancelWithError:(id)error
{
  errorCopy = error;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __58__CoreDAVDiscoveryTaskGroup_taskGroupWillCancelWithError___block_invoke;
  v6[3] = &unk_278E30F90;
  v6[4] = self;
  v7 = errorCopy;
  v5 = errorCopy;
  [(CoreDAVTaskGroup *)self finishCoreDAVTaskGroupWithError:v5 delegateCallbackBlock:v6];
}

void __58__CoreDAVDiscoveryTaskGroup_taskGroupWillCancelWithError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 discoveryTask:*(a1 + 32) gotAccountInfo:0 error:*(a1 + 40)];
}

- (void)cancelTaskGroup
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_discoveries;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7++) setShouldFailAllTasks:1];
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8.receiver = self;
  v8.super_class = CoreDAVDiscoveryTaskGroup;
  [(CoreDAVTaskGroup *)&v8 cancelTaskGroup];
}

- (void)startTaskGroup
{
  v145 = *MEMORY[0x277D85DE8];
  v4 = +[CoreDAVLogging sharedLogging];
  selfCopy = self;
  WeakRetained = objc_loadWeakRetained(&self->super._accountInfoProvider);
  v6 = [v4 logHandleForAccountInfoProvider:WeakRetained];

  if (v6 && os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v140 = "[CoreDAVDiscoveryTaskGroup startTaskGroup]";
    _os_log_impl(&dword_2452FB000, v6, OS_LOG_TYPE_INFO, "%s - Started", buf, 0xCu);
  }

  p_httpServiceString = &self->_httpServiceString;
  if (!self->_httpServiceString && !self->_httpsServiceString)
  {
    v42 = objc_loadWeakRetained(&self->super._accountInfoProvider);
    serverRoot = [v42 serverRoot];
    if (serverRoot)
    {
      WeakRetained = objc_loadWeakRetained(&self->super._accountInfoProvider);
      serverRoot2 = [WeakRetained serverRoot];
      if ([serverRoot2 length])
      {
        goto LABEL_41;
      }
    }

    wellKnownPath = [(CoreDAVDiscoveryTaskGroup *)self wellKnownPath];
    if (wellKnownPath)
    {
      wellKnownPath2 = [(CoreDAVDiscoveryTaskGroup *)self wellKnownPath];
      v46 = [wellKnownPath2 length];

      if (serverRoot)
      {
      }

      if (v46)
      {
        v47 = objc_loadWeakRetained(&self->super._accountInfoProvider);
        scheme = [v47 scheme];

        v100 = scheme;
        if (scheme && [(NSMutableArray *)scheme length])
        {
          v49 = [MEMORY[0x277CBEA60] arrayWithObject:scheme];
        }

        else
        {
          v49 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"https", @"http", 0}];
        }

        v128 = 0u;
        v129 = 0u;
        v126 = 0u;
        v127 = 0u;
        obj = v49;
        v103 = [(NSMutableArray *)obj countByEnumeratingWithState:&v126 objects:v137 count:16];
        if (v103)
        {
          v102 = *v127;
          do
          {
            v71 = 0;
            do
            {
              if (*v127 != v102)
              {
                objc_enumerationMutation(obj);
              }

              v104 = v71;
              v72 = *(*(&v126 + 1) + 8 * v71);
              v122 = 0u;
              v123 = 0u;
              v124 = 0u;
              v125 = 0u;
              v73 = objc_loadWeakRetained(&selfCopy->super._accountInfoProvider);
              v108 = v72;
              lowercaseString = [v72 lowercaseString];
              v75 = [(CoreDAVDiscoveryTaskGroup *)selfCopy allDiscoveryPorts:v73 withScheme:lowercaseString];

              v106 = v75;
              v76 = [v75 countByEnumeratingWithState:&v122 objects:v136 count:16];
              if (v76)
              {
                v77 = v76;
                v78 = *v123;
                do
                {
                  for (i = 0; i != v77; ++i)
                  {
                    if (*v123 != v78)
                    {
                      objc_enumerationMutation(v106);
                    }

                    v80 = *(*(&v122 + 1) + 8 * i);
                    v81 = [CoreDAVDiscoveryAccountInfo alloc];
                    v82 = objc_loadWeakRetained(&selfCopy->super._accountInfoProvider);
                    v83 = [(CoreDAVDiscoveryAccountInfo *)v81 initWithAccountInfoProvider:v82];

                    [(CoreDAVDiscoveryAccountInfo *)v83 setScheme:v108];
                    -[CoreDAVDiscoveryAccountInfo setPort:](v83, "setPort:", [v80 integerValue]);
                    [(CoreDAVDiscoveryAccountInfo *)v83 setStarted:1];
                    [(NSMutableArray *)selfCopy->_discoveries addObject:v83];
                    v84 = +[CoreDAVLogging sharedLogging];
                    v85 = objc_loadWeakRetained(&selfCopy->super._accountInfoProvider);
                    v86 = [v84 logHandleForAccountInfoProvider:v85];

                    if (v86)
                    {
                      v87 = v86;
                      if (os_log_type_enabled(v87, OS_LOG_TYPE_INFO))
                      {
                        v88 = [(NSMutableArray *)selfCopy->_discoveries count]- 1;
                        v89 = [(CoreDAVDiscoveryAccountInfo *)v83 url];
                        *buf = 136315650;
                        v140 = "[CoreDAVDiscoveryTaskGroup startTaskGroup]";
                        v141 = 2048;
                        v142 = v88;
                        v143 = 2112;
                        v144 = v89;
                        _os_log_impl(&dword_2452FB000, v87, OS_LOG_TYPE_INFO, "%s - Index: [%lu], URL: [%@]", buf, 0x20u);
                      }
                    }
                  }

                  v77 = [v106 countByEnumeratingWithState:&v122 objects:v136 count:16];
                }

                while (v77);
              }

              v71 = v104 + 1;
            }

            while (v104 + 1 != v103);
            v103 = [(NSMutableArray *)obj countByEnumeratingWithState:&v126 objects:v137 count:16];
          }

          while (v103);
        }

        if ([(NSMutableArray *)selfCopy->_discoveries count])
        {
          v120 = 0u;
          v121 = 0u;
          v118 = 0u;
          v119 = 0u;
          v90 = selfCopy->_discoveries;
          v91 = [(NSMutableArray *)v90 countByEnumeratingWithState:&v118 objects:v135 count:16];
          v65 = v100;
          if (v91)
          {
            v92 = v91;
            v93 = *v119;
            do
            {
              for (j = 0; j != v92; ++j)
              {
                if (*v119 != v93)
                {
                  objc_enumerationMutation(v90);
                }

                v95 = *(*(&v118 + 1) + 8 * j);
                serverRoot3 = [v95 serverRoot];
                wellKnownPath3 = [(CoreDAVDiscoveryTaskGroup *)selfCopy wellKnownPath];
                [v95 setServerRoot:wellKnownPath3];

                v98 = [v95 url];
                [v95 setServerRoot:serverRoot3];
                [(CoreDAVDiscoveryTaskGroup *)selfCopy startWellKnownLocationTask:v95 withURL:v98];
              }

              v92 = [(NSMutableArray *)v90 countByEnumeratingWithState:&v118 objects:v135 count:16];
            }

            while (v92);
          }
        }

        else
        {
          v99 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CoreDAVErrorDomain" code:6 userInfo:0];
          v116[0] = MEMORY[0x277D85DD0];
          v116[1] = 3221225472;
          v116[2] = __43__CoreDAVDiscoveryTaskGroup_startTaskGroup__block_invoke;
          v116[3] = &unk_278E30F90;
          v116[4] = selfCopy;
          v117 = v99;
          v90 = v99;
          [(CoreDAVTaskGroup *)selfCopy finishCoreDAVTaskGroupWithError:v90 delegateCallbackBlock:v116];

          v65 = v100;
        }

        v28 = obj;
LABEL_91:

        goto LABEL_92;
      }

LABEL_43:
      v50 = +[CoreDAVLogging sharedLogging];
      v51 = objc_loadWeakRetained(&self->super._accountInfoProvider);
      v52 = [v50 logHandleForAccountInfoProvider:v51];

      if (v52 && os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v140 = "[CoreDAVDiscoveryTaskGroup startTaskGroup]";
        _os_log_impl(&dword_2452FB000, v52, OS_LOG_TYPE_INFO, "%s - Attempting PROPFIND", buf, 0xCu);
      }

      v53 = objc_loadWeakRetained(&self->super._accountInfoProvider);
      scheme2 = [v53 scheme];

      v55 = objc_loadWeakRetained(&self->super._accountInfoProvider);
      v56 = v55;
      if (scheme2)
      {
        scheme3 = [(__CFString *)v55 scheme];
        lowercaseString2 = [scheme3 lowercaseString];
        lowercaseString3 = @"https";
        if (([lowercaseString2 isEqualToString:@"https"] & 1) == 0)
        {
          v60 = objc_loadWeakRetained(&self->super._accountInfoProvider);
          scheme4 = [v60 scheme];
          lowercaseString3 = [scheme4 lowercaseString];
        }

        v62 = objc_loadWeakRetained(&self->super._accountInfoProvider);
        v63 = [MEMORY[0x277CBEA60] arrayWithObject:lowercaseString3];
        v64 = [(CoreDAVDiscoveryTaskGroup *)self setupDiscoveries:v62 withSchemes:v63];

        v56 = lowercaseString3;
      }

      else
      {
        v62 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"https", @"http", 0}];
        v64 = [(CoreDAVDiscoveryTaskGroup *)self setupDiscoveries:v56 withSchemes:v62];
      }

      if ([(NSMutableArray *)v64 count])
      {
        v114 = 0u;
        v115 = 0u;
        v112 = 0u;
        v113 = 0u;
        v65 = v64;
        v66 = [(NSMutableArray *)v65 countByEnumeratingWithState:&v112 objects:v134 count:16];
        if (v66)
        {
          v67 = v66;
          v68 = *v113;
          do
          {
            for (k = 0; k != v67; ++k)
            {
              if (*v113 != v68)
              {
                objc_enumerationMutation(v65);
              }

              [(CoreDAVDiscoveryTaskGroup *)selfCopy startPropfindTask:*(*(&v112 + 1) + 8 * k)];
            }

            v67 = [(NSMutableArray *)v65 countByEnumeratingWithState:&v112 objects:v134 count:16];
          }

          while (v67);
        }

        v28 = v65;
      }

      else
      {
        v70 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CoreDAVErrorDomain" code:6 userInfo:0];
        v110[0] = MEMORY[0x277D85DD0];
        v110[1] = 3221225472;
        v110[2] = __43__CoreDAVDiscoveryTaskGroup_startTaskGroup__block_invoke_286;
        v110[3] = &unk_278E30F90;
        v28 = v64;
        v110[4] = selfCopy;
        v111 = v70;
        v65 = v70;
        [(CoreDAVTaskGroup *)selfCopy finishCoreDAVTaskGroupWithError:v65 delegateCallbackBlock:v110];
      }

      goto LABEL_91;
    }

    if (serverRoot)
    {
LABEL_41:
    }

    goto LABEL_43;
  }

  v7 = +[CoreDAVLogging sharedLogging];
  v8 = objc_loadWeakRetained(&self->super._accountInfoProvider);
  v9 = [v7 logHandleForAccountInfoProvider:v8];

  if (v9 && os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v140 = "[CoreDAVDiscoveryTaskGroup startTaskGroup]";
    _os_log_impl(&dword_2452FB000, v9, OS_LOG_TYPE_INFO, "%s - Attempting SRV lookups first", buf, 0xCu);
  }

  p_httpsServiceString = &self->_httpsServiceString;
  if (self->_httpsServiceString)
  {
    v10 = [CoreDAVDiscoveryAccountInfo alloc];
    v11 = objc_loadWeakRetained(&self->super._accountInfoProvider);
    v12 = [(CoreDAVDiscoveryAccountInfo *)v10 initWithAccountInfoProvider:v11];

    [(CoreDAVDiscoveryAccountInfo *)v12 setScheme:@"https"];
    [(CoreDAVDiscoveryAccountInfo *)v12 setStarted:1];
    [(NSMutableArray *)self->_discoveries addObject:v12];
    v13 = +[CoreDAVLogging sharedLogging];
    v14 = objc_loadWeakRetained(&self->super._accountInfoProvider);
    v15 = [v13 logHandleForAccountInfoProvider:v14];

    if (v15)
    {
      v16 = v15;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = [(NSMutableArray *)self->_discoveries count]- 1;
        v18 = [(CoreDAVDiscoveryAccountInfo *)v12 url];
        *buf = 136315650;
        v140 = "[CoreDAVDiscoveryTaskGroup startTaskGroup]";
        v141 = 2048;
        v142 = v17;
        v143 = 2112;
        v144 = v18;
        _os_log_impl(&dword_2452FB000, v16, OS_LOG_TYPE_INFO, "%s - Index: [%lu], URL: [%@]", buf, 0x20u);
      }
    }
  }

  if (*p_httpServiceString)
  {
    v19 = [CoreDAVDiscoveryAccountInfo alloc];
    v20 = objc_loadWeakRetained(&self->super._accountInfoProvider);
    v21 = [(CoreDAVDiscoveryAccountInfo *)v19 initWithAccountInfoProvider:v20];

    [(CoreDAVDiscoveryAccountInfo *)v21 setScheme:@"http"];
    [(CoreDAVDiscoveryAccountInfo *)v21 setStarted:1];
    [(NSMutableArray *)self->_discoveries addObject:v21];
    v22 = +[CoreDAVLogging sharedLogging];
    v23 = objc_loadWeakRetained(&self->super._accountInfoProvider);
    v24 = [v22 logHandleForAccountInfoProvider:v23];

    if (v24)
    {
      v25 = v24;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v26 = [(NSMutableArray *)self->_discoveries count]- 1;
        v27 = [(CoreDAVDiscoveryAccountInfo *)v21 url];
        *buf = 136315650;
        v140 = "[CoreDAVDiscoveryTaskGroup startTaskGroup]";
        v141 = 2048;
        v142 = v26;
        v143 = 2112;
        v144 = v27;
        _os_log_impl(&dword_2452FB000, v25, OS_LOG_TYPE_INFO, "%s - Index: [%lu], URL: [%@]", buf, 0x20u);
      }
    }
  }

  v132 = 0u;
  v133 = 0u;
  v130 = 0u;
  v131 = 0u;
  v28 = self->_discoveries;
  v29 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v130 objects:v138 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v131;
    do
    {
      for (m = 0; m != v30; ++m)
      {
        if (*v131 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = *(*(&v130 + 1) + 8 * m);
        v34 = MEMORY[0x277CCACA8];
        scheme5 = [v33 scheme];
        v36 = [scheme5 isEqualToString:@"https"];
        v37 = p_httpServiceString;
        if (v36)
        {
          v37 = p_httpsServiceString;
        }

        v38 = *v37;
        v39 = objc_loadWeakRetained(&selfCopy->super._accountInfoProvider);
        host = [v39 host];
        v41 = [v34 stringWithFormat:@"%@%@", v38, host];

        [(CoreDAVDiscoveryTaskGroup *)selfCopy startSRVLookup:v33 serviceString:v41];
      }

      v30 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v130 objects:v138 count:16];
    }

    while (v30);
  }

LABEL_92:
}

void __43__CoreDAVDiscoveryTaskGroup_startTaskGroup__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 discoveryTask:*(a1 + 32) gotAccountInfo:0 error:*(a1 + 40)];
}

void __43__CoreDAVDiscoveryTaskGroup_startTaskGroup__block_invoke_286(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 discoveryTask:*(a1 + 32) gotAccountInfo:0 error:*(a1 + 40)];
}

- (id)setupDiscoveries:(id)discoveries withSchemes:(id)schemes
{
  v63 = *MEMORY[0x277D85DE8];
  discoveriesCopy = discoveries;
  schemesCopy = schemes;
  array = [MEMORY[0x277CBEB18] array];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = schemesCopy;
  v29 = [obj countByEnumeratingWithState:&v50 objects:v62 count:16];
  if (v29)
  {
    v28 = *v51;
    v8 = 0x278E30000uLL;
    v9 = 0x27EE11000uLL;
    do
    {
      v10 = 0;
      do
      {
        if (*v51 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v30 = v10;
        v37 = *(*(&v50 + 1) + 8 * v10);
        if ([v37 isEqualToString:@"https"])
        {
          v11 = 0;
        }

        else
        {
          v11 = [*(&self->super.super.isa + *(v9 + 3644)) count];
        }

        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        v32 = [(CoreDAVDiscoveryTaskGroup *)self allDiscoveryPorts:discoveriesCopy withScheme:v37];
        v34 = [v32 countByEnumeratingWithState:&v46 objects:v61 count:16];
        if (v34)
        {
          v33 = *v47;
          do
          {
            for (i = 0; i != v34; ++i)
            {
              if (*v47 != v33)
              {
                objc_enumerationMutation(v32);
              }

              v39 = *(*(&v46 + 1) + 8 * i);
              v42 = 0u;
              v43 = 0u;
              v44 = 0u;
              v45 = 0u;
              v13 = [(CoreDAVDiscoveryTaskGroup *)self allDiscoveryPaths:discoveriesCopy];
              v40 = [v13 countByEnumeratingWithState:&v42 objects:v60 count:16];
              if (!v40)
              {
                v14 = v13;
                goto LABEL_30;
              }

              v35 = i;
              v14 = 0;
              v38 = *v43;
              v36 = v13;
              do
              {
                for (j = 0; j != v40; ++j)
                {
                  v41 = v14;
                  if (*v43 != v38)
                  {
                    objc_enumerationMutation(v36);
                  }

                  v16 = *(*(&v42 + 1) + 8 * j);
                  v17 = [objc_alloc(*(v8 + 2832)) initWithAccountInfoProvider:discoveriesCopy];
                  [v17 setScheme:v37];
                  [v17 setServerRoot:v16];
                  [v17 setPort:{objc_msgSend(v39, "integerValue")}];
                  [*(&self->super.super.isa + *(v9 + 3644)) insertObject:v17 atIndex:v11];
                  v18 = +[CoreDAVLogging sharedLogging];
                  WeakRetained = objc_loadWeakRetained(&self->super._accountInfoProvider);
                  v20 = [v18 logHandleForAccountInfoProvider:WeakRetained];

                  if (v20)
                  {
                    v21 = v20;
                    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
                    {
                      [v17 url];
                      v22 = v8;
                      selfCopy = self;
                      v25 = v24 = discoveriesCopy;
                      *buf = 136315650;
                      v55 = "[CoreDAVDiscoveryTaskGroup setupDiscoveries:withSchemes:]";
                      v56 = 2048;
                      v57 = v11;
                      v58 = 2112;
                      v59 = v25;
                      _os_log_impl(&dword_2452FB000, v21, OS_LOG_TYPE_INFO, "%s - Index: [%lu], URL: [%@]", buf, 0x20u);

                      discoveriesCopy = v24;
                      self = selfCopy;
                      v8 = v22;
                      v9 = 0x27EE11000;
                    }
                  }

                  v14 = v41;
                  if (!v41)
                  {
                    v14 = v17;
                  }

                  ++v11;
                }

                v40 = [v36 countByEnumeratingWithState:&v42 objects:v60 count:16];
              }

              while (v40);

              if (v14)
              {
                [v14 setStarted:1];
                [array addObject:v14];
                i = v35;
LABEL_30:

                continue;
              }

              i = v35;
            }

            v34 = [v32 countByEnumeratingWithState:&v46 objects:v61 count:16];
          }

          while (v34);
        }

        v10 = v30 + 1;
      }

      while (v30 + 1 != v29);
      v29 = [obj countByEnumeratingWithState:&v50 objects:v62 count:16];
    }

    while (v29);
  }

  return array;
}

- (id)allDiscoveryPorts:(id)ports withScheme:(id)scheme
{
  portsCopy = ports;
  schemeCopy = scheme;
  array = [MEMORY[0x277CBEB18] array];
  if ([portsCopy port])
  {
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(portsCopy, "port")}];
    [array addObject:v9];
  }

  else
  {
    if ([schemeCopy isEqualToString:@"https"])
    {
      v10 = 104;
    }

    else
    {
      v10 = 96;
    }

    [array addObjectsFromArray:*(&self->super.super.isa + v10)];
  }

  return array;
}

- (id)allDiscoveryPaths:(id)paths
{
  pathsCopy = paths;
  array = [MEMORY[0x277CBEB18] array];
  serverRoot = [pathsCopy serverRoot];

  if (serverRoot)
  {
    serverRoot2 = [pathsCopy serverRoot];
    [array addObject:serverRoot2];
  }

  else
  {
    serverRoot2 = [(CoreDAVDiscoveryTaskGroup *)self potentialContextPaths];
    [array addObjectsFromArray:serverRoot2];
  }

  return array;
}

- (void)startSRVLookup:(id)lookup serviceString:(id)string
{
  v21 = *MEMORY[0x277D85DE8];
  lookupCopy = lookup;
  stringCopy = string;
  v8 = +[CoreDAVLogging sharedLogging];
  WeakRetained = objc_loadWeakRetained(&self->super._accountInfoProvider);
  v10 = [v8 logHandleForAccountInfoProvider:WeakRetained];

  if (v10)
  {
    v11 = v10;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = [lookupCopy url];
      v15 = 136315650;
      v16 = "[CoreDAVDiscoveryTaskGroup startSRVLookup:serviceString:]";
      v17 = 2112;
      v18 = v12;
      v19 = 2112;
      v20 = stringCopy;
      _os_log_impl(&dword_2452FB000, v11, OS_LOG_TYPE_INFO, "%s - URL: [%@], serviceString: [%@]", &v15, 0x20u);
    }
  }

  [lookupCopy setStarted:1];
  v13 = [[CoreDAVSRVLookupTask alloc] initWithServiceString:stringCopy];
  [(CoreDAVTask *)v13 setDelegate:self];
  [(CoreDAVTask *)v13 setAccountInfoProvider:lookupCopy];
  [(CoreDAVTask *)v13 setTimeoutInterval:self->super._timeoutInterval];
  if (self->super._isCancelling)
  {
    v14 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CoreDAVErrorDomain" code:1 userInfo:0];
    [(CoreDAVDiscoveryTaskGroup *)self completeDiscovery:v13 error:v14];
  }

  else
  {
    [(NSMutableSet *)self->super._outstandingTasks addObject:v13];
    v14 = objc_loadWeakRetained(&self->super._taskManager);
    [v14 submitIndependentCoreDAVTask:v13];
  }
}

- (void)startWellKnownLocationTask:(id)task withURL:(id)l
{
  v31 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  lCopy = l;
  v8 = +[CoreDAVLogging sharedLogging];
  WeakRetained = objc_loadWeakRetained(&self->super._accountInfoProvider);
  v10 = [v8 logHandleForAccountInfoProvider:WeakRetained];

  if (v10)
  {
    v11 = v10;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = [taskCopy url];
      *buf = 136315394;
      v28 = "[CoreDAVDiscoveryTaskGroup startWellKnownLocationTask:withURL:]";
      v29 = 2112;
      v30 = v12;
      _os_log_impl(&dword_2452FB000, v11, OS_LOG_TYPE_INFO, "%s - URL: [%@]", buf, 0x16u);
    }
  }

  [taskCopy setStarted:1];
  v13 = [CoreDAVPropFindTask alloc];
  propFindProperties = [(CoreDAVDiscoveryTaskGroup *)self propFindProperties];
  v15 = [(CoreDAVPropFindTask *)v13 initWithPropertiesToFind:propFindProperties atURL:lCopy withDepth:2];

  [(CoreDAVTask *)v15 setAccountInfoProvider:taskCopy];
  [(CoreDAVTask *)v15 setTimeoutInterval:self->super._timeoutInterval];
  objc_initWeak(buf, v15);
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __64__CoreDAVDiscoveryTaskGroup_startWellKnownLocationTask_withURL___block_invoke;
  v22 = &unk_278E30FE0;
  objc_copyWeak(&v26, buf);
  selfCopy = self;
  v16 = taskCopy;
  v24 = v16;
  v17 = lCopy;
  v25 = v17;
  [(CoreDAVTask *)v15 setCompletionBlock:&v19];
  if (!v17 || self->super._isCancelling)
  {
    v18 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CoreDAVErrorDomain" code:1 userInfo:{0, v19, v20, v21, v22, selfCopy, v24}];
    [(CoreDAVDiscoveryTaskGroup *)self completeDiscovery:v15 error:v18];
  }

  else
  {
    [(NSMutableSet *)self->super._outstandingTasks addObject:v15, v19, v20, v21, v22, selfCopy, v24];
    v18 = objc_loadWeakRetained(&self->super._taskManager);
    [v18 submitIndependentCoreDAVTask:v15];
  }

  objc_destroyWeak(&v26);
  objc_destroyWeak(buf);
}

void __64__CoreDAVDiscoveryTaskGroup_startWellKnownLocationTask_withURL___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    [*(*(a1 + 32) + 32) removeObject:WeakRetained];
    v3 = [WeakRetained error];
    if ([WeakRetained responseStatusCode] == 405)
    {
      [*(a1 + 32) startWellKnownFallbackHeadTask:*(a1 + 40) withURL:*(a1 + 48)];
    }

    else
    {
      if (v3)
      {
        v4 = [v3 domain];
        if ([v4 isEqualToString:@"CoreDAVHTTPStatusErrorDomain"])
        {
          v5 = [v3 code];

          if (v5 == 401)
          {
            v6 = +[CoreDAVLogging sharedLogging];
            v7 = objc_loadWeakRetained((*(a1 + 32) + 16));
            v8 = [v6 logHandleForAccountInfoProvider:v7];

            if (v8 && os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
            {
              *buf = 136315138;
              v28 = "[CoreDAVDiscoveryTaskGroup startWellKnownLocationTask:withURL:]_block_invoke";
              _os_log_impl(&dword_2452FB000, v8, OS_LOG_TYPE_INFO, "%s - Bailing early because of 401 on .well-known", buf, 0xCu);
            }

            [*(a1 + 32) noteDefinitiveAuthFailureFromTask:WeakRetained];
            [*(a1 + 32) propFindTaskFinished:WeakRetained];
            goto LABEL_24;
          }
        }

        else
        {
        }

        v11 = *(*(a1 + 32) + 144);
        objc_sync_enter(v11);
        [*(*(a1 + 32) + 144) removeObject:*(a1 + 40)];
        v12 = *(a1 + 32);
        v13 = *(a1 + 40);
        v14 = MEMORY[0x277CBEA60];
        v15 = [v13 scheme];
        v16 = [v14 arrayWithObject:v15];
        v17 = [v12 setupDiscoveries:v13 withSchemes:v16];

        objc_sync_exit(v11);
        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        v18 = v17;
        v19 = [v18 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v19)
        {
          v20 = *v23;
          do
          {
            for (i = 0; i != v19; ++i)
            {
              if (*v23 != v20)
              {
                objc_enumerationMutation(v18);
              }

              [*(a1 + 32) startPropfindTask:{*(*(&v22 + 1) + 8 * i), v22}];
            }

            v19 = [v18 countByEnumeratingWithState:&v22 objects:v26 count:16];
          }

          while (v19);
        }

        goto LABEL_24;
      }

      v9 = [*(a1 + 32) extractPrincipalURLFromPropFindTask:WeakRetained error:0];
      v10 = *(a1 + 32);
      if (v9)
      {
        [v10 propFindTaskFinished:WeakRetained];
      }

      else
      {
        [v10 startWellKnownFallbackHeadTask:*(a1 + 40) withURL:*(a1 + 48)];
      }
    }

LABEL_24:
  }
}

- (void)startWellKnownFallbackHeadTask:(id)task withURL:(id)l
{
  v21 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  lCopy = l;
  v8 = +[CoreDAVLogging sharedLogging];
  WeakRetained = objc_loadWeakRetained(&self->super._accountInfoProvider);
  v10 = [v8 logHandleForAccountInfoProvider:WeakRetained];

  if (v10 && os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v18 = "[CoreDAVDiscoveryTaskGroup startWellKnownFallbackHeadTask:withURL:]";
    v19 = 2112;
    v20 = lCopy;
    _os_log_impl(&dword_2452FB000, v10, OS_LOG_TYPE_INFO, "%s - URL: [%@]", buf, 0x16u);
  }

  v11 = [(CoreDAVTask *)[CoreDAVHeadTask alloc] initWithURL:lCopy];
  [(CoreDAVTask *)v11 setAccountInfoProvider:taskCopy];
  [(CoreDAVTask *)v11 setTimeoutInterval:self->super._timeoutInterval];
  [(CoreDAVTask *)v11 setAllowAutomaticRedirects:0];
  objc_initWeak(buf, v11);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __68__CoreDAVDiscoveryTaskGroup_startWellKnownFallbackHeadTask_withURL___block_invoke;
  v14[3] = &unk_278E31008;
  objc_copyWeak(&v16, buf);
  v14[4] = self;
  v12 = lCopy;
  v15 = v12;
  [(CoreDAVTask *)v11 setCompletionBlock:v14];
  if (self->super._isCancelling)
  {
    v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CoreDAVErrorDomain" code:1 userInfo:0];
    [(CoreDAVDiscoveryTaskGroup *)self completeDiscovery:v11 error:v13];
  }

  else
  {
    [(NSMutableSet *)self->super._outstandingTasks addObject:v11];
    v13 = objc_loadWeakRetained(&self->super._taskManager);
    [v13 submitIndependentCoreDAVTask:v11];
  }

  objc_destroyWeak(&v16);
  objc_destroyWeak(buf);
}

void __68__CoreDAVDiscoveryTaskGroup_startWellKnownFallbackHeadTask_withURL___block_invoke(id *a1)
{
  v40 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    [*(a1[4] + 4) removeObject:WeakRetained];
    v3 = a1[4];
    if (v3[40] == 1)
    {
      v4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CoreDAVErrorDomain" code:1 userInfo:0];
      [v3 completeDiscovery:WeakRetained error:v4];

      goto LABEL_31;
    }

    v5 = [WeakRetained accountInfoProvider];
    v6 = [WeakRetained error];
    v7 = [v6 domain];
    if ([v7 isEqualToString:@"CoreDAVErrorDomain"])
    {
      v8 = [v6 code];

      if (v8 == 1)
      {
        v9 = +[CoreDAVLogging sharedLogging];
        v10 = objc_loadWeakRetained(a1[4] + 2);
        v11 = [v9 logHandleForAccountInfoProvider:v10];

        if (v11)
        {
          v12 = v11;
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v39 = objc_opt_class();
            v13 = v39;
            _os_log_impl(&dword_2452FB000, v12, OS_LOG_TYPE_INFO, "Task cancelled: [%@]", buf, 0xCu);
          }
        }

        [a1[4] completeDiscovery:WeakRetained error:v6];
        goto LABEL_30;
      }
    }

    else
    {
    }

    if (CDVHTTPStatusCodeRepresentsRedirection([WeakRetained responseStatusCode]))
    {
      v14 = [WeakRetained responseHeaders];
      v15 = [v14 CDVObjectForKeyCaseInsensitive:@"Location"];

      v16 = MEMORY[0x277CBEBC0];
      v17 = [WeakRetained url];
      v18 = [v16 URLWithString:v15 relativeToURL:v17];
      v19 = [v18 absoluteURL];

      if (v19)
      {
        v20 = [a1[5] scheme];
        if (![v20 hasPrefix:@"https"])
        {

LABEL_28:
          [a1[4] startWellKnownLocationTask:v5 withURL:v19];
LABEL_29:

LABEL_30:
          goto LABEL_31;
        }

        v21 = [v19 scheme];
        v22 = [v21 hasPrefix:@"https"];

        if (v22)
        {
          goto LABEL_28;
        }
      }

      else
      {
      }
    }

    else
    {
      v19 = 0;
    }

    v23 = *(a1[4] + 18);
    objc_sync_enter(v23);
    [*(a1[4] + 18) removeObject:v5];
    v24 = a1[4];
    v25 = MEMORY[0x277CBEA60];
    v26 = [v5 scheme];
    v27 = [v25 arrayWithObject:v26];
    v28 = [v24 setupDiscoveries:v5 withSchemes:v27];

    objc_sync_exit(v23);
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v29 = v28;
    v30 = [v29 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v30)
    {
      v31 = *v34;
      do
      {
        v32 = 0;
        do
        {
          if (*v34 != v31)
          {
            objc_enumerationMutation(v29);
          }

          [a1[4] startPropfindTask:{*(*(&v33 + 1) + 8 * v32++), v33}];
        }

        while (v30 != v32);
        v30 = [v29 countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v30);
    }

    goto LABEL_29;
  }

LABEL_31:
}

- (void)startOptionsTask:(id)task
{
  v18 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  v5 = +[CoreDAVLogging sharedLogging];
  WeakRetained = objc_loadWeakRetained(&self->super._accountInfoProvider);
  v7 = [v5 logHandleForAccountInfoProvider:WeakRetained];

  if (v7)
  {
    v8 = v7;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [taskCopy url];
      v14 = 136315394;
      v15 = "[CoreDAVDiscoveryTaskGroup startOptionsTask:]";
      v16 = 2112;
      v17 = v9;
      _os_log_impl(&dword_2452FB000, v8, OS_LOG_TYPE_INFO, "%s - URL: [%@]", &v14, 0x16u);
    }
  }

  v10 = [CoreDAVOptionsTask alloc];
  v11 = [taskCopy url];
  v12 = [(CoreDAVTask *)v10 initWithURL:v11];

  [(CoreDAVTask *)v12 setDelegate:self];
  [(CoreDAVTask *)v12 setAccountInfoProvider:taskCopy];
  [(CoreDAVTask *)v12 setTimeoutInterval:self->super._timeoutInterval];
  if (self->super._isCancelling)
  {
    v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CoreDAVErrorDomain" code:1 userInfo:0];
    [(CoreDAVDiscoveryTaskGroup *)self completeDiscovery:v12 error:v13];
  }

  else
  {
    [(NSMutableSet *)self->super._outstandingTasks addObject:v12];
    v13 = objc_loadWeakRetained(&self->super._taskManager);
    [v13 submitIndependentCoreDAVTask:v12];
  }
}

- (void)startPropfindTask:(id)task
{
  v25 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  v5 = +[CoreDAVLogging sharedLogging];
  WeakRetained = objc_loadWeakRetained(&self->super._accountInfoProvider);
  v7 = [v5 logHandleForAccountInfoProvider:WeakRetained];

  if (v7)
  {
    v8 = v7;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [taskCopy url];
      *buf = 136315394;
      v22 = "[CoreDAVDiscoveryTaskGroup startPropfindTask:]";
      v23 = 2112;
      v24 = v9;
      _os_log_impl(&dword_2452FB000, v8, OS_LOG_TYPE_INFO, "%s - URL: [%@]", buf, 0x16u);
    }
  }

  [taskCopy setStarted:1];
  v10 = [CoreDAVPropFindTask alloc];
  propFindProperties = [(CoreDAVDiscoveryTaskGroup *)self propFindProperties];
  v12 = [taskCopy url];
  v13 = [(CoreDAVPropFindTask *)v10 initWithPropertiesToFind:propFindProperties atURL:v12 withDepth:2];

  [(CoreDAVTask *)v13 setAccountInfoProvider:taskCopy];
  [(CoreDAVTask *)v13 setTimeoutInterval:self->super._timeoutInterval];
  objc_initWeak(buf, v13);
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __47__CoreDAVDiscoveryTaskGroup_startPropfindTask___block_invoke;
  v18 = &unk_278E30F68;
  objc_copyWeak(&v20, buf);
  selfCopy = self;
  [(CoreDAVTask *)v13 setCompletionBlock:&v15];
  if (self->super._isCancelling)
  {
    v14 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CoreDAVErrorDomain" code:1 userInfo:{0, v15, v16, v17, v18}];
    [(CoreDAVDiscoveryTaskGroup *)self completeDiscovery:v13 error:v14];
  }

  else
  {
    [(NSMutableSet *)self->super._outstandingTasks addObject:v13, v15, v16, v17, v18];
    v14 = objc_loadWeakRetained(&self->super._taskManager);
    [v14 submitIndependentCoreDAVTask:v13];
  }

  objc_destroyWeak(&v20);
  objc_destroyWeak(buf);
}

void __47__CoreDAVDiscoveryTaskGroup_startPropfindTask___block_invoke(uint64_t a1)
{
  v2 = objc_loadWeakRetained((a1 + 40));

  if (v2)
  {
    [*(*(a1 + 32) + 32) removeObject:v2];
    [*(a1 + 32) propFindTaskFinished:v2];
  }
}

- (void)task:(id)task didFinishWithError:(id)error
{
  taskCopy = task;
  errorCopy = error;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(CoreDAVDiscoveryTaskGroup *)self srvLookupTask:taskCopy error:errorCopy];
  }
}

- (void)srvLookupTask:(id)task error:(id)error
{
  v89 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  errorCopy = error;
  [(NSMutableSet *)self->super._outstandingTasks removeObject:taskCopy];
  v63 = taskCopy;
  if (!self->super._isCancelling)
  {
    accountInfoProvider = [taskCopy accountInfoProvider];
    v8 = +[CoreDAVLogging sharedLogging];
    WeakRetained = objc_loadWeakRetained(&self->super._accountInfoProvider);
    v10 = [v8 logHandleForAccountInfoProvider:WeakRetained];

    if (v10)
    {
      v11 = v10;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = [accountInfoProvider url];
        *buf = 136315650;
        v82 = "[CoreDAVDiscoveryTaskGroup srvLookupTask:error:]";
        v83 = 2112;
        v84 = v12;
        v85 = 2112;
        v86 = errorCopy;
        _os_log_impl(&dword_2452FB000, v11, OS_LOG_TYPE_INFO, "%s - URL: [%@],  error: [%@]", buf, 0x20u);
      }
    }

    domain = [errorCopy domain];
    if ([domain isEqualToString:@"CoreDAVErrorDomain"])
    {
      v14 = [errorCopy code]== 1;

      if (v14)
      {
        v15 = +[CoreDAVLogging sharedLogging];
        v16 = objc_loadWeakRetained(&self->super._accountInfoProvider);
        v17 = [v15 logHandleForAccountInfoProvider:v16];

        if (v17)
        {
          v18 = v17;
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            v19 = objc_opt_class();
            *buf = 138543362;
            v82 = v19;
            v20 = v19;
            _os_log_impl(&dword_2452FB000, v18, OS_LOG_TYPE_INFO, "Task cancelled: [%{public}@]", buf, 0xCu);
          }
        }

        [(CoreDAVDiscoveryTaskGroup *)self completeDiscovery:v63 error:errorCopy];
        goto LABEL_59;
      }
    }

    else
    {
    }

    fetchedRecords = [v63 fetchedRecords];
    if ([fetchedRecords count])
    {
      v21 = [fetchedRecords objectAtIndex:0];
      target = [v21 target];
      port = [v21 port];
      integerValue = [port integerValue];

      v25 = +[CoreDAVLogging sharedLogging];
      v26 = objc_loadWeakRetained(&self->super._accountInfoProvider);
      v27 = [v25 logHandleForAccountInfoProvider:v26];

      if (v27)
      {
        v28 = v27;
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          v29 = [accountInfoProvider url];
          *buf = 136315906;
          v82 = "[CoreDAVDiscoveryTaskGroup srvLookupTask:error:]";
          v83 = 2112;
          v84 = v29;
          v85 = 2112;
          v86 = target;
          v87 = 2048;
          v88 = integerValue;
          _os_log_impl(&dword_2452FB000, v28, OS_LOG_TYPE_INFO, "%s - URL: [%@] srvHost: [%@], srvPort: [%ld]", buf, 0x2Au);
        }
      }

      if ([target length]&& integerValue)
      {
        [accountInfoProvider setHost:target];
        [accountInfoProvider setPort:integerValue];
      }
    }

    else
    {
      v21 = +[CoreDAVLogging sharedLogging];
      v30 = objc_loadWeakRetained(&self->super._accountInfoProvider);
      target = [v21 logHandleForAccountInfoProvider:v30];

      if (target)
      {
        target = target;
        if (os_log_type_enabled(target, OS_LOG_TYPE_INFO))
        {
          v31 = [accountInfoProvider url];
          *buf = 136315394;
          v82 = "[CoreDAVDiscoveryTaskGroup srvLookupTask:error:]";
          v83 = 2112;
          v84 = v31;
          _os_log_impl(&dword_2452FB000, target, OS_LOG_TYPE_INFO, "%s - Could not find any SRV records.  URL: [%@]", buf, 0x16u);
        }
      }
    }

    serverRoot = [accountInfoProvider serverRoot];
    if (!serverRoot || ([accountInfoProvider serverRoot], target = objc_claimAutoreleasedReturnValue(), !-[NSObject length](target, "length")))
    {
      wellKnownPath = [(CoreDAVDiscoveryTaskGroup *)self wellKnownPath];
      if (wellKnownPath)
      {
        wellKnownPath2 = [(CoreDAVDiscoveryTaskGroup *)self wellKnownPath];
        v35 = [wellKnownPath2 length];

        if (serverRoot)
        {

          if (!v35)
          {
LABEL_35:
            obja = self->_discoveries;
            objc_sync_enter(obja);
            [(NSMutableArray *)self->_discoveries removeObject:accountInfoProvider];
            v36 = MEMORY[0x277CBEA60];
            scheme = [accountInfoProvider scheme];
            v38 = [v36 arrayWithObject:scheme];
            v39 = [(CoreDAVDiscoveryTaskGroup *)self setupDiscoveries:accountInfoProvider withSchemes:v38];

            objc_sync_exit(obja);
            v68 = 0u;
            v69 = 0u;
            v66 = 0u;
            v67 = 0u;
            v40 = v39;
            v41 = [v40 countByEnumeratingWithState:&v66 objects:v78 count:16];
            if (v41)
            {
              v42 = *v67;
              do
              {
                for (i = 0; i != v41; ++i)
                {
                  if (*v67 != v42)
                  {
                    objc_enumerationMutation(v40);
                  }

                  [(CoreDAVDiscoveryTaskGroup *)self startPropfindTask:*(*(&v66 + 1) + 8 * i)];
                }

                v41 = [v40 countByEnumeratingWithState:&v66 objects:v78 count:16];
              }

              while (v41);
            }

LABEL_58:

LABEL_59:
            goto LABEL_60;
          }
        }

        else if (!v35)
        {
          goto LABEL_35;
        }

        v44 = objc_alloc_init(MEMORY[0x277CBEB18]);
        obj = self->_discoveries;
        objc_sync_enter(obj);
        [(NSMutableArray *)self->_discoveries removeObject:accountInfoProvider];
        v76 = 0u;
        v77 = 0u;
        v74 = 0u;
        v75 = 0u;
        scheme2 = [accountInfoProvider scheme];
        lowercaseString = [scheme2 lowercaseString];
        v47 = [(CoreDAVDiscoveryTaskGroup *)self allDiscoveryPorts:accountInfoProvider withScheme:lowercaseString];

        v48 = [v47 countByEnumeratingWithState:&v74 objects:v80 count:16];
        if (v48)
        {
          v49 = *v75;
          do
          {
            for (j = 0; j != v48; ++j)
            {
              if (*v75 != v49)
              {
                objc_enumerationMutation(v47);
              }

              v51 = *(*(&v74 + 1) + 8 * j);
              v52 = [[CoreDAVDiscoveryAccountInfo alloc] initWithAccountInfoProvider:accountInfoProvider];
              -[CoreDAVDiscoveryAccountInfo setPort:](v52, "setPort:", [v51 integerValue]);
              [(CoreDAVDiscoveryAccountInfo *)v52 setStarted:1];
              [v44 addObject:v52];
              [(NSMutableArray *)self->_discoveries addObject:v52];
            }

            v48 = [v47 countByEnumeratingWithState:&v74 objects:v80 count:16];
          }

          while (v48);
        }

        objc_sync_exit(obj);
        v72 = 0u;
        v73 = 0u;
        v70 = 0u;
        v71 = 0u;
        v40 = v44;
        v53 = [v40 countByEnumeratingWithState:&v70 objects:v79 count:16];
        if (v53)
        {
          v54 = *v71;
          do
          {
            for (k = 0; k != v53; ++k)
            {
              if (*v71 != v54)
              {
                objc_enumerationMutation(v40);
              }

              v56 = *(*(&v70 + 1) + 8 * k);
              serverRoot2 = [v56 serverRoot];
              wellKnownPath3 = [(CoreDAVDiscoveryTaskGroup *)self wellKnownPath];
              [v56 setServerRoot:wellKnownPath3];

              v59 = [v56 url];
              [v56 setServerRoot:serverRoot2];
              [(CoreDAVDiscoveryTaskGroup *)self startWellKnownLocationTask:v56 withURL:v59];
            }

            v53 = [v40 countByEnumeratingWithState:&v70 objects:v79 count:16];
          }

          while (v53);
        }

        goto LABEL_58;
      }

      if (!serverRoot)
      {
        goto LABEL_35;
      }
    }

    goto LABEL_35;
  }

  v7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CoreDAVErrorDomain" code:1 userInfo:0];
  [(CoreDAVDiscoveryTaskGroup *)self completeDiscovery:taskCopy error:v7];

LABEL_60:
}

- (void)completeOptionsTask:(id)task error:(id)error
{
  v46 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  errorCopy = error;
  if (!self->super._isCancelling)
  {
    accountInfoProvider = [taskCopy accountInfoProvider];
    v12 = +[CoreDAVLogging sharedLogging];
    WeakRetained = objc_loadWeakRetained(&self->super._accountInfoProvider);
    v14 = [v12 logHandleForAccountInfoProvider:WeakRetained];

    if (v14)
    {
      v15 = v14;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v35 = accountInfoProvider;
        v16 = [accountInfoProvider url];
        requiredComplianceClass = self->_requiredComplianceClass;
        if (errorCopy)
        {
          responseHeaders = 0;
        }

        else
        {
          responseHeaders = [taskCopy responseHeaders];
        }

        *buf = 136316162;
        v37 = "[CoreDAVDiscoveryTaskGroup completeOptionsTask:error:]";
        v38 = 2112;
        v39 = v16;
        v40 = 2112;
        v41 = requiredComplianceClass;
        v42 = 2112;
        v43 = errorCopy;
        v44 = 2112;
        v45 = responseHeaders;
        _os_log_impl(&dword_2452FB000, v15, OS_LOG_TYPE_INFO, "%s - URL: [%@], requiredComplianceClass: [%@], error: [%@], responseHeaders: [%@]", buf, 0x34u);
        if (!errorCopy)
        {
        }

        accountInfoProvider = v35;
      }
    }

    if (errorCopy)
    {
      domain = [errorCopy domain];
      if ([domain isEqualToString:@"CoreDAVHTTPStatusErrorDomain"])
      {
        code = [errorCopy code];

        if (code == 401)
        {
          [(CoreDAVDiscoveryTaskGroup *)self setDidReceiveAuthenticationError:1];
        }
      }

      else
      {
      }

      selfCopy2 = self;
      v10 = taskCopy;
      v11 = errorCopy;
      goto LABEL_23;
    }

    responseHeaders2 = [taskCopy responseHeaders];
    v22 = CDVCleanedStringsFromResponseHeaders(responseHeaders2, @"DAV");

    if (self->_requiredComplianceClass)
    {
      if (([v22 containsObject:?] & 1) == 0)
      {
        v23 = +[CoreDAVLogging sharedLogging];
        v24 = objc_loadWeakRetained(&self->super._accountInfoProvider);
        v25 = [v23 logHandleForAccountInfoProvider:v24];

        if (v25)
        {
          v25 = v25;
          if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
          {
            v26 = accountInfoProvider;
            v27 = self->_requiredComplianceClass;
            v28 = [v26 url];
            *buf = 136315650;
            v37 = "[CoreDAVDiscoveryTaskGroup completeOptionsTask:error:]";
            v38 = 2112;
            v39 = v27;
            accountInfoProvider = v26;
            v40 = 2112;
            v41 = v28;
            v29 = "%s - No mention of compliance class [%@] in DAV header at URL: [%@]";
            v30 = v25;
            v31 = 32;
LABEL_30:
            _os_log_impl(&dword_2452FB000, v30, OS_LOG_TYPE_INFO, v29, buf, v31);

            goto LABEL_31;
          }

          goto LABEL_31;
        }

        goto LABEL_32;
      }
    }

    else if (![v22 count])
    {
      v23 = +[CoreDAVLogging sharedLogging];
      v33 = objc_loadWeakRetained(&self->super._accountInfoProvider);
      v25 = [v23 logHandleForAccountInfoProvider:v33];

      if (v25)
      {
        v25 = v25;
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          v28 = [accountInfoProvider url];
          *buf = 136315394;
          v37 = "[CoreDAVDiscoveryTaskGroup completeOptionsTask:error:]";
          v38 = 2112;
          v39 = v28;
          v29 = "%s - No DAV header at URL: [%@]";
          v30 = v25;
          v31 = 22;
          goto LABEL_30;
        }

LABEL_31:
      }

LABEL_32:

      v34 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CoreDAVErrorDomain" code:6 userInfo:0];
      [(CoreDAVDiscoveryTaskGroup *)self completeDiscovery:taskCopy error:v34];

      goto LABEL_33;
    }

    [accountInfoProvider setServerComplianceClasses:v22];
    responseHeaders3 = [taskCopy responseHeaders];
    [accountInfoProvider setServerHeaders:responseHeaders3];

    [(CoreDAVDiscoveryTaskGroup *)self completeDiscovery:taskCopy error:0];
LABEL_33:

    goto LABEL_24;
  }

  accountInfoProvider = [MEMORY[0x277CCA9B8] errorWithDomain:@"CoreDAVErrorDomain" code:1 userInfo:0];
  selfCopy2 = self;
  v10 = taskCopy;
  v11 = accountInfoProvider;
LABEL_23:
  [(CoreDAVDiscoveryTaskGroup *)selfCopy2 completeDiscovery:v10 error:v11];
LABEL_24:
}

- (void)optionsTask:(id)task error:(id)error
{
  outstandingTasks = self->super._outstandingTasks;
  errorCopy = error;
  taskCopy = task;
  [(NSMutableSet *)outstandingTasks removeObject:taskCopy];
  [(CoreDAVDiscoveryTaskGroup *)self completeOptionsTask:taskCopy error:errorCopy];
}

- (void)propFindTaskFinished:(id)finished
{
  v30 = *MEMORY[0x277D85DE8];
  finishedCopy = finished;
  multiStatus = [finishedCopy multiStatus];
  orderedResponses = [multiStatus orderedResponses];

  error = [finishedCopy error];
  [(NSMutableSet *)self->super._outstandingTasks removeObject:finishedCopy];
  if (!self->super._isCancelling)
  {
    accountInfoProvider = [finishedCopy accountInfoProvider];
    v9 = +[CoreDAVLogging sharedLogging];
    WeakRetained = objc_loadWeakRetained(&self->super._accountInfoProvider);
    v11 = [v9 logHandleForAccountInfoProvider:WeakRetained];

    if (v11)
    {
      v12 = v11;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = [accountInfoProvider url];
        *buf = 136315906;
        v23 = "[CoreDAVDiscoveryTaskGroup propFindTaskFinished:]";
        v24 = 2112;
        v25 = v13;
        v26 = 2112;
        v27 = orderedResponses;
        v28 = 2112;
        v29 = error;
        _os_log_impl(&dword_2452FB000, v12, OS_LOG_TYPE_INFO, "%s - URL: [%@], parsedResponses: [%@], error: [%@]", buf, 0x2Au);
      }
    }

    if (error)
    {
      domain = [error domain];
      if ([domain isEqualToString:@"CoreDAVHTTPStatusErrorDomain"])
      {
        code = [error code];

        if (code == 401)
        {
          [(CoreDAVDiscoveryTaskGroup *)self setDidReceiveAuthenticationError:1];
        }
      }

      else
      {
      }

      v16 = 0;
    }

    else
    {
      v21 = 0;
      v16 = [(CoreDAVDiscoveryTaskGroup *)self extractPrincipalURLFromPropFindTask:finishedCopy error:&v21];
      v17 = v21;
      if (!v17)
      {
        [accountInfoProvider setPrincipalURL:v16];
        principalURL = [accountInfoProvider principalURL];
        relativePath = [principalURL relativePath];
        cDVStringByAppendingSlashIfNeeded = [relativePath CDVStringByAppendingSlashIfNeeded];
        [accountInfoProvider setServerRoot:cDVStringByAppendingSlashIfNeeded];

        [(CoreDAVDiscoveryTaskGroup *)self startOptionsTask:accountInfoProvider];
        error = 0;
        goto LABEL_16;
      }

      error = v17;
    }

    [(CoreDAVDiscoveryTaskGroup *)self completeDiscovery:finishedCopy error:error];
LABEL_16:

    goto LABEL_17;
  }

  accountInfoProvider = [MEMORY[0x277CCA9B8] errorWithDomain:@"CoreDAVErrorDomain" code:1 userInfo:0];
  [(CoreDAVDiscoveryTaskGroup *)self completeDiscovery:finishedCopy error:accountInfoProvider];
LABEL_17:
}

- (void)completeDiscovery:(id)discovery error:(id)error
{
  v132 = *MEMORY[0x277D85DE8];
  discoveryCopy = discovery;
  errorCopy = error;
  v87 = discoveryCopy;
  accountInfoProvider = [discoveryCopy accountInfoProvider];
  v6 = +[CoreDAVLogging sharedLogging];
  WeakRetained = objc_loadWeakRetained(&self->super._accountInfoProvider);
  v8 = [v6 logHandleForAccountInfoProvider:WeakRetained];

  if (v8)
  {
    v9 = v8;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [accountInfoProvider url];
      principalURL = [accountInfoProvider principalURL];
      serverComplianceClasses = [accountInfoProvider serverComplianceClasses];
      *buf = 136316162;
      v123 = "[CoreDAVDiscoveryTaskGroup completeDiscovery:error:]";
      v124 = 2112;
      v125 = v10;
      v126 = 2112;
      v127 = principalURL;
      v128 = 2112;
      v129 = serverComplianceClasses;
      v130 = 2112;
      v131 = errorCopy;
      _os_log_impl(&dword_2452FB000, v9, OS_LOG_TYPE_INFO, "%s - URL: [%@] principalURL: [%@] complianceClasses: [%@] error: [%@]", buf, 0x34u);
    }
  }

  v119 = 0;
  v118 = 0;
  v117 = 0;
  v116 = 0;
  v115 = 0;
  [(CoreDAVDiscoveryTaskGroup *)self getDiscoveryStatus:accountInfoProvider priorFailed:&v119 subsequentFailed:0 priorIncomplete:&v118 subsequentIncomplete:&v117 priorSuccess:&v116 subsequentSuccess:&v115];
  v88 = v119;
  v13 = v118;
  v95 = v117;
  v91 = v116;
  v89 = v115;
  v90 = v13;
  v14 = [v13 count];
  v15 = [v95 count] + v14;
  if (errorCopy)
  {
    [accountInfoProvider setError:?];
    if (![v91 count] && !-[CoreDAVDiscoveryTaskGroup shouldBailEarly](self, "shouldBailEarly"))
    {
      v16 = self->_discoveries;
      objc_sync_enter(v16);
      v17 = [(NSMutableArray *)self->_discoveries indexOfObject:accountInfoProvider];
      if (v17 == 0x7FFFFFFFFFFFFFFFLL)
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"CoreDAVDiscoveryTaskGroup.m" lineNumber:995 description:@"Current discovery was not found."];
      }

      if (v17 + 1 < [(NSMutableArray *)self->_discoveries count])
      {
        v18 = [(NSMutableArray *)self->_discoveries objectAtIndex:?];
        if (([v18 started] & 1) == 0 && !self->super._isCancelling)
        {
          [(CoreDAVDiscoveryTaskGroup *)self startPropfindTask:v18];
          ++v15;
        }
      }

      objc_sync_exit(v16);
    }

    if (v15)
    {
      v19 = +[CoreDAVLogging sharedLogging];
      v20 = objc_loadWeakRetained(&self->super._accountInfoProvider);
      v21 = [v19 logHandleForAccountInfoProvider:v20];

      if (v21)
      {
        v22 = v21;
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          v23 = [accountInfoProvider url];
          *buf = 138412546;
          v123 = v23;
          v124 = 2048;
          v125 = v15;
          _os_log_impl(&dword_2452FB000, v22, OS_LOG_TYPE_INFO, "CoreDAVDiscoveryTaskGroup.completeDiscovery:%@ failed, waiting for %lu incomplete.", buf, 0x16u);
        }
      }
    }

    else if ([v91 count] || objc_msgSend(v89, "count"))
    {
      if ([v91 count])
      {
        v40 = v91;
      }

      else
      {
        v40 = v89;
      }

      v41 = [v40 objectAtIndex:0];
      [(CoreDAVDiscoveryTaskGroup *)self setDiscoveredAccountInfo:v41];

      v42 = +[CoreDAVLogging sharedLogging];
      v43 = objc_loadWeakRetained(&self->super._accountInfoProvider);
      v44 = [v42 logHandleForAccountInfoProvider:v43];

      if (v44)
      {
        v45 = v44;
        if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
        {
          v46 = [accountInfoProvider url];
          discoveredAccountInfo = [(CoreDAVDiscoveryTaskGroup *)self discoveredAccountInfo];
          principalURL2 = [discoveredAccountInfo principalURL];
          *buf = 138412546;
          v123 = v46;
          v124 = 2112;
          v125 = principalURL2;
          _os_log_impl(&dword_2452FB000, v45, OS_LOG_TYPE_INFO, "CoreDAVDiscoveryTaskGroup.completeDiscovery:%@ failed, returning previous success %@.", buf, 0x16u);
        }
      }

      v114[0] = MEMORY[0x277D85DD0];
      v114[1] = 3221225472;
      v114[2] = __53__CoreDAVDiscoveryTaskGroup_completeDiscovery_error___block_invoke;
      v114[3] = &unk_278E30F18;
      v114[4] = self;
      [(CoreDAVTaskGroup *)self finishCoreDAVTaskGroupWithError:0 delegateCallbackBlock:v114];
    }

    else if ([v88 count])
    {
      v86 = accountInfoProvider;
      v110 = 0u;
      v111 = 0u;
      v112 = 0u;
      v113 = 0u;
      v59 = v88;
      v60 = [v59 countByEnumeratingWithState:&v110 objects:v121 count:16];
      v61 = v86;
      if (v60)
      {
        v62 = *v111;
        do
        {
          for (i = 0; i != v60; ++i)
          {
            if (*v111 != v62)
            {
              objc_enumerationMutation(v59);
            }

            v64 = *(*(&v110 + 1) + 8 * i);
            error = [v64 error];
            domain = [error domain];
            if ([domain isEqualToString:@"CoreDAVHTTPStatusErrorDomain"])
            {
              error2 = [v64 error];
              v68 = [error2 code] == 401;

              if (v68)
              {
                v61 = v64;

                goto LABEL_86;
              }
            }

            else
            {
            }
          }

          v60 = [v59 countByEnumeratingWithState:&v110 objects:v121 count:16];
        }

        while (v60);
        v61 = v86;
      }

LABEL_86:

      v74 = +[CoreDAVLogging sharedLogging];
      v75 = objc_loadWeakRetained(&self->super._accountInfoProvider);
      v76 = [v74 logHandleForAccountInfoProvider:v75];

      if (v76)
      {
        v77 = v76;
        if (os_log_type_enabled(v77, OS_LOG_TYPE_INFO))
        {
          v78 = [v86 url];
          v79 = [v61 url];
          *buf = 138412546;
          v123 = v78;
          v124 = 2112;
          v125 = v79;
          _os_log_impl(&dword_2452FB000, v77, OS_LOG_TYPE_INFO, "CoreDAVDiscoveryTaskGroup.completeDiscovery:%@ failed, returning prior error %@.", buf, 0x16u);
        }
      }

      error3 = [v61 error];
      v108[0] = MEMORY[0x277D85DD0];
      v108[1] = 3221225472;
      v108[2] = __53__CoreDAVDiscoveryTaskGroup_completeDiscovery_error___block_invoke_298;
      v108[3] = &unk_278E30F90;
      v108[4] = self;
      v109 = v61;
      v81 = v61;
      [(CoreDAVTaskGroup *)self finishCoreDAVTaskGroupWithError:error3 delegateCallbackBlock:v108];
    }

    else
    {
      v69 = +[CoreDAVLogging sharedLogging];
      v70 = objc_loadWeakRetained(&self->super._accountInfoProvider);
      v71 = [v69 logHandleForAccountInfoProvider:v70];

      if (v71)
      {
        v72 = v71;
        if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
        {
          v73 = [accountInfoProvider url];
          *buf = 138412290;
          v123 = v73;
          _os_log_impl(&dword_2452FB000, v72, OS_LOG_TYPE_INFO, "CoreDAVDiscoveryTaskGroup.completeDiscovery:%@ failed, returning error.", buf, 0xCu);
        }
      }

      v106[0] = MEMORY[0x277D85DD0];
      v106[1] = 3221225472;
      v106[2] = __53__CoreDAVDiscoveryTaskGroup_completeDiscovery_error___block_invoke_299;
      v106[3] = &unk_278E30F90;
      v106[4] = self;
      v107 = errorCopy;
      [(CoreDAVTaskGroup *)self finishCoreDAVTaskGroupWithError:v107 delegateCallbackBlock:v106];
    }
  }

  else
  {
    principalURL3 = [accountInfoProvider principalURL];
    v25 = principalURL3 == 0;

    if (v25)
    {
      [CoreDAVDiscoveryTaskGroup completeDiscovery:error:];
    }

    [accountInfoProvider setSuccess:1];
    v105[0] = MEMORY[0x277D85DD0];
    v105[1] = 3221225472;
    v105[2] = __53__CoreDAVDiscoveryTaskGroup_completeDiscovery_error___block_invoke_303;
    v105[3] = &unk_278E30F18;
    v105[4] = self;
    v85 = MEMORY[0x245D68C20](v105);
    when = dispatch_time(0, 5000000000);
    if ([v95 count])
    {
      v26 = +[CoreDAVLogging sharedLogging];
      v27 = objc_loadWeakRetained(&self->super._accountInfoProvider);
      v28 = [v26 logHandleForAccountInfoProvider:v27];

      if (v28)
      {
        v29 = v28;
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          v30 = [v95 count];
          *buf = 134217984;
          v123 = v30;
          _os_log_impl(&dword_2452FB000, v29, OS_LOG_TYPE_INFO, "Principal information found. Tearing down %lu outstanding tasks", buf, 0xCu);
        }
      }

      v31 = [(NSMutableSet *)self->super._outstandingTasks copy];
      v103 = 0u;
      v104 = 0u;
      v102 = 0u;
      v101 = 0u;
      v32 = v31;
      v33 = [v32 countByEnumeratingWithState:&v101 objects:v120 count:16];
      if (v33)
      {
        v34 = *v102;
        do
        {
          for (j = 0; j != v33; ++j)
          {
            if (*v102 != v34)
            {
              objc_enumerationMutation(v32);
            }

            v36 = *(*(&v101 + 1) + 8 * j);
            accountInfoProvider2 = [v36 accountInfoProvider];
            v38 = [v95 containsObject:accountInfoProvider2];

            if (v38)
            {
              v39 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CoreDAVErrorDomain" code:1 userInfo:0];
              [v36 finishCoreDAVTaskWithError:v39];

              --v15;
            }
          }

          v33 = [v32 countByEnumeratingWithState:&v101 objects:v120 count:16];
        }

        while (v33);
      }

      if (v15 != [v90 count])
      {
        [CoreDAVDiscoveryTaskGroup completeDiscovery:error:];
      }

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __53__CoreDAVDiscoveryTaskGroup_completeDiscovery_error___block_invoke_307;
      block[3] = &unk_278E31030;
      v100 = v85;
      dispatch_after(when, MEMORY[0x277D85CD0], block);
    }

    else if ([v90 count])
    {
      v49 = +[CoreDAVLogging sharedLogging];
      v50 = objc_loadWeakRetained(&self->super._accountInfoProvider);
      v51 = [v49 logHandleForAccountInfoProvider:v50];

      if (v51)
      {
        v52 = v51;
        if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
        {
          v53 = [accountInfoProvider url];
          *buf = 138412546;
          v123 = v53;
          v124 = 2048;
          v125 = v15;
          _os_log_impl(&dword_2452FB000, v52, OS_LOG_TYPE_INFO, "CoreDAVDiscoveryTaskGroup.completeDiscovery:%@ success, waiting for prior %lu incomplete.", buf, 0x16u);
        }
      }

      v96[0] = MEMORY[0x277D85DD0];
      v96[1] = 3221225472;
      v96[2] = __53__CoreDAVDiscoveryTaskGroup_completeDiscovery_error___block_invoke_315;
      v96[3] = &unk_278E31030;
      v97 = v85;
      dispatch_after(when, MEMORY[0x277D85CD0], v96);
    }

    else
    {
      if ([v91 count])
      {
        [CoreDAVDiscoveryTaskGroup completeDiscovery:error:];
      }

      if (v15)
      {
        [CoreDAVDiscoveryTaskGroup completeDiscovery:error:];
      }

      [(CoreDAVDiscoveryTaskGroup *)self setDiscoveredAccountInfo:accountInfoProvider];
      v54 = +[CoreDAVLogging sharedLogging];
      v55 = objc_loadWeakRetained(&self->super._accountInfoProvider);
      v56 = [v54 logHandleForAccountInfoProvider:v55];

      if (v56)
      {
        v57 = v56;
        if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
        {
          v58 = [accountInfoProvider url];
          *buf = 138412290;
          v123 = v58;
          _os_log_impl(&dword_2452FB000, v57, OS_LOG_TYPE_INFO, "CoreDAVDiscoveryTaskGroup.completeDiscovery:%@ success, returning.", buf, 0xCu);
        }
      }

      v98[0] = MEMORY[0x277D85DD0];
      v98[1] = 3221225472;
      v98[2] = __53__CoreDAVDiscoveryTaskGroup_completeDiscovery_error___block_invoke_314;
      v98[3] = &unk_278E30F18;
      v98[4] = self;
      [(CoreDAVTaskGroup *)self finishCoreDAVTaskGroupWithError:0 delegateCallbackBlock:v98];
    }
  }
}

void __53__CoreDAVDiscoveryTaskGroup_completeDiscovery_error___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [v2 discoveredAccountInfo];
  [v4 discoveryTask:v2 gotAccountInfo:v3 error:0];
}

void __53__CoreDAVDiscoveryTaskGroup_completeDiscovery_error___block_invoke_298(uint64_t a1)
{
  v4 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) error];
  [v4 discoveryTask:v2 gotAccountInfo:0 error:v3];
}

void __53__CoreDAVDiscoveryTaskGroup_completeDiscovery_error___block_invoke_299(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 discoveryTask:*(a1 + 32) gotAccountInfo:0 error:*(a1 + 40)];
}

void __53__CoreDAVDiscoveryTaskGroup_completeDiscovery_error___block_invoke_303(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  if ([*(*(a1 + 32) + 32) count])
  {
    v2 = +[CoreDAVLogging sharedLogging];
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
    v4 = [v2 logHandleForAccountInfoProvider:WeakRetained];

    if (v4)
    {
      v5 = v4;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = [*(*(a1 + 32) + 32) count];
        *buf = 134217984;
        v21 = v6;
        _os_log_impl(&dword_2452FB000, v5, OS_LOG_TYPE_INFO, "Giving up on all outstanding tasks since we found some information already. Tearing down %lu outstanding tasks", buf, 0xCu);
      }
    }

    *(*(a1 + 32) + 40) = 1;
    v7 = [*(*(a1 + 32) + 32) copy];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        v12 = 0;
        do
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v15 + 1) + 8 * v12);
          v14 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CoreDAVErrorDomain" code:1 userInfo:{0, v15}];
          [v13 finishCoreDAVTaskWithError:v14];

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }
  }
}

void __53__CoreDAVDiscoveryTaskGroup_completeDiscovery_error___block_invoke_314(uint64_t a1)
{
  v4 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [v2 discoveredAccountInfo];
  [v4 discoveryTask:v2 gotAccountInfo:v3 error:0];
}

- (void)noteDefinitiveAuthFailureFromTask:(id)task
{
  v22 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  [(CoreDAVDiscoveryTaskGroup *)self setShouldBailEarly:1];
  v5 = +[CoreDAVLogging sharedLogging];
  WeakRetained = objc_loadWeakRetained(&self->super._accountInfoProvider);
  v7 = [v5 logHandleForAccountInfoProvider:WeakRetained];

  if (v7 && os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_2452FB000, v7, OS_LOG_TYPE_INFO, "Received definitive 401, canceling remaining tasks", buf, 2u);
  }

  v8 = [(NSMutableSet *)self->super._outstandingTasks copy];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      v13 = 0;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v16 + 1) + 8 * v13);
        if (v14 != taskCopy)
        {
          v15 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CoreDAVErrorDomain" code:1 userInfo:{0, v16}];
          [v14 finishCoreDAVTaskWithError:v15];
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v11);
  }
}

- (id)propFindProperties
{
  v2 = objc_alloc_init(CoreDAVItemParserMapping);
  [(CoreDAVItemParserMapping *)v2 setNameSpace:@"DAV:"];
  [(CoreDAVItemParserMapping *)v2 setName:@"current-user-principal"];
  [(CoreDAVItemParserMapping *)v2 setParseClass:objc_opt_class()];
  v3 = objc_alloc_init(CoreDAVItemParserMapping);
  [(CoreDAVItemParserMapping *)v3 setNameSpace:@"DAV:"];
  [(CoreDAVItemParserMapping *)v3 setName:@"resourcetype"];
  [(CoreDAVItemParserMapping *)v3 setParseClass:objc_opt_class()];
  v4 = objc_alloc_init(CoreDAVItemParserMapping);
  [(CoreDAVItemParserMapping *)v4 setNameSpace:@"DAV:"];
  [(CoreDAVItemParserMapping *)v4 setName:@"principal-URL"];
  [(CoreDAVItemParserMapping *)v4 setParseClass:objc_opt_class()];
  v5 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{v2, v3, v4, 0}];

  return v5;
}

- (id)extractPrincipalURLFromPropFindTask:(id)task error:(id *)error
{
  v60 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  multiStatus = [taskCopy multiStatus];
  orderedResponses = [multiStatus orderedResponses];

  accountInfoProvider = [taskCopy accountInfoProvider];

  if ([orderedResponses count] == 1)
  {
    errorCopy = error;
    v56 = [orderedResponses objectAtIndex:0];
    successfulPropertiesToValues = [v56 successfulPropertiesToValues];
    v55 = [successfulPropertiesToValues CDVObjectForKeyWithNameSpace:@"DAV:" andName:@"resourcetype"];
    principal = [v55 principal];
    if (principal)
    {
      v12 = principal;
      WeakRetained = objc_loadWeakRetained(&self->super._accountInfoProvider);
      serverRoot = [WeakRetained serverRoot];

      if (serverRoot)
      {
        v15 = +[CoreDAVLogging sharedLogging];
        v16 = objc_loadWeakRetained(&self->super._accountInfoProvider);
        v17 = [v15 logHandleForAccountInfoProvider:v16];

        if (v17)
        {
          v18 = v17;
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            v19 = objc_loadWeakRetained(&self->super._accountInfoProvider);
            serverRoot2 = [v19 serverRoot];
            *buf = 138412290;
            v59 = serverRoot2;
            _os_log_impl(&dword_2452FB000, v18, OS_LOG_TYPE_INFO, "Returning specified user principal [%@]", buf, 0xCu);
          }
        }

        if ([accountInfoProvider port])
        {
          v21 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(accountInfoProvider, "port")}];
        }

        else
        {
          v21 = 0;
        }

        v47 = MEMORY[0x277CBEBC0];
        scheme = [accountInfoProvider scheme];
        host = [accountInfoProvider host];
        v48 = objc_loadWeakRetained(&self->super._accountInfoProvider);
        serverRoot3 = [v48 serverRoot];
        payloadAsFullURL = [v47 CDVURLWithScheme:scheme host:host port:v21 path:serverRoot3];

        goto LABEL_44;
      }
    }

    v27 = [successfulPropertiesToValues CDVObjectForKeyWithNameSpace:@"DAV:" andName:@"current-user-principal"];
    v21 = v27;
    if (v27)
    {
      unauthenticated = [v27 unauthenticated];

      if (unauthenticated)
      {
        v29 = +[CoreDAVLogging sharedLogging];
        v30 = objc_loadWeakRetained(&self->super._accountInfoProvider);
        v31 = [v29 logHandleForAccountInfoProvider:v30];

        if (v31 && os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_2452FB000, v31, OS_LOG_TYPE_DEFAULT, "Not authenticated to get current user principal", buf, 2u);
        }

        v54 = 0;
        v32 = 4;
LABEL_26:

        host = [MEMORY[0x277CCA9B8] errorWithDomain:@"CoreDAVErrorDomain" code:v32 userInfo:0];
        v35 = [successfulPropertiesToValues CDVObjectForKeyWithNameSpace:@"DAV:" andName:@"principal-URL"];
        scheme = v35;
        if (v35)
        {
          href = [v35 href];
          payloadAsFullURL = [href payloadAsFullURL];

          if (payloadAsFullURL)
          {
LABEL_44:
            v46 = 0;
            error = errorCopy;
            goto LABEL_45;
          }

          v38 = +[CoreDAVLogging sharedLogging];
          v39 = objc_loadWeakRetained(&self->super._accountInfoProvider);
          v40 = [v38 logHandleForAccountInfoProvider:v39];

          if (v40 && os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v59 = successfulPropertiesToValues;
            _os_log_impl(&dword_2452FB000, v40, OS_LOG_TYPE_DEFAULT, "Could not find the href of the user's principal URL. Found properties: [%@]", buf, 0xCu);
          }

          v41 = v54;
          if (!host)
          {
            v41 = 1;
          }

          error = errorCopy;
          if (v41 != 1)
          {
LABEL_34:
            payloadAsFullURL = 0;
LABEL_46:

            goto LABEL_47;
          }
        }

        else
        {
          v42 = +[CoreDAVLogging sharedLogging];
          v43 = objc_loadWeakRetained(&self->super._accountInfoProvider);
          v44 = [v42 logHandleForAccountInfoProvider:v43];

          if (v44 && os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v59 = successfulPropertiesToValues;
            _os_log_impl(&dword_2452FB000, v44, OS_LOG_TYPE_DEFAULT, "Could not find the user's principal URL. Found properties: [%@]", buf, 0xCu);
          }

          v45 = v54;
          if (!host)
          {
            v45 = 1;
          }

          error = errorCopy;
          if ((v45 & 1) == 0)
          {
            goto LABEL_34;
          }
        }

        v46 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CoreDAVErrorDomain" code:8 userInfo:0];
        payloadAsFullURL = 0;
LABEL_45:

        host = v46;
        goto LABEL_46;
      }

      href2 = [v21 href];
      payloadAsFullURL = [href2 payloadAsFullURL];

      if (payloadAsFullURL)
      {
        host = 0;
        error = errorCopy;
LABEL_47:

        if (!error)
        {
          goto LABEL_50;
        }

        goto LABEL_48;
      }

      v29 = +[CoreDAVLogging sharedLogging];
      v53 = objc_loadWeakRetained(&self->super._accountInfoProvider);
      v31 = [v29 logHandleForAccountInfoProvider:v53];

      if (!v31 || !os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
LABEL_25:
        v54 = 1;
        v32 = 8;
        goto LABEL_26;
      }

      *buf = 138412290;
      v59 = v21;
      v34 = "Could not find the current user principal's HREF.  Current user principal: [%@]";
    }

    else
    {
      v29 = +[CoreDAVLogging sharedLogging];
      v33 = objc_loadWeakRetained(&self->super._accountInfoProvider);
      v31 = [v29 logHandleForAccountInfoProvider:v33];

      if (!v31 || !os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_25;
      }

      *buf = 138412290;
      v59 = successfulPropertiesToValues;
      v34 = "Could not find the current user principal. Found properties: [%@]";
    }

    _os_log_impl(&dword_2452FB000, v31, OS_LOG_TYPE_DEFAULT, v34, buf, 0xCu);
    goto LABEL_25;
  }

  v22 = +[CoreDAVLogging sharedLogging];
  v23 = objc_loadWeakRetained(&self->super._accountInfoProvider);
  v24 = [v22 logHandleForAccountInfoProvider:v23];

  if (v24 && os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v59 = orderedResponses;
    _os_log_impl(&dword_2452FB000, v24, OS_LOG_TYPE_DEFAULT, "We must have exactly one user principal for an account.  Parsed responses: [%@]", buf, 0xCu);
  }

  host = [MEMORY[0x277CCA9B8] errorWithDomain:@"CoreDAVErrorDomain" code:8 userInfo:0];
  payloadAsFullURL = 0;
  if (error)
  {
LABEL_48:
    if (host)
    {
      v50 = host;
      *error = host;
    }
  }

LABEL_50:

  return payloadAsFullURL;
}

- (id)cleanedStringsFromResponseHeaders:(id)headers forHeader:(id)header
{
  v24 = *MEMORY[0x277D85DE8];
  headersCopy = headers;
  headerCopy = header;
  v6 = [headersCopy CDVObjectForKeyCaseInsensitive:?];
  lowercaseString = [v6 lowercaseString];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = [lowercaseString componentsSeparatedByString:{@", "}];
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v20;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v19 + 1) + 8 * i);
        whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
        v16 = [v14 stringByTrimmingCharactersInSet:whitespaceCharacterSet];

        if ([v16 length])
        {
          if (v11)
          {
            [v11 addObject:v16];
          }

          else
          {
            v11 = [MEMORY[0x277CBEB58] setWithObject:v16];
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)addToDiscoveryArray:(id *)array discovery:(id)discovery
{
  discoveryCopy = discovery;
  v6 = discoveryCopy;
  if (array)
  {
    v7 = discoveryCopy;
    if (*array)
    {
      discoveryCopy = [*array addObject:discoveryCopy];
      v6 = v7;
    }

    else
    {
      discoveryCopy = [MEMORY[0x277CBEB18] arrayWithObject:discoveryCopy];
      v6 = v7;
      *array = discoveryCopy;
    }
  }

  MEMORY[0x2821F96F8](discoveryCopy, v6);
}

- (void)getDiscoveryStatus:(id)status priorFailed:(id *)failed subsequentFailed:(id *)subsequentFailed priorIncomplete:(id *)incomplete subsequentIncomplete:(id *)subsequentIncomplete priorSuccess:(id *)success subsequentSuccess:(id *)subsequentSuccess
{
  v35 = *MEMORY[0x277D85DE8];
  statusCopy = status;
  if (failed)
  {
    *failed = 0;
  }

  if (subsequentFailed)
  {
    *subsequentFailed = 0;
  }

  if (incomplete)
  {
    *incomplete = 0;
  }

  if (subsequentIncomplete)
  {
    *subsequentIncomplete = 0;
  }

  if (success)
  {
    *success = 0;
  }

  failedCopy = failed;
  if (subsequentSuccess)
  {
    *subsequentSuccess = 0;
  }

  incompleteCopy = incomplete;
  subsequentFailedCopy = subsequentFailed;
  subsequentIncompleteCopy = subsequentIncomplete;
  successCopy = success;
  obj = self->_discoveries;
  objc_sync_enter(obj);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v17 = self->_discoveries;
  v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v18)
  {
    v19 = 0;
    v20 = *v31;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v31 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v30 + 1) + 8 * i);
        if (v22 == statusCopy)
        {
          v19 = 1;
        }

        else if ([*(*(&v30 + 1) + 8 * i) started])
        {
          error = [v22 error];

          if (error)
          {
            if (v19)
            {
              subsequentSuccessCopy = subsequentFailedCopy;
            }

            else
            {
              subsequentSuccessCopy = failedCopy;
            }
          }

          else if ([v22 success])
          {
            if (v19)
            {
              subsequentSuccessCopy = subsequentSuccess;
            }

            else
            {
              subsequentSuccessCopy = successCopy;
            }
          }

          else if (v19)
          {
            subsequentSuccessCopy = subsequentIncompleteCopy;
          }

          else
          {
            subsequentSuccessCopy = incompleteCopy;
          }

          [(CoreDAVDiscoveryTaskGroup *)self addToDiscoveryArray:subsequentSuccessCopy discovery:v22, obj];
        }
      }

      v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v18);
  }

  objc_sync_exit(obj);
}

- (void)completeDiscovery:error:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)completeDiscovery:error:.cold.2()
{
  OUTLINED_FUNCTION_1();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)completeDiscovery:error:.cold.3()
{
  OUTLINED_FUNCTION_1();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)completeDiscovery:error:.cold.4()
{
  OUTLINED_FUNCTION_1();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end