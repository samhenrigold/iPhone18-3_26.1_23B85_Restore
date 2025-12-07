@interface SPCorrectionProxy
+ (id)dateFormatter;
+ (id)dateFromFileURL:(id)l;
+ (id)inputFileURLForCurrentTime;
+ (id)inputFilesURL;
+ (id)inputFilesURLForUser:(id)user;
+ (id)sharedHandler;
- (BOOL)dateIsExpired:(id)expired;
- (SPCorrectionProxy)init;
- (void)deleteExpiredInputFiles;
- (void)processCorrectionsWithHandle:(id)handle;
- (void)updateWithFileHandle:(id)handle;
@end

@implementation SPCorrectionProxy

+ (id)sharedHandler
{
  if (sharedHandler_onceToken != -1)
  {
    +[SPCorrectionProxy sharedHandler];
  }

  v3 = sharedHandler_handler;

  return v3;
}

uint64_t __34__SPCorrectionProxy_sharedHandler__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedHandler_handler;
  sharedHandler_handler = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)inputFileURLForCurrentTime
{
  inputFilesURL = [objc_opt_class() inputFilesURL];
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];

  v5 = MEMORY[0x1E696AEC0];
  dateFormatter = [objc_opt_class() dateFormatter];
  date = [MEMORY[0x1E695DF00] date];
  v8 = [dateFormatter stringFromDate:date];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  v11 = [v5 stringWithFormat:@"%@_%@_%@", bundleIdentifier, v8, uUIDString];

  v12 = [inputFilesURL URLByAppendingPathComponent:v11];

  return v12;
}

+ (id)inputFilesURLForUser:(id)user
{
  v3 = NSHomeDirectoryForUser(user);
  v4 = [v3 stringByAppendingString:@"/Library/Spotlight/CorrectionInputFiles"];

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__SPCorrectionProxy_inputFilesURLForUser___block_invoke;
  block[3] = &unk_1E82F8F28;
  v10 = v4;
  v5 = inputFilesURLForUser__onceToken;
  v6 = v4;
  if (v5 != -1)
  {
    dispatch_once(&inputFilesURLForUser__onceToken, block);
  }

  v7 = [MEMORY[0x1E695DFF8] fileURLWithPath:v6 isDirectory:1 relativeToURL:0];

  return v7;
}

void __42__SPCorrectionProxy_inputFilesURLForUser___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  if (([v2 fileExistsAtPath:*(a1 + 32)] & 1) == 0)
  {
    [v2 createDirectoryAtPath:*(a1 + 32) withIntermediateDirectories:1 attributes:0 error:0];
  }
}

+ (id)inputFilesURL
{
  v2 = objc_opt_class();
  v3 = NSUserName();
  v4 = [v2 inputFilesURLForUser:v3];

  return v4;
}

+ (id)dateFormatter
{
  v2 = objc_opt_new();
  [v2 setDateFormat:@"yyyy-MM-dd"];
  v3 = [MEMORY[0x1E695DFE8] timeZoneWithAbbreviation:@"GMT"];
  [v2 setTimeZone:v3];

  return v2;
}

+ (id)dateFromFileURL:(id)l
{
  lastPathComponent = [l lastPathComponent];
  v4 = [lastPathComponent componentsSeparatedByString:@"_"];
  v5 = v4;
  if (v4 && [v4 count] == 3)
  {
    v6 = [v5 objectAtIndex:1];
    dateFormatter = [objc_opt_class() dateFormatter];
    v8 = [dateFormatter dateFromString:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (SPCorrectionProxy)init
{
  v5.receiver = self;
  v5.super_class = SPCorrectionProxy;
  v2 = [(SPCorrectionProxy *)&v5 init];
  if (v2)
  {
    inputFilesURL = [objc_opt_class() inputFilesURL];
    [(SPCorrectionProxy *)v2 setInputFilesURL:inputFilesURL];
  }

  return v2;
}

- (BOOL)dateIsExpired:(id)expired
{
  v3 = MEMORY[0x1E695DF00];
  expiredCopy = expired;
  v5 = [v3 dateWithTimeIntervalSinceNow:-172800.0];
  v6 = [expiredCopy earlierDate:v5];

  return v6 == expiredCopy;
}

- (void)deleteExpiredInputFiles
{
  v23[1] = *MEMORY[0x1E69E9840];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  inputFilesURL = [(SPCorrectionProxy *)self inputFilesURL];
  v23[0] = *MEMORY[0x1E695EBE8];
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
  v21 = 0;
  v6 = [defaultManager contentsOfDirectoryAtURL:inputFilesURL includingPropertiesForKeys:v5 options:0 error:&v21];
  v7 = v21;

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      v12 = 0;
      do
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * v12);
        v14 = [objc_opt_class() dateFromFileURL:v13];
        if ([(SPCorrectionProxy *)self dateIsExpired:v14])
        {
          v16 = v7;
          [defaultManager removeItemAtURL:v13 error:&v16];
          v15 = v16;

          v7 = v15;
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v10);
  }
}

- (void)updateWithFileHandle:(id)handle
{
  handleCopy = handle;
  selfCopy = self;
  v6 = objc_sync_enter(selfCopy);
  v7 = SPLogForSPLogCategoryDefault(v6);
  v8 = gSPLogInfoAsDefault;
  if (os_log_type_enabled(v7, ((gSPLogInfoAsDefault & 1) == 0)))
  {
    *buf = 0;
    _os_log_impl(&dword_1C81BF000, v7, ((v8 & 1) == 0), "Processing corrections begin", buf, 2u);
  }

  v9 = SPLogForSPLogCategoryDefault([(SPCorrectionProxy *)selfCopy processCorrectionsWithHandle:handleCopy]);
  v10 = gSPLogInfoAsDefault;
  if (os_log_type_enabled(v9, ((gSPLogInfoAsDefault & 1) == 0)))
  {
    *v11 = 0;
    _os_log_impl(&dword_1C81BF000, v9, ((v10 & 1) == 0), "Processing corrections complete", v11, 2u);
  }

  objc_sync_exit(selfCopy);
}

- (void)processCorrectionsWithHandle:(id)handle
{
  v24 = *MEMORY[0x1E69E9840];
  v21 = 0;
  v4 = [handle readDataToEndOfFileAndReturnError:&v21];
  v5 = v21;
  v6 = v5;
  if (v4)
  {
    if (v5)
    {
      v7 = SPLogForSPLogCategoryDefault(v5);
      v8 = gSPLogInfoAsDefault;
      if (os_log_type_enabled(v7, ((gSPLogInfoAsDefault & 1) == 0)))
      {
        v9 = [v6 debugDescription];
        uTF8String = [v9 UTF8String];
        *buf = 136315138;
        v23 = uTF8String;
        _os_log_impl(&dword_1C81BF000, v7, ((v8 & 1) == 0), "inputFile write error: %s\n", buf, 0xCu);
      }

      inputFileURLForCurrentTime = 0;
      goto LABEL_9;
    }

    inputFileURLForCurrentTime = [objc_opt_class() inputFileURLForCurrentTime];
    if ([v4 writeToURL:inputFileURLForCurrentTime atomically:1])
    {
      v12 = dispatch_group_create();
      dispatch_group_enter(v12);
      v16 = MEMORY[0x1E69E9820];
      v17 = 3221225472;
      v18 = __50__SPCorrectionProxy_processCorrectionsWithHandle___block_invoke;
      v19 = &unk_1E82F95A8;
      v20 = v12;
      v7 = v12;
      v13 = MEMORY[0x1CCA71310](&v16);
      defaultSearchableIndex = [MEMORY[0x1E6964E78] defaultSearchableIndex];
      path = [inputFileURLForCurrentTime path];
      [defaultSearchableIndex updateCorrectionsWithFilePath:path completionHandler:v13];
      dispatch_group_wait(v7, 0xFFFFFFFFFFFFFFFFLL);

LABEL_9:
    }
  }

  else
  {
    inputFileURLForCurrentTime = 0;
  }

  [(SPCorrectionProxy *)self deleteExpiredInputFiles];
}

void __50__SPCorrectionProxy_processCorrectionsWithHandle___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = SPLogForSPLogCategoryDefault(v3);
    v6 = gSPLogInfoAsDefault;
    if (os_log_type_enabled(v5, ((gSPLogInfoAsDefault & 1) == 0)))
    {
      v7 = [v4 debugDescription];
      v8 = 136315138;
      v9 = [v7 UTF8String];
      _os_log_impl(&dword_1C81BF000, v5, ((v6 & 1) == 0), "updateCompletionHandler error: %s\n", &v8, 0xCu);
    }
  }

  dispatch_group_leave(*(a1 + 32));
}

@end