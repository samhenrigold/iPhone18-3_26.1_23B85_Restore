@interface AFSiriTaskDeliveryHandler
- (AFSiriTaskService)service;
- (AFSiriTaskServiceDelegate)delegate;
- (void)deliverSiriTask:(id)task completionHandler:(id)handler;
@end

@implementation AFSiriTaskDeliveryHandler

- (AFSiriTaskServiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (AFSiriTaskService)service
{
  WeakRetained = objc_loadWeakRetained(&self->_service);

  return WeakRetained;
}

- (void)deliverSiriTask:(id)task completionHandler:(id)handler
{
  v23 = *MEMORY[0x1E69E9840];
  taskCopy = task;
  handlerCopy = handler;
  v8 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v20 = "[AFSiriTaskDeliveryHandler deliverSiriTask:completionHandler:]";
    v21 = 2112;
    v22 = taskCopy;
    _os_log_impl(&dword_1912FE000, v8, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __63__AFSiriTaskDeliveryHandler_deliverSiriTask_completionHandler___block_invoke;
  v17[3] = &unk_1E7348AA8;
  v18 = handlerCopy;
  v9 = handlerCopy;
  v10 = MEMORY[0x193AFB7B0](v17);
  queue = self->_queue;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __63__AFSiriTaskDeliveryHandler_deliverSiriTask_completionHandler___block_invoke_2;
  v14[3] = &unk_1E73496E8;
  v15 = taskCopy;
  v16 = v10;
  v14[4] = self;
  v12 = taskCopy;
  v13 = v10;
  dispatch_async(queue, v14);
}

uint64_t __63__AFSiriTaskDeliveryHandler_deliverSiriTask_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __63__AFSiriTaskDeliveryHandler_deliverSiriTask_completionHandler___block_invoke_2(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1[4] + 24));

  if (WeakRetained)
  {
    v3 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v4 = a1[4];
      v5 = v3;
      v6 = objc_loadWeakRetained((v4 + 24));
      v7 = a1[5];
      *buf = 136315906;
      v13 = "[AFSiriTaskDeliveryHandler deliverSiriTask:completionHandler:]_block_invoke_2";
      v14 = 2112;
      v15 = v4;
      v16 = 2112;
      v17 = v6;
      v18 = 2112;
      v19 = v7;
      _os_log_impl(&dword_1912FE000, v5, OS_LOG_TYPE_INFO, "%s %@ asking %@ to handle task %@", buf, 0x2Au);
    }

    v8 = objc_loadWeakRetained((a1[4] + 24));
    v9 = objc_loadWeakRetained((a1[4] + 8));
    [v8 siriTaskService:v9 handleSiriTask:a1[5]];

    (*(a1[6] + 16))();
  }

  else
  {
    v10 = a1[6];
    v11 = [AFError errorWithCode:700];
    (*(v10 + 16))(v10);
  }
}

@end