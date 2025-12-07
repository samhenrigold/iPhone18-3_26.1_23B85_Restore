@interface IMAutomationBatchMessageOperations
- (id)beginRecordingMessagesToReplayDatabase:(id)database error:(id *)error;
- (id)sendMessagesfromReplayDatabase:(id)database userInfo:(id)info error:(id *)error;
- (id)stopRecordingDatabaseError:(id *)error;
@end

@implementation IMAutomationBatchMessageOperations

- (id)sendMessagesfromReplayDatabase:(id)database userInfo:(id)info error:(id *)error
{
  v16[1] = *MEMORY[0x1E69E9840];
  databaseCopy = database;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v8 = [defaultManager fileExistsAtPath:databaseCopy];

  if (v8)
  {
    v9 = +[IMDaemonController sharedController];
    remoteDaemon = [v9 remoteDaemon];
    [remoteDaemon replayMessagesFromDatabasePath:databaseCopy];
  }

  else
  {
    databaseCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Requested to replay a database that does not exist at path: %@", databaseCopy];
    v12 = databaseCopy;
    if (error)
    {
      v15 = databaseCopy;
      v16[0] = *MEMORY[0x1E696A578];
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
      *error = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"com.messages.automation" code:1 userInfo:v13];
    }
  }

  return 0;
}

- (id)beginRecordingMessagesToReplayDatabase:(id)database error:(id *)error
{
  databaseCopy = database;
  v5 = +[IMDaemonController sharedController];
  remoteDaemon = [v5 remoteDaemon];
  [remoteDaemon beginRecordingMessagesToReplayDatabase:databaseCopy];

  return 0;
}

- (id)stopRecordingDatabaseError:(id *)error
{
  v3 = +[IMDaemonController sharedController];
  remoteDaemon = [v3 remoteDaemon];
  [remoteDaemon stopRecordingMessagesReplayDatabase];

  return 0;
}

@end