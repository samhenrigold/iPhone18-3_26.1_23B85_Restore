@interface CXAbstractProviderSource
- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken;
- (CXAbstractProviderSource)initWithIdentifier:(id)identifier;
- (CXAbstractProviderSourceDelegate)delegate;
- (CXAbstractProviderSourceDelegateInternal)internalDelegate;
- (NSString)description;
- (void)actionCompleted:(id)completed completionHandler:(id)handler;
- (void)beginWithCompletionHandler:(id)handler;
- (void)commitTransaction:(id)transaction;
- (void)handleActionTimeout:(id)timeout;
- (void)requestTransaction:(id)transaction completionHandler:(id)handler;
- (void)setConnected:(BOOL)connected;
@end

@implementation CXAbstractProviderSource

- (CXAbstractProviderSource)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy length])
  {
    v13.receiver = self;
    v13.super_class = CXAbstractProviderSource;
    v6 = [(CXAbstractProviderSource *)&v13 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_identifier, identifier);
      v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v9 = dispatch_queue_create("com.apple.callkit.providersource", v8);
      queue = v7->_queue;
      v7->_queue = v9;
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken
{
  *&v3 = -1;
  *(&v3 + 1) = -1;
  *retstr->var0 = v3;
  *&retstr->var0[4] = v3;
  return self;
}

- (CXAbstractProviderSourceDelegateInternal)internalDelegate
{
  delegate = [(CXAbstractProviderSource *)self delegate];
  if ([delegate conformsToProtocol:&unk_1F2CB9B00])
  {
    delegate2 = [(CXAbstractProviderSource *)self delegate];
  }

  else
  {
    delegate2 = 0;
  }

  return delegate2;
}

- (void)setConnected:(BOOL)connected
{
  if (self->_connected != connected)
  {
    connectedCopy = connected;
    self->_connected = connected;
    internalDelegate = [(CXAbstractProviderSource *)self internalDelegate];
    v7 = internalDelegate;
    if (connectedCopy)
    {
      [internalDelegate providerSourceConnectionStarted:self];
    }

    else
    {
      [internalDelegate providerSourceConnectionEnded:self];
    }
  }
}

- (void)beginWithCompletionHandler:(id)handler
{
  if (handler)
  {
    (*(handler + 2))(handler, 0);
  }
}

- (void)actionCompleted:(id)completed completionHandler:(id)handler
{
  v44 = *MEMORY[0x1E69E9840];
  completedCopy = completed;
  handlerCopy = handler;
  v8 = CXDefaultLog(handlerCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v41 = "[CXAbstractProviderSource actionCompleted:completionHandler:]";
    v42 = 2112;
    v43 = completedCopy;
    _os_log_impl(&dword_1B47F3000, v8, OS_LOG_TYPE_DEFAULT, "Received %s with action: %@", buf, 0x16u);
  }

  if (handlerCopy)
  {
    if (completedCopy)
    {
      isPermittedToUsePublicAPI = [(CXAbstractProviderSource *)self isPermittedToUsePublicAPI];
      if (isPermittedToUsePublicAPI)
      {
        if (![(CXAbstractProviderSource *)self isPermittedToUsePrivateAPI])
        {
          sanitizedCopy = [completedCopy sanitizedCopy];

          completedCopy = sanitizedCopy;
        }

        internalDelegate = [(CXAbstractProviderSource *)self internalDelegate];
        [internalDelegate providerSource:self actionCompleted:completedCopy];

        handlerCopy[2](handlerCopy, 0);
      }

      else
      {
        v29 = CXDefaultLog(isPermittedToUsePublicAPI);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          [(CXAbstractProviderSource *)self actionCompleted:v29 completionHandler:v30, v31, v32, v33, v34, v35];
        }

        v36[0] = MEMORY[0x1E69E9820];
        v36[1] = 3221225472;
        v36[2] = __62__CXAbstractProviderSource_actionCompleted_completionHandler___block_invoke_60;
        v36[3] = &unk_1E7C07388;
        v37 = handlerCopy;
        __62__CXAbstractProviderSource_actionCompleted_completionHandler___block_invoke_60(v36);
      }
    }

    else
    {
      v21 = CXDefaultLog(v9);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [(CXCallSource *)v21 actionCompleted:v22 completionHandler:v23, v24, v25, v26, v27, v28];
      }

      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __62__CXAbstractProviderSource_actionCompleted_completionHandler___block_invoke_59;
      v38[3] = &unk_1E7C07388;
      v39 = handlerCopy;
      __62__CXAbstractProviderSource_actionCompleted_completionHandler___block_invoke_59(v38);
      completedCopy = v39;
    }
  }

  else
  {
    v13 = CXDefaultLog(v9);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(CXCallSource *)v13 requestTransaction:v14 completionHandler:v15, v16, v17, v18, v19, v20];
    }
  }
}

void __62__CXAbstractProviderSource_actionCompleted_completionHandler___block_invoke_59(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] cx_errorWithCode:2];
  (*(v1 + 16))(v1, v2);
}

void __62__CXAbstractProviderSource_actionCompleted_completionHandler___block_invoke_60(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] cx_errorWithCode:1];
  (*(v1 + 16))(v1, v2);
}

- (void)requestTransaction:(id)transaction completionHandler:(id)handler
{
  v42 = *MEMORY[0x1E69E9840];
  transactionCopy = transaction;
  handlerCopy = handler;
  v8 = CXDefaultLog(handlerCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v39 = "[CXAbstractProviderSource requestTransaction:completionHandler:]";
    v40 = 2112;
    v41 = transactionCopy;
    _os_log_impl(&dword_1B47F3000, v8, OS_LOG_TYPE_DEFAULT, "Received %s with transaction: %@", buf, 0x16u);
  }

  if (handlerCopy)
  {
    if (transactionCopy)
    {
      isPermittedToUsePrivateAPI = [(CXAbstractProviderSource *)self isPermittedToUsePrivateAPI];
      if (isPermittedToUsePrivateAPI)
      {
        delegate = [(CXAbstractProviderSource *)self delegate];
        [delegate providerSource:self requestedTransaction:transactionCopy completionHandler:handlerCopy];
      }

      else
      {
        v27 = CXDefaultLog(isPermittedToUsePrivateAPI);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          [(CXAbstractProviderSource *)self requestTransaction:v27 completionHandler:v28, v29, v30, v31, v32, v33];
        }

        v34[0] = MEMORY[0x1E69E9820];
        v34[1] = 3221225472;
        v34[2] = __65__CXAbstractProviderSource_requestTransaction_completionHandler___block_invoke_67;
        v34[3] = &unk_1E7C07388;
        v35 = handlerCopy;
        __65__CXAbstractProviderSource_requestTransaction_completionHandler___block_invoke_67(v34);
        delegate = v35;
      }
    }

    else
    {
      v19 = CXDefaultLog(v9);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [(CXCallSource *)v19 requestTransaction:v20 completionHandler:v21, v22, v23, v24, v25, v26];
      }

      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __65__CXAbstractProviderSource_requestTransaction_completionHandler___block_invoke_66;
      v36[3] = &unk_1E7C07388;
      v37 = handlerCopy;
      __65__CXAbstractProviderSource_requestTransaction_completionHandler___block_invoke_66(v36);
      delegate = v37;
    }
  }

  else
  {
    delegate = CXDefaultLog(v9);
    if (os_log_type_enabled(delegate, OS_LOG_TYPE_ERROR))
    {
      [(CXCallSource *)delegate requestTransaction:v12 completionHandler:v13, v14, v15, v16, v17, v18];
    }
  }
}

void __65__CXAbstractProviderSource_requestTransaction_completionHandler___block_invoke_66(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] cx_errorWithCode:2];
  (*(v1 + 16))(v1, v2);
}

void __65__CXAbstractProviderSource_requestTransaction_completionHandler___block_invoke_67(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] cx_requestTransactionErrorWithCode:1];
  (*(v1 + 16))(v1, v2);
}

- (void)commitTransaction:(id)transaction
{
  transactionCopy = transaction;
  queue = [(CXAbstractProviderSource *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__CXAbstractProviderSource_commitTransaction___block_invoke;
  v7[3] = &unk_1E7C06BE0;
  v8 = transactionCopy;
  selfCopy = self;
  v6 = transactionCopy;
  dispatch_async(queue, v7);
}

void __46__CXAbstractProviderSource_commitTransaction___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = CXDefaultLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 136315394;
    v7 = "[CXAbstractProviderSource commitTransaction:]_block_invoke";
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_1B47F3000, v2, OS_LOG_TYPE_DEFAULT, "Sending %s with transaction: %@", &v6, 0x16u);
  }

  v4 = [*(a1 + 40) vendorProtocolDelegate];
  v5 = [*(a1 + 32) copy];
  [v4 commitTransaction:v5];
}

- (void)handleActionTimeout:(id)timeout
{
  timeoutCopy = timeout;
  queue = [(CXAbstractProviderSource *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__CXAbstractProviderSource_handleActionTimeout___block_invoke;
  v7[3] = &unk_1E7C06BE0;
  v8 = timeoutCopy;
  selfCopy = self;
  v6 = timeoutCopy;
  dispatch_async(queue, v7);
}

void __48__CXAbstractProviderSource_handleActionTimeout___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = CXDefaultLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 136315394;
    v7 = "[CXAbstractProviderSource handleActionTimeout:]_block_invoke";
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_1B47F3000, v2, OS_LOG_TYPE_DEFAULT, "Sending %s with action: %@", &v6, 0x16u);
  }

  v4 = [*(a1 + 40) vendorProtocolDelegate];
  v5 = [*(a1 + 32) copy];
  [v4 handleActionTimeout:v5];
}

- (NSString)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = NSStringFromSelector(sel_identifier);
  identifier = [(CXAbstractProviderSource *)self identifier];
  [v3 appendFormat:@" %@=%@", v4, identifier];

  [v3 appendFormat:@", "];
  v6 = NSStringFromSelector(sel_isConnected);
  [v3 appendFormat:@" %@=%d", v6, -[CXAbstractProviderSource isConnected](self, "isConnected")];

  [v3 appendFormat:@", "];
  v7 = NSStringFromSelector(sel_processIdentifier);
  [v3 appendFormat:@" %@=%d", v7, -[CXAbstractProviderSource processIdentifier](self, "processIdentifier")];

  [v3 appendFormat:@", "];
  v8 = NSStringFromSelector(sel_isPermittedToUsePublicAPI);
  [v3 appendFormat:@" %@=%d", v8, -[CXAbstractProviderSource isPermittedToUsePublicAPI](self, "isPermittedToUsePublicAPI")];

  [v3 appendFormat:@", "];
  v9 = NSStringFromSelector(sel_isPermittedToUsePrivateAPI);
  [v3 appendFormat:@" %@=%d", v9, -[CXAbstractProviderSource isPermittedToUsePrivateAPI](self, "isPermittedToUsePrivateAPI")];

  [v3 appendString:@">"];

  return v3;
}

- (CXAbstractProviderSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)actionCompleted:(uint64_t)a3 completionHandler:(uint64_t)a4 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0(&dword_1B47F3000, a2, a3, "Provider source is not entitled to use public API: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)requestTransaction:(uint64_t)a3 completionHandler:(uint64_t)a4 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0(&dword_1B47F3000, a2, a3, "Provider source is not entitled to use private API: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end