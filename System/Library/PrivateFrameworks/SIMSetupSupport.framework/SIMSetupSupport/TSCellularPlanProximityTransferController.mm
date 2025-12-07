@interface TSCellularPlanProximityTransferController
- (ESIMProxTransferControllerDelegate)delegate;
- (TSCellularPlanProximityTransferController)initWithESIMDelegate:(id)delegate;
- (void)attemptFailed;
- (void)launchSecureIntentUI:(id)i descriptors:(id)descriptors isLocalConvertFlow:(BOOL)flow isSecureIntentRequired:(BOOL)required isDtoEvaluationRequired:(BOOL)evaluationRequired completion:(id)completion;
- (void)userDidTapCancel;
- (void)viewControllerDidComplete:(id)complete;
@end

@implementation TSCellularPlanProximityTransferController

- (TSCellularPlanProximityTransferController)initWithESIMDelegate:(id)delegate
{
  delegateCopy = delegate;
  v10.receiver = self;
  v10.super_class = TSCellularPlanProximityTransferController;
  v5 = [(TSCellularPlanProximityTransferController *)&v10 init];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277CC37B0]);
    v7 = [v6 initWithQueue:MEMORY[0x277D85CD0]];
    client = v5->_client;
    v5->_client = v7;

    [(CoreTelephonyClient *)v5->_client setDelegate:v5];
    objc_storeWeak(&v5->_delegate, delegateCopy);
  }

  return v5;
}

- (void)viewControllerDidComplete:(id)complete
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = _TSLogDomain(self);
  WeakRetained = v5;
  if (complete)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315138;
      v8 = "[TSCellularPlanProximityTransferController viewControllerDidComplete:]";
      _os_log_impl(&dword_262AA8000, WeakRetained, OS_LOG_TYPE_DEFAULT, "view did complete @%s", &v7, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained didComplete];
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [TSCellularPlanProximityTransferController viewControllerDidComplete:?];
  }
}

- (void)userDidTapCancel
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = _TSLogDomain(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[TSCellularPlanProximityTransferController userDidTapCancel]";
    _os_log_impl(&dword_262AA8000, v3, OS_LOG_TYPE_DEFAULT, "user canceled secure intent flow @%s", &v5, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained didComplete];
}

- (void)attemptFailed
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = _TSLogDomain(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[TSCellularPlanProximityTransferController attemptFailed]";
    _os_log_impl(&dword_262AA8000, v3, OS_LOG_TYPE_DEFAULT, "secure intent attempt failed @%s", &v5, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained didComplete];
}

- (void)launchSecureIntentUI:(id)i descriptors:(id)descriptors isLocalConvertFlow:(BOOL)flow isSecureIntentRequired:(BOOL)required isDtoEvaluationRequired:(BOOL)evaluationRequired completion:(id)completion
{
  evaluationRequiredCopy = evaluationRequired;
  requiredCopy = required;
  flowCopy = flow;
  v26 = *MEMORY[0x277D85DE8];
  iCopy = i;
  descriptorsCopy = descriptors;
  completionCopy = completion;
  v17 = [TSUtilities isSecureIntentUIRequired:iCopy];
  if ((v17 & 1) == 0)
  {
    v18 = _TSLogDomain(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v25 = "[TSCellularPlanProximityTransferController launchSecureIntentUI:descriptors:isLocalConvertFlow:isSecureIntentRequired:isDtoEvaluationRequired:completion:]";
      _os_log_impl(&dword_262AA8000, v18, OS_LOG_TYPE_DEFAULT, "secure intent gesture is not required. skip @%s", buf, 0xCu);
    }

    requiredCopy = 0;
  }

  v19 = [[TSSecureIntentGestureViewController alloc] initWithExternalizedContext:iCopy descriptors:descriptorsCopy isLocalConvertFlow:flowCopy isSecureIntentRequired:requiredCopy isDtoEvaluationRequired:evaluationRequiredCopy];
  [(TSSecureIntentGestureViewController *)v19 setDelegate:self];
  objc_initWeak(buf, self);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __155__TSCellularPlanProximityTransferController_launchSecureIntentUI_descriptors_isLocalConvertFlow_isSecureIntentRequired_isDtoEvaluationRequired_completion___block_invoke;
  v21[3] = &unk_279B45490;
  v20 = v19;
  v22 = v20;
  objc_copyWeak(&v23, buf);
  [(TSSecureIntentGestureViewController *)v20 prepare:v21];
  completionCopy[2](completionCopy, 1);
  objc_destroyWeak(&v23);

  objc_destroyWeak(buf);
}

void __155__TSCellularPlanProximityTransferController_launchSecureIntentUI_descriptors_isLocalConvertFlow_isSecureIntentRequired_isDtoEvaluationRequired_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v13 = *MEMORY[0x277D85DE8];
  WeakRetained = _TSLogDomain(a1);
  v5 = os_log_type_enabled(WeakRetained, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v5)
    {
      v6 = *(a1 + 32);
      v9 = 138412546;
      v10 = v6;
      v11 = 2080;
      v12 = "[TSCellularPlanProximityTransferController launchSecureIntentUI:descriptors:isLocalConvertFlow:isSecureIntentRequired:isDtoEvaluationRequired:completion:]_block_invoke";
      _os_log_impl(&dword_262AA8000, WeakRetained, OS_LOG_TYPE_DEFAULT, "present %@ @%s", &v9, 0x16u);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v7 = [WeakRetained delegate];
    [v7 didRequestPresentationForProxCard:*(a1 + 32)];
  }

  else if (v5)
  {
    v8 = *(a1 + 32);
    v9 = 138412546;
    v10 = v8;
    v11 = 2080;
    v12 = "[TSCellularPlanProximityTransferController launchSecureIntentUI:descriptors:isLocalConvertFlow:isSecureIntentRequired:isDtoEvaluationRequired:completion:]_block_invoke";
    _os_log_impl(&dword_262AA8000, WeakRetained, OS_LOG_TYPE_DEFAULT, "%@ not required @%s", &v9, 0x16u);
  }
}

- (ESIMProxTransferControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)viewControllerDidComplete:(os_log_t)log .cold.1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[TSCellularPlanProximityTransferController viewControllerDidComplete:]";
  _os_log_error_impl(&dword_262AA8000, log, OS_LOG_TYPE_ERROR, "[E]invalid view controller @%s", &v1, 0xCu);
}

@end