@interface SLTranscriptController
- (BOOL)deviceIsiPad;
- (void)dealloc;
- (void)presentTranscriptForMessageGUID:(id)d attachmentGUID:(id)iD presentingViewController:(id)controller;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation SLTranscriptController

- (void)dealloc
{
  sIsPresenting = 0;
  if (self->_requestUUID)
  {
    v3 = SLFrameworkLogHandle([(NSExtension *)self->_extension cancelExtensionRequestWithIdentifier:?]);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [SLTranscriptController dealloc];
    }
  }

  v4.receiver = self;
  v4.super_class = SLTranscriptController;
  [(SLTranscriptController *)&v4 dealloc];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = SLTranscriptController;
  [(SLTranscriptController *)&v4 viewWillDisappear:disappear];
  if ([(SLTranscriptController *)self isBeingDismissed])
  {
    sIsPresenting = 0;
  }
}

- (BOOL)deviceIsiPad
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  v3 = [currentDevice userInterfaceIdiom] == 1;

  return v3;
}

- (void)presentTranscriptForMessageGUID:(id)d attachmentGUID:(id)iD presentingViewController:(id)controller
{
  v47[3] = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  controllerCopy = controller;
  v11 = controllerCopy;
  if (sIsPresenting == 1)
  {
    dCopy = SLFrameworkLogHandle(controllerCopy);
    if (os_log_type_enabled(dCopy, OS_LOG_TYPE_DEBUG))
    {
      [SLTranscriptController presentTranscriptForMessageGUID:attachmentGUID:presentingViewController:];
    }
  }

  else
  {
    currentConnection = [MEMORY[0x277CCAE80] currentConnection];
    HasPublicEntitlement = SLAppHasPublicEntitlement();

    sIsPresenting = 1;
    if (![(SLTranscriptController *)self deviceIsiPad]|| (HasPublicEntitlement & 1) != 0)
    {
      v42 = 0;
      v22 = [MEMORY[0x277CCA9C8] extensionWithIdentifier:@"com.apple.MobileSMS.MessagesTranscriptExtension" error:&v42];
      dCopy = v42;
      v23 = [(SLTranscriptController *)self setExtension:v22];
      if (v22)
      {
        objc_initWeak(&location, self);
        v38[0] = MEMORY[0x277D85DD0];
        v38[1] = 3221225472;
        v38[2] = __98__SLTranscriptController_presentTranscriptForMessageGUID_attachmentGUID_presentingViewController___block_invoke_27;
        v38[3] = &unk_278925C28;
        objc_copyWeak(&v40, &location);
        v24 = dCopy;
        v39 = v24;
        [v22 setRequestInterruptionBlock:v38];
        v25 = objc_alloc_init(MEMORY[0x277CCA9D8]);
        if (v24)
        {
          v26 = objc_alloc_init(MEMORY[0x277CBEB38]);
          [v26 setObject:v24 forKey:@"messageGUID"];
          if (iDCopy)
          {
            [v26 setObject:iDCopy forKey:@"attachmentGUID"];
          }

          [v25 setUserInfo:v26];
        }

        objc_initWeak(&from, v11);
        objc_initWeak(&v36, v22);
        v34[0] = 0;
        v34[1] = v34;
        v34[2] = 0x3032000000;
        v34[3] = __Block_byref_object_copy_;
        v34[4] = __Block_byref_object_dispose_;
        selfCopy = self;
        v45 = v25;
        v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v45 count:1];
        v29[0] = MEMORY[0x277D85DD0];
        v29[1] = 3221225472;
        v29[2] = __98__SLTranscriptController_presentTranscriptForMessageGUID_attachmentGUID_presentingViewController___block_invoke_33;
        v29[3] = &unk_278925CA0;
        objc_copyWeak(&v32, &from);
        objc_copyWeak(&v33, &v36);
        v31 = v34;
        v30 = v24;
        [v22 instantiateViewControllerWithInputItems:v27 connectionHandler:v29];

        objc_destroyWeak(&v33);
        objc_destroyWeak(&v32);
        _Block_object_dispose(v34, 8);

        objc_destroyWeak(&v36);
        objc_destroyWeak(&from);

        objc_destroyWeak(&v40);
        objc_destroyWeak(&location);
      }

      else
      {
        v28 = SLFrameworkLogHandle(v23);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          [SLTranscriptController presentTranscriptForMessageGUID:attachmentGUID:presentingViewController:];
        }

        sIsPresenting = 0;
      }
    }

    else
    {
      dCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"messages://open?message-guid=%@&overlay=1", dCopy];
      v15 = [MEMORY[0x277CBEBC0] URLWithString:dCopy];
      serviceWithDefaultShellEndpoint = [MEMORY[0x277D0AD78] serviceWithDefaultShellEndpoint];
      v17 = MEMORY[0x277D0AD60];
      v18 = *MEMORY[0x277D0AC40];
      v46[0] = *MEMORY[0x277D67120];
      v46[1] = v18;
      v47[0] = *MEMORY[0x277D67090];
      v47[1] = v15;
      v46[2] = *MEMORY[0x277D0AC80];
      v47[2] = MEMORY[0x277CBEC38];
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:v46 count:3];
      v20 = [v17 optionsWithDictionary:v19];

      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = __98__SLTranscriptController_presentTranscriptForMessageGUID_attachmentGUID_presentingViewController___block_invoke;
      v43[3] = &unk_278925BD8;
      v44 = v15;
      v21 = v15;
      [serviceWithDefaultShellEndpoint openApplication:@"com.apple.MobileSMS" withOptions:v20 completion:v43];
    }
  }
}

void __98__SLTranscriptController_presentTranscriptForMessageGUID_attachmentGUID_presentingViewController___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = SLFrameworkLogHandle(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __98__SLTranscriptController_presentTranscriptForMessageGUID_attachmentGUID_presentingViewController___block_invoke_cold_1();
    }

    v7 = [MEMORY[0x277D75128] sharedApplication];
    [v7 openURL:*(a1 + 32) options:MEMORY[0x277CBEC10] completionHandler:0];

    sIsPresenting = 0;
  }
}

void __98__SLTranscriptController_presentTranscriptForMessageGUID_attachmentGUID_presentingViewController___block_invoke_27(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __98__SLTranscriptController_presentTranscriptForMessageGUID_attachmentGUID_presentingViewController___block_invoke_2;
  v2[3] = &unk_278925C00;
  objc_copyWeak(&v4, (a1 + 40));
  v3 = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], v2);

  objc_destroyWeak(&v4);
}

void __98__SLTranscriptController_presentTranscriptForMessageGUID_attachmentGUID_presentingViewController___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained dismissViewControllerAnimated:0 completion:0];

  v4 = SLFrameworkLogHandle(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __98__SLTranscriptController_presentTranscriptForMessageGUID_attachmentGUID_presentingViewController___block_invoke_2_cold_1();
  }

  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"messages://open?message-guid=%@&overlay=1", *(a1 + 32)];
  v6 = [MEMORY[0x277CBEBC0] URLWithString:v5];
  v7 = [MEMORY[0x277D75128] sharedApplication];
  [v7 openURL:v6 options:MEMORY[0x277CBEC10] completionHandler:0];

  sIsPresenting = 0;
}

void __98__SLTranscriptController_presentTranscriptForMessageGUID_attachmentGUID_presentingViewController___block_invoke_33(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __98__SLTranscriptController_presentTranscriptForMessageGUID_attachmentGUID_presentingViewController___block_invoke_2_34;
  block[3] = &unk_278925C78;
  v16 = v9;
  v10 = v9;
  objc_copyWeak(&v20, (a1 + 48));
  objc_copyWeak(&v21, (a1 + 56));
  v17 = v7;
  v18 = v8;
  v14 = *(a1 + 32);
  v11 = v14;
  v19 = v14;
  v12 = v8;
  v13 = v7;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v21);
  objc_destroyWeak(&v20);
}

void __98__SLTranscriptController_presentTranscriptForMessageGUID_attachmentGUID_presentingViewController___block_invoke_2_34(uint64_t a1)
{
  if (*(a1 + 32))
  {
    WeakRetained = SLFrameworkLogHandle(a1);
    if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_ERROR))
    {
      __98__SLTranscriptController_presentTranscriptForMessageGUID_attachmentGUID_presentingViewController___block_invoke_2_34_cold_1();
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 72));
    if (WeakRetained)
    {
      [*(*(*(a1 + 64) + 8) + 40) setRequestUUID:*(a1 + 40)];
      [*(*(*(a1 + 64) + 8) + 40) setRemoteViewController:*(a1 + 48)];
      v3 = [*(a1 + 48) view];
      [v3 setAutoresizingMask:18];

      v4 = [*(*(*(a1 + 64) + 8) + 40) view];
      [v4 bounds];
      v6 = v5;
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v13 = [*(a1 + 48) view];
      [v13 setFrame:{v6, v8, v10, v12}];

      [*(*(*(a1 + 64) + 8) + 40) addChildViewController:*(a1 + 48)];
      v14 = [*(*(*(a1 + 64) + 8) + 40) view];
      v15 = [*(a1 + 48) view];
      [v14 addSubview:v15];

      [*(a1 + 48) didMoveToParentViewController:*(*(*(a1 + 64) + 8) + 40)];
      v16 = objc_loadWeakRetained((a1 + 80));
      v17 = [*(*(*(a1 + 64) + 8) + 40) requestUUID];
      v18 = [v16 _extensionContextForUUID:v17];

      [v18 setMessageGUID:*(a1 + 56)];
      objc_initWeak(&location, *(*(*(a1 + 64) + 8) + 40));
      v25 = MEMORY[0x277D85DD0];
      v26 = 3221225472;
      v27 = __98__SLTranscriptController_presentTranscriptForMessageGUID_attachmentGUID_presentingViewController___block_invoke_35;
      v28 = &unk_278925C50;
      objc_copyWeak(&v29, &location);
      v19 = SLFrameworkLogHandle([v18 setDismissalRequestHandler:&v25]);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        __98__SLTranscriptController_presentTranscriptForMessageGUID_attachmentGUID_presentingViewController___block_invoke_2_34_cold_2();
      }

      v20 = objc_loadWeakRetained(&location);
      [WeakRetained presentViewController:v20 animated:1 completion:0, v25, v26, v27, v28];

      v21 = *(*(a1 + 64) + 8);
      v22 = *(v21 + 40);
      *(v21 + 40) = 0;

      objc_destroyWeak(&v29);
      objc_destroyWeak(&location);
    }

    else
    {
      v23 = objc_loadWeakRetained((a1 + 80));
      [v23 cancelExtensionRequestWithIdentifier:*(a1 + 40)];

      sIsPresenting = 0;
      v18 = SLFrameworkLogHandle(v24);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        __98__SLTranscriptController_presentTranscriptForMessageGUID_attachmentGUID_presentingViewController___block_invoke_2_34_cold_3();
      }
    }
  }
}

void __98__SLTranscriptController_presentTranscriptForMessageGUID_attachmentGUID_presentingViewController___block_invoke_35(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained dismissViewControllerAnimated:1 completion:0];
  }

  else
  {
    v3 = SLFrameworkLogHandle(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __98__SLTranscriptController_presentTranscriptForMessageGUID_attachmentGUID_presentingViewController___block_invoke_35_cold_1();
    }
  }
}

void __98__SLTranscriptController_presentTranscriptForMessageGUID_attachmentGUID_presentingViewController___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __98__SLTranscriptController_presentTranscriptForMessageGUID_attachmentGUID_presentingViewController___block_invoke_2_34_cold_3()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __98__SLTranscriptController_presentTranscriptForMessageGUID_attachmentGUID_presentingViewController___block_invoke_35_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end