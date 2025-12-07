@interface SESRKESession
- (BOOL)continueExecutingRKEFunction:(id)function action:(id)action arbitraryData:(id)data readerIdentifier:(id)identifier error:(id *)error;
- (BOOL)isPassiveEntryAvailable:(id)available isAvailable:(BOOL *)isAvailable error:(id *)error;
- (BOOL)sendPassthroughMessage:(id)message readerIdentifier:(id)identifier error:(id *)error;
- (SESRKESessionContinuationDelegate)continuationDelegate;
- (SESRKESessionDelegate)delegate;
- (id)cancelRKEFunction:(id)function readerIdentifier:(id)identifier;
- (id)getVehicleReports:(id *)reports;
- (id)sign:(id)sign readerIdentifier:(id)identifier error:(id *)error;
- (void)didCreateKey:(id)key forVehicle:(id)vehicle;
- (void)didEndUnexpectedly:(id)unexpectedly;
- (void)didInvalidateWithError:(id)error;
- (void)didReceiveContinuationRequestFor:(id)for actionIdentifier:(id)identifier arbitraryData:(id)data fromVehicle:(id)vehicle;
- (void)didReceivePassthroughMessage:(id)message fromVehicle:(id)vehicle;
- (void)didStartSession:(id)session;
- (void)sendEvent:(id)event fromVehicle:(id)vehicle;
- (void)sendRKEFunction:(id)function action:(id)action readerIdentifier:(id)identifier authorization:(id)authorization isEnduring:(BOOL)enduring isHandlingExternal:(BOOL)external completion:(id)completion;
@end

@implementation SESRKESession

- (BOOL)isPassiveEntryAvailable:(id)available isAvailable:(BOOL *)isAvailable error:(id *)error
{
  availableCopy = available;
  if ([(SESSession *)self state]== 1)
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v23 = 0;
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__10;
    v18 = __Block_byref_object_dispose__10;
    v19 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __59__SESRKESession_isPassiveEntryAvailable_isAvailable_error___block_invoke;
    v13[3] = &unk_1E82D1170;
    v13[4] = &v14;
    v9 = [(SESSession *)self synchronousRemoteObjectProxyWithErrorHandler:v13];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __59__SESRKESession_isPassiveEntryAvailable_isAvailable_error___block_invoke_2;
    v12[3] = &unk_1E82D0DF0;
    v12[4] = &v20;
    v12[5] = &v14;
    [v9 isPassiveEntryAvailable:availableCopy reply:v12];

    if (isAvailable)
    {
      *isAvailable = *(v21 + 24);
    }

    if (error)
    {
      *error = v15[5];
    }

    LOBYTE(error) = v15[5] == 0;
    _Block_object_dispose(&v14, 8);

    _Block_object_dispose(&v20, 8);
  }

  else if (error)
  {
    v10 = SESDefaultLogObject();
    *error = SESCreateAndLogError();

    LOBYTE(error) = 0;
  }

  return error;
}

- (void)sendRKEFunction:(id)function action:(id)action readerIdentifier:(id)identifier authorization:(id)authorization isEnduring:(BOOL)enduring isHandlingExternal:(BOOL)external completion:(id)completion
{
  externalCopy = external;
  enduringCopy = enduring;
  v34 = *MEMORY[0x1E69E9840];
  functionCopy = function;
  actionCopy = action;
  identifierCopy = identifier;
  authorizationCopy = authorization;
  completionCopy = completion;
  v20 = SESDefaultLogObject();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    *buf = 67110402;
    *&buf[4] = [functionCopy unsignedIntValue];
    LOWORD(v30) = 1024;
    *(&v30 + 2) = [actionCopy unsignedIntValue];
    HIWORD(v30) = 2112;
    v31 = identifierCopy;
    LOWORD(v32) = 1024;
    *(&v32 + 2) = authorizationCopy != 0;
    HIWORD(v32) = 1024;
    LODWORD(v33) = enduringCopy;
    WORD2(v33) = 1024;
    *(&v33 + 6) = externalCopy;
    _os_log_impl(&dword_1C7B9A000, v20, OS_LOG_TYPE_INFO, "sendRKEFunction 0x%X rkeAction 0x%X readerIdentifier %@ authorization %d isEnduring %d isHandlingExternal %d", buf, 0x2Au);
  }

  if ([(SESSession *)self state]== 1)
  {
    *buf = 0;
    v30 = buf;
    v31 = 0x3032000000;
    v32 = __Block_byref_object_copy__10;
    *&v33 = __Block_byref_object_dispose__10;
    *(&v33 + 1) = 0;
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __112__SESRKESession_sendRKEFunction_action_readerIdentifier_authorization_isEnduring_isHandlingExternal_completion___block_invoke;
    v26[3] = &unk_1E82D1170;
    v26[4] = buf;
    v21 = [(SESSession *)self remoteObjectProxyWithErrorHandler:v26];
    [v21 sendRKEFunction:objc_msgSend(functionCopy action:"unsignedShortValue") readerIdentifier:objc_msgSend(actionCopy authorization:"unsignedCharValue") isEnduring:identifierCopy isHandlingExternal:authorizationCopy completion:{enduringCopy, externalCopy, completionCopy}];

    if (*(v30 + 5))
    {
      v22 = SESDefaultLogObject();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = *(v30 + 5);
        *v27 = 138412290;
        v28 = v23;
        _os_log_impl(&dword_1C7B9A000, v22, OS_LOG_TYPE_ERROR, "%@", v27, 0xCu);
      }

      (*(completionCopy + 2))(completionCopy, 0, *(v30 + 5));
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v24 = SESDefaultLogObject();
    v25 = SESCreateAndLogError();
    (*(completionCopy + 2))(completionCopy, 0, v25);
  }
}

- (id)cancelRKEFunction:(id)function readerIdentifier:(id)identifier
{
  v35 = *MEMORY[0x1E69E9840];
  functionCopy = function;
  identifierCopy = identifier;
  v8 = SESDefaultLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    *&buf[4] = [functionCopy unsignedIntValue];
    _os_log_impl(&dword_1C7B9A000, v8, OS_LOG_TYPE_INFO, "cancelRKEFunction 0x%X", buf, 8u);
  }

  if ([(SESSession *)self state]== 1)
  {
    *buf = 0;
    v30 = buf;
    v31 = 0x3032000000;
    v32 = __Block_byref_object_copy__10;
    v33 = __Block_byref_object_dispose__10;
    v34 = 0;
    v23 = 0;
    v24 = &v23;
    v25 = 0x2020000000;
    v26 = 0;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __52__SESRKESession_cancelRKEFunction_readerIdentifier___block_invoke;
    v22[3] = &unk_1E82D1170;
    v22[4] = buf;
    v9 = [(SESSession *)self synchronousRemoteObjectProxyWithErrorHandler:v22];
    unsignedShortValue = [functionCopy unsignedShortValue];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __52__SESRKESession_cancelRKEFunction_readerIdentifier___block_invoke_2;
    v21[3] = &unk_1E82D0DF0;
    v21[4] = &v23;
    v21[5] = buf;
    [v9 cancelRKEFunction:unsignedShortValue readerIdentifier:identifierCopy reply:v21];

    v11 = v30;
    if ((v24[3] & 1) == 0 && !*(v30 + 5))
    {
      v12 = SESDefaultLogObject();
      v13 = SESCreateAndLogError();
      v14 = *(v30 + 5);
      *(v30 + 5) = v13;

      v11 = v30;
    }

    v15 = *(v11 + 5);
    if (v15)
    {
      v16 = SESDefaultLogObject();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = *(v30 + 5);
        *v27 = 138412290;
        v28 = v17;
        _os_log_impl(&dword_1C7B9A000, v16, OS_LOG_TYPE_ERROR, "%@", v27, 0xCu);
      }

      v15 = *(v30 + 5);
    }

    v18 = v15;
    _Block_object_dispose(&v23, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v19 = SESDefaultLogObject();
    v18 = SESCreateAndLogError();
  }

  return v18;
}

- (BOOL)continueExecutingRKEFunction:(id)function action:(id)action arbitraryData:(id)data readerIdentifier:(id)identifier error:(id *)error
{
  v37 = *MEMORY[0x1E69E9840];
  functionCopy = function;
  actionCopy = action;
  dataCopy = data;
  identifierCopy = identifier;
  v16 = SESDefaultLogObject();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    *buf = 67109890;
    *&buf[4] = [functionCopy unsignedIntValue];
    LOWORD(v33) = 1024;
    *(&v33 + 2) = [actionCopy unsignedIntValue];
    HIWORD(v33) = 1024;
    LODWORD(v34) = dataCopy != 0;
    WORD2(v34) = 2112;
    *(&v34 + 6) = identifierCopy;
    _os_log_impl(&dword_1C7B9A000, v16, OS_LOG_TYPE_INFO, "continueExecutingRKEFunction 0x%X rkeAction 0x%X arbitraryData %d readerIdentifier %@", buf, 0x1Eu);
  }

  if ([(SESSession *)self state]== 1)
  {
    *buf = 0;
    v33 = buf;
    *&v34 = 0x3032000000;
    *(&v34 + 1) = __Block_byref_object_copy__10;
    v35 = __Block_byref_object_dispose__10;
    v36 = 0;
    v28 = 0;
    v29 = &v28;
    v30 = 0x2020000000;
    v31 = 0;
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __90__SESRKESession_continueExecutingRKEFunction_action_arbitraryData_readerIdentifier_error___block_invoke;
    v27[3] = &unk_1E82D1170;
    v27[4] = buf;
    v17 = [(SESSession *)self synchronousRemoteObjectProxyWithErrorHandler:v27];
    unsignedShortValue = [functionCopy unsignedShortValue];
    unsignedCharValue = [actionCopy unsignedCharValue];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __90__SESRKESession_continueExecutingRKEFunction_action_arbitraryData_readerIdentifier_error___block_invoke_2;
    v26[3] = &unk_1E82D0DF0;
    v26[4] = &v28;
    v26[5] = buf;
    [v17 continueExecutingRKEFunction:unsignedShortValue action:unsignedCharValue arbitraryData:dataCopy readerIdentifier:identifierCopy reply:v26];

    v20 = v33;
    if ((v29[3] & 1) != 0 || *(v33 + 5))
    {
      if (!error)
      {
LABEL_8:
        LOBYTE(error) = *(v20 + 5) == 0;
        _Block_object_dispose(&v28, 8);
        _Block_object_dispose(buf, 8);

        goto LABEL_11;
      }
    }

    else
    {
      v23 = SESDefaultLogObject();
      v24 = SESCreateAndLogError();
      v25 = *(v33 + 5);
      *(v33 + 5) = v24;

      v20 = v33;
      if (!error)
      {
        goto LABEL_8;
      }
    }

    *error = *(v20 + 5);
    v20 = v33;
    goto LABEL_8;
  }

  if (error)
  {
    v21 = SESDefaultLogObject();
    *error = SESCreateAndLogError();

    LOBYTE(error) = 0;
  }

LABEL_11:

  return error;
}

- (BOOL)sendPassthroughMessage:(id)message readerIdentifier:(id)identifier error:(id *)error
{
  v35 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  identifierCopy = identifier;
  v10 = SESDefaultLogObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C7B9A000, v10, OS_LOG_TYPE_INFO, "sendPassthroughMessage", buf, 2u);
  }

  if ([(SESSession *)self state]== 1)
  {
    if ([messageCopy length] < 0x10000)
    {
      *buf = 0;
      v28 = buf;
      v29 = 0x3032000000;
      v30 = __Block_byref_object_copy__10;
      v31 = __Block_byref_object_dispose__10;
      v32 = 0;
      v23 = 0;
      v24 = &v23;
      v25 = 0x2020000000;
      v26 = 0;
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __63__SESRKESession_sendPassthroughMessage_readerIdentifier_error___block_invoke;
      v22[3] = &unk_1E82D1170;
      v22[4] = buf;
      v13 = [(SESSession *)self synchronousRemoteObjectProxyWithErrorHandler:v22];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __63__SESRKESession_sendPassthroughMessage_readerIdentifier_error___block_invoke_2;
      v21[3] = &unk_1E82D0DF0;
      v21[4] = &v23;
      v21[5] = buf;
      [v13 sendPassthroughMessage:messageCopy readerIdentifier:identifierCopy reply:v21];

      v14 = v28;
      if ((v24[3] & 1) == 0 && !*(v28 + 5))
      {
        v15 = SESDefaultLogObject();
        v16 = SESCreateAndLogError();
        v17 = *(v28 + 5);
        *(v28 + 5) = v16;

        v14 = v28;
      }

      if (*(v14 + 5))
      {
        v18 = SESDefaultLogObject();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v19 = *(v28 + 5);
          *v33 = 138412290;
          v34 = v19;
          _os_log_impl(&dword_1C7B9A000, v18, OS_LOG_TYPE_ERROR, "%@", v33, 0xCu);
        }

        v14 = v28;
      }

      if (error)
      {
        *error = *(v14 + 5);
        v14 = v28;
      }

      LOBYTE(error) = *(v14 + 5) == 0;
      _Block_object_dispose(&v23, 8);
      _Block_object_dispose(buf, 8);
    }

    else if (error)
    {
      v11 = SESDefaultLogObject();
      [messageCopy length];
      *error = SESCreateAndLogError();

LABEL_9:
      LOBYTE(error) = 0;
    }
  }

  else if (error)
  {
    v12 = SESDefaultLogObject();
    *error = SESCreateAndLogError();

    goto LABEL_9;
  }

  return error;
}

- (id)getVehicleReports:(id *)reports
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = SESDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C7B9A000, v5, OS_LOG_TYPE_INFO, "getVehicleReports", buf, 2u);
  }

  if ([(SESSession *)self state]== 1)
  {
    *buf = 0;
    v24 = buf;
    v25 = 0x3032000000;
    v26 = __Block_byref_object_copy__10;
    v27 = __Block_byref_object_dispose__10;
    v28 = 0;
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy__10;
    v21 = __Block_byref_object_dispose__10;
    v22 = 0;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __35__SESRKESession_getVehicleReports___block_invoke;
    v16[3] = &unk_1E82D1170;
    v16[4] = buf;
    v6 = [(SESSession *)self synchronousRemoteObjectProxyWithErrorHandler:v16];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __35__SESRKESession_getVehicleReports___block_invoke_2;
    v15[3] = &unk_1E82D1198;
    v15[4] = &v17;
    v15[5] = buf;
    [v6 getVehicleReports:v15];

    v7 = v24;
    if (!v18[5] && !*(v24 + 5))
    {
      v8 = SESDefaultLogObject();
      v9 = SESCreateAndLogError();
      v10 = *(v24 + 5);
      *(v24 + 5) = v9;

      v7 = v24;
    }

    if (*(v7 + 5))
    {
      v11 = SESDefaultLogObject();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = *(v24 + 5);
        *v29 = 138412290;
        v30 = v12;
        _os_log_impl(&dword_1C7B9A000, v11, OS_LOG_TYPE_ERROR, "%@", v29, 0xCu);
      }
    }

    if (reports)
    {
      *reports = *(v24 + 5);
    }

    reports = v18[5];
    _Block_object_dispose(&v17, 8);

    _Block_object_dispose(buf, 8);
  }

  else if (reports)
  {
    v13 = SESDefaultLogObject();
    *reports = SESCreateAndLogError();

    reports = 0;
  }

  return reports;
}

void __35__SESRKESession_getVehicleReports___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (id)sign:(id)sign readerIdentifier:(id)identifier error:(id *)error
{
  v38 = *MEMORY[0x1E69E9840];
  signCopy = sign;
  identifierCopy = identifier;
  v10 = SESDefaultLogObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C7B9A000, v10, OS_LOG_TYPE_INFO, "sign", buf, 2u);
  }

  if ([(SESSession *)self state]== 1)
  {
    hexStringAsData = [identifierCopy hexStringAsData];
    if (hexStringAsData)
    {
      *buf = 0;
      v31 = buf;
      v32 = 0x3032000000;
      v33 = __Block_byref_object_copy__10;
      v34 = __Block_byref_object_dispose__10;
      v35 = 0;
      v24 = 0;
      v25 = &v24;
      v26 = 0x3032000000;
      v27 = __Block_byref_object_copy__10;
      v28 = __Block_byref_object_dispose__10;
      v29 = 0;
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __45__SESRKESession_sign_readerIdentifier_error___block_invoke;
      v23[3] = &unk_1E82D1170;
      v23[4] = buf;
      v12 = [(SESSession *)self synchronousRemoteObjectProxyWithErrorHandler:v23];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __45__SESRKESession_sign_readerIdentifier_error___block_invoke_2;
      v22[3] = &unk_1E82D17E0;
      v22[4] = &v24;
      v22[5] = buf;
      [v12 sign:signCopy readerIdentifier:hexStringAsData reply:v22];

      v13 = v31;
      if (!v25[5] && !*(v31 + 5))
      {
        v14 = SESDefaultLogObject();
        v15 = SESCreateAndLogError();
        v16 = *(v31 + 5);
        *(v31 + 5) = v15;

        v13 = v31;
      }

      if (*(v13 + 5))
      {
        v17 = SESDefaultLogObject();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v18 = *(v31 + 5);
          *v36 = 138412290;
          v37 = v18;
          _os_log_impl(&dword_1C7B9A000, v17, OS_LOG_TYPE_ERROR, "%@", v36, 0xCu);
        }
      }

      if (error)
      {
        *error = *(v31 + 5);
      }

      v19 = v25[5];
      _Block_object_dispose(&v24, 8);

      _Block_object_dispose(buf, 8);
    }

    else
    {
      if (error)
      {
        v20 = SESDefaultLogObject();
        *error = SESCreateAndLogError();
      }

      v19 = 0;
    }
  }

  else
  {
    if (!error)
    {
      v19 = 0;
      goto LABEL_22;
    }

    hexStringAsData = SESDefaultLogObject();
    SESCreateAndLogError();
    *error = v19 = 0;
  }

LABEL_22:

  return v19;
}

void __45__SESRKESession_sign_readerIdentifier_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (void)didStartSession:(id)session
{
  v3.receiver = self;
  v3.super_class = SESRKESession;
  [(SESSession *)&v3 didStartSession:session];
}

- (void)didEndUnexpectedly:(id)unexpectedly
{
  unexpectedlyCopy = unexpectedly;
  [(SESRKESession *)self didInvalidateWithError:unexpectedlyCopy];
  v5.receiver = self;
  v5.super_class = SESRKESession;
  [(SESSession *)&v5 didEndUnexpectedly:unexpectedlyCopy];
}

- (void)didInvalidateWithError:(id)error
{
  errorCopy = error;
  queue = [(SESSession *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__SESRKESession_didInvalidateWithError___block_invoke;
  v7[3] = &unk_1E82D11C0;
  v7[4] = self;
  v8 = errorCopy;
  v6 = errorCopy;
  dispatch_async(queue, v7);
}

void __40__SESRKESession_didInvalidateWithError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 sesSession:*(a1 + 32) didInvalidateWithError:*(a1 + 40)];
}

- (void)didCreateKey:(id)key forVehicle:(id)vehicle
{
  keyCopy = key;
  vehicleCopy = vehicle;
  queue = [(SESSession *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__SESRKESession_didCreateKey_forVehicle___block_invoke;
  block[3] = &unk_1E82D0CF8;
  block[4] = self;
  v12 = keyCopy;
  v13 = vehicleCopy;
  v9 = vehicleCopy;
  v10 = keyCopy;
  dispatch_async(queue, block);
}

void __41__SESRKESession_didCreateKey_forVehicle___block_invoke(id *a1)
{
  v5 = [a1[4] delegate];
  v2 = a1[4];
  v3 = [a1[5] asHexString];
  v4 = [a1[6] asHexString];
  [v5 sesSession:v2 didCreateKey:v3 forVehicle:v4];
}

- (void)sendEvent:(id)event fromVehicle:(id)vehicle
{
  eventCopy = event;
  vehicleCopy = vehicle;
  if ([(SESSession *)self state]== 1)
  {
    queue = [(SESSession *)self queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __39__SESRKESession_sendEvent_fromVehicle___block_invoke;
    block[3] = &unk_1E82D0CF8;
    block[4] = self;
    v11 = eventCopy;
    v12 = vehicleCopy;
    dispatch_async(queue, block);
  }

  else
  {
    v9 = SESDefaultLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C7B9A000, v9, OS_LOG_TYPE_INFO, "Dropping event while no active session", buf, 2u);
    }
  }
}

void __39__SESRKESession_sendEvent_fromVehicle___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) asHexString];
  [v5 sesSession:v2 event:v3 fromVehicle:v4];
}

- (void)didReceivePassthroughMessage:(id)message fromVehicle:(id)vehicle
{
  messageCopy = message;
  vehicleCopy = vehicle;
  if ([(SESSession *)self state]== 1)
  {
    queue = [(SESSession *)self queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __58__SESRKESession_didReceivePassthroughMessage_fromVehicle___block_invoke;
    block[3] = &unk_1E82D0CF8;
    block[4] = self;
    v11 = messageCopy;
    v12 = vehicleCopy;
    dispatch_async(queue, block);
  }

  else
  {
    v9 = SESDefaultLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C7B9A000, v9, OS_LOG_TYPE_INFO, "Dropping passthrough message while no active session", buf, 2u);
    }
  }
}

void __58__SESRKESession_didReceivePassthroughMessage_fromVehicle___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) asHexString];
  [v5 sesSession:v2 didReceivePassthroughMessage:v3 fromVehicle:v4];
}

- (void)didReceiveContinuationRequestFor:(id)for actionIdentifier:(id)identifier arbitraryData:(id)data fromVehicle:(id)vehicle
{
  forCopy = for;
  identifierCopy = identifier;
  dataCopy = data;
  vehicleCopy = vehicle;
  if ([(SESSession *)self state]== 1)
  {
    queue = [(SESSession *)self queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __93__SESRKESession_didReceiveContinuationRequestFor_actionIdentifier_arbitraryData_fromVehicle___block_invoke;
    block[3] = &unk_1E82D1808;
    block[4] = self;
    v17 = forCopy;
    v18 = identifierCopy;
    v19 = dataCopy;
    v20 = vehicleCopy;
    dispatch_async(queue, block);
  }

  else
  {
    v15 = SESDefaultLogObject();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C7B9A000, v15, OS_LOG_TYPE_INFO, "Dropping confirmation request while no active session", buf, 2u);
    }
  }
}

void __93__SESRKESession_didReceiveContinuationRequestFor_actionIdentifier_arbitraryData_fromVehicle___block_invoke(uint64_t a1)
{
  v7 = [*(a1 + 32) continuationDelegate];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = [*(a1 + 64) asHexString];
  [v7 sesSession:v2 didReceiveContinuationRequestFor:v3 actionIdentifier:v4 arbitraryData:v5 fromVehicle:v6];
}

- (SESRKESessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SESRKESessionContinuationDelegate)continuationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_continuationDelegate);

  return WeakRetained;
}

@end