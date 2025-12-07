@interface FPXSearchEnumerator
- (FPXSearchEnumerator)initWithDomainContext:(id)context vendorEnumerator:(id)enumerator queue:(id)queue maximumNumberOfResultsPerPage:(int64_t)page;
- (void)_invalidateSync;
- (void)dealloc;
- (void)enumerateSearchResultsForObserver:(id)observer startingAtPage:(id)page;
- (void)invalidate;
- (void)invalidateVendorEnumeration;
@end

@implementation FPXSearchEnumerator

- (FPXSearchEnumerator)initWithDomainContext:(id)context vendorEnumerator:(id)enumerator queue:(id)queue maximumNumberOfResultsPerPage:(int64_t)page
{
  contextCopy = context;
  enumeratorCopy = enumerator;
  queueCopy = queue;
  v17.receiver = self;
  v17.super_class = FPXSearchEnumerator;
  v14 = [(FPXSearchEnumerator *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_domainContext, context);
    objc_storeStrong(&v15->_vendorEnumerator, enumerator);
    objc_storeStrong(&v15->_queue, queue);
    v15->_maximumNumberOfResultsPerPage = page;
  }

  return v15;
}

- (void)dealloc
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_2_7();
  mEMORY[0x1E69DF068] = [MEMORY[0x1E69DF068] sharedManager];
  currentPersona = [mEMORY[0x1E69DF068] currentPersona];
  [currentPersona userPersonaUniqueString];
  objc_claimAutoreleasedReturnValue();
  domain = [OUTLINED_FUNCTION_5_4() domain];
  personaIdentifier = [domain personaIdentifier];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_3_4(&dword_1AAAE1000, v5, v6, "[ERROR] Non matching personas for the extension %@ (%@, expect %@) on %s", v7, v8, v9, v10);

  OUTLINED_FUNCTION_31();
}

- (void)_invalidateSync
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_2_7();
  mEMORY[0x1E69DF068] = [MEMORY[0x1E69DF068] sharedManager];
  currentPersona = [mEMORY[0x1E69DF068] currentPersona];
  [currentPersona userPersonaUniqueString];
  objc_claimAutoreleasedReturnValue();
  domain = [OUTLINED_FUNCTION_5_4() domain];
  personaIdentifier = [domain personaIdentifier];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_3_4(&dword_1AAAE1000, v5, v6, "[ERROR] Non matching personas for the extension %@ (%@, expect %@) on %s", v7, v8, v9, v10);

  OUTLINED_FUNCTION_31();
}

- (void)invalidate
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__FPXSearchEnumerator_invalidate__block_invoke;
  block[3] = &unk_1E79399B0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)invalidateVendorEnumeration
{
  v14 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_vendorEnumerator)
  {
    section = __fp_create_section();
    v7 = section;
    v4 = fp_current_or_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      vendorEnumerator = selfCopy->_vendorEnumerator;
      *buf = 134218498;
      v9 = section;
      v10 = 2112;
      v11 = selfCopy;
      v12 = 2112;
      v13 = vendorEnumerator;
      _os_log_debug_impl(&dword_1AAAE1000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx %@: invalidating vendor enumeration: %@", buf, 0x20u);
    }

    [(NSFileProviderSearchEnumerator *)selfCopy->_vendorEnumerator invalidate];
    v5 = selfCopy->_vendorEnumerator;
    selfCopy->_vendorEnumerator = 0;

    __fp_leave_section_Debug(&v7);
  }

  objc_sync_exit(selfCopy);
}

- (void)enumerateSearchResultsForObserver:(id)observer startingAtPage:(id)page
{
  pageCopy = page;
  observerCopy = observer;
  v8 = [FPXWrappedSearchEnumeratorObserver alloc];
  providerDomain = [(FPXDomainContext *)self->_domainContext providerDomain];
  providerID = [providerDomain providerID];
  domain = [(FPXDomainContext *)self->_domainContext domain];
  identifier = [domain identifier];
  v13 = [(FPXWrappedSearchEnumeratorObserver *)v8 initWithTarget:observerCopy providerID:providerID domainIdentifier:identifier maximumNumberOfResultsPerPage:self->_maximumNumberOfResultsPerPage];

  [(NSFileProviderSearchEnumerator *)self->_vendorEnumerator enumerateSearchResultsForObserver:v13 startingAtPage:pageCopy];
}

@end