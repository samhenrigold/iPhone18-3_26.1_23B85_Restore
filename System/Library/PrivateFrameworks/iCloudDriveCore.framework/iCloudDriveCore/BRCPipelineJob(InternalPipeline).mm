@interface BRCPipelineJob(InternalPipeline)
- (void)advanceJobToInitialStage;
- (void)advanceJobToNextStage;
@end

@implementation BRCPipelineJob(InternalPipeline)

- (void)setJobPlan:()InternalPipeline additionalToRequestingStageMap:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  v0 = brc_bread_crumbs();
  OUTLINED_FUNCTION_1_2();
  v1 = brc_default_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    v3 = 138412290;
    v4 = v0;
    OUTLINED_FUNCTION_0_2(&dword_223E7A000, v1, v2, "[CRIT] Assertion failed: !_jobPlan%@", &v3);
  }
}

- (void)advanceJobToInitialStage
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = brc_bread_crumbs();
  OUTLINED_FUNCTION_1_2();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    v7 = 138412290;
    v8 = v4;
    OUTLINED_FUNCTION_0_2(&dword_223E7A000, v5, v6, "[CRIT] Assertion failed: _jobPlan%@", &v7);
  }

  *a2 = *self;
}

- (void)advanceJobToNextStage
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  selfCopy = self;
  OUTLINED_FUNCTION_0_2(&dword_223E7A000, a2, a3, "[CRIT] UNREACHABLE: Can't advance job to next state when haven't started or already finished%@", &v3);
}

- (void)completeWithError:()InternalPipeline .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_fault_impl(&dword_223E7A000, log, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Can't complete a job which has already completed %@%@", &v3, 0x16u);
}

- (void)advanceToRecoveryStage:()InternalPipeline .cold.1(void *a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = brc_bread_crumbs();
  OUTLINED_FUNCTION_1_2();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    v7 = 138412290;
    v8 = v4;
    OUTLINED_FUNCTION_0_2(&dword_223E7A000, v5, v6, "[CRIT] Assertion failed: _currentStageID != BRCPipelineStageNone%@", &v7);
  }

  *a2 = *a1;
}

@end