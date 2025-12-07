@interface WFRemoteExecutionRunRequest
- (BOOL)readMessageFromData:(id)data error:(id *)error;
- (WFRemoteExecutionRunRequest)initWithAction:(id)action workflowControllerState:(id)state;
- (WFRemoteExecutionRunRequest)initWithData:(id)data error:(id *)error;
- (id)writeMessageToWriter:(id)writer error:(id *)error;
- (void)inflateInputData:(id)data fileCoordinator:(id)coordinator completion:(id)completion;
- (void)inflateProcessedParametersData:(id)data fileCoordinator:(id)coordinator completion:(id)completion;
- (void)inflateVariablesData:(id)data fileCoordinator:(id)coordinator completion:(id)completion;
- (void)inflateWithFileCoordinator:(id)coordinator completion:(id)completion;
@end

@implementation WFRemoteExecutionRunRequest

- (id)writeMessageToWriter:(id)writer error:(id *)error
{
  v53 = *MEMORY[0x1E69E9840];
  writerCopy = writer;
  v7 = objc_opt_new();
  [v7 setPayloadType:1];
  v8 = objc_opt_new();
  actionIdentifier = [(WFRemoteExecutionRunRequest *)self actionIdentifier];
  [v8 setActionIdentifier:actionIdentifier];

  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  variables = [(WFRemoteExecutionRunRequest *)self variables];
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = __58__WFRemoteExecutionRunRequest_writeMessageToWriter_error___block_invoke;
  v50[3] = &unk_1E8376C20;
  v50[4] = self;
  v12 = v10;
  v51 = v12;
  [variables enumerateKeysAndObjectsUsingBlock:v50];

  [v8 setVariables:v12];
  processedParameters = [(WFRemoteExecutionRunRequest *)self processedParameters];
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __58__WFRemoteExecutionRunRequest_writeMessageToWriter_error___block_invoke_224;
  v48[3] = &unk_1E8376C48;
  v48[4] = self;
  v14 = v8;
  v49 = v14;
  [processedParameters enumerateKeysAndObjectsUsingBlock:v48];

  v15 = MEMORY[0x1E696AE40];
  serializedParameters = [(WFRemoteExecutionRunRequest *)self serializedParameters];
  v47 = 0;
  v17 = [v15 dataWithPropertyList:serializedParameters format:200 options:0 error:&v47];
  v18 = v47;
  [v14 setSerializedParameters:v17];

  if (v18)
  {
    if (error)
    {
      v19 = v18;
      immutableData2 = 0;
      *error = v18;
    }

    else
    {
      immutableData2 = 0;
    }
  }

  else
  {
    v38 = v14;
    v39 = v12;
    v40 = v7;
    v41 = writerCopy;
    v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    input = [(WFRemoteExecutionRunRequest *)self input];
    items = [input items];

    obj = items;
    v24 = [items countByEnumeratingWithState:&v43 objects:v52 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v44;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v44 != v26)
          {
            objc_enumerationMutation(obj);
          }

          v28 = *(*(&v43 + 1) + 8 * i);
          v29 = objc_opt_new();
          v30 = [WFRemoteExecutionFileCoder alloc];
          coordinator = [(WFRemoteExecutionRunRequest *)self coordinator];
          identifier = [(WFRemoteExecutionRequest *)self identifier];
          v33 = [(WFRemoteExecutionFileCoder *)v30 initWithCoordinator:coordinator requestIdentifier:identifier];

          v34 = [MEMORY[0x1E696ACC8] wf_securelyArchivedDataWithRootObject:v28 fileCoder:v33];
          [v29 setItem:v34];

          [v29 setEncodingType:2];
          [v21 addObject:v29];
        }

        v25 = [obj countByEnumeratingWithState:&v43 objects:v52 count:16];
      }

      while (v25);
    }

    v14 = v38;
    [v38 setInputs:v21];
    v35 = objc_opt_new();
    [v38 writeTo:v35];
    immutableData = [v35 immutableData];
    v7 = v40;
    [v40 setPayload:immutableData];

    writerCopy = v41;
    [v40 writeTo:v41];
    immutableData2 = [v41 immutableData];

    v12 = v39;
    v18 = 0;
  }

  return immutableData2;
}

void __58__WFRemoteExecutionRunRequest_writeMessageToWriter_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_opt_new();
  v22 = v5;
  [v7 setKey:v5];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v21 = v6;
  obj = [v6 items];
  v8 = [obj countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v25;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v24 + 1) + 8 * i);
        v13 = [WFRemoteExecutionFileCoder alloc];
        v14 = [*(a1 + 32) coordinator];
        v15 = [*(a1 + 32) identifier];
        v16 = [(WFRemoteExecutionFileCoder *)v13 initWithCoordinator:v14 requestIdentifier:v15];

        v17 = objc_opt_new();
        [v17 setEncodingType:2];
        v18 = [MEMORY[0x1E696ACC8] wf_securelyArchivedDataWithRootObject:v12 fileCoder:v16];
        [v17 setItem:v18];

        v19 = [v17 item];

        if (!v19)
        {
          v20 = getWFRemoteExecutionLogObject();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v29 = "[WFRemoteExecutionRunRequest writeMessageToWriter:error:]_block_invoke";
            v30 = 2114;
            v31 = v12;
            _os_log_impl(&dword_1CA256000, v20, OS_LOG_TYPE_ERROR, "%s No data returned for content item in variable: %{public}@", buf, 0x16u);
          }
        }

        [v7 addItems:v17];
      }

      v9 = [obj countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v9);
  }

  [*(a1 + 40) addObject:v7];
}

void __58__WFRemoteExecutionRunRequest_writeMessageToWriter_error___block_invoke_224(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [WFRemoteExecutionFileCoder alloc];
  v8 = [*(a1 + 32) coordinator];
  v9 = [*(a1 + 32) identifier];
  v12 = [(WFRemoteExecutionFileCoder *)v7 initWithCoordinator:v8 requestIdentifier:v9];

  v10 = objc_opt_new();
  [v10 setKey:v6];

  v11 = [MEMORY[0x1E696ACC8] wf_securelyArchivedDataWithRootObject:v5 fileCoder:v12];

  [v10 setValue:v11];
  [*(a1 + 40) addProcessedParameters:v10];
}

- (BOOL)readMessageFromData:(id)data error:(id *)error
{
  v59[1] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E69C65B8];
  dataCopy = data;
  v8 = [[v6 alloc] initWithData:dataCopy];

  v9 = objc_alloc_init(WFREPBRunRequest);
  v51 = 0;
  v10 = [(PBCodable *)v9 readFrom:v8 error:&v51];
  v11 = v51;
  if (v10)
  {
    payloadType = [(WFREPBRunRequest *)v9 payloadType];
    payload = [(WFREPBRunRequest *)v9 payload];
    if (payloadType == 1)
    {
      v14 = [objc_alloc(MEMORY[0x1E69C65B8]) initWithData:payload];
      v15 = objc_opt_new();
      v50 = 0;
      v16 = [v15 readFrom:v14 error:&v50];
      v48 = v50;
      if (v16)
      {
        v47 = payload;
        actionIdentifier = [v15 actionIdentifier];
        actionIdentifier = self->_actionIdentifier;
        self->_actionIdentifier = actionIdentifier;

        v19 = getWFRemoteExecutionLogObject();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          identifier = [(WFRemoteExecutionRequest *)self identifier];
          actionIdentifier2 = [(WFRemoteExecutionRunRequest *)self actionIdentifier];
          *buf = 136315650;
          v53 = "[WFRemoteExecutionRunRequest readMessageFromData:error:]";
          v54 = 2114;
          v55 = identifier;
          v56 = 2114;
          v57 = actionIdentifier2;
          _os_log_impl(&dword_1CA256000, v19, OS_LOG_TYPE_INFO, "%s <%{public}@> action identifier: %{public}@", buf, 0x20u);
        }

        variables = [v15 variables];
        variablesData = self->_variablesData;
        self->_variablesData = variables;

        v24 = MEMORY[0x1E696AE40];
        serializedParameters = [v15 serializedParameters];
        v49 = 0;
        v26 = [v24 propertyListWithData:serializedParameters options:0 format:0 error:&v49];
        v27 = v49;
        serializedParameters = self->_serializedParameters;
        self->_serializedParameters = v26;

        v29 = [(NSDictionary *)self->_serializedParameters objectForKey:@"workflowID"];
        if (v29)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v30 = v29;
          }

          else
          {
            v30 = 0;
          }
        }

        else
        {
          v30 = 0;
        }

        v39 = v30;

        workflowID = self->_workflowID;
        self->_workflowID = v39;

        v33 = v27 == 0;
        if (v27)
        {
          payload = v47;
          if (error)
          {
            v41 = v27;
            *error = v27;
          }
        }

        else
        {
          processedParameters = [v15 processedParameters];
          processedParametersData = self->_processedParametersData;
          self->_processedParametersData = processedParameters;

          inputs = [v15 inputs];
          inputData = self->_inputData;
          self->_inputData = inputs;

          payload = v47;
        }

        v37 = v48;
      }

      else
      {
        v36 = getWFRemoteExecutionLogObject();
        v37 = v48;
        if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315394;
          v53 = "[WFRemoteExecutionRunRequest readMessageFromData:error:]";
          v54 = 2114;
          v55 = v48;
          _os_log_impl(&dword_1CA256000, v36, OS_LOG_TYPE_FAULT, "%s Failed to read single action execution from payload: %{public}@", buf, 0x16u);
        }

        if (error)
        {
          v38 = v48;
          v33 = 0;
          *error = v48;
        }

        else
        {
          v33 = 0;
        }
      }
    }

    else
    {
      v34 = getWFRemoteExecutionLogObject();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v53 = "[WFRemoteExecutionRunRequest readMessageFromData:error:]";
        v54 = 1024;
        LODWORD(v55) = payloadType;
        _os_log_impl(&dword_1CA256000, v34, OS_LOG_TYPE_FAULT, "%s Unsupported run request type: %i", buf, 0x12u);
      }

      if (!error)
      {
        v33 = 0;
LABEL_33:

        goto LABEL_34;
      }

      v35 = MEMORY[0x1E696ABC0];
      v58 = *MEMORY[0x1E696A578];
      v59[0] = @"Unsupported run request type";
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v59 forKeys:&v58 count:1];
      [v35 errorWithDomain:@"WFRemoteExecutionRequestErrorDomain" code:1 userInfo:v14];
      *error = v33 = 0;
    }

    goto LABEL_33;
  }

  v31 = getWFRemoteExecutionLogObject();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315394;
    v53 = "[WFRemoteExecutionRunRequest readMessageFromData:error:]";
    v54 = 2114;
    v55 = v11;
    _os_log_impl(&dword_1CA256000, v31, OS_LOG_TYPE_FAULT, "%s Failed to read run request protobuf, %{public}@", buf, 0x16u);
  }

  if (error)
  {
    v32 = v11;
    v33 = 0;
    *error = v11;
  }

  else
  {
    v33 = 0;
  }

LABEL_34:

  return v33;
}

- (void)inflateProcessedParametersData:(id)data fileCoordinator:(id)coordinator completion:(id)completion
{
  coordinatorCopy = coordinator;
  completionCopy = completion;
  v10 = MEMORY[0x1E695DF90];
  dataCopy = data;
  v12 = objc_alloc_init(v10);
  v13 = +[WFActionRegistry sharedRegistry];
  actionIdentifier = [(WFRemoteExecutionRunRequest *)self actionIdentifier];
  serializedParameters = [(WFRemoteExecutionRunRequest *)self serializedParameters];
  v16 = [v13 createActionWithIdentifier:actionIdentifier serializedParameters:serializedParameters];

  [v16 initializeParametersIfNecessary];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __89__WFRemoteExecutionRunRequest_inflateProcessedParametersData_fileCoordinator_completion___block_invoke;
  v23[3] = &unk_1E8376BF0;
  v24 = v12;
  v25 = coordinatorCopy;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __89__WFRemoteExecutionRunRequest_inflateProcessedParametersData_fileCoordinator_completion___block_invoke_207;
  v20[3] = &unk_1E837EE60;
  v21 = v24;
  v22 = completionCopy;
  v17 = v24;
  v18 = completionCopy;
  v19 = coordinatorCopy;
  [dataCopy if_enumerateAsynchronouslyInSequence:v23 completionHandler:v20];
}

void __89__WFRemoteExecutionRunRequest_inflateProcessedParametersData_fileCoordinator_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v8 = a2;
  v9 = a4;
  v10 = +[WFParameterValueRegistry registeredValueClasses];
  v11 = MEMORY[0x1E696ACD0];
  v12 = [v8 value];
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __89__WFRemoteExecutionRunRequest_inflateProcessedParametersData_fileCoordinator_completion___block_invoke_2;
  v19 = &unk_1E8376BC8;
  v20 = *(a1 + 32);
  v21 = v8;
  v22 = v9;
  v23 = a5;
  v13 = v9;
  v14 = v8;
  v15 = [v11 wf_securelyUnarchiveObjectWithData:v12 allowedClasses:v10 completionHandler:&v16];

  [*(a1 + 40) registerArchiver:{v15, v16, v17, v18, v19}];
}

void __89__WFRemoteExecutionRunRequest_inflateProcessedParametersData_fileCoordinator_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [*(a1 + 40) key];
    [v4 setObject:v3 forKey:v5];
  }

  else
  {
    v6 = getWFRemoteExecutionLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      v7 = [*(a1 + 40) key];
      v8 = 136315394;
      v9 = "[WFRemoteExecutionRunRequest inflateProcessedParametersData:fileCoordinator:completion:]_block_invoke_2";
      v10 = 2114;
      v11 = v7;
      _os_log_impl(&dword_1CA256000, v6, OS_LOG_TYPE_FAULT, "%s Reading processed parameter (%{public}@) failed", &v8, 0x16u);
    }

    **(a1 + 56) = 1;
  }

  (*(*(a1 + 48) + 16))();
}

- (void)inflateInputData:(id)data fileCoordinator:(id)coordinator completion:(id)completion
{
  coordinatorCopy = coordinator;
  completionCopy = completion;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __75__WFRemoteExecutionRunRequest_inflateInputData_fileCoordinator_completion___block_invoke;
  v13[3] = &unk_1E8376B78;
  v14 = coordinatorCopy;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __75__WFRemoteExecutionRunRequest_inflateInputData_fileCoordinator_completion___block_invoke_203;
  v11[3] = &unk_1E837F588;
  v12 = completionCopy;
  v9 = completionCopy;
  v10 = coordinatorCopy;
  [data if_mapAsynchronously:v13 completionHandler:v11];
}

void __75__WFRemoteExecutionRunRequest_inflateInputData_fileCoordinator_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = MEMORY[0x1E695DFD8];
  v8 = a2;
  v9 = [v7 setWithObject:objc_opt_class()];
  v10 = MEMORY[0x1E696ACD0];
  v11 = [v8 item];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __75__WFRemoteExecutionRunRequest_inflateInputData_fileCoordinator_completion___block_invoke_2;
  v14[3] = &unk_1E8376B50;
  v15 = v6;
  v12 = v6;
  v13 = [v10 wf_securelyUnarchiveObjectWithData:v11 allowedClasses:v9 completionHandler:v14];

  [*(a1 + 32) registerArchiver:v13];
}

void __75__WFRemoteExecutionRunRequest_inflateInputData_fileCoordinator_completion___block_invoke_203(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = MEMORY[0x1E6996D40];
  v6 = a3;
  v7 = [v5 collectionWithItems:a2];
  (*(v4 + 16))(v4, v7, v6);
}

uint64_t __75__WFRemoteExecutionRunRequest_inflateInputData_fileCoordinator_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = *(*(a1 + 32) + 16);

    return v3();
  }

  else
  {
    v5 = getWFRemoteExecutionLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v6 = 136315138;
      v7 = "[WFRemoteExecutionRunRequest inflateInputData:fileCoordinator:completion:]_block_invoke_2";
      _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_FAULT, "%s No content item", &v6, 0xCu);
    }

    return (*(*(a1 + 32) + 16))();
  }
}

- (void)inflateVariablesData:(id)data fileCoordinator:(id)coordinator completion:(id)completion
{
  coordinatorCopy = coordinator;
  completionCopy = completion;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __79__WFRemoteExecutionRunRequest_inflateVariablesData_fileCoordinator_completion___block_invoke;
  v13[3] = &unk_1E8376BA0;
  v14 = coordinatorCopy;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __79__WFRemoteExecutionRunRequest_inflateVariablesData_fileCoordinator_completion___block_invoke_2_201;
  v11[3] = &unk_1E837F588;
  v12 = completionCopy;
  v9 = completionCopy;
  v10 = coordinatorCopy;
  [data if_mapAsynchronously:v13 completionHandler:v11];
}

void __79__WFRemoteExecutionRunRequest_inflateVariablesData_fileCoordinator_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = [v6 items];

  if (v8)
  {
    v9 = [v6 items];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __79__WFRemoteExecutionRunRequest_inflateVariablesData_fileCoordinator_completion___block_invoke_2;
    v13[3] = &unk_1E8376B78;
    v14 = *(a1 + 32);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __79__WFRemoteExecutionRunRequest_inflateVariablesData_fileCoordinator_completion___block_invoke_196;
    v10[3] = &unk_1E837F020;
    v12 = v7;
    v11 = v6;
    [v9 if_mapAsynchronously:v13 completionHandler:v10];
  }

  else
  {
    (*(v7 + 2))(v7, 0, 0);
  }
}

void __79__WFRemoteExecutionRunRequest_inflateVariablesData_fileCoordinator_completion___block_invoke_2_201(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
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
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        v14 = [v13 value];
        v15 = [v13 key];
        [v7 setObject:v14 forKey:v15];
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  (*(*(a1 + 32) + 16))();
}

void __79__WFRemoteExecutionRunRequest_inflateVariablesData_fileCoordinator_completion___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = MEMORY[0x1E695DFD8];
  v8 = a2;
  v9 = [v7 setWithObject:objc_opt_class()];
  v10 = MEMORY[0x1E696ACD0];
  v11 = [v8 item];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __79__WFRemoteExecutionRunRequest_inflateVariablesData_fileCoordinator_completion___block_invoke_3;
  v14[3] = &unk_1E8376B50;
  v15 = v6;
  v12 = v6;
  v13 = [v10 wf_securelyUnarchiveObjectWithData:v11 allowedClasses:v9 completionHandler:v14];

  [*(a1 + 32) registerArchiver:v13];
}

void __79__WFRemoteExecutionRunRequest_inflateVariablesData_fileCoordinator_completion___block_invoke_196(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 40);
  v6 = a3;
  v7 = a2;
  v8 = [WFRemoteExecutionKeyValuePair alloc];
  v11 = [*(a1 + 32) key];
  v9 = [MEMORY[0x1E6996D40] collectionWithItems:v7];

  v10 = [(WFRemoteExecutionKeyValuePair *)v8 initWithKey:v11 value:v9];
  (*(v5 + 16))(v5, v10, v6);
}

uint64_t __79__WFRemoteExecutionRunRequest_inflateVariablesData_fileCoordinator_completion___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = *(*(a1 + 32) + 16);

    return v3();
  }

  else
  {
    v5 = getWFRemoteExecutionLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v6 = 136315138;
      v7 = "[WFRemoteExecutionRunRequest inflateVariablesData:fileCoordinator:completion:]_block_invoke_3";
      _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_FAULT, "%s No content item", &v6, 0xCu);
    }

    return (*(*(a1 + 32) + 16))();
  }
}

- (void)inflateWithFileCoordinator:(id)coordinator completion:(id)completion
{
  v40 = *MEMORY[0x1E69E9840];
  coordinatorCopy = coordinator;
  completionCopy = completion;
  v8 = getWFRemoteExecutionLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[WFRemoteExecutionRunRequest inflateWithFileCoordinator:completion:]";
    _os_log_impl(&dword_1CA256000, v8, OS_LOG_TYPE_INFO, "%s Inflating request", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__22356;
  v38 = __Block_byref_object_dispose__22357;
  v39 = 0;
  v9 = dispatch_group_create();
  variablesData = [(WFRemoteExecutionRunRequest *)self variablesData];

  if (variablesData)
  {
    v11 = getWFRemoteExecutionLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *v33 = 136315138;
      v34 = "[WFRemoteExecutionRunRequest inflateWithFileCoordinator:completion:]";
      _os_log_impl(&dword_1CA256000, v11, OS_LOG_TYPE_INFO, "%s Has variables data", v33, 0xCu);
    }

    dispatch_group_enter(v9);
    variablesData2 = [(WFRemoteExecutionRunRequest *)self variablesData];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __69__WFRemoteExecutionRunRequest_inflateWithFileCoordinator_completion___block_invoke;
    v30[3] = &unk_1E8376B00;
    v30[4] = self;
    p_buf = &buf;
    v31 = v9;
    [(WFRemoteExecutionRunRequest *)self inflateVariablesData:variablesData2 fileCoordinator:coordinatorCopy completion:v30];
  }

  inputData = [(WFRemoteExecutionRunRequest *)self inputData];

  if (inputData)
  {
    v14 = getWFRemoteExecutionLogObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *v33 = 136315138;
      v34 = "[WFRemoteExecutionRunRequest inflateWithFileCoordinator:completion:]";
      _os_log_impl(&dword_1CA256000, v14, OS_LOG_TYPE_INFO, "%s Has input data", v33, 0xCu);
    }

    dispatch_group_enter(v9);
    inputData2 = [(WFRemoteExecutionRunRequest *)self inputData];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __69__WFRemoteExecutionRunRequest_inflateWithFileCoordinator_completion___block_invoke_186;
    v27[3] = &unk_1E8376B28;
    v27[4] = self;
    v29 = &buf;
    v28 = v9;
    [(WFRemoteExecutionRunRequest *)self inflateInputData:inputData2 fileCoordinator:coordinatorCopy completion:v27];
  }

  processedParametersData = [(WFRemoteExecutionRunRequest *)self processedParametersData];

  if (processedParametersData)
  {
    v17 = getWFRemoteExecutionLogObject();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *v33 = 136315138;
      v34 = "[WFRemoteExecutionRunRequest inflateWithFileCoordinator:completion:]";
      _os_log_impl(&dword_1CA256000, v17, OS_LOG_TYPE_INFO, "%s Has processed parameters data", v33, 0xCu);
    }

    dispatch_group_enter(v9);
    processedParametersData2 = [(WFRemoteExecutionRunRequest *)self processedParametersData];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __69__WFRemoteExecutionRunRequest_inflateWithFileCoordinator_completion___block_invoke_188;
    v24[3] = &unk_1E8376B00;
    v24[4] = self;
    v26 = &buf;
    v25 = v9;
    [(WFRemoteExecutionRunRequest *)self inflateProcessedParametersData:processedParametersData2 fileCoordinator:coordinatorCopy completion:v24];
  }

  v19 = dispatch_get_global_queue(0, 0);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __69__WFRemoteExecutionRunRequest_inflateWithFileCoordinator_completion___block_invoke_189;
  v21[3] = &unk_1E837E9A8;
  v21[4] = self;
  v22 = completionCopy;
  v23 = &buf;
  v20 = completionCopy;
  dispatch_group_notify(v9, v19, v21);

  _Block_object_dispose(&buf, 8);
}

void __69__WFRemoteExecutionRunRequest_inflateWithFileCoordinator_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  v8 = getWFRemoteExecutionLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v11 = 136315394;
    v12 = "[WFRemoteExecutionRunRequest inflateWithFileCoordinator:completion:]_block_invoke";
    v13 = 2114;
    v14 = v6;
    _os_log_impl(&dword_1CA256000, v8, OS_LOG_TYPE_INFO, "%s Done with variables: %{public}@", &v11, 0x16u);
  }

  objc_storeStrong((*(a1 + 32) + 48), a2);
  v9 = *(a1 + 32);
  v10 = *(v9 + 80);
  *(v9 + 80) = 0;

  if (v7)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
  }

  dispatch_group_leave(*(a1 + 40));
}

void __69__WFRemoteExecutionRunRequest_inflateWithFileCoordinator_completion___block_invoke_186(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  v8 = getWFRemoteExecutionLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v11 = 136315394;
    v12 = "[WFRemoteExecutionRunRequest inflateWithFileCoordinator:completion:]_block_invoke";
    v13 = 2114;
    v14 = v6;
    _os_log_impl(&dword_1CA256000, v8, OS_LOG_TYPE_INFO, "%s Done with input: %{public}@", &v11, 0x16u);
  }

  objc_storeStrong((*(a1 + 32) + 72), a2);
  v9 = *(a1 + 32);
  v10 = *(v9 + 88);
  *(v9 + 88) = 0;

  if (v7)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
  }

  dispatch_group_leave(*(a1 + 40));
}

void __69__WFRemoteExecutionRunRequest_inflateWithFileCoordinator_completion___block_invoke_188(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  v8 = getWFRemoteExecutionLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v11 = 136315650;
    v12 = "[WFRemoteExecutionRunRequest inflateWithFileCoordinator:completion:]_block_invoke";
    v13 = 2114;
    v14 = v6;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&dword_1CA256000, v8, OS_LOG_TYPE_INFO, "%s Done with processedParameters: %{public}@, error: %@", &v11, 0x20u);
  }

  objc_storeStrong((*(a1 + 32) + 64), a2);
  v9 = *(a1 + 32);
  v10 = *(v9 + 96);
  *(v9 + 96) = 0;

  if (v7)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
  }

  dispatch_group_leave(*(a1 + 40));
}

uint64_t __69__WFRemoteExecutionRunRequest_inflateWithFileCoordinator_completion___block_invoke_189(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = getWFRemoteExecutionLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[WFRemoteExecutionRunRequest inflateWithFileCoordinator:completion:]_block_invoke";
    _os_log_impl(&dword_1CA256000, v2, OS_LOG_TYPE_INFO, "%s Finished inflating request", &v4, 0xCu);
  }

  return (*(*(a1 + 40) + 16))();
}

- (WFRemoteExecutionRunRequest)initWithAction:(id)action workflowControllerState:(id)state
{
  actionCopy = action;
  stateCopy = state;
  v9 = stateCopy;
  if (actionCopy)
  {
    if (stateCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFRemoteExecutionRunRequest.m" lineNumber:48 description:{@"Invalid parameter not satisfying: %@", @"action"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFRemoteExecutionRunRequest.m" lineNumber:49 description:{@"Invalid parameter not satisfying: %@", @"state"}];

LABEL_3:
  runningContext = [v9 runningContext];
  identifier = [runningContext identifier];

  if (!identifier)
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"WFRemoteExecutionRunRequest.m" lineNumber:50 description:{@"Invalid parameter not satisfying: %@", @"state.runningContext.identifier"}];
  }

  v39.receiver = self;
  v39.super_class = WFRemoteExecutionRunRequest;
  v12 = [(WFRemoteExecutionRequest *)&v39 init];
  if (v12)
  {
    v13 = MEMORY[0x1E696AEC0];
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    runningContext2 = [v9 runningContext];
    identifier2 = [runningContext2 identifier];
    identifier3 = [actionCopy identifier];
    v19 = [v13 stringWithFormat:@"%@.%@.%@.%lu", uUIDString, identifier2, identifier3, objc_msgSend(v9, "currentActionIndex")];
    [(WFRemoteExecutionRequest *)v12 setIdentifier:v19];

    identifier4 = [actionCopy identifier];
    actionIdentifier = v12->_actionIdentifier;
    v12->_actionIdentifier = identifier4;

    variables = [v9 variables];
    variables = v12->_variables;
    v12->_variables = variables;

    serializedParameters = [actionCopy serializedParameters];
    v25 = [serializedParameters mutableCopy];

    if (v25)
    {
      workflow = [actionCopy workflow];
      workflowID = [workflow workflowID];
      [(NSDictionary *)v25 setValue:workflowID forKey:@"workflowID"];
    }

    serializedParameters = v12->_serializedParameters;
    v12->_serializedParameters = v25;
    v29 = v25;

    currentProcessedParameters = [v9 currentProcessedParameters];
    processedParameters = v12->_processedParameters;
    v12->_processedParameters = currentProcessedParameters;

    currentInput = [v9 currentInput];
    input = v12->_input;
    v12->_input = currentInput;

    v34 = v12;
  }

  return v12;
}

- (WFRemoteExecutionRunRequest)initWithData:(id)data error:(id *)error
{
  v5.receiver = self;
  v5.super_class = WFRemoteExecutionRunRequest;
  return [(WFRemoteExecutionRequest *)&v5 initWithData:data error:error];
}

@end