@interface CDPCAAccountInfoRepairEffectivenessReporter
- (CDPCAAccountInfoRepairEffectivenessReporter)init;
- (void)reportRepairAttemptFinishedWithSuccess:(BOOL)success authenticationError:(id)error accountInfoFetchErrorBeforeRepair:(id)repair repairError:(id)repairError accountInfoFetchErrorAfterRepair:(id)afterRepair octagonStatusBefore:(unint64_t)before octagonStatusAfter:(unint64_t)after pcsStatusBefore:(unint64_t)self0 pcsStatusAfter:(unint64_t)self1 escrowKeysStatusBefore:(unint64_t)self2 escrowKeysStatusAfter:(unint64_t)self3;
@end

@implementation CDPCAAccountInfoRepairEffectivenessReporter

- (CDPCAAccountInfoRepairEffectivenessReporter)init
{
  v3.receiver = self;
  v3.super_class = CDPCAAccountInfoRepairEffectivenessReporter;
  return [(CDPCAReporter *)&v3 initWithEvent:@"com.apple.cdp.accountInfoRepairEffectiveness"];
}

- (void)reportRepairAttemptFinishedWithSuccess:(BOOL)success authenticationError:(id)error accountInfoFetchErrorBeforeRepair:(id)repair repairError:(id)repairError accountInfoFetchErrorAfterRepair:(id)afterRepair octagonStatusBefore:(unint64_t)before octagonStatusAfter:(unint64_t)after pcsStatusBefore:(unint64_t)self0 pcsStatusAfter:(unint64_t)self1 escrowKeysStatusBefore:(unint64_t)self2 escrowKeysStatusAfter:(unint64_t)self3
{
  successCopy = success;
  v38[13] = *MEMORY[0x277D85DE8];
  errorCopy = error;
  repairCopy = repair;
  repairErrorCopy = repairError;
  afterRepairCopy = afterRepair;
  v21 = MEMORY[0x277CBEB98];
  v22 = *MEMORY[0x277CCA590];
  v38[0] = *MEMORY[0x277CCA050];
  v38[1] = v22;
  v23 = *MEMORY[0x277CFD418];
  v38[2] = *MEMORY[0x277CCA738];
  v38[3] = v23;
  v24 = *MEMORY[0x277CFB2F0];
  v38[4] = *MEMORY[0x277CEFF48];
  v38[5] = v24;
  v25 = *MEMORY[0x277CFB290];
  v38[6] = *MEMORY[0x277CFB298];
  v38[7] = v25;
  v26 = *MEMORY[0x277CBBF98];
  v38[8] = *MEMORY[0x277CBBF50];
  v38[9] = v26;
  v38[10] = @"com.apple.protectedcloudstorage";
  v38[11] = @"com.apple.security.octagon";
  v38[12] = @"com.apple.accounts";
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:13];
  v28 = [v21 setWithArray:v27];

  v29 = [MEMORY[0x277CCABB0] numberWithBool:successCopy];
  [(CDPCAReporter *)self setObject:v29 forKeyedSubscript:@"wasSuccess"];

  v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:before];
  [(CDPCAReporter *)self setObject:v30 forKeyedSubscript:@"otStatus_before"];

  v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:after];
  [(CDPCAReporter *)self setObject:v31 forKeyedSubscript:@"otStatus_after"];

  v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:statusBefore];
  [(CDPCAReporter *)self setObject:v32 forKeyedSubscript:@"pcsStatus_before"];

  v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:statusAfter];
  [(CDPCAReporter *)self setObject:v33 forKeyedSubscript:@"pcsStatus_after"];

  v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:keysStatusBefore];
  [(CDPCAReporter *)self setObject:v34 forKeyedSubscript:@"escrowKeysStatus_before"];

  v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:keysStatusAfter];
  [(CDPCAReporter *)self setObject:v35 forKeyedSubscript:@"escrowKeysStatus_after"];

  if (errorCopy)
  {
    [(CDPCAReporter *)self populateUnderlyingErrorsStartingWithRootError:errorCopy maxDepth:3 topLevelErrorCodeKey:@"authErrorCode" topLevelErrorDomainKey:@"authErrorDomain" errorCodePrefix:@"authUnderlyingErrorCode" errorDomainPrefix:@"authUnderlyingErrorDomain" domainAllowlist:v28];
  }

  if (repairCopy)
  {
    [(CDPCAReporter *)self populateUnderlyingErrorsStartingWithRootError:repairCopy maxDepth:3 topLevelErrorCodeKey:@"accountInfoFetchBeforeRepairErrorCode" topLevelErrorDomainKey:@"accountInfoFetchBeforeRepairErrorDomain" errorCodePrefix:@"accountInfoFetchBeforeRepairUnderlyingErrorCode" errorDomainPrefix:@"accountInfoFetchBeforeRepairUnderlyingErrorDomain" domainAllowlist:v28];
  }

  if (repairErrorCopy)
  {
    [(CDPCAReporter *)self populateUnderlyingErrorsStartingWithRootError:repairErrorCopy maxDepth:3 domainAllowlist:v28];
  }

  if (afterRepairCopy)
  {
    [(CDPCAReporter *)self populateUnderlyingErrorsStartingWithRootError:afterRepairCopy maxDepth:3 topLevelErrorCodeKey:@"accountInfoFetchAfterRepairErrorCode" topLevelErrorDomainKey:@"accountInfoFetchAfterRepairErrorDomain" errorCodePrefix:@"accountInfoFetchAfterRepairUnderlyingErrorCode" errorDomainPrefix:@"accountInfoFetchAfterRepairUnderlyingErrorDomain" domainAllowlist:v28];
  }

  [(CDPCAReporter *)self sendReport];
}

@end