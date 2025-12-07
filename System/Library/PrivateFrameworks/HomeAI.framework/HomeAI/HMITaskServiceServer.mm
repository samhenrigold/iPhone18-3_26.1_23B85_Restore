@interface HMITaskServiceServer
- (BOOL)cancelTask:(int)task;
- (HMITaskServiceServer)init;
- (id)buildEmptyTaskFromOptions:(id)options error:(id *)error;
- (id)buildFaceMisclassificationTaskFromOptions:(id)options error:(id *)error;
- (id)buildHomePersonClusteringTaskFromOptions:(id)options error:(id *)error;
- (id)buildPersonsModelsSummaryTaskFromOptions:(id)options error:(id *)error;
- (id)buildRemovePersonsModelTaskFromOptions:(id)options error:(id *)error;
- (id)buildSubmitFeedbackTaskFromOptions:(id)options error:(id *)error;
- (id)buildUpdatePersonsModelTaskFromOptions:(id)options error:(id *)error;
- (id)buildUpdateTorsoModelTaskFromOptions:(id)options error:(id *)error;
- (int)getNextTaskID;
- (int)submitTask:(id)task progressHandler:(id)handler completionHander:(id)hander;
- (int)submitTaskWithOptions:(id)options progressHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation HMITaskServiceServer

- (HMITaskServiceServer)init
{
  v6.receiver = self;
  v6.super_class = HMITaskServiceServer;
  initPrivate = [(HMITaskService *)&v6 initPrivate];
  if (initPrivate)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCABD8]);
    operationQueue = initPrivate->_operationQueue;
    initPrivate->_operationQueue = v3;

    [(NSOperationQueue *)initPrivate->_operationQueue setMaxConcurrentOperationCount:?];
    initPrivate->_lock._os_unfair_lock_opaque = 0;
    initPrivate->_nextTaskID = 1;
  }

  return initPrivate;
}

- (int)getNextTaskID
{
  os_unfair_lock_lock_with_options();
  nextTaskID = [(HMITaskServiceServer *)self nextTaskID];
  [(HMITaskServiceServer *)self setNextTaskID:?];
  os_unfair_lock_unlock(&self->_lock);
  return nextTaskID;
}

- (int)submitTaskWithOptions:(id)options progressHandler:(id)handler completionHandler:(id)completionHandler
{
  v36 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  v11 = [optionsCopy objectForKeyedSubscript:?];
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543362;
      v35 = v16;
      _os_log_impl(&dword_22D12F000, v15, OS_LOG_TYPE_DEBUG, "%{public}@options is empty/nil, defaulting to Home persons clustering task with impure person cleanup", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v13);
    if (optionsCopy)
    {
      [MEMORY[0x277CBEB38] dictionaryWithDictionary:?];
    }

    else
    {
      [MEMORY[0x277CBEB38] dictionary];
    }
    v17 = ;
    [v17 setObject:? forKeyedSubscript:?];
    v18 = [v17 copy];

    v12 = HMITaskTypeHomePersonClusteringTask;
    optionsCopy = v18;
  }

  if ([v12 isEqualToString:?])
  {
    v33[0] = 0;
    v19 = v33;
    v20 = [HMITaskServiceServer buildUpdatePersonsModelTaskFromOptions:"buildUpdatePersonsModelTaskFromOptions:error:" error:?];
  }

  else if ([v12 isEqualToString:?])
  {
    v32 = 0;
    v19 = &v32;
    v20 = [HMITaskServiceServer buildRemovePersonsModelTaskFromOptions:"buildRemovePersonsModelTaskFromOptions:error:" error:?];
  }

  else if ([v12 isEqualToString:?])
  {
    v31 = 0;
    v19 = &v31;
    v20 = [HMITaskServiceServer buildHomePersonClusteringTaskFromOptions:"buildHomePersonClusteringTaskFromOptions:error:" error:?];
  }

  else if ([v12 isEqualToString:?])
  {
    v30 = 0;
    v19 = &v30;
    v20 = [HMITaskServiceServer buildEmptyTaskFromOptions:"buildEmptyTaskFromOptions:error:" error:?];
  }

  else if ([v12 isEqualToString:?])
  {
    v29 = 0;
    v19 = &v29;
    v20 = [HMITaskServiceServer buildFaceMisclassificationTaskFromOptions:"buildFaceMisclassificationTaskFromOptions:error:" error:?];
  }

  else if ([v12 isEqualToString:?])
  {
    v28 = 0;
    v19 = &v28;
    v20 = [HMITaskServiceServer buildPersonsModelsSummaryTaskFromOptions:"buildPersonsModelsSummaryTaskFromOptions:error:" error:?];
  }

  else if ([v12 isEqualToString:?])
  {
    v27 = 0;
    v19 = &v27;
    v20 = [HMITaskServiceServer buildSubmitFeedbackTaskFromOptions:"buildSubmitFeedbackTaskFromOptions:error:" error:?];
  }

  else
  {
    if (![v12 isEqualToString:?])
    {
      v24 = [MEMORY[0x277CCACA8] stringWithFormat:v12];
      v22 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:? description:?];

      goto LABEL_28;
    }

    v26 = 0;
    v19 = &v26;
    v20 = [HMITaskServiceServer buildUpdateTorsoModelTaskFromOptions:"buildUpdateTorsoModelTaskFromOptions:error:" error:?];
  }

  v21 = v20;
  v22 = *v19;
  if (!v21)
  {
LABEL_28:
    v33[1] = @"resultCode";
    v33[2] = @"Error";
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
    completionHandlerCopy[2](completionHandlerCopy, v21, v22);
    v23 = -1;
    goto LABEL_29;
  }

  v23 = [HMITaskServiceServer submitTask:"submitTask:progressHandler:completionHander:" progressHandler:? completionHander:?];
LABEL_29:

  return v23;
}

- (int)submitTask:(id)task progressHandler:(id)handler completionHander:(id)hander
{
  taskCopy = task;
  handlerCopy = handler;
  handerCopy = hander;
  objc_initWeak(&location, taskCopy);
  v16[1] = MEMORY[0x277D85DD0];
  v16[2] = 3221225472;
  v16[3] = __68__HMITaskServiceServer_submitTask_progressHandler_completionHander___block_invoke;
  v16[4] = &unk_278753C98;
  v11 = handlerCopy;
  v17 = v11;
  [taskCopy setProgressBlock:?];
  v14 = MEMORY[0x277D85DD0];
  objc_copyWeak(v16, &location);
  v15 = handerCopy;
  [taskCopy setCompletionBlock:{v14, 3221225472, __68__HMITaskServiceServer_submitTask_progressHandler_completionHander___block_invoke_2, &unk_278752B10}];
  operationQueue = [(HMITaskServiceServer *)self operationQueue];
  [operationQueue addOperation:?];

  LODWORD(operationQueue) = [taskCopy taskID];
  objc_destroyWeak(v16);

  objc_destroyWeak(&location);
  return operationQueue;
}

uint64_t __68__HMITaskServiceServer_submitTask_progressHandler_completionHander___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __68__HMITaskServiceServer_submitTask_progressHandler_completionHander___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = *(a1 + 32);
  v3 = [WeakRetained results];
  v4 = [WeakRetained error];
  (*(v2 + 16))(v2, v3, v4);
}

- (BOOL)cancelTask:(int)task
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__3;
  v13 = __Block_byref_object_dispose__3;
  v14 = 0;
  operationQueue = [(HMITaskServiceServer *)self operationQueue];
  operations = [operationQueue operations];
  LODWORD(v8) = task;
  [operations enumerateObjectsUsingBlock:{MEMORY[0x277D85DD0], 3221225472, __35__HMITaskServiceServer_cancelTask___block_invoke, &unk_278753CC0, &v9, v8}];

  v6 = v10[5];
  if (v6)
  {
    [v10[5] cancel];
  }

  _Block_object_dispose(&v9, 8);

  return v6 != 0;
}

void __35__HMITaskServiceServer_cancelTask___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ([v7 taskID] == *(a1 + 40))
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (id)buildUpdatePersonsModelTaskFromOptions:(id)options error:(id *)error
{
  v58 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  v7 = [optionsCopy objectForKeyedSubscript:?];
  if (v7)
  {
    v8 = [optionsCopy objectForKeyedSubscript:?];
    v9 = v8;
    if (!v8)
    {
      v27 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:? description:?];
      v28 = v27;
      if (error)
      {
        v29 = v27;
        *error = v28;
      }

      HMIErrorLog(self, v28);

      v26 = 0;
      goto LABEL_32;
    }

    bOOLValue = [v8 BOOLValue];
    v11 = [optionsCopy objectForKeyedSubscript:?];
    if (v11)
    {
      v12 = +[HMIPreference sharedInstance];
      v13 = [v12 stringPreferenceForKey:? defaultValue:?];
      v14 = [v13 isEqualToString:?];

      if (v14)
      {
        v15 = objc_alloc_init(HMIHomeKitClient);
        v16 = v15;
        if (bOOLValue)
        {
          context = objc_autoreleasePoolPush();
          selfCopy = self;
          v18 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            HMFGetLogIdentifier();
            v19 = v49 = v16;
            *buf = 138543874;
            v53 = v19;
            v54 = 2112;
            v55 = v7;
            v56 = 2112;
            v57 = v11;
            _os_log_impl(&dword_22D12F000, v18, OS_LOG_TYPE_DEBUG, "%{public}@Creating HMPhotosPersonManager for homeUUID:%@ sourceUUID:%@", buf, 0x20u);

            v16 = v49;
          }

          objc_autoreleasePoolPop(context);
          v20 = [HMIHomeKitClient photosPersonManagerForHomeUUID:v16 sourceUUID:"photosPersonManagerForHomeUUID:sourceUUID:"];
          if (v20)
          {
            v21 = v20;
            v22 = [[HMIExternalPersonDataSourceHomeKit alloc] initWithHMPhotosPersonManager:?];
LABEL_24:

            v31 = 0;
LABEL_25:
            v36 = [HMIUpdatePersonsModelTask alloc];
            [(HMITaskServiceServer *)self getNextTaskID];
            v26 = [HMIUpdatePersonsModelTask initWithTaskID:v36 homeUUID:"initWithTaskID:homeUUID:sourceUUID:dataSource:externalLibrary:removeExcessFaceCrops:" sourceUUID:? dataSource:? externalLibrary:? removeExcessFaceCrops:?];

LABEL_31:
LABEL_32:

            goto LABEL_33;
          }

          v41 = MEMORY[0x277CCA9B8];
        }

        else
        {
          [(HMIHomeKitClient *)v15 isCurrentDevicePrimaryResident];
          v48 = objc_autoreleasePoolPush();
          selfCopy2 = self;
          v33 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
          {
            HMFGetLogIdentifier();
            v34 = v50 = v16;
            *buf = 138543618;
            v53 = v34;
            v54 = 2112;
            v55 = v7;
            _os_log_impl(&dword_22D12F000, v33, OS_LOG_TYPE_DEBUG, "%{public}@Creating HMHomePersonManager for homeUUID:%@", buf, 0x16u);

            v16 = v50;
          }

          objc_autoreleasePoolPop(v48);
          v35 = [(HMIHomeKitClient *)v16 homePersonManagerForHomeUUID:?];
          if (v35)
          {
            v21 = v35;
            v22 = [[HMIHomePersonDataSourceHomeKit alloc] initWithHMHomePersonManager:?];
            goto LABEL_24;
          }

          v41 = MEMORY[0x277CCA9B8];
        }

        v45 = [v41 hmiPrivateErrorWithCode:v48 description:?];
        v46 = v45;
        if (error)
        {
          v47 = v45;
          *error = v46;
        }

        HMIErrorLog(self, v46);

LABEL_30:
        v26 = 0;
        goto LABEL_31;
      }

      if (bOOLValue)
      {
        v22 = [HMIPersonDataSourceDisk initWithHomeUUID:"initWithHomeUUID:sourceUUID:error:" sourceUUID:? error:?];
        v31 = 0;
        if (v22)
        {
          goto LABEL_25;
        }

        v42 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:? description:? underlyingError:?];
        v43 = v42;
        if (error)
        {
          v44 = v42;
          *error = v43;
        }

        HMIErrorLog(self, v43);

        goto LABEL_30;
      }

      v30 = MEMORY[0x277CCA9B8];
    }

    else
    {
      v30 = MEMORY[0x277CCA9B8];
    }

    v37 = [v30 hmiPrivateErrorWithCode:? description:?];
    v38 = v37;
    if (error)
    {
      v39 = v37;
      *error = v38;
    }

    HMIErrorLog(self, v38);

    goto LABEL_30;
  }

  v23 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:? description:?];
  v24 = v23;
  if (error)
  {
    v25 = v23;
    *error = v24;
  }

  HMIErrorLog(self, v24);

  v26 = 0;
LABEL_33:

  return v26;
}

- (id)buildRemovePersonsModelTaskFromOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  v7 = [optionsCopy objectForKeyedSubscript:?];
  if (v7)
  {
    v8 = [optionsCopy objectForKeyedSubscript:?];
    if (v8)
    {
      v9 = [HMIRemovePersonsModelTask alloc];
      [(HMITaskServiceServer *)self getNextTaskID];
      v10 = [HMIRemovePersonsModelTask initWithTaskID:v9 homeUUID:"initWithTaskID:homeUUID:sourceUUID:" sourceUUID:?];
      goto LABEL_11;
    }

    v13 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:? description:?];
    v14 = v13;
    if (error)
    {
      v15 = v13;
      *error = v14;
    }

    HMIErrorLog(self, v14);
  }

  else
  {
    v11 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:? description:?];
    v8 = v11;
    if (error)
    {
      v12 = v11;
      *error = v8;
    }

    HMIErrorLog(self, v8);
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (id)buildFaceMisclassificationTaskFromOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  v7 = [optionsCopy objectForKeyedSubscript:?];
  if (v7)
  {
    v8 = objc_alloc_init(HMIHomeKitClient);
    v9 = [(HMIHomeKitClient *)v8 homePersonManagerForHomeUUID:?];
    if (v9)
    {
      v10 = [[HMIHomePersonDataSourceHomeKit alloc] initWithHMHomePersonManager:?];
      v11 = [optionsCopy objectForKeyedSubscript:?];
      v12 = [HMIFaceMisclassificationTask alloc];
      [(HMITaskServiceServer *)self getNextTaskID];
      v13 = [HMIFaceMisclassificationTask initWithTaskID:v12 dataSource:"initWithTaskID:dataSource:faceCrop:" faceCrop:?];
    }

    else
    {
      v16 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:? description:?];
      v10 = v16;
      if (error)
      {
        v17 = v16;
        *error = v10;
      }

      HMIErrorLog(self, v10);
      v13 = 0;
    }
  }

  else
  {
    v14 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:? description:?];
    v8 = v14;
    if (error)
    {
      v15 = v14;
      *error = v8;
    }

    HMIErrorLog(self, v8);
    v13 = 0;
  }

  return v13;
}

- (id)buildHomePersonClusteringTaskFromOptions:(id)options error:(id *)error
{
  v38 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  if (HMIIsResidentDevice())
  {
    v7 = objc_alloc_init(HMIHomeKitClient);
    if ([(HMIHomeKitClient *)v7 isCurrentDevicePrimaryResident])
    {
      homePersonManagersForCurrentDevice = [(HMIHomeKitClient *)v7 homePersonManagersForCurrentDevice];
      if ([homePersonManagersForCurrentDevice count])
      {
        arc4random();
        [homePersonManagersForCurrentDevice count];
        allObjects = [homePersonManagersForCurrentDevice allObjects];
        v10 = [allObjects objectAtIndexedSubscript:?];

        uUID = [v10 UUID];
        v12 = [(HMIHomeKitClient *)v7 homeForHMPersonManagerUUID:?];
        uuid = [v12 uuid];

        if (uuid)
        {
          v14 = [[HMIHomePersonDataSourceHomeKit alloc] initWithHMHomePersonManager:?];
          v15 = [optionsCopy objectForKeyedSubscript:?];

          if (v15)
          {
            v16 = [optionsCopy objectForKeyedSubscript:?];
            [v16 BOOLValue];

            v35 = uuid;
            v17 = [HMIHomePersonClusteringTask alloc];
            [(HMITaskServiceServer *)self getNextTaskID];
            uUID2 = [v10 UUID];
            v19 = +[HMIPersonsModelManager sharedInstance];
            v20 = v17;
            uuid = v35;
            v21 = [HMIHomePersonClusteringTask initWithTaskID:v20 homeUUID:"initWithTaskID:homeUUID:dataSource:sourceUUID:personsModelManager:doImpurePersonCleanup:error:" dataSource:error sourceUUID:? personsModelManager:? doImpurePersonCleanup:? error:?];
          }

          else
          {
            v32 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:? description:?];
            uUID2 = v32;
            if (error)
            {
              v33 = v32;
              *error = uUID2;
            }

            HMIErrorLog(self, uUID2);
            v21 = 0;
          }
        }

        else
        {
          v30 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:? description:?];
          v14 = v30;
          if (error)
          {
            v31 = v30;
            *error = v14;
          }

          HMIErrorLog(self, v14);
          v21 = 0;
        }
      }

      else
      {
        v28 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:? description:?];
        v10 = v28;
        if (error)
        {
          v29 = v28;
          *error = v10;
        }

        HMIErrorLog(self, v10);
        v21 = 0;
      }
    }

    else
    {
      v23 = objc_autoreleasePoolPush();
      selfCopy = self;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v26 = HMFGetLogIdentifier();
        *buf = 138543362;
        v37 = v26;
        _os_log_impl(&dword_22D12F000, v25, OS_LOG_TYPE_INFO, "%{public}@Current device is not primary resident, skipping clustering", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v23);
      v27 = [HMIEmptyTask alloc];
      [(HMITaskServiceServer *)selfCopy getNextTaskID];
      v21 = [(HMITask *)v27 initWithTaskID:?];
    }
  }

  else
  {
    v22 = [HMIEmptyTask alloc];
    [(HMITaskServiceServer *)self getNextTaskID];
    v21 = [(HMITask *)v22 initWithTaskID:?];
  }

  return v21;
}

- (id)buildPersonsModelsSummaryTaskFromOptions:(id)options error:(id *)error
{
  v6 = [options objectForKeyedSubscript:?];
  if (v6)
  {
    v7 = [HMIPersonsModelsSummaryTask alloc];
    [(HMITaskServiceServer *)self getNextTaskID];
    v8 = [HMIPersonsModelsSummaryTask initWithTaskID:v7 homeUUID:"initWithTaskID:homeUUID:"];
  }

  else
  {
    v9 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:? description:?];
    v10 = v9;
    if (error)
    {
      v11 = v9;
      *error = v10;
    }

    HMIErrorLog(self, v10);

    v8 = 0;
  }

  return v8;
}

- (id)buildSubmitFeedbackTaskFromOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  v6 = [optionsCopy objectForKeyedSubscript:?];
  v7 = [optionsCopy objectForKeyedSubscript:?];

  v8 = [HMIFeedbackTask alloc];
  [(HMITaskServiceServer *)self getNextTaskID];
  v9 = [HMIFeedbackTask initWithTaskID:v8 cameraProfileUUID:"initWithTaskID:cameraProfileUUID:clipUUID:" clipUUID:?];

  return v9;
}

- (id)buildUpdateTorsoModelTaskFromOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  v7 = [optionsCopy objectForKeyedSubscript:?];
  if (v7)
  {
    v8 = [optionsCopy objectForKeyedSubscript:?];
    if (v8)
    {
      v9 = [HMIUpdateTorsoModelTask alloc];
      [(HMITaskServiceServer *)self getNextTaskID];
      v10 = [HMIUpdateTorsoModelTask initWithTaskID:v9 homeUUID:"initWithTaskID:homeUUID:torsoAnnotations:" torsoAnnotations:?];
      goto LABEL_11;
    }

    v13 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:? description:?];
    v14 = v13;
    if (error)
    {
      v15 = v13;
      *error = v14;
    }

    HMIErrorLog(self, v14);
  }

  else
  {
    v11 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:? description:?];
    v8 = v11;
    if (error)
    {
      v12 = v11;
      *error = v8;
    }

    HMIErrorLog(self, v8);
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (id)buildEmptyTaskFromOptions:(id)options error:(id *)error
{
  v6 = [options objectForKeyedSubscript:?];
  if (v6)
  {
    v7 = [HMIEmptyTask alloc];
    [(HMITaskServiceServer *)self getNextTaskID];
    [v6 doubleValue];
    v8 = [HMIEmptyTask initWithTaskID:v7 duration:"initWithTaskID:duration:"];
  }

  else
  {
    v9 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:? description:?];
    v10 = v9;
    if (error)
    {
      v11 = v9;
      *error = v10;
    }

    HMIErrorLog(self, v10);

    v8 = 0;
  }

  return v8;
}

@end