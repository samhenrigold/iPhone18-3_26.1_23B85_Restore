@interface AFMachServiceSiriTaskDeliverer
+ (id)machServiceSiriTaskDelivererForAppWithBundleIdentifier:(id)identifier;
- (AFMachServiceSiriTaskDeliverer)initWithMachServiceName:(id)name;
- (NSString)description;
- (void)deliverSiriTask:(id)task completionHandler:(id)handler;
@end

@implementation AFMachServiceSiriTaskDeliverer

- (void)deliverSiriTask:(id)task completionHandler:(id)handler
{
  v57 = *MEMORY[0x1E69E9840];
  taskCopy = task;
  handlerCopy = handler;
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = __Block_byref_object_copy__35053;
  v47 = __Block_byref_object_dispose__35054;
  v48 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:self->_machServiceName options:0];
  v8 = v44[5];
  af_siriTaskDeliveringInterface = [MEMORY[0x1E696B0D0] af_siriTaskDeliveringInterface];
  [v8 setRemoteObjectInterface:af_siriTaskDeliveringInterface];

  v41[0] = 0;
  v41[1] = v41;
  v41[2] = 0x2020000000;
  v42 = 0;
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x3032000000;
  v39[3] = __Block_byref_object_copy__35053;
  v39[4] = __Block_byref_object_dispose__35054;
  v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v40 = dispatch_queue_create("Mach Service Task Delivery Completion Handler", v10);

  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __68__AFMachServiceSiriTaskDeliverer_deliverSiriTask_completionHandler___block_invoke;
  v34[3] = &unk_1E73472A0;
  v36 = v39;
  v37 = v41;
  v11 = handlerCopy;
  v35 = v11;
  v38 = &v43;
  v12 = MEMORY[0x193AFB7B0](v34);
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __68__AFMachServiceSiriTaskDeliverer_deliverSiriTask_completionHandler___block_invoke_3;
  v32[3] = &unk_1E73494D8;
  v13 = v12;
  v33 = v13;
  v14 = MEMORY[0x193AFB7B0](v32);
  v15 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v50 = "[AFMachServiceSiriTaskDeliverer deliverSiriTask:completionHandler:]";
    v51 = 2112;
    selfCopy = self;
    v53 = 2080;
    v54 = "[AFMachServiceSiriTaskDeliverer deliverSiriTask:completionHandler:]";
    v55 = 2112;
    v56 = taskCopy;
    _os_log_impl(&dword_1912FE000, v15, OS_LOG_TYPE_INFO, "%s %@ %s %@", buf, 0x2Au);
  }

  v16 = v44[5];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __68__AFMachServiceSiriTaskDeliverer_deliverSiriTask_completionHandler___block_invoke_36;
  v30[3] = &unk_1E7349838;
  v30[4] = self;
  v17 = v14;
  v31 = v17;
  [v16 setInvalidationHandler:v30];
  v18 = v44[5];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __68__AFMachServiceSiriTaskDeliverer_deliverSiriTask_completionHandler___block_invoke_37;
  v28[3] = &unk_1E7349838;
  v28[4] = self;
  v19 = v17;
  v29 = v19;
  [v18 setInterruptionHandler:v28];
  [v44[5] resume];
  v20 = v44[5];
  v23 = MEMORY[0x1E69E9820];
  v24 = 3221225472;
  v25 = __68__AFMachServiceSiriTaskDeliverer_deliverSiriTask_completionHandler___block_invoke_38;
  v26 = &unk_1E7348AA8;
  v21 = v13;
  v27 = v21;
  v22 = [v20 remoteObjectProxyWithErrorHandler:&v23];
  [v22 deliverSiriTask:taskCopy completionHandler:{v21, v23, v24, v25, v26}];

  _Block_object_dispose(v39, 8);
  _Block_object_dispose(v41, 8);
  _Block_object_dispose(&v43, 8);
}

void __68__AFMachServiceSiriTaskDeliverer_deliverSiriTask_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 40) + 8) + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __68__AFMachServiceSiriTaskDeliverer_deliverSiriTask_completionHandler___block_invoke_2;
  v7[3] = &unk_1E7347278;
  v10 = *(a1 + 48);
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v11 = *(a1 + 56);
  v6 = v3;
  dispatch_async(v4, v7);
}

void __68__AFMachServiceSiriTaskDeliverer_deliverSiriTask_completionHandler___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [AFError errorWithCode:701];
  (*(v1 + 16))(v1, v2);
}

uint64_t __68__AFMachServiceSiriTaskDeliverer_deliverSiriTask_completionHandler___block_invoke_36(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v4 = *(*(a1 + 32) + 8);
    v5 = 136315394;
    v6 = "[AFMachServiceSiriTaskDeliverer deliverSiriTask:completionHandler:]_block_invoke";
    v7 = 2114;
    v8 = v4;
    _os_log_error_impl(&dword_1912FE000, v2, OS_LOG_TYPE_ERROR, "%s connection to task service %{public}@ was invalidated", &v5, 0x16u);
  }

  return (*(*(a1 + 40) + 16))();
}

uint64_t __68__AFMachServiceSiriTaskDeliverer_deliverSiriTask_completionHandler___block_invoke_37(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v4 = *(*(a1 + 32) + 8);
    v5 = 136315394;
    v6 = "[AFMachServiceSiriTaskDeliverer deliverSiriTask:completionHandler:]_block_invoke";
    v7 = 2114;
    v8 = v4;
    _os_log_error_impl(&dword_1912FE000, v2, OS_LOG_TYPE_ERROR, "%s connection to task service %{public}@ was interrupted", &v5, 0x16u);
  }

  return (*(*(a1 + 40) + 16))();
}

void __68__AFMachServiceSiriTaskDeliverer_deliverSiriTask_completionHandler___block_invoke_38(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[AFMachServiceSiriTaskDeliverer deliverSiriTask:completionHandler:]_block_invoke";
    v7 = 2114;
    v8 = v3;
    _os_log_error_impl(&dword_1912FE000, v4, OS_LOG_TYPE_ERROR, "%s task service was unable to deliver task: %{public}@", &v5, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

void __68__AFMachServiceSiriTaskDeliverer_deliverSiriTask_completionHandler___block_invoke_2(void *a1)
{
  v2 = *(a1[6] + 8);
  if ((*(v2 + 24) & 1) == 0)
  {
    *(v2 + 24) = 1;
    (*(a1[5] + 16))();
    [*(*(a1[7] + 8) + 40) setInvalidationHandler:0];
    [*(*(a1[7] + 8) + 40) setInterruptionHandler:0];
    [*(*(a1[7] + 8) + 40) invalidate];
    v4 = *(a1[7] + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = 0;
  }
}

- (NSString)description
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"<"];
  [v3 appendFormat:@"%@: %p; ", objc_opt_class(), self];
  [v3 appendString:@"machServiceName="];
  [v3 appendString:self->_machServiceName];
  [v3 appendString:@">"];

  return v3;
}

- (AFMachServiceSiriTaskDeliverer)initWithMachServiceName:(id)name
{
  nameCopy = name;
  v9.receiver = self;
  v9.super_class = AFMachServiceSiriTaskDeliverer;
  v5 = [(AFMachServiceSiriTaskDeliverer *)&v9 init];
  if (v5)
  {
    v6 = [nameCopy copy];
    machServiceName = v5->_machServiceName;
    v5->_machServiceName = v6;
  }

  return v5;
}

+ (id)machServiceSiriTaskDelivererForAppWithBundleIdentifier:(id)identifier
{
  v4 = [AFSiriTaskService _machServiceNameForAppTaskServiceWithBundleIdentifier:identifier];
  v5 = [[self alloc] initWithMachServiceName:v4];

  return v5;
}

@end