@interface SCROBrailleUIApp
+ (BOOL)isHidingViews;
+ (id)allApps;
+ (id)appForView:(id)view;
+ (void)closeAllApps;
+ (void)closeAllAppsExceptTheLowerMostView;
+ (void)initialize;
+ (void)showViews;
- (SCROBrailleUIApp)initWithDelegate:(id)delegate;
- (SCROBrailleUIAppDelegate)delegate;
- (void)_requestRefreshBraille;
- (void)close;
- (void)handleAction:(id)action;
- (void)open;
@end

@implementation SCROBrailleUIApp

+ (void)initialize
{
  if (initialize_onceToken != -1)
  {
    +[SCROBrailleUIApp initialize];
  }
}

uint64_t __30__SCROBrailleUIApp_initialize__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_new();
  _allApps = v2;

  return MEMORY[0x2821F96F8](v2);
}

+ (BOOL)isHidingViews
{
  v2 = +[SCROBrailleUIDisplayManager sharedManager];
  isHidingViews = [v2 isHidingViews];

  return isHidingViews;
}

+ (void)showViews
{
  v2 = +[SCROBrailleUIDisplayManager sharedManager];
  [v2 showViews];
}

+ (id)allApps
{
  v2 = [_allApps copy];

  return v2;
}

+ (void)closeAllApps
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  allApps = [self allApps];
  v3 = [allApps countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(allApps);
        }

        [*(*(&v7 + 1) + 8 * v6++) close];
      }

      while (v4 != v6);
      v4 = [allApps countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

+ (void)closeAllAppsExceptTheLowerMostView
{
  allApps = [self allApps];
  v2 = [allApps count];
  if (v2)
  {
    if ([allApps count] != 1)
    {
      v3 = 0;
      do
      {
        v4 = [allApps objectAtIndexedSubscript:v3];
        [v4 close];

        ++v3;
      }

      while (v3 < [allApps count] - 1);
    }

    lastObject = [allApps lastObject];
    views = [lastObject views];
    if ([views count] != 1)
    {
      v7 = 0;
      do
      {
        v8 = [SCROBrailleUIAction alloc];
        v9 = [views objectAtIndexedSubscript:v7];
        v10 = [(SCROBrailleUIAction *)v8 initWithType:2 originator:v9];

        [lastObject handleAction:v10];
        ++v7;
      }

      while (v7 < [views count] - 1);
    }
  }

  MEMORY[0x2821F96F8](v2);
}

+ (id)appForView:(id)view
{
  v17 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = _allApps;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        views = [v8 views];
        v10 = [views containsObject:viewCopy];

        if (v10)
        {
          v5 = v8;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v5;
}

- (SCROBrailleUIApp)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = SCROBrailleUIApp;
  v5 = [(SCROBrailleUIApp *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
  }

  return v6;
}

- (void)open
{
  if ([_allApps containsObject:self])
  {
    [_allApps removeObject:self];
  }

  v3 = _allApps;

  [v3 insertObject:self atIndex:0];
}

- (void)close
{
  if ([_allApps containsObject:self])
  {
    [_allApps removeObject:self];
  }

  if (![_allApps count])
  {

    [(SCROBrailleUIApp *)self _requestRefreshBraille];
  }
}

- (void)handleAction:(id)action
{
  v19 = *MEMORY[0x277D85DE8];
  type = [action type];
  if (type == 3)
  {
    v5 = +[SCROBrailleUISettingsManager sharedInstance];
    shouldReopenViewsWhenRestart = [v5 shouldReopenViewsWhenRestart];

    if (shouldReopenViewsWhenRestart)
    {
      v7 = +[SCROBrailleUIDisplayManager sharedManager];
      [v7 hideViews];

      [(SCROBrailleUIApp *)self _requestRefreshBraille];
      delegate = [(SCROBrailleUIApp *)self delegate];
      [delegate handleDidBrailleUIEnd];
    }

    else
    {
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v8 = [_allApps copy];
      v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v15;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v15 != v11)
            {
              objc_enumerationMutation(v8);
            }

            [*(*(&v14 + 1) + 8 * i) close];
          }

          v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
        }

        while (v10);
      }
    }
  }

  else if (type == 2)
  {

    [(SCROBrailleUIApp *)self close];
  }
}

- (void)_requestRefreshBraille
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = kSCROBrailleUIRequestTypeKey[0];
  v6[0] = &unk_287651BD8;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  delegate = [(SCROBrailleUIApp *)self delegate];
  [delegate handleBrailleUIRequest:v3];
}

- (SCROBrailleUIAppDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end