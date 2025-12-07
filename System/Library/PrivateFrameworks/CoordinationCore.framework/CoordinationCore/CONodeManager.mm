@interface CONodeManager
- (BOOL)_updateBallot:(id)ballot;
- (COConstituent)leader;
- (COConstituent)me;
- (COMeshNode)nodeForMe;
- (CONodeManager)initWithExecutionContext:(id)context;
- (CONodeManagerDelegate)delegate;
- (NSString)description;
- (id)_constituentCharacteristics:(id)characteristics;
- (id)activeNodesWithSelfNode:(BOOL)node;
- (id)nodeControllerForConstituent:(id)constituent;
- (id)nodeControllerForIDS:(id)s;
- (id)shortDescription;
- (void)_bumpGeneration;
- (void)_checkForElectionCompletion:(id)completion nodeController:(id)controller;
- (void)_didDiscoverRecord:(id)record;
- (void)_didLoseRecord:(id)record;
- (void)_handleDiscoveryRecord:(id)record;
- (void)_handleEnqueuedCommandsForLostNode:(id)node error:(id)error;
- (void)_handleLostRecord:(id)record;
- (void)_informControllersAboutNewElectionInfo;
- (void)_informDelegateAboutNodeAddition:(id)addition oldState:(int64_t)state;
- (void)_informDelegateAboutNodeRemoval:(id)removal oldState:(int64_t)state;
- (void)_logElectionSummary;
- (void)_nodeBecameInactive:(id)inactive withReason:(int64_t)reason;
- (void)_nodeStartedElection:(id)election withElectionInfo:(id)info;
- (void)_nodeStopped:(id)stopped withReason:(int64_t)reason;
- (void)_reportLostLeader:(id)leader withReason:(int64_t)reason;
- (void)_resetBallot;
- (void)addBrowser:(id)browser;
- (void)backedOffNodeMovedOutOfElection:(id)election;
- (void)fast_fold_nodeController:(id)controller didReceiveElectionCmd:(id)cmd withCompletionHandler:(id)handler;
- (void)nodeController:(id)controller didAddTransport:(id)transport;
- (void)nodeController:(id)controller didReceiveCommand:(id)command;
- (void)nodeController:(id)controller didReceiveElectionCmd:(id)cmd withCompletionHandler:(id)handler;
- (void)nodeController:(id)controller didReceiveError:(id)error forCommand:(id)command;
- (void)nodeController:(id)controller didReceiveOnDemandNodeCreationRequest:(id)request;
- (void)nodeController:(id)controller didReceiveRequest:(id)request callback:(id)callback;
- (void)nodeController:(id)controller didRemoveTransport:(id)transport withError:(id)error;
- (void)nodeController:(id)controller didUpdateRemoteConstituent:(id)constituent to:(id)to;
- (void)nodeController:(id)controller didUpdateState:(int64_t)state to:(int64_t)to reason:(int64_t)reason withLastSentElectionInfo:(id)info;
- (void)pingLeader;
- (void)removeBrowser:(id)browser;
- (void)sendCommand:(id)command;
- (void)sendCommands:(id)commands;
- (void)setElectionElapsedTimer:(id)timer;
- (void)setElectionEnd:(unint64_t)end;
- (void)setElectionPrevious:(unint64_t)previous;
- (void)setElectionStart:(unint64_t)start;
- (void)start;
- (void)stopWithCompletionHandler:(id)handler;
@end

@implementation CONodeManager

- (CONodeManager)initWithExecutionContext:(id)context
{
  contextCopy = context;
  v19.receiver = self;
  v19.super_class = CONodeManager;
  v5 = [(CONodeManager *)&v19 init];
  if (v5)
  {
    v6 = [contextCopy copy];
    executionContext = v5->_executionContext;
    v5->_executionContext = v6;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    nodeControllers = v5->_nodeControllers;
    v5->_nodeControllers = dictionary;

    v10 = objc_alloc_init(COElectionInfo);
    electionInfo = v5->_electionInfo;
    v5->_electionInfo = v10;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    browsersObservers = v5->_browsersObservers;
    v5->_browsersObservers = dictionary2;

    v14 = [MEMORY[0x277CBEB98] set];
    acceptableCommands = v5->_acceptableCommands;
    v5->_acceptableCommands = v14;

    dictionary3 = [MEMORY[0x277CBEB38] dictionary];
    leaderCommands = v5->_leaderCommands;
    v5->_leaderCommands = dictionary3;
  }

  return v5;
}

- (id)shortDescription
{
  v3 = MEMORY[0x277CCACA8];
  executionContext = [(CONodeManager *)self executionContext];
  meshControllerDescription = [executionContext meshControllerDescription];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v3 stringWithFormat:@"[m:%@] <%@: %p>", meshControllerDescription, v7, self];

  return v8;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(CONodeManager *)self me];
  browsersObservers = [(CONodeManager *)self browsersObservers];
  v8 = [v3 stringWithFormat:@"<%@: %p, \n ME: %@, Browsers: %@>", v5, self, v6, browsersObservers];

  return v8;
}

- (void)start
{
  executionContext = [(CONodeManager *)self executionContext];
  [executionContext assertDispatchQueue];

  if (!self->_started)
  {
    self->_started = 1;
    objc_initWeak(&location, self);
    browsersObservers = [(CONodeManager *)self browsersObservers];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __22__CONodeManager_start__block_invoke;
    v5[3] = &unk_278E17478;
    objc_copyWeak(&v6, &location);
    v5[4] = self;
    [browsersObservers enumerateKeysAndObjectsUsingBlock:v5];

    [(CONodeManager *)self _bumpGeneration];
    [(CONodeManager *)self _resetBallot];
    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

void __22__CONodeManager_start__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __22__CONodeManager_start__block_invoke_2;
  v13[3] = &unk_278E17428;
  objc_copyWeak(&v14, (a1 + 40));
  v7 = [v5 addObserverUsingBlock:v13];
  v8 = [*(a1 + 32) browsersObservers];
  [v8 setObject:v7 forKey:v5];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __22__CONodeManager_start__block_invoke_4;
  v10[3] = &unk_278E17450;
  objc_copyWeak(&v12, (a1 + 40));
  v9 = v5;
  v11 = v9;
  [v9 startWithCompletionHandler:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&v14);
}

void __22__CONodeManager_start__block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = [WeakRetained executionContext];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __22__CONodeManager_start__block_invoke_3;
    v9[3] = &unk_278E16998;
    v11 = a2;
    v9[4] = v7;
    v10 = v5;
    [v8 dispatchAsync:v9];
  }
}

uint64_t __22__CONodeManager_start__block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (v2 == 1)
  {
    return [v3 _didDiscoverRecord:v4];
  }

  else
  {
    return [v3 _didLoseRecord:v4];
  }
}

void __22__CONodeManager_start__block_invoke_4(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = COCoreLogForCategory(15);
    v6 = v5;
    if (a2)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        __22__CONodeManager_start__block_invoke_4_cold_1();
      }

      goto LABEL_9;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [WeakRetained shortDescription];
      v8 = *(a1 + 32);
      v10 = 138543618;
      v11 = v7;
      v12 = 2112;
      v13 = v8;
      _os_log_impl(&dword_244378000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ successfully started browser %@", &v10, 0x16u);
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = *(a1 + 32);
      v6 = WeakRetained[6];
      WeakRetained[6] = v9;
LABEL_9:
    }
  }
}

- (void)stopWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  executionContext = [(CONodeManager *)self executionContext];
  [executionContext assertDispatchQueue];

  self->_started = 0;
  objc_initWeak(&location, self);
  executionContext2 = [(CONodeManager *)self executionContext];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __43__CONodeManager_stopWithCompletionHandler___block_invoke;
  v8[3] = &unk_278E17510;
  objc_copyWeak(&v10, &location);
  v8[4] = self;
  v7 = handlerCopy;
  v9 = v7;
  [executionContext2 dispatchAsync:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __43__CONodeManager_stopWithCompletionHandler___block_invoke(id *a1)
{
  v21 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v3 = COCoreLogForCategory(15);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [WeakRetained shortDescription];
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v4;
      _os_log_impl(&dword_244378000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ stopping", &buf, 0xCu);
    }

    v5 = [WeakRetained browsersObservers];
    [v5 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_4];

    *&buf = 0;
    *(&buf + 1) = &buf;
    v19 = 0x2020000000;
    v20 = 0;
    v6 = a1[4];
    objc_sync_enter(v6);
    v7 = [WeakRetained nodeControllers];
    v8 = [v7 count];
    *(*(&buf + 1) + 24) = v8;

    v9 = [WeakRetained nodeControllers];
    v10 = [v9 copy];

    v11 = [WeakRetained activeNodesWithSelfNode:1];
    v12 = [v11 count];

    objc_sync_exit(v6);
    if (*(*(&buf + 1) + 24))
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __43__CONodeManager_stopWithCompletionHandler___block_invoke_2;
      v13[3] = &unk_278E174E8;
      objc_copyWeak(v17, a1 + 6);
      p_buf = &buf;
      v14 = v10;
      v17[1] = v12;
      v15 = a1[5];
      [v14 enumerateKeysAndObjectsUsingBlock:v13];

      objc_destroyWeak(v17);
    }

    else
    {
      (*(a1[5] + 2))();
    }

    _Block_object_dispose(&buf, 8);
  }
}

void __43__CONodeManager_stopWithCompletionHandler___block_invoke_21(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v4 = a3;
  v5 = [MEMORY[0x277CBEB68] null];
  v6 = [v4 isEqual:v5];

  if ((v6 & 1) == 0)
  {
    [v7 removeObserver:v4];
    [v7 stop];
  }
}

void __43__CONodeManager_stopWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __43__CONodeManager_stopWithCompletionHandler___block_invoke_3;
  v9[3] = &unk_278E174C0;
  objc_copyWeak(v13, (a1 + 56));
  v12 = *(a1 + 48);
  v7 = *(a1 + 32);
  v8 = *(a1 + 64);
  v10 = v7;
  v13[1] = v8;
  v11 = *(a1 + 40);
  [v6 stopWithCompletionHandler:v9];

  objc_destroyWeak(v13);
}

void __43__CONodeManager_stopWithCompletionHandler___block_invoke_3(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(*(a1 + 48) + 8);
    v5 = *(v4 + 24) - 1;
    *(v4 + 24) = v5;
    if (!v5)
    {
      v6 = [WeakRetained electionEnd];
      if (v6 > [v3 electionStart])
      {
        v7 = [v3 executionContext];
        v23 = [v7 label];

        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        v8 = [*(a1 + 32) allValues];
        v9 = 0;
        v10 = 0;
        v11 = [v8 countByEnumeratingWithState:&v30 objects:v34 count:16];
        if (v11)
        {
          v12 = *v31;
          do
          {
            v13 = 0;
            do
            {
              if (*v31 != v12)
              {
                objc_enumerationMutation(v8);
              }

              v14 = [*(*(&v30 + 1) + 8 * v13) node];
              if ([v14 connectionType] == 2)
              {
                ++v10;
                if ([v14 discoveryType] == 2)
                {
                  ++v9;
                }
              }

              ++v13;
            }

            while (v11 != v13);
            v11 = [v8 countByEnumeratingWithState:&v30 objects:v34 count:16];
          }

          while (v11);
        }

        v15 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
        v16 = [v3 executionContext];
        v17 = [v16 analyticsRecorder];

        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = __43__CONodeManager_stopWithCompletionHandler___block_invoke_4;
        v24[3] = &unk_278E16428;
        v18 = *(a1 + 64);
        v27 = v10;
        v28 = v9;
        v29 = (v15 - v6) / 1000000000.0;
        v25 = v23;
        v26 = v18;
        v19 = v17[2];
        v20 = v23;
        v19(v17, 0x2857B5D48, v24);
      }

      (*(*(a1 + 40) + 16))();
      v21 = v3;
      objc_sync_enter(v21);
      [v21 setElectionElapsedTimer:0];
      v22 = [v21 nodeControllers];
      [v22 removeAllObjects];

      objc_sync_exit(v21);
    }
  }
}

id __43__CONodeManager_stopWithCompletionHandler___block_invoke_4(uint64_t a1)
{
  v10[6] = *MEMORY[0x277D85DE8];
  v10[0] = &unk_2857C8880;
  v9[0] = 0x2857B5E08;
  v9[1] = 0x2857B5E28;
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 40)];
  v10[1] = v2;
  v9[2] = 0x2857B5E48;
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 48)];
  v10[2] = v3;
  v9[3] = 0x2857B5E68;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 56)];
  v10[3] = v4;
  v9[4] = 0x2857B5DE8;
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 64)];
  v9[5] = 0x2857B5DC8;
  v6 = *(a1 + 32);
  v10[4] = v5;
  v10[5] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:6];

  return v7;
}

- (void)addBrowser:(id)browser
{
  browserCopy = browser;
  executionContext = [(CONodeManager *)self executionContext];
  [executionContext assertDispatchQueue];

  if (!self->_started)
  {
    browsersObservers = [(CONodeManager *)self browsersObservers];
    null = [MEMORY[0x277CBEB68] null];
    [browsersObservers setObject:null forKey:browserCopy];
  }
}

- (void)removeBrowser:(id)browser
{
  browserCopy = browser;
  executionContext = [(CONodeManager *)self executionContext];
  [executionContext assertDispatchQueue];

  if (!self->_started)
  {
    browsersObservers = [(CONodeManager *)self browsersObservers];
    [browsersObservers removeObjectForKey:browserCopy];
  }
}

- (void)sendCommands:(id)commands
{
  v16 = *MEMORY[0x277D85DE8];
  commandsCopy = commands;
  if ([commandsCopy count])
  {
    executionContext = [(CONodeManager *)self executionContext];
    [executionContext assertDispatchQueue];

    [(CONodeManager *)self pingLeader];
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = commandsCopy;
    v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        v10 = 0;
        do
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [(CONodeManager *)self sendCommand:*(*(&v11 + 1) + 8 * v10++), v11];
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }
}

- (void)sendCommand:(id)command
{
  commandCopy = command;
  executionContext = [(CONodeManager *)self executionContext];
  [executionContext assertDispatchQueue];

  destination = [commandCopy destination];
  if (!destination)
  {
    if ([MEMORY[0x277CFD0B8] isFastFoldEnabled])
    {
      electionInfo = [(CONodeManager *)self electionInfo];
      leader = [electionInfo leader];
    }

    else
    {
      leader = [(CONodeManager *)self leader];
    }

    v9 = [(CONodeManager *)self nodeControllerForConstituent:leader];
    v10 = [COMeshNode alloc];
    node = [v9 node];
    destination = [(COMeshNode *)v10 initWithNode:node];

    [commandCopy setDestination:destination];
  }

  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  remote = [(COMeshNode *)destination remote];
  v16 = [(CONodeManager *)self nodeControllerForConstituent:remote];

  if (!v16)
  {
    iDSIdentifier = [(COMeshNode *)destination IDSIdentifier];
    v16 = [(CONodeManager *)self nodeControllerForIDS:iDSIdentifier];
  }

  selfCopy = self;
  objc_initWeak(&location, v16);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __29__CONodeManager_sendCommand___block_invoke;
  v21[3] = &unk_278E17538;
  v21[4] = selfCopy;
  objc_copyWeak(v24, &location);
  v19 = commandCopy;
  v22 = v19;
  v24[1] = v12;
  v24[2] = v13;
  v24[3] = v14;
  v20 = destination;
  v23 = v20;
  [v16 sendCommand:v19 withCompletionHandler:v21];

  objc_destroyWeak(v24);
  objc_destroyWeak(&location);
}

void __29__CONodeManager_sendCommand___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v17 = a2;
  v7 = a3;
  v8 = a4;
  v9 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v11 = WeakRetained;
  if (v9)
  {
    v12 = WeakRetained == 0;
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_isKindOfClass())
    {
      v13 = [v9 delegate];
      if (!v8)
      {
        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
LABEL_13:

          goto LABEL_14;
        }

        v15 = *(a1 + 48);
        v14 = [v17 command];
        [v13 node:v15 didReceiveResponse:v7 toRequest:v14];
LABEL_12:

        goto LABEL_13;
      }
    }

    else
    {
      v13 = [v9 delegate];
      if (!v8)
      {
        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
          goto LABEL_13;
        }

        v16 = *(a1 + 48);
        v14 = [v17 command];
        [v13 node:v16 didSendCommand:v14];
        goto LABEL_12;
      }
    }

    v14 = [v17 command];
    [v9 nodeController:v11 didReceiveError:v8 forCommand:v14];
    goto LABEL_12;
  }

LABEL_14:
}

- (void)pingLeader
{
  executionContext = [(CONodeManager *)self executionContext];
  [executionContext assertDispatchQueue];

  if ([MEMORY[0x277CFD0B8] isFastFoldEnabled])
  {
    electionInfo = [(CONodeManager *)self electionInfo];
    leader = [electionInfo leader];
  }

  else
  {
    leader = [(CONodeManager *)self leader];
  }

  v5 = [(CONodeManager *)self nodeControllerForConstituent:leader];
  [v5 sendPing];
}

- (COConstituent)me
{
  executionContext = [(CONodeManager *)self executionContext];
  constituentForMe = [executionContext constituentForMe];

  return constituentForMe;
}

- (COMeshNode)nodeForMe
{
  executionContext = [(CONodeManager *)self executionContext];
  constituentForMe = [executionContext constituentForMe];

  v5 = [(CONodeManager *)self nodeControllerForConstituent:constituentForMe];
  node = [v5 node];

  v7 = [[COMeshNode alloc] initWithNode:node];

  return v7;
}

- (COConstituent)leader
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_leader;
  objc_sync_exit(selfCopy);

  return v3;
}

- (id)nodeControllerForConstituent:(id)constituent
{
  constituentCopy = constituent;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__13;
  v18 = __Block_byref_object_dispose__13;
  v19 = 0;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  nodeControllers = [(CONodeManager *)selfCopy nodeControllers];
  v7 = [nodeControllers copy];

  objc_sync_exit(selfCopy);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __46__CONodeManager_nodeControllerForConstituent___block_invoke;
  v11[3] = &unk_278E17560;
  v8 = constituentCopy;
  v12 = v8;
  v13 = &v14;
  [v7 enumerateKeysAndObjectsUsingBlock:v11];
  v9 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v9;
}

void __46__CONodeManager_nodeControllerForConstituent___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v10 = a3;
  v7 = [v10 node];
  v8 = [v7 remote];
  v9 = [v8 isEqual:*(a1 + 32)];

  if (v9)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    *a4 = 1;
  }
}

- (id)nodeControllerForIDS:(id)s
{
  sCopy = s;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__13;
  v18 = __Block_byref_object_dispose__13;
  v19 = 0;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  nodeControllers = [(CONodeManager *)selfCopy nodeControllers];
  v7 = [nodeControllers copy];

  objc_sync_exit(selfCopy);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __38__CONodeManager_nodeControllerForIDS___block_invoke;
  v11[3] = &unk_278E17560;
  v8 = sCopy;
  v12 = v8;
  v13 = &v14;
  [v7 enumerateKeysAndObjectsUsingBlock:v11];
  v9 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v9;
}

void __38__CONodeManager_nodeControllerForIDS___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v10 = a3;
  v7 = [v10 node];
  v8 = [v7 IDSIdentifier];
  v9 = [v8 isEqual:*(a1 + 32)];

  if (v9)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    *a4 = 1;
  }
}

- (id)activeNodesWithSelfNode:(BOOL)node
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__13;
  v16 = __Block_byref_object_dispose__13;
  array = [MEMORY[0x277CBEB18] array];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  nodeControllers = [(CONodeManager *)selfCopy nodeControllers];
  v7 = [nodeControllers copy];

  objc_sync_exit(selfCopy);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __41__CONodeManager_activeNodesWithSelfNode___block_invoke;
  v10[3] = &unk_278E17588;
  nodeCopy = node;
  v10[4] = &v12;
  [v7 enumerateKeysAndObjectsUsingBlock:v10];
  v8 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v8;
}

void __41__CONodeManager_activeNodesWithSelfNode___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  v4 = [v8 nodeAfterReconciliation];
  if ([v4 isActive] && ((*(a1 + 40) & 1) != 0 || (objc_msgSend(v8, "isLocalNodeController") & 1) == 0))
  {
    v5 = [COMeshNode alloc];
    v6 = [v8 node];
    v7 = [(COMeshNode *)v5 initWithNode:v6];

    [*(*(*(a1 + 32) + 8) + 40) addObject:v7];
  }
}

- (void)_didDiscoverRecord:(id)record
{
  recordCopy = record;
  executionContext = [(CONodeManager *)self executionContext];
  [executionContext assertDispatchQueue];

  if (self->_started)
  {
    [(CONodeManager *)self _handleDiscoveryRecord:recordCopy];
  }
}

- (void)_didLoseRecord:(id)record
{
  v12 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  executionContext = [(CONodeManager *)self executionContext];
  [executionContext assertDispatchQueue];

  v6 = COCoreLogForCategory(15);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    shortDescription = [(CONodeManager *)self shortDescription];
    v8 = 138543618;
    v9 = shortDescription;
    v10 = 2112;
    v11 = recordCopy;
    _os_log_impl(&dword_244378000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ lost a record %@", &v8, 0x16u);
  }

  if (self->_started)
  {
    [(CONodeManager *)self _handleLostRecord:recordCopy];
  }
}

- (void)nodeController:(id)controller didUpdateState:(int64_t)state to:(int64_t)to reason:(int64_t)reason withLastSentElectionInfo:(id)info
{
  v27 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  infoCopy = info;
  executionContext = [(CONodeManager *)self executionContext];
  [executionContext assertDispatchQueue];

  if (!self->_started)
  {
    goto LABEL_18;
  }

  v15 = COCoreLogForCategory(15);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    shortDescription = [(CONodeManager *)self shortDescription];
    v17 = CONodeControllerStateDescription(state);
    v18 = CONodeControllerStateDescription(to);
    v19 = 138544130;
    v20 = shortDescription;
    v21 = 2048;
    v22 = controllerCopy;
    v23 = 2114;
    v24 = v17;
    v25 = 2114;
    v26 = v18;
    _os_log_impl(&dword_244378000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ updated %p state from %{public}@ to %{public}@", &v19, 0x2Au);
  }

  if (to <= 3)
  {
    if (to == 1)
    {
      if ((state & 0xFFFFFFFFFFFFFFFDLL) == 0)
      {
        goto LABEL_18;
      }
    }

    else if (to != 2)
    {
      goto LABEL_18;
    }

    [(CONodeManager *)self _nodeBecameInactive:controllerCopy withReason:reason];
LABEL_16:
    [(CONodeManager *)self _informDelegateAboutNodeRemoval:controllerCopy oldState:state];
    goto LABEL_17;
  }

  switch(to)
  {
    case 4:
      [(CONodeManager *)self _nodeStopped:controllerCopy withReason:reason];
      goto LABEL_16;
    case 5:
      [(CONodeManager *)self _nodeStartedElection:controllerCopy withElectionInfo:infoCopy];
      [(CONodeManager *)self _informDelegateAboutNodeAddition:controllerCopy oldState:state];
      break;
    case 6:
      [(CONodeManager *)self _informDelegateAboutNodeAddition:controllerCopy oldState:state];
LABEL_17:
      [(CONodeManager *)self _checkForElectionCompletion:infoCopy nodeController:controllerCopy];
      break;
  }

LABEL_18:
}

- (void)fast_fold_nodeController:(id)controller didReceiveElectionCmd:(id)cmd withCompletionHandler:(id)handler
{
  v62 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  cmdCopy = cmd;
  handlerCopy = handler;
  executionContext = [(CONodeManager *)self executionContext];
  [executionContext assertDispatchQueue];

  if (self->_started)
  {
    v12 = COCoreLogForCategory(15);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      shortDescription = [(CONodeManager *)self shortDescription];
      *buf = 138543874;
      selfCopy3 = shortDescription;
      v54 = 2112;
      v55 = cmdCopy;
      v56 = 2048;
      v57 = controllerCopy;
      _os_log_debug_impl(&dword_244378000, v12, OS_LOG_TYPE_DEBUG, "%{public}@ got a command %@ from node controller %p", buf, 0x20u);
    }

    ballotBrowser = [(CONodeManager *)self ballotBrowser];
    ballot = [cmdCopy ballot];
    [ballotBrowser discoveryUsingBallot:ballot];

    v15 = [[COElectionInfo alloc] initWithCommand:cmdCopy];
    electionInfo = [(CONodeManager *)self electionInfo];
    v17 = [electionInfo hasSameGenerationAndLeader:v15];

    if (v17)
    {
      electionInfo2 = [(CONodeManager *)self electionInfo];
      handlerCopy[2](handlerCopy, electionInfo2);
LABEL_27:

      goto LABEL_28;
    }

    electionInfo3 = [(CONodeManager *)self electionInfo];
    generation = [electionInfo3 generation];

    generation2 = [(COElectionInfo *)v15 generation];
    if (generation > generation2)
    {
      v20 = COCoreLogForCategory(15);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        shortDescription2 = [(CONodeManager *)self shortDescription];
        electionInfo4 = [(CONodeManager *)self electionInfo];
        generation3 = [electionInfo4 generation];
        generation4 = [(COElectionInfo *)v15 generation];
        *buf = 138543874;
        selfCopy3 = shortDescription2;
        v54 = 2048;
        v55 = generation3;
        v56 = 2048;
        v57 = generation4;
        _os_log_impl(&dword_244378000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@ Our generation %llu is greater than the incoming generation %llu", buf, 0x20u);
      }

      electionInfo2 = [(CONodeManager *)self electionInfo];
      handlerCopy[2](handlerCopy, electionInfo2);
      goto LABEL_27;
    }

    node = [controllerCopy node];
    electionInfo2 = [node remote];

    electionInfo5 = [(CONodeManager *)self electionInfo];
    ballot2 = [electionInfo5 ballot];
    candidates = [ballot2 candidates];
    v29 = [candidates containsObject:electionInfo2];

    if (v29)
    {
      v30 = 0;
      goto LABEL_21;
    }

    electionInfo6 = [(CONodeManager *)self electionInfo];
    ballot3 = [electionInfo6 ballot];
    v33 = [ballot3 mutableCopy];

    [v33 addCandidate:electionInfo2];
    ipDiscoveryRecord = [controllerCopy ipDiscoveryRecord];
    v35 = ipDiscoveryRecord;
    if (ipDiscoveryRecord && [ipDiscoveryRecord shouldAdvertise])
    {
      if (![v33 addDiscoveryRecord:v35])
      {
LABEL_20:
        v30 = [(CONodeManager *)self _updateBallot:v33, generation];

LABEL_21:
        if (generation2 <= generation)
        {
          electionInfo7 = [(CONodeManager *)self electionInfo];
          handlerCopy[2](handlerCopy, electionInfo7);

          if (!v30)
          {
            goto LABEL_27;
          }
        }

        else
        {
          v38 = COCoreLogForCategory(15);
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            shortDescription3 = [(CONodeManager *)self shortDescription];
            *buf = 138543874;
            selfCopy3 = shortDescription3;
            v54 = 2048;
            v55 = generation;
            v56 = 2048;
            v57 = generation2;
            _os_log_impl(&dword_244378000, v38, OS_LOG_TYPE_DEFAULT, "%{public}@ bumping election generation from %llu to %llu", buf, 0x20u);
          }

          electionInfo8 = [(CONodeManager *)self electionInfo];
          [electionInfo8 setGeneration:generation2];

          [(CONodeManager *)self _resetBallot];
          electionInfo9 = [(CONodeManager *)self electionInfo];
          handlerCopy[2](handlerCopy, electionInfo9);
        }

        selfCopy = self;
        objc_sync_enter(selfCopy);
        nodeControllers = [(CONodeManager *)selfCopy nodeControllers];
        v45 = [nodeControllers copy];

        objc_sync_exit(selfCopy);
        v49[0] = MEMORY[0x277D85DD0];
        v49[1] = 3221225472;
        v49[2] = __86__CONodeManager_fast_fold_nodeController_didReceiveElectionCmd_withCompletionHandler___block_invoke;
        v49[3] = &unk_278E175B0;
        v50 = controllerCopy;
        v51 = selfCopy;
        [v45 enumerateKeysAndObjectsUsingBlock:v49];

        goto LABEL_27;
      }

      v36 = COCoreLogForCategory(11);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        discovery = [v33 discovery];
        *buf = 134218498;
        selfCopy3 = self;
        v54 = 2112;
        v55 = discovery;
        v56 = 2048;
        v57 = v33;
        _os_log_impl(&dword_244378000, v36, OS_LOG_TYPE_DEFAULT, "%p updated Discovery %@ in ballot %p when handling response", buf, 0x20u);
      }
    }

    else
    {
      v36 = COCoreLogForCategory(11);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134219010;
        selfCopy3 = self;
        v54 = 2112;
        v55 = v35;
        v56 = 2112;
        v57 = controllerCopy;
        v58 = 2048;
        v59 = v33;
        v60 = 2112;
        v61 = cmdCopy;
        _os_log_debug_impl(&dword_244378000, v36, OS_LOG_TYPE_DEBUG, "%p cannot add Discovery %@ for %@ to ballot %p when handling response %@", buf, 0x34u);
      }
    }

    goto LABEL_20;
  }

LABEL_28:
}

void __86__CONodeManager_fast_fold_nodeController_didReceiveElectionCmd_withCompletionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + 32) != a3)
  {
    v4 = *(a1 + 40);
    v5 = a3;
    v6 = [v4 electionInfo];
    [v5 updateElectionInfo:v6];
  }
}

- (void)nodeController:(id)controller didReceiveElectionCmd:(id)cmd withCompletionHandler:(id)handler
{
  v79 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  cmdCopy = cmd;
  handlerCopy = handler;
  if (![MEMORY[0x277CFD0B8] isFastFoldEnabled])
  {
    executionContext = [(CONodeManager *)self executionContext];
    [executionContext assertDispatchQueue];

    if (!self->_started)
    {
      goto LABEL_45;
    }

    v12 = COCoreLogForCategory(15);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      shortDescription = [(CONodeManager *)self shortDescription];
      *buf = 138543874;
      selfCopy3 = shortDescription;
      v71 = 2112;
      v72 = cmdCopy;
      v73 = 2048;
      v74 = controllerCopy;
      _os_log_debug_impl(&dword_244378000, v12, OS_LOG_TYPE_DEBUG, "%{public}@ got a command %@ from node controller %p", buf, 0x20u);
    }

    ballotBrowser = [(CONodeManager *)self ballotBrowser];
    ballot = [cmdCopy ballot];
    [ballotBrowser discoveryUsingBallot:ballot];

    v65 = [[COElectionInfo alloc] initWithCommand:cmdCopy];
    electionInfo = [(CONodeManager *)self electionInfo];
    v16 = [electionInfo hasGreaterGenerationThan:v65];

    if (v16)
    {
      v17 = COCoreLogForCategory(15);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        shortDescription2 = [(CONodeManager *)self shortDescription];
        electionInfo2 = [(CONodeManager *)self electionInfo];
        generation = [electionInfo2 generation];
        generation2 = [(COElectionInfo *)v65 generation];
        *buf = 138543874;
        selfCopy3 = shortDescription2;
        v71 = 2048;
        v72 = generation;
        v73 = 2048;
        v74 = generation2;
        _os_log_impl(&dword_244378000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ Our generation %llu is greater than the incoming generation %llu", buf, 0x20u);
      }

LABEL_9:

      electionInfo3 = [(CONodeManager *)self electionInfo];
      handlerCopy[2](handlerCopy, electionInfo3);
LABEL_44:

      goto LABEL_45;
    }

    electionInfo4 = [(CONodeManager *)self electionInfo];
    v24 = [electionInfo4 isEqual:v65];

    if (v24)
    {
      electionInfo3 = [(CONodeManager *)self electionInfo];
      handlerCopy[2](handlerCopy, electionInfo3);
      goto LABEL_44;
    }

    electionInfo5 = [(CONodeManager *)self electionInfo];
    v26 = [electionInfo5 hasSameGenerationAndLeader:v65];

    if (v26)
    {
      v17 = COCoreLogForCategory(15);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        shortDescription3 = [(CONodeManager *)self shortDescription];
        electionInfo6 = [(CONodeManager *)self electionInfo];
        leader = [electionInfo6 leader];
        electionInfo7 = [(CONodeManager *)self electionInfo];
        generation3 = [electionInfo7 generation];
        *buf = 138544130;
        selfCopy3 = shortDescription3;
        v71 = 2112;
        v72 = leader;
        v73 = 2048;
        v74 = generation3;
        v75 = 2112;
        v76 = controllerCopy;
        _os_log_impl(&dword_244378000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ The leader %@ and generation %llu for command  %@ on node has not changed", buf, 0x2Au);
      }

      goto LABEL_9;
    }

    electionInfo8 = [(CONodeManager *)self electionInfo];
    generation4 = [electionInfo8 generation];

    generation5 = [(COElectionInfo *)v65 generation];
    node = [controllerCopy node];
    electionInfo3 = [node remote];

    electionInfo9 = [(CONodeManager *)self electionInfo];
    ballot2 = [electionInfo9 ballot];
    candidates = [ballot2 candidates];
    v37 = [candidates containsObject:electionInfo3];

    if (v37)
    {
      v38 = 0;
      goto LABEL_31;
    }

    electionInfo10 = [(CONodeManager *)self electionInfo];
    ballot3 = [electionInfo10 ballot];
    v41 = [ballot3 mutableCopy];

    [v41 addCandidate:electionInfo3];
    ipDiscoveryRecord = [controllerCopy ipDiscoveryRecord];
    v43 = ipDiscoveryRecord;
    if (ipDiscoveryRecord && [ipDiscoveryRecord shouldAdvertise])
    {
      if (![v41 addDiscoveryRecord:v43])
      {
LABEL_26:
        v38 = [(CONodeManager *)self _updateBallot:v41];
        if (([MEMORY[0x277CFD0B8] isSlimBallotsEnabled] & 1) == 0)
        {
          v47 = COCoreLogForCategory(15);
          if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
          {
            shortDescription4 = [(CONodeManager *)self shortDescription];
            *buf = 138543618;
            selfCopy3 = shortDescription4;
            v71 = 2114;
            v72 = electionInfo3;
            _os_log_impl(&dword_244378000, v47, OS_LOG_TYPE_DEFAULT, "%{public}@ adding candidate %{public}@ to our ballot", buf, 0x16u);
          }

          v38 = 1;
        }

LABEL_31:
        if (generation5 > generation4)
        {
          v49 = COCoreLogForCategory(15);
          if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
          {
            shortDescription5 = [(CONodeManager *)self shortDescription];
            *buf = 138543874;
            selfCopy3 = shortDescription5;
            v71 = 2048;
            v72 = generation4;
            v73 = 2048;
            v74 = generation5;
            _os_log_impl(&dword_244378000, v49, OS_LOG_TYPE_DEFAULT, "%{public}@ upgrading election generation from %llu to %llu", buf, 0x20u);
          }

          electionInfo11 = [(CONodeManager *)self electionInfo];
          [electionInfo11 setGeneration:generation5];

          [(CONodeManager *)self _resetBallot];
          v38 = 1;
        }

        if (generation5 == generation4)
        {
          node2 = [controllerCopy node];
          if ([node2 isInElectionState])
          {
          }

          else
          {
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            if (isKindOfClass)
            {
              [(CONodeManager *)self _bumpGeneration];
              [(CONodeManager *)self _resetBallot];
              v54 = COCoreLogForCategory(15);
              if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
              {
                shortDescription6 = [(CONodeManager *)self shortDescription];
                electionInfo12 = [(CONodeManager *)self electionInfo];
                generation6 = [electionInfo12 generation];
                *buf = 138543618;
                selfCopy3 = shortDescription6;
                v71 = 2048;
                v72 = generation6;
                _os_log_impl(&dword_244378000, v54, OS_LOG_TYPE_DEFAULT, "%{public}@ Starting ELECTION %llu", buf, 0x16u);
              }

              electionInfo13 = [(CONodeManager *)self electionInfo];
              handlerCopy[2](handlerCopy, electionInfo13);

              goto LABEL_43;
            }
          }
        }

        electionInfo14 = [(CONodeManager *)self electionInfo];
        handlerCopy[2](handlerCopy, electionInfo14);

        if (!v38)
        {
          goto LABEL_44;
        }

LABEL_43:
        selfCopy = self;
        objc_sync_enter(selfCopy);
        nodeControllers = [(CONodeManager *)selfCopy nodeControllers];
        v62 = [nodeControllers copy];

        objc_sync_exit(selfCopy);
        v66[0] = MEMORY[0x277D85DD0];
        v66[1] = 3221225472;
        v66[2] = __76__CONodeManager_nodeController_didReceiveElectionCmd_withCompletionHandler___block_invoke;
        v66[3] = &unk_278E175B0;
        v67 = controllerCopy;
        v68 = selfCopy;
        [v62 enumerateKeysAndObjectsUsingBlock:v66];

        goto LABEL_44;
      }

      v44 = COCoreLogForCategory(11);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        discovery = [v41 discovery];
        *buf = 134218498;
        selfCopy3 = self;
        v71 = 2112;
        v72 = discovery;
        v73 = 2048;
        v74 = v41;
        _os_log_impl(&dword_244378000, v44, OS_LOG_TYPE_DEFAULT, "%p updated Discovery %@ in ballot %p when handling response", buf, 0x20u);
      }
    }

    else
    {
      v44 = COCoreLogForCategory(11);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134219010;
        selfCopy3 = self;
        v71 = 2112;
        v72 = v43;
        v73 = 2112;
        v74 = controllerCopy;
        v75 = 2048;
        v76 = v41;
        v77 = 2112;
        v78 = cmdCopy;
        _os_log_debug_impl(&dword_244378000, v44, OS_LOG_TYPE_DEBUG, "%p cannot add Discovery %@ for %@ to ballot %p when handling response %@", buf, 0x34u);
      }
    }

    goto LABEL_26;
  }

  [(CONodeManager *)self fast_fold_nodeController:controllerCopy didReceiveElectionCmd:cmdCopy withCompletionHandler:handlerCopy];
LABEL_45:
}

void __76__CONodeManager_nodeController_didReceiveElectionCmd_withCompletionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + 32) != a3)
  {
    v4 = *(a1 + 40);
    v5 = a3;
    v6 = [v4 electionInfo];
    [v5 updateElectionInfo:v6];
  }
}

- (void)nodeController:(id)controller didReceiveCommand:(id)command
{
  controllerCopy = controller;
  commandCopy = command;
  executionContext = [(CONodeManager *)self executionContext];
  [executionContext assertDispatchQueue];

  delegate = [(CONodeManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v10 = [COMeshNode alloc];
    node = [controllerCopy node];
    v12 = [(COMeshNode *)v10 initWithNode:node];

    [commandCopy _setSender:v12];
    [delegate node:v12 didReceiveCommand:commandCopy];
  }

  else
  {
    v13 = COCoreLogForCategory(15);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [CONodeManager nodeController:didReceiveCommand:];
    }
  }
}

- (void)nodeController:(id)controller didReceiveRequest:(id)request callback:(id)callback
{
  controllerCopy = controller;
  requestCopy = request;
  callbackCopy = callback;
  executionContext = [(CONodeManager *)self executionContext];
  [executionContext assertDispatchQueue];

  delegate = [(CONodeManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v13 = [COMeshNode alloc];
    node = [controllerCopy node];
    v15 = [(COMeshNode *)v13 initWithNode:node];

    [requestCopy _setSender:v15];
    [delegate node:v15 didReceiveRequest:requestCopy responseCallBack:callbackCopy];
  }

  else
  {
    v16 = COCoreLogForCategory(15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [CONodeManager nodeController:didReceiveRequest:callback:];
    }

    v15 = [MEMORY[0x277CCA9B8] errorWithDomain:@"COMeshNodeErrorDomain" code:-4001 userInfo:0];
    callbackCopy[2](callbackCopy, 0, v15);
  }
}

- (void)nodeController:(id)controller didReceiveError:(id)error forCommand:(id)command
{
  v24 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  errorCopy = error;
  commandCopy = command;
  executionContext = [(CONodeManager *)self executionContext];
  [executionContext assertDispatchQueue];

  delegate = [(CONodeManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v13 = [COMeshNode alloc];
    node = [controllerCopy node];
    v15 = [(COMeshNode *)v13 initWithNode:node];

    [commandCopy _setSender:v15];
    [delegate node:v15 didReceiveError:errorCopy forCommand:commandCopy];
  }

  else
  {
    v16 = COCoreLogForCategory(15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      shortDescription = [(CONodeManager *)self shortDescription];
      v18 = 138543874;
      v19 = shortDescription;
      v20 = 2112;
      v21 = commandCopy;
      v22 = 2112;
      v23 = errorCopy;
      _os_log_error_impl(&dword_244378000, v16, OS_LOG_TYPE_ERROR, "%{public}@ failed to send a command %@ with error %@", &v18, 0x20u);
    }
  }
}

- (void)nodeController:(id)controller didUpdateRemoteConstituent:(id)constituent to:(id)to
{
  v38 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  constituentCopy = constituent;
  toCopy = to;
  executionContext = [(CONodeManager *)self executionContext];
  [executionContext assertDispatchQueue];

  if (self->_started)
  {
    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"COMeshNodeErrorDomain" code:-4000 userInfo:0];
    [(CONodeManager *)self _handleEnqueuedCommandsForLostNode:controllerCopy error:v12];
    if ([MEMORY[0x277CFD0B8] isFastFoldEnabled])
    {
      electionInfo = [(CONodeManager *)self electionInfo];
      leader = [electionInfo leader];
    }

    else
    {
      leader = [(CONodeManager *)self leader];
    }

    if ([constituentCopy isEqual:leader])
    {
      executionContext2 = [(CONodeManager *)self executionContext];
      analyticsRecorder = [executionContext2 analyticsRecorder];

      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __62__CONodeManager_nodeController_didUpdateRemoteConstituent_to___block_invoke;
      v29[3] = &unk_278E16770;
      v29[4] = self;
      (analyticsRecorder->super._discovery)(analyticsRecorder, 0x2857B5D68, v29);
      [(CONodeManager *)self _bumpGeneration];
      [(CONodeManager *)self _resetBallot];
    }

    else
    {
      isInElection = [(CONodeManager *)self isInElection];
      if (!leader || isInElection)
      {
        goto LABEL_9;
      }

      if (![MEMORY[0x277CFD0B8] isFastFoldEnabled])
      {
        analyticsRecorder = [(COBallot *)[COMutableBallot alloc] initWithCandidate:leader];
        [(COMutableBallot *)analyticsRecorder addCandidate:toCopy];
        candidates = [(COBallot *)analyticsRecorder candidates];
        firstObject = [candidates firstObject];

        if (([firstObject isEqual:leader] & 1) == 0)
        {
          v24 = COCoreLogForCategory(15);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            shortDescription = [(CONodeManager *)self shortDescription];
            *buf = 138544130;
            v31 = shortDescription;
            v32 = 2112;
            v33 = controllerCopy;
            v34 = 2112;
            v35 = toCopy;
            v36 = 2112;
            v37 = leader;
            _os_log_impl(&dword_244378000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@ node controller changed %@ to a new constituent %@ that is better than our current leader %@", buf, 0x2Au);
          }

          [(CONodeManager *)self _bumpGeneration];
          [(CONodeManager *)self _resetBallot];
          [(CONodeManager *)self _informControllersAboutNewElectionInfo];
        }

        goto LABEL_8;
      }

      electionInfo2 = [(CONodeManager *)self electionInfo];
      ballot = [electionInfo2 ballot];
      if (ballot)
      {
        electionInfo3 = [(CONodeManager *)self electionInfo];
        [electionInfo3 ballot];
        v21 = v28 = electionInfo2;
        analyticsRecorder = [v21 mutableCopy];

        electionInfo2 = v28;
      }

      else
      {
        analyticsRecorder = objc_alloc_init(COMutableBallot);
      }

      [(COMutableBallot *)analyticsRecorder addCandidate:toCopy];
      if (![(CONodeManager *)self _updateBallot:analyticsRecorder])
      {
LABEL_8:

LABEL_9:
        goto LABEL_10;
      }

      v26 = COCoreLogForCategory(15);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        shortDescription2 = [(CONodeManager *)self shortDescription];
        *buf = 138544130;
        v31 = shortDescription2;
        v32 = 2112;
        v33 = controllerCopy;
        v34 = 2112;
        v35 = toCopy;
        v36 = 2112;
        v37 = leader;
        _os_log_impl(&dword_244378000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@ node controller changed %@ to a new constituent %@ that is better than our current leader %@", buf, 0x2Au);
      }
    }

    [(CONodeManager *)self _informControllersAboutNewElectionInfo];
    goto LABEL_8;
  }

LABEL_10:
}

id __62__CONodeManager_nodeController_didUpdateRemoteConstituent_to___block_invoke(uint64_t a1)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v5[0] = 0x2857B5228;
  v5[1] = 0x2857B5DC8;
  v6[0] = 0x2857B5EE8;
  v1 = [*(a1 + 32) executionContext];
  v2 = [v1 label];
  v6[1] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:2];

  return v3;
}

- (void)nodeController:(id)controller didAddTransport:(id)transport
{
  v29 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  transportCopy = transport;
  executionContext = [(CONodeManager *)self executionContext];
  [executionContext assertDispatchQueue];

  if (self->_started)
  {
    supportsLeaderElection = [transportCopy supportsLeaderElection];
    v10 = COCoreLogForCategory(15);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      shortDescription = [(CONodeManager *)self shortDescription];
      v12 = @"does not support";
      *v24 = 138544130;
      *&v24[12] = 2048;
      *&v24[4] = shortDescription;
      if (supportsLeaderElection)
      {
        v12 = @"supports";
      }

      *&v24[14] = controllerCopy;
      v25 = 2112;
      v26 = transportCopy;
      v27 = 2112;
      v28 = v12;
      _os_log_impl(&dword_244378000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ Node %p added a transport %@ that %@ election", v24, 0x2Au);
    }

    if (supportsLeaderElection)
    {
      node = [controllerCopy node];
      state = [node state];

      if (state)
      {
        isFastFoldEnabled = [MEMORY[0x277CFD0B8] isFastFoldEnabled];
        electionInfo = [(CONodeManager *)self electionInfo];
        v17 = electionInfo;
        if (isFastFoldEnabled)
        {

          if (!v17)
          {
            [(CONodeManager *)self _resetBallot];
          }

          [(CONodeManager *)self _informControllersAboutNewElectionInfo:*v24];
        }

        else
        {
          ballot = [electionInfo ballot];

          node2 = [controllerCopy node];
          remote = [node2 remote];

          candidates = [ballot candidates];
          v23 = [candidates containsObject:remote];

          if ((v23 & 1) == 0)
          {
            [(CONodeManager *)self _bumpGeneration];
            [(CONodeManager *)self _resetBallot];
            [(CONodeManager *)self _informControllersAboutNewElectionInfo];
          }
        }
      }

      else
      {
        electionInfo2 = [(CONodeManager *)self electionInfo];
        [controllerCopy updateElectionInfo:electionInfo2];
      }
    }

    else
    {
      [controllerCopy inquireForTransport:transportCopy];
    }
  }
}

- (void)nodeController:(id)controller didRemoveTransport:(id)transport withError:(id)error
{
  v62 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  transportCopy = transport;
  errorCopy = error;
  executionContext = [(CONodeManager *)self executionContext];
  [executionContext assertDispatchQueue];

  v12 = COCoreLogForCategory(15);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    shortDescription = [(CONodeManager *)self shortDescription];
    transports = [controllerCopy transports];
    *buf = 138544130;
    v55 = shortDescription;
    v56 = 2048;
    v57 = transportCopy;
    v58 = 2048;
    v59 = controllerCopy;
    v60 = 2114;
    v61 = transports;
    _os_log_impl(&dword_244378000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ Lost transport %p for node %p. Remaining transports = %{public}@", buf, 0x2Au);
  }

  transports2 = [controllerCopy transports];
  v16 = [transports2 count];

  if (v16)
  {
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    transports3 = [controllerCopy transports];
    v18 = [transports3 countByEnumeratingWithState:&v49 objects:v53 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = 0;
      v21 = *v50;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v50 != v21)
          {
            objc_enumerationMutation(transports3);
          }

          v20 |= [*(*(&v49 + 1) + 8 * i) supportsLeaderElection];
        }

        v19 = [transports3 countByEnumeratingWithState:&v49 objects:v53 count:16];
      }

      while (v19);
    }

    else
    {
      LOBYTE(v20) = 0;
    }

    node = [controllerCopy node];
    remote = [node remote];

    electionInfo = [(CONodeManager *)self electionInfo];
    ballot = [electionInfo ballot];

    candidates = [ballot candidates];
    v37 = [candidates containsObject:remote];

    if (v37 && (v20 & 1) == 0)
    {
      v48 = errorCopy;
      if ([MEMORY[0x277CFD0B8] isFastFoldEnabled])
      {
        electionInfo2 = [(CONodeManager *)self electionInfo];
        leader = [electionInfo2 leader];
      }

      else
      {
        leader = [(CONodeManager *)self leader];
      }

      node2 = [controllerCopy node];
      remote2 = [node2 remote];

      if (remote2)
      {
        v47 = transportCopy;
        v42 = [remote2 isEqual:leader];
        electionInfo3 = [(CONodeManager *)self electionInfo];
        ballot2 = [electionInfo3 ballot];
        v45 = [ballot2 mutableCopy];

        [v45 removeCandidate:remote2];
        [(CONodeManager *)self _updateBallot:v45];
        if (v42)
        {
          [(CONodeManager *)self _bumpGeneration];
          [(CONodeManager *)self _resetBallot];
          [(CONodeManager *)self _informControllersAboutNewElectionInfo];
        }

        else
        {
          electionInfo4 = [(CONodeManager *)self electionInfo];
          [(CONodeManager *)self _checkForElectionCompletion:electionInfo4 nodeController:controllerCopy];
        }

        transportCopy = v47;
      }

      errorCopy = v48;
    }
  }

  else
  {
    v23 = COCoreLogForCategory(15);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      shortDescription2 = [(CONodeManager *)self shortDescription];
      *buf = 138543618;
      v55 = shortDescription2;
      v56 = 2048;
      v57 = controllerCopy;
      _os_log_impl(&dword_244378000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@ Stopping node %p since we don't have any more transports available", buf, 0x16u);
    }

    domain = [errorCopy domain];
    v26 = [domain isEqualToString:0x2857B6328];

    if (v26)
    {
      if ([errorCopy code] == -5001)
      {
        v27 = 18;
      }

      else
      {
        v27 = 20;
      }

      if ([errorCopy code] == -5003)
      {
        underlyingErrors = [errorCopy underlyingErrors];
        firstObject = [underlyingErrors firstObject];

        domain2 = [firstObject domain];
        if ([domain2 isEqualToString:0x2857B5628])
        {
          code = [firstObject code];

          if (code == -6001)
          {
            v27 = 19;
          }
        }

        else
        {
        }
      }
    }

    else
    {
      v27 = 20;
    }

    [controllerCopy invalidateWithReason:v27];
  }
}

- (void)nodeController:(id)controller didReceiveOnDemandNodeCreationRequest:(id)request
{
  requestCopy = request;
  ballotBrowser = [(CONodeManager *)self ballotBrowser];
  [ballotBrowser discoveryUsingOnDemandNodeCreationRequest:requestCopy];
}

- (void)backedOffNodeMovedOutOfElection:(id)election
{
  electionCopy = election;
  node = [electionCopy node];
  totalBackedOffTime = [node totalBackedOffTime];
  longestBackOff = [(CONodeManager *)self longestBackOff];

  if (totalBackedOffTime > longestBackOff)
  {
    node2 = [electionCopy node];
    -[CONodeManager setLongestBackOff:](self, "setLongestBackOff:", [node2 totalBackedOffTime]);

    node3 = [electionCopy node];
    remote = [node3 remote];
    [(CONodeManager *)self setLongestBackedOffConstituent:remote];
  }
}

- (void)_bumpGeneration
{
  v17 = *MEMORY[0x277D85DE8];
  executionContext = [(CONodeManager *)self executionContext];
  [executionContext assertDispatchQueue];

  electionInfo = [(CONodeManager *)self electionInfo];
  v5 = [electionInfo generation] + 1;

  electionInfo2 = [(CONodeManager *)self electionInfo];
  [electionInfo2 setGeneration:v5];

  v7 = COCoreLogForCategory(15);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    shortDescription = [(CONodeManager *)self shortDescription];
    electionInfo3 = [(CONodeManager *)self electionInfo];
    leader = [electionInfo3 leader];
    v11 = 138543874;
    v12 = shortDescription;
    v13 = 2048;
    v14 = v5;
    v15 = 2114;
    v16 = leader;
    _os_log_impl(&dword_244378000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ bumping generation to %llu. Current leader = %{public}@", &v11, 0x20u);
  }
}

- (void)_resetBallot
{
  v18 = *MEMORY[0x277D85DE8];
  executionContext = [(CONodeManager *)self executionContext];
  [executionContext assertDispatchQueue];

  executionContext2 = [(CONodeManager *)self executionContext];
  constituentForMe = [executionContext2 constituentForMe];

  v6 = [[COBallot alloc] initWithCandidate:constituentForMe];
  electionInfo = [(CONodeManager *)self electionInfo];
  [electionInfo setBallot:v6];

  v8 = COCoreLogForCategory(15);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    shortDescription = [(CONodeManager *)self shortDescription];
    electionInfo2 = [(CONodeManager *)self electionInfo];
    v12 = 138543874;
    v13 = shortDescription;
    v14 = 2114;
    v15 = constituentForMe;
    v16 = 2048;
    generation = [electionInfo2 generation];
    _os_log_impl(&dword_244378000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ resetting ballot. Current leader = %{public}@. Current generation = %llu", &v12, 0x20u);
  }

  ballotBrowser = [(CONodeManager *)self ballotBrowser];
  [ballotBrowser clearRecords];
}

- (BOOL)_updateBallot:(id)ballot
{
  v28 = *MEMORY[0x277D85DE8];
  ballotCopy = ballot;
  if ([MEMORY[0x277CFD0B8] isSlimBallotsEnabled])
  {
    candidates = [ballotCopy candidates];
    v6 = [candidates count];

    if (!v6)
    {
      nodeForMe = [(CONodeManager *)self nodeForMe];
      underlyingNode = [nodeForMe underlyingNode];
      meConstituent = [underlyingNode meConstituent];
      [ballotCopy addCandidate:meConstituent];
    }
  }

  electionInfo = [(CONodeManager *)self electionInfo];
  leader = [electionInfo leader];

  electionInfo2 = [(CONodeManager *)self electionInfo];
  [electionInfo2 setBallot:ballotCopy];

  electionInfo3 = [(CONodeManager *)self electionInfo];
  leader2 = [electionInfo3 leader];

  v15 = [leader isEqual:leader2];
  if ((v15 & 1) == 0)
  {
    v16 = COCoreLogForCategory(15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      shortDescription = [(CONodeManager *)self shortDescription];
      electionInfo4 = [(CONodeManager *)self electionInfo];
      v20 = 138544130;
      v21 = shortDescription;
      v22 = 2114;
      v23 = leader;
      v24 = 2114;
      v25 = leader2;
      v26 = 2048;
      generation = [electionInfo4 generation];
      _os_log_impl(&dword_244378000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ Changing leader from %{public}@ to %{public}@. Current generation = %llu", &v20, 0x2Au);
    }
  }

  return v15 ^ 1;
}

- (void)_handleEnqueuedCommandsForLostNode:(id)node error:(id)error
{
  errorCopy = error;
  nodeCopy = node;
  executionContext = [(CONodeManager *)self executionContext];
  [executionContext assertDispatchQueue];

  if ([MEMORY[0x277CFD0B8] isFastFoldEnabled])
  {
    electionInfo = [(CONodeManager *)self electionInfo];
    leader = [electionInfo leader];
  }

  else
  {
    leader = [(CONodeManager *)self leader];
  }

  node = [nodeCopy node];
  remote = [node remote];
  v13 = [leader isEqual:remote];

  sentElements = [nodeCopy sentElements];
  v15 = [sentElements copy];

  sentElements2 = [nodeCopy sentElements];

  [sentElements2 removeAllObjects];
  if (v13)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __58__CONodeManager__handleEnqueuedCommandsForLostNode_error___block_invoke_2;
    v21[3] = &unk_278E17600;
    v22 = errorCopy;
    v18 = dictionary;
    v23 = v18;
    v19 = errorCopy;
    [v15 enumerateKeysAndObjectsUsingBlock:v21];
    v20 = COCoreLogForCategory(15);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [CONodeManager _handleEnqueuedCommandsForLostNode:error:];
    }

    [(CONodeManager *)self setLeaderCommands:v18];
  }

  else
  {
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __58__CONodeManager__handleEnqueuedCommandsForLostNode_error___block_invoke;
    v24[3] = &unk_278E175D8;
    v25 = errorCopy;
    v18 = errorCopy;
    [v15 enumerateKeysAndObjectsUsingBlock:v24];
    v19 = v25;
  }
}

void __58__CONodeManager__handleEnqueuedCommandsForLostNode_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    (*(v5 + 2))(v5, v8, 0, *(a1 + 32));
  }

  else
  {
    v6 = *(a1 + 40);
    v7 = MEMORY[0x245D5FF10](v5);
    [v6 setObject:v7 forKey:v8];
  }
}

- (void)_reportLostLeader:(id)leader withReason:(int64_t)reason
{
  leaderCopy = leader;
  executionContext = [(CONodeManager *)self executionContext];
  leaderElectionConfigured = [executionContext leaderElectionConfigured];

  if (leaderElectionConfigured)
  {
    executionContext2 = [(CONodeManager *)self executionContext];
    label = [executionContext2 label];

    v11 = reason - 6;
    if (reason - 6) <= 0xE && ((0x7D67u >> v11))
    {
      v12 = *off_278E17710[v11];
    }

    else
    {
      v12 = 0;
    }

    executionContext3 = [(CONodeManager *)self executionContext];
    analyticsRecorder = [executionContext3 analyticsRecorder];

    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __46__CONodeManager__reportLostLeader_withReason___block_invoke;
    v18[3] = &unk_278E17628;
    v19 = v12;
    v20 = label;
    v21 = leaderCopy;
    v15 = analyticsRecorder[2];
    v16 = label;
    v17 = v12;
    v15(analyticsRecorder, 0x2857B5D68, v18);
  }
}

id __46__CONodeManager__reportLostLeader_withReason___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB38] dictionary];
  [v2 setObject:*(a1 + 32) forKey:0x2857B5228];
  [v2 setObject:*(a1 + 40) forKey:0x2857B5DC8];
  if ([*(a1 + 32) isEqualToString:0x2857B5E88])
  {
    v3 = [*(a1 + 48) rapportTransport];
    v4 = v3;
    if (v3)
    {
      v5 = MEMORY[0x277CCABB0];
      [v3 currentPingTimeout];
      v6 = [v5 numberWithDouble:?];
      [v2 setObject:v6 forKey:0x2857B5E88];
    }
  }

  return v2;
}

- (void)setElectionPrevious:(unint64_t)previous
{
  if (self->_electionPrevious != previous)
  {
    if (!previous)
    {
      self->_electionEnd = 0;
    }

    self->_electionPrevious = previous;
  }
}

- (void)setElectionStart:(unint64_t)start
{
  if (self->_electionStart != start)
  {
    [(CONodeManager *)self setElectionElapsedTimer:0];
    [(CONodeManager *)self setElectionPrevious:self->_electionStart];
    self->_electionStart = start;
  }
}

- (void)setElectionEnd:(unint64_t)end
{
  v49 = *MEMORY[0x277D85DE8];
  if (self->_electionEnd != end)
  {
    electionPrevious = [(CONodeManager *)self electionPrevious];
    if (electionPrevious)
    {
      electionStart = [(CONodeManager *)self electionStart];
      v5 = [(CONodeManager *)self activeNodesWithSelfNode:1];
      if (self->_electionEnd)
      {
        v6 = (electionStart - electionPrevious) / 1000000000.0;
      }

      else
      {
        v6 = 0.0;
      }

      executionContext = [(CONodeManager *)self executionContext];
      label = [executionContext label];

      v27 = [v5 count];
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v8 = v5;
      totalBackedOffTime = 0;
      v10 = 0;
      v11 = 0;
      v12 = [v8 countByEnumeratingWithState:&v44 objects:v48 count:16];
      if (v12)
      {
        v13 = *v45;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v45 != v13)
            {
              objc_enumerationMutation(v8);
            }

            underlyingNode = [*(*(&v44 + 1) + 8 * i) underlyingNode];
            if ([underlyingNode connectionType] == 2)
            {
              ++v11;
              if ([underlyingNode discoveryType] == 2)
              {
                ++v10;
              }
            }

            if ([underlyingNode totalBackedOffTime] > totalBackedOffTime)
            {
              totalBackedOffTime = [underlyingNode totalBackedOffTime];
            }
          }

          v12 = [v8 countByEnumeratingWithState:&v44 objects:v48 count:16];
        }

        while (v12);
      }

      executionContext2 = [(CONodeManager *)self executionContext];
      analyticsRecorder = [executionContext2 analyticsRecorder];

      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __32__CONodeManager_setElectionEnd___block_invoke;
      v35[3] = &unk_278E17650;
      v38 = (end - electionStart) / 1000000.0;
      v39 = v27;
      v40 = v11;
      v41 = v10;
      v42 = v6;
      v18 = label;
      v43 = totalBackedOffTime;
      v36 = v18;
      selfCopy = self;
      (analyticsRecorder)[2](analyticsRecorder, 0x2857B5D48, v35);
      self->_electionEnd = end;
      electionElapsedTimer = [(CONodeManager *)self electionElapsedTimer];
      v20 = electionElapsedTimer == 0;

      if (v20)
      {
        executionContext3 = [(CONodeManager *)self executionContext];
        dispatchQueue = [executionContext3 dispatchQueue];

        v23 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, dispatchQueue);
        if (v23)
        {
          v24 = dispatch_walltime(0, 86400000000000);
          dispatch_source_set_timer(v23, v24, 0x4E94914F0000uLL, 0);
          objc_initWeak(&location, self);
          handler[0] = MEMORY[0x277D85DD0];
          handler[1] = 3221225472;
          handler[2] = __32__CONodeManager_setElectionEnd___block_invoke_2;
          handler[3] = &unk_278E17678;
          objc_copyWeak(v33, &location);
          v33[1] = electionPrevious;
          v33[2] = electionStart;
          v32 = analyticsRecorder;
          v33[3] = v27;
          v33[4] = v11;
          v33[5] = v10;
          v31 = v18;
          dispatch_source_set_event_handler(v23, handler);
          [(CONodeManager *)self setElectionElapsedTimer:v23];

          objc_destroyWeak(v33);
          objc_destroyWeak(&location);
        }
      }
    }
  }

  longestBackedOffConstituent = self->_longestBackedOffConstituent;
  self->_longestBackOff = 0;
  self->_longestBackedOffConstituent = 0;
}

id __32__CONodeManager_setElectionEnd___block_invoke(uint64_t a1)
{
  v15[7] = *MEMORY[0x277D85DE8];
  v14[0] = 0x2857B5E08;
  v2 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 48)];
  v15[0] = v2;
  v14[1] = 0x2857B5E28;
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 56)];
  v15[1] = v3;
  v14[2] = 0x2857B5E48;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 64)];
  v15[2] = v4;
  v14[3] = 0x2857B5E68;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 72)];
  v15[3] = v5;
  v14[4] = 0x2857B5DE8;
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 80)];
  v7 = *(a1 + 32);
  v15[4] = v6;
  v15[5] = v7;
  v14[5] = 0x2857B5DC8;
  v14[6] = 0x2857B6048;
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a1 + 88)];
  v15[6] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:7];
  v10 = [v9 mutableCopy];

  v11 = *(a1 + 40);
  if (v11[12])
  {
    v12 = [v11 _constituentCharacteristics:?];
    [v10 setObject:v12 forKey:0x2857B6068];
  }

  return v10;
}

void __32__CONodeManager_setElectionEnd___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(a1 + 56);
    if (v4 == [WeakRetained electionPrevious])
    {
      v5 = *(a1 + 64);
      if (v5 == [v3 electionStart])
      {
        v7[0] = MEMORY[0x277D85DD0];
        v7[1] = 3221225472;
        v7[2] = __32__CONodeManager_setElectionEnd___block_invoke_3;
        v7[3] = &unk_278E16388;
        v10 = *(a1 + 72);
        v11 = *(a1 + 88);
        v6 = *(a1 + 40);
        v8 = *(a1 + 32);
        v9 = v3;
        (*(v6 + 16))(v6, 0x2857B5D48, v7);
      }
    }
  }
}

id __32__CONodeManager_setElectionEnd___block_invoke_3(void *a1)
{
  v13[7] = *MEMORY[0x277D85DE8];
  v13[0] = &unk_2857C8880;
  v12[0] = 0x2857B5E08;
  v12[1] = 0x2857B5E28;
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1[6]];
  v13[1] = v2;
  v12[2] = 0x2857B5E48;
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1[7]];
  v13[2] = v3;
  v12[3] = 0x2857B5E68;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1[8]];
  v13[3] = v4;
  v13[4] = &unk_2857C8938;
  v12[4] = 0x2857B5DE8;
  v12[5] = 0x2857B5DC8;
  v5 = a1[5];
  v13[5] = a1[4];
  v12[6] = 0x2857B6048;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(v5 + 88)];
  v13[6] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:7];
  v8 = [v7 mutableCopy];

  v9 = a1[5];
  if (v9[12])
  {
    v10 = [v9 _constituentCharacteristics:?];
    [v8 setObject:v10 forKey:0x2857B6068];
  }

  return v8;
}

- (void)setElectionElapsedTimer:(id)timer
{
  timerCopy = timer;
  electionElapsedTimer = self->_electionElapsedTimer;
  p_electionElapsedTimer = &self->_electionElapsedTimer;
  v6 = electionElapsedTimer;
  v9 = timerCopy;
  if (electionElapsedTimer != timerCopy)
  {
    if (v6)
    {
      dispatch_source_cancel(v6);
    }

    objc_storeStrong(p_electionElapsedTimer, timer);
    if (*p_electionElapsedTimer)
    {
      dispatch_resume(*p_electionElapsedTimer);
    }
  }
}

- (void)_informControllersAboutNewElectionInfo
{
  executionContext = [(CONodeManager *)self executionContext];
  [executionContext assertDispatchQueue];

  selfCopy = self;
  objc_sync_enter(selfCopy);
  nodeControllers = [(CONodeManager *)selfCopy nodeControllers];
  v6 = [nodeControllers copy];

  objc_sync_exit(selfCopy);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__CONodeManager__informControllersAboutNewElectionInfo__block_invoke;
  v7[3] = &unk_278E176A0;
  v7[4] = selfCopy;
  [v6 enumerateKeysAndObjectsUsingBlock:v7];
}

void __55__CONodeManager__informControllersAboutNewElectionInfo__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = a3;
  v5 = [v3 electionInfo];
  [v4 updateElectionInfo:v5];
}

- (void)_handleDiscoveryRecord:(id)record
{
  v39 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  executionContext = [(CONodeManager *)self executionContext];
  [executionContext assertDispatchQueue];

  iDSIdentifier = [recordCopy IDSIdentifier];
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__13;
  v31 = __Block_byref_object_dispose__13;
  v32 = 0;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  nodeControllers = [(CONodeManager *)selfCopy nodeControllers];
  v9 = [nodeControllers objectForKey:iDSIdentifier];
  v10 = v28[5];
  v28[5] = v9;

  objc_sync_exit(selfCopy);
  v11 = v28[5];
  if (v11)
  {
    [v11 addDiscoveryRecord:recordCopy];
  }

  else
  {
    v12 = [CONodeController alloc];
    executionContext2 = [(CONodeManager *)selfCopy executionContext];
    v14 = [(CONodeController *)v12 initWithDiscoveryRecord:recordCopy executionContext:executionContext2];
    v15 = v28[5];
    v28[5] = v14;

    v16 = COCoreLogForCategory(15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      shortDescription = [(CONodeManager *)selfCopy shortDescription];
      v18 = v28[5];
      *buf = 138543874;
      v34 = shortDescription;
      v35 = 2048;
      v36 = v18;
      v37 = 2114;
      v38 = recordCopy;
      _os_log_impl(&dword_244378000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ created NodeController %p with record %{public}@", buf, 0x20u);
    }

    [v28[5] setDelegate:selfCopy];
    [v28[5] setAcceptableCommands:selfCopy->_acceptableCommands];
    v19 = selfCopy;
    objc_sync_enter(v19);
    nodeControllers2 = [(CONodeManager *)v19 nodeControllers];
    [nodeControllers2 setObject:v28[5] forKey:iDSIdentifier];

    objc_sync_exit(v19);
    objc_initWeak(buf, v19);
    v21 = v28[5];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __40__CONodeManager__handleDiscoveryRecord___block_invoke;
    v22[3] = &unk_278E176C8;
    objc_copyWeak(&v26, buf);
    v23 = recordCopy;
    v24 = iDSIdentifier;
    v25 = &v27;
    [v21 activateWithCompletionHandler:v22];

    objc_destroyWeak(&v26);
    objc_destroyWeak(buf);
  }

  _Block_object_dispose(&v27, 8);
}

void __40__CONodeManager__handleDiscoveryRecord___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v5 = COCoreLogForCategory(15);
    v6 = v5;
    if (v3)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        __40__CONodeManager__handleDiscoveryRecord___block_invoke_cold_1(WeakRetained, a1);
      }

      v6 = WeakRetained;
      objc_sync_enter(v6);
      v7 = [v6 nodeControllers];
      [v7 removeObjectForKey:*(a1 + 40)];

      objc_sync_exit(v6);
    }

    else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [WeakRetained shortDescription];
      v9 = *(*(*(a1 + 48) + 8) + 40);
      v10 = 138543618;
      v11 = v8;
      v12 = 2048;
      v13 = v9;
      _os_log_impl(&dword_244378000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ Successfully activated NodeController %p", &v10, 0x16u);
    }
  }
}

- (void)_handleLostRecord:(id)record
{
  recordCopy = record;
  executionContext = [(CONodeManager *)self executionContext];
  [executionContext assertDispatchQueue];

  iDSIdentifier = [recordCopy IDSIdentifier];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  nodeControllers = [(CONodeManager *)selfCopy nodeControllers];
  v8 = [nodeControllers objectForKey:iDSIdentifier];

  objc_sync_exit(selfCopy);
  if (v8)
  {
    [v8 removeDiscoveryRecord:recordCopy];
  }
}

- (void)_nodeStopped:(id)stopped withReason:(int64_t)reason
{
  v19 = *MEMORY[0x277D85DE8];
  stoppedCopy = stopped;
  node = [stoppedCopy node];
  iDSIdentifier = [node IDSIdentifier];

  v9 = COCoreLogForCategory(15);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    shortDescription = [(CONodeManager *)self shortDescription];
    v13 = 138543874;
    v14 = shortDescription;
    v15 = 2048;
    v16 = stoppedCopy;
    v17 = 2112;
    v18 = iDSIdentifier;
    _os_log_impl(&dword_244378000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ removing %p [IDS: %@] from our list", &v13, 0x20u);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  nodeControllers = [(CONodeManager *)selfCopy nodeControllers];
  [nodeControllers removeObjectForKey:iDSIdentifier];

  objc_sync_exit(selfCopy);
  [(CONodeManager *)selfCopy _nodeBecameInactive:stoppedCopy withReason:reason];
}

- (void)_nodeBecameInactive:(id)inactive withReason:(int64_t)reason
{
  v24 = *MEMORY[0x277D85DE8];
  inactiveCopy = inactive;
  executionContext = [(CONodeManager *)self executionContext];
  [executionContext assertDispatchQueue];

  node = [inactiveCopy node];
  remote = [node remote];

  if (remote)
  {
    executionContext2 = [(CONodeManager *)self executionContext];
    leaderElectionConfigured = [executionContext2 leaderElectionConfigured];

    if (leaderElectionConfigured)
    {
      if ([MEMORY[0x277CFD0B8] isFastFoldEnabled])
      {
        electionInfo = [(CONodeManager *)self electionInfo];
        leader = [electionInfo leader];
      }

      else
      {
        leader = [(CONodeManager *)self leader];
      }

      v14 = [MEMORY[0x277CCA9B8] errorWithDomain:0x2857B5A08 code:-4101 userInfo:0];
      [(CONodeManager *)self _handleEnqueuedCommandsForLostNode:inactiveCopy error:v14];

      if ([remote isEqual:leader])
      {
        v15 = COCoreLogForCategory(15);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          shortDescription = [(CONodeManager *)self shortDescription];
          v22 = 138543362;
          v23 = shortDescription;
          _os_log_impl(&dword_244378000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ leader lost", &v22, 0xCu);
        }

        [(CONodeManager *)self _bumpGeneration];
        [(CONodeManager *)self _resetBallot];
        [(CONodeManager *)self _informControllersAboutNewElectionInfo];
        [(CONodeManager *)self _reportLostLeader:inactiveCopy withReason:reason];
      }

      else
      {
        electionInfo2 = [(CONodeManager *)self electionInfo];
        ballot = [electionInfo2 ballot];
        v19 = [ballot mutableCopy];

        node2 = [inactiveCopy node];
        remote2 = [node2 remote];
        [v19 removeCandidate:remote2];

        [(CONodeManager *)self _updateBallot:v19];
      }
    }

    [inactiveCopy markInactive];
  }
}

- (void)_informDelegateAboutNodeAddition:(id)addition oldState:(int64_t)state
{
  additionCopy = addition;
  v7 = additionCopy;
  if (state <= 2)
  {
    v12 = additionCopy;
    additionCopy = [additionCopy isLocalNodeController];
    v7 = v12;
    if ((additionCopy & 1) == 0)
    {
      delegate = [(CONodeManager *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        v9 = [COMeshNode alloc];
        node = [v12 node];
        v11 = [(COMeshNode *)v9 initWithNode:node];

        [delegate didAddNode:v11];
      }

      v7 = v12;
    }
  }

  MEMORY[0x2821F96F8](additionCopy, v7);
}

- (void)_informDelegateAboutNodeRemoval:(id)removal oldState:(int64_t)state
{
  removalCopy = removal;
  if ((state - 5) <= 1)
  {
    v11 = removalCopy;
    delegate = [(CONodeManager *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v8 = [COMeshNode alloc];
      node = [v11 node];
      v10 = [(COMeshNode *)v8 initWithNode:node];

      [delegate didRemoveNode:v10];
    }

    removalCopy = v11;
  }
}

- (void)_nodeStartedElection:(id)election withElectionInfo:(id)info
{
  v23 = *MEMORY[0x277D85DE8];
  electionCopy = election;
  infoCopy = info;
  executionContext = [(CONodeManager *)self executionContext];
  [executionContext assertDispatchQueue];

  if ([MEMORY[0x277CFD0B8] isFastFoldEnabled])
  {
    v9 = COCoreLogForCategory(15);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      shortDescription = [(CONodeManager *)self shortDescription];
      v19 = 138543618;
      v20 = shortDescription;
      v21 = 2112;
      v22 = electionCopy;
      _os_log_impl(&dword_244378000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ node started election %@", &v19, 0x16u);
    }
  }

  else if ([MEMORY[0x277CFD0B8] isSlimBallotsEnabled])
  {
    executionContext2 = [(CONodeManager *)self executionContext];
    constituentForMe = [executionContext2 constituentForMe];

    node = [electionCopy node];
    meConstituent = [node meConstituent];
    if ([constituentForMe isEqual:meConstituent] && objc_msgSend(infoCopy, "generation") == 1)
    {
    }

    else
    {
      electionInfo = [(CONodeManager *)self electionInfo];
      v16 = [infoCopy isEqual:electionInfo];

      if (v16)
      {
        goto LABEL_15;
      }
    }
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(CONodeManager *)selfCopy setLeader:0];
  objc_sync_exit(selfCopy);

  if (![(CONodeManager *)selfCopy isInElection])
  {
    [(CONodeManager *)selfCopy setElectionStart:clock_gettime_nsec_np(_CLOCK_UPTIME_RAW)];
    [(CONodeManager *)selfCopy setIsInElection:1];
  }

  delegate = [(CONodeManager *)selfCopy delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate didStartElection];
  }

LABEL_15:
}

- (void)_checkForElectionCompletion:(id)completion nodeController:(id)controller
{
  v41 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  controllerCopy = controller;
  executionContext = [(CONodeManager *)self executionContext];
  [executionContext assertDispatchQueue];

  if ([(CONodeManager *)self isInElection])
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    nodeControllers = [(CONodeManager *)selfCopy nodeControllers];
    v11 = [nodeControllers copy];

    objc_sync_exit(selfCopy);
    v35 = 0;
    v36 = &v35;
    v37 = 0x2020000000;
    v38 = 1;
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __60__CONodeManager__checkForElectionCompletion_nodeController___block_invoke;
    v32[3] = &unk_278E17560;
    v33 = completionCopy;
    v34 = &v35;
    [v11 enumerateKeysAndObjectsUsingBlock:v32];
    if (*(v36 + 24) == 1)
    {
      v12 = COCoreLogForCategory(15);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        shortDescription = [(CONodeManager *)selfCopy shortDescription];
        *buf = 138543362;
        v40 = shortDescription;
        _os_log_impl(&dword_244378000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ all nodes have finished election. Moving to state processing", buf, 0xCu);
      }

      [(CONodeManager *)selfCopy _logElectionSummary];
      [(CONodeManager *)selfCopy setIsInElection:0];
      [(CONodeManager *)selfCopy setElectionEnd:clock_gettime_nsec_np(_CLOCK_UPTIME_RAW)];
      v14 = selfCopy;
      objc_sync_enter(v14);
      electionInfo = [(CONodeManager *)v14 electionInfo];
      ballot = [electionInfo ballot];
      candidates = [ballot candidates];
      firstObject = [candidates firstObject];

      [(CONodeManager *)v14 setLeader:firstObject];
      objc_sync_exit(v14);

      delegate = [(CONodeManager *)v14 delegate];
      if (objc_opt_respondsToSelector())
      {
        [delegate didCompleteElection];
      }

      electionInfo2 = [(CONodeManager *)v14 electionInfo];
      ballot2 = [electionInfo2 ballot];
      candidates2 = [ballot2 candidates];
      firstObject2 = [candidates2 firstObject];

      v24 = [(CONodeManager *)v14 nodeControllerForConstituent:firstObject2];
      leaderCommands = [(CONodeManager *)v14 leaderCommands];
      v26 = [leaderCommands mutableCopy];

      leaderCommands2 = [(CONodeManager *)v14 leaderCommands];
      [leaderCommands2 removeAllObjects];

      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __60__CONodeManager__checkForElectionCompletion_nodeController___block_invoke_66;
      v30[3] = &unk_278E175D8;
      v28 = v24;
      v31 = v28;
      [v26 enumerateKeysAndObjectsUsingBlock:v30];
    }

    _Block_object_dispose(&v35, 8);
  }

  else if ([controllerCopy isLocalNodeController])
  {
    delegate2 = [(CONodeManager *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate2 didCompleteElection];
    }
  }
}

void __60__CONodeManager__checkForElectionCompletion_nodeController___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v11 = a3;
  v6 = [v11 node];
  if (![v6 isActive])
  {
    goto LABEL_7;
  }

  v7 = [v11 supportsLeaderElection];

  if (!v7)
  {
    goto LABEL_10;
  }

  v6 = [v11 node];
  if ([v6 state] != 14)
  {

    goto LABEL_9;
  }

  if (!*(a1 + 32))
  {
LABEL_7:

    goto LABEL_10;
  }

  v8 = [v11 node];
  v9 = [v8 lastElectionInfoSent];
  v10 = [v9 hasSameGenerationAndLeader:*(a1 + 32)];

  if ((v10 & 1) == 0)
  {
LABEL_9:
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }

LABEL_10:
}

- (id)_constituentCharacteristics:(id)characteristics
{
  v3 = MEMORY[0x277CCACA8];
  characteristicsCopy = characteristics;
  device = [characteristicsCopy device];
  flags = [characteristicsCopy flags];

  return [v3 stringWithFormat:@"%d, %llu", device, flags];
}

- (void)_logElectionSummary
{
  v44 = *MEMORY[0x277D85DE8];
  string = [MEMORY[0x277CCAB68] string];
  string2 = [MEMORY[0x277CCAB68] string];
  string3 = [MEMORY[0x277CCAB68] string];
  executionContext = [(CONodeManager *)self executionContext];
  meshName = [executionContext meshName];

  electionInfo = [(CONodeManager *)self electionInfo];
  generation = [electionInfo generation];

  electionInfo2 = [(CONodeManager *)self electionInfo];
  ballot = [electionInfo2 ballot];
  candidates = [ballot candidates];
  firstObject = [candidates firstObject];

  selfCopy = self;
  objc_sync_enter(selfCopy);
  nodeControllers = [(CONodeManager *)selfCopy nodeControllers];
  v15 = [nodeControllers copy];

  objc_sync_exit(selfCopy);
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __36__CONodeManager__logElectionSummary__block_invoke;
  v32[3] = &unk_278E176F0;
  v16 = string3;
  v33 = v16;
  v17 = string2;
  v34 = v17;
  v18 = string;
  v35 = v18;
  [v15 enumerateKeysAndObjectsUsingBlock:v32];
  v19 = COCoreLogForCategory(8);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    executionContext2 = [(CONodeManager *)selfCopy executionContext];
    meshControllerDescription = [executionContext2 meshControllerDescription];
    *buf = 138413058;
    v37 = meshControllerDescription;
    v38 = 2114;
    v39 = meshName;
    v40 = 2048;
    v41 = generation;
    v42 = 2114;
    v43 = firstObject;
    _os_log_impl(&dword_244378000, v19, OS_LOG_TYPE_DEFAULT, "[m:%@] %{public}@ : Completed Election(%llu). Leader is %{public}@", buf, 0x2Au);
  }

  v22 = COCoreLogForCategory(8);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    executionContext3 = [(CONodeManager *)selfCopy executionContext];
    meshControllerDescription2 = [executionContext3 meshControllerDescription];
    *buf = 138413058;
    v37 = meshControllerDescription2;
    v38 = 2114;
    v39 = meshName;
    v40 = 2048;
    v41 = generation;
    v42 = 2114;
    v43 = v18;
    _os_log_impl(&dword_244378000, v22, OS_LOG_TYPE_DEFAULT, "[m:%@] %{public}@ : Candidate summary for Election(%llu)\n%{public}@", buf, 0x2Au);
  }

  v25 = COCoreLogForCategory(8);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    executionContext4 = [(CONodeManager *)selfCopy executionContext];
    meshControllerDescription3 = [executionContext4 meshControllerDescription];
    *buf = 138413058;
    v37 = meshControllerDescription3;
    v38 = 2114;
    v39 = meshName;
    v40 = 2048;
    v41 = generation;
    v42 = 2114;
    v43 = v16;
    _os_log_impl(&dword_244378000, v25, OS_LOG_TYPE_DEFAULT, "[m:%@] %{public}@ : Dormant trackers summary for Election(%llu)\n%{public}@", buf, 0x2Au);
  }

  v28 = COCoreLogForCategory(8);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    executionContext5 = [(CONodeManager *)selfCopy executionContext];
    meshControllerDescription4 = [executionContext5 meshControllerDescription];
    *buf = 138413058;
    v37 = meshControllerDescription4;
    v38 = 2114;
    v39 = meshName;
    v40 = 2048;
    v41 = generation;
    v42 = 2114;
    v43 = v17;
    _os_log_impl(&dword_244378000, v28, OS_LOG_TYPE_DEFAULT, "[m:%@] %{public}@ : Discovered trackers summary for Election(%llu)\n%{public}@", buf, 0x2Au);
  }
}

void __36__CONodeManager__logElectionSummary__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = a3;
  v4 = [v13 node];
  v5 = [v4 state];

  if (v5)
  {
    v6 = [v13 node];
    v7 = [v6 state];

    if (v7 == 2)
    {
      v8 = 32;
    }

    else
    {
      v9 = [v13 node];
      v10 = [v9 state];

      v8 = 48;
      if (v10 == 1)
      {
        v8 = 40;
      }
    }

    v11 = *(a1 + v8);
    v12 = [v13 electionSummaryDetails];
    [v11 appendFormat:@"%@\n", v12];
  }
}

- (CONodeManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __22__CONodeManager_start__block_invoke_4_cold_1()
{
  OUTLINED_FUNCTION_9();
  v2 = [v1 shortDescription];
  *v9 = 138543618;
  *&v9[4] = v2;
  *&v9[12] = 2112;
  *&v9[14] = *(v0 + 32);
  OUTLINED_FUNCTION_0_7(&dword_244378000, v3, v4, "%{public}@ failed to start browser %@", v5, v6, v7, v8, *v9, *&v9[8], *&v9[16]);
}

- (void)nodeController:didReceiveCommand:.cold.1()
{
  OUTLINED_FUNCTION_9();
  v1 = [v0 shortDescription];
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_0_7(&dword_244378000, v2, v3, "%{public}@ received a command %@ but has no delegate to deliver to", v4, v5, v6, v7);
}

- (void)nodeController:didReceiveRequest:callback:.cold.1()
{
  OUTLINED_FUNCTION_9();
  v1 = [v0 shortDescription];
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_0_7(&dword_244378000, v2, v3, "%{public}@ received a request %@ but has no delegate to deliver to", v4, v5, v6, v7);
}

- (void)_handleEnqueuedCommandsForLostNode:error:.cold.1()
{
  OUTLINED_FUNCTION_9();
  v2 = [v1 shortDescription];
  *v9 = 138543618;
  *&v9[4] = v2;
  *&v9[12] = 2048;
  *&v9[14] = [v0 count];
  OUTLINED_FUNCTION_0_7(&dword_244378000, v3, v4, "%{public}@ lost leader. Re-queuing %lu elements", v5, v6, v7, v8, *v9, *&v9[8], *&v9[16]);
}

void __40__CONodeManager__handleDiscoveryRecord___block_invoke_cold_1(void *a1, uint64_t a2)
{
  v3 = [a1 shortDescription];
  *v10 = 138543618;
  *&v10[4] = v3;
  *&v10[12] = 2114;
  *&v10[14] = *(a2 + 32);
  OUTLINED_FUNCTION_0_7(&dword_244378000, v4, v5, "%{public}@ failed to create a NodeController using Record %{public}@", v6, v7, v8, v9, *v10, *&v10[8], *&v10[16]);
}

@end