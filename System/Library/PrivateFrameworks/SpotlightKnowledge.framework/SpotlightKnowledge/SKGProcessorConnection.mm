@interface SKGProcessorConnection
- (SKGProcessorConnection)init;
- (id)initForImporter;
- (void)checkProcessingReportForBundleIdentifier:(id)identifier flags:(unint64_t)flags timeout:(unint64_t)timeout completion:(id)completion;
- (void)collectDiagnostics:(id)diagnostics completion:(id)completion;
- (void)eventsJournalsStatsWithCompletion:(id)completion;
- (void)getCachedEmbeddingCompletenessForBundle:(id)bundle completion:(id)completion;
- (void)getGenerationConfigurationForTypes:(id)types configurationHandler:(id)handler completionHandler:(id)completionHandler;
- (void)getGenerationProgressReportForTypes:(id)types protectionClasses:(id)classes reportHandler:(id)handler completionHandler:(id)completionHandler;
- (void)getHistoricalProgressReportsForDateInterval:(id)interval reportHandler:(id)handler;
- (void)getHistoricalProgressReportsJSONDataForDateInterval:(id)interval reportHandler:(id)handler;
- (void)getProgressReportWithVerbosity:(int64_t)verbosity processorFlags:(unint64_t)flags protectionClasses:(id)classes reportHandler:(id)handler;
- (void)launchUpgradeTasks;
- (void)processRecord:(id)record referenceIdentifier:(id)identifier protectionClass:(id)class processorFlags:(unint64_t)flags completionHandler:(id)handler;
- (void)setTurboMode:(BOOL)mode;
- (void)updateCheckedInClientWithBundleIdentifier:(id)identifier completionHandler:(id)handler;
@end

@implementation SKGProcessorConnection

- (SKGProcessorConnection)init
{
  v3.receiver = self;
  v3.super_class = SKGProcessorConnection;
  return [(CSXPCConnection *)&v3 initWithMachServiceName:@"com.apple.spotlightknowledged"];
}

- (id)initForImporter
{
  v3.receiver = self;
  v3.super_class = SKGProcessorConnection;
  return [(CSXPCConnection *)&v3 initWithMachServiceName:@"com.apple.spotlightknowledged.importer"];
}

- (void)processRecord:(id)record referenceIdentifier:(id)identifier protectionClass:(id)class processorFlags:(unint64_t)flags completionHandler:(id)handler
{
  flagsCopy = flags;
  identifierCopy = identifier;
  classCopy = class;
  handlerCopy = handler;
  recordCopy = record;
  v16 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v16, "command", "processRecord");
  v17 = objc_alloc_init(MEMORY[0x1E6964DF8]);
  [v17 encodeObject:recordCopy];

  data = [v17 data];
  xpc_dictionary_set_data(v16, "record", [data bytes], objc_msgSend(data, "length"));
  if (classCopy)
  {
    v19 = classCopy;
  }

  else
  {
    v19 = @"Default";
  }

  xpc_dictionary_set_string(v16, "protectionClass", [(__CFString *)v19 UTF8String]);
  if (identifierCopy)
  {
    xpc_dictionary_set_string(v16, "referenceIdentifier", [identifierCopy UTF8String]);
  }

  xpc_dictionary_set_BOOL(v16, "includeEmbeddings", (flagsCopy & 4) != 0);
  xpc_dictionary_set_BOOL(v16, "includeKeyphrases", (flagsCopy & 8) != 0);
  xpc_dictionary_set_BOOL(v16, "includeSuggestedEvents", (flagsCopy & 0x20) != 0);
  xpc_dictionary_set_BOOL(v16, "includePeople", (flagsCopy & 0x10) != 0);
  xpc_dictionary_set_BOOL(v16, "includeDocUnderstanding", (flagsCopy & 0x40) != 0);
  xpc_dictionary_set_BOOL(v16, "includeSKG", flagsCopy & 1);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __109__SKGProcessorConnection_processRecord_referenceIdentifier_protectionClass_processorFlags_completionHandler___block_invoke;
  v21[3] = &unk_1E74B7F80;
  v22 = handlerCopy;
  v20 = handlerCopy;
  [(CSXPCConnection *)self sendMessageAsync:v16 completion:v21];
}

void __109__SKGProcessorConnection_processRecord_referenceIdentifier_protectionClass_processorFlags_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = csimport_xpc_dictionary_decode_status_with_error(v10);
  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"SKGAttributeProcessorErrorDomain" code:-1 userInfo:0];
    (*(v4 + 16))(v4, 0, v5);
  }

  else
  {
    v6 = objc_alloc(MEMORY[0x1E6964E08]);
    v7 = [MEMORY[0x1E6964ED8] copyNSDataForKey:"attrDict" fromXPCDictionary:v10];
    v8 = [v6 initWithData:v7];
    v5 = [v8 decode];

    v9 = *(a1 + 32);
    if (v9)
    {
      (*(v9 + 16))(v9, v5, 0);
    }
  }
}

- (void)updateCheckedInClientWithBundleIdentifier:(id)identifier completionHandler:(id)handler
{
  handlerCopy = handler;
  identifierCopy = identifier;
  v8 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v8, "command", "processCheckedInBundleID");
  uTF8String = [identifierCopy UTF8String];

  xpc_dictionary_set_string(v8, "bundleIdentifier", uTF8String);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __86__SKGProcessorConnection_updateCheckedInClientWithBundleIdentifier_completionHandler___block_invoke;
  v11[3] = &unk_1E74B7F80;
  v12 = handlerCopy;
  v10 = handlerCopy;
  [(CSXPCConnection *)self sendMessageAsync:v8 completion:v11];
}

void __86__SKGProcessorConnection_updateCheckedInClientWithBundleIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = csimport_xpc_dictionary_decode_status_with_error(a2);
  if (v3)
  {
    v4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"SKGAttributeProcessorErrorDomain" code:-1 userInfo:0];
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  (*(*(a1 + 32) + 16))();
}

- (void)setTurboMode:(BOOL)mode
{
  xdict = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(xdict, "command", "turboMode");
  xpc_dictionary_set_BOOL(xdict, "state", mode);
  [(CSXPCConnection *)self sendMessageAsync:xdict];
}

- (void)checkProcessingReportForBundleIdentifier:(id)identifier flags:(unint64_t)flags timeout:(unint64_t)timeout completion:(id)completion
{
  completionCopy = completion;
  v11 = (flags >> 1) & 1;
  v12 = (flags >> 2) & 1;
  v13 = (flags >> 3) & 1;
  v14 = (flags >> 4) & 1;
  identifierCopy = identifier;
  v16 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v16, "command", "progressReportForBundleID");
  xpc_dictionary_set_BOOL(v16, "includeEmbeddings", v11);
  xpc_dictionary_set_BOOL(v16, "includeKeyphrases", v12);
  xpc_dictionary_set_BOOL(v16, "includeSuggestedEvents", v13);
  xpc_dictionary_set_BOOL(v16, "includeDocUnderstanding", v14);
  uTF8String = [identifierCopy UTF8String];

  xpc_dictionary_set_string(v16, "bundleIdentifier", uTF8String);
  xpc_dictionary_set_uint64(v16, "timeout", timeout);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __92__SKGProcessorConnection_checkProcessingReportForBundleIdentifier_flags_timeout_completion___block_invoke;
  v19[3] = &unk_1E74B7F80;
  v20 = completionCopy;
  v18 = completionCopy;
  [(CSXPCConnection *)self sendMessageAsync:v16 completion:v19];
}

void __92__SKGProcessorConnection_checkProcessingReportForBundleIdentifier_flags_timeout_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = csimport_xpc_dictionary_decode_status_with_error(v3);
  xpc_dictionary_get_uint64(v3, "foundItemsCount");

  if (v4)
  {
    v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"SKGAttributeProcessorErrorDomain" code:-1 userInfo:0];
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(*(a1 + 32) + 16))();
}

- (void)getGenerationProgressReportForTypes:(id)types protectionClasses:(id)classes reportHandler:(id)handler completionHandler:(id)completionHandler
{
  v46 = *MEMORY[0x1E69E9840];
  typesCopy = types;
  classesCopy = classes;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  group = dispatch_group_create();
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = typesCopy;
  v30 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v30)
  {
    v26 = *v41;
    do
    {
      v11 = 0;
      do
      {
        if (*v41 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v40 + 1) + 8 * v11);
        v13 = xpc_dictionary_create(0, 0, 0);
        v14 = [v12 stringByAppendingString:@"GenerationProgress"];
        xpc_dictionary_set_string(v13, "command", [v14 UTF8String]);

        if ([classesCopy count])
        {
          empty = xpc_array_create_empty();
          v36 = 0u;
          v37 = 0u;
          v38 = 0u;
          v39 = 0u;
          v16 = classesCopy;
          v17 = classesCopy;
          v18 = [v17 countByEnumeratingWithState:&v36 objects:v44 count:16];
          if (v18)
          {
            v19 = v18;
            v20 = *v37;
            do
            {
              v21 = 0;
              do
              {
                if (*v37 != v20)
                {
                  objc_enumerationMutation(v17);
                }

                v22 = xpc_string_create([*(*(&v36 + 1) + 8 * v21) UTF8String]);
                xpc_array_append_value(empty, v22);

                ++v21;
              }

              while (v19 != v21);
              v19 = [v17 countByEnumeratingWithState:&v36 objects:v44 count:16];
            }

            while (v19);
          }

          xpc_dictionary_set_value(v13, "protectionClasses", empty);
          classesCopy = v16;
        }

        dispatch_group_enter(group);
        v33[0] = MEMORY[0x1E69E9820];
        v33[1] = 3221225472;
        v33[2] = __112__SKGProcessorConnection_getGenerationProgressReportForTypes_protectionClasses_reportHandler_completionHandler___block_invoke;
        v33[3] = &unk_1E74B7FA8;
        v33[4] = v12;
        v35 = handlerCopy;
        v34 = group;
        [(CSXPCConnection *)self sendMessageAsync:v13 completion:v33];

        ++v11;
      }

      while (v11 != v30);
      v30 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
    }

    while (v30);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __112__SKGProcessorConnection_getGenerationProgressReportForTypes_protectionClasses_reportHandler_completionHandler___block_invoke_2;
  block[3] = &unk_1E74B7FD0;
  v32 = completionHandlerCopy;
  v23 = completionHandlerCopy;
  dispatch_group_notify(group, MEMORY[0x1E69E96A0], block);
}

void __112__SKGProcessorConnection_getGenerationProgressReportForTypes_protectionClasses_reportHandler_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = csimport_xpc_dictionary_decode_status_with_error(v3);
  if (v4)
  {
    v7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"SKGAttributeProcessorErrorDomain" code:-1 userInfo:0];
  }

  else
  {
    v7 = 0;
  }

  v5 = [*(a1 + 32) stringByAppendingString:@"Report"];
  v6 = xpc_dictionary_get_value(v3, [v5 UTF8String]);

  (*(*(a1 + 48) + 16))();
  dispatch_group_leave(*(a1 + 40));
}

- (void)getGenerationConfigurationForTypes:(id)types configurationHandler:(id)handler completionHandler:(id)completionHandler
{
  v31 = *MEMORY[0x1E69E9840];
  typesCopy = types;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  v10 = dispatch_group_create();
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = typesCopy;
  v11 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v27;
    do
    {
      v14 = 0;
      do
      {
        if (*v27 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v26 + 1) + 8 * v14);
        v16 = xpc_dictionary_create(0, 0, 0);
        v17 = [v15 stringByAppendingString:@"GenerationConfiguration"];
        xpc_dictionary_set_string(v16, "command", [v17 UTF8String]);

        dispatch_group_enter(v10);
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __100__SKGProcessorConnection_getGenerationConfigurationForTypes_configurationHandler_completionHandler___block_invoke;
        v23[3] = &unk_1E74B7FA8;
        v23[4] = v15;
        v25 = handlerCopy;
        v24 = v10;
        [(CSXPCConnection *)self sendMessageAsync:v16 completion:v23];

        ++v14;
      }

      while (v12 != v14);
      v12 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v12);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __100__SKGProcessorConnection_getGenerationConfigurationForTypes_configurationHandler_completionHandler___block_invoke_2;
  block[3] = &unk_1E74B7FD0;
  v22 = completionHandlerCopy;
  v18 = completionHandlerCopy;
  dispatch_group_notify(v10, MEMORY[0x1E69E96A0], block);
}

void __100__SKGProcessorConnection_getGenerationConfigurationForTypes_configurationHandler_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = csimport_xpc_dictionary_decode_status_with_error(v3);
  if (v4)
  {
    v7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"SKGAttributeProcessorErrorDomain" code:-1 userInfo:0];
  }

  else
  {
    v7 = 0;
  }

  v5 = [*(a1 + 32) stringByAppendingString:@"Configuration"];
  v6 = xpc_dictionary_get_value(v3, [v5 UTF8String]);

  (*(*(a1 + 48) + 16))();
  dispatch_group_leave(*(a1 + 40));
}

- (void)getProgressReportWithVerbosity:(int64_t)verbosity processorFlags:(unint64_t)flags protectionClasses:(id)classes reportHandler:(id)handler
{
  flagsCopy = flags;
  v31 = *MEMORY[0x1E69E9840];
  classesCopy = classes;
  handlerCopy = handler;
  v12 = xpc_dictionary_create(0, 0, 0);
  if (flagsCopy)
  {
    v13 = @"ProgressReport";
  }

  else if ((flagsCopy & 4) != 0)
  {
    v13 = @"EmbeddingsProgressReport";
  }

  else if ((flagsCopy & 8) != 0)
  {
    v13 = @"KeyphraseProgressReport";
  }

  else if ((flagsCopy & 0x40) != 0)
  {
    v13 = @"DocumentUnderstandingProgressReport";
  }

  else
  {
    if ((flagsCopy & 0x20) == 0)
    {
      goto LABEL_12;
    }

    v13 = @"SuggestedEventsProgressReport";
  }

  xpc_dictionary_set_string(v12, "command", [(__CFString *)v13 UTF8String]);
LABEL_12:
  if ([classesCopy count])
  {
    verbosityCopy = verbosity;
    selfCopy = self;
    empty = xpc_array_create_empty();
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v16 = classesCopy;
    v17 = [v16 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v27;
      do
      {
        v20 = 0;
        do
        {
          if (*v27 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = xpc_string_create([*(*(&v26 + 1) + 8 * v20) UTF8String]);
          xpc_array_append_value(empty, v21);

          ++v20;
        }

        while (v18 != v20);
        v18 = [v16 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v18);
    }

    xpc_dictionary_set_value(v12, "protectionClasses", empty);
    self = selfCopy;
    verbosity = verbosityCopy;
  }

  xpc_dictionary_set_int64(v12, "verbose", verbosity);
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __104__SKGProcessorConnection_getProgressReportWithVerbosity_processorFlags_protectionClasses_reportHandler___block_invoke;
  v24[3] = &unk_1E74B7F80;
  v25 = handlerCopy;
  v22 = handlerCopy;
  [(CSXPCConnection *)self sendMessageAsync:v12 completion:v24];
}

void __104__SKGProcessorConnection_getProgressReportWithVerbosity_processorFlags_protectionClasses_reportHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = csimport_xpc_dictionary_decode_status_with_error(v3);
  if (v4)
  {
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"SKGAttributeProcessorErrorDomain" code:-1 userInfo:0];
  }

  else
  {
    v6 = 0;
  }

  v5 = xpc_dictionary_get_value(v3, [@"progressReport" UTF8String]);

  (*(*(a1 + 32) + 16))();
}

- (void)getCachedEmbeddingCompletenessForBundle:(id)bundle completion:(id)completion
{
  bundleCopy = bundle;
  completionCopy = completion;
  if (completionCopy)
  {
    v8 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v8, "command", "embeddingCompleteness");
    if ([bundleCopy length])
    {
      xpc_dictionary_set_string(v8, "bundleIdentifier", [bundleCopy UTF8String]);
    }

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __77__SKGProcessorConnection_getCachedEmbeddingCompletenessForBundle_completion___block_invoke;
    v9[3] = &unk_1E74B7F80;
    v10 = completionCopy;
    [(CSXPCConnection *)self sendMessageAsync:v8 completion:v9];
  }
}

void __77__SKGProcessorConnection_getCachedEmbeddingCompletenessForBundle_completion___block_invoke(uint64_t a1, void *a2)
{
  xdict = a2;
  v3 = csimport_xpc_dictionary_decode_status_with_error(xdict);
  if (v3)
  {
    v4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"SKGAttributeProcessorErrorDomain" code:-1 userInfo:0];
  }

  else
  {
    v4 = 0;
  }

  v5 = xpc_dictionary_get_double(xdict, "completeness");
  (*(*(a1 + 32) + 16))(v5);
}

- (void)getHistoricalProgressReportsForDateInterval:(id)interval reportHandler:(id)handler
{
  handlerCopy = handler;
  v7 = handlerCopy;
  if (handlerCopy)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __84__SKGProcessorConnection_getHistoricalProgressReportsForDateInterval_reportHandler___block_invoke;
    v8[3] = &unk_1E74B7FF8;
    v9 = handlerCopy;
    [(SKGProcessorConnection *)self getHistoricalProgressReportsJSONDataForDateInterval:interval reportHandler:v8];
  }
}

void __84__SKGProcessorConnection_getHistoricalProgressReportsForDateInterval_reportHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v5, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      v12 = 0;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * v12);
        v15 = 0;
        v14 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v13 options:0 error:&v15];
        if (v14)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v7 addObject:v14];
          }
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)getHistoricalProgressReportsJSONDataForDateInterval:(id)interval reportHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    intervalCopy = interval;
    v8 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v8, "command", "historicalReports");
    startDate = [intervalCopy startDate];
    [startDate timeIntervalSinceReferenceDate];
    xpc_dictionary_set_double(v8, "startDate", v10);

    [intervalCopy duration];
    v12 = v11;

    xpc_dictionary_set_double(v8, "duration", v12);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __92__SKGProcessorConnection_getHistoricalProgressReportsJSONDataForDateInterval_reportHandler___block_invoke;
    v13[3] = &unk_1E74B7F80;
    v14 = handlerCopy;
    [(CSXPCConnection *)self sendMessageAsync:v8 completion:v13];
  }
}

void __92__SKGProcessorConnection_getHistoricalProgressReportsJSONDataForDateInterval_reportHandler___block_invoke(uint64_t a1, void *a2)
{
  xdict = a2;
  v3 = csimport_xpc_dictionary_decode_status_with_error(xdict);
  if (v3)
  {
    v4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"SKGAttributeProcessorErrorDomain" code:-1 userInfo:0];
  }

  else
  {
    v4 = 0;
  }

  v5 = xpc_dictionary_get_value(xdict, "historicalReports");
  if (MEMORY[0x19A8E7150]() == MEMORY[0x1E69E9E50])
  {
    v6 = [MEMORY[0x1E695DF70] array];
    count = xpc_array_get_count(v5);
    if (count)
    {
      v8 = count;
      v9 = 0;
      v10 = MEMORY[0x1E69E9E70];
      do
      {
        v11 = xpc_array_get_value(v5, v9);
        if (MEMORY[0x19A8E7150]() == v10)
        {
          bytes_ptr = xpc_data_get_bytes_ptr(v11);
          v13 = [MEMORY[0x1E695DEF0] dataWithBytes:bytes_ptr length:xpc_data_get_length(v11)];
          [v6 addObject:v13];
        }

        ++v9;
      }

      while (v8 != v9);
    }

    (*(*(a1 + 32) + 16))();
  }
}

- (void)collectDiagnostics:(id)diagnostics completion:(id)completion
{
  completionCopy = completion;
  diagnosticsCopy = diagnostics;
  v8 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v8, "command", "diagnose");
  uTF8String = [diagnosticsCopy UTF8String];

  xpc_dictionary_set_string(v8, "path", uTF8String);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __56__SKGProcessorConnection_collectDiagnostics_completion___block_invoke;
  v11[3] = &unk_1E74B7F80;
  v12 = completionCopy;
  v10 = completionCopy;
  [(CSXPCConnection *)self sendMessageAsync:v8 completion:v11];
}

void __56__SKGProcessorConnection_collectDiagnostics_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = csimport_xpc_dictionary_decode_status_with_error(a2);
  if (v3)
  {
    v4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"SKGAttributeProcessorErrorDomain" code:-1 userInfo:0];
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  (*(*(a1 + 32) + 16))();
}

- (void)eventsJournalsStatsWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v5, "command", "eventsJournalsStats");
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__SKGProcessorConnection_eventsJournalsStatsWithCompletion___block_invoke;
  v7[3] = &unk_1E74B7F80;
  v8 = completionCopy;
  v6 = completionCopy;
  [(CSXPCConnection *)self sendMessageAsync:v5 completion:v7];
}

void __60__SKGProcessorConnection_eventsJournalsStatsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = csimport_xpc_dictionary_decode_status_with_error(v6);
  if (v3)
  {
    v4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"SKGAttributeProcessorErrorDomain" code:-1 userInfo:0];
  }

  else
  {
    v4 = 0;
  }

  v5 = unpackXPCDictRec(v6);
  (*(*(a1 + 32) + 16))();
}

- (void)launchUpgradeTasks
{
  v3 = dispatch_group_create();
  dispatch_group_enter(v3);
  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v4, "command", "launchUpgradeTasks");
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __44__SKGProcessorConnection_launchUpgradeTasks__block_invoke;
  v6[3] = &unk_1E74B8020;
  v7 = v3;
  v5 = v3;
  [(CSXPCConnection *)self sendMessageAsync:v4 completion:v6];
  dispatch_group_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
}

@end