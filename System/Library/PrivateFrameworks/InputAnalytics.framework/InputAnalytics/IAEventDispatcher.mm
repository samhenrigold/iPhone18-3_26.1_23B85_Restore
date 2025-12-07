@interface IAEventDispatcher
+ (id)sharedInstance;
+ (void)dispatchEvent:(id)event payload:(id)payload;
- (IAEventDispatcher)init;
- (void)dispatchEvent:(id)event payload:(id)payload;
@end

@implementation IAEventDispatcher

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1D4618DFC;
  block[3] = &unk_1E848A4C8;
  block[4] = self;
  if (qword_1EC7D6658 != -1)
  {
    dispatch_once(&qword_1EC7D6658, block);
  }

  v2 = qword_1EC7D6650;

  return v2;
}

+ (void)dispatchEvent:(id)event payload:(id)payload
{
  payloadCopy = payload;
  eventCopy = event;
  v10 = objc_msgSend_sharedInstance(IAEventDispatcher, v7, v8);
  objc_msgSend_dispatchEvent_payload_(v10, v9, eventCopy, payloadCopy);
}

- (IAEventDispatcher)init
{
  v6.receiver = self;
  v6.super_class = IAEventDispatcher;
  v2 = [(IAEventDispatcher *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    objc_msgSend_setPayloadsObservedForTesting_(v2, v4, v3);
  }

  return v2;
}

- (void)dispatchEvent:(id)event payload:(id)payload
{
  v28 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  payloadCopy = payload;
  isUnitTest = objc_msgSend_isUnitTest(self, v8, v9);
  if (isUnitTest)
  {
    v11 = sub_1D4621090(isUnitTest);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v14 = objc_msgSend_description(payloadCopy, v12, v13);
      *buf = 138478083;
      v25 = eventCopy;
      v26 = 2117;
      v27 = v14;
      _os_log_impl(&dword_1D460F000, v11, OS_LOG_TYPE_DEFAULT, "Dispatching for test '%{private}@': %{sensitive}@", buf, 0x16u);
    }

    v17 = objc_msgSend_mutableCopy(payloadCopy, v15, v16);
    objc_msgSend_setObject_forKeyedSubscript_(v17, v18, eventCopy, @"IAEventDispatcherEventNameKey");
    v21 = objc_msgSend_payloadsObservedForTesting(self, v19, v20);
    objc_msgSend_addObject_(v21, v22, v17);
  }

  else
  {
    v23 = payloadCopy;
    AnalyticsSendEventLazy();
    v17 = v23;
  }
}

@end