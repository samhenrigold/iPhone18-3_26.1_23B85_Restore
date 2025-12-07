@interface WFRemoteExecutionRunRequestResponse
- (BOOL)readMessageFromData:(id)data error:(id *)error;
- (WFRemoteExecutionRunRequestResponse)initWithData:(id)data error:(id *)error;
- (WFRemoteExecutionRunRequestResponse)initWithRunRequestIdentifier:(id)identifier variables:(id)variables output:(id)output error:(id)error;
- (id)writeMessageToWriter:(id)writer error:(id *)error;
- (void)inflateOutputData:(id)data fileCoordinator:(id)coordinator completion:(id)completion;
- (void)inflateVariablesData:(id)data fileCoordinator:(id)coordinator completion:(id)completion;
- (void)inflateWithFileCoordinator:(id)coordinator completion:(id)completion;
@end

@implementation WFRemoteExecutionRunRequestResponse

- (id)writeMessageToWriter:(id)writer error:(id *)error
{
  v58 = *MEMORY[0x1E69E9840];
  writerCopy = writer;
  v5 = objc_opt_new();
  runRequestIdentifier = [(WFRemoteExecutionRunRequestResponse *)self runRequestIdentifier];
  [v5 setRunRequestIdentifier:runRequestIdentifier];

  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  variables = [(WFRemoteExecutionRunRequestResponse *)self variables];
  v55[0] = MEMORY[0x1E69E9820];
  v55[1] = 3221225472;
  v55[2] = __66__WFRemoteExecutionRunRequestResponse_writeMessageToWriter_error___block_invoke;
  v55[3] = &unk_1E8376C20;
  v55[4] = self;
  v9 = v7;
  v56 = v9;
  [variables enumerateKeysAndObjectsUsingBlock:v55];

  v46 = v9;
  v47 = v5;
  [v5 setVariablesDatas:v9];
  v50 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  output = [(WFRemoteExecutionRunRequestResponse *)self output];
  items = [output items];

  obj = items;
  v12 = [items countByEnumeratingWithState:&v51 objects:v57 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v52;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v52 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v51 + 1) + 8 * i);
        v17 = [WFRemoteExecutionFileCoder alloc];
        coordinator = [(WFRemoteExecutionRunRequestResponse *)self coordinator];
        identifier = [(WFRemoteExecutionRequest *)self identifier];
        v20 = [(WFRemoteExecutionFileCoder *)v17 initWithCoordinator:coordinator requestIdentifier:identifier];

        v21 = objc_opt_new();
        v22 = [MEMORY[0x1E696ACC8] wf_securelyArchivedDataWithRootObject:v16 fileCoder:v20];
        [v21 setItem:v22];

        [v21 setEncodingType:2];
        data = [v21 data];
        [v50 addObject:data];
      }

      v13 = [obj countByEnumeratingWithState:&v51 objects:v57 count:16];
    }

    while (v13);
  }

  [v47 setOutputDatas:v50];
  error = [(WFRemoteExecutionRunRequestResponse *)self error];

  if (error)
  {
    v25 = objc_opt_new();
    error2 = [(WFRemoteExecutionRunRequestResponse *)self error];
    [v25 setCode:{objc_msgSend(error2, "code")}];

    error3 = [(WFRemoteExecutionRunRequestResponse *)self error];
    domain = [error3 domain];
    [v25 setDomain:domain];

    error4 = [(WFRemoteExecutionRunRequestResponse *)self error];
    userInfo = [error4 userInfo];
    v31 = *MEMORY[0x1E696A578];
    v32 = [userInfo objectForKey:*MEMORY[0x1E696A578]];

    if (v32)
    {
      error5 = [(WFRemoteExecutionRunRequestResponse *)self error];
      userInfo2 = [error5 userInfo];
      v35 = [userInfo2 objectForKey:v31];
      [v25 setLocalizedDescription:v35];
    }

    error6 = [(WFRemoteExecutionRunRequestResponse *)self error];
    userInfo3 = [error6 userInfo];
    v38 = *MEMORY[0x1E696A588];
    v39 = [userInfo3 objectForKey:*MEMORY[0x1E696A588]];

    if (v39)
    {
      error7 = [(WFRemoteExecutionRunRequestResponse *)self error];
      userInfo4 = [error7 userInfo];
      v42 = [userInfo4 objectForKey:v38];
      [v25 setLocalizedFailureReason:v42];
    }

    data2 = [v25 data];
    [v47 setErrorData:data2];
  }

  [v47 writeTo:writerCopy];
  immutableData = [writerCopy immutableData];

  return immutableData;
}

void __66__WFRemoteExecutionRunRequestResponse_writeMessageToWriter_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_opt_new();
  v21 = v5;
  [v7 setKey:v5];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = [v6 items];
  v8 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v24;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v23 + 1) + 8 * i);
        v13 = [WFRemoteExecutionFileCoder alloc];
        v14 = [*(a1 + 32) coordinator];
        v15 = [*(a1 + 32) identifier];
        v16 = [(WFRemoteExecutionFileCoder *)v13 initWithCoordinator:v14 requestIdentifier:v15];

        v17 = objc_opt_new();
        [v17 setEncodingType:2];
        v18 = [MEMORY[0x1E696ACC8] wf_securelyArchivedDataWithRootObject:v12 fileCoder:v16];
        [v17 setItem:v18];

        [v7 addItems:v17];
      }

      v9 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v9);
  }

  v19 = *(a1 + 40);
  v20 = [v7 data];
  [v19 addObject:v20];
}

- (BOOL)readMessageFromData:(id)data error:(id *)error
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E69C65B8];
  dataCopy = data;
  v7 = [[v5 alloc] initWithData:dataCopy];

  v8 = objc_alloc_init(WFREPBRunRequestResponse);
  v20 = 0;
  v9 = [(PBCodable *)v8 readFrom:v7 error:&v20];
  v10 = v20;
  if (v9)
  {
    runRequestIdentifier = [(WFREPBRunRequestResponse *)v8 runRequestIdentifier];
    runRequestIdentifier = self->_runRequestIdentifier;
    self->_runRequestIdentifier = runRequestIdentifier;

    variablesDatas = [(WFREPBRunRequestResponse *)v8 variablesDatas];
    variablesData = self->_variablesData;
    self->_variablesData = variablesDatas;

    outputDatas = [(WFREPBRunRequestResponse *)v8 outputDatas];
    outputData = self->_outputData;
    self->_outputData = outputDatas;

    errorData = [(WFREPBRunRequestResponse *)v8 errorData];
    p_super = &self->_errorData->super;
    self->_errorData = errorData;
  }

  else
  {
    p_super = getWFRemoteExecutionLogObject();
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      v22 = "[WFRemoteExecutionRunRequestResponse readMessageFromData:error:]";
      v23 = 2114;
      v24 = v10;
      _os_log_impl(&dword_1CA256000, p_super, OS_LOG_TYPE_FAULT, "%s Failed to read run request response protobuf, %{public}@", buf, 0x16u);
    }
  }

  return v9;
}

- (void)inflateOutputData:(id)data fileCoordinator:(id)coordinator completion:(id)completion
{
  coordinatorCopy = coordinator;
  completionCopy = completion;
  v9 = [data if_map:&__block_literal_global_192];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __84__WFRemoteExecutionRunRequestResponse_inflateOutputData_fileCoordinator_completion___block_invoke_2;
  v14[3] = &unk_1E8376B78;
  v15 = coordinatorCopy;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __84__WFRemoteExecutionRunRequestResponse_inflateOutputData_fileCoordinator_completion___block_invoke_194;
  v12[3] = &unk_1E837F588;
  v13 = completionCopy;
  v10 = completionCopy;
  v11 = coordinatorCopy;
  [v9 if_mapAsynchronously:v14 completionHandler:v12];
}

void __84__WFRemoteExecutionRunRequestResponse_inflateOutputData_fileCoordinator_completion___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = MEMORY[0x1E695DFD8];
  v8 = a2;
  v9 = [v7 setWithObject:objc_opt_class()];
  v10 = MEMORY[0x1E696ACD0];
  v11 = [v8 item];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __84__WFRemoteExecutionRunRequestResponse_inflateOutputData_fileCoordinator_completion___block_invoke_3;
  v14[3] = &unk_1E8376B50;
  v15 = v6;
  v12 = v6;
  v13 = [v10 wf_securelyUnarchiveObjectWithData:v11 allowedClasses:v9 completionHandler:v14];

  [*(a1 + 32) registerArchiver:v13];
}

void __84__WFRemoteExecutionRunRequestResponse_inflateOutputData_fileCoordinator_completion___block_invoke_194(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = MEMORY[0x1E6996D40];
  v6 = a3;
  v7 = [v5 collectionWithItems:a2];
  (*(v4 + 16))(v4, v7, v6);
}

uint64_t __84__WFRemoteExecutionRunRequestResponse_inflateOutputData_fileCoordinator_completion___block_invoke_3(uint64_t a1, uint64_t a2)
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
      v7 = "[WFRemoteExecutionRunRequestResponse inflateOutputData:fileCoordinator:completion:]_block_invoke_3";
      _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_FAULT, "%s No content item", &v6, 0xCu);
    }

    return (*(*(a1 + 32) + 16))();
  }
}

WFREPBContentItem *__84__WFRemoteExecutionRunRequestResponse_inflateOutputData_fileCoordinator_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[WFREPBContentItem alloc] initWithData:v2];

  return v3;
}

- (void)inflateVariablesData:(id)data fileCoordinator:(id)coordinator completion:(id)completion
{
  coordinatorCopy = coordinator;
  completionCopy = completion;
  v9 = [data if_map:&__block_literal_global_2691];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __87__WFRemoteExecutionRunRequestResponse_inflateVariablesData_fileCoordinator_completion___block_invoke_2;
  v14[3] = &unk_1E8376BA0;
  v15 = coordinatorCopy;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __87__WFRemoteExecutionRunRequestResponse_inflateVariablesData_fileCoordinator_completion___block_invoke_2_189;
  v12[3] = &unk_1E837F588;
  v13 = completionCopy;
  v10 = completionCopy;
  v11 = coordinatorCopy;
  [v9 if_mapAsynchronously:v14 completionHandler:v12];
}

void __87__WFRemoteExecutionRunRequestResponse_inflateVariablesData_fileCoordinator_completion___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = [v6 items];

  if (!v8)
  {
    (*(v7 + 2))(v7, 0, 0);
  }

  v9 = [v6 items];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __87__WFRemoteExecutionRunRequestResponse_inflateVariablesData_fileCoordinator_completion___block_invoke_3;
  v15[3] = &unk_1E8376B78;
  v16 = *(a1 + 32);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __87__WFRemoteExecutionRunRequestResponse_inflateVariablesData_fileCoordinator_completion___block_invoke_184;
  v12[3] = &unk_1E837F020;
  v13 = v6;
  v14 = v7;
  v10 = v6;
  v11 = v7;
  [v9 if_mapAsynchronously:v15 completionHandler:v12];
}

void __87__WFRemoteExecutionRunRequestResponse_inflateVariablesData_fileCoordinator_completion___block_invoke_2_189(uint64_t a1, void *a2, void *a3)
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

void __87__WFRemoteExecutionRunRequestResponse_inflateVariablesData_fileCoordinator_completion___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = MEMORY[0x1E695DFD8];
  v8 = a2;
  v9 = [v7 setWithObject:objc_opt_class()];
  v10 = MEMORY[0x1E696ACD0];
  v11 = [v8 item];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __87__WFRemoteExecutionRunRequestResponse_inflateVariablesData_fileCoordinator_completion___block_invoke_4;
  v14[3] = &unk_1E8376B50;
  v15 = v6;
  v12 = v6;
  v13 = [v10 wf_securelyUnarchiveObjectWithData:v11 allowedClasses:v9 completionHandler:v14];

  [*(a1 + 32) registerArchiver:v13];
}

void __87__WFRemoteExecutionRunRequestResponse_inflateVariablesData_fileCoordinator_completion___block_invoke_184(uint64_t a1, void *a2, void *a3)
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

uint64_t __87__WFRemoteExecutionRunRequestResponse_inflateVariablesData_fileCoordinator_completion___block_invoke_4(uint64_t a1, uint64_t a2)
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
      v7 = "[WFRemoteExecutionRunRequestResponse inflateVariablesData:fileCoordinator:completion:]_block_invoke_4";
      _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_FAULT, "%s No content item", &v6, 0xCu);
    }

    return (*(*(a1 + 32) + 16))();
  }
}

WFREPBVariable *__87__WFRemoteExecutionRunRequestResponse_inflateVariablesData_fileCoordinator_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[WFREPBVariable alloc] initWithData:v2];

  return v3;
}

- (void)inflateWithFileCoordinator:(id)coordinator completion:(id)completion
{
  coordinatorCopy = coordinator;
  completionCopy = completion;
  v43[0] = 0;
  v43[1] = v43;
  v43[2] = 0x3032000000;
  v43[3] = __Block_byref_object_copy_;
  v43[4] = __Block_byref_object_dispose_;
  v44 = 0;
  v9 = dispatch_group_create();
  variablesData = [(WFRemoteExecutionRunRequestResponse *)self variablesData];

  if (variablesData)
  {
    dispatch_group_enter(v9);
    variablesData2 = [(WFRemoteExecutionRunRequestResponse *)self variablesData];
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __77__WFRemoteExecutionRunRequestResponse_inflateWithFileCoordinator_completion___block_invoke;
    v40[3] = &unk_1E8376B00;
    v40[4] = self;
    v42 = v43;
    v41 = v9;
    [(WFRemoteExecutionRunRequestResponse *)self inflateVariablesData:variablesData2 fileCoordinator:coordinatorCopy completion:v40];
  }

  outputData = [(WFRemoteExecutionRunRequestResponse *)self outputData];

  if (outputData)
  {
    dispatch_group_enter(v9);
    outputData2 = [(WFRemoteExecutionRunRequestResponse *)self outputData];
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __77__WFRemoteExecutionRunRequestResponse_inflateWithFileCoordinator_completion___block_invoke_2;
    v37[3] = &unk_1E8376B28;
    v37[4] = self;
    v39 = v43;
    v38 = v9;
    [(WFRemoteExecutionRunRequestResponse *)self inflateOutputData:outputData2 fileCoordinator:coordinatorCopy completion:v37];
  }

  errorData = [(WFRemoteExecutionRunRequestResponse *)self errorData];

  if (errorData)
  {
    v15 = [WFREPBError alloc];
    errorData2 = [(WFRemoteExecutionRunRequestResponse *)self errorData];
    v17 = [(WFREPBError *)v15 initWithData:errorData2];

    localizedDescription = [(WFREPBError *)v17 localizedDescription];
    v19 = [localizedDescription length];
    if (v19 || (-[WFREPBError localizedFailureReason](v17, "localizedFailureReason"), v4 = objc_claimAutoreleasedReturnValue(), [v4 length]))
    {
      v20 = objc_opt_new();
      if (v19)
      {
LABEL_12:

        localizedDescription2 = [(WFREPBError *)v17 localizedDescription];
        v22 = [localizedDescription2 length];

        if (v22)
        {
          localizedDescription3 = [(WFREPBError *)v17 localizedDescription];
          [v20 setObject:localizedDescription3 forKey:*MEMORY[0x1E696A578]];
        }

        localizedFailureReason = [(WFREPBError *)v17 localizedFailureReason];
        v25 = [localizedFailureReason length];

        if (v25)
        {
          localizedFailureReason2 = [(WFREPBError *)v17 localizedFailureReason];
          [v20 setObject:localizedFailureReason2 forKey:*MEMORY[0x1E696A588]];
        }

        v27 = MEMORY[0x1E696ABC0];
        domain = [(WFREPBError *)v17 domain];
        v29 = [v27 errorWithDomain:domain code:-[WFREPBError code](v17 userInfo:{"code"), v20}];
        error = self->_error;
        self->_error = v29;

        errorData = self->_errorData;
        self->_errorData = 0;

        goto LABEL_17;
      }
    }

    else
    {
      v20 = 0;
    }

    goto LABEL_12;
  }

LABEL_17:
  v32 = dispatch_get_global_queue(0, 0);
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __77__WFRemoteExecutionRunRequestResponse_inflateWithFileCoordinator_completion___block_invoke_3;
  v34[3] = &unk_1E837E9A8;
  v34[4] = self;
  v35 = completionCopy;
  v36 = v43;
  v33 = completionCopy;
  dispatch_group_notify(v9, v32, v34);

  _Block_object_dispose(v43, 8);
}

void __77__WFRemoteExecutionRunRequestResponse_inflateWithFileCoordinator_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v6 = a3;
  objc_storeStrong((*(a1 + 32) + 40), a2);
  v7 = *(a1 + 32);
  v8 = *(v7 + 64);
  *(v7 + 64) = 0;

  if (v6)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
  }

  dispatch_group_leave(*(a1 + 40));
}

void __77__WFRemoteExecutionRunRequestResponse_inflateWithFileCoordinator_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v6 = a3;
  objc_storeStrong((*(a1 + 32) + 48), a2);
  v7 = *(a1 + 32);
  v8 = *(v7 + 72);
  *(v7 + 72) = 0;

  if (v6)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
  }

  dispatch_group_leave(*(a1 + 40));
}

- (WFRemoteExecutionRunRequestResponse)initWithRunRequestIdentifier:(id)identifier variables:(id)variables output:(id)output error:(id)error
{
  identifierCopy = identifier;
  variablesCopy = variables;
  outputCopy = output;
  errorCopy = error;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFRemoteExecutionRunRequestResponse.m" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"runRequestIdentifier"}];
  }

  v21.receiver = self;
  v21.super_class = WFRemoteExecutionRunRequestResponse;
  v16 = [(WFRemoteExecutionRequest *)&v21 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_runRequestIdentifier, identifier);
    objc_storeStrong(&v17->_variables, variables);
    objc_storeStrong(&v17->_output, output);
    objc_storeStrong(&v17->_error, error);
    v18 = v17;
  }

  return v17;
}

- (WFRemoteExecutionRunRequestResponse)initWithData:(id)data error:(id *)error
{
  v5.receiver = self;
  v5.super_class = WFRemoteExecutionRunRequestResponse;
  return [(WFRemoteExecutionRequest *)&v5 initWithData:data error:error];
}

@end