@interface DRSTaskingMessageChannel
- (BOOL)subscribe:(id *)subscribe;
- (BOOL)unsubscribe:(id *)unsubscribe;
- (DRSTaskingMessageChannel)initWithCloudChannelConfig:(id)config payloadProcessingBlock:(id)block;
- (NSString)debugDescription;
- (void)connection:(id)connection channelSubscriptionsFailedWithFailures:(id)failures;
- (void)connection:(id)connection didReceiveIncomingMessage:(id)message;
- (void)connection:(id)connection didReceivePublicToken:(id)token;
- (void)connection:(id)connection didReceiveToken:(id)token forTopic:(id)topic identifier:(id)identifier;
@end

@implementation DRSTaskingMessageChannel

- (NSString)debugDescription
{
  v2 = MEMORY[0x277CCACA8];
  config = [(DRSTaskingMessageChannel *)self config];
  v4 = [config debugDescription];
  v5 = [v2 stringWithFormat:@"Subscribed Channel with config: %@", v4];

  return v5;
}

- (DRSTaskingMessageChannel)initWithCloudChannelConfig:(id)config payloadProcessingBlock:(id)block
{
  v48 = *MEMORY[0x277D85DE8];
  configCopy = config;
  blockCopy = block;
  v9 = blockCopy;
  if (!configCopy)
  {
    v21 = DPLogHandle_TaskingMessageChannelError(blockCopy);
    if (!os_signpost_enabled(v21))
    {
      goto LABEL_14;
    }

    *buf = 0;
    v22 = "InvalidChannelConfiguration";
    v23 = "Channel config cannot be nil";
    goto LABEL_12;
  }

  if (!blockCopy)
  {
    v21 = DPLogHandle_TaskingMessageChannelError(0);
    if (!os_signpost_enabled(v21))
    {
      goto LABEL_14;
    }

    *buf = 0;
    v22 = "MissingProcessingBlock";
    v23 = "Payload processing block is required.";
LABEL_12:
    v24 = v21;
    v25 = 2;
LABEL_13:
    _os_signpost_emit_with_name_impl(&dword_232906000, v24, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v22, v23, buf, v25);
    goto LABEL_14;
  }

  v43.receiver = self;
  v43.super_class = DRSTaskingMessageChannel;
  v10 = [(DRSTaskingMessageChannel *)&v43 init];
  self = v10;
  if (!v10)
  {
LABEL_22:
    self = self;
    selfCopy = self;
    goto LABEL_23;
  }

  objc_storeStrong(&v10->_config, config);
  v11 = _Block_copy(v9);
  processingBlock = self->_processingBlock;
  self->_processingBlock = v11;

  v13 = [(DRSTaskingMessageChannel *)self debugDescription];
  v14 = dispatch_queue_create([v13 UTF8String], 0);
  workQueue = self->_workQueue;
  self->_workQueue = v14;

  config = [(DRSTaskingMessageChannel *)self config];
  isNoSubscriptionConfig = [config isNoSubscriptionConfig];

  if (isNoSubscriptionConfig)
  {
LABEL_19:
    v35 = DPLogHandle_TaskingMessageChannel(v18);
    if (os_signpost_enabled(v35))
    {
      config2 = [(DRSTaskingMessageChannel *)self config];
      v37 = [config2 debugDescription];
      *buf = 138543362;
      v45 = v37;
      _os_signpost_emit_with_name_impl(&dword_232906000, v35, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "NewChannelInstance", "New channel instance: %{public}@", buf, 0xCu);
    }

    goto LABEL_22;
  }

  environment = [configCopy environment];
  if (environment == 1)
  {
    v20 = MEMORY[0x277CEE9E8];
  }

  else
  {
    if (environment != 2)
    {
LABEL_24:
      v21 = DPLogHandle_TaskingMessageChannelError(environment);
      if (!os_signpost_enabled(v21))
      {
        goto LABEL_14;
      }

      environment2 = [configCopy environment];
      *buf = 67109120;
      LODWORD(v45) = environment2;
      v22 = "InvalidEnvironmentEnum";
      v23 = "Invalid environment enum %hhu";
      v24 = v21;
      v25 = 8;
      goto LABEL_13;
    }

    v20 = MEMORY[0x277CEE9F0];
  }

  environment = *v20;
  if (!environment)
  {
    goto LABEL_24;
  }

  v21 = environment;
  channelName = [configCopy channelName];
  if (channelName)
  {
    v28 = channelName;
    v29 = objc_alloc(MEMORY[0x277CD9D98]);
    config3 = [(DRSTaskingMessageChannel *)self config];
    channelID = [config3 channelID];
    v32 = [v29 initWithChannelID:channelID];
    pubSubChannel = self->_pubSubChannel;
    self->_pubSubChannel = v32;

    apsEnvironmentString = self->_apsEnvironmentString;
    self->_apsEnvironmentString = &v21->isa;

    goto LABEL_19;
  }

  v40 = DPLogHandle_TaskingMessageChannelError(0);
  if (os_signpost_enabled(v40))
  {
    v41 = DRSSystemProfilePlatformStringForPlatform([configCopy platform]);
    v42 = +[DRSCloudChannelConfig stringForChannelType:](DRSCloudChannelConfig, "stringForChannelType:", [configCopy type]);
    *buf = 138543618;
    v45 = v41;
    v46 = 2114;
    v47 = v42;
    _os_signpost_emit_with_name_impl(&dword_232906000, v40, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "InvalidChannelConfiguration", "Failed to produce a channel name for %{public}@ %{public}@", buf, 0x16u);
  }

LABEL_14:
  selfCopy = 0;
LABEL_23:

  return selfCopy;
}

- (BOOL)subscribe:(id *)subscribe
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  workQueue = [(DRSTaskingMessageChannel *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__DRSTaskingMessageChannel_subscribe___block_invoke;
  block[3] = &unk_27899FA80;
  block[4] = self;
  block[5] = &v8;
  block[6] = subscribe;
  dispatch_sync(workQueue, block);

  LOBYTE(subscribe) = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return subscribe;
}

void __38__DRSTaskingMessageChannel_subscribe___block_invoke(uint64_t a1)
{
  v64[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) config];
  v3 = [v2 isNoSubscriptionConfig];

  if (v3)
  {
    v5 = DPLogHandle_TaskingMessageChannelError(v4);
    if (os_signpost_enabled(v5))
    {
      v6 = [*(a1 + 32) config];
      v7 = [v6 debugDescription];
      *buf = 138543362;
      v59 = v7;
      _os_signpost_emit_with_name_impl(&dword_232906000, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SubscriptionIsNoOp", "Not subscribing due to config %{public}@", buf, 0xCu);

LABEL_4:
      goto LABEL_5;
    }

    goto LABEL_5;
  }

  v8 = [*(a1 + 32) apsConnection];

  if (!v8)
  {
    v9 = objc_alloc(MEMORY[0x277CEEA10]);
    v10 = [*(a1 + 32) apsEnvironmentString];
    v11 = [*(a1 + 32) workQueue];
    v12 = [v9 initWithEnvironmentName:v10 namedDelegatePort:@"com.apple.aps.diagnosticpipeline.tasking" queue:v11];
    [*(a1 + 32) setApsConnection:v12];

    v13 = [*(a1 + 32) apsConnection];

    if (!v13)
    {
      v43 = DPLogHandle_TaskingMessageChannelError(v14);
      if (os_signpost_enabled(v43))
      {
        v44 = [*(a1 + 32) debugDescription];
        *buf = 138543362;
        v59 = v44;
        _os_signpost_emit_with_name_impl(&dword_232906000, v43, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "APSConnectionInitFailure", "Failed to create connection for %{public}@", buf, 0xCu);
      }

      if (*(a1 + 48))
      {
        v45 = MEMORY[0x277CCA9B8];
        v63 = *MEMORY[0x277CCA450];
        v64[0] = @"APSConnection could not be initialized";
        v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v64 forKeys:&v63 count:1];
        **(a1 + 48) = [v45 errorWithDomain:@"DiagnosticRequestCloudChannelError" code:0 userInfo:v46];
      }

      *(*(*(a1 + 40) + 8) + 24) = 0;
      return;
    }

    v15 = *(a1 + 32);
    v16 = [v15 apsConnection];
    [v16 setDelegate:v15];

    v17 = [*(a1 + 32) apsConnection];
    v62 = @"com.apple.symptomsd-diag";
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v62 count:1];
    [v17 setEnabledTopics:v18 ignoredTopics:0];
  }

  v19 = [*(a1 + 32) apsConnection];
  v56 = 0;
  v20 = [v19 registeredChannelsForTopic:@"com.apple.symptomsd-diag" error:&v56];
  v21 = v56;

  if (!v21)
  {
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v26 = v20;
    v27 = [v26 countByEnumeratingWithState:&v52 objects:v57 count:16];
    if (v27)
    {
      v29 = v27;
      v51 = 0;
      v30 = *v53;
      *&v28 = 138543362;
      v50 = v28;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v53 != v30)
          {
            objc_enumerationMutation(v26);
          }

          v32 = *(*(&v52 + 1) + 8 * i);
          v33 = [v32 channelID];
          v34 = [*(a1 + 32) pubSubChannel];
          v35 = [v34 channelID];
          v36 = [v33 isEqualToString:v35];

          if (v36)
          {
            v38 = DPLogHandle_TaskingMessageChannel(v37);
            if (os_signpost_enabled(v38))
            {
              v39 = [*(a1 + 32) debugDescription];
              *buf = v50;
              v59 = v39;
              _os_signpost_emit_with_name_impl(&dword_232906000, v38, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "AlreadySubscribedToChannel", "Already subscribed to %{public}@", buf, 0xCu);
            }

            v51 = 1;
          }

          else
          {
            v40 = [*(a1 + 32) apsConnection];
            [v40 unsubscribeFromChannel:v32 forTopic:@"com.apple.symptomsd-diag"];

            v38 = DPLogHandle_TaskingMessageChannelError(v41);
            if (os_signpost_enabled(v38))
            {
              v42 = [v32 channelID];
              *buf = v50;
              v59 = v42;
              _os_signpost_emit_with_name_impl(&dword_232906000, v38, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SubscribedToUnexpectedChannel", "Subscribed to unexpected channel %{public}@. Unsubscribing", buf, 0xCu);
            }
          }
        }

        v29 = [v26 countByEnumeratingWithState:&v52 objects:v57 count:16];
      }

      while (v29);

      if (v51)
      {
        goto LABEL_6;
      }
    }

    else
    {
    }

    v47 = [*(a1 + 32) apsConnection];
    v48 = [*(a1 + 32) pubSubChannel];
    [v47 subscribeToChannel:v48 forTopic:@"com.apple.symptomsd-diag"];

    v5 = DPLogHandle_TaskingMessageChannel(v49);
    if (os_signpost_enabled(v5))
    {
      v6 = [*(a1 + 32) debugDescription];
      *buf = 138543362;
      v59 = v6;
      _os_signpost_emit_with_name_impl(&dword_232906000, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ChannelSubscribe", "Subscribing to channel %{public}@", buf, 0xCu);
      goto LABEL_4;
    }

LABEL_5:

LABEL_6:
    *(*(*(a1 + 40) + 8) + 24) = 1;
    return;
  }

  v23 = DPLogHandle_TaskingMessageChannelError(v22);
  if (os_signpost_enabled(v23))
  {
    v24 = [*(a1 + 32) debugDescription];
    *buf = 138543618;
    v59 = v24;
    v60 = 2114;
    v61 = v21;
    _os_signpost_emit_with_name_impl(&dword_232906000, v23, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SubscribedChannelCheckFailure", "Failed to check for subscribed channel for %{public}@ due to error: %{public}@", buf, 0x16u);
  }

  if (*(a1 + 48))
  {
    v25 = v21;
    **(a1 + 48) = v21;
  }

  *(*(*(a1 + 40) + 8) + 24) = 0;
}

- (BOOL)unsubscribe:(id *)unsubscribe
{
  selfCopy = self;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  workQueue = [(DRSTaskingMessageChannel *)self workQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __40__DRSTaskingMessageChannel_unsubscribe___block_invoke;
  v6[3] = &unk_27899F8D8;
  v6[4] = selfCopy;
  v6[5] = &v7;
  dispatch_sync(workQueue, v6);

  LOBYTE(selfCopy) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return selfCopy;
}

void __40__DRSTaskingMessageChannel_unsubscribe___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) config];
  v3 = [v2 isNoSubscriptionConfig];

  if (!v3)
  {
    v8 = [*(a1 + 32) apsConnection];

    if (v8)
    {
      v10 = [*(a1 + 32) apsConnection];
      v11 = [*(a1 + 32) pubSubChannel];
      [v10 unsubscribeFromChannel:v11 forTopic:@"com.apple.symptomsd-diag"];

      v12 = [*(a1 + 32) apsConnection];
      [v12 shutdown];

      v13 = [*(a1 + 32) apsConnection];
      [v13 setDelegate:0];

      v5 = DPLogHandle_TaskingMessageChannel([*(a1 + 32) setApsConnection:0]);
      if (!os_signpost_enabled(v5))
      {
        goto LABEL_11;
      }

      v6 = [*(a1 + 32) debugDescription];
      v16 = 138543362;
      v17 = v6;
      v14 = "ChannelUnsubscribe";
      v15 = "Unsubscribing from channel %{public}@";
    }

    else
    {
      v5 = DPLogHandle_TaskingMessageChannel(v9);
      if (!os_signpost_enabled(v5))
      {
        goto LABEL_11;
      }

      v6 = [*(a1 + 32) debugDescription];
      v16 = 138543362;
      v17 = v6;
      v14 = "RedundantUnsubscribe";
      v15 = "No APS connection for %{public}@";
    }

    _os_signpost_emit_with_name_impl(&dword_232906000, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v14, v15, &v16, 0xCu);
    goto LABEL_10;
  }

  v5 = DPLogHandle_TaskingMessageChannelError(v4);
  if (os_signpost_enabled(v5))
  {
    v6 = [*(a1 + 32) config];
    v7 = [v6 debugDescription];
    v16 = 138543362;
    v17 = v7;
    _os_signpost_emit_with_name_impl(&dword_232906000, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "UnsubscribeIsNoOp", "Not subscribed due to config:\n%{public}@", &v16, 0xCu);

LABEL_10:
  }

LABEL_11:

  *(*(*(a1 + 40) + 8) + 24) = 1;
}

- (void)connection:(id)connection didReceivePublicToken:(id)token
{
  v13 = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  v6 = DPLogHandle_TaskingMessageChannel(tokenCopy);
  if (os_signpost_enabled(v6))
  {
    config = [(DRSTaskingMessageChannel *)self config];
    channelName = [config channelName];
    v9 = 138543618;
    v10 = tokenCopy;
    v11 = 2114;
    v12 = channelName;
    _os_signpost_emit_with_name_impl(&dword_232906000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ReceivedPublicDeviceToken", "Received public token %{public}@ for channel name %{public}@", &v9, 0x16u);
  }
}

- (void)connection:(id)connection didReceiveToken:(id)token forTopic:(id)topic identifier:(id)identifier
{
  v23 = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  topicCopy = topic;
  identifierCopy = identifier;
  v12 = DPLogHandle_TaskingMessageChannel(identifierCopy);
  if (os_signpost_enabled(v12))
  {
    config = [(DRSTaskingMessageChannel *)self config];
    channelName = [config channelName];
    v15 = 138544130;
    v16 = tokenCopy;
    v17 = 2114;
    v18 = topicCopy;
    v19 = 2114;
    v20 = identifierCopy;
    v21 = 2114;
    v22 = channelName;
    _os_signpost_emit_with_name_impl(&dword_232906000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ReceivedAPNSToken", "Received APNS token %{public}@ for topic: %{public}@ identifier: %{public}@ channel name: %{public}@", &v15, 0x2Au);
  }
}

- (void)connection:(id)connection didReceiveIncomingMessage:(id)message
{
  v23 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v6 = DPLogHandle_TaskingMessageChannel(messageCopy);
  if (os_signpost_enabled(v6))
  {
    v7 = [(DRSTaskingMessageChannel *)self debugDescription];
    userInfo = [messageCopy userInfo];
    v17 = 138543618;
    v18 = v7;
    v19 = 2114;
    v20 = userInfo;
    _os_signpost_emit_with_name_impl(&dword_232906000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ReceivedMessage", "Received message on %{public}@\n%{public}@", &v17, 0x16u);
  }

  userInfo2 = [messageCopy userInfo];
  v10 = [userInfo2 objectForKeyedSubscript:@"tasking_payload"];

  if (!v10)
  {
    v12 = DPLogHandle_TaskingMessageChannelError(v11);
    if (os_signpost_enabled(v12))
    {
      v13 = [(DRSTaskingMessageChannel *)self debugDescription];
      userInfo3 = [messageCopy userInfo];
      v17 = 138543874;
      v18 = v13;
      v19 = 2114;
      v20 = @"tasking_payload";
      v21 = 2114;
      v22 = userInfo3;
      _os_signpost_emit_with_name_impl(&dword_232906000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "MessageMissingPayload", "Message on %{public}@ missing %{public}@ key\n%{public}@", &v17, 0x20u);
    }
  }

  processingBlock = [(DRSTaskingMessageChannel *)self processingBlock];
  config = [(DRSTaskingMessageChannel *)self config];
  (processingBlock)[2](processingBlock, v10, config);
}

- (void)connection:(id)connection channelSubscriptionsFailedWithFailures:(id)failures
{
  v22 = *MEMORY[0x277D85DE8];
  failuresCopy = failures;
  v5 = DPLogHandle_TaskingMessageChannelError(failuresCopy);
  if (os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_232906000, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ChannelSubscriptionFailed", &unk_232980861, buf, 2u);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = failuresCopy;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * v10);
        v12 = DPLogHandle_TaskingMessageChannelError(v7);
        if (os_signpost_enabled(v12))
        {
          failureReason = [v11 failureReason];
          v14 = @"INVALID REASON. FILE A BUG AGAINST 'Apple Push Service|all'";
          if (!failureReason)
          {
            v14 = @"Bad channel ID";
          }

          *buf = 138543362;
          v20 = v14;
          _os_signpost_emit_with_name_impl(&dword_232906000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ChannelSubscriptionFailure", "Failure: %{public}@", buf, 0xCu);
        }

        ++v10;
      }

      while (v8 != v10);
      v7 = [v6 countByEnumeratingWithState:&v15 objects:v21 count:16];
      v8 = v7;
    }

    while (v7);
  }
}

@end