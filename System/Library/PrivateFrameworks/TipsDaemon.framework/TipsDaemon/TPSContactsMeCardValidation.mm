@interface TPSContactsMeCardValidation
- (void)validateWithCompletion:(id)completion;
@end

@implementation TPSContactsMeCardValidation

- (void)validateWithCompletion:(id)completion
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D716E8];
  completionCopy = completion;
  if ([v4 isCellularChinaSKUDevice])
  {
    targeting = [MEMORY[0x277D71778] targeting];
    if (os_log_type_enabled(targeting, OS_LOG_TYPE_DEBUG))
    {
      [(TPSContactsMeCardValidation *)self validateWithCompletion:targeting];
    }

    v7 = 0;
    v8 = 0;
  }

  else
  {
    targeting = objc_alloc_init(MEMORY[0x277CBDAB8]);
    v13[0] = *MEMORY[0x277CBD018];
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
    v12 = 0;
    v10 = [targeting _crossPlatformUnifiedMeContactWithKeysToFetch:v9 error:&v12];
    v7 = v12;

    v8 = (v10 == 0) ^ [(TPSTargetingValidation *)self BOOLValue];
  }

  targeting2 = [MEMORY[0x277D71778] targeting];
  if (os_log_type_enabled(targeting2, OS_LOG_TYPE_DEBUG))
  {
    [(TPSDictationLanguageValidation *)self validateWithCompletion:v8, targeting2];
  }

  completionCopy[2](completionCopy, v8, v7);
}

- (void)validateWithCompletion:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 name];
  v4 = 138412290;
  v5 = v3;
  _os_log_debug_impl(&dword_232D6F000, a2, OS_LOG_TYPE_DEBUG, "Skipping %@ validation", &v4, 0xCu);
}

@end