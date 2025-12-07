@interface BUCountingAssertionProvider
- (BOOL)_endAssertion;
- (BUCountingAssertionProvider)initWithDelegate:(id)delegate;
- (id)_newAssertion:(BOOL)assertion;
@end

@implementation BUCountingAssertionProvider

- (BUCountingAssertionProvider)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v11.receiver = self;
  v11.super_class = BUCountingAssertionProvider;
  v5 = [(BUCountingAssertionProvider *)&v11 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("BCCountingAssertionProvider.queue", v7);
    queue = v6->_queue;
    v6->_queue = v8;
  }

  return v6;
}

- (id)_newAssertion:(BOOL)assertion
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_241DC10F8;
  block[3] = &unk_278D1D8A8;
  assertionCopy = assertion;
  block[4] = self;
  block[5] = &v21;
  block[6] = &v17;
  dispatch_sync(queue, block);
  v6 = 0;
  if (*(v22 + 24) == 1)
  {
    v7 = [_BUCountingAssertion alloc];
    v8 = self->_queue;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_241DC1194;
    v14[3] = &unk_278D1D148;
    v14[4] = self;
    v5 = objc_msgSend_initWithQueue_block_(v7, v9, v8, v14);
    v6 = v5;
  }

  if (*(v18 + 24) == 1)
  {
    v10 = BUAssertionLog(v5);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_241DD08C4(v10);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    objc_msgSend_countingAssertProviderTransitionToNonZero_(WeakRetained, v12, self);
  }

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);
  return v6;
}

- (BOOL)_endAssertion
{
  dispatch_assert_queue_V2(self->_queue);
  count = self->_count;
  p_count = &self->_count;
  v5 = count;
  if (count)
  {
    *p_count = v5 - 1;
  }

  v7 = BUAssertionLog(v3);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_241DD09CC(p_count, v5 == 1, v7);
  }

  return v5 == 1;
}

@end