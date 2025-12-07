@interface TPSHeadEnrollmentValidation
- (void)validateWithCompletion:(id)completion;
@end

@implementation TPSHeadEnrollmentValidation

- (void)validateWithCompletion:(id)completion
{
  v4 = MEMORY[0x277D71778];
  completionCopy = completion;
  targeting = [v4 targeting];
  if (os_log_type_enabled(targeting, OS_LOG_TYPE_DEBUG))
  {
    [(TPSHeadEnrollmentValidation *)self validateWithCompletion:targeting];
  }

  (*(completionCopy + 2))(completionCopy, 0, 0);
}

- (void)validateWithCompletion:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = [a1 name];
  v5 = [a1 targetContext];
  v6 = 138413058;
  v7 = v4;
  v8 = 2112;
  v9 = v5;
  v10 = 1024;
  v11 = 0;
  v12 = 2112;
  v13 = 0;
  _os_log_debug_impl(&dword_232D6F000, a2, OS_LOG_TYPE_DEBUG, "%@ - targetContext: %@. Valid: %d. Error: %@", &v6, 0x26u);
}

@end