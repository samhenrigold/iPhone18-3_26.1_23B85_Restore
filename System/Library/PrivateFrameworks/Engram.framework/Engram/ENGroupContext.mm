@interface ENGroupContext
+ (id)_errorWithNotFoundItems:(id)items;
+ (id)_missingItemsInNotFoundError:(id)error remainingErrors:(id *)errors;
- (ENGroupContext)initWithAccountIdentity:(id)identity dataSource:(id)source queue:(id)queue;
- (NSArray)allMiddlewares;
- (id)_middlwareConformingToProtocol:(id)protocol;
- (id)_qCacheMiddlewares;
- (id)_qCacheMiddlewaresContainedInCost:(int64_t)cost;
- (void)_cacheGroup:(id)group completion:(id)completion;
- (void)_didCacheGroup:(id)group completion:(id)completion;
- (void)_didCreateGroup:(id)group completion:(id)completion;
- (void)_didReceiveDecryptionFailureForGroup:(id)group completion:(id)completion;
- (void)_didReceiveRegistrationIdentityUpdateWithCompletion:(id)completion;
- (void)_didUpdateGroup:(id)group withNewGroup:(id)newGroup completion:(id)completion;
- (void)_dropLocalCache:(id)cache;
- (void)_dropLocalCacheForGroupID:(id)d compeltion:(id)compeltion;
- (void)_fetchAllLocalKnownGroups:(id)groups;
- (void)_fetchGroupWithGroupID:(id)d skipCache:(BOOL)cache completion:(id)completion;
- (void)_groupFromPublicDataRepresentation:(id)representation completion:(id)completion;
- (void)_noteDecryptionFailureForGroup:(id)group completion:(id)completion;
- (void)_noteRegistrationIdentityUpdate;
- (void)_participantsForCypher:(id)cypher completion:(id)completion;
- (void)_publicDataRepresentationForGroup:(id)group completion:(id)completion;
- (void)_qCacheGroup:(id)group toMiddlewares:(id)middlewares completion:(id)completion;
- (void)_qDidCacheGroup:(id)group;
- (void)_qDidCreateGroup:(id)group;
- (void)_qDidReceiveDecryptionFailureForGroup:(id)group;
- (void)_qDidReceiveRegistrationIdentityUpdate;
- (void)_qDidUpdateGroup:(id)group withGroup:(id)withGroup;
- (void)_qFetchCachedGroupWithGroupID:(id)d completion:(id)completion;
- (void)_qFetchDataSourceGroupWithGroupID:(id)d completion:(id)completion;
- (void)_qUpsertGroupWithParticipants:(id)participants previousGroup:(id)group sharedApplicationData:(id)data completion:(id)completion;
- (void)_validateCachedGroup:(id)group isParentOfGroup:(id)ofGroup completion:(id)completion;
- (void)appendMiddleware:(id)middleware;
- (void)cacheIncomingGroup:(id)group completion:(id)completion;
- (void)createGroupWithParticipants:(id)participants sharedApplicationData:(id)data completion:(id)completion;
- (void)fetchLatestGroupWithStableID:(id)d completion:(id)completion;
- (void)removeMiddleware:(id)middleware;
- (void)updateGroup:(id)group withParticipants:(id)participants sharedApplicationData:(id)data completion:(id)completion;
@end

@implementation ENGroupContext

- (ENGroupContext)initWithAccountIdentity:(id)identity dataSource:(id)source queue:(id)queue
{
  identityCopy = identity;
  sourceCopy = source;
  queueCopy = queue;
  v17.receiver = self;
  v17.super_class = ENGroupContext;
  v12 = [(ENGroupContext *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_accountIdentity, identity);
    v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
    middlewares = v13->_middlewares;
    v13->_middlewares = v14;

    objc_storeStrong(&v13->_dataSource, source);
    objc_storeStrong(&v13->_queue, queue);
  }

  return v13;
}

- (void)createGroupWithParticipants:(id)participants sharedApplicationData:(id)data completion:(id)completion
{
  completionCopy = completion;
  dataCopy = data;
  participantsCopy = participants;
  queue = [(ENGroupContext *)self queue];
  dispatch_assert_queue_V2(queue);

  [(ENGroupContext *)self _qUpsertGroupWithParticipants:participantsCopy previousGroup:0 sharedApplicationData:dataCopy completion:completionCopy];
}

- (void)updateGroup:(id)group withParticipants:(id)participants sharedApplicationData:(id)data completion:(id)completion
{
  completionCopy = completion;
  dataCopy = data;
  participantsCopy = participants;
  groupCopy = group;
  queue = [(ENGroupContext *)self queue];
  dispatch_assert_queue_V2(queue);

  [(ENGroupContext *)self _qUpsertGroupWithParticipants:participantsCopy previousGroup:groupCopy sharedApplicationData:dataCopy completion:completionCopy];
}

- (void)fetchLatestGroupWithStableID:(id)d completion:(id)completion
{
  v25 = *MEMORY[0x277D85DE8];
  dCopy = d;
  completionCopy = completion;
  queue = [(ENGroupContext *)self queue];
  dispatch_assert_queue_V2(queue);

  v22 = _os_activity_create(&dword_24A04B000, "Fetch latest group by StableGroupID", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v22, &state);
  v9 = +[ENLog groupContext];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v24 = dCopy;
    _os_log_impl(&dword_24A04B000, v9, OS_LOG_TYPE_DEFAULT, "!setState stableGroupID=%@", buf, 0xCu);
  }

  v10 = objc_alloc(MEMORY[0x277CFB968]);
  _qCacheMiddlewares = [(ENGroupContext *)self _qCacheMiddlewares];
  v12 = [v10 initWithInput:_qCacheMiddlewares initialValue:0];

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_24A050DBC;
  v19[3] = &unk_278FC3490;
  v19[4] = self;
  v13 = dCopy;
  v20 = v13;
  [v12 setReducerBlock:v19];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_24A050FD0;
  v16[3] = &unk_278FC34B8;
  v14 = completionCopy;
  v18 = v14;
  v15 = v13;
  v17 = v15;
  [v12 reduceWithCompletion:v16];

  os_activity_scope_leave(&state);
  cut_arc_os_release();
}

- (void)cacheIncomingGroup:(id)group completion:(id)completion
{
  v21 = *MEMORY[0x277D85DE8];
  groupCopy = group;
  completionCopy = completion;
  queue = [(ENGroupContext *)self queue];
  dispatch_assert_queue_V2(queue);

  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  v18 = _os_activity_create(&dword_24A04B000, "Cache Incoming Group", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v18, &state);
  v9 = +[ENLog groupContext];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v20 = groupCopy;
    _os_log_impl(&dword_24A04B000, v9, OS_LOG_TYPE_DEFAULT, "!setState newGroup=%@", buf, 0xCu);
  }

  groupID = [groupCopy groupID];
  stableGroupID = [groupID stableGroupID];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_24A05144C;
  v14[3] = &unk_278FC3580;
  v14[4] = self;
  v12 = groupCopy;
  v15 = v12;
  v13 = completionCopy;
  v16 = v13;
  [(ENGroupContext *)self fetchLatestGroupWithStableID:stableGroupID completion:v14];

  os_activity_scope_leave(&state);
  cut_arc_os_release();
}

- (void)appendMiddleware:(id)middleware
{
  v10 = *MEMORY[0x277D85DE8];
  middlewareCopy = middleware;
  queue = [(ENGroupContext *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = +[ENLog groupContext];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = 138543362;
    v9 = middlewareCopy;
    _os_log_impl(&dword_24A04B000, v6, OS_LOG_TYPE_INFO, "Adding middleware {middleware: %{public}@", &v8, 0xCu);
  }

  middlewares = [(ENGroupContext *)self middlewares];
  [middlewares addObject:middlewareCopy];
}

- (void)removeMiddleware:(id)middleware
{
  v10 = *MEMORY[0x277D85DE8];
  middlewareCopy = middleware;
  queue = [(ENGroupContext *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = +[ENLog groupContext];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = 138543362;
    v9 = middlewareCopy;
    _os_log_impl(&dword_24A04B000, v6, OS_LOG_TYPE_INFO, "Removing middleware {middleware: %{public}@", &v8, 0xCu);
  }

  middlewares = [(ENGroupContext *)self middlewares];
  [middlewares removeObject:middlewareCopy];
}

- (NSArray)allMiddlewares
{
  queue = [(ENGroupContext *)self queue];
  dispatch_assert_queue_V2(queue);

  middlewares = [(ENGroupContext *)self middlewares];
  v5 = [middlewares copy];

  return v5;
}

- (void)_didCreateGroup:(id)group completion:(id)completion
{
  completionCopy = completion;
  groupCopy = group;
  queue = [(ENGroupContext *)self queue];
  dispatch_assert_queue_V2(queue);

  [(ENGroupContext *)self _qDidCreateGroup:groupCopy];
  completionCopy[2](completionCopy, 0);
}

- (void)_didCacheGroup:(id)group completion:(id)completion
{
  completionCopy = completion;
  groupCopy = group;
  queue = [(ENGroupContext *)self queue];
  dispatch_assert_queue_V2(queue);

  [(ENGroupContext *)self _qDidCacheGroup:groupCopy];
  completionCopy[2](completionCopy, 0);
}

- (void)_didUpdateGroup:(id)group withNewGroup:(id)newGroup completion:(id)completion
{
  completionCopy = completion;
  newGroupCopy = newGroup;
  groupCopy = group;
  queue = [(ENGroupContext *)self queue];
  dispatch_assert_queue_V2(queue);

  [(ENGroupContext *)self _qDidUpdateGroup:groupCopy withGroup:newGroupCopy];
  completionCopy[2](completionCopy, 0);
}

- (void)_didReceiveDecryptionFailureForGroup:(id)group completion:(id)completion
{
  completionCopy = completion;
  groupCopy = group;
  queue = [(ENGroupContext *)self queue];
  dispatch_assert_queue_V2(queue);

  [(ENGroupContext *)self _qDidReceiveDecryptionFailureForGroup:groupCopy];
  completionCopy[2](completionCopy, 0);
}

- (void)_didReceiveRegistrationIdentityUpdateWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = [(ENGroupContext *)self queue];
  dispatch_assert_queue_V2(queue);

  [(ENGroupContext *)self _qDidReceiveRegistrationIdentityUpdate];
  completionCopy[2](completionCopy, 0);
}

- (void)_cacheGroup:(id)group completion:(id)completion
{
  completionCopy = completion;
  groupCopy = group;
  queue = [(ENGroupContext *)self queue];
  dispatch_assert_queue_V2(queue);

  _qCacheMiddlewares = [(ENGroupContext *)self _qCacheMiddlewares];
  [(ENGroupContext *)self _qCacheGroup:groupCopy toMiddlewares:_qCacheMiddlewares completion:completionCopy];
}

- (void)_fetchAllLocalKnownGroups:(id)groups
{
  groupsCopy = groups;
  queue = [(ENGroupContext *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = [(ENGroupContext *)self _qCacheMiddlewaresContainedInCost:300];
  v7 = objc_alloc(MEMORY[0x277CFB968]);
  v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v9 = [v7 initWithInput:v6 initialValue:v8];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_24A0520D8;
  v13[3] = &unk_278FC35D0;
  v13[4] = self;
  [v9 setReducerBlock:v13];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_24A052238;
  v11[3] = &unk_278FC35F8;
  v12 = groupsCopy;
  v10 = groupsCopy;
  [v9 reduceWithCompletion:v11];
}

- (void)_dropLocalCache:(id)cache
{
  cacheCopy = cache;
  queue = [(ENGroupContext *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = [(ENGroupContext *)self _qCacheMiddlewaresContainedInCost:300];
  v7 = [objc_alloc(MEMORY[0x277CFB968]) initWithInput:v6 initialValue:&stru_285D2E030];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_24A05242C;
  v11[3] = &unk_278FC35D0;
  v11[4] = self;
  [v7 setReducerBlock:v11];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_24A052538;
  v9[3] = &unk_278FC35F8;
  v10 = cacheCopy;
  v8 = cacheCopy;
  [v7 reduceWithCompletion:v9];
}

- (void)_dropLocalCacheForGroupID:(id)d compeltion:(id)compeltion
{
  dCopy = d;
  compeltionCopy = compeltion;
  queue = [(ENGroupContext *)self queue];
  dispatch_assert_queue_V2(queue);

  v9 = [(ENGroupContext *)self _qCacheMiddlewaresContainedInCost:300];
  v10 = [objc_alloc(MEMORY[0x277CFB968]) initWithInput:v9 initialValue:&stru_285D2E030];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_24A0526B8;
  v15[3] = &unk_278FC3490;
  v15[4] = self;
  v16 = dCopy;
  v11 = dCopy;
  [v10 setReducerBlock:v15];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_24A0527C8;
  v13[3] = &unk_278FC35F8;
  v14 = compeltionCopy;
  v12 = compeltionCopy;
  [v10 reduceWithCompletion:v13];
}

- (void)_publicDataRepresentationForGroup:(id)group completion:(id)completion
{
  completionCopy = completion;
  groupCopy = group;
  queue = [(ENGroupContext *)self queue];
  dispatch_assert_queue_V2(queue);

  dataSource = [(ENGroupContext *)self dataSource];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_24A0528BC;
  v11[3] = &unk_278FC3648;
  v11[4] = self;
  v12 = completionCopy;
  v10 = completionCopy;
  [dataSource publicDataRepresentationForGroup:groupCopy inContext:self completion:v11];
}

- (void)_groupFromPublicDataRepresentation:(id)representation completion:(id)completion
{
  v17[1] = *MEMORY[0x277D85DE8];
  representationCopy = representation;
  completionCopy = completion;
  queue = [(ENGroupContext *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([representationCopy length])
  {
    dataSource = [(ENGroupContext *)self dataSource];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_24A052AFC;
    v14[3] = &unk_278FC3558;
    v14[4] = self;
    v15 = completionCopy;
    [dataSource groupFromPublicDataRepresentation:representationCopy inContext:self completion:v14];
  }

  else
  {
    v10 = MEMORY[0x277CCA9B8];
    v11 = ENGroupIDErrorDomain;
    v16 = *MEMORY[0x277CCA450];
    v17[0] = @"Received group data is nil or empty";
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v13 = [v10 errorWithDomain:v11 code:-4000 userInfo:v12];
    (*(completionCopy + 2))(completionCopy, 0, v13);
  }
}

- (void)_fetchGroupWithGroupID:(id)d skipCache:(BOOL)cache completion:(id)completion
{
  cacheCopy = cache;
  v28 = *MEMORY[0x277D85DE8];
  dCopy = d;
  completionCopy = completion;
  queue = [(ENGroupContext *)self queue];
  dispatch_assert_queue_V2(queue);

  v25 = _os_activity_create(&dword_24A04B000, "Fetch group by GroupID", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v25, &state);
  v11 = +[ENLog groupContext];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = dCopy;
    _os_log_impl(&dword_24A04B000, v11, OS_LOG_TYPE_DEFAULT, "!setState groupID=%@", buf, 0xCu);
  }

  v12 = +[ENLog groupContext];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [MEMORY[0x277CCABB0] numberWithBool:cacheCopy];
    *buf = 138412290;
    v27 = v13;
    _os_log_impl(&dword_24A04B000, v12, OS_LOG_TYPE_DEFAULT, "!setState skipCache=%@", buf, 0xCu);
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_24A052E90;
  v21[3] = &unk_278FC3698;
  v21[4] = self;
  v14 = dCopy;
  v22 = v14;
  v15 = completionCopy;
  v23 = v15;
  v16 = MEMORY[0x24C20E5A0](v21);
  v17 = v16;
  if (cacheCopy)
  {
    (*(v16 + 16))(v16);
  }

  else
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = sub_24A0530CC;
    v18[3] = &unk_278FC36C0;
    v18[4] = self;
    v19 = v15;
    v20 = v17;
    [(ENGroupContext *)self _qFetchCachedGroupWithGroupID:v14 completion:v18];
  }

  os_activity_scope_leave(&state);
  cut_arc_os_release();
}

- (void)_participantsForCypher:(id)cypher completion:(id)completion
{
  completionCopy = completion;
  cypherCopy = cypher;
  queue = [(ENGroupContext *)self queue];
  dispatch_assert_queue_V2(queue);

  dataSource = [(ENGroupContext *)self dataSource];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_24A0532B4;
  v11[3] = &unk_278FC36E8;
  v11[4] = self;
  v12 = completionCopy;
  v10 = completionCopy;
  [dataSource participantsForCypher:cypherCopy completion:v11];
}

- (void)_noteDecryptionFailureForGroup:(id)group completion:(id)completion
{
  completionCopy = completion;
  groupCopy = group;
  queue = [(ENGroupContext *)self queue];
  dispatch_assert_queue_V2(queue);

  v9 = +[ENLog groupContext];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_24A04B000, v9, OS_LOG_TYPE_DEFAULT, "Noting decryption failure", v10, 2u);
  }

  [(ENGroupContext *)self _qDidReceiveDecryptionFailureForGroup:groupCopy];
  completionCopy[2](completionCopy, 0);
}

- (void)_noteRegistrationIdentityUpdate
{
  queue = [(ENGroupContext *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = +[ENLog groupContext];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_24A04B000, v4, OS_LOG_TYPE_DEFAULT, "Noting registration identity update", v5, 2u);
  }

  [(ENGroupContext *)self _qDidReceiveRegistrationIdentityUpdate];
}

- (void)_validateCachedGroup:(id)group isParentOfGroup:(id)ofGroup completion:(id)completion
{
  completionCopy = completion;
  ofGroupCopy = ofGroup;
  groupCopy = group;
  queue = [(ENGroupContext *)self queue];
  dispatch_assert_queue_V2(queue);

  dataSource = [(ENGroupContext *)self dataSource];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_24A053594;
  v14[3] = &unk_278FC3710;
  v14[4] = self;
  v15 = completionCopy;
  v13 = completionCopy;
  [dataSource validateCachedGroup:groupCopy isParentOfGroup:ofGroupCopy completion:v14];
}

- (void)_qCacheGroup:(id)group toMiddlewares:(id)middlewares completion:(id)completion
{
  groupCopy = group;
  middlewaresCopy = middlewares;
  completionCopy = completion;
  v11 = +[ENLog groupContext];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_24A04B000, v11, OS_LOG_TYPE_INFO, "Caching group", buf, 2u);
  }

  v12 = [objc_alloc(MEMORY[0x277CFB968]) initWithInput:middlewaresCopy initialValue:&stru_285D2E030];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = sub_24A05390C;
  v36[3] = &unk_278FC3490;
  v36[4] = self;
  v13 = groupCopy;
  v37 = v13;
  [v12 setReducerBlock:v36];
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x2020000000;
  v35 = 0;
  *buf = 0;
  v29 = buf;
  v30 = 0x3032000000;
  v31 = sub_24A053AA0;
  v32 = sub_24A053AB0;
  v33 = 0;
  groupID = [v13 groupID];
  stableGroupID = [groupID stableGroupID];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = sub_24A053AB8;
  v24[3] = &unk_278FC3738;
  v16 = v13;
  v25 = v16;
  v26 = v34;
  v27 = buf;
  [(ENGroupContext *)self fetchLatestGroupWithStableID:stableGroupID completion:v24];

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_24A053C4C;
  v19[3] = &unk_278FC3760;
  v19[4] = self;
  v17 = v16;
  v20 = v17;
  v22 = v34;
  v23 = buf;
  v18 = completionCopy;
  v21 = v18;
  [v12 reduceWithCompletion:v19];

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(v34, 8);
}

- (id)_qCacheMiddlewares
{
  v3 = [(ENGroupContext *)self _middlwareConformingToProtocol:&unk_285D318F0];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_24A053E20;
  v6[3] = &unk_278FC3788;
  v6[4] = self;
  v4 = [v3 sortedArrayUsingComparator:v6];

  return v4;
}

- (id)_middlwareConformingToProtocol:(id)protocol
{
  v18 = *MEMORY[0x277D85DE8];
  protocolCopy = protocol;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  middlewares = [(ENGroupContext *)self middlewares];
  v7 = [middlewares countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(middlewares);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if ([v11 conformsToProtocol:protocolCopy])
        {
          [v5 addObject:v11];
        }
      }

      v8 = [middlewares countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)_qCacheMiddlewaresContainedInCost:(int64_t)cost
{
  v19 = *MEMORY[0x277D85DE8];
  _qCacheMiddlewares = [(ENGroupContext *)self _qCacheMiddlewares];
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = _qCacheMiddlewares;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        if ([v12 middlewareCacheCostForContext:{self, v14}] <= cost)
        {
          [v6 addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  return v6;
}

- (void)_qUpsertGroupWithParticipants:(id)participants previousGroup:(id)group sharedApplicationData:(id)data completion:(id)completion
{
  v36 = *MEMORY[0x277D85DE8];
  participantsCopy = participants;
  groupCopy = group;
  dataCopy = data;
  completionCopy = completion;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  v33 = _os_activity_create(&dword_24A04B000, "Create Group", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v33, &state);
  v14 = +[ENLog groupContext];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(dataCopy, "length")}];
    *buf = 138412290;
    v35 = v15;
    _os_log_impl(&dword_24A04B000, v14, OS_LOG_TYPE_DEFAULT, "!setState applicationData.length=%@", buf, 0xCu);
  }

  v16 = +[ENLog groupContext];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = MEMORY[0x277CCABB0];
    middlewares = [(ENGroupContext *)self middlewares];
    v19 = [v17 numberWithUnsignedInteger:{objc_msgSend(middlewares, "count")}];
    *buf = 138412290;
    v35 = v19;
    _os_log_impl(&dword_24A04B000, v16, OS_LOG_TYPE_DEFAULT, "!setState middlewares.count=%@", buf, 0xCu);
  }

  v20 = +[ENLog groupContext];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(participantsCopy, "count")}];
    *buf = 138412290;
    v35 = v21;
    _os_log_impl(&dword_24A04B000, v20, OS_LOG_TYPE_DEFAULT, "!setState participatns.count=%@", buf, 0xCu);
  }

  v22 = +[ENLog groupContext];
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    *buf = 138477827;
    v35 = participantsCopy;
    _os_log_impl(&dword_24A04B000, v22, OS_LOG_TYPE_INFO, "Creating group {participants: %{private}@}", buf, 0xCu);
  }

  v23 = [_ENGroupInfo alloc];
  accountIdentity = [(ENGroupContext *)self accountIdentity];
  v25 = [(_ENGroupInfo *)v23 initWithAccountIdentity:accountIdentity paricipants:participantsCopy sharedApplicationData:dataCopy];

  dataSource = [(ENGroupContext *)self dataSource];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = sub_24A054560;
  v29[3] = &unk_278FC37D0;
  v29[4] = self;
  v27 = completionCopy;
  v31 = v27;
  v28 = groupCopy;
  v30 = v28;
  [dataSource groupContext:self upsertGroupWithInfo:v25 previousGroup:v28 completion:v29];

  os_activity_scope_leave(&state);
  cut_arc_os_release();
}

- (void)_qFetchCachedGroupWithGroupID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v8 = +[ENLog groupContext];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_24A04B000, v8, OS_LOG_TYPE_INFO, "Fetching from Caches", buf, 2u);
  }

  _qCacheMiddlewares = [(ENGroupContext *)self _qCacheMiddlewares];
  v10 = [objc_alloc(MEMORY[0x277CFB968]) initWithInput:_qCacheMiddlewares initialValue:0];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_24A0549E0;
  v15[3] = &unk_278FC3490;
  v15[4] = self;
  v16 = dCopy;
  v11 = dCopy;
  [v10 setReducerBlock:v15];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_24A054C28;
  v13[3] = &unk_278FC35F8;
  v14 = completionCopy;
  v12 = completionCopy;
  [v10 reduceWithCompletion:v13];
}

- (void)_qFetchDataSourceGroupWithGroupID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  queue = [(ENGroupContext *)self queue];
  dispatch_assert_queue_V2(queue);

  v9 = +[ENLog groupContext];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_24A04B000, v9, OS_LOG_TYPE_INFO, "Fetching from DataSource", buf, 2u);
  }

  dataSource = [(ENGroupContext *)self dataSource];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_24A054DF0;
  v12[3] = &unk_278FC3558;
  v12[4] = self;
  v13 = completionCopy;
  v11 = completionCopy;
  [dataSource groupContext:self fetchGroupWithID:dCopy completion:v12];
}

- (void)_qDidCreateGroup:(id)group
{
  v16 = *MEMORY[0x277D85DE8];
  groupCopy = group;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  _qObserverMiddlewares = [(ENGroupContext *)self _qObserverMiddlewares];
  v6 = [_qObserverMiddlewares countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(_qObserverMiddlewares);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 groupContext:self didCreateGroup:groupCopy];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [_qObserverMiddlewares countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)_qDidCacheGroup:(id)group
{
  v16 = *MEMORY[0x277D85DE8];
  groupCopy = group;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  _qObserverMiddlewares = [(ENGroupContext *)self _qObserverMiddlewares];
  v6 = [_qObserverMiddlewares countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(_qObserverMiddlewares);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 groupContext:self didCacheGroup:groupCopy];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [_qObserverMiddlewares countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)_qDidUpdateGroup:(id)group withGroup:(id)withGroup
{
  v19 = *MEMORY[0x277D85DE8];
  groupCopy = group;
  withGroupCopy = withGroup;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  _qObserverMiddlewares = [(ENGroupContext *)self _qObserverMiddlewares];
  v9 = [_qObserverMiddlewares countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(_qObserverMiddlewares);
        }

        v13 = *(*(&v14 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          [v13 groupContext:self didUpdateGroup:groupCopy withNewGroup:withGroupCopy];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [_qObserverMiddlewares countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

- (void)_qDidReceiveDecryptionFailureForGroup:(id)group
{
  v16 = *MEMORY[0x277D85DE8];
  groupCopy = group;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  _qObserverMiddlewares = [(ENGroupContext *)self _qObserverMiddlewares];
  v6 = [_qObserverMiddlewares countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(_qObserverMiddlewares);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 groupContext:self didReceiveDecryptionFailureForGroup:groupCopy];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [_qObserverMiddlewares countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)_qDidReceiveRegistrationIdentityUpdate
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = +[ENLog groupContext];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    _qObserverMiddlewares = [(ENGroupContext *)self _qObserverMiddlewares];
    *buf = 138543362;
    v17 = _qObserverMiddlewares;
    _os_log_impl(&dword_24A04B000, v3, OS_LOG_TYPE_INFO, "Did receive registration identity update {observerMiddlewares: %{public}@}", buf, 0xCu);
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  _qObserverMiddlewares2 = [(ENGroupContext *)self _qObserverMiddlewares];
  v6 = [_qObserverMiddlewares2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(_qObserverMiddlewares2);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 groupContextDidReceiveRegistrationIdentityUpdate:self];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [_qObserverMiddlewares2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

+ (id)_errorWithNotFoundItems:(id)items
{
  v27 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  if ([itemsCopy count])
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v5 = itemsCopy;
    v6 = [v5 countByEnumeratingWithState:&v18 objects:v26 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v19;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v19 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v18 + 1) + 8 * i);
          v11 = MEMORY[0x277CCA9B8];
          v24 = @"ENGroupContextErrorItemKey";
          v25 = v10;
          v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
          v13 = [v11 errorWithDomain:@"ENGroupContextErrorDomain" code:-2000 userInfo:v12];

          [v4 setObject:v13 forKey:v10];
        }

        v7 = [v5 countByEnumeratingWithState:&v18 objects:v26 count:16];
      }

      while (v7);
    }

    v14 = MEMORY[0x277CCA9B8];
    v22 = @"ENGroupContextErrorItemKey";
    v23 = v4;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v16 = [v14 errorWithDomain:@"ENGroupContextErrorDomain" code:-3000 userInfo:v15];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (id)_missingItemsInNotFoundError:(id)error remainingErrors:(id *)errors
{
  v51 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  v44 = _os_activity_create(&dword_24A04B000, "Find missing items in error", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v44, &state);
  v37 = errorCopy;
  if (!errorCopy)
  {
    v12 = +[ENLog groupContext];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v50 = 0;
      v13 = "No error -- Fail {error: %{public}@}";
LABEL_12:
      _os_log_impl(&dword_24A04B000, v12, OS_LOG_TYPE_DEFAULT, v13, buf, 0xCu);
    }

LABEL_13:
    v38 = MEMORY[0x277CBEBF8];
LABEL_14:

    v11 = v38;
    v10 = v11;
    goto LABEL_15;
  }

  domain = [errorCopy domain];
  v6 = [domain isEqualToString:@"ENGroupContextErrorDomain"];

  if (!v6)
  {
    v12 = +[ENLog groupContext];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v50 = v37;
      v13 = "Unexpected domain -- Fail {error: %{public}@}";
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  if ([v37 code] != -2000)
  {
    if ([v37 code] != -3000)
    {
      v12 = +[ENLog groupContext];
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      *buf = 138543362;
      v50 = v37;
      v13 = "Unexpected code -- Fail {error: %{public}@}";
      goto LABEL_12;
    }

    userInfo = [v37 userInfo];
    v35 = [userInfo objectForKeyedSubscript:@"ENGroupContextErrorItemKey"];

    if (!v35)
    {
      v16 = +[ENLog groupContext];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v50 = v37;
        _os_log_impl(&dword_24A04B000, v16, OS_LOG_TYPE_DEFAULT, "No items -- Fail {error: %{public}@}", buf, 0xCu);
      }

      v38 = MEMORY[0x277CBEBF8];
LABEL_57:

      v12 = v35;
      goto LABEL_14;
    }

    v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v38 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSObject count](v35, "count")}];
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v17 = v35;
    v18 = [v17 countByEnumeratingWithState:&v39 objects:v47 count:16];
    if (!v18)
    {
      goto LABEL_39;
    }

    v19 = *v40;
LABEL_22:
    v20 = 0;
    while (1)
    {
      if (*v40 != v19)
      {
        objc_enumerationMutation(v17);
      }

      v21 = *(*(&v39 + 1) + 8 * v20);
      domain2 = [v21 domain];
      if (![domain2 isEqualToString:@"ENGroupContextErrorDomain"])
      {
        break;
      }

      v23 = [v21 code] == -2000;

      if (!v23)
      {
        goto LABEL_30;
      }

      userInfo2 = [v21 userInfo];
      v25 = [userInfo2 objectForKeyedSubscript:@"ENGroupContextErrorItemKey"];

      if (v25)
      {
        [v38 addObject:v25];
      }

      else
      {
        v27 = +[ENLog groupContext];
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v50 = v21;
          _os_log_impl(&dword_24A04B000, v27, OS_LOG_TYPE_DEFAULT, "Missing item -- Ignore {suberror: %{public}@}", buf, 0xCu);
        }
      }

LABEL_37:
      if (v18 == ++v20)
      {
        v18 = [v17 countByEnumeratingWithState:&v39 objects:v47 count:16];
        if (!v18)
        {
LABEL_39:

          if ([v16 count])
          {
            v28 = +[ENLog groupContext];
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
            {
              v29 = [v16 count];
              *buf = 134217984;
              v50 = v29;
              _os_log_impl(&dword_24A04B000, v28, OS_LOG_TYPE_DEFAULT, "Found remaining errors {remainingErrors.count: %ld}", buf, 0xCu);
            }

            if (errors)
            {
              v30 = MEMORY[0x277CCA9B8];
              v45 = @"ENGroupContextErrorItemKey";
              v46 = v16;
              v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
              *errors = [v30 errorWithDomain:@"ENGroupContextErrorDomain" code:-3000 userInfo:v31];
            }

            else
            {
              v31 = +[ENLog groupContext];
              if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
              {
                v32 = [v16 count];
                *buf = 134217984;
                v50 = v32;
                _os_log_impl(&dword_24A04B000, v31, OS_LOG_TYPE_DEFAULT, "Ignorning remaining errors due to missing out error parameter {remainingErrors.count: %ld}", buf, 0xCu);
              }
            }
          }

          v33 = +[ENLog groupContext];
          if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
          {
            v34 = [v38 count];
            *buf = 134217984;
            v50 = v34;
            _os_log_impl(&dword_24A04B000, v33, OS_LOG_TYPE_INFO, "Found missing items -- Done {items.count: %ld}", buf, 0xCu);
          }

          goto LABEL_57;
        }

        goto LABEL_22;
      }
    }

LABEL_30:
    v26 = +[ENLog groupContext];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v50 = v21;
      _os_log_impl(&dword_24A04B000, v26, OS_LOG_TYPE_DEFAULT, "Unexpected error -- Collect {suberror: %{public}@}", buf, 0xCu);
    }

    [v16 addObject:v21];
    goto LABEL_37;
  }

  userInfo3 = [v37 userInfo];
  v8 = [userInfo3 objectForKeyedSubscript:@"ENGroupContextErrorItemKey"];

  if (!v8)
  {
    v12 = +[ENLog groupContext];
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    *buf = 138543362;
    v50 = v37;
    v13 = "Missing item -- Fail {error: %{public}@";
    goto LABEL_12;
  }

  v9 = +[ENLog groupContext];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v50 = v8;
    _os_log_impl(&dword_24A04B000, v9, OS_LOG_TYPE_INFO, "Found one item {item: %{public}@}", buf, 0xCu);
  }

  v48 = v8;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v48 count:1];

  v11 = MEMORY[0x277CBEBF8];
LABEL_15:

  os_activity_scope_leave(&state);
  cut_arc_os_release();

  return v10;
}

@end