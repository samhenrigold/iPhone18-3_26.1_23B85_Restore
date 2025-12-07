@interface WFBiomeListener
+ (id)registrationError;
- (BOOL)isTransactionEventDuplicate:(id)duplicate forTrigger:(id)trigger withSeenTransactionIdentifiers:(id)identifiers;
- (WFBiomeListener)initWithEventQueue:(id)queue;
- (void)fireTriggerWithIdentifier:(id)identifier force:(BOOL)force eventInfo:(id)info completion:(id)completion;
- (void)queue_fireTriggerWithIdentifier:(id)identifier force:(BOOL)force eventInfo:(id)info completion:(id)completion;
- (void)queue_handleEvent:(id)event forTrigger:(id)trigger;
- (void)queue_unregisterConfiguredTriggerWithIdentifier:(id)identifier;
- (void)registerConfiguredTrigger:(id)trigger completion:(id)completion;
- (void)unregisterConfiguredTriggerWithIdentifier:(id)identifier;
@end

@implementation WFBiomeListener

- (BOOL)isTransactionEventDuplicate:(id)duplicate forTrigger:(id)trigger withSeenTransactionIdentifiers:(id)identifiers
{
  v24 = *MEMORY[0x277D85DE8];
  duplicateCopy = duplicate;
  triggerCopy = trigger;
  identifiersCopy = identifiers;
  trigger = [triggerCopy trigger];
  if (trigger && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v11 = [trigger transactionIdentifierWithEvent:duplicateCopy];
    if ([v11 length])
    {
      identifier = [triggerCopy identifier];
      v13 = [identifiersCopy objectForKeyedSubscript:identifier];
      v14 = v13;
      if (v13)
      {
        v15 = v13;
      }

      else
      {
        v15 = objc_opt_new();
      }

      v17 = v15;

      v16 = [v17 containsObject:v11];
      if (v16)
      {
        identifier2 = getWFTriggersLogObject();
        if (os_log_type_enabled(identifier2, OS_LOG_TYPE_DEFAULT))
        {
          v20 = 136315394;
          v21 = "[WFBiomeListener isTransactionEventDuplicate:forTrigger:withSeenTransactionIdentifiers:]";
          v22 = 2112;
          v23 = v11;
          _os_log_impl(&dword_23103C000, identifier2, OS_LOG_TYPE_DEFAULT, "%s Ignoring duplicate transaction identifier %@", &v20, 0x16u);
        }
      }

      else
      {
        [v17 addObject:v11];
        identifier2 = [triggerCopy identifier];
        [identifiersCopy setObject:v17 forKeyedSubscript:identifier2];
      }
    }

    else
    {
      LOBYTE(v16) = 0;
    }
  }

  else
  {

    LOBYTE(v16) = 0;
  }

  return v16;
}

- (void)queue_handleEvent:(id)event forTrigger:(id)trigger
{
  v30 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  triggerCopy = trigger;
  queue = [(WFBiomeListener *)self queue];
  dispatch_assert_queue_V2(queue);

  if (!triggerCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFBiomeListener.m" lineNumber:172 description:{@"Invalid parameter not satisfying: %@", @"configuredTrigger"}];
  }

  trigger = [triggerCopy trigger];
  v11 = getWFTriggersLogObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [triggerCopy identifier];
    *buf = 136315906;
    v23 = "[WFBiomeListener queue_handleEvent:forTrigger:]";
    v24 = 2112;
    v25 = trigger;
    v26 = 2114;
    v27 = identifier;
    v28 = 2112;
    v29 = eventCopy;
    _os_log_impl(&dword_23103C000, v11, OS_LOG_TYPE_DEFAULT, "%s 🤖 Handling event for trigger with identifier (%@, %{public}@) and event: %@", buf, 0x2Au);
  }

  seenTransactionIdentifiers = [(WFBiomeListener *)self seenTransactionIdentifiers];
  v14 = [(WFBiomeListener *)self isTransactionEventDuplicate:eventCopy forTrigger:triggerCopy withSeenTransactionIdentifiers:seenTransactionIdentifiers];

  if (!v14)
  {
    identifier2 = [triggerCopy identifier];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __48__WFBiomeListener_queue_handleEvent_forTrigger___block_invoke;
    v17[3] = &unk_278900058;
    v18 = trigger;
    v19 = triggerCopy;
    v20 = eventCopy;
    selfCopy = self;
    [v18 shouldFireInResponseToEvent:v20 triggerIdentifier:identifier2 completion:v17];
  }
}

void __48__WFBiomeListener_queue_handleEvent_forTrigger___block_invoke(uint64_t a1, int a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = getWFTriggersLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v14 = "[WFBiomeListener queue_handleEvent:forTrigger:]_block_invoke";
    v15 = 1024;
    LODWORD(v16) = a2;
    _os_log_impl(&dword_23103C000, v4, OS_LOG_TYPE_DEFAULT, "%s 🤖 Should the trigger fire in response to this event? %d", buf, 0x12u);
  }

  if (a2)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __48__WFBiomeListener_queue_handleEvent_forTrigger___block_invoke_213;
    v11[3] = &unk_278900030;
    v5 = *(a1 + 48);
    v11[4] = *(a1 + 56);
    v6 = *(a1 + 32);
    v12 = *(a1 + 40);
    [v6 eventInfoForEvent:v5 completion:v11];
  }

  else
  {
    v7 = getWFTriggersLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = [*(a1 + 40) identifier];
      v10 = *(a1 + 48);
      *buf = 136315906;
      v14 = "[WFBiomeListener queue_handleEvent:forTrigger:]_block_invoke";
      v15 = 2112;
      v16 = v8;
      v17 = 2114;
      v18 = v9;
      v19 = 2112;
      v20 = v10;
      _os_log_impl(&dword_23103C000, v7, OS_LOG_TYPE_DEFAULT, "%s 🤖 Trigger (%@, %{public}@) should NOT fire in response to event: %@, dropping", buf, 0x2Au);
    }
  }
}

void __48__WFBiomeListener_queue_handleEvent_forTrigger___block_invoke_213(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__WFBiomeListener_queue_handleEvent_forTrigger___block_invoke_2;
  block[3] = &unk_2789000F8;
  v5 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v8 = v5;
  v9 = v3;
  v6 = v3;
  dispatch_async(v4, block);
}

void __48__WFBiomeListener_queue_handleEvent_forTrigger___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) identifier];
  v5 = v3;
  if (*(a1 + 48))
  {
    v4 = *(a1 + 48);
  }

  else
  {
    v4 = MEMORY[0x277CBEC10];
  }

  [v2 queue_fireTriggerWithIdentifier:v3 force:0 eventInfo:v4 completion:&__block_literal_global_6717];
}

void __48__WFBiomeListener_queue_handleEvent_forTrigger___block_invoke_3(uint64_t a1, char a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ((a2 & 1) == 0)
  {
    v5 = getWFTriggersLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315394;
      v7 = "[WFBiomeListener queue_handleEvent:forTrigger:]_block_invoke_3";
      v8 = 2114;
      v9 = v4;
      _os_log_impl(&dword_23103C000, v5, OS_LOG_TYPE_ERROR, "%s Failed to fire trigger: %{public}@", &v6, 0x16u);
    }
  }
}

- (void)queue_fireTriggerWithIdentifier:(id)identifier force:(BOOL)force eventInfo:(id)info completion:(id)completion
{
  forceCopy = force;
  completionCopy = completion;
  infoCopy = info;
  identifierCopy = identifier;
  queue = [(WFBiomeListener *)self queue];
  dispatch_assert_queue_V2(queue);

  if (identifierCopy)
  {
    if (completionCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFBiomeListener.m" lineNumber:165 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];

    if (completionCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFBiomeListener.m" lineNumber:166 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

LABEL_3:
  eventQueue = [(WFBiomeListener *)self eventQueue];
  [eventQueue enqueueTriggerWithIdentifier:identifierCopy eventInfo:infoCopy force:forceCopy completion:completionCopy];
}

- (void)fireTriggerWithIdentifier:(id)identifier force:(BOOL)force eventInfo:(id)info completion:(id)completion
{
  identifierCopy = identifier;
  infoCopy = info;
  completionCopy = completion;
  queue = [(WFBiomeListener *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__WFBiomeListener_fireTriggerWithIdentifier_force_eventInfo_completion___block_invoke;
  block[3] = &unk_2788FFFE8;
  block[4] = self;
  v18 = identifierCopy;
  forceCopy = force;
  v19 = infoCopy;
  v20 = completionCopy;
  v14 = completionCopy;
  v15 = infoCopy;
  v16 = identifierCopy;
  dispatch_async(queue, block);
}

- (void)queue_unregisterConfiguredTriggerWithIdentifier:(id)identifier
{
  v20 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  queue = [(WFBiomeListener *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = getWFTriggersLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136315394;
    v17 = "[WFBiomeListener queue_unregisterConfiguredTriggerWithIdentifier:]";
    v18 = 2114;
    v19 = identifierCopy;
    _os_log_impl(&dword_23103C000, v6, OS_LOG_TYPE_DEFAULT, "%s [Biome] Unregistering trigger with identifier: %{public}@", &v16, 0x16u);
  }

  triggerIDToSinks = [(WFBiomeListener *)self triggerIDToSinks];
  v8 = [triggerIDToSinks objectForKey:identifierCopy];

  remoteTriggerIDToSinks = [(WFBiomeListener *)self remoteTriggerIDToSinks];
  v10 = [remoteTriggerIDToSinks objectForKey:identifierCopy];

  if (!(v8 | v10))
  {
    remoteTriggerIDToSinks3 = getWFTriggersLogObject();
    if (os_log_type_enabled(remoteTriggerIDToSinks3, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 136315394;
      v17 = "[WFBiomeListener queue_unregisterConfiguredTriggerWithIdentifier:]";
      v18 = 2114;
      v19 = identifierCopy;
      _os_log_impl(&dword_23103C000, remoteTriggerIDToSinks3, OS_LOG_TYPE_DEFAULT, "%s [Biome] No sink associated with identifier: %{public}@, nothing to unregister", &v16, 0x16u);
    }

    goto LABEL_12;
  }

  if (v8)
  {
    [v8 cancel];
    triggerIDToSinks2 = [(WFBiomeListener *)self triggerIDToSinks];
    [triggerIDToSinks2 removeObjectForKey:identifierCopy];
  }

  if (v10)
  {
    remoteTriggerIDToSinks2 = [(WFBiomeListener *)self remoteTriggerIDToSinks];
    allValues = [remoteTriggerIDToSinks2 allValues];
    v14 = [allValues count];

    if (v14 <= 1)
    {
      [MEMORY[0x277D7CA50] unregisterContextSyncClient];
    }

    [v10 cancel];
    remoteTriggerIDToSinks3 = [(WFBiomeListener *)self remoteTriggerIDToSinks];
    [remoteTriggerIDToSinks3 removeObjectForKey:identifierCopy];
LABEL_12:
  }
}

- (void)unregisterConfiguredTriggerWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  queue = [(WFBiomeListener *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__WFBiomeListener_unregisterConfiguredTriggerWithIdentifier___block_invoke;
  v7[3] = &unk_2788FFFC0;
  v7[4] = self;
  v8 = identifierCopy;
  v6 = identifierCopy;
  dispatch_async(queue, v7);
}

- (void)registerConfiguredTrigger:(id)trigger completion:(id)completion
{
  triggerCopy = trigger;
  completionCopy = completion;
  queue = [(WFBiomeListener *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__WFBiomeListener_registerConfiguredTrigger_completion___block_invoke;
  block[3] = &unk_2788FFF98;
  v12 = triggerCopy;
  selfCopy = self;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = triggerCopy;
  dispatch_async(queue, block);
}

void __56__WFBiomeListener_registerConfiguredTrigger_completion___block_invoke(uint64_t a1)
{
  v61 = *MEMORY[0x277D85DE8];
  v2 = getWFTriggersLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 136315394;
    v58 = "[WFBiomeListener registerConfiguredTrigger:completion:]_block_invoke";
    v59 = 2112;
    v60 = v3;
    _os_log_impl(&dword_23103C000, v2, OS_LOG_TYPE_DEFAULT, "%s 🤖 [Biome] Registering configured trigger: %@", buf, 0x16u);
  }

  v4 = [*(a1 + 32) identifier];
  if ([*(a1 + 32) isEnabled])
  {
    v5 = [*(a1 + 32) trigger];
    v6 = [*(a1 + 40) triggerIDToSinks];
    v7 = [v6 objectForKey:v4];
    if (v7)
    {
    }

    else
    {
      v10 = [*(a1 + 40) remoteTriggerIDToSinks];
      v11 = [v10 objectForKey:v4];

      if (!v11)
      {
LABEL_11:
        v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.siriactionsd.%@", v4];
        v13 = objc_alloc(MEMORY[0x277CF1918]);
        v14 = [*(a1 + 40) queue];
        v46 = v12;
        v15 = [v13 initWithIdentifier:v12 targetQueue:v14];

        v45 = v15;
        v16 = [v5 publisherWithScheduler:v15];
        v55[0] = MEMORY[0x277D85DD0];
        v55[1] = 3221225472;
        v55[2] = __56__WFBiomeListener_registerConfiguredTrigger_completion___block_invoke_175;
        v55[3] = &unk_2788FFF48;
        v56 = v5;
        v52[0] = MEMORY[0x277D85DD0];
        v52[1] = 3221225472;
        v52[2] = __56__WFBiomeListener_registerConfiguredTrigger_completion___block_invoke_177;
        v52[3] = &unk_2788FFF70;
        v17 = v56;
        v53 = v17;
        v43 = *(a1 + 32);
        v18 = v43.i64[0];
        v54 = vextq_s8(v43, v43, 8uLL);
        v19 = [v16 sinkWithCompletion:v55 receiveInput:v52];

        if (v19)
        {
          v20 = [*(a1 + 40) triggerIDToSinks];
          [v20 setObject:v19 forKey:v4];

          if (![v17 hasRemotePublisher])
          {
            goto LABEL_22;
          }

          v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.siriactionsd.remote.%@", v4];
          v22 = objc_alloc(MEMORY[0x277CF1918]);
          v23 = [*(a1 + 40) queue];
          v24 = [v22 initWithIdentifier:v21 targetQueue:v23];

          v25 = [v17 remotePublisherWithScheduler:v24];
          v50[0] = MEMORY[0x277D85DD0];
          v50[1] = 3221225472;
          v50[2] = __56__WFBiomeListener_registerConfiguredTrigger_completion___block_invoke_185;
          v50[3] = &unk_2788FFF48;
          v51 = v17;
          v47[0] = MEMORY[0x277D85DD0];
          v47[1] = 3221225472;
          v47[2] = __56__WFBiomeListener_registerConfiguredTrigger_completion___block_invoke_186;
          v47[3] = &unk_2788FFF70;
          v48 = v51;
          v44 = *(a1 + 32);
          v26 = v44.i64[0];
          v49 = vextq_s8(v44, v44, 8uLL);
          v27 = [v25 sinkWithCompletion:v50 receiveInput:v47];

          if (v27)
          {
            v28 = [*(a1 + 40) remoteTriggerIDToSinks];
            [v28 setObject:v27 forKey:v4];
          }

          else
          {
            v35 = v21;
            v36 = getWFTriggersLogObject();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
            {
              v37 = [*(a1 + 32) trigger];
              v38 = objc_opt_class();
              v39 = NSStringFromClass(v38);
              *buf = 136315394;
              v58 = "[WFBiomeListener registerConfiguredTrigger:completion:]_block_invoke_2";
              v59 = 2114;
              v60 = v39;
              _os_log_impl(&dword_23103C000, v36, OS_LOG_TYPE_FAULT, "%s Could not register trigger of type %{public}@ due to missing remote sink", buf, 0x16u);
            }

            v40 = *(a1 + 48);
            v28 = [objc_opt_class() registrationError];
            (*(v40 + 16))(v40, 0, v28);
            v21 = v35;
          }

          if (v27)
          {
LABEL_22:
            v41 = getWFTriggersLogObject();
            if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
            {
              v42 = *(a1 + 32);
              *buf = 136315394;
              v58 = "[WFBiomeListener registerConfiguredTrigger:completion:]_block_invoke";
              v59 = 2112;
              v60 = v42;
              _os_log_impl(&dword_23103C000, v41, OS_LOG_TYPE_DEFAULT, "%s 🤖 [Biome] Registered configured trigger: %@", buf, 0x16u);
            }

            (*(*(a1 + 48) + 16))();
          }
        }

        else
        {
          v29 = getWFTriggersLogObject();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
          {
            v30 = [*(a1 + 32) trigger];
            v31 = objc_opt_class();
            v32 = NSStringFromClass(v31);
            *buf = 136315394;
            v58 = "[WFBiomeListener registerConfiguredTrigger:completion:]_block_invoke_2";
            v59 = 2114;
            v60 = v32;
            _os_log_impl(&dword_23103C000, v29, OS_LOG_TYPE_FAULT, "%s Could not register trigger of type %{public}@ due to missing sink", buf, 0x16u);
          }

          v33 = *(a1 + 48);
          v34 = [objc_opt_class() registrationError];
          (*(v33 + 16))(v33, 0, v34);
        }

        goto LABEL_26;
      }
    }

    [*(a1 + 40) queue_unregisterConfiguredTriggerWithIdentifier:v4];
    goto LABEL_11;
  }

  v8 = getWFTriggersLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    *buf = 136315394;
    v58 = "[WFBiomeListener registerConfiguredTrigger:completion:]_block_invoke";
    v59 = 2112;
    v60 = v9;
    _os_log_impl(&dword_23103C000, v8, OS_LOG_TYPE_DEFAULT, "%s 🤖 [Biome] Configured trigger %@ is not enabled", buf, 0x16u);
  }

  [*(a1 + 40) queue_unregisterConfiguredTriggerWithIdentifier:v4];
  (*(*(a1 + 48) + 16))();
LABEL_26:
}

void __56__WFBiomeListener_registerConfiguredTrigger_completion___block_invoke_175(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = getWFTriggersLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 136315394;
    v5 = "[WFBiomeListener registerConfiguredTrigger:completion:]_block_invoke";
    v6 = 2112;
    v7 = v3;
    _os_log_impl(&dword_23103C000, v2, OS_LOG_TYPE_DEFAULT, "%s 🤖 [Biome] Event cancelled %@", &v4, 0x16u);
  }
}

void __56__WFBiomeListener_registerConfiguredTrigger_completion___block_invoke_177(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = getWFTriggersLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 136315650;
    v13 = "[WFBiomeListener registerConfiguredTrigger:completion:]_block_invoke";
    v14 = 2112;
    v15 = v3;
    v16 = 2112;
    v17 = v5;
    _os_log_impl(&dword_23103C000, v4, OS_LOG_TYPE_DEFAULT, "%s 🤖 [Biome] Received input %@ from trigger %@", buf, 0x20u);
  }

  v6 = [*(a1 + 40) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__WFBiomeListener_registerConfiguredTrigger_completion___block_invoke_178;
  block[3] = &unk_2789000F8;
  v7 = *(a1 + 48);
  block[4] = *(a1 + 40);
  v10 = v3;
  v11 = v7;
  v8 = v3;
  dispatch_async(v6, block);
}

void __56__WFBiomeListener_registerConfiguredTrigger_completion___block_invoke_185(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = getWFTriggersLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 136315394;
    v5 = "[WFBiomeListener registerConfiguredTrigger:completion:]_block_invoke";
    v6 = 2112;
    v7 = v3;
    _os_log_impl(&dword_23103C000, v2, OS_LOG_TYPE_DEFAULT, "%s Event cancelled %@ remote", &v4, 0x16u);
  }
}

void __56__WFBiomeListener_registerConfiguredTrigger_completion___block_invoke_186(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = getWFTriggersLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 136315650;
    v13 = "[WFBiomeListener registerConfiguredTrigger:completion:]_block_invoke";
    v14 = 2112;
    v15 = v3;
    v16 = 2112;
    v17 = v5;
    _os_log_impl(&dword_23103C000, v4, OS_LOG_TYPE_DEFAULT, "%s Received input %@ from trigger %@", buf, 0x20u);
  }

  v6 = [*(a1 + 40) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__WFBiomeListener_registerConfiguredTrigger_completion___block_invoke_187;
  block[3] = &unk_2789000F8;
  v7 = *(a1 + 48);
  block[4] = *(a1 + 40);
  v10 = v3;
  v11 = v7;
  v8 = v3;
  dispatch_async(v6, block);
}

- (WFBiomeListener)initWithEventQueue:(id)queue
{
  queueCopy = queue;
  v19.receiver = self;
  v19.super_class = WFBiomeListener;
  v6 = [(WFBiomeListener *)&v19 init];
  if (v6)
  {
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_attr_make_with_qos_class(v7, QOS_CLASS_USER_INITIATED, 0);
    v9 = dispatch_queue_create("com.apple.siriactionsd.WFBiomeListener", v8);
    queue = v6->_queue;
    v6->_queue = v9;

    objc_storeStrong(&v6->_eventQueue, queue);
    v11 = objc_opt_new();
    triggerIDToSinks = v6->_triggerIDToSinks;
    v6->_triggerIDToSinks = v11;

    v13 = objc_opt_new();
    remoteTriggerIDToSinks = v6->_remoteTriggerIDToSinks;
    v6->_remoteTriggerIDToSinks = v13;

    v15 = objc_opt_new();
    seenTransactionIdentifiers = v6->_seenTransactionIdentifiers;
    v6->_seenTransactionIdentifiers = v15;

    v17 = v6;
  }

  return v6;
}

+ (id)registrationError
{
  v9[2] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277CBEB38]);
  v3 = *MEMORY[0x277CCA450];
  v8[0] = *MEMORY[0x277CCA470];
  v8[1] = v3;
  v9[0] = @"Automation could not be registered";
  v9[1] = @"The associated automation could not be registered due to an underlying error.";
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];
  v5 = [v2 initWithDictionary:v4];

  v6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D7D008] code:1002 userInfo:v5];

  return v6;
}

@end