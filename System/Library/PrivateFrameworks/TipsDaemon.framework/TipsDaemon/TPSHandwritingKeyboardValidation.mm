@interface TPSHandwritingKeyboardValidation
- (void)validateWithCompletion:(id)completion;
@end

@implementation TPSHandwritingKeyboardValidation

- (void)validateWithCompletion:(id)completion
{
  v20 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = +[TPSKeyboardUtilities installedInputModes];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = v5;
    default = [v6 countByEnumeratingWithState:&v13 objects:v19 count:16];
    if (default)
    {
      v8 = *v14;
      while (2)
      {
        for (i = 0; i != default; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v13 + 1) + 8 * i);
          if ([TPSKeyboardUtilities isHandwritingEnabledForInputMode:v10, v13])
          {
            default = [MEMORY[0x277D71778] default];
            if (os_log_type_enabled(default, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v18 = v10;
              _os_log_impl(&dword_232D6F000, default, OS_LOG_TYPE_DEFAULT, "Handwriting keyboard enabled: %@", buf, 0xCu);
            }

            LODWORD(default) = 1;
            goto LABEL_15;
          }
        }

        default = [v6 countByEnumeratingWithState:&v13 objects:v19 count:16];
        if (default)
        {
          continue;
        }

        break;
      }
    }

LABEL_15:
  }

  else
  {
    LODWORD(default) = 0;
  }

  v11 = default ^ [(TPSTargetingValidation *)self BOOLValue];
  targeting = [MEMORY[0x277D71778] targeting];
  if (os_log_type_enabled(targeting, OS_LOG_TYPE_DEBUG))
  {
    [(TPSDictationLanguageValidation *)self validateWithCompletion:targeting];
  }

  (*(completionCopy + 2))(completionCopy, v11 ^ 1u, 0);
}

@end