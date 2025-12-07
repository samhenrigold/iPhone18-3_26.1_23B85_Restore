@interface SBSSystemNotesPresentationRequest
+ (void)performPresentationWithConfiguration:(id)configuration completion:(id)completion;
@end

@implementation SBSSystemNotesPresentationRequest

+ (void)performPresentationWithConfiguration:(id)configuration completion:(id)completion
{
  configurationCopy = configuration;
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __85__SBSSystemNotesPresentationRequest_performPresentationWithConfiguration_completion___block_invoke;
  v10[3] = &unk_1E7360398;
  v11 = configurationCopy;
  v12 = completionCopy;
  selfCopy = self;
  v8 = configurationCopy;
  v9 = completionCopy;
  [v8 prepareForXPCCall:v10];
}

void __85__SBSSystemNotesPresentationRequest_performPresentationWithConfiguration_completion___block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    if (*(a1 + 40))
    {
      v5 = SBLogSystemNotes(v3);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        __85__SBSSystemNotesPresentationRequest_performPresentationWithConfiguration_completion___block_invoke_cold_1(a1, v4, v5);
      }

      (*(*(a1 + 40) + 16))();
    }
  }

  else
  {
    v6 = MEMORY[0x1E698F498];
    v7 = [MEMORY[0x1E698F498] defaultShellMachName];
    v8 = +[SBSSystemNotesPresentationServiceInterfaceSpecification identifier];
    v9 = [v6 endpointForMachName:v7 service:v8 instance:0];

    v10 = [MEMORY[0x1E698F490] connectionWithEndpoint:v9];
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("com.apple.SpringBoardServices.SBSSystemNotesPresentationRequest.connectionQueue", v11);

    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __85__SBSSystemNotesPresentationRequest_performPresentationWithConfiguration_completion___block_invoke_3;
    v24[3] = &unk_1E7360370;
    v13 = *(a1 + 48);
    v25 = v12;
    v26 = v13;
    v14 = v12;
    v15 = SBLogSystemNotes([v10 configureConnection:v24]);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v28 = v10;
      _os_log_impl(&dword_19169D000, v15, OS_LOG_TYPE_DEFAULT, "Activating Connection: %{public}@", buf, 0xCu);
    }

    [v10 activate];
    v16 = v10;
    v17 = [v16 remoteTarget];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __85__SBSSystemNotesPresentationRequest_performPresentationWithConfiguration_completion___block_invoke_12;
    v21[3] = &unk_1E735FEC0;
    v18 = *(a1 + 32);
    v19 = *(a1 + 40);
    v22 = v16;
    v23 = v19;
    v20 = v16;
    [v17 presentWithConfiguration:v18 completion:v21];
  }
}

void __85__SBSSystemNotesPresentationRequest_performPresentationWithConfiguration_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = +[SBSSystemNotesPresentationServiceInterfaceSpecification interface];
  [v5 setInterface:v3];

  v4 = +[SBSSystemNotesPresentationServiceInterfaceSpecification serviceQuality];
  [v5 setServiceQuality:v4];

  [v5 setInterfaceTarget:*(a1 + 40)];
  [v5 setTargetQueue:*(a1 + 32)];
  [v5 setActivationHandler:&__block_literal_global_27];
  [v5 setInterruptionHandler:&__block_literal_global_7_2];
  [v5 setInvalidationHandler:&__block_literal_global_10_0];
}

void __85__SBSSystemNotesPresentationRequest_performPresentationWithConfiguration_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = SBLogSystemNotes(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138543362;
    v5 = v2;
    _os_log_impl(&dword_19169D000, v3, OS_LOG_TYPE_DEFAULT, "Connection Activated: %{public}@", &v4, 0xCu);
  }
}

void __85__SBSSystemNotesPresentationRequest_performPresentationWithConfiguration_completion___block_invoke_5(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = SBLogSystemNotes(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138543362;
    v5 = v2;
    _os_log_impl(&dword_19169D000, v3, OS_LOG_TYPE_DEFAULT, "Received interruption for connection: %{public}@", &v4, 0xCu);
  }

  [v2 activate];
}

void __85__SBSSystemNotesPresentationRequest_performPresentationWithConfiguration_completion___block_invoke_8(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = SBLogSystemNotes(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __76__SBSSystemNotesPresentationClientToServerProxy__setupAndActivateConnection__block_invoke_19_cold_1(v2, v3);
  }
}

uint64_t __85__SBSSystemNotesPresentationRequest_performPresentationWithConfiguration_completion___block_invoke_12(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 invalidate];
}

void __85__SBSSystemNotesPresentationRequest_performPresentationWithConfiguration_completion___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = 138543618;
  v5 = v3;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_19169D000, log, OS_LOG_TYPE_ERROR, "Failed to prepare SBSSystemNotesPresentationConfiguration for XPC call. config: %{public}@; error: %{public}@", &v4, 0x16u);
}

@end