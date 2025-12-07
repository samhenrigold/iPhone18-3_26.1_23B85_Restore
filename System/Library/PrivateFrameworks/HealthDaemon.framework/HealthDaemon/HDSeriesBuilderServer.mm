@interface HDSeriesBuilderServer
- (BOOL)canAddMetadata:(id)metadata errorOut:(id *)out;
- (BOOL)queue_canInsertDataWithError:(id *)error;
- (HDSeriesBuilderEntity)persistentEntity;
- (HDSeriesBuilderServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate;
- (NSString)description;
- (void)_discardSeriesWithCompletion:(uint64_t)completion;
- (void)_setClientState:(void *)state completion:;
- (void)associateToWorkoutBuilderWithCompletion:(id)completion;
- (void)connectionInvalidated;
- (void)createSeriesSampleIfNeeded:(id)needed errorHandler:(id)handler;
- (void)queue_freezeBuilderWithCompletion:(id)completion;
- (void)queue_recoverBuilder;
- (void)queue_setState:(int64_t)state completion:(id)completion;
- (void)remote_addMetadata:(id)metadata completion:(id)completion;
- (void)remote_discardWithCompletion:(id)completion;
- (void)remote_freezeWithCompletion:(id)completion;
- (void)remote_recoverWithCompletion:(id)completion;
@end

@implementation HDSeriesBuilderServer

- (HDSeriesBuilderServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate
{
  configurationCopy = configuration;
  v20.receiver = self;
  v20.super_class = HDSeriesBuilderServer;
  v11 = [(HDStandardTaskServer *)&v20 initWithUUID:d configuration:configurationCopy client:client delegate:delegate];
  if (v11)
  {
    v12 = HKCreateSerialDispatchQueue();
    queue = v11->_queue;
    v11->_queue = v12;

    v14 = objc_msgSend_copy(configurationCopy);
    configuration = v11->_configuration;
    v11->_configuration = v14;

    v11->_queue_state = 0;
    v16 = v11->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __68__HDSeriesBuilderServer_initWithUUID_configuration_client_delegate___block_invoke;
    block[3] = &unk_278613968;
    v19 = v11;
    dispatch_async(v16, block);
  }

  return v11;
}

void __68__HDSeriesBuilderServer_initWithUUID_configuration_client_delegate___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if (v1)
  {
    dispatch_assert_queue_V2(*(v1 + 48));
    v2 = [v1 taskUUID];
    v3 = [v1 profile];
    v17 = 0;
    v4 = [HDSeriesBuilderEntity persistentEntityForBuilderIdentifier:v2 profile:v3 error:&v17];
    v5 = v17;
    v6 = *(v1 + 72);
    *(v1 + 72) = v4;

    if (v5)
    {
      _HKInitializeLogging();
      v7 = *MEMORY[0x277CCC330];
      if (!os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
      {
LABEL_4:

        return;
      }

      *buf = 138543362;
      v19 = v5;
      v15 = "Couldn't recover series builder with error %{public}@";
LABEL_12:
      _os_log_error_impl(&dword_228986000, v7, OS_LOG_TYPE_ERROR, v15, buf, 0xCu);
      goto LABEL_4;
    }

    if (*(v1 + 72))
    {
      [v1 queue_recoverBuilder];
    }

    else
    {
      v8 = [v1 taskUUID];
      v9 = [v1 seriesSample];
      v10 = [v9 sampleType];
      v11 = *(v1 + 56);
      v12 = [v1 profile];
      v16 = 0;
      v13 = [HDSeriesBuilderEntity createPersistentEntityForBuilderIdentifier:v8 seriesType:v10 state:v11 profile:v12 error:&v16];
      v5 = v16;
      v14 = *(v1 + 72);
      *(v1 + 72) = v13;

      if (v5)
      {
        _HKInitializeLogging();
        v7 = *MEMORY[0x277CCC330];
        if (!os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_4;
        }

        *buf = 138543362;
        v19 = v5;
        v15 = "Couldn't create persistent entity for series builder with error %{public}@";
        goto LABEL_12;
      }
    }
  }
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  taskUUID = [(HDStandardTaskServer *)self taskUUID];
  v6 = HKSeriesBuilderStateToString();
  v7 = [v3 stringWithFormat:@"<%@:%p %@ %@>", v4, self, taskUUID, v6];

  return v7;
}

- (void)associateToWorkoutBuilderWithCompletion:(id)completion
{
  completionCopy = completion;
  workoutBuilderID = [(HKSeriesBuilderConfiguration *)self->_configuration workoutBuilderID];

  if (workoutBuilderID)
  {
    seriesSample = [(HDSeriesBuilderServer *)self seriesSample];
    workoutBuilderID2 = [(HKSeriesBuilderConfiguration *)self->_configuration workoutBuilderID];
    profile = [(HDStandardTaskServer *)self profile];
    v11 = 0;
    v9 = [HDWorkoutBuilderAssociatedSeriesEntity associateSeries:seriesSample toWorkoutBuilderID:workoutBuilderID2 profile:profile error:&v11];
    v10 = v11;

    if ((v9 - 1) >= 2)
    {
      if (!v9)
      {
        completionCopy[2](completionCopy, 0, v10);
      }
    }

    else
    {
      completionCopy[2](completionCopy, 1, 0);
    }
  }

  else
  {
    completionCopy[2](completionCopy, 1, 0);
  }
}

- (void)createSeriesSampleIfNeeded:(id)needed errorHandler:(id)handler
{
  objc_opt_class();

  NSRequestConcreteImplementation();
}

- (BOOL)canAddMetadata:(id)metadata errorOut:(id *)out
{
  metadataCopy = metadata;
  if (!metadataCopy || (-[HDStandardTaskServer client](self, "client"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [metadataCopy hd_validateMetadataKeysAndValuesWithClient:v7 error:out], v7, v8))
  {
    LOBYTE(v8) = 1;
  }

  return v8;
}

- (BOOL)queue_canInsertDataWithError:(id *)error
{
  dispatch_assert_queue_V2(self->_queue);
  queue_state = self->_queue_state;
  if (queue_state < 2)
  {
    return 1;
  }

  if (queue_state - 2 > 1)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:error code:100 format:{@"Unknown state %ld", self->_queue_state}];
  }

  else
  {
    if (queue_state == 2)
    {
      v6 = @"completed";
    }

    else
    {
      v6 = @"discarded";
    }

    [MEMORY[0x277CCA9B8] hk_assignError:error code:3 format:{@"Workout route is already %@.", v6}];
  }

  return 0;
}

- (void)remote_addMetadata:(id)metadata completion:(id)completion
{
  metadataCopy = metadata;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__HDSeriesBuilderServer_remote_addMetadata_completion___block_invoke;
  block[3] = &unk_278614160;
  block[4] = self;
  v12 = metadataCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = metadataCopy;
  dispatch_sync(queue, block);
}

void __55__HDSeriesBuilderServer_remote_addMetadata_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v3 = *(a1 + 40);
  v4 = v2;
  if (v1)
  {
    dispatch_assert_queue_V2(v1[6]);
    v10 = 0;
    v5 = [(dispatch_queue_t *)v1 queue_canInsertDataWithError:&v10];
    v6 = v10;
    if (v5)
    {
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __55__HDSeriesBuilderServer__queue_addMetadata_completion___block_invoke;
      v7[3] = &unk_278614160;
      v7[4] = v1;
      v8 = v3;
      v9 = v4;
      [(dispatch_queue_t *)v1 createSeriesSampleIfNeeded:v7 errorHandler:v9];
    }

    else
    {
      (*(v4 + 2))(v4, 0, v6);
    }
  }
}

- (void)remote_discardWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__HDSeriesBuilderServer_remote_discardWithCompletion___block_invoke;
  block[3] = &unk_278620058;
  block[4] = self;
  v9 = completionCopy;
  v10 = a2;
  v7 = completionCopy;
  dispatch_sync(queue, block);
}

void __54__HDSeriesBuilderServer_remote_discardWithCompletion___block_invoke(uint64_t a1)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if ((v2[7] & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v3 = *(a1 + 40);
    v4 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:*(a1 + 48) format:@"Cannot discard a finished or discarded series"];
    v5 = *(v3 + 16);
    v6 = v3;
LABEL_8:
    v16 = v4;
    v5(v6, 0);

    return;
  }

  v7 = [v2 seriesSample];

  if (!v7)
  {
    v15 = *(a1 + 40);
    v4 = [MEMORY[0x277CCA9B8] hk_error:100 format:@"Unexpected error encoutered while discarding series"];
    v5 = *(v15 + 16);
    v6 = v15;
    goto LABEL_8;
  }

  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  if (v8)
  {
    dispatch_assert_queue_V2(v8[6]);
    v10 = [(dispatch_queue_t *)v8 delegate];
    v11 = [v10 sampleSavingDelegate];
    v12 = [(dispatch_queue_t *)v8 seriesSample];
    v13 = [v12 sampleType];
    v21[0] = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __66__HDSeriesBuilderServer__queue_discardIfAuthorizedWithCompletion___block_invoke;
    v19[3] = &unk_2786200A8;
    v19[4] = v8;
    v20 = v9;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __66__HDSeriesBuilderServer__queue_discardIfAuthorizedWithCompletion___block_invoke_2;
    v17[3] = &unk_2786200D0;
    v18 = v20;
    [v11 performIfAuthorizedToDeleteObjectTypes:v14 usingBlock:v19 errorHandler:v17];
  }
}

- (void)remote_freezeWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__HDSeriesBuilderServer_remote_freezeWithCompletion___block_invoke;
  v7[3] = &unk_278614E28;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_sync(queue, v7);
}

- (void)remote_recoverWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__HDSeriesBuilderServer_remote_recoverWithCompletion___block_invoke;
  v7[3] = &unk_278614E28;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_sync(queue, v7);
}

void __54__HDSeriesBuilderServer_remote_recoverWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[7];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __54__HDSeriesBuilderServer_remote_recoverWithCompletion___block_invoke_2;
  v3[3] = &unk_278613658;
  v4 = *(a1 + 40);
  [(HDSeriesBuilderServer *)v1 _setClientState:v2 completion:v3];
}

- (void)_setClientState:(void *)state completion:
{
  stateCopy = state;
  v6 = stateCopy;
  if (self)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __52__HDSeriesBuilderServer__setClientState_completion___block_invoke;
    aBlock[3] = &unk_278620080;
    aBlock[4] = self;
    v18 = a2;
    v7 = stateCopy;
    v17 = v7;
    v8 = _Block_copy(aBlock);
    client = [self client];
    connection = [client connection];
    v11 = [connection remoteObjectProxyWithErrorHandler:v8];

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __52__HDSeriesBuilderServer__setClientState_completion___block_invoke_324;
    v13[3] = &unk_27861B2D0;
    v14 = v7;
    v15 = v8;
    v12 = v8;
    [v11 clientRemote_didChangeToState:a2 completion:v13];
  }
}

void __52__HDSeriesBuilderServer__setClientState_completion___block_invoke(void *a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
  {
    v6 = a1[4];
    v7 = a1[6];
    v8 = 138543874;
    v9 = v6;
    v10 = 2048;
    v11 = v7;
    v12 = 2114;
    v13 = v3;
    _os_log_error_impl(&dword_228986000, v4, OS_LOG_TYPE_ERROR, "%{public}@: Failed to notify client of state change to %ld with error: %{public}@", &v8, 0x20u);
  }

  v5 = a1[5];
  if (v5)
  {
    (*(v5 + 16))();
  }
}

uint64_t __52__HDSeriesBuilderServer__setClientState_completion___block_invoke_324(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = *(a1 + 32);
    if (!v6)
    {
      goto LABEL_6;
    }

    v8 = v5;
    v6 = (*(v6 + 16))();
  }

  else
  {
    v8 = v5;
    v6 = (*(*(a1 + 40) + 16))();
  }

  v5 = v8;
LABEL_6:

  return MEMORY[0x2821F96F8](v6, v5);
}

void __55__HDSeriesBuilderServer__queue_addMetadata_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v16 = 0;
  v4 = [v2 canAddMetadata:v3 errorOut:&v16];
  v5 = v16;
  if (v4)
  {
    v6 = [*(a1 + 32) profile];
    v7 = [v6 database];
    v15 = v5;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __55__HDSeriesBuilderServer__queue_addMetadata_completion___block_invoke_2;
    v13[3] = &unk_278613218;
    v8 = *(a1 + 40);
    v13[4] = *(a1 + 32);
    v14 = v8;
    v9 = [(HDHealthEntity *)HDSeriesBuilderEntity performWriteTransactionWithHealthDatabase:v7 error:&v15 block:v13];
    v10 = v15;

    (*(*(a1 + 48) + 16))(*(a1 + 48), v9, v10, v11, v12);
    v5 = v10;
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

uint64_t __55__HDSeriesBuilderServer__queue_addMetadata_completion___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 persistentEntity];
  v8 = [v7 insertMetadata:*(a1 + 40) transaction:v6 error:a3];

  return v8;
}

- (void)queue_freezeBuilderWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_queue);
  v6 = 0;
  queue_state = self->_queue_state;
  if (queue_state > 1)
  {
    if (queue_state == 3)
    {
      v8 = @"Workout route was discarded.";
    }

    else
    {
      if (queue_state != 2)
      {
        goto LABEL_11;
      }

      v8 = @"Workout route already finished.";
    }

LABEL_10:
    v6 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:v8];
    goto LABEL_11;
  }

  if (!queue_state)
  {
    v8 = @"No data was added to the workout route.";
    goto LABEL_10;
  }

  if (queue_state != 1)
  {
LABEL_11:
    completionCopy[2](completionCopy, 0, v6);
    goto LABEL_12;
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __59__HDSeriesBuilderServer_queue_freezeBuilderWithCompletion___block_invoke;
  v9[3] = &unk_278613658;
  v10 = completionCopy;
  [(HDSeriesBuilderServer *)self queue_setState:2 completion:v9];
  v6 = v10;
LABEL_12:
}

- (void)queue_recoverBuilder
{
  v15 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  profile = [(HDStandardTaskServer *)self profile];
  database = [profile database];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__HDSeriesBuilderServer_queue_recoverBuilder__block_invoke;
  v7[3] = &unk_278619398;
  v7[5] = &v9;
  v8 = 0;
  v7[4] = self;
  [(HDHealthEntity *)HDSeriesBuilderEntity performReadTransactionWithHealthDatabase:database error:&v8 block:v7];
  v5 = v8;

  if (v5)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v14 = v5;
      _os_log_error_impl(&dword_228986000, v6, OS_LOG_TYPE_ERROR, "Couldn't recover state for series builder with error %{public}@", buf, 0xCu);
    }
  }

  [(HDSeriesBuilderServer *)self queue_setState:v10[3] completion:0];
  _Block_object_dispose(&v9, 8);
}

- (void)queue_setState:(int64_t)state completion:(id)completion
{
  v18 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_queue);
  self->_queue_state = state;
  profile = [(HDStandardTaskServer *)self profile];
  database = [profile database];
  v12[5] = state;
  v13 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __51__HDSeriesBuilderServer_queue_setState_completion___block_invoke;
  v12[3] = &unk_278619348;
  v12[4] = self;
  v9 = [(HDHealthEntity *)HDSeriesBuilderEntity performWriteTransactionWithHealthDatabase:database error:&v13 block:v12];
  v10 = v13;

  if (!v9)
  {
    _HKInitializeLogging();
    v11 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      selfCopy = self;
      v16 = 2114;
      v17 = v10;
      _os_log_error_impl(&dword_228986000, v11, OS_LOG_TYPE_ERROR, "%{public}@: Failed to persist state change with error: %{public}@", buf, 0x16u);
    }
  }

  [(HDSeriesBuilderServer *)self _setClientState:state completion:completionCopy];
}

uint64_t __51__HDSeriesBuilderServer_queue_setState_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 persistentEntity];
  v8 = [v7 setBuilderState:*(a1 + 40) transaction:v6 error:a3];

  return v8;
}

- (HDSeriesBuilderEntity)persistentEntity
{
  v17 = *MEMORY[0x277D85DE8];
  persistentEntity = self->_persistentEntity;
  if (persistentEntity)
  {
    v3 = persistentEntity;
  }

  else
  {
    taskUUID = [(HDStandardTaskServer *)self taskUUID];
    profile = [(HDStandardTaskServer *)self profile];
    v12 = 0;
    v7 = [HDSeriesBuilderEntity persistentEntityForBuilderIdentifier:taskUUID profile:profile error:&v12];
    v8 = v12;
    v9 = self->_persistentEntity;
    self->_persistentEntity = v7;

    if (v8)
    {
      _HKInitializeLogging();
      v10 = *MEMORY[0x277CCC330];
      if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        selfCopy = self;
        v15 = 2114;
        v16 = v8;
        _os_log_error_impl(&dword_228986000, v10, OS_LOG_TYPE_ERROR, "%{public}@: Failed to fetch series builer persistent entity: %{public}@", buf, 0x16u);
      }
    }

    v3 = self->_persistentEntity;
  }

  return v3;
}

- (void)_discardSeriesWithCompletion:(uint64_t)completion
{
  v3 = a2;
  v4 = v3;
  if (completion)
  {
    v5 = *(completion + 48);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __54__HDSeriesBuilderServer__discardSeriesWithCompletion___block_invoke;
    v6[3] = &unk_278614E28;
    v6[4] = completion;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

void __54__HDSeriesBuilderServer__discardSeriesWithCompletion___block_invoke(uint64_t a1)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v1)
  {
    dispatch_assert_queue_V2(v1[6]);
    v3 = [(dispatch_queue_t *)v1 profile];
    v4 = [v3 dataManager];
    v5 = [(dispatch_queue_t *)v1 seriesSample];
    v15[0] = v5;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
    v14 = 0;
    v7 = [v4 deleteDataObjects:v6 restrictedSourceEntities:0 failIfNotFound:1 recursiveDeleteAuthorizationBlock:0 error:&v14];
    v8 = v14;

    v9 = [v8 hk_isErrorInDomain:*MEMORY[0x277D10A78] code:1];
    if ((v7 & 1) != 0 || v9)
    {
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __60__HDSeriesBuilderServer__queue_discardSeriesWithCompletion___block_invoke;
      v10[3] = &unk_278616460;
      v12 = v2;
      v13 = v7;
      v11 = v8;
      [(dispatch_queue_t *)v1 queue_setState:3 completion:v10];
    }

    else
    {
      (*(v2 + 2))(v2, 0, v8);
    }
  }
}

- (void)connectionInvalidated
{
  workoutBuilderID = [(HKSeriesBuilderConfiguration *)self->_configuration workoutBuilderID];

  if (!workoutBuilderID)
  {

    [(HDSeriesBuilderServer *)self _discardSeriesWithCompletion:?];
  }
}

void __46__HDSeriesBuilderServer_connectionInvalidated__block_invoke(uint64_t a1, char a2, void *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v5 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      v6 = 138543362;
      v7 = v4;
      _os_log_error_impl(&dword_228986000, v5, OS_LOG_TYPE_ERROR, "Couldn't discard invalidated series with error: %{public}@", &v6, 0xCu);
    }
  }
}

@end