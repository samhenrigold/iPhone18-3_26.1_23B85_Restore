@interface WBSHistoryImporter
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

@implementation WBSHistoryImporter

- (BOOL)parseURL:(id)l error:(id *)error
{
  v6 = [MEMORY[0x1E696AC00] safari_fileHandleWithURL:l options:0 createMode:0 error:error];
  if (v6)
  {
    v7 = [(WBSHistoryImporter *)self parseFileHandle:v6 error:error];
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
    v20[0] = @"Could not find history visit array in JSON file";
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    v15 = [v13 errorWithDomain:@"com.apple.Safari.Core.WBSHistoryImporterErrorDomain" code:2 userInfo:v14];
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
    v6 = [v4 errorWithDomain:@"com.apple.Safari.Core.WBSHistoryImporterErrorDomain" code:1 userInfo:v5];
    lastError = self->_lastError;
    self->_lastError = v6;
  }

  return v3 != 0;
}

- (BOOL)_isParsingVisitArray
{
  v5[3] = *MEMORY[0x1E69E9840];
  stack = self->_stack;
  v5[0] = &unk_1F308E450;
  v5[1] = @"history";
  v5[2] = &unk_1F308E468;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:3];
  LOBYTE(stack) = [(NSMutableArray *)stack isEqual:v3];

  return stack;
}

- (BOOL)_isParsingVisit
{
  v5[4] = *MEMORY[0x1E69E9840];
  stack = self->_stack;
  v5[0] = &unk_1F308E450;
  v5[1] = @"history";
  v5[2] = &unk_1F308E468;
  v5[3] = &unk_1F308E450;
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
  _checkNotAtRootLevel = [(WBSHistoryImporter *)self _checkNotAtRootLevel];
  if (_checkNotAtRootLevel)
  {
    _popKeyFromStackIfPossible = [(WBSHistoryImporter *)self _popKeyFromStackIfPossible];
    if ([_popKeyFromStackIfPossible isEqualToString:@"url"])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = [MEMORY[0x1E695DFF8] URLWithString:valueCopy];
        url = self->_url;
        self->_url = v9;

        if (self->_url)
        {
          goto LABEL_38;
        }

        v13 = WBS_LOG_CHANNEL_PREFIXImport(v11, v12);
        if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_38;
        }

        goto LABEL_31;
      }
    }

    if ([_popKeyFromStackIfPossible isEqualToString:@"title"])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeStrong(&self->_title, value);
        goto LABEL_38;
      }
    }

    if ([_popKeyFromStackIfPossible isEqualToString:@"time_usec"])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        self->_visitTime = [valueCopy integerValue];
        goto LABEL_38;
      }
    }

    if ([_popKeyFromStackIfPossible isEqualToString:@"latest_visit_was_load_failure"])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        self->_loadFailure = [valueCopy BOOLValue];
        goto LABEL_38;
      }
    }

    if ([_popKeyFromStackIfPossible isEqualToString:@"latest_visit_was_http_get"])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        self->_httpGet = [valueCopy BOOLValue];
        goto LABEL_38;
      }
    }

    if ([_popKeyFromStackIfPossible isEqualToString:@"source_url"] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v14 = [MEMORY[0x1E695DFF8] URLWithString:valueCopy];
      redirectSourceURL = self->_redirectSourceURL;
      self->_redirectSourceURL = v14;

      if (self->_redirectSourceURL)
      {
        goto LABEL_38;
      }

      v18 = WBS_LOG_CHANNEL_PREFIXImport(v16, v17);
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_38;
      }
    }

    else
    {
      if ([_popKeyFromStackIfPossible isEqualToString:@"source_time_usec"])
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          self->_redirectSourceVisitTime = [valueCopy integerValue];
          goto LABEL_38;
        }
      }

      if (![_popKeyFromStackIfPossible isEqualToString:@"destination_url"] || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        if ([_popKeyFromStackIfPossible isEqualToString:@"destination_time_usec"] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          self->_redirectDestinationVisitTime = [valueCopy integerValue];
        }

        else if ([_popKeyFromStackIfPossible isEqualToString:@"visit_count"])
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            self->_visitCount = [valueCopy unsignedIntegerValue];
          }
        }

        goto LABEL_38;
      }

      v19 = [MEMORY[0x1E695DFF8] URLWithString:valueCopy];
      redirectDestinationURL = self->_redirectDestinationURL;
      self->_redirectDestinationURL = v19;

      if (self->_redirectDestinationURL || (v23 = WBS_LOG_CHANNEL_PREFIXImport(v21, v22), !os_log_type_enabled(v23, OS_LOG_TYPE_ERROR)))
      {
LABEL_38:

        goto LABEL_39;
      }
    }

LABEL_31:
    [WBSHistoryImporter jsonReader:scalarValue:];
    goto LABEL_38;
  }

LABEL_39:

  return _checkNotAtRootLevel;
}

- (BOOL)jsonReaderBeginArray:(id)array
{
  _checkNotAtRootLevel = [(WBSHistoryImporter *)self _checkNotAtRootLevel];
  if (_checkNotAtRootLevel)
  {
    [(NSMutableArray *)self->_stack addObject:&unk_1F308E468];
    if ([(WBSHistoryImporter *)self _isParsingVisitArray])
    {
      self->_foundVisitArray = 1;
    }
  }

  return _checkNotAtRootLevel;
}

- (BOOL)jsonReaderBeginObject:(id)object
{
  [(NSMutableArray *)self->_stack addObject:&unk_1F308E450];
  if ([(WBSHistoryImporter *)self _isParsingVisit])
  {
    url = self->_url;
    self->_url = 0;

    self->_visitTime = 0;
    *&self->_loadFailure = 256;
    redirectSourceURL = self->_redirectSourceURL;
    self->_redirectSourceURL = 0;

    redirectDestinationURL = self->_redirectDestinationURL;
    self->_redirectSourceVisitTime = 0;
    self->_redirectDestinationURL = 0;

    *&self->_redirectDestinationVisitTime = xmmword_1B8574050;
  }

  return 1;
}

- (BOOL)jsonReaderEndArray:(id)array
{
  [(NSMutableArray *)self->_stack removeLastObject];
  _popKeyFromStackIfPossible = [(WBSHistoryImporter *)self _popKeyFromStackIfPossible];
  return 1;
}

- (BOOL)jsonReaderEndObject:(id)object
{
  objectCopy = object;
  if ([(WBSHistoryImporter *)self _isParsingVisit])
  {
    v5 = objc_autoreleasePoolPush();
    v7 = v5;
    if (!self->_url)
    {
      v8 = WBS_LOG_CHANNEL_PREFIXImport(v5, v6);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [WBSHistoryImporter jsonReaderEndObject:];
      }
    }

    visitTime = self->_visitTime;
    if (!visitTime)
    {
      v10 = WBS_LOG_CHANNEL_PREFIXImport(0, v6);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [WBSHistoryImporter jsonReaderEndObject:];
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
          v13 = 0.0;
          v14 = 0.0;
          if (self->_redirectSourceURL)
          {
            v14 = WBSUnixTimeInMicrosecondsToTimeInterval(self->_redirectSourceVisitTime);
          }

          if (self->_redirectDestinationURL)
          {
            v13 = WBSUnixTimeInMicrosecondsToTimeInterval(self->_redirectDestinationVisitTime);
          }

          if (v14 < self->_ageLimit)
          {
            redirectSourceURL = self->_redirectSourceURL;
            self->_redirectSourceURL = 0;

            v14 = 0.0;
          }

          WeakRetained = objc_loadWeakRetained(&self->_delegate);
          absoluteString = [(NSURL *)self->_url absoluteString];
          title = self->_title;
          loadFailure = self->_loadFailure;
          httpGet = self->_httpGet;
          absoluteString2 = [(NSURL *)self->_redirectSourceURL absoluteString];
          absoluteString3 = [(NSURL *)self->_redirectDestinationURL absoluteString];
          [WeakRetained addVisitWithURLString:absoluteString visitTime:title title:!loadFailure loadSuccessful:httpGet httpGet:absoluteString2 redirectSourceURLString:absoluteString3 redirectSourceVisitTime:v12 redirectDestinationURLString:v14 redirectDestinationVisitTime:v13 visitCount:self->_visitCount];
        }
      }
    }

    objc_autoreleasePoolPop(v7);
  }

  [(NSMutableArray *)self->_stack removeLastObject];
  _popKeyFromStackIfPossible = [(WBSHistoryImporter *)self _popKeyFromStackIfPossible];

  return 1;
}

- (WBSHistoryImporterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)jsonReader:scalarValue:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end