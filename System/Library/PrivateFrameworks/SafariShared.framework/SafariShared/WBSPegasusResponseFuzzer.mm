@interface WBSPegasusResponseFuzzer
+ (WBSPegasusResponseFuzzer)sharedFuzzer;
+ (id)_protectedFields;
- (WBSPegasusResponseFuzzer)init;
- (WBSPegasusResponseFuzzer)initWithParsecSession:(id)session sampleResponsesPlistKey:(id)key;
- (id)_validPegasusResponseForKey:(id)key;
- (id)responseForQuery:(id)query;
- (void)_recordMutatedPegasusResponseJSON;
@end

@implementation WBSPegasusResponseFuzzer

+ (WBSPegasusResponseFuzzer)sharedFuzzer
{
  if (sharedFuzzer_onceToken != -1)
  {
    +[WBSPegasusResponseFuzzer sharedFuzzer];
  }

  v3 = sharedFuzzer_sharedFuzzer;

  return v3;
}

void __40__WBSPegasusResponseFuzzer_sharedFuzzer__block_invoke()
{
  v0 = objc_alloc_init(WBSPegasusResponseFuzzer);
  v1 = sharedFuzzer_sharedFuzzer;
  sharedFuzzer_sharedFuzzer = v0;
}

+ (id)_protectedFields
{
  if (_protectedFields_onceToken != -1)
  {
    +[WBSPegasusResponseFuzzer _protectedFields];
  }

  v3 = _protectedFields__protectedFields;

  return v3;
}

void __44__WBSPegasusResponseFuzzer__protectedFields__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DFD8]);
  v1 = [v0 initWithArray:MEMORY[0x1E695E0F0]];
  v2 = _protectedFields__protectedFields;
  _protectedFields__protectedFields = v1;
}

- (WBSPegasusResponseFuzzer)init
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  processInfo = [MEMORY[0x1E696AE30] processInfo];
  arguments = [processInfo arguments];

  v5 = [arguments countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(arguments);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        if ([v9 safari_hasPrefix:@"PegasusResponseFuzzer"] & 1) != 0 || (objc_msgSend(v9, "safari_hasPrefix:", @"PegasusResponseRegression"))
        {
          v13 = [WBSParsecDSession alloc];
          v11 = +[WBSParsecDSession sharedPARSession];
          v14 = [(WBSParsecDSession *)v13 initWithParsecdSession:v11 skipAutoFillDataUpdates:1];
          v12 = [(WBSPegasusResponseFuzzer *)self initWithParsecSession:v14 sampleResponsesPlistKey:v9];

          goto LABEL_12;
        }
      }

      v6 = [arguments countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = [WBSParsecDSession alloc];
  arguments = +[WBSParsecDSession sharedPARSession];
  v11 = [(WBSParsecDSession *)v10 initWithParsecdSession:arguments skipAutoFillDataUpdates:1];
  v12 = [(WBSPegasusResponseFuzzer *)self initWithParsecSession:v11 sampleResponsesPlistKey:&stru_1F3A5E418];
LABEL_12:

  return v12;
}

- (WBSPegasusResponseFuzzer)initWithParsecSession:(id)session sampleResponsesPlistKey:(id)key
{
  sessionCopy = session;
  keyCopy = key;
  v25.receiver = self;
  v25.super_class = WBSPegasusResponseFuzzer;
  v9 = [(WBSPegasusResponseFuzzer *)&v25 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_parsecSession, session);
    v10->_indexOfCurrentResponse = 0;
    v11 = [(WBSPegasusResponseFuzzer *)v10 _validPegasusResponseForKey:keyCopy];
    validJSONPARResponse = v10->_validJSONPARResponse;
    v10->_validJSONPARResponse = v11;

    v13 = [WBSJSONMutator alloc];
    v14 = v10->_validJSONPARResponse;
    v15 = +[WBSPegasusResponseFuzzer _protectedFields];
    v16 = [(WBSJSONMutator *)v13 initWithSource:v14 protectedFields:v15];
    jsonMutator = v10->_jsonMutator;
    v10->_jsonMutator = v16;

    v18 = MEMORY[0x1E6998650];
    v19 = v10->_validJSONPARResponse;
    parsecdSession = [(WBSParsecDSession *)v10->_parsecSession parsecdSession];
    v21 = [v18 responseFromJSON:v19 session:parsecdSession];
    currentResponse = v10->_currentResponse;
    v10->_currentResponse = v21;

    v10->_shouldAttachMutatedJSONToTestResultKeys = [keyCopy safari_hasPrefix:@"PegasusResponseFuzzer"];
    v23 = v10;
  }

  return v10;
}

- (id)responseForQuery:(id)query
{
  v5 = self->_currentResponse;
  if ([query isEqualToString:self->_query])
  {
    if (self->_shouldAttachMutatedJSONToTestResultKeys)
    {
      [(WBSPegasusResponseFuzzer *)self _recordMutatedPegasusResponseJSON];
    }

    v6 = [(WBSJSONMutator *)self->_jsonMutator mutatedJSONProtectingRootObject:1];
    lastSimulatedJSON = self->_lastSimulatedJSON;
    self->_lastSimulatedJSON = v6;
    v8 = v6;

    v9 = MEMORY[0x1E6998650];
    parsecdSession = [(WBSParsecDSession *)self->_parsecSession parsecdSession];
    v11 = [v9 responseFromJSON:v8 session:parsecdSession];
    currentResponse = self->_currentResponse;
    self->_currentResponse = v11;
  }

  return v5;
}

- (void)_recordMutatedPegasusResponseJSON
{
  lastSimulatedJSON = self->_lastSimulatedJSON;
  v23 = 0;
  v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:lastSimulatedJSON options:1 error:&v23];
  v4 = v23;
  v6 = v4;
  if (v4)
  {
    v7 = WBS_LOG_CHANNEL_PREFIXSafariSuggestions(v4, v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [WBSPegasusResponseFuzzer _recordMutatedPegasusResponseJSON];
    }
  }

  else
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v3 encoding:4];
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleURL = [mainBundle bundleURL];
    v11 = [bundleURL URLByAppendingPathComponent:@"PegasusResponseFuzzingJSON.json"];

    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    path = [v11 path];
    v14 = [defaultManager fileExistsAtPath:path];

    if ((v14 & 1) == 0)
    {
      defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
      path2 = [v11 path];
      [defaultManager2 createFileAtPath:path2 contents:0 attributes:0];
    }

    path3 = [v11 path];
    v22 = 0;
    [v8 writeToFile:path3 atomically:1 encoding:4 error:&v22];
    v18 = v22;

    if (v18)
    {
      v21 = WBS_LOG_CHANNEL_PREFIXSafariSuggestions(v19, v20);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [WBSPegasusResponseFuzzer _recordMutatedPegasusResponseJSON];
      }
    }
  }
}

- (id)_validPegasusResponseForKey:(id)key
{
  v25[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AAE8];
  keyCopy = key;
  safari_safariSharedBundle = [v4 safari_safariSharedBundle];
  v7 = [safari_safariSharedBundle URLForResource:@"SafariPegasusResponseFuzzerSampleInputs" withExtension:@"plist"];

  v8 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:v7];
  v9 = [v8 objectForKeyedSubscript:keyCopy];

  v10 = [v9 objectForKeyedSubscript:@"query"];
  query = self->_query;
  self->_query = v10;

  v12 = [v9 objectForKeyedSubscript:@"sampleJSON"];
  v14 = [v12 dataUsingEncoding:4];
  if (v14)
  {
    v24 = 0;
    v15 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v14 options:0 error:&v24];
    v16 = v24;
    v18 = v16;
    if (v16)
    {
      v19 = WBS_LOG_CHANNEL_PREFIXSafariSuggestions(v16, v17);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [WBSPegasusResponseFuzzer _validPegasusResponseForKey:];
      }

      v20 = 0;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v25[0] = v15;
        v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];

        v15 = v22;
      }

      objc_storeStrong(&self->_lastSimulatedJSON, v15);
      v15 = v15;
      v20 = v15;
    }
  }

  else
  {
    v21 = WBS_LOG_CHANNEL_PREFIXSafariSuggestions(0, v13);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [WBSPegasusResponseFuzzer _validPegasusResponseForKey:];
    }

    v20 = 0;
  }

  return v20;
}

@end