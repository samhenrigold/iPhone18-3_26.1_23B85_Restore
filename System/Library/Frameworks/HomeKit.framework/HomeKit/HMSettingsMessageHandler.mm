@interface HMSettingsMessageHandler
- (void)configureWithContext:(id)context;
- (void)sendUpdateValueMessage:(id)message value:(id)value completionHandler:(id)handler;
@end

@implementation HMSettingsMessageHandler

- (void)sendUpdateValueMessage:(id)message value:(id)value completionHandler:(id)handler
{
  v59 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  valueCopy = value;
  handlerCopy = handler;
  v12 = handlerCopy;
  if (!self)
  {
    if (handlerCopy)
    {
      goto LABEL_6;
    }

LABEL_10:
    v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMSettingsMessageHandler sendUpdateValueMessage:value:completionHandler:]", @"completionHandler"];
    v40 = objc_autoreleasePoolPush();
    selfCopy = self;
    v42 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      v43 = HMFGetLogIdentifier();
      *buf = 138543618;
      v56 = v43;
      v57 = 2112;
      v58 = v39;
      _os_log_impl(&dword_19BB39000, v42, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v40);
    v44 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v39 userInfo:0];
    objc_exception_throw(v44);
  }

  v13 = objc_getProperty(self, v11, 8, 1);
  if (!v12)
  {
    goto LABEL_10;
  }

  v15 = v13;
  if (v13)
  {
    v51[0] = @"value";
    v51[1] = @"keyPath";
    v52[0] = valueCopy;
    v52[1] = messageCopy;
    v51[2] = @"SettingTargetType";
    Property = objc_getProperty(self, v14, 32, 1);
    v51[3] = @"kUserUUIDKey";
    v16 = Property;
    v54 = objc_getProperty(self, v17, 24, 1);
    v18 = MEMORY[0x1E695DF20];
    v19 = v54;
    v20 = [v18 dictionaryWithObjects:v52 forKeys:v51 count:4];

    v21 = MEMORY[0x1E69A2A10];
    v22 = objc_alloc(MEMORY[0x1E69A2A00]);
    v24 = [v22 initWithTarget:{objc_getProperty(self, v23, 16, 1)}];
    v25 = [v21 messageWithName:@"HMS.uv" destination:v24 payload:v20];

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __75__HMSettingsMessageHandler_sendUpdateValueMessage_value_completionHandler___block_invoke;
    aBlock[3] = &unk_1E75487B8;
    v50 = v12;
    v26 = _Block_copy(aBlock);
    v28 = [objc_getProperty(self v27];
    identifier = [v25 identifier];
    v30 = _Block_copy(v26);
    [v28 addCompletionBlock:v30 forIdentifier:identifier];

    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __75__HMSettingsMessageHandler_sendUpdateValueMessage_value_completionHandler___block_invoke_2;
    v45[3] = &unk_1E754E480;
    v46 = v28;
    v47 = identifier;
    v48 = v26;
    v31 = v26;
    v32 = identifier;
    v33 = v28;
    [v25 setResponseHandler:v45];
    messageDispatcher = [v15 messageDispatcher];
    [messageDispatcher sendMessage:v25 completionHandler:0];

    goto LABEL_9;
  }

LABEL_6:
  v35 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v37 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
  {
    v38 = HMFGetLogIdentifier();
    *buf = 138543618;
    v56 = v38;
    v57 = 2080;
    v58 = "[HMSettingsMessageHandler sendUpdateValueMessage:value:completionHandler:]";
    _os_log_impl(&dword_19BB39000, v37, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v35);
  v15 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
  (v12)[2](v12, v15);
LABEL_9:
}

void __75__HMSettingsMessageHandler_sendUpdateValueMessage_value_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) removeCompletionBlockForIdentifier:*(a1 + 40)];
  if (v3)
  {
    (*(*(a1 + 48) + 16))();
  }
}

- (void)configureWithContext:(id)context
{
  if (self)
  {
    objc_setProperty_atomic(self, a2, context, 8);
  }
}

@end