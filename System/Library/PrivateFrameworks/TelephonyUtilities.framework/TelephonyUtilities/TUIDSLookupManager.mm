@interface TUIDSLookupManager
+ (BOOL)isAnyDestinationAvailableInDestinations:(id)destinations usingCache:(id)cache;
+ (TUIDSLookupManager)sharedManager;
+ (unsigned)fzHandleIDStatusForDestination:(id)destination usingCache:(id)cache;
- (BOOL)isAVLessSharePlayCapableForAnyDestinationInDestinations:(id)destinations;
- (BOOL)isFaceTimeAudioAvailableForAnyDestinationInDestinations:(id)destinations;
- (BOOL)isFaceTimeAudioAvailableForItem:(id)item;
- (BOOL)isFaceTimeMultiwayAvailableForAnyDestinationInDestinations:(id)destinations;
- (BOOL)isFaceTimeMultiwayAvailableForItem:(id)item;
- (BOOL)isFaceTimeVideoAvailableForAnyDestinationInDestinations:(id)destinations;
- (BOOL)isFaceTimeVideoAvailableForItem:(id)item;
- (BOOL)isModernFaceTimeAvailableForDestination:(id)destination;
- (BOOL)isNameAndPhotoAvailableForDestination:(id)destination;
- (BOOL)isVideoMessagingAvailableForAnyDestinationInDestinations:(id)destinations;
- (BOOL)isVideoMessagingAvailableForItem:(id)item;
- (BOOL)isWebCapableFaceTimeAvailableForDestination:(id)destination;
- (BOOL)isiMessageAvailableForAnyDestinationInDestinations:(id)destinations;
- (TUIDSBatchIDQueryController)batchQuerySearchAudioController;
- (TUIDSBatchIDQueryController)batchQuerySearchMultiwayController;
- (TUIDSBatchIDQueryController)batchQuerySearchShareNameAndPhotoController;
- (TUIDSBatchIDQueryController)batchQuerySearchVideoController;
- (TUIDSBatchIDQueryController)batchQuerySearchVideoMessagingController;
- (TUIDSBatchIDQueryController)batchQuerySearchiMessageController;
- (TUIDSLookupManager)init;
- (TUIDSLookupManager)initWithQueryController:(id)controller batchQueryControllerCreationBlock:(id)block;
- (id)preferredFromID;
- (unsigned)faceTimeAudioAvailabilityForDestination:(id)destination;
- (unsigned)faceTimeMultiwayAvailabilityForDestination:(id)destination;
- (unsigned)faceTimeVideoAvailabilityForDestination:(id)destination;
- (void)batchQueryController:(id)controller updatedDestinationsStatus:(id)status onService:(id)service error:(id)error;
- (void)beginBatchQueryWithDestinations:(id)destinations includeMessages:(BOOL)messages;
- (void)beginBatchQueryWithDestinations:(id)destinations services:(unint64_t)services;
- (void)beginCachedQueryWithDestinations:(id)destinations includeMessages:(BOOL)messages;
- (void)beginCachedQueryWithDestinations:(id)destinations onService:(id)service;
- (void)beginCachedQueryWithDestinations:(id)destinations services:(unint64_t)services;
- (void)beginQueryWithDestination:(id)destination onService:(id)service;
- (void)beginQueryWithDestinations:(id)destinations includeMessages:(BOOL)messages;
- (void)beginQueryWithDestinations:(id)destinations services:(unint64_t)services;
- (void)beginQueryWithRefreshForDestination:(id)destination onService:(id)service;
- (void)cancelQueries;
- (void)dealloc;
- (void)filteredDestinationForMultiway:(id)multiway completionBlock:(id)block;
- (void)handleIDSQueryResultWithDestinationStatus:(id)status onService:(id)service;
- (void)postStatusChangedNotification;
- (void)queryHasEndpointWithCapabilities:(id)capabilities forMultiwayDestinations:(id)destinations completionBlock:(id)block;
- (void)queryHasWebOnlyEndpointsForDestinations:(id)destinations completionBlock:(id)block;
@end

@implementation TUIDSLookupManager

+ (TUIDSLookupManager)sharedManager
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__TUIDSLookupManager_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedManager_onceToken != -1)
  {
    dispatch_once(&sharedManager_onceToken, block);
  }

  v2 = sharedManager_sharedManager;

  return v2;
}

- (id)preferredFromID
{
  v2 = +[TUCallCapabilities outgoingRelayCallerID];
  v3 = [objc_alloc(MEMORY[0x1E69A5428]) initWithUnprefixedURI:v2];

  return v3;
}

- (void)postStatusChangedNotification
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__TUIDSLookupManager_postStatusChangedNotification__block_invoke;
  block[3] = &unk_1E7424950;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __51__TUIDSLookupManager_postStatusChangedNotification__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"TUIDSLookupManagerStatusChangedNotification" object:*(a1 + 32)];
}

uint64_t __35__TUIDSLookupManager_sharedManager__block_invoke(uint64_t a1)
{
  sharedManager_sharedManager = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x1EEE66BB8]();
}

- (TUIDSLookupManager)init
{
  if (TUSimulatedModeEnabled())
  {
    mEMORY[0x1E69A4878] = objc_alloc_init(TUSimulatedIDSIDQueryController);
    v4 = &__block_literal_global_35;
  }

  else
  {
    mEMORY[0x1E69A4878] = [MEMORY[0x1E69A4878] sharedInstance];
    v4 = &__block_literal_global_63_2;
  }

  v5 = [(TUIDSLookupManager *)self initWithQueryController:mEMORY[0x1E69A4878] batchQueryControllerCreationBlock:v4];

  return v5;
}

TUSimulatedIDSBatchIDQueryController *__26__TUIDSLookupManager_init__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  v8 = a2;
  v9 = [[TUSimulatedIDSBatchIDQueryController alloc] initWithService:v8 delegate:v7 queue:v6];

  return v9;
}

id __26__TUIDSLookupManager_init__block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = MEMORY[0x1E69A4840];
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v10 = [[v6 alloc] initWithService:v9 delegate:v8 queue:v7];

  return v10;
}

- (TUIDSLookupManager)initWithQueryController:(id)controller batchQueryControllerCreationBlock:(id)block
{
  controllerCopy = controller;
  blockCopy = block;
  v53.receiver = self;
  v53.super_class = TUIDSLookupManager;
  v9 = [(TUIDSLookupManager *)&v53 init];
  if (v9)
  {
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_attr_make_with_qos_class(v10, QOS_CLASS_USER_INITIATED, 0);
    v12 = dispatch_queue_create("com.apple.telephonyutilities.callservicesd.tuidslookupmanager", v11);
    queue = v9->_queue;
    v9->_queue = v12;

    objc_storeStrong(&v9->_queryController, controller);
    v14 = _Block_copy(blockCopy);
    batchQueryControllerCreationBlock = v9->_batchQueryControllerCreationBlock;
    v9->_batchQueryControllerCreationBlock = v14;

    v16 = [TULocked alloc];
    dictionary = [MEMORY[0x1E695DF20] dictionary];
    v18 = [(TULocked *)v16 initWithObject:dictionary];
    idsFaceTimeVideoStatuses = v9->_idsFaceTimeVideoStatuses;
    v9->_idsFaceTimeVideoStatuses = v18;

    v20 = [TULocked alloc];
    dictionary2 = [MEMORY[0x1E695DF20] dictionary];
    v22 = [(TULocked *)v20 initWithObject:dictionary2];
    idsFaceTimeAudioStatuses = v9->_idsFaceTimeAudioStatuses;
    v9->_idsFaceTimeAudioStatuses = v22;

    v24 = [TULocked alloc];
    dictionary3 = [MEMORY[0x1E695DF20] dictionary];
    v26 = [(TULocked *)v24 initWithObject:dictionary3];
    idsFaceTimeMultiwayStatuses = v9->_idsFaceTimeMultiwayStatuses;
    v9->_idsFaceTimeMultiwayStatuses = v26;

    v28 = [TULocked alloc];
    dictionary4 = [MEMORY[0x1E695DF20] dictionary];
    v30 = [(TULocked *)v28 initWithObject:dictionary4];
    idsVideoMessagingStatuses = v9->_idsVideoMessagingStatuses;
    v9->_idsVideoMessagingStatuses = v30;

    v32 = [TULocked alloc];
    dictionary5 = [MEMORY[0x1E695DF20] dictionary];
    v34 = [(TULocked *)v32 initWithObject:dictionary5];
    idsiMessageStatuses = v9->_idsiMessageStatuses;
    v9->_idsiMessageStatuses = v34;

    v36 = [TULocked alloc];
    v37 = [MEMORY[0x1E695DFD8] set];
    v38 = [(TULocked *)v36 initWithObject:v37];
    idsModernStatuses = v9->_idsModernStatuses;
    v9->_idsModernStatuses = v38;

    v40 = [TULocked alloc];
    v41 = [MEMORY[0x1E695DFD8] set];
    v42 = [(TULocked *)v40 initWithObject:v41];
    idsWebCapableStatuses = v9->_idsWebCapableStatuses;
    v9->_idsWebCapableStatuses = v42;

    v44 = [TULocked alloc];
    v45 = [MEMORY[0x1E695DFD8] set];
    v46 = [(TULocked *)v44 initWithObject:v45];
    idsAVLessSharePlayCapableStatuses = v9->_idsAVLessSharePlayCapableStatuses;
    v9->_idsAVLessSharePlayCapableStatuses = v46;

    v48 = [TULocked alloc];
    dictionary6 = [MEMORY[0x1E695DF20] dictionary];
    v50 = [(TULocked *)v48 initWithObject:dictionary6];
    idsNameAndPhotoStatuses = v9->_idsNameAndPhotoStatuses;
    v9->_idsNameAndPhotoStatuses = v50;
  }

  return v9;
}

- (void)dealloc
{
  [(TUIDSLookupManager *)self cancelQueries];
  v3.receiver = self;
  v3.super_class = TUIDSLookupManager;
  [(TUIDSLookupManager *)&v3 dealloc];
}

- (TUIDSBatchIDQueryController)batchQuerySearchVideoController
{
  queue = [(TUIDSLookupManager *)self queue];
  dispatch_assert_queue_V2(queue);

  batchQuerySearchVideoController = self->_batchQuerySearchVideoController;
  if (!batchQuerySearchVideoController)
  {
    batchQueryControllerCreationBlock = [(TUIDSLookupManager *)self batchQueryControllerCreationBlock];
    v6 = *MEMORY[0x1E69A47F0];
    queue2 = [(TUIDSLookupManager *)self queue];
    v8 = (batchQueryControllerCreationBlock)[2](batchQueryControllerCreationBlock, v6, self, queue2);
    v9 = self->_batchQuerySearchVideoController;
    self->_batchQuerySearchVideoController = v8;

    batchQuerySearchVideoController = self->_batchQuerySearchVideoController;
  }

  return batchQuerySearchVideoController;
}

- (TUIDSBatchIDQueryController)batchQuerySearchAudioController
{
  queue = [(TUIDSLookupManager *)self queue];
  dispatch_assert_queue_V2(queue);

  batchQuerySearchAudioController = self->_batchQuerySearchAudioController;
  if (!batchQuerySearchAudioController)
  {
    batchQueryControllerCreationBlock = [(TUIDSLookupManager *)self batchQueryControllerCreationBlock];
    v6 = *MEMORY[0x1E69A47E8];
    queue2 = [(TUIDSLookupManager *)self queue];
    v8 = (batchQueryControllerCreationBlock)[2](batchQueryControllerCreationBlock, v6, self, queue2);
    v9 = self->_batchQuerySearchAudioController;
    self->_batchQuerySearchAudioController = v8;

    batchQuerySearchAudioController = self->_batchQuerySearchAudioController;
  }

  return batchQuerySearchAudioController;
}

- (TUIDSBatchIDQueryController)batchQuerySearchMultiwayController
{
  queue = [(TUIDSLookupManager *)self queue];
  dispatch_assert_queue_V2(queue);

  batchQuerySearchMultiwayController = self->_batchQuerySearchMultiwayController;
  if (!batchQuerySearchMultiwayController)
  {
    batchQueryControllerCreationBlock = [(TUIDSLookupManager *)self batchQueryControllerCreationBlock];
    v6 = *MEMORY[0x1E69A47F8];
    queue2 = [(TUIDSLookupManager *)self queue];
    v8 = (batchQueryControllerCreationBlock)[2](batchQueryControllerCreationBlock, v6, self, queue2);
    v9 = self->_batchQuerySearchMultiwayController;
    self->_batchQuerySearchMultiwayController = v8;

    batchQuerySearchMultiwayController = self->_batchQuerySearchMultiwayController;
  }

  return batchQuerySearchMultiwayController;
}

- (TUIDSBatchIDQueryController)batchQuerySearchVideoMessagingController
{
  queue = [(TUIDSLookupManager *)self queue];
  dispatch_assert_queue_V2(queue);

  batchQuerySearchVideoMessagingController = self->_batchQuerySearchVideoMessagingController;
  if (!batchQuerySearchVideoMessagingController)
  {
    batchQueryControllerCreationBlock = [(TUIDSLookupManager *)self batchQueryControllerCreationBlock];
    queue2 = [(TUIDSLookupManager *)self queue];
    v7 = (batchQueryControllerCreationBlock)[2](batchQueryControllerCreationBlock, @"com.apple.private.alloy.facetime.messaging", self, queue2);
    v8 = self->_batchQuerySearchVideoMessagingController;
    self->_batchQuerySearchVideoMessagingController = v7;

    batchQuerySearchVideoMessagingController = self->_batchQuerySearchVideoMessagingController;
  }

  return batchQuerySearchVideoMessagingController;
}

- (TUIDSBatchIDQueryController)batchQuerySearchiMessageController
{
  queue = [(TUIDSLookupManager *)self queue];
  dispatch_assert_queue_V2(queue);

  batchQuerySearchiMessageController = self->_batchQuerySearchiMessageController;
  if (!batchQuerySearchiMessageController)
  {
    batchQueryControllerCreationBlock = [(TUIDSLookupManager *)self batchQueryControllerCreationBlock];
    v6 = *MEMORY[0x1E69A4818];
    queue2 = [(TUIDSLookupManager *)self queue];
    v8 = (batchQueryControllerCreationBlock)[2](batchQueryControllerCreationBlock, v6, self, queue2);
    v9 = self->_batchQuerySearchiMessageController;
    self->_batchQuerySearchiMessageController = v8;

    batchQuerySearchiMessageController = self->_batchQuerySearchiMessageController;
  }

  return batchQuerySearchiMessageController;
}

- (TUIDSBatchIDQueryController)batchQuerySearchShareNameAndPhotoController
{
  queue = [(TUIDSLookupManager *)self queue];
  dispatch_assert_queue_V2(queue);

  batchQuerySearchShareNameAndPhotoController = self->_batchQuerySearchShareNameAndPhotoController;
  if (!batchQuerySearchShareNameAndPhotoController)
  {
    batchQueryControllerCreationBlock = [(TUIDSLookupManager *)self batchQueryControllerCreationBlock];
    queue2 = [(TUIDSLookupManager *)self queue];
    v7 = (batchQueryControllerCreationBlock)[2](batchQueryControllerCreationBlock, @"com.apple.private.alloy.nameandphoto", self, queue2);
    v8 = self->_batchQuerySearchShareNameAndPhotoController;
    self->_batchQuerySearchShareNameAndPhotoController = v7;

    batchQuerySearchShareNameAndPhotoController = self->_batchQuerySearchShareNameAndPhotoController;
  }

  return batchQuerySearchShareNameAndPhotoController;
}

- (BOOL)isFaceTimeVideoAvailableForItem:(id)item
{
  idsCanonicalDestinations = [item idsCanonicalDestinations];
  LOBYTE(self) = [(TUIDSLookupManager *)self isFaceTimeVideoAvailableForAnyDestinationInDestinations:idsCanonicalDestinations];

  return self;
}

- (BOOL)isFaceTimeAudioAvailableForItem:(id)item
{
  idsCanonicalDestinations = [item idsCanonicalDestinations];
  LOBYTE(self) = [(TUIDSLookupManager *)self isFaceTimeAudioAvailableForAnyDestinationInDestinations:idsCanonicalDestinations];

  return self;
}

- (BOOL)isFaceTimeMultiwayAvailableForItem:(id)item
{
  idsCanonicalDestinations = [item idsCanonicalDestinations];
  LOBYTE(self) = [(TUIDSLookupManager *)self isFaceTimeMultiwayAvailableForAnyDestinationInDestinations:idsCanonicalDestinations];

  return self;
}

- (BOOL)isVideoMessagingAvailableForItem:(id)item
{
  idsCanonicalDestinations = [item idsCanonicalDestinations];
  LOBYTE(self) = [(TUIDSLookupManager *)self isVideoMessagingAvailableForAnyDestinationInDestinations:idsCanonicalDestinations];

  return self;
}

- (BOOL)isFaceTimeVideoAvailableForAnyDestinationInDestinations:(id)destinations
{
  destinationsCopy = destinations;
  v5 = objc_opt_class();
  idsFaceTimeVideoStatuses = [(TUIDSLookupManager *)self idsFaceTimeVideoStatuses];
  LOBYTE(v5) = [v5 isAnyDestinationAvailableInDestinations:destinationsCopy usingCache:idsFaceTimeVideoStatuses];

  return v5;
}

- (BOOL)isFaceTimeAudioAvailableForAnyDestinationInDestinations:(id)destinations
{
  destinationsCopy = destinations;
  v5 = objc_opt_class();
  idsFaceTimeAudioStatuses = [(TUIDSLookupManager *)self idsFaceTimeAudioStatuses];
  LOBYTE(v5) = [v5 isAnyDestinationAvailableInDestinations:destinationsCopy usingCache:idsFaceTimeAudioStatuses];

  return v5;
}

- (BOOL)isFaceTimeMultiwayAvailableForAnyDestinationInDestinations:(id)destinations
{
  destinationsCopy = destinations;
  v5 = objc_opt_class();
  idsFaceTimeMultiwayStatuses = [(TUIDSLookupManager *)self idsFaceTimeMultiwayStatuses];
  LOBYTE(v5) = [v5 isAnyDestinationAvailableInDestinations:destinationsCopy usingCache:idsFaceTimeMultiwayStatuses];

  return v5;
}

- (BOOL)isVideoMessagingAvailableForAnyDestinationInDestinations:(id)destinations
{
  destinationsCopy = destinations;
  v5 = objc_opt_class();
  idsVideoMessagingStatuses = [(TUIDSLookupManager *)self idsVideoMessagingStatuses];
  LOBYTE(v5) = [v5 isAnyDestinationAvailableInDestinations:destinationsCopy usingCache:idsVideoMessagingStatuses];

  return v5;
}

- (BOOL)isiMessageAvailableForAnyDestinationInDestinations:(id)destinations
{
  destinationsCopy = destinations;
  v5 = objc_opt_class();
  idsiMessageStatuses = [(TUIDSLookupManager *)self idsiMessageStatuses];
  LOBYTE(v5) = [v5 isAnyDestinationAvailableInDestinations:destinationsCopy usingCache:idsiMessageStatuses];

  return v5;
}

- (BOOL)isAVLessSharePlayCapableForAnyDestinationInDestinations:(id)destinations
{
  destinationsCopy = destinations;
  idsAVLessSharePlayCapableStatuses = [(TUIDSLookupManager *)self idsAVLessSharePlayCapableStatuses];
  object = [idsAVLessSharePlayCapableStatuses object];
  v7 = [object intersectsSet:destinationsCopy];

  return v7;
}

- (unsigned)faceTimeAudioAvailabilityForDestination:(id)destination
{
  destinationCopy = destination;
  v5 = objc_opt_class();
  idsFaceTimeAudioStatuses = [(TUIDSLookupManager *)self idsFaceTimeAudioStatuses];
  LODWORD(v5) = [v5 fzHandleIDStatusForDestination:destinationCopy usingCache:idsFaceTimeAudioStatuses];

  return v5;
}

- (unsigned)faceTimeVideoAvailabilityForDestination:(id)destination
{
  destinationCopy = destination;
  v5 = objc_opt_class();
  idsFaceTimeVideoStatuses = [(TUIDSLookupManager *)self idsFaceTimeVideoStatuses];
  LODWORD(v5) = [v5 fzHandleIDStatusForDestination:destinationCopy usingCache:idsFaceTimeVideoStatuses];

  return v5;
}

- (unsigned)faceTimeMultiwayAvailabilityForDestination:(id)destination
{
  destinationCopy = destination;
  v5 = objc_opt_class();
  idsFaceTimeMultiwayStatuses = [(TUIDSLookupManager *)self idsFaceTimeMultiwayStatuses];
  LODWORD(v5) = [v5 fzHandleIDStatusForDestination:destinationCopy usingCache:idsFaceTimeMultiwayStatuses];

  return v5;
}

- (BOOL)isModernFaceTimeAvailableForDestination:(id)destination
{
  destinationCopy = destination;
  idsModernStatuses = [(TUIDSLookupManager *)self idsModernStatuses];
  object = [idsModernStatuses object];
  v7 = [object containsObject:destinationCopy];

  return v7;
}

- (BOOL)isWebCapableFaceTimeAvailableForDestination:(id)destination
{
  destinationCopy = destination;
  idsWebCapableStatuses = [(TUIDSLookupManager *)self idsWebCapableStatuses];
  object = [idsWebCapableStatuses object];
  v7 = [object containsObject:destinationCopy];

  return v7;
}

- (BOOL)isNameAndPhotoAvailableForDestination:(id)destination
{
  destinationCopy = destination;
  v5 = objc_opt_class();
  idsNameAndPhotoStatuses = [(TUIDSLookupManager *)self idsNameAndPhotoStatuses];
  LOBYTE(v5) = [v5 isAnyDestinationAvailableInDestinations:destinationCopy usingCache:idsNameAndPhotoStatuses];

  return v5;
}

- (void)cancelQueries
{
  queue = [(TUIDSLookupManager *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__TUIDSLookupManager_cancelQueries__block_invoke;
  block[3] = &unk_1E7424950;
  block[4] = self;
  dispatch_async(queue, block);
}

void __35__TUIDSLookupManager_cancelQueries__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) idsFaceTimeVideoStatuses];
  v3 = MEMORY[0x1E695E0F8];
  [v2 setObject:MEMORY[0x1E695E0F8]];

  v4 = [*(a1 + 32) idsFaceTimeAudioStatuses];
  [v4 setObject:v3];

  v5 = [*(a1 + 32) idsFaceTimeMultiwayStatuses];
  [v5 setObject:v3];

  v6 = [*(a1 + 32) idsiMessageStatuses];
  [v6 setObject:v3];

  v7 = [*(a1 + 32) idsModernStatuses];
  v8 = [MEMORY[0x1E695DFD8] set];
  [v7 setObject:v8];

  v9 = [*(a1 + 32) idsWebCapableStatuses];
  v10 = [MEMORY[0x1E695DFD8] set];
  [v9 setObject:v10];

  v11 = [*(a1 + 32) idsAVLessSharePlayCapableStatuses];
  v12 = [MEMORY[0x1E695DFD8] set];
  [v11 setObject:v12];

  [*(*(a1 + 32) + 96) invalidate];
  v13 = *(a1 + 32);
  v14 = *(v13 + 96);
  *(v13 + 96) = 0;

  [*(*(a1 + 32) + 104) invalidate];
  v15 = *(a1 + 32);
  v16 = *(v15 + 104);
  *(v15 + 104) = 0;

  [*(*(a1 + 32) + 112) invalidate];
  v17 = *(a1 + 32);
  v18 = *(v17 + 112);
  *(v17 + 112) = 0;

  [*(*(a1 + 32) + 128) invalidate];
  v19 = *(a1 + 32);
  v20 = *(v19 + 128);
  *(v19 + 128) = 0;

  [*(*(a1 + 32) + 136) invalidate];
  v21 = *(a1 + 32);
  v22 = *(v21 + 136);
  *(v21 + 136) = 0;
}

- (void)beginQueryWithDestinations:(id)destinations includeMessages:(BOOL)messages
{
  if (messages)
  {
    v4 = 63;
  }

  else
  {
    v4 = 47;
  }

  [(TUIDSLookupManager *)self beginQueryWithDestinations:destinations services:v4];
}

- (void)beginQueryWithDestinations:(id)destinations services:(unint64_t)services
{
  v17 = *MEMORY[0x1E69E9840];
  destinationsCopy = destinations;
  v7 = TUDefaultLog(destinationsCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v14 = destinationsCopy;
    v15 = 2048;
    servicesCopy = services;
    _os_log_impl(&dword_1956FD000, v7, OS_LOG_TYPE_DEFAULT, "[TUIDSLookupManager:beginQueryWithDestinations] destinations=%@, services=%lu", buf, 0x16u);
  }

  queue = [(TUIDSLookupManager *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__TUIDSLookupManager_beginQueryWithDestinations_services___block_invoke;
  block[3] = &unk_1E7425028;
  v11 = destinationsCopy;
  servicesCopy2 = services;
  block[4] = self;
  v9 = destinationsCopy;
  dispatch_async(queue, block);
}

id *__58__TUIDSLookupManager_beginQueryWithDestinations_services___block_invoke(id *result)
{
  v1 = result;
  v2 = result[6];
  if (v2)
  {
    result = [result[4] beginQueryWithDestination:result[5] onService:*MEMORY[0x1E69A47E8]];
    v2 = v1[6];
    if ((v2 & 2) == 0)
    {
LABEL_3:
      if ((v2 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = [v1[4] beginQueryWithDestination:v1[5] onService:*MEMORY[0x1E69A47F0]];
  v2 = v1[6];
  if ((v2 & 4) == 0)
  {
LABEL_4:
    if ((v2 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  result = [v1[4] beginQueryWithDestination:v1[5] onService:*MEMORY[0x1E69A47F8]];
  v2 = v1[6];
  if ((v2 & 8) == 0)
  {
LABEL_5:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    result = [v1[4] beginQueryWithDestination:v1[5] onService:@"com.apple.private.alloy.nameandphoto"];
    if ((v1[6] & 0x10) == 0)
    {
      return result;
    }

    goto LABEL_13;
  }

LABEL_11:
  result = [v1[4] beginQueryWithDestination:v1[5] onService:@"com.apple.private.alloy.facetime.messaging"];
  v2 = v1[6];
  if ((v2 & 0x20) != 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  if ((v2 & 0x10) == 0)
  {
    return result;
  }

LABEL_13:
  v3 = v1[4];
  v4 = v1[5];
  v5 = *MEMORY[0x1E69A4818];

  return [v3 beginQueryWithDestination:v4 onService:v5];
}

- (void)beginQueryWithDestination:(id)destination onService:(id)service
{
  v28 = *MEMORY[0x1E69E9840];
  destinationCopy = destination;
  serviceCopy = service;
  v8 = TUDefaultLog(serviceCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v25 = destinationCopy;
    v26 = 2112;
    v27 = serviceCopy;
    _os_log_impl(&dword_1956FD000, v8, OS_LOG_TYPE_DEFAULT, "[TUIDSLookupManager:beginQueryWithDestination] destinations=%@, services=%@", buf, 0x16u);
  }

  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __58__TUIDSLookupManager_beginQueryWithDestination_onService___block_invoke;
  v21 = &unk_1E7426658;
  selfCopy = self;
  v9 = serviceCopy;
  v23 = v9;
  v10 = _Block_copy(&v18);
  v11 = [(TUIDSLookupManager *)self preferredFromID:v18];
  queryController = [(TUIDSLookupManager *)self queryController];
  v13 = objc_opt_respondsToSelector();

  queryController2 = [(TUIDSLookupManager *)self queryController];
  allObjects = [destinationCopy allObjects];
  v16 = *MEMORY[0x1E69A4800];
  queue = [(TUIDSLookupManager *)self queue];
  if (v13)
  {
    [queryController2 requiredIDStatusForDestinations:allObjects service:v9 preferredFromID:v11 listenerID:v16 queue:queue completionBlock:v10];
  }

  else
  {
    [queryController2 refreshIDStatusForDestinations:allObjects service:v9 preferredFromID:v11 listenerID:v16 queue:queue completionBlock:v10];
  }
}

- (void)beginQueryWithRefreshForDestination:(id)destination onService:(id)service
{
  serviceCopy = service;
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __68__TUIDSLookupManager_beginQueryWithRefreshForDestination_onService___block_invoke;
  v20 = &unk_1E7426658;
  selfCopy = self;
  v22 = serviceCopy;
  v7 = serviceCopy;
  destinationCopy = destination;
  v9 = _Block_copy(&v17);
  v10 = [v7 isEqualToString:{@"com.apple.private.alloy.nameandphoto", v17, v18, v19, v20, selfCopy}];
  v11 = TUBundleIdentifierNameAndPhotoUtilities;
  if (!v10)
  {
    v11 = MEMORY[0x1E69A4800];
  }

  v12 = *v11;
  queryController = [(TUIDSLookupManager *)self queryController];
  allObjects = [destinationCopy allObjects];

  preferredFromID = [(TUIDSLookupManager *)self preferredFromID];
  queue = [(TUIDSLookupManager *)self queue];
  [queryController refreshIDStatusForDestinations:allObjects service:v7 preferredFromID:preferredFromID listenerID:v12 queue:queue completionBlock:v9];
}

- (void)beginBatchQueryWithDestinations:(id)destinations includeMessages:(BOOL)messages
{
  if (messages)
  {
    v4 = 63;
  }

  else
  {
    v4 = 47;
  }

  [(TUIDSLookupManager *)self beginBatchQueryWithDestinations:destinations services:v4];
}

- (void)beginBatchQueryWithDestinations:(id)destinations services:(unint64_t)services
{
  v17 = *MEMORY[0x1E69E9840];
  destinationsCopy = destinations;
  v7 = TUDefaultLog(destinationsCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v14 = destinationsCopy;
    v15 = 2048;
    servicesCopy = services;
    _os_log_impl(&dword_1956FD000, v7, OS_LOG_TYPE_DEFAULT, "[TUIDSLookupManager:beginBatchQueryWithDestinations] destinations=%@, services=%lu", buf, 0x16u);
  }

  queue = [(TUIDSLookupManager *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__TUIDSLookupManager_beginBatchQueryWithDestinations_services___block_invoke;
  block[3] = &unk_1E7425028;
  v11 = destinationsCopy;
  servicesCopy2 = services;
  block[4] = self;
  v9 = destinationsCopy;
  dispatch_async(queue, block);
}

void __63__TUIDSLookupManager_beginBatchQueryWithDestinations_services___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    v9 = [*(a1 + 32) batchQuerySearchAudioController];
    v10 = [*(a1 + 40) allObjects];
    [v9 setDestinations:v10];

    v2 = *(a1 + 48);
    if ((v2 & 2) == 0)
    {
LABEL_3:
      if ((v2 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_3;
  }

  v11 = [*(a1 + 32) batchQuerySearchVideoController];
  v12 = [*(a1 + 40) allObjects];
  [v11 setDestinations:v12];

  v2 = *(a1 + 48);
  if ((v2 & 4) == 0)
  {
LABEL_4:
    if ((v2 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  v13 = [*(a1 + 32) batchQuerySearchMultiwayController];
  v14 = [*(a1 + 40) allObjects];
  [v13 setDestinations:v14];

  v2 = *(a1 + 48);
  if ((v2 & 8) == 0)
  {
LABEL_5:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  v15 = [*(a1 + 32) batchQuerySearchVideoMessagingController];
  v16 = [*(a1 + 40) allObjects];
  [v15 setDestinations:v16];

  v2 = *(a1 + 48);
  if ((v2 & 0x20) == 0)
  {
LABEL_6:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  v17 = [*(a1 + 32) batchQuerySearchShareNameAndPhotoController];
  v18 = [*(a1 + 40) allObjects];
  [v17 setDestinations:v18];

  if ((*(a1 + 48) & 0x10) != 0)
  {
LABEL_7:
    v3 = [*(a1 + 32) batchQuerySearchiMessageController];
    v4 = [*(a1 + 40) allObjects];
    [v3 setDestinations:v4];
  }

LABEL_8:
  v19 = [*(a1 + 32) queryController];
  v5 = [*(a1 + 40) allObjects];
  v6 = *MEMORY[0x1E69A4800];
  v7 = [*(a1 + 32) preferredFromID];
  v8 = [*(a1 + 32) queue];
  [v19 currentIDStatusForDestinations:v5 service:v6 preferredFromID:v7 listenerID:@"com.apple.TelephonyUtilities" queue:v8 completionBlock:&__block_literal_global_84];
}

- (void)beginCachedQueryWithDestinations:(id)destinations includeMessages:(BOOL)messages
{
  if (messages)
  {
    v4 = 63;
  }

  else
  {
    v4 = 47;
  }

  [(TUIDSLookupManager *)self beginCachedQueryWithDestinations:destinations services:v4];
}

- (void)beginCachedQueryWithDestinations:(id)destinations services:(unint64_t)services
{
  destinationsCopy = destinations;
  queue = [(TUIDSLookupManager *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__TUIDSLookupManager_beginCachedQueryWithDestinations_services___block_invoke;
  block[3] = &unk_1E7425028;
  v10 = destinationsCopy;
  servicesCopy = services;
  block[4] = self;
  v8 = destinationsCopy;
  dispatch_async(queue, block);
}

id *__64__TUIDSLookupManager_beginCachedQueryWithDestinations_services___block_invoke(id *result)
{
  v1 = result;
  v2 = result[6];
  if (v2)
  {
    result = [result[4] beginCachedQueryWithDestinations:result[5] onService:*MEMORY[0x1E69A47E8]];
    v2 = v1[6];
    if ((v2 & 2) == 0)
    {
LABEL_3:
      if ((v2 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = [v1[4] beginCachedQueryWithDestinations:v1[5] onService:*MEMORY[0x1E69A47F0]];
  v2 = v1[6];
  if ((v2 & 4) == 0)
  {
LABEL_4:
    if ((v2 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  result = [v1[4] beginCachedQueryWithDestinations:v1[5] onService:*MEMORY[0x1E69A47F8]];
  v2 = v1[6];
  if ((v2 & 8) == 0)
  {
LABEL_5:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    result = [v1[4] beginCachedQueryWithDestinations:v1[5] onService:@"com.apple.private.alloy.nameandphoto"];
    if ((v1[6] & 0x10) == 0)
    {
      return result;
    }

    goto LABEL_13;
  }

LABEL_11:
  result = [v1[4] beginCachedQueryWithDestinations:v1[5] onService:@"com.apple.private.alloy.facetime.messaging"];
  v2 = v1[6];
  if ((v2 & 0x20) != 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  if ((v2 & 0x10) == 0)
  {
    return result;
  }

LABEL_13:
  v3 = v1[4];
  v4 = v1[5];
  v5 = *MEMORY[0x1E69A4818];

  return [v3 beginCachedQueryWithDestinations:v4 onService:v5];
}

- (void)beginCachedQueryWithDestinations:(id)destinations onService:(id)service
{
  serviceCopy = service;
  destinationsCopy = destinations;
  queryController = [(TUIDSLookupManager *)self queryController];
  allObjects = [destinationsCopy allObjects];

  preferredFromID = [(TUIDSLookupManager *)self preferredFromID];
  queue = [(TUIDSLookupManager *)self queue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __65__TUIDSLookupManager_beginCachedQueryWithDestinations_onService___block_invoke;
  v13[3] = &unk_1E7426658;
  v13[4] = self;
  v14 = serviceCopy;
  v12 = serviceCopy;
  [queryController currentIDStatusForDestinations:allObjects service:v12 preferredFromID:preferredFromID listenerID:@"com.apple.TelephonyUtilities" queue:queue completionBlock:v13];
}

void __65__TUIDSLookupManager_beginCachedQueryWithDestinations_onService___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 mutableCopy];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = [v5 objectForKeyedSubscript:{v10, v13}];
        v12 = [v11 isEqual:&unk_1F09C6010];

        if ((v12 & 1) == 0)
        {
          [v4 removeObjectForKey:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  [*(a1 + 32) handleIDSQueryResultWithDestinationStatus:v4 onService:*(a1 + 40)];
}

+ (BOOL)isAnyDestinationAvailableInDestinations:(id)destinations usingCache:(id)cache
{
  v19 = *MEMORY[0x1E69E9840];
  destinationsCopy = destinations;
  object = [cache object];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = destinationsCopy;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = *v15;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = [object objectForKeyedSubscript:{*(*(&v14 + 1) + 8 * i), v14}];
        v12 = v11;
        if (v11 && [v11 integerValue] == 1)
        {

          LOBYTE(v8) = 1;
          goto LABEL_12;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v8;
}

+ (unsigned)fzHandleIDStatusForDestination:(id)destination usingCache:(id)cache
{
  destinationCopy = destination;
  object = [cache object];
  v7 = [object objectForKeyedSubscript:destinationCopy];

  if (v7)
  {
    unsignedIntValue = [v7 unsignedIntValue];
  }

  else
  {
    unsignedIntValue = 0;
  }

  return unsignedIntValue;
}

- (void)batchQueryController:(id)controller updatedDestinationsStatus:(id)status onService:(id)service error:(id)error
{
  v16 = *MEMORY[0x1E69E9840];
  statusCopy = status;
  serviceCopy = service;
  v10 = TUDefaultLog(serviceCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = TULoggableStringForObject(statusCopy);
    v12 = 138412546;
    v13 = serviceCopy;
    v14 = 2112;
    v15 = v11;
    _os_log_impl(&dword_1956FD000, v10, OS_LOG_TYPE_DEFAULT, "Received query status response for service %@: %@", &v12, 0x16u);
  }

  [(TUIDSLookupManager *)self handleIDSQueryResultWithDestinationStatus:statusCopy onService:serviceCopy];
}

- (void)handleIDSQueryResultWithDestinationStatus:(id)status onService:(id)service
{
  statusCopy = status;
  serviceCopy = service;
  if ([serviceCopy isEqualToString:*MEMORY[0x1E69A47E8]])
  {
    idsFaceTimeAudioStatuses = [(TUIDSLookupManager *)self idsFaceTimeAudioStatuses];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __74__TUIDSLookupManager_handleIDSQueryResultWithDestinationStatus_onService___block_invoke;
    v28[3] = &unk_1E7426658;
    v29 = statusCopy;
    selfCopy = self;
    [idsFaceTimeAudioStatuses performWhileLocked:v28];

    [(TUIDSLookupManager *)self postStatusChangedNotification];
    v9 = v29;
LABEL_13:

    goto LABEL_14;
  }

  if ([serviceCopy isEqualToString:*MEMORY[0x1E69A47F0]])
  {
    idsFaceTimeVideoStatuses = [(TUIDSLookupManager *)self idsFaceTimeVideoStatuses];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __74__TUIDSLookupManager_handleIDSQueryResultWithDestinationStatus_onService___block_invoke_87;
    v25[3] = &unk_1E7426658;
    v26 = statusCopy;
    selfCopy2 = self;
    [idsFaceTimeVideoStatuses performWhileLocked:v25];

    [(TUIDSLookupManager *)self postStatusChangedNotification];
    v9 = v26;
    goto LABEL_13;
  }

  if ([serviceCopy isEqualToString:*MEMORY[0x1E69A47F8]])
  {
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __74__TUIDSLookupManager_handleIDSQueryResultWithDestinationStatus_onService___block_invoke_88;
    v23[3] = &unk_1E7426658;
    v23[4] = self;
    v24 = statusCopy;
    [(TUIDSLookupManager *)self filteredDestinationForMultiway:v24 completionBlock:v23];
    v9 = v24;
    goto LABEL_13;
  }

  if ([serviceCopy isEqualToString:*MEMORY[0x1E69A4818]])
  {
    idsiMessageStatuses = [(TUIDSLookupManager *)self idsiMessageStatuses];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __74__TUIDSLookupManager_handleIDSQueryResultWithDestinationStatus_onService___block_invoke_89;
    v20[3] = &unk_1E7426658;
    v21 = statusCopy;
    selfCopy3 = self;
    [idsiMessageStatuses performWhileLocked:v20];

    [(TUIDSLookupManager *)self postStatusChangedNotification];
    v9 = v21;
    goto LABEL_13;
  }

  if ([serviceCopy isEqualToString:@"com.apple.private.alloy.facetime.messaging"])
  {
    idsVideoMessagingStatuses = [(TUIDSLookupManager *)self idsVideoMessagingStatuses];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __74__TUIDSLookupManager_handleIDSQueryResultWithDestinationStatus_onService___block_invoke_90;
    v17[3] = &unk_1E7426658;
    v18 = statusCopy;
    selfCopy4 = self;
    [idsVideoMessagingStatuses performWhileLocked:v17];

    [(TUIDSLookupManager *)self postStatusChangedNotification];
    v9 = v18;
    goto LABEL_13;
  }

  if ([serviceCopy isEqualToString:@"com.apple.private.alloy.nameandphoto"])
  {
    idsNameAndPhotoStatuses = [(TUIDSLookupManager *)self idsNameAndPhotoStatuses];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __74__TUIDSLookupManager_handleIDSQueryResultWithDestinationStatus_onService___block_invoke_91;
    v14[3] = &unk_1E7426658;
    v15 = statusCopy;
    selfCopy5 = self;
    [idsNameAndPhotoStatuses performWhileLocked:v14];

    v9 = v15;
    goto LABEL_13;
  }

LABEL_14:
}

void __74__TUIDSLookupManager_handleIDSQueryResultWithDestinationStatus_onService___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = [a2 mutableCopy];
  v4 = TUDefaultLog([v3 addEntriesFromDictionary:*(a1 + 32)]);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = TULoggableStringForObject(v3);
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&dword_1956FD000, v4, OS_LOG_TYPE_DEFAULT, "Updating destinations for FaceTime audio service: %@", &v8, 0xCu);
  }

  v6 = [*(a1 + 40) idsFaceTimeAudioStatuses];
  v7 = [v3 copy];
  [v6 setObject:v7];
}

void __74__TUIDSLookupManager_handleIDSQueryResultWithDestinationStatus_onService___block_invoke_87(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = [a2 mutableCopy];
  v4 = TUDefaultLog([v3 addEntriesFromDictionary:*(a1 + 32)]);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = TULoggableStringForObject(v3);
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&dword_1956FD000, v4, OS_LOG_TYPE_DEFAULT, "Updating destinations for FaceTime video service: %@", &v8, 0xCu);
  }

  v6 = [*(a1 + 40) idsFaceTimeVideoStatuses];
  v7 = [v3 copy];
  [v6 setObject:v7];
}

void __74__TUIDSLookupManager_handleIDSQueryResultWithDestinationStatus_onService___block_invoke_88(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) idsFaceTimeMultiwayStatuses];
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __74__TUIDSLookupManager_handleIDSQueryResultWithDestinationStatus_onService___block_invoke_2;
  v19 = &unk_1E7426658;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v20 = v5;
  v21 = v6;
  [v4 performWhileLocked:&v16];

  v8 = TUDefaultLog(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = TULoggableStringForObject(v3);
    v10 = [*(a1 + 32) idsModernStatuses];
    v11 = TULoggableStringForObject(v10);
    v12 = [*(a1 + 32) idsWebCapableStatuses];
    v13 = TULoggableStringForObject(v12);
    v14 = [*(a1 + 32) idsAVLessSharePlayCapableStatuses];
    v15 = TULoggableStringForObject(v14);
    *buf = 138413058;
    v23 = v9;
    v24 = 2112;
    v25 = v11;
    v26 = 2112;
    v27 = v13;
    v28 = 2112;
    v29 = v15;
    _os_log_impl(&dword_1956FD000, v8, OS_LOG_TYPE_DEFAULT, "Updated filtered destinations for Multiway service: %@ modern: %@ webCapable: %@ avLessSharePlayCapable: %@", buf, 0x2Au);
  }

  [*(a1 + 32) postStatusChangedNotification];
}

void __74__TUIDSLookupManager_handleIDSQueryResultWithDestinationStatus_onService___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = [a2 mutableCopy];
  [v5 addEntriesFromDictionary:*(a1 + 32)];
  v3 = [*(a1 + 40) idsFaceTimeMultiwayStatuses];
  v4 = [v5 copy];
  [v3 setObject:v4];
}

void __74__TUIDSLookupManager_handleIDSQueryResultWithDestinationStatus_onService___block_invoke_89(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = [a2 mutableCopy];
  v4 = TUDefaultLog([v3 addEntriesFromDictionary:*(a1 + 32)]);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = TULoggableStringForObject(v3);
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&dword_1956FD000, v4, OS_LOG_TYPE_DEFAULT, "Updating destinations for iMessage service: %@", &v8, 0xCu);
  }

  v6 = [*(a1 + 40) idsiMessageStatuses];
  v7 = [v3 copy];
  [v6 setObject:v7];
}

void __74__TUIDSLookupManager_handleIDSQueryResultWithDestinationStatus_onService___block_invoke_90(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = [a2 mutableCopy];
  v4 = TUDefaultLog([v3 addEntriesFromDictionary:*(a1 + 32)]);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = TULoggableStringForObject(v3);
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&dword_1956FD000, v4, OS_LOG_TYPE_DEFAULT, "Updating destinations for video messaging service: %@", &v8, 0xCu);
  }

  v6 = [*(a1 + 40) idsVideoMessagingStatuses];
  v7 = [v3 copy];
  [v6 setObject:v7];
}

void __74__TUIDSLookupManager_handleIDSQueryResultWithDestinationStatus_onService___block_invoke_91(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = [a2 mutableCopy];
  v4 = TUDefaultLog([v3 addEntriesFromDictionary:*(a1 + 32)]);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = TULoggableStringForObject(v3);
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&dword_1956FD000, v4, OS_LOG_TYPE_DEFAULT, "Updating destinations for name and photo service: %@", &v8, 0xCu);
  }

  v6 = [*(a1 + 40) idsNameAndPhotoStatuses];
  v7 = [v3 copy];
  [v6 setObject:v7];

  [*(a1 + 40) postStatusChangedNotification];
}

- (void)filteredDestinationForMultiway:(id)multiway completionBlock:(id)block
{
  v32 = *MEMORY[0x1E69E9840];
  multiwayCopy = multiway;
  blockCopy = block;
  v8 = [multiwayCopy mutableCopy];
  cUTWeakLinkClass() = [CUTWeakLinkClass() sharedInstance];
  if ([cUTWeakLinkClass() isGreenTea])
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    allKeys = [multiwayCopy allKeys];
    v11 = [allKeys countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v28;
      do
      {
        v14 = 0;
        do
        {
          if (*v28 != v13)
          {
            objc_enumerationMutation(allKeys);
          }

          [v8 setObject:&unk_1F09C6028 forKeyedSubscript:*(*(&v27 + 1) + 8 * v14++)];
        }

        while (v12 != v14);
        v12 = [allKeys countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v12);
    }

    blockCopy[2](blockCopy, v8);
  }

  else
  {
    v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __69__TUIDSLookupManager_filteredDestinationForMultiway_completionBlock___block_invoke;
    v25[3] = &unk_1E74266A0;
    v16 = v15;
    v26 = v16;
    [multiwayCopy enumerateKeysAndObjectsUsingBlock:v25];
    if ([v16 count])
    {
      queryController = [(TUIDSLookupManager *)self queryController];
      v20 = *MEMORY[0x1E69A47F8];
      preferredFromID = [(TUIDSLookupManager *)self preferredFromID];
      v19 = dispatch_get_global_queue(33, 0);
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __69__TUIDSLookupManager_filteredDestinationForMultiway_completionBlock___block_invoke_2;
      v21[3] = &unk_1E7426718;
      v22 = v8;
      selfCopy = self;
      v24 = blockCopy;
      [queryController currentRemoteDevicesForDestinations:v16 service:v20 preferredFromID:preferredFromID listenerID:@"com.apple.TelephonyUtilities" queue:v19 completionBlock:v21];
    }

    else
    {
      blockCopy[2](blockCopy, v8);
    }
  }
}

void __69__TUIDSLookupManager_filteredDestinationForMultiway_completionBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if ([a3 intValue] == 1)
  {
    [*(a1 + 32) addObject:v5];
  }
}

void __69__TUIDSLookupManager_filteredDestinationForMultiway_completionBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v41 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DFA8];
  v4 = a2;
  v5 = [v3 set];
  v6 = [MEMORY[0x1E695DFA8] set];
  v7 = [MEMORY[0x1E695DFA8] set];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __69__TUIDSLookupManager_filteredDestinationForMultiway_completionBlock___block_invoke_3;
  v34[3] = &unk_1E74266C8;
  v35 = *(a1 + 32);
  v8 = v6;
  v36 = v8;
  v9 = v5;
  v37 = v9;
  v10 = v7;
  v38 = v10;
  [v4 enumerateKeysAndObjectsUsingBlock:v34];

  v11 = [*(a1 + 40) idsWebCapableStatuses];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __69__TUIDSLookupManager_filteredDestinationForMultiway_completionBlock___block_invoke_107;
  v31[3] = &unk_1E74266F0;
  v12 = v9;
  v13 = *(a1 + 40);
  v32 = v12;
  v33 = v13;
  [v11 performWhileLocked:v31];

  v14 = [*(a1 + 40) idsModernStatuses];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __69__TUIDSLookupManager_filteredDestinationForMultiway_completionBlock___block_invoke_2_109;
  v28[3] = &unk_1E74266F0;
  v15 = v8;
  v16 = *(a1 + 40);
  v29 = v15;
  v30 = v16;
  [v14 performWhileLocked:v28];

  v17 = [*(a1 + 40) idsAVLessSharePlayCapableStatuses];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __69__TUIDSLookupManager_filteredDestinationForMultiway_completionBlock___block_invoke_3_110;
  v25[3] = &unk_1E74266F0;
  v18 = v10;
  v19 = *(a1 + 40);
  v26 = v18;
  v27 = v19;
  [v17 performWhileLocked:v25];

  v21 = TUDefaultLog(v20);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = TULoggableStringForObject(*(a1 + 32));
    *buf = 138412290;
    v40 = v22;
    _os_log_impl(&dword_1956FD000, v21, OS_LOG_TYPE_DEFAULT, "Updated filtered destinations for Multiway service: %@", buf, 0xCu);
  }

  (*(*(a1 + 48) + 16))(*(a1 + 48), *(a1 + 32), v23, v24);
}

void __69__TUIDSLookupManager_filteredDestinationForMultiway_completionBlock___block_invoke_3(id *a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = a3;
  v6 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    v25 = *v27;
    v24 = *MEMORY[0x1E69A5040];
    v8 = *MEMORY[0x1E69A5070];
    v22 = *MEMORY[0x1E69A5050];
    v9 = *MEMORY[0x1E69A5048];
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v27 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v26 + 1) + 8 * i);
        v12 = [v11 capabilities];
        v13 = [v12 valueForCapability:v24];

        if (v13)
        {
          v14 = &unk_1F09C6028;
        }

        else
        {
          v14 = &unk_1F09C6040;
        }

        [a1[4] setObject:v14 forKeyedSubscript:v5];
        v15 = [v11 capabilities];
        v16 = [v15 valueForCapability:v8];

        v17 = a1 + 5;
        if (v16 || ([v11 capabilities], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "valueForCapability:", v22), v18, v17 = a1 + 6, v19))
        {
          [*v17 addObject:v5];
        }

        v20 = [v11 capabilities];
        v21 = [v20 valueForCapability:v9];

        if (v21)
        {
          [a1[7] addObject:v5];
        }
      }

      v7 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v7);
  }
}

void __69__TUIDSLookupManager_filteredDestinationForMultiway_completionBlock___block_invoke_107(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) unionSet:a2];
  v4 = [*(a1 + 40) idsWebCapableStatuses];
  v3 = [*(a1 + 32) copy];
  [v4 setObject:v3];
}

void __69__TUIDSLookupManager_filteredDestinationForMultiway_completionBlock___block_invoke_2_109(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) unionSet:a2];
  v4 = [*(a1 + 40) idsModernStatuses];
  v3 = [*(a1 + 32) copy];
  [v4 setObject:v3];
}

void __69__TUIDSLookupManager_filteredDestinationForMultiway_completionBlock___block_invoke_3_110(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) unionSet:a2];
  v4 = [*(a1 + 40) idsAVLessSharePlayCapableStatuses];
  v3 = [*(a1 + 32) copy];
  [v4 setObject:v3];
}

- (void)queryHasWebOnlyEndpointsForDestinations:(id)destinations completionBlock:(id)block
{
  v6 = MEMORY[0x1E69A5330];
  blockCopy = block;
  destinationsCopy = destinations;
  v9 = [v6 alloc];
  v10 = [MEMORY[0x1E695DFD8] setWithObject:*MEMORY[0x1E69A5050]];
  v11 = [MEMORY[0x1E695DFD8] setWithObject:*MEMORY[0x1E69A5070]];
  v12 = [v9 initWithRequiredCapabilities:v10 requiredMissingCapabilities:v11];

  [(TUIDSLookupManager *)self queryHasEndpointWithCapabilities:v12 forMultiwayDestinations:destinationsCopy completionBlock:blockCopy];
}

- (void)queryHasEndpointWithCapabilities:(id)capabilities forMultiwayDestinations:(id)destinations completionBlock:(id)block
{
  capabilitiesCopy = capabilities;
  destinationsCopy = destinations;
  blockCopy = block;
  queue = [(TUIDSLookupManager *)self queue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __95__TUIDSLookupManager_queryHasEndpointWithCapabilities_forMultiwayDestinations_completionBlock___block_invoke;
  v15[3] = &unk_1E74264F8;
  v15[4] = self;
  v16 = destinationsCopy;
  v17 = capabilitiesCopy;
  v18 = blockCopy;
  v12 = blockCopy;
  v13 = capabilitiesCopy;
  v14 = destinationsCopy;
  dispatch_async(queue, v15);
}

void __95__TUIDSLookupManager_queryHasEndpointWithCapabilities_forMultiwayDestinations_completionBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) queryController];
  v3 = *MEMORY[0x1E69A47F8];
  v4 = *(a1 + 40);
  v5 = [*(a1 + 32) preferredFromID];
  v6 = dispatch_get_global_queue(33, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __95__TUIDSLookupManager_queryHasEndpointWithCapabilities_forMultiwayDestinations_completionBlock___block_invoke_2;
  v7[3] = &unk_1E7426768;
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  [v2 currentRemoteDevicesForDestinations:v4 service:v3 preferredFromID:v5 listenerID:@"com.apple.TelephonyUtilities" queue:v6 completionBlock:v7];
}

void __95__TUIDSLookupManager_queryHasEndpointWithCapabilities_forMultiwayDestinations_completionBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __95__TUIDSLookupManager_queryHasEndpointWithCapabilities_forMultiwayDestinations_completionBlock___block_invoke_3;
  v6[3] = &unk_1E7426740;
  v7 = *(a1 + 32);
  v8 = &v9;
  [v3 enumerateKeysAndObjectsUsingBlock:v6];
  (*(*(a1 + 40) + 16))(*(a1 + 40), *(v10 + 24), v4, v5);

  _Block_object_dispose(&v9, 8);
}

void __95__TUIDSLookupManager_queryHasEndpointWithCapabilities_forMultiwayDestinations_completionBlock___block_invoke_3(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v24 = a4;
  v43 = *MEMORY[0x1E69E9840];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = a3;
  v27 = [obj countByEnumeratingWithState:&v36 objects:v42 count:16];
  if (v27)
  {
    v26 = *v37;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v37 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v36 + 1) + 8 * i);
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v7 = [*(a1 + 32) requiredCapabilities];
        v8 = [v7 countByEnumeratingWithState:&v32 objects:v41 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v33;
          v11 = 1;
          do
          {
            for (j = 0; j != v9; ++j)
            {
              if (*v33 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v13 = *(*(&v32 + 1) + 8 * j);
              v14 = [v6 capabilities];
              LODWORD(v13) = [v14 valueForCapability:v13] != 0;

              v11 &= v13;
            }

            v9 = [v7 countByEnumeratingWithState:&v32 objects:v41 count:16];
          }

          while (v9);

          if (!v11)
          {
            continue;
          }
        }

        else
        {
        }

        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        v15 = [*(a1 + 32) requiredMissingCapabilities];
        v16 = [v15 countByEnumeratingWithState:&v28 objects:v40 count:16];
        if (!v16)
        {

LABEL_26:
          *(*(*(a1 + 40) + 8) + 24) = 1;
          *v24 = 1;
          continue;
        }

        v17 = v16;
        v18 = *v29;
        LOBYTE(v19) = 1;
        do
        {
          for (k = 0; k != v17; ++k)
          {
            if (*v29 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v21 = *(*(&v28 + 1) + 8 * k);
            v22 = [v6 capabilities];
            v23 = [v22 valueForCapability:v21];

            v19 = (v23 == 0) & v19;
          }

          v17 = [v15 countByEnumeratingWithState:&v28 objects:v40 count:16];
        }

        while (v17);

        if (v19)
        {
          goto LABEL_26;
        }
      }

      v27 = [obj countByEnumeratingWithState:&v36 objects:v42 count:16];
    }

    while (v27);
  }
}

@end