@interface QLMovieItemAggregatedViewController
- (void)loadPreviewControllerWithContents:(id)contents context:(id)context completionHandler:(id)handler;
@end

@implementation QLMovieItemAggregatedViewController

- (void)loadPreviewControllerWithContents:(id)contents context:(id)context completionHandler:(id)handler
{
  contentsCopy = contents;
  contextCopy = context;
  handlerCopy = handler;
  v11 = MEMORY[0x277CE63D8];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __99__QLMovieItemAggregatedViewController_loadPreviewControllerWithContents_context_completionHandler___block_invoke;
  v15[3] = &unk_278B585C0;
  v15[4] = self;
  v16 = contentsCopy;
  v17 = contextCopy;
  v18 = handlerCopy;
  v12 = handlerCopy;
  v13 = contextCopy;
  v14 = contentsCopy;
  [v11 assetIsAutoloopMedia:v14 completionHandler:v15];
}

void __99__QLMovieItemAggregatedViewController_loadPreviewControllerWithContents_context_completionHandler___block_invoke(uint64_t a1, char a2)
{
  v7 = *(a1 + 32);
  v3 = *(&v7 + 1);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  *&v6 = v4;
  *(&v6 + 1) = v5;
  v8 = v6;
  QLRunInMainThread();
}

void __99__QLMovieItemAggregatedViewController_loadPreviewControllerWithContents_context_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = objc_opt_new();
  objc_storeStrong((*(a1 + 32) + 1160), v2);
  objc_initWeak(&location, *(a1 + 32));
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __99__QLMovieItemAggregatedViewController_loadPreviewControllerWithContents_context_completionHandler___block_invoke_3;
  v6[3] = &unk_278B58570;
  objc_copyWeak(&v9, &location);
  v5 = v2;
  v7 = v5;
  v8 = *(a1 + 56);
  [v5 loadPreviewControllerIfNeededWithContents:v3 context:v4 completionHandler:v6];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __99__QLMovieItemAggregatedViewController_loadPreviewControllerWithContents_context_completionHandler___block_invoke_3(id *a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(&v7, a1 + 6);
  v4 = a1[4];
  v6 = a1[5];
  v5 = v3;
  QLRunInMainThread();

  objc_destroyWeak(&v7);
}

uint64_t __99__QLMovieItemAggregatedViewController_loadPreviewControllerWithContents_context_completionHandler___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained showPreviewViewController:*(a1 + 32)];

  result = *(a1 + 48);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

@end