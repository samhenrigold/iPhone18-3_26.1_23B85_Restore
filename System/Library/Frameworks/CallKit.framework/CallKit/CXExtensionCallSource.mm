@interface CXExtensionCallSource
- (CXExtensionCallSource)initWithExtension:(id)extension;
- (CXExtensionCallSource)initWithExtensionIdentifier:(id)identifier;
- (id)bundle;
- (int)processIdentifier;
- (void)beginWithCompletionHandler:(id)handler;
@end

@implementation CXExtensionCallSource

- (CXExtensionCallSource)initWithExtension:(id)extension
{
  extensionCopy = extension;
  identifier = [extensionCopy identifier];
  v26.receiver = self;
  v26.super_class = CXExtensionCallSource;
  v7 = [(CXCallSource *)&v26 initWithIdentifier:identifier];

  if (v7)
  {
    objc_storeStrong(&v7->_extension, extension);
    objc_initWeak(&location, v7);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __43__CXExtensionCallSource_initWithExtension___block_invoke;
    v22[3] = &unk_1E7C06E78;
    v23 = v7;
    objc_copyWeak(&v24, &location);
    v8 = MEMORY[0x1B8C78C60](v22);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __43__CXExtensionCallSource_initWithExtension___block_invoke_3;
    v19[3] = &unk_1E7C06EA0;
    objc_copyWeak(&v21, &location);
    v9 = v8;
    v20 = v9;
    [(NSExtension *)v7->_extension setRequestCompletionBlock:v19];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __43__CXExtensionCallSource_initWithExtension___block_invoke_2;
    v16[3] = &unk_1E7C06EC8;
    objc_copyWeak(&v18, &location);
    v10 = v9;
    v17 = v10;
    [(NSExtension *)v7->_extension setRequestCancellationBlock:v16];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __43__CXExtensionCallSource_initWithExtension___block_invoke_4;
    v13[3] = &unk_1E7C06EF0;
    objc_copyWeak(&v15, &location);
    v11 = v10;
    v14 = v11;
    [(NSExtension *)v7->_extension setRequestInterruptionBlock:v13];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&v18);

    objc_destroyWeak(&v21);
    objc_destroyWeak(&v24);

    objc_destroyWeak(&location);
  }

  return v7;
}

void __43__CXExtensionCallSource_initWithExtension___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__CXExtensionCallSource_initWithExtension___block_invoke_2;
  block[3] = &unk_1E7C06E50;
  objc_copyWeak(&v4, (a1 + 40));
  dispatch_async(v2, block);

  objc_destroyWeak(&v4);
}

void __43__CXExtensionCallSource_initWithExtension___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setExtensionContext:0];
  [WeakRetained setConnected:0];
}

uint64_t __43__CXExtensionCallSource_initWithExtension___block_invoke_3(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = CXDefaultLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v5 = 138412290;
    v6 = WeakRetained;
    _os_log_impl(&dword_1B47F3000, v2, OS_LOG_TYPE_DEFAULT, "Request completed for extension call source %@", &v5, 0xCu);
  }

  return (*(*(a1 + 32) + 16))();
}

void __43__CXExtensionCallSource_initWithExtension___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = CXDefaultLog(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v7 = 138412546;
    v8 = WeakRetained;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_1B47F3000, v5, OS_LOG_TYPE_DEFAULT, "[WARN] Request canceled for extension call source %@: %@", &v7, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

uint64_t __43__CXExtensionCallSource_initWithExtension___block_invoke_4(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = CXDefaultLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v5 = 138412290;
    v6 = WeakRetained;
    _os_log_impl(&dword_1B47F3000, v2, OS_LOG_TYPE_DEFAULT, "[WARN] Request interrupted for extension call source %@", &v5, 0xCu);
  }

  return (*(*(a1 + 32) + 16))();
}

- (CXExtensionCallSource)initWithExtensionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v11 = 0;
  v5 = [MEMORY[0x1E696ABD0] extensionWithIdentifier:identifierCopy error:&v11];
  v6 = v11;
  v7 = v6;
  if (v5)
  {
    v8 = [(CXExtensionCallSource *)self initWithExtension:v5];
  }

  else
  {
    v9 = CXDefaultLog(v6);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(CXExtensionCallSource *)identifierCopy initWithExtensionIdentifier:v7, v9];
    }

    v8 = 0;
  }

  return v8;
}

- (id)bundle
{
  extension = [(CXExtensionCallSource *)self extension];
  _extensionBundle = [extension _extensionBundle];

  return _extensionBundle;
}

- (int)processIdentifier
{
  extensionContext = [(CXExtensionCallSource *)self extensionContext];
  _auxiliaryConnection = [extensionContext _auxiliaryConnection];
  if (_auxiliaryConnection)
  {
    extensionContext2 = [(CXExtensionCallSource *)self extensionContext];
    _auxiliaryConnection2 = [extensionContext2 _auxiliaryConnection];
    processIdentifier = [_auxiliaryConnection2 processIdentifier];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = CXExtensionCallSource;
    processIdentifier = [(CXCallSource *)&v9 processIdentifier];
  }

  return processIdentifier;
}

- (void)beginWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  queue = [(CXCallSource *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__CXExtensionCallSource_beginWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7C06CF8;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

void __52__CXExtensionCallSource_beginWithCompletionHandler___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = CXDefaultLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v12 = v3;
    _os_log_impl(&dword_1B47F3000, v2, OS_LOG_TYPE_DEFAULT, "Asked to begin extension call source %@", buf, 0xCu);
  }

  v4 = [*(a1 + 32) isConnected];
  if (v4)
  {
    v5 = CXDefaultLog(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B47F3000, v5, OS_LOG_TYPE_DEFAULT, "Extension call source is already connected", buf, 2u);
    }

    v6 = *(a1 + 40);
    if (v6)
    {
      (*(v6 + 16))(v6, 0);
    }
  }

  else
  {
    v7 = [*(a1 + 32) extension];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __52__CXExtensionCallSource_beginWithCompletionHandler___block_invoke_8;
    v9[3] = &unk_1E7C06F18;
    v8 = *(a1 + 40);
    v9[4] = *(a1 + 32);
    v10 = v8;
    [v7 beginExtensionRequestWithInputItems:0 completion:v9];
  }
}

void __52__CXExtensionCallSource_beginWithCompletionHandler___block_invoke_8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __52__CXExtensionCallSource_beginWithCompletionHandler___block_invoke_2;
  v11[3] = &unk_1E7C06DE0;
  v8 = *(a1 + 40);
  v11[4] = *(a1 + 32);
  v12 = v5;
  v13 = v6;
  v14 = v8;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, v11);
}

uint64_t __52__CXExtensionCallSource_beginWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) setRequestIdentifier:*(a1 + 40)];
  v2 = [*(a1 + 32) extension];
  v3 = [v2 _extensionContextForUUID:*(a1 + 40)];
  [*(a1 + 32) setExtensionContext:v3];

  v4 = *(a1 + 32);
  v5 = [v4 extensionContext];
  [v5 setDelegate:v4];

  v6 = [*(a1 + 32) extensionContext];
  v7 = [v6 _auxiliaryConnection];
  v8 = [v7 exportedInterface];
  [v8 cx_setAllowedClassesForProviderHostProtocol];

  v9 = *(a1 + 48);
  v11 = CXDefaultLog(v10);
  v12 = v11;
  if (v9)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __52__CXExtensionCallSource_beginWithCompletionHandler___block_invoke_2_cold_1((a1 + 48), v12);
    }
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 40);
      v15 = 138412290;
      v16 = v13;
      _os_log_impl(&dword_1B47F3000, v12, OS_LOG_TYPE_DEFAULT, "Extension call source began successfully with request identifier %@", &v15, 0xCu);
    }

    [*(a1 + 32) setConnected:1];
  }

  result = *(a1 + 56);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 48));
  }

  return result;
}

- (void)initWithExtensionIdentifier:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_1B47F3000, log, OS_LOG_TYPE_ERROR, "Could not create extension with identifier %@: %@", &v3, 0x16u);
}

void __52__CXExtensionCallSource_beginWithCompletionHandler___block_invoke_2_cold_1(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_1B47F3000, a2, OS_LOG_TYPE_ERROR, "Extension call source failed to begin: %@", &v3, 0xCu);
}

@end