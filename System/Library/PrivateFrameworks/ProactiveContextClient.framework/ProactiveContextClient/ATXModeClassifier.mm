@interface ATXModeClassifier
+ (id)updateModeWithUUID:(id)d userModeName:(id)name modeType:(int)type modeOrigin:(int)origin originAnchorType:(id)anchorType originBundleId:(id)id uiLocation:(unint64_t)location confidenceScore:(double)self0 serializedTriggers:(id)self1 allowsSmartEntry:(BOOL)self2 shouldSuggestTriggers:(BOOL)self3 currentMode:(id)self4 stream:(id)self5;
+ (void)provideModeClassifierWhenReadyWithBlock:(id)block;
+ (void)provideModeClassifierWhenReadyWithDuetHelper:(id)helper block:(id)block;
- (ATXModeClassifier)init;
- (BOOL)_isModeType:(int)type uuid:(id)uuid sameAsModeFromEvent:(id)event;
- (BOOL)_shouldUpdateMode:(int)mode currentModeScore:(id)score newModeOrigin:(int)origin newModeScore:(id)modeScore;
- (BOOL)allowSmartEntryWithModeUUID:(id)d;
- (id)currentMode;
- (void)_expireMode;
- (void)_setUpModeExpirationTimerIfNeededWithModeOrigin:(int)origin;
- (void)_updateWithGuardedData:(id)data newModeUUID:(id)d userModeName:(id)name modeType:(int)type modeOrigin:(int)origin originBundleId:(id)id originAnchorType:(id)anchorType uiLocation:(unint64_t)self0 confidenceScore:(double)self1 serializedTriggers:(id)self2 allowsSmartEntry:(BOOL)self3 shouldSuggestTriggers:(BOOL)self4;
- (void)_updateWithNewModeUUID:(id)d userModeName:(id)name modeType:(int)type modeOrigin:(int)origin originBundleId:(id)id originAnchorType:(id)anchorType uiLocation:(unint64_t)location confidenceScore:(double)self0 serializedTriggers:(id)self1 allowsSmartEntry:(BOOL)self2 shouldSuggestTriggers:(BOOL)self3;
- (void)_updateWithNewModeUUIDIfNeeded:(id)needed userModeName:(id)name modeType:(int)type modeOrigin:(int)origin originBundleId:(id)id originAnchorType:(id)anchorType confidenceScore:(double)score serializedTriggers:(id)self0;
- (void)clientModel:(id)model didUpdatePredictionWithUUID:(id)d userModeName:(id)name modeType:(int)type confidenceScore:(double)score modeOrigin:(int)origin originBundleId:(id)id originAnchorType:(id)self0 serializedTriggers:(id)self1;
- (void)init;
@end

@implementation ATXModeClassifier

+ (void)provideModeClassifierWhenReadyWithDuetHelper:(id)helper block:(id)block
{
  blockCopy = block;
  v5 = MEMORY[0x277D42598];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __72__ATXModeClassifier_provideModeClassifierWhenReadyWithDuetHelper_block___block_invoke;
  v7[3] = &unk_279AB8030;
  v8 = blockCopy;
  v6 = blockCopy;
  [v5 runBlockWhenDeviceIsClassCUnlocked:v7];
}

void __72__ATXModeClassifier_provideModeClassifierWhenReadyWithDuetHelper_block___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_opt_new();
  (*(v1 + 16))(v1, v2);
}

+ (void)provideModeClassifierWhenReadyWithBlock:(id)block
{
  blockCopy = block;
  v4 = MEMORY[0x277D42598];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __61__ATXModeClassifier_provideModeClassifierWhenReadyWithBlock___block_invoke;
  v6[3] = &unk_279AB8030;
  v7 = blockCopy;
  v5 = blockCopy;
  [v4 runBlockWhenDeviceIsClassCUnlocked:v6];
}

void __61__ATXModeClassifier_provideModeClassifierWhenReadyWithBlock___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_opt_new();
  (*(v1 + 16))(v1, v2);
}

- (ATXModeClassifier)init
{
  v51 = *MEMORY[0x277D85DE8];
  v48.receiver = self;
  v48.super_class = ATXModeClassifier;
  v3 = [(ATXModeClassifier *)&v48 init];
  v4 = v3;
  if (v3)
  {
    if ([MEMORY[0x277D42598] isClassCLocked])
    {
      [(ATXModeClassifier *)a2 init];
    }

    v5 = objc_opt_new();
    modeService = v4->_modeService;
    v4->_modeService = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBFC10]);
    locationManager = v4->_locationManager;
    v4->_locationManager = v7;

    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = v10;
    uTF8String = [v10 UTF8String];
    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_create(uTF8String, v13);
    queue = v4->_queue;
    v4->_queue = v14;

    v16 = BiomeLibrary();
    userFocus = [v16 UserFocus];
    inferredMode = [userFocus InferredMode];
    inferredModeStream = v4->_inferredModeStream;
    v4->_inferredModeStream = inferredMode;

    v20 = [[ATXMiloProvider alloc] initWithInferredModeStream:v4->_inferredModeStream];
    miloProvider = v4->_miloProvider;
    v4->_miloProvider = v20;

    v22 = [[ATXModeHeuristicClassifier alloc] initWithConfiguredModeService:v4->_modeService locationManager:v4->_locationManager miloProvider:v4->_miloProvider];
    heuristicModeClassifier = v4->_heuristicModeClassifier;
    v4->_heuristicModeClassifier = v22;

    [(ATXModeHeuristicClassifier *)v4->_heuristicModeClassifier setDelegate:v4];
    [(ATXModeHeuristicClassifier *)v4->_heuristicModeClassifier update];
    v24 = [[ATXModeAnchorModelSuggestionServer alloc] initWithConfiguredModeService:v4->_modeService];
    anchorModelSuggestionServer = v4->_anchorModelSuggestionServer;
    v4->_anchorModelSuggestionServer = v24;

    [(ATXModeAnchorModelSuggestionServer *)v4->_anchorModelSuggestionServer setDelegate:v4];
    objc_initWeak(&location, v4);
    v26 = objc_alloc(MEMORY[0x277D42628]);
    v27 = MEMORY[0x277D85CD0];
    v42 = MEMORY[0x277D85DD0];
    v43 = 3221225472;
    v44 = __25__ATXModeClassifier_init__block_invoke;
    v45 = &unk_279AB7B90;
    objc_copyWeak(&v46, &location);
    v28 = [v26 initWithQueue:MEMORY[0x277D85CD0] operation:&v42];
    modeExpirationTimer = v4->_modeExpirationTimer;
    v4->_modeExpirationTimer = v28;

    v30 = objc_opt_new();
    v31 = [ATXUserFocusInferredMode alloc];
    v32 = [(ATXUserFocusInferredMode *)v31 initWithStream:v4->_inferredModeStream, v42, v43, v44, v45];
    currentMode = [(ATXUserFocusInferredMode *)v32 currentMode];
    v34 = v30[1];
    v30[1] = currentMode;

    v36 = __atxlog_handle_modes(v35);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      modeIdentifier = [v30[1] modeIdentifier];
      *buf = 138412290;
      v50 = modeIdentifier;
      _os_log_impl(&dword_260C9F000, v36, OS_LOG_TYPE_DEFAULT, "ATXModeClassifier initing with current mode: %@", buf, 0xCu);
    }

    -[ATXModeClassifier _setUpModeExpirationTimerIfNeededWithModeOrigin:](v4, "_setUpModeExpirationTimerIfNeededWithModeOrigin:", [v30[1] origin]);
    v38 = [objc_alloc(MEMORY[0x277D42610]) initWithGuardedData:v30 serialQueue:v4->_queue];

    lock = v4->_lock;
    v4->_lock = v38;

    objc_destroyWeak(&v46);
    objc_destroyWeak(&location);
  }

  v40 = __atxlog_handle_modes(v3);
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
  {
    [(ATXModeClassifier *)v40 init];
  }

  return v4;
}

void __25__ATXModeClassifier_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _expireMode];
}

- (id)currentMode
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__4;
  v10 = __Block_byref_object_dispose__4;
  v11 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __32__ATXModeClassifier_currentMode__block_invoke;
  v5[3] = &unk_279AB8058;
  v5[4] = &v6;
  [(_PASQueueLock *)lock runWithLockAcquired:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __32__ATXModeClassifier_currentMode__block_invoke(uint64_t a1, uint64_t a2)
{
  *(*(*(a1 + 32) + 8) + 40) = [*(a2 + 8) modeIdentifier];

  return MEMORY[0x2821F96F8]();
}

- (BOOL)_isModeType:(int)type uuid:(id)uuid sameAsModeFromEvent:(id)event
{
  uuidCopy = uuid;
  eventCopy = event;
  modeIdentifier = [eventCopy modeIdentifier];
  v10 = modeIdentifier;
  if (uuidCopy && modeIdentifier && ([uuidCopy isEqualToString:modeIdentifier] & 1) != 0)
  {
    v11 = 1;
  }

  else
  {
    modeType = [eventCopy modeType];
    if (uuidCopy | v10)
    {
      v13 = 0;
    }

    else
    {
      v13 = modeType == type;
    }

    v11 = v13;
  }

  return v11;
}

- (void)_updateWithGuardedData:(id)data newModeUUID:(id)d userModeName:(id)name modeType:(int)type modeOrigin:(int)origin originBundleId:(id)id originAnchorType:(id)anchorType uiLocation:(unint64_t)self0 confidenceScore:(double)self1 serializedTriggers:(id)self2 allowsSmartEntry:(BOOL)self3 shouldSuggestTriggers:(BOOL)self4
{
  v16 = *&origin;
  v17 = *&type;
  v61 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  dCopy = d;
  nameCopy = name;
  idCopy = id;
  anchorTypeCopy = anchorType;
  triggersCopy = triggers;
  v27 = [(ATXModeClassifier *)self _isModeType:v17 uuid:dCopy sameAsModeFromEvent:dataCopy[1]];
  if (v27)
  {
    v28 = __atxlog_handle_modes(v27);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      [dataCopy[1] modeIdentifier];
      v30 = v29 = idCopy;
      modeType = [dataCopy[1] modeType];
      *buf = 138544130;
      v52 = dCopy;
      v53 = 2048;
      v54 = v17;
      v55 = 2114;
      v56 = v30;
      v57 = 2048;
      v58 = modeType;
      _os_log_impl(&dword_260C9F000, v28, OS_LOG_TYPE_DEFAULT, "ATXModeClassifier: not updating because new mode (%{public}@, %lu) is same as current mode (%{public}@, %lu)", buf, 0x2Au);

      idCopy = v29;
    }
  }

  else
  {
    v32 = anchorTypeCopy;
    v33 = v16;
    v50 = idCopy;
    modeIdentifier = [dataCopy[1] modeIdentifier];
    v35 = __atxlog_handle_modes(modeIdentifier);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      modeType2 = [dataCopy[1] modeType];
      *buf = 138544386;
      v52 = modeIdentifier;
      v53 = 2048;
      v54 = modeType2;
      v55 = 2114;
      v56 = dCopy;
      v57 = 2048;
      v58 = v17;
      v59 = 2048;
      locationCopy = location;
      _os_log_impl(&dword_260C9F000, v35, OS_LOG_TYPE_DEFAULT, "ATXModeClassifier: mode updated from uuid:%{public}@, modeType:%lu to uuid:%{public}@, modeType:%lu, uiLocation of new suggestion: %lu", buf, 0x34u);
    }

    v37 = objc_opt_class();
    LOWORD(v48) = __PAIR16__(suggestTriggers, entry);
    v47 = triggersCopy;
    v38 = dCopy;
    idCopy = v50;
    v49 = dCopy;
    v39 = modeIdentifier;
    v40 = triggersCopy;
    v41 = v33;
    v42 = v33;
    anchorTypeCopy = v32;
    v43 = [v37 updateModeWithUUID:v38 userModeName:nameCopy modeType:v17 modeOrigin:v42 originAnchorType:v32 originBundleId:v50 uiLocation:score confidenceScore:location serializedTriggers:v47 allowsSmartEntry:v48 shouldSuggestTriggers:dataCopy[1] currentMode:self->_inferredModeStream stream:?];
    v44 = dataCopy[1];
    dataCopy[1] = v43;
    v45 = v43;

    [(_PASSimpleCoalescingTimer *)self->_modeExpirationTimer cancelPendingOperations];
    v46 = v41;
    triggersCopy = v40;
    v28 = v39;
    dCopy = v49;
    [(ATXModeClassifier *)self _setUpModeExpirationTimerIfNeededWithModeOrigin:v46];
  }
}

+ (id)updateModeWithUUID:(id)d userModeName:(id)name modeType:(int)type modeOrigin:(int)origin originAnchorType:(id)anchorType originBundleId:(id)id uiLocation:(unint64_t)location confidenceScore:(double)self0 serializedTriggers:(id)self1 allowsSmartEntry:(BOOL)self2 shouldSuggestTriggers:(BOOL)self3 currentMode:(id)self4 stream:(id)self5
{
  dCopy = d;
  nameCopy = name;
  anchorTypeCopy = anchorType;
  idCopy = id;
  triggersCopy = triggers;
  streamCopy = stream;
  v54 = nameCopy;
  if (mode)
  {
    v20 = MEMORY[0x277CF16E8];
    modeCopy = mode;
    v22 = [v20 alloc];
    v45 = objc_opt_new();
    modeIdentifier = [modeCopy modeIdentifier];
    v23 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(modeCopy, "isAutomationEnabled")}];
    uuid = [modeCopy uuid];
    v25 = uuid;
    if (uuid)
    {
      v26 = uuid;
    }

    else
    {
      v26 = &stru_287331708;
    }

    v27 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(modeCopy, "uiLocation")}];
    v28 = [MEMORY[0x277CCABB0] numberWithDouble:score];
    modeType = [modeCopy modeType];
    userModeName = [modeCopy userModeName];

    LODWORD(v43) = modeType;
    v31 = [v22 initWithAbsoluteTimestamp:v45 modeIdentifier:modeIdentifier origin:1 originBundleID:0 isAutomationEnabled:v23 isStart:v26 uuid:0 originAnchorType:v27 uiLocation:v28 confidenceScore:MEMORY[0x277CBEBF8] serializedTriggers:v43 modeType:MEMORY[0x277CBEC28] shouldSuggestTriggers:userModeName userModeName:?];

    nameCopy = v54;
    source = [streamCopy source];
    [source sendEvent:v31];
  }

  v33 = objc_opt_new();
  uUIDString = [v33 UUIDString];

  v34 = objc_alloc(MEMORY[0x277CF16E8]);
  v35 = objc_opt_new();
  v36 = [MEMORY[0x277CCABB0] numberWithBool:entry];
  v37 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:location];
  v38 = [MEMORY[0x277CCABB0] numberWithDouble:score];
  v39 = [MEMORY[0x277CCABB0] numberWithBool:suggestTriggers];
  LODWORD(v43) = type;
  v40 = [v34 initWithAbsoluteTimestamp:v35 modeIdentifier:dCopy origin:origin originBundleID:idCopy isAutomationEnabled:v36 isStart:MEMORY[0x277CBEC38] uuid:uUIDString originAnchorType:anchorTypeCopy uiLocation:v37 confidenceScore:v38 serializedTriggers:triggersCopy modeType:v43 shouldSuggestTriggers:v39 userModeName:nameCopy];

  source2 = [streamCopy source];
  [source2 sendEvent:v40];

  return v40;
}

- (void)_updateWithNewModeUUID:(id)d userModeName:(id)name modeType:(int)type modeOrigin:(int)origin originBundleId:(id)id originAnchorType:(id)anchorType uiLocation:(unint64_t)location confidenceScore:(double)self0 serializedTriggers:(id)self1 allowsSmartEntry:(BOOL)self2 shouldSuggestTriggers:(BOOL)self3
{
  dCopy = d;
  nameCopy = name;
  idCopy = id;
  anchorTypeCopy = anchorType;
  triggersCopy = triggers;
  lock = self->_lock;
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __194__ATXModeClassifier__updateWithNewModeUUID_userModeName_modeType_modeOrigin_originBundleId_originAnchorType_uiLocation_confidenceScore_serializedTriggers_allowsSmartEntry_shouldSuggestTriggers___block_invoke;
  v31[3] = &unk_279AB8080;
  v31[4] = self;
  v32 = dCopy;
  typeCopy = type;
  originCopy = origin;
  v33 = nameCopy;
  v34 = idCopy;
  v36 = triggersCopy;
  locationCopy = location;
  scoreCopy = score;
  v35 = anchorTypeCopy;
  entryCopy = entry;
  suggestTriggersCopy = suggestTriggers;
  v26 = triggersCopy;
  v27 = anchorTypeCopy;
  v28 = idCopy;
  v29 = nameCopy;
  v30 = dCopy;
  [(_PASQueueLock *)lock runAsyncWithLockAcquired:v31];
}

- (void)_updateWithNewModeUUIDIfNeeded:(id)needed userModeName:(id)name modeType:(int)type modeOrigin:(int)origin originBundleId:(id)id originAnchorType:(id)anchorType confidenceScore:(double)score serializedTriggers:(id)self0
{
  neededCopy = needed;
  nameCopy = name;
  idCopy = id;
  anchorTypeCopy = anchorType;
  triggersCopy = triggers;
  objc_initWeak(&location, self);
  lock = self->_lock;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __152__ATXModeClassifier__updateWithNewModeUUIDIfNeeded_userModeName_modeType_modeOrigin_originBundleId_originAnchorType_confidenceScore_serializedTriggers___block_invoke;
  v28[3] = &unk_279AB80F8;
  objc_copyWeak(v34, &location);
  typeCopy = type;
  v23 = neededCopy;
  v29 = v23;
  originCopy = origin;
  v24 = idCopy;
  v30 = v24;
  v25 = anchorTypeCopy;
  v31 = v25;
  v34[1] = *&score;
  v26 = triggersCopy;
  v32 = v26;
  v27 = nameCopy;
  v33 = v27;
  [(_PASQueueLock *)lock runAsyncWithLockAcquired:v28];

  objc_destroyWeak(v34);
  objc_destroyWeak(&location);
}

void __152__ATXModeClassifier__updateWithNewModeUUIDIfNeeded_userModeName_modeType_modeOrigin_originBundleId_originAnchorType_confidenceScore_serializedTriggers___block_invoke(uint64_t a1, void *a2)
{
  v42 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained _isModeType:*(a1 + 88) uuid:*(a1 + 32) sameAsModeFromEvent:v3[1]];
    v7 = v6;
    v8 = __atxlog_handle_modes(v6);
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (v9)
      {
        v10 = *(a1 + 32);
        v11 = *(a1 + 88);
        v12 = [v3[1] modeIdentifier];
        v13 = [v3[1] modeType];
        *buf = 138544130;
        v35 = v10;
        v36 = 2048;
        v37 = v11;
        v38 = 2114;
        v39 = v12;
        v40 = 2048;
        v41 = v13;
        _os_log_impl(&dword_260C9F000, v8, OS_LOG_TYPE_DEFAULT, "ATXModeClassifier: not updating because new mode (%{public}@, %lu) is same as current mode (%{public}@, %lu)", buf, 0x2Au);
      }
    }

    else
    {
      if (v9)
      {
        v15 = [v3[1] modeIdentifier];
        v16 = [v3[1] modeType];
        v17 = *(a1 + 32);
        v18 = *(a1 + 88);
        *buf = 138544130;
        v35 = v15;
        v36 = 2048;
        v37 = v16;
        v38 = 2114;
        v39 = v17;
        v40 = 2048;
        v41 = v18;
        _os_log_impl(&dword_260C9F000, v8, OS_LOG_TYPE_DEFAULT, "ATXModeClassifier: fetching combined score for current mode (uuid: %{public}@, type:%lu) and new mode (uuid: %{public}@, type:%lu) to see if we should update", buf, 0x2Au);
      }

      v19 = v5[5];
      v20 = v3[1];
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __152__ATXModeClassifier__updateWithNewModeUUIDIfNeeded_userModeName_modeType_modeOrigin_originBundleId_originAnchorType_confidenceScore_serializedTriggers___block_invoke_41;
      v27[3] = &unk_279AB80D0;
      v27[4] = v5;
      v21 = *(a1 + 32);
      v33 = *(a1 + 88);
      v22 = *(a1 + 40);
      v23 = *(a1 + 48);
      v32 = *(a1 + 80);
      v24 = *(a1 + 56);
      *&v25 = v23;
      *(&v25 + 1) = v24;
      *&v26 = v21;
      *(&v26 + 1) = v22;
      v28 = v26;
      v29 = v25;
      v30 = v3;
      v31 = *(a1 + 64);
      [v19 fetchCombinedSuggestionScoreForModeEvent:v20 completionHandler:v27];
    }
  }

  else
  {
    v14 = __atxlog_handle_modes(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      __152__ATXModeClassifier__updateWithNewModeUUIDIfNeeded_userModeName_modeType_modeOrigin_originBundleId_originAnchorType_confidenceScore_serializedTriggers___block_invoke_cold_1(v14);
    }
  }
}

void __152__ATXModeClassifier__updateWithNewModeUUIDIfNeeded_userModeName_modeType_modeOrigin_originBundleId_originAnchorType_confidenceScore_serializedTriggers___block_invoke_41(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = __atxlog_handle_modes(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v29 = v3;
    _os_log_impl(&dword_260C9F000, v4, OS_LOG_TYPE_DEFAULT, "ATXModeClassifier: fetched score for current mode: %@. Fetching score and flags for new mode.", buf, 0xCu);
  }

  v5 = *(a1 + 40);
  v6 = *(*(a1 + 32) + 40);
  v7 = *(a1 + 96);
  v8 = *(a1 + 100);
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v11 = *(a1 + 88);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __152__ATXModeClassifier__updateWithNewModeUUIDIfNeeded_userModeName_modeType_modeOrigin_originBundleId_originAnchorType_confidenceScore_serializedTriggers___block_invoke_42;
  v16[3] = &unk_279AB80A8;
  v12 = *(a1 + 64);
  v17 = *(a1 + 72);
  v18 = v3;
  v13 = *(a1 + 40);
  v14 = *(a1 + 32);
  v19 = v13;
  v20 = v14;
  v26 = *(a1 + 100);
  v21 = *(a1 + 80);
  v27 = *(a1 + 96);
  v22 = *(a1 + 48);
  v23 = *(a1 + 56);
  v25 = *(a1 + 88);
  v24 = *(a1 + 64);
  v15 = v3;
  [v6 fetchCombinedSuggestionScoreAndFlagsForModeWithUUID:v5 modeType:v7 origin:v8 originBundleId:v9 originAnchorType:v10 confidenceScore:v12 secondsSinceSuggested:v11 serializedTriggers:0.0 completionHandler:v16];
}

void __152__ATXModeClassifier__updateWithNewModeUUIDIfNeeded_userModeName_modeType_modeOrigin_originBundleId_originAnchorType_confidenceScore_serializedTriggers___block_invoke_42(uint64_t a1, void *a2, int a3, char a4, char a5)
{
  v26 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = __atxlog_handle_modes(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [*(*(a1 + 32) + 8) modeIdentifier];
    v12 = *(a1 + 40);
    v13 = *(a1 + 48);
    *buf = 138544130;
    v19 = v11;
    v20 = 2114;
    v21 = v12;
    v22 = 2114;
    v23 = v13;
    v24 = 2114;
    v25 = v9;
    _os_log_impl(&dword_260C9F000, v10, OS_LOG_TYPE_DEFAULT, "Comparing current mode: %{public}@ (combinedScore: %{public}@, with new mode: %{public}@ (combinedScore: %{public}@)", buf, 0x2Au);
  }

  if (!v9 || !*(a1 + 40))
  {
    v15 = __atxlog_handle_modes(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      __152__ATXModeClassifier__updateWithNewModeUUIDIfNeeded_userModeName_modeType_modeOrigin_originBundleId_originAnchorType_confidenceScore_serializedTriggers___block_invoke_42_cold_1(a1, v9, v15);
    }
  }

  if ([*(a1 + 56) _shouldUpdateMode:objc_msgSend(*(*(a1 + 32) + 8) currentModeScore:"origin") newModeOrigin:*(a1 + 40) newModeScore:{*(a1 + 104), v9}])
  {
    v16 = 3;
    if (!a3)
    {
      v16 = 1;
    }

    BYTE1(v17) = a4;
    LOBYTE(v17) = a5;
    [*(a1 + 56) _updateWithNewModeUUID:*(a1 + 48) userModeName:*(a1 + 64) modeType:*(a1 + 108) modeOrigin:*(a1 + 104) originBundleId:*(a1 + 72) originAnchorType:*(a1 + 80) uiLocation:*(a1 + 96) confidenceScore:v16 serializedTriggers:*(a1 + 88) allowsSmartEntry:v17 shouldSuggestTriggers:?];
  }
}

- (BOOL)allowSmartEntryWithModeUUID:(id)d
{
  v3 = [(ATXConfiguredModeService *)self->_modeService DNDModeConfigurationForActivityWithUUID:d];
  v4 = [v3 allowSmartEntry] == 2;

  return v4;
}

- (BOOL)_shouldUpdateMode:(int)mode currentModeScore:(id)score newModeOrigin:(int)origin newModeScore:(id)modeScore
{
  v7 = *&origin;
  v8 = *&mode;
  scoreCopy = score;
  modeScoreCopy = modeScore;
  if (BMUserFocusInferredModeOriginIsHeuristic(v8) && (BMUserFocusInferredModeOriginIsHeuristic(v7) & 1) != 0)
  {
    v11 = 1;
  }

  else
  {
    [modeScoreCopy doubleValue];
    v13 = v12;
    [scoreCopy doubleValue];
    v11 = v13 >= v14;
  }

  return v11;
}

- (void)_setUpModeExpirationTimerIfNeededWithModeOrigin:(int)origin
{
  if (origin == 11)
  {
    [(_PASSimpleCoalescingTimer *)self->_modeExpirationTimer runAfterDelaySeconds:1 coalescingBehavior:7200.0];
  }
}

- (void)_expireMode
{
  v14 = 0;
  v13 = 0;
  heuristicModeClassifier = self->_heuristicModeClassifier;
  v11 = 0;
  v12 = 0;
  v9 = 0;
  v10 = 0;
  [(ATXModeHeuristicClassifier *)heuristicModeClassifier currentModeUUID:&v12 userModeName:&v11 modeType:&v14 + 4 confidenceScore:0 origin:&v14 originBundleId:&v10 serializedTrigger:&v9 allowsSmartEntry:&v13];
  v4 = v12;
  v5 = v11;
  v6 = v10;
  v7 = v9;
  LOWORD(v8) = v13;
  [(ATXModeClassifier *)self _updateWithNewModeUUID:v4 userModeName:v5 modeType:HIDWORD(v14) modeOrigin:v14 originBundleId:v6 originAnchorType:0 uiLocation:-1.0 confidenceScore:1 serializedTriggers:v7 allowsSmartEntry:v8 shouldSuggestTriggers:?];
}

- (void)clientModel:(id)model didUpdatePredictionWithUUID:(id)d userModeName:(id)name modeType:(int)type confidenceScore:(double)score modeOrigin:(int)origin originBundleId:(id)id originAnchorType:(id)self0 serializedTriggers:(id)self1
{
  v13 = *&type;
  v33 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  dCopy = d;
  triggersCopy = triggers;
  anchorTypeCopy = anchorType;
  idCopy = id;
  nameCopy = name;
  v23 = __atxlog_handle_modes(nameCopy);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = objc_opt_class();
    v25 = NSStringFromClass(v24);
    *buf = 138543874;
    v28 = v25;
    v29 = 2114;
    v30 = dCopy;
    v31 = 2048;
    v32 = v13;
    _os_log_impl(&dword_260C9F000, v23, OS_LOG_TYPE_DEFAULT, "ATXModeClassifier: %{public}@ updated its mode prediction: modeUUID: %{public}@, modeType: %lu", buf, 0x20u);
  }

  [(ATXModeClassifier *)self _updateWithNewModeUUIDIfNeeded:dCopy userModeName:nameCopy modeType:v13 modeOrigin:origin originBundleId:idCopy originAnchorType:anchorTypeCopy confidenceScore:score serializedTriggers:triggersCopy];
}

- (void)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"ATXModeClassifier.m" lineNumber:71 description:@"ATXModeClassifier must not be initialized when the device is Class C locked"];
}

void __152__ATXModeClassifier__updateWithNewModeUUIDIfNeeded_userModeName_modeType_modeOrigin_originBundleId_originAnchorType_confidenceScore_serializedTriggers___block_invoke_42_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 40);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_260C9F000, log, OS_LOG_TYPE_ERROR, "ATXModeClassifer: something went wrong fetching widget scores! currentModeScore: %@, newModeScore: %@", &v4, 0x16u);
}

@end