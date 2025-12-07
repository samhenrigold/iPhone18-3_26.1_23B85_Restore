@interface LACUserInterfacePresenter
- (LACUserInterfacePresenter)initWithReplyQueue:(id)queue uiController:(id)controller;
- (void)presentUIForIdentifier:(int64_t)identifier request:(id)request completion:(id)completion;
@end

@implementation LACUserInterfacePresenter

- (LACUserInterfacePresenter)initWithReplyQueue:(id)queue uiController:(id)controller
{
  queueCopy = queue;
  controllerCopy = controller;
  v15.receiver = self;
  v15.super_class = LACUserInterfacePresenter;
  v9 = [(LACUserInterfacePresenter *)&v15 init];
  if (v9)
  {
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = [LACConcurrencyUtilities createUserInitiatedSerialQueueWithIdentifier:v11];
    workQueue = v9->_workQueue;
    v9->_workQueue = v12;

    objc_storeStrong(&v9->_replyQueue, queue);
    objc_storeStrong(&v9->_uiController, controller);
  }

  return v9;
}

- (void)presentUIForIdentifier:(int64_t)identifier request:(id)request completion:(id)completion
{
  v43 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  completionCopy = completion;
  v10 = completionCopy;
  if ((identifier & 0xFFFFFFFFFFFFFFFBLL) != 0)
  {
    options = [requestCopy options];
    v12 = [MEMORY[0x1E696AD98] numberWithInteger:1000];
    v13 = [options objectForKey:v12];
    bOOLValue = [v13 BOOLValue];

    v16 = LACLogUI(v15);
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
    if (bOOLValue)
    {
      if (v17)
      {
        v18 = NSStringFromLACUserInterfaceRequestIdentifier(identifier);
        v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(requestCopy, "identifier")}];
        *buf = 138412546;
        v40 = v18;
        v41 = 2114;
        v42 = v19;
        _os_log_impl(&dword_1B0233000, v16, OS_LOG_TYPE_DEFAULT, "Skipping UI for %@ rid: %{public}@, not interactive evaluation", buf, 0x16u);
      }

      replyQueue = self->_replyQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __71__LACUserInterfacePresenter_presentUIForIdentifier_request_completion___block_invoke_5;
      block[3] = &unk_1E7A96630;
      v35 = v10;
      dispatch_async(replyQueue, block);
    }

    else
    {
      if (v17)
      {
        v28 = NSStringFromLACUserInterfaceRequestIdentifier(identifier);
        *buf = 138412290;
        v40 = v28;
        _os_log_impl(&dword_1B0233000, v16, OS_LOG_TYPE_DEFAULT, "Will present UI for %@", buf, 0xCu);
      }

      objc_initWeak(buf, self);
      workQueue = self->_workQueue;
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __71__LACUserInterfacePresenter_presentUIForIdentifier_request_completion___block_invoke_6;
      v30[3] = &unk_1E7A95EF0;
      objc_copyWeak(v33, buf);
      v31 = requestCopy;
      v33[1] = identifier;
      v32 = v10;
      dispatch_async(workQueue, v30);

      objc_destroyWeak(v33);
      objc_destroyWeak(buf);
    }
  }

  else
  {
    v21 = LACLogUI(completionCopy);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [LACUserInterfacePresenter presentUIForIdentifier:identifier request:v21 completion:?];
    }

    v22 = MEMORY[0x1E696AEC0];
    v23 = [MEMORY[0x1E696AD98] numberWithInteger:identifier];
    v24 = [v22 stringWithFormat:@"Unsupported user interface request: %@", v23];

    v25 = [LACError errorWithCode:-1000 debugDescription:v24];
    v26 = self->_replyQueue;
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __71__LACUserInterfacePresenter_presentUIForIdentifier_request_completion___block_invoke;
    v36[3] = &unk_1E7A95798;
    v37 = v25;
    v38 = v10;
    v27 = v25;
    dispatch_async(v26, v36);
  }
}

void __71__LACUserInterfacePresenter_presentUIForIdentifier_request_completion___block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(WeakRetained + 3);
    v5 = [*(a1 + 32) contextID];
    v6 = [v4 userInterfaceWithUUID:v5];

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __71__LACUserInterfacePresenter_presentUIForIdentifier_request_completion___block_invoke_2;
    v13[3] = &unk_1E7A96658;
    v15 = *(a1 + 56);
    v14 = *(a1 + 32);
    v7 = __71__LACUserInterfacePresenter_presentUIForIdentifier_request_completion___block_invoke_2(v13);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __71__LACUserInterfacePresenter_presentUIForIdentifier_request_completion___block_invoke_3;
    v9[3] = &unk_1E7A966A8;
    v12[1] = *(a1 + 56);
    objc_copyWeak(v12, (a1 + 48));
    v11 = *(a1 + 40);
    v8 = v6;
    v10 = v8;
    [v8 processRequest:v7 completion:v9];

    objc_destroyWeak(v12);
  }
}

LACUserInterfaceRequest *__71__LACUserInterfacePresenter_presentUIForIdentifier_request_completion___block_invoke_2(uint64_t a1)
{
  v1 = [[LACUserInterfaceRequest alloc] initWithIdentifier:*(a1 + 40) evaluationRequest:*(a1 + 32)];

  return v1;
}

void __71__LACUserInterfacePresenter_presentUIForIdentifier_request_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = LACLogUI(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromLACUserInterfaceRequestIdentifier(*(a1 + 56));
    *buf = 138412546;
    v14 = v5;
    v15 = 2112;
    v16 = v3;
    _os_log_impl(&dword_1B0233000, v4, OS_LOG_TYPE_DEFAULT, "Did dismiss UI for %@ with error: %@", buf, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = WeakRetained[1];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __71__LACUserInterfacePresenter_presentUIForIdentifier_request_completion___block_invoke_9;
    block[3] = &unk_1E7A96680;
    v12 = *(a1 + 40);
    v10 = v3;
    v11 = *(a1 + 32);
    dispatch_async(v8, block);
  }
}

- (void)presentUIForIdentifier:(uint64_t)a1 request:(uint64_t)a2 completion:(NSObject *)a3 .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = NSStringFromLACUserInterfaceRequestIdentifier(a2);
  v6 = 138412546;
  v7 = a1;
  v8 = 2112;
  v9 = v5;
  _os_log_error_impl(&dword_1B0233000, a3, OS_LOG_TYPE_ERROR, "%@ cannot present UI for identifier: %@", &v6, 0x16u);
}

@end