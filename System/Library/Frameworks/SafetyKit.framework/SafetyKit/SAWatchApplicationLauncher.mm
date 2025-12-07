@interface SAWatchApplicationLauncher
- (SAWatchApplicationLauncher)init;
- (void)openApplicationInBackgroundWithBundleId:(id)id withReason:(int64_t)reason completion:(id)completion;
@end

@implementation SAWatchApplicationLauncher

- (SAWatchApplicationLauncher)init
{
  v3.receiver = self;
  v3.super_class = SAWatchApplicationLauncher;
  return [(SAWatchApplicationLauncher *)&v3 init];
}

- (void)openApplicationInBackgroundWithBundleId:(id)id withReason:(int64_t)reason completion:(id)completion
{
  idCopy = id;
  completionCopy = completion;
  v8 = sa_default_log(completionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [SAWatchApplicationLauncher openApplicationInBackgroundWithBundleId:idCopy withReason:v8 completion:?];
  }

  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

- (void)openApplicationInBackgroundWithBundleId:(uint64_t)a1 withReason:(NSObject *)a2 completion:.cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "[SAWatchApplicationLauncher openApplicationInBackgroundWithBundleId:withReason:completion:]";
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&dword_23AA4D000, a2, OS_LOG_TYPE_ERROR, "%s - attempted to use watch launcher on non watch platform, bundleId: %@", &v2, 0x16u);
}

@end