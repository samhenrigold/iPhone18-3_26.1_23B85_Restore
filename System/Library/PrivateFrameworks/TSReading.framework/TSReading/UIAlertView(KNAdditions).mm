@interface UIAlertView(KNAdditions)
- (uint64_t)showWithCompletionHandler:()KNAdditions;
- (void)initWithError:()KNAdditions;
@end

@implementation UIAlertView(KNAdditions)

- (void)initWithError:()KNAdditions
{
  v20 = *MEMORY[0x277D85DE8];
  localizedRecoverySuggestion = [a3 localizedRecoverySuggestion];
  if (!localizedRecoverySuggestion)
  {
    localizedRecoverySuggestion = [a3 localizedFailureReason];
  }

  v6 = [self initWithTitle:objc_msgSend(a3 message:"localizedDescription") delegate:localizedRecoverySuggestion cancelButtonTitle:0 otherButtonTitles:{0, 0}];
  localizedRecoveryOptions = [a3 localizedRecoveryOptions];
  if (localizedRecoveryOptions && (v9 = localizedRecoveryOptions, (localizedRecoveryOptions = [localizedRecoveryOptions count]) != 0))
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v16;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [v6 addButtonWithTitle:*(*(&v15 + 1) + 8 * i)];
        }

        v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v11);
    }
  }

  else
  {
    [v6 addButtonWithTitle:{objc_msgSend(TSKBundle(localizedRecoveryOptions, v8), "localizedStringForKey:value:table:", @"OK", &stru_287D36338, @"TSKit"}];
  }

  return v6;
}

- (uint64_t)showWithCompletionHandler:()KNAdditions
{
  v5 = objc_alloc_init(TSKUIAlertViewCompletionHandlerDelegate);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__UIAlertView_KNAdditions__showWithCompletionHandler___block_invoke;
  v7[3] = &unk_279D47BF0;
  v7[5] = v5;
  v7[6] = a3;
  v7[4] = self;
  [(TSKUIAlertViewCompletionHandlerDelegate *)v5 setCompletionHandler:v7];
  [self setDelegate:v5];
  return [self show];
}

@end