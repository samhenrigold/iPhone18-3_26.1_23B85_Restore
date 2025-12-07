@interface IMIndexThrottleMonitor
+ (NSDate)dateOfThrottlingCompletion;
+ (id)defaults;
+ (int64_t)lastThrottleState;
+ (void)setLastThrottleState:(int64_t)state;
+ (void)setThrottles:(id)throttles;
- (IMIndexThrottleMonitor)initWithChangeHandler:(id)handler;
- (void)__unlocked_cancel;
- (void)__unlocked_reload;
- (void)cancel;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)reload;
@end

@implementation IMIndexThrottleMonitor

+ (id)defaults
{
  if (qword_1EDBE5E98 != -1)
  {
    sub_1B7CFB874();
  }

  v3 = qword_1EDBE5E90;

  return v3;
}

+ (int64_t)lastThrottleState
{
  v4 = objc_msgSend_defaults(self, a2, v2, v3);
  v7 = objc_msgSend_integerForKey_(v4, v5, @"IMDIndexingLastThrottleState", v6);

  return v7;
}

+ (void)setLastThrottleState:(int64_t)state
{
  v6 = objc_msgSend_defaults(self, a2, state, v3);
  objc_msgSend_setInteger_forKey_(v6, v5, state, @"IMDIndexingLastThrottleState");
}

+ (void)setThrottles:(id)throttles
{
  throttlesCopy = throttles;
  if (objc_msgSend_count(throttlesCopy, v3, v4, v5))
  {
    v9 = objc_msgSend_copy(throttlesCopy, v6, v7, v8);
    IMSetDomainValueForKey();
  }

  else
  {
    IMSetDomainValueForKey();
  }
}

+ (NSDate)dateOfThrottlingCompletion
{
  if (objc_msgSend_isThrottled(self, a2, v2, v3))
  {
    v8 = objc_msgSend_throttles(self, v5, v6, v7);
    v12 = objc_msgSend_allValues(v8, v9, v10, v11);
    v15 = objc_msgSend_sortedArrayUsingSelector_(v12, v13, sel_compare_, v14);
    v19 = objc_msgSend_lastObject(v15, v16, v17, v18);

    v23 = objc_msgSend_date(MEMORY[0x1E695DF00], v20, v21, v22);
    objc_msgSend_timeIntervalSinceDate_(v19, v24, v23, v25);
    v27 = v26;

    if (v27 <= 0.0)
    {
      v28 = 0;
    }

    else
    {
      v28 = v19;
    }
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

- (IMIndexThrottleMonitor)initWithChangeHandler:(id)handler
{
  handlerCopy = handler;
  v40.receiver = self;
  v40.super_class = IMIndexThrottleMonitor;
  v5 = [(IMIndexThrottleMonitor *)&v40 init];
  if (v5)
  {
    v6 = _Block_copy(handlerCopy);
    changeHandler = v5->_changeHandler;
    v5->_changeHandler = v6;

    if (handlerCopy)
    {
      v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v9 = dispatch_queue_create("com.apple.IMIndexThrottleMonitor", v8);
      queue = v5->_queue;
      v5->_queue = v9;

      v11 = MEMORY[0x1E696AD98];
      isThrottled = objc_msgSend_isThrottled(IMIndexThrottleMonitor, v12, v13, v14);
      v18 = objc_msgSend_numberWithBool_(v11, v16, isThrottled, v17);
      lastState = v5->_lastState;
      v5->_lastState = v18;

      v23 = objc_msgSend_defaults(IMIndexThrottleMonitor, v20, v21, v22);
      objc_msgSend_addObserver_forKeyPath_options_context_(v23, v24, v5, @"IMDIndexingLastThrottleState", 1, 0);

      v28 = objc_msgSend_defaults(IMIndexThrottleMonitor, v25, v26, v27);
      objc_msgSend_addObserver_forKeyPath_options_context_(v28, v29, v5, @"IMDIndexingThrottles", 1, 0);

      v33 = objc_msgSend_defaults(IMIndexThrottleMonitor, v30, v31, v32);
      v37 = objc_msgSend__ignoreThrottlingKey(MEMORY[0x1E69A7FF8], v34, v35, v36);
      objc_msgSend_addObserver_forKeyPath_options_context_(v33, v38, v5, v37, 1, 0);
    }
  }

  return v5;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  if ((objc_msgSend_isEqualToString_(pathCopy, v7, @"IMDIndexingLastThrottleState", v8) & 1) != 0 || (objc_msgSend_isEqualToString_(pathCopy, v9, @"IMDIndexingThrottles", v11) & 1) != 0 || (objc_msgSend__ignoreThrottlingKey(MEMORY[0x1E69A7FF8], v9, v10, v11), v12 = objc_claimAutoreleasedReturnValue(), isEqualToString = objc_msgSend_isEqualToString_(pathCopy, v13, v12, v14), v12, isEqualToString))
  {
    objc_msgSend_reload(self, v9, v10, v11);
  }
}

- (void)reload
{
  v5 = objc_msgSend_queue(self, a2, v2, v3);

  if (v5)
  {
    v9 = objc_msgSend_queue(self, v6, v7, v8);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1B7BCD0D0;
    block[3] = &unk_1E7CB6AE0;
    block[4] = self;
    dispatch_async(v9, block);
  }
}

- (void)cancel
{
  v5 = objc_msgSend_queue(self, a2, v2, v3);

  if (v5)
  {
    v9 = objc_msgSend_queue(self, v6, v7, v8);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1B7BCD18C;
    block[3] = &unk_1E7CB6AE0;
    block[4] = self;
    dispatch_sync(v9, block);
  }
}

- (void)__unlocked_reload
{
  isThrottled = objc_msgSend_isThrottled(IMIndexThrottleMonitor, a2, v2, v3);
  v9 = (objc_msgSend_ignoreThrottling(MEMORY[0x1E69A7FF8], v6, v7, v8) ^ 1) & isThrottled;
  v13 = objc_msgSend_lastState(self, v10, v11, v12);
  if (!v13 || (v17 = v13, objc_msgSend_lastState(self, v14, v15, v16), v18 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend_BOOLValue(v18, v19, v20, v21), v18, v17, v9 != v22))
  {
    v25 = objc_msgSend_changeHandler(self, v14, v15, v16);
    if (v25)
    {
      v26 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v23, v9, v24);
      objc_msgSend_setLastState_(self, v27, v26, v28);

      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = sub_1B7BCD348;
      v29[3] = &unk_1E7CB7FB0;
      v30 = v25;
      v31 = v9;
      dispatch_async(MEMORY[0x1E69E96A0], v29);
    }
  }
}

- (void)__unlocked_cancel
{
  changeHandler = self->_changeHandler;
  self->_changeHandler = 0;

  lastState = self->_lastState;
  self->_lastState = 0;

  v8 = objc_msgSend_defaults(IMIndexThrottleMonitor, v5, v6, v7);
  objc_msgSend_removeObserver_forKeyPath_context_(v8, v9, self, @"IMDIndexingLastThrottleState", 0);

  v13 = objc_msgSend_defaults(IMIndexThrottleMonitor, v10, v11, v12);
  objc_msgSend_removeObserver_forKeyPath_context_(v13, v14, self, @"IMDIndexingThrottles", 0);

  v23 = objc_msgSend_defaults(IMIndexThrottleMonitor, v15, v16, v17);
  v21 = objc_msgSend__ignoreThrottlingKey(MEMORY[0x1E69A7FF8], v18, v19, v20);
  objc_msgSend_removeObserver_forKeyPath_context_(v23, v22, self, v21, 0);
}

@end