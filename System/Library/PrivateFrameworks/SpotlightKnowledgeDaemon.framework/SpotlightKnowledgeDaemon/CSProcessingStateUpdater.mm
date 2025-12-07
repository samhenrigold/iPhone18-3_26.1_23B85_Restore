@interface CSProcessingStateUpdater
- (BOOL)handleDonation:(id)donation turboEnabled:(BOOL)enabled completionHandler:(id)handler cancelBlock:(id)block;
- (id)description;
@end

@implementation CSProcessingStateUpdater

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = objc_opt_class();
  taskName = [(CSProcessingStateUpdater *)self taskName];
  v6 = [v3 initWithFormat:@"<%@:%p; %@>", v4, self, taskName];

  return v6;
}

- (BOOL)handleDonation:(id)donation turboEnabled:(BOOL)enabled completionHandler:(id)handler cancelBlock:(id)block
{
  donationCopy = donation;
  handlerCopy = handler;
  blockCopy = block;
  v11 = objc_alloc(MEMORY[0x277CCACA8]);
  v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:-[CSEventListenerManager journalMap](donationCopy)];
  v13 = [v11 initWithString:v12];

  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v22 = MEMORY[0x277D85DD0];
  v23 = 3221225472;
  v24 = __86__CSProcessingStateUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke;
  v25 = &unk_27893D610;
  v14 = v13;
  v26 = v14;
  v15 = donationCopy;
  v27 = v15;
  v29 = &v32;
  v30 = &v40;
  v31 = &v36;
  v16 = blockCopy;
  v28 = v16;
  [v15 iterateItems:&v22];
  v17 = v37[3];
  v18 = v33[3];
  if (*(v41 + 24) == 1)
  {
    v19 = objc_alloc(MEMORY[0x277CCA9B8]);
    v20 = [v19 initWithDomain:@"CSProcessingStateUpdaterError" code:1 userInfo:{0, v22, v23, v24, v25, v26, v27}];
    handlerCopy[2](handlerCopy, v17, v18, v20);
  }

  else
  {
    handlerCopy[2](handlerCopy, v37[3], v33[3], 0);
  }

  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v40, 8);

  return 1;
}

uint64_t __86__CSProcessingStateUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke(uint64_t a1, void *a2)
{
  v49 = *MEMORY[0x277D85DE8];
  v3 = a2;
  getCSEventListeners();
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v4 = v41 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v38 objects:v48 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v39;
    v33 = v4;
    v34 = v3;
    v32 = *v39;
    do
    {
      v8 = 0;
      v36 = v6;
      do
      {
        if (*v39 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v38 + 1) + 8 * v8);
        v10 = [(CSEmbeddingsUpdater *)v9 asyncIndexProcessors];
        v11 = [v10 eventType];

        if (v11 != 5)
        {
          v12 = [(CSEmbeddingsUpdater *)v9 asyncIndexProcessors];
          v13 = [v12 shouldHandleJournalItem:v3 bundleID:*(a1 + 32)];

          if (SKGLogGetCurrentLoggingLevel() >= 7)
          {
            v14 = SKGLogInit();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
            {
              v28 = [(CSEmbeddingsUpdater *)v9 asyncIndexProcessors];
              *buf = 138412546;
              v43 = v28;
              v44 = 1024;
              LODWORD(v45) = v13;
              _os_log_debug_impl(&dword_231B25000, v14, OS_LOG_TYPE_DEBUG, "CSProcessingStateUpdater#handleDonation log:%@, handled(%d)", buf, 0x12u);
            }
          }

          if (v13)
          {
            v15 = objc_autoreleasePoolPush();
            v16 = [SKGUpdaterStore instanceForIndexType:[(CSEventListenerManager *)*(a1 + 40) folderFd]];
            v37 = [(CSEventListenerManager *)*(a1 + 40) totalJournalSize];
            [(CSEventDonationJournalItem *)v3 identifier];
            v17 = MDJournalReaderMDPlistObjectCopy();
            v18 = [v17 mutableCopy];

            if (v16 && v18)
            {
              v35 = v15;
              v19 = dispatch_time(0, 0);
              v20 = [(CSEventListenerManager *)*(a1 + 40) journalMap];
              v21 = [v18 UTF8String];
              v22 = [(CSEventListenerManager *)*(a1 + 40) journalQueue];
              v23 = [(CSEmbeddingsUpdater *)v9 asyncIndexProcessors];
              v24 = [v16 writeSerialNumberToBundleID:v20 identifier:v21 UUID:v22 serialNumber:v37 listenerType:{objc_msgSend(v23, "eventType")}];

              *(*(*(a1 + 56) + 8) + 24) += dispatch_time(0, 0) - v19;
              v25 = [(CSEmbeddingsUpdater *)v9 asyncIndexProcessors];
              LODWORD(v19) = [v25 eventType];

              if (v19 == 1)
              {
                [v16 markPriorityForBundleID:objc_msgSend(*(a1 + 32) identifier:"UTF8String") UUID:objc_msgSend(v18 serialNumber:"UTF8String") flag:{-[CSEventListenerManager journalQueue](*(a1 + 40)), v37, 1}];
              }

              if (v24)
              {
                ++*(*(*(a1 + 72) + 8) + 24);
                v4 = v33;
                v3 = v34;
                v7 = v32;
                v15 = v35;
              }

              else
              {
                v4 = v33;
                v3 = v34;
                v7 = v32;
                v15 = v35;
                if (SKGLogGetCurrentLoggingLevel() >= 2)
                {
                  v27 = SKGLogInit();
                  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
                  {
                    v29 = *(a1 + 32);
                    *buf = 134218498;
                    v43 = v37;
                    v44 = 2112;
                    v45 = v29;
                    v46 = 2112;
                    v47 = v18;
                    _os_log_error_impl(&dword_231B25000, v27, OS_LOG_TYPE_ERROR, "CSProcessingStateUpdater#handleDonation Error unable to write serialNumber %llu for bundleID %@ and identifier %@", buf, 0x20u);
                  }
                }

                *(*(*(a1 + 64) + 8) + 24) = 1;
              }
            }

            else if (SKGLogGetCurrentLoggingLevel() >= 7)
            {
              v26 = SKGLogInit();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412546;
                v43 = v16;
                v44 = 2112;
                v45 = v18;
                _os_log_debug_impl(&dword_231B25000, v26, OS_LOG_TYPE_DEBUG, "CSProcessingStateUpdater#handleDonation skipping writing status store: %@ identifier: %@", buf, 0x16u);
              }
            }

            objc_autoreleasePoolPop(v15);
            v6 = v36;
          }
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v38 objects:v48 count:16];
    }

    while (v6);
  }

  v30 = (*(*(a1 + 48) + 16))();
  return v30;
}

@end