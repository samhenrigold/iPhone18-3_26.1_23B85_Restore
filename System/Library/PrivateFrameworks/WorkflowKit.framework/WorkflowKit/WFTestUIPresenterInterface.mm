@interface WFTestUIPresenterInterface
- (WFBackgroundShortcutRunner)backgroundRunner;
- (WFTestUIPresenterInterface)initWithTestCase:(id)case backgroundRunner:(id)runner;
- (void)performDialogRequest:(id)request completionHandler:(id)handler;
- (void)performSiriRequest:(id)request completionHandler:(id)handler;
- (void)showDialogRequest:(id)request runningContext:(id)context completionHandler:(id)handler;
@end

@implementation WFTestUIPresenterInterface

- (WFBackgroundShortcutRunner)backgroundRunner
{
  WeakRetained = objc_loadWeakRetained(&self->_backgroundRunner);

  return WeakRetained;
}

- (void)performDialogRequest:(id)request completionHandler:(id)handler
{
  v5 = MEMORY[0x1E69E0AB8];
  handlerCopy = handler;
  v7 = [[v5 alloc] initWithResponseCode:4];
  (*(handler + 2))(handlerCopy, v7);
}

- (void)performSiriRequest:(id)request completionHandler:(id)handler
{
  v42[1] = *MEMORY[0x1E69E9840];
  requestCopy = request;
  handlerCopy = handler;
  backgroundRunner = [(WFTestUIPresenterInterface *)self backgroundRunner];
  dialogTransformer = [backgroundRunner dialogTransformer];
  currentAction = [dialogTransformer currentAction];

  if (currentAction)
  {
    v11 = [backgroundRunner contextForAction:currentAction];
    currentTestCase = [backgroundRunner currentTestCase];
    siriInteractions = [currentTestCase siriInteractions];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __67__WFTestUIPresenterInterface_performSiriRequest_completionHandler___block_invoke;
    v34[3] = &unk_1E8373950;
    v14 = requestCopy;
    v35 = v14;
    v15 = v11;
    v36 = v15;
    v16 = [siriInteractions if_compactMap:v34];

    currentTestCase2 = [backgroundRunner currentTestCase];
    handledSiriInteractions = [currentTestCase2 handledSiriInteractions];
    [handledSiriInteractions unionSet:v16];

    if ([v16 count])
    {
      if ([v16 count] < 2)
      {
        goto LABEL_9;
      }

      v19 = MEMORY[0x1E696ABC0];
      v37 = *MEMORY[0x1E696A578];
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Test UI presenter asked to perform Siri request %@ but there were multiple matching interactions found", v14];
      v38 = v20;
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
      v22 = v19;
      v23 = 7;
    }

    else
    {
      v28 = MEMORY[0x1E696ABC0];
      v39 = *MEMORY[0x1E696A578];
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Test UI presenter asked to perform Siri request %@ but there were no matching interactions found", v14];
      v40 = v20;
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
      v22 = v28;
      v23 = 6;
    }

    anyObject = [v22 errorWithDomain:@"WFHarnessTestErrorDomain" code:v23 userInfo:v21];

    if (anyObject)
    {
      v30 = [objc_alloc(MEMORY[0x1E69E0C90]) initWithError:anyObject];
      handlerCopy[2](handlerCopy, v30);
LABEL_10:

      v27 = v35;
      goto LABEL_11;
    }

LABEL_9:
    anyObject = [v16 anyObject];
    interaction = [anyObject interaction];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __67__WFTestUIPresenterInterface_performSiriRequest_completionHandler___block_invoke_2;
    v32[3] = &unk_1E8373978;
    v33 = handlerCopy;
    (interaction)[2](interaction, currentAction, v14, v32);

    v30 = v33;
    goto LABEL_10;
  }

  v24 = MEMORY[0x1E696ABC0];
  v41 = *MEMORY[0x1E696A578];
  requestCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Test UI presenter asked to perform Siri request %@ while no action is running", requestCopy];
  v42[0] = requestCopy;
  v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:&v41 count:1];
  v15 = [v24 errorWithDomain:@"WFHarnessTestErrorDomain" code:5 userInfo:v26];

  v27 = [objc_alloc(MEMORY[0x1E69E0C90]) initWithError:v15];
  handlerCopy[2](handlerCopy, v27);
LABEL_11:
}

id __67__WFTestUIPresenterInterface_performSiriRequest_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 siriActionRequestClass];
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v3 selector], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "matchesContext:", *(a1 + 40)), v4, v5))
  {
    v6 = v3;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __67__WFTestUIPresenterInterface_performSiriRequest_completionHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = a2;
  v5 = *(a1 + 32);
  if (a3)
  {
    (*(v5 + 16))(v5, a3);
  }

  else
  {
    v6 = objc_alloc(MEMORY[0x1E69E0C90]);
    v7 = [v9 errorRepresentation];
    v8 = [v6 initWithError:v7];
    (*(v5 + 16))(v5, v8);
  }
}

- (void)showDialogRequest:(id)request runningContext:(id)context completionHandler:(id)handler
{
  v41[1] = *MEMORY[0x1E69E9840];
  requestCopy = request;
  handlerCopy = handler;
  backgroundRunner = [(WFTestUIPresenterInterface *)self backgroundRunner];
  dialogTransformer = [backgroundRunner dialogTransformer];
  currentAction = [dialogTransformer currentAction];

  if (currentAction)
  {
    v12 = [backgroundRunner contextForAction:currentAction];
    currentTestCase = [backgroundRunner currentTestCase];
    interactions = [currentTestCase interactions];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __81__WFTestUIPresenterInterface_showDialogRequest_runningContext_completionHandler___block_invoke;
    v33[3] = &unk_1E8373900;
    v15 = requestCopy;
    v34 = v15;
    requestCopy = v12;
    v35 = requestCopy;
    v17 = [interactions if_compactMap:v33];

    currentTestCase2 = [backgroundRunner currentTestCase];
    handledInteractions = [currentTestCase2 handledInteractions];
    [handledInteractions unionSet:v17];

    if ([v17 count])
    {
      if ([v17 count] < 2)
      {
        anyObject = [v17 anyObject];
        interaction = [anyObject interaction];
        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 3221225472;
        v31[2] = __81__WFTestUIPresenterInterface_showDialogRequest_runningContext_completionHandler___block_invoke_2;
        v31[3] = &unk_1E8373928;
        v32 = handlerCopy;
        (interaction)[2](interaction, currentAction, v15, v31);

        v22 = v32;
        goto LABEL_9;
      }

      v20 = MEMORY[0x1E696ABC0];
      v36 = *MEMORY[0x1E696A578];
      anyObject = [MEMORY[0x1E696AEC0] stringWithFormat:@"Test UI presenter asked to present dialog %@ but there were multiple matching interactions found", v15];
      v37 = anyObject;
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
      v23 = v20;
      v24 = 4;
    }

    else
    {
      v28 = MEMORY[0x1E696ABC0];
      v38 = *MEMORY[0x1E696A578];
      anyObject = [MEMORY[0x1E696AEC0] stringWithFormat:@"Test UI presenter asked to present dialog %@ but there were no matching interactions found", v15];
      v39 = anyObject;
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
      v23 = v28;
      v24 = 3;
    }

    v29 = [v23 errorWithDomain:@"WFHarnessTestErrorDomain" code:v24 userInfo:v22];
    (*(handlerCopy + 2))(handlerCopy, 0, v29);

LABEL_9:
    v26 = v34;
    goto LABEL_10;
  }

  v25 = MEMORY[0x1E696ABC0];
  v40 = *MEMORY[0x1E696A578];
  requestCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Test UI presenter asked to present dialog %@ while no action is running", requestCopy];
  v41[0] = requestCopy;
  v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:&v40 count:1];
  v27 = [v25 errorWithDomain:@"WFHarnessTestErrorDomain" code:2 userInfo:v26];
  (*(handlerCopy + 2))(handlerCopy, 0, v27);

LABEL_10:
}

id __81__WFTestUIPresenterInterface_showDialogRequest_runningContext_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 dialogRequestClass];
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v3 selector], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "matchesContext:", *(a1 + 40)), v4, v5))
  {
    v6 = v3;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __81__WFTestUIPresenterInterface_showDialogRequest_runningContext_completionHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a3)
  {
    v4 = *(v3 + 16);
    v5 = *(a1 + 32);

    v4(v5, a3, 0);
  }

  else
  {
    v6 = [a2 errorRepresentation];
    (*(v3 + 16))(v3, 0, v6);
  }
}

- (WFTestUIPresenterInterface)initWithTestCase:(id)case backgroundRunner:(id)runner
{
  caseCopy = case;
  runnerCopy = runner;
  v13.receiver = self;
  v13.super_class = WFTestUIPresenterInterface;
  v9 = [(WFTestUIPresenterInterface *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_testCase, case);
    objc_storeWeak(&v10->_backgroundRunner, runnerCopy);
    v11 = v10;
  }

  return v10;
}

@end