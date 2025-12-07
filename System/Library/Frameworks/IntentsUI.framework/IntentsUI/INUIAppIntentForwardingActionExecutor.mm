@interface INUIAppIntentForwardingActionExecutor
- (INUIAppIntentForwardingActionExecutor)initWithApplication:(id)application;
- (void)executeAction:(id)action completionHandler:(id)handler;
- (void)intentDeliverer:(id)deliverer deliverIntent:(id)intent withBlock:(id)block;
@end

@implementation INUIAppIntentForwardingActionExecutor

- (void)intentDeliverer:(id)deliverer deliverIntent:(id)intent withBlock:(id)block
{
  intentCopy = intent;
  blockCopy = block;
  delegate = [(UIApplication *)self->_application delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    delegate2 = [(UIApplication *)self->_application delegate];
    v11 = [delegate2 application:self->_application handlerForIntent:intentCopy];
    handlerForIntent = self->_handlerForIntent;
    self->_handlerForIntent = v11;
  }

  blockCopy[2](blockCopy, self->_handlerForIntent);
}

- (void)executeAction:(id)action completionHandler:(id)handler
{
  v47[1] = *MEMORY[0x277D85DE8];
  actionCopy = action;
  handlerCopy = handler;
  application = [(INUIAppIntentForwardingActionExecutor *)self application];
  delegate = [application delegate];
  intentForwardingAction = [actionCopy intentForwardingAction];
  if (intentForwardingAction && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v42 = 0;
    v43 = &v42;
    v44 = 0x2050000000;
    v11 = getWFOnScreenContentExtractorClass_softClass;
    v45 = getWFOnScreenContentExtractorClass_softClass;
    if (!getWFOnScreenContentExtractorClass_softClass)
    {
      v37 = MEMORY[0x277D85DD0];
      v38 = 3221225472;
      v39 = __getWFOnScreenContentExtractorClass_block_invoke;
      v40 = &unk_27872BE58;
      v41 = &v42;
      __getWFOnScreenContentExtractorClass_block_invoke(&v37);
      v11 = v43[3];
    }

    v12 = v11;
    _Block_object_dispose(&v42, 8);
    v13 = objc_alloc_init(v11);
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __73__INUIAppIntentForwardingActionExecutor_executeAction_completionHandler___block_invoke;
    v35[3] = &unk_27872B960;
    v36 = handlerCopy;
    [v13 handleAction:intentForwardingAction completionHandler:v35];
  }

  else
  {

    if (objc_opt_respondsToSelector())
    {
      intentForwardingAction2 = [actionCopy intentForwardingAction];
      v15 = [objc_alloc(MEMORY[0x277CD3A80]) initWithDelegate:self];
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __73__INUIAppIntentForwardingActionExecutor_executeAction_completionHandler___block_invoke_2;
      v33[3] = &unk_27872B988;
      v33[4] = self;
      v34 = handlerCopy;
      [v15 dispatchIntentForwardingAction:intentForwardingAction2 completionHandler:v33];
    }

    else if (objc_opt_respondsToSelector())
    {
      v37 = 0;
      v38 = &v37;
      v39 = 0x2020000000;
      LOBYTE(v40) = 0;
      intentForwardingAction3 = [actionCopy intentForwardingAction];
      intent = [intentForwardingAction3 intent];
      v18 = INTypedIntentWithIntent();

      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __73__INUIAppIntentForwardingActionExecutor_executeAction_completionHandler___block_invoke_3;
      v30[3] = &unk_27872B9B0;
      v32 = &v37;
      v31 = handlerCopy;
      [delegate application:application handleIntent:v18 completionHandler:v30];

      _Block_object_dispose(&v37, 8);
    }

    else
    {
      v19 = MEMORY[0x277CCA9B8];
      v46 = *MEMORY[0x277CCA068];
      v20 = MEMORY[0x277CCACA8];
      intentForwardingAction4 = [actionCopy intentForwardingAction];
      intent2 = [intentForwardingAction4 intent];
      v23 = [v20 stringWithFormat:@"Missing intent handler for %@", objc_opt_class()];
      v47[0] = v23;
      v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:&v46 count:1];
      v25 = [v19 errorWithDomain:*MEMORY[0x277CD3848] code:2003 userInfo:v24];

      intentForwardingAction5 = [actionCopy intentForwardingAction];
      v27 = objc_opt_class();

      v28 = [objc_alloc(objc_msgSend(v27 "responseClass"))];
      v29 = [MEMORY[0x277D75610] responseWithIntentForwardingActionResponse:v28];
      (*(handlerCopy + 2))(handlerCopy, v29);
    }
  }
}

void __73__INUIAppIntentForwardingActionExecutor_executeAction_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D75610];
  v4 = a2;
  v5 = [[v3 alloc] initWithIntentForwardingActionResponse:v4];

  (*(*(a1 + 32) + 16))();
}

void __73__INUIAppIntentForwardingActionExecutor_executeAction_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = [MEMORY[0x277D75610] responseWithIntentForwardingActionResponse:a2];
  (*(v2 + 16))(v2, v3);
}

void __73__INUIAppIntentForwardingActionExecutor_executeAction_completionHandler___block_invoke_3(uint64_t a1, uint64_t a2)
{
  *(*(*(a1 + 40) + 8) + 24) = 1;
  v7 = INIntentResponseWithTypedIntentResponse();
  v3 = *(a1 + 32);
  v4 = MEMORY[0x277D75610];
  v5 = [objc_alloc(MEMORY[0x277CD3CB8]) initWithIntentResponse:v7 launchContextActivityData:0 cacheItems:0 error:0];
  v6 = [v4 responseWithIntentForwardingActionResponse:v5];
  (*(v3 + 16))(v3, v6);
}

- (INUIAppIntentForwardingActionExecutor)initWithApplication:(id)application
{
  applicationCopy = application;
  v9.receiver = self;
  v9.super_class = INUIAppIntentForwardingActionExecutor;
  v6 = [(INUIAppIntentForwardingActionExecutor *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_application, application);
  }

  return v7;
}

@end