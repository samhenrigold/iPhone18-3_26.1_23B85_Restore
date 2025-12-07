@interface BRCPipelineJob
- (BRCPipelineJob)initWithQualityOfService:(unsigned int)service completionHandler:(id)handler;
- (id)descriptionWithContext:(id)context;
- (unint64_t)activeStageID;
- (unint64_t)advanceJobToInitialStage;
- (unint64_t)advanceJobToNextStage;
- (void)advanceToRecoveryStage:(unint64_t)stage;
- (void)completeWithError:(id)error;
- (void)dumpToContext:(id)context;
- (void)setJobPlan:(id)plan additionalToRequestingStageMap:(id)map;
- (void)setStageStringifier:(id)stringifier;
@end

@implementation BRCPipelineJob

- (BRCPipelineJob)initWithQualityOfService:(unsigned int)service completionHandler:(id)handler
{
  handlerCopy = handler;
  v13.receiver = self;
  v13.super_class = BRCPipelineJob;
  v7 = [(BRCPipelineJob *)&v13 init];
  v8 = v7;
  if (v7)
  {
    v7->_currentStageID = 0x7FFFFFFFFFFFFFFFLL;
    v9 = MEMORY[0x22AA4A310](handlerCopy);
    completionHandler = v8->_completionHandler;
    v8->_completionHandler = v9;

    v8->_qualityOfService = service;
    stageStringifier = v8->_stageStringifier;
    v8->_stageStringifier = &__block_literal_global_4;
  }

  return v8;
}

__CFString *__61__BRCPipelineJob_initWithQualityOfService_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = @"none";
  }

  else
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", a2];
  }

  return v3;
}

- (void)setJobPlan:(id)plan additionalToRequestingStageMap:(id)map
{
  planCopy = plan;
  mapCopy = map;
  if (self->_jobPlan)
  {
    [BRCPipelineJob(InternalPipeline) setJobPlan:additionalToRequestingStageMap:];
  }

  v8 = [planCopy copy];
  jobPlan = self->_jobPlan;
  self->_jobPlan = v8;

  v10 = [mapCopy copy];
  additionalToRequestingStageMap = self->_additionalToRequestingStageMap;
  self->_additionalToRequestingStageMap = v10;
}

- (unint64_t)advanceJobToInitialStage
{
  v15 = *MEMORY[0x277D85DE8];
  jobPlan = self->_jobPlan;
  p_jobPlan = &self->_jobPlan;
  v4 = jobPlan;
  if (!jobPlan)
  {
    [(BRCPipelineJob(InternalPipeline) *)p_jobPlan advanceJobToInitialStage];
    v4 = *v10;
  }

  self->_currentStageID = [(NSIndexSet *)v4 firstIndex];
  v6 = brc_bread_crumbs();
  v7 = brc_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = (*(self->_stageStringifier + 2))();
    *v10 = 138412802;
    *&v10[4] = self;
    v11 = 2112;
    v12 = v9;
    v13 = 2112;
    v14 = v6;
    _os_log_debug_impl(&dword_223E7A000, v7, OS_LOG_TYPE_DEBUG, "[DEBUG] Starting job %@ with %@%@", v10, 0x20u);
  }

  return self->_currentStageID;
}

- (unint64_t)advanceJobToNextStage
{
  v14 = *MEMORY[0x277D85DE8];
  if (!self->_jobPlan)
  {
    [BRCPipelineJob(InternalPipeline) advanceJobToNextStage];
  }

  if (self->_currentStageID == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = brc_bread_crumbs();
    v4 = brc_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      [(BRCPipelineJob(InternalPipeline) *)v3 advanceJobToNextStage];
    }
  }

  else
  {
    self->_currentStageID = [(NSIndexSet *)self->_jobPlan indexGreaterThanIndex:?];
    v3 = brc_bread_crumbs();
    v4 = brc_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v7 = (*(self->_stageStringifier + 2))();
      v8 = 138412802;
      selfCopy = self;
      v10 = 2112;
      v11 = v7;
      v12 = 2112;
      v13 = v3;
      _os_log_debug_impl(&dword_223E7A000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] Advancing job %@ to %@%@", &v8, 0x20u);
    }
  }

  return self->_currentStageID;
}

- (void)completeWithError:(id)error
{
  v15 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  self->_currentStageID = 0x7FFFFFFFFFFFFFFFLL;
  if (self->_completionHandler)
  {
    v5 = brc_bread_crumbs();
    v6 = brc_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v9 = 138412802;
      selfCopy = self;
      v11 = 2112;
      v12 = errorCopy;
      v13 = 2112;
      v14 = v5;
      _os_log_debug_impl(&dword_223E7A000, v6, OS_LOG_TYPE_DEBUG, "[DEBUG] Completing Job %@ with error %@%@", &v9, 0x20u);
    }

    (*(self->_completionHandler + 2))();
    completionHandler = self->_completionHandler;
    self->_completionHandler = 0;
  }

  else
  {
    completionHandler = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [(BRCPipelineJob(InternalPipeline) *)self completeWithError:v8];
    }
  }
}

- (void)advanceToRecoveryStage:(unint64_t)stage
{
  if (!self->_stageToRecoveryPlanMap)
  {
    v5 = objc_opt_new();
    stageToRecoveryPlanMap = self->_stageToRecoveryPlanMap;
    self->_stageToRecoveryPlanMap = v5;
  }

  if (self->_currentStageID == 0x7FFFFFFFFFFFFFFFLL)
  {
    [(BRCPipelineJob(InternalPipeline) *)&self->_currentStageID advanceToRecoveryStage:?];
  }

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  v8 = [(NSMutableDictionary *)self->_stageToRecoveryPlanMap objectForKeyedSubscript:v7];
  if (!v8)
  {
    v8 = objc_opt_new();
    [(NSMutableDictionary *)self->_stageToRecoveryPlanMap setObject:v8 forKeyedSubscript:v7];
  }

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:stage];
  [v8 addObject:v9];
}

- (void)setStageStringifier:(id)stringifier
{
  self->_stageStringifier = MEMORY[0x22AA4A310](stringifier, a2);

  MEMORY[0x2821F96F8]();
}

- (unint64_t)activeStageID
{
  stageToRecoveryPlanMap = self->_stageToRecoveryPlanMap;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_currentStageID];
  v5 = [(NSMutableDictionary *)stageToRecoveryPlanMap objectForKeyedSubscript:v4];

  if (v5)
  {
    lastObject = [v5 lastObject];
    currentStageID = [lastObject unsignedIntegerValue];
  }

  else
  {
    currentStageID = self->_currentStageID;
  }

  return currentStageID;
}

- (id)descriptionWithContext:(id)context
{
  contextCopy = context;
  v25 = BRCPrettyPrintEnumWithContext(self->_qualityOfService, &brc_qos_entries, 0);
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __59__BRCPipelineJob_InternalPipeline__descriptionWithContext___block_invoke;
  v32[3] = &unk_2784FF6A0;
  v32[4] = self;
  v5 = contextCopy;
  v33 = v5;
  v6 = MEMORY[0x22AA4A310](v32);
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __59__BRCPipelineJob_InternalPipeline__descriptionWithContext___block_invoke_2;
  v31[3] = &unk_2784FF6C8;
  v31[4] = self;
  v7 = MEMORY[0x22AA4A310](v31);
  v8 = objc_opt_new();
  v9 = objc_opt_new();
  jobPlan = self->_jobPlan;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __59__BRCPipelineJob_InternalPipeline__descriptionWithContext___block_invoke_3;
  v26[3] = &unk_2784FF6F0;
  v26[4] = self;
  v11 = v8;
  v27 = v11;
  v12 = v6;
  v29 = v12;
  v13 = v7;
  v30 = v13;
  v14 = v9;
  v28 = v14;
  [(NSIndexSet *)jobPlan enumerateIndexesUsingBlock:v26];
  v15 = (*(self->_stageStringifier + 2))();
  v16 = (*(v12 + 2))(v12, self->_currentStageID);
  v17 = (*(v13 + 2))(v13, self->_currentStageID);
  v18 = [v15 stringByAppendingFormat:@"%@%@", v16, v17];

  if (v5)
  {
    v19 = [v5 highlightedString:v11 type:2];
    v20 = [v5 highlightedString:v18 type:7];

    v18 = v20;
  }

  else
  {
    v19 = v11;
  }

  subclassDescription = [(BRCPipelineJob *)self subclassDescription];
  if ([subclassDescription length])
  {
    v22 = [@" " stringByAppendingString:subclassDescription];

    subclassDescription = v22;
  }

  v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"<%@:%p %@ 🏃‍♂️:%@ ☑️:[%@] ✅:[%@]%@>", objc_opt_class(), self, v25, v18, v14, v19, subclassDescription];

  return v23;
}

__CFString *__59__BRCPipelineJob_InternalPipeline__descriptionWithContext___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 32) + 24);
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
  v5 = [v3 objectForKeyedSubscript:v4];

  if (v5)
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = (*(*(*(a1 + 32) + 56) + 16))(*(*(a1 + 32) + 56), [v5 unsignedIntegerValue]);
    v8 = [v6 stringWithFormat:@"{%@}", v7];

    v9 = *(a1 + 40);
    if (v9)
    {
      v10 = [v9 highlightedString:v8 type:2];

      v8 = v10;
    }
  }

  else
  {
    v8 = &stru_2837504F0;
  }

  return v8;
}

id __59__BRCPipelineJob_InternalPipeline__descriptionWithContext___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = *(*(a1 + 32) + 16);
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
  v5 = [v3 objectForKeyedSubscript:v4];

  v6 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = (*(*(*(a1 + 32) + 56) + 16))(*(*(a1 + 32) + 56), [*(*(&v14 + 1) + 8 * i) unsignedIntegerValue]);
        [v6 appendFormat:@">[%@]", v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  return v6;
}

void __59__BRCPipelineJob_InternalPipeline__descriptionWithContext___block_invoke_3(uint64_t a1, unint64_t a2)
{
  v3 = *(*(a1 + 32) + 32);
  if (v3 <= a2)
  {
    if (v3 >= a2)
    {
      return;
    }

    if ([*(a1 + 48) length])
    {
      [*(a1 + 48) appendString:{@", "}];
    }

    v7 = *(a1 + 48);
    v8 = (*(*(*(a1 + 32) + 56) + 16))();
    v5 = (*(*(a1 + 56) + 16))();
    [v7 appendFormat:@"%@%@", v8, v5];
  }

  else
  {
    if ([*(a1 + 40) length])
    {
      [*(a1 + 40) appendString:{@", "}];
    }

    v4 = *(a1 + 40);
    v8 = (*(*(*(a1 + 32) + 56) + 16))();
    v5 = (*(*(a1 + 56) + 16))();
    v6 = (*(*(a1 + 64) + 16))();
    [v4 appendFormat:@"%@%@%@", v8, v5, v6];
  }
}

- (void)dumpToContext:(id)context
{
  contextCopy = context;
  v5 = [(BRCPipelineJob *)self descriptionWithContext:contextCopy];
  [contextCopy writeLineWithFormat:@"%@", v5];
}

@end