@interface WBSChromeHistoryImporter
- (BOOL)_checkNotAtRootLevel;
- (BOOL)_isParsingVisit;
- (BOOL)_isParsingVisitArray;
- (BOOL)jsonReader:(id)reader scalarValue:(id)value;
- (BOOL)jsonReaderBeginArray:(id)array;
- (BOOL)jsonReaderBeginObject:(id)object;
- (BOOL)jsonReaderEndArray:(id)array;
- (BOOL)jsonReaderEndObject:(id)object;
- (BOOL)parseFileHandle:(id)handle error:(id *)error;
- (BOOL)parseURL:(id)l error:(id *)error;
- (WBSHistoryImporterDelegate)delegate;
- (id)_popKeyFromStackIfPossible;
@end

@implementation WBSChromeHistoryImporter

- (BOOL)parseURL:(id)l error:(id *)error
{
  v6 = [MEMORY[0x1E696AC00] safari_fileHandleWithURL:l options:0 createMode:0 error:error];
  if (v6)
  {
    v7 = [(WBSChromeHistoryImporter *)self parseFileHandle:v6 error:error];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)parseFileHandle:(id)handle error:(id *)error
{
  v20[1] = *MEMORY[0x1E69E9840];
  if (error)
  {
    *error = 0;
  }

  handleCopy = handle;
  v7 = objc_alloc_init(WBSJSONReader);
  [(WBSJSONReader *)v7 setDelegate:self];
  lastError = self->_lastError;
  self->_lastError = 0;

  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  stack = self->_stack;
  self->_stack = v9;

  self->_foundVisitArray = 0;
  v11 = [(WBSJSONReader *)v7 parseFileHandle:handleCopy error:error];

  v12 = self->_lastError;
  if (!self->_foundVisitArray && !v12)
  {
    v13 = MEMORY[0x1E696ABC0];
    v19 = *MEMORY[0x1E696A578];
    v20[0] = @"Could not find chrome history visit array in JSON file";
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    v15 = [v13 errorWithDomain:@"com.apple.Safari.Core.WBSChromeHistoryImporterErrorDomain" code:2 userInfo:v14];
    v16 = self->_lastError;
    self->_lastError = v15;

    v11 = 0;
    v12 = self->_lastError;
  }

  if (error && !*error)
  {
    v12 = v12;
    *error = v12;
  }

  v17 = v12 == 0;

  return v17 && v11;
}

- (BOOL)_checkNotAtRootLevel
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = [(NSMutableArray *)self->_stack count];
  if (!v3)
  {
    v4 = MEMORY[0x1E696ABC0];
    v9 = *MEMORY[0x1E696A578];
    v10[0] = @"Root node is expected to be a dictionary";
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    v6 = [v4 errorWithDomain:@"com.apple.Safari.Core.WBSChromeHistoryImporterErrorDomain" code:1 userInfo:v5];
    lastError = self->_lastError;
    self->_lastError = v6;
  }

  return v3 != 0;
}

- (BOOL)_isParsingVisitArray
{
  v5[3] = *MEMORY[0x1E69E9840];
  stack = self->_stack;
  v5[0] = &unk_1F308E1E0;
  v5[1] = @"Browser History";
  v5[2] = &unk_1F308E1F8;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:3];
  LOBYTE(stack) = [(NSMutableArray *)stack isEqual:v3];

  return stack;
}

- (BOOL)_isParsingVisit
{
  v5[4] = *MEMORY[0x1E69E9840];
  stack = self->_stack;
  v5[0] = &unk_1F308E1E0;
  v5[1] = @"Browser History";
  v5[2] = &unk_1F308E1F8;
  v5[3] = &unk_1F308E1E0;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:4];
  LOBYTE(stack) = [(NSMutableArray *)stack isEqual:v3];

  return stack;
}

- (id)_popKeyFromStackIfPossible
{
  lastObject = [(NSMutableArray *)self->_stack lastObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    lastObject2 = [(NSMutableArray *)self->_stack lastObject];
    [(NSMutableArray *)self->_stack removeLastObject];
  }

  else
  {
    lastObject2 = 0;
  }

  return lastObject2;
}

- (BOOL)jsonReader:(id)reader scalarValue:(id)value
{
  valueCopy = value;
  _checkNotAtRootLevel = [(WBSChromeHistoryImporter *)self _checkNotAtRootLevel];
  if (_checkNotAtRootLevel)
  {
    _popKeyFromStackIfPossible = [(WBSChromeHistoryImporter *)self _popKeyFromStackIfPossible];
    if ([_popKeyFromStackIfPossible isEqualToString:@"url"] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v9 = [MEMORY[0x1E695DFF8] URLWithString:valueCopy];
      url = self->_url;
      self->_url = v9;

      if (!self->_url)
      {
        v13 = WBS_LOG_CHANNEL_PREFIXImport(v11, v12);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          [WBSChromeHistoryImporter jsonReader:valueCopy scalarValue:v13];
        }
      }
    }

    else if ([_popKeyFromStackIfPossible isEqualToString:@"title"] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      objc_storeStrong(&self->_title, value);
    }

    else if ([_popKeyFromStackIfPossible isEqualToString:@"time_usec"])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        self->_visitTime = [valueCopy integerValue];
      }
    }
  }

  return _checkNotAtRootLevel;
}

- (BOOL)jsonReaderBeginArray:(id)array
{
  _checkNotAtRootLevel = [(WBSChromeHistoryImporter *)self _checkNotAtRootLevel];
  if (_checkNotAtRootLevel)
  {
    [(NSMutableArray *)self->_stack addObject:&unk_1F308E1F8];
    if ([(WBSChromeHistoryImporter *)self _isParsingVisitArray])
    {
      self->_foundVisitArray = 1;
    }
  }

  return _checkNotAtRootLevel;
}

- (BOOL)jsonReaderBeginObject:(id)object
{
  [(NSMutableArray *)self->_stack addObject:&unk_1F308E1E0];
  if ([(WBSChromeHistoryImporter *)self _isParsingVisit])
  {
    url = self->_url;
    self->_url = 0;

    self->_visitTime = 0;
  }

  return 1;
}

- (BOOL)jsonReaderEndArray:(id)array
{
  [(NSMutableArray *)self->_stack removeLastObject];
  _popKeyFromStackIfPossible = [(WBSChromeHistoryImporter *)self _popKeyFromStackIfPossible];
  return 1;
}

- (BOOL)jsonReaderEndObject:(id)object
{
  objectCopy = object;
  if ([(WBSChromeHistoryImporter *)self _isParsingVisit])
  {
    v5 = objc_autoreleasePoolPush();
    v7 = v5;
    if (!self->_url)
    {
      v8 = WBS_LOG_CHANNEL_PREFIXImport(v5, v6);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [WBSChromeHistoryImporter jsonReaderEndObject:v8];
      }
    }

    visitTime = self->_visitTime;
    if (!visitTime)
    {
      v10 = WBS_LOG_CHANNEL_PREFIXImport(0, v6);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [WBSChromeHistoryImporter jsonReaderEndObject:v10];
      }

      visitTime = self->_visitTime;
    }

    v11 = WBSUnixTimeInMicrosecondsToTimeInterval(visitTime);
    if (self->_url)
    {
      if (self->_visitTime)
      {
        v12 = v11;
        if (v11 >= self->_ageLimit)
        {
          WeakRetained = objc_loadWeakRetained(&self->_delegate);
          absoluteString = [(NSURL *)self->_url absoluteString];
          [WeakRetained addVisitWithURLString:absoluteString visitTime:self->_title title:1 loadSuccessful:0 httpGet:0 redirectSourceURLString:0 redirectSourceVisitTime:v12 redirectDestinationURLString:0.0 redirectDestinationVisitTime:0.0 visitCount:1];
        }
      }
    }

    objc_autoreleasePoolPop(v7);
  }

  [(NSMutableArray *)self->_stack removeLastObject];
  _popKeyFromStackIfPossible = [(WBSChromeHistoryImporter *)self _popKeyFromStackIfPossible];

  return 1;
}

- (WBSHistoryImporterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)jsonReader:(uint64_t)a1 scalarValue:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138739971;
  v3 = a1;
  _os_log_error_impl(&dword_1B8447000, a2, OS_LOG_TYPE_ERROR, "Invalid URL: %{sensitive}@", &v2, 0xCu);
}

@end