@interface UBUnblockReactiveRecovery
+ (id)getDiagnosticsQueue;
- (BOOL)avoidKillingTask:(id)task options:(unint64_t)options;
- (BOOL)takeLiveStackshot;
- (BOOL)taskIs3PApp:(id)app options:(unint64_t)options;
- (id)_recover:(unint64_t)_recover error:(id *)error;
- (id)dependencyChainForNode:(id)node processInfos:(id)infos options:(unint64_t)options;
- (id)initForStuckServices:(id)services clientName:(id)name;
- (id)prepareCrashMessage:(id)message;
- (id)processThreadInfosForDeadlock:(id)deadlock processInfos:(id)infos options:(unint64_t)options;
- (id)recover:(unint64_t)recover error:(id *)error;
- (id)selectNodeInDeadlocks:(id)deadlocks longerThan:(double)than serviceContext:(id)context;
- (id)selectNodeInDeadlocksBlockingTask:(id)task preferredMinimumDuration:(double)duration serviceContext:(id)context;
- (id)selectTaskBlockingTask:(id)task serviceContext:(id)context;
- (id)selectTaskForServiceNode:(id)node serviceResult:(id)result options:(unint64_t)options;
- (id)selectTaskInDefinitiveIssuesWithServiceContext:(id)context;
- (id)selectTaskInTasks:(id)tasks serviceContext:(id)context;
- (id)selectTaskInvolvedInAnyIssueWithServiceContext:(id)context;
- (id)selectThreadExhaustionBlockingTask:(id)task serviceContext:(id)context;
- (id)selectThreadExhaustionInThreadExhaustions:(id)exhaustions allowSuspended:(BOOL)suspended serviceContext:(id)context;
- (id)threadExhaustionsAboveLimit:(double)limit threadIDToThreadExhaustionDict:(id *)dict;
- (void)clearCaches;
- (void)dealloc;
- (void)doTermination:(id)termination options:(unint64_t)options;
- (void)emitTelemetryForError:(id)error;
- (void)fillInRecoveryInfo:(id)info deadlockNodeSelected:(id)selected exhaustedTaskSelected:(id)taskSelected threadExhaustions:(id)exhaustions options:(unint64_t)options;
- (void)findDeadlocks;
- (void)prepareDependencyGraph;
- (void)useStackshotBuffer:(const void *)buffer size:(unint64_t)size;
- (void)writeDiagnostics:(id)diagnostics terminatedProcBundleID:(id)d options:(unint64_t)options;
@end

@implementation UBUnblockReactiveRecovery

- (BOOL)takeLiveStackshot
{
  v3 = TakeLiveStackshot();
  stackshotData = self->_stackshotData;
  self->_stackshotData = v3;

  return self->_stackshotData != 0;
}

- (void)prepareDependencyGraph
{
  sampleStore = self->_sampleStore;
  if (sampleStore && ((-[SASampleStore timestampOfLastStackshot](sampleStore, "timestampOfLastStackshot"), (v4 = objc_claimAutoreleasedReturnValue()) != 0) || (-[SASampleStore sampleTimestamps](self->_sampleStore, "sampleTimestamps"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 count], v8, v9) && (-[SASampleStore sampleTimestamps](self->_sampleStore, "sampleTimestamps"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "lastObject"), v12 = objc_claimAutoreleasedReturnValue(), v10, (v4 = v12) != 0)))
  {
    v11 = v4;
    v5 = [MEMORY[0x277D4B420] dependencyGraphForThreadsInSampleStore:self->_sampleStore atTimestamp:v4];
    dependencyGraph = self->_dependencyGraph;
    self->_dependencyGraph = v5;

    v7 = v11;
  }

  else
  {
    v7 = self->_dependencyGraph;
    self->_dependencyGraph = 0;
  }
}

- (void)findDeadlocks
{
  v3 = objc_autoreleasePoolPush();
  if (self->_dependencyGraph)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    dependencyGraph = self->_dependencyGraph;
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __52__UBUnblockReactiveRecovery_Deadlock__findDeadlocks__block_invoke;
    v18 = &unk_279E02C08;
    v19 = v5;
    v20 = v4;
    v7 = v4;
    v8 = v5;
    [(NSDictionary *)dependencyGraph enumerateKeysAndObjectsUsingBlock:&v15];
    v9 = [v7 copy];
    deadlocks = self->_deadlocks;
    self->_deadlocks = v9;

    v11 = [v8 copy];
    threadIDToDeadlockDict = self->_threadIDToDeadlockDict;
    self->_threadIDToDeadlockDict = v11;
  }

  else
  {
    v13 = self->_deadlocks;
    self->_deadlocks = 0;

    v14 = self->_threadIDToDeadlockDict;
    self->_threadIDToDeadlockDict = 0;
  }

  objc_autoreleasePoolPop(v3);
}

- (id)selectNodeInDeadlocksBlockingTask:(id)task preferredMinimumDuration:(double)duration serviceContext:(id)context
{
  v30 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  contextCopy = context;
  context = objc_autoreleasePoolPush();
  v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  threads = [taskCopy threads];
  v11 = [threads countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (!v11)
  {
    goto LABEL_15;
  }

  v12 = v11;
  v13 = 0;
  v14 = *v26;
  do
  {
    for (i = 0; i != v12; ++i)
    {
      if (*v26 != v14)
      {
        objc_enumerationMutation(threads);
      }

      context = [(NSDictionary *)self->_threadIDToDeadlockDict objectForKeyedSubscript:*(*(&v25 + 1) + 8 * i), context];
      v17 = context;
      if (context)
      {
        [context timeSpentDeadlocked];
        v19 = v18 >= duration;
        if (v18 < duration)
        {
          if (v13)
          {
            v13 = 1;
            goto LABEL_13;
          }
        }

        else if ((v13 & 1) == 0)
        {
          [v9 removeAllObjects];
        }

        [v9 addObject:v17];
        v13 = v19;
      }

LABEL_13:
    }

    v12 = [threads countByEnumeratingWithState:&v25 objects:v29 count:16];
  }

  while (v12);
LABEL_15:

  if ([v9 count])
  {
    v20 = contextCopy;
    v21 = [(UBUnblockReactiveRecovery *)self selectNodeInDeadlocks:v9 longerThan:contextCopy serviceContext:0.0];
  }

  else
  {
    v21 = 0;
    v20 = contextCopy;
  }

  objc_autoreleasePoolPop(context);

  return v21;
}

- (id)selectNodeInDeadlocks:(id)deadlocks longerThan:(double)than serviceContext:(id)context
{
  v92 = *MEMORY[0x277D85DE8];
  deadlocksCopy = deadlocks;
  contextCopy = context;
  if ([deadlocksCopy count])
  {
    selfCopy = self;
    v70 = contextCopy;
    v71 = objc_alloc_init(MEMORY[0x277CCA940]);
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    v81 = 0u;
    v69 = deadlocksCopy;
    obj = deadlocksCopy;
    v10 = [obj countByEnumeratingWithState:&v78 objects:v91 count:16];
    if (v10)
    {
      v11 = v10;
      v73 = 0.0;
      v12 = *v79;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v79 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v78 + 1) + 8 * i);
          [v14 timeSpentDeadlocked];
          v16 = v15;
          tasksInvolved = [v14 tasksInvolved];
          v18 = tasksInvolved;
          if (v16 >= than)
          {
            v26 = [tasksInvolved count];
            tasksBlocked = [v14 tasksBlocked];
            v28 = [tasksBlocked count] + v26;

            if (*&v73 <= v28)
            {
              if (*&v73 < v28)
              {
                [v71 removeAllObjects];
                v73 = *&v28;
              }

              tasksInvolved2 = [v14 tasksInvolved];
              [v71 unionSet:tasksInvolved2];
            }

            else
            {
              tasksInvolved3 = [v14 tasksInvolved];
              tasksInvolved2 = [tasksInvolved3 anyObject];

              v30 = __error();
              v31 = *v30;
              v32 = _ublogt(v30);
              if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
              {
                name = [tasksInvolved2 name];
                v34 = [tasksInvolved2 pid];
                *buf = 138544130;
                v84 = name;
                v85 = 1024;
                v86 = v34;
                v87 = 2048;
                v88 = v28;
                v89 = 2048;
                thanCopy = v73;
                _os_log_impl(&dword_270397000, v32, OS_LOG_TYPE_INFO, "Task <%{public}@[%d]>: Deadlocked or affected by a deadlock, but only %lu task affected (found deadlock affecting %lu), ignoring.", buf, 0x26u);
              }

              *__error() = v31;
            }
          }

          else
          {
            tasksInvolved2 = [tasksInvolved anyObject];

            v20 = __error();
            v21 = *v20;
            v22 = _ublogt(v20);
            if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
            {
              name2 = [tasksInvolved2 name];
              v24 = [tasksInvolved2 pid];
              [v14 timeSpentDeadlocked];
              *buf = 138544130;
              v84 = name2;
              v85 = 1024;
              v86 = v24;
              v87 = 2048;
              v88 = v25;
              v89 = 2048;
              thanCopy = than;
              _os_log_impl(&dword_270397000, v22, OS_LOG_TYPE_INFO, "Task <%{public}@[%d]>: Deadlocked or affected by a deadlock, but only for %f (limit %f), ignoring.", buf, 0x26u);
            }

            *__error() = v21;
          }
        }

        v11 = [obj countByEnumeratingWithState:&v78 objects:v91 count:16];
      }

      while (v11);
    }

    else
    {
      v73 = 0.0;
    }

    v36 = v71;
    if ([v71 count])
    {
      contextCopy = v70;
      v37 = [(UBUnblockReactiveRecovery *)selfCopy selectTaskInTasks:v71 serviceContext:v70];
      if (v37)
      {
        v76 = 0u;
        v77 = 0u;
        v74 = 0u;
        v75 = 0u;
        v38 = obj;
        v39 = [v38 countByEnumeratingWithState:&v74 objects:v82 count:16];
        if (v39)
        {
          v40 = v39;
          v41 = *v75;
          while (2)
          {
            for (j = 0; j != v40; ++j)
            {
              if (*v75 != v41)
              {
                objc_enumerationMutation(v38);
              }

              v43 = *(*(&v74 + 1) + 8 * j);
              [v43 timeSpentDeadlocked];
              if (v44 >= than)
              {
                tasksInvolved4 = [v43 tasksInvolved];
                v46 = [tasksInvolved4 count];
                tasksBlocked2 = [v43 tasksBlocked];
                v48 = [tasksBlocked2 count] + v46;

                if (*&v73 <= v48)
                {
                  tasksInvolved5 = [v43 tasksInvolved];
                  v50 = [tasksInvolved5 containsObject:v37];

                  if (v50)
                  {
                    node = [v43 node];
                    if (node)
                    {
                      v35 = node;
                      v52 = 0;
                      while (1)
                      {
                        task = [v35 task];

                        if (task == v37)
                        {
                          break;
                        }

                        v54 = v52;
                        if (!v52)
                        {
                          if ([v35 isPartOfADeadlock])
                          {
                            v54 = v35;
                          }

                          else
                          {
                            v54 = 0;
                          }
                        }

                        v55 = v54;

                        dependency = [v35 dependency];

                        if (dependency)
                        {
                          v35 = dependency;
                          v52 = v55;
                          if (dependency != v55)
                          {
                            continue;
                          }
                        }

                        goto LABEL_43;
                      }

                      goto LABEL_52;
                    }
                  }
                }
              }

LABEL_43:
              ;
            }

            v40 = [v38 countByEnumeratingWithState:&v74 objects:v82 count:16];
            if (v40)
            {
              continue;
            }

            break;
          }
        }

        v57 = __error();
        v58 = *v57;
        v59 = _ublogt(v57);
        if (os_log_type_enabled(v59, OS_LOG_TYPE_FAULT))
        {
          [UBUnblockReactiveRecovery(Deadlock) selectNodeInDeadlocks:v37 longerThan:? serviceContext:?];
        }

        v35 = 0;
        *__error() = v58;
LABEL_52:
        deadlocksCopy = v69;
        contextCopy = v70;
        v36 = v71;
      }

      else
      {
        v64 = __error();
        v65 = *v64;
        v66 = _ublogt(v64);
        if (os_log_type_enabled(v66, OS_LOG_TYPE_FAULT))
        {
          [UBUnblockReactiveRecovery(Deadlock) selectNodeInDeadlocks:longerThan:serviceContext:];
        }

        v35 = 0;
        *__error() = v65;
        deadlocksCopy = v69;
      }
    }

    else
    {
      v60 = __error();
      v61 = *v60;
      v62 = _ublogt(v60);
      contextCopy = v70;
      if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
      {
        v63 = [obj count];
        *buf = 134217984;
        v84 = v63;
        _os_log_impl(&dword_270397000, v62, OS_LOG_TYPE_DEFAULT, "No long-enough deadlocks out of %lu", buf, 0xCu);
      }

      v35 = 0;
      *__error() = v61;
      deadlocksCopy = v69;
    }
  }

  else
  {
    v35 = 0;
  }

  return v35;
}

- (id)selectThreadExhaustionInThreadExhaustions:(id)exhaustions allowSuspended:(BOOL)suspended serviceContext:(id)context
{
  selfCopy = self;
  v46 = *MEMORY[0x277D85DE8];
  exhaustionsCopy = exhaustions;
  contextCopy = context;
  serviceNode = [contextCopy serviceNode];
  v35 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v9 = exhaustionsCopy;
  v10 = [v9 countByEnumeratingWithState:&v40 objects:v45 count:16];
  v34 = v9;
  if (v10)
  {
    v11 = v10;
    v12 = *v41;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v41 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v40 + 1) + 8 * i);
        task = [v14 task];
        task2 = [serviceNode task];

        if (task == task2)
        {
          v25 = v14;
          v30 = v9;
          goto LABEL_24;
        }

        if (!suspended)
        {
          task3 = [v14 task];
          taskStates = [task3 taskStates];
          lastObject = [taskStates lastObject];
          isSuspended = [lastObject isSuspended];

          v9 = v34;
          if (isSuspended)
          {
            continue;
          }
        }

        task4 = [v14 task];
        [v35 addObject:task4];
      }

      v11 = [v9 countByEnumeratingWithState:&v40 objects:v45 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v22 = [(UBUnblockReactiveRecovery *)selfCopy selectTaskInTasks:v35 serviceContext:contextCopy];
  v23 = v9;
  v9 = v22;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v24 = v23;
  v25 = [v24 countByEnumeratingWithState:&v36 objects:v44 count:16];
  if (v25)
  {
    v26 = *v37;
    while (2)
    {
      for (j = 0; j != v25; j = j + 1)
      {
        if (*v37 != v26)
        {
          objc_enumerationMutation(v24);
        }

        v28 = *(*(&v36 + 1) + 8 * j);
        task5 = [v28 task];

        if (task5 == v9)
        {
          v25 = v28;
          goto LABEL_23;
        }
      }

      v25 = [v24 countByEnumeratingWithState:&v36 objects:v44 count:16];
      if (v25)
      {
        continue;
      }

      break;
    }
  }

LABEL_23:

  v30 = v34;
LABEL_24:

  return v25;
}

- (id)selectThreadExhaustionBlockingTask:(id)task serviceContext:(id)context
{
  v23 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  contextCopy = context;
  threadIDToThreadExhaustionDict = [contextCopy threadIDToThreadExhaustionDict];
  v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  threads = [taskCopy threads];
  v11 = [threads countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(threads);
        }

        v15 = [threadIDToThreadExhaustionDict objectForKeyedSubscript:*(*(&v18 + 1) + 8 * i)];
        if (v15)
        {
          [v9 addObject:v15];
        }
      }

      v12 = [threads countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  if ([v9 count])
  {
    v16 = [(UBUnblockReactiveRecovery *)self selectThreadExhaustionInThreadExhaustions:v9 allowSuspended:1 serviceContext:contextCopy];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)threadExhaustionsAboveLimit:(double)limit threadIDToThreadExhaustionDict:(id *)dict
{
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v9 = objc_autoreleasePoolPush();
  tasksByPid = [(SASampleStore *)self->_sampleStore tasksByPid];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __106__UBUnblockReactiveRecovery_ThreadExhaustion__threadExhaustionsAboveLimit_threadIDToThreadExhaustionDict___block_invoke;
  v20[3] = &unk_279E02C58;
  limitCopy = limit;
  v20[4] = self;
  v11 = v7;
  v21 = v11;
  [tasksByPid enumerateKeysAndObjectsUsingBlock:v20];

  if ([v11 count])
  {
    dependencyGraph = self->_dependencyGraph;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __106__UBUnblockReactiveRecovery_ThreadExhaustion__threadExhaustionsAboveLimit_threadIDToThreadExhaustionDict___block_invoke_148;
    v17[3] = &unk_279E02C08;
    v18 = v8;
    v19 = v11;
    [(NSDictionary *)dependencyGraph enumerateKeysAndObjectsUsingBlock:v17];
  }

  objc_autoreleasePoolPop(v9);
  *dict = [v8 copy];
  v13 = objc_alloc(MEMORY[0x277CBEB98]);
  allValues = [v11 allValues];
  v15 = [v13 initWithArray:allValues];

  return v15;
}

- (id)prepareCrashMessage:(id)message
{
  messageCopy = message;
  if ([messageCopy recoveryStatus] != 4)
  {
    v8 = 0;
    goto LABEL_30;
  }

  selectedProcess = [messageCopy selectedProcess];
  name = [selectedProcess name];
  v6 = name;
  if (name)
  {
    v7 = _UBCopySanitizedString(name, 12, &stru_288046330);
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = @"Unknown";
  }

  v10 = v9;

  serviceProcessName = [messageCopy serviceProcessName];
  v12 = serviceProcessName;
  if (serviceProcessName)
  {
    v13 = _UBCopySanitizedString(serviceProcessName, 12, &stru_288046330);
  }

  else
  {
    v13 = 0;
  }

  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = @"Unknown";
  }

  v15 = v14;

  clientName = [messageCopy clientName];
  v17 = clientName;
  if (clientName)
  {
    v18 = _UBCopySanitizedString(clientName, 12, &stru_288046330);
  }

  else
  {
    v18 = 0;
  }

  if (v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = @"Unknown";
  }

  v20 = v19;

  recoveryConfidence = [messageCopy recoveryConfidence];
  v22 = @"likely ";
  if (recoveryConfidence == 1)
  {
    v22 = &stru_288046330;
  }

  v23 = v22;
  if ([messageCopy issueType] == 1)
  {
    v24 = @"Process %@ [%d] was terminated due to being part of a deadlock cycle %@affecting %@-monitored service %@ [%d]";
  }

  else
  {
    if ([messageCopy issueType] != 2)
    {
      v8 = 0;
      goto LABEL_29;
    }

    v24 = @"Process %@ [%d] was terminated due to hitting thread exhaustion %@affecting %@-monitored service %@ [%d]";
  }

  v25 = MEMORY[0x277CCACA8];
  selectedProcess2 = [messageCopy selectedProcess];
  v27 = [selectedProcess2 pid];
  service = [messageCopy service];
  v8 = [v25 stringWithFormat:v24, v10, v27, v23, v20, v15, objc_msgSend(service, "pid")];

LABEL_29:
LABEL_30:

  return v8;
}

- (void)writeDiagnostics:(id)diagnostics terminatedProcBundleID:(id)d options:(unint64_t)options
{
  v50 = *MEMORY[0x277D85DE8];
  diagnosticsCopy = diagnostics;
  dCopy = d;
  v9 = __error();
  v10 = *v9;
  v11 = _ublogt(v9);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    serviceProcessName = [diagnosticsCopy serviceProcessName];
    service = [diagnosticsCopy service];
    v14 = [service pid];
    service2 = [diagnosticsCopy service];
    *buf = 138543874;
    v47 = serviceProcessName;
    LOWORD(v48) = 1024;
    *(&v48 + 2) = v14;
    HIWORD(v48) = 2048;
    threadID = [service2 threadID];
    _os_log_impl(&dword_270397000, v11, OS_LOG_TYPE_DEFAULT, "Service <%{public}@ [%d] tid[%llx]>: Writing diagnostics.", buf, 0x1Cu);
  }

  *__error() = v10;
  v16 = objc_alloc(MEMORY[0x277CCACA8]);
  v17 = [(UBUnblockReactiveRecovery *)self prepareCrashMessage:diagnosticsCopy];
  headerDescription = [diagnosticsCopy headerDescription];
  v19 = [v16 initWithFormat:@"\n%@\n%@", v17, headerDescription];

  *buf = 20;
  v47 = WatchdogCodeForIssueType([diagnosticsCopy issueType]);
  v48 = 0;
  v43 = mach_absolute_time();
  Current = CFAbsoluteTimeGetCurrent();
  v21 = [UBCrackShotReport alloc];
  selectedProcess = [diagnosticsCopy selectedProcess];
  v23 = [selectedProcess pid];
  selectedProcess2 = [diagnosticsCopy selectedProcess];
  name = [selectedProcess2 name];
  v26 = name;
  if (name)
  {
    v27 = name;
  }

  else
  {
    v27 = @"Unknown";
  }

  v28 = -[UBCrackShotReport initWithPid:procName:bundleID:exitSnapshot:reason:issueType:](v21, "initWithPid:procName:bundleID:exitSnapshot:reason:issueType:", v23, v27, dCopy, buf, v19, [diagnosticsCopy issueType]);

  v29 = MEMORY[0x277CCABB0];
  service3 = [diagnosticsCopy service];
  v31 = [v29 numberWithInt:{objc_msgSend(service3, "pid")}];

  service4 = [diagnosticsCopy service];
  incidentUUID = [service4 incidentUUID];

  if (incidentUUID)
  {
    service5 = [diagnosticsCopy service];
    incidentUUID2 = [service5 incidentUUID];
    uUIDString = [incidentUUID2 UUIDString];
    [(OSAStackShotReport *)v28 setIncidentID:uUIDString];
  }

  bytes = [(NSData *)self->_stackshotData bytes];
  v38 = [(NSData *)self->_stackshotData length];
  v45 = v31;
  v39 = [MEMORY[0x277CBEA60] arrayWithObjects:&v45 count:1];
  [(OSAStackShotReport *)v28 useStackshotBuffer:bytes size:v38 frontmostPids:v39 atTime:v43 machTime:0xFFFFFFFFLL sequence:(options >> 1) & 1 isSnapshotDead:Current];

  if (![(OSACrackShotReport *)v28 saveWithOptions:0])
  {
    v40 = __error();
    v41 = *v40;
    v42 = _ublogt(v40);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      [UBUnblockReactiveRecovery(Termination) writeDiagnostics:diagnosticsCopy terminatedProcBundleID:v42 options:?];
    }

    *__error() = v41;
  }
}

- (void)doTermination:(id)termination options:(unint64_t)options
{
  v91 = *MEMORY[0x277D85DE8];
  terminationCopy = termination;
  context = objc_autoreleasePoolPush();
  v69 = [MEMORY[0x277CBEB58] set];
  v6 = [MEMORY[0x277CBEB58] set];
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  selfCopy = self;
  v7 = self->_stuckServices;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v83 objects:v90 count:16];
  v9 = 0x277CCA000uLL;
  if (v8)
  {
    v10 = v8;
    v11 = *v84;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v84 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(*(*(&v83 + 1) + 8 * i), "pid")}];
        [v6 addObject:v13];
      }

      v10 = [(NSArray *)v7 countByEnumeratingWithState:&v83 objects:v90 count:16];
    }

    while (v10);
  }

  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v14 = terminationCopy;
  v15 = [v14 countByEnumeratingWithState:&v79 objects:v89 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v80;
    v67 = v14;
    v68 = v6;
    v72 = *v80;
    do
    {
      v18 = 0;
      v71 = v16;
      do
      {
        if (*v80 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v79 + 1) + 8 * v18);
        if ([v19 recoveryStatus] == 4)
        {
          selectedProcess = [v19 selectedProcess];
          v21 = [selectedProcess pid];

          if (v21)
          {
            v74 = v21;
            v22 = [*(v9 + 2992) numberWithInt:v21];
            v23 = [v6 containsObject:v22];

            v24 = __error();
            v73 = *v24;
            v25 = _ublogt(v24);
            v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
            if (v23)
            {
              if (v26)
              {
                serviceProcessName = [v19 serviceProcessName];
                v28 = [v19 pid];
                threadID = [v19 threadID];
                selectedProcess2 = [v19 selectedProcess];
                name = [selectedProcess2 name];
                *buf = 138544386;
                *&buf[4] = serviceProcessName;
                *&buf[12] = 1024;
                *&buf[14] = v28;
                v6 = v68;
                *&buf[18] = 2048;
                *&buf[20] = threadID;
                v9 = 0x277CCA000;
                *&buf[28] = 2114;
                *&buf[30] = name;
                *&buf[38] = 1024;
                LODWORD(v88) = v74;
                _os_log_impl(&dword_270397000, v25, OS_LOG_TYPE_DEFAULT, "Service <%{public}@ [%d] tid[%llx]>: We selected %{public}@ [%d] for termination to recover; but, it is also one of the stuck services provided as input. Skipping termination.", buf, 0x2Cu);

                v16 = v71;
                v17 = v72;
              }

              *__error() = v73;
              [v19 setRecoveryStatus:2];
            }

            else
            {
              if (v26)
              {
                serviceProcessName2 = [v19 serviceProcessName];
                service = [v19 service];
                v34 = [service pid];
                service2 = [v19 service];
                threadID2 = [service2 threadID];
                selectedProcess3 = [v19 selectedProcess];
                name2 = [selectedProcess3 name];
                *buf = 138544386;
                *&buf[4] = serviceProcessName2;
                *&buf[12] = 1024;
                *&buf[14] = v34;
                *&buf[18] = 2048;
                *&buf[20] = threadID2;
                v9 = 0x277CCA000uLL;
                *&buf[28] = 2114;
                *&buf[30] = name2;
                *&buf[38] = 1024;
                LODWORD(v88) = v74;
                _os_log_impl(&dword_270397000, v25, OS_LOG_TYPE_DEFAULT, "Service <%{public}@ [%d] tid[%llx]>: Will terminate %{public}@ [%d] for recovery.", buf, 0x2Cu);

                v14 = v67;
                v16 = v71;

                v6 = v68;
              }

              *__error() = v73;
              v39 = [*(v9 + 2992) numberWithInt:v74];
              v40 = [v69 containsObject:v39];

              if (v40)
              {
                v41 = __error();
                v42 = *v41;
                v43 = _ublogt(v41);
                if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
                {
                  selectedProcess4 = [v19 selectedProcess];
                  name3 = [selectedProcess4 name];
                  *buf = 138543618;
                  *&buf[4] = name3;
                  *&buf[12] = 1024;
                  *&buf[14] = v74;
                  _os_log_impl(&dword_270397000, v43, OS_LOG_TYPE_DEFAULT, "%{public}@ [%d] has already been terminated.", buf, 0x12u);
                }

                *__error() = v42;
                v14 = v67;
              }

              else
              {
                if ((options & 2) != 0)
                {
                  v48 = 0;
                }

                else
                {
                  v46 = UBCopyPathForPid(v74);
                  v47 = v46;
                  if (v46)
                  {
                    v48 = UBCopyBundleIDForPath(v46);
                  }

                  else
                  {
                    v48 = 0;
                  }
                }

                v49 = +[UBUnblockReactiveRecovery getDiagnosticsQueue];
                if (v49)
                {
                  *buf = 0;
                  *&buf[8] = buf;
                  *&buf[16] = 0x3032000000;
                  *&buf[24] = __Block_byref_object_copy_;
                  *&buf[32] = __Block_byref_object_dispose_;
                  v88 = os_transaction_create();
                  block[0] = MEMORY[0x277D85DD0];
                  block[1] = 3221225472;
                  block[2] = __64__UBUnblockReactiveRecovery_Termination__doTermination_options___block_invoke;
                  block[3] = &unk_279E02C80;
                  block[4] = selfCopy;
                  block[5] = v19;
                  v50 = v48;
                  v77 = buf;
                  optionsCopy = options;
                  v76 = v50;
                  dispatch_async(v49, block);

                  _Block_object_dispose(buf, 8);
                }

                if (options)
                {
                  v57 = __error();
                  v58 = *v57;
                  v59 = _ublogt(v57);
                  if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_270397000, v59, OS_LOG_TYPE_DEFAULT, "Skipping the actual termination due to kReactiveRecoverySkipTermination.", buf, 2u);
                  }

                  *__error() = v58;
                }

                else
                {
                  v51 = [(UBUnblockReactiveRecovery *)selfCopy prepareCrashMessage:v19];
                  WatchdogCodeForIssueType([v19 issueType]);
                  [v51 UTF8String];
                  v52 = terminate_with_reason();
                  v53 = __error();
                  v54 = *v53;
                  v55 = _ublogt(v53);
                  v56 = v55;
                  if (v52)
                  {
                    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
                    {
                      selectedProcess5 = [v19 selectedProcess];
                      name4 = [selectedProcess5 name];
                      *buf = 138543618;
                      *&buf[4] = name4;
                      *&buf[12] = 1024;
                      *&buf[14] = v74;
                      _os_log_error_impl(&dword_270397000, v56, OS_LOG_TYPE_ERROR, "Failed to terminate %{public}@ [%d]", buf, 0x12u);

                      v14 = v67;
                    }

                    *__error() = v54;
                    [v19 setRecoveryStatus:1];
                  }

                  else
                  {
                    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
                    {
                      selectedProcess6 = [v19 selectedProcess];
                      name5 = [selectedProcess6 name];
                      *buf = 138543618;
                      *&buf[4] = name5;
                      *&buf[12] = 1024;
                      *&buf[14] = v74;
                      _os_log_impl(&dword_270397000, v56, OS_LOG_TYPE_DEFAULT, "Successfully terminated %{public}@ [%d]", buf, 0x12u);

                      v14 = v67;
                    }

                    *__error() = v54;
                  }

                  v62 = [MEMORY[0x277CCABB0] numberWithInt:v74];
                  [v69 addObject:v62];

                  v6 = v68;
                  v16 = v71;
                }

                v9 = 0x277CCA000;
              }

              v17 = v72;
            }
          }
        }

        ++v18;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v79 objects:v89 count:16];
    }

    while (v16);
  }

  objc_autoreleasePoolPop(context);
}

- (id)initForStuckServices:(id)services clientName:(id)name
{
  servicesCopy = services;
  nameCopy = name;
  v16.receiver = self;
  v16.super_class = UBUnblockReactiveRecovery;
  v8 = [(UBUnblockReactiveRecovery *)&v16 init];
  v9 = v8;
  if (v8)
  {
    stackshotData = v8->_stackshotData;
    v8->_stackshotData = 0;

    v9->_lock._os_unfair_lock_opaque = 0;
    v11 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:servicesCopy copyItems:0];
    stuckServices = v9->_stuckServices;
    v9->_stuckServices = v11;

    objc_storeStrong(&v9->_clientName, name);
    v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
    taskIs3PAppDict = v9->_taskIs3PAppDict;
    v9->_taskIs3PAppDict = v13;
  }

  return v9;
}

- (void)dealloc
{
  [(UBUnblockReactiveRecovery *)self clearCaches];
  stuckServices = self->_stuckServices;
  self->_stuckServices = 0;

  stackshotData = self->_stackshotData;
  self->_stackshotData = 0;

  v5.receiver = self;
  v5.super_class = UBUnblockReactiveRecovery;
  [(UBUnblockReactiveRecovery *)&v5 dealloc];
}

+ (id)getDiagnosticsQueue
{
  if (getDiagnosticsQueue_onceToken != -1)
  {
    +[UBUnblockReactiveRecovery getDiagnosticsQueue];
  }

  v3 = getDiagnosticsQueue_queue;

  return v3;
}

- (void)useStackshotBuffer:(const void *)buffer size:(unint64_t)size
{
  os_unfair_lock_lock(&self->_lock);
  v7 = [MEMORY[0x277CBEA90] dataWithBytes:buffer length:size];
  stackshotData = self->_stackshotData;
  self->_stackshotData = v7;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)clearCaches
{
  if (self->_sampleStore)
  {
    [MEMORY[0x277D4B460] clearCaches];
    [MEMORY[0x277D4B430] clearCaches];
    [MEMORY[0x277D4B410] clearCaches];
    deadlocks = self->_deadlocks;
    self->_deadlocks = 0;

    threadIDToDeadlockDict = self->_threadIDToDeadlockDict;
    self->_threadIDToDeadlockDict = 0;

    dependencyGraph = self->_dependencyGraph;
    self->_dependencyGraph = 0;

    sampleStore = self->_sampleStore;
    self->_sampleStore = 0;
  }
}

- (id)dependencyChainForNode:(id)node processInfos:(id)infos options:(unint64_t)options
{
  nodeCopy = node;
  infosCopy = infos;
  v59 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v7 = nodeCopy;
  v8 = v7;
  if (v7)
  {
    v9 = 0;
    v56 = v7;
    while (1)
    {
      v60 = v9;
      v10 = MEMORY[0x277CCABB0];
      task = [v8 task];
      v12 = [v10 numberWithInt:{objc_msgSend(task, "pid")}];
      v13 = [infosCopy objectForKeyedSubscript:v12];

      if (!v13)
      {
        v14 = objc_alloc(MEMORY[0x277D779B0]);
        task2 = [v8 task];
        v16 = [task2 pid];
        task3 = [v8 task];
        name = [task3 name];
        task4 = [v8 task];
        v13 = [v14 initWithPid:v16 name:name is3P:{-[UBUnblockReactiveRecovery taskIs3PApp:options:](self, "taskIs3PApp:options:", task4, options)}];

        v20 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v13, "pid")}];
        [infosCopy setObject:v13 forKeyedSubscript:v20];
      }

      v61 = v13;
      v21 = objc_alloc(MEMORY[0x277D779D0]);
      thread = [v8 thread];
      threadId = [thread threadId];
      threadState = [v8 threadState];
      name2 = [threadState name];
      threadState2 = [v8 threadState];
      dispatchQueue = [threadState2 dispatchQueue];
      identifier = [dispatchQueue identifier];
      threadState3 = [v8 threadState];
      dispatchQueue2 = [threadState3 dispatchQueue];
      [dispatchQueue2 dispatchQueueLabel];
      v30 = v63 = v8;
      v31 = [v21 initWithTid:threadId threadName:name2 dqid:identifier dqLabel:v30];

      v32 = v63;
      v33 = [objc_alloc(MEMORY[0x277D779B8]) initWithProcess:v61 thread:v31];
      [v59 addObject:v33];

      taskDependency = [v63 taskDependency];

      if (taskDependency)
      {
        v35 = MEMORY[0x277CCABB0];
        taskDependency2 = [v63 taskDependency];
        task5 = [taskDependency2 task];
        v38 = [v35 numberWithInt:{objc_msgSend(task5, "pid")}];
        v39 = [infosCopy objectForKeyedSubscript:v38];

        if (!v39)
        {
          v40 = objc_alloc(MEMORY[0x277D779B0]);
          taskDependency3 = [v63 taskDependency];
          task6 = [taskDependency3 task];
          v43 = [task6 pid];
          taskDependency4 = [v63 taskDependency];
          task7 = [taskDependency4 task];
          name3 = [task7 name];
          taskDependency5 = [v63 taskDependency];
          task8 = [taskDependency5 task];
          v39 = [v40 initWithPid:v43 name:name3 is3P:{-[UBUnblockReactiveRecovery taskIs3PApp:options:](self, "taskIs3PApp:options:", task8, options)}];

          v32 = v63;
          v49 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v39, "pid")}];
          [infosCopy setObject:v39 forKeyedSubscript:v49];
        }

        v50 = [objc_alloc(MEMORY[0x277D779B8]) initWithProcess:v39 thread:0];
        [v59 addObject:v50];
      }

      if ([v32 isPartOfADeadlock])
      {
        break;
      }

      v51 = v60;
      if (!v60)
      {
        if ([v32 isPartOfADeadlock])
        {
          v51 = v32;
        }

        else
        {
          v51 = 0;
        }
      }

      v52 = v51;

      dependency = [v32 dependency];

      if (dependency)
      {
        v8 = dependency;
        v9 = v52;
        if (dependency != v52)
        {
          continue;
        }
      }

      goto LABEL_18;
    }

    v52 = v60;
    dependency = v32;
LABEL_18:

    v8 = v56;
  }

  v54 = [v59 copy];

  return v54;
}

- (id)processThreadInfosForDeadlock:(id)deadlock processInfos:(id)infos options:(unint64_t)options
{
  deadlockCopy = deadlock;
  infosCopy = infos;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = deadlockCopy;
  v9 = v8;
  if (v8)
  {
    v51 = 0;
    v10 = 0;
    v48 = v8;
    v53 = v7;
    do
    {
      v56 = v10;
      v11 = MEMORY[0x277CCABB0];
      task = [v9 task];
      v13 = [v11 numberWithInt:{objc_msgSend(task, "pid")}];
      v14 = [infosCopy objectForKeyedSubscript:v13];

      if (!v14)
      {
        v15 = objc_alloc(MEMORY[0x277D779B0]);
        task2 = [v9 task];
        v17 = [task2 pid];
        task3 = [v9 task];
        name = [task3 name];
        task4 = [v9 task];
        v14 = [v15 initWithPid:v17 name:name is3P:{-[UBUnblockReactiveRecovery taskIs3PApp:options:](self, "taskIs3PApp:options:", task4, options)}];

        v21 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v14, "pid")}];
        [infosCopy setObject:v14 forKeyedSubscript:v21];
      }

      v57 = v14;
      v54 = objc_alloc(MEMORY[0x277D779D0]);
      thread = [v9 thread];
      threadId = [thread threadId];
      threadState = [v9 threadState];
      name2 = [threadState name];
      threadState2 = [v9 threadState];
      dispatchQueue = [threadState2 dispatchQueue];
      identifier = [dispatchQueue identifier];
      threadState3 = [v9 threadState];
      dispatchQueue2 = [threadState3 dispatchQueue];
      dispatchQueueLabel = [dispatchQueue2 dispatchQueueLabel];
      v31 = [v54 initWithTid:threadId threadName:name2 dqid:identifier dqLabel:dispatchQueueLabel];

      v32 = v57;
      v33 = [objc_alloc(MEMORY[0x277D779B8]) initWithProcess:v57 thread:v31];
      v7 = v53;
      [v53 addObject:v33];
      if ([v53 count] == 1)
      {
        v34 = v56;
      }

      else
      {
        v35 = [v53 objectAtIndexedSubscript:v51];
        process = [v35 process];
        v37 = [v53 objectAtIndexedSubscript:v51];
        thread2 = [v37 thread];
        process2 = [v33 process];
        thread3 = [v33 thread];
        v41 = CompareProcessesAndThreads(process, thread2, process2, thread3);

        v32 = v57;
        v7 = v53;

        v34 = v56;
        if (v41 == 1)
        {
          v51 = [v53 count] - 1;
        }
      }

      v42 = v34;
      if (!v34)
      {
        if ([v9 isPartOfADeadlock])
        {
          v42 = v9;
        }

        else
        {
          v42 = 0;
        }
      }

      v43 = v42;

      dependency = [v9 dependency];

      if (!dependency)
      {
        break;
      }

      v9 = dependency;
      v10 = v43;
    }

    while (dependency != v43);

    v9 = v48;
    if (v51)
    {
      v45 = [v7 subarrayWithRange:{0, v51}];
      [v7 removeObjectsInRange:{0, v51}];
      [v7 addObjectsFromArray:v45];
    }
  }

  v46 = [v7 copy];

  return v46;
}

- (void)fillInRecoveryInfo:(id)info deadlockNodeSelected:(id)selected exhaustedTaskSelected:(id)taskSelected threadExhaustions:(id)exhaustions options:(unint64_t)options
{
  v149 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  selectedCopy = selected;
  taskSelectedCopy = taskSelected;
  exhaustionsCopy = exhaustions;
  if (selectedCopy && taskSelectedCopy)
  {
    v15 = __error();
    v16 = *v15;
    v17 = _ublogt(v15);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [UBUnblockReactiveRecovery fillInRecoveryInfo:deadlockNodeSelected:exhaustedTaskSelected:threadExhaustions:options:];
    }

    *__error() = v16;
    [infoCopy setRecoveryStatus:1];
  }

  else
  {
    v103 = taskSelectedCopy;
    v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v138[0] = MEMORY[0x277D85DD0];
    v138[1] = 3221225472;
    v138[2] = __117__UBUnblockReactiveRecovery_fillInRecoveryInfo_deadlockNodeSelected_exhaustedTaskSelected_threadExhaustions_options___block_invoke;
    v138[3] = &unk_279E02CC8;
    v19 = v18;
    v139 = v19;
    selfCopy = self;
    optionsCopy = options;
    v20 = MEMORY[0x2743A00E0](v138);
    dependencyGraph = self->_dependencyGraph;
    v22 = MEMORY[0x277CCABB0];
    service = [infoCopy service];
    v24 = [v22 numberWithUnsignedLongLong:{objc_msgSend(service, "threadID")}];
    v25 = [(NSDictionary *)dependencyGraph objectForKeyedSubscript:v24];

    v95 = infoCopy;
    selfCopy2 = self;
    if (v25)
    {
      v26 = [(UBUnblockReactiveRecovery *)self dependencyChainForNode:v25 processInfos:v19 options:options, v25];
      [infoCopy setServiceDependencyChain:v26];
    }

    else
    {
      v27 = __error();
      v28 = *v27;
      v29 = _ublogt(v27);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
      {
        [UBUnblockReactiveRecovery fillInRecoveryInfo:deadlockNodeSelected:exhaustedTaskSelected:threadExhaustions:options:];
      }

      *__error() = v28;
      [infoCopy setServiceDependencyChain:{MEMORY[0x277CBEBF8], 0}];
    }

    v97 = selectedCopy;
    v94 = v19;
    if (selectedCopy)
    {
      threadIDToDeadlockDict = self->_threadIDToDeadlockDict;
      v31 = MEMORY[0x277CCABB0];
      thread = [selectedCopy thread];
      v33 = [v31 numberWithUnsignedLongLong:{objc_msgSend(thread, "threadId")}];
      v34 = [(NSDictionary *)threadIDToDeadlockDict objectForKeyedSubscript:v33];

      v102 = v34;
      if (!v34)
      {
        v35 = __error();
        v36 = *v35;
        v37 = _ublogt(v35);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
        {
          [UBUnblockReactiveRecovery fillInRecoveryInfo:deadlockNodeSelected:exhaustedTaskSelected:threadExhaustions:options:];
        }

        *__error() = v36;
      }

      v38 = [(UBUnblockReactiveRecovery *)self processThreadInfosForDeadlock:selectedCopy processInfos:v19 options:options];
      [infoCopy setProcessesAndThreadsInvolved:v38];

      v136 = 0u;
      v137 = 0u;
      v134 = 0u;
      v135 = 0u;
      processesAndThreadsInvolved = [infoCopy processesAndThreadsInvolved];
      v40 = [processesAndThreadsInvolved countByEnumeratingWithState:&v134 objects:v148 count:16];
      if (v40)
      {
        v41 = v40;
        v42 = *v135;
        while (2)
        {
          for (i = 0; i != v41; ++i)
          {
            if (*v135 != v42)
            {
              objc_enumerationMutation(processesAndThreadsInvolved);
            }

            v44 = *(*(&v134 + 1) + 8 * i);
            process = [v44 process];
            v46 = [process pid];
            task = [selectedCopy task];
            v48 = [task pid];

            if (v46 == v48)
            {
              process2 = [v44 process];
              [v95 setSelectedProcess:process2];

              selectedCopy = v97;
              goto LABEL_26;
            }

            selectedCopy = v97;
          }

          v41 = [processesAndThreadsInvolved countByEnumeratingWithState:&v134 objects:v148 count:16];
          if (v41)
          {
            continue;
          }

          break;
        }
      }

LABEL_26:

      [v102 timeSpentDeadlocked];
      v50 = v95;
      [v95 setTimeSinceIssueBegan:?];
      numThreadsBlocked = [v102 numThreadsBlocked];
    }

    else
    {
      if (v103)
      {
        task2 = [v103 task];
        v53 = (v20)[2](v20, task2);
        v50 = infoCopy;
        [infoCopy setSelectedProcess:v53];

        [v103 timeSpentBlocked];
        [infoCopy setTimeSinceIssueBegan:?];
        [infoCopy setProcessesAndThreadsInvolved:MEMORY[0x277CBEBF8]];
        numThreadsBlocked = [v103 numThreadsBlocked];
      }

      else
      {
        v50 = infoCopy;
        [infoCopy setSelectedProcess:0];
        [infoCopy setTimeSinceIssueBegan:0.0];
        [infoCopy setProcessesAndThreadsInvolved:MEMORY[0x277CBEBF8]];
        numThreadsBlocked = 0;
      }

      v102 = 0;
    }

    [v50 setNumThreadsBlockedByThisIssue:numThreadsBlocked];
    [v50 setNumOtherIssues:{objc_msgSend(exhaustionsCopy, "count") - ((selectedCopy | v103) != 0) + -[NSSet count](selfCopy2->_deadlocks, "count")}];
    v54 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v55 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v130 = 0u;
    v131 = 0u;
    v132 = 0u;
    v133 = 0u;
    obj = selfCopy2->_deadlocks;
    v104 = [(NSSet *)obj countByEnumeratingWithState:&v130 objects:v147 count:16];
    if (v104)
    {
      v109 = 0;
      v100 = *v131;
      do
      {
        for (j = 0; j != v104; ++j)
        {
          if (*v131 != v100)
          {
            objc_enumerationMutation(obj);
          }

          v57 = *(*(&v130 + 1) + 8 * j);
          if (v57 == v102)
          {
            v124 = 0uLL;
            v125 = 0uLL;
            v122 = 0uLL;
            v123 = 0uLL;
            tasksBlocked = [v57 tasksBlocked];
            v65 = [tasksBlocked countByEnumeratingWithState:&v122 objects:v145 count:16];
            if (v65)
            {
              v66 = v65;
              v67 = *v123;
              do
              {
                for (k = 0; k != v66; ++k)
                {
                  if (*v123 != v67)
                  {
                    objc_enumerationMutation(tasksBlocked);
                  }

                  v69 = v20[2](v20, *(*(&v122 + 1) + 8 * k));
                  [v54 addObject:v69];
                }

                v66 = [tasksBlocked countByEnumeratingWithState:&v122 objects:v145 count:16];
              }

              while (v66);
            }
          }

          else
          {
            v128 = 0uLL;
            v129 = 0uLL;
            v126 = 0uLL;
            v127 = 0uLL;
            v106 = v57;
            tasksBlocked2 = [v57 tasksBlocked];
            v59 = [tasksBlocked2 countByEnumeratingWithState:&v126 objects:v146 count:16];
            if (v59)
            {
              v60 = v59;
              v61 = *v127;
              do
              {
                for (m = 0; m != v60; ++m)
                {
                  if (*v127 != v61)
                  {
                    objc_enumerationMutation(tasksBlocked2);
                  }

                  v63 = v20[2](v20, *(*(&v126 + 1) + 8 * m));
                  [v55 addObject:v63];
                }

                v60 = [tasksBlocked2 countByEnumeratingWithState:&v126 objects:v146 count:16];
              }

              while (v60);
            }

            v109 += [v106 numThreadsBlocked];
          }
        }

        v104 = [(NSSet *)obj countByEnumeratingWithState:&v130 objects:v147 count:16];
      }

      while (v104);
    }

    else
    {
      v109 = 0;
    }

    v120 = 0u;
    v121 = 0u;
    v118 = 0u;
    v119 = 0u;
    obja = exhaustionsCopy;
    v105 = [obja countByEnumeratingWithState:&v118 objects:v144 count:16];
    if (v105)
    {
      v101 = *v119;
      do
      {
        for (n = 0; n != v105; ++n)
        {
          if (*v119 != v101)
          {
            objc_enumerationMutation(obja);
          }

          v71 = *(*(&v118 + 1) + 8 * n);
          if (v71 == v103)
          {
            v112 = 0uLL;
            v113 = 0uLL;
            v110 = 0uLL;
            v111 = 0uLL;
            tasksBlocked3 = [v71 tasksBlocked];
            v79 = [tasksBlocked3 countByEnumeratingWithState:&v110 objects:v142 count:16];
            if (v79)
            {
              v80 = v79;
              v81 = *v111;
              do
              {
                for (ii = 0; ii != v80; ++ii)
                {
                  if (*v111 != v81)
                  {
                    objc_enumerationMutation(tasksBlocked3);
                  }

                  v83 = v20[2](v20, *(*(&v110 + 1) + 8 * ii));
                  [v54 addObject:v83];
                }

                v80 = [tasksBlocked3 countByEnumeratingWithState:&v110 objects:v142 count:16];
              }

              while (v80);
            }
          }

          else
          {
            v116 = 0uLL;
            v117 = 0uLL;
            v114 = 0uLL;
            v115 = 0uLL;
            v107 = v71;
            tasksBlocked4 = [v71 tasksBlocked];
            v73 = [tasksBlocked4 countByEnumeratingWithState:&v114 objects:v143 count:16];
            if (v73)
            {
              v74 = v73;
              v75 = *v115;
              do
              {
                for (jj = 0; jj != v74; ++jj)
                {
                  if (*v115 != v75)
                  {
                    objc_enumerationMutation(tasksBlocked4);
                  }

                  v77 = v20[2](v20, *(*(&v114 + 1) + 8 * jj));
                  [v55 addObject:v77];
                }

                v74 = [tasksBlocked4 countByEnumeratingWithState:&v114 objects:v143 count:16];
              }

              while (v74);
            }

            v109 += [v107 numThreadsBlocked];
          }
        }

        v105 = [obja countByEnumeratingWithState:&v118 objects:v144 count:16];
      }

      while (v105);
    }

    infoCopy = v95;
    [v95 setNumThreadsBlockedByOtherIssues:v109];
    v84 = [v54 mutableCopy];
    [v84 minusSet:v55];
    allObjects = [v84 allObjects];
    v86 = [allObjects sortedArrayUsingComparator:&__block_literal_global_198];
    [v95 setProcessesBlockedByThisIssueOnly:v86];

    v87 = [v54 mutableCopy];
    [v87 intersectSet:v55];
    allObjects2 = [v87 allObjects];
    v89 = [allObjects2 sortedArrayUsingComparator:&__block_literal_global_198];
    [v95 setProcessesBlockedByThisAndOtherIssues:v89];

    v90 = [v55 mutableCopy];
    [v90 minusSet:v54];
    allObjects3 = [v90 allObjects];
    v92 = [allObjects3 sortedArrayUsingComparator:&__block_literal_global_198];
    [v95 setProcessesBlockedByOtherIssuesOnly:v92];

    selectedCopy = v97;
    taskSelectedCopy = v103;
  }
}

- (BOOL)taskIs3PApp:(id)app options:(unint64_t)options
{
  optionsCopy = options;
  v75 = *MEMORY[0x277D85DE8];
  appCopy = app;
  v7 = [appCopy pid];
  v8 = self->_taskIs3PAppDict;
  objc_sync_enter(v8);
  taskIs3PAppDict = self->_taskIs3PAppDict;
  v10 = [MEMORY[0x277CCABB0] numberWithInt:v7];
  v11 = [(NSMutableDictionary *)taskIs3PAppDict objectForKeyedSubscript:v10];

  if (v11)
  {
    goto LABEL_2;
  }

  if ((optionsCopy & 2) != 0)
  {
    v11 = 0;
    v13 = 0;
    goto LABEL_4;
  }

  v15 = MEMORY[0x277CCABB0];
  v57 = appCopy;
  if ([v57 pid])
  {
    mainBinaryPath = [v57 mainBinaryPath];
    v17 = mainBinaryPath;
    if (mainBinaryPath && ([mainBinaryPath isAbsolutePath] & 1) != 0)
    {
      v18 = v17;
    }

    else
    {
      v18 = UBCopyPathForPid([v57 pid]);

      if (!v18 || ([v18 isAbsolutePath] & 1) == 0)
      {
        v33 = __error();
        v34 = *v33;
        v35 = _ublogt(v33);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          name = [v57 name];
          -[UBUnblockReactiveRecovery taskIs3PApp:options:].cold.1(name, v74, [v57 pid], v35);
        }

        *__error() = v34;
        v32 = 1;
        goto LABEL_39;
      }
    }

    v64 = 0u;
    v65 = 0u;
    *location = 0u;
    v63 = 0u;
    v19 = [&unk_288046F98 countByEnumeratingWithState:location objects:v74 count:16];
    if (v19)
    {
      v20 = *v63;
      while (2)
      {
        v21 = v15;
        for (i = 0; i != v19; ++i)
        {
          if (*v63 != v20)
          {
            objc_enumerationMutation(&unk_288046F98);
          }

          if ([v18 hasPrefix:*(location[1] + i)])
          {
            v37 = __error();
            v15 = v21;
            v38 = *v37;
            v39 = _ublogt(v37);
            if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
            {
              name2 = [v57 name];
              v52 = [v57 pid];
              *buf = 138412802;
              v67 = name2;
              v68 = 1024;
              v69 = v52;
              v70 = 2112;
              v71 = v18;
              _os_log_debug_impl(&dword_270397000, v39, OS_LOG_TYPE_DEBUG, "%@ [%d]'s path %@ is in system dir, not 3P app", buf, 0x1Cu);
            }

            v32 = 0;
            *__error() = v38;
            goto LABEL_39;
          }
        }

        v19 = [&unk_288046F98 countByEnumeratingWithState:location objects:v74 count:16];
        v15 = v21;
        if (v19)
        {
          continue;
        }

        break;
      }
    }

    v23 = UBCopyBundleIDForPath(v18);
    v24 = v23;
    if (v23)
    {
      v25 = [v23 hasPrefix:@"com.apple."];
      v26 = __error();
      v27 = *v26;
      v28 = _ublogt(v26);
      v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG);
      if (!v25)
      {
        if (v29)
        {
          name3 = [v57 name];
          v56 = [v57 pid];
          *buf = 138544130;
          v67 = name3;
          v68 = 1024;
          v69 = v56;
          v70 = 2114;
          v71 = v18;
          v72 = 2114;
          v73 = v24;
          _os_log_debug_impl(&dword_270397000, v28, OS_LOG_TYPE_DEBUG, "Non-Apple bundle for %{public}@ [%d] (%{public}@), %{public}@, 3P app", buf, 0x26u);
        }

        v32 = 1;
        goto LABEL_38;
      }

      if (v29)
      {
        name4 = [v57 name];
        v31 = [v57 pid];
        *buf = 138544130;
        v67 = name4;
        v68 = 1024;
        v69 = v31;
        v70 = 2114;
        v71 = v18;
        v72 = 2114;
        v73 = v24;
        _os_log_debug_impl(&dword_270397000, v28, OS_LOG_TYPE_DEBUG, "Apple bundle for %{public}@ [%d] (%{public}@), %{public}@, not 3P app", buf, 0x26u);
      }
    }

    else
    {
      v40 = __error();
      v27 = *v40;
      v28 = _ublogt(v40);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        name5 = [v57 name];
        v54 = [v57 pid];
        *buf = 138543874;
        v67 = name5;
        v68 = 1024;
        v69 = v54;
        v70 = 2114;
        v71 = v18;
        _os_log_debug_impl(&dword_270397000, v28, OS_LOG_TYPE_DEBUG, "No bundle for %{public}@ [%d] (%{public}@, not 3P app", buf, 0x1Cu);
      }
    }

    v32 = 0;
LABEL_38:

    *__error() = v27;
LABEL_39:

    goto LABEL_40;
  }

  v32 = 0;
LABEL_40:

  v11 = [v15 numberWithBool:v32];
  v41 = self->_taskIs3PAppDict;
  v42 = [MEMORY[0x277CCABB0] numberWithInt:v7];
  [(NSMutableDictionary *)v41 setObject:v11 forKeyedSubscript:v42];

  if (!v7)
  {
    bOOLValue = [v11 BOOLValue];
    goto LABEL_3;
  }

  v43 = dispatch_get_global_queue(17, 0);
  v44 = dispatch_source_create(MEMORY[0x277D85D20], v7, 0xE0000000uLL, v43);

  if (v44)
  {
    objc_initWeak(location, self);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __49__UBUnblockReactiveRecovery_taskIs3PApp_options___block_invoke;
    handler[3] = &unk_279E02D10;
    objc_copyWeak(&v60, location);
    v61 = v7;
    v45 = v44;
    v59 = v45;
    dispatch_source_set_event_handler(v45, handler);
    dispatch_activate(v45);

    objc_destroyWeak(&v60);
    objc_destroyWeak(location);
  }

  else
  {
    v46 = __error();
    v47 = *v46;
    v48 = _ublogt(v46);
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      [UBUnblockReactiveRecovery taskIs3PApp:options:];
    }

    *__error() = v47;
    v49 = self->_taskIs3PAppDict;
    v50 = [MEMORY[0x277CCABB0] numberWithInt:v7];
    [(NSMutableDictionary *)v49 setObject:0 forKeyedSubscript:v50];
  }

LABEL_2:
  bOOLValue = [v11 BOOLValue];
LABEL_3:
  v13 = bOOLValue;
LABEL_4:

  objc_sync_exit(v8);
  return v13;
}

- (BOOL)avoidKillingTask:(id)task options:(unint64_t)options
{
  taskCopy = task;
  name = [taskCopy name];
  v8 = [taskCopy pid];
  if (([name isEqualToString:@"logd"] & 1) != 0 || (objc_msgSend(name, "isEqualToString:", @"watchdogd") & 1) != 0 || (v14 = getpid(), v8 < 2) || v8 == v14)
  {
    v9 = __error();
    v10 = *v9;
    v11 = _ublogt(v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [UBUnblockReactiveRecovery avoidKillingTask:options:];
    }

    *__error() = v10;
    v12 = 1;
  }

  else
  {
    v12 = [(UBUnblockReactiveRecovery *)self taskIs3PApp:taskCopy options:options];
  }

  return v12;
}

- (id)selectTaskInDefinitiveIssuesWithServiceContext:(id)context
{
  v60 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v5 = objc_autoreleasePoolPush();
  serviceResult = [contextCopy serviceResult];
  threadExhaustions = [contextCopy threadExhaustions];
  options = [contextCopy options];
  v8 = MEMORY[0x277CCABB0];
  service = [serviceResult service];
  v10 = [v8 numberWithUnsignedLongLong:{objc_msgSend(service, "threadID")}];

  v11 = __error();
  v12 = *v11;
  v13 = _ublogt(v11);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [UBUnblockReactiveRecovery selectTaskInDefinitiveIssuesWithServiceContext:serviceResult];
  }

  *__error() = v12;
  v14 = [(NSDictionary *)self->_threadIDToDeadlockDict objectForKeyedSubscript:v10];
  if (v14)
  {
    v45 = v10;
    v15 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{v14, 0}];
    v16 = [(UBUnblockReactiveRecovery *)self selectNodeInDeadlocks:v15 longerThan:contextCopy serviceContext:0.0];

    [serviceResult setIssueType:1];
    [serviceResult setRecoveryConfidence:1];
    [(UBUnblockReactiveRecovery *)self fillInRecoveryInfo:serviceResult deadlockNodeSelected:v16 exhaustedTaskSelected:0 threadExhaustions:threadExhaustions options:options];
    task = [v16 task];
    v18 = __error();
    v19 = *v18;
    v20 = _ublogt(v18);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      [serviceResult serviceProcessName];
      v21 = v41 = v14;
      service2 = [serviceResult service];
      v38 = [service2 pid];
      service3 = [serviceResult service];
      threadID = [service3 threadID];
      [serviceResult service];
      v23 = v43 = v5;
      [v23 timeElapsed];
      v25 = v24;
      name = [task name];
      *buf = 138544642;
      v49 = v21;
      v50 = 1024;
      v51 = v38;
      v52 = 2048;
      v53 = threadID;
      v54 = 2048;
      v55 = v25;
      v56 = 2114;
      v57 = name;
      v58 = 1024;
      v59 = [task pid];
      _os_log_impl(&dword_270397000, v20, OS_LOG_TYPE_DEFAULT, "Service <%{public}@ [%d] tid[%llx] time-elapsed[%fs]>: Impacted by deadlock involving %{public}@ [%d]", buf, 0x36u);

      v5 = v43;
      v14 = v41;
    }

    *__error() = v19;
    v10 = v45;
  }

  else
  {
    v27 = __error();
    v28 = *v27;
    v29 = _ublogt(v27);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      serviceProcessName = [serviceResult serviceProcessName];
      service4 = [serviceResult service];
      v44 = v28;
      v31 = v5;
      v32 = [service4 pid];
      [serviceResult service];
      v33 = v46 = v10;
      threadID2 = [v33 threadID];
      service5 = [serviceResult service];
      [service5 timeElapsed];
      *buf = 138544130;
      v49 = serviceProcessName;
      v50 = 1024;
      v51 = v32;
      v5 = v31;
      v28 = v44;
      v52 = 2048;
      v53 = threadID2;
      v54 = 2048;
      v55 = v36;
      _os_log_impl(&dword_270397000, v29, OS_LOG_TYPE_INFO, "Service <%{public}@ [%d] tid[%llx] time-elapsed[%fs]>: Not impacted directly by deadlock", buf, 0x26u);

      v10 = v46;
    }

    task = 0;
    *__error() = v28;
  }

  objc_autoreleasePoolPop(v5);

  return task;
}

- (id)selectTaskBlockingTask:(id)task serviceContext:(id)context
{
  v189 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  contextCopy = context;
  context = objc_autoreleasePoolPush();
  serviceResult = [contextCopy serviceResult];
  threadExhaustions = [contextCopy threadExhaustions];
  threadIDToThreadExhaustionDict = [contextCopy threadIDToThreadExhaustionDict];
  options = [contextCopy options];
  v11 = MEMORY[0x277CCABB0];
  service = [serviceResult service];
  v13 = [v11 numberWithUnsignedLongLong:{objc_msgSend(service, "threadID")}];

  service2 = [serviceResult service];
  [service2 timeElapsed];
  v16 = v15;

  v17 = __error();
  v18 = *v17;
  v19 = _ublogt(v17);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    [UBUnblockReactiveRecovery selectTaskBlockingTask:serviceContext:];
  }

  *__error() = v18;
  v20 = [threadIDToThreadExhaustionDict objectForKeyedSubscript:v13];
  v167 = v13;
  v168 = taskCopy;
  v165 = threadExhaustions;
  v166 = contextCopy;
  v164 = threadIDToThreadExhaustionDict;
  selfCopy = self;
  if (v20)
  {
    [serviceResult setIssueType:2];
    [serviceResult setRecoveryConfidence:2];
    [(UBUnblockReactiveRecovery *)self fillInRecoveryInfo:serviceResult deadlockNodeSelected:0 exhaustedTaskSelected:v20 threadExhaustions:threadExhaustions options:options];
    task = [v20 task];
    v22 = __error();
    v23 = *v22;
    v24 = _ublogt(v22);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      serviceProcessName = [serviceResult serviceProcessName];
      service3 = [serviceResult service];
      v25 = [service3 pid];
      service4 = [serviceResult service];
      threadID = [service4 threadID];
      service5 = [serviceResult service];
      [service5 timeElapsed];
      v30 = v29;
      [task name];
      v161 = serviceResult;
      v31 = v23;
      v32 = v20;
      v34 = v33 = task;
      *buf = 138544642;
      v174 = serviceProcessName;
      v175 = 1024;
      v176 = v25;
      threadIDToThreadExhaustionDict = v164;
      v177 = 2048;
      v178 = threadID;
      taskCopy = v168;
      v179 = 2048;
      v180 = v30;
      v181 = 2114;
      v182 = v34;
      v183 = 1024;
      v184 = [v33 pid];
      _os_log_impl(&dword_270397000, v24, OS_LOG_TYPE_DEFAULT, "Service <%{public}@ [%d] tid[%llx] time-elapsed[%fs]>: Last dependency %{public}@ [%d] is impacted by thread exhaustions", buf, 0x36u);

      task = v33;
      v20 = v32;
      v23 = v31;
      serviceResult = v161;

      v13 = v167;
      threadExhaustions = v165;
    }

    *__error() = v23;
    self = selfCopy;
    if (![(UBUnblockReactiveRecovery *)selfCopy avoidKillingTask:task options:options])
    {
      goto LABEL_44;
    }

    v162 = task;
    v35 = __error();
    v36 = *v35;
    v37 = _ublogt(v35);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      [serviceResult serviceProcessName];
      v143 = v154 = v20;
      service6 = [serviceResult service];
      v38 = v36;
      v39 = [service6 pid];
      service7 = [serviceResult service];
      threadID2 = [service7 threadID];
      service8 = [serviceResult service];
      [service8 timeElapsed];
      v44 = v43;
      name = [v162 name];
      self = selfCopy;
      v46 = [v162 pid];
      *buf = 138544642;
      v174 = v143;
      v175 = 1024;
      v176 = v39;
      v36 = v38;
      v177 = 2048;
      v178 = threadID2;
      threadIDToThreadExhaustionDict = v164;
      v179 = 2048;
      v180 = v44;
      v181 = 2114;
      v182 = name;
      v183 = 1024;
      v184 = v46;
      _os_log_impl(&dword_270397000, v37, OS_LOG_TYPE_DEFAULT, "Service <%{public}@ [%d] tid[%llx] time-elapsed[%fs]>: %{public}@ [%d] is not killable, checking for other issues", buf, 0x36u);

      taskCopy = v168;
      v13 = v167;

      threadExhaustions = v165;
      v20 = v154;
    }
  }

  else
  {
    v47 = __error();
    v36 = *v47;
    v37 = _ublogt(v47);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      serviceProcessName2 = [serviceResult serviceProcessName];
      service9 = [serviceResult service];
      v48 = v36;
      v49 = [service9 pid];
      service10 = [serviceResult service];
      threadID3 = [service10 threadID];
      service11 = [serviceResult service];
      [service11 timeElapsed];
      v54 = v53;
      name2 = [taskCopy name];
      *buf = 138544642;
      v174 = serviceProcessName2;
      v175 = 1024;
      v176 = v49;
      v36 = v48;
      v177 = 2048;
      v178 = threadID3;
      threadIDToThreadExhaustionDict = v164;
      v179 = 2048;
      v180 = v54;
      v181 = 2114;
      v182 = name2;
      v183 = 1024;
      v184 = [v168 pid];
      _os_log_impl(&dword_270397000, v37, OS_LOG_TYPE_INFO, "Service <%{public}@ [%d] tid[%llx] time-elapsed[%fs]>: Last dependency %{public}@ [%d] is not impacted by thread exhaustions", buf, 0x36u);

      taskCopy = v168;
      v13 = v167;

      threadExhaustions = v165;
      v20 = 0;
    }

    v162 = 0;
  }

  v56 = v16 * 0.66666;

  *__error() = v36;
  v57 = __error();
  v58 = *v57;
  v59 = _ublogt(v57);
  if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
  {
    [UBUnblockReactiveRecovery selectTaskBlockingTask:serviceContext:];
  }

  *__error() = v58;
  [(UBUnblockReactiveRecovery *)self selectNodeInDeadlocksBlockingTask:taskCopy preferredMinimumDuration:contextCopy serviceContext:v56];
  v61 = v60 = self;
  if (v61)
  {
    [serviceResult setIssueType:1];
    [serviceResult setRecoveryConfidence:2];
    [(UBUnblockReactiveRecovery *)v60 fillInRecoveryInfo:serviceResult deadlockNodeSelected:v61 exhaustedTaskSelected:0 threadExhaustions:threadExhaustions options:options];
    task2 = [v61 task];
    v63 = __error();
    v64 = *v63;
    v65 = _ublogt(v63);
    if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
    {
      [serviceResult serviceProcessName];
      v66 = v155 = task2;
      service12 = [serviceResult service];
      v141 = [service12 pid];
      service13 = [serviceResult service];
      threadID4 = [service13 threadID];
      service14 = [serviceResult service];
      [service14 timeElapsed];
      v70 = v69;
      name3 = [taskCopy name];
      v72 = v61;
      v73 = v64;
      v74 = [taskCopy pid];
      name4 = [v155 name];
      v76 = [v155 pid];
      *buf = 138545154;
      v174 = v66;
      v175 = 1024;
      v176 = v141;
      v177 = 2048;
      v178 = threadID4;
      contextCopy = v166;
      v179 = 2048;
      v180 = v70;
      v181 = 2114;
      v182 = name3;
      v183 = 1024;
      v184 = v74;
      v64 = v73;
      v61 = v72;
      v185 = 2114;
      v186 = name4;
      v187 = 1024;
      v188 = v76;
      _os_log_impl(&dword_270397000, v65, OS_LOG_TYPE_DEFAULT, "Service <%{public}@ [%d] tid[%llx] time-elapsed[%fs]>: Last dependency %{public}@ [%d] is blocked by deadlock involving %{public}@ [%d]", buf, 0x46u);

      taskCopy = v168;
      threadIDToThreadExhaustionDict = v164;

      threadExhaustions = v165;
      task2 = v155;
    }

    *__error() = v64;
    if (![(UBUnblockReactiveRecovery *)selfCopy avoidKillingTask:task2 options:options])
    {

      v20 = v162;
      goto LABEL_42;
    }

    v77 = __error();
    v78 = *v77;
    v79 = _ublogt(v77);
    if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
    {
      serviceProcessName3 = [serviceResult serviceProcessName];
      service15 = [serviceResult service];
      v80 = [service15 pid];
      service16 = [serviceResult service];
      threadID5 = [service16 threadID];
      service17 = [serviceResult service];
      [service17 timeElapsed];
      v85 = v84;
      [task2 name];
      v86 = v156 = v78;
      v87 = [task2 pid];
      *buf = 138544642;
      v174 = serviceProcessName3;
      v175 = 1024;
      v176 = v80;
      v177 = 2048;
      v178 = threadID5;
      taskCopy = v168;
      v179 = 2048;
      v180 = v85;
      v181 = 2114;
      v182 = v86;
      v183 = 1024;
      v184 = v87;
      _os_log_impl(&dword_270397000, v79, OS_LOG_TYPE_DEFAULT, "Service <%{public}@ [%d] tid[%llx] time-elapsed[%fs]>: %{public}@ [%d] is not killable, checking for other issues", buf, 0x36u);

      v78 = v156;
      threadIDToThreadExhaustionDict = v164;

      threadExhaustions = v165;
      contextCopy = v166;
    }

    *__error() = v78;
    v88 = v162;
    if (!v162)
    {
      v88 = task2;
    }

    v162 = v88;

    v13 = v167;
  }

  else
  {
    v89 = __error();
    v90 = *v89;
    v91 = _ublogt(v89);
    if (os_log_type_enabled(v91, OS_LOG_TYPE_INFO))
    {
      [serviceResult serviceProcessName];
      v92 = v157 = v90;
      service18 = [serviceResult service];
      v94 = [service18 pid];
      service19 = [serviceResult service];
      threadID6 = [service19 threadID];
      service20 = [serviceResult service];
      [service20 timeElapsed];
      v99 = v98;
      name5 = [taskCopy name];
      v101 = [v168 pid];
      *buf = 138544642;
      v174 = v92;
      v175 = 1024;
      v176 = v94;
      v177 = 2048;
      v178 = threadID6;
      threadIDToThreadExhaustionDict = v164;
      v179 = 2048;
      v180 = v99;
      v181 = 2114;
      v182 = name5;
      v183 = 1024;
      v184 = v101;
      _os_log_impl(&dword_270397000, v91, OS_LOG_TYPE_INFO, "Service <%{public}@ [%d] tid[%llx] time-elapsed[%fs]>: Last dependency %{public}@ [%d] is not blocked by any deadlocks", buf, 0x36u);

      taskCopy = v168;
      v13 = v167;

      threadExhaustions = v165;
      contextCopy = v166;

      v90 = v157;
    }

    *__error() = v90;
  }

  v102 = __error();
  v103 = *v102;
  v104 = _ublogt(v102);
  if (os_log_type_enabled(v104, OS_LOG_TYPE_DEBUG))
  {
    [UBUnblockReactiveRecovery selectTaskBlockingTask:serviceContext:];
  }

  *__error() = v103;
  v20 = [(UBUnblockReactiveRecovery *)selfCopy selectThreadExhaustionBlockingTask:taskCopy serviceContext:contextCopy];
  if (v20)
  {
    [serviceResult setIssueType:2];
    [serviceResult setRecoveryConfidence:2];
    [(UBUnblockReactiveRecovery *)selfCopy fillInRecoveryInfo:serviceResult deadlockNodeSelected:0 exhaustedTaskSelected:v20 threadExhaustions:threadExhaustions options:options];
    task2 = [v20 task];
    v105 = __error();
    v106 = *v105;
    v107 = _ublogt(v105);
    if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
    {
      serviceProcessName4 = [serviceResult serviceProcessName];
      service21 = [serviceResult service];
      v140 = [service21 pid];
      service22 = [serviceResult service];
      threadID7 = [service22 threadID];
      service23 = [serviceResult service];
      [service23 timeElapsed];
      v109 = v108;
      name6 = [taskCopy name];
      v111 = v106;
      v112 = v20;
      v113 = [taskCopy pid];
      name7 = [task2 name];
      v115 = [task2 pid];
      *buf = 138545154;
      v174 = serviceProcessName4;
      v175 = 1024;
      v176 = v140;
      v177 = 2048;
      v178 = threadID7;
      contextCopy = v166;
      v179 = 2048;
      v180 = v109;
      v181 = 2114;
      v182 = name6;
      v183 = 1024;
      v184 = v113;
      v20 = v112;
      v106 = v111;
      v185 = 2114;
      v186 = name7;
      v187 = 1024;
      v188 = v115;
      _os_log_impl(&dword_270397000, v107, OS_LOG_TYPE_DEFAULT, "Service <%{public}@ [%d] tid[%llx] time-elapsed[%fs]>: Last dependency %{public}@ [%d] is blocked by thread exhaustion in %{public}@ [%d]", buf, 0x46u);

      taskCopy = v168;
      threadIDToThreadExhaustionDict = v164;

      threadExhaustions = v165;
    }

    *__error() = v106;
    task = v162;
    if ([(UBUnblockReactiveRecovery *)selfCopy avoidKillingTask:task2 options:options])
    {
      v116 = __error();
      v117 = *v116;
      v118 = _ublogt(v116);
      if (os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
      {
        serviceProcessName5 = [serviceResult serviceProcessName];
        service24 = [serviceResult service];
        v119 = [service24 pid];
        service25 = [serviceResult service];
        threadID8 = [service25 threadID];
        service26 = [serviceResult service];
        [service26 timeElapsed];
        v124 = v123;
        [task2 name];
        v172 = v117;
        v126 = v125 = v20;
        v127 = [task2 pid];
        *buf = 138544642;
        v174 = serviceProcessName5;
        v175 = 1024;
        v176 = v119;
        task = v162;
        v177 = 2048;
        v178 = threadID8;
        taskCopy = v168;
        v179 = 2048;
        v180 = v124;
        v181 = 2114;
        v182 = v126;
        v183 = 1024;
        v184 = v127;
        _os_log_impl(&dword_270397000, v118, OS_LOG_TYPE_DEFAULT, "Service <%{public}@ [%d] tid[%llx] time-elapsed[%fs]>: %{public}@ [%d] is not killable, checking for other issues", buf, 0x36u);

        v20 = v125;
        v117 = v172;

        threadIDToThreadExhaustionDict = v164;
        threadExhaustions = v165;

        contextCopy = v166;
      }

      *__error() = v117;
      if (!task)
      {
        task = task2;
      }

      goto LABEL_43;
    }

    v20 = v162;
LABEL_42:
    task = task2;
LABEL_43:
    v13 = v167;
    goto LABEL_44;
  }

  v128 = __error();
  v129 = *v128;
  v130 = _ublogt(v128);
  if (os_log_type_enabled(v130, OS_LOG_TYPE_INFO))
  {
    serviceProcessName6 = [serviceResult serviceProcessName];
    service27 = [serviceResult service];
    v133 = [service27 pid];
    service28 = [serviceResult service];
    threadID9 = [service28 threadID];
    service29 = [serviceResult service];
    [service29 timeElapsed];
    *buf = 138544130;
    v174 = serviceProcessName6;
    v175 = 1024;
    v176 = v133;
    v177 = 2048;
    v178 = threadID9;
    v13 = v167;
    v179 = 2048;
    v180 = v137;
    _os_log_impl(&dword_270397000, v130, OS_LOG_TYPE_INFO, "Service <%{public}@ [%d] tid[%llx] time-elapsed[%fs]>: No relevant thread exhaustions.", buf, 0x26u);

    threadIDToThreadExhaustionDict = v164;
    threadExhaustions = v165;

    contextCopy = v166;
  }

  *__error() = v129;
  task = v162;
  v20 = 0;
LABEL_44:

  objc_autoreleasePoolPop(context);

  return task;
}

- (id)selectTaskInvolvedInAnyIssueWithServiceContext:(id)context
{
  v159 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  context = objc_autoreleasePoolPush();
  serviceNode = [contextCopy serviceNode];
  serviceResult = [contextCopy serviceResult];
  threadExhaustions = [contextCopy threadExhaustions];
  options = [contextCopy options];
  service = [serviceResult service];
  [service timeElapsed];
  v11 = v10;

  v12 = __error();
  v13 = *v12;
  v14 = _ublogt(v12);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [UBUnblockReactiveRecovery selectTaskInvolvedInAnyIssueWithServiceContext:serviceResult];
  }

  *__error() = v13;
  v15 = [(UBUnblockReactiveRecovery *)self selectThreadExhaustionInThreadExhaustions:threadExhaustions allowSuspended:0 serviceContext:contextCopy];
  selfCopy = self;
  v140 = contextCopy;
  v142 = options;
  if (!v15)
  {
    v41 = __error();
    v29 = *v41;
    v30 = _ublogt(v41);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      serviceProcessName = [serviceResult serviceProcessName];
      service2 = [serviceResult service];
      v129 = v29;
      v43 = [service2 pid];
      service3 = [serviceResult service];
      v45 = threadExhaustions;
      v46 = serviceNode;
      threadID = [service3 threadID];
      service4 = [serviceResult service];
      [service4 timeElapsed];
      *buf = 138544130;
      v147 = serviceProcessName;
      v148 = 1024;
      v149 = v43;
      v29 = v129;
      v150 = 2048;
      v151 = threadID;
      serviceNode = v46;
      threadExhaustions = v45;
      v152 = 2048;
      v153 = v49;
      _os_log_impl(&dword_270397000, v30, OS_LOG_TYPE_INFO, "Service <%{public}@ [%d] tid[%llx] time-elapsed[%fs]>: No relevant thread exhaustions.", buf, 0x26u);

      v15 = 0;
      self = selfCopy;
    }

    task = 0;
    goto LABEL_12;
  }

  [serviceResult setIssueType:2];
  [serviceResult setRecoveryConfidence:2];
  [(UBUnblockReactiveRecovery *)self fillInRecoveryInfo:serviceResult deadlockNodeSelected:0 exhaustedTaskSelected:v15 threadExhaustions:threadExhaustions options:options];
  task = [v15 task];
  v17 = __error();
  v18 = *v17;
  v19 = _ublogt(v17);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    serviceProcessName2 = [serviceResult serviceProcessName];
    service5 = [serviceResult service];
    v127 = v15;
    v21 = [service5 pid];
    service6 = [serviceResult service];
    threadID2 = [service6 threadID];
    service7 = [serviceResult service];
    [service7 timeElapsed];
    v24 = v23;
    v25 = v18;
    v26 = [threadExhaustions count];
    [task name];
    v27 = v131 = serviceNode;
    *buf = 138544898;
    v147 = serviceProcessName2;
    v148 = 1024;
    v149 = v21;
    v15 = v127;
    v150 = 2048;
    v151 = threadID2;
    v152 = 2048;
    v153 = v24;
    v154 = 2048;
    *v155 = v26;
    v18 = v25;
    *&v155[8] = 2114;
    v156 = v27;
    v157 = 1024;
    v158 = [task pid];
    _os_log_impl(&dword_270397000, v19, OS_LOG_TYPE_DEFAULT, "Service <%{public}@ [%d] tid[%llx] time-elapsed[%fs]>: Found %lu thread exhaustions, selected %{public}@ [%d]", buf, 0x40u);

    serviceNode = v131;
    self = selfCopy;

    contextCopy = v140;
  }

  *__error() = v18;
  if ([(UBUnblockReactiveRecovery *)self avoidKillingTask:task options:v142])
  {
    v28 = __error();
    v29 = *v28;
    v30 = _ublogt(v28);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      serviceProcessName3 = [serviceResult serviceProcessName];
      service8 = [serviceResult service];
      v128 = v29;
      v32 = [service8 pid];
      service9 = [serviceResult service];
      v33 = serviceNode;
      threadID3 = [service9 threadID];
      service10 = [serviceResult service];
      [service10 timeElapsed];
      v37 = v36;
      [task name];
      v132 = serviceResult;
      v39 = v38 = v15;
      v40 = [task pid];
      *buf = 138544642;
      v147 = serviceProcessName3;
      v148 = 1024;
      v149 = v32;
      v29 = v128;
      v150 = 2048;
      v151 = threadID3;
      serviceNode = v33;
      v152 = 2048;
      v153 = v37;
      v154 = 2114;
      *v155 = v39;
      *&v155[8] = 1024;
      LODWORD(v156) = v40;
      _os_log_impl(&dword_270397000, v30, OS_LOG_TYPE_DEFAULT, "Service <%{public}@ [%d] tid[%llx] time-elapsed[%fs]>: %{public}@ [%d] is not killable, checking for other issues", buf, 0x36u);

      v15 = v38;
      serviceResult = v132;

      self = selfCopy;
      contextCopy = v140;
    }

LABEL_12:
    v50 = v11 * 0.66666;

    *__error() = v29;
    v51 = __error();
    v52 = *v51;
    v53 = _ublogt(v51);
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
    {
      [UBUnblockReactiveRecovery selectTaskInvolvedInAnyIssueWithServiceContext:serviceResult];
    }

    *__error() = v52;
    v54 = [(UBUnblockReactiveRecovery *)self selectNodeInDeadlocks:self->_deadlocks longerThan:contextCopy serviceContext:v50];
    v15 = v54;
    if (v54)
    {
      v130 = task;
      task2 = [v54 task];
      taskStates = [task2 taskStates];
      lastObject = [taskStates lastObject];
      effectiveJetsamPriority = [lastObject effectiveJetsamPriority];

      task3 = [serviceNode task];
      taskStates2 = [task3 taskStates];
      lastObject2 = [taskStates2 lastObject];
      effectiveJetsamPriority2 = [lastObject2 effectiveJetsamPriority];

      if (effectiveJetsamPriority <= effectiveJetsamPriority2)
      {
        [serviceResult setIssueType:1];
        [serviceResult setRecoveryConfidence:2];
        v85 = selfCopy;
        [(UBUnblockReactiveRecovery *)selfCopy fillInRecoveryInfo:serviceResult deadlockNodeSelected:v15 exhaustedTaskSelected:0 threadExhaustions:threadExhaustions options:v142];
        task4 = [v15 task];
        v87 = __error();
        v88 = *v87;
        v89 = _ublogt(v87);
        if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
        {
          serviceProcessName4 = [serviceResult serviceProcessName];
          service11 = [serviceResult service];
          v115 = [service11 pid];
          service12 = [serviceResult service];
          v90 = v88;
          v91 = threadExhaustions;
          v92 = serviceNode;
          threadID4 = [service12 threadID];
          service13 = [serviceResult service];
          [service13 timeElapsed];
          v96 = v95;
          [task4 name];
          v134 = serviceResult;
          v98 = v97 = v15;
          v99 = [task4 pid];
          *buf = 138544642;
          v147 = serviceProcessName4;
          v148 = 1024;
          v149 = v115;
          v150 = 2048;
          v151 = threadID4;
          serviceNode = v92;
          threadExhaustions = v91;
          v88 = v90;
          v152 = 2048;
          v153 = v96;
          v154 = 2114;
          *v155 = v98;
          *&v155[8] = 1024;
          LODWORD(v156) = v99;
          _os_log_impl(&dword_270397000, v89, OS_LOG_TYPE_DEFAULT, "Service <%{public}@ [%d] tid[%llx] time-elapsed[%fs]>: Correlated deadlock found involving %{public}@ [%d]", buf, 0x36u);

          v15 = v97;
          serviceResult = v134;

          v85 = selfCopy;
          contextCopy = v140;
        }

        *__error() = v88;
        if ([(UBUnblockReactiveRecovery *)v85 avoidKillingTask:task4 options:v142])
        {
          v100 = __error();
          v101 = *v100;
          v102 = _ublogt(v100);
          if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
          {
            serviceProcessName5 = [serviceResult serviceProcessName];
            [serviceResult service];
            v126 = v145 = threadExhaustions;
            v139 = v101;
            v104 = [v126 pid];
            service14 = [serviceResult service];
            v106 = serviceNode;
            threadID5 = [service14 threadID];
            service15 = [serviceResult service];
            [service15 timeElapsed];
            v110 = v109;
            [task4 name];
            v135 = serviceResult;
            v112 = v111 = v15;
            v113 = [task4 pid];
            *buf = 138544642;
            v147 = serviceProcessName5;
            v148 = 1024;
            v149 = v104;
            v101 = v139;
            v150 = 2048;
            v151 = threadID5;
            serviceNode = v106;
            v152 = 2048;
            v153 = v110;
            v154 = 2114;
            *v155 = v112;
            *&v155[8] = 1024;
            LODWORD(v156) = v113;
            _os_log_impl(&dword_270397000, v102, OS_LOG_TYPE_DEFAULT, "Service <%{public}@ [%d] tid[%llx] time-elapsed[%fs]>: %{public}@ [%d] is not killable, checking for other issues", buf, 0x36u);

            v15 = v111;
            serviceResult = v135;

            contextCopy = v140;
            threadExhaustions = v145;
          }

          *__error() = v101;
          task = v130;
          if (!v130)
          {
            task = task4;
          }
        }

        else
        {

          v15 = v130;
          task = task4;
        }
      }

      else
      {
        v63 = __error();
        v64 = *v63;
        v65 = _ublogt(v63);
        if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
        {
          serviceProcessName6 = [serviceResult serviceProcessName];
          service16 = [serviceResult service];
          v143 = v64;
          v67 = [service16 pid];
          service17 = [serviceResult service];
          v68 = threadExhaustions;
          v69 = serviceNode;
          threadID6 = [service17 threadID];
          [serviceResult service];
          v133 = serviceResult;
          v72 = v71 = v15;
          [v72 timeElapsed];
          *buf = 138544642;
          v147 = serviceProcessName6;
          v148 = 1024;
          v149 = v67;
          v64 = v143;
          v150 = 2048;
          v151 = threadID6;
          serviceNode = v69;
          threadExhaustions = v68;
          v152 = 2048;
          v153 = v73;
          v154 = 1024;
          *v155 = effectiveJetsamPriority;
          *&v155[4] = 1024;
          *&v155[6] = effectiveJetsamPriority2;
          _os_log_impl(&dword_270397000, v65, OS_LOG_TYPE_DEFAULT, "Service <%{public}@ [%d] tid[%llx] time-elapsed[%fs]>: Correlated deadlocks involve only processes of higher jetsam priority (lowest %d) than service (%d)", buf, 0x32u);

          v15 = v71;
          serviceResult = v133;

          contextCopy = v140;
        }

        *__error() = v64;
        task = v130;
      }
    }

    else
    {
      v74 = __error();
      v75 = *v74;
      v76 = _ublogt(v74);
      if (os_log_type_enabled(v76, OS_LOG_TYPE_INFO))
      {
        serviceProcessName7 = [serviceResult serviceProcessName];
        [serviceResult service];
        v138 = v144 = threadExhaustions;
        v78 = v75;
        v79 = [v138 pid];
        service18 = [serviceResult service];
        v81 = serviceNode;
        threadID7 = [service18 threadID];
        service19 = [serviceResult service];
        [service19 timeElapsed];
        *buf = 138544130;
        v147 = serviceProcessName7;
        v148 = 1024;
        v149 = v79;
        v75 = v78;
        v150 = 2048;
        v151 = threadID7;
        serviceNode = v81;
        v152 = 2048;
        v153 = v84;
        _os_log_impl(&dword_270397000, v76, OS_LOG_TYPE_INFO, "Service <%{public}@ [%d] tid[%llx] time-elapsed[%fs]>: No correlated deadlock found", buf, 0x26u);

        v15 = 0;
        threadExhaustions = v144;
      }

      *__error() = v75;
      contextCopy = v140;
    }
  }

  objc_autoreleasePoolPop(context);

  return task;
}

- (id)selectTaskForServiceNode:(id)node serviceResult:(id)result options:(unint64_t)options
{
  v58 = *MEMORY[0x277D85DE8];
  nodeCopy = node;
  resultCopy = result;
  service = [resultCopy service];
  [service timeElapsed];
  v12 = v11 * 0.66666;

  v47 = 0;
  v13 = [(UBUnblockReactiveRecovery *)self threadExhaustionsAboveLimit:&v47 threadIDToThreadExhaustionDict:v12];
  v14 = v47;
  v46 = v13;
  v15 = [[UBServiceContext alloc] initWithServiceNode:nodeCopy serviceResult:resultCopy deadlocks:self->_deadlocks threadIDToDeadlockDict:self->_threadIDToDeadlockDict threadExhaustions:v13 threadIDToThreadExhaustionDict:v14 options:options];
  v16 = [(UBUnblockReactiveRecovery *)self selectTaskInDefinitiveIssuesWithServiceContext:v15];
  if (v16)
  {
    v17 = v16;
  }

  else
  {
    v45 = v14;
    optionsCopy = options;
    v18 = nodeCopy;
    v19 = v18;
    if (v18)
    {
      v43 = nodeCopy;
      v20 = 0;
      v21 = 0;
      dependency = v18;
      while (![dependency isPartOfADeadlock])
      {
        v23 = dependency;

        v24 = v20;
        if (!v20)
        {
          if ([v23 isPartOfADeadlock])
          {
            v24 = v23;
          }

          else
          {
            v24 = 0;
          }
        }

        v25 = v24;

        dependency = [v23 dependency];

        if (dependency)
        {
          v20 = v25;
          v21 = v23;
          if (dependency != v25)
          {
            continue;
          }
        }

        nodeCopy = v43;
        goto LABEL_14;
      }

      nodeCopy = v43;
    }

    else
    {
      v23 = 0;
LABEL_14:
      v21 = v23;
      dependency = v21;
    }

    taskDependency = [dependency taskDependency];
    task = [taskDependency task];
    v28 = task;
    if (task)
    {
      task2 = task;
    }

    else
    {
      task2 = [dependency task];
    }

    v30 = task2;

    v31 = __error();
    v32 = *v31;
    v33 = _ublogt(v31);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      serviceProcessName = [resultCopy serviceProcessName];
      service2 = [resultCopy service];
      v39 = [service2 pid];
      service3 = [resultCopy service];
      v40 = v32;
      threadID = [service3 threadID];
      name = [v30 name];
      v37 = [v30 pid];
      *buf = 138544386;
      v49 = serviceProcessName;
      v50 = 1024;
      v51 = v39;
      v52 = 2048;
      v53 = threadID;
      v32 = v40;
      v54 = 2114;
      v55 = name;
      v56 = 1024;
      v57 = v37;
      _os_log_impl(&dword_270397000, v33, OS_LOG_TYPE_INFO, "Service <%{public}@ [%d] tid[%llx]>: The last known blocking task is %{public}@ [%d].", buf, 0x2Cu);
    }

    *__error() = v32;
    v17 = [(UBUnblockReactiveRecovery *)self selectTaskBlockingTask:v30 serviceContext:v15];

    if (v17)
    {
      v14 = v45;
    }

    else
    {
      v17 = [(UBUnblockReactiveRecovery *)self selectTaskInvolvedInAnyIssueWithServiceContext:v15];
      v14 = v45;
      if (!v17)
      {
        [(UBUnblockReactiveRecovery *)self fillInRecoveryInfo:resultCopy deadlockNodeSelected:0 exhaustedTaskSelected:0 threadExhaustions:v46 options:optionsCopy];
      }
    }
  }

  return v17;
}

- (id)selectTaskInTasks:(id)tasks serviceContext:(id)context
{
  v126 = *MEMORY[0x277D85DE8];
  tasksCopy = tasks;
  contextCopy = context;
  serviceNode = [contextCopy serviceNode];
  v90 = contextCopy;
  options = [contextCopy options];
  if ([tasksCopy count] <= 1)
  {
    anyObject = [tasksCopy anyObject];
    goto LABEL_109;
  }

  v81 = serviceNode;
  task = [serviceNode task];
  v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v115 = 0u;
  v116 = 0u;
  v117 = 0u;
  v118 = 0u;
  v10 = tasksCopy;
  v11 = [v10 countByEnumeratingWithState:&v115 objects:v125 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v116;
    v14 = 0x80000000;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v116 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v115 + 1) + 8 * i);
        taskStates = [v16 taskStates];
        lastObject = [taskStates lastObject];

        if (lastObject)
        {
          effectiveJetsamPriority = [lastObject effectiveJetsamPriority];
          v20 = effectiveJetsamPriority;
          if (v14 == 0x80000000 || (effectiveJetsamPriority != 0x80000000 ? (v21 = effectiveJetsamPriority <= v14) : (v21 = 0), v21))
          {
            if (effectiveJetsamPriority != v14)
            {
              [v9 removeAllObjects];
              v14 = v20;
            }

            [v9 addObject:v16];
          }
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v115 objects:v125 count:16];
    }

    while (v12);
  }

  if ([v9 count] <= 1)
  {
    tasksCopy = v10;
    anyObject = [v9 anyObject];

LABEL_107:
    serviceNode = v81;
    goto LABEL_108;
  }

  v22 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v111 = 0u;
  v112 = 0u;
  v113 = 0u;
  v114 = 0u;
  v23 = v9;
  v24 = [v23 countByEnumeratingWithState:&v111 objects:v124 count:16];
  if (!v24)
  {
    goto LABEL_39;
  }

  v25 = v24;
  v26 = 0;
  v27 = 0;
  v28 = *v112;
  do
  {
    for (j = 0; j != v25; ++j)
    {
      if (*v112 != v28)
      {
        objc_enumerationMutation(v23);
      }

      v30 = *(*(&v111 + 1) + 8 * j);
      taskStates2 = [v30 taskStates];
      lastObject2 = [taskStates2 lastObject];

      if (lastObject2)
      {
        v33 = [(UBUnblockReactiveRecovery *)self avoidKillingTask:v30 options:options];
        if ((v27 & (v30 == task || v33) & 1) == 0 && (v26 & v33 & 1) == 0)
        {
          if (v30 == task || v33)
          {
            if ((v30 != task) | v26 & 1)
            {
              v34 = v27;
LABEL_36:
              [v22 addObject:v30];
              v27 = v34;
              goto LABEL_37;
            }

            v26 = 1;
            v34 = v27;
          }

          else
          {
            v34 = 1;
            if (v27)
            {
              goto LABEL_36;
            }
          }

          [v22 removeAllObjects];
          goto LABEL_36;
        }
      }

LABEL_37:
    }

    v25 = [v23 countByEnumeratingWithState:&v111 objects:v124 count:16];
  }

  while (v25);
LABEL_39:

  if ([v22 count] <= 1)
  {
    tasksCopy = v23;
    anyObject = [v22 anyObject];

    goto LABEL_107;
  }

  v82 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  tasksCopy = v22;
  v86 = [tasksCopy countByEnumeratingWithState:&v107 objects:v123 count:16];
  if (v86)
  {
    v88 = 0;
    v83 = *v108;
    v84 = tasksCopy;
    do
    {
      for (k = 0; k != v86; ++k)
      {
        if (*v108 != v83)
        {
          objc_enumerationMutation(tasksCopy);
        }

        v36 = *(*(&v107 + 1) + 8 * k);
        v37 = objc_alloc_init(MEMORY[0x277CBEB58]);
        v103 = 0u;
        v104 = 0u;
        v105 = 0u;
        v106 = 0u;
        deadlocks = [v90 deadlocks];
        v39 = [deadlocks countByEnumeratingWithState:&v103 objects:v122 count:16];
        if (v39)
        {
          v40 = v39;
          v41 = *v104;
          do
          {
            for (m = 0; m != v40; ++m)
            {
              if (*v104 != v41)
              {
                objc_enumerationMutation(deadlocks);
              }

              v43 = *(*(&v103 + 1) + 8 * m);
              tasksInvolved = [v43 tasksInvolved];
              v45 = [tasksInvolved containsObject:v36];

              if (v45)
              {
                tasksBlocked = [v43 tasksBlocked];
                [v37 unionSet:tasksBlocked];
              }
            }

            v40 = [deadlocks countByEnumeratingWithState:&v103 objects:v122 count:16];
          }

          while (v40);
        }

        v101 = 0u;
        v102 = 0u;
        v99 = 0u;
        v100 = 0u;
        threadExhaustions = [v90 threadExhaustions];
        v48 = [threadExhaustions countByEnumeratingWithState:&v99 objects:v121 count:16];
        if (v48)
        {
          v49 = v48;
          v50 = *v100;
          do
          {
            for (n = 0; n != v49; ++n)
            {
              if (*v100 != v50)
              {
                objc_enumerationMutation(threadExhaustions);
              }

              v52 = *(*(&v99 + 1) + 8 * n);
              task2 = [v52 task];

              if (task2 == v36)
              {
                tasksBlocked2 = [v52 tasksBlocked];
                [v37 unionSet:tasksBlocked2];
              }
            }

            v49 = [threadExhaustions countByEnumeratingWithState:&v99 objects:v121 count:16];
          }

          while (v49);
        }

        v55 = [v37 count];
        if (v55 >= v88)
        {
          tasksCopy = v84;
          if (v55 != v88)
          {
            v56 = v55;
            [v82 removeAllObjects];
            v88 = v56;
          }

          [v82 addObject:v36];
        }

        else
        {
          tasksCopy = v84;
        }
      }

      v86 = [tasksCopy countByEnumeratingWithState:&v107 objects:v123 count:16];
    }

    while (v86);
  }

  v57 = v82;
  if ([v82 count] <= 1)
  {
    anyObject = [v82 anyObject];

    goto LABEL_107;
  }

  serviceNode = v81;
  v58 = v81;
  if (v58)
  {
    v59 = v58;
    v60 = 0;
    v61 = 0uLL;
    do
    {
      v97 = v61;
      v98 = v61;
      v95 = v61;
      v96 = v61;
      tasksCopy = v82;
      v62 = [tasksCopy countByEnumeratingWithState:&v95 objects:v120 count:16];
      if (v62)
      {
        v63 = v62;
        v64 = *v96;
        while (2)
        {
          for (ii = 0; ii != v63; ++ii)
          {
            if (*v96 != v64)
            {
              objc_enumerationMutation(tasksCopy);
            }

            v66 = *(*(&v95 + 1) + 8 * ii);
            task3 = [v59 task];
            v68 = task3;
            if (v66 == task3)
            {

LABEL_106:
              anyObject = v66;

              goto LABEL_107;
            }

            taskDependency = [v59 taskDependency];
            task4 = [taskDependency task];

            if (v66 == task4)
            {
              goto LABEL_106;
            }
          }

          v63 = [tasksCopy countByEnumeratingWithState:&v95 objects:v120 count:16];
          if (v63)
          {
            continue;
          }

          break;
        }
      }

      v71 = v60;
      if (!v60)
      {
        if ([v59 isPartOfADeadlock])
        {
          v71 = v59;
        }

        else
        {
          v71 = 0;
        }
      }

      v72 = v71;

      dependency = [v59 dependency];

      v61 = 0uLL;
      if (!dependency)
      {
        break;
      }

      v60 = v72;
      v59 = dependency;
    }

    while (dependency != v72);

    serviceNode = v81;
    v57 = v82;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v74 = v57;
    v57 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v91 = 0u;
    v92 = 0u;
    v93 = 0u;
    v94 = 0u;
    tasksCopy = v74;
    v75 = [tasksCopy countByEnumeratingWithState:&v91 objects:v119 count:16];
    if (v75)
    {
      v76 = v75;
      v77 = *v92;
      do
      {
        for (jj = 0; jj != v76; ++jj)
        {
          if (*v92 != v77)
          {
            objc_enumerationMutation(tasksCopy);
          }

          v79 = *(*(&v91 + 1) + 8 * jj);
          if ([tasksCopy countForObject:v79])
          {
            [v57 removeAllObjects];
          }

          [v57 addObject:v79];
        }

        v76 = [tasksCopy countByEnumeratingWithState:&v91 objects:v119 count:16];
      }

      while (v76);
    }

    if ([v57 count] >= 2)
    {

      goto LABEL_101;
    }

    anyObject = [v57 anyObject];
  }

  else
  {
LABEL_101:
    anyObject = [v57 anyObject];
    tasksCopy = v57;
  }

LABEL_108:

LABEL_109:

  return anyObject;
}

- (id)_recover:(unint64_t)_recover error:(id *)error
{
  selfCopy = self;
  v129 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  if (![(NSArray *)selfCopy->_stuckServices count])
  {
    v79 = __error();
    v80 = *v79;
    v81 = _ublogt(v79);
    if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
    {
      [UBUnblockReactiveRecovery _recover:error:];
    }

    *__error() = v80;
    if (!error)
    {
      goto LABEL_73;
    }

    v82 = MEMORY[0x277CCA9B8];
    v83 = *MEMORY[0x277D779D8];
    v84 = MEMORY[0x277CBEAC0];
    v85 = *MEMORY[0x277CCA450];
    v86 = @"No services provided for watchdogtimeout recovery.";
    goto LABEL_72;
  }

  stackshotData = selfCopy->_stackshotData;
  if ((_recover & 2) == 0 && !stackshotData)
  {
    if (![(UBUnblockReactiveRecovery *)selfCopy takeLiveStackshot])
    {
      v90 = __error();
      v91 = *v90;
      v92 = _ublogt(v90);
      if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
      {
        [UBUnblockReactiveRecovery _recover:error:];
      }

      *__error() = v91;
      if (!error)
      {
        goto LABEL_73;
      }

      v82 = MEMORY[0x277CCA9B8];
      v83 = *MEMORY[0x277D779D8];
      v84 = MEMORY[0x277CBEAC0];
      v85 = *MEMORY[0x277CCA450];
      v86 = @"Failed to take a live stackshot of the system.";
      goto LABEL_72;
    }

    stackshotData = selfCopy->_stackshotData;
  }

  if (![(NSData *)stackshotData length])
  {
    v87 = __error();
    v88 = *v87;
    v89 = _ublogt(v87);
    if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
    {
      [UBUnblockReactiveRecovery _recover:error:];
    }

    *__error() = v88;
    if (!error)
    {
      goto LABEL_73;
    }

    v82 = MEMORY[0x277CCA9B8];
    v83 = *MEMORY[0x277D779D8];
    v84 = MEMORY[0x277CBEAC0];
    v85 = *MEMORY[0x277CCA450];
    v86 = @"Invalid stackshot data received.";
LABEL_72:
    v93 = [v84 dictionaryWithObject:v86 forKey:v85];
    *error = [v82 errorWithDomain:v83 code:1 userInfo:v93];

LABEL_73:
    v8 = 0;
    goto LABEL_74;
  }

  _recoverCopy = _recover;
  v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSArray count](selfCopy->_stuckServices, "count")}];
  context = objc_autoreleasePoolPush();
  initForFileParsing = [objc_alloc(MEMORY[0x277D4B458]) initForFileParsing];
  sampleStore = selfCopy->_sampleStore;
  selfCopy->_sampleStore = initForFileParsing;

  [(SASampleStore *)selfCopy->_sampleStore setDataGatheringOptions:2048];
  [(SASampleStore *)selfCopy->_sampleStore addKCDataStackshot:selfCopy->_stackshotData];
  [(SASampleStore *)selfCopy->_sampleStore postprocess];
  v11 = __error();
  v12 = *v11;
  v13 = _ublogt(v11);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_270397000, v13, OS_LOG_TYPE_DEFAULT, "Successfully initialized a sample store with stackshot data.", buf, 2u);
  }

  *__error() = v12;
  [(UBUnblockReactiveRecovery *)selfCopy prepareDependencyGraph];
  [(UBUnblockReactiveRecovery *)selfCopy findDeadlocks];
  v14 = __error();
  v15 = *v14;
  v16 = _ublogt(v14);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_270397000, v16, OS_LOG_TYPE_DEFAULT, "Parsed dependency graph and deadlocks from a sample store.", buf, 2u);
  }

  *__error() = v15;
  v112 = 0u;
  v113 = 0u;
  v114 = 0u;
  v115 = 0u;
  obj = selfCopy->_stuckServices;
  v17 = [(NSArray *)obj countByEnumeratingWithState:&v112 objects:v128 count:16];
  if (v17)
  {
    v19 = v17;
    v20 = *v113;
    *&v18 = 138412546;
    v95 = v18;
    v110 = v8;
    v107 = selfCopy;
    do
    {
      v21 = 0;
      do
      {
        if (*v113 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v112 + 1) + 8 * v21);
        v23 = objc_alloc(MEMORY[0x277D779C8]);
        clientName = [(UBUnblockReactiveRecovery *)selfCopy clientName];
        v25 = [v23 initWithService:v22 clientName:clientName];

        [v8 addObject:v25];
        if ([v22 pid] >= 1)
        {
          if ([v22 threadID])
          {
            [v22 timeElapsed];
            if (v26 > 0.0)
            {
              tasksByPid = [(SASampleStore *)selfCopy->_sampleStore tasksByPid];
              v28 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v22, "pid")}];
              v29 = [tasksByPid objectForKeyedSubscript:v28];
              lastObject = [v29 lastObject];

              if (lastObject)
              {
                name = [lastObject name];
                [v25 setServiceProcessName:name];

                [v25 setServiceProcessIs3P:{-[UBUnblockReactiveRecovery taskIs3PApp:options:](selfCopy, "taskIs3PApp:options:", lastObject, _recoverCopy)}];
                if ([v22 threadID] != 1)
                {
                  goto LABEL_23;
                }

                mainThread = [lastObject mainThread];

                if (mainThread)
                {
                  mainThread2 = [lastObject mainThread];
                  [v22 setThreadID:{objc_msgSend(mainThread2, "threadId")}];

LABEL_23:
                  v34 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v22, "threadID", v95)}];
                  v35 = [(NSDictionary *)selfCopy->_dependencyGraph objectForKeyedSubscript:v34];
                  if (v35)
                  {
                    v36 = [(UBUnblockReactiveRecovery *)selfCopy selectTaskForServiceNode:v35 serviceResult:v25 options:_recoverCopy];
                    *&v108[4] = v36;
                    if (v36)
                    {
                      if (v36 == lastObject)
                      {
                        v67 = __error();
                        *v108 = *v67;
                        v39 = _ublogt(v67);
                        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
                        {
                          serviceProcessName = [v25 serviceProcessName];
                          v102 = [v22 pid];
                          v68 = v35;
                          v69 = v34;
                          threadID = [v22 threadID];
                          [v22 timeElapsed];
                          *buf = 138544130;
                          *v117 = serviceProcessName;
                          *&v117[8] = 1024;
                          *&v117[10] = v102;
                          v118 = 2048;
                          v119 = threadID;
                          v34 = v69;
                          v35 = v68;
                          selfCopy = v107;
                          v120 = 2048;
                          v121 = v71;
                          _os_log_impl(&dword_270397000, v39, OS_LOG_TYPE_DEFAULT, "Service <%{public}@ [%d] tid[%llx] time-elapsed[%fs]>: Best option is service process itself", buf, 0x26u);
                        }

                        v45 = 3;
                      }

                      else
                      {
                        v104 = v34;
                        v37 = [(UBUnblockReactiveRecovery *)selfCopy avoidKillingTask:v36 options:_recoverCopy];
                        v38 = __error();
                        *v108 = *v38;
                        v39 = _ublogt(v38);
                        v40 = os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT);
                        if (v37)
                        {
                          if (v40)
                          {
                            serviceProcessName2 = [v25 serviceProcessName];
                            v99 = [v22 pid];
                            threadID2 = [v22 threadID];
                            [v22 timeElapsed];
                            v42 = v41;
                            name2 = [*&v108[4] name];
                            v44 = [*&v108[4] pid];
                            *buf = 138544642;
                            *v117 = serviceProcessName2;
                            *&v117[8] = 1024;
                            *&v117[10] = v99;
                            v118 = 2048;
                            v119 = threadID2;
                            v120 = 2048;
                            v121 = v42;
                            v122 = 2114;
                            v123 = name2;
                            v124 = 1024;
                            v125 = v44;
                            _os_log_impl(&dword_270397000, v39, OS_LOG_TYPE_DEFAULT, "Service <%{public}@ [%d] tid[%llx] time-elapsed[%fs]>: Best option is non-killable process %{public}@ [%d]", buf, 0x36u);
                          }

                          v45 = 2;
                        }

                        else
                        {
                          if (v40)
                          {
                            serviceProcessName3 = [v25 serviceProcessName];
                            v100 = [v22 pid];
                            threadID3 = [v22 threadID];
                            [v22 timeElapsed];
                            v73 = v72;
                            name3 = [*&v108[4] name];
                            v75 = [*&v108[4] pid];
                            *buf = 138544642;
                            *v117 = serviceProcessName3;
                            *&v117[8] = 1024;
                            *&v117[10] = v100;
                            v118 = 2048;
                            v119 = threadID3;
                            v120 = 2048;
                            v121 = v73;
                            v122 = 2114;
                            v123 = name3;
                            v124 = 1024;
                            v125 = v75;
                            _os_log_impl(&dword_270397000, v39, OS_LOG_TYPE_DEFAULT, "Service <%{public}@ [%d] tid[%llx] time-elapsed[%fs]>: Best option is killable process %{public}@ [%d]", buf, 0x36u);
                          }

                          v45 = 4;
                        }

                        v34 = v104;
                      }
                    }

                    else
                    {
                      v59 = __error();
                      *v108 = *v59;
                      v39 = _ublogt(v59);
                      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
                      {
                        serviceProcessName4 = [v25 serviceProcessName];
                        v60 = v35;
                        v61 = v34;
                        v62 = [v22 pid];
                        threadID4 = [v22 threadID];
                        *buf = 138543874;
                        *v117 = serviceProcessName4;
                        *&v117[8] = 1024;
                        *&v117[10] = v62;
                        v34 = v61;
                        v35 = v60;
                        selfCopy = v107;
                        v118 = 2048;
                        v119 = threadID4;
                        _os_log_impl(&dword_270397000, v39, OS_LOG_TYPE_DEFAULT, "Service <%{public}@ [%d] tid[%llx]>: Could not find any relevant unrecoverable issues affecting it.", buf, 0x1Cu);
                      }

                      v45 = 2;
                    }

                    *__error() = *v108;
                    [v25 setRecoveryStatus:v45];
                  }

                  else
                  {
                    v55 = v34;
                    v56 = __error();
                    v57 = *v56;
                    v58 = _ublogt(v56);
                    if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
                    {
                      [UBUnblockReactiveRecovery _recover:v126 error:v22];
                    }

                    *__error() = v57;
                    [v25 setRecoveryStatus:1];
                    v34 = v55;
                    v35 = 0;
                    selfCopy = v107;
                  }

LABEL_57:
                  v8 = v110;

                  goto LABEL_33;
                }

                v64 = __error();
                v65 = *v64;
                v66 = _ublogt(v64);
                if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
                {
                  name4 = [lastObject name];
                  v77 = [v22 pid];
                  *buf = v95;
                  *v117 = name4;
                  *&v117[8] = 1024;
                  *&v117[10] = v77;
                  _os_log_error_impl(&dword_270397000, v66, OS_LOG_TYPE_ERROR, "%@ [%d] does not have a dedicated main thread.", buf, 0x12u);
                }

                *__error() = v65;
              }

              else
              {
                v49 = __error();
                v50 = *v49;
                v51 = _ublogt(v49);
                if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
                {
                  [UBUnblockReactiveRecovery _recover:v127 error:v22];
                }

                *__error() = v50;
              }

              [v25 setRecoveryStatus:{1, v95}];
              goto LABEL_57;
            }
          }
        }

        v46 = __error();
        v47 = *v46;
        v48 = _ublogt(v46);
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          v52 = [v22 pid];
          threadID5 = [v22 threadID];
          [v22 timeElapsed];
          *buf = 67109632;
          *v117 = v52;
          *&v117[4] = 2048;
          *&v117[6] = threadID5;
          v8 = v110;
          v118 = 2048;
          v119 = v54;
          _os_log_error_impl(&dword_270397000, v48, OS_LOG_TYPE_ERROR, "Invalid input. pid:%d, threadID:%llu timeElapsed:%f", buf, 0x1Cu);
        }

        *__error() = v47;
        [v25 setRecoveryStatus:1];
LABEL_33:

        ++v21;
      }

      while (v19 != v21);
      v78 = [(NSArray *)obj countByEnumeratingWithState:&v112 objects:v128 count:16];
      v19 = v78;
    }

    while (v78);
  }

  [(UBUnblockReactiveRecovery *)selfCopy clearCaches];
  objc_autoreleasePoolPop(context);
  [(UBUnblockReactiveRecovery *)selfCopy doTermination:v8 options:_recoverCopy];
LABEL_74:
  os_unfair_lock_unlock(&selfCopy->_lock);

  return v8;
}

- (id)recover:(unint64_t)recover error:(id *)error
{
  v10 = 0;
  v6 = [(UBUnblockReactiveRecovery *)self _recover:recover error:&v10];
  v7 = v10;
  if (!v6)
  {
    [(UBUnblockReactiveRecovery *)self emitTelemetryForError:v7];
  }

  if (error)
  {
    v8 = v7;
    *error = v7;
  }

  return v6;
}

- (void)emitTelemetryForError:(id)error
{
  errorCopy = error;
  v3 = errorCopy;
  AnalyticsSendEventLazy();
}

- (void)fillInRecoveryInfo:deadlockNodeSelected:exhaustedTaskSelected:threadExhaustions:options:.cold.3()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)taskIs3PApp:(int)a3 options:(os_log_t)log .cold.1(void *a1, uint8_t *buf, int a3, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 1024;
  *(buf + 14) = a3;
  _os_log_error_impl(&dword_270397000, log, OS_LOG_TYPE_ERROR, "Unable to get path for %@ [%d], assuming 3P app", buf, 0x12u);
}

- (void)taskIs3PApp:options:.cold.2()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)avoidKillingTask:options:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_12();
  v3 = 1024;
  v4 = v0;
  _os_log_debug_impl(&dword_270397000, v1, OS_LOG_TYPE_DEBUG, "Candidate task %{public}@ [%d] is not eligible for termination", v2, 0x12u);
}

- (void)selectTaskInDefinitiveIssuesWithServiceContext:(void *)a1 .cold.1(void *a1)
{
  v2 = [a1 serviceProcessName];
  v3 = [a1 service];
  [v3 pid];
  v4 = [a1 service];
  [v4 threadID];
  v5 = [a1 service];
  [v5 timeElapsed];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x26u);
}

- (void)selectTaskBlockingTask:serviceContext:.cold.1()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_6();
  v3 = [v2 serviceProcessName];
  v4 = [v0 service];
  [v4 pid];
  v5 = [v0 service];
  [v5 threadID];
  v6 = [v0 service];
  [v6 timeElapsed];
  v7 = [v1 name];
  [v1 pid];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v8, v9, v10, v11, v12, 0x36u);

  OUTLINED_FUNCTION_7();
}

- (void)selectTaskBlockingTask:serviceContext:.cold.2()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_6();
  v3 = [v2 serviceProcessName];
  v4 = [v0 service];
  [v4 pid];
  v5 = [v0 service];
  [v5 threadID];
  v6 = [v0 service];
  [v6 timeElapsed];
  v7 = [v1 name];
  [v1 pid];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v8, v9, v10, v11, v12, 0x36u);

  OUTLINED_FUNCTION_7();
}

- (void)selectTaskBlockingTask:serviceContext:.cold.3()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_6();
  v3 = [v2 serviceProcessName];
  v4 = [v0 service];
  [v4 pid];
  v5 = [v0 service];
  [v5 threadID];
  v6 = [v0 service];
  [v6 timeElapsed];
  v7 = [v1 name];
  [v1 pid];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v8, v9, v10, v11, v12, 0x36u);

  OUTLINED_FUNCTION_7();
}

- (void)selectTaskInvolvedInAnyIssueWithServiceContext:(void *)a1 .cold.1(void *a1)
{
  v2 = [a1 serviceProcessName];
  v3 = [a1 service];
  [v3 pid];
  v4 = [a1 service];
  [v4 threadID];
  v5 = [a1 service];
  [v5 timeElapsed];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x26u);
}

- (void)selectTaskInvolvedInAnyIssueWithServiceContext:(void *)a1 .cold.2(void *a1)
{
  v2 = [a1 serviceProcessName];
  v3 = [a1 service];
  [v3 pid];
  v4 = [a1 service];
  [v4 threadID];
  v5 = [a1 service];
  [v5 timeElapsed];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x26u);
}

- (void)_recover:error:.cold.1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_recover:(uint64_t)a1 error:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v5 = [OUTLINED_FUNCTION_10(a1 a2)];
  *v4 = 134217984;
  *v3 = v5;
  _os_log_error_impl(&dword_270397000, v2, OS_LOG_TYPE_ERROR, "No dependency node for thread 0x%#llx", v4, 0xCu);
}

- (void)_recover:(uint64_t)a1 error:(uint64_t)a2 .cold.3(uint64_t a1, uint64_t a2)
{
  v5 = [OUTLINED_FUNCTION_10(a1 a2)];
  *v4 = 67109120;
  *v3 = v5;
  _os_log_error_impl(&dword_270397000, v2, OS_LOG_TYPE_ERROR, "Unable to find a service with pid [%d]", v4, 8u);
}

- (void)_recover:error:.cold.4()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_recover:error:.cold.5()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end