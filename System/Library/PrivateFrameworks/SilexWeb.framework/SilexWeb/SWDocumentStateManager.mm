@interface SWDocumentStateManager
- (BOOL)isDocumentReady;
- (SWDocumentStateManager)initWithUserContentController:(id)controller;
- (void)documentIsReady;
- (void)documentStartedLoading;
- (void)documentWillUnload;
- (void)onLoad:(id)load;
- (void)onReady:(id)ready;
- (void)onUnload:(id)unload;
- (void)userContentController:(id)controller didReceiveScriptMessage:(id)message;
@end

@implementation SWDocumentStateManager

- (SWDocumentStateManager)initWithUserContentController:(id)controller
{
  v42[3] = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  v40.receiver = self;
  v40.super_class = SWDocumentStateManager;
  v6 = [(SWDocumentStateManager *)&v40 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_userContentController, controller);
    array = [MEMORY[0x1E695DF70] array];
    onReadyBlocks = v7->_onReadyBlocks;
    v7->_onReadyBlocks = array;

    array2 = [MEMORY[0x1E695DF70] array];
    onLoadBlocks = v7->_onLoadBlocks;
    v7->_onLoadBlocks = array2;

    array3 = [MEMORY[0x1E695DF70] array];
    onUnloadBlocks = v7->_onUnloadBlocks;
    v7->_onUnloadBlocks = array3;

    v38 = [[SWWeakScriptMessageHandler alloc] initWithScriptMessageHandler:v7];
    [controllerCopy addScriptMessageHandler:v38 name:@"documentReady"];
    v37 = [objc_alloc(MEMORY[0x1E6985358]) initWithSource:@"window.webkit.messageHandlers.documentReady.postMessage({});" injectionTime:0 forMainFrameOnly:1];
    [controllerCopy addUserScript:v37];
    v35 = [objc_alloc(MEMORY[0x1E69B6918]) initWithName:@"idle"];
    v14 = [objc_alloc(MEMORY[0x1E69B6918]) initWithName:@"loading"];
    v15 = [v14 onWillEnter:&__block_literal_global];
    v16 = [objc_alloc(MEMORY[0x1E69B6918]) initWithName:@"ready"];
    v17 = [v16 onWillEnter:&__block_literal_global_18];
    v18 = [objc_alloc(MEMORY[0x1E69B6918]) initWithName:@"unload"];
    v19 = [v18 onWillEnter:&__block_literal_global_23];
    v39 = controllerCopy;
    v20 = objc_alloc(MEMORY[0x1E69B6910]);
    v21 = MEMORY[0x1E695DFD8];
    v42[0] = v35;
    v42[1] = v18;
    v42[2] = v16;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:3];
    v23 = [v21 setWithArray:v22];
    v36 = [v20 initWithName:@"loading" transitionFromStates:v23 toState:v14];

    v24 = objc_alloc(MEMORY[0x1E69B6910]);
    v25 = [MEMORY[0x1E695DFD8] setWithObject:v14];
    v26 = [v24 initWithName:@"ready" transitionFromStates:v25 toState:v16];

    v27 = objc_alloc(MEMORY[0x1E69B6910]);
    v28 = MEMORY[0x1E695DFD8];
    v41[0] = v14;
    v41[1] = v16;
    v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:2];
    v30 = [v28 setWithArray:v29];
    v31 = [v27 initWithName:@"unload" transitionFromStates:v30 toState:v18];

    controllerCopy = v39;
    v32 = [objc_alloc(MEMORY[0x1E69B6908]) initWithState:v35 withOwner:v7];
    stateMachine = v7->_stateMachine;
    v7->_stateMachine = v32;

    [(NFStateMachine *)v7->_stateMachine addState:v14];
    [(NFStateMachine *)v7->_stateMachine addState:v16];
    [(NFStateMachine *)v7->_stateMachine addState:v18];
    [(NFStateMachine *)v7->_stateMachine addEvent:v36];
    [(NFStateMachine *)v7->_stateMachine addEvent:v26];
    [(NFStateMachine *)v7->_stateMachine addEvent:v31];
    [(NFStateMachine *)v7->_stateMachine activate];
  }

  return v7;
}

void __56__SWDocumentStateManager_initWithUserContentController___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [a3 onLoadBlocks];
  v4 = [v3 copy];

  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        (*(*(*(&v9 + 1) + 8 * v8++) + 16))();
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

void __56__SWDocumentStateManager_initWithUserContentController___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [a3 onReadyBlocks];
  v4 = [v3 copy];

  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        (*(*(*(&v9 + 1) + 8 * v8++) + 16))();
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

void __56__SWDocumentStateManager_initWithUserContentController___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [a3 onUnloadBlocks];
  v4 = [v3 copy];

  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        (*(*(*(&v9 + 1) + 8 * v8++) + 16))();
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)documentStartedLoading
{
  stateMachine = [(SWDocumentStateManager *)self stateMachine];
  v2 = [stateMachine fireEventWithName:@"loading" withContext:0];
}

- (void)documentIsReady
{
  stateMachine = [(SWDocumentStateManager *)self stateMachine];
  v2 = [stateMachine fireEventWithName:@"ready" withContext:0];
}

- (void)documentWillUnload
{
  stateMachine = [(SWDocumentStateManager *)self stateMachine];
  v2 = [stateMachine fireEventWithName:@"unload" withContext:0];
}

- (void)onReady:(id)ready
{
  if (ready)
  {
    readyCopy = ready;
    onReadyBlocks = [(SWDocumentStateManager *)self onReadyBlocks];
    v5 = MEMORY[0x1DA6FDA60](readyCopy);

    [onReadyBlocks addObject:v5];
  }
}

- (void)onLoad:(id)load
{
  if (load)
  {
    loadCopy = load;
    onLoadBlocks = [(SWDocumentStateManager *)self onLoadBlocks];
    v5 = MEMORY[0x1DA6FDA60](loadCopy);

    [onLoadBlocks addObject:v5];
  }
}

- (void)onUnload:(id)unload
{
  if (unload)
  {
    unloadCopy = unload;
    onUnloadBlocks = [(SWDocumentStateManager *)self onUnloadBlocks];
    v5 = MEMORY[0x1DA6FDA60](unloadCopy);

    [onUnloadBlocks addObject:v5];
  }
}

- (BOOL)isDocumentReady
{
  stateMachine = [(SWDocumentStateManager *)self stateMachine];
  state = [stateMachine state];
  name = [state name];
  v5 = [name isEqualToString:@"ready"];

  return v5;
}

- (void)userContentController:(id)controller didReceiveScriptMessage:(id)message
{
  name = [message name];
  v6 = [name isEqualToString:@"documentReady"];

  if (v6)
  {

    [(SWDocumentStateManager *)self documentIsReady];
  }
}

@end