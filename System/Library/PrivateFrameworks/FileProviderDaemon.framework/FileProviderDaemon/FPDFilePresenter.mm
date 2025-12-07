@interface FPDFilePresenter
+ (id)presenter:(id)presenter withItemID:(id)d auditToken:(id *)token urlHint:(id)hint domain:(id)domain;
- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken;
- (BOOL)isEqual:(id)equal;
- (FPDFilePresenter)initWithIdentifier:(id)identifier itemID:(id)d auditToken:(id *)token urlHint:(id)hint domain:(id)domain;
- (NSString)description;
- (NSString)prettyDescription;
- (id)_newCoordinator;
- (id)_presentedItemDescription:(BOOL)description;
- (id)enumerator;
- (int)requestEffectivePID;
- (void)_destroyEnumerator;
- (void)_enumeratorRequestDidFailWithXPCError:(id)error;
- (void)_fetchChangeToken;
- (void)_fetchUpdates;
- (void)didUpdateItem:(id)item;
- (void)dumpStateTo:(id)to;
- (void)enumerationResultsDidChange;
- (void)receiveUpdatedItems:(id)items deletedItemsIdentifiers:(id)identifiers;
- (void)setAuditToken:(id *)token;
- (void)start;
- (void)stop;
@end

@implementation FPDFilePresenter

- (NSString)prettyDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(FPDFilePresenter *)self _presentedItemDescription:0];
  v5 = *&self->_auditToken.val[4];
  *atoken.val = *self->_auditToken.val;
  *&atoken.val[4] = v5;
  v6 = FPExecutableNameForAuditToken();
  v7 = *&self->_auditToken.val[4];
  *atoken.val = *self->_auditToken.val;
  *&atoken.val[4] = v7;
  v8 = [v3 stringWithFormat:@"presenter for %@ by %@[%u]", v4, v6, audit_token_to_pid(&atoken)];

  return v8;
}

- (FPDFilePresenter)initWithIdentifier:(id)identifier itemID:(id)d auditToken:(id *)token urlHint:(id)hint domain:(id)domain
{
  v30 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  dCopy = d;
  hintCopy = hint;
  domainCopy = domain;
  v28.receiver = self;
  v28.super_class = FPDFilePresenter;
  v17 = [(FPDFilePresenter *)&v28 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_observedItemID, d);
    objc_storeStrong(&v18->_domain, domain);
    objc_storeStrong(&v18->_presentedItemURL, hint);
    objc_storeStrong(&v18->_filePresenterID, identifier);
    v19 = *&token->var0[4];
    *v18->_auditToken.val = *token->var0;
    *&v18->_auditToken.val[4] = v19;
    v20 = [MEMORY[0x1E696ABF8] _observedUbiquityAttributesForPresenterWithID:identifierCopy];
    v21 = v20;
    if (v20)
    {
      v22 = [(__CFString *)v20 count];
      v18->_presenterWantsUbiqitousAttributes = v22 != 0;
      if (!v22)
      {
        v23 = *&v18->_auditToken.val[4];
        *buf = *v18->_auditToken.val;
        *&buf[16] = v23;
        v24 = FPEntitlementValueForAuditToken();
        if (v24)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v18->_passivePresenterRequested = [v24 BOOLValue];
          }
        }
      }
    }

    else
    {
      v18->_presenterWantsUbiqitousAttributes = 1;
    }

    v25 = fp_current_or_default_log();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      v27 = @"all";
      *buf = 138412802;
      if (v21)
      {
        v27 = v21;
      }

      *&buf[4] = identifierCopy;
      *&buf[12] = 2112;
      *&buf[14] = dCopy;
      *&buf[22] = 2112;
      *&buf[24] = v27;
      _os_log_debug_impl(&dword_1CEFC7000, v25, OS_LOG_TYPE_DEBUG, "[DEBUG] new presenter %@ for %@, watching attributes: %@", buf, 0x20u);
    }
  }

  return v18;
}

- (int)requestEffectivePID
{
  v2 = *&self->_auditToken.val[4];
  *v4.val = *self->_auditToken.val;
  *&v4.val[4] = v2;
  return audit_token_to_pid(&v4);
}

+ (id)presenter:(id)presenter withItemID:(id)d auditToken:(id *)token urlHint:(id)hint domain:(id)domain
{
  domainCopy = domain;
  hintCopy = hint;
  dCopy = d;
  presenterCopy = presenter;
  v16 = [self alloc];
  v17 = *&token->var0[4];
  v20[0] = *token->var0;
  v20[1] = v17;
  v18 = [v16 initWithIdentifier:presenterCopy itemID:dCopy auditToken:v20 urlHint:hintCopy domain:domainCopy];

  return v18;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    itemID = [equalCopy itemID];
    if ([itemID isEqual:self->_observedItemID])
    {
      filePresenterID = [equalCopy filePresenterID];
      v7 = [filePresenterID isEqual:self->_filePresenterID];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_presentedItemDescription:(BOOL)description
{
  v4 = MEMORY[0x1E696AEC0];
  presentedItemURL = self->_presentedItemURL;
  if (description)
  {
    fp_shortDescription = [(NSURL *)presentedItemURL fp_shortDescription];
    v7 = [v4 stringWithFormat:@"%@ (%@)", fp_shortDescription, self->_observedItemID];
  }

  else
  {
    fp_shortDescription = [(NSURL *)presentedItemURL lastPathComponent];
    fp_obfuscatedFilename = [fp_shortDescription fp_obfuscatedFilename];
    identifier = [(FPItemID *)self->_observedItemID identifier];
    v7 = [v4 stringWithFormat:@"%@ (%@)", fp_obfuscatedFilename, identifier];
  }

  return v7;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(FPDFilePresenter *)self _presentedItemDescription:0];
  v6 = *&self->_auditToken.val[4];
  *atoken.val = *self->_auditToken.val;
  *&atoken.val[4] = v6;
  v7 = FPExecutableNameForAuditToken();
  v8 = *&self->_auditToken.val[4];
  *atoken.val = *self->_auditToken.val;
  *&atoken.val[4] = v8;
  v9 = audit_token_to_pid(&atoken);
  if (self->_isEnumeratorActive)
  {
    v10 = "";
  }

  else
  {
    v10 = " (passive)";
  }

  v11 = [v3 stringWithFormat:@"<%@ %p %@ presented by %@[%i]%s>", v4, self, v5, v7, v9, v10];

  return v11;
}

- (id)enumerator
{
  dispatch_assert_queue_V2(self->_queue);
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__13;
  v24 = __Block_byref_object_dispose__13;
  v25 = 0;
  if (!self->_isRunning)
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[ASSERT] ‼️ UNREACHABLE: enumerator requested on non-running presenter %@", self];
    v13 = fp_current_or_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      +[FPDVolume prettyNameForDomain:];
    }

    __assert_rtn("-[FPDFilePresenter enumerator]", "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fileproviderd/FPDFilePresenter.m", 129, [v12 UTF8String]);
  }

  if (self->_isEnumeratorActive)
  {
    enumerator = self->_enumerator;
    if (!enumerator)
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[ASSERT] ‼️ we should have an enumerator if it's active"];
      v15 = fp_current_or_default_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        +[FPDVolume prettyNameForDomain:];
      }

      __assert_rtn("-[FPDFilePresenter enumerator]", "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fileproviderd/FPDFilePresenter.m", 140, [v14 UTF8String]);
    }

    v4 = enumerator;
  }

  else
  {
    v5 = objc_opt_new();
    [v5 setEnumeratedItemID:self->_observedItemID];
    [v5 setPresenterEnumeration:1];
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"enumerator for %@", self->_observedItemID];
    v7 = dispatch_group_create();
    dispatch_group_enter(v7);
    defaultBackend = [(FPDDomain *)self->_domain defaultBackend];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __30__FPDFilePresenter_enumerator__block_invoke;
    v16[3] = &unk_1E83C0BF8;
    v16[4] = self;
    v19 = &v20;
    v9 = v6;
    v17 = v9;
    v10 = v7;
    v18 = v10;
    [defaultBackend enumerateWithSettings:v5 lifetimeExtender:self observer:self completionHandler:v16];

    dispatch_group_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
    v4 = v21[5];
  }

  _Block_object_dispose(&v20, 8);

  return v4;
}

void __30__FPDFilePresenter_enumerator__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v6 = a3;
  if (!v10 || v6)
  {
    if (!v6)
    {
      v6 = FPProviderNotFoundErrorForURL();
    }

    v7 = [objc_alloc(MEMORY[0x1E69674B0]) initWithConnection:0 protocol:&unk_1F4C7FA50 orError:v6 name:*(a1 + 40) requestPid:{objc_msgSend(*(a1 + 32), "requestEffectivePID")}];
    v8 = *(*(a1 + 56) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    dispatch_group_leave(*(a1 + 48));
  }

  else
  {
    objc_storeStrong((*(a1 + 32) + 16), a2);
    [*(a1 + 32) setIsEnumeratorActive:1];
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
    dispatch_group_leave(*(a1 + 48));
  }
}

- (void)start
{
  v18 = *MEMORY[0x1E69E9840];
  provider = [(FPDDomain *)self->_domain provider];
  presentersQueue = [provider presentersQueue];
  queue = self->_queue;
  self->_queue = presentersQueue;

  if (!self->_queue)
  {
    v6 = fp_current_or_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      observedItemID = self->_observedItemID;
      *buf = 138412290;
      v17 = observedItemID;
      v8 = "[INFO] cannot start presenter for %@, provider has been discarded";
      goto LABEL_7;
    }

LABEL_8:

    return;
  }

  if (self->_passivePresenterRequested)
  {
    v6 = fp_current_or_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = self->_observedItemID;
      *buf = 138412290;
      v17 = v7;
      v8 = "[INFO] ignoring presenter for item %@ because process requested passive presenters";
LABEL_7:
      _os_log_impl(&dword_1CEFC7000, v6, OS_LOG_TYPE_INFO, v8, buf, 0xCu);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  provider2 = [(FPDDomain *)self->_domain provider];
  identifier = [provider2 identifier];
  fp_isiCloudDriveIdentifier = [identifier fp_isiCloudDriveIdentifier];

  if (fp_isiCloudDriveIdentifier && !self->_presenterWantsUbiqitousAttributes)
  {
    v6 = fp_current_or_default_log();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      goto LABEL_8;
    }

    v14 = self->_observedItemID;
    *buf = 138412290;
    v17 = v14;
    v8 = "[INFO] ignoring presenter for item %@ for ubiquity attributes";
    goto LABEL_7;
  }

  v13 = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __25__FPDFilePresenter_start__block_invoke;
  block[3] = &unk_1E83BE068;
  block[4] = self;
  dispatch_async(v13, block);
}

void __25__FPDFilePresenter_start__block_invoke(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  if (*(v3 + 64) == 1)
  {
    v4 = fp_current_or_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v10 = 138412290;
      v11 = v5;
      _os_log_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEFAULT, "[WARNING] presenter %@ started while already running", &v10, 0xCu);
    }
  }

  else
  {
    *(v3 + 64) = 1;
    v6 = [*(*(a1 + 32) + 32) session];
    [v6 registerLifetimeExtensionForObject:*(a1 + 32)];

    v7 = [*(*(a1 + 32) + 32) provider];
    v8 = [v7 supportsEnumeration];

    if (v8)
    {
      v9 = *(a1 + 32);

      [v9 _fetchChangeToken];
    }
  }
}

- (void)stop
{
  queue = self->_queue;
  if (queue)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __24__FPDFilePresenter_stop__block_invoke;
    block[3] = &unk_1E83BE068;
    block[4] = self;
    dispatch_sync(queue, block);
  }
}

void __24__FPDFilePresenter_stop__block_invoke(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (*(v2 + 64))
  {
    v4 = fp_current_or_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 32);
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_INFO, "[INFO] stopping presenter %@", &v7, 0xCu);
    }

    *(*(a1 + 32) + 64) = 0;
    [*(a1 + 32) _destroyEnumerator];
    v6 = [*(*(a1 + 32) + 32) session];
    [v6 unregisterLifetimeExtensionForObject:*(a1 + 32)];
  }

  else if (*(v2 + 16))
  {
    __24__FPDFilePresenter_stop__block_invoke_cold_1();
  }
}

- (void)_enumeratorRequestDidFailWithXPCError:(id)error
{
  errorCopy = error;
  dispatch_assert_queue_V2(self->_queue);
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(FPDFilePresenter *)self _enumeratorRequestDidFailWithXPCError:errorCopy, v5];
  }

  [(FPDFilePresenter *)self _destroyEnumerator];
}

- (void)_destroyEnumerator
{
  dispatch_assert_queue_V2(self->_queue);
  self->_isFetchingChanges = 0;
  enumerator = self->_enumerator;
  if (enumerator)
  {
    [(FPXEnumerator *)enumerator invalidate];
    v4 = self->_enumerator;
    self->_enumerator = 0;
  }

  if (self->_isEnumeratorActive)
  {
    self->_isEnumeratorActive = 0;
  }
}

- (void)receiveUpdatedItems:(id)items deletedItemsIdentifiers:(id)identifiers
{
  v71 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  identifiersCopy = identifiers;
  dispatch_assert_queue_V2(self->_queue);
  if (self->_enumerator)
  {
    section = __fp_create_section();
    v6 = fp_current_or_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [FPDFilePresenter receiveUpdatedItems:deletedItemsIdentifiers:];
    }

    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    obj = itemsCopy;
    v7 = [obj countByEnumeratingWithState:&v60 objects:v70 count:{16, identifiersCopy}];
    if (v7)
    {
      v54 = *v61;
      v53 = *MEMORY[0x1E695DA88];
      v51 = *MEMORY[0x1E695DCC8];
      v50 = *MEMORY[0x1E695DD10];
      do
      {
        v55 = v7;
        for (i = 0; i != v55; ++i)
        {
          if (*v61 != v54)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v60 + 1) + 8 * i);
          if (self->_observedItemID)
          {
            itemID = [*(*(&v60 + 1) + 8 * i) itemID];
            if ([itemID isEqual:self->_observedItemID])
            {
              v11 = 1;
            }

            else
            {
              formerItemID = [v9 formerItemID];
              v11 = [formerItemID isEqual:self->_observedItemID];
            }
          }

          else
          {
            v11 = 0;
          }

          v13 = self->_presentedItemURL;
          fileURL = [v9 fileURL];
          if (!fileURL)
          {
            v56 = 0;
            v57 = 0;
            goto LABEL_24;
          }

          fileURL2 = [v9 fileURL];
          v59 = 0;
          v16 = [fileURL2 getResourceValue:&v59 forKey:v53 error:0];
          v57 = v59;
          if (v16)
          {
            presentedItemURL = self->_presentedItemURL;
            v58 = 0;
            v18 = [(NSURL *)presentedItemURL getResourceValue:&v58 forKey:v53 error:0];
            v19 = v58;
            v56 = v19;
            if (v18)
            {
              v20 = [v57 isEqualToString:v19];

              if (v20)
              {
                goto LABEL_24;
              }

              [v9 fileURL];
              v13 = fileURL = v13;
              goto LABEL_23;
            }
          }

          else
          {
            v56 = 0;
          }

LABEL_23:
LABEL_24:
          if (v11)
          {
            currentItem = self->_currentItem;
            if (currentItem)
            {
              [(FPItem *)currentItem ubiquitousResourceKeysDiffAgainstItem:v9];
            }

            else
            {
              [MEMORY[0x1E6967388] allUbiquitousResourceKeys];
            }
            provider2 = ;
            capabilities = [(FPItem *)self->_currentItem capabilities];
            if (capabilities == [v9 capabilities])
            {
              v29 = MEMORY[0x1E695DFD8];
              v65[0] = v51;
              v65[1] = v50;
              v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v65 count:2];
              v31 = [v29 setWithArray:v30];
              v32 = [provider2 intersectsSet:v31];
            }

            else
            {
              v32 = 1;
            }

            objc_storeStrong(&self->_currentItem, v9);
            v33 = [MEMORY[0x1E696ABF8] _observedUbiquityAttributesForPresenterWithID:self->_filePresenterID];
            v34 = [v33 mutableCopy];
            v35 = v34;
            if (v34)
            {
              purposeIdentifier2 = v34;
            }

            else
            {
              allUbiquitousResourceKeys = [MEMORY[0x1E6967388] allUbiquitousResourceKeys];
              purposeIdentifier2 = [allUbiquitousResourceKeys mutableCopy];
            }

            [(FPDFilePresenter *)purposeIdentifier2 intersectSet:provider2];
            if ([(FPDFilePresenter *)purposeIdentifier2 count])
            {
              _newCoordinator = [(FPDFilePresenter *)self _newCoordinator];
              v38 = fp_current_or_default_log();
              if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
              {
                fileURL3 = [v9 fileURL];
                fp_shortDescription = [fileURL3 fp_shortDescription];
                *buf = 138412546;
                selfCopy = purposeIdentifier2;
                v68 = 2112;
                v69 = fp_shortDescription;
                _os_log_impl(&dword_1CEFC7000, v38, OS_LOG_TYPE_INFO, "[INFO] 🎖 posting did change ubiquity attributes (%@) for updated file %@", buf, 0x16u);
              }

              [_newCoordinator itemAtURL:v13 didChangeUbiquityAttributes:purposeIdentifier2];
              if (v32)
              {
                if (!_newCoordinator)
                {
                  goto LABEL_46;
                }

LABEL_47:
                v46 = fp_current_or_default_log();
                if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
                {
                  fp_shortDescription2 = [(NSURL *)v13 fp_shortDescription];
                  *buf = 138412290;
                  selfCopy = fp_shortDescription2;
                  _os_log_impl(&dword_1CEFC7000, v46, OS_LOG_TYPE_INFO, "[INFO] 🎖 posting sharing did change for updated file %@", buf, 0xCu);
                }

                [_newCoordinator sharingDidChangeForItemAtURL:v13];
              }
            }

            else
            {
              v41 = fp_current_or_default_log();
              if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
              {
                fp_shortDescription3 = [(NSURL *)v13 fp_shortDescription];
                *buf = 138412290;
                selfCopy = fp_shortDescription3;
                _os_log_impl(&dword_1CEFC7000, v41, OS_LOG_TYPE_INFO, "[INFO] 🎖 posting did change ubiquity for updated file %@", buf, 0xCu);
              }

              v43 = MEMORY[0x1E696ABF8];
              provider = [(FPDDomain *)self->_domain provider];
              purposeIdentifier = [provider purposeIdentifier];
              [v43 __itemAtURL:v13 didChangeUbiquityWithPurposeID:purposeIdentifier];

              if (v32)
              {
LABEL_46:
                _newCoordinator = [(FPDFilePresenter *)self _newCoordinator];
                goto LABEL_47;
              }

              _newCoordinator = 0;
            }

            goto LABEL_52;
          }

          v22 = fp_current_or_default_log();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
          {
            fileURL4 = [v9 fileURL];
            fp_shortDescription4 = [fileURL4 fp_shortDescription];
            *buf = 138412546;
            selfCopy = self;
            v68 = 2112;
            v69 = fp_shortDescription4;
            _os_log_impl(&dword_1CEFC7000, v22, OS_LOG_TYPE_INFO, "[INFO] %@: 🎖 posting did change ubiquity for updated file %@", buf, 0x16u);
          }

          v25 = MEMORY[0x1E696ABF8];
          provider2 = [(FPDDomain *)self->_domain provider];
          purposeIdentifier2 = [provider2 purposeIdentifier];
          [v25 __itemAtURL:v13 didChangeUbiquityWithPurposeID:purposeIdentifier2];
LABEL_52:
        }

        v7 = [obj countByEnumeratingWithState:&v60 objects:v70 count:16];
      }

      while (v7);
    }

    __fp_leave_section_Debug();
  }
}

- (id)_newCoordinator
{
  provider = [(FPDDomain *)self->_domain provider];
  purposeIdentifier = [provider purposeIdentifier];

  if (purposeIdentifier)
  {
    v4 = objc_opt_new();
    [v4 setPurposeIdentifier:purposeIdentifier];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)enumerationResultsDidChange
{
  provider = [(FPDDomain *)self->_domain provider];
  identifier = [provider identifier];
  fp_isiCloudDriveIdentifier = [identifier fp_isiCloudDriveIdentifier];

  if (self->_presenterWantsUbiqitousAttributes || !fp_isiCloudDriveIdentifier)
  {
    queue = self->_queue;
    if (queue)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __47__FPDFilePresenter_enumerationResultsDidChange__block_invoke;
      block[3] = &unk_1E83BE068;
      block[4] = self;
      dispatch_async(queue, block);
    }
  }
}

uint64_t __47__FPDFilePresenter_enumerationResultsDidChange__block_invoke(uint64_t a1, uint64_t a2)
{
  __fp_create_section();
  v3 = fp_current_or_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __47__FPDFilePresenter_enumerationResultsDidChange__block_invoke_cold_1();
  }

  v4 = *(a1 + 32);
  if (*(v4 + 65) == 1)
  {
    *(v4 + 66) = 1;
  }

  else if (*(v4 + 40))
  {
    [v4 _fetchUpdates];
  }

  else
  {
    [v4 _fetchChangeToken];
  }

  return __fp_leave_section_Debug();
}

- (void)didUpdateItem:(id)item
{
  itemCopy = item;
  v5 = itemCopy;
  if (itemCopy)
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __34__FPDFilePresenter_didUpdateItem___block_invoke;
    v7[3] = &unk_1E83BE158;
    v7[4] = self;
    v8 = itemCopy;
    dispatch_async(queue, v7);
  }
}

void __34__FPDFilePresenter_didUpdateItem___block_invoke(uint64_t a1)
{
  v3[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v3[0] = *(a1 + 40);
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1];
  [v1 receiveUpdatedItems:v2 deletedItemsIdentifiers:MEMORY[0x1E695E0F0]];
}

- (void)_fetchChangeToken
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __37__FPDFilePresenter__fetchChangeToken__block_invoke(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  v9 = a2;
  v10 = a4;
  v11 = a6;
  v12 = a1[4];
  v13 = *(v12 + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__FPDFilePresenter__fetchChangeToken__block_invoke_2;
  block[3] = &unk_1E83BE648;
  v14 = a1[5];
  v23 = a1[6];
  block[4] = v12;
  v19 = v14;
  v20 = v11;
  v24 = a1[7];
  v21 = v9;
  v22 = v10;
  v15 = v10;
  v16 = v9;
  v17 = v11;
  dispatch_async(v13, block);
}

uint64_t __37__FPDFilePresenter__fetchChangeToken__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v18 = *(a1 + 72);
  v3 = fp_current_or_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __37__FPDFilePresenter__fetchChangeToken__block_invoke_2_cold_1();
  }

  v4 = (a1 + 32);
  if (*(*(a1 + 32) + 16) != *(a1 + 40))
  {
    v5 = fp_current_or_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __37__FPDFilePresenter__fetchChangeToken__block_invoke_2_cold_2();
    }

LABEL_12:

    return __fp_leave_section_Debug();
  }

  v6 = [*(a1 + 48) fp_isRemoteCrashError];
  v7 = *v4;
  if (v6)
  {
    [v7 _enumeratorRequestDidFailWithXPCError:*(a1 + 48)];
  }

  else
  {
    if ((v7[64] & 1) == 0)
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[ASSERT] ‼️ received changes on active enumerator for stopped presenter %@", *v4, v18];
      v16 = fp_current_or_default_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        +[FPDVolume prettyNameForDomain:];
      }

      v17 = v15;
      __assert_rtn("-[FPDFilePresenter _fetchChangeToken]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fileproviderd/FPDFilePresenter.m", 411, [v15 UTF8String]);
    }

    v7[65] = 0;
    if (*(a1 + 48))
    {
      v5 = fp_current_or_default_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v12 = [*(*v4 + 32) fp_prettyDescription];
        v13 = *(a1 + 48);
        v14 = *(*(a1 + 32) + 48);
        *buf = 138412802;
        v20 = v12;
        v21 = 2112;
        v22 = v13;
        v23 = 2112;
        v24 = v14;
        _os_log_error_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_ERROR, "[ERROR] no change token returned for %@: %@\n on url: %@", buf, 0x20u);
      }

      goto LABEL_12;
    }

    [*(a1 + 32) receiveUpdatedItems:*(a1 + 56) deletedItemsIdentifiers:MEMORY[0x1E695E0F0]];
    v10 = *(a1 + 64);
    v9 = (a1 + 64);
    objc_storeStrong((*(v9 - 4) + 40), v10);
    v11 = *(v9 - 4);
    if (*v9)
    {
      [v11 _fetchUpdates];
    }

    else if (v11[66] == 1)
    {
      [v11 _fetchChangeToken];
    }
  }

  return __fp_leave_section_Debug();
}

- (void)_fetchUpdates
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __33__FPDFilePresenter__fetchUpdates__block_invoke(void *a1, void *a2, void *a3, char a4, void *a5, uint64_t a6, void *a7)
{
  v12 = a2;
  v13 = a3;
  v14 = a5;
  v15 = a7;
  v16 = a1[4];
  v17 = *(v16 + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__FPDFilePresenter__fetchUpdates__block_invoke_2;
  block[3] = &unk_1E83C0C48;
  v18 = a1[5];
  v30 = a1[6];
  block[4] = v16;
  v25 = v18;
  v26 = v15;
  v19 = a1[7];
  v32 = a4;
  v27 = v14;
  v28 = v13;
  v31 = v19;
  v29 = v12;
  v20 = v12;
  v21 = v13;
  v22 = v14;
  v23 = v15;
  dispatch_async(v17, block);
}

uint64_t __33__FPDFilePresenter__fetchUpdates__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v22 = *(a1 + 80);
  v3 = fp_current_or_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __33__FPDFilePresenter__fetchUpdates__block_invoke_2_cold_1();
  }

  v4 = (a1 + 32);
  if (*(*(a1 + 32) + 16) != *(a1 + 40))
  {
    v5 = fp_current_or_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __37__FPDFilePresenter__fetchChangeToken__block_invoke_2_cold_2();
    }

    return __fp_leave_section_Debug();
  }

  v6 = [*(a1 + 48) fp_isRemoteCrashError];
  v7 = *v4;
  if (v6)
  {
    [v7 _enumeratorRequestDidFailWithXPCError:*(a1 + 48)];
    return __fp_leave_section_Debug();
  }

  if ((v7[64] & 1) == 0)
  {
    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[ASSERT] ‼️ received changes on active enumerator for stopped presenter %@", *v4, v22];
    v20 = fp_current_or_default_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      +[FPDVolume prettyNameForDomain:];
    }

    v21 = v19;
    __assert_rtn("-[FPDFilePresenter _fetchUpdates]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fileproviderd/FPDFilePresenter.m", 480, [v19 UTF8String]);
  }

  v7[65] = 0;
  v8 = (a1 + 56);
  if ([*(a1 + 56) isEqualToData:*(*(a1 + 32) + 40)] && !*(a1 + 48))
  {
    v9 = fp_current_or_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      __33__FPDFilePresenter__fetchUpdates__block_invoke_2_cold_4();
    }

    if (*(a1 + 96) == 1)
    {
      v10 = fp_current_or_default_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __33__FPDFilePresenter__fetchUpdates__block_invoke_2_cold_5(v10);
      }
    }

    if ([*(a1 + 64) count] || objc_msgSend(*(a1 + 72), "count"))
    {
      v11 = fp_current_or_default_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __33__FPDFilePresenter__fetchUpdates__block_invoke_2_cold_6(v11);
      }
    }
  }

  if ([*(a1 + 48) fp_isFileProviderError:-1002])
  {
    v12 = 1;
  }

  else
  {
    v12 = [*(a1 + 48) fp_isFileProviderError:-1002];
  }

  objc_storeStrong(*v4 + 5, *v8);
  if (((*v8 == 0) & v12) == 1)
  {
    v13 = fp_current_or_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      __33__FPDFilePresenter__fetchUpdates__block_invoke_2_cold_7(v13);
    }

    goto LABEL_34;
  }

  [*(a1 + 32) receiveUpdatedItems:*(a1 + 72) deletedItemsIdentifiers:*(a1 + 64)];
  if (*(a1 + 48))
  {
    v14 = fp_current_or_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v16 = [*(*v4 + 4) fp_prettyDescription];
      v17 = *(a1 + 48);
      v18 = *(*(a1 + 32) + 48);
      *buf = 138412802;
      v24 = v16;
      v25 = 2112;
      v26 = v17;
      v27 = 2112;
      v28 = v18;
      _os_log_error_impl(&dword_1CEFC7000, v14, OS_LOG_TYPE_ERROR, "[ERROR] error when getting changes for %@: %@\n on url: %@", buf, 0x20u);
    }

    if (*(*v4 + 66) == 1)
    {
      *(*v4 + 66) = 0;
      v13 = *(*v4 + 5);
      *(*v4 + 5) = 0;
LABEL_34:

      [*v4 _fetchChangeToken];
    }
  }

  else if ((*(*v4 + 66) & 1) != 0 || *(a1 + 96) == 1)
  {
    [*v4 _fetchUpdates];
  }

  return __fp_leave_section_Debug();
}

- (void)dumpStateTo:(id)to
{
  toCopy = to;
  v5 = *&self->_auditToken.val[4];
  *atoken.val = *self->_auditToken.val;
  *&atoken.val[4] = v5;
  v6 = audit_token_to_pid(&atoken);
  [toCopy write:@"  presenter: "];
  if (v6 == -1)
  {
    [toCopy startFgColor:1];
    [toCopy write:@"unknown process"];
  }

  else
  {
    if ([(FPDFilePresenter *)self isEnumeratorActive])
    {
      v7 = 2;
    }

    else
    {
      v7 = 3;
    }

    [toCopy startFgColor:v7];
    v8 = *&self->_auditToken.val[4];
    *atoken.val = *self->_auditToken.val;
    *&atoken.val[4] = v8;
    v9 = FPExecutableNameForAuditToken();
    [toCopy write:{@"%@[%d]", v9, v6}];
  }

  if (!self->_presenterWantsUbiqitousAttributes)
  {
    v10 = @" (ignored)";
    goto LABEL_11;
  }

  if (![(FPDFilePresenter *)self isEnumeratorActive])
  {
    v10 = @" (passive)";
LABEL_11:
    [toCopy write:v10];
  }

  [toCopy reset];
  v11 = [(FPDFilePresenter *)self _presentedItemDescription:1];
  [toCopy write:{@" presenting %@ (%@)\n", v11, self->_filePresenterID}];
}

- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken
{
  v3 = *&self[3].var0[4];
  *retstr->var0 = *self[3].var0;
  *&retstr->var0[4] = v3;
  return self;
}

- (void)setAuditToken:(id *)token
{
  v3 = *&token->var0[4];
  *self->_auditToken.val = *token->var0;
  *&self->_auditToken.val[4] = v3;
}

- (void)_enumeratorRequestDidFailWithXPCError:(NSObject *)a3 .cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v5 = [a2 fp_prettyDescription];
  v6 = 138412546;
  v7 = a1;
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_1CEFC7000, a3, OS_LOG_TYPE_DEBUG, "[DEBUG] %@: received error from the enumerator: %@", &v6, 0x16u);
}

- (void)receiveUpdatedItems:deletedItemsIdentifiers:.cold.1()
{
  OUTLINED_FUNCTION_3(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __37__FPDFilePresenter__fetchChangeToken__block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_3(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
}

void __37__FPDFilePresenter__fetchChangeToken__block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_3(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __33__FPDFilePresenter__fetchUpdates__block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_3(*MEMORY[0x1E69E9840]);
  LODWORD(v7) = 134217984;
  *(&v7 + 4) = v0;
  OUTLINED_FUNCTION_1_2(&dword_1CEFC7000, v1, v2, "[DEBUG] ┳%llx received changes", v3, v4, v5, v6, v7, DWORD2(v7));
}

void __33__FPDFilePresenter__fetchUpdates__block_invoke_2_cold_4()
{
  OUTLINED_FUNCTION_3(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

@end