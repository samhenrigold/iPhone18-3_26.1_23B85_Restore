@interface LACUIHostedSceneActionHostToClient
- (LACUIHostedSceneActionHostToClient)initWithAction:(id)action completion:(id)completion;
- (void)performActionForHostedWindowScene:(id)scene;
@end

@implementation LACUIHostedSceneActionHostToClient

- (LACUIHostedSceneActionHostToClient)initWithAction:(id)action completion:(id)completion
{
  completionCopy = completion;
  v7 = BSSettingsFromHostedSceneAction(action);
  v8 = MEMORY[0x277CF0B60];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __64__LACUIHostedSceneActionHostToClient_initWithAction_completion___block_invoke;
  v14[3] = &unk_27981E798;
  v15 = completionCopy;
  v9 = completionCopy;
  v10 = [v8 responderWithHandler:v14];
  v13.receiver = self;
  v13.super_class = LACUIHostedSceneActionHostToClient;
  v11 = [(LACUIHostedSceneActionHostToClient *)&v13 initWithInfo:v7 responder:v10];

  return v11;
}

void __64__LACUIHostedSceneActionHostToClient_initWithAction_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 error];
  (*(v2 + 16))(v2, v3);
}

- (void)performActionForHostedWindowScene:(id)scene
{
  v16 = *MEMORY[0x277D85DE8];
  sceneCopy = scene;
  v5 = LACLogUI();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    info = [(LACUIHostedSceneActionHostToClient *)self info];
    *buf = 138412546;
    v13 = sceneCopy;
    v14 = 2112;
    v15 = info;
    _os_log_impl(&dword_256063000, v5, OS_LOG_TYPE_DEFAULT, "performActionForHostedWindowScene %@ info: %@", buf, 0x16u);
  }

  info2 = [(LACUIHostedSceneActionHostToClient *)self info];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __72__LACUIHostedSceneActionHostToClient_performActionForHostedWindowScene___block_invoke;
  v9[3] = &unk_27981E7C0;
  v10 = sceneCopy;
  selfCopy = self;
  v8 = sceneCopy;
  BSActionResponseForHandlerAndSettings(v8, info2, v9);
}

void __72__LACUIHostedSceneActionHostToClient_performActionForHostedWindowScene___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = LACLogUI();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = [*(a1 + 40) info];
    v7 = 138412802;
    v8 = v5;
    v9 = 2112;
    v10 = v6;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_256063000, v4, OS_LOG_TYPE_DEFAULT, "performActionForHostedWindowScene %@ info: %@ finished with response: %@", &v7, 0x20u);
  }

  if ([*(a1 + 40) canSendResponse])
  {
    [*(a1 + 40) sendResponse:v3];
  }
}

@end