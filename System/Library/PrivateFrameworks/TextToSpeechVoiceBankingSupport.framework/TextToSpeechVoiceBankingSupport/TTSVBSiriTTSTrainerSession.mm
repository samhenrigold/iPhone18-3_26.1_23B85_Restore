@interface TTSVBSiriTTSTrainerSession
- (TTSVBSiriTTSTrainerSession)init;
- (id)_replyQueue:(id)queue;
- (id)getAllAvailableLocalesForTrainingVersion:(id)version;
- (id)installableTrainingAssetsForLocaleID:(id)d name:(id)name type:(int64_t)type;
- (id)installedTrainingAssetsForLocaleID:(id)d name:(id)name type:(int64_t)type;
- (void)cancelTask:(id)task replyOnQueue:(id)queue completionHandler:(id)handler;
- (void)cancelTaskWithID:(id)d replyOnQueue:(id)queue completionHandler:(id)handler;
- (void)discardTrainingTasksReplyOnQueue:(id)queue completionHandler:(id)handler;
- (void)fetchTrainingScriptsWithLocaleID:(id)d scriptType:(id)type replyOnQueue:(id)queue completion:(id)completion;
- (void)getAllTasksReplyOnQueue:(id)queue statusHandler:(id)handler;
- (void)getTaskByID:(id)d replyOnQueue:(id)queue statusHandler:(id)handler;
- (void)getTasksByIDs:(id)ds replyOnQueue:(id)queue statusHandler:(id)handler;
- (void)installAsset:(id)asset progress:(id)progress completion:(id)completion;
- (void)startTraining:(id)training replyOnQueue:(id)queue trainingStartedHandler:(id)handler;
- (void)uninstallAsset:(id)asset;
@end

@implementation TTSVBSiriTTSTrainerSession

- (TTSVBSiriTTSTrainerSession)init
{
  v11.receiver = self;
  v11.super_class = TTSVBSiriTTSTrainerSession;
  v2 = [(TTSVBSiriTTSTrainerSession *)&v11 init];
  if (v2)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2050000000;
    v3 = getSiriTTSTrainerSessionClass_softClass;
    v16 = getSiriTTSTrainerSessionClass_softClass;
    if (!getSiriTTSTrainerSessionClass_softClass)
    {
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __getSiriTTSTrainerSessionClass_block_invoke;
      v12[3] = &unk_2789C3AA0;
      v12[4] = &v13;
      __getSiriTTSTrainerSessionClass_block_invoke(v12);
      v3 = v14[3];
    }

    v4 = v3;
    _Block_object_dispose(&v13, 8);
    v5 = objc_alloc_init(v3);
    [(TTSVBSiriTTSTrainerSession *)v2 setSession:v5];

    v6 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, -1);
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(v6, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);

    v8 = dispatch_queue_create("com.apple.voicebanking.SiriTraining", v7);
    [(TTSVBSiriTTSTrainerSession *)v2 setSiriTrainingQueue:v8];

    v9 = dispatch_queue_create("com.apple.voicebanking.trainersession.callout", v7);
    [(TTSVBSiriTTSTrainerSession *)v2 setCalloutQueue:v9];
  }

  return v2;
}

- (id)getAllAvailableLocalesForTrainingVersion:(id)version
{
  v19 = *MEMORY[0x277D85DE8];
  versionCopy = version;
  v5 = LogTTSVBSiri(versionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = versionCopy;
    _os_log_impl(&dword_233109000, v5, OS_LOG_TYPE_DEFAULT, "Will query SiriTTSTraining for available locales for training version=%@", &v15, 0xCu);
  }

  v6 = [versionCopy isEqual:@"v2"];
  session = [(TTSVBSiriTTSTrainerSession *)self session];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    if (v6)
    {
      v10 = 2;
    }

    else
    {
      v10 = 1;
    }

    session2 = [(TTSVBSiriTTSTrainerSession *)self session];
    v12 = [session2 getAllAvailableLocalesWithVer:v10];
  }

  else if (v6)
  {
    v12 = &unk_28487D9D8;
  }

  else
  {
    v12 = &unk_28487D9C0;
  }

  v13 = LogTTSVBSiri(v9);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412546;
    v16 = versionCopy;
    v17 = 2112;
    v18 = v12;
    _os_log_impl(&dword_233109000, v13, OS_LOG_TYPE_DEFAULT, "Did query SiriTTSTraining for available locales for training version=%@. %@", &v15, 0x16u);
  }

  return v12;
}

- (id)installableTrainingAssetsForLocaleID:(id)d name:(id)name type:(int64_t)type
{
  v37 = *MEMORY[0x277D85DE8];
  dCopy = d;
  nameCopy = name;
  v10 = LogTTSVBSiri(nameCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v32 = dCopy;
    v33 = 2112;
    v34 = nameCopy;
    v35 = 2048;
    typeCopy = type;
    _os_log_impl(&dword_233109000, v10, OS_LOG_TYPE_DEFAULT, "Will query SiriTTSTraining for installable assets language=%@ name=%@ type=%lu", buf, 0x20u);
  }

  session = [(TTSVBSiriTTSTrainerSession *)self session];
  v12 = [session installableTrainingAssetsForLanguage:dCopy name:nameCopy type:type];

  array = [MEMORY[0x277CBEB18] array];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v14 = v12;
  v15 = [v14 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v27;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v27 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v26 + 1) + 8 * i);
        v20 = [TTSVBSiriTTSTrainingAsset alloc];
        v21 = [(TTSVBSiriTTSTrainingAsset *)v20 initWithSiriTTSTrainingAsset:v19, v26];
        [array addObject:v21];
      }

      v16 = [v14 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v16);
  }

  v23 = LogTTSVBSiri(v22);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v14, "count")}];
    *buf = 138412290;
    v32 = v24;
    _os_log_impl(&dword_233109000, v23, OS_LOG_TYPE_DEFAULT, "Did query SiriTTSTraining for installable assets. Got %@ results", buf, 0xCu);
  }

  return array;
}

- (id)installedTrainingAssetsForLocaleID:(id)d name:(id)name type:(int64_t)type
{
  v43 = *MEMORY[0x277D85DE8];
  dCopy = d;
  nameCopy = name;
  v10 = LogTTSVBSiri(nameCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v38 = dCopy;
    v39 = 2112;
    v40 = nameCopy;
    v41 = 2048;
    typeCopy = type;
    _os_log_impl(&dword_233109000, v10, OS_LOG_TYPE_DEFAULT, "Will query SiriTTSTraining for installed assets language=%@ name=%@ type=%lu", buf, 0x20u);
  }

  session = [(TTSVBSiriTTSTrainerSession *)self session];
  v29 = nameCopy;
  v30 = dCopy;
  v12 = [session installedTrainingAssetsForLanguage:dCopy name:nameCopy type:type];

  v14 = LogTTSVBSiri(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v12, "count")}];
    *buf = 138412290;
    v38 = v15;
    _os_log_impl(&dword_233109000, v14, OS_LOG_TYPE_DEFAULT, "Did query SiriTTSTraining for installed assets. Got %@ results", buf, 0xCu);
  }

  array = [MEMORY[0x277CBEB18] array];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v17 = v12;
  v18 = [v17 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v33;
    v31 = v17;
    do
    {
      v21 = 0;
      do
      {
        if (*v33 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v32 + 1) + 8 * v21);
        v23 = [[TTSVBSiriTTSTrainingAsset alloc] initWithSiriTTSTrainingAsset:v22];
        v24 = LogTTSVBSiri([array addObject:v23]);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          name = [v22 name];
          factor = [v22 factor];
          path = [v22 path];
          *buf = 138412802;
          v38 = name;
          v39 = 2112;
          v40 = factor;
          v41 = 2112;
          typeCopy = path;
          _os_log_debug_impl(&dword_233109000, v24, OS_LOG_TYPE_DEBUG, "Installed training asset: %@ - %@ - %@", buf, 0x20u);

          v17 = v31;
        }

        ++v21;
      }

      while (v19 != v21);
      v19 = [v17 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v19);
  }

  return array;
}

- (void)installAsset:(id)asset progress:(id)progress completion:(id)completion
{
  v22 = *MEMORY[0x277D85DE8];
  progressCopy = progress;
  completionCopy = completion;
  asset = [asset asset];
  v11 = LogTTSVBSiri(asset);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    name = [asset name];
    *buf = 138412290;
    v21 = name;
    _os_log_impl(&dword_233109000, v11, OS_LOG_TYPE_DEFAULT, "About to request install of siri training asset=%@", buf, 0xCu);
  }

  session = [(TTSVBSiriTTSTrainerSession *)self session];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __63__TTSVBSiriTTSTrainerSession_installAsset_progress_completion___block_invoke;
  v18[3] = &unk_2789C3BF0;
  v19 = progressCopy;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __63__TTSVBSiriTTSTrainerSession_installAsset_progress_completion___block_invoke_32;
  v16[3] = &unk_2789C3C18;
  v17 = completionCopy;
  v14 = completionCopy;
  v15 = progressCopy;
  [session installTrainingAsset:asset progress:v18 completion:v16];
}

uint64_t __63__TTSVBSiriTTSTrainerSession_installAsset_progress_completion___block_invoke(uint64_t a1, float a2)
{
  v4 = LogTTSVBSiri(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __63__TTSVBSiriTTSTrainerSession_installAsset_progress_completion___block_invoke_cold_1(v4, a2);
  }

  return (*(*(a1 + 32) + 16))(a2);
}

void __63__TTSVBSiriTTSTrainerSession_installAsset_progress_completion___block_invoke_32(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = LogTTSVBSiri(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __63__TTSVBSiriTTSTrainerSession_installAsset_progress_completion___block_invoke_32_cold_1(v3, v4);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)uninstallAsset:(id)asset
{
  v11 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  v5 = LogTTSVBSiri(assetCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    name = [assetCopy name];
    v9 = 138412290;
    v10 = name;
    _os_log_impl(&dword_233109000, v5, OS_LOG_TYPE_DEFAULT, "About to request uninstall of siri training asset=%@", &v9, 0xCu);
  }

  session = [(TTSVBSiriTTSTrainerSession *)self session];
  asset = [assetCopy asset];
  [session uninstallTrainingAsset:asset];
}

- (void)fetchTrainingScriptsWithLocaleID:(id)d scriptType:(id)type replyOnQueue:(id)queue completion:(id)completion
{
  v28 = *MEMORY[0x277D85DE8];
  dCopy = d;
  typeCopy = type;
  queueCopy = queue;
  completionCopy = completion;
  v14 = LogTTSVBSiri(completionCopy);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v25 = dCopy;
    v26 = 2112;
    v27 = typeCopy;
    _os_log_impl(&dword_233109000, v14, OS_LOG_TYPE_DEFAULT, "About to fetch training script data with locale: '%@' and script type: '%@'", buf, 0x16u);
  }

  session = [(TTSVBSiriTTSTrainerSession *)self session];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __98__TTSVBSiriTTSTrainerSession_fetchTrainingScriptsWithLocaleID_scriptType_replyOnQueue_completion___block_invoke;
  v19[3] = &unk_2789C3C68;
  v20 = dCopy;
  selfCopy = self;
  v22 = queueCopy;
  v23 = completionCopy;
  v16 = completionCopy;
  v17 = queueCopy;
  v18 = dCopy;
  [session getRecordingMetadata:v18 name:typeCopy reply:v19];
}

void __98__TTSVBSiriTTSTrainerSession_fetchTrainingScriptsWithLocaleID_scriptType_replyOnQueue_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = LogTTSVBSiri(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    *buf = 138412802;
    v18 = v8;
    v19 = 2112;
    v20 = v6;
    v21 = 2112;
    v22 = v5;
    _os_log_impl(&dword_233109000, v7, OS_LOG_TYPE_DEFAULT, "Did fetch training script data with locale: %@. Path=%@ Error=%@", buf, 0x20u);
  }

  v9 = [*(a1 + 40) _replyQueue:*(a1 + 48)];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __98__TTSVBSiriTTSTrainerSession_fetchTrainingScriptsWithLocaleID_scriptType_replyOnQueue_completion___block_invoke_34;
  block[3] = &unk_2789C3C40;
  v10 = *(a1 + 56);
  v15 = v5;
  v16 = v10;
  v14 = v6;
  v11 = v5;
  v12 = v6;
  dispatch_async(v9, block);
}

- (void)startTraining:(id)training replyOnQueue:(id)queue trainingStartedHandler:(id)handler
{
  trainingCopy = training;
  queueCopy = queue;
  handlerCopy = handler;
  siriTrainingQueue = [(TTSVBSiriTTSTrainerSession *)self siriTrainingQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __80__TTSVBSiriTTSTrainerSession_startTraining_replyOnQueue_trainingStartedHandler___block_invoke;
  v15[3] = &unk_2789C3CE0;
  v16 = trainingCopy;
  selfCopy = self;
  v18 = queueCopy;
  v19 = handlerCopy;
  v12 = handlerCopy;
  v13 = queueCopy;
  v14 = trainingCopy;
  dispatch_async(siriTrainingQueue, v15);
}

void __80__TTSVBSiriTTSTrainerSession_startTraining_replyOnQueue_trainingStartedHandler___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = LogTTSVBSiri(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(a1 + 32) task];
    v4 = [*(a1 + 40) session];
    *buf = 138412546;
    v12 = v3;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_233109000, v2, OS_LOG_TYPE_INFO, "Dispatching training task to session. task=%@. session=%@", buf, 0x16u);
  }

  v5 = [*(a1 + 40) session];
  v6 = [*(a1 + 32) task];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __80__TTSVBSiriTTSTrainerSession_startTraining_replyOnQueue_trainingStartedHandler___block_invoke_37;
  v8[3] = &unk_2789C3CB8;
  v7 = *(a1 + 48);
  v8[4] = *(a1 + 40);
  v9 = v7;
  v10 = *(a1 + 56);
  [v5 startRequest:v6 completion:v8];
}

void __80__TTSVBSiriTTSTrainerSession_startTraining_replyOnQueue_trainingStartedHandler___block_invoke_37(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) _replyQueue:*(a1 + 40)];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__TTSVBSiriTTSTrainerSession_startTraining_replyOnQueue_trainingStartedHandler___block_invoke_2;
  block[3] = &unk_2789C3C90;
  v12 = v6;
  v8 = *(a1 + 48);
  v13 = v5;
  v14 = v8;
  v9 = v5;
  v10 = v6;
  dispatch_async(v7, block);
}

void __80__TTSVBSiriTTSTrainerSession_startTraining_replyOnQueue_trainingStartedHandler___block_invoke_2(uint64_t a1)
{
  v2 = [[TTSVBSiriTTSTrainerTask alloc] initWithSiriTTSTrainerTask:*(a1 + 32)];
  (*(*(a1 + 48) + 16))();
}

- (void)getTaskByID:(id)d replyOnQueue:(id)queue statusHandler:(id)handler
{
  dCopy = d;
  queueCopy = queue;
  handlerCopy = handler;
  siriTrainingQueue = [(TTSVBSiriTTSTrainerSession *)self siriTrainingQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __69__TTSVBSiriTTSTrainerSession_getTaskByID_replyOnQueue_statusHandler___block_invoke;
  v15[3] = &unk_2789C3CE0;
  v16 = dCopy;
  selfCopy = self;
  v18 = queueCopy;
  v19 = handlerCopy;
  v12 = handlerCopy;
  v13 = queueCopy;
  v14 = dCopy;
  dispatch_async(siriTrainingQueue, v15);
}

void __69__TTSVBSiriTTSTrainerSession_getTaskByID_replyOnQueue_statusHandler___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = LogTTSVBSiri(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v11 = v3;
    _os_log_impl(&dword_233109000, v2, OS_LOG_TYPE_INFO, "About to call getTaskById task=%@", buf, 0xCu);
  }

  v4 = [*(a1 + 40) session];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __69__TTSVBSiriTTSTrainerSession_getTaskByID_replyOnQueue_statusHandler___block_invoke_40;
  v7[3] = &unk_2789C3CB8;
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  v7[4] = *(a1 + 40);
  v8 = v6;
  v9 = *(a1 + 56);
  [v4 getTaskById:v5 completion:v7];
}

void __69__TTSVBSiriTTSTrainerSession_getTaskByID_replyOnQueue_statusHandler___block_invoke_40(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) _replyQueue:*(a1 + 40)];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__TTSVBSiriTTSTrainerSession_getTaskByID_replyOnQueue_statusHandler___block_invoke_2;
  block[3] = &unk_2789C3C90;
  v12 = v6;
  v8 = *(a1 + 48);
  v13 = v5;
  v14 = v8;
  v9 = v5;
  v10 = v6;
  dispatch_async(v7, block);
}

void __69__TTSVBSiriTTSTrainerSession_getTaskByID_replyOnQueue_statusHandler___block_invoke_2(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = [[TTSVBSiriTTSTrainerTask alloc] initWithSiriTTSTrainerTask:*(a1 + 32)];
  v3 = LogTTSVBSiri(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_233109000, v3, OS_LOG_TYPE_INFO, "getTaskById did finish. calling completion handler. task=%@", &v4, 0xCu);
  }

  (*(*(a1 + 48) + 16))();
}

- (void)getTasksByIDs:(id)ds replyOnQueue:(id)queue statusHandler:(id)handler
{
  v41 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  queueCopy = queue;
  handlerCopy = handler;
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  v11 = LogTTSVBSiri(array2);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = [dsCopy componentsJoinedByString:{@", "}];
    *buf = 138412290;
    v40 = v12;
    _os_log_impl(&dword_233109000, v11, OS_LOG_TYPE_INFO, "Will request tasks for IDs %@", buf, 0xCu);
  }

  v13 = dispatch_group_create();
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = dsCopy;
  v14 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v35;
    do
    {
      v17 = 0;
      do
      {
        if (*v35 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v34 + 1) + 8 * v17);
        dispatch_group_enter(v13);
        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = __71__TTSVBSiriTTSTrainerSession_getTasksByIDs_replyOnQueue_statusHandler___block_invoke;
        v30[3] = &unk_2789C3D08;
        v31 = array;
        v32 = array2;
        v33 = v13;
        [(TTSVBSiriTTSTrainerSession *)self getTaskByID:v18 replyOnQueue:0 statusHandler:v30];

        ++v17;
      }

      while (v15 != v17);
      v15 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v15);
  }

  v19 = [(TTSVBSiriTTSTrainerSession *)self _replyQueue:queueCopy];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__TTSVBSiriTTSTrainerSession_getTasksByIDs_replyOnQueue_statusHandler___block_invoke_2;
  block[3] = &unk_2789C3D30;
  v27 = array;
  v28 = array2;
  v29 = handlerCopy;
  v20 = handlerCopy;
  v21 = array2;
  v22 = array;
  dispatch_group_notify(v13, v19, block);
}

void __71__TTSVBSiriTTSTrainerSession_getTasksByIDs_replyOnQueue_statusHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  [*(a1 + 32) addObject:a2];
  if (v5)
  {
    [*(a1 + 40) addObject:v5];
  }

  dispatch_group_leave(*(a1 + 48));
}

uint64_t __71__TTSVBSiriTTSTrainerSession_getTasksByIDs_replyOnQueue_statusHandler___block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = LogTTSVBSiri(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "count")}];
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 40), "count")}];
    v6 = 138412546;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_233109000, v2, OS_LOG_TYPE_INFO, "Finished requesting getTasksByIDs. Calling completion handler. tasks=%@ errors=%@", &v6, 0x16u);
  }

  return (*(*(a1 + 48) + 16))();
}

- (void)getAllTasksReplyOnQueue:(id)queue statusHandler:(id)handler
{
  queueCopy = queue;
  handlerCopy = handler;
  siriTrainingQueue = [(TTSVBSiriTTSTrainerSession *)self siriTrainingQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__TTSVBSiriTTSTrainerSession_getAllTasksReplyOnQueue_statusHandler___block_invoke;
  block[3] = &unk_2789C3D30;
  block[4] = self;
  v12 = queueCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = queueCopy;
  dispatch_async(siriTrainingQueue, block);
}

void __68__TTSVBSiriTTSTrainerSession_getAllTasksReplyOnQueue_statusHandler___block_invoke(uint64_t a1)
{
  v2 = LogTTSVBSiri(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_233109000, v2, OS_LOG_TYPE_INFO, "About to call getAllTasks", buf, 2u);
  }

  v3 = [*(a1 + 32) session];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __68__TTSVBSiriTTSTrainerSession_getAllTasksReplyOnQueue_statusHandler___block_invoke_45;
  v5[3] = &unk_2789C3D80;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  v7 = *(a1 + 48);
  [v3 getAllTasks:v5];
}

void __68__TTSVBSiriTTSTrainerSession_getAllTasksReplyOnQueue_statusHandler___block_invoke_45(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _replyQueue:*(a1 + 40)];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __68__TTSVBSiriTTSTrainerSession_getAllTasksReplyOnQueue_statusHandler___block_invoke_2;
  v6[3] = &unk_2789C3D58;
  v7 = v3;
  v8 = *(a1 + 48);
  v5 = v3;
  dispatch_async(v4, v6);
}

void __68__TTSVBSiriTTSTrainerSession_getAllTasksReplyOnQueue_statusHandler___block_invoke_2(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB18] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      v7 = 0;
      do
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * v7);
        v9 = [TTSVBSiriTTSTrainerTask alloc];
        v10 = [(TTSVBSiriTTSTrainerTask *)v9 initWithSiriTTSTrainerTask:v8, v14];
        [v2 addObject:v10];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v5);
  }

  v12 = LogTTSVBSiri(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v2, "count")}];
    *buf = 138412290;
    v19 = v13;
    _os_log_impl(&dword_233109000, v12, OS_LOG_TYPE_INFO, "getAllTasks did finish. calling completion handler. tasks=%@", buf, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)discardTrainingTasksReplyOnQueue:(id)queue completionHandler:(id)handler
{
  queueCopy = queue;
  handlerCopy = handler;
  v8 = LogTTSVBSiri(handlerCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_233109000, v8, OS_LOG_TYPE_INFO, "About to call cleanUpTaskQueue", buf, 2u);
  }

  session = [(TTSVBSiriTTSTrainerSession *)self session];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __81__TTSVBSiriTTSTrainerSession_discardTrainingTasksReplyOnQueue_completionHandler___block_invoke;
  v12[3] = &unk_2789C3DD0;
  v12[4] = self;
  v13 = queueCopy;
  v14 = handlerCopy;
  v10 = handlerCopy;
  v11 = queueCopy;
  [session cleanUpTaskQueue:v12];
}

void __81__TTSVBSiriTTSTrainerSession_discardTrainingTasksReplyOnQueue_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = LogTTSVBSiri(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_233109000, v4, OS_LOG_TYPE_INFO, "cleanUpTaskQueue finished. calling completion handler", buf, 2u);
  }

  v5 = [*(a1 + 32) _replyQueue:*(a1 + 40)];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __81__TTSVBSiriTTSTrainerSession_discardTrainingTasksReplyOnQueue_completionHandler___block_invoke_47;
  v8[3] = &unk_2789C3DA8;
  v6 = *(a1 + 48);
  v9 = v3;
  v10 = v6;
  v7 = v3;
  dispatch_async(v5, v8);
}

- (void)cancelTask:(id)task replyOnQueue:(id)queue completionHandler:(id)handler
{
  v25 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  queueCopy = queue;
  handlerCopy = handler;
  v11 = LogTTSVBSiri(handlerCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    taskID = [taskCopy taskID];
    *buf = 138412290;
    v24 = taskID;
    _os_log_impl(&dword_233109000, v11, OS_LOG_TYPE_INFO, "Will request cancel of training task: %@", buf, 0xCu);
  }

  session = [(TTSVBSiriTTSTrainerSession *)self session];
  task = [taskCopy task];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __72__TTSVBSiriTTSTrainerSession_cancelTask_replyOnQueue_completionHandler___block_invoke;
  v18[3] = &unk_2789C3DF8;
  v19 = taskCopy;
  selfCopy = self;
  v21 = queueCopy;
  v22 = handlerCopy;
  v15 = handlerCopy;
  v16 = queueCopy;
  v17 = taskCopy;
  [session cancelTask:task reply:v18];
}

void __72__TTSVBSiriTTSTrainerSession_cancelTask_replyOnQueue_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = LogTTSVBSiri(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [*(a1 + 32) taskID];
    *buf = 138412290;
    v13 = v5;
    _os_log_impl(&dword_233109000, v4, OS_LOG_TYPE_INFO, "cancelTask finished id=%@. calling completion handler", buf, 0xCu);
  }

  v6 = [*(a1 + 40) _replyQueue:*(a1 + 48)];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __72__TTSVBSiriTTSTrainerSession_cancelTask_replyOnQueue_completionHandler___block_invoke_48;
  v9[3] = &unk_2789C3DA8;
  v7 = *(a1 + 56);
  v10 = v3;
  v11 = v7;
  v8 = v3;
  dispatch_async(v6, v9);
}

- (void)cancelTaskWithID:(id)d replyOnQueue:(id)queue completionHandler:(id)handler
{
  queueCopy = queue;
  handlerCopy = handler;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __78__TTSVBSiriTTSTrainerSession_cancelTaskWithID_replyOnQueue_completionHandler___block_invoke;
  v12[3] = &unk_2789C3E20;
  v12[4] = self;
  v13 = queueCopy;
  v14 = handlerCopy;
  v10 = handlerCopy;
  v11 = queueCopy;
  [(TTSVBSiriTTSTrainerSession *)self getTaskByID:d replyOnQueue:0 statusHandler:v12];
}

void __78__TTSVBSiriTTSTrainerSession_cancelTaskWithID_replyOnQueue_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  if (v5)
  {
    v7 = [v6 _replyQueue:*(a1 + 40)];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __78__TTSVBSiriTTSTrainerSession_cancelTaskWithID_replyOnQueue_completionHandler___block_invoke_2;
    v8[3] = &unk_2789C3DA8;
    v10 = *(a1 + 48);
    v9 = v5;
    dispatch_async(v7, v8);
  }

  else
  {
    [v6 cancelTask:a2 replyOnQueue:*(a1 + 40) completionHandler:*(a1 + 48)];
  }
}

- (id)_replyQueue:(id)queue
{
  queueCopy = queue;
  v5 = queueCopy;
  if (queueCopy)
  {
    calloutQueue = queueCopy;
  }

  else
  {
    calloutQueue = [(TTSVBSiriTTSTrainerSession *)self calloutQueue];
  }

  v7 = calloutQueue;

  return v7;
}

void __63__TTSVBSiriTTSTrainerSession_installAsset_progress_completion___block_invoke_cold_1(os_log_t log, float a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = a2;
  _os_log_debug_impl(&dword_233109000, log, OS_LOG_TYPE_DEBUG, "Siri training asset install progress=%.2f", &v2, 0xCu);
}

void __63__TTSVBSiriTTSTrainerSession_installAsset_progress_completion___block_invoke_32_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_233109000, a2, OS_LOG_TYPE_DEBUG, "Siri training asset install finished. ErrorOrNil=%@", &v2, 0xCu);
}

@end