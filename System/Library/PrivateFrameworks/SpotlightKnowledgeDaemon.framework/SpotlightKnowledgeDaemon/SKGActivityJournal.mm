@interface SKGActivityJournal
+ (id)sharedJournal;
+ (id)testJournal;
- (BOOL)_addEventWithTypeOffQueue:(unsigned __int8)queue params:(id)params;
- (BOOL)addEventWithType:(unsigned __int8)type params:(id)params;
- (SKGActivityJournal)initWithParentPath:(id)path fileName:(id)name;
- (id)_createEventData:(unsigned __int8)data params:(id)params;
- (void)addEvent:(unsigned __int8)event bundleID:(id)d identifiers:(id)identifiers;
- (void)addEventForCSSearchableItems:(unsigned __int8)items items:(id)a4;
- (void)addEventForItem:(unsigned __int8)item bundleID:(id)d identifier:(id)identifier;
- (void)clearJournalWithSize:(int64_t)size limit:(int64_t)limit;
- (void)dealloc;
- (void)logInit;
@end

@implementation SKGActivityJournal

+ (id)sharedJournal
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__SKGActivityJournal_sharedJournal__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedJournal_onceToken != -1)
  {
    dispatch_once(&sharedJournal_onceToken, block);
  }

  v2 = sharedJournal__sharedJournal;

  return v2;
}

void __35__SKGActivityJournal_sharedJournal__block_invoke(uint64_t a1)
{
  v4 = activityJournalRootPath();
  v2 = [objc_alloc(*(a1 + 32)) initWithParentPath:v4 fileName:@"SKGActivityJournal.log"];
  v3 = sharedJournal__sharedJournal;
  sharedJournal__sharedJournal = v2;
}

- (void)addEventForItem:(unsigned __int8)item bundleID:(id)d identifier:(id)identifier
{
  itemCopy = item;
  v15[2] = *MEMORY[0x277D85DE8];
  identifierCopy = @"<empty>";
  v14[0] = &unk_2846E7AD0;
  v14[1] = &unk_2846E7AE8;
  if (d)
  {
    dCopy = d;
  }

  else
  {
    dCopy = @"<empty>";
  }

  if (identifier)
  {
    identifierCopy = identifier;
  }

  v15[0] = dCopy;
  v15[1] = identifierCopy;
  v10 = MEMORY[0x277CBEAC0];
  identifierCopy2 = identifier;
  dCopy2 = d;
  v13 = [v10 dictionaryWithObjects:v15 forKeys:v14 count:2];

  [(SKGActivityJournal *)self addEventWithType:itemCopy params:v13];
}

- (void)addEventForCSSearchableItems:(unsigned __int8)items items:(id)a4
{
  itemsCopy = items;
  v20 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = v6;
  if (self->_isInternalInstall)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          bundleID = [v12 bundleID];
          uniqueIdentifier = [v12 uniqueIdentifier];
          [(SKGActivityJournal *)self addEventForItem:itemsCopy bundleID:bundleID identifier:uniqueIdentifier];
        }

        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }
  }
}

- (void)addEvent:(unsigned __int8)event bundleID:(id)d identifiers:(id)identifiers
{
  eventCopy = event;
  v20 = *MEMORY[0x277D85DE8];
  dCopy = d;
  identifiersCopy = identifiers;
  v10 = identifiersCopy;
  if (self->_isInternalInstall)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v11 = [identifiersCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v16;
      do
      {
        v14 = 0;
        do
        {
          if (*v16 != v13)
          {
            objc_enumerationMutation(v10);
          }

          [(SKGActivityJournal *)self addEventForItem:eventCopy bundleID:dCopy identifier:*(*(&v15 + 1) + 8 * v14++)];
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v12);
    }
  }
}

- (SKGActivityJournal)initWithParentPath:(id)path fileName:(id)name
{
  pathCopy = path;
  nameCopy = name;
  v8 = isAppleInternalInstall();
  self->_isInternalInstall = v8;
  if (v8)
  {
    v9 = dispatch_queue_attr_make_initially_inactive(0);
    v10 = dispatch_queue_create("com.apple.spotlightknowledged.SKGActivityJournal", v9);
    queue = self->_queue;
    self->_queue = v10;

    nameCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@", pathCopy, nameCopy];
    path = self->_path;
    self->_path = nameCopy;

    self->_fd = 0;
    v14 = dispatch_get_global_queue(21, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __50__SKGActivityJournal_initWithParentPath_fileName___block_invoke;
    block[3] = &unk_27893D928;
    v20 = pathCopy;
    selfCopy = self;
    v21 = selfCopy;
    v22 = nameCopy;
    dispatch_async(v14, block);

    v16 = v22;
    v17 = selfCopy;
  }

  return self;
}

void __50__SKGActivityJournal_initWithParentPath_fileName___block_invoke(id *a1)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = [v2 fileExistsAtPath:a1[4]];

  if ((v3 & 1) == 0)
  {
    v4 = [MEMORY[0x277CCAA00] defaultManager];
    v5 = a1[4];
    v17 = 0;
    v6 = [v4 createDirectoryAtPath:v5 withIntermediateDirectories:1 attributes:0 error:&v17];
    v7 = v17;

    if ((v6 & 1) == 0 && SKGLogGetCurrentLoggingLevel() >= 2)
    {
      v8 = SKGLogInit();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __50__SKGActivityJournal_initWithParentPath_fileName___block_invoke_cold_1(v7, a1 + 4, v8);
      }
    }
  }

  open([a1[4] fileSystemRepresentation], 0x100000);
  [a1[6] UTF8String];
  *(a1[5] + 3) = fd_create_protected();
  v9 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"SKGActivityJournal"];
  v10 = [v9 objectForKey:@"journalSize"];

  if (v10)
  {
    v11 = [v9 integerForKey:@"journalSize"];
    if (*(a1[5] + 3))
    {
      if (!v11)
      {
        goto LABEL_20;
      }

LABEL_14:
      v12 = fd_lseek();
      if (v12 > v11)
      {
        v13 = v12;
        [a1[5] clearJournalWithSize:v12 limit:v11];
        v14 = a1[5];
        v18 = &unk_2846E7B00;
        v15 = [MEMORY[0x277CCABB0] numberWithLongLong:v13];
        v19[0] = v15;
        v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
        [v14 _addEventWithTypeOffQueue:2 params:v16];

LABEL_19:
        goto LABEL_20;
      }

      goto LABEL_20;
    }
  }

  else if (*(a1[5] + 3))
  {
    v11 = 52428800;
    goto LABEL_14;
  }

  if (SKGLogGetCurrentLoggingLevel() >= 2)
  {
    v15 = SKGLogInit();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      __50__SKGActivityJournal_initWithParentPath_fileName___block_invoke_cold_2(a1 + 4, a1 + 6, v15);
    }

    goto LABEL_19;
  }

LABEL_20:
  [a1[5] logInit];
  dispatch_activate(*(a1[5] + 4));
}

- (void)dealloc
{
  fd = self->_fd;
  self->_fd = 0;
  if (fd)
  {
    fd_release();
  }

  v4.receiver = self;
  v4.super_class = SKGActivityJournal;
  [(SKGActivityJournal *)&v4 dealloc];
}

- (void)logInit
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = _CFCopySystemVersionDictionary();
  if (v3)
  {
    v4 = v3;
    Value = CFDictionaryGetValue(v3, *MEMORY[0x277CBEC70]);
    if (Value)
    {
      v25 = 0u;
      memset(v26, 0, sizeof(v26));
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      *buffer = 0u;
      CFStringGetCString(Value, buffer, 255, 0x8000100u);
      v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCString:buffer encoding:4];
    }

    else
    {
      v6 = &stru_2846CE8D8;
    }

    CFRelease(v4);
  }

  else
  {
    v6 = &stru_2846CE8D8;
  }

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{getpid(), &unk_2846E7B18}];
  v10[1] = &unk_2846E7B30;
  v11[0] = v7;
  v8 = @"<empty>";
  if (v6)
  {
    v8 = v6;
  }

  v11[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  [(SKGActivityJournal *)self _addEventWithTypeOffQueue:1 params:v9];
}

- (void)clearJournalWithSize:(int64_t)size limit:(int64_t)limit
{
  if (SKGLogGetCurrentLoggingLevel() >= 2)
  {
    v6 = SKGLogInit();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(SKGActivityJournal *)size clearJournalWithSize:limit limit:v6];
    }
  }

  fd_zero_truncate();
}

- (id)_createEventData:(unsigned __int8)data params:(id)params
{
  v36 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  paramsCopy = params;
  data = [MEMORY[0x277CBEB28] data];
  [data appendBytes:&dataCopy length:1];
  if (dataCopy >= 0x37u)
  {
    [SKGActivityJournal _createEventData:params:];
  }

  Current = CFAbsoluteTimeGetCurrent();
  [data appendBytes:&Current length:8];
  allKeys = [paramsCopy allKeys];
  v7 = [allKeys sortedArrayUsingSelector:sel_compare_];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v30;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v30 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v29 + 1) + 8 * i);
        unsignedIntValue = [v13 unsignedIntValue];
        DataTypeForParamType = getDataTypeForParamType(unsignedIntValue);
        if (unsignedIntValue >= 0x10)
        {
          [SKGActivityJournal _createEventData:params:];
        }

        v15 = DataTypeForParamType;
        if (DataTypeForParamType >= 6)
        {
          [SKGActivityJournal _createEventData:params:];
        }

        [data appendBytes:&unsignedIntValue length:4];
        if (v15 <= 2)
        {
          if (v15 != 1)
          {
            if (v15 != 2)
            {
              continue;
            }

            v18 = [paramsCopy objectForKeyedSubscript:v13];
            longLongValue = [v18 longLongValue];
LABEL_19:
            v22 = longLongValue;

            v27 = v22;
            v23 = data;
            v24 = 8;
LABEL_22:
            [v23 appendBytes:&v27 length:{v24, v27}];
            continue;
          }

          v20 = [paramsCopy objectForKeyedSubscript:v13];
          intValue = [v20 intValue];
LABEL_21:
          v25 = intValue;

          LODWORD(v27) = v25;
          v23 = data;
          v24 = 4;
          goto LABEL_22;
        }

        switch(v15)
        {
          case 3:
            v20 = [paramsCopy objectForKeyedSubscript:v13];
            intValue = [v20 unsignedIntValue];
            goto LABEL_21;
          case 4:
            v18 = [paramsCopy objectForKeyedSubscript:v13];
            longLongValue = [v18 unsignedLongLongValue];
            goto LABEL_19;
          case 5:
            v16 = [paramsCopy objectForKeyedSubscript:v13];
            LODWORD(v27) = [v16 lengthOfBytesUsingEncoding:4];
            [data appendBytes:&v27 length:4];
            uTF8String = [v16 UTF8String];
            [data appendBytes:uTF8String length:v27];

            break;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v10);
  }

  return data;
}

- (BOOL)addEventWithType:(unsigned __int8)type params:(id)params
{
  isInternalInstall = self->_isInternalInstall;
  if (isInternalInstall)
  {
    v6 = [(SKGActivityJournal *)self _createEventData:type params:params];
    v7 = crc32(0, [v6 bytes], objc_msgSend(v6, "length"));
    v8 = [v6 length];
    queue = self->_queue;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __46__SKGActivityJournal_addEventWithType_params___block_invoke;
    v12[3] = &unk_27893E460;
    v14 = -559038737;
    v15 = v8;
    v12[4] = self;
    v13 = v6;
    v16 = v7;
    v10 = v6;
    dispatch_async(queue, v12);
  }

  return isInternalInstall;
}

uint64_t __46__SKGActivityJournal_addEventWithType_params___block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 24);
  if (result)
  {
    fd_write();
    fd_write();
    [*(a1 + 40) bytes];
    [*(a1 + 40) length];
    fd_write();

    return fd_write();
  }

  return result;
}

- (BOOL)_addEventWithTypeOffQueue:(unsigned __int8)queue params:(id)params
{
  queueCopy = queue;
  paramsCopy = params;
  if (self->_isInternalInstall && self->_fd)
  {
    v7 = [(SKGActivityJournal *)self _createEventData:queueCopy params:paramsCopy];
    crc32(0, [v7 bytes], objc_msgSend(v7, "length"));
    [v7 length];
    fd_write();
    fd_write();
    [v7 bytes];
    [v7 length];
    fd_write();
    fd_write();

    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __34__SKGActivityJournal_flushUpdates__block_invoke(uint64_t a1, uint64_t a2)
{
  if (SKGLogGetCurrentLoggingLevel() >= 2)
  {
    v2 = SKGLogInit();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __34__SKGActivityJournal_flushUpdates__block_invoke_cold_1(v2);
    }
  }
}

+ (id)testJournal
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__SKGActivityJournal_Test__testJournal__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (testJournal_onceToken != -1)
  {
    dispatch_once(&testJournal_onceToken, block);
  }

  v2 = testJournal__testJournal;

  return v2;
}

void __39__SKGActivityJournal_Test__testJournal__block_invoke(uint64_t a1)
{
  v4 = NSTemporaryDirectory();
  v2 = [objc_alloc(*(a1 + 32)) initWithParentPath:v4 fileName:@"testActivityJournal.log"];
  v3 = testJournal__testJournal;
  testJournal__testJournal = v2;
}

void __50__SKGActivityJournal_initWithParentPath_fileName___block_invoke_cold_1(uint64_t a1, void *a2, NSObject *a3)
{
  *v3 = 138412546;
  *&v3[4] = a1;
  *&v3[12] = 2112;
  *&v3[14] = *a2;
  OUTLINED_FUNCTION_2_0(&dword_231B25000, a2, a3, "### SKGActivityJournal#initWithParentPath Error %@ creating %@", *v3, *&v3[8], *&v3[16], *MEMORY[0x277D85DE8]);
}

void __50__SKGActivityJournal_initWithParentPath_fileName___block_invoke_cold_2(id *a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = *__error();
  v7 = [*a1 stringByAppendingString:*a2];
  v8[0] = 67109378;
  v8[1] = v6;
  v9 = 2112;
  v10 = v7;
  _os_log_error_impl(&dword_231B25000, a3, OS_LOG_TYPE_ERROR, "### SKGActivityJournal#initWithParentPath error opening errno %d creating %@", v8, 0x12u);
}

- (void)clearJournalWithSize:(NSObject *)a3 limit:.cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  LODWORD(v3) = 134218240;
  *(&v3 + 4) = a1;
  WORD6(v3) = 2048;
  HIWORD(v3) = a2;
  OUTLINED_FUNCTION_2_0(&dword_231B25000, a2, a3, "kSKGActivityJournalReset: Journal size %lld is > %lld\n", v3, *(&v3 + 1));
}

@end