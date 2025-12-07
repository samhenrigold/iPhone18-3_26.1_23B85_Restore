@interface BRCPipeline
- (BOOL)_buildJobPlanForJob:(id)job error:(id *)error;
- (BRCPipeline)initWithName:(id)name stageHandlers:(id)handlers;
- (id)_generateProgressForJob:(id)job;
- (id)addJob:(id)job moreComing:(BOOL)coming;
- (void)_armResumeTimer;
- (void)_completedJob:(id)job forStage:(unint64_t)stage recoveryStage:(unint64_t)recoveryStage error:(id)error;
- (void)_computeStageStringifier;
- (void)_pauseStageHandlerScheduling;
- (void)_resumeStageHandlerScheduling;
- (void)_sendJob:(id)job toStageHandlerWithStageID:(unint64_t)d;
- (void)_setStageJobCompletionHandlers;
- (void)_validateStageHandlers;
- (void)dumpToContext:(id)context;
@end

@implementation BRCPipeline

- (BRCPipeline)initWithName:(id)name stageHandlers:(id)handlers
{
  nameCopy = name;
  handlersCopy = handlers;
  v22.receiver = self;
  v22.super_class = BRCPipeline;
  v9 = [(BRCPipeline *)&v22 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_name, name);
    v11 = [nameCopy stringByAppendingString:@".queue"];
    uTF8String = [v11 UTF8String];
    v13 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v14 = dispatch_queue_attr_make_with_autorelease_frequency(v13, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = dispatch_queue_create(uTF8String, v14);

    queue = v10->_queue;
    v10->_queue = v15;

    v17 = objc_opt_new();
    cancelledJobs = v10->_cancelledJobs;
    v10->_cancelledJobs = v17;

    v19 = [handlersCopy copy];
    stageHandlers = v10->_stageHandlers;
    v10->_stageHandlers = v19;

    [(BRCPipeline *)v10 _validateStageHandlers];
    [(BRCPipeline *)v10 _computeStageStringifier];
    [(BRCPipeline *)v10 _setStageJobCompletionHandlers];
  }

  return v10;
}

- (void)_completedJob:(id)job forStage:(unint64_t)stage recoveryStage:(unint64_t)recoveryStage error:(id)error
{
  v34 = *MEMORY[0x277D85DE8];
  jobCopy = job;
  errorCopy = error;
  dispatch_assert_queue_V2(self->_queue);
  if ([jobCopy activeStageID] != stage)
  {
    v14 = brc_bread_crumbs();
    v15 = brc_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      v27 = (*(self->_stageStringifier + 2))();
      v28 = 138412802;
      v29 = jobCopy;
      v30 = 2112;
      v31 = v27;
      v32 = 2112;
      v33 = v14;
      _os_log_fault_impl(&dword_223E7A000, v15, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Job active stage doesn't match completed stage for %@ vs %@. Was the completion handler called more than once?%@", &v28, 0x20u);
    }

    goto LABEL_10;
  }

  v12 = [(NSMutableSet *)self->_cancelledJobs count];
  [(NSMutableSet *)self->_cancelledJobs removeObject:jobCopy];
  v13 = [(NSMutableSet *)self->_cancelledJobs count];
  if (!errorCopy && v12 != v13)
  {
    errorCopy = [MEMORY[0x277CCA9B8] brc_errorOperationCancelled];
  }

  if (errorCopy)
  {
    [jobCopy completeWithError:errorCopy];
LABEL_10:

    goto LABEL_11;
  }

  if (recoveryStage == 0x7FFFFFFFFFFFFFFFLL)
  {
    advanceJobToNextStage = [jobCopy advanceJobToNextStage];
    if (advanceJobToNextStage == 0x7FFFFFFFFFFFFFFFLL)
    {
      [jobCopy completeWithError:0];
      goto LABEL_11;
    }

    recoveryStageCopy = advanceJobToNextStage;
    selfCopy2 = self;
    v22 = jobCopy;
LABEL_20:
    [(BRCPipeline *)selfCopy2 _sendJob:v22 toStageHandlerWithStageID:recoveryStageCopy];
    goto LABEL_11;
  }

  if ([(NSArray *)self->_stageHandlers count]> recoveryStage)
  {
    v17 = brc_bread_crumbs();
    v18 = brc_default_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [(NSArray *)self->_stageHandlers objectAtIndexedSubscript:recoveryStage];
      v20 = [(NSArray *)self->_stageHandlers objectAtIndexedSubscript:stage];
      v28 = 138412802;
      v29 = v19;
      v30 = 2112;
      v31 = v20;
      v32 = 2112;
      v33 = v17;
      _os_log_impl(&dword_223E7A000, v18, OS_LOG_TYPE_DEFAULT, "[WARNING] Found recovery stage %@ after executing %@%@", &v28, 0x20u);
    }

    [jobCopy advanceToRecoveryStage:recoveryStage];
    selfCopy2 = self;
    v22 = jobCopy;
    recoveryStageCopy = recoveryStage;
    goto LABEL_20;
  }

  v24 = brc_bread_crumbs();
  v25 = brc_default_log();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
  {
    [BRCPipeline _completedJob:v24 forStage:v25 recoveryStage:? error:?];
  }

  v26 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:15 description:@"unreachable: Recovery stage handler is out of index"];
  [jobCopy completeWithError:v26];

LABEL_11:
}

- (void)_setStageJobCompletionHandlers
{
  v17 = *MEMORY[0x277D85DE8];
  objc_initWeak(&location, self);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_stageHandlers;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v4)
  {
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        stageID = [v7 stageID];
        v9[0] = MEMORY[0x277D85DD0];
        v9[1] = 3221225472;
        v9[2] = __45__BRCPipeline__setStageJobCompletionHandlers__block_invoke;
        v9[3] = &unk_278506468;
        objc_copyWeak(v10, &location);
        v10[1] = stageID;
        [v7 setupWithInternalPipelineJobCompletionHandler:v9];
        objc_destroyWeak(v10);
      }

      v4 = [(NSArray *)v3 countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v4);
  }

  objc_destroyWeak(&location);
}

void __45__BRCPipeline__setStageJobCompletionHandlers__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v10 = WeakRetained[4];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__BRCPipeline__setStageJobCompletionHandlers__block_invoke_2;
  block[3] = &unk_278506440;
  block[4] = WeakRetained;
  v14 = v7;
  v16 = *(a1 + 40);
  v17 = a3;
  v15 = v8;
  v11 = v8;
  v12 = v7;
  dispatch_async(v10, block);
}

- (void)_validateStageHandlers
{
  v25 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = self->_stageHandlers;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = 0;
    v7 = *v17;
    v8 = *MEMORY[0x277CBE660];
    *&v4 = 138412546;
    v14 = v4;
    do
    {
      v9 = 0;
      v15 = v6;
      do
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v2);
        }

        v10 = *(*(&v16 + 1) + 8 * v9);
        if (v6 != [v10 stageID])
        {
          v11 = brc_bread_crumbs();
          v12 = brc_default_log();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
          {
            *buf = v14;
            v21 = v10;
            v22 = 2112;
            v23 = v11;
            _os_log_fault_impl(&dword_223E7A000, v12, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: handler is at an invalid index %@%@", buf, 0x16u);
          }

          v13 = [MEMORY[0x277CBEAD8] exceptionWithName:v8 reason:@"Stage handlers should be a sorted array starting at stageID 0 without holes" userInfo:0];
          [v13 raise];
        }

        ++v9;
        ++v6;
      }

      while (v5 != v9);
      v6 = v15 + v5;
      v5 = [(NSArray *)v2 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v5);
  }
}

- (void)_computeStageStringifier
{
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __39__BRCPipeline__computeStageStringifier__block_invoke;
  v5[3] = &unk_278506490;
  objc_copyWeak(&v6, &location);
  v3 = MEMORY[0x22AA4A310](v5);
  stageStringifier = self->_stageStringifier;
  self->_stageStringifier = v3;

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

__CFString *__39__BRCPipeline__computeStageStringifier__block_invoke(uint64_t a1, unint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  v5 = a2 == 0x7FFFFFFFFFFFFFFFLL || WeakRetained == 0;
  if (v5 || [WeakRetained[1] count] <= a2)
  {
    v9 = @"none";
  }

  else
  {
    v6 = [v4[1] objectAtIndexedSubscript:a2];
    v7 = [v6 name];

    if (v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", a2];
    }

    v9 = v8;
  }

  return v9;
}

- (BOOL)_buildJobPlanForJob:(id)job error:(id *)error
{
  v77 = *MEMORY[0x277D85DE8];
  jobCopy = job;
  v7 = objc_opt_new();
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v8 = self->_stageHandlers;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v63 objects:v76 count:16];
  if (v9)
  {
    v10 = v9;
    errorCopy = error;
    v52 = v8;
    v56 = jobCopy;
    v57 = 0;
    v11 = *v64;
    v53 = v7;
    v49 = *v64;
    while (1)
    {
      v12 = 0;
      v50 = v10;
      do
      {
        if (*v64 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v63 + 1) + 8 * v12);
        if ([v7 containsIndex:{objc_msgSend(v13, "stageID")}])
        {
          goto LABEL_26;
        }

        if (![v13 needsToHandleJob:jobCopy])
        {
          goto LABEL_26;
        }

        [v7 addIndex:{objc_msgSend(v13, "stageID")}];
        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
          goto LABEL_26;
        }

        requestedAdditionalStages = [v13 requestedAdditionalStages];
        v59 = 0u;
        v60 = 0u;
        v61 = 0u;
        v62 = 0u;
        v15 = requestedAdditionalStages;
        v16 = [v15 countByEnumeratingWithState:&v59 objects:v75 count:16];
        if (!v16)
        {
          goto LABEL_25;
        }

        v17 = v16;
        v58 = v13;
        v18 = *v60;
        v54 = v15;
        while (2)
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v60 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v59 + 1) + 8 * i);
            unsignedIntegerValue = [v20 unsignedIntegerValue];
            if (([v7 containsIndex:unsignedIntegerValue] & 1) == 0)
            {
              if (unsignedIntegerValue >= [(NSArray *)self->_stageHandlers count])
              {
                v30 = brc_bread_crumbs();
                v31 = brc_default_log();
                if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
                {
                  [BRCPipeline _buildJobPlanForJob:error:];
                }

                [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:15 description:{@"unreachable: Invalid additional index %lu", unsignedIntegerValue}];
                v33 = v32 = v52;
                if (v33)
                {
                  v34 = brc_bread_crumbs();
                  v35 = brc_default_log();
                  if (os_log_type_enabled(v35, 0x90u))
                  {
                    v48 = "(passed to caller)";
                    *buf = 136315906;
                    v68 = "[BRCPipeline _buildJobPlanForJob:error:]";
                    v69 = 2080;
                    if (!errorCopy)
                    {
                      v48 = "(ignored by caller)";
                    }

                    v70 = v48;
                    v71 = 2112;
                    v72 = v33;
                    v73 = 2112;
                    v74 = v34;
                    _os_log_error_impl(&dword_223E7A000, v35, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
                  }

                  v7 = v53;
                }

                if (errorCopy)
                {
                  v36 = v33;
                  *errorCopy = v33;
                }

                goto LABEL_53;
              }

              v22 = v7;
              v23 = v17;
              selfCopy = self;
              v25 = [(NSArray *)self->_stageHandlers objectAtIndexedSubscript:unsignedIntegerValue];
              if (!v25)
              {
                v33 = 0;
                v37 = brc_bread_crumbs();
                v38 = brc_default_log();
                v7 = v22;
                if (os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
                {
                  [BRCPipeline _buildJobPlanForJob:error:];
                }

                v39 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:15 description:{@"unreachable: No additional stage handler found %lu", unsignedIntegerValue}];
                v40 = errorCopy;
                v32 = v52;
                if (v39)
                {
                  v41 = brc_bread_crumbs();
                  v42 = brc_default_log();
                  if (!os_log_type_enabled(v42, 0x90u))
                  {
                    goto LABEL_49;
                  }

                  v43 = "(passed to caller)";
                  *buf = 136315906;
                  v68 = "[BRCPipeline _buildJobPlanForJob:error:]";
                  v69 = 2080;
                  if (!errorCopy)
                  {
                    v43 = "(ignored by caller)";
                  }

                  goto LABEL_60;
                }

LABEL_50:
                if (v40)
                {
                  v46 = v39;
                  *v40 = v39;
                }

LABEL_53:
                jobCopy = v56;

                v29 = 0;
                v28 = v57;
                goto LABEL_54;
              }

              if ((objc_opt_respondsToSelector() & 1) == 0)
              {
                v33 = v25;
                v44 = brc_bread_crumbs();
                v45 = brc_default_log();
                if (os_log_type_enabled(v45, OS_LOG_TYPE_FAULT))
                {
                  [BRCPipeline _buildJobPlanForJob:error:];
                }

                v39 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:15 description:{@"unreachable: Invalid additional stage handler %lu", unsignedIntegerValue}];
                v40 = errorCopy;
                v32 = v52;
                v7 = v22;
                if (v39)
                {
                  v41 = brc_bread_crumbs();
                  v42 = brc_default_log();
                  if (!os_log_type_enabled(v42, 0x90u))
                  {
                    goto LABEL_49;
                  }

                  v43 = "(passed to caller)";
                  *buf = 136315906;
                  v68 = "[BRCPipeline _buildJobPlanForJob:error:]";
                  v69 = 2080;
                  if (!errorCopy)
                  {
                    v43 = "(ignored by caller)";
                  }

LABEL_60:
                  v70 = v43;
                  v71 = 2112;
                  v72 = v39;
                  v73 = 2112;
                  v74 = v41;
                  _os_log_error_impl(&dword_223E7A000, v42, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
LABEL_49:

                  v7 = v53;
                }

                goto LABEL_50;
              }

              if ([v25 needsToHandleJob:v56 asRequestedByStage:{objc_msgSend(v58, "stageID")}])
              {
                v55 = v25;
                v26 = v57;
                if (!v57)
                {
                  v26 = objc_opt_new();
                }

                v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v58, "stageID")}];
                v57 = v26;
                [v26 setObject:v27 forKeyedSubscript:v20];

                v22 = v53;
                [v53 addIndex:unsignedIntegerValue];
                v15 = v54;
                v25 = v55;
              }

              self = selfCopy;
              v17 = v23;
              v7 = v22;
            }
          }

          v17 = [v15 countByEnumeratingWithState:&v59 objects:v75 count:16];
          if (v17)
          {
            continue;
          }

          break;
        }

LABEL_25:

        v8 = v52;
        v11 = v49;
        v10 = v50;
        jobCopy = v56;
LABEL_26:
        ++v12;
      }

      while (v12 != v10);
      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v63 objects:v76 count:16];
      if (!v10)
      {
        goto LABEL_30;
      }
    }
  }

  v57 = 0;
LABEL_30:

  v28 = v57;
  [jobCopy setJobPlan:v7 additionalToRequestingStageMap:v57];
  v29 = 1;
LABEL_54:

  return v29;
}

- (void)_sendJob:(id)job toStageHandlerWithStageID:(unint64_t)d
{
  jobCopy = job;
  v7 = [(NSArray *)self->_stageHandlers objectAtIndexedSubscript:d];
  v8 = v7;
  if (v7)
  {
    [v7 addJob:jobCopy];
  }

  else
  {
    v9 = brc_bread_crumbs();
    v10 = brc_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [BRCPipeline _sendJob:toStageHandlerWithStageID:];
    }

    v11 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:15 description:{@"unreachable: Invalid stage plan -- no stage handler for %lu", d}];
    [jobCopy completeWithError:v11];
  }
}

- (void)_armResumeTimer
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = [BRCUserDefaults defaultsForMangledID:0];
  [v3 pipelineAutoResumeTimeout];
  v5 = v4;

  v6 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_queue);
  pipelineAutoResumeTimer = self->_pipelineAutoResumeTimer;
  self->_pipelineAutoResumeTimer = v6;

  v8 = self->_pipelineAutoResumeTimer;
  v9 = dispatch_time(0, 1000000000 * v5);
  dispatch_source_set_timer(v8, v9, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
  v10 = self->_pipelineAutoResumeTimer;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __30__BRCPipeline__armResumeTimer__block_invoke;
  handler[3] = &unk_2784FF450;
  handler[4] = self;
  dispatch_source_set_event_handler(v10, handler);
  dispatch_activate(self->_pipelineAutoResumeTimer);
}

- (void)_pauseStageHandlerScheduling
{
  v13 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  if (!self->_pipelineAutoResumeTimer)
  {
    [(BRCPipeline *)self _armResumeTimer];
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    objectEnumerator = [(NSArray *)self->_stageHandlers objectEnumerator];
    v4 = [objectEnumerator countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v9;
      do
      {
        v7 = 0;
        do
        {
          if (*v9 != v6)
          {
            objc_enumerationMutation(objectEnumerator);
          }

          [*(*(&v8 + 1) + 8 * v7++) disableScheduling];
        }

        while (v5 != v7);
        v5 = [objectEnumerator countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v5);
    }
  }
}

- (void)_resumeStageHandlerScheduling
{
  v15 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  pipelineAutoResumeTimer = self->_pipelineAutoResumeTimer;
  if (pipelineAutoResumeTimer)
  {
    dispatch_source_cancel(pipelineAutoResumeTimer);
    v4 = self->_pipelineAutoResumeTimer;
    self->_pipelineAutoResumeTimer = 0;

    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    objectEnumerator = [(NSArray *)self->_stageHandlers objectEnumerator];
    v6 = [objectEnumerator countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        v9 = 0;
        do
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(objectEnumerator);
          }

          [*(*(&v10 + 1) + 8 * v9++) enableScheduling];
        }

        while (v7 != v9);
        v7 = [objectEnumerator countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }
  }
}

- (id)_generateProgressForJob:(id)job
{
  jobCopy = job;
  v5 = objc_alloc_init(MEMORY[0x277CCAC48]);
  [v5 setCancellable:1];
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __39__BRCPipeline__generateProgressForJob___block_invoke;
  v8[3] = &unk_2784FFDF8;
  objc_copyWeak(&v10, &location);
  v6 = jobCopy;
  v9 = v6;
  [v5 setCancellationHandler:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);

  return v5;
}

void __39__BRCPipeline__generateProgressForJob___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[4];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __39__BRCPipeline__generateProgressForJob___block_invoke_42;
    v7[3] = &unk_2784FF478;
    v8 = *(a1 + 32);
    v9 = v3;
    dispatch_sync(v4, v7);
    v5 = v8;
  }

  else
  {
    v5 = brc_bread_crumbs();
    v6 = brc_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = v5;
      _os_log_impl(&dword_223E7A000, v6, OS_LOG_TYPE_DEFAULT, "[WARNING] Can't find sself!%@", buf, 0xCu);
    }
  }
}

void __39__BRCPipeline__generateProgressForJob___block_invoke_42(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) activeStageID];
  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v4;
      _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_DEFAULT, "[WARNING] Can't cancel a job that has already completed%@", &v9, 0xCu);
    }
  }

  else
  {
    v6 = v3;
    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __39__BRCPipeline__generateProgressForJob___block_invoke_42_cold_1();
    }

    [*(*(a1 + 40) + 16) addObject:*(a1 + 32)];
    v4 = [*(*(a1 + 40) + 8) objectAtIndexedSubscript:v6];
    if (!v4)
    {
      __39__BRCPipeline__generateProgressForJob___block_invoke_42_cold_2();
    }

    [v4 cancelJob:*v2];
  }
}

- (id)addJob:(id)job moreComing:(BOOL)coming
{
  jobCopy = job;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__BRCPipeline_addJob_moreComing___block_invoke;
  block[3] = &unk_278502F30;
  comingCopy = coming;
  block[4] = self;
  v12 = jobCopy;
  v8 = jobCopy;
  dispatch_sync(queue, block);
  v9 = [(BRCPipeline *)self _generateProgressForJob:v8];

  return v9;
}

void __33__BRCPipeline_addJob_moreComing___block_invoke(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    [*(a1 + 32) _pauseStageHandlerScheduling];
  }

  v2 = (a1 + 40);
  [*(a1 + 40) setStageStringifier:*(*(a1 + 32) + 48)];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v13 = 0;
  v5 = [v3 _buildJobPlanForJob:v4 error:&v13];
  v6 = v13;
  if ((v5 & 1) == 0)
  {
    v11 = *v2;
    v12 = v6;
LABEL_11:
    [v11 completeWithError:v12];
    goto LABEL_12;
  }

  v7 = brc_bread_crumbs();
  v8 = brc_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    __33__BRCPipeline_addJob_moreComing___block_invoke_cold_1();
  }

  v9 = [*v2 jobPlan];
  v10 = [v9 count];

  v11 = *v2;
  if (!v10)
  {
    v12 = 0;
    goto LABEL_11;
  }

  [*(a1 + 32) _sendJob:*(a1 + 40) toStageHandlerWithStageID:{objc_msgSend(v11, "advanceJobToInitialStage")}];
  if ((*(a1 + 48) & 1) == 0)
  {
    [*(a1 + 32) _resumeStageHandlerScheduling];
  }

LABEL_12:
}

- (void)dumpToContext:(id)context
{
  v16 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v5 = [(BRCPipeline *)self description];
  [contextCopy writeLineWithFormat:@"%@", v5];

  [contextCopy pushIndentation];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = self->_stageHandlers;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
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

        [*(*(&v11 + 1) + 8 * v10++) dumpToContext:contextCopy];
      }

      while (v8 != v10);
      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }

  [contextCopy popIndentation];
}

- (void)_completedJob:(uint64_t)a1 forStage:(NSObject *)a2 recoveryStage:error:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&dword_223E7A000, a2, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Recovery stage handler is out of index%@", &v2, 0xCu);
}

void __39__BRCPipeline__generateProgressForJob___block_invoke_42_cold_2()
{
  v4 = *MEMORY[0x277D85DE8];
  v0 = brc_bread_crumbs();
  v1 = brc_default_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    v2 = 138412290;
    v3 = v0;
    _os_log_fault_impl(&dword_223E7A000, v1, OS_LOG_TYPE_FAULT, "[CRIT] Assertion failed: handler%@", &v2, 0xCu);
  }
}

@end