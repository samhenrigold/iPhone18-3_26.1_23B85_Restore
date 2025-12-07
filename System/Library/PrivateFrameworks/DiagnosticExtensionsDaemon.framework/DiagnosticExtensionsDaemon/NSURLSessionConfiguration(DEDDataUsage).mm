@interface NSURLSessionConfiguration(DEDDataUsage)
- (void)setUpDataUsageWithConfiguration:()DEDDataUsage;
@end

@implementation NSURLSessionConfiguration(DEDDataUsage)

- (void)setUpDataUsageWithConfiguration:()DEDDataUsage
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[DEDConfiguration sharedInstance];
  identifier = [v5 identifier];

  finishingMove = [v4 finishingMove];
  if (finishingMove == 1)
  {
    v8 = @"com.apple.appleseed.FeedbackAssistant";
    goto LABEL_6;
  }

  if (finishingMove != 2)
  {
    v9 = +[DEDUtils sharedLog];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(NSURLSessionConfiguration(DEDDataUsage) *)v4 setUpDataUsageWithConfiguration:v9];
    }

LABEL_10:
    if (!identifier)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (!+[DEDUtils isInternalInstall])
  {
    goto LABEL_10;
  }

  v8 = @"com.apple.TapToRadar";
LABEL_6:

  identifier = v8;
LABEL_11:
  [self set_sourceApplicationBundleIdentifier:identifier];
LABEL_12:
  v10 = +[DEDUtils sharedLog];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = 138412290;
    v12 = identifier;
    _os_log_impl(&dword_248AD7000, v10, OS_LOG_TYPE_INFO, "Bundle identifier responsible data usage: [%@]", &v11, 0xCu);
  }
}

- (void)setUpDataUsageWithConfiguration:()DEDDataUsage .cold.1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 finishingMove];
  if (v3 > 4)
  {
    v4 = "Unknown";
  }

  else
  {
    v4 = off_278F65C58[v3];
  }

  v5 = 136446210;
  v6 = v4;
  _os_log_error_impl(&dword_248AD7000, a2, OS_LOG_TYPE_ERROR, "Cannot configure data attribution for [%{public}s]", &v5, 0xCu);
}

@end