@interface SVXDialogTransformer
- (SVXDialogTransformer)initWithModeProvider:(id)provider;
- (id)transformAddDialogs:(id)dialogs;
- (id)transformAddViews:(id)views;
@end

@implementation SVXDialogTransformer

- (id)transformAddDialogs:(id)dialogs
{
  modeProvider = self->_modeProvider;
  dialogsCopy = dialogs;
  v6 = [(SVXDialogTransformer *)self transformAddDialogs:dialogsCopy forMode:[(MDModeProviding *)modeProvider currentMode]];

  return v6;
}

- (id)transformAddViews:(id)views
{
  v26 = *MEMORY[0x277D85DE8];
  viewsCopy = views;
  currentMode = [(MDModeProviding *)self->_modeProvider currentMode];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  views = [viewsCopy views];
  v7 = [views countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v7)
  {
    v8 = *v18;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(views);
        }

        if ([*(*(&v17 + 1) + 8 * i) svx_isResponseViewIdPresent])
        {
          LOBYTE(v7) = 1;
          goto LABEL_11;
        }
      }

      v7 = [views countByEnumeratingWithState:&v17 objects:v25 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  patternId = [viewsCopy patternId];

  if ((v7 & 1) != 0 || patternId)
  {
    v14 = viewsCopy;
  }

  else
  {
    v11 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
    {
      v12 = v11;
      responseMode = [viewsCopy responseMode];
      *buf = 136315394;
      v22 = "[SVXDialogTransformer transformAddViews:]";
      v23 = 2112;
      v24 = responseMode;
      _os_log_impl(&dword_2695B9000, v12, OS_LOG_TYPE_INFO, "%s patternId is nil and responseViewIdPresent is false. Calling on MDDialogTransformer for mode: %@", buf, 0x16u);
    }

    v14 = [(SVXDialogTransformer *)self transformAddViews:viewsCopy forMode:currentMode];
  }

  v15 = v14;

  return v15;
}

- (SVXDialogTransformer)initWithModeProvider:(id)provider
{
  providerCopy = provider;
  v9.receiver = self;
  v9.super_class = SVXDialogTransformer;
  v6 = [(SVXDialogTransformer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_modeProvider, provider);
  }

  return v7;
}

@end