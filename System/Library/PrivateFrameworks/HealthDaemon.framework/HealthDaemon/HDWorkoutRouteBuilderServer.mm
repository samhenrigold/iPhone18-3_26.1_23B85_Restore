@interface HDWorkoutRouteBuilderServer
- (id)seriesSample;
- (void)_queue_insertRouteData:(void *)data completion:;
- (void)createSeriesSampleIfNeeded:(id)needed errorHandler:(id)handler;
- (void)queue_recoverBuilder;
- (void)remote_finishRouteWithWorkout:(id)workout metadata:(id)metadata completion:(id)completion;
- (void)remote_insertRouteData:(id)data completion:(id)completion;
- (void)server_insertRouteData:(id)data completion:(id)completion;
@end

@implementation HDWorkoutRouteBuilderServer

- (void)remote_insertRouteData:(id)data completion:(id)completion
{
  dataCopy = data;
  completionCopy = completion;
  queue = [(HDSeriesBuilderServer *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__HDWorkoutRouteBuilderServer_remote_insertRouteData_completion___block_invoke;
  block[3] = &unk_278614160;
  block[4] = self;
  v12 = dataCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = dataCopy;
  dispatch_async(queue, block);
}

- (void)_queue_insertRouteData:(void *)data completion:
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = a2;
  dataCopy = data;
  if (self)
  {
    v30 = 0;
    v7 = [self queue_canInsertDataWithError:&v30];
    v8 = v30;
    if (v7)
    {
      v29 = 0;
      v9 = v5;
      if ([v9 count])
      {
        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        v10 = v9;
        v11 = [v10 countByEnumeratingWithState:&v31 objects:v35 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v32;
          while (2)
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v32 != v13)
              {
                objc_enumerationMutation(v10);
              }

              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                v16 = MEMORY[0x277CCA9B8];
                v17 = objc_opt_class();
                [v16 hk_assignError:&v29 code:3 format:{@"%@: Invalid data series object %@", v17, objc_opt_class()}];

                v15 = 0;
                goto LABEL_17;
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v31 objects:v35 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }

        v15 = 1;
      }

      else
      {
        [MEMORY[0x277CCA9B8] hk_assignError:&v29 code:3 format:{@"%@: Route data cannot be nil or empty.", objc_opt_class()}];
        v15 = 0;
      }

LABEL_17:

      v18 = v29;
      if (v15)
      {
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 3221225472;
        aBlock[2] = __65__HDWorkoutRouteBuilderServer__queue_insertRouteData_completion___block_invoke;
        aBlock[3] = &unk_2786212E0;
        aBlock[4] = self;
        v19 = v9;
        v27 = v19;
        v20 = dataCopy;
        v28 = v20;
        v21 = _Block_copy(aBlock);
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __65__HDWorkoutRouteBuilderServer__queue_insertRouteData_completion___block_invoke_6;
        v23[3] = &unk_278616D18;
        v23[4] = self;
        v25 = v21;
        v24 = v19;
        v22 = v21;
        [self createSeriesSampleIfNeeded:v23 errorHandler:v20];
      }

      else if (dataCopy)
      {
        (*(dataCopy + 2))(dataCopy, 0, v18);
      }

      v8 = v18;
    }

    else if (dataCopy)
    {
      (*(dataCopy + 2))(dataCopy, 0, v8);
    }
  }
}

- (void)remote_finishRouteWithWorkout:(id)workout metadata:(id)metadata completion:(id)completion
{
  workoutCopy = workout;
  metadataCopy = metadata;
  completionCopy = completion;
  queue = [(HDSeriesBuilderServer *)self queue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __81__HDWorkoutRouteBuilderServer_remote_finishRouteWithWorkout_metadata_completion___block_invoke;
  v15[3] = &unk_278613680;
  v15[4] = self;
  v16 = workoutCopy;
  v17 = metadataCopy;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = metadataCopy;
  v14 = workoutCopy;
  dispatch_async(queue, v15);
}

void __81__HDWorkoutRouteBuilderServer_remote_finishRouteWithWorkout_metadata_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(a1 + 40);
  v5 = v2;
  v6 = v3;
  if (v1)
  {
    v7 = [v1 queue];
    dispatch_assert_queue_V2(v7);

    v8 = [v1 configuration];
    v9 = [v8 workoutBuilderID];

    if (v9)
    {
      v10 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:sel__queue_finishRouteWithWorkout_metadata_completion_ format:@"This route builder is attached to a workout builder and will be finished with the workout builder"];
      v6[2](v6, 0, v10);
    }

    else
    {
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __81__HDWorkoutRouteBuilderServer__queue_finishRouteWithWorkout_metadata_completion___block_invoke;
      v11[3] = &unk_278621330;
      v14 = v6;
      v11[4] = v1;
      v12 = v5;
      v13 = v4;
      v15 = sel__queue_finishRouteWithWorkout_metadata_completion_;
      [v1 queue_freezeBuilderWithCompletion:v11];
    }
  }
}

- (void)server_insertRouteData:(id)data completion:(id)completion
{
  dataCopy = data;
  completionCopy = completion;
  queue = [(HDSeriesBuilderServer *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__HDWorkoutRouteBuilderServer_server_insertRouteData_completion___block_invoke;
  block[3] = &unk_278614160;
  block[4] = self;
  v12 = dataCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = dataCopy;
  dispatch_async(queue, block);
}

void __65__HDWorkoutRouteBuilderServer__queue_insertRouteData_completion___block_invoke(id *a1, void *a2, void *a3)
{
  v23[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a1[4];
  v7 = a3;
  v8 = [v6 queue];
  dispatch_assert_queue_V2(v8);

  v9 = [v5 count];
  v10 = [v7 count];

  [v5 _setCount:v10 + v9];
  v11 = [a1[4] delegate];
  v12 = [v11 sampleSavingDelegate];
  v13 = [v5 sampleType];
  v23[0] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __65__HDWorkoutRouteBuilderServer__queue_insertRouteData_completion___block_invoke_2;
  v18[3] = &unk_278613680;
  v19 = a1[5];
  v20 = v5;
  v21 = a1[4];
  v22 = a1[6];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __65__HDWorkoutRouteBuilderServer__queue_insertRouteData_completion___block_invoke_5;
  v16[3] = &unk_2786200D0;
  v17 = a1[6];
  v15 = v5;
  [v12 performIfAuthorizedToSaveObjectTypes:v14 usingBlock:v18 errorHandler:v16];
}

void __65__HDWorkoutRouteBuilderServer__queue_insertRouteData_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) UUID];
  v4 = [*(a1 + 48) profile];
  v14 = 0;
  v5 = [HDLocationSeriesSampleEntity insertLocationData:v2 seriesIdentifier:v3 assertion:0 profile:v4 error:&v14];
  v6 = v14;

  v7 = [*(a1 + 48) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__HDWorkoutRouteBuilderServer__queue_insertRouteData_completion___block_invoke_3;
  block[3] = &unk_2786212B8;
  v8 = *(a1 + 56);
  block[4] = *(a1 + 48);
  v13 = v5;
  v11 = v6;
  v12 = v8;
  v9 = v6;
  dispatch_async(v7, block);
}

void __65__HDWorkoutRouteBuilderServer__queue_insertRouteData_completion___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __65__HDWorkoutRouteBuilderServer__queue_insertRouteData_completion___block_invoke_4;
  v3[3] = &unk_278616460;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v4 = *(a1 + 40);
  [v2 queue_setState:1 completion:v3];
}

void __65__HDWorkoutRouteBuilderServer__queue_insertRouteData_completion___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 40);
  if ((*(a1 + 48) & 1) != 0 || *(a1 + 32))
  {
    v2 = *(v1 + 16);
    v3 = *(a1 + 40);

    v2(v3);
  }

  else
  {
    v4 = [MEMORY[0x277CCA9B8] hk_error:100 description:@"Unable to save series data."];
    (*(v1 + 16))(v1, 0, v4);
  }
}

void __65__HDWorkoutRouteBuilderServer__queue_insertRouteData_completion___block_invoke_6(uint64_t a1)
{
  v2 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__HDWorkoutRouteBuilderServer__queue_insertRouteData_completion___block_invoke_7;
  block[3] = &unk_278616488;
  v3 = *(a1 + 48);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  block[4] = v4;
  v7 = v5;
  dispatch_async(v2, block);
}

void __65__HDWorkoutRouteBuilderServer__queue_insertRouteData_completion___block_invoke_7(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) seriesSample];
  (*(v2 + 16))(v2, v3, *(a1 + 40));
}

void __81__HDWorkoutRouteBuilderServer__queue_finishRouteWithWorkout_metadata_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v27[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v26 = v5;
    v8 = [v6 canAddMetadata:v7 errorOut:&v26];
    v9 = v26;

    if (v8)
    {
      v10 = [*(a1 + 32) delegate];
      v11 = [v10 sampleSavingDelegate];
      v12 = [*(a1 + 32) seriesSample];
      v13 = [v12 sampleType];
      v27[0] = v13;
      v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __81__HDWorkoutRouteBuilderServer__queue_finishRouteWithWorkout_metadata_completion___block_invoke_2;
      v22[3] = &unk_278621308;
      v19 = *(a1 + 32);
      v15 = *(a1 + 48);
      v16 = *(a1 + 56);
      v25 = *(a1 + 64);
      *&v17 = *(a1 + 40);
      *(&v17 + 1) = v16;
      *&v18 = v19;
      *(&v18 + 1) = v15;
      v23 = v18;
      v24 = v17;
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __81__HDWorkoutRouteBuilderServer__queue_finishRouteWithWorkout_metadata_completion___block_invoke_3;
      v20[3] = &unk_2786200D0;
      v21 = *(a1 + 56);
      [v11 performIfAuthorizedToSaveObjectTypes:v14 usingBlock:v22 errorHandler:v20];
    }

    else
    {
      (*(*(a1 + 56) + 16))();
    }

    v5 = v9;
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

void __81__HDWorkoutRouteBuilderServer__queue_finishRouteWithWorkout_metadata_completion___block_invoke_2(uint64_t a1)
{
  v31[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCA9B8] hk_error:100 description:@"Unable to finish the series data."];
  v3 = [*(a1 + 32) profile];
  v4 = v3;
  if (!*(a1 + 40) || ([v3 dataManager], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "containsDataObject:", *(a1 + 40)), v5, (v6 & 1) != 0))
  {
    v7 = [*(a1 + 32) seriesSample];
    v8 = [v7 UUID];
    v9 = *(a1 + 48);
    v30 = 0;
    v10 = [(HDSeriesBuilderEntity *)HDWorkoutRouteBuilderEntity freezeSeriesWithIdentifier:v8 metadata:v9 profile:v4 error:&v30];
    v11 = v30;

    if (v10)
    {
      v12 = [*(a1 + 32) client];
      v13 = [v12 baseDataEntityEncodingOptions];

      v29 = v11;
      v14 = [(HDDataEntity *)HDLocationSeriesSampleEntity objectWithUUID:v10 encodingOptions:v13 profile:v4 error:&v29];
      v15 = v29;

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {

        if (v14)
        {
          v26 = [v14 UUID];
          v31[0] = v26;
          v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:1];
          v17 = [*(a1 + 40) UUID];
          v28 = 0;
          v18 = [*(a1 + 32) profile];
          v27 = v15;
          v19 = [HDAssociationEntity associateSampleUUIDs:v16 withSampleUUID:v17 type:0 behavior:0 destinationSubObjectReference:0 lastInsertedEntityID:&v28 profile:v18 error:&v27];
          v25 = v28;
          v24 = v27;

          if (v19)
          {
            v20 = [MEMORY[0x277CCAB98] defaultCenter];
            [v20 postNotificationName:@"HDHealthStoreServerDidAssociateWorkoutSamples" object:0];
          }

          (*(*(a1 + 56) + 16))();

          v15 = v24;
          goto LABEL_16;
        }
      }

      else
      {
      }
    }

    else
    {
      v15 = v11;
    }

    if (v15)
    {
      v23 = v15;
    }

    else
    {
      v23 = v2;
    }

    (*(*(a1 + 56) + 16))(*(a1 + 56), 0, v23);
LABEL_16:

    goto LABEL_17;
  }

  v21 = *(a1 + 56);
  v22 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:*(a1 + 64) format:@"Workout has not been saved."];
  (*(v21 + 16))(v21, 0, v22);

LABEL_17:
}

- (id)seriesSample
{
  route = self->_route;
  if (route)
  {
    v3 = route;
  }

  else
  {
    v5 = MEMORY[0x277CCDC70];
    configuration = [(HDSeriesBuilderServer *)self configuration];
    device = [configuration device];
    v3 = [v5 _workoutRouteWithDevice:device metadata:0];

    taskUUID = [(HDStandardTaskServer *)self taskUUID];
    [(HKWorkoutRoute *)v3 _setUUID:taskUUID];
  }

  return v3;
}

- (void)createSeriesSampleIfNeeded:(id)needed errorHandler:(id)handler
{
  v19[1] = *MEMORY[0x277D85DE8];
  neededCopy = needed;
  handlerCopy = handler;
  if (self->_route)
  {
    neededCopy[2](neededCopy);
  }

  else
  {
    if ([(HDSeriesBuilderServer *)self queue_state])
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"HDWorkoutRouteBuilderServer.m" lineNumber:226 description:@"route missing."];
    }

    seriesSample = [(HDWorkoutRouteBuilderServer *)self seriesSample];
    route = self->_route;
    self->_route = seriesSample;

    delegate = [(HDStandardTaskServer *)self delegate];
    sampleSavingDelegate = [delegate sampleSavingDelegate];
    seriesSample2 = [(HDWorkoutRouteBuilderServer *)self seriesSample];
    v19[0] = seriesSample2;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __71__HDWorkoutRouteBuilderServer_createSeriesSampleIfNeeded_errorHandler___block_invoke;
    v16[3] = &unk_27861FA38;
    v16[4] = self;
    v17 = handlerCopy;
    v18 = neededCopy;
    [sampleSavingDelegate saveSamples:v14 databaseAssertion:0 withCompletion:v16];
  }
}

void __71__HDWorkoutRouteBuilderServer_createSeriesSampleIfNeeded_errorHandler___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = [MEMORY[0x277CCA9B8] hk_error:100 description:@"Unable to save series sample."];
  if (a2)
  {
    v7 = *(a1 + 32);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __71__HDWorkoutRouteBuilderServer_createSeriesSampleIfNeeded_errorHandler___block_invoke_2;
    v9[3] = &unk_27861B2D0;
    v10 = *(a1 + 48);
    v11 = *(a1 + 40);
    [v7 associateToWorkoutBuilderWithCompletion:v9];
  }

  else
  {
    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = v6;
    }

    (*(*(a1 + 40) + 16))(*(a1 + 40), 0, v8);
  }
}

void __71__HDWorkoutRouteBuilderServer_createSeriesSampleIfNeeded_errorHandler___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v7 = a3;
  v5 = [MEMORY[0x277CCA9B8] hk_error:100 description:@"Unable to associate series to workout builder."];
  if (a2)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    if (v7)
    {
      v6 = v7;
    }

    else
    {
      v6 = v5;
    }

    (*(*(a1 + 40) + 16))(*(a1 + 40), 0, v6);
  }
}

- (void)queue_recoverBuilder
{
  seriesSample = [(HDWorkoutRouteBuilderServer *)self seriesSample];
  route = self->_route;
  self->_route = seriesSample;

  v5.receiver = self;
  v5.super_class = HDWorkoutRouteBuilderServer;
  [(HDSeriesBuilderServer *)&v5 queue_recoverBuilder];
}

@end