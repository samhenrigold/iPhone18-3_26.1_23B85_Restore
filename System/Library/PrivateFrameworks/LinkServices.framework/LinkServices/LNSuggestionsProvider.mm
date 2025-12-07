@interface LNSuggestionsProvider
- (LNSuggestionsProvider)init;
- (id)suggestedActionsForSuggestionsRequests:(id)requests error:(id *)error;
- (void)dealloc;
@end

@implementation LNSuggestionsProvider

- (id)suggestedActionsForSuggestionsRequests:(id)requests error:(id *)error
{
  v33[1] = *MEMORY[0x1E69E9840];
  requestsCopy = requests;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__6810;
  v30 = __Block_byref_object_dispose__6811;
  v31 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__6810;
  v24 = __Block_byref_object_dispose__6811;
  v25 = 0;
  connection = self->_connection;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __70__LNSuggestionsProvider_suggestedActionsForSuggestionsRequests_error___block_invoke;
  v19[3] = &unk_1E74B2658;
  v19[4] = &v26;
  v8 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v19];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __70__LNSuggestionsProvider_suggestedActionsForSuggestionsRequests_error___block_invoke_2;
  v18[3] = &unk_1E74B1330;
  v18[4] = &v20;
  v18[5] = &v26;
  [v8 suggestedActionsForSuggestionsRequests:requestsCopy reply:v18];

  v9 = v21[5];
  if (v9)
  {
    v10 = v9;
  }

  else if (error)
  {
    v12 = v27[5];
    if (v12)
    {
      *error = v12;
    }

    else
    {
      v32 = *MEMORY[0x1E696A578];
      mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
      v14 = [mainBundle localizedStringForKey:@"Empty result" value:&stru_1F0BBC770 table:0];
      v33[0] = v14;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:&v32 count:1];

      v16 = [MEMORY[0x1E696ABC0] errorWithDomain:@"LNSuggestionsProviderErrorDomain" code:9003 userInfo:v15];

      v17 = v16;
      *error = v16;
    }
  }

  _Block_object_dispose(&v20, 8);

  _Block_object_dispose(&v26, 8);

  return v9;
}

void __70__LNSuggestionsProvider_suggestedActionsForSuggestionsRequests_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
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

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  v3.receiver = self;
  v3.super_class = LNSuggestionsProvider;
  [(LNSuggestionsProvider *)&v3 dealloc];
}

- (LNSuggestionsProvider)init
{
  v8.receiver = self;
  v8.super_class = LNSuggestionsProvider;
  v2 = [(LNSuggestionsProvider *)&v8 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.linkd.suggestions" options:0];
    connection = v2->_connection;
    v2->_connection = v3;

    v5 = LNDaemonSuggestionsXPCInterface();
    [(NSXPCConnection *)v2->_connection setRemoteObjectInterface:v5];

    [(NSXPCConnection *)v2->_connection resume];
    v6 = v2;
  }

  return v2;
}

@end