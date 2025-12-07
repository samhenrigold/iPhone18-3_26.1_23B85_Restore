@interface IMOrderingTools
- (id)currentJsonArray;
- (id)messageDictionariesFromItemsInChat:(id)chat withEventKey:(id)key;
- (void)printChangeInItemsToJSON:(id)n;
- (void)printChangeInItemsToJSONFromChat:(id)chat;
- (void)setUpJSONFileForChatGUID:(id)d;
- (void)startTrackingChat:(id)chat;
- (void)writeDataToJSONFile:(id)file;
@end

@implementation IMOrderingTools

- (void)startTrackingChat:(id)chat
{
  chatCopy = chat;
  mEMORY[0x1E69A60F0] = [MEMORY[0x1E69A60F0] sharedInstance];
  isInternalInstall = [mEMORY[0x1E69A60F0] isInternalInstall];

  if (isInternalInstall)
  {
    guid = [chatCopy guid];
    [(IMOrderingTools *)self setUpJSONFileForChatGUID:guid];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:self selector:sel_printChangeInItemsToJSON_ name:@"__kIMChatItemsDidChangeNotification" object:0];
  }

  else if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "---Tried to trace guids on a non internal install!!!!!-----", v10, 2u);
    }
  }
}

- (void)setUpJSONFileForChatGUID:(id)d
{
  v20 = *MEMORY[0x1E69E9840];
  dCopy = d;
  alphanumericCharacterSet = [MEMORY[0x1E696AB08] alphanumericCharacterSet];
  invertedSet = [alphanumericCharacterSet invertedSet];

  v7 = [dCopy componentsSeparatedByCharactersInSet:invertedSet];
  v8 = [v7 componentsJoinedByString:&stru_1F1B76F98];

  pathToDirectoryOfJSONFile = [(IMOrderingTools *)self pathToDirectoryOfJSONFile];
  v10 = MEMORY[0x1E696AEC0];
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v12 = [v10 stringWithFormat:@"ordering_output_%@_%lu.json", v8, v11];
  v13 = [pathToDirectoryOfJSONFile stringByAppendingPathComponent:v12];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  [defaultManager createFileAtPath:v13 contents:0 attributes:0];

  [(IMOrderingTools *)self setJsonFilePath:v13];
  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v17 = dCopy;
      v18 = 2112;
      v19 = v13;
      _os_log_impl(&dword_1A823F000, v15, OS_LOG_TYPE_INFO, "JSON File for chatGUID %@ can be found at this path: %@", buf, 0x16u);
    }
  }
}

- (void)printChangeInItemsToJSONFromChat:(id)chat
{
  v25 = *MEMORY[0x1E69E9840];
  chatCopy = chat;
  date = [MEMORY[0x1E695DF00] date];
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      guid = [chatCopy guid];
      v8 = MEMORY[0x1E696AD98];
      chatItems = [chatCopy chatItems];
      v10 = [v8 numberWithUnsignedInteger:{objc_msgSend(chatItems, "count")}];
      *buf = 138412802;
      v20 = guid;
      v21 = 2112;
      v22 = date;
      v23 = 2112;
      v24 = v10;
      _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "Print change items for chat %@ at time %@ current item count %@", buf, 0x20u);
    }
  }

  chatItems2 = [chatCopy chatItems];
  v12 = [chatItems2 count] == 0;

  if (!v12)
  {
    v13 = MEMORY[0x1E696AEC0];
    [date timeIntervalSinceReferenceDate];
    v15 = [v13 stringWithFormat:@"ItemsChangedEvent-%f", v14];
    v16 = [(IMOrderingTools *)self messageDictionariesFromItemsInChat:chatCopy withEventKey:v15];
    currentJsonArray = [(IMOrderingTools *)self currentJsonArray];
    [currentJsonArray addObject:v16];
    if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v20 = v15;
        v21 = 2112;
        v22 = v16;
        _os_log_impl(&dword_1A823F000, v18, OS_LOG_TYPE_INFO, "Appending event key %@ with items JSON Array %@", buf, 0x16u);
      }
    }

    [(IMOrderingTools *)self writeDataToJSONFile:currentJsonArray];
  }
}

- (void)printChangeInItemsToJSON:(id)n
{
  v9 = *MEMORY[0x1E69E9840];
  nCopy = n;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = 138412290;
      v8 = nCopy;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Print change in items %@", &v7, 0xCu);
    }
  }

  object = [nCopy object];
  [(IMOrderingTools *)self printChangeInItemsToJSONFromChat:object];
}

- (id)currentJsonArray
{
  jsonFilePath = [(IMOrderingTools *)self jsonFilePath];
  v3 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:jsonFilePath];
  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v3 options:0 error:0];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

LABEL_7:
    v4 = 0;
LABEL_8:
    array = [MEMORY[0x1E695DEC8] array];

    v4 = array;
    goto LABEL_9;
  }

  if (!v4 || ![v4 count])
  {
    goto LABEL_8;
  }

LABEL_9:
  v6 = [v4 mutableCopy];

  return v6;
}

- (void)writeDataToJSONFile:(id)file
{
  v10 = *MEMORY[0x1E69E9840];
  fileCopy = file;
  jsonFilePath = [(IMOrderingTools *)self jsonFilePath];
  if ([jsonFilePath length])
  {
    v6 = [MEMORY[0x1E696ACB0] dataWithJSONObject:fileCopy options:1 error:0];
    [v6 writeToFile:jsonFilePath atomically:1];
  }

  else if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = 138412290;
      v9 = jsonFilePath;
      _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "We didn't find a json file to persist for path %@", &v8, 0xCu);
    }
  }
}

- (id)messageDictionariesFromItemsInChat:(id)chat withEventKey:(id)key
{
  v5 = MEMORY[0x1E695DF70];
  keyCopy = key;
  chatCopy = chat;
  v8 = [v5 alloc];
  chatItems = [chatCopy chatItems];
  v10 = [v8 initWithCapacity:{objc_msgSend(chatItems, "count")}];

  [v10 addObject:keyCopy];
  chatItems2 = [chatCopy chatItems];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1A830E02C;
  v14[3] = &unk_1E78122B8;
  v12 = v10;
  v15 = v12;
  [chatItems2 __enumerateItemsWithOptions:1 usingBlock:v14];

  return v12;
}

@end