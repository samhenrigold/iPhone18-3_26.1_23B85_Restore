@interface FLExtensionViewController
- (void)beginRequestWithExtensionContext:(id)context;
- (void)finishProcessingWithUserInfo:(id)info;
- (void)processFollowUpItem:(id)item selectedAction:(id)action completion:(id)completion;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation FLExtensionViewController

- (void)beginRequestWithExtensionContext:(id)context
{
  contextCopy = context;
  v5 = _FLLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_245383000, v5, OS_LOG_TYPE_DEFAULT, "Follow up extension starting", v7, 2u);
  }

  context = self->_context;
  self->_context = contextCopy;
}

void __42__FLExtensionViewController_hostInterface__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _FLLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __42__FLExtensionViewController_hostInterface__block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
  }
}

void __46__FLExtensionViewController_syncHostInterface__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _FLLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __42__FLExtensionViewController_hostInterface__block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
  }
}

- (void)finishProcessingWithUserInfo:(id)info
{
  infoCopy = info;
  v5 = _FLLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_245383000, v5, OS_LOG_TYPE_DEFAULT, "Extension called finish", buf, 2u);
  }

  v6 = [(NSExtensionContext *)self->_context syncHostContextWithErrorHandler:&__block_literal_global_51];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__FLExtensionViewController_finishProcessingWithUserInfo___block_invoke_52;
  v7[3] = &unk_278E35920;
  v7[4] = self;
  [v6 extensionDidFinishWithUserInfo:infoCopy completionHandler:v7];
}

void __58__FLExtensionViewController_finishProcessingWithUserInfo___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _FLLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __42__FLExtensionViewController_hostInterface__block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
  }
}

void *__58__FLExtensionViewController_finishProcessingWithUserInfo___block_invoke_52(void *result, uint64_t a2)
{
  if (*(result[4] + 992))
  {
    v2 = result;
    v3 = _FLLogSystem();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_245383000, v3, OS_LOG_TYPE_DEFAULT, "Running within extension context, terminating... ", v4, 2u);
    }

    return [*(v2[4] + 992) completeRequestReturningItems:0 completionHandler:0];
  }

  return result;
}

- (void)viewDidAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = FLExtensionViewController;
  [(FLExtensionViewController *)&v6 viewDidAppear:appear];
  view = [(FLExtensionViewController *)self view];
  window = [view window];
  [window makeKeyAndVisible];
}

- (void)processFollowUpItem:(id)item selectedAction:(id)action completion:(id)completion
{
  v15 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  actionCopy = action;
  completionCopy = completion;
  v10 = _FLLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = itemCopy;
    v13 = 2112;
    v14 = actionCopy;
    _os_log_impl(&dword_245383000, v10, OS_LOG_TYPE_DEFAULT, "Extension is processing item: %@ action: %@", &v11, 0x16u);
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 0);
  }
}

void __42__FLExtensionViewController_hostInterface__block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0_0(&dword_245383000, a2, a3, "Host experienced a failure: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end