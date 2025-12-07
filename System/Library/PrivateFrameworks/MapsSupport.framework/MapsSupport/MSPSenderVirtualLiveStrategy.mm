@interface MSPSenderVirtualLiveStrategy
- (MSPSenderVirtualLiveStrategy)initWithGroupSession:(id)session;
- (void)fetchCapabilitiesForParticipants:(id)participants completion:(id)completion;
@end

@implementation MSPSenderVirtualLiveStrategy

- (MSPSenderVirtualLiveStrategy)initWithGroupSession:(id)session
{
  sessionCopy = session;
  mEMORY[0x277D0EC70] = [MEMORY[0x277D0EC70] sharedPlatform];
  isInternalInstall = [mEMORY[0x277D0EC70] isInternalInstall];

  if (isInternalInstall)
  {
    v10.receiver = self;
    v10.super_class = MSPSenderVirtualLiveStrategy;
    v7 = [(MSPSenderLiveStrategy *)&v10 initWithGroupSession:sessionCopy];
    if (v7)
    {
      v7->super.super.super._loggingOnly = 1;
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)fetchCapabilitiesForParticipants:(id)participants completion:(id)completion
{
  v21 = *MEMORY[0x277D85DE8];
  participantsCopy = participants;
  completionCopy = completion;
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = participantsCopy;
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

        v13 = *(*(&v16 + 1) + 8 * i);
        v14 = MSPSharedTripVirtualReceiverHandleGetReceiverCapabilities(v13);
        [v7 setObject:v14 forKeyedSubscript:{v13, v16}];
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v15 = [v7 copy];
  completionCopy[2](completionCopy, v15);
}

@end