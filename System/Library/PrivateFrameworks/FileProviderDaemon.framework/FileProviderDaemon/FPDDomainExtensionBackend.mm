@interface FPDDomainExtensionBackend
- (BOOL)isProviderForRealPathURL:(id)l;
- (FPDDomainExtensionBackend)initWithDomain:(id)domain;
- (NSArray)rootURLs;
- (id)createIndexerWithExtension:(id)extension enabled:(BOOL)enabled error:(id *)error;
- (id)createRootByImportingURL:(id)l knownFolders:(id)folders error:(id *)error;
- (id)evictItemAtURL:(id)l evictionReason:(unsigned int)reason request:(id)request completionHandler:(id)handler;
- (id)newFileProviderProxyWithTimeoutValue:(double)value request:(id)request;
- (id)nsfpRequest:(id)request;
- (id)startProvidingItemAtURL:(id)l readerID:(id)d readingOptions:(unint64_t)options request:(id)request completionHandler:(id)handler;
- (void)URLForItemID:(id)d creatingPlaceholderIfMissing:(BOOL)missing ignoreAlternateContentsURL:(BOOL)l forBookmarkResolution:(BOOL)resolution request:(id)request completionHandler:(id)handler;
- (void)_cancelProvidingItemAtURL:(id)l withKey:(id)key request:(id)request;
- (void)bulkItemChanges:(id)changes changedFields:(unint64_t)fields request:(id)request completionHandler:(id)handler;
- (void)clearDiagnosticState:(id)state;
- (void)copyDatabaseToURL:(id)l completionHandler:(id)handler;
- (void)createItemBasedOnTemplate:(id)template fields:(unint64_t)fields urlWrapper:(id)wrapper options:(unint64_t)options bounceOnCollision:(BOOL)collision request:(id)request completionHandler:(id)handler;
- (void)didUpdateAlternateContentsDocumentForDocumentWithURL:(id)l request:(id)request completionHandler:(id)handler;
- (void)dumpStateTo:(id)to options:(unint64_t)options request:(id)request completionHandler:(id)handler;
- (void)enumerateSearchResultForRequest:(id)request lifetimeExtender:(id)extender completionHandler:(id)handler;
- (void)enumerateWithSettings:(id)settings lifetimeExtender:(id)extender observer:(id)observer completionHandler:(id)handler;
- (void)evictItemWithID:(id)d evictionReason:(unsigned int)reason request:(id)request completionHandler:(id)handler;
- (void)fetchAlternateContentsURLWrapperForDocumentWithURL:(id)l request:(id)request completionHandler:(id)handler;
- (void)fetchFPCKTelemetryWithCompletionHandler:(id)handler;
- (void)fetchOperationServiceOrEndpointWithRequest:(id)request completionHandler:(id)handler;
- (void)fetchServicesForItemID:(id)d allowRestrictedSources:(BOOL)sources request:(id)request completionHandler:(id)handler;
- (void)fetchThumbnailsAtURL:(id)l versions:(id)versions size:(CGSize)size perThumbnailCompletionHandler:(id)handler completionHandler:(id)completionHandler;
- (void)fetchVendorEndpointWithRequest:(id)request completionHandler:(id)handler;
- (void)forceUpdateBlockedProcessNamesFromDomain:(id)domain completionHandler:(id)handler;
- (void)getKnownFolderLocations:(unint64_t)locations request:(id)request completionHandler:(id)handler;
- (void)getSavedDiagnostics:(id)diagnostics;
- (void)hasNonUploadedFilesWithCompletionHandler:(id)handler;
- (void)hierarchyForURL:(id)l request:(id)request completionHandler:(id)handler;
- (void)invalidate;
- (void)itemChangedAtURL:(id)l request:(id)request;
- (void)itemForItemID:(id)d creatingPlaceholderIfMissing:(BOOL)missing ignoreAlternateContentsURL:(BOOL)l request:(id)request completionHandler:(id)handler;
- (void)itemForURL:(id)l options:(unint64_t)options request:(id)request completionHandler:(id)handler;
- (void)itemIDForURL:(id)l requireProviderItemID:(BOOL)d request:(id)request completionHandler:(id)handler;
- (void)launchFeedbackForDomain:(id)domain itemIdentifier:(id)identifier triggeringError:(id)error when:(id)when useDiagnostic:(BOOL)diagnostic completionHandler:(id)handler;
- (void)listRemoteVersionsOfItemAtURL:(id)l includeCachedVersions:(BOOL)versions request:(id)request completionHandler:(id)handler;
- (void)materializeItemWithID:(id)d requestedRange:(_NSRange)range request:(id)request completionHandler:(id)handler;
- (void)movingItemAtURL:(id)l withInfo:(id)info completionHandler:(id)handler;
- (void)putBackURLForTrashedItemAtURL:(id)l request:(id)request completionHandler:(id)handler;
- (void)reimportItemsBelowItemWithID:(id)d markItemDataless:(BOOL)dataless completionHandler:(id)handler;
- (void)reindexAllItemsWithDropReason:(unint64_t)reason completionHandler:(id)handler;
- (void)reindexItemsWithIndexReason:(int64_t)reason identifiers:(id)identifiers completionHandler:(id)handler;
- (void)requestDiagnosticCollectionForItemWithID:(id)d errorReason:(id)reason completionHandler:(id)handler;
- (void)resolveConflictAtURL:(id)l request:(id)request completionHandler:(id)handler;
- (void)setAlternateContentsURLWrapper:(id)wrapper forDocumentWithURL:(id)l request:(id)request completionHandler:(id)handler;
- (void)setPutBackInfoOnItemAtURL:(id)l completionHandler:(id)handler;
- (void)stateWithCompletionHandler:(id)handler;
- (void)trashItemAtURL:(id)l request:(id)request completionHandler:(id)handler;
- (void)triggerFeedbackApprovalRequestForItemURL:(id)l domain:(id)domain uiOnly:(BOOL)only completionHandler:(id)handler;
- (void)valuesForAttributes:(id)attributes forURL:(id)l request:(id)request completionHandler:(id)handler;
- (void)waitForStabilizationForRequest:(id)request mode:(unint64_t)mode completionHandler:(id)handler;
- (void)wakeForPushWithCompletionHandler:(id)handler;
- (void)workingSetDidChangeWithCompletionHandler:(id)handler;
@end

@implementation FPDDomainExtensionBackend

- (NSArray)rootURLs
{
  WeakRetained = objc_loadWeakRetained(&self->_domain);
  extensionStorageURLs = [WeakRetained extensionStorageURLs];

  return extensionStorageURLs;
}

- (FPDDomainExtensionBackend)initWithDomain:(id)domain
{
  domainCopy = domain;
  v18.receiver = self;
  v18.super_class = FPDDomainExtensionBackend;
  v5 = [(FPDDomainExtensionBackend *)&v18 init];
  v6 = v5;
  if (v5)
  {
    v7 = objc_storeWeak(&v5->_domain, domainCopy);
    v8 = MEMORY[0x1E696AEC0];
    v9 = v7;
    providerDomainID = [domainCopy providerDomainID];
    fp_obfuscatedProviderDomainID = [providerDomainID fp_obfuscatedProviderDomainID];
    v12 = [v8 stringWithFormat:@"extension backend: %@", fp_obfuscatedProviderDomainID];

    v13 = dispatch_workloop_create([v12 UTF8String]);
    queue = v6->_queue;
    v6->_queue = v13;

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    provideFileCompletionsByURL = v6->_provideFileCompletionsByURL;
    v6->_provideFileCompletionsByURL = dictionary;
  }

  return v6;
}

- (void)invalidate
{
  v14 = *MEMORY[0x1E69E9840];
  if (!self->_invalidated)
  {
    WeakRetained = objc_loadWeakRetained(&self->_domain);
    if (!WeakRetained)
    {
      [FPDDomainExtensionBackend invalidate];
    }

    v4 = objc_loadWeakRetained(&self->_domain);
    serialQueue = [v4 serialQueue];
    if (!serialQueue)
    {
      [FPDDomainExtensionBackend invalidate];
    }

    v6 = objc_loadWeakRetained(&self->_domain);
    serialQueue2 = [v6 serialQueue];
    dispatch_assert_queue_V2(serialQueue2);

    v8 = fp_current_or_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = objc_loadWeakRetained(&self->_domain);
      providerDomainID = [v9 providerDomainID];
      fp_obfuscatedProviderDomainID = [providerDomainID fp_obfuscatedProviderDomainID];
      v12 = 138412290;
      v13 = fp_obfuscatedProviderDomainID;
      _os_log_impl(&dword_1CEFC7000, v8, OS_LOG_TYPE_INFO, "[INFO] ♻️  invalidating extension backend for %@", &v12, 0xCu);
    }

    [(NSMutableDictionary *)self->_provideFileCompletionsByURL enumerateKeysAndObjectsUsingBlock:&__block_literal_global_97];
    [(NSMutableDictionary *)self->_provideFileCompletionsByURL removeAllObjects];
    objc_storeWeak(&self->_domain, 0);
    self->_invalidated = 1;
  }
}

void __39__FPDDomainExtensionBackend_invalidate__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  v6 = fp_current_or_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [v4 fp_shortDescription];
    *buf = 138412290;
    v20 = v7;
    _os_log_impl(&dword_1CEFC7000, v6, OS_LOG_TYPE_INFO, "[INFO] ❌  Cancelling request for %@ due to invalidation", buf, 0xCu);
  }

  v8 = FPUserCancelledError();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = [v5 objectEnumerator];
  v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v9);
        }

        (*(*(*(&v14 + 1) + 8 * v13++) + 16))();
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

- (BOOL)isProviderForRealPathURL:(id)l
{
  v23 = *MEMORY[0x1E69E9840];
  lCopy = l;
  WeakRetained = objc_loadWeakRetained(&self->_domain);
  provider = [WeakRetained provider];
  identifier = [provider identifier];
  v8 = [identifier isEqualToString:@"com.apple.FileProvider.LocalStorage"];

  if (v8 && ([MEMORY[0x1E695DFF8] fp_homeDirectory], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "fp_realpathURL"), v10 = objc_claimAutoreleasedReturnValue(), v9, LOBYTE(v9) = objc_msgSend(lCopy, "fp_matchesApplicationContainerURL:", v10), v10, (v9 & 1) != 0))
  {
    LOBYTE(v11) = 1;
  }

  else
  {
    coordinationRootURLs = [(FPDDomainExtensionBackend *)self coordinationRootURLs];
    v13 = [coordinationRootURLs mutableCopy];

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v14 = v13;
    v11 = [v14 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v11)
    {
      v15 = *v19;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v19 != v15)
          {
            objc_enumerationMutation(v14);
          }

          if ([*(*(&v18 + 1) + 8 * i) fp_realPathRelationshipToItemAtRealPathURL:{lCopy, v18}] < 2)
          {
            LOBYTE(v11) = 1;
            goto LABEL_14;
          }
        }

        v11 = [v14 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }

  return v11;
}

- (id)createRootByImportingURL:(id)l knownFolders:(id)folders error:(id *)error
{
  if (error)
  {
    *error = FPNotSupportedError();
  }

  return 0;
}

- (id)newFileProviderProxyWithTimeoutValue:(double)value request:(id)request
{
  requestCopy = request;
  WeakRetained = objc_loadWeakRetained(&self->_domain);
  session = [WeakRetained session];

  if (session)
  {
    v9 = [session newFileProviderProxyWithTimeout:objc_msgSend(requestCopy pid:{"pid"), value}];
  }

  else
  {
    v10 = objc_alloc(MEMORY[0x1E69674B0]);
    v11 = FPDomainUnavailableError();
    v9 = [v10 initWithConnection:0 protocol:&unk_1F4C8C390 orError:v11 name:@"invalidated extension" requestPid:{objc_msgSend(requestCopy, "pid")}];
  }

  return v9;
}

- (id)nsfpRequest:(id)request
{
  requestCopy = request;
  WeakRetained = objc_loadWeakRetained(&self->_domain);
  session = [WeakRetained session];

  if (session)
  {
    [requestCopy nsfpRequestForSession:session isSpeculative:0];
  }

  else
  {
    [MEMORY[0x1E6967518] requestFromTheSystem];
  }
  v7 = ;

  return v7;
}

- (void)itemForURL:(id)l options:(unint64_t)options request:(id)request completionHandler:(id)handler
{
  lCopy = l;
  requestCopy = request;
  v13 = lCopy;
  handlerCopy = handler;
  v9 = handlerCopy;
  v10 = lCopy;
  v11 = requestCopy;
  fp_dispatch_async_with_logs();
}

void __74__FPDDomainExtensionBackend_itemForURL_options_request_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = fp_current_or_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __74__FPDDomainExtensionBackend_itemForURL_options_request_completionHandler___block_invoke_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  v11 = [*(a1 + 32) newFileProviderProxyWithRequest:*(a1 + 40)];
  v12 = *(a1 + 48);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __74__FPDDomainExtensionBackend_itemForURL_options_request_completionHandler___block_invoke_248;
  v15[3] = &unk_1E83BE530;
  v13 = v12;
  v14 = *(a1 + 32);
  v16 = v13;
  v17 = v14;
  v18 = *(a1 + 56);
  [v11 itemForURL:v13 completionHandler:v15];
}

- (void)itemIDForURL:(id)l requireProviderItemID:(BOOL)d request:(id)request completionHandler:(id)handler
{
  lCopy = l;
  requestCopy = request;
  v13 = lCopy;
  handlerCopy = handler;
  v9 = handlerCopy;
  v10 = lCopy;
  v11 = requestCopy;
  fp_dispatch_async_with_logs();
}

void __90__FPDDomainExtensionBackend_itemIDForURL_requireProviderItemID_request_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = fp_current_or_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __90__FPDDomainExtensionBackend_itemIDForURL_requireProviderItemID_request_completionHandler___block_invoke_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  v11 = [*(a1 + 32) newFileProviderProxyWithRequest:*(a1 + 40)];
  v12 = *(a1 + 48);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __90__FPDDomainExtensionBackend_itemIDForURL_requireProviderItemID_request_completionHandler___block_invoke_251;
  v15[3] = &unk_1E83BE558;
  v13 = v12;
  v14 = *(a1 + 32);
  v16 = v13;
  v17 = v14;
  v18 = *(a1 + 56);
  [v11 identifierForItemAtURL:v13 completionHandler:v15];
}

- (void)putBackURLForTrashedItemAtURL:(id)l request:(id)request completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = FPNotSupportedError();
  (*(handler + 2))(handlerCopy, 0, v7);
}

- (void)setPutBackInfoOnItemAtURL:(id)l completionHandler:(id)handler
{
  handlerCopy = handler;
  v6 = FPNotSupportedError();
  (*(handler + 2))(handlerCopy, v6);
}

- (void)_cancelProvidingItemAtURL:(id)l withKey:(id)key request:(id)request
{
  lCopy = l;
  keyCopy = key;
  requestCopy = request;
  WeakRetained = objc_loadWeakRetained(&self->_domain);
  serialQueue = [WeakRetained serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  v13 = fp_current_or_default_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [(FPDDomainExtensionBackend *)v13 _cancelProvidingItemAtURL:v14 withKey:v15 request:v16, v17, v18, v19, v20];
  }

  v21 = [(NSMutableDictionary *)self->_provideFileCompletionsByURL objectForKeyedSubscript:lCopy];
  v22 = [v21 objectForKeyedSubscript:keyCopy];
  if (!v22)
  {
    v26 = fp_current_or_default_log();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [FPDDomainExtensionBackend _cancelProvidingItemAtURL:lCopy withKey:? request:?];
    }

    goto LABEL_10;
  }

  v23 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:3072 userInfo:0];
  (v22)[2](v22, v23);

  [v21 setObject:0 forKeyedSubscript:keyCopy];
  if (![v21 count])
  {
    v24 = fp_current_or_default_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      [FPDDomainExtensionBackend _cancelProvidingItemAtURL:withKey:request:];
    }

    [(NSMutableDictionary *)self->_provideFileCompletionsByURL setObject:0 forKeyedSubscript:lCopy];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __71__FPDDomainExtensionBackend__cancelProvidingItemAtURL_withKey_request___block_invoke;
    v27[3] = &unk_1E83BE580;
    v28 = lCopy;
    v25 = [(FPDDomainExtensionBackend *)self evictItemAtURL:v28 evictionReason:3 request:requestCopy completionHandler:v27];
    v26 = v28;
LABEL_10:
  }
}

void __71__FPDDomainExtensionBackend__cancelProvidingItemAtURL_withKey_request___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = fp_current_or_default_log();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __71__FPDDomainExtensionBackend__cancelProvidingItemAtURL_withKey_request___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __71__FPDDomainExtensionBackend__cancelProvidingItemAtURL_withKey_request___block_invoke_cold_2(a1);
  }
}

- (id)startProvidingItemAtURL:(id)l readerID:(id)d readingOptions:(unint64_t)options request:(id)request completionHandler:(id)handler
{
  v83 = *MEMORY[0x1E69E9840];
  lCopy = l;
  dCopy = d;
  requestCopy = request;
  handlerCopy = handler;
  v12 = fp_current_or_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [(FPDDomainExtensionBackend *)v12 startProvidingItemAtURL:v13 readerID:v14 readingOptions:v15 request:v16 completionHandler:v17, v18, v19];
  }

  if (self->_invalidated)
  {
    serialQueue = FPUserCancelledError();
    handlerCopy[2](handlerCopy, serialQueue);
    v21 = 0;
    goto LABEL_29;
  }

  WeakRetained = objc_loadWeakRetained(&self->_domain);
  serialQueue = [WeakRetained serialQueue];

  v23 = objc_loadWeakRetained(&self->_domain);
  v59 = [v23 log];

  mEMORY[0x1E69DF068] = [MEMORY[0x1E69DF068] sharedManager];
  currentPersona = [mEMORY[0x1E69DF068] currentPersona];

  v78 = 0;
  userPersonaUniqueString = [currentPersona userPersonaUniqueString];
  v25 = objc_loadWeakRetained(&self->_domain);
  nsDomain = [v25 nsDomain];
  personaIdentifier = [nsDomain personaIdentifier];
  v28 = personaIdentifier;
  if (userPersonaUniqueString == personaIdentifier)
  {

    v40 = 0;
LABEL_17:

    goto LABEL_18;
  }

  v29 = objc_loadWeakRetained(&self->_domain);
  nsDomain2 = [v29 nsDomain];
  personaIdentifier2 = [nsDomain2 personaIdentifier];
  v32 = [userPersonaUniqueString isEqualToString:personaIdentifier2];

  if ((v32 & 1) == 0 && voucher_process_can_use_arbitrary_personas())
  {
    v77 = 0;
    v33 = [currentPersona copyCurrentPersonaContextWithError:&v77];
    v34 = v77;
    v35 = v78;
    v78 = v33;

    if (v34)
    {
      v36 = fp_current_or_default_log();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        [FPDDomainExtensionBackend startProvidingItemAtURL:readerID:readingOptions:request:completionHandler:];
      }
    }

    v37 = objc_loadWeakRetained(&self->_domain);
    nsDomain3 = [v37 nsDomain];
    personaIdentifier3 = [nsDomain3 personaIdentifier];
    v40 = [currentPersona generateAndRestorePersonaContextWithPersonaUniqueString:personaIdentifier3];

    if (!v40)
    {
      goto LABEL_18;
    }

    v25 = fp_current_or_default_log();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v41 = objc_loadWeakRetained(&self->_domain);
      nsDomain4 = [v41 nsDomain];
      personaIdentifier4 = [nsDomain4 personaIdentifier];
      *buf = 138412546;
      v80 = personaIdentifier4;
      v81 = 2112;
      v82 = v40;
      _os_log_error_impl(&dword_1CEFC7000, v25, OS_LOG_TYPE_ERROR, "[ERROR] Can't adopt persona %@: %@", buf, 0x16u);
    }

    goto LABEL_17;
  }

  v40 = 0;
LABEL_18:
  dispatch_assert_queue_V2(serialQueue);
  if (options >> 29)
  {
    handlerCopy[2](handlerCopy, 0);
    v21 = 0;
  }

  else
  {
    v21 = [MEMORY[0x1E696AE38] discreteProgressWithTotalUnitCount:1];
    v44 = [MEMORY[0x1E696B098] valueWithPointer:v21];
    dictionary = [(NSMutableDictionary *)self->_provideFileCompletionsByURL objectForKeyedSubscript:lCopy];
    v46 = [dictionary count];
    if (!dictionary)
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      [(NSMutableDictionary *)self->_provideFileCompletionsByURL setObject:dictionary forKeyedSubscript:lCopy];
    }

    v47 = _Block_copy(handlerCopy);
    [dictionary setObject:v47 forKeyedSubscript:v44];

    [v21 setCancellable:1];
    objc_initWeak(buf, self);
    v70[0] = MEMORY[0x1E69E9820];
    v70[1] = 3221225472;
    v70[2] = __103__FPDDomainExtensionBackend_startProvidingItemAtURL_readerID_readingOptions_request_completionHandler___block_invoke;
    v70[3] = &unk_1E83BE5D0;
    objc_copyWeak(&v76, buf);
    v58 = handlerCopy;
    v48 = serialQueue;
    v49 = serialQueue;
    v71 = v49;
    v50 = v59;
    v72 = v50;
    v51 = lCopy;
    v73 = v51;
    v57 = v44;
    v74 = v57;
    v52 = requestCopy;
    v75 = v52;
    [v21 setCancellationHandler:v70];
    if (v46)
    {
      v53 = fp_current_or_default_log();
      serialQueue = v48;
      handlerCopy = v58;
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
      {
        [FPDDomainExtensionBackend startProvidingItemAtURL:readerID:readingOptions:request:completionHandler:];
      }

      v54 = v21;
    }

    else
    {
      v66 = v52;
      v67 = v51;
      v68 = v49;
      v69 = v50;
      fp_dispatch_async_with_logs();
      v55 = v21;

      serialQueue = v48;
      handlerCopy = v58;
    }

    objc_destroyWeak(&v76);
    objc_destroyWeak(buf);
  }

  _FPRestorePersona();
LABEL_29:

  return v21;
}

void __103__FPDDomainExtensionBackend_startProvidingItemAtURL_readerID_readingOptions_request_completionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __103__FPDDomainExtensionBackend_startProvidingItemAtURL_readerID_readingOptions_request_completionHandler___block_invoke_2;
  block[3] = &unk_1E83BE5A8;
  v3 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = WeakRetained;
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = *(a1 + 64);
  v4 = WeakRetained;
  dispatch_async(v3, block);
}

void __103__FPDDomainExtensionBackend_startProvidingItemAtURL_readerID_readingOptions_request_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = fpfs_adopt_log();
  [*(a1 + 40) _cancelProvidingItemAtURL:*(a1 + 48) withKey:*(a1 + 56) request:*(a1 + 64)];
  __fp_pop_log();
}

void __103__FPDDomainExtensionBackend_startProvidingItemAtURL_readerID_readingOptions_request_completionHandler___block_invoke_257(uint64_t a1, uint64_t a2)
{
  v3 = fp_current_or_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __103__FPDDomainExtensionBackend_startProvidingItemAtURL_readerID_readingOptions_request_completionHandler___block_invoke_257_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  v11 = [*(a1 + 32) newFileProviderProxyWithTimeoutValue:*(a1 + 40) request:-1.0];
  v12 = *(a1 + 72);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __103__FPDDomainExtensionBackend_startProvidingItemAtURL_readerID_readingOptions_request_completionHandler___block_invoke_258;
  v16[3] = &unk_1E83BE620;
  v13 = *(a1 + 48);
  v17 = *(a1 + 56);
  v18 = *(a1 + 64);
  v14 = *(a1 + 48);
  v15 = *(a1 + 32);
  v19 = v14;
  v20 = v15;
  v21 = *(a1 + 80);
  [v11 startProvidingItemAtURL:v13 readingOptions:v12 completionHandler:v16];
}

void __103__FPDDomainExtensionBackend_startProvidingItemAtURL_readerID_readingOptions_request_completionHandler___block_invoke_258(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __103__FPDDomainExtensionBackend_startProvidingItemAtURL_readerID_readingOptions_request_completionHandler___block_invoke_2_259;
  block[3] = &unk_1E83BE5F8;
  v4 = *(a1 + 32);
  v10 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v11 = v5;
  v12 = v6;
  v13 = v3;
  v14 = v7;
  v8 = v3;
  dispatch_async(v4, block);
}

void __103__FPDDomainExtensionBackend_startProvidingItemAtURL_readerID_readingOptions_request_completionHandler___block_invoke_2_259(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v24 = fpfs_adopt_log();
  section = __fp_create_section();
  v2 = fp_current_or_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = [*(a1 + 40) fp_shortDescription];
    __103__FPDDomainExtensionBackend_startProvidingItemAtURL_readerID_readingOptions_request_completionHandler___block_invoke_2_259_cold_1(v3, v28, section, v2);
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 48) + 8));
  v5 = WeakRetained == 0;

  if (v5)
  {
    v10 = fp_current_or_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      __103__FPDDomainExtensionBackend_startProvidingItemAtURL_readerID_readingOptions_request_completionHandler___block_invoke_2_259_cold_4();
    }

    if ([*(*(a1 + 48) + 32) count])
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[ASSERT] ‼️ Should not have any open requests"];
      v12 = fp_current_or_default_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        __103__FPDDomainExtensionBackend_startProvidingItemAtURL_readerID_readingOptions_request_completionHandler___block_invoke_2_259_cold_5();
      }

      v13 = v11;
      __assert_rtn("-[FPDDomainExtensionBackend startProvidingItemAtURL:readerID:readingOptions:request:completionHandler:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fileproviderd/FPDDomainExtensionBackend.m", 433, [v11 UTF8String]);
    }
  }

  else
  {
    v6 = [*(*(a1 + 48) + 32) objectForKeyedSubscript:*(a1 + 40)];
    if (v6)
    {
      [*(*(a1 + 48) + 32) setObject:0 forKeyedSubscript:*(a1 + 40)];
      if (*(a1 + 56))
      {
        v7 = fp_current_or_default_log();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v8 = [*(a1 + 40) fp_shortDescription];
          v9 = [*(a1 + 56) fp_prettyDescription];
          __103__FPDDomainExtensionBackend_startProvidingItemAtURL_readerID_readingOptions_request_completionHandler___block_invoke_2_259_cold_2(v8, v9, buf, v7);
        }
      }

      else
      {
        v7 = fp_current_or_default_log();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          v15 = [*(a1 + 40) fp_shortDescription];
          *buf = 138412290;
          v27 = v15;
          _os_log_impl(&dword_1CEFC7000, v7, OS_LOG_TYPE_INFO, "[INFO] ✅ item %@ provided", buf, 0xCu);
        }
      }

      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v14 = [v6 objectEnumerator];
      v16 = [v14 countByEnumeratingWithState:&v19 objects:v25 count:16];
      if (v16)
      {
        v17 = *v20;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v20 != v17)
            {
              objc_enumerationMutation(v14);
            }

            (*(*(*(&v19 + 1) + 8 * i) + 16))();
          }

          v16 = [v14 countByEnumeratingWithState:&v19 objects:v25 count:16];
        }

        while (v16);
      }
    }

    else
    {
      v14 = fp_current_or_default_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        __103__FPDDomainExtensionBackend_startProvidingItemAtURL_readerID_readingOptions_request_completionHandler___block_invoke_2_259_cold_3();
      }
    }
  }

  __fp_leave_section_Debug();
  __fp_pop_log();
}

- (void)createItemBasedOnTemplate:(id)template fields:(unint64_t)fields urlWrapper:(id)wrapper options:(unint64_t)options bounceOnCollision:(BOOL)collision request:(id)request completionHandler:(id)handler
{
  templateCopy = template;
  wrapperCopy = wrapper;
  requestCopy = request;
  v18 = templateCopy;
  handlerCopy = handler;
  v13 = handlerCopy;
  v14 = wrapperCopy;
  v15 = templateCopy;
  v16 = requestCopy;
  fp_dispatch_async_with_logs();
}

void __125__FPDDomainExtensionBackend_createItemBasedOnTemplate_fields_urlWrapper_options_bounceOnCollision_request_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = fp_current_or_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __125__FPDDomainExtensionBackend_createItemBasedOnTemplate_fields_urlWrapper_options_bounceOnCollision_request_completionHandler___block_invoke_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  v11 = [*(a1 + 32) newFileProviderProxyWithTimeoutValue:*(a1 + 40) request:-1.0];
  v12 = *(a1 + 48);
  v13 = *(a1 + 56);
  v14 = *(a1 + 72);
  v15 = *(a1 + 80);
  v16 = [*(a1 + 32) nsfpRequest:*(a1 + 40)];
  v17 = *(a1 + 88);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __125__FPDDomainExtensionBackend_createItemBasedOnTemplate_fields_urlWrapper_options_bounceOnCollision_request_completionHandler___block_invoke_264;
  v19[3] = &unk_1E83BE670;
  v20 = *(a1 + 48);
  v21 = *(a1 + 64);
  v18 = [v11 createItemBasedOnTemplate:v12 fields:v14 contents:v13 options:v15 request:v16 bounce:v17 completionHandler:v19];
}

void __125__FPDDomainExtensionBackend_createItemBasedOnTemplate_fields_urlWrapper_options_bounceOnCollision_request_completionHandler___block_invoke_264(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v8 = a2;
  v9 = a6;
  v10 = fp_current_or_default_log();
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __125__FPDDomainExtensionBackend_createItemBasedOnTemplate_fields_urlWrapper_options_bounceOnCollision_request_completionHandler___block_invoke_264_cold_1();
    }

    v12 = *(a1 + 40);
    v13 = FPPluginOperationFailedError();
    (*(v12 + 16))(v12, 0, v13);
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      __125__FPDDomainExtensionBackend_createItemBasedOnTemplate_fields_urlWrapper_options_bounceOnCollision_request_completionHandler___block_invoke_264_cold_2();
    }

    (*(*(a1 + 40) + 16))();
  }
}

- (id)evictItemAtURL:(id)l evictionReason:(unsigned int)reason request:(id)request completionHandler:(id)handler
{
  lCopy = l;
  requestCopy = request;
  v14 = lCopy;
  handlerCopy = handler;
  v9 = handlerCopy;
  v10 = lCopy;
  v11 = requestCopy;
  fp_dispatch_async_with_logs();

  return 0;
}

void __85__FPDDomainExtensionBackend_evictItemAtURL_evictionReason_request_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = fp_current_or_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __85__FPDDomainExtensionBackend_evictItemAtURL_evictionReason_request_completionHandler___block_invoke_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  v11 = [*(a1 + 32) newFileProviderProxyWithTimeoutValue:*(a1 + 40) request:-1.0];
  v12 = *(a1 + 48);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __85__FPDDomainExtensionBackend_evictItemAtURL_evictionReason_request_completionHandler___block_invoke_266;
  v13[3] = &unk_1E83BE6C0;
  v14 = v12;
  v15 = *(a1 + 56);
  [v11 evictItemAtURL:v14 completionHandler:v13];
}

void __85__FPDDomainExtensionBackend_evictItemAtURL_evictionReason_request_completionHandler___block_invoke_266(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = fp_current_or_default_log();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __85__FPDDomainExtensionBackend_evictItemAtURL_evictionReason_request_completionHandler___block_invoke_266_cold_1();
    }

    v9 = *(a1 + 40);
    v10 = FPPluginOperationFailedError();
    (*(v9 + 16))(v9, 0, v10);
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __85__FPDDomainExtensionBackend_evictItemAtURL_evictionReason_request_completionHandler___block_invoke_266_cold_2(a1);
    }

    (*(*(a1 + 40) + 16))();
  }
}

- (void)evictItemWithID:(id)d evictionReason:(unsigned int)reason request:(id)request completionHandler:(id)handler
{
  dCopy = d;
  requestCopy = request;
  handlerCopy = handler;
  v9 = handlerCopy;
  v10 = requestCopy;
  v11 = dCopy;
  fp_dispatch_async_with_logs();
}

void __86__FPDDomainExtensionBackend_evictItemWithID_evictionReason_request_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = fp_current_or_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __86__FPDDomainExtensionBackend_evictItemWithID_evictionReason_request_completionHandler___block_invoke_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __86__FPDDomainExtensionBackend_evictItemWithID_evictionReason_request_completionHandler___block_invoke_267;
  v16[3] = &unk_1E83BE710;
  v13 = *(a1 + 48);
  v14 = *(a1 + 56);
  v15 = *(a1 + 32);
  v18 = v14;
  v16[4] = v15;
  v19 = *(a1 + 64);
  v17 = *(a1 + 48);
  [v11 URLForItemID:v12 creatingPlaceholderIfMissing:0 ignoreAlternateContentsURL:1 forBookmarkResolution:0 request:v13 completionHandler:v16];
}

void __86__FPDDomainExtensionBackend_evictItemWithID_evictionReason_request_completionHandler___block_invoke_267(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2 || !a3)
  {
    v9 = *(*(a1 + 48) + 16);

    v9();
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = [a3 url];
    v6 = *(a1 + 56);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __86__FPDDomainExtensionBackend_evictItemWithID_evictionReason_request_completionHandler___block_invoke_2;
    v10[3] = &unk_1E83BE6E8;
    v7 = *(a1 + 40);
    v11 = *(a1 + 48);
    v8 = [v4 evictItemAtURL:v5 evictionReason:v6 request:v7 completionHandler:v10];
  }
}

- (void)materializeItemWithID:(id)d requestedRange:(_NSRange)range request:(id)request completionHandler:(id)handler
{
  handlerCopy = handler;
  v8 = FPNotSupportedError();
  (*(handler + 2))(handlerCopy, v8);
}

- (void)itemChangedAtURL:(id)l request:(id)request
{
  lCopy = l;
  requestCopy = request;
  v6 = lCopy;
  v7 = requestCopy;
  fp_dispatch_async_with_logs();
}

void __54__FPDDomainExtensionBackend_itemChangedAtURL_request___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = fp_current_or_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __54__FPDDomainExtensionBackend_itemChangedAtURL_request___block_invoke_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  v11 = [*(a1 + 32) newFileProviderProxyWithRequest:*(a1 + 40)];
  v12 = *(a1 + 48);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __54__FPDDomainExtensionBackend_itemChangedAtURL_request___block_invoke_269;
  v13[3] = &unk_1E83BE760;
  v13[4] = *(a1 + 32);
  v14 = v12;
  [v11 itemChangedAtURL:v14 completionHandler:v13];
}

void __54__FPDDomainExtensionBackend_itemChangedAtURL_request___block_invoke_269(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = fp_current_or_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __54__FPDDomainExtensionBackend_itemChangedAtURL_request___block_invoke_269_cold_1();
    }
  }
}

- (void)URLForItemID:(id)d creatingPlaceholderIfMissing:(BOOL)missing ignoreAlternateContentsURL:(BOOL)l forBookmarkResolution:(BOOL)resolution request:(id)request completionHandler:(id)handler
{
  dCopy = d;
  requestCopy = request;
  handlerCopy = handler;
  v11 = handlerCopy;
  v12 = dCopy;
  v13 = requestCopy;
  fp_dispatch_async_with_logs();
}

void __146__FPDDomainExtensionBackend_URLForItemID_creatingPlaceholderIfMissing_ignoreAlternateContentsURL_forBookmarkResolution_request_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = fp_current_or_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __146__FPDDomainExtensionBackend_URLForItemID_creatingPlaceholderIfMissing_ignoreAlternateContentsURL_forBookmarkResolution_request_completionHandler___block_invoke_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  v11 = [*(a1 + 32) newFileProviderProxyWithRequest:*(a1 + 40)];
  v12 = *(a1 + 48);
  v13 = *(a1 + 64);
  v14 = *(a1 + 65);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __146__FPDDomainExtensionBackend_URLForItemID_creatingPlaceholderIfMissing_ignoreAlternateContentsURL_forBookmarkResolution_request_completionHandler___block_invoke_270;
  v17[3] = &unk_1E83BE788;
  v15 = v12;
  v16 = *(a1 + 32);
  v18 = v15;
  v19 = v16;
  v20 = *(a1 + 56);
  [v11 URLForItemID:v15 creatingPlaceholderIfMissing:v13 ignoreAlternateContentsURL:v14 completionHandler:v17];
}

void __146__FPDDomainExtensionBackend_URLForItemID_creatingPlaceholderIfMissing_ignoreAlternateContentsURL_forBookmarkResolution_request_completionHandler___block_invoke_270(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = fp_current_or_default_log();
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __146__FPDDomainExtensionBackend_URLForItemID_creatingPlaceholderIfMissing_ignoreAlternateContentsURL_forBookmarkResolution_request_completionHandler___block_invoke_270_cold_1();
    }

    v12 = *(a1 + 48);
    v13 = FPPluginOperationFailedError();
    (*(v12 + 16))(v12, v13, 0, 0);
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      __146__FPDDomainExtensionBackend_URLForItemID_creatingPlaceholderIfMissing_ignoreAlternateContentsURL_forBookmarkResolution_request_completionHandler___block_invoke_270_cold_2(v7, a1);
    }

    (*(*(a1 + 48) + 16))();
  }
}

- (void)itemForItemID:(id)d creatingPlaceholderIfMissing:(BOOL)missing ignoreAlternateContentsURL:(BOOL)l request:(id)request completionHandler:(id)handler
{
  dCopy = d;
  requestCopy = request;
  v14 = dCopy;
  handlerCopy = handler;
  v10 = handlerCopy;
  v11 = dCopy;
  v12 = requestCopy;
  fp_dispatch_async_with_logs();
}

void __125__FPDDomainExtensionBackend_itemForItemID_creatingPlaceholderIfMissing_ignoreAlternateContentsURL_request_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = fp_current_or_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __125__FPDDomainExtensionBackend_itemForItemID_creatingPlaceholderIfMissing_ignoreAlternateContentsURL_request_completionHandler___block_invoke_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  v11 = [*(a1 + 32) newFileProviderProxyWithRequest:*(a1 + 40)];
  v12 = *(a1 + 48);
  v13 = [*(a1 + 32) nsfpRequest:*(a1 + 40)];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __125__FPDDomainExtensionBackend_itemForItemID_creatingPlaceholderIfMissing_ignoreAlternateContentsURL_request_completionHandler___block_invoke_272;
  v16[3] = &unk_1E83BE7D8;
  v14 = *(a1 + 48);
  v15 = *(a1 + 32);
  v17 = v14;
  v18 = v15;
  v19 = *(a1 + 56);
  [v11 itemForItemID:v12 request:v13 completionHandler:v16];
}

void __125__FPDDomainExtensionBackend_itemForItemID_creatingPlaceholderIfMissing_ignoreAlternateContentsURL_request_completionHandler___block_invoke_272(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = a2;
  v8 = fp_current_or_default_log();
  v9 = v8;
  if (v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __125__FPDDomainExtensionBackend_itemForItemID_creatingPlaceholderIfMissing_ignoreAlternateContentsURL_request_completionHandler___block_invoke_272_cold_1();
    }

    v10 = *(a1 + 48);
    v11 = FPPluginOperationFailedError();
    (*(v10 + 16))(v10, v7, v11);

    v7 = v11;
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __125__FPDDomainExtensionBackend_itemForItemID_creatingPlaceholderIfMissing_ignoreAlternateContentsURL_request_completionHandler___block_invoke_272_cold_2();
    }

    (*(*(a1 + 48) + 16))();
  }
}

- (void)dumpStateTo:(id)to options:(unint64_t)options request:(id)request completionHandler:(id)handler
{
  optionsCopy = options;
  toCopy = to;
  requestCopy = request;
  handlerCopy = handler;
  if ((optionsCopy & 1) != 0 || (v13 = objc_loadWeakRetained(&self->_domain), [v13 provider], v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "identifier"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "hasPrefix:", @"com.apple."), v15, v14, v13, (v16 & 1) == 0))
  {
    handlerCopy[2](handlerCopy, 0);
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_domain);
    provider = [WeakRetained provider];
    identifier = [provider identifier];
    [identifier isEqualToString:@"com.apple.FileProvider.LocalStorage"];

    v20 = requestCopy;
    v21 = toCopy;
    v22 = handlerCopy;
    fp_dispatch_async_with_logs();
  }
}

void __75__FPDDomainExtensionBackend_dumpStateTo_options_request_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 64);
  v3 = *(a1 + 32);
  if (v2 != 1)
  {
    WeakRetained = objc_loadWeakRetained(v3 + 1);
    v9 = [WeakRetained session];
    v4 = [v9 existingFileProviderProxyWithTimeout:0 onlyAlreadyLifetimeExtended:0 pid:10.0];

    if (v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = *(a1 + 56);
    v11 = FPDomainUnavailableError();
    (*(v10 + 16))(v10, v11);

    goto LABEL_6;
  }

  v4 = [v3 newFileProviderProxyWithTimeoutValue:*(a1 + 40) request:10.0];
  if (!v4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = *(a1 + 48);
  v6 = objc_loadWeakRetained((*(a1 + 32) + 8));
  v7 = [v6 identifier];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __75__FPDDomainExtensionBackend_dumpStateTo_options_request_completionHandler___block_invoke_2;
  v12[3] = &unk_1E83BE1A8;
  v13 = *(a1 + 48);
  v14 = *(a1 + 56);
  [v4 dumpInternalStateToTermDumper:v5 domainIdentifier:v7 completionHandler:v12];

LABEL_6:
}

void __75__FPDDomainExtensionBackend_dumpStateTo_options_request_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v8 = v3;
    v4 = [v3 fp_isCocoaErrorCode:3072];
    v5 = *(a1 + 32);
    if (v4)
    {
      [*(a1 + 32) write:@"  not dumping extension: not running\n"];
      v6 = v8;
      v8 = 0;
    }

    else
    {
      v6 = [v8 description];
      [v5 write:{@"  can't dump the extension: %@\n", v6}];
    }

    v7 = v8;
  }

  else
  {
    v7 = 0;
  }

  v9 = v7;
  (*(*(a1 + 40) + 16))();
}

- (void)fetchFPCKTelemetryWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = FPNotSupportedError();
  (*(handler + 2))(handlerCopy, 0, v5);
}

- (void)copyDatabaseToURL:(id)l completionHandler:(id)handler
{
  handlerCopy = handler;
  v6 = FPNotSupportedError();
  (*(handler + 2))(handlerCopy, v6);
}

- (void)waitForStabilizationForRequest:(id)request mode:(unint64_t)mode completionHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  v6 = handlerCopy;
  v7 = requestCopy;
  fp_dispatch_async_with_logs();
}

void __83__FPDDomainExtensionBackend_waitForStabilizationForRequest_mode_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) newFileProviderProxyWithRequest:*(a1 + 40)];
  [v2 waitForStabilizationWithCompletionHandler:*(a1 + 48)];
}

- (void)enumerateWithSettings:(id)settings lifetimeExtender:(id)extender observer:(id)observer completionHandler:(id)handler
{
  settingsCopy = settings;
  extenderCopy = extender;
  observerCopy = observer;
  v16 = settingsCopy;
  handlerCopy = handler;
  v17 = extenderCopy;
  v18 = observerCopy;
  v12 = observerCopy;
  v13 = extenderCopy;
  v14 = handlerCopy;
  v15 = settingsCopy;
  fp_dispatch_async_with_logs();
}

void __95__FPDDomainExtensionBackend_enumerateWithSettings_lifetimeExtender_observer_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = fp_current_or_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __95__FPDDomainExtensionBackend_enumerateWithSettings_lifetimeExtender_observer_completionHandler___block_invoke_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  v11 = [*(a1 + 32) enumeratedItemID];

  if (!v11)
  {
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[ASSERT] ‼️ only enumerating items is supported"];
    v21 = fp_current_or_default_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      __103__FPDDomainExtensionBackend_startProvidingItemAtURL_readerID_readingOptions_request_completionHandler___block_invoke_2_259_cold_5();
    }

    __assert_rtn("-[FPDDomainExtensionBackend enumerateWithSettings:lifetimeExtender:observer:completionHandler:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fileproviderd/FPDDomainExtensionBackend.m", 681, [v20 UTF8String]);
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 8));
  v13 = [WeakRetained session];

  if (v13)
  {
    v14 = +[FPDRequest requestForPID:](FPDRequest, "requestForPID:", [*(a1 + 48) requestEffectivePID]);
    v15 = [*(a1 + 40) newFileProviderProxyWithRequest:v14];
    v16 = *(a1 + 56);
    v17 = *(a1 + 32);
    v18 = [*(a1 + 40) nsfpRequest:v14];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __95__FPDDomainExtensionBackend_enumerateWithSettings_lifetimeExtender_observer_completionHandler___block_invoke_2;
    v22[3] = &unk_1E83BE850;
    v23 = *(a1 + 32);
    v26 = *(a1 + 64);
    v24 = *(a1 + 48);
    v25 = v13;
    [v15 fetchAndStartEnumeratingWithSettings:v17 observer:v16 request:v18 completionHandler:v22];
  }

  else
  {
    v19 = *(a1 + 64);
    v14 = FPDomainUnavailableError();
    (*(v19 + 16))(v19, 0, v14);
  }
}

void __95__FPDDomainExtensionBackend_enumerateWithSettings_lifetimeExtender_observer_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v10 = v6;
    if (!v6)
    {
      v10 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:256 userInfo:0];
    }

    v12 = fp_current_or_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __95__FPDDomainExtensionBackend_enumerateWithSettings_lifetimeExtender_observer_completionHandler___block_invoke_2_cold_1(a1, v10);
    }

    v11 = *(*(a1 + 56) + 16);
  }

  else
  {
    v8 = objc_alloc(MEMORY[0x1E69674B0]);
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"enumerator %@", *(a1 + 32)];
    v10 = [v8 initWithConnection:v5 protocol:&unk_1F4C7FA50 orError:0 name:v9 requestPid:0];

    if (*(a1 + 40))
    {
      [*(a1 + 48) registerLifetimeExtensionForObject:?];
    }

    v11 = *(*(a1 + 56) + 16);
  }

  v11();
}

- (void)valuesForAttributes:(id)attributes forURL:(id)l request:(id)request completionHandler:(id)handler
{
  attributesCopy = attributes;
  lCopy = l;
  requestCopy = request;
  handlerCopy = handler;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __82__FPDDomainExtensionBackend_valuesForAttributes_forURL_request_completionHandler___block_invoke;
  v18[3] = &unk_1E83BE8F0;
  v22 = attributesCopy;
  v23 = handlerCopy;
  v19 = lCopy;
  selfCopy = self;
  v21 = requestCopy;
  v14 = attributesCopy;
  v15 = requestCopy;
  v16 = handlerCopy;
  v17 = lCopy;
  [(FPDDomainExtensionBackend *)self itemIDForURL:v17 requireProviderItemID:0 request:v15 completionHandler:v18];
}

void __82__FPDDomainExtensionBackend_valuesForAttributes_forURL_request_completionHandler___block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v8 = a1[6];
    v9 = a1[7];
    v10 = v5;
    v11 = a1[8];
    fp_dispatch_async_with_logs();
  }

  else
  {
    v7 = fp_current_or_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __82__FPDDomainExtensionBackend_valuesForAttributes_forURL_request_completionHandler___block_invoke_cold_1();
    }

    (*(a1[8] + 2))();
  }
}

void __82__FPDDomainExtensionBackend_valuesForAttributes_forURL_request_completionHandler___block_invoke_304(uint64_t a1)
{
  v2 = [*(a1 + 32) newFileProviderProxyWithRequest:*(a1 + 40)];
  v4 = *(a1 + 48);
  v3 = *(a1 + 56);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __82__FPDDomainExtensionBackend_valuesForAttributes_forURL_request_completionHandler___block_invoke_2;
  v7[3] = &unk_1E83BE8A0;
  v5 = v3;
  v6 = *(a1 + 32);
  v8 = v5;
  v9 = v6;
  v10 = *(a1 + 64);
  [v2 valuesForAttributes:v4 forItemID:v5 completionHandler:v7];
}

void __82__FPDDomainExtensionBackend_valuesForAttributes_forURL_request_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = fp_current_or_default_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (v6)
  {
    if (v8)
    {
      __82__FPDDomainExtensionBackend_valuesForAttributes_forURL_request_completionHandler___block_invoke_2_cold_1();
    }
  }

  else if (v8)
  {
    __82__FPDDomainExtensionBackend_valuesForAttributes_forURL_request_completionHandler___block_invoke_2_cold_2(a1);
  }

  (*(*(a1 + 48) + 16))();
}

- (void)stateWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = FPNotSupportedError();
  (*(handler + 2))(handlerCopy, 0, v5);
}

- (void)wakeForPushWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v3 = handlerCopy;
  fp_dispatch_async_with_logs();
}

void __62__FPDDomainExtensionBackend_wakeForPushWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = +[FPDRequest requestForSelf];
  v3 = [v2 newFileProviderProxyWithRequest:v4];
  [v3 wakeForPushWithCompletionHandler:*(a1 + 40)];
}

- (void)fetchOperationServiceOrEndpointWithRequest:(id)request completionHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  v5 = handlerCopy;
  v6 = requestCopy;
  fp_dispatch_async_with_logs();
}

void __90__FPDDomainExtensionBackend_fetchOperationServiceOrEndpointWithRequest_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) newFileProviderProxyWithRequest:*(a1 + 40)];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __90__FPDDomainExtensionBackend_fetchOperationServiceOrEndpointWithRequest_completionHandler___block_invoke_2;
  v3[3] = &unk_1E83BE918;
  v4 = *(a1 + 48);
  [v2 fetchOperationServiceEndpoint:v3];
}

- (void)forceUpdateBlockedProcessNamesFromDomain:(id)domain completionHandler:(id)handler
{
  handlerCopy = handler;
  v6 = FPNotSupportedError();
  (*(handler + 2))(handlerCopy, v6);
}

- (void)fetchServicesForItemID:(id)d allowRestrictedSources:(BOOL)sources request:(id)request completionHandler:(id)handler
{
  dCopy = d;
  requestCopy = request;
  handlerCopy = handler;
  v9 = handlerCopy;
  v10 = dCopy;
  v11 = requestCopy;
  fp_dispatch_async_with_logs();
}

void __101__FPDDomainExtensionBackend_fetchServicesForItemID_allowRestrictedSources_request_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) newFileProviderProxyWithRequest:*(a1 + 40)];
  [v2 fetchServicesForItemID:*(a1 + 48) allowRestrictedSources:*(a1 + 64) completionHandler:*(a1 + 56)];
}

- (void)fetchVendorEndpointWithRequest:(id)request completionHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  v5 = handlerCopy;
  v6 = requestCopy;
  fp_dispatch_async_with_logs();
}

void __78__FPDDomainExtensionBackend_fetchVendorEndpointWithRequest_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) newFileProviderProxyWithRequest:*(a1 + 40)];
  [v2 fetchVendorEndpoint:*(a1 + 48)];
}

- (void)reimportItemsBelowItemWithID:(id)d markItemDataless:(BOOL)dataless completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = FPNotSupportedError();
  (*(handler + 2))(handlerCopy, v7);
}

- (id)createIndexerWithExtension:(id)extension enabled:(BOOL)enabled error:(id *)error
{
  enabledCopy = enabled;
  extensionCopy = extension;
  v8 = [FPDExtensionIndexer alloc];
  WeakRetained = objc_loadWeakRetained(&self->_domain);
  v10 = [(FPDDomainIndexer *)v8 initWithExtension:extensionCopy domain:WeakRetained enabled:enabledCopy supportingIndexAll:0];

  return v10;
}

- (void)bulkItemChanges:(id)changes changedFields:(unint64_t)fields request:(id)request completionHandler:(id)handler
{
  changesCopy = changes;
  requestCopy = request;
  handlerCopy = handler;
  v9 = handlerCopy;
  v10 = changesCopy;
  v11 = requestCopy;
  fp_dispatch_async_with_logs();
}

void __85__FPDDomainExtensionBackend_bulkItemChanges_changedFields_request_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) newFileProviderProxyWithRequest:*(a1 + 40)];
  v3 = *(a1 + 64);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __85__FPDDomainExtensionBackend_bulkItemChanges_changedFields_request_completionHandler___block_invoke_2;
  v5[3] = &unk_1E83BE940;
  v7 = v3;
  v4 = *(a1 + 48);
  v6 = *(a1 + 56);
  [v2 bulkItemChanges:v4 changedFields:v3 completionHandler:v5];
}

void __85__FPDDomainExtensionBackend_bulkItemChanges_changedFields_request_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = fp_current_or_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_6;
    }

    goto LABEL_7;
  }

  if ([v8 count])
  {
    v10 = fp_current_or_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
LABEL_6:
      __85__FPDDomainExtensionBackend_bulkItemChanges_changedFields_request_completionHandler___block_invoke_2_cold_1(a1);
    }

LABEL_7:
  }

  (*(*(a1 + 32) + 16))();
}

- (void)trashItemAtURL:(id)l request:(id)request completionHandler:(id)handler
{
  lCopy = l;
  requestCopy = request;
  v12 = lCopy;
  handlerCopy = handler;
  v8 = handlerCopy;
  v9 = lCopy;
  v10 = requestCopy;
  fp_dispatch_async_with_logs();
}

void __70__FPDDomainExtensionBackend_trashItemAtURL_request_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) newFileProviderProxyWithRequest:*(a1 + 40)];
  [v2 trashItemAtURL:*(a1 + 48) completionHandler:*(a1 + 56)];
}

- (void)movingItemAtURL:(id)l withInfo:(id)info completionHandler:(id)handler
{
  lCopy = l;
  infoCopy = info;
  handlerCopy = handler;
  v7 = handlerCopy;
  v8 = infoCopy;
  v9 = lCopy;
  fp_dispatch_async_with_logs();
}

void __72__FPDDomainExtensionBackend_movingItemAtURL_withInfo_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) newFileProviderProxyWithRequest:0];
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) destinationDirectoryURL];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __72__FPDDomainExtensionBackend_movingItemAtURL_withInfo_completionHandler___block_invoke_2;
  v5[3] = &unk_1E83BE968;
  v6 = *(a1 + 56);
  [v2 movingItemAtURL:v3 requiresProvidingWithDestinationURL:v4 completionHandler:v5];
}

void __72__FPDDomainExtensionBackend_movingItemAtURL_withInfo_completionHandler___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v9 = v5;
  if (v5)
  {
    if ([v5 fp_isFeatureUnsupportedError] && (a2 & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  else if (!a2)
  {
LABEL_4:
    v6 = *(a1 + 32);
    v7 = [MEMORY[0x1E696AC10] providingNotRequiredResponseWithSyncRootID:0];
    goto LABEL_7;
  }

  v6 = *(a1 + 32);
  v7 = [MEMORY[0x1E696AC10] providingRequiredResponse];
LABEL_7:
  v8 = v7;
  (*(v6 + 16))(v6, v7);
}

- (void)workingSetDidChangeWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_domain);
  indexer = [WeakRetained indexer];

  if (indexer)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __70__FPDDomainExtensionBackend_workingSetDidChangeWithCompletionHandler___block_invoke;
    v7[3] = &unk_1E83BE990;
    v8 = handlerCopy;
    [indexer signalChangesWithCompletionHandler:v7];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

- (void)getKnownFolderLocations:(unint64_t)locations request:(id)request completionHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  v7 = handlerCopy;
  v8 = requestCopy;
  fp_dispatch_async_with_logs();
}

void __79__FPDDomainExtensionBackend_getKnownFolderLocations_request_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) newFileProviderProxyWithRequest:*(a1 + 40)];
  [v2 getKnownFolderLocations:*(a1 + 56) completionHandler:*(a1 + 48)];
}

- (void)resolveConflictAtURL:(id)l request:(id)request completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = FPNotSupportedError();
  (*(handler + 2))(handlerCopy, v7);
}

- (void)listRemoteVersionsOfItemAtURL:(id)l includeCachedVersions:(BOOL)versions request:(id)request completionHandler:(id)handler
{
  handlerCopy = handler;
  v8 = FPNotSupportedError();
  (*(handler + 2))(handlerCopy, 0, MEMORY[0x1E695E0F0], v8);
}

- (void)fetchThumbnailsAtURL:(id)l versions:(id)versions size:(CGSize)size perThumbnailCompletionHandler:(id)handler completionHandler:(id)completionHandler
{
  completionHandlerCopy = completionHandler;
  v9 = FPNotSupportedError();
  (*(completionHandler + 2))(completionHandlerCopy, v9);
}

- (void)hasNonUploadedFilesWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = FPNotSupportedError();
  (*(handler + 2))(handlerCopy, 0, v5);
}

- (void)hierarchyForURL:(id)l request:(id)request completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = FPNotSupportedError();
  (*(handler + 2))(handlerCopy, MEMORY[0x1E695E0F0], v7);
}

- (void)setAlternateContentsURLWrapper:(id)wrapper forDocumentWithURL:(id)l request:(id)request completionHandler:(id)handler
{
  wrapperCopy = wrapper;
  lCopy = l;
  requestCopy = request;
  v16 = wrapperCopy;
  v17 = lCopy;
  handlerCopy = handler;
  v11 = handlerCopy;
  v12 = lCopy;
  v13 = wrapperCopy;
  v14 = requestCopy;
  fp_dispatch_async_with_logs();
}

void __105__FPDDomainExtensionBackend_setAlternateContentsURLWrapper_forDocumentWithURL_request_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) newFileProviderProxyWithRequest:*(a1 + 40)];
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __105__FPDDomainExtensionBackend_setAlternateContentsURLWrapper_forDocumentWithURL_request_completionHandler___block_invoke_2;
  v5[3] = &unk_1E83BE6E8;
  v6 = *(a1 + 64);
  [v2 setAlternateContentsURL:v3 forDocumentWithURL:v4 completionHandler:v5];
}

- (void)fetchAlternateContentsURLWrapperForDocumentWithURL:(id)l request:(id)request completionHandler:(id)handler
{
  lCopy = l;
  requestCopy = request;
  v12 = lCopy;
  handlerCopy = handler;
  v8 = handlerCopy;
  v9 = lCopy;
  v10 = requestCopy;
  fp_dispatch_async_with_logs();
}

void __106__FPDDomainExtensionBackend_fetchAlternateContentsURLWrapperForDocumentWithURL_request_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) newFileProviderProxyWithRequest:*(a1 + 40)];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __106__FPDDomainExtensionBackend_fetchAlternateContentsURLWrapperForDocumentWithURL_request_completionHandler___block_invoke_2;
  v4[3] = &unk_1E83BE9E0;
  v3 = *(a1 + 48);
  v5 = *(a1 + 56);
  [v2 fetchAlternateContentsURLWrapperForURL:v3 completionHandler:v4];
}

- (void)didUpdateAlternateContentsDocumentForDocumentWithURL:(id)l request:(id)request completionHandler:(id)handler
{
  lCopy = l;
  requestCopy = request;
  v12 = lCopy;
  handlerCopy = handler;
  v8 = handlerCopy;
  v9 = lCopy;
  v10 = requestCopy;
  fp_dispatch_async_with_logs();
}

void __108__FPDDomainExtensionBackend_didUpdateAlternateContentsDocumentForDocumentWithURL_request_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) newFileProviderProxyWithRequest:*(a1 + 40)];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __108__FPDDomainExtensionBackend_didUpdateAlternateContentsDocumentForDocumentWithURL_request_completionHandler___block_invoke_2;
  v4[3] = &unk_1E83BE040;
  v3 = *(a1 + 48);
  v5 = *(a1 + 56);
  [v2 didUpdateAlternateContentsDocumentForDocumentWithURL:v3 completionHandler:v4];
}

- (void)reindexAllItemsWithDropReason:(unint64_t)reason completionHandler:(id)handler
{
  handlerCopy = handler;
  v4 = handlerCopy;
  fp_dispatch_async_with_logs();
}

void __77__FPDDomainExtensionBackend_reindexAllItemsWithDropReason_completionHandler___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 8));
  v3 = [WeakRetained indexer];

  if (v3)
  {
    v6 = objc_loadWeakRetained((a1[4] + 8));
    v4 = [v6 indexer];
    [v4 signalNeedsReindexFromScratchWithDropReason:a1[6] completionHandler:a1[5]];
  }

  else
  {
    v5 = a1[5];
    v6 = FPNotSupportedError();
    (*(v5 + 16))(v5);
  }
}

- (void)reindexItemsWithIndexReason:(int64_t)reason identifiers:(id)identifiers completionHandler:(id)handler
{
  identifiersCopy = identifiers;
  handlerCopy = handler;
  v7 = identifiersCopy;
  v8 = handlerCopy;
  fp_dispatch_async_with_logs();
}

void __87__FPDDomainExtensionBackend_reindexItemsWithIndexReason_identifiers_completionHandler___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 8));
  v3 = [WeakRetained indexer];

  if (v3)
  {
    v6 = objc_loadWeakRetained((a1[4] + 8));
    v4 = [v6 indexer];
    [v4 signalNeedsReindexItemsWithIdentifiers:a1[5] indexReason:a1[7] completionHandler:a1[6]];
  }

  else
  {
    v5 = a1[6];
    v6 = FPNotSupportedError();
    (*(v5 + 16))(v5);
  }
}

- (void)triggerFeedbackApprovalRequestForItemURL:(id)l domain:(id)domain uiOnly:(BOOL)only completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = fp_current_or_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [FPDDomainExtensionBackend triggerFeedbackApprovalRequestForItemURL:domain:uiOnly:completionHandler:];
  }

  handlerCopy[2](handlerCopy, 0);
}

- (void)launchFeedbackForDomain:(id)domain itemIdentifier:(id)identifier triggeringError:(id)error when:(id)when useDiagnostic:(BOOL)diagnostic completionHandler:(id)handler
{
  handlerCopy = handler;
  v9 = fp_current_or_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [FPDDomainExtensionBackend launchFeedbackForDomain:itemIdentifier:triggeringError:when:useDiagnostic:completionHandler:];
  }

  v10 = FPNotSupportedError();
  handlerCopy[2](handlerCopy, v10);
}

- (void)getSavedDiagnostics:(id)diagnostics
{
  diagnosticsCopy = diagnostics;
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [FPDDomainExtensionBackend getSavedDiagnostics:];
  }

  v5 = FPNotSupportedError();
  diagnosticsCopy[2](diagnosticsCopy, 0, v5);
}

- (void)clearDiagnosticState:(id)state
{
  stateCopy = state;
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [FPDDomainExtensionBackend clearDiagnosticState:];
  }

  v5 = FPNotSupportedError();
  stateCopy[2](stateCopy, v5);
}

- (void)requestDiagnosticCollectionForItemWithID:(id)d errorReason:(id)reason completionHandler:(id)handler
{
  handlerCopy = handler;
  v6 = fp_current_or_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [FPDDomainExtensionBackend requestDiagnosticCollectionForItemWithID:errorReason:completionHandler:];
  }

  v7 = FPNotSupportedError();
  handlerCopy[2](handlerCopy, v7);
}

- (void)enumerateSearchResultForRequest:(id)request lifetimeExtender:(id)extender completionHandler:(id)handler
{
  requestCopy = request;
  extenderCopy = extender;
  handlerCopy = handler;
  v8 = requestCopy;
  v9 = extenderCopy;
  v10 = handlerCopy;
  fp_dispatch_async_with_logs();
}

void __96__FPDDomainExtensionBackend_enumerateSearchResultForRequest_lifetimeExtender_completionHandler___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1[4] + 1);
  v3 = [WeakRetained session];

  if (v3)
  {
    v4 = +[FPDRequest requestForPID:](FPDRequest, "requestForPID:", [a1[5] requestEffectivePID]);
    v5 = [a1[4] newFileProviderProxyWithRequest:v4];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __96__FPDDomainExtensionBackend_enumerateSearchResultForRequest_lifetimeExtender_completionHandler___block_invoke_2;
    v9[3] = &unk_1E83BEA08;
    v6 = a1[6];
    v13 = a1[7];
    v10 = a1[6];
    v11 = a1[5];
    v12 = v3;
    [v5 enumerateSearchResultForRequest:v6 completionHandler:v9];
  }

  else
  {
    v7 = a1[7];
    v8 = FPDomainUnavailableError();
    v7[2](v7, 0, v8);
  }
}

void __96__FPDDomainExtensionBackend_enumerateSearchResultForRequest_lifetimeExtender_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v8 = v6;
    if (!v6)
    {
      v8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:256 userInfo:0];
    }

    v10 = fp_current_or_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __96__FPDDomainExtensionBackend_enumerateSearchResultForRequest_lifetimeExtender_completionHandler___block_invoke_2_cold_1(v8);
    }

    v9 = *(*(a1 + 56) + 16);
  }

  else
  {
    v8 = -[FPDWrappedSearchEnumeratorProxy initWithTarget:maximumNumberOfResultsPerPage:]([FPDWrappedSearchEnumeratorProxy alloc], "initWithTarget:maximumNumberOfResultsPerPage:", v5, [*(a1 + 32) maximumNumberOfResultsPerPage]);
    if (*(a1 + 40))
    {
      [*(a1 + 48) registerLifetimeExtensionForObject:?];
    }

    v9 = *(*(a1 + 56) + 16);
  }

  v9();
}

void __74__FPDDomainExtensionBackend_itemForURL_options_request_completionHandler___block_invoke_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[FPDDomainExtensionBackend itemForURL:options:request:completionHandler:]_block_invoke";
  OUTLINED_FUNCTION_1_2(&dword_1CEFC7000, a1, a3, "[DEBUG] %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __74__FPDDomainExtensionBackend_itemForURL_options_request_completionHandler___block_invoke_248_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_18();
  a20 = v21;
  a21 = v22;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  a13 = *MEMORY[0x1E69E9840];
  v29 = [*(v27 + 32) fp_shortDescription];
  WeakRetained = objc_loadWeakRetained((*(v28 + 40) + 8));
  v31 = [WeakRetained provider];
  v32 = [v31 identifier];
  v33 = [v26 fp_prettyDescription];
  LODWORD(a9) = 138412802;
  *(&a9 + 4) = v29;
  OUTLINED_FUNCTION_3_1();
  *(&a9 + 14) = v32;
  OUTLINED_FUNCTION_9();
  _os_log_error_impl(&dword_1CEFC7000, v24, OS_LOG_TYPE_ERROR, "[ERROR] can't get item for URL %@ for extension %@; %@", &a9, 0x20u);

  OUTLINED_FUNCTION_17();
}

void __90__FPDDomainExtensionBackend_itemIDForURL_requireProviderItemID_request_completionHandler___block_invoke_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[FPDDomainExtensionBackend itemIDForURL:requireProviderItemID:request:completionHandler:]_block_invoke";
  OUTLINED_FUNCTION_1_2(&dword_1CEFC7000, a1, a3, "[DEBUG] %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __90__FPDDomainExtensionBackend_itemIDForURL_requireProviderItemID_request_completionHandler___block_invoke_251_cold_1()
{
  OUTLINED_FUNCTION_18();
  v1 = v0;
  v3 = v2;
  v4 = [*(v2 + 32) fp_shortDescription];
  WeakRetained = objc_loadWeakRetained((*(v3 + 40) + 8));
  v6 = [WeakRetained provider];
  v7 = [v6 identifier];
  v8 = [v1 fp_prettyDescription];
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_16(&dword_1CEFC7000, v9, v10, "[DEBUG] Cannot get item ID for %@ for extension %@. Error: %@", v11, v12, v13, v14);

  OUTLINED_FUNCTION_17();
}

void __90__FPDDomainExtensionBackend_itemIDForURL_requireProviderItemID_request_completionHandler___block_invoke_251_cold_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_18();
  a20 = v23;
  a21 = v24;
  OUTLINED_FUNCTION_13();
  v26 = v25;
  a13 = *MEMORY[0x1E69E9840];
  v28 = [*(v27 + 32) fp_shortDescription];
  WeakRetained = objc_loadWeakRetained((*(v22 + 40) + 8));
  v30 = [WeakRetained provider];
  v31 = [v30 identifier];
  LODWORD(a9) = 138412802;
  *(&a9 + 4) = v26;
  OUTLINED_FUNCTION_3_1();
  *(&a9 + 14) = v28;
  OUTLINED_FUNCTION_9();
  _os_log_debug_impl(&dword_1CEFC7000, v21, OS_LOG_TYPE_DEBUG, "[DEBUG] Successfully got item ID “%@” for %@ from extension %@", &a9, 0x20u);

  OUTLINED_FUNCTION_17();
}

- (void)_cancelProvidingItemAtURL:(uint64_t)a3 withKey:(uint64_t)a4 request:(uint64_t)a5 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[FPDDomainExtensionBackend _cancelProvidingItemAtURL:withKey:request:]";
  OUTLINED_FUNCTION_1_2(&dword_1CEFC7000, a1, a3, "[DEBUG] %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)_cancelProvidingItemAtURL:withKey:request:.cold.2()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_cancelProvidingItemAtURL:(void *)a1 withKey:request:.cold.3(void *a1)
{
  v1 = [a1 fp_shortDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __71__FPDDomainExtensionBackend__cancelProvidingItemAtURL_withKey_request___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_11();
  v1 = [OUTLINED_FUNCTION_8(v0) fp_shortDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __71__FPDDomainExtensionBackend__cancelProvidingItemAtURL_withKey_request___block_invoke_cold_2(uint64_t a1)
{
  v1 = [OUTLINED_FUNCTION_8(a1) fp_shortDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)startProvidingItemAtURL:(uint64_t)a3 readerID:(uint64_t)a4 readingOptions:(uint64_t)a5 request:(uint64_t)a6 completionHandler:(uint64_t)a7 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[FPDDomainExtensionBackend startProvidingItemAtURL:readerID:readingOptions:request:completionHandler:]";
  OUTLINED_FUNCTION_1_2(&dword_1CEFC7000, a1, a3, "[DEBUG] %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)startProvidingItemAtURL:readerID:readingOptions:request:completionHandler:.cold.2()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(&dword_1CEFC7000, v0, OS_LOG_TYPE_ERROR, "[ERROR] won't restore persona: %@", v1, 0xCu);
}

- (void)startProvidingItemAtURL:readerID:readingOptions:request:completionHandler:.cold.3()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __103__FPDDomainExtensionBackend_startProvidingItemAtURL_readerID_readingOptions_request_completionHandler___block_invoke_257_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[FPDDomainExtensionBackend startProvidingItemAtURL:readerID:readingOptions:request:completionHandler:]_block_invoke";
  OUTLINED_FUNCTION_1_2(&dword_1CEFC7000, a1, a3, "[DEBUG] %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __103__FPDDomainExtensionBackend_startProvidingItemAtURL_readerID_readingOptions_request_completionHandler___block_invoke_2_259_cold_1(void *a1, uint8_t *buf, uint64_t a3, os_log_t log)
{
  *buf = 134218242;
  *(buf + 4) = a3;
  *(buf + 6) = 2112;
  *(buf + 14) = a1;
  _os_log_debug_impl(&dword_1CEFC7000, log, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx completion for start providing %@", buf, 0x16u);
}

void __103__FPDDomainExtensionBackend_startProvidingItemAtURL_readerID_readingOptions_request_completionHandler___block_invoke_2_259_cold_2(void *a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_1CEFC7000, log, OS_LOG_TYPE_ERROR, "[ERROR] ❌ no item provided for %@; %@", buf, 0x16u);
}

void __103__FPDDomainExtensionBackend_startProvidingItemAtURL_readerID_readingOptions_request_completionHandler___block_invoke_2_259_cold_3()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __103__FPDDomainExtensionBackend_startProvidingItemAtURL_readerID_readingOptions_request_completionHandler___block_invoke_2_259_cold_4()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __103__FPDDomainExtensionBackend_startProvidingItemAtURL_readerID_readingOptions_request_completionHandler___block_invoke_2_259_cold_5()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  _os_log_fault_impl(&dword_1CEFC7000, v0, OS_LOG_TYPE_FAULT, "[CRIT] %{public}@", v1, 0xCu);
}

void __125__FPDDomainExtensionBackend_createItemBasedOnTemplate_fields_urlWrapper_options_bounceOnCollision_request_completionHandler___block_invoke_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[FPDDomainExtensionBackend createItemBasedOnTemplate:fields:urlWrapper:options:bounceOnCollision:request:completionHandler:]_block_invoke";
  OUTLINED_FUNCTION_1_2(&dword_1CEFC7000, a1, a3, "[DEBUG] %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __125__FPDDomainExtensionBackend_createItemBasedOnTemplate_fields_urlWrapper_options_bounceOnCollision_request_completionHandler___block_invoke_264_cold_1()
{
  OUTLINED_FUNCTION_11();
  v2 = [OUTLINED_FUNCTION_8(v1) itemID];
  v3 = [v2 identifier];
  v4 = [v0 fp_prettyDescription];
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

void __85__FPDDomainExtensionBackend_evictItemAtURL_evictionReason_request_completionHandler___block_invoke_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[FPDDomainExtensionBackend evictItemAtURL:evictionReason:request:completionHandler:]_block_invoke";
  OUTLINED_FUNCTION_1_2(&dword_1CEFC7000, a1, a3, "[DEBUG] %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __85__FPDDomainExtensionBackend_evictItemAtURL_evictionReason_request_completionHandler___block_invoke_266_cold_1()
{
  OUTLINED_FUNCTION_11();
  v2 = [OUTLINED_FUNCTION_8(v1) fp_shortDescription];
  v3 = [v0 fp_prettyDescription];
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void __85__FPDDomainExtensionBackend_evictItemAtURL_evictionReason_request_completionHandler___block_invoke_266_cold_2(uint64_t a1)
{
  v1 = [OUTLINED_FUNCTION_8(a1) fp_shortDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __86__FPDDomainExtensionBackend_evictItemWithID_evictionReason_request_completionHandler___block_invoke_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[FPDDomainExtensionBackend evictItemWithID:evictionReason:request:completionHandler:]_block_invoke";
  OUTLINED_FUNCTION_1_2(&dword_1CEFC7000, a1, a3, "[DEBUG] %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __54__FPDDomainExtensionBackend_itemChangedAtURL_request___block_invoke_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[FPDDomainExtensionBackend itemChangedAtURL:request:]_block_invoke";
  OUTLINED_FUNCTION_1_2(&dword_1CEFC7000, a1, a3, "[DEBUG] %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __54__FPDDomainExtensionBackend_itemChangedAtURL_request___block_invoke_269_cold_1()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_13();
  v1 = v0;
  WeakRetained = objc_loadWeakRetained((*(v0 + 32) + 8));
  v3 = [WeakRetained provider];
  v4 = [v3 identifier];
  v5 = [*(v1 + 40) fp_shortDescription];
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_10(&dword_1CEFC7000, v6, v7, "[ERROR] Could not tell extension %@ that item at %@ has changed. Error: %@", v8, v9, v10, v11);

  OUTLINED_FUNCTION_17();
}

void __146__FPDDomainExtensionBackend_URLForItemID_creatingPlaceholderIfMissing_ignoreAlternateContentsURL_forBookmarkResolution_request_completionHandler___block_invoke_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[FPDDomainExtensionBackend URLForItemID:creatingPlaceholderIfMissing:ignoreAlternateContentsURL:forBookmarkResolution:request:completionHandler:]_block_invoke";
  OUTLINED_FUNCTION_1_2(&dword_1CEFC7000, a1, a3, "[DEBUG] %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __146__FPDDomainExtensionBackend_URLForItemID_creatingPlaceholderIfMissing_ignoreAlternateContentsURL_forBookmarkResolution_request_completionHandler___block_invoke_270_cold_1()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_13();
  v2 = OUTLINED_FUNCTION_12(v1);
  v3 = [v2 provider];
  v4 = [v3 identifier];
  v5 = [v0 fp_prettyDescription];
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10(&dword_1CEFC7000, v6, v7, "[ERROR] Cannot get URL for item ID “%{public}@” for extension %{public}@. Error: %@", v8, v9, v10, v11);

  OUTLINED_FUNCTION_17();
}

void __146__FPDDomainExtensionBackend_URLForItemID_creatingPlaceholderIfMissing_ignoreAlternateContentsURL_forBookmarkResolution_request_completionHandler___block_invoke_270_cold_2(void *a1, uint64_t a2)
{
  v3 = [a1 url];
  v4 = [v3 fp_shortDescription];
  v5 = *(a2 + 32);
  WeakRetained = objc_loadWeakRetained((*(a2 + 40) + 8));
  v7 = [WeakRetained provider];
  v8 = [v7 identifier];
  LODWORD(v15) = 138412802;
  *(&v15 + 4) = v4;
  OUTLINED_FUNCTION_3_1();
  *v16 = v5;
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_16(&dword_1CEFC7000, v9, v10, "[DEBUG] Successfully retrieved URL %@ for item ID “%@” from extension %@", v11, v12, v13, v14, v15, DWORD2(v15), *&v16[2]);
}

void __125__FPDDomainExtensionBackend_itemForItemID_creatingPlaceholderIfMissing_ignoreAlternateContentsURL_request_completionHandler___block_invoke_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[FPDDomainExtensionBackend itemForItemID:creatingPlaceholderIfMissing:ignoreAlternateContentsURL:request:completionHandler:]_block_invoke";
  OUTLINED_FUNCTION_1_2(&dword_1CEFC7000, a1, a3, "[DEBUG] %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __125__FPDDomainExtensionBackend_itemForItemID_creatingPlaceholderIfMissing_ignoreAlternateContentsURL_request_completionHandler___block_invoke_272_cold_1()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_13();
  v2 = OUTLINED_FUNCTION_12(v1);
  v3 = [v2 provider];
  v4 = [v3 identifier];
  v5 = [v0 fp_prettyDescription];
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10(&dword_1CEFC7000, v6, v7, "[ERROR] Cannot get item for item ID “%@” for extension %@. Error: %@", v8, v9, v10, v11);

  OUTLINED_FUNCTION_17();
}

void __125__FPDDomainExtensionBackend_itemForItemID_creatingPlaceholderIfMissing_ignoreAlternateContentsURL_request_completionHandler___block_invoke_272_cold_2()
{
  OUTLINED_FUNCTION_18();
  WeakRetained = objc_loadWeakRetained((*(v0 + 40) + 8));
  v2 = [WeakRetained provider];
  v3 = [v2 identifier];
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x20u);

  OUTLINED_FUNCTION_17();
}

void __95__FPDDomainExtensionBackend_enumerateWithSettings_lifetimeExtender_observer_completionHandler___block_invoke_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[FPDDomainExtensionBackend enumerateWithSettings:lifetimeExtender:observer:completionHandler:]_block_invoke";
  OUTLINED_FUNCTION_1_2(&dword_1CEFC7000, a1, a3, "[DEBUG] %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __95__FPDDomainExtensionBackend_enumerateWithSettings_lifetimeExtender_observer_completionHandler___block_invoke_2_cold_1(uint64_t a1, void *a2)
{
  v2 = [a2 fp_prettyDescription];
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void __82__FPDDomainExtensionBackend_valuesForAttributes_forURL_request_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_11();
  v1 = [OUTLINED_FUNCTION_8(v0) fp_shortDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __82__FPDDomainExtensionBackend_valuesForAttributes_forURL_request_completionHandler___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_11();
  v1 = OUTLINED_FUNCTION_12(v0);
  v2 = [v1 provider];
  v3 = [v2 identifier];
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x20u);

  OUTLINED_FUNCTION_17();
}

void __82__FPDDomainExtensionBackend_valuesForAttributes_forURL_request_completionHandler___block_invoke_2_cold_2(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v4 = 138412546;
  v5 = v1;
  OUTLINED_FUNCTION_3_1();
  v6 = v2;
  _os_log_debug_impl(&dword_1CEFC7000, v3, OS_LOG_TYPE_DEBUG, "[DEBUG] values for %@: %@", &v4, 0x16u);
}

void __85__FPDDomainExtensionBackend_bulkItemChanges_changedFields_request_completionHandler___block_invoke_2_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  LODWORD(v3) = 134218242;
  *(&v3 + 4) = *(a1 + 40);
  OUTLINED_FUNCTION_3_1();
  *v4 = v1;
  OUTLINED_FUNCTION_15(&dword_1CEFC7000, v1, v2, "[ERROR] can't notify extension of item change %lu for items; %@", v3, DWORD2(v3), *&v4[2], v5);
}

void __96__FPDDomainExtensionBackend_enumerateSearchResultForRequest_lifetimeExtender_completionHandler___block_invoke_2_cold_1(void *a1)
{
  v1 = [a1 fp_prettyDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

@end