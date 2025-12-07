@interface FCPrivateChannelMembershipController
+ (id)backingRecordZoneIDs;
+ (id)desiredKeys;
- (BOOL)hasMemberships;
- (BOOL)isAllowedToSeeDraftsForChannelID:(id)d;
- (BOOL)isMemberOfChannelID:(id)d;
- (FCPrivateChannelMembershipController)initWithContext:(id)context pushNotificationCenter:(id)center storeDirectory:(id)directory;
- (id)allKnownRecordNamesWithinRecordZoneWithID:(id)d;
- (id)feedDescriptorForDraftFeedForChannel:(id)channel;
- (id)membershipChannelIDs;
- (uint64_t)shouldShowAllDraftContent;
- (void)_fetchPrivateChannelMembershipsWithCompletion:(void *)completion;
- (void)_logCurrentMemberships;
- (void)_refreshPublicMembershipsWithCompletion:(void *)completion;
- (void)activityObservingApplicationWindowDidBecomeForeground;
- (void)addItem:(int)item toStore:;
- (void)addObserver:(id)observer;
- (void)dealloc;
- (void)handleSyncWithChangedRecords:(id)records deletedRecordNames:(id)names;
- (void)isAllowedToSeeArticleID:(id)d completionBlock:(id)block;
- (void)isAllowedToSeeIssueID:(id)d completionBlock:(id)block;
- (void)loadLocalCachesFromStore;
- (void)referenceToMembershipForMembershipID:(void *)d;
- (void)removeItemWithItemID:(void *)d;
- (void)removeObserver:(id)observer;
- (void)setMembershipsByChannelID:(uint64_t)d;
@end

@implementation FCPrivateChannelMembershipController

- (void)_logCurrentMemberships
{
  v14 = *MEMORY[0x1E69E9840];
  if (self)
  {
    [MEMORY[0x1E696AF00] isMainThread];
    v2 = *(self + 96);
    v3 = [v2 fc_arrayByTransformingWithBlock:&__block_literal_global_75_0];

    v4 = *(self + 88);
    allKeys = [v4 allKeys];

    v6 = FCChannelMembershipLog;
    if (os_log_type_enabled(FCChannelMembershipLog, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      v8 = 134218498;
      v9 = [v3 count];
      v10 = 2114;
      v11 = v3;
      v12 = 2114;
      v13 = allKeys;
      _os_log_impl(&dword_1B63EF000, v7, OS_LOG_TYPE_DEFAULT, "user has %lu memberships, ids=%{public}@, channels=%{public}@", &v8, 0x20u);
    }
  }
}

- (void)loadLocalCachesFromStore
{
  v66 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  localStore = [(FCPrivateDataController *)self localStore];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  allKeys = [localStore allKeys];
  v6 = [allKeys countByEnumeratingWithState:&v52 objects:v65 count:16];
  v42 = array;
  if (v6)
  {
    v7 = v6;
    v8 = *v53;
    do
    {
      v9 = 0;
      do
      {
        if (*v53 != v8)
        {
          objc_enumerationMutation(allKeys);
        }

        v10 = *(*(&v52 + 1) + 8 * v9);
        if (([objc_opt_class() isLocalStoreKeyInternal:v10] & 1) == 0)
        {
          objc_opt_class();
          v11 = [localStore objectForKeyedSubscript:v10];
          if (v11)
          {
            if (objc_opt_isKindOfClass())
            {
              v12 = v11;
            }

            else
            {
              v12 = 0;
            }
          }

          else
          {
            v12 = 0;
          }

          v13 = v12;

          if (v13)
          {
            v14 = [[FCReferenceToMembership alloc] initWithIdentifier:v10 dictionaryRepresentation:v13];
            if (v14)
            {
              [(FCPrivateChannelMembershipController *)self addItem:v14 toStore:0];
              membershipID = [(FCReferenceToMembership *)v14 membershipID];

              if (!membershipID && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "reference.membershipID"];
                *buf = 136315906;
                v58 = "[FCPrivateChannelMembershipController loadLocalCachesFromStore]";
                v59 = 2080;
                v60 = "FCPrivateChannelMembershipController.m";
                v61 = 1024;
                v62 = 355;
                v63 = 2114;
                v64 = v22;
                _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
              }

              membershipID2 = [(FCReferenceToMembership *)v14 membershipID];

              if (membershipID2)
              {
                membershipID3 = [(FCReferenceToMembership *)v14 membershipID];
                [array addObject:membershipID3];
                goto LABEL_19;
              }
            }

            else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              membershipID3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "reference"];
              *buf = 136315906;
              v58 = "[FCPrivateChannelMembershipController loadLocalCachesFromStore]";
              v59 = 2080;
              v60 = "FCPrivateChannelMembershipController.m";
              v61 = 1024;
              v62 = 350;
              v63 = 2114;
              v64 = membershipID3;
              _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
LABEL_19:
            }
          }

          else
          {
            v18 = FCDefaultLog;
            if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_ERROR))
            {
              v19 = v18;
              v20 = objc_opt_class();
              v21 = NSStringFromClass(v20);
              *buf = 138543618;
              v58 = v21;
              v59 = 2114;
              v60 = v10;
              _os_log_error_impl(&dword_1B63EF000, v19, OS_LOG_TYPE_ERROR, "ERROR: Object of type %{public}@ is not dictionary for key %{public}@", buf, 0x16u);

              array = v42;
            }
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v23 = [allKeys countByEnumeratingWithState:&v52 objects:v65 count:16];
      v7 = v23;
    }

    while (v23);
  }

  context = [(FCPrivateDataController *)self context];
  [context internalContentContext];
  v26 = v25 = array;
  channelMembershipController = [v26 channelMembershipController];

  v28 = [channelMembershipController cachedChannelMembershipsForIDs:v25];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v30 = v28;
  v31 = [v30 countByEnumeratingWithState:&v48 objects:v56 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v49;
    do
    {
      for (i = 0; i != v32; ++i)
      {
        if (*v49 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = [v30 objectForKeyedSubscript:*(*(&v48 + 1) + 8 * i)];
        channelID = [v35 channelID];
        [dictionary setObject:v35 forKey:channelID];
      }

      v32 = [v30 countByEnumeratingWithState:&v48 objects:v56 count:16];
    }

    while (v32);
  }

  if (self)
  {
    membershipsLock = self->_membershipsLock;
  }

  else
  {
    membershipsLock = 0;
  }

  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __64__FCPrivateChannelMembershipController_loadLocalCachesFromStore__block_invoke;
  v46[3] = &unk_1E7C36C58;
  v46[4] = self;
  v38 = dictionary;
  v47 = v38;
  [(FCMTWriterLock *)membershipsLock performWriteSync:v46];
  [(FCPrivateChannelMembershipController *)self _logCurrentMemberships];
  date = [MEMORY[0x1E695DF00] date];
  v40 = FCChannelMembershipLog;
  if (os_log_type_enabled(FCChannelMembershipLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B63EF000, v40, OS_LOG_TYPE_DEFAULT, "will wait in low-priority queue for refresh", buf, 2u);
  }

  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __64__FCPrivateChannelMembershipController_loadLocalCachesFromStore__block_invoke_53;
  v43[3] = &unk_1E7C36C58;
  v44 = date;
  selfCopy = self;
  v41 = date;
  [FCTaskScheduler scheduleLowPriorityBlockForMainThread:v43];
}

- (void)activityObservingApplicationWindowDidBecomeForeground
{
  if (self)
  {
    [(FCPrivateChannelMembershipController *)self _refreshPublicMembershipsWithCompletion:?];
  }
}

- (FCPrivateChannelMembershipController)initWithContext:(id)context pushNotificationCenter:(id)center storeDirectory:(id)directory
{
  contextCopy = context;
  v14.receiver = self;
  v14.super_class = FCPrivateChannelMembershipController;
  v9 = [(FCPrivateDataController *)&v14 initWithContext:contextCopy pushNotificationCenter:center storeDirectory:directory];
  if (v9)
  {
    v10 = objc_alloc_init(FCMTWriterLock);
    membershipsLock = v9->_membershipsLock;
    v9->_membershipsLock = v10;

    appActivityMonitor = [contextCopy appActivityMonitor];
    [appActivityMonitor addObserver:v9];
  }

  return v9;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = FCPrivateChannelMembershipController;
  [(FCPrivateDataController *)&v4 dealloc];
}

- (BOOL)isMemberOfChannelID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    if (([(FCPrivateChannelMembershipController *)self shouldShowAllDraftContent]& 1) != 0)
    {
      v5 = 1;
    }

    else
    {
      if (self)
      {
        membershipsLock = self->_membershipsLock;
      }

      else
      {
        membershipsLock = 0;
      }

      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __60__FCPrivateChannelMembershipController_isMemberOfChannelID___block_invoke_2;
      v9[3] = &unk_1E7C36F68;
      v9[4] = self;
      v10 = dCopy;
      v7 = membershipsLock;
      v5 = [(FCMTWriterLock *)v7 readBool:v9];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (uint64_t)shouldShowAllDraftContent
{
  if (!self || !NFInternalBuild())
  {
    return 0;
  }

  v1 = NewsCoreUserDefaults();
  v2 = [v1 BOOLForKey:@"news.draft_content.show_drafts"];

  return v2;
}

BOOL __60__FCPrivateChannelMembershipController_isMemberOfChannelID___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v1 = v1[11];
  }

  v2 = [v1 objectForKeyedSubscript:*(a1 + 40)];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)isAllowedToSeeDraftsForChannelID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    if (([(FCPrivateChannelMembershipController *)self shouldShowAllDraftContent]& 1) != 0)
    {
      v5 = 1;
    }

    else
    {
      if (self)
      {
        membershipsLock = self->_membershipsLock;
      }

      else
      {
        membershipsLock = 0;
      }

      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __73__FCPrivateChannelMembershipController_isAllowedToSeeDraftsForChannelID___block_invoke_2;
      v9[3] = &unk_1E7C36F68;
      v9[4] = self;
      v10 = dCopy;
      v7 = membershipsLock;
      v5 = [(FCMTWriterLock *)v7 readBool:v9];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t __73__FCPrivateChannelMembershipController_isAllowedToSeeDraftsForChannelID___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v1 = v1[11];
  }

  v2 = [v1 objectForKeyedSubscript:*(a1 + 40)];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 isAllowedToSeeDrafts];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)feedDescriptorForDraftFeedForChannel:(id)channel
{
  channelCopy = channel;
  identifier = [channelCopy identifier];
  if ([(FCPrivateChannelMembershipController *)self isAllowedToSeeDraftsForChannelID:identifier])
  {
    if (self)
    {
      membershipsLock = self->_membershipsLock;
    }

    else
    {
      membershipsLock = 0;
    }

    v19 = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = __77__FCPrivateChannelMembershipController_feedDescriptorForDraftFeedForChannel___block_invoke;
    v22 = &unk_1E7C397D0;
    selfCopy = self;
    v7 = identifier;
    v24 = v7;
    v8 = [(FCMTWriterLock *)membershipsLock readObject:&v19];
    if ([(FCPrivateChannelMembershipController *)self shouldShowAllDraftContent]&& !v8)
    {
      v9 = objc_alloc_init(MEMORY[0x1E69B6DE8]);
      [v9 setChannelID:{v7, v19, v20, v21, v22, selfCopy}];
      v10 = [v7 substringFromIndex:1];
      v11 = [@"LDT" stringByAppendingString:v10];
      [v9 setDraftArticleListID:v11];

      v12 = [v7 substringFromIndex:1];
      v13 = [@"MD" stringByAppendingString:v12];
      [v9 setDraftIssueListID:v13];

      v8 = [[FCChannelMembership alloc] initWithRecord:v9 interestToken:0];
    }

    v14 = [FCDraftFeedDescriptor alloc];
    draftArticleListID = [(FCChannelMembership *)v8 draftArticleListID];
    draftIssueListID = [(FCChannelMembership *)v8 draftIssueListID];
    v17 = [(FCDraftFeedDescriptor *)v14 initWithChannel:channelCopy articleListID:draftArticleListID issueListID:draftIssueListID];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

uint64_t __77__FCPrivateChannelMembershipController_feedDescriptorForDraftFeedForChannel___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v1 = v1[11];
  }

  return [v1 objectForKeyedSubscript:*(a1 + 40)];
}

- (void)isAllowedToSeeArticleID:(id)d completionBlock:(id)block
{
  v23 = *MEMORY[0x1E69E9840];
  dCopy = d;
  blockCopy = block;
  if (!dCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "articleID != nil"];
    *buf = 136315906;
    v16 = "[FCPrivateChannelMembershipController isAllowedToSeeArticleID:completionBlock:]";
    v17 = 2080;
    v18 = "FCPrivateChannelMembershipController.m";
    v19 = 1024;
    v20 = 172;
    v21 = 2114;
    v22 = v10;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (blockCopy)
    {
      goto LABEL_6;
    }
  }

  else if (blockCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "completion != nil"];
    *buf = 136315906;
    v16 = "[FCPrivateChannelMembershipController isAllowedToSeeArticleID:completionBlock:]";
    v17 = 2080;
    v18 = "FCPrivateChannelMembershipController.m";
    v19 = 1024;
    v20 = 173;
    v21 = 2114;
    v22 = v11;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __80__FCPrivateChannelMembershipController_isAllowedToSeeArticleID_completionBlock___block_invoke;
  v12[3] = &unk_1E7C39B60;
  v13 = dCopy;
  v14 = blockCopy;
  v12[4] = self;
  v8 = dCopy;
  v9 = blockCopy;
  [(FCPrivateChannelMembershipController *)self _fetchPrivateChannelMembershipsWithCompletion:v12];
}

void __80__FCPrivateChannelMembershipController_isAllowedToSeeArticleID_completionBlock___block_invoke(id *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a1[6] + 2);

    v4();
  }

  else
  {
    v5 = a1[4];
    if (v5)
    {
      v6 = v5[13];
    }

    else
    {
      v6 = 0;
    }

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __80__FCPrivateChannelMembershipController_isAllowedToSeeArticleID_completionBlock___block_invoke_2;
    v15[3] = &unk_1E7C36F98;
    v15[4] = v5;
    v7 = [v6 readObject:v15];
    v8 = objc_opt_new();
    v9 = [a1[4] context];
    [v8 setContext:v9];

    [v8 setChannelMemberships:v7];
    v10 = [MEMORY[0x1E695DFD8] setWithObject:a1[5]];
    [v8 setArticleIDs:v10];

    [v8 setQualityOfService:17];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __80__FCPrivateChannelMembershipController_isAllowedToSeeArticleID_completionBlock___block_invoke_3;
    v12[3] = &unk_1E7C37C88;
    v13 = a1[5];
    v14 = a1[6];
    [v8 setCheckAccessCompletion:v12];
    v11 = [MEMORY[0x1E696ADC8] fc_sharedConcurrentQueue];
    [v11 addOperation:v8];
  }
}

uint64_t __80__FCPrivateChannelMembershipController_isAllowedToSeeArticleID_completionBlock___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(v1 + 88);
  }

  else
  {
    v2 = 0;
  }

  return [v2 allValues];
}

uint64_t __80__FCPrivateChannelMembershipController_isAllowedToSeeArticleID_completionBlock___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  if (!a3)
  {
    v4 = [a2 objectForKeyedSubscript:*(a1 + 32)];
    [v4 BOOLValue];
  }

  v5 = *(*(a1 + 40) + 16);

  return v5();
}

- (void)_fetchPrivateChannelMembershipsWithCompletion:(void *)completion
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (completion)
  {
    if (!v3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "completion != nil"];
      *buf = 136315906;
      v9 = "[FCPrivateChannelMembershipController _fetchPrivateChannelMembershipsWithCompletion:]";
      v10 = 2080;
      v11 = "FCPrivateChannelMembershipController.m";
      v12 = 1024;
      v13 = 710;
      v14 = 2114;
      v15 = v5;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __86__FCPrivateChannelMembershipController__fetchPrivateChannelMembershipsWithCompletion___block_invoke;
    v6[3] = &unk_1E7C39C20;
    v6[4] = completion;
    v7 = v4;
    [completion syncWithCompletion:v6];
  }
}

- (void)isAllowedToSeeIssueID:(id)d completionBlock:(id)block
{
  v23 = *MEMORY[0x1E69E9840];
  dCopy = d;
  blockCopy = block;
  if (!dCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "issueID != nil"];
    *buf = 136315906;
    v16 = "[FCPrivateChannelMembershipController isAllowedToSeeIssueID:completionBlock:]";
    v17 = 2080;
    v18 = "FCPrivateChannelMembershipController.m";
    v19 = 1024;
    v20 = 210;
    v21 = 2114;
    v22 = v10;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (blockCopy)
    {
      goto LABEL_6;
    }
  }

  else if (blockCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "completion != nil"];
    *buf = 136315906;
    v16 = "[FCPrivateChannelMembershipController isAllowedToSeeIssueID:completionBlock:]";
    v17 = 2080;
    v18 = "FCPrivateChannelMembershipController.m";
    v19 = 1024;
    v20 = 211;
    v21 = 2114;
    v22 = v11;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __78__FCPrivateChannelMembershipController_isAllowedToSeeIssueID_completionBlock___block_invoke;
  v12[3] = &unk_1E7C39B60;
  v13 = dCopy;
  v14 = blockCopy;
  v12[4] = self;
  v8 = dCopy;
  v9 = blockCopy;
  [(FCPrivateChannelMembershipController *)self _fetchPrivateChannelMembershipsWithCompletion:v12];
}

void __78__FCPrivateChannelMembershipController_isAllowedToSeeIssueID_completionBlock___block_invoke(id *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a1[6] + 2);

    v4();
  }

  else
  {
    v5 = a1[4];
    if (v5)
    {
      v6 = v5[13];
    }

    else
    {
      v6 = 0;
    }

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __78__FCPrivateChannelMembershipController_isAllowedToSeeIssueID_completionBlock___block_invoke_2;
    v15[3] = &unk_1E7C36F98;
    v15[4] = v5;
    v7 = [v6 readObject:v15];
    v8 = objc_opt_new();
    v9 = [a1[4] context];
    [v8 setContext:v9];

    [v8 setChannelMemberships:v7];
    v10 = [MEMORY[0x1E695DFD8] setWithObject:a1[5]];
    [v8 setIssueIDs:v10];

    [v8 setQualityOfService:17];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __78__FCPrivateChannelMembershipController_isAllowedToSeeIssueID_completionBlock___block_invoke_3;
    v12[3] = &unk_1E7C37C88;
    v13 = a1[5];
    v14 = a1[6];
    [v8 setCheckAccessCompletion:v12];
    v11 = [MEMORY[0x1E696ADC8] fc_sharedConcurrentQueue];
    [v11 addOperation:v8];
  }
}

uint64_t __78__FCPrivateChannelMembershipController_isAllowedToSeeIssueID_completionBlock___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(v1 + 88);
  }

  else
  {
    v2 = 0;
  }

  return [v2 allValues];
}

uint64_t __78__FCPrivateChannelMembershipController_isAllowedToSeeIssueID_completionBlock___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  if (!a3)
  {
    v4 = [a2 objectForKeyedSubscript:*(a1 + 32)];
    [v4 BOOLValue];
  }

  v5 = *(*(a1 + 40) + 16);

  return v5();
}

- (BOOL)hasMemberships
{
  [MEMORY[0x1E696AF00] isMainThread];
  if (self)
  {
    membershipsLock = self->_membershipsLock;
  }

  else
  {
    membershipsLock = 0;
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__FCPrivateChannelMembershipController_hasMemberships__block_invoke;
  v7[3] = &unk_1E7C36F40;
  v7[4] = self;
  v4 = membershipsLock;
  v5 = [(FCMTWriterLock *)v4 readBool:v7];

  return v5;
}

BOOL __54__FCPrivateChannelMembershipController_hasMemberships__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(v1 + 96);
  }

  else
  {
    v2 = 0;
  }

  return [v2 count] != 0;
}

- (id)membershipChannelIDs
{
  if (self)
  {
    membershipsLock = self->_membershipsLock;
  }

  else
  {
    membershipsLock = 0;
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __60__FCPrivateChannelMembershipController_membershipChannelIDs__block_invoke;
  v6[3] = &unk_1E7C36F98;
  v6[4] = self;
  v3 = membershipsLock;
  v4 = [(FCMTWriterLock *)v3 readObject:v6];

  return v4;
}

id __60__FCPrivateChannelMembershipController_membershipChannelIDs__block_invoke(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *(v3 + 88);
  }

  else
  {
    v4 = 0;
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__FCPrivateChannelMembershipController_membershipChannelIDs__block_invoke_2;
  v7[3] = &unk_1E7C39B88;
  v5 = v2;
  v8 = v5;
  [v4 enumerateKeysAndObjectsUsingBlock:v7];

  return v5;
}

void __60__FCPrivateChannelMembershipController_membershipChannelIDs__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if ([a3 isAllowedToSeeDrafts])
  {
    [*(a1 + 32) addObject:v5];
  }
}

+ (id)backingRecordZoneIDs
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E695BA90]);
  v3 = [v2 initWithZoneName:@"ChannelMemberships" ownerName:*MEMORY[0x1E695B728]];
  v6[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  return v4;
}

- (void)addItem:(int)item toStore:
{
  v5 = a2;
  if (self)
  {
    [MEMORY[0x1E696AF00] isMainThread];
    if (v5)
    {
      v6 = self[13];
      v11 = MEMORY[0x1E69E9820];
      v12 = 3221225472;
      v13 = __56__FCPrivateChannelMembershipController_addItem_toStore___block_invoke;
      v14 = &unk_1E7C36C58;
      selfCopy = self;
      v7 = v5;
      v16 = v7;
      [v6 performWriteSync:&v11];
      if (item)
      {
        dictionaryRepresentation = [v7 dictionaryRepresentation];
        localStore = [self localStore];
        identifier = [v7 identifier];
        [localStore setObject:dictionaryRepresentation forKeyedSubscript:identifier];
      }
    }
  }
}

- (void)setMembershipsByChannelID:(uint64_t)d
{
  if (d)
  {
    objc_storeStrong((d + 88), a2);
  }
}

uint64_t __64__FCPrivateChannelMembershipController_loadLocalCachesFromStore__block_invoke_53(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = FCChannelMembershipLog;
  if (os_log_type_enabled(FCChannelMembershipLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v7 = 134217984;
    v8 = [v3 fc_millisecondTimeIntervalUntilNow];
    _os_log_impl(&dword_1B63EF000, v4, OS_LOG_TYPE_DEFAULT, "did wait in low-priority queue for refresh, time=%llums", &v7, 0xCu);
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    [(FCPrivateChannelMembershipController *)v5 _refreshPublicMembershipsWithCompletion:?];
    v5 = *(a1 + 40);
  }

  return [v5 forceSyncWithCompletion:0];
}

+ (id)desiredKeys
{
  if (qword_1EDB26910 != -1)
  {
    dispatch_once(&qword_1EDB26910, &__block_literal_global_58_1);
  }

  v3 = _MergedGlobals_9;

  return v3;
}

uint64_t __51__FCPrivateChannelMembershipController_desiredKeys__block_invoke_2()
{
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"membershipID", 0}];
  v1 = _MergedGlobals_9;
  _MergedGlobals_9 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t __56__FCPrivateChannelMembershipController_addItem_toStore___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 && *(v2 + 96))
  {
    goto LABEL_6;
  }

  v3 = [MEMORY[0x1E695DFA8] set];
  v4 = *(a1 + 32);
  if (v4)
  {
    objc_storeStrong((v4 + 96), v3);
  }

  v2 = *(a1 + 32);
  if (v2)
  {
LABEL_6:
    v5 = *(v2 + 96);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a1 + 40);

  return [v5 addObject:v6];
}

- (void)removeItemWithItemID:(void *)d
{
  v3 = a2;
  if (d)
  {
    [MEMORY[0x1E696AF00] isMainThread];
    v4 = d[13];
    v7 = MEMORY[0x1E69E9820];
    v8 = 3221225472;
    v9 = __61__FCPrivateChannelMembershipController_removeItemWithItemID___block_invoke;
    v10 = &unk_1E7C36C58;
    dCopy = d;
    v5 = v3;
    v12 = v5;
    [v4 performWriteSync:&v7];
    localStore = [d localStore];
    [localStore removeObjectForKey:v5];
  }
}

void __61__FCPrivateChannelMembershipController_removeItemWithItemID___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[12];
  }

  v3 = v2;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
LABEL_5:
    v7 = 0;
    while (1)
    {
      if (*v15 != v6)
      {
        objc_enumerationMutation(v3);
      }

      v8 = *(*(&v14 + 1) + 8 * v7);
      v9 = [v8 identifier];
      v10 = [v9 isEqualToString:*(a1 + 40)];

      if (v10)
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v5)
        {
          goto LABEL_5;
        }

        goto LABEL_11;
      }
    }

    v11 = v8;

    if (!v11)
    {
      return;
    }

    v12 = *(a1 + 32);
    if (v12)
    {
      v13 = *(v12 + 96);
    }

    else
    {
      v13 = 0;
    }

    [v13 removeObject:v11];
  }

  else
  {
LABEL_11:
    v11 = v3;
  }
}

void __86__FCPrivateChannelMembershipController_fetchMembershipsWithIDs_queue_completionBlock___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v38 = *MEMORY[0x1E69E9840];
  v26 = a2;
  v7 = a3;
  v27 = a4;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v33;
    do
    {
      v11 = 0;
      do
      {
        if (*v33 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [(FCPrivateChannelMembershipController *)*(a1 + 32) referenceToMembershipForMembershipID:?];
        if (v12)
        {
          v13 = [FCRemoveReferenceToChannelMembershipCommand alloc];
          v14 = [v12 identifier];
          v15 = [(FCRemoveReferenceToChannelMembershipCommand *)v13 initWithReferenceToChannelMembershipID:v14];

          [*(a1 + 32) addCommandToCommandQueue:v15];
          v16 = *(a1 + 32);
          v17 = [v12 identifier];
          [(FCPrivateChannelMembershipController *)v16 removeItemWithItemID:v17];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v9);
  }

  v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v19 = v26;
  v20 = [v19 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v29;
    do
    {
      v23 = 0;
      do
      {
        if (*v29 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = [v19 objectForKeyedSubscript:{*(*(&v28 + 1) + 8 * v23), v26}];
        v25 = [v24 channelID];
        [v18 setObject:v24 forKey:v25];

        ++v23;
      }

      while (v21 != v23);
      v21 = [v19 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v21);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)referenceToMembershipForMembershipID:(void *)d
{
  v3 = a2;
  v4 = v3;
  if (d)
  {
    v5 = d[13];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __77__FCPrivateChannelMembershipController_referenceToMembershipForMembershipID___block_invoke;
    v8[3] = &unk_1E7C397D0;
    v8[4] = d;
    v9 = v3;
    v6 = v5;
    d = [v6 readObject:v8];
  }

  return d;
}

- (void)_refreshPublicMembershipsWithCompletion:(void *)completion
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (completion)
  {
    array = [MEMORY[0x1E695DF70] array];
    v5 = completion[13];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __80__FCPrivateChannelMembershipController__refreshPublicMembershipsWithCompletion___block_invoke;
    v22[3] = &unk_1E7C36C58;
    v22[4] = completion;
    v6 = array;
    v23 = v6;
    [v5 performReadSync:v22];
    v7 = FCChannelMembershipLog;
    if (os_log_type_enabled(FCChannelMembershipLog, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v6;
      _os_log_impl(&dword_1B63EF000, v7, OS_LOG_TYPE_DEFAULT, "will refresh memberships, ids=%{public}@", &buf, 0xCu);
    }

    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __80__FCPrivateChannelMembershipController__refreshPublicMembershipsWithCompletion___block_invoke_61;
    v19 = &unk_1E7C37C88;
    completionCopy = completion;
    v21 = v3;
    v8 = &v16;
    v9 = MEMORY[0x1E69E96A0];
    v10 = MEMORY[0x1E69E96A0];
    v11 = v6;
    context = [completion context];
    internalContentContext = [context internalContentContext];
    channelMembershipController = [internalContentContext channelMembershipController];

    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v25 = __86__FCPrivateChannelMembershipController_fetchMembershipsWithIDs_queue_completionBlock___block_invoke;
    v26 = &unk_1E7C39BB0;
    completionCopy2 = completion;
    v15 = v8;
    v28 = v15;
    [channelMembershipController fetchChannelMembershipsForIDs:v11 maximumCachedAge:v9 callbackQueue:&buf completionHandler:1.0];
  }
}

void __80__FCPrivateChannelMembershipController__refreshPublicMembershipsWithCompletion___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[12];
  }

  v3 = v2;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(a1 + 40);
        v9 = [*(*(&v10 + 1) + 8 * v7) membershipID];
        [v8 addObject:v9];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

void __80__FCPrivateChannelMembershipController__refreshPublicMembershipsWithCompletion___block_invoke_61(uint64_t a1, void *a2, void *a3)
{
  v74 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v44 = a1;
  if (v6)
  {
    v7 = FCChannelMembershipLog;
    if (os_log_type_enabled(FCChannelMembershipLog, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v73 = v6;
      _os_log_error_impl(&dword_1B63EF000, v7, OS_LOG_TYPE_ERROR, "failed to refresh memberships, error=%{public}@", buf, 0xCu);
    }
  }

  else
  {
    v52 = 0;
    v53 = &v52;
    v54 = 0x3032000000;
    v55 = __Block_byref_object_copy__12;
    v56 = __Block_byref_object_dispose__12;
    v57 = 0;
    v8 = *(a1 + 32);
    if (v8)
    {
      v8 = v8[13];
    }

    v9 = v8;
    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = __80__FCPrivateChannelMembershipController__refreshPublicMembershipsWithCompletion___block_invoke_62;
    v49[3] = &unk_1E7C37138;
    v10 = *(v44 + 32);
    v51 = &v52;
    v49[4] = v10;
    v11 = v5;
    v50 = v11;
    [v9 performWriteSync:v49];

    v12 = FCChannelMembershipLog;
    if (os_log_type_enabled(FCChannelMembershipLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B63EF000, v12, OS_LOG_TYPE_DEFAULT, "did refresh memberships", buf, 2u);
    }

    [(FCPrivateChannelMembershipController *)*(v44 + 32) _logCurrentMemberships];
    v13 = *(v44 + 32);
    v48 = v53[5];
    v43 = v11;
    v46 = v13;
    if (v13)
    {
      [MEMORY[0x1E696AF00] isMainThread];
      v14 = [MEMORY[0x1E695DFA8] set];
      v45 = [MEMORY[0x1E695DFA8] set];
      v47 = [MEMORY[0x1E695DFA8] set];
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v15 = v43;
      v16 = [v15 countByEnumeratingWithState:&v66 objects:buf count:16];
      if (v16)
      {
        v17 = *v67;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v67 != v17)
            {
              objc_enumerationMutation(v15);
            }

            v19 = *(*(&v66 + 1) + 8 * i);
            v20 = [v48 objectForKeyedSubscript:v19];
            v21 = [v15 objectForKeyedSubscript:v19];
            v22 = v14;
            if (!v20 || (v23 = [v20 isEqual:v21], v22 = v47, (v23 & 1) == 0))
            {
              [v22 addObject:v21];
            }
          }

          v16 = [v15 countByEnumeratingWithState:&v66 objects:buf count:16];
        }

        while (v16);
      }

      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v24 = v48;
      v25 = [v24 countByEnumeratingWithState:&v62 objects:v71 count:16];
      if (v25)
      {
        v26 = *v63;
        do
        {
          for (j = 0; j != v25; ++j)
          {
            if (*v63 != v26)
            {
              objc_enumerationMutation(v24);
            }

            v28 = *(*(&v62 + 1) + 8 * j);
            v29 = [v15 objectForKeyedSubscript:v28];
            v30 = [v24 objectForKeyedSubscript:v28];
            v31 = v30;
            if (v29)
            {
              if (([v30 isEqual:v29] & 1) == 0)
              {
                [v47 addObject:v29];
              }
            }

            else
            {
              [v45 addObject:v30];
            }
          }

          v25 = [v24 countByEnumeratingWithState:&v62 objects:v71 count:16];
        }

        while (v25);
      }

      v32 = [v14 copy];
      v33 = [v47 copy];
      v34 = [v45 copy];
      if ([v34 count] || objc_msgSend(v33, "count") || objc_msgSend(v32, "count"))
      {
        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
        v59 = 0u;
        v35 = [v46 observers];
        v36 = [v35 countByEnumeratingWithState:&v58 objects:v70 count:16];
        v42 = v5;
        if (v36)
        {
          v37 = *v59;
          do
          {
            for (k = 0; k != v36; ++k)
            {
              if (*v59 != v37)
              {
                objc_enumerationMutation(v35);
              }

              v39 = *(*(&v58 + 1) + 8 * k);
              if (objc_opt_respondsToSelector())
              {
                [v39 privateChannelMembershipController:v46 didAddMemberships:v32 changedMemberships:v33 removedMemberships:v34];
              }
            }

            v36 = [v35 countByEnumeratingWithState:&v58 objects:v70 count:16];
          }

          while (v36);
        }

        v6 = 0;
        v5 = v42;
      }
    }

    _Block_object_dispose(&v52, 8);
  }

  v40 = *(v44 + 40);
  if (v40)
  {
    v41 = [v5 allValues];
    (*(v40 + 16))(v40, v41, v6);
  }
}

void __80__FCPrivateChannelMembershipController__refreshPublicMembershipsWithCompletion___block_invoke_62(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v3 = *(v2 + 88);
  }

  else
  {
    v3 = 0;
  }

  objc_storeStrong((*(a1[6] + 8) + 40), v3);
  v4 = a1[4];
  v5 = a1[5];

  [(FCPrivateChannelMembershipController *)v4 setMembershipsByChannelID:v5];
}

- (void)handleSyncWithChangedRecords:(id)records deletedRecordNames:(id)names
{
  v34 = *MEMORY[0x1E69E9840];
  recordsCopy = records;
  namesCopy = names;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v7 = [recordsCopy countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v29;
    do
    {
      v10 = 0;
      do
      {
        if (*v29 != v9)
        {
          objc_enumerationMutation(recordsCopy);
        }

        v11 = [[FCReferenceToMembership alloc] initWithRecord:*(*(&v28 + 1) + 8 * v10)];
        membershipID = [(FCReferenceToMembership *)v11 membershipID];

        if (membershipID)
        {
          membershipID2 = [(FCReferenceToMembership *)v11 membershipID];
          v14 = [(FCPrivateChannelMembershipController *)self referenceToMembershipForMembershipID:membershipID2];

          if (v14)
          {
            identifier = [(FCRemoveReferenceToChannelMembershipCommand *)v14 identifier];
            [(FCPrivateChannelMembershipController *)self removeItemWithItemID:identifier];
          }

          [(FCPrivateChannelMembershipController *)self addItem:v11 toStore:1];
        }

        else
        {
          v16 = [FCRemoveReferenceToChannelMembershipCommand alloc];
          identifier2 = [(FCReferenceToMembership *)v11 identifier];
          v14 = [(FCRemoveReferenceToChannelMembershipCommand *)v16 initWithReferenceToChannelMembershipID:identifier2];

          [(FCPrivateDataController *)self addCommandToCommandQueue:v14];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [recordsCopy countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v8);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v18 = namesCopy;
  v19 = [v18 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v25;
    do
    {
      v22 = 0;
      do
      {
        if (*v25 != v21)
        {
          objc_enumerationMutation(v18);
        }

        [(FCPrivateChannelMembershipController *)self removeItemWithItemID:?];
      }

      while (v20 != v22);
      v20 = [v18 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v20);
  }

  if (self)
  {
    [(FCPrivateChannelMembershipController *)self _refreshPublicMembershipsWithCompletion:?];
  }
}

- (id)allKnownRecordNamesWithinRecordZoneWithID:(id)d
{
  [MEMORY[0x1E696AF00] isMainThread];
  if (self)
  {
    membershipsLock = self->_membershipsLock;
  }

  else
  {
    membershipsLock = 0;
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __82__FCPrivateChannelMembershipController_allKnownRecordNamesWithinRecordZoneWithID___block_invoke;
  v8[3] = &unk_1E7C36F98;
  v8[4] = self;
  v5 = membershipsLock;
  v6 = [(FCMTWriterLock *)v5 readObject:v8];

  return v6;
}

uint64_t __82__FCPrivateChannelMembershipController_allKnownRecordNamesWithinRecordZoneWithID___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(v1 + 96);
  }

  else
  {
    v2 = 0;
  }

  return [v2 fc_arrayByTransformingWithBlock:&__block_literal_global_65];
}

id __77__FCPrivateChannelMembershipController_referenceToMembershipForMembershipID___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(v1 + 96);
  }

  else
  {
    v2 = 0;
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __77__FCPrivateChannelMembershipController_referenceToMembershipForMembershipID___block_invoke_2;
  v6[3] = &unk_1E7C39BF8;
  v7 = *(a1 + 40);
  v3 = v2;
  v4 = [v3 fc_firstObjectPassingTest:v6];

  return v4;
}

uint64_t __77__FCPrivateChannelMembershipController_referenceToMembershipForMembershipID___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 membershipID];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (void)addObserver:(id)observer
{
  v17 = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  [MEMORY[0x1E696AF00] isMainThread];
  if (observerCopy)
  {
    observers = [(FCPrivateDataController *)self observers];
    v6 = [observers containsObject:observerCopy];

    if (v6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      observerCopy = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%p is already a state observer", observerCopy];
      *buf = 136315906;
      v10 = "[FCPrivateChannelMembershipController addObserver:]";
      v11 = 2080;
      v12 = "FCPrivateChannelMembershipController.m";
      v13 = 1024;
      v14 = 613;
      v15 = 2114;
      v16 = observerCopy;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

    observers2 = [(FCPrivateDataController *)self observers];
    [observers2 addObject:observerCopy];
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    observers2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "stateObserver != nil"];
    *buf = 136315906;
    v10 = "[FCPrivateChannelMembershipController addObserver:]";
    v11 = 2080;
    v12 = "FCPrivateChannelMembershipController.m";
    v13 = 1024;
    v14 = 609;
    v15 = 2114;
    v16 = observers2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_8:
}

- (void)removeObserver:(id)observer
{
  v14 = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  [MEMORY[0x1E696AF00] isMainThread];
  if (observerCopy)
  {
    observers = [(FCPrivateDataController *)self observers];
    [observers removeObject:observerCopy];
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_5;
    }

    observers = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "stateObserver != nil"];
    *buf = 136315906;
    v7 = "[FCPrivateChannelMembershipController removeObserver:]";
    v8 = 2080;
    v9 = "FCPrivateChannelMembershipController.m";
    v10 = 1024;
    v11 = 622;
    v12 = 2114;
    v13 = observers;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_5:
}

void __86__FCPrivateChannelMembershipController__fetchPrivateChannelMembershipsWithCompletion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    [(FCPrivateChannelMembershipController *)*(a1 + 32) _refreshPublicMembershipsWithCompletion:?];
  }
}

@end