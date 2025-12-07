@interface NPKOSTransaction
+ (NPKOSTransaction)transactionWithName:(id)name;
- (id)_initWithName:(id)name;
- (void)dealloc;
- (void)invalidate;
@end

@implementation NPKOSTransaction

- (id)_initWithName:(id)name
{
  v27 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v22.receiver = self;
  v22.super_class = NPKOSTransaction;
  v5 = [(NPKOSTransaction *)&v22 init];
  if (v5)
  {
    v6 = [nameCopy copy];
    name = v5->_name;
    v5->_name = v6;

    v8 = dispatch_queue_create("com.apple.nanopasskit.ostransaction", 0);
    internalQueue = v5->_internalQueue;
    v5->_internalQueue = v8;

    v10 = [@"com.apple.nanopasskit." stringByAppendingString:nameCopy];
    [v10 UTF8String];
    v11 = os_transaction_create();
    transaction = v5->_transaction;
    v5->_transaction = v11;

    v14 = pk_General_log(v13);
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

    if (v15)
    {
      v17 = pk_General_log(v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = objc_opt_class();
        v19 = v5->_name;
        *buf = 138412546;
        v24 = v18;
        v25 = 2112;
        v26 = v19;
        v20 = v18;
        _os_log_impl(&dword_25B300000, v17, OS_LOG_TYPE_DEFAULT, "Notice: %@: %@ begin", buf, 0x16u);
      }
    }
  }

  return v5;
}

- (void)dealloc
{
  v21 = *MEMORY[0x277D85DE8];
  if (self->_transaction)
  {
    v3 = pk_General_log(self);
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);

    if (v4)
    {
      v6 = pk_General_log(v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = objc_opt_class();
        name = self->_name;
        *buf = 136447234;
        v12 = "[NPKOSTransaction dealloc]";
        v13 = 2082;
        v14 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKOSTransaction.m";
        v15 = 2048;
        v16 = 31;
        v17 = 2112;
        v18 = v7;
        v19 = 2112;
        v20 = name;
        v9 = v7;
        _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: %@: %@ was not invalidated prior to deallocation)", buf, 0x34u);
      }
    }

    _NPKAssertAbort();
  }

  v10.receiver = self;
  v10.super_class = NPKOSTransaction;
  [(NPKOSTransaction *)&v10 dealloc];
}

+ (NPKOSTransaction)transactionWithName:(id)name
{
  nameCopy = name;
  v5 = [[self alloc] _initWithName:nameCopy];

  return v5;
}

- (void)invalidate
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__NPKOSTransaction_invalidate__block_invoke;
  block[3] = &unk_279944F98;
  block[4] = self;
  dispatch_sync(internalQueue, block);
}

void __30__NPKOSTransaction_invalidate__block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 16);
  v3 = pk_General_log(a1);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v2)
  {
    if (v4)
    {
      v6 = pk_General_log(v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = objc_opt_class();
        v8 = *(*(a1 + 32) + 24);
        v15 = 138412546;
        v16 = v7;
        v17 = 2112;
        v18 = v8;
        v9 = v7;
        _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: %@: %@ invalidated", &v15, 0x16u);
      }
    }

    v10 = *(a1 + 32);
    v11 = *(v10 + 8);
    *(v10 + 8) = 0;
LABEL_7:

    return;
  }

  if (v4)
  {
    v11 = pk_General_log(v5);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      v13 = *(*(a1 + 32) + 24);
      v15 = 138412546;
      v16 = v12;
      v17 = 2112;
      v18 = v13;
      v14 = v12;
      _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Warning: %@: %@ was already invalidated", &v15, 0x16u);
    }

    goto LABEL_7;
  }
}

@end