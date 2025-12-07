@interface BLSHInternalTapToRadarDialog
- (BLSHInternalTapToRadarDialog)initWithDescriptor:(id)descriptor log:(id)log;
- (BOOL)_shouldIgnore;
- (void)_alertDidDismiss:(int64_t)dismiss;
- (void)_cancel;
- (void)_file;
- (void)_gotError;
- (void)_ignore;
- (void)presentWithCompletion:(id)completion;
@end

@implementation BLSHInternalTapToRadarDialog

- (BLSHInternalTapToRadarDialog)initWithDescriptor:(id)descriptor log:(id)log
{
  descriptorCopy = descriptor;
  logCopy = log;
  v9 = logCopy;
  if (__dialog)
  {
    if (os_log_type_enabled(logCopy, OS_LOG_TYPE_FAULT))
    {
      [BLSHInternalTapToRadarDialog initWithDescriptor:v9 log:?];
    }

    selfCopy = 0;
  }

  else
  {
    v14.receiver = self;
    v14.super_class = BLSHInternalTapToRadarDialog;
    v11 = [(BLSHInternalTapToRadarDialog *)&v14 init];
    p_isa = &v11->super.isa;
    if (v11)
    {
      objc_storeStrong(&v11->_descriptor, descriptor);
      objc_storeStrong(p_isa + 2, log);
      objc_storeStrong(&__dialog, p_isa);
    }

    self = p_isa;
    selfCopy = self;
  }

  return selfCopy;
}

- (void)presentWithCompletion:(id)completion
{
  v20[5] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  if ((os_variant_has_internal_ui() & 1) == 0)
  {
LABEL_5:
    (*(completionCopy + 2))(completionCopy, 0, 0);
    goto LABEL_10;
  }

  if ([(BLSHInternalTapToRadarDialog *)self _shouldIgnore])
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      [(BLSHInternalTapToRadarDialog *)self presentWithCompletion:?];
    }

    goto LABEL_5;
  }

  ttrPromptMessage = [(BLSHTapToRadarDescriptor *)self->_descriptor ttrPromptMessage];
  v7 = ttrPromptMessage;
  if (ttrPromptMessage)
  {
    radarDescription = ttrPromptMessage;
  }

  else
  {
    radarDescription = [(BLSHTapToRadarDescriptor *)self->_descriptor radarDescription];
  }

  v9 = radarDescription;

  v19[0] = *MEMORY[0x277CBF188];
  ttrPromptHeader = [(BLSHTapToRadarDescriptor *)self->_descriptor ttrPromptHeader];
  v11 = *MEMORY[0x277CBF198];
  v20[0] = ttrPromptHeader;
  v20[1] = v9;
  v12 = *MEMORY[0x277CBF1E8];
  v19[1] = v11;
  v19[2] = v12;
  v13 = *MEMORY[0x277CBF1C0];
  v20[2] = @"File Radar";
  v20[3] = @"Ignore";
  v14 = *MEMORY[0x277CBF218];
  v19[3] = v13;
  v19[4] = v14;
  v20[4] = @"Don't Ask Again";
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:5];

  presentWithCompletion____blsAlertUserNotification = CFUserNotificationCreate(0, 0.0, 3uLL, 0, v15);
  presentWithCompletion____blsWatchdogAlertRunLoopSource = CFUserNotificationCreateRunLoopSource(0, presentWithCompletion____blsAlertUserNotification, _blsAlertCallback, 99);
  Current = CFRunLoopGetCurrent();
  CFRunLoopAddSource(Current, presentWithCompletion____blsWatchdogAlertRunLoopSource, *MEMORY[0x277CBF048]);
  v17 = [completionCopy copy];
  completion = self->_completion;
  self->_completion = v17;

LABEL_10:
}

- (void)_alertDidDismiss:(int64_t)dismiss
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = __dialog;
  __dialog = 0;

  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134217984;
    dismissCopy = dismiss;
    _os_log_impl(&dword_21FD11000, log, OS_LOG_TYPE_DEFAULT, "_alertDidDismiss: ttrDialogResult=%ld", &v8, 0xCu);
  }

  if (dismiss > 1)
  {
    if (dismiss == 2)
    {
      [(BLSHInternalTapToRadarDialog *)self _ignore];
      return;
    }

    if (dismiss == 3)
    {
      [(BLSHInternalTapToRadarDialog *)self _gotError];
      return;
    }
  }

  else
  {
    if (!dismiss)
    {
      [(BLSHInternalTapToRadarDialog *)self _cancel];
      return;
    }

    if (dismiss == 1)
    {
      [(BLSHInternalTapToRadarDialog *)self _file];
      return;
    }
  }

  v7 = self->_log;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
    [(BLSHInternalTapToRadarDialog *)dismiss _alertDidDismiss:v7];
  }
}

- (void)_file
{
  objc_initWeak(&location, self);
  descriptor = self->_descriptor;
  log = self->_log;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __37__BLSHInternalTapToRadarDialog__file__block_invoke;
  v5[3] = &unk_27841FC08;
  objc_copyWeak(&v6, &location);
  [BLSHTapToRadarFiler fileRadar:descriptor log:log completion:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __37__BLSHInternalTapToRadarDialog__file__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (a3)
  {
    v6 = a2 ^ 1;
  }

  else
  {
    v6 = 0;
  }

  [WeakRetained callCompletion:a2 shouldTryAgain:v6];
}

- (BOOL)_shouldIgnore
{
  designation = [(BLSHTapToRadarDescriptor *)self->_descriptor designation];

  return [BLSHInternalTapToRadarIgnorer shouldIgnoreDesignation:designation];
}

- (void)_ignore
{
  v7 = *MEMORY[0x277D85DE8];
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    descriptor = self->_descriptor;
    v5 = 138412290;
    v6 = descriptor;
    _os_log_impl(&dword_21FD11000, log, OS_LOG_TYPE_DEFAULT, "adding %@ to Tap-To-Radar ignore list", &v5, 0xCu);
  }

  [BLSHInternalTapToRadarIgnorer ignoreRadarDesignation:[(BLSHTapToRadarDescriptor *)self->_descriptor designation]];
  [(BLSHInternalTapToRadarDialog *)self callCompletion:0 shouldTryAgain:0];
}

- (void)_cancel
{
  v7 = *MEMORY[0x277D85DE8];
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    descriptor = self->_descriptor;
    v5 = 138412290;
    v6 = descriptor;
    _os_log_impl(&dword_21FD11000, log, OS_LOG_TYPE_DEFAULT, "cancelling %@", &v5, 0xCu);
  }

  [(BLSHInternalTapToRadarDialog *)self callCompletion:0 shouldTryAgain:0];
}

- (void)_gotError
{
  v7 = *MEMORY[0x277D85DE8];
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    descriptor = self->_descriptor;
    v5 = 138412290;
    v6 = descriptor;
    _os_log_impl(&dword_21FD11000, log, OS_LOG_TYPE_DEFAULT, "got error trying to prompt for tap-to-radar. will try again later %@", &v5, 0xCu);
  }

  [(BLSHInternalTapToRadarDialog *)self callCompletion:0 shouldTryAgain:1];
}

void __62__BLSHInternalTapToRadarDialog_callCompletion_shouldTryAgain___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  if (*(v2 + 24))
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 40);
      v5 = *(a1 + 41);
      v8[0] = 67109376;
      v8[1] = v4;
      v9 = 1024;
      v10 = v5;
      _os_log_impl(&dword_21FD11000, v3, OS_LOG_TYPE_DEFAULT, "Tap-To-Radar dialog calling completion radarWasFiled:%{BOOL}u shouldTryAgain:%{BOOL}u", v8, 0xEu);
    }

    (*(*(*(a1 + 32) + 24) + 16))();
    v6 = *(a1 + 32);
    v7 = *(v6 + 24);
    *(v6 + 24) = 0;
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __62__BLSHInternalTapToRadarDialog_callCompletion_shouldTryAgain___block_invoke_cold_1(a1, v3);
  }
}

- (void)presentWithCompletion:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 8);
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_21FD11000, a2, OS_LOG_TYPE_ERROR, "ignoring Tap-To-Radar %@ per previous user request", &v3, 0xCu);
}

- (void)_alertDidDismiss:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = a1;
  _os_log_fault_impl(&dword_21FD11000, a2, OS_LOG_TYPE_FAULT, "Got unpexpected response in _alertDidDismiss(): %ld", &v2, 0xCu);
}

void __62__BLSHInternalTapToRadarDialog_callCompletion_shouldTryAgain___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = *(a1 + 41);
  v4[0] = 67109376;
  v4[1] = v2;
  v5 = 1024;
  v6 = v3;
  _os_log_error_impl(&dword_21FD11000, a2, OS_LOG_TYPE_ERROR, "Tap-To-Radar dialog asked to call nil completion radarWasFiled:%{BOOL}u shouldTryAgain:%{BOOL}u", v4, 0xEu);
}

@end