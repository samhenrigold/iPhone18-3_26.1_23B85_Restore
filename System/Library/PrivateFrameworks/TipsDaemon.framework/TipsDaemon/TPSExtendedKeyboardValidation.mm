@interface TPSExtendedKeyboardValidation
- (void)validateWithCompletion:(id)completion;
@end

@implementation TPSExtendedKeyboardValidation

- (void)validateWithCompletion:(id)completion
{
  v18 = *MEMORY[0x277D85DE8];
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
    targeting = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (targeting)
    {
      v8 = *v14;
      while (2)
      {
        for (i = 0; i != targeting; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v13 + 1) + 8 * i);
          if ([TPSKeyboardUtilities isExtendedSuggestionSupportedForInputMode:v10, v13])
          {
            targeting = [MEMORY[0x277D71778] targeting];
            if (os_log_type_enabled(targeting, OS_LOG_TYPE_DEBUG))
            {
              [(TPSExtendedKeyboardValidation *)v10 validateWithCompletion:targeting];
            }

            LODWORD(targeting) = 1;
            goto LABEL_15;
          }
        }

        targeting = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (targeting)
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
    LODWORD(targeting) = 0;
  }

  v11 = targeting ^ [(TPSTargetingValidation *)self BOOLValue];
  targeting2 = [MEMORY[0x277D71778] targeting];
  if (os_log_type_enabled(targeting2, OS_LOG_TYPE_DEBUG))
  {
    [(TPSDictationLanguageValidation *)self validateWithCompletion:targeting2];
  }

  (*(completionCopy + 2))(completionCopy, v11 ^ 1u, 0);
}

- (void)validateWithCompletion:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_232D6F000, a2, OS_LOG_TYPE_DEBUG, "Found keyboard with extended suggestion support: %@", &v2, 0xCu);
}

@end