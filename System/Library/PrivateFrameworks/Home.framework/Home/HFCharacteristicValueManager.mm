@interface HFCharacteristicValueManager
+ (NAIdentity)na_identity;
- (BOOL)hasCachedReadErrorForAccessory:(id)accessory passingTest:(id)test;
- (BOOL)isEqual:(id)equal;
- (BOOL)isNaturalLightingEnabledForProfile:(id)profile;
- (BOOL)isNaturalLightingSupportedForProfile:(id)profile;
- (BOOL)staticHomeDataModelHasInProgressWriteForCharacteristic:(id)characteristic;
- (HFCharacteristicOperationContextProviding)contextProvider;
- (HFCharacteristicValueManager)initWithValueReader:(id)reader valueWriter:(id)writer;
- (NSSet)allReadCharacteristics;
- (NSSet)characteristicsWithPendingReads;
- (NSSet)characteristicsWithPendingWrites;
- (id)_openTransactionCompletionFuture;
- (id)_overrideCachedValueForCharacteristic:(id)characteristic value:(id)value;
- (id)_transactionLock_characteristicsWithPendingWritesInTransacton:(id)transacton includeDirectWrites:(BOOL)writes includeActionSets:(BOOL)sets includeActions:(BOOL)actions;
- (id)cachedErrorForExecutionOfActionSet:(id)set;
- (id)cachedErrorForWriteToCharacteristic:(id)characteristic;
- (id)cachedReadErrorForCharacteristic:(id)characteristic;
- (id)cachedValueForCharacteristic:(id)characteristic;
- (id)createHomeStateStreamObserver;
- (id)executeActionSet:(id)set;
- (id)executeActions:(id)actions;
- (id)readValueForCharacteristic:(id)characteristic;
- (id)readValuesForCharacteristicTypes:(id)types inServices:(id)services;
- (id)readValuesForCharacteristics:(id)characteristics;
- (id)readValuesForCharacteristicsPassingTest:(id)test inServices:(id)services;
- (id)staticHomeDataModelCachedValueForCharacteristic:(id)characteristic;
- (id)writeNaturalLightEnabledState:(BOOL)state forProfile:(id)profile;
- (id)writeValue:(id)value forCharacteristic:(id)characteristic;
- (id)writeValuesForCharacteristics:(id)characteristics;
- (unint64_t)cachedLoadingStateForCharacteristics:(id)characteristics actionSets:(id)sets;
- (unint64_t)hash;
- (unint64_t)loadingStateForCharacteristics:(id)characteristics actionSets:(id)sets;
- (void)_beginReadsCompleteTrackingForCharacteristics:(id)characteristics withLogger:(id)logger;
- (void)_endReadsCompleteTrackingForCharacteristic:(id)characteristic withLogger:(id)logger didRead:(BOOL)read;
- (void)_transactionLock_executeActionSetTransaction:(id)transaction completionHandler:(id)handler;
- (void)_transactionLock_executeActionsTransaction:(id)transaction completionHandler:(id)handler;
- (void)_transactionLock_executeReadTransaction:(id)transaction completionHandler:(id)handler;
- (void)_transactionLock_executeWriteTransaction:(id)transaction completionHandler:(id)handler;
- (void)beginTransactionWithReason:(id)reason;
- (void)beginTransactionWithReason:(id)reason readPolicy:(id)policy logger:(id)logger;
- (void)cancelInFlightReadRequests;
- (void)clearOverrideLoadingStates;
- (void)commitTransactionWithReason:(id)reason;
- (void)dealloc;
- (void)executeActionSet:(id)set completionHandler:(id)handler;
- (void)invalidateAllCachedErrors;
- (void)invalidateCachedErrorForCharacteristic:(id)characteristic;
- (void)invalidateCachedErrorForExecutionOfActionSet:(id)set;
- (void)invalidateCachedValueForCharacteristic:(id)characteristic;
- (void)invalidateCachedValuesForAccessory:(id)accessory;
- (void)setCachedReadError:(id)error forCharacteristic:(id)characteristic;
- (void)setCachedWriteError:(id)error forCharacteristic:(id)characteristic;
- (void)setOverrideLoadingState:(unint64_t)state forCharacteristic:(id)characteristic;
@end

@implementation HFCharacteristicValueManager

- (id)staticHomeDataModelCachedValueForCharacteristic:(id)characteristic
{
  characteristicCopy = characteristic;
  selfCopy = self;
  HFCharacteristicValueManager.staticHomeDataModelCachedValue(for:)(characteristicCopy, &v13);

  v6 = v14;
  if (v14)
  {
    v7 = __swift_project_boxed_opaque_existential_0(&v13, v14);
    v8 = *(v6 - 8);
    MEMORY[0x28223BE20](v7);
    v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v10);
    v11 = sub_20DD65964();
    (*(v8 + 8))(v10, v6);
    __swift_destroy_boxed_opaque_existential_0(&v13);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)staticHomeDataModelHasInProgressWriteForCharacteristic:(id)characteristic
{
  sub_20D9C7830();
  sub_20DA5A66C(&unk_280E020F0, sub_20D9C7830, MEMORY[0x277D85378]);
  v4 = sub_20DD651E4();
  selfCopy = self;
  _sSo28HFCharacteristicValueManagerC4HomeE06staticD27DataModelHasInProgressWrite3forSbShySo16HMCharacteristicCG_tF_0(v4);
  v7 = v6;

  return v7 & 1;
}

- (id)createHomeStateStreamObserver
{
  sub_20DD63B44();
  selfCopy = self;
  v4 = MEMORY[0x20F324A10]();
  if (v4)
  {
    v5 = type metadata accessor for HFCharacteristicValueManager.HomeStateStreamObserver();
    v6 = objc_allocWithZone(v5);
    v7 = OBJC_IVAR___HFCharacteristicValueManagerHomeStateStreamObserver_characteristicsWithPendingWrites;
    *&v6[v7] = sub_20D9D6124(MEMORY[0x277D84F90]);
    *&v6[OBJC_IVAR___HFCharacteristicValueManagerHomeStateStreamObserver_observingTask] = 0;
    *&v6[OBJC_IVAR___HFCharacteristicValueManagerHomeStateStreamObserver_stream] = v4;
    v9.receiver = v6;
    v9.super_class = v5;
    v4 = [(HFCharacteristicValueManager *)&v9 init];
  }

  return v4;
}

- (BOOL)isNaturalLightingSupportedForProfile:(id)profile
{
  profileCopy = profile;
  if (+[HFUtilities isRunningInStoreDemoMode](HFUtilities, "isRunningInStoreDemoMode") || +[HFUtilities isPressDemoModeEnabled])
  {
    supportedFeatures = 1;
  }

  else
  {
    settings = [profileCopy settings];
    supportedFeatures = [settings supportedFeatures];
  }

  return supportedFeatures & 1;
}

- (BOOL)isNaturalLightingEnabledForProfile:(id)profile
{
  profileCopy = profile;
  if (+[HFUtilities isRunningInStoreDemoMode](HFUtilities, "isRunningInStoreDemoMode") || +[HFUtilities isPressDemoModeEnabled])
  {
    settings = objc_getAssociatedObject(profileCopy, "HF_NaturalLightDemoMode");
    bOOLValue = [settings BOOLValue];
  }

  else
  {
    settings = [profileCopy settings];
    bOOLValue = [settings isNaturalLightingEnabled];
  }

  v6 = bOOLValue;

  return v6;
}

- (id)writeNaturalLightEnabledState:(BOOL)state forProfile:(id)profile
{
  stateCopy = state;
  v21 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  if (+[HFUtilities isRunningInStoreDemoMode](HFUtilities, "isRunningInStoreDemoMode") || +[HFUtilities isPressDemoModeEnabled])
  {
    v6 = [MEMORY[0x277CCABB0] numberWithBool:stateCopy];
    objc_setAssociatedObject(profileCopy, "HF_NaturalLightDemoMode", v6, 1);

    v7 = HFLogForCategory(0x3DuLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 67109378;
      HIDWORD(buf) = stateCopy;
      v19 = 2112;
      v20 = profileCopy;
      _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, "Updating natural light state IN DEMO MODE to %{BOOL}d for profile: %@", &buf, 0x12u);
    }

    objc_initWeak(&buf, profileCopy);
    v8 = +[HFHomeKitDispatcher sharedDispatcher];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __100__HFCharacteristicValueManager_HFLightProfileValueSource__writeNaturalLightEnabledState_forProfile___block_invoke;
    v16[3] = &unk_277DF4920;
    objc_copyWeak(&v17, &buf);
    [v8 dispatchLightObserverMessage:v16 sender:0];

    futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
    objc_destroyWeak(&v17);
    objc_destroyWeak(&buf);
  }

  else if (stateCopy)
  {
    objc_initWeak(&buf, profileCopy);
    v11 = MEMORY[0x277D2C900];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __100__HFCharacteristicValueManager_HFLightProfileValueSource__writeNaturalLightEnabledState_forProfile___block_invoke_2;
    v12[3] = &unk_277DF4948;
    v15 = stateCopy;
    v13 = profileCopy;
    objc_copyWeak(&v14, &buf);
    futureWithNoResult = [v11 futureWithBlock:v12];
    objc_destroyWeak(&v14);

    objc_destroyWeak(&buf);
  }

  else
  {
    futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  return futureWithNoResult;
}

void __100__HFCharacteristicValueManager_HFLightProfileValueSource__writeNaturalLightEnabledState_forProfile___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained settings];
  [v3 lightProfile:WeakRetained didUpdateSettings:v4];
}

void __100__HFCharacteristicValueManager_HFLightProfileValueSource__writeNaturalLightEnabledState_forProfile___block_invoke_2(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory(0x3DuLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 48);
    v6 = *(a1 + 32);
    v7 = [v6 settings];
    *buf = 67109634;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    v16 = 2112;
    v17 = v7;
    _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "Updating natural light state to %{BOOL}d for profile: %@ %@", buf, 0x1Cu);
  }

  v8 = *(a1 + 32);
  v9 = *(a1 + 48);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __100__HFCharacteristicValueManager_HFLightProfileValueSource__writeNaturalLightEnabledState_forProfile___block_invoke_72;
  v10[3] = &unk_277DF3860;
  objc_copyWeak(&v11, (a1 + 40));
  [v8 setNaturalLightingEnabled:v9 & 1 completionHandler:v10];
  [v3 finishWithNoResult];
  objc_destroyWeak(&v11);
}

void __100__HFCharacteristicValueManager_HFLightProfileValueSource__writeNaturalLightEnabledState_forProfile___block_invoke_72(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = HFLogForCategory(0x3DuLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      WeakRetained = objc_loadWeakRetained((a1 + 32));
      *buf = 138412546;
      v10 = WeakRetained;
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "Error updating natural light state for profile %@. Error: %@", buf, 0x16u);
    }
  }

  v6 = +[HFHomeKitDispatcher sharedDispatcher];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __100__HFCharacteristicValueManager_HFLightProfileValueSource__writeNaturalLightEnabledState_forProfile___block_invoke_73;
  v7[3] = &unk_277DF4920;
  objc_copyWeak(&v8, (a1 + 32));
  [v6 dispatchLightObserverMessage:v7 sender:0];

  objc_destroyWeak(&v8);
}

void __100__HFCharacteristicValueManager_HFLightProfileValueSource__writeNaturalLightEnabledState_forProfile___block_invoke_73(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained settings];
  [v3 lightProfile:WeakRetained didUpdateSettings:v4];
}

- (HFCharacteristicValueManager)initWithValueReader:(id)reader valueWriter:(id)writer
{
  readerCopy = reader;
  writerCopy = writer;
  v28.receiver = self;
  v28.super_class = HFCharacteristicValueManager;
  v8 = [(HFCharacteristicValueManager *)&v28 init];
  v9 = v8;
  if (v8)
  {
    [(HFCharacteristicValueManager *)v8 setValueReader:readerCopy];
    [(HFCharacteristicValueManager *)v9 setValueWriter:writerCopy];
    array = [MEMORY[0x277CBEB18] array];
    [(HFCharacteristicValueManager *)v9 setRunningTransactions:array];

    array2 = [MEMORY[0x277CBEB18] array];
    [(HFCharacteristicValueManager *)v9 setReadTransactionsToExecuteOnNextRunLoop:array2];

    array3 = [MEMORY[0x277CBEB18] array];
    [(HFCharacteristicValueManager *)v9 setCompletionHandlersForReadTransactionsToExecuteOnNextRunLoop:array3];

    v13 = objc_alloc_init(MEMORY[0x277CCAC60]);
    [(HFCharacteristicValueManager *)v9 setTransactionLock:v13];

    transactionLock = [(HFCharacteristicValueManager *)v9 transactionLock];
    [transactionLock setName:@"com.apple.Home.valueManager.transactionLock"];

    v15 = objc_alloc_init(HFCharacteristicValueCacheManager);
    [(HFCharacteristicValueManager *)v9 setCacheManager:v15];

    v16 = [MEMORY[0x277CBEB58] set];
    [(HFCharacteristicValueManager *)v9 setMutableAllReadCharacteristics:v16];

    v17 = [MEMORY[0x277CBEB58] set];
    [(HFCharacteristicValueManager *)v9 setCharacteristicsWithCachedValues:v17];

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [(HFCharacteristicValueManager *)v9 setCachedReadErrorsKeyedByCharacteristicIdentifier:dictionary];

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    [(HFCharacteristicValueManager *)v9 setCachedWriteErrorsKeyedByCharacteristicIdentifier:dictionary2];

    dictionary3 = [MEMORY[0x277CBEB38] dictionary];
    [(HFCharacteristicValueManager *)v9 setCachedExecutionErrorsKeyedByActionSetIdentifier:dictionary3];

    v21 = objc_alloc_init(MEMORY[0x277D2C8C8]);
    [(HFCharacteristicValueManager *)v9 setInFlightReadCancelationToken:v21];

    v22 = objc_alloc_init(MEMORY[0x277D2C900]);
    firstReadCompleteFuture = v9->_firstReadCompleteFuture;
    v9->_firstReadCompleteFuture = v22;

    createHomeStateStreamObserver = [(HFCharacteristicValueManager *)v9 createHomeStateStreamObserver];
    homeStateStreamObserver = v9->_homeStateStreamObserver;
    v9->_homeStateStreamObserver = createHomeStateStreamObserver;

    homeStateStreamObserver = [(HFCharacteristicValueManager *)v9 homeStateStreamObserver];
    [homeStateStreamObserver startObserving];
  }

  return v9;
}

- (void)dealloc
{
  homeStateStreamObserver = [(HFCharacteristicValueManager *)self homeStateStreamObserver];
  [homeStateStreamObserver cancelObservation];

  v4.receiver = self;
  v4.super_class = HFCharacteristicValueManager;
  [(HFCharacteristicValueManager *)&v4 dealloc];
}

- (NSSet)allReadCharacteristics
{
  transactionLock = [(HFCharacteristicValueManager *)self transactionLock];
  [transactionLock lock];

  mutableAllReadCharacteristics = [(HFCharacteristicValueManager *)self mutableAllReadCharacteristics];
  v5 = [mutableAllReadCharacteristics copy];

  transactionLock2 = [(HFCharacteristicValueManager *)self transactionLock];
  [transactionLock2 unlock];

  return v5;
}

- (NSSet)characteristicsWithPendingReads
{
  v26 = *MEMORY[0x277D85DE8];
  transactionLock = [(HFCharacteristicValueManager *)self transactionLock];
  [transactionLock lock];

  v4 = [MEMORY[0x277CBEB58] set];
  runningTransactions = [(HFCharacteristicValueManager *)self runningTransactions];
  v6 = [runningTransactions mutableCopy];

  selfCopy = self;
  openTransaction = [(HFCharacteristicValueManager *)self openTransaction];
  [v6 na_safeAddObject:openTransaction];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        characteristicsToRead = [v13 characteristicsToRead];

        if (characteristicsToRead)
        {
          characteristicsToRead2 = [v13 characteristicsToRead];
          v20[0] = MEMORY[0x277D85DD0];
          v20[1] = 3221225472;
          v20[2] = __63__HFCharacteristicValueManager_characteristicsWithPendingReads__block_invoke;
          v20[3] = &unk_277DF6218;
          v20[4] = v13;
          v16 = [characteristicsToRead2 na_filter:v20];
          [v4 unionSet:v16];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }

  transactionLock2 = [(HFCharacteristicValueManager *)selfCopy transactionLock];
  [transactionLock2 unlock];

  return v4;
}

uint64_t __63__HFCharacteristicValueManager_characteristicsWithPendingReads__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 readFuturesKeyedByCharacteristicIdentifier];
  v5 = [v3 uniqueIdentifier];

  v6 = [v4 objectForKeyedSubscript:v5];
  v7 = [v6 isFinished];

  return v7 ^ 1u;
}

- (NSSet)characteristicsWithPendingWrites
{
  v21 = *MEMORY[0x277D85DE8];
  transactionLock = [(HFCharacteristicValueManager *)self transactionLock];
  [transactionLock lock];

  v4 = [MEMORY[0x277CBEB58] set];
  runningTransactions = [(HFCharacteristicValueManager *)self runningTransactions];
  v6 = [runningTransactions mutableCopy];

  openTransaction = [(HFCharacteristicValueManager *)self openTransaction];
  [v6 na_safeAddObject:openTransaction];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [(HFCharacteristicValueManager *)self _transactionLock_characteristicsWithPendingWritesInTransacton:*(*(&v16 + 1) + 8 * i) includeDirectWrites:1 includeActionSets:1 includeActions:1, v16];
        [v4 unionSet:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  transactionLock2 = [(HFCharacteristicValueManager *)self transactionLock];
  [transactionLock2 unlock];

  return v4;
}

- (unint64_t)cachedLoadingStateForCharacteristics:(id)characteristics actionSets:(id)sets
{
  characteristicsCopy = characteristics;
  setsCopy = sets;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  testingOverrideLoadingStates = [(HFCharacteristicValueManager *)self testingOverrideLoadingStates];
  v9 = [testingOverrideLoadingStates count];

  if (v9)
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __80__HFCharacteristicValueManager_cachedLoadingStateForCharacteristics_actionSets___block_invoke;
    v16[3] = &unk_277DF6240;
    v16[4] = self;
    v16[5] = &v17;
    [characteristicsCopy na_each:v16];
  }

  transactionLock = [(HFCharacteristicValueManager *)self transactionLock];
  [transactionLock lock];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __80__HFCharacteristicValueManager_cachedLoadingStateForCharacteristics_actionSets___block_invoke_2;
  v15[3] = &unk_277DF6290;
  v15[4] = self;
  v15[5] = &v17;
  [characteristicsCopy enumerateObjectsUsingBlock:v15];
  if ((v18[3] & 2) == 0)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __80__HFCharacteristicValueManager_cachedLoadingStateForCharacteristics_actionSets___block_invoke_4;
    v14[3] = &unk_277DF62B8;
    v14[4] = self;
    v14[5] = &v17;
    [setsCopy enumerateObjectsUsingBlock:v14];
  }

  transactionLock2 = [(HFCharacteristicValueManager *)self transactionLock];
  [transactionLock2 unlock];

  v12 = v18[3];
  _Block_object_dispose(&v17, 8);

  return v12;
}

void __80__HFCharacteristicValueManager_cachedLoadingStateForCharacteristics_actionSets___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 testingOverrideLoadingStates];
  v6 = [v4 uniqueIdentifier];

  v10 = [v5 objectForKeyedSubscript:v6];

  v7 = v10;
  if (v10)
  {
    v8 = *(*(*(a1 + 40) + 8) + 24);
    v9 = [v10 unsignedIntegerValue] | v8;
    v7 = v10;
    *(*(*(a1 + 40) + 8) + 24) = v9;
  }
}

void __80__HFCharacteristicValueManager_cachedLoadingStateForCharacteristics_actionSets___block_invoke_2(uint64_t a1, void *a2, BOOL *a3)
{
  v5 = a2;
  v6 = v5;
  v7 = *(a1 + 40);
  v8 = *(*(v7 + 8) + 24);
  if ((v8 & 1) == 0)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __80__HFCharacteristicValueManager_cachedLoadingStateForCharacteristics_actionSets___block_invoke_3;
    aBlock[3] = &unk_277DF6268;
    v9 = v5;
    v15 = v9;
    v10 = _Block_copy(aBlock);
    v11 = [*(a1 + 32) cacheManager];
    LODWORD(v9) = [v11 containsTransactionsReadingCharacteristic:v9 filterBlock:v10];

    if (v9)
    {
      *(*(*(a1 + 40) + 8) + 24) |= 1uLL;
    }

    v7 = *(a1 + 40);
    v8 = *(*(v7 + 8) + 24);
  }

  if ((v8 & 2) == 0)
  {
    v12 = [*(a1 + 32) cacheManager];
    v13 = [v12 containsTransactionsWritingCharacteristic:v6];

    v7 = *(a1 + 40);
    if (v13)
    {
      *(*(v7 + 8) + 24) |= 2uLL;
      v7 = *(a1 + 40);
    }
  }

  *a3 = (~*(*(v7 + 8) + 24) & 3) == 0;
}

uint64_t __80__HFCharacteristicValueManager_cachedLoadingStateForCharacteristics_actionSets___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 readFuturesKeyedByCharacteristicIdentifier];
  v4 = [*(a1 + 32) uniqueIdentifier];
  v5 = [v3 objectForKeyedSubscript:v4];
  v6 = [v5 isFinished];

  return v6 ^ 1u;
}

void __80__HFCharacteristicValueManager_cachedLoadingStateForCharacteristics_actionSets___block_invoke_4(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 cacheManager];
  v8 = [v7 containsTransactionsExecutingActionSet:v6];

  if (v8)
  {
    *(*(*(a1 + 40) + 8) + 24) |= 2uLL;
    *a3 = 1;
  }
}

- (unint64_t)loadingStateForCharacteristics:(id)characteristics actionSets:(id)sets
{
  characteristicsCopy = characteristics;
  setsCopy = sets;
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 0;
  testingOverrideLoadingStates = [(HFCharacteristicValueManager *)self testingOverrideLoadingStates];
  v9 = [testingOverrideLoadingStates count];

  if (v9)
  {
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __74__HFCharacteristicValueManager_loadingStateForCharacteristics_actionSets___block_invoke;
    v39[3] = &unk_277DF6240;
    v39[4] = self;
    v39[5] = &v40;
    [characteristicsCopy na_each:v39];
  }

  v10 = [(HFCharacteristicValueManager *)self cachedLoadingStateForCharacteristics:characteristicsCopy actionSets:setsCopy];
  v41[3] |= v10;
  transactionLock = [(HFCharacteristicValueManager *)self transactionLock];
  [transactionLock lock];

  v12 = v41[3];
  if ((v12 & 1) == 0)
  {
    openTransaction = [(HFCharacteristicValueManager *)self openTransaction];
    characteristicsToRead = [openTransaction characteristicsToRead];
    v15 = [characteristicsToRead intersectsSet:characteristicsCopy];

    v12 = v41[3];
    if (v15)
    {
      v12 |= 1uLL;
      v41[3] = v12;
    }
  }

  if ((v12 & 2) == 0)
  {
    openTransaction2 = [(HFCharacteristicValueManager *)self openTransaction];
    actionSetsToExecute = [openTransaction2 actionSetsToExecute];
    v18 = [actionSetsToExecute intersectsSet:setsCopy];

    v12 = v41[3];
    if (v18)
    {
      v12 |= 2uLL;
      v41[3] = v12;
    }
  }

  if ((v12 & 2) == 0)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __74__HFCharacteristicValueManager_loadingStateForCharacteristics_actionSets___block_invoke_2;
    aBlock[3] = &unk_277DF62E0;
    v38 = characteristicsCopy;
    v19 = _Block_copy(aBlock);
    openTransaction3 = [(HFCharacteristicValueManager *)self openTransaction];
    writeCharacteristicRequests = [openTransaction3 writeCharacteristicRequests];
    v22 = [writeCharacteristicRequests na_any:v19];

    if (v22)
    {
      v41[3] |= 2uLL;
    }

    v12 = v41[3];
  }

  if ((v12 & 2) == 0)
  {
    v32 = MEMORY[0x277D85DD0];
    v33 = 3221225472;
    v34 = __74__HFCharacteristicValueManager_loadingStateForCharacteristics_actionSets___block_invoke_3;
    v35 = &unk_277DF6308;
    v36 = characteristicsCopy;
    v23 = _Block_copy(&v32);
    v24 = [(HFCharacteristicValueManager *)self openTransaction:v32];
    actionsToExecute = [v24 actionsToExecute];
    v26 = [actionsToExecute na_any:v23];

    if (v26)
    {
      v41[3] |= 2uLL;
    }
  }

  if (+[HFHomeKitDispatcher synchronizesHomeDataModel])
  {
    if ([(HFCharacteristicValueManager *)self staticHomeDataModelHasInProgressWriteForCharacteristic:characteristicsCopy])
    {
      v41[3] |= 2uLL;
    }

    homeStateStreamObserver = [(HFCharacteristicValueManager *)self homeStateStreamObserver];
    v28 = [homeStateStreamObserver homeStateStreamHasInProgressWriteFor:characteristicsCopy];

    if (v28)
    {
      v41[3] |= 2uLL;
    }
  }

  transactionLock2 = [(HFCharacteristicValueManager *)self transactionLock];
  [transactionLock2 unlock];

  v30 = v41[3];
  _Block_object_dispose(&v40, 8);

  return v30;
}

void __74__HFCharacteristicValueManager_loadingStateForCharacteristics_actionSets___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 testingOverrideLoadingStates];
  v6 = [v4 uniqueIdentifier];

  v10 = [v5 objectForKeyedSubscript:v6];

  v7 = v10;
  if (v10)
  {
    v8 = *(*(*(a1 + 40) + 8) + 24);
    v9 = [v10 unsignedIntegerValue] | v8;
    v7 = v10;
    *(*(*(a1 + 40) + 8) + 24) = v9;
  }
}

uint64_t __74__HFCharacteristicValueManager_loadingStateForCharacteristics_actionSets___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 characteristic];
  v4 = [v2 containsObject:v3];

  return v4;
}

uint64_t __74__HFCharacteristicValueManager_loadingStateForCharacteristics_actionSets___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    v7 = *(a1 + 32);
    v8 = [v6 characteristic];
    v9 = [v7 containsObject:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_transactionLock_characteristicsWithPendingWritesInTransacton:(id)transacton includeDirectWrites:(BOOL)writes includeActionSets:(BOOL)sets includeActions:(BOOL)actions
{
  actionsCopy = actions;
  setsCopy = sets;
  writesCopy = writes;
  v52 = *MEMORY[0x277D85DE8];
  transactonCopy = transacton;
  v10 = [MEMORY[0x277CBEB58] set];
  if (writesCopy)
  {
    writeCharacteristicRequests = [transactonCopy writeCharacteristicRequests];

    if (writeCharacteristicRequests)
    {
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      writeCharacteristicRequests2 = [transactonCopy writeCharacteristicRequests];
      v13 = [writeCharacteristicRequests2 countByEnumeratingWithState:&v45 objects:v51 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v46;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v46 != v15)
            {
              objc_enumerationMutation(writeCharacteristicRequests2);
            }

            characteristic = [*(*(&v45 + 1) + 8 * i) characteristic];
            [v10 na_safeAddObject:characteristic];
          }

          v14 = [writeCharacteristicRequests2 countByEnumeratingWithState:&v45 objects:v51 count:16];
        }

        while (v14);
      }
    }
  }

  if (setsCopy)
  {
    actionSetsToExecute = [transactonCopy actionSetsToExecute];

    if (actionSetsToExecute)
    {
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      actionSetsToExecute2 = [transactonCopy actionSetsToExecute];
      v20 = [actionSetsToExecute2 countByEnumeratingWithState:&v41 objects:v50 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v42;
        do
        {
          for (j = 0; j != v21; ++j)
          {
            if (*v42 != v22)
            {
              objc_enumerationMutation(actionSetsToExecute2);
            }

            hf_affectedCharacteristics = [*(*(&v41 + 1) + 8 * j) hf_affectedCharacteristics];
            if (hf_affectedCharacteristics)
            {
              [v10 unionSet:hf_affectedCharacteristics];
            }
          }

          v21 = [actionSetsToExecute2 countByEnumeratingWithState:&v41 objects:v50 count:16];
        }

        while (v21);
      }
    }
  }

  if (actionsCopy)
  {
    actionsToExecute = [transactonCopy actionsToExecute];

    if (actionsToExecute)
    {
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      actionsToExecute2 = [transactonCopy actionsToExecute];
      v27 = [actionsToExecute2 countByEnumeratingWithState:&v37 objects:v49 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v38;
        do
        {
          for (k = 0; k != v28; ++k)
          {
            if (*v38 != v29)
            {
              objc_enumerationMutation(actionsToExecute2);
            }

            v31 = *(*(&v37 + 1) + 8 * k);
            objc_opt_class();
            v32 = v31;
            if (objc_opt_isKindOfClass())
            {
              v33 = v32;
            }

            else
            {
              v33 = 0;
            }

            v34 = v33;

            characteristic2 = [v34 characteristic];
            [v10 na_safeAddObject:characteristic2];
          }

          v28 = [actionsToExecute2 countByEnumeratingWithState:&v37 objects:v49 count:16];
        }

        while (v28);
      }
    }
  }

  return v10;
}

- (void)beginTransactionWithReason:(id)reason
{
  reasonCopy = reason;
  v5 = objc_opt_new();
  [(HFCharacteristicValueManager *)self beginTransactionWithReason:reasonCopy readPolicy:v5 logger:0];
}

- (void)beginTransactionWithReason:(id)reason readPolicy:(id)policy logger:(id)logger
{
  v46 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  policyCopy = policy;
  loggerCopy = logger;
  if (!reasonCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HFCharacteristicValueManager.m" lineNumber:368 description:{@"Invalid parameter not satisfying: %@", @"reason"}];
  }

  transactionLock = [(HFCharacteristicValueManager *)self transactionLock];
  [transactionLock lock];

  openTransaction = [(HFCharacteristicValueManager *)self openTransaction];

  if (!openTransaction)
  {
    v24 = objc_alloc_init(HFCharacteristicValueTransaction);
    [(HFCharacteristicValueManager *)self setOpenTransaction:v24];

    v25 = loggerCopy;
    if (!loggerCopy)
    {
      v25 = [[HFUpdateLogger alloc] initWithTimeout:reasonCopy description:15.0];
    }

    openTransaction2 = [(HFCharacteristicValueManager *)self openTransaction];
    [openTransaction2 setLoggerIsExternal:loggerCopy != 0];

    openTransaction3 = [(HFCharacteristicValueManager *)self openTransaction];
    [openTransaction3 setLogger:v25];

    openTransaction4 = [(HFCharacteristicValueManager *)self openTransaction];
    logger = [openTransaction4 logger];

    if (logger)
    {
      state.opaque[0] = 0;
      state.opaque[1] = 0;
      openTransaction5 = [(HFCharacteristicValueManager *)self openTransaction];
      logger2 = [openTransaction5 logger];
      loggerActivity = [logger2 loggerActivity];
      os_activity_scope_enter(loggerActivity, &state);

      v33 = HFLogForCategory(0x3DuLL);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v44 = reasonCopy;
        _os_log_impl(&dword_20D9BF000, v33, OS_LOG_TYPE_DEFAULT, "----- OPEN TRANSACTION (%@) -----", buf, 0xCu);
      }

      os_activity_scope_leave(&state);
    }

    else
    {
      v42 = HFLogForCategory(0x3DuLL);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(state.opaque[0]) = 138412290;
        *(state.opaque + 4) = reasonCopy;
        _os_log_impl(&dword_20D9BF000, v42, OS_LOG_TYPE_DEFAULT, "----- OPEN TRANSACTION (%@) -----", &state, 0xCu);
      }
    }

    openTransaction6 = [(HFCharacteristicValueManager *)self openTransaction];
    onFinishGroup = [openTransaction6 onFinishGroup];
    dispatch_group_enter(onFinishGroup);

    loggerCopy = v25;
    goto LABEL_17;
  }

  openTransaction7 = [(HFCharacteristicValueManager *)self openTransaction];
  logger3 = [openTransaction7 logger];

  if (logger3)
  {
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    openTransaction8 = [(HFCharacteristicValueManager *)self openTransaction];
    logger4 = [openTransaction8 logger];
    loggerActivity2 = [logger4 loggerActivity];
    os_activity_scope_enter(loggerActivity2, &state);

    v19 = HFLogForCategory(0x3DuLL);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v44 = reasonCopy;
      _os_log_impl(&dword_20D9BF000, v19, OS_LOG_TYPE_DEFAULT, "Nest transaction (%@)", buf, 0xCu);
    }

    os_activity_scope_leave(&state);
  }

  else
  {
    v41 = HFLogForCategory(0x3DuLL);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(state.opaque[0]) = 138412290;
      *(state.opaque + 4) = reasonCopy;
      _os_log_impl(&dword_20D9BF000, v41, OS_LOG_TYPE_DEFAULT, "Nest transaction (%@)", &state, 0xCu);
    }
  }

  openTransaction9 = [(HFCharacteristicValueManager *)self openTransaction];
  clientReasonsStack = [openTransaction9 clientReasonsStack];
  v22 = [clientReasonsStack containsObject:reasonCopy];

  if (v22)
  {
    openTransaction6 = [(HFCharacteristicValueManager *)self openTransaction];
    NSLog(&cfstr_TheOpenTransac.isa, openTransaction6, reasonCopy);
LABEL_17:
  }

  openTransaction10 = [(HFCharacteristicValueManager *)self openTransaction];
  readPolicy = [openTransaction10 readPolicy];
  [readPolicy pushPolicy:policyCopy];

  openTransaction11 = [(HFCharacteristicValueManager *)self openTransaction];
  clientReasonsStack2 = [openTransaction11 clientReasonsStack];
  [clientReasonsStack2 addObject:reasonCopy];

  transactionLock2 = [(HFCharacteristicValueManager *)self transactionLock];
  [transactionLock2 unlock];
}

- (id)readValueForCharacteristic:(id)characteristic
{
  v111 = *MEMORY[0x277D85DE8];
  characteristicCopy = characteristic;
  if (!characteristicCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HFCharacteristicValueManager.m" lineNumber:394 description:{@"Invalid parameter not satisfying: %@", @"characteristic != nil"}];
  }

  transactionLock = [(HFCharacteristicValueManager *)self transactionLock];
  [transactionLock lock];

  uniqueIdentifier = [characteristicCopy uniqueIdentifier];
  openTransaction = [(HFCharacteristicValueManager *)self openTransaction];
  readPolicy = [openTransaction readPolicy];
  v107 = 0;
  v9 = [readPolicy evaluateWithCharacteristic:characteristicCopy traits:&v107];
  v10 = v107;

  allObjects = [v10 allObjects];
  v83 = [allObjects componentsJoinedByString:{@", "}];

  openTransaction2 = [(HFCharacteristicValueManager *)self openTransaction];
  if (openTransaction2)
  {
    v13 = v9 == 0;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  if (!v14)
  {
    goto LABEL_15;
  }

  openTransaction3 = [(HFCharacteristicValueManager *)self openTransaction];
  logger = [openTransaction3 logger];
  v17 = logger == 0;

  if (v17)
  {
    v74 = HFLogForCategory(0x3DuLL);
    if (os_log_type_enabled(v74, OS_LOG_TYPE_DEBUG))
    {
      hf_prettyDescription = [characteristicCopy hf_prettyDescription];
      *buf = 138412546;
      *&buf[4] = v83;
      *&buf[12] = 2112;
      *&buf[14] = hf_prettyDescription;
      _os_log_impl(&dword_20D9BF000, v74, OS_LOG_TYPE_DEBUG, "Skip read (%@): %@", buf, 0x16u);
    }
  }

  else
  {
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    openTransaction4 = [(HFCharacteristicValueManager *)self openTransaction];
    logger2 = [openTransaction4 logger];
    loggerActivity = [logger2 loggerActivity];
    os_activity_scope_enter(loggerActivity, &state);

    v21 = HFLogForCategory(0x3DuLL);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      hf_prettyDescription2 = [characteristicCopy hf_prettyDescription];
      *buf = 138412546;
      *&buf[4] = v83;
      *&buf[12] = 2112;
      *&buf[14] = hf_prettyDescription2;
      _os_log_impl(&dword_20D9BF000, v21, OS_LOG_TYPE_DEBUG, "Skip read (%@): %@", buf, 0x16u);
    }

    os_activity_scope_leave(&state);
  }

  objc_initWeak(buf, self);
  openTransaction5 = [(HFCharacteristicValueManager *)self openTransaction];
  commitFuture = [openTransaction5 commitFuture];
  v103[0] = MEMORY[0x277D85DD0];
  v103[1] = 3221225472;
  v103[2] = __59__HFCharacteristicValueManager_readValueForCharacteristic___block_invoke;
  v103[3] = &unk_277DF6330;
  objc_copyWeak(&v106, buf);
  v104 = characteristicCopy;
  v105 = v10;
  v25 = [commitFuture flatMap:v103];

  objc_destroyWeak(&v106);
  objc_destroyWeak(buf);
  if (!v25)
  {
LABEL_15:
    v101 = 0u;
    v102 = 0u;
    v99 = 0u;
    v100 = 0u;
    runningTransactions = [(HFCharacteristicValueManager *)self runningTransactions];
    v27 = [runningTransactions countByEnumeratingWithState:&v99 objects:v108 count:16];
    if (v27)
    {
      v28 = *v100;
LABEL_17:
      v29 = 0;
      while (1)
      {
        if (*v100 != v28)
        {
          objc_enumerationMutation(runningTransactions);
        }

        readFuturesKeyedByCharacteristicIdentifier = [*(*(&v99 + 1) + 8 * v29) readFuturesKeyedByCharacteristicIdentifier];
        v31 = [readFuturesKeyedByCharacteristicIdentifier objectForKeyedSubscript:uniqueIdentifier];

        if (v31)
        {
          if (([v31 isFinished] & 1) == 0)
          {
            break;
          }
        }

        if (v27 == ++v29)
        {
          v27 = [runningTransactions countByEnumeratingWithState:&v99 objects:v108 count:16];
          if (v27)
          {
            goto LABEL_17;
          }

          goto LABEL_24;
        }
      }

      openTransaction6 = [(HFCharacteristicValueManager *)self openTransaction];
      logger3 = [openTransaction6 logger];
      v34 = logger3 == 0;

      if (v34)
      {
        v76 = HFLogForCategory(0x3DuLL);
        if (os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG))
        {
          hf_prettyDescription3 = [characteristicCopy hf_prettyDescription];
          *buf = 138412290;
          *&buf[4] = hf_prettyDescription3;
          _os_log_impl(&dword_20D9BF000, v76, OS_LOG_TYPE_DEBUG, "Duplicate read in other running transaction: %@", buf, 0xCu);
        }
      }

      else
      {
        *buf = 0;
        *&buf[8] = 0;
        openTransaction7 = [(HFCharacteristicValueManager *)self openTransaction];
        logger4 = [openTransaction7 logger];
        loggerActivity2 = [logger4 loggerActivity];
        os_activity_scope_enter(loggerActivity2, buf);

        v38 = HFLogForCategory(0x3DuLL);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
        {
          hf_prettyDescription4 = [characteristicCopy hf_prettyDescription];
          LODWORD(state.opaque[0]) = 138412290;
          *(state.opaque + 4) = hf_prettyDescription4;
          _os_log_impl(&dword_20D9BF000, v38, OS_LOG_TYPE_DEBUG, "Duplicate read in other running transaction: %@", &state, 0xCu);
        }

        os_activity_scope_leave(buf);
      }

      objc_initWeak(buf, self);
      v95[0] = MEMORY[0x277D85DD0];
      v95[1] = 3221225472;
      v95[2] = __59__HFCharacteristicValueManager_readValueForCharacteristic___block_invoke_106;
      v95[3] = &unk_277DF6358;
      objc_copyWeak(&v98, buf);
      v96 = characteristicCopy;
      v97 = v10;
      v25 = [v31 flatMap:v95];

      objc_destroyWeak(&v98);
      objc_destroyWeak(buf);

      if (v25)
      {
        goto LABEL_45;
      }
    }

    else
    {
LABEL_24:
    }

    openTransaction8 = [(HFCharacteristicValueManager *)self openTransaction];
    v41 = openTransaction8 == 0;

    if (v41)
    {
      goto LABEL_40;
    }

    openTransaction9 = [(HFCharacteristicValueManager *)self openTransaction];
    readFuturesKeyedByCharacteristicIdentifier2 = [openTransaction9 readFuturesKeyedByCharacteristicIdentifier];
    v44 = [readFuturesKeyedByCharacteristicIdentifier2 objectForKeyedSubscript:uniqueIdentifier];

    if (v44)
    {
      characteristicsToRead = [openTransaction9 characteristicsToRead];
      v46 = [characteristicsToRead containsObject:characteristicCopy];

      if ((v46 & 1) == 0)
      {
        NSLog(&cfstr_InconsistentSt.isa);
      }
    }

    else
    {
      openTransaction10 = [(HFCharacteristicValueManager *)self openTransaction];
      logger5 = [openTransaction10 logger];
      v49 = logger5 == 0;

      if (v49)
      {
        v80 = HFLogForCategory(0x3DuLL);
        if (os_log_type_enabled(v80, OS_LOG_TYPE_DEBUG))
        {
          hf_prettyDescription5 = [characteristicCopy hf_prettyDescription];
          *buf = 138412546;
          *&buf[4] = v83;
          *&buf[12] = 2112;
          *&buf[14] = hf_prettyDescription5;
          _os_log_impl(&dword_20D9BF000, v80, OS_LOG_TYPE_DEBUG, "New read request (%@): %@", buf, 0x16u);
        }
      }

      else
      {
        state.opaque[0] = 0;
        state.opaque[1] = 0;
        openTransaction11 = [(HFCharacteristicValueManager *)self openTransaction];
        logger6 = [openTransaction11 logger];
        loggerActivity3 = [logger6 loggerActivity];
        os_activity_scope_enter(loggerActivity3, &state);

        v53 = HFLogForCategory(0x3DuLL);
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
        {
          hf_prettyDescription6 = [characteristicCopy hf_prettyDescription];
          *buf = 138412546;
          *&buf[4] = v83;
          *&buf[12] = 2112;
          *&buf[14] = hf_prettyDescription6;
          _os_log_impl(&dword_20D9BF000, v53, OS_LOG_TYPE_DEBUG, "New read request (%@): %@", buf, 0x16u);
        }

        os_activity_scope_leave(&state);
      }

      v44 = objc_alloc_init(MEMORY[0x277D2C900]);
      readFuturesKeyedByCharacteristicIdentifier3 = [openTransaction9 readFuturesKeyedByCharacteristicIdentifier];
      [readFuturesKeyedByCharacteristicIdentifier3 setObject:v44 forKeyedSubscript:uniqueIdentifier];
    }

    characteristicsToRead2 = [openTransaction9 characteristicsToRead];
    [characteristicsToRead2 addObject:characteristicCopy];

    objc_initWeak(buf, self);
    v91[0] = MEMORY[0x277D85DD0];
    v91[1] = 3221225472;
    v91[2] = __59__HFCharacteristicValueManager_readValueForCharacteristic___block_invoke_111;
    v91[3] = &unk_277DF6358;
    objc_copyWeak(&v94, buf);
    v92 = characteristicCopy;
    v93 = v10;
    v25 = [v44 flatMap:v91];

    objc_destroyWeak(&v94);
    objc_destroyWeak(buf);

    if (!v25)
    {
LABEL_40:
      [(HFCharacteristicValueManager *)self beginTransactionWithReason:@"characteristicValueManagerImplicitTransaction"];
      openTransaction12 = [(HFCharacteristicValueManager *)self openTransaction];
      logger7 = [openTransaction12 logger];
      v59 = logger7 == 0;

      if (v59)
      {
        v78 = HFLogForCategory(0x3DuLL);
        if (os_log_type_enabled(v78, OS_LOG_TYPE_DEBUG))
        {
          hf_prettyDescription7 = [characteristicCopy hf_prettyDescription];
          *buf = 138412546;
          *&buf[4] = v83;
          *&buf[12] = 2112;
          *&buf[14] = hf_prettyDescription7;
          _os_log_impl(&dword_20D9BF000, v78, OS_LOG_TYPE_DEBUG, "Read request for implicit transaction (%@): %@", buf, 0x16u);
        }
      }

      else
      {
        state.opaque[0] = 0;
        state.opaque[1] = 0;
        logger8 = [openTransaction12 logger];
        loggerActivity4 = [logger8 loggerActivity];
        os_activity_scope_enter(loggerActivity4, &state);

        v62 = HFLogForCategory(0x3DuLL);
        if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
        {
          hf_prettyDescription8 = [characteristicCopy hf_prettyDescription];
          *buf = 138412546;
          *&buf[4] = v83;
          *&buf[12] = 2112;
          *&buf[14] = hf_prettyDescription8;
          _os_log_impl(&dword_20D9BF000, v62, OS_LOG_TYPE_DEBUG, "Read request for implicit transaction (%@): %@", buf, 0x16u);
        }

        os_activity_scope_leave(&state);
      }

      v64 = objc_alloc_init(MEMORY[0x277D2C900]);
      readFuturesKeyedByCharacteristicIdentifier4 = [openTransaction12 readFuturesKeyedByCharacteristicIdentifier];
      [readFuturesKeyedByCharacteristicIdentifier4 setObject:v64 forKeyedSubscript:uniqueIdentifier];

      characteristicsToRead3 = [openTransaction12 characteristicsToRead];
      [characteristicsToRead3 addObject:characteristicCopy];

      objc_initWeak(buf, self);
      v87[0] = MEMORY[0x277D85DD0];
      v87[1] = 3221225472;
      v87[2] = __59__HFCharacteristicValueManager_readValueForCharacteristic___block_invoke_112;
      v87[3] = &unk_277DF6358;
      objc_copyWeak(&v90, buf);
      v88 = characteristicCopy;
      v89 = v10;
      v25 = [v64 flatMap:v87];
      [(HFCharacteristicValueManager *)self commitTransactionWithReason:@"characteristicValueManagerImplicitTransaction"];

      objc_destroyWeak(&v90);
      objc_destroyWeak(buf);
    }
  }

LABEL_45:
  transactionLock2 = [(HFCharacteristicValueManager *)self transactionLock];
  [transactionLock2 unlock];

  if (!v25)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"HFCharacteristicValueManager.m" lineNumber:500 description:@"None of our cases were able to create a future for this request"];
  }

  v84[0] = MEMORY[0x277D85DD0];
  v84[1] = 3221225472;
  v84[2] = __59__HFCharacteristicValueManager_readValueForCharacteristic___block_invoke_2;
  v84[3] = &unk_277DF6380;
  v84[4] = self;
  v85 = characteristicCopy;
  v86 = v10;
  v68 = v10;
  v69 = characteristicCopy;
  v70 = [v25 recover:v84];

  return v70;
}

id __59__HFCharacteristicValueManager_readValueForCharacteristic___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained cachedValueForCharacteristic:*(a1 + 32)];
  v4 = objc_loadWeakRetained((a1 + 48));
  v5 = [v4 cachedReadErrorForCharacteristic:*(a1 + 32)];

  if (!v5)
  {
    v5 = [MEMORY[0x277CCA9B8] hf_errorWithCode:4];
  }

  v6 = [[HFCharacteristicReadResponse alloc] initWithCharacteristic:*(a1 + 32) readTraits:*(a1 + 40) value:v3 error:v5];
  v7 = [MEMORY[0x277D2C900] futureWithResult:v6];

  return v7;
}

id __59__HFCharacteristicValueManager_readValueForCharacteristic___block_invoke_106(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = [WeakRetained cachedValueForCharacteristic:*(a1 + 32)];

  v6 = MEMORY[0x277D2C900];
  v7 = [[HFCharacteristicReadResponse alloc] initWithHomeKitResponse:v3 value:v5 readTraits:*(a1 + 40)];

  v8 = [v6 futureWithResult:v7];

  return v8;
}

id __59__HFCharacteristicValueManager_readValueForCharacteristic___block_invoke_111(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = [WeakRetained cachedValueForCharacteristic:*(a1 + 32)];

  v6 = MEMORY[0x277D2C900];
  v7 = [[HFCharacteristicReadResponse alloc] initWithHomeKitResponse:v3 value:v5 readTraits:*(a1 + 40)];

  v8 = [v6 futureWithResult:v7];

  return v8;
}

id __59__HFCharacteristicValueManager_readValueForCharacteristic___block_invoke_112(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = [WeakRetained cachedValueForCharacteristic:*(a1 + 32)];

  v6 = MEMORY[0x277D2C900];
  v7 = [[HFCharacteristicReadResponse alloc] initWithHomeKitResponse:v3 value:v5 readTraits:*(a1 + 40)];

  v8 = [v6 futureWithResult:v7];

  return v8;
}

id __59__HFCharacteristicValueManager_readValueForCharacteristic___block_invoke_2(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a2;
  v6 = [v3 cachedValueForCharacteristic:v4];
  v7 = MEMORY[0x277D2C900];
  v8 = [[HFCharacteristicReadResponse alloc] initWithCharacteristic:a1[5] readTraits:a1[6] value:v6 error:v5];

  v9 = [v7 futureWithResult:v8];

  return v9;
}

- (id)writeValue:(id)value forCharacteristic:(id)characteristic
{
  v105 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  characteristicCopy = characteristic;
  if (!characteristicCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HFCharacteristicValueManager.m" lineNumber:516 description:{@"Invalid parameter not satisfying: %@", @"characteristic != nil"}];
  }

  v80 = a2;
  uniqueIdentifier = [characteristicCopy uniqueIdentifier];
  transactionLock = [(HFCharacteristicValueManager *)self transactionLock];
  [transactionLock lock];

  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  runningTransactions = [(HFCharacteristicValueManager *)self runningTransactions];
  reverseObjectEnumerator = [runningTransactions reverseObjectEnumerator];

  v83 = valueCopy;
  selfCopy = self;
  v85 = uniqueIdentifier;
  v86 = [reverseObjectEnumerator countByEnumeratingWithState:&v95 objects:v104 count:16];
  if (!v86)
  {
LABEL_30:

    goto LABEL_31;
  }

  v13 = *v96;
  v81 = *v96;
  v82 = reverseObjectEnumerator;
LABEL_5:
  v14 = 0;
  while (1)
  {
    if (*v96 != v13)
    {
      objc_enumerationMutation(reverseObjectEnumerator);
    }

    v15 = *(*(&v95 + 1) + 8 * v14);
    writeFuturesKeyedByCharacteristicIdentifier = [v15 writeFuturesKeyedByCharacteristicIdentifier];
    v17 = [writeFuturesKeyedByCharacteristicIdentifier objectForKeyedSubscript:uniqueIdentifier];

    if (!v17 || ([v17 isFinished] & 1) != 0)
    {
      goto LABEL_19;
    }

    v93 = 0u;
    v94 = 0u;
    v91 = 0u;
    v92 = 0u;
    writeCharacteristicRequests = [v15 writeCharacteristicRequests];
    v19 = [writeCharacteristicRequests countByEnumeratingWithState:&v91 objects:v103 count:16];
    if (v19)
    {
      break;
    }

LABEL_18:

    valueCopy = v83;
    self = selfCopy;
    uniqueIdentifier = v85;
    v13 = v81;
    reverseObjectEnumerator = v82;
LABEL_19:

    if (++v14 == v86)
    {
      v86 = [reverseObjectEnumerator countByEnumeratingWithState:&v95 objects:v104 count:16];
      if (v86)
      {
        goto LABEL_5;
      }

      goto LABEL_30;
    }
  }

  v20 = v19;
  v21 = *v92;
LABEL_12:
  v22 = 0;
  while (1)
  {
    if (*v92 != v21)
    {
      objc_enumerationMutation(writeCharacteristicRequests);
    }

    v23 = *(*(&v91 + 1) + 8 * v22);
    characteristic = [v23 characteristic];
    v25 = [characteristic isEqual:characteristicCopy];

    if (v25)
    {
      break;
    }

    if (v20 == ++v22)
    {
      v20 = [writeCharacteristicRequests countByEnumeratingWithState:&v91 objects:v103 count:16];
      if (v20)
      {
        goto LABEL_12;
      }

      goto LABEL_18;
    }
  }

  value = [v23 value];
  valueCopy = v83;
  v27 = [value isEqual:v83];

  if ((v27 & 1) == 0)
  {

    self = selfCopy;
    uniqueIdentifier = v85;
    reverseObjectEnumerator = v82;
    goto LABEL_30;
  }

  self = selfCopy;
  openTransaction = [(HFCharacteristicValueManager *)selfCopy openTransaction];
  logger = [openTransaction logger];

  if (logger)
  {
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    openTransaction2 = [(HFCharacteristicValueManager *)selfCopy openTransaction];
    logger2 = [openTransaction2 logger];
    loggerActivity = [logger2 loggerActivity];
    os_activity_scope_enter(loggerActivity, &state);

    v33 = HFLogForCategory(0x3DuLL);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      hf_prettyDescription = [characteristicCopy hf_prettyDescription];
      *buf = 138412290;
      v101 = hf_prettyDescription;
      _os_log_impl(&dword_20D9BF000, v33, OS_LOG_TYPE_DEFAULT, "Duplicate write: %@", buf, 0xCu);
    }

    os_activity_scope_leave(&state);
  }

  else
  {
    v76 = HFLogForCategory(0x3DuLL);
    if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
    {
      hf_prettyDescription2 = [characteristicCopy hf_prettyDescription];
      LODWORD(state.opaque[0]) = 138412290;
      *(state.opaque + 4) = hf_prettyDescription2;
      _os_log_impl(&dword_20D9BF000, v76, OS_LOG_TYPE_DEFAULT, "Duplicate write: %@", &state, 0xCu);
    }
  }

  uniqueIdentifier = v85;
  v35 = [v17 flatMap:&__block_literal_global_49];

  if (v35)
  {
    goto LABEL_60;
  }

LABEL_31:
  openTransaction3 = [(HFCharacteristicValueManager *)self openTransaction];

  if (!openTransaction3)
  {
    goto LABEL_55;
  }

  openTransaction4 = [(HFCharacteristicValueManager *)self openTransaction];
  writeFuturesKeyedByCharacteristicIdentifier2 = [openTransaction4 writeFuturesKeyedByCharacteristicIdentifier];
  v39 = [writeFuturesKeyedByCharacteristicIdentifier2 objectForKeyedSubscript:uniqueIdentifier];

  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  writeCharacteristicRequests2 = [openTransaction4 writeCharacteristicRequests];
  v41 = [writeCharacteristicRequests2 countByEnumeratingWithState:&v87 objects:v99 count:16];
  if (v41)
  {
    v42 = *v88;
    while (2)
    {
      for (i = 0; i != v41; ++i)
      {
        if (*v88 != v42)
        {
          objc_enumerationMutation(writeCharacteristicRequests2);
        }

        v44 = *(*(&v87 + 1) + 8 * i);
        characteristic2 = [v44 characteristic];
        v46 = [characteristic2 isEqual:characteristicCopy];

        if (v46)
        {
          v41 = v44;
          goto LABEL_42;
        }
      }

      v41 = [writeCharacteristicRequests2 countByEnumeratingWithState:&v87 objects:v99 count:16];
      if (v41)
      {
        continue;
      }

      break;
    }

LABEL_42:
    valueCopy = v83;
    self = selfCopy;
    uniqueIdentifier = v85;
  }

  if (v39)
  {
    v47 = v41 == 0;
  }

  else
  {
    v47 = 1;
  }

  if (v47 && (v41 | v39) != 0)
  {
    NSLog(&cfstr_InconsistentSt_0.isa);
  }

  if (v41)
  {
    writeCharacteristicRequests3 = [openTransaction4 writeCharacteristicRequests];
    [writeCharacteristicRequests3 removeObject:v41];

    if (!v39)
    {
      goto LABEL_53;
    }
  }

  else
  {
    openTransaction5 = [(HFCharacteristicValueManager *)self openTransaction];
    logger3 = [openTransaction5 logger];

    if (logger3)
    {
      state.opaque[0] = 0;
      state.opaque[1] = 0;
      openTransaction6 = [(HFCharacteristicValueManager *)self openTransaction];
      logger4 = [openTransaction6 logger];
      loggerActivity2 = [logger4 loggerActivity];
      os_activity_scope_enter(loggerActivity2, &state);

      v70 = HFLogForCategory(0x3DuLL);
      if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
      {
        hf_prettyDescription3 = [characteristicCopy hf_prettyDescription];
        *buf = 138412290;
        v101 = hf_prettyDescription3;
        _os_log_impl(&dword_20D9BF000, v70, OS_LOG_TYPE_DEFAULT, "New write request: %@", buf, 0xCu);
      }

      os_activity_scope_leave(&state);
    }

    else
    {
      v78 = HFLogForCategory(0x3DuLL);
      if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
      {
        hf_prettyDescription4 = [characteristicCopy hf_prettyDescription];
        LODWORD(state.opaque[0]) = 138412290;
        *(state.opaque + 4) = hf_prettyDescription4;
        _os_log_impl(&dword_20D9BF000, v78, OS_LOG_TYPE_DEFAULT, "New write request: %@", &state, 0xCu);
      }
    }

    uniqueIdentifier = v85;
    if (!v39)
    {
LABEL_53:
      v39 = objc_alloc_init(MEMORY[0x277D2C900]);
      writeFuturesKeyedByCharacteristicIdentifier3 = [openTransaction4 writeFuturesKeyedByCharacteristicIdentifier];
      [writeFuturesKeyedByCharacteristicIdentifier3 setObject:v39 forKeyedSubscript:uniqueIdentifier];
    }
  }

  writeCharacteristicRequests4 = [openTransaction4 writeCharacteristicRequests];
  v52 = [MEMORY[0x277CD19B0] writeRequestWithCharacteristic:characteristicCopy value:valueCopy];
  [writeCharacteristicRequests4 addObject:v52];

  v35 = [v39 flatMap:&__block_literal_global_123_0];

  if (!v35)
  {
LABEL_55:
    [(HFCharacteristicValueManager *)self beginTransactionWithReason:@"characteristicValueManagerImplicitTransaction"];
    openTransaction7 = [(HFCharacteristicValueManager *)self openTransaction];
    logger5 = [openTransaction7 logger];

    if (logger5)
    {
      state.opaque[0] = 0;
      state.opaque[1] = 0;
      logger6 = [openTransaction7 logger];
      loggerActivity3 = [logger6 loggerActivity];
      os_activity_scope_enter(loggerActivity3, &state);

      v57 = HFLogForCategory(0x3DuLL);
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
      {
        hf_prettyDescription5 = [characteristicCopy hf_prettyDescription];
        *buf = 138412290;
        v101 = hf_prettyDescription5;
        _os_log_impl(&dword_20D9BF000, v57, OS_LOG_TYPE_DEFAULT, "Write request for implicit transaction: %@", buf, 0xCu);
      }

      os_activity_scope_leave(&state);
    }

    else
    {
      v74 = HFLogForCategory(0x3DuLL);
      if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
      {
        hf_prettyDescription6 = [characteristicCopy hf_prettyDescription];
        LODWORD(state.opaque[0]) = 138412290;
        *(state.opaque + 4) = hf_prettyDescription6;
        _os_log_impl(&dword_20D9BF000, v74, OS_LOG_TYPE_DEFAULT, "Write request for implicit transaction: %@", &state, 0xCu);
      }
    }

    writeCharacteristicRequests5 = [openTransaction7 writeCharacteristicRequests];
    v60 = [MEMORY[0x277CD19B0] writeRequestWithCharacteristic:characteristicCopy value:valueCopy];
    [writeCharacteristicRequests5 addObject:v60];

    v61 = objc_alloc_init(MEMORY[0x277D2C900]);
    writeFuturesKeyedByCharacteristicIdentifier4 = [openTransaction7 writeFuturesKeyedByCharacteristicIdentifier];
    [writeFuturesKeyedByCharacteristicIdentifier4 setObject:v61 forKeyedSubscript:uniqueIdentifier];

    v35 = [v61 flatMap:&__block_literal_global_126];
    [(HFCharacteristicValueManager *)self commitTransactionWithReason:@"characteristicValueManagerImplicitTransaction"];
  }

LABEL_60:
  transactionLock2 = [(HFCharacteristicValueManager *)self transactionLock];
  [transactionLock2 unlock];

  if (!v35)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:v80 object:self file:@"HFCharacteristicValueManager.m" lineNumber:631 description:@"None of our cases were able to create a future for this request"];
  }

  return v35;
}

id __61__HFCharacteristicValueManager_writeValue_forCharacteristic___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 error];

  v4 = MEMORY[0x277D2C900];
  if (v3)
  {
    v5 = [v2 error];
    v6 = [v4 futureWithError:v5];
  }

  else
  {
    v6 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  return v6;
}

id __61__HFCharacteristicValueManager_writeValue_forCharacteristic___block_invoke_121(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 error];

  v4 = MEMORY[0x277D2C900];
  if (v3)
  {
    v5 = [v2 error];
    v6 = [v4 futureWithError:v5];
  }

  else
  {
    v6 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  return v6;
}

id __61__HFCharacteristicValueManager_writeValue_forCharacteristic___block_invoke_124(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 error];

  v4 = MEMORY[0x277D2C900];
  if (v3)
  {
    v5 = [v2 error];
    v6 = [v4 futureWithError:v5];
  }

  else
  {
    v6 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  return v6;
}

- (void)executeActionSet:(id)set completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = [(HFCharacteristicValueManager *)self executeActionSet:set];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __67__HFCharacteristicValueManager_executeActionSet_completionHandler___block_invoke;
  v10[3] = &unk_277DF63C8;
  v11 = handlerCopy;
  v8 = handlerCopy;
  v9 = [v7 addCompletionBlock:v10];
}

uint64_t __67__HFCharacteristicValueManager_executeActionSet_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3);
  }

  return result;
}

- (id)executeActionSet:(id)set
{
  v80 = *MEMORY[0x277D85DE8];
  setCopy = set;
  if (!setCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HFCharacteristicValueManager.m" lineNumber:647 description:{@"Invalid parameter not satisfying: %@", @"actionSet != nil"}];
  }

  v60 = a2;
  transactionLock = [(HFCharacteristicValueManager *)self transactionLock];
  [transactionLock lock];

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  runningTransactions = [(HFCharacteristicValueManager *)self runningTransactions];
  v8 = [runningTransactions countByEnumeratingWithState:&v72 objects:v79 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v73;
LABEL_5:
    v11 = 0;
    while (1)
    {
      if (*v73 != v10)
      {
        objc_enumerationMutation(runningTransactions);
      }

      v12 = *(*(&v72 + 1) + 8 * v11);
      actionSetsToExecute = [v12 actionSetsToExecute];
      v14 = [actionSetsToExecute containsObject:setCopy];

      if (v14)
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [runningTransactions countByEnumeratingWithState:&v72 objects:v79 count:16];
        if (v9)
        {
          goto LABEL_5;
        }

        goto LABEL_11;
      }
    }

    openTransaction = [(HFCharacteristicValueManager *)self openTransaction];
    logger = [openTransaction logger];

    if (logger)
    {
      state.opaque[0] = 0;
      state.opaque[1] = 0;
      openTransaction2 = [(HFCharacteristicValueManager *)self openTransaction];
      logger2 = [openTransaction2 logger];
      loggerActivity = [logger2 loggerActivity];
      os_activity_scope_enter(loggerActivity, &state);

      v20 = HFLogForCategory(0x3DuLL);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        hf_prettyDescription = [setCopy hf_prettyDescription];
        *buf = 138412290;
        v77 = hf_prettyDescription;
        _os_log_impl(&dword_20D9BF000, v20, OS_LOG_TYPE_DEFAULT, "Duplicate action set execution request: %@", buf, 0xCu);
      }

      os_activity_scope_leave(&state);
    }

    else
    {
      v54 = HFLogForCategory(0x3DuLL);
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        hf_prettyDescription2 = [setCopy hf_prettyDescription];
        LODWORD(state.opaque[0]) = 138412290;
        *(state.opaque + 4) = hf_prettyDescription2;
        _os_log_impl(&dword_20D9BF000, v54, OS_LOG_TYPE_DEFAULT, "Duplicate action set execution request: %@", &state, 0xCu);
      }
    }

    v22 = objc_alloc_init(MEMORY[0x277D2C900]);
    onFinishGroup = [v12 onFinishGroup];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __49__HFCharacteristicValueManager_executeActionSet___block_invoke;
    block[3] = &unk_277DF32A8;
    block[4] = v12;
    v70 = setCopy;
    v24 = v22;
    v71 = v24;
    dispatch_group_notify(onFinishGroup, MEMORY[0x277D85CD0], block);

    if (v24)
    {
      goto LABEL_29;
    }
  }

  else
  {
LABEL_11:
  }

  openTransaction3 = [(HFCharacteristicValueManager *)self openTransaction];

  if (!openTransaction3)
  {
    goto LABEL_24;
  }

  v26 = objc_alloc_init(MEMORY[0x277D2C900]);
  openTransaction4 = [(HFCharacteristicValueManager *)self openTransaction];
  actionSetsToExecute2 = [openTransaction4 actionSetsToExecute];
  v29 = [actionSetsToExecute2 containsObject:setCopy];

  if ((v29 & 1) == 0)
  {
    openTransaction5 = [(HFCharacteristicValueManager *)self openTransaction];
    logger3 = [openTransaction5 logger];

    if (logger3)
    {
      state.opaque[0] = 0;
      state.opaque[1] = 0;
      openTransaction6 = [(HFCharacteristicValueManager *)self openTransaction];
      logger4 = [openTransaction6 logger];
      loggerActivity2 = [logger4 loggerActivity];
      os_activity_scope_enter(loggerActivity2, &state);

      v35 = HFLogForCategory(0x3DuLL);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        hf_prettyDescription3 = [setCopy hf_prettyDescription];
        *buf = 138412290;
        v77 = hf_prettyDescription3;
        _os_log_impl(&dword_20D9BF000, v35, OS_LOG_TYPE_DEFAULT, "Execute action set request: %@", buf, 0xCu);
      }

      os_activity_scope_leave(&state);
    }

    else
    {
      v58 = HFLogForCategory(0x3DuLL);
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
      {
        hf_prettyDescription4 = [setCopy hf_prettyDescription];
        LODWORD(state.opaque[0]) = 138412290;
        *(state.opaque + 4) = hf_prettyDescription4;
        _os_log_impl(&dword_20D9BF000, v58, OS_LOG_TYPE_DEFAULT, "Execute action set request: %@", &state, 0xCu);
      }
    }
  }

  actionSetsToExecute3 = [openTransaction4 actionSetsToExecute];
  [actionSetsToExecute3 addObject:setCopy];

  onFinishGroup2 = [openTransaction4 onFinishGroup];
  v65[0] = MEMORY[0x277D85DD0];
  v65[1] = 3221225472;
  v65[2] = __49__HFCharacteristicValueManager_executeActionSet___block_invoke_132;
  v65[3] = &unk_277DF32A8;
  v66 = openTransaction4;
  v67 = setCopy;
  v24 = v26;
  v68 = v24;
  v39 = openTransaction4;
  dispatch_group_notify(onFinishGroup2, MEMORY[0x277D85CD0], v65);

  if (!v24)
  {
LABEL_24:
    v40 = objc_alloc_init(MEMORY[0x277D2C900]);
    [(HFCharacteristicValueManager *)self beginTransactionWithReason:@"characteristicValueManagerImplicitTransaction"];
    openTransaction7 = [(HFCharacteristicValueManager *)self openTransaction];
    logger5 = [openTransaction7 logger];

    if (logger5)
    {
      state.opaque[0] = 0;
      state.opaque[1] = 0;
      logger6 = [openTransaction7 logger];
      loggerActivity3 = [logger6 loggerActivity];
      os_activity_scope_enter(loggerActivity3, &state);

      v45 = HFLogForCategory(0x3DuLL);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        hf_prettyDescription5 = [setCopy hf_prettyDescription];
        *buf = 138412290;
        v77 = hf_prettyDescription5;
        _os_log_impl(&dword_20D9BF000, v45, OS_LOG_TYPE_DEFAULT, "Execute action set request in implicit transaction: %@", buf, 0xCu);
      }

      os_activity_scope_leave(&state);
    }

    else
    {
      v56 = HFLogForCategory(0x3DuLL);
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        hf_prettyDescription6 = [setCopy hf_prettyDescription];
        LODWORD(state.opaque[0]) = 138412290;
        *(state.opaque + 4) = hf_prettyDescription6;
        _os_log_impl(&dword_20D9BF000, v56, OS_LOG_TYPE_DEFAULT, "Execute action set request in implicit transaction: %@", &state, 0xCu);
      }
    }

    actionSetsToExecute4 = [openTransaction7 actionSetsToExecute];
    [actionSetsToExecute4 addObject:setCopy];

    onFinishGroup3 = [openTransaction7 onFinishGroup];
    v61[0] = MEMORY[0x277D85DD0];
    v61[1] = 3221225472;
    v61[2] = __49__HFCharacteristicValueManager_executeActionSet___block_invoke_133;
    v61[3] = &unk_277DF32A8;
    v62 = openTransaction7;
    v63 = setCopy;
    v24 = v40;
    v64 = v24;
    v49 = openTransaction7;
    dispatch_group_notify(onFinishGroup3, MEMORY[0x277D85CD0], v61);

    [(HFCharacteristicValueManager *)self commitTransactionWithReason:@"characteristicValueManagerImplicitTransaction"];
  }

LABEL_29:
  transactionLock2 = [(HFCharacteristicValueManager *)self transactionLock];
  [transactionLock2 unlock];

  if (!v24)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:v60 object:self file:@"HFCharacteristicValueManager.m" lineNumber:714 description:@"None of our cases were able to create a future for this request"];
  }

  return v24;
}

void __49__HFCharacteristicValueManager_executeActionSet___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) executionErrorForActionSet:*(a1 + 40)];
  v3 = *(a1 + 48);
  v4 = v2;
  if (v2)
  {
    [v3 finishWithError:v2];
  }

  else
  {
    [v3 finishWithNoResult];
  }
}

void __49__HFCharacteristicValueManager_executeActionSet___block_invoke_132(uint64_t a1)
{
  v2 = [*(a1 + 32) executionErrorForActionSet:*(a1 + 40)];
  v3 = *(a1 + 48);
  v4 = v2;
  if (v2)
  {
    [v3 finishWithError:v2];
  }

  else
  {
    [v3 finishWithNoResult];
  }
}

void __49__HFCharacteristicValueManager_executeActionSet___block_invoke_133(uint64_t a1)
{
  v2 = [*(a1 + 32) executionErrorForActionSet:*(a1 + 40)];
  v3 = *(a1 + 48);
  v4 = v2;
  if (v2)
  {
    [v3 finishWithError:v2];
  }

  else
  {
    [v3 finishWithNoResult];
  }
}

- (id)executeActions:(id)actions
{
  v88 = *MEMORY[0x277D85DE8];
  actionsCopy = actions;
  if (!actionsCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HFCharacteristicValueManager.m" lineNumber:721 description:{@"Invalid parameter not satisfying: %@", @"actions != nil"}];
  }

  transactionLock = [(HFCharacteristicValueManager *)self transactionLock];
  [transactionLock lock];

  array = [MEMORY[0x277CBEB18] array];
  v7 = [actionsCopy mutableCopy];
  v8 = &qword_20DD97000;
  if ([v7 count])
  {
    v65 = actionsCopy;
    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    obj = [(HFCharacteristicValueManager *)self runningTransactions];
    v69 = [obj countByEnumeratingWithState:&v80 objects:v87 count:16];
    if (v69)
    {
      v68 = *v81;
      v67 = v7;
      do
      {
        v9 = 0;
        do
        {
          if (*v81 != v68)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v80 + 1) + 8 * v9);
          actionsToExecute = [v10 actionsToExecute];
          v12 = [actionsToExecute mutableCopy];

          actionSetsToExecute = [v10 actionSetsToExecute];
          v14 = [actionSetsToExecute na_flatMap:&__block_literal_global_139_1];
          [v12 unionSet:v14];

          writeCharacteristicRequests = [v10 writeCharacteristicRequests];
          v16 = [writeCharacteristicRequests na_map:&__block_literal_global_142];
          [v12 unionSet:v16];

          v78[0] = MEMORY[0x277D85DD0];
          v78[1] = 3221225472;
          v78[2] = __47__HFCharacteristicValueManager_executeActions___block_invoke_3;
          v78[3] = &unk_277DF6430;
          v17 = v7;
          v79 = v17;
          v18 = [v12 na_map:v78];
          if ([v18 count])
          {
            v19 = array;
            openTransaction = [(HFCharacteristicValueManager *)self openTransaction];
            logger = [openTransaction logger];

            if (logger)
            {
              state.opaque[0] = 0;
              state.opaque[1] = 0;
              selfCopy2 = self;
              openTransaction2 = [(HFCharacteristicValueManager *)self openTransaction];
              logger2 = [openTransaction2 logger];
              loggerActivity = [logger2 loggerActivity];
              os_activity_scope_enter(loggerActivity, &state);

              v26 = HFLogForCategory(0x3DuLL);
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
              {
                hf_prettyDescription = [v65 hf_prettyDescription];
                *buf = 138412290;
                v85 = hf_prettyDescription;
                _os_log_impl(&dword_20D9BF000, v26, OS_LOG_TYPE_DEFAULT, "Overlapping actions execution request: %@", buf, 0xCu);
              }

              os_activity_scope_leave(&state);
            }

            else
            {
              selfCopy2 = self;
              v32 = HFLogForCategory(0x3DuLL);
              if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
              {
                hf_prettyDescription2 = [v65 hf_prettyDescription];
                LODWORD(state.opaque[0]) = 138412290;
                *(state.opaque + 4) = hf_prettyDescription2;
                _os_log_impl(&dword_20D9BF000, v32, OS_LOG_TYPE_DEFAULT, "Overlapping actions execution request: %@", &state, 0xCu);
              }
            }

            array = v19;
            v28 = objc_alloc_init(MEMORY[0x277D2C900]);
            [v19 addObject:v28];
            [v17 minusSet:v18];
            onFinishGroup = [v10 onFinishGroup];
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __47__HFCharacteristicValueManager_executeActions___block_invoke_144;
            block[3] = &unk_277DF3370;
            block[4] = v10;
            v77 = v28;
            v30 = v28;
            dispatch_group_notify(onFinishGroup, MEMORY[0x277D85CD0], block);

            v31 = [v17 count];
            self = selfCopy2;
            v7 = v67;
            if (!v31)
            {

              v8 = &qword_20DD97000;
              goto LABEL_23;
            }
          }

          ++v9;
        }

        while (v69 != v9);
        v34 = [obj countByEnumeratingWithState:&v80 objects:v87 count:16];
        v8 = &qword_20DD97000;
        v69 = v34;
      }

      while (v34);
    }

LABEL_23:

    actionsCopy = v65;
  }

  if ([v7 count])
  {
    openTransaction3 = [(HFCharacteristicValueManager *)self openTransaction];

    if (openTransaction3)
    {
      v36 = objc_alloc_init(MEMORY[0x277D2C900]);
      [array addObject:v36];
      openTransaction4 = [(HFCharacteristicValueManager *)self openTransaction];
      actionsToExecute2 = [openTransaction4 actionsToExecute];
      [actionsToExecute2 minusSet:v7];

      actionsToExecute3 = [openTransaction4 actionsToExecute];
      [actionsToExecute3 unionSet:v7];

      [v7 removeAllObjects];
      onFinishGroup2 = [openTransaction4 onFinishGroup];
      v73[0] = MEMORY[0x277D85DD0];
      v73[1] = v8[51];
      v73[2] = __47__HFCharacteristicValueManager_executeActions___block_invoke_2_145;
      v73[3] = &unk_277DF3370;
      v74 = openTransaction4;
      v75 = v36;
      v41 = v36;
      v42 = openTransaction4;
      dispatch_group_notify(onFinishGroup2, MEMORY[0x277D85CD0], v73);
    }
  }

  if ([v7 count])
  {
    v43 = objc_alloc_init(MEMORY[0x277D2C900]);
    [array addObject:v43];
    [(HFCharacteristicValueManager *)self beginTransactionWithReason:@"characteristicValueManagerImplicitTransaction"];
    openTransaction5 = [(HFCharacteristicValueManager *)self openTransaction];
    logger3 = [openTransaction5 logger];

    if (logger3)
    {
      selfCopy3 = self;
      state.opaque[0] = 0;
      state.opaque[1] = 0;
      logger4 = [openTransaction5 logger];
      loggerActivity2 = [logger4 loggerActivity];
      os_activity_scope_enter(loggerActivity2, &state);

      v49 = HFLogForCategory(0x3DuLL);
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        hf_prettyDescription3 = [v7 hf_prettyDescription];
        *buf = 138412290;
        v85 = hf_prettyDescription3;
        _os_log_impl(&dword_20D9BF000, v49, OS_LOG_TYPE_DEFAULT, "Execute actions request in implicit transaction: %@", buf, 0xCu);
      }

      os_activity_scope_leave(&state);
      self = selfCopy3;
    }

    else
    {
      v61 = HFLogForCategory(0x3DuLL);
      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
      {
        [v7 hf_prettyDescription];
        v63 = v62 = self;
        LODWORD(state.opaque[0]) = 138412290;
        *(state.opaque + 4) = v63;
        _os_log_impl(&dword_20D9BF000, v61, OS_LOG_TYPE_DEFAULT, "Execute actions request in implicit transaction: %@", &state, 0xCu);

        self = v62;
      }
    }

    actionsToExecute4 = [openTransaction5 actionsToExecute];
    [actionsToExecute4 unionSet:v7];

    [v7 removeAllObjects];
    onFinishGroup3 = [openTransaction5 onFinishGroup];
    v70[0] = MEMORY[0x277D85DD0];
    v70[1] = v8[51];
    v70[2] = __47__HFCharacteristicValueManager_executeActions___block_invoke_146;
    v70[3] = &unk_277DF3370;
    v71 = openTransaction5;
    v72 = v43;
    v53 = v43;
    v54 = openTransaction5;
    dispatch_group_notify(onFinishGroup3, MEMORY[0x277D85CD0], v70);

    [(HFCharacteristicValueManager *)self commitTransactionWithReason:@"characteristicValueManagerImplicitTransaction"];
  }

  transactionLock2 = [(HFCharacteristicValueManager *)self transactionLock];
  [transactionLock2 unlock];

  if (![array count])
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"HFCharacteristicValueManager.m" lineNumber:838 description:@"None of our cases were able to create a future for this request"];
  }

  v56 = [MEMORY[0x277D2C900] combineAllFutures:array];
  v57 = [v56 flatMap:&__block_literal_global_150_1];

  return v57;
}

id __47__HFCharacteristicValueManager_executeActions___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CD19A8];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v3 characteristic];
  v6 = [v3 value];

  v7 = [v4 initWithCharacteristic:v5 targetValue:v6];

  return v7;
}

id __47__HFCharacteristicValueManager_executeActions___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) containsObject:v3])
  {
    objc_opt_class();
    v4 = v3;
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;

    if (v6)
    {
      v7 = *(a1 + 32);
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __47__HFCharacteristicValueManager_executeActions___block_invoke_4;
      v15[3] = &unk_277DF6308;
      v8 = v4;
      v16 = v8;
      v9 = [v7 na_firstObjectPassingTest:v15];
      v10 = [v6 targetValue];
      v11 = [v9 targetValue];
      v12 = [v10 isEqual:v11];

      if (v12)
      {
        v13 = v8;
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = v4;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void __47__HFCharacteristicValueManager_executeActions___block_invoke_144(uint64_t a1)
{
  v2 = [*(a1 + 32) actionsError];
  v3 = *(a1 + 40);
  v4 = v2;
  if (v2)
  {
    [v3 finishWithError:v2];
  }

  else
  {
    [v3 finishWithNoResult];
  }
}

void __47__HFCharacteristicValueManager_executeActions___block_invoke_2_145(uint64_t a1)
{
  v2 = [*(a1 + 32) actionsError];
  v3 = *(a1 + 40);
  v4 = v2;
  if (v2)
  {
    [v3 finishWithError:v2];
  }

  else
  {
    [v3 finishWithNoResult];
  }
}

void __47__HFCharacteristicValueManager_executeActions___block_invoke_146(uint64_t a1)
{
  v2 = [*(a1 + 32) actionsError];
  v3 = *(a1 + 40);
  v4 = v2;
  if (v2)
  {
    [v3 finishWithError:v2];
  }

  else
  {
    [v3 finishWithNoResult];
  }
}

- (void)commitTransactionWithReason:(id)reason
{
  v70 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  if (!reasonCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HFCharacteristicValueManager.m" lineNumber:847 description:{@"Invalid parameter not satisfying: %@", @"reason"}];
  }

  transactionLock = [(HFCharacteristicValueManager *)self transactionLock];
  [transactionLock lock];

  openTransaction = [(HFCharacteristicValueManager *)self openTransaction];
  if (!openTransaction)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"HFCharacteristicValueManager.m" lineNumber:852 description:{@"Invalid parameter not satisfying: %@", @"transaction"}];
  }

  clientReasonsStack = [openTransaction clientReasonsStack];
  v9 = [clientReasonsStack containsObject:reasonCopy];

  if ((v9 & 1) == 0)
  {
    currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"HFCharacteristicValueManager.m" lineNumber:853 description:{@"Attempt to commit transaction with unknown reason (not used in a call to -beginTransaction...): %@", reasonCopy}];
  }

  clientReasonsStack2 = [openTransaction clientReasonsStack];
  lastObject = [clientReasonsStack2 lastObject];
  v12 = [lastObject isEqual:reasonCopy];

  if ((v12 & 1) == 0)
  {
    currentHandler4 = [MEMORY[0x277CCA890] currentHandler];
    clientReasonsStack3 = [openTransaction clientReasonsStack];
    lastObject2 = [clientReasonsStack3 lastObject];
    [currentHandler4 handleFailureInMethod:a2 object:self file:@"HFCharacteristicValueManager.m" lineNumber:854 description:{@"Attempt to commit transactions with out-of-order reasons. The last call to -beginTransaction had a reason of %@, but the client attempted to commit the transaction with a reason (%@) that is further down the stack (i.e., begin(A) -> begin(B) -> commit(A).)", lastObject2, reasonCopy}];
  }

  clientReasonsStack4 = [openTransaction clientReasonsStack];
  [clientReasonsStack4 removeLastObject];

  readPolicy = [openTransaction readPolicy];
  popPolicy = [readPolicy popPolicy];

  clientReasonsStack5 = [openTransaction clientReasonsStack];
  v17 = [clientReasonsStack5 count] == 0;

  logger = [openTransaction logger];

  if (v17)
  {
    if (logger)
    {
      *buf = 0;
      *&buf[8] = 0;
      logger2 = [openTransaction logger];
      loggerActivity = [logger2 loggerActivity];
      os_activity_scope_enter(loggerActivity, buf);

      v26 = HFLogForCategory(0x3DuLL);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(state.opaque[0]) = 138412290;
        *(state.opaque + 4) = reasonCopy;
        _os_log_impl(&dword_20D9BF000, v26, OS_LOG_TYPE_DEFAULT, "----- COMMIT TRANSACTION (%@) -----", &state, 0xCu);
      }

      os_activity_scope_leave(buf);
    }

    else
    {
      v48 = HFLogForCategory(0x3DuLL);
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = reasonCopy;
        _os_log_impl(&dword_20D9BF000, v48, OS_LOG_TYPE_DEFAULT, "----- COMMIT TRANSACTION (%@) -----", buf, 0xCu);
      }
    }

    runningTransactions = [(HFCharacteristicValueManager *)self runningTransactions];
    [runningTransactions addObject:openTransaction];

    cacheManager = [(HFCharacteristicValueManager *)self cacheManager];
    [cacheManager transactionAdded:openTransaction];

    [(HFCharacteristicValueManager *)self setOpenTransaction:0];
    commitFuture = [openTransaction commitFuture];
    v29 = dispatch_group_create();
    objc_initWeak(buf, self);
    dispatch_group_enter(v29);
    v64[0] = MEMORY[0x277D85DD0];
    v64[1] = 3221225472;
    v64[2] = __60__HFCharacteristicValueManager_commitTransactionWithReason___block_invoke;
    v64[3] = &unk_277DF6458;
    objc_copyWeak(&v67, buf);
    v30 = openTransaction;
    v65 = v30;
    v31 = v29;
    v66 = v31;
    [(HFCharacteristicValueManager *)self _transactionLock_executeWriteTransaction:v30 completionHandler:v64];
    dispatch_group_enter(v31);
    v60[0] = MEMORY[0x277D85DD0];
    v60[1] = 3221225472;
    v60[2] = __60__HFCharacteristicValueManager_commitTransactionWithReason___block_invoke_160;
    v60[3] = &unk_277DF6458;
    objc_copyWeak(&v63, buf);
    v32 = v30;
    v61 = v32;
    v33 = v31;
    v62 = v33;
    [(HFCharacteristicValueManager *)self _transactionLock_executeActionSetTransaction:v32 completionHandler:v60];
    dispatch_group_enter(v33);
    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = __60__HFCharacteristicValueManager_commitTransactionWithReason___block_invoke_161;
    v56[3] = &unk_277DF6458;
    objc_copyWeak(&v59, buf);
    v34 = v32;
    v57 = v34;
    v35 = v33;
    v58 = v35;
    [(HFCharacteristicValueManager *)self _transactionLock_executeActionsTransaction:v34 completionHandler:v56];
    dispatch_group_enter(v35);
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __60__HFCharacteristicValueManager_commitTransactionWithReason___block_invoke_162;
    v52[3] = &unk_277DF6458;
    objc_copyWeak(&v55, buf);
    v36 = v34;
    v53 = v36;
    v37 = v35;
    v54 = v37;
    [(HFCharacteristicValueManager *)self _transactionLock_executeReadTransaction:v36 completionHandler:v52];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60__HFCharacteristicValueManager_commitTransactionWithReason___block_invoke_163;
    block[3] = &unk_277DF3A68;
    objc_copyWeak(&v51, buf);
    v50 = v36;
    dispatch_group_notify(v37, MEMORY[0x277D85CD0], block);

    objc_destroyWeak(&v51);
    objc_destroyWeak(&v55);

    objc_destroyWeak(&v59);
    objc_destroyWeak(&v63);

    objc_destroyWeak(&v67);
    objc_destroyWeak(buf);
  }

  else
  {
    if (logger)
    {
      state.opaque[0] = 0;
      state.opaque[1] = 0;
      logger3 = [openTransaction logger];
      loggerActivity2 = [logger3 loggerActivity];
      os_activity_scope_enter(loggerActivity2, &state);

      v21 = HFLogForCategory(0x3DuLL);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        clientReasonsStack6 = [openTransaction clientReasonsStack];
        *buf = 138412546;
        *&buf[4] = reasonCopy;
        *&buf[12] = 2112;
        *&buf[14] = clientReasonsStack6;
        _os_log_impl(&dword_20D9BF000, v21, OS_LOG_TYPE_DEFAULT, "Commit nested transaction (%@). Remaining: %@", buf, 0x16u);
      }

      os_activity_scope_leave(&state);
    }

    else
    {
      v46 = HFLogForCategory(0x3DuLL);
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
      {
        clientReasonsStack7 = [openTransaction clientReasonsStack];
        *buf = 138412546;
        *&buf[4] = reasonCopy;
        *&buf[12] = 2112;
        *&buf[14] = clientReasonsStack7;
        _os_log_impl(&dword_20D9BF000, v46, OS_LOG_TYPE_DEFAULT, "Commit nested transaction (%@). Remaining: %@", buf, 0x16u);
      }
    }

    commitFuture = 0;
  }

  transactionLock2 = [(HFCharacteristicValueManager *)self transactionLock];
  [transactionLock2 unlock];

  v39 = NAEmptyResult();
  [commitFuture finishWithResult:v39];
}

void __60__HFCharacteristicValueManager_commitTransactionWithReason___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained transactionLock];
  [v3 lock];

  v4 = [*(a1 + 32) writeCharacteristicRequests];
  v5 = [v4 count];

  if (v5)
  {
    v6 = [*(a1 + 32) logger];

    if (v6)
    {
      state.opaque[0] = 0;
      state.opaque[1] = 0;
      v7 = [*(a1 + 32) logger];
      v8 = [v7 loggerActivity];
      os_activity_scope_enter(v8, &state);

      v9 = HFLogForCategory(0x3DuLL);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        _os_log_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_DEFAULT, "Finished write execution", v12, 2u);
      }

      os_activity_scope_leave(&state);
    }

    else
    {
      v11 = HFLogForCategory(0x3DuLL);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(state.opaque[0]) = 0;
        _os_log_impl(&dword_20D9BF000, v11, OS_LOG_TYPE_DEFAULT, "Finished write execution", &state, 2u);
      }
    }
  }

  v10 = [WeakRetained transactionLock];
  [v10 unlock];

  dispatch_group_leave(*(a1 + 40));
}

void __60__HFCharacteristicValueManager_commitTransactionWithReason___block_invoke_160(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained transactionLock];
  [v3 lock];

  v4 = [*(a1 + 32) actionSetsToExecute];
  v5 = [v4 count];

  if (v5)
  {
    v6 = [*(a1 + 32) logger];

    if (v6)
    {
      state.opaque[0] = 0;
      state.opaque[1] = 0;
      v7 = [*(a1 + 32) logger];
      v8 = [v7 loggerActivity];
      os_activity_scope_enter(v8, &state);

      v9 = HFLogForCategory(0x3DuLL);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        _os_log_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_DEFAULT, "Finished all action set executions", v12, 2u);
      }

      os_activity_scope_leave(&state);
    }

    else
    {
      v11 = HFLogForCategory(0x3DuLL);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(state.opaque[0]) = 0;
        _os_log_impl(&dword_20D9BF000, v11, OS_LOG_TYPE_DEFAULT, "Finished all action set executions", &state, 2u);
      }
    }
  }

  v10 = [WeakRetained transactionLock];
  [v10 unlock];

  dispatch_group_leave(*(a1 + 40));
}

void __60__HFCharacteristicValueManager_commitTransactionWithReason___block_invoke_161(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained transactionLock];
  [v3 lock];

  v4 = [*(a1 + 32) actionsToExecute];
  v5 = [v4 count];

  if (v5)
  {
    v6 = [*(a1 + 32) logger];

    if (v6)
    {
      state.opaque[0] = 0;
      state.opaque[1] = 0;
      v7 = [*(a1 + 32) logger];
      v8 = [v7 loggerActivity];
      os_activity_scope_enter(v8, &state);

      v9 = HFLogForCategory(0x3DuLL);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        _os_log_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_DEFAULT, "Finished all action executions", v12, 2u);
      }

      os_activity_scope_leave(&state);
    }

    else
    {
      v11 = HFLogForCategory(0x3DuLL);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(state.opaque[0]) = 0;
        _os_log_impl(&dword_20D9BF000, v11, OS_LOG_TYPE_DEFAULT, "Finished all action executions", &state, 2u);
      }
    }
  }

  v10 = [WeakRetained transactionLock];
  [v10 unlock];

  dispatch_group_leave(*(a1 + 40));
}

void __60__HFCharacteristicValueManager_commitTransactionWithReason___block_invoke_162(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained transactionLock];
  [v3 lock];

  v4 = [*(a1 + 32) characteristicsToRead];
  v5 = [v4 count];

  if (v5)
  {
    v6 = [*(a1 + 32) logger];

    if (v6)
    {
      state.opaque[0] = 0;
      state.opaque[1] = 0;
      v7 = [*(a1 + 32) logger];
      v8 = [v7 loggerActivity];
      os_activity_scope_enter(v8, &state);

      v9 = HFLogForCategory(0x3DuLL);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        _os_log_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_DEFAULT, "Finished read execution", v12, 2u);
      }

      os_activity_scope_leave(&state);
    }

    else
    {
      v11 = HFLogForCategory(0x3DuLL);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(state.opaque[0]) = 0;
        _os_log_impl(&dword_20D9BF000, v11, OS_LOG_TYPE_DEFAULT, "Finished read execution", &state, 2u);
      }
    }
  }

  v10 = [WeakRetained transactionLock];
  [v10 unlock];

  dispatch_group_leave(*(a1 + 40));
}

void __60__HFCharacteristicValueManager_commitTransactionWithReason___block_invoke_163(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained transactionLock];
  [v3 lock];

  v4 = [*(a1 + 32) logger];

  if (v4)
  {
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    v5 = [*(a1 + 32) logger];
    v6 = [v5 loggerActivity];
    os_activity_scope_enter(v6, &state);

    v7 = HFLogForCategory(0x3DuLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [WeakRetained runningTransactions];
      v19[0] = 67109120;
      v19[1] = [v8 count] - 1;
      _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, "All executions complete. Cleaning up. Remaining running transactions: %d", v19, 8u);
    }

    os_activity_scope_leave(&state);
  }

  else
  {
    v17 = HFLogForCategory(0x3DuLL);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [WeakRetained runningTransactions];
      LODWORD(state.opaque[0]) = 67109120;
      HIDWORD(state.opaque[0]) = [v18 count] - 1;
      _os_log_impl(&dword_20D9BF000, v17, OS_LOG_TYPE_DEFAULT, "All executions complete. Cleaning up. Remaining running transactions: %d", &state, 8u);
    }
  }

  v9 = [WeakRetained runningTransactions];
  [v9 removeObject:*(a1 + 32)];

  v10 = [WeakRetained cacheManager];
  [v10 transactionRemoved:*(a1 + 32)];

  v11 = [*(a1 + 32) onFinishGroup];
  v12 = [WeakRetained runningTransactions];
  v13 = [v12 count];

  if (!v13)
  {
    v14 = objc_alloc_init(MEMORY[0x277D2C8C8]);
    [WeakRetained setInFlightReadCancelationToken:v14];
  }

  if (([*(a1 + 32) loggerIsExternal] & 1) == 0)
  {
    v15 = [*(a1 + 32) logger];
    [v15 finish];
  }

  v16 = [WeakRetained transactionLock];
  [v16 unlock];

  dispatch_group_leave(v11);
}

- (id)_openTransactionCompletionFuture
{
  openTransaction = [(HFCharacteristicValueManager *)self openTransaction];
  if (!openTransaction)
  {
    NSLog(&cfstr_NoOpenTransact.isa);
  }

  v3 = objc_alloc_init(MEMORY[0x277D2C900]);
  onFinishGroup = [openTransaction onFinishGroup];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __64__HFCharacteristicValueManager__openTransactionCompletionFuture__block_invoke;
  v10[3] = &unk_277DF3370;
  v5 = v3;
  v11 = v5;
  v12 = openTransaction;
  v6 = openTransaction;
  dispatch_group_notify(onFinishGroup, MEMORY[0x277D85CD0], v10);

  v7 = v12;
  v8 = v5;

  return v5;
}

- (void)_transactionLock_executeWriteTransaction:(id)transaction completionHandler:(id)handler
{
  v59 = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  handlerCopy = handler;
  if (!transactionCopy)
  {
    NSLog(&cfstr_NilTransaction.isa);
  }

  writeCharacteristicRequests = [transactionCopy writeCharacteristicRequests];
  v9 = [writeCharacteristicRequests count];

  if (v9)
  {
    objc_initWeak(&location, self);
    logger = [transactionCopy logger];
    v11 = logger == 0;

    if (v11)
    {
      v36 = HFLogForCategory(0x3DuLL);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        valueWriter = [(HFCharacteristicValueManager *)self valueWriter];
        writeCharacteristicRequests2 = [transactionCopy writeCharacteristicRequests];
        hf_prettyDescription = [writeCharacteristicRequests2 hf_prettyDescription];
        *buf = 138412546;
        v56 = valueWriter;
        v57 = 2112;
        v58 = hf_prettyDescription;
        _os_log_impl(&dword_20D9BF000, v36, OS_LOG_TYPE_DEFAULT, "Start executing write with writer:%@. Characteristic requests:%@", buf, 0x16u);
      }
    }

    else
    {
      state.opaque[0] = 0;
      state.opaque[1] = 0;
      logger2 = [transactionCopy logger];
      loggerActivity = [logger2 loggerActivity];
      os_activity_scope_enter(loggerActivity, &state);

      v14 = HFLogForCategory(0x3DuLL);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        valueWriter2 = [(HFCharacteristicValueManager *)self valueWriter];
        writeCharacteristicRequests3 = [transactionCopy writeCharacteristicRequests];
        hf_prettyDescription2 = [writeCharacteristicRequests3 hf_prettyDescription];
        *buf = 138412546;
        v56 = valueWriter2;
        v57 = 2112;
        v58 = hf_prettyDescription2;
        _os_log_impl(&dword_20D9BF000, v14, OS_LOG_TYPE_DEFAULT, "Start executing write with writer:%@. Characteristic requests:%@", buf, 0x16u);
      }

      os_activity_scope_leave(&state);
    }

    transactionLock = [(HFCharacteristicValueManager *)self transactionLock];
    [transactionLock lock];

    writeCharacteristicRequests4 = [transactionCopy writeCharacteristicRequests];
    v20 = [writeCharacteristicRequests4 copy];

    v21 = [v20 na_map:&__block_literal_global_172_0];
    transactionLock2 = [(HFCharacteristicValueManager *)self transactionLock];
    [transactionLock2 unlock];

    valueWriter3 = [(HFCharacteristicValueManager *)self valueWriter];
    hf_home = [valueWriter3 hf_home];

    if (hf_home)
    {
      v25 = +[HFHomeKitDispatcher sharedDispatcher];
      v50[0] = MEMORY[0x277D85DD0];
      v50[1] = 3221225472;
      v50[2] = __91__HFCharacteristicValueManager__transactionLock_executeWriteTransaction_completionHandler___block_invoke_2;
      v50[3] = &unk_277DF3810;
      v51 = hf_home;
      v52 = v21;
      [v25 dispatchHomeObserverMessage:v50 sender:0];
    }

    v26 = MEMORY[0x277CD1978];
    allObjects = [v20 allObjects];
    v28 = [v26 characteristicBatchRequestWithWriteRequests:allObjects];

    array = [MEMORY[0x277CBEB18] array];
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __91__HFCharacteristicValueManager__transactionLock_executeWriteTransaction_completionHandler___block_invoke_3;
    v47[3] = &unk_277DF64A0;
    v30 = transactionCopy;
    v48 = v30;
    v31 = array;
    v49 = v31;
    [v28 setProgressHandler:v47];
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __91__HFCharacteristicValueManager__transactionLock_executeWriteTransaction_completionHandler___block_invoke_178;
    v40[3] = &unk_277DF6518;
    objc_copyWeak(&v46, &location);
    v41 = v30;
    v32 = v31;
    v42 = v32;
    v33 = v20;
    v43 = v33;
    v34 = hf_home;
    v44 = v34;
    v45 = handlerCopy;
    [v28 setCompletionHandler:v40];
    valueWriter4 = [(HFCharacteristicValueManager *)self valueWriter];
    [valueWriter4 performBatchCharacteristicRequest:v28];

    objc_destroyWeak(&v46);
    objc_destroyWeak(&location);
  }

  else if (handlerCopy)
  {
    handlerCopy[2](handlerCopy);
  }
}

void __91__HFCharacteristicValueManager__transactionLock_executeWriteTransaction_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 home:*(a1 + 32) willWriteValuesForCharacteristics:*(a1 + 40)];
  }
}

void __91__HFCharacteristicValueManager__transactionLock_executeWriteTransaction_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) logger];

  if (v4)
  {
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    v5 = [*(a1 + 32) logger];
    v6 = [v5 loggerActivity];
    os_activity_scope_enter(v6, &state);

    v7 = HFLogForCategory(0x3DuLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, "Finished partial write", buf, 2u);
    }

    os_activity_scope_leave(&state);
  }

  else
  {
    v23 = HFLogForCategory(0x3DuLL);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(state.opaque[0]) = 0;
      _os_log_impl(&dword_20D9BF000, v23, OS_LOG_TYPE_DEFAULT, "Finished partial write", &state, 2u);
    }
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = v3;
  v9 = [v8 countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v9)
  {
    v11 = v9;
    v12 = *v26;
    *&v10 = 138412290;
    v24 = v10;
    do
    {
      v13 = 0;
      do
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v25 + 1) + 8 * v13);
        v15 = [*(a1 + 32) logger];

        if (v15)
        {
          state.opaque[0] = 0;
          state.opaque[1] = 0;
          v16 = [*(a1 + 32) logger];
          v17 = [v16 loggerActivity];
          os_activity_scope_enter(v17, &state);

          v18 = HFLogForCategory(0x3DuLL);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v19 = [v14 hf_prettyDescription];
            *buf = v24;
            v30 = v19;
            _os_log_impl(&dword_20D9BF000, v18, OS_LOG_TYPE_DEFAULT, "     %@", buf, 0xCu);
          }

          os_activity_scope_leave(&state);
        }

        else
        {
          v20 = HFLogForCategory(0x3DuLL);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v21 = [v14 hf_prettyDescription];
            LODWORD(state.opaque[0]) = v24;
            *(state.opaque + 4) = v21;
            _os_log_impl(&dword_20D9BF000, v20, OS_LOG_TYPE_DEFAULT, "     %@", &state, 0xCu);
          }
        }

        ++v13;
      }

      while (v11 != v13);
      v22 = [v8 countByEnumeratingWithState:&v25 objects:v31 count:16];
      v11 = v22;
    }

    while (v22);
  }

  [*(a1 + 40) addObjectsFromArray:v8];
}

void __91__HFCharacteristicValueManager__transactionLock_executeWriteTransaction_completionHandler___block_invoke_178(id *a1, void *a2)
{
  v77 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 9);
  v5 = [WeakRetained transactionLock];
  [v5 lock];

  v6 = [a1[4] logger];

  if (v6)
  {
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    v7 = [a1[4] logger];
    v8 = [v7 loggerActivity];
    os_activity_scope_enter(v8, &state);

    v9 = HFLogForCategory(0x3DuLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v75 = v3;
      _os_log_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_DEFAULT, "Finished write with error: %@.", buf, 0xCu);
    }

    os_activity_scope_leave(&state);
  }

  else
  {
    v44 = HFLogForCategory(0x3DuLL);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(state.opaque[0]) = 138412290;
      *(state.opaque + 4) = v3;
      _os_log_impl(&dword_20D9BF000, v44, OS_LOG_TYPE_DEFAULT, "Finished write with error: %@.", &state, 0xCu);
    }
  }

  v46 = v3;
  [a1[4] setOverallWriteError:v3];
  v10 = [MEMORY[0x277CBEB58] set];
  [a1[4] setWriteCharacteristicRequests:v10];

  v11 = [a1[4] writeFuturesKeyedByCharacteristicIdentifier];
  v48 = [v11 copy];

  v12 = [WeakRetained transactionLock];
  [v12 unlock];

  v51 = [MEMORY[0x277CBEB38] dictionary];
  v52 = [MEMORY[0x277CBEB58] set];
  v50 = [MEMORY[0x277CBEB58] set];
  v13 = [MEMORY[0x277CBEB38] dictionary];
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v49 = a1;
  v14 = a1[5];
  v15 = [v14 countByEnumeratingWithState:&v68 objects:v73 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v69;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v69 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v68 + 1) + 8 * i);
        v20 = [v19 request];
        v21 = [v20 characteristic];

        if (v21)
        {
          v22 = [v19 error];

          v23 = v52;
          if (v22)
          {
            v24 = [v19 error];
            v25 = [v21 uniqueIdentifier];
            [v51 setObject:v24 forKeyedSubscript:v25];

            v23 = v50;
          }

          [v23 addObject:v21];
          v26 = [v21 uniqueIdentifier];
          [v13 setObject:v19 forKeyedSubscript:v26];
        }

        else
        {
          NSLog(&cfstr_WriteresponesI.isa, v19);
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v68 objects:v73 count:16];
    }

    while (v16);
  }

  v61[0] = MEMORY[0x277D85DD0];
  v61[1] = 3221225472;
  v61[2] = __91__HFCharacteristicValueManager__transactionLock_executeWriteTransaction_completionHandler___block_invoke_182;
  v61[3] = &unk_277DF64C8;
  v45 = v13;
  v62 = v45;
  v63 = v49[4];
  v47 = v46;
  v64 = v47;
  v27 = v51;
  v65 = v27;
  v66 = v49[6];
  v28 = v50;
  v67 = v28;
  [v48 enumerateKeysAndObjectsUsingBlock:v61];
  v29 = [WeakRetained transactionLock];
  [v29 lock];

  v30 = [WeakRetained cachedWriteErrorsKeyedByCharacteristicIdentifier];
  [v30 addEntriesFromDictionary:v27];

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v31 = v52;
  v32 = [v31 countByEnumeratingWithState:&v57 objects:v72 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v58;
    do
    {
      for (j = 0; j != v33; ++j)
      {
        if (*v58 != v34)
        {
          objc_enumerationMutation(v31);
        }

        v36 = *(*(&v57 + 1) + 8 * j);
        v37 = [WeakRetained cachedWriteErrorsKeyedByCharacteristicIdentifier];
        v38 = [v36 uniqueIdentifier];
        [v37 removeObjectForKey:v38];

        v39 = [WeakRetained cachedReadErrorsKeyedByCharacteristicIdentifier];
        v40 = [v36 uniqueIdentifier];
        [v39 removeObjectForKey:v40];
      }

      v33 = [v31 countByEnumeratingWithState:&v57 objects:v72 count:16];
    }

    while (v33);
  }

  v41 = [WeakRetained transactionLock];
  [v41 unlock];

  if (v49[7] && ([v31 count] || objc_msgSend(v28, "count")))
  {
    v42 = +[HFHomeKitDispatcher sharedDispatcher];
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = __91__HFCharacteristicValueManager__transactionLock_executeWriteTransaction_completionHandler___block_invoke_2_188;
    v53[3] = &unk_277DF64F0;
    v54 = v49[7];
    v55 = v31;
    v56 = v28;
    [v42 dispatchHomeObserverMessage:v53 sender:0];
  }

  v43 = v49[8];
  if (v43)
  {
    v43[2]();
  }
}

void __91__HFCharacteristicValueManager__transactionLock_executeWriteTransaction_completionHandler___block_invoke_182(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) objectForKeyedSubscript:v5];
  if (v7)
  {
    [v6 finishWithResult:v7];
  }

  else
  {
    v8 = [*(a1 + 40) logger];

    if (v8)
    {
      state.opaque[0] = 0;
      state.opaque[1] = 0;
      v9 = [*(a1 + 40) logger];
      v10 = [v9 loggerActivity];
      os_activity_scope_enter(v10, &state);

      v11 = HFLogForCategory(0x3DuLL);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v26 = v5;
        _os_log_impl(&dword_20D9BF000, v11, OS_LOG_TYPE_ERROR, "Warning: No error or response for write request characteristic: %@", buf, 0xCu);
      }

      os_activity_scope_leave(&state);
    }

    else
    {
      v19 = HFLogForCategory(0x3DuLL);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        LODWORD(state.opaque[0]) = 138412290;
        *(state.opaque + 4) = v5;
        _os_log_impl(&dword_20D9BF000, v19, OS_LOG_TYPE_ERROR, "Warning: No error or response for write request characteristic: %@", &state, 0xCu);
      }
    }

    v12 = [MEMORY[0x277CCA9B8] hf_errorWithCode:30];
    v13 = *(a1 + 48);
    if (v13)
    {
      v14 = v13;

      v12 = v14;
    }

    [*(a1 + 56) setObject:v12 forKeyedSubscript:v5];
    v15 = *(a1 + 64);
    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __91__HFCharacteristicValueManager__transactionLock_executeWriteTransaction_completionHandler___block_invoke_183;
    v23 = &unk_277DF62E0;
    v16 = v5;
    v24 = v16;
    v17 = [v15 na_firstObjectPassingTest:&v20];
    v18 = [v17 characteristic];

    if (!v18)
    {
      NSLog(&cfstr_NoCharacterist.isa, v16, v20, v21, v22, v23);
    }

    [*(a1 + 72) addObject:v18];
    [v6 finishWithError:v12];
  }
}

uint64_t __91__HFCharacteristicValueManager__transactionLock_executeWriteTransaction_completionHandler___block_invoke_183(uint64_t a1, void *a2)
{
  v3 = [a2 characteristic];
  v4 = [v3 uniqueIdentifier];
  v5 = [v4 isEqual:*(a1 + 32)];

  return v5;
}

void __91__HFCharacteristicValueManager__transactionLock_executeWriteTransaction_completionHandler___block_invoke_2_188(void *a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 home:a1[4] didWriteValuesForCharacteristics:a1[5] failedCharacteristics:a1[6]];
  }
}

- (void)_transactionLock_executeReadTransaction:(id)transaction completionHandler:(id)handler
{
  transactionCopy = transaction;
  handlerCopy = handler;
  if (!transactionCopy)
  {
    NSLog(&cfstr_NilTransaction_0.isa);
  }

  characteristicsToRead = [transactionCopy characteristicsToRead];
  v10 = [characteristicsToRead count];

  if (v10)
  {
    transactionLock = [(HFCharacteristicValueManager *)self transactionLock];
    [transactionLock lock];

    readTransactionsToExecuteOnNextRunLoop = [(HFCharacteristicValueManager *)self readTransactionsToExecuteOnNextRunLoop];
    [readTransactionsToExecuteOnNextRunLoop addObject:transactionCopy];

    completionHandlersForReadTransactionsToExecuteOnNextRunLoop = [(HFCharacteristicValueManager *)self completionHandlersForReadTransactionsToExecuteOnNextRunLoop];
    v14 = [handlerCopy copy];
    [completionHandlersForReadTransactionsToExecuteOnNextRunLoop addObject:v14];

    readTransactionsToExecuteOnNextRunLoop2 = [(HFCharacteristicValueManager *)self readTransactionsToExecuteOnNextRunLoop];
    v16 = [readTransactionsToExecuteOnNextRunLoop2 count];

    transactionLock2 = [(HFCharacteristicValueManager *)self transactionLock];
    [transactionLock2 unlock];

    if (v16 <= 1)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __90__HFCharacteristicValueManager__transactionLock_executeReadTransaction_completionHandler___block_invoke;
      block[3] = &unk_277DF37C0;
      block[4] = self;
      v20 = a2;
      v19 = transactionCopy;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }
  }

  else if (handlerCopy)
  {
    handlerCopy[2](handlerCopy);
  }
}

void __90__HFCharacteristicValueManager__transactionLock_executeReadTransaction_completionHandler___block_invoke(uint64_t a1)
{
  v74 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  [*(a1 + 32) set_debug_totalNumberOfIssuedBatchReadRequests:{objc_msgSend(*(a1 + 32), "_debug_totalNumberOfIssuedBatchReadRequests") + 1}];
  v3 = [*v2 transactionLock];
  [v3 lock];

  v4 = [*v2 readTransactionsToExecuteOnNextRunLoop];
  v5 = [v4 copy];

  v6 = [*v2 completionHandlersForReadTransactionsToExecuteOnNextRunLoop];
  v7 = [v6 copy];

  v8 = [*v2 readTransactionsToExecuteOnNextRunLoop];
  [v8 removeAllObjects];

  v9 = [*v2 completionHandlersForReadTransactionsToExecuteOnNextRunLoop];
  [v9 removeAllObjects];

  if (![v5 count])
  {
    v41 = [MEMORY[0x277CCA890] currentHandler];
    [v41 handleFailureInMethod:*(a1 + 48) object:*(a1 + 32) file:@"HFCharacteristicValueManager.m" lineNumber:1144 description:@"Inconsistant state: readTransactionsToExecute should always be non-empty on the next run loop"];
  }

  v10 = [v5 firstObject];
  v11 = [v10 logger];

  v12 = [MEMORY[0x277CBEB98] setWithArray:v5];
  v13 = [v12 na_map:&__block_literal_global_201];
  v14 = [v13 na_setByFlattening];

  v15 = [*(a1 + 32) transactionLock];
  [v15 unlock];

  if (+[HFCharacteristicValueManager _shouldTrackReadsCompleteForPerformanceTesting])
  {
    v16 = *(a1 + 32);
    v17 = [*(a1 + 40) logger];
    [v16 _beginReadsCompleteTrackingForCharacteristics:v14 withLogger:v17];
  }

  objc_initWeak(&location, *(a1 + 32));
  if (v11)
  {
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    v18 = [v11 loggerActivity];
    os_activity_scope_enter(v18, &state);

    v19 = HFLogForCategory(0x3DuLL);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [*(a1 + 32) valueReader];
      v21 = [v14 hf_prettyDescription];
      *buf = 138412546;
      *&buf[4] = v20;
      *&buf[12] = 2112;
      *&buf[14] = v21;
      _os_log_impl(&dword_20D9BF000, v19, OS_LOG_TYPE_DEFAULT, "Start executing read with reader:%@. Characteristics to read:%@", buf, 0x16u);
    }

    os_activity_scope_leave(&state);
  }

  else
  {
    v42 = HFLogForCategory(0x3DuLL);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      v43 = [*(a1 + 32) valueReader];
      v44 = [v14 hf_prettyDescription];
      *buf = 138412546;
      *&buf[4] = v43;
      *&buf[12] = 2112;
      *&buf[14] = v44;
      _os_log_impl(&dword_20D9BF000, v42, OS_LOG_TYPE_DEFAULT, "Start executing read with reader:%@. Characteristics to read:%@", buf, 0x16u);
    }
  }

  v22 = [*(a1 + 32) valueReader];
  v23 = [v22 hf_home];
  objc_initWeak(&state, v23);

  WeakRetained = objc_loadWeakRetained(&state);
  if (WeakRetained)
  {
    v25 = +[HFHomeKitDispatcher sharedDispatcher];
    v67[0] = MEMORY[0x277D85DD0];
    v67[1] = 3221225472;
    v67[2] = __90__HFCharacteristicValueManager__transactionLock_executeReadTransaction_completionHandler___block_invoke_203;
    v67[3] = &unk_277DF6560;
    objc_copyWeak(&v69, &state);
    v68 = v14;
    [v25 dispatchHomeObserverMessage:v67 sender:0];

    objc_destroyWeak(&v69);
  }

  v26 = [v14 allObjects];
  v45 = [v26 na_map:&__block_literal_global_209];

  v27 = [MEMORY[0x277CD1978] characteristicBatchRequestWithReadRequests:v45];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v73 = 0;
  v60[0] = MEMORY[0x277D85DD0];
  v60[1] = 3221225472;
  v60[2] = __90__HFCharacteristicValueManager__transactionLock_executeReadTransaction_completionHandler___block_invoke_3;
  v60[3] = &unk_277DF65D8;
  objc_copyWeak(&v65, &location);
  v64 = buf;
  v28 = v11;
  v61 = v28;
  v62 = *(a1 + 40);
  v29 = v5;
  v63 = v29;
  objc_copyWeak(&v66, &state);
  [v27 setProgressHandler:v60];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __90__HFCharacteristicValueManager__transactionLock_executeReadTransaction_completionHandler___block_invoke_4;
  aBlock[3] = &unk_277DF6600;
  objc_copyWeak(&v58, &location);
  v57 = buf;
  v30 = v28;
  v52 = v30;
  v31 = v29;
  v53 = v31;
  v32 = v14;
  v54 = v32;
  v55 = *(a1 + 40);
  objc_copyWeak(&v59, &state);
  v33 = v7;
  v56 = v33;
  v34 = _Block_copy(aBlock);
  [v27 setCompletionHandler:v34];
  v35 = [*(a1 + 32) valueReader];
  [v35 performBatchCharacteristicRequest:v27];

  *(*&buf[8] + 24) = 1;
  v36 = [*(a1 + 32) transactionLock];
  [v36 lock];

  v37 = [*(a1 + 32) inFlightReadCancelationToken];
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __90__HFCharacteristicValueManager__transactionLock_executeReadTransaction_completionHandler___block_invoke_2_224;
  v46[3] = &unk_277DF6628;
  objc_copyWeak(&v50, &location);
  v49 = buf;
  v38 = v30;
  v47 = v38;
  v39 = v34;
  v48 = v39;
  [v37 addCancelationBlock:v46];

  v40 = [*(a1 + 32) transactionLock];
  [v40 unlock];

  objc_destroyWeak(&v50);
  objc_destroyWeak(&v59);

  objc_destroyWeak(&v58);
  objc_destroyWeak(&v66);

  objc_destroyWeak(&v65);
  _Block_object_dispose(buf, 8);

  objc_destroyWeak(&state);
  objc_destroyWeak(&location);
}

void __90__HFCharacteristicValueManager__transactionLock_executeReadTransaction_completionHandler___block_invoke_203(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [v4 home:WeakRetained willReadValuesForCharacteristics:*(a1 + 32)];
  }
}

void __90__HFCharacteristicValueManager__transactionLock_executeReadTransaction_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v90 = *MEMORY[0x277D85DE8];
  v59 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    v63 = a1;
    v60 = [MEMORY[0x277CBEB58] set];
    v61 = [MEMORY[0x277CBEB58] set];
    v3 = [WeakRetained transactionLock];
    [v3 lock];

    v4 = *(v63 + 32);
    if (v4)
    {
      state.opaque[0] = 0;
      state.opaque[1] = 0;
      v5 = [v4 loggerActivity];
      os_activity_scope_enter(v5, &state);

      v6 = HFLogForCategory(0x3DuLL);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_DEFAULT, "Received read responses:", buf, 2u);
      }

      os_activity_scope_leave(&state);
    }

    else
    {
      v58 = HFLogForCategory(0x3DuLL);
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(state.opaque[0]) = 0;
        _os_log_impl(&dword_20D9BF000, v58, OS_LOG_TYPE_DEFAULT, "Received read responses:", &state, 2u);
      }
    }

    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    v7 = v59;
    v8 = [v7 countByEnumeratingWithState:&v80 objects:v86 count:16];
    if (v8)
    {
      v9 = *v81;
      do
      {
        v10 = 0;
        do
        {
          if (*v81 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v80 + 1) + 8 * v10);
          v12 = *(v63 + 32);
          if (v12)
          {
            state.opaque[0] = 0;
            state.opaque[1] = 0;
            v13 = [v12 loggerActivity];
            os_activity_scope_enter(v13, &state);

            v14 = HFLogForCategory(0x3DuLL);
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              v15 = [v11 hf_prettyDescription];
              *buf = 138412290;
              v88 = v15;
              _os_log_impl(&dword_20D9BF000, v14, OS_LOG_TYPE_DEFAULT, "     %@", buf, 0xCu);
            }

            os_activity_scope_leave(&state);
          }

          else
          {
            v16 = HFLogForCategory(0x3DuLL);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              v17 = [v11 hf_prettyDescription];
              LODWORD(state.opaque[0]) = 138412290;
              *(state.opaque + 4) = v17;
              _os_log_impl(&dword_20D9BF000, v16, OS_LOG_TYPE_DEFAULT, "     %@", &state, 0xCu);
            }
          }

          ++v10;
        }

        while (v8 != v10);
        v18 = [v7 countByEnumeratingWithState:&v80 objects:v86 count:16];
        v8 = v18;
      }

      while (v18);
    }

    v64 = [MEMORY[0x277CBEB38] dictionary];
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    obj = v7;
    v19 = [obj countByEnumeratingWithState:&v76 objects:v85 count:16];
    if (v19)
    {
      v20 = *v77;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v77 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v76 + 1) + 8 * i);
          v23 = [v22 request];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            NSLog(&cfstr_RequestContain.isa, v23, v22);
          }

          objc_opt_class();
          v24 = v23;
          if (objc_opt_isKindOfClass())
          {
            v25 = v24;
          }

          else
          {
            v25 = 0;
          }

          v26 = v25;

          v27 = [v26 characteristic];

          if (v27)
          {
            if (+[HFCharacteristicValueManager _shouldTrackReadsCompleteForPerformanceTesting])
            {
              v28 = [*(v63 + 40) logger];
              [WeakRetained _endReadsCompleteTrackingForCharacteristic:v27 withLogger:v28 didRead:1];
            }

            v29 = [v22 error];

            if (v29)
            {
              [v61 addObject:v27];
              v30 = [WeakRetained characteristicsWithCachedValues];
              [v30 removeObject:v27];

              v31 = [v22 error];
              v32 = [WeakRetained cachedReadErrorsKeyedByCharacteristicIdentifier];
              v33 = [v27 uniqueIdentifier];
              [v32 setObject:v31 forKeyedSubscript:v33];
            }

            else
            {
              [v60 addObject:v27];
              v34 = [WeakRetained mutableAllReadCharacteristics];
              [v34 addObject:v27];

              v35 = [WeakRetained characteristicsWithCachedValues];
              [v35 addObject:v27];

              v36 = [WeakRetained cachedReadErrorsKeyedByCharacteristicIdentifier];
              v37 = [v27 uniqueIdentifier];
              [v36 removeObjectForKey:v37];

              v31 = [WeakRetained cachedWriteErrorsKeyedByCharacteristicIdentifier];
              v32 = [v27 uniqueIdentifier];
              [v31 removeObjectForKey:v32];
            }

            v38 = [v27 uniqueIdentifier];
            [v64 setObject:v22 forKeyedSubscript:v38];
          }
        }

        v19 = [obj countByEnumeratingWithState:&v76 objects:v85 count:16];
      }

      while (v19);
    }

    v39 = [*(v63 + 48) na_map:&__block_literal_global_216_0];
    v40 = [WeakRetained transactionLock];
    [v40 unlock];

    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v41 = v39;
    v42 = [v41 countByEnumeratingWithState:&v72 objects:v84 count:16];
    if (v42)
    {
      v43 = *v73;
      do
      {
        for (j = 0; j != v42; ++j)
        {
          if (*v73 != v43)
          {
            objc_enumerationMutation(v41);
          }

          v45 = *(*(&v72 + 1) + 8 * j);
          v70[0] = MEMORY[0x277D85DD0];
          v70[1] = 3221225472;
          v70[2] = __90__HFCharacteristicValueManager__transactionLock_executeReadTransaction_completionHandler___block_invoke_2_217;
          v70[3] = &unk_277DF6588;
          v71 = v64;
          [v45 enumerateKeysAndObjectsUsingBlock:v70];
        }

        v42 = [v41 countByEnumeratingWithState:&v72 objects:v84 count:16];
      }

      while (v42);
    }

    v46 = objc_loadWeakRetained((v63 + 72));
    if (!v46)
    {
      goto LABEL_59;
    }

    if ([v60 count])
    {
    }

    else
    {
      v53 = [v61 count] == 0;

      if (v53)
      {
LABEL_59:

        goto LABEL_60;
      }
    }

    v54 = +[HFHomeKitDispatcher sharedDispatcher];
    v66[0] = MEMORY[0x277D85DD0];
    v66[1] = 3221225472;
    v66[2] = __90__HFCharacteristicValueManager__transactionLock_executeReadTransaction_completionHandler___block_invoke_3_218;
    v66[3] = &unk_277DF65B0;
    objc_copyWeak(&v69, (v63 + 72));
    v67 = v60;
    v68 = v61;
    [v54 dispatchHomeObserverMessage:v66 sender:0];

    objc_destroyWeak(&v69);
    goto LABEL_59;
  }

  v47 = a1;
  v48 = *(a1 + 32);
  if (v48)
  {
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    v49 = [v48 loggerActivity];
    os_activity_scope_enter(v49, &state);

    v50 = HFLogForCategory(0x3DuLL);
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      v51 = *(*(*(v47 + 56) + 8) + 24) - 1;
      if (v51 > 2)
      {
        v52 = @"NotStarted";
      }

      else
      {
        v52 = off_277DF6780[v51];
      }

      *buf = 138412290;
      v88 = v52;
      _os_log_impl(&dword_20D9BF000, v50, OS_LOG_TYPE_DEFAULT, "Not processing characteristic read progressHandler because the batch request is not in flight. Current state: %@", buf, 0xCu);
    }

    os_activity_scope_leave(&state);
  }

  else
  {
    v55 = HFLogForCategory(0x3DuLL);
    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
    {
      v56 = *(*(*(v47 + 56) + 8) + 24) - 1;
      if (v56 > 2)
      {
        v57 = @"NotStarted";
      }

      else
      {
        v57 = off_277DF6780[v56];
      }

      LODWORD(state.opaque[0]) = 138412290;
      *(state.opaque + 4) = v57;
      _os_log_impl(&dword_20D9BF000, v55, OS_LOG_TYPE_DEFAULT, "Not processing characteristic read progressHandler because the batch request is not in flight. Current state: %@", &state, 0xCu);
    }
  }

LABEL_60:
}

id __90__HFCharacteristicValueManager__transactionLock_executeReadTransaction_completionHandler___block_invoke_214(uint64_t a1, void *a2)
{
  v2 = [a2 readFuturesKeyedByCharacteristicIdentifier];
  v3 = [v2 copy];

  return v3;
}

void __90__HFCharacteristicValueManager__transactionLock_executeReadTransaction_completionHandler___block_invoke_2_217(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v5 = [*(a1 + 32) objectForKeyedSubscript:a2];
  if (v5)
  {
    [v6 finishWithResult:v5];
  }
}

void __90__HFCharacteristicValueManager__transactionLock_executeReadTransaction_completionHandler___block_invoke_3_218(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [v4 home:WeakRetained didReadValuesForCharacteristics:*(a1 + 32) failedCharacteristics:*(a1 + 40)];
  }
}

void __90__HFCharacteristicValueManager__transactionLock_executeReadTransaction_completionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v81 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v51 = WeakRetained;
  v52 = v3;
  if (*(*(*(a1 + 72) + 8) + 24) == 1)
  {
    v5 = WeakRetained;
    v6 = [(__CFString *)v3 na_isCancelledError];
    v7 = 2;
    if (!v6)
    {
      v7 = 3;
    }

    *(*(*(a1 + 72) + 8) + 24) = v7;
    v8 = [v5 transactionLock];
    [v8 lock];

    v9 = *(a1 + 32);
    if (v9)
    {
      state.opaque[0] = 0;
      state.opaque[1] = 0;
      v10 = [v9 loggerActivity];
      os_activity_scope_enter(v10, &state);

      v11 = HFLogForCategory(0x3DuLL);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v79 = v3;
        _os_log_impl(&dword_20D9BF000, v11, OS_LOG_TYPE_DEFAULT, "Finished batch read with error: %@", buf, 0xCu);
      }

      os_activity_scope_leave(&state);
    }

    else
    {
      v47 = HFLogForCategory(0x3DuLL);
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(state.opaque[0]) = 138412290;
        *(state.opaque + 4) = v3;
        _os_log_impl(&dword_20D9BF000, v47, OS_LOG_TYPE_DEFAULT, "Finished batch read with error: %@", &state, 0xCu);
      }
    }

    v12 = [MEMORY[0x277CBEB18] array];
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v13 = *(a1 + 40);
    v14 = [v13 countByEnumeratingWithState:&v71 objects:v77 count:16];
    if (v14)
    {
      v15 = *v72;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v72 != v15)
          {
            objc_enumerationMutation(v13);
          }

          v17 = *(*(&v71 + 1) + 8 * i);
          [v17 setOverallReadError:v52];
          v18 = [v17 readFuturesKeyedByCharacteristicIdentifier];
          v19 = [v18 copy];
          [v12 addObject:v19];

          v20 = [MEMORY[0x277CBEB58] set];
          [v17 setCharacteristicsToRead:v20];
        }

        v14 = [v13 countByEnumeratingWithState:&v71 objects:v77 count:16];
      }

      while (v14);
    }

    v21 = [v51 transactionLock];
    [v21 unlock];

    v50 = [MEMORY[0x277CBEB58] set];
    if (v52)
    {
      v22 = v52;
    }

    else
    {
      v22 = [MEMORY[0x277CCA9B8] hf_errorWithCode:30];
    }

    v28 = v22;
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    obj = v12;
    v29 = [obj countByEnumeratingWithState:&v67 objects:v76 count:16];
    if (v29)
    {
      v30 = *v68;
      do
      {
        for (j = 0; j != v29; ++j)
        {
          if (*v68 != v30)
          {
            objc_enumerationMutation(obj);
          }

          v32 = *(*(&v67 + 1) + 8 * j);
          v60[0] = MEMORY[0x277D85DD0];
          v60[1] = 3221225472;
          v60[2] = __90__HFCharacteristicValueManager__transactionLock_executeReadTransaction_completionHandler___block_invoke_221;
          v60[3] = &unk_277DF64C8;
          v61 = *(a1 + 48);
          v62 = v51;
          v63 = *(a1 + 56);
          v64 = v52;
          v65 = v50;
          v66 = v28;
          [v32 enumerateKeysAndObjectsUsingBlock:v60];
        }

        v29 = [obj countByEnumeratingWithState:&v67 objects:v76 count:16];
      }

      while (v29);
    }

    v33 = objc_loadWeakRetained((a1 + 88));
    if (v33)
    {
      v34 = [(__CFString *)v50 count]== 0;

      if (!v34)
      {
        v35 = *(a1 + 32);
        if (v35)
        {
          state.opaque[0] = 0;
          state.opaque[1] = 0;
          v36 = [v35 loggerActivity];
          os_activity_scope_enter(v36, &state);

          v37 = HFLogForCategory(0x3DuLL);
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v79 = v50;
            _os_log_impl(&dword_20D9BF000, v37, OS_LOG_TYPE_ERROR, "Warning: did not get read responses for characteristics: %@", buf, 0xCu);
          }

          os_activity_scope_leave(&state);
        }

        else
        {
          v48 = HFLogForCategory(0x3DuLL);
          if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
          {
            LODWORD(state.opaque[0]) = 138412290;
            *(state.opaque + 4) = v50;
            _os_log_impl(&dword_20D9BF000, v48, OS_LOG_TYPE_ERROR, "Warning: did not get read responses for characteristics: %@", &state, 0xCu);
          }
        }

        v38 = +[HFHomeKitDispatcher sharedDispatcher];
        v57[0] = MEMORY[0x277D85DD0];
        v57[1] = 3221225472;
        v57[2] = __90__HFCharacteristicValueManager__transactionLock_executeReadTransaction_completionHandler___block_invoke_223;
        v57[3] = &unk_277DF6560;
        objc_copyWeak(&v59, (a1 + 88));
        v58 = v50;
        [v38 dispatchHomeObserverMessage:v57 sender:0];

        objc_destroyWeak(&v59);
      }
    }

    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v39 = *(a1 + 64);
    v40 = [v39 countByEnumeratingWithState:&v53 objects:v75 count:16];
    if (v40)
    {
      v41 = *v54;
      do
      {
        for (k = 0; k != v40; ++k)
        {
          if (*v54 != v41)
          {
            objc_enumerationMutation(v39);
          }

          (*(*(*(&v53 + 1) + 8 * k) + 16))();
        }

        v40 = [v39 countByEnumeratingWithState:&v53 objects:v75 count:16];
      }

      while (v40);
    }

    v43 = [v51 firstReadCompleteFuture];
    [v43 finishWithNoResult];
  }

  else
  {
    v23 = *(a1 + 32);
    if (v23)
    {
      state.opaque[0] = 0;
      state.opaque[1] = 0;
      v24 = [v23 loggerActivity];
      os_activity_scope_enter(v24, &state);

      v25 = HFLogForCategory(0x3DuLL);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = *(*(*(a1 + 72) + 8) + 24) - 1;
        if (v26 > 2)
        {
          v27 = @"NotStarted";
        }

        else
        {
          v27 = off_277DF6780[v26];
        }

        *buf = 138412290;
        v79 = v27;
        _os_log_impl(&dword_20D9BF000, v25, OS_LOG_TYPE_DEFAULT, "Not processing characteristic read completion handler because the batch request is not in flight. Current state: %@", buf, 0xCu);
      }

      os_activity_scope_leave(&state);
    }

    else
    {
      v44 = HFLogForCategory(0x3DuLL);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        v45 = *(*(*(a1 + 72) + 8) + 24) - 1;
        if (v45 > 2)
        {
          v46 = @"NotStarted";
        }

        else
        {
          v46 = off_277DF6780[v45];
        }

        LODWORD(state.opaque[0]) = 138412290;
        *(state.opaque + 4) = v46;
        _os_log_impl(&dword_20D9BF000, v44, OS_LOG_TYPE_DEFAULT, "Not processing characteristic read completion handler because the batch request is not in flight. Current state: %@", &state, 0xCu);
      }
    }
  }
}

void __90__HFCharacteristicValueManager__transactionLock_executeReadTransaction_completionHandler___block_invoke_221(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (([v6 isFinished] & 1) == 0)
  {
    v7 = *(a1 + 32);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __90__HFCharacteristicValueManager__transactionLock_executeReadTransaction_completionHandler___block_invoke_2_222;
    v19[3] = &unk_277DF6218;
    v20 = v5;
    v8 = [v7 na_firstObjectPassingTest:v19];
    if (v8)
    {
      if (+[HFCharacteristicValueManager _shouldTrackReadsCompleteForPerformanceTesting])
      {
        v9 = *(a1 + 40);
        v10 = [*(a1 + 48) logger];
        [v9 _endReadsCompleteTrackingForCharacteristic:v8 withLogger:v10 didRead:0];
      }

      v11 = *(a1 + 56);
      if (!v11 || ([v11 na_isCancelledError] & 1) == 0)
      {
        v12 = [*(a1 + 40) transactionLock];
        [v12 lock];

        v13 = [*(a1 + 40) characteristicsWithCachedValues];
        [v13 removeObject:v8];

        v14 = *(a1 + 56);
        v15 = v14;
        if (!v14)
        {
          v15 = [MEMORY[0x277CCA9B8] hf_errorWithCode:5];
        }

        v16 = [*(a1 + 40) cachedReadErrorsKeyedByCharacteristicIdentifier];
        v17 = [v8 uniqueIdentifier];
        [v16 setObject:v15 forKeyedSubscript:v17];

        if (!v14)
        {
        }

        [*(a1 + 64) addObject:v8];
        v18 = [*(a1 + 40) transactionLock];
        [v18 unlock];
      }
    }

    [v6 finishWithError:*(a1 + 72)];
  }
}

uint64_t __90__HFCharacteristicValueManager__transactionLock_executeReadTransaction_completionHandler___block_invoke_2_222(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

void __90__HFCharacteristicValueManager__transactionLock_executeReadTransaction_completionHandler___block_invoke_223(uint64_t a1, void *a2)
{
  v5 = a2;
  if (objc_opt_respondsToSelector())
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v4 = [MEMORY[0x277CBEB98] set];
    [v5 home:WeakRetained didReadValuesForCharacteristics:v4 failedCharacteristics:*(a1 + 32)];
  }
}

void __90__HFCharacteristicValueManager__transactionLock_executeReadTransaction_completionHandler___block_invoke_2_224(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      state.opaque[0] = 0;
      state.opaque[1] = 0;
      v4 = [v3 loggerActivity];
      os_activity_scope_enter(v4, &state);

      v5 = HFLogForCategory(0x3DuLL);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v9 = 138412290;
        v10 = WeakRetained;
        _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_ERROR, "Cancelling in-flight read transaction: %@", &v9, 0xCu);
      }

      os_activity_scope_leave(&state);
    }

    else
    {
      v8 = HFLogForCategory(0x3DuLL);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        LODWORD(state.opaque[0]) = 138412290;
        *(state.opaque + 4) = WeakRetained;
        _os_log_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_ERROR, "Cancelling in-flight read transaction: %@", &state, 0xCu);
      }
    }

    v6 = *(a1 + 40);
    v7 = [MEMORY[0x277CCA9B8] hf_errorWithCode:103];
    (*(v6 + 16))(v6, v7);
  }
}

- (void)_transactionLock_executeActionSetTransaction:(id)transaction completionHandler:(id)handler
{
  v90 = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  handlerCopy = handler;
  if (!transactionCopy)
  {
    NSLog(&cfstr_NilTransaction_0.isa);
  }

  v51 = transactionCopy;
  actionSetsToExecute = [transactionCopy actionSetsToExecute];
  v7 = [actionSetsToExecute count];

  if (v7)
  {
    objc_initWeak(&location, self);
    logger = [v51 logger];
    v9 = logger == 0;

    if (v9)
    {
      v39 = HFLogForCategory(0x3DuLL);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        valueWriter = [(HFCharacteristicValueManager *)self valueWriter];
        actionSetsToExecute2 = [v51 actionSetsToExecute];
        hf_prettyDescription = [actionSetsToExecute2 hf_prettyDescription];
        *buf = 138412546;
        v87 = valueWriter;
        v88 = 2112;
        v89 = hf_prettyDescription;
        _os_log_impl(&dword_20D9BF000, v39, OS_LOG_TYPE_DEFAULT, "Start executing action sets with writer:%@. Action sets:%@", buf, 0x16u);
      }
    }

    else
    {
      state.opaque[0] = 0;
      state.opaque[1] = 0;
      logger2 = [v51 logger];
      loggerActivity = [logger2 loggerActivity];
      os_activity_scope_enter(loggerActivity, &state);

      v12 = HFLogForCategory(0x3DuLL);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        valueWriter2 = [(HFCharacteristicValueManager *)self valueWriter];
        actionSetsToExecute3 = [v51 actionSetsToExecute];
        hf_prettyDescription2 = [actionSetsToExecute3 hf_prettyDescription];
        *buf = 138412546;
        v87 = valueWriter2;
        v88 = 2112;
        v89 = hf_prettyDescription2;
        _os_log_impl(&dword_20D9BF000, v12, OS_LOG_TYPE_DEFAULT, "Start executing action sets with writer:%@. Action sets:%@", buf, 0x16u);
      }

      os_activity_scope_leave(&state);
    }

    transactionLock = [(HFCharacteristicValueManager *)self transactionLock];
    [transactionLock lock];

    v43 = [(HFCharacteristicValueManager *)self _transactionLock_characteristicsWithPendingWritesInTransacton:v51 includeDirectWrites:0 includeActionSets:1 includeActions:0];
    transactionLock2 = [(HFCharacteristicValueManager *)self transactionLock];
    [transactionLock2 unlock];

    valueWriter3 = [(HFCharacteristicValueManager *)self valueWriter];
    hf_home = [valueWriter3 hf_home];

    if (hf_home)
    {
      v19 = +[HFHomeKitDispatcher sharedDispatcher];
      v80[0] = MEMORY[0x277D85DD0];
      v80[1] = 3221225472;
      v80[2] = __95__HFCharacteristicValueManager__transactionLock_executeActionSetTransaction_completionHandler___block_invoke;
      v80[3] = &unk_277DF3810;
      v20 = hf_home;
      v81 = v20;
      v82 = v51;
      [v19 dispatchHomeObserverMessage:v80 sender:0];

      v21 = +[HFHomeKitDispatcher sharedDispatcher];
      v77[0] = MEMORY[0x277D85DD0];
      v77[1] = 3221225472;
      v77[2] = __95__HFCharacteristicValueManager__transactionLock_executeActionSetTransaction_completionHandler___block_invoke_2;
      v77[3] = &unk_277DF3810;
      v78 = v20;
      v79 = v43;
      [v21 dispatchHomeObserverMessage:v77 sender:0];
    }

    v22 = dispatch_group_create();
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v48 = [MEMORY[0x277CBEB58] set];
    v47 = [MEMORY[0x277CBEB58] set];
    v23 = [MEMORY[0x277CBEB58] set];
    v24 = [MEMORY[0x277CBEB58] set];
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    actionSetsToExecute4 = [v51 actionSetsToExecute];
    obj = [actionSetsToExecute4 copy];

    v26 = [obj countByEnumeratingWithState:&v73 objects:v85 count:16];
    if (v26)
    {
      v27 = *v74;
      do
      {
        v28 = 0;
        do
        {
          if (*v74 != v27)
          {
            objc_enumerationMutation(obj);
          }

          v29 = *(*(&v73 + 1) + 8 * v28);
          dispatch_group_enter(v22);
          valueWriter4 = [(HFCharacteristicValueManager *)self valueWriter];
          v63[0] = MEMORY[0x277D85DD0];
          v63[1] = 3221225472;
          v63[2] = __95__HFCharacteristicValueManager__transactionLock_executeActionSetTransaction_completionHandler___block_invoke_3;
          v63[3] = &unk_277DF6650;
          objc_copyWeak(&v72, &location);
          v64 = v51;
          v65 = v29;
          v66 = dictionary;
          v67 = v47;
          v68 = v24;
          v69 = v48;
          v70 = v23;
          v71 = v22;
          [valueWriter4 executeActionSet:v29 completionHandler:v63];

          objc_destroyWeak(&v72);
          ++v28;
        }

        while (v26 != v28);
        v26 = [obj countByEnumeratingWithState:&v73 objects:v85 count:16];
      }

      while (v26);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __95__HFCharacteristicValueManager__transactionLock_executeActionSetTransaction_completionHandler___block_invoke_227;
    block[3] = &unk_277DF6678;
    objc_copyWeak(&v62, &location);
    v53 = v51;
    v54 = dictionary;
    selfCopy = self;
    v56 = v23;
    v31 = v23;
    v57 = hf_home;
    v58 = v24;
    v59 = v48;
    v60 = v47;
    v61 = handlerCopy;
    v32 = v47;
    v33 = v48;
    v34 = v24;
    v35 = hf_home;
    v36 = v31;
    v37 = dictionary;
    dispatch_group_notify(v22, MEMORY[0x277D85CD0], block);

    objc_destroyWeak(&v62);
    objc_destroyWeak(&location);
    v38 = handlerCopy;
  }

  else
  {
    v38 = handlerCopy;
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy);
    }
  }
}

void __95__HFCharacteristicValueManager__transactionLock_executeActionSetTransaction_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) actionSetsToExecute];
    [v5 home:v3 willExecuteActionSets:v4];
  }
}

void __95__HFCharacteristicValueManager__transactionLock_executeActionSetTransaction_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 home:*(a1 + 32) willWriteValuesForCharacteristics:*(a1 + 40)];
  }
}

void __95__HFCharacteristicValueManager__transactionLock_executeActionSetTransaction_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 96));
  v5 = [WeakRetained transactionLock];
  [v5 lock];

  v6 = [*(a1 + 32) logger];

  if (v6)
  {
    v7 = [*(a1 + 32) logger];
    v8 = [v7 loggerActivity];
    os_activity_scope_enter(v8, &v21);

    v9 = HFLogForCategory(0x3DuLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 40);
      *buf = 138412546;
      v23 = v10;
      v24 = 2112;
      v25 = v3;
      _os_log_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_DEFAULT, "Finished action set execution: %@. Error: %@", buf, 0x16u);
    }

    os_activity_scope_leave(&v21);
  }

  else
  {
    v19 = HFLogForCategory(0x3DuLL);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = *(a1 + 40);
      *buf = 138412546;
      v23 = v20;
      v24 = 2112;
      v25 = v3;
      _os_log_impl(&dword_20D9BF000, v19, OS_LOG_TYPE_DEFAULT, "Finished action set execution: %@. Error: %@", buf, 0x16u);
    }
  }

  v11 = [*(a1 + 32) actionSetsToExecute];
  [v11 removeObject:*(a1 + 40)];

  v12 = objc_loadWeakRetained((a1 + 96));
  v13 = [v12 transactionLock];
  [v13 unlock];

  v14 = [*(a1 + 40) hf_affectedCharacteristics];
  if (!v14)
  {
    v14 = [MEMORY[0x277CBEB98] set];
    if (v3)
    {
      goto LABEL_7;
    }

LABEL_9:
    v17 = 80;
    v18 = 72;
    goto LABEL_10;
  }

  if (!v3)
  {
    goto LABEL_9;
  }

LABEL_7:
  v15 = *(a1 + 48);
  v16 = [*(a1 + 40) uniqueIdentifier];
  [v15 setObject:v3 forKeyedSubscript:v16];

  v17 = 64;
  v18 = 56;
LABEL_10:
  [*(a1 + v18) unionSet:v14];
  [*(a1 + v17) addObject:*(a1 + 40)];
  dispatch_group_leave(*(a1 + 88));
}

uint64_t __95__HFCharacteristicValueManager__transactionLock_executeActionSetTransaction_completionHandler___block_invoke_227(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 104));
  v3 = [WeakRetained transactionLock];
  [v3 lock];

  [*(a1 + 32) setActionSetErrorsKeyedByUUID:*(a1 + 40)];
  v4 = [*(a1 + 48) cachedExecutionErrorsKeyedByActionSetIdentifier];
  [v4 addEntriesFromDictionary:*(a1 + 40)];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v5 = *(a1 + 56);
  v6 = [v5 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v30;
    do
    {
      v9 = 0;
      do
      {
        if (*v30 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v29 + 1) + 8 * v9);
        v11 = [*(a1 + 48) cachedExecutionErrorsKeyedByActionSetIdentifier];
        v12 = [v10 uniqueIdentifier];
        [v11 removeObjectForKey:v12];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v7);
  }

  v13 = objc_loadWeakRetained((a1 + 104));
  v14 = [v13 transactionLock];
  [v14 unlock];

  if (*(a1 + 64))
  {
    if ([*(a1 + 56) count] || objc_msgSend(*(a1 + 72), "count"))
    {
      v18 = +[HFHomeKitDispatcher sharedDispatcher];
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __95__HFCharacteristicValueManager__transactionLock_executeActionSetTransaction_completionHandler___block_invoke_2_228;
      v25[3] = &unk_277DF64F0;
      v26 = *(a1 + 64);
      v27 = *(a1 + 56);
      v28 = *(a1 + 72);
      [v18 dispatchHomeObserverMessage:v25 sender:0];
    }

    if (*(a1 + 64) && ([*(a1 + 80) count] || objc_msgSend(*(a1 + 88), "count")))
    {
      v19 = +[HFHomeKitDispatcher sharedDispatcher];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __95__HFCharacteristicValueManager__transactionLock_executeActionSetTransaction_completionHandler___block_invoke_3_231;
      v21[3] = &unk_277DF64F0;
      v22 = *(a1 + 64);
      v23 = *(a1 + 80);
      v24 = *(a1 + 88);
      [v19 dispatchHomeObserverMessage:v21 sender:0];
    }
  }

  result = *(a1 + 96);
  if (result)
  {
    return (*(result + 16))(result, v15, v16, v17);
  }

  return result;
}

void __95__HFCharacteristicValueManager__transactionLock_executeActionSetTransaction_completionHandler___block_invoke_2_228(void *a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 home:a1[4] didExecuteActionSets:a1[5] failedActionSets:a1[6]];
  }
}

void __95__HFCharacteristicValueManager__transactionLock_executeActionSetTransaction_completionHandler___block_invoke_3_231(void *a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 home:a1[4] didWriteValuesForCharacteristics:a1[5] failedCharacteristics:a1[6]];
  }
}

- (void)_transactionLock_executeActionsTransaction:(id)transaction completionHandler:(id)handler
{
  v53 = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  handlerCopy = handler;
  if (!transactionCopy)
  {
    NSLog(&cfstr_NilTransaction_0.isa);
  }

  actionsToExecute = [transactionCopy actionsToExecute];
  v9 = [actionsToExecute count];

  if (v9)
  {
    objc_initWeak(&location, self);
    logger = [transactionCopy logger];
    v11 = logger == 0;

    if (v11)
    {
      v33 = HFLogForCategory(0x3DuLL);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        valueWriter = [(HFCharacteristicValueManager *)self valueWriter];
        actionsToExecute2 = [transactionCopy actionsToExecute];
        hf_prettyDescription = [actionsToExecute2 hf_prettyDescription];
        *buf = 138412546;
        v50 = valueWriter;
        v51 = 2112;
        v52 = hf_prettyDescription;
        _os_log_impl(&dword_20D9BF000, v33, OS_LOG_TYPE_DEFAULT, "Start executing actions with writer:%@. Action sets:%@", buf, 0x16u);
      }
    }

    else
    {
      state.opaque[0] = 0;
      state.opaque[1] = 0;
      logger2 = [transactionCopy logger];
      loggerActivity = [logger2 loggerActivity];
      os_activity_scope_enter(loggerActivity, &state);

      v14 = HFLogForCategory(0x3DuLL);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        valueWriter2 = [(HFCharacteristicValueManager *)self valueWriter];
        actionsToExecute3 = [transactionCopy actionsToExecute];
        hf_prettyDescription2 = [actionsToExecute3 hf_prettyDescription];
        *buf = 138412546;
        v50 = valueWriter2;
        v51 = 2112;
        v52 = hf_prettyDescription2;
        _os_log_impl(&dword_20D9BF000, v14, OS_LOG_TYPE_DEFAULT, "Start executing actions with writer:%@. Action sets:%@", buf, 0x16u);
      }

      os_activity_scope_leave(&state);
    }

    transactionLock = [(HFCharacteristicValueManager *)self transactionLock];
    [transactionLock lock];

    v19 = [(HFCharacteristicValueManager *)self _transactionLock_characteristicsWithPendingWritesInTransacton:transactionCopy includeDirectWrites:0 includeActionSets:0 includeActions:1];
    transactionLock2 = [(HFCharacteristicValueManager *)self transactionLock];
    [transactionLock2 unlock];

    valueWriter3 = [(HFCharacteristicValueManager *)self valueWriter];
    hf_home = [valueWriter3 hf_home];

    if (hf_home)
    {
      v23 = +[HFHomeKitDispatcher sharedDispatcher];
      v44[0] = MEMORY[0x277D85DD0];
      v44[1] = 3221225472;
      v44[2] = __93__HFCharacteristicValueManager__transactionLock_executeActionsTransaction_completionHandler___block_invoke;
      v44[3] = &unk_277DF3810;
      v24 = hf_home;
      v45 = v24;
      v25 = v19;
      v46 = v25;
      [v23 dispatchHomeObserverMessage:v44 sender:0];

      actionsToExecute4 = [transactionCopy actionsToExecute];
      v27 = [actionsToExecute4 copy];

      valueWriter4 = [(HFCharacteristicValueManager *)self valueWriter];
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = __93__HFCharacteristicValueManager__transactionLock_executeActionsTransaction_completionHandler___block_invoke_2;
      v37[3] = &unk_277DF6518;
      objc_copyWeak(&v43, &location);
      v38 = transactionCopy;
      v29 = v27;
      v39 = v29;
      v40 = v24;
      v41 = v25;
      v42 = handlerCopy;
      [valueWriter4 executeActions:v29 completionHandler:v37];

      objc_destroyWeak(&v43);
    }

    else
    {
      transactionLock3 = [(HFCharacteristicValueManager *)self transactionLock];
      [transactionLock3 lock];

      v31 = [MEMORY[0x277CCA9B8] hf_errorWithCode:30];
      [transactionCopy setActionsError:v31];

      transactionLock4 = [(HFCharacteristicValueManager *)self transactionLock];
      [transactionLock4 unlock];

      if (handlerCopy)
      {
        handlerCopy[2](handlerCopy);
      }
    }

    objc_destroyWeak(&location);
  }

  else if (handlerCopy)
  {
    handlerCopy[2](handlerCopy);
  }
}

void __93__HFCharacteristicValueManager__transactionLock_executeActionsTransaction_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 home:*(a1 + 32) willWriteValuesForCharacteristics:*(a1 + 40)];
  }
}

void __93__HFCharacteristicValueManager__transactionLock_executeActionsTransaction_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v5 = [WeakRetained transactionLock];
  [v5 lock];

  v6 = [*(a1 + 32) logger];

  if (v6)
  {
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    v7 = [*(a1 + 32) logger];
    v8 = [v7 loggerActivity];
    os_activity_scope_enter(v8, &state);

    v9 = HFLogForCategory(0x3DuLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 40);
      *buf = 138412546;
      v29 = v10;
      v30 = 2112;
      v31 = v3;
      _os_log_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_DEFAULT, "Finished actions execution: %@. Error: %@", buf, 0x16u);
    }

    os_activity_scope_leave(&state);
  }

  else
  {
    v21 = HFLogForCategory(0x3DuLL);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = *(a1 + 40);
      *buf = 138412546;
      v29 = v22;
      v30 = 2112;
      v31 = v3;
      _os_log_impl(&dword_20D9BF000, v21, OS_LOG_TYPE_DEFAULT, "Finished actions execution: %@. Error: %@", buf, 0x16u);
    }
  }

  v11 = [*(a1 + 32) actionsToExecute];
  [v11 minusSet:*(a1 + 40)];

  if (v3)
  {
    [*(a1 + 32) setActionsError:v3];
  }

  v12 = objc_loadWeakRetained((a1 + 72));
  v13 = [v12 transactionLock];
  [v13 unlock];

  if (*(a1 + 48) && [*(a1 + 56) count])
  {
    if (v3)
    {
      v14 = [MEMORY[0x277CBEB58] set];
      v15 = *(a1 + 56);
    }

    else
    {
      v14 = *(a1 + 56);
      v15 = [MEMORY[0x277CBEB58] set];
    }

    v16 = v15;
    v17 = +[HFHomeKitDispatcher sharedDispatcher];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __93__HFCharacteristicValueManager__transactionLock_executeActionsTransaction_completionHandler___block_invoke_232;
    v23[3] = &unk_277DF64F0;
    v24 = *(a1 + 48);
    v25 = v14;
    v26 = v16;
    v18 = v16;
    v19 = v14;
    [v17 dispatchHomeObserverMessage:v23 sender:0];
  }

  v20 = *(a1 + 64);
  if (v20)
  {
    (*(v20 + 16))();
  }
}

void __93__HFCharacteristicValueManager__transactionLock_executeActionsTransaction_completionHandler___block_invoke_232(void *a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 home:a1[4] didWriteValuesForCharacteristics:a1[5] failedCharacteristics:a1[6]];
  }
}

- (id)cachedValueForCharacteristic:(id)characteristic
{
  characteristicCopy = characteristic;
  transactionLock = [(HFCharacteristicValueManager *)self transactionLock];
  [transactionLock lock];

  cacheManager = [(HFCharacteristicValueManager *)self cacheManager];
  value = [cacheManager cachedValueForCharacteristic:characteristicCopy];

  if (!value)
  {
    characteristicsWithCachedValues = [(HFCharacteristicValueManager *)self characteristicsWithCachedValues];
    v9 = [characteristicsWithCachedValues containsObject:characteristicCopy];

    if (v9)
    {
      value = [characteristicCopy value];
    }

    else
    {
      value = 0;
    }
  }

  v10 = [(HFCharacteristicValueManager *)self _overrideCachedValueForCharacteristic:characteristicCopy value:value];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = value;
  }

  v13 = v12;

  if (+[HFHomeKitDispatcher synchronizesHomeDataModel])
  {
    v14 = [(HFCharacteristicValueManager *)self staticHomeDataModelCachedValueForCharacteristic:characteristicCopy];
    v15 = v14;
    if (v14)
    {
      v16 = v14;

      v13 = v16;
    }

    homeStateStreamObserver = [(HFCharacteristicValueManager *)self homeStateStreamObserver];
    v18 = [homeStateStreamObserver homeStateStreamCachedValueFor:characteristicCopy];

    if (v18)
    {
      v19 = v18;

      v13 = v19;
    }
  }

  transactionLock2 = [(HFCharacteristicValueManager *)self transactionLock];
  [transactionLock2 unlock];

  return v13;
}

- (id)cachedReadErrorForCharacteristic:(id)characteristic
{
  characteristicCopy = characteristic;
  transactionLock = [(HFCharacteristicValueManager *)self transactionLock];
  [transactionLock lock];

  cachedReadErrorsKeyedByCharacteristicIdentifier = [(HFCharacteristicValueManager *)self cachedReadErrorsKeyedByCharacteristicIdentifier];
  uniqueIdentifier = [characteristicCopy uniqueIdentifier];

  v8 = [cachedReadErrorsKeyedByCharacteristicIdentifier objectForKeyedSubscript:uniqueIdentifier];

  transactionLock2 = [(HFCharacteristicValueManager *)self transactionLock];
  [transactionLock2 unlock];

  return v8;
}

- (BOOL)hasCachedReadErrorForAccessory:(id)accessory passingTest:(id)test
{
  testCopy = test;
  accessoryCopy = accessory;
  transactionLock = [(HFCharacteristicValueManager *)self transactionLock];
  [transactionLock lock];

  services = [accessoryCopy services];

  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __75__HFCharacteristicValueManager_hasCachedReadErrorForAccessory_passingTest___block_invoke;
  v16 = &unk_277DF66C8;
  selfCopy = self;
  v18 = testCopy;
  v10 = testCopy;
  LOBYTE(testCopy) = [services na_any:&v13];

  v11 = [(HFCharacteristicValueManager *)self transactionLock:v13];
  [v11 unlock];

  return testCopy;
}

uint64_t __75__HFCharacteristicValueManager_hasCachedReadErrorForAccessory_passingTest___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 characteristics];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __75__HFCharacteristicValueManager_hasCachedReadErrorForAccessory_passingTest___block_invoke_2;
  v7[3] = &unk_277DF66A0;
  v4 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v4;
  v5 = [v3 na_any:v7];

  return v5;
}

uint64_t __75__HFCharacteristicValueManager_hasCachedReadErrorForAccessory_passingTest___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) cachedReadErrorsKeyedByCharacteristicIdentifier];
  v5 = [v3 uniqueIdentifier];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (v6)
  {
    if (*(a1 + 40))
    {
      v7 = [*(a1 + 32) transactionLock];
      [v7 unlock];

      v8 = (*(*(a1 + 40) + 16))();
      v9 = [*(a1 + 32) transactionLock];
      [v9 lock];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)invalidateCachedValueForCharacteristic:(id)characteristic
{
  characteristicCopy = characteristic;
  transactionLock = [(HFCharacteristicValueManager *)self transactionLock];
  [transactionLock lock];

  characteristicsWithCachedValues = [(HFCharacteristicValueManager *)self characteristicsWithCachedValues];
  [characteristicsWithCachedValues removeObject:characteristicCopy];

  transactionLock2 = [(HFCharacteristicValueManager *)self transactionLock];
  [transactionLock2 unlock];
}

- (void)invalidateCachedErrorForCharacteristic:(id)characteristic
{
  characteristicCopy = characteristic;
  transactionLock = [(HFCharacteristicValueManager *)self transactionLock];
  [transactionLock lock];

  cachedReadErrorsKeyedByCharacteristicIdentifier = [(HFCharacteristicValueManager *)self cachedReadErrorsKeyedByCharacteristicIdentifier];
  uniqueIdentifier = [characteristicCopy uniqueIdentifier];
  [cachedReadErrorsKeyedByCharacteristicIdentifier removeObjectForKey:uniqueIdentifier];

  cachedWriteErrorsKeyedByCharacteristicIdentifier = [(HFCharacteristicValueManager *)self cachedWriteErrorsKeyedByCharacteristicIdentifier];
  uniqueIdentifier2 = [characteristicCopy uniqueIdentifier];

  [cachedWriteErrorsKeyedByCharacteristicIdentifier removeObjectForKey:uniqueIdentifier2];
  transactionLock2 = [(HFCharacteristicValueManager *)self transactionLock];
  [transactionLock2 unlock];
}

- (void)invalidateCachedValuesForAccessory:(id)accessory
{
  v31 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  transactionLock = [(HFCharacteristicValueManager *)self transactionLock];
  [transactionLock lock];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v19 = accessoryCopy;
  obj = [accessoryCopy services];
  v6 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v26;
    do
    {
      v9 = 0;
      do
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v25 + 1) + 8 * v9);
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        characteristics = [v10 characteristics];
        v12 = [characteristics countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v22;
          do
          {
            v15 = 0;
            do
            {
              if (*v22 != v14)
              {
                objc_enumerationMutation(characteristics);
              }

              v16 = *(*(&v21 + 1) + 8 * v15);
              characteristicsWithCachedValues = [(HFCharacteristicValueManager *)self characteristicsWithCachedValues];
              [characteristicsWithCachedValues removeObject:v16];

              ++v15;
            }

            while (v13 != v15);
            v13 = [characteristics countByEnumeratingWithState:&v21 objects:v29 count:16];
          }

          while (v13);
        }

        ++v9;
      }

      while (v9 != v7);
      v7 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v7);
  }

  transactionLock2 = [(HFCharacteristicValueManager *)self transactionLock];
  [transactionLock2 unlock];
}

- (id)cachedErrorForWriteToCharacteristic:(id)characteristic
{
  uniqueIdentifier = [characteristic uniqueIdentifier];
  if (uniqueIdentifier)
  {
    transactionLock = [(HFCharacteristicValueManager *)self transactionLock];
    [transactionLock lock];

    cachedWriteErrorsKeyedByCharacteristicIdentifier = [(HFCharacteristicValueManager *)self cachedWriteErrorsKeyedByCharacteristicIdentifier];
    v7 = [cachedWriteErrorsKeyedByCharacteristicIdentifier objectForKeyedSubscript:uniqueIdentifier];

    transactionLock2 = [(HFCharacteristicValueManager *)self transactionLock];
    [transactionLock2 unlock];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)cachedErrorForExecutionOfActionSet:(id)set
{
  uniqueIdentifier = [set uniqueIdentifier];
  if (uniqueIdentifier)
  {
    transactionLock = [(HFCharacteristicValueManager *)self transactionLock];
    [transactionLock lock];

    cachedExecutionErrorsKeyedByActionSetIdentifier = [(HFCharacteristicValueManager *)self cachedExecutionErrorsKeyedByActionSetIdentifier];
    v7 = [cachedExecutionErrorsKeyedByActionSetIdentifier objectForKeyedSubscript:uniqueIdentifier];

    transactionLock2 = [(HFCharacteristicValueManager *)self transactionLock];
    [transactionLock2 unlock];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)invalidateCachedErrorForExecutionOfActionSet:(id)set
{
  setCopy = set;
  transactionLock = [(HFCharacteristicValueManager *)self transactionLock];
  [transactionLock lock];

  cachedExecutionErrorsKeyedByActionSetIdentifier = [(HFCharacteristicValueManager *)self cachedExecutionErrorsKeyedByActionSetIdentifier];
  uniqueIdentifier = [setCopy uniqueIdentifier];

  [cachedExecutionErrorsKeyedByActionSetIdentifier setObject:0 forKeyedSubscript:uniqueIdentifier];
  transactionLock2 = [(HFCharacteristicValueManager *)self transactionLock];
  [transactionLock2 unlock];
}

- (void)invalidateAllCachedErrors
{
  transactionLock = [(HFCharacteristicValueManager *)self transactionLock];
  [transactionLock lock];

  cachedReadErrorsKeyedByCharacteristicIdentifier = [(HFCharacteristicValueManager *)self cachedReadErrorsKeyedByCharacteristicIdentifier];
  [cachedReadErrorsKeyedByCharacteristicIdentifier removeAllObjects];

  cachedWriteErrorsKeyedByCharacteristicIdentifier = [(HFCharacteristicValueManager *)self cachedWriteErrorsKeyedByCharacteristicIdentifier];
  [cachedWriteErrorsKeyedByCharacteristicIdentifier removeAllObjects];

  cachedExecutionErrorsKeyedByActionSetIdentifier = [(HFCharacteristicValueManager *)self cachedExecutionErrorsKeyedByActionSetIdentifier];
  [cachedExecutionErrorsKeyedByActionSetIdentifier removeAllObjects];

  transactionLock2 = [(HFCharacteristicValueManager *)self transactionLock];
  [transactionLock2 unlock];
}

- (void)cancelInFlightReadRequests
{
  transactionLock = [(HFCharacteristicValueManager *)self transactionLock];
  [transactionLock lock];

  inFlightReadCancelationToken = [(HFCharacteristicValueManager *)self inFlightReadCancelationToken];
  v4 = objc_alloc_init(MEMORY[0x277D2C8C8]);
  [(HFCharacteristicValueManager *)self setInFlightReadCancelationToken:v4];

  transactionLock2 = [(HFCharacteristicValueManager *)self transactionLock];
  [transactionLock2 unlock];

  [inFlightReadCancelationToken cancel];
}

- (void)_beginReadsCompleteTrackingForCharacteristics:(id)characteristics withLogger:(id)logger
{
  v39 = *MEMORY[0x277D85DE8];
  characteristicsCopy = characteristics;
  loggerCopy = logger;
  readsCompleteLogger = [(HFCharacteristicValueManager *)self readsCompleteLogger];

  if (!readsCompleteLogger)
  {
    v9 = objc_alloc_init(HFCharacteristicReadLogger);
    [(HFCharacteristicValueManager *)self setReadsCompleteLogger:v9];
  }

  v27 = MEMORY[0x277D85DD0];
  v28 = 3221225472;
  v29 = __89__HFCharacteristicValueManager__beginReadsCompleteTrackingForCharacteristics_withLogger___block_invoke;
  v30 = &unk_277DF66F0;
  selfCopy = self;
  v10 = loggerCopy;
  v32 = v10;
  [characteristicsCopy na_each:&v27];
  if (v10)
  {
    loggerActivity = [v10 loggerActivity];
    os_activity_scope_enter(loggerActivity, &v26);

    v12 = HFLogForCategory(0x3DuLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      readsCompleteLogger2 = [(HFCharacteristicValueManager *)self readsCompleteLogger];
      v14 = [readsCompleteLogger2 numberOfAccessoriesForTransportType:0];
      readsCompleteLogger3 = [(HFCharacteristicValueManager *)self readsCompleteLogger];
      v16 = [readsCompleteLogger3 numberOfAccessoriesForTransportType:1];
      readsCompleteLogger4 = [(HFCharacteristicValueManager *)self readsCompleteLogger];
      v18 = [readsCompleteLogger4 numberOfAccessoriesForTransportType:2];
      *buf = 134218496;
      v34 = v14;
      v35 = 2048;
      v36 = v16;
      v37 = 2048;
      v38 = v18;
      _os_log_impl(&dword_20D9BF000, v12, OS_LOG_TYPE_DEFAULT, "Reads Complete Tracking: Beginning reads for %lu IP accessories, %lu BLE accessories, %lu other.", buf, 0x20u);
    }

    os_activity_scope_leave(&v26);
  }

  else
  {
    v19 = HFLogForCategory(0x3DuLL);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      readsCompleteLogger5 = [(HFCharacteristicValueManager *)self readsCompleteLogger];
      v21 = [readsCompleteLogger5 numberOfAccessoriesForTransportType:0];
      readsCompleteLogger6 = [(HFCharacteristicValueManager *)self readsCompleteLogger];
      v23 = [readsCompleteLogger6 numberOfAccessoriesForTransportType:1];
      readsCompleteLogger7 = [(HFCharacteristicValueManager *)self readsCompleteLogger];
      v25 = [readsCompleteLogger7 numberOfAccessoriesForTransportType:2];
      *buf = 134218496;
      v34 = v21;
      v35 = 2048;
      v36 = v23;
      v37 = 2048;
      v38 = v25;
      _os_log_impl(&dword_20D9BF000, v19, OS_LOG_TYPE_DEFAULT, "Reads Complete Tracking: Beginning reads for %lu IP accessories, %lu BLE accessories, %lu other.", buf, 0x20u);
    }
  }
}

void __89__HFCharacteristicValueManager__beginReadsCompleteTrackingForCharacteristics_withLogger___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 readsCompleteLogger];
  [v5 addCharacteristic:v4 withUpdateLogger:*(a1 + 40)];
}

- (void)_endReadsCompleteTrackingForCharacteristic:(id)characteristic withLogger:(id)logger didRead:(BOOL)read
{
  readCopy = read;
  v29 = *MEMORY[0x277D85DE8];
  characteristicCopy = characteristic;
  loggerCopy = logger;
  v10 = loggerCopy;
  if (readCopy)
  {
    if (loggerCopy)
    {
      loggerActivity = [loggerCopy loggerActivity];
      os_activity_scope_enter(loggerActivity, &v24);

      v12 = HFLogForCategory(0x3DuLL);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = objc_msgSend_service(characteristicCopy);
        accessory = [v13 accessory];
        name = [accessory name];
        *buf = 138412546;
        v26 = characteristicCopy;
        v27 = 2112;
        v28 = name;
        v16 = "Reads Complete Tracking: Read characteristic %@ from %@";
LABEL_8:
        _os_log_impl(&dword_20D9BF000, v12, OS_LOG_TYPE_DEFAULT, v16, buf, 0x16u);

        goto LABEL_9;
      }

      goto LABEL_9;
    }

    v19 = HFLogForCategory(0x3DuLL);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = objc_msgSend_service(characteristicCopy);
      accessory2 = [v20 accessory];
      name2 = [accessory2 name];
      *buf = 138412546;
      v26 = characteristicCopy;
      v27 = 2112;
      v28 = name2;
      v23 = "Reads Complete Tracking: Read characteristic %@ from %@";
LABEL_15:
      _os_log_impl(&dword_20D9BF000, v19, OS_LOG_TYPE_DEFAULT, v23, buf, 0x16u);

      goto LABEL_16;
    }

    goto LABEL_16;
  }

  if (!loggerCopy)
  {
    v19 = HFLogForCategory(0x3DuLL);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = objc_msgSend_service(characteristicCopy);
      accessory2 = [v20 accessory];
      name2 = [accessory2 name];
      *buf = 138412546;
      v26 = characteristicCopy;
      v27 = 2112;
      v28 = name2;
      v23 = "Reads Complete Tracking: No read response for characteristic %@ from %@ (ignoring)";
      goto LABEL_15;
    }

LABEL_16:

    goto LABEL_10;
  }

  loggerActivity2 = [loggerCopy loggerActivity];
  os_activity_scope_enter(loggerActivity2, &v24);

  v12 = HFLogForCategory(0x3DuLL);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = objc_msgSend_service(characteristicCopy);
    accessory = [v13 accessory];
    name = [accessory name];
    *buf = 138412546;
    v26 = characteristicCopy;
    v27 = 2112;
    v28 = name;
    v16 = "Reads Complete Tracking: No read response for characteristic %@ from %@ (ignoring)";
    goto LABEL_8;
  }

LABEL_9:

  os_activity_scope_leave(&v24);
LABEL_10:
  readsCompleteLogger = [(HFCharacteristicValueManager *)self readsCompleteLogger];
  [readsCompleteLogger markCharacteristicAsRead:characteristicCopy withLogger:v10];
}

- (id)readValuesForCharacteristics:(id)characteristics
{
  v29 = *MEMORY[0x277D85DE8];
  characteristicsCopy = characteristics;
  openTransaction = [(HFCharacteristicValueManager *)self openTransaction];

  if (!openTransaction)
  {
    [(HFCharacteristicValueManager *)self beginTransactionWithReason:@"characteristicValueManagerBatchReadTransaction"];
  }

  v19 = [MEMORY[0x277CBEB58] set];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = characteristicsCopy;
  v6 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v6)
  {
    v7 = *v25;
    v8 = MEMORY[0x277D85DD0];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = [(HFCharacteristicValueManager *)self readValueForCharacteristic:*(*(&v24 + 1) + 8 * i)];
        v23[0] = v8;
        v23[1] = 3221225472;
        v23[2] = __61__HFCharacteristicValueManager_readValuesForCharacteristics___block_invoke;
        v23[3] = &unk_277DF6718;
        v23[4] = self;
        v23[5] = a2;
        v11 = [v10 addFailureBlock:v23];
        [v19 addObject:v10];
      }

      v6 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v6);
  }

  objc_initWeak(&location, self);
  v12 = MEMORY[0x277D2C900];
  allObjects = [v19 allObjects];
  v14 = [v12 combineAllFutures:allObjects];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __61__HFCharacteristicValueManager_readValuesForCharacteristics___block_invoke_2;
  v20[3] = &unk_277DF52E0;
  objc_copyWeak(&v21, &location);
  v15 = [v14 flatMap:v20];

  if (!openTransaction)
  {
    [(HFCharacteristicValueManager *)self commitTransactionWithReason:@"characteristicValueManagerBatchReadTransaction"];
  }

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);

  return v15;
}

void __61__HFCharacteristicValueManager_readValuesForCharacteristics___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"HFCharacteristicValueManager.m" lineNumber:1711 description:{@"-[HFCharacteristicValueManager should never return a future that fails; it should always return a future that finishes with a HFCharacteristicReadResponse, with the error property set as needed"}];
}

id __61__HFCharacteristicValueManager_readValuesForCharacteristics___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [HFCharacteristicBatchReadResponse alloc];
  v5 = [MEMORY[0x277CBEB98] setWithArray:v3];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = [WeakRetained contextProvider];
  v8 = [(HFCharacteristicBatchReadResponse *)v4 initWithReadResponses:v5 contextProvider:v7];

  v9 = [MEMORY[0x277D2C900] futureWithResult:v8];

  return v9;
}

- (id)readValuesForCharacteristicTypes:(id)types inServices:(id)services
{
  typesCopy = types;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __76__HFCharacteristicValueManager_readValuesForCharacteristicTypes_inServices___block_invoke;
  v10[3] = &unk_277DF6218;
  v11 = typesCopy;
  v7 = typesCopy;
  v8 = [(HFCharacteristicValueManager *)self readValuesForCharacteristicsPassingTest:v10 inServices:services];

  return v8;
}

uint64_t __76__HFCharacteristicValueManager_readValuesForCharacteristicTypes_inServices___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 characteristicType];
  v4 = [v2 containsObject:v3];

  return v4;
}

- (id)readValuesForCharacteristicsPassingTest:(id)test inServices:(id)services
{
  v35 = *MEMORY[0x277D85DE8];
  testCopy = test;
  servicesCopy = services;
  v7 = [MEMORY[0x277CBEB58] set];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = servicesCopy;
  v23 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v23)
  {
    v22 = *v30;
    do
    {
      v9 = 0;
      do
      {
        if (*v30 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v24 = v9;
        v10 = *(*(&v29 + 1) + 8 * v9);
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        characteristics = [v10 characteristics];
        v12 = [characteristics countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v26;
          do
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v26 != v14)
              {
                objc_enumerationMutation(characteristics);
              }

              v16 = *(*(&v25 + 1) + 8 * i);
              if (!testCopy || testCopy[2](testCopy, *(*(&v25 + 1) + 8 * i)))
              {
                [v7 addObject:v16];
                uniqueIdentifier = [v16 uniqueIdentifier];
                [dictionary setObject:v10 forKeyedSubscript:uniqueIdentifier];
              }
            }

            v13 = [characteristics countByEnumeratingWithState:&v25 objects:v33 count:16];
          }

          while (v13);
        }

        v9 = v24 + 1;
      }

      while (v24 + 1 != v23);
      v23 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v23);
  }

  v18 = [(HFCharacteristicValueManager *)self readValuesForCharacteristics:v7];

  return v18;
}

- (id)writeValuesForCharacteristics:(id)characteristics
{
  characteristicsCopy = characteristics;
  allCharacteristics = [characteristicsCopy allCharacteristics];
  v6 = [allCharacteristics count];

  if (v6)
  {
    [(HFCharacteristicValueManager *)self beginTransactionWithReason:@"characteristicValueManagerBatchWriteTransaction"];
    allCharacteristics2 = [characteristicsCopy allCharacteristics];
    allObjects = [allCharacteristics2 allObjects];

    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __62__HFCharacteristicValueManager_writeValuesForCharacteristics___block_invoke;
    v17 = &unk_277DF6740;
    v18 = characteristicsCopy;
    selfCopy = self;
    v9 = [allObjects na_map:&v14];
    v10 = MEMORY[0x277D2C900];
    mainThreadScheduler = [MEMORY[0x277D2C938] mainThreadScheduler];
    futureWithNoResult = [v10 combineAllFutures:v9 ignoringErrors:0 scheduler:mainThreadScheduler];

    [(HFCharacteristicValueManager *)self commitTransactionWithReason:@"characteristicValueManagerBatchWriteTransaction"];
  }

  else
  {
    futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  return futureWithNoResult;
}

id __62__HFCharacteristicValueManager_writeValuesForCharacteristics___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 valueForCharacteristic:v4];
  v6 = [*(a1 + 40) writeValue:v5 forCharacteristic:v4];

  return v6;
}

- (HFCharacteristicOperationContextProviding)contextProvider
{
  valueReader = [(HFCharacteristicValueManager *)self valueReader];
  hf_home = [valueReader hf_home];

  return hf_home;
}

+ (NAIdentity)na_identity
{
  if (_MergedGlobals_234 != -1)
  {
    dispatch_once(&_MergedGlobals_234, &__block_literal_global_245);
  }

  v3 = qword_280E02D88;

  return v3;
}

void __43__HFCharacteristicValueManager_na_identity__block_invoke_2()
{
  v0 = [MEMORY[0x277D2C908] buildPointerIdentity];
  v1 = qword_280E02D88;
  qword_280E02D88 = v0;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  na_identity = [objc_opt_class() na_identity];
  LOBYTE(self) = [na_identity isObject:self equalToObject:equalCopy];

  return self;
}

- (unint64_t)hash
{
  na_identity = [objc_opt_class() na_identity];
  v4 = [na_identity hashOfObject:self];

  return v4;
}

- (id)_overrideCachedValueForCharacteristic:(id)characteristic value:(id)value
{
  v48 = *MEMORY[0x277D85DE8];
  characteristicCopy = characteristic;
  valueCopy = value;
  characteristicType = [characteristicCopy characteristicType];
  v10 = [characteristicType isEqualToString:*MEMORY[0x277CCF788]];

  v11 = 0;
  if (valueCopy && v10)
  {
    if ([valueCopy intValue])
    {
      v11 = 0;
    }

    else
    {
      v12 = objc_msgSend_service(characteristicCopy);
      characteristics = [v12 characteristics];
      v14 = [characteristics na_firstObjectPassingTest:&__block_literal_global_248];

      if (v14)
      {
        v15 = [(HFCharacteristicValueManager *)self cachedValueForCharacteristic:v14];
        if (+[HFUtilities hasInternalDiagnostics])
        {
          v16 = HFLogForCategory(0x3DuLL);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v17 = objc_opt_class();
            v18 = NSStringFromClass(v17);
            v19 = NSStringFromSelector(a2);
            uniqueIdentifier = [characteristicCopy uniqueIdentifier];
            bOOLValue = [v15 BOOLValue];
            *buf = 138413314;
            v22 = @"Off";
            v35 = v18;
            v36 = 2112;
            if (bOOLValue)
            {
              v22 = @"On";
            }

            v37 = v19;
            v38 = 2112;
            v39 = valueCopy;
            v40 = 2112;
            v41 = uniqueIdentifier;
            v42 = 2112;
            v43 = v22;
            _os_log_impl(&dword_20D9BF000, v16, OS_LOG_TYPE_DEFAULT, "%@:%@ brightness %@ (%@) associatedPowerCharacteristic powered on: %@", buf, 0x34u);
          }
        }

        if ([v15 BOOLValue])
        {
          v23 = HFLogForCategory(0x3DuLL);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            v24 = objc_opt_class();
            v31 = NSStringFromClass(v24);
            v30 = NSStringFromSelector(a2);
            uniqueIdentifier2 = [characteristicCopy uniqueIdentifier];
            v33 = objc_msgSend_service(characteristicCopy);
            hf_serviceNameComponents = [v33 hf_serviceNameComponents];
            composedString = [hf_serviceNameComponents composedString];
            v27 = objc_msgSend_service(characteristicCopy);
            uniqueIdentifier3 = [v27 uniqueIdentifier];
            *buf = 138413826;
            v35 = v31;
            v36 = 2112;
            v37 = v30;
            v38 = 2112;
            v39 = uniqueIdentifier2;
            v40 = 2112;
            v41 = composedString;
            v42 = 2112;
            v43 = uniqueIdentifier3;
            v44 = 2112;
            v45 = valueCopy;
            v46 = 2112;
            v47 = &unk_2825237A8;
            _os_log_impl(&dword_20D9BF000, v23, OS_LOG_TYPE_DEFAULT, "%@:%@ Overriding cached value for characteristic (%@) in service '%@' (%@) from %@ to %@", buf, 0x48u);
          }

          v11 = &unk_2825237A8;
        }

        else
        {
          v11 = 0;
        }
      }

      else
      {
        v11 = 0;
      }
    }
  }

  return v11;
}

uint64_t __76__HFCharacteristicValueManager__overrideCachedValueForCharacteristic_value___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 characteristicType];
  v3 = [v2 isEqualToString:*MEMORY[0x277CCF9F0]];

  return v3;
}

- (void)setCachedReadError:(id)error forCharacteristic:(id)characteristic
{
  characteristicCopy = characteristic;
  errorCopy = error;
  transactionLock = [(HFCharacteristicValueManager *)self transactionLock];
  [transactionLock lock];

  cachedReadErrorsKeyedByCharacteristicIdentifier = [(HFCharacteristicValueManager *)self cachedReadErrorsKeyedByCharacteristicIdentifier];
  uniqueIdentifier = [characteristicCopy uniqueIdentifier];

  [cachedReadErrorsKeyedByCharacteristicIdentifier setObject:errorCopy forKey:uniqueIdentifier];
  transactionLock2 = [(HFCharacteristicValueManager *)self transactionLock];
  [transactionLock2 unlock];
}

- (void)setCachedWriteError:(id)error forCharacteristic:(id)characteristic
{
  characteristicCopy = characteristic;
  errorCopy = error;
  transactionLock = [(HFCharacteristicValueManager *)self transactionLock];
  [transactionLock lock];

  cachedWriteErrorsKeyedByCharacteristicIdentifier = [(HFCharacteristicValueManager *)self cachedWriteErrorsKeyedByCharacteristicIdentifier];
  uniqueIdentifier = [characteristicCopy uniqueIdentifier];

  [cachedWriteErrorsKeyedByCharacteristicIdentifier setObject:errorCopy forKey:uniqueIdentifier];
  transactionLock2 = [(HFCharacteristicValueManager *)self transactionLock];
  [transactionLock2 unlock];
}

- (void)setOverrideLoadingState:(unint64_t)state forCharacteristic:(id)characteristic
{
  characteristicCopy = characteristic;
  testingOverrideLoadingStates = [(HFCharacteristicValueManager *)self testingOverrideLoadingStates];

  if (!testingOverrideLoadingStates)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [(HFCharacteristicValueManager *)self setTestingOverrideLoadingStates:dictionary];
  }

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:state];
  testingOverrideLoadingStates2 = [(HFCharacteristicValueManager *)self testingOverrideLoadingStates];
  uniqueIdentifier = [characteristicCopy uniqueIdentifier];

  [testingOverrideLoadingStates2 setObject:v11 forKeyedSubscript:uniqueIdentifier];
}

- (void)clearOverrideLoadingStates
{
  testingOverrideLoadingStates = [(HFCharacteristicValueManager *)self testingOverrideLoadingStates];
  [testingOverrideLoadingStates removeAllObjects];
}

@end