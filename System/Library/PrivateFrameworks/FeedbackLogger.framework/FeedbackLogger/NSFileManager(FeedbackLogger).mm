@interface NSFileManager(FeedbackLogger)
- (id)feedbackLoggerDirectoryURL;
- (id)urlForStoreWithId:()FeedbackLogger;
@end

@implementation NSFileManager(FeedbackLogger)

- (id)urlForStoreWithId:()FeedbackLogger
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  feedbackLoggerDirectoryURL = [self feedbackLoggerDirectoryURL];
  v6 = [feedbackLoggerDirectoryURL URLByAppendingPathComponent:v4 isDirectory:1];

  if (v6)
  {
    v10 = *MEMORY[0x277CCA180];
    v11[0] = &unk_285E1AE98;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    [self createDirectoryAtURL:v6 withIntermediateDirectories:1 attributes:v7 error:0];
  }

  v8 = [v6 URLByAppendingPathComponent:@"data.sqlite" isDirectory:0];

  return v8;
}

- (id)feedbackLoggerDirectoryURL
{
  v1 = [self URLForDirectory:13 inDomain:1 appropriateForURL:0 create:0 error:0];
  v2 = [v1 URLByAppendingPathComponent:@"com.apple.feedbacklogger" isDirectory:1];

  return v2;
}

@end