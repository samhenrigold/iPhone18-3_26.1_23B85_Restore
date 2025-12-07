@interface HDAppAnalyticsUpdateManager
- (BOOL)setAccepted:(BOOL)accepted agreement:(id)agreement version:(int64_t)version modificationDate:(id)date transaction:(id)transaction error:(id *)error;
- (HDAppAnalyticsUpdateManager)init;
- (HDAppAnalyticsUpdateManager)initWithProfile:(id)profile;
- (HDProfile)profile;
- (int64_t)currentVersionForAgreement:(id)agreement;
- (void)performPostInstallUpdateTaskForManager:(id)manager completion:(id)completion;
- (void)updateExternalStorageForAgreement:(id)agreement version:(int64_t)version accepted:(BOOL)accepted;
@end

@implementation HDAppAnalyticsUpdateManager

- (HDAppAnalyticsUpdateManager)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDAppAnalyticsUpdateManager)initWithProfile:(id)profile
{
  profileCopy = profile;
  v11.receiver = self;
  v11.super_class = HDAppAnalyticsUpdateManager;
  v5 = [(HDAppAnalyticsUpdateManager *)&v11 init];
  v6 = v5;
  if (v5)
  {
    v7 = objc_storeWeak(&v5->_profile, profileCopy);
    daemon = [profileCopy daemon];
    postInstallUpdateManager = [daemon postInstallUpdateManager];
    [postInstallUpdateManager registerUpdateTaskHandler:v6 queue:0];
  }

  return v6;
}

- (BOOL)setAccepted:(BOOL)accepted agreement:(id)agreement version:(int64_t)version modificationDate:(id)date transaction:(id)transaction error:(id *)error
{
  acceptedCopy = accepted;
  agreementCopy = agreement;
  dateCopy = date;
  transactionCopy = transaction;
  v34 = 0;
  v17 = [HDAppAnalyticsAcceptanceEntity acceptanceForAgreement:agreementCopy version:version transaction:transactionCopy error:&v34];
  v18 = v34;
  v19 = v18;
  if (v17)
  {
    v20 = 1;
  }

  else
  {
    v20 = v18 == 0;
  }

  if (!v20)
  {
    if (error)
    {
      v27 = v18;
      v26 = 0;
      *error = v19;
      goto LABEL_14;
    }

    _HKLogDroppedError();
LABEL_13:
    v26 = 0;
    goto LABEL_14;
  }

  selfCopy = self;
  modificationDate = [v17 modificationDate];
  [modificationDate timeIntervalSinceReferenceDate];
  v23 = v22;
  [dateCopy timeIntervalSinceReferenceDate];
  v25 = v24;

  if (v23 < v25)
  {
    if (![HDAppAnalyticsAcceptanceEntity setAcceptance:acceptedCopy agreement:agreementCopy version:version modificationDate:dateCopy transaction:transactionCopy error:error])
    {
      goto LABEL_13;
    }

    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __96__HDAppAnalyticsUpdateManager_setAccepted_agreement_version_modificationDate_transaction_error___block_invoke;
    v30[3] = &unk_2786583E0;
    v30[4] = selfCopy;
    v31 = agreementCopy;
    versionCopy = version;
    v33 = acceptedCopy;
    [transactionCopy onCommit:v30 orRollback:0];
  }

  v26 = 1;
LABEL_14:

  return v26;
}

- (void)updateExternalStorageForAgreement:(id)agreement version:(int64_t)version accepted:(BOOL)accepted
{
  acceptedCopy = accepted;
  agreementCopy = agreement;
  if ([agreementCopy isEqualToString:*MEMORY[0x277D0FD30]])
  {
    if ([(HDAppAnalyticsUpdateManager *)self currentVersionImproveHealthAgreement]== version)
    {
      mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
      [mEMORY[0x277D262A0] setBoolValue:acceptedCopy forSetting:*MEMORY[0x277D25F18]];
LABEL_10:
    }
  }

  else if ([agreementCopy isEqualToString:*MEMORY[0x277D0FD38]])
  {
    if ([(HDAppAnalyticsUpdateManager *)self currentVersionImproveHealthRecords]== version)
    {
      if (acceptedCopy)
      {
        versionCopy = version;
      }

      else
      {
        versionCopy = *MEMORY[0x277CCC1F8];
      }

      mEMORY[0x277D262A0] = [MEMORY[0x277CBEBD0] standardUserDefaults];
      [mEMORY[0x277D262A0] setInteger:versionCopy forKey:*MEMORY[0x277CCE538]];
      goto LABEL_10;
    }
  }

  else
  {
    _HKInitializeLogging();
    v11 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [HDAppAnalyticsUpdateManager updateExternalStorageForAgreement:agreementCopy version:v11 accepted:?];
    }
  }
}

- (int64_t)currentVersionForAgreement:(id)agreement
{
  agreementCopy = agreement;
  if ([agreementCopy isEqualToString:*MEMORY[0x277D0FD30]])
  {
    currentVersionImproveHealthAgreement = [(HDAppAnalyticsUpdateManager *)self currentVersionImproveHealthAgreement];
LABEL_5:
    v6 = currentVersionImproveHealthAgreement;
    goto LABEL_9;
  }

  if ([agreementCopy isEqualToString:*MEMORY[0x277D0FD38]])
  {
    currentVersionImproveHealthAgreement = [(HDAppAnalyticsUpdateManager *)self currentVersionImproveHealthRecords];
    goto LABEL_5;
  }

  _HKInitializeLogging();
  v7 = HKLogWellnessDashboard();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [(HDAppAnalyticsUpdateManager *)agreementCopy currentVersionForAgreement:v7];
  }

  v6 = 0;
LABEL_9:

  return v6;
}

- (void)performPostInstallUpdateTaskForManager:(id)manager completion:(id)completion
{
  completionCopy = completion;
  profile = [(HDAppAnalyticsUpdateManager *)self profile];
  database = [profile database];
  contextForReading = [MEMORY[0x277D106B8] contextForReading];
  v11[4] = self;
  v12 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __81__HDAppAnalyticsUpdateManager_performPostInstallUpdateTaskForManager_completion___block_invoke;
  v11[3] = &unk_278658408;
  v9 = [database performTransactionWithContext:contextForReading error:&v12 block:v11 inaccessibilityHandler:0];
  v10 = v12;

  completionCopy[2](completionCopy, v9, v10);
}

uint64_t __81__HDAppAnalyticsUpdateManager_performPostInstallUpdateTaskForManager_completion___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = AllHealthAppAnalyticsAgreements();
  v4 = [obj countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v20;
    *&v5 = 138543362;
    v16 = v5;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        v10 = [*(a1 + 32) currentVersionForAgreement:{v9, v16}];
        v18 = 0;
        v11 = [HDAppAnalyticsAcceptanceEntity acceptanceForAgreement:v9 version:v10 transaction:v3 error:&v18];
        v12 = v18;
        v13 = v12;
        if (v11)
        {
          [*(a1 + 32) updateExternalStorageForAgreement:v9 version:v10 accepted:{objc_msgSend(v11, "accepted")}];
        }

        else if (v12)
        {
          _HKInitializeLogging();
          v14 = HKLogWellnessDashboard();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
          {
            *buf = v16;
            v24 = v9;
            _os_log_fault_impl(&dword_22939E000, v14, OS_LOG_TYPE_FAULT, "Failed to retrieve stored version for %{public}@; not updating local state.", buf, 0xCu);
          }
        }
      }

      v6 = [obj countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v6);
  }

  return 1;
}

- (HDProfile)profile
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);

  return WeakRetained;
}

- (void)updateExternalStorageForAgreement:(uint64_t)a1 version:(NSObject *)a2 accepted:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_22939E000, a2, OS_LOG_TYPE_ERROR, "No external storage known for analytics agreement %{public}@", &v2, 0xCu);
}

- (void)currentVersionForAgreement:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_22939E000, a2, OS_LOG_TYPE_ERROR, "Unknown analytics agreement %{public}@", &v2, 0xCu);
}

@end