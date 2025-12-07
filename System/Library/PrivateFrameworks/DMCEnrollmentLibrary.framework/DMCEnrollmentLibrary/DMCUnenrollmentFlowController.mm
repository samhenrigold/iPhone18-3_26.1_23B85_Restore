@interface DMCUnenrollmentFlowController
- (DMCUnenrollmentFlowController)initWithPresenter:(id)presenter managedConfigurationHelper:(id)helper;
- (DMCUnenrollmentFlowMigrationDelegate)migrationDelegate;
- (id)_nameForStep:(unint64_t)step;
- (void)_askForPasscodeIfNeeded;
- (void)_askForUserConfirmationIsAppleMAID:(BOOL)d;
- (void)_flowTerminatedWithError:(id)error canceled:(BOOL)canceled;
- (void)_preflightUnenrollmentWithUnenrollmentType:(unint64_t)type accoutAltDSID:(id)d;
- (void)_resetToInitialStepsWithSilent:(BOOL)silent;
- (void)_uninstallEnrollmentProfileWithIdentifier:(id)identifier personaID:(id)d altDSID:(id)iD isAppleMAID:(BOOL)aID unenrollmentType:(unint64_t)type;
- (void)_workerQueue_flowCompleted;
- (void)_workerQueue_performFlowStep:(unint64_t)step;
- (void)unenrollADEWithCompletionHandler:(id)handler;
- (void)unenrollAccountWithAltDSID:(id)d silent:(BOOL)silent completionHandler:(id)handler;
@end

@implementation DMCUnenrollmentFlowController

- (DMCUnenrollmentFlowController)initWithPresenter:(id)presenter managedConfigurationHelper:(id)helper
{
  presenterCopy = presenter;
  helperCopy = helper;
  v12.receiver = self;
  v12.super_class = DMCUnenrollmentFlowController;
  v9 = [(DMCEnrollmentFlowControllerBase *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_presenter, presenter);
    objc_storeStrong(&v10->_managedConfigurationHelper, helper);
  }

  return v10;
}

- (void)unenrollAccountWithAltDSID:(id)d silent:(BOOL)silent completionHandler:(id)handler
{
  silentCopy = silent;
  handlerCopy = handler;
  [(DMCUnenrollmentFlowController *)self setAltDSID:d];
  [(DMCUnenrollmentFlowController *)self setUnenrollmentCompletionHandler:handlerCopy];

  [(DMCUnenrollmentFlowController *)self setUnenrollmentType:0];
  [(DMCUnenrollmentFlowController *)self _resetToInitialStepsWithSilent:silentCopy];

  [(DMCEnrollmentFlowControllerBase *)self _pollNextStep];
}

- (void)unenrollADEWithCompletionHandler:(id)handler
{
  [(DMCUnenrollmentFlowController *)self setUnenrollmentCompletionHandler:handler];
  [(DMCUnenrollmentFlowController *)self setUnenrollmentType:1];
  [(DMCUnenrollmentFlowController *)self _resetToInitialStepsWithSilent:0];

  [(DMCEnrollmentFlowControllerBase *)self _pollNextStep];
}

- (void)_resetToInitialStepsWithSilent:(BOOL)silent
{
  v6.receiver = self;
  v6.super_class = DMCUnenrollmentFlowController;
  [(DMCEnrollmentFlowControllerBase *)&v6 _resetToInitialSteps];
  if (silent)
  {
    [(DMCUnenrollmentFlowController *)self _silentUnenrollmentSteps];
  }

  else
  {
    [(DMCUnenrollmentFlowController *)self _interactiveUnenrollmentSteps];
  }
  v5 = ;
  [(DMCEnrollmentFlowControllerBase *)self _appendSteps:v5];
}

- (void)_workerQueue_performFlowStep:(unint64_t)step
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = *DMCLogObjects();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [(DMCUnenrollmentFlowController *)self _nameForStep:step];
    v15 = 138543362;
    v16 = v7;
    _os_log_impl(&dword_247E39000, v6, OS_LOG_TYPE_DEFAULT, "Will perform unenrollment step: %{public}@", &v15, 0xCu);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    currentPersonaID = [MEMORY[0x277D03550] currentPersonaID];
    currentPersonaTypeString = [MEMORY[0x277D03550] currentPersonaTypeString];
    v15 = 136315906;
    v16 = "[DMCUnenrollmentFlowController _workerQueue_performFlowStep:]";
    v17 = 1024;
    v18 = 59;
    v19 = 2114;
    v20 = currentPersonaID;
    v21 = 2114;
    v22 = currentPersonaTypeString;
    _os_log_impl(&dword_247E39000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s (L: %d): Current persona ID: %{public}@, type: %{public}@", &v15, 0x26u);
  }

  [(DMCEnrollmentFlowControllerBase *)self setCurrentStep:step];
  if (step > 1)
  {
    if (step == 2)
    {
      [(DMCUnenrollmentFlowController *)self _askForPasscodeIfNeeded];
    }

    else if (step == 3)
    {
      profileIdentifier = [(DMCUnenrollmentFlowController *)self profileIdentifier];
      personaID = [(DMCUnenrollmentFlowController *)self personaID];
      altDSID = [(DMCUnenrollmentFlowController *)self altDSID];
      [(DMCUnenrollmentFlowController *)self _uninstallEnrollmentProfileWithIdentifier:profileIdentifier personaID:personaID altDSID:altDSID isAppleMAID:[(DMCUnenrollmentFlowController *)self isAppleMAID] unenrollmentType:[(DMCUnenrollmentFlowController *)self unenrollmentType]];
    }
  }

  else if (step)
  {
    if (step == 1)
    {
      [(DMCUnenrollmentFlowController *)self _askForUserConfirmationIsAppleMAID:[(DMCUnenrollmentFlowController *)self isAppleMAID]];
    }
  }

  else
  {
    unenrollmentType = [(DMCUnenrollmentFlowController *)self unenrollmentType];
    altDSID2 = [(DMCUnenrollmentFlowController *)self altDSID];
    [(DMCUnenrollmentFlowController *)self _preflightUnenrollmentWithUnenrollmentType:unenrollmentType accoutAltDSID:altDSID2];
  }
}

- (void)_workerQueue_flowCompleted
{
  v3 = *DMCLogObjects();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_247E39000, v3, OS_LOG_TYPE_DEFAULT, "Unenrollment flow completed!", v9, 2u);
  }

  presenter = [(DMCUnenrollmentFlowController *)self presenter];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    presenter2 = [(DMCUnenrollmentFlowController *)self presenter];
    [presenter2 dismissUnenrollmentSceneWithError:0];
  }

  unenrollmentCompletionHandler = [(DMCUnenrollmentFlowController *)self unenrollmentCompletionHandler];

  if (unenrollmentCompletionHandler)
  {
    unenrollmentCompletionHandler2 = [(DMCUnenrollmentFlowController *)self unenrollmentCompletionHandler];
    unenrollmentCompletionHandler2[2](unenrollmentCompletionHandler2, 1, 0, 0);

    [(DMCUnenrollmentFlowController *)self setUnenrollmentCompletionHandler:0];
  }
}

- (void)_flowTerminatedWithError:(id)error canceled:(BOOL)canceled
{
  errorCopy = error;
  workerQueue = [(DMCEnrollmentFlowControllerBase *)self workerQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __67__DMCUnenrollmentFlowController__flowTerminatedWithError_canceled___block_invoke;
  v9[3] = &unk_278EE31E0;
  canceledCopy = canceled;
  v10 = errorCopy;
  selfCopy = self;
  v8 = errorCopy;
  [workerQueue queueBlock:v9];
}

void __67__DMCUnenrollmentFlowController__flowTerminatedWithError_canceled___block_invoke(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = *DMCLogObjects();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 48);
    v13 = 138543618;
    v14 = v4;
    v15 = 1024;
    v16 = v5;
    _os_log_impl(&dword_247E39000, v3, OS_LOG_TYPE_DEFAULT, "Unenrollment flow terminated with error: %{public}@, canceled: %d", &v13, 0x12u);
  }

  v6 = [*(a1 + 40) presenter];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [*(a1 + 40) presenter];
    v9 = v8;
    if (*(a1 + 48))
    {
      v10 = 0;
    }

    else
    {
      v10 = *(a1 + 32);
    }

    [v8 dismissUnenrollmentSceneWithError:v10];
  }

  v11 = [*(a1 + 40) unenrollmentCompletionHandler];

  if (v11)
  {
    v12 = [*(a1 + 40) unenrollmentCompletionHandler];
    v12[2](v12, 0, *(a1 + 48), *(a1 + 32));

    [*(a1 + 40) setUnenrollmentCompletionHandler:0];
  }
}

- (void)_preflightUnenrollmentWithUnenrollmentType:(unint64_t)type accoutAltDSID:(id)d
{
  dCopy = d;
  if (type == 1)
  {
    managedConfigurationHelper = [(DMCUnenrollmentFlowController *)self managedConfigurationHelper];
    installedMDMProfileIdentifier = [managedConfigurationHelper installedMDMProfileIdentifier];
    [(DMCUnenrollmentFlowController *)self setProfileIdentifier:installedMDMProfileIdentifier];
  }

  else if (!type)
  {
    defaultStore = [MEMORY[0x277CB8F48] defaultStore];
    v8 = [defaultStore dmc_remoteManagementAccountForAltDSID:dCopy];

    if (v8)
    {
      dmc_managementProfileIdentifier = [v8 dmc_managementProfileIdentifier];
      -[DMCUnenrollmentFlowController setIsAppleMAID:](self, "setIsAppleMAID:", [v8 dmc_enrollmentMethod] == 1);
    }

    else
    {
      v12 = *DMCLogObjects();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_247E39000, v12, OS_LOG_TYPE_ERROR, "RM account is missing!", buf, 2u);
      }

      dmc_managementProfileIdentifier = 0;
    }

    if (![dmc_managementProfileIdentifier length])
    {
      v13 = *DMCLogObjects();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *v19 = 0;
        _os_log_impl(&dword_247E39000, v13, OS_LOG_TYPE_ERROR, "No profile identifier from the RM account!", v19, 2u);
      }

      defaultStore2 = [MEMORY[0x277CB8F48] defaultStore];
      v15 = [defaultStore2 dmc_iCloudAccountForRemoteManagingAccountWithAltDSID:dCopy];

      if (v15)
      {
        dmc_personaIdentifier = [v15 dmc_personaIdentifier];
        [(DMCUnenrollmentFlowController *)self setPersonaID:dmc_personaIdentifier];

        v8 = v15;
      }

      else
      {
        v17 = *DMCLogObjects();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *v18 = 0;
          _os_log_impl(&dword_247E39000, v17, OS_LOG_TYPE_ERROR, "No iCloud account found!", v18, 2u);
        }

        v8 = 0;
      }
    }

    [(DMCUnenrollmentFlowController *)self setProfileIdentifier:dmc_managementProfileIdentifier];
  }

  [(DMCEnrollmentFlowControllerBase *)self _pollNextStep];
}

- (void)_askForUserConfirmationIsAppleMAID:(BOOL)d
{
  v21 = *MEMORY[0x277D85DE8];
  presenter = [(DMCUnenrollmentFlowController *)self presenter];
  v5 = objc_opt_respondsToSelector();

  if ((v5 & 1) == 0)
  {
    v9 = *DMCLogObjects();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = v9;
      presenter2 = [(DMCUnenrollmentFlowController *)self presenter];
      v12 = NSStringFromSelector(sel_requestUserConfirmationIsAppleMAID_completionHandler_);
      *buf = 138543618;
      v18 = presenter2;
      v19 = 2114;
      v20 = v12;
      _os_log_impl(&dword_247E39000, v10, OS_LOG_TYPE_ERROR, "Client %{public}@ does not implement %{public}@", buf, 0x16u);
    }

    goto LABEL_5;
  }

  migrationDelegate = [(DMCUnenrollmentFlowController *)self migrationDelegate];
  v7 = [migrationDelegate enrollmentFlowControllerIsDoingMigration:self];

  if (v7)
  {
    v8 = *DMCLogObjects();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_247E39000, v8, OS_LOG_TYPE_DEFAULT, "Doing migration flow... Skip consent during unenrollment.", buf, 2u);
    }

LABEL_5:
    [(DMCEnrollmentFlowControllerBase *)self _pollNextStep];
    return;
  }

  objc_initWeak(buf, self);
  presenter3 = [(DMCUnenrollmentFlowController *)self presenter];
  isAppleMAID = [(DMCUnenrollmentFlowController *)self isAppleMAID];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __68__DMCUnenrollmentFlowController__askForUserConfirmationIsAppleMAID___block_invoke;
  v15[3] = &unk_278EE3640;
  objc_copyWeak(&v16, buf);
  [presenter3 requestUserConfirmationIsAppleMAID:isAppleMAID completionHandler:v15];

  objc_destroyWeak(&v16);
  objc_destroyWeak(buf);
}

void __68__DMCUnenrollmentFlowController__askForUserConfirmationIsAppleMAID___block_invoke(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained workerQueue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __68__DMCUnenrollmentFlowController__askForUserConfirmationIsAppleMAID___block_invoke_2;
    v6[3] = &unk_278EE3618;
    v6[4] = v4;
    v7 = a2;
    [v5 queueBlock:v6];
  }
}

uint64_t __68__DMCUnenrollmentFlowController__askForUserConfirmationIsAppleMAID___block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) currentStep] != 1)
  {
    v2 = *DMCLogObjects();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315138;
      v6 = "[DMCUnenrollmentFlowController _askForUserConfirmationIsAppleMAID:]_block_invoke_2";
      _os_log_impl(&dword_247E39000, v2, OS_LOG_TYPE_ERROR, "completionHandler in %s was excuted multiple times!", &v5, 0xCu);
    }
  }

  v3 = *(a1 + 32);
  if (*(a1 + 40))
  {
    return [v3 _pollNextStep];
  }

  else
  {
    return [v3 _flowTerminatedWithError:0 canceled:1];
  }
}

- (void)_askForPasscodeIfNeeded
{
  managedConfigurationHelper = [(DMCUnenrollmentFlowController *)self managedConfigurationHelper];
  isDevicePasscodeSet = [managedConfigurationHelper isDevicePasscodeSet];

  if (isDevicePasscodeSet)
  {
    objc_initWeak(&location, self);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __56__DMCUnenrollmentFlowController__askForPasscodeIfNeeded__block_invoke;
    v17[3] = &unk_278EE4358;
    v17[4] = self;
    objc_copyWeak(&v18, &location);
    v5 = MEMORY[0x24C1BD5A0](v17);
    presenter = [(DMCUnenrollmentFlowController *)self presenter];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      presenter2 = [(DMCUnenrollmentFlowController *)self presenter];
      v9 = v16;
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __56__DMCUnenrollmentFlowController__askForPasscodeIfNeeded__block_invoke_11;
      v16[3] = &unk_278EE3370;
      v16[4] = v5;
      [presenter2 requestDevicePasscodeContextNeedsExtractable:0 completionHandler:v16];
    }

    else
    {
      presenter3 = [(DMCUnenrollmentFlowController *)self presenter];
      v11 = objc_opt_respondsToSelector();

      if (v11)
      {
        presenter2 = [(DMCUnenrollmentFlowController *)self presenter];
        v9 = v15;
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __56__DMCUnenrollmentFlowController__askForPasscodeIfNeeded__block_invoke_2_15;
        v15[3] = &unk_278EE3398;
        v15[4] = v5;
        [presenter2 requestDevicePasscodeDataWithCompletionHandler:v15];
      }

      else
      {
        presenter4 = [(DMCUnenrollmentFlowController *)self presenter];
        v13 = objc_opt_respondsToSelector();

        if ((v13 & 1) == 0)
        {
LABEL_12:

          objc_destroyWeak(&v18);
          objc_destroyWeak(&location);
          return;
        }

        presenter2 = [(DMCUnenrollmentFlowController *)self presenter];
        v9 = v14;
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __56__DMCUnenrollmentFlowController__askForPasscodeIfNeeded__block_invoke_3;
        v14[3] = &unk_278EE33C0;
        v14[4] = v5;
        [presenter2 requestDevicePasscodeWithCompletionHandler:v14];
      }
    }

    goto LABEL_12;
  }

  [(DMCEnrollmentFlowControllerBase *)self _pollNextStep];
}

void __56__DMCUnenrollmentFlowController__askForPasscodeIfNeeded__block_invoke(uint64_t a1, char a2)
{
  v4 = [*(a1 + 32) workerQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __56__DMCUnenrollmentFlowController__askForPasscodeIfNeeded__block_invoke_2;
  v5[3] = &unk_278EE4330;
  objc_copyWeak(&v6, (a1 + 40));
  v7 = a2;
  [v4 queueBlock:v5];

  objc_destroyWeak(&v6);
}

void __56__DMCUnenrollmentFlowController__askForPasscodeIfNeeded__block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if ([WeakRetained currentStep] != 2)
    {
      v4 = *DMCLogObjects();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v5 = 136315138;
        v6 = "[DMCUnenrollmentFlowController _askForPasscodeIfNeeded]_block_invoke_2";
        _os_log_impl(&dword_247E39000, v4, OS_LOG_TYPE_ERROR, "completionHandler in %s was excuted multiple times!", &v5, 0xCu);
      }
    }

    if (*(a1 + 40) == 1)
    {
      [v3 _flowTerminatedWithError:0 canceled:1];
    }

    else
    {
      [v3 _pollNextStep];
    }
  }
}

- (void)_uninstallEnrollmentProfileWithIdentifier:(id)identifier personaID:(id)d altDSID:(id)iD isAppleMAID:(BOOL)aID unenrollmentType:(unint64_t)type
{
  aIDCopy = aID;
  identifierCopy = identifier;
  dCopy = d;
  iDCopy = iD;
  presenter = [(DMCUnenrollmentFlowController *)self presenter];
  [presenter presentUnenrollmentActivityPageIsAppleMAID:aIDCopy];

  if (type != 1)
  {
    if (identifierCopy)
    {
      v18 = *DMCLogObjects();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_247E39000, v18, OS_LOG_TYPE_DEFAULT, "Unenrolling with profile identifier...", buf, 2u);
      }

      managedConfigurationHelper = [(DMCUnenrollmentFlowController *)self managedConfigurationHelper];
      [managedConfigurationHelper removeProfileWithIdentifier:identifierCopy async:0];
    }

    else if (dCopy)
    {
      v21 = *DMCLogObjects();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_247E39000, v21, OS_LOG_TYPE_DEFAULT, "Unenrolling with persona identifier...", buf, 2u);
      }

      managedConfigurationHelper2 = [(DMCUnenrollmentFlowController *)self managedConfigurationHelper];
      v23 = [managedConfigurationHelper2 removeProfileAssociatedWithPersonaID:dCopy];

      if (v23)
      {
        goto LABEL_9;
      }

      v24 = *DMCLogObjects();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_247E39000, v24, OS_LOG_TYPE_ERROR, "No MDM profile found!", buf, 2u);
      }

      managedConfigurationHelper = [MEMORY[0x277CB8F48] defaultStore];
      [managedConfigurationHelper dmc_removeMAIDRelatedAccountsWithAltDSID:iDCopy asynchronous:1];
    }

    else
    {
      if (!iDCopy)
      {
        goto LABEL_9;
      }

      v25 = *DMCLogObjects();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_247E39000, v25, OS_LOG_TYPE_DEFAULT, "Unenrolling with altDSID...", buf, 2u);
      }

      managedConfigurationHelper = [MEMORY[0x277CB8F48] defaultStore];
      v26 = [managedConfigurationHelper dmc_iCloudAccountForRemoteManagingAccountWithAltDSID:iDCopy];
      v27 = v26;
      if (v26 && [v26 dmc_isPrimaryAccount])
      {
        v28 = objc_opt_new();
        [v28 signOutAllPrimaryAccounts];
      }

      [managedConfigurationHelper dmc_removeMAIDRelatedAccountsWithAltDSID:iDCopy asynchronous:1];
    }

LABEL_9:
    [(DMCEnrollmentFlowControllerBase *)self _pollNextStep];
    goto LABEL_10;
  }

  if (!identifierCopy)
  {
    v20 = *DMCLogObjects();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_247E39000, v20, OS_LOG_TYPE_DEFAULT, "No profile identifier, continue...", buf, 2u);
    }

    goto LABEL_9;
  }

  migrationDelegate = [(DMCUnenrollmentFlowController *)self migrationDelegate];
  [migrationDelegate unenrollmentFlowController:self willUninstallProfile:identifierCopy];

  managedConfigurationHelper3 = [(DMCUnenrollmentFlowController *)self managedConfigurationHelper];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __122__DMCUnenrollmentFlowController__uninstallEnrollmentProfileWithIdentifier_personaID_altDSID_isAppleMAID_unenrollmentType___block_invoke;
  v29[3] = &unk_278EE3550;
  v29[4] = self;
  [managedConfigurationHelper3 removeProtectedProfileWithIdentifier:identifierCopy completionHandler:v29];

LABEL_10:
}

void __122__DMCUnenrollmentFlowController__uninstallEnrollmentProfileWithIdentifier_personaID_altDSID_isAppleMAID_unenrollmentType___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) workerQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __122__DMCUnenrollmentFlowController__uninstallEnrollmentProfileWithIdentifier_personaID_altDSID_isAppleMAID_unenrollmentType___block_invoke_2;
  v7[3] = &unk_278EE3528;
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 queueBlock:v7];
}

uint64_t __122__DMCUnenrollmentFlowController__uninstallEnrollmentProfileWithIdentifier_personaID_altDSID_isAppleMAID_unenrollmentType___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32))
  {
    v3 = *(a1 + 40);

    return [v3 _flowTerminatedWithError:? canceled:?];
  }

  else
  {
    v5 = *DMCLogObjects();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_247E39000, v5, OS_LOG_TYPE_DEFAULT, "MDM payload removed...", v6, 2u);
    }

    return [*(a1 + 40) _pollNextStep];
  }
}

- (DMCUnenrollmentFlowMigrationDelegate)migrationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_migrationDelegate);

  return WeakRetained;
}

- (id)_nameForStep:(unint64_t)step
{
  if (step - 1 > 2)
  {
    return @"PreflightUnenrollment";
  }

  else
  {
    return off_278EE4378[step - 1];
  }
}

@end