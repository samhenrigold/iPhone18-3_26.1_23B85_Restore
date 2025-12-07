@interface TRIPushNotificationHandler
- (BOOL)_isMissingNotificationFields:(id)fields;
- (TRIPushNotificationHandler)initWithNotificationChecker:(id)checker hotfixScheduler:(id)scheduler rollbackScheduler:(id)rollbackScheduler experimentUpdateScheduler:(id)updateScheduler;
- (void)_handleDeploymentNotification:(id)notification;
- (void)_handleExperimentUpdateNotification:(id)notification;
- (void)_handleRollbackNotification:(id)notification;
- (void)didReceivePushNotification:(id)notification;
@end

@implementation TRIPushNotificationHandler

- (TRIPushNotificationHandler)initWithNotificationChecker:(id)checker hotfixScheduler:(id)scheduler rollbackScheduler:(id)rollbackScheduler experimentUpdateScheduler:(id)updateScheduler
{
  checkerCopy = checker;
  schedulerCopy = scheduler;
  rollbackSchedulerCopy = rollbackScheduler;
  updateSchedulerCopy = updateScheduler;
  v18.receiver = self;
  v18.super_class = TRIPushNotificationHandler;
  v15 = [(TRIPushNotificationHandler *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_notificationChecker, checker);
    objc_storeStrong(&v16->_hotfixScheduler, scheduler);
    objc_storeStrong(&v16->_rollbackScheduler, rollbackScheduler);
    objc_storeStrong(&v16->_experimentUpdateScheduler, updateScheduler);
  }

  return v16;
}

- (void)didReceivePushNotification:(id)notification
{
  v12 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  if (!notificationCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIPushNotificationHandler.m" lineNumber:51 description:{@"Invalid parameter not satisfying: %@", @"notification"}];
  }

  notificationOneOfCase = [notificationCopy notificationOneOfCase];
  if (notificationOneOfCase > 1)
  {
    if (notificationOneOfCase == 2)
    {
      experimentNotification = [notificationCopy experimentNotification];
      [(TRIPushNotificationHandler *)self _handleRollbackNotification:experimentNotification];
      goto LABEL_14;
    }

    if (notificationOneOfCase == 3)
    {
      experimentNotification = [notificationCopy experimentUpdateNotification];
      [(TRIPushNotificationHandler *)self _handleExperimentUpdateNotification:experimentNotification];
      goto LABEL_14;
    }
  }

  else if (notificationOneOfCase)
  {
    if (notificationOneOfCase == 1)
    {
      experimentNotification = [notificationCopy rolloutNotification];
      [(TRIPushNotificationHandler *)self _handleDeploymentNotification:experimentNotification];
LABEL_14:
    }
  }

  else
  {
    v8 = TRILogCategory_Server();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v11 = notificationCopy;
      _os_log_error_impl(&dword_26F567000, v8, OS_LOG_TYPE_ERROR, "Got push notification without content: %@", buf, 0xCu);
    }
  }
}

- (void)_handleDeploymentNotification:(id)notification
{
  v19 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  if (![(TRIPushNotificationHandler *)self _isMissingNotificationFields:notificationCopy])
  {
    v5 = MEMORY[0x277D737C8];
    rolloutId = [notificationCopy rolloutId];
    v7 = [v5 deploymentWithRolloutId:rolloutId deploymentId:{objc_msgSend(notificationCopy, "deploymentId")}];

    deploymentDate = [notificationCopy deploymentDate];
    date = [deploymentDate date];

    notificationChecker = [(TRIPushNotificationHandler *)self notificationChecker];
    v11 = [notificationChecker reactionForHotfixDeployment:v7 hotfixDeploymentDate:date];

    if (v11)
    {
      notificationProcessingPolicy = [notificationCopy notificationProcessingPolicy];
      assetDownloadPolicy = [notificationProcessingPolicy assetDownloadPolicy];
      v14 = TRILogCategory_Server();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 138543618;
        v16 = v7;
        v17 = 1026;
        v18 = assetDownloadPolicy == 2;
        _os_log_impl(&dword_26F567000, v14, OS_LOG_TYPE_DEFAULT, "Scheduling Hotfix for deployment %{public}@ (any network + battery allowed: %{public}d)", &v15, 0x12u);
      }

      -[TRIHotfixRolloutTargetingSchedulerProtocol scheduleHotfixForDeployment:allowingAnyNetworkingAndBatteryUsage:runDelay:](self->_hotfixScheduler, "scheduleHotfixForDeployment:allowingAnyNetworkingAndBatteryUsage:runDelay:", v7, assetDownloadPolicy == 2, arc4random_uniform([notificationProcessingPolicy delaySeconds]));
    }
  }
}

- (BOOL)_isMissingNotificationFields:(id)fields
{
  v33 = *MEMORY[0x277D85DE8];
  fieldsCopy = fields;
  if (([fieldsCopy hasNotificationProcessingPolicy] & 1) == 0)
  {
    v13 = TRILogCategory_Server();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
LABEL_27:

      v12 = 1;
      goto LABEL_28;
    }

    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v31 = 138412290;
    v32 = v15;
    v16 = "Cannot decode message of type %@ with missing field: notificationProcessingPolicy";
LABEL_14:
    _os_log_error_impl(&dword_26F567000, v13, OS_LOG_TYPE_ERROR, v16, &v31, 0xCu);

    goto LABEL_27;
  }

  notificationProcessingPolicy = [fieldsCopy notificationProcessingPolicy];
  hasDelaySeconds = [notificationProcessingPolicy hasDelaySeconds];

  if ((hasDelaySeconds & 1) == 0)
  {
    v13 = TRILogCategory_Server();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_27;
    }

    notificationProcessingPolicy2 = [fieldsCopy notificationProcessingPolicy];
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    v31 = 138412290;
    v32 = v19;
    v20 = "Cannot decode message of type %@ with missing field: delaySeconds";
LABEL_19:
    _os_log_error_impl(&dword_26F567000, v13, OS_LOG_TYPE_ERROR, v20, &v31, 0xCu);

    goto LABEL_27;
  }

  notificationProcessingPolicy3 = [fieldsCopy notificationProcessingPolicy];
  hasAssetDownloadPolicy = [notificationProcessingPolicy3 hasAssetDownloadPolicy];

  if ((hasAssetDownloadPolicy & 1) == 0)
  {
    v13 = TRILogCategory_Server();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_27;
    }

    notificationProcessingPolicy2 = [fieldsCopy notificationProcessingPolicy];
    v21 = objc_opt_class();
    v19 = NSStringFromClass(v21);
    v31 = 138412290;
    v32 = v19;
    v20 = "Cannot decode message of type %@ with missing field: assetDownloadPolicy";
    goto LABEL_19;
  }

  if (([fieldsCopy hasRolloutId] & 1) == 0)
  {
    v22 = TRILogCategory_Server();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v26 = objc_opt_class();
      v27 = NSStringFromClass(v26);
      v31 = 138412290;
      v32 = v27;
      _os_log_error_impl(&dword_26F567000, v22, OS_LOG_TYPE_ERROR, "Cannot decode message of type %@ with missing field: rolloutId", &v31, 0xCu);
    }

    v13 = TRILogCategory_Server();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_27;
    }

    v23 = objc_opt_class();
    v15 = NSStringFromClass(v23);
    v31 = 138412290;
    v32 = v15;
    v16 = "Cannot decode message of type %@ with missing field: rolloutId";
    goto LABEL_14;
  }

  rolloutId = [fieldsCopy rolloutId];
  v9 = [rolloutId length];

  if (!v9)
  {
    v13 = TRILogCategory_Server();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_27;
    }

    v24 = objc_opt_class();
    v15 = NSStringFromClass(v24);
    v31 = 138412290;
    v32 = v15;
    v16 = "Cannot decode message of type %@ with field of length 0: rolloutId";
    goto LABEL_14;
  }

  if (([fieldsCopy hasDeploymentId] & 1) == 0)
  {
    v13 = TRILogCategory_Server();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_27;
    }

    v28 = objc_opt_class();
    v15 = NSStringFromClass(v28);
    v31 = 138412290;
    v32 = v15;
    v16 = "Cannot decode message of type %@ with missing field: deploymentId";
    goto LABEL_14;
  }

  hasDeploymentDate = [fieldsCopy hasDeploymentDate];
  if ((hasDeploymentDate & 1) == 0)
  {
    v11 = TRILogCategory_Server();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v29 = objc_opt_class();
      v30 = NSStringFromClass(v29);
      v31 = 138412290;
      v32 = v30;
      _os_log_error_impl(&dword_26F567000, v11, OS_LOG_TYPE_ERROR, "Cannot decode message of type %@ with missing field: deploymentDate", &v31, 0xCu);
    }
  }

  v12 = hasDeploymentDate ^ 1;
LABEL_28:

  return v12;
}

- (void)_handleRollbackNotification:(id)notification
{
  v25 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  if ([notificationCopy hasExperimentId])
  {
    experimentId = [notificationCopy experimentId];
    v6 = [experimentId length];

    if (v6)
    {
      experimentId2 = [notificationCopy experimentId];
      v8 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(notificationCopy, "deploymentIdArray_Count")}];
      if ([(TRINotificationReactionCheckerProtocol *)self->_notificationChecker reactionForRollbackExperimentId:experimentId2])
      {
        deploymentIdArray = [notificationCopy deploymentIdArray];
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __58__TRIPushNotificationHandler__handleRollbackNotification___block_invoke;
        v19[3] = &unk_279DDF630;
        v10 = v8;
        v20 = v10;
        [deploymentIdArray enumerateValuesWithBlock:v19];

        v11 = TRILogCategory_Server();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v22 = experimentId2;
          v23 = 2114;
          v24 = v10;
          _os_log_impl(&dword_26F567000, v11, OS_LOG_TYPE_DEFAULT, "Scheduling Urgent Rollback for experiment: %{public}@ deployments: %{public}@", buf, 0x16u);
        }

        [(TRIUrgentRollbackSchedulerProtocol *)self->_rollbackScheduler scheduleUrgentRollbackForExperiment:experimentId2 deploymentIds:v10];
      }

      goto LABEL_13;
    }

    experimentId2 = TRILogCategory_Server();
    if (!os_log_type_enabled(experimentId2, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v18 = objc_opt_class();
    v14 = NSStringFromClass(v18);
    *buf = 138412290;
    v22 = v14;
    v15 = "Cannot decode message of type %@ with field of length 0: experimentId";
LABEL_15:
    _os_log_error_impl(&dword_26F567000, experimentId2, OS_LOG_TYPE_ERROR, v15, buf, 0xCu);

    goto LABEL_13;
  }

  v12 = TRILogCategory_Server();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    *buf = 138412290;
    v22 = v17;
    _os_log_error_impl(&dword_26F567000, v12, OS_LOG_TYPE_ERROR, "Cannot decode message of type %@ with missing field: experimentId", buf, 0xCu);
  }

  experimentId2 = TRILogCategory_Server();
  if (os_log_type_enabled(experimentId2, OS_LOG_TYPE_ERROR))
  {
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    *buf = 138412290;
    v22 = v14;
    v15 = "Cannot decode message of type %@ with missing field: experimentId";
    goto LABEL_15;
  }

LABEL_13:
}

void __58__TRIPushNotificationHandler__handleRollbackNotification___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a2];
  [v2 addObject:v3];
}

- (void)_handleExperimentUpdateNotification:(id)notification
{
  v21 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  if ([notificationCopy hasExperimentId])
  {
    experimentId = [notificationCopy experimentId];
    v6 = [experimentId length];

    if (v6)
    {
      deploymentIdArray = [notificationCopy deploymentIdArray];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __66__TRIPushNotificationHandler__handleExperimentUpdateNotification___block_invoke;
      v16[3] = &unk_279DE21C8;
      v17 = notificationCopy;
      selfCopy = self;
      [deploymentIdArray enumerateValuesWithBlock:v16];

      v8 = v17;
      goto LABEL_9;
    }

    v8 = TRILogCategory_Server();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    v15 = objc_opt_class();
    v11 = NSStringFromClass(v15);
    *buf = 138412290;
    v20 = v11;
    v12 = "Cannot decode message of type %@ with field of length 0: experimentId";
LABEL_11:
    _os_log_error_impl(&dword_26F567000, v8, OS_LOG_TYPE_ERROR, v12, buf, 0xCu);

    goto LABEL_9;
  }

  v9 = TRILogCategory_Server();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    *buf = 138412290;
    v20 = v14;
    _os_log_error_impl(&dword_26F567000, v9, OS_LOG_TYPE_ERROR, "Cannot decode message of type %@ with missing field: experimentId", buf, 0xCu);
  }

  v8 = TRILogCategory_Server();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    *buf = 138412290;
    v20 = v11;
    v12 = "Cannot decode message of type %@ with missing field: experimentId";
    goto LABEL_11;
  }

LABEL_9:
}

void __66__TRIPushNotificationHandler__handleExperimentUpdateNotification___block_invoke(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = objc_autoreleasePoolPush();
  v5 = objc_alloc(MEMORY[0x277D736C0]);
  v6 = [*(a1 + 32) experimentId];
  v7 = [v5 initWithExperimentId:v6 deploymentId:a2];

  if ([*(*(a1 + 40) + 8) reactionForUpdateExperimentDeployment:v7])
  {
    v8 = TRILogCategory_Server();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [*(a1 + 32) experimentId];
      v14 = 138543618;
      v15 = v9;
      v16 = 1024;
      v17 = a2;
      _os_log_impl(&dword_26F567000, v8, OS_LOG_TYPE_DEFAULT, "Processing experiment update for experiment: %{public}@ deployment: %u", &v14, 0x12u);
    }

    v10 = *(a1 + 32);
    v11 = *(*(a1 + 40) + 32);
    v12 = [v10 newEndDate];
    v13 = [v12 date];
    [v11 scheduleExperimentUpdateOperationsForExperimentWithNewEndDate:v13 withDeployment:v7];
  }

  objc_autoreleasePoolPop(v4);
}

@end