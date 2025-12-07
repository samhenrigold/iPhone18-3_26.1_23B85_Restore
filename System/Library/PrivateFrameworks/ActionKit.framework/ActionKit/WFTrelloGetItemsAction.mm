@interface WFTrelloGetItemsAction
- (void)initializeParameters;
- (void)runAsynchronouslyWithInput:(id)input;
- (void)updateBoards:(id)boards onAccount:(id)account;
- (void)updateListCache:(id)cache board:(id)board account:(id)account;
@end

@implementation WFTrelloGetItemsAction

- (void)updateListCache:(id)cache board:(id)board account:(id)account
{
  cacheCopy = cache;
  boardCopy = board;
  accountCopy = account;
  identifier = [boardCopy identifier];

  if (identifier)
  {
    identifier2 = [boardCopy identifier];
    v20 = WFDiskCacheKey(identifier2, v13, v14, v15, v16, v17, v18, v19, @"WFTrelloLists");

    if ([accountCopy isValid] && objc_msgSend(cacheCopy, "count"))
    {
      v21 = +[WFDiskCache workflowCache];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __56__WFTrelloGetItemsAction_updateListCache_board_account___block_invoke;
      v23[3] = &unk_278C224A0;
      v23[4] = self;
      [v21 setObject:cacheCopy forKey:v20 completion:v23];
    }

    else
    {
      v22 = +[WFDiskCache workflowCache];
      [v22 removeObjectForKey:v20 completion:0];

      [(WFTrelloGetItemsAction *)self finishRunningWithError:0];
    }
  }

  else
  {
    [(WFTrelloGetItemsAction *)self finishRunningWithError:0];
  }
}

uint64_t __56__WFTrelloGetItemsAction_updateListCache_board_account___block_invoke(uint64_t a1)
{
  dispatch_async(MEMORY[0x277D85CD0], &__block_literal_global_218);
  v2 = *(a1 + 32);

  return [v2 finishRunningWithError:0];
}

void __56__WFTrelloGetItemsAction_updateListCache_board_account___block_invoke_2()
{
  v0 = [MEMORY[0x277CCAB98] defaultCenter];
  [v0 postNotificationName:@"WFTrelloListParameterNeedsUpdate" object:0];
}

- (void)updateBoards:(id)boards onAccount:(id)account
{
  boardsCopy = boards;
  if ([account isValid] && objc_msgSend(boardsCopy, "count"))
  {
    v7 = +[WFDiskCache workflowCache];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __49__WFTrelloGetItemsAction_updateBoards_onAccount___block_invoke;
    v9[3] = &unk_278C224A0;
    v9[4] = self;
    [v7 setObject:boardsCopy forKey:@"WFTrelloBoards" completion:v9];
  }

  else
  {
    v8 = +[WFDiskCache workflowCache];
    [v8 removeObjectForKey:@"WFTrelloBoards" completion:0];

    [(WFTrelloGetItemsAction *)self finishRunningWithError:0];
  }
}

uint64_t __49__WFTrelloGetItemsAction_updateBoards_onAccount___block_invoke(uint64_t a1)
{
  dispatch_async(MEMORY[0x277D85CD0], &__block_literal_global_15582);
  v2 = *(a1 + 32);

  return [v2 finishRunningWithError:0];
}

void __49__WFTrelloGetItemsAction_updateBoards_onAccount___block_invoke_2()
{
  v0 = [MEMORY[0x277CCAB98] defaultCenter];
  [v0 postNotificationName:@"WFTrelloBoardParameterNeedsUpdateNotification" object:0];
}

- (void)runAsynchronouslyWithInput:(id)input
{
  v54[1] = *MEMORY[0x277D85DE8];
  resourceManager = [(WFTrelloGetItemsAction *)self resourceManager];
  v5 = [resourceManager resourceObjectsOfClass:objc_opt_class()];
  anyObject = [v5 anyObject];

  accounts = [anyObject accounts];
  firstObject = [accounts firstObject];

  if ([firstObject isValid])
  {
    v9 = [WFTrelloSessionManager alloc];
    token = [firstObject token];
    v11 = [(WFTrelloSessionManager *)v9 initWithConfiguration:0 token:token];

    v12 = [(WFTrelloGetItemsAction *)self parameterValueForKey:@"WFTrelloBoard" ofClass:objc_opt_class()];
    v13 = [(WFTrelloGetItemsAction *)self parameterValueForKey:@"WFTrelloItemType" ofClass:objc_opt_class()];
    if ([v13 isEqualToString:@"Boards"])
    {
      v44[0] = MEMORY[0x277D85DD0];
      v44[1] = 3221225472;
      v44[2] = __53__WFTrelloGetItemsAction_runAsynchronouslyWithInput___block_invoke;
      v44[3] = &unk_278C21150;
      v44[4] = self;
      v45 = firstObject;
      [(WFTrelloSessionManager *)v11 getOpenBoardsWithCompletionHandler:v44];
      v14 = v45;
LABEL_8:

      goto LABEL_9;
    }

    if ([v13 isEqualToString:@"Lists"])
    {
      if (v12)
      {
        v41[0] = MEMORY[0x277D85DD0];
        v41[1] = 3221225472;
        v41[2] = __53__WFTrelloGetItemsAction_runAsynchronouslyWithInput___block_invoke_2;
        v41[3] = &unk_278C221D0;
        v41[4] = self;
        v12 = v12;
        v42 = v12;
        v43 = firstObject;
        [(WFTrelloSessionManager *)v11 getListsForBoard:v12 completionHandler:v41];

        v14 = v42;
        goto LABEL_8;
      }

      v24 = MEMORY[0x277CCA9B8];
      v25 = *MEMORY[0x277D7CB30];
      v51 = *MEMORY[0x277CCA450];
      v26 = WFLocalizedString(@"You must select a board to retrieve lists from.");
      v52 = v26;
      v27 = MEMORY[0x277CBEAC0];
      v28 = &v52;
      v29 = &v51;
LABEL_18:
      v30 = [v27 dictionaryWithObjects:v28 forKeys:v29 count:1];
      v31 = [v24 errorWithDomain:v25 code:5 userInfo:v30];
      [(WFTrelloGetItemsAction *)self finishRunningWithError:v31];

      v12 = 0;
      goto LABEL_9;
    }

    if (![v13 isEqualToString:@"Cards"])
    {
      goto LABEL_9;
    }

    if (!v12)
    {
      v24 = MEMORY[0x277CCA9B8];
      v25 = *MEMORY[0x277D7CB30];
      v49 = *MEMORY[0x277CCA450];
      v26 = WFLocalizedString(@"You must select a board to retrieve cards from.");
      v50 = v26;
      v27 = MEMORY[0x277CBEAC0];
      v28 = &v50;
      v29 = &v49;
      goto LABEL_18;
    }

    v17 = [(WFTrelloGetItemsAction *)self parameterValueForKey:@"WFTrelloList" ofClass:objc_opt_class()];
    identifier = [v17 identifier];

    if (!identifier)
    {
      v38 = +[WFDiskCache workflowCache];
      v19 = MEMORY[0x277CBEB98];
      v48[0] = objc_opt_class();
      v48[1] = objc_opt_class();
      v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:2];
      v20 = [v19 setWithArray:v37];
      identifier2 = [v12 identifier];
      v36 = [v38 objectOfClasses:v20 forKeyComponents:{identifier2, @"WFTrelloLists", 0}];

      name = [v17 name];
      v23 = [v36 objectMatchingKey:@"name" value:name];

      v17 = v23;
    }

    if (v17)
    {
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = __53__WFTrelloGetItemsAction_runAsynchronouslyWithInput___block_invoke_3;
      v40[3] = &unk_278C22518;
      v40[4] = self;
      [(WFTrelloSessionManager *)v11 getCardsForList:v17 completionHandler:v40];
    }

    else
    {
      v39 = MEMORY[0x277CCA9B8];
      v32 = *MEMORY[0x277D7CB30];
      v46 = *MEMORY[0x277CCA450];
      v33 = WFLocalizedString(@"You must select a list to retrieve cards from.");
      v47 = v33;
      v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
      v35 = [v39 errorWithDomain:v32 code:5 userInfo:v34];
      [(WFTrelloGetItemsAction *)self finishRunningWithError:v35];
    }
  }

  else
  {
    v15 = MEMORY[0x277CCA9B8];
    v16 = *MEMORY[0x277D7CB30];
    v53 = *MEMORY[0x277CCA450];
    v11 = WFLocalizedString(@"Your Trello account couldn’t be verified. Please sign out and try again!");
    v54[0] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:&v53 count:1];
    v13 = [v15 errorWithDomain:v16 code:-1 userInfo:v12];
    [(WFTrelloGetItemsAction *)self finishRunningWithError:v13];
  }

LABEL_9:
}

void __53__WFTrelloGetItemsAction_runAsynchronouslyWithInput___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    [*(a1 + 32) finishRunningWithError:a3];
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        v10 = 0;
        do
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v13 + 1) + 8 * v10);
          v12 = [*(a1 + 32) output];
          [v12 addObject:v11];

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }

    [*(a1 + 32) updateBoards:v6 onAccount:*(a1 + 40)];
  }
}

void __53__WFTrelloGetItemsAction_runAsynchronouslyWithInput___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    [*(a1 + 32) finishRunningWithError:a3];
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        v10 = 0;
        do
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v13 + 1) + 8 * v10);
          v12 = [*(a1 + 32) output];
          [v12 addObject:v11];

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }

    [*(a1 + 32) updateListCache:v6 board:*(a1 + 40) account:*(a1 + 48)];
  }
}

void __53__WFTrelloGetItemsAction_runAsynchronouslyWithInput___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    v7 = *(a1 + 32);
    v8 = a3;
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v9 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        v12 = 0;
        do
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v6);
          }

          v13 = *(*(&v15 + 1) + 8 * v12);
          v14 = [*(a1 + 32) output];
          [v14 addObject:v13];

          ++v12;
        }

        while (v10 != v12);
        v10 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }

    v7 = *(a1 + 32);
    v8 = 0;
  }

  [v7 finishRunningWithError:v8];
}

- (void)initializeParameters
{
  v4.receiver = self;
  v4.super_class = WFTrelloGetItemsAction;
  [(WFTrelloGetItemsAction *)&v4 initializeParameters];
  v3 = [(WFTrelloGetItemsAction *)self parameterForKey:@"WFTrelloList"];
  [v3 setAction:self];
}

@end