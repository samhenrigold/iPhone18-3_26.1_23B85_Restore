@interface C2SessionTLSCache
- (C2SessionTLSCache)init;
- (id)_createSessionWithTLSPinning:(BOOL)pinning;
- (id)sessionForOptions:(id)options;
- (void)C2Session:(id)session didBecomeInvalidWithError:(id)error;
- (void)C2Session:(id)session originalHost:(id)host updatedRoute:(id)route;
@end

@implementation C2SessionTLSCache

- (C2SessionTLSCache)init
{
  v7.receiver = self;
  v7.super_class = C2SessionTLSCache;
  v2 = [(C2SessionTLSCache *)&v7 init];
  v3 = v2;
  if (v2)
  {
    pinnedSession = v2->_pinnedSession;
    v2->_pinnedSession = 0;

    unpinnedSession = v3->_unpinnedSession;
    v3->_unpinnedSession = 0;
  }

  return v3;
}

- (id)_createSessionWithTLSPinning:(BOOL)pinning
{
  pinningCopy = pinning;
  v5 = objc_alloc_init(C2RequestOptions);
  [(C2RequestOptions *)v5 setTlsPinning:pinningCopy];
  v6 = [C2Session alloc];
  v7 = [(C2RequestOptions *)v5 sessionConfigurationNameWithRouteHost:@"Unknown"];
  v8 = [(C2Session *)v6 initWithSessionConfigurationName:v7 routeHost:@"Unknown" options:v5 sessionDelegate:self];

  return v8;
}

- (id)sessionForOptions:(id)options
{
  optionsCopy = options;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([optionsCopy tlsPinning])
  {
    p_pinnedSession = &selfCopy->_pinnedSession;
    pinnedSession = selfCopy->_pinnedSession;
    if (pinnedSession)
    {
      goto LABEL_7;
    }

    v8 = [(C2SessionTLSCache *)selfCopy _createSessionWithTLSPinning:1];
  }

  else
  {
    p_pinnedSession = &selfCopy->_unpinnedSession;
    pinnedSession = selfCopy->_unpinnedSession;
    if (pinnedSession)
    {
      goto LABEL_7;
    }

    v8 = [(C2SessionTLSCache *)selfCopy _createSessionWithTLSPinning:0];
  }

  v9 = *p_pinnedSession;
  *p_pinnedSession = v8;

  pinnedSession = *p_pinnedSession;
LABEL_7:
  v10 = pinnedSession;
  objc_sync_exit(selfCopy);

  session = [v10 session];

  return session;
}

- (void)C2Session:(id)session didBecomeInvalidWithError:(id)error
{
  v13 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  errorCopy = error;
  if (C2_DEFAULT_LOG_BLOCK_2 != -1)
  {
    [C2SessionTLSCache C2Session:didBecomeInvalidWithError:];
  }

  v9 = C2_DEFAULT_LOG_INTERNAL_2;
  if (os_log_type_enabled(C2_DEFAULT_LOG_INTERNAL_2, OS_LOG_TYPE_ERROR))
  {
    v11 = 138412290;
    v12 = errorCopy;
    _os_log_impl(&dword_242158000, v9, OS_LOG_TYPE_ERROR, "Expected NSURLSession for TLS Cache to never become invalid but did with error %@", &v11, 0xCu);
  }

  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"C2SessionTLSCache.m" lineNumber:57 description:@"Expected NSURLSession for TLS Cache to never become invalid"];
}

uint64_t __57__C2SessionTLSCache_C2Session_didBecomeInvalidWithError___block_invoke()
{
  C2_DEFAULT_LOG_INTERNAL_2 = os_log_create("com.apple.c2", "default");

  return MEMORY[0x2821F96F8]();
}

- (void)C2Session:(id)session originalHost:(id)host updatedRoute:(id)route
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"C2SessionTLSCache.m" lineNumber:61 description:@"Unexpected callback for task-less NSURLSession"];
}

@end