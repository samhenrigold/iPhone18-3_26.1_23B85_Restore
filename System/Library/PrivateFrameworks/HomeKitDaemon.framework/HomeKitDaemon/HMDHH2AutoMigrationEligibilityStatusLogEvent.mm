@interface HMDHH2AutoMigrationEligibilityStatusLogEvent
- (HMDHH2AutoMigrationEligibilityStatusLogEvent)initWithAutoMigrationEligibilityResult:(id)result migrationByOwnerManualEligibilityResult:(id)eligibilityResult migrationByOwnerAutoEligibilityResult:(id)autoEligibilityResult didRunMigrationTaskOnCurrentBuild:(BOOL)build currentBuildStartedOnHH1:(BOOL)h1;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDHH2AutoMigrationEligibilityStatusLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v45[16] = *MEMORY[0x277D85DE8];
  v44[0] = @"currentUserAutoMigrationEligibilityStatus";
  v3 = MEMORY[0x277CCABB0];
  currentUserAutoMigrationEligibilityResult = [(HMDHH2AutoMigrationEligibilityStatusLogEvent *)self currentUserAutoMigrationEligibilityResult];
  v42 = [v3 numberWithUnsignedInteger:{objc_msgSend(currentUserAutoMigrationEligibilityResult, "status")}];
  v45[0] = v42;
  v44[1] = @"currentUserAutoMigrationiCloudAccountStatus";
  v4 = MEMORY[0x277CCABB0];
  currentUserAutoMigrationEligibilityResult2 = [(HMDHH2AutoMigrationEligibilityStatusLogEvent *)self currentUserAutoMigrationEligibilityResult];
  v40 = [v4 numberWithUnsignedInteger:{objc_msgSend(currentUserAutoMigrationEligibilityResult2, "iCloudAccountStatus")}];
  v45[1] = v40;
  v44[2] = @"currentUserAutoMigrationUnsupportedDevices";
  v5 = MEMORY[0x277CCABB0];
  currentUserAutoMigrationEligibilityResult3 = [(HMDHH2AutoMigrationEligibilityStatusLogEvent *)self currentUserAutoMigrationEligibilityResult];
  v38 = [v5 numberWithUnsignedInteger:{objc_msgSend(currentUserAutoMigrationEligibilityResult3, "unsupportedDevices")}];
  v45[2] = v38;
  v44[3] = @"currentUserAutoMigrationHasOnlyEmptyHomes";
  currentUserAutoMigrationEligibilityResult4 = [(HMDHH2AutoMigrationEligibilityStatusLogEvent *)self currentUserAutoMigrationEligibilityResult];
  if ([currentUserAutoMigrationEligibilityResult4 hasOnlyEmptyHomes])
  {
    v6 = &unk_283E72EC0;
  }

  else
  {
    v6 = &unk_283E72ED8;
  }

  v45[3] = v6;
  v44[4] = @"currentUserAutoMigrationByOwnerManualEligibilityStatus";
  v7 = MEMORY[0x277CCABB0];
  currentUserMigrationByOwnerManualEligibilityResult = [(HMDHH2AutoMigrationEligibilityStatusLogEvent *)self currentUserMigrationByOwnerManualEligibilityResult];
  v35 = [v7 numberWithUnsignedInteger:{objc_msgSend(currentUserMigrationByOwnerManualEligibilityResult, "status")}];
  v45[4] = v35;
  v44[5] = @"currentUserAutoMigrationByOwnerManualUnsupportedDevices";
  v8 = MEMORY[0x277CCABB0];
  currentUserMigrationByOwnerManualEligibilityResult2 = [(HMDHH2AutoMigrationEligibilityStatusLogEvent *)self currentUserMigrationByOwnerManualEligibilityResult];
  v33 = [v8 numberWithUnsignedInteger:{objc_msgSend(currentUserMigrationByOwnerManualEligibilityResult2, "unsupportedDevices")}];
  v45[5] = v33;
  v44[6] = @"currentUserAutoMigrationByOwnerManualHasOnlyEmptyHomes";
  currentUserMigrationByOwnerManualEligibilityResult3 = [(HMDHH2AutoMigrationEligibilityStatusLogEvent *)self currentUserMigrationByOwnerManualEligibilityResult];
  if ([currentUserMigrationByOwnerManualEligibilityResult3 hasOnlyEmptyHomes])
  {
    v9 = &unk_283E72EC0;
  }

  else
  {
    v9 = &unk_283E72ED8;
  }

  v45[6] = v9;
  v44[7] = @"currentUserAutoMigrationByOwnerAutoEligibilityStatus";
  v10 = MEMORY[0x277CCABB0];
  currentUserMigrationByOwnerAutoEligibilityResult = [(HMDHH2AutoMigrationEligibilityStatusLogEvent *)self currentUserMigrationByOwnerAutoEligibilityResult];
  v30 = [v10 numberWithUnsignedInteger:{objc_msgSend(currentUserMigrationByOwnerAutoEligibilityResult, "status")}];
  v45[7] = v30;
  v44[8] = @"currentUserAutoMigrationByOwnerAutoUnsupportedDevices";
  v11 = MEMORY[0x277CCABB0];
  currentUserMigrationByOwnerAutoEligibilityResult2 = [(HMDHH2AutoMigrationEligibilityStatusLogEvent *)self currentUserMigrationByOwnerAutoEligibilityResult];
  v28 = [v11 numberWithUnsignedInteger:{objc_msgSend(currentUserMigrationByOwnerAutoEligibilityResult2, "unsupportedDevices")}];
  v45[8] = v28;
  v44[9] = @"currentUserAutoMigrationByOwnerAutoHasOnlyEmptyHomes";
  currentUserMigrationByOwnerAutoEligibilityResult3 = [(HMDHH2AutoMigrationEligibilityStatusLogEvent *)self currentUserMigrationByOwnerAutoEligibilityResult];
  if ([currentUserMigrationByOwnerAutoEligibilityResult3 hasOnlyEmptyHomes])
  {
    v13 = &unk_283E72EC0;
  }

  else
  {
    v13 = &unk_283E72ED8;
  }

  v45[9] = v13;
  v44[10] = @"didScheduleDryRunOnCurrentSWVersion";
  v14 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDHH2AutoMigrationEligibilityStatusLogEvent didRunMigrationTaskOnCurrentBuild](self, "didRunMigrationTaskOnCurrentBuild")}];
  v45[10] = v14;
  v44[11] = @"didRunMigrationTaskOnCurrentBuild";
  v15 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDHH2AutoMigrationEligibilityStatusLogEvent didRunMigrationTaskOnCurrentBuild](self, "didRunMigrationTaskOnCurrentBuild")}];
  v45[11] = v15;
  v44[12] = @"currentBuildStartedOnHH1";
  v16 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDHH2AutoMigrationEligibilityStatusLogEvent currentBuildStartedOnHH1](self, "currentBuildStartedOnHH1")}];
  v45[12] = v16;
  v44[13] = @"numOwnedNonEmptyHomes_autoMigrationEligibility";
  v17 = MEMORY[0x277CCABB0];
  currentUserAutoMigrationEligibilityResult5 = [(HMDHH2AutoMigrationEligibilityStatusLogEvent *)self currentUserAutoMigrationEligibilityResult];
  v19 = [v17 numberWithUnsignedInteger:{objc_msgSend(currentUserAutoMigrationEligibilityResult5, "numberOwnedNonEmptyHomes")}];
  v45[13] = v19;
  v44[14] = @"nunUnownedSharedHomes_autoMigrationEligibility";
  v20 = MEMORY[0x277CCABB0];
  currentUserAutoMigrationEligibilityResult6 = [(HMDHH2AutoMigrationEligibilityStatusLogEvent *)self currentUserAutoMigrationEligibilityResult];
  v22 = [v20 numberWithUnsignedInteger:{objc_msgSend(currentUserAutoMigrationEligibilityResult6, "numberUnownedSharedHomes")}];
  v45[14] = v22;
  v44[15] = @"numOwnedHomesWithSharedUsers_autoMigrationEligibility";
  v23 = MEMORY[0x277CCABB0];
  currentUserAutoMigrationEligibilityResult7 = [(HMDHH2AutoMigrationEligibilityStatusLogEvent *)self currentUserAutoMigrationEligibilityResult];
  v25 = [v23 numberWithUnsignedInteger:{objc_msgSend(currentUserAutoMigrationEligibilityResult7, "numberOwnedSharedHomes")}];
  v45[15] = v25;
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v44 count:16];

  return v27;
}

- (HMDHH2AutoMigrationEligibilityStatusLogEvent)initWithAutoMigrationEligibilityResult:(id)result migrationByOwnerManualEligibilityResult:(id)eligibilityResult migrationByOwnerAutoEligibilityResult:(id)autoEligibilityResult didRunMigrationTaskOnCurrentBuild:(BOOL)build currentBuildStartedOnHH1:(BOOL)h1
{
  resultCopy = result;
  eligibilityResultCopy = eligibilityResult;
  autoEligibilityResultCopy = autoEligibilityResult;
  v19.receiver = self;
  v19.super_class = HMDHH2AutoMigrationEligibilityStatusLogEvent;
  v16 = [(HMMLogEvent *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_currentUserAutoMigrationEligibilityResult, result);
    objc_storeStrong(&v17->_currentUserMigrationByOwnerManualEligibilityResult, eligibilityResult);
    objc_storeStrong(&v17->_currentUserMigrationByOwnerAutoEligibilityResult, autoEligibilityResult);
    v17->_didRunMigrationTaskOnCurrentBuild = build;
    v17->_currentBuildStartedOnHH1 = h1;
  }

  return v17;
}

@end