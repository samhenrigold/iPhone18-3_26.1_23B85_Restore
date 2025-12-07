@interface HFMessageBatcher
- (HFMessageBatcher)initWithIdentifier:(id)identifier batchingInterval:(double)interval maxDelay:(double)delay block:(id)block;
- (NSSet)objects;
- (void)batchObject:(id)object sender:(SEL)sender;
- (void)batchObjects:(id)objects sender:(SEL)sender;
- (void)didAddToBatchWithSender:(SEL)sender;
- (void)executeBatch;
- (void)reset;
@end

@implementation HFMessageBatcher

- (HFMessageBatcher)initWithIdentifier:(id)identifier batchingInterval:(double)interval maxDelay:(double)delay block:(id)block
{
  identifierCopy = identifier;
  blockCopy = block;
  v21.receiver = self;
  v21.super_class = HFMessageBatcher;
  v13 = [(HFMessageBatcher *)&v21 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_identifier, identifier);
    v14->_batchingInterval = interval;
    v14->_maxDelay = delay;
    v15 = [MEMORY[0x277CBEB58] set];
    mutableObjects = v14->_mutableObjects;
    v14->_mutableObjects = v15;

    v17 = _Block_copy(blockCopy);
    block = v14->_block;
    v14->_block = v17;

    v19 = HFLogForCategory(0x36uLL);
    v14->signpostID = os_signpost_id_generate(v19);
  }

  return v14;
}

- (NSSet)objects
{
  mutableObjects = [(HFMessageBatcher *)self mutableObjects];
  v3 = [mutableObjects copy];

  return v3;
}

- (void)reset
{
  cancelable = [(HFMessageBatcher *)self cancelable];
  [cancelable cancel];

  [(HFMessageBatcher *)self setCancelable:0];
  mutableObjects = [(HFMessageBatcher *)self mutableObjects];
  [mutableObjects removeAllObjects];
}

- (void)batchObjects:(id)objects sender:(SEL)sender
{
  objectsCopy = objects;
  mutableObjects = [(HFMessageBatcher *)self mutableObjects];
  [mutableObjects unionSet:objectsCopy];

  [(HFMessageBatcher *)self didAddToBatchWithSender:sender];
}

- (void)batchObject:(id)object sender:(SEL)sender
{
  objectCopy = object;
  mutableObjects = [(HFMessageBatcher *)self mutableObjects];
  [mutableObjects addObject:objectCopy];

  [(HFMessageBatcher *)self didAddToBatchWithSender:sender];
}

- (void)didAddToBatchWithSender:(SEL)sender
{
  v30 = *MEMORY[0x277D85DE8];
  batchBeginDate = [(HFMessageBatcher *)self batchBeginDate];

  if (batchBeginDate)
  {
    batchBeginDate2 = [(HFMessageBatcher *)self batchBeginDate];
    [batchBeginDate2 timeIntervalSinceNow];
    v8 = fabs(v7);
    [(HFMessageBatcher *)self maxDelay];
    v10 = v9;

    if (v8 >= v10)
    {
      cancelable = [(HFMessageBatcher *)self cancelable];
      [cancelable cancel];

      [(HFMessageBatcher *)self executeBatch];
      return;
    }
  }

  else
  {
    date = [MEMORY[0x277CBEAA8] date];
    [(HFMessageBatcher *)self setBatchBeginDate:date];

    v13 = HFLogForCategory(0x36uLL);
    v14 = v13;
    signpostID = self->signpostID;
    if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      identifier = [(HFMessageBatcher *)self identifier];
      v17 = NSStringFromSelector(sender);
      *buf = 138543618;
      v27 = identifier;
      v28 = 2114;
      v29 = v17;
      _os_signpost_emit_with_name_impl(&dword_20D9BF000, v14, OS_SIGNPOST_INTERVAL_BEGIN, signpostID, "HFMessageBatcher", "HFMessageBatcher-%{public}@: Started batch with sender %{public}@", buf, 0x16u);
    }
  }

  cancelable2 = [(HFMessageBatcher *)self cancelable];

  if (cancelable2)
  {
    cancelable3 = [(HFMessageBatcher *)self cancelable];
    [cancelable3 cancel];
  }

  objc_initWeak(buf, self);
  mainThreadScheduler = [MEMORY[0x277D2C938] mainThreadScheduler];
  [(HFMessageBatcher *)self batchingInterval];
  v22 = v21;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __44__HFMessageBatcher_didAddToBatchWithSender___block_invoke;
  v24[3] = &unk_277DF4460;
  objc_copyWeak(&v25, buf);
  v23 = [mainThreadScheduler afterDelay:v24 performBlock:v22];
  [(HFMessageBatcher *)self setCancelable:v23];

  objc_destroyWeak(&v25);
  objc_destroyWeak(buf);
}

void __44__HFMessageBatcher_didAddToBatchWithSender___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained executeBatch];
    WeakRetained = v2;
  }
}

- (void)executeBatch
{
  v14 = *MEMORY[0x277D85DE8];
  objects = [(HFMessageBatcher *)self objects];
  [(HFMessageBatcher *)self setCancelable:0];
  mutableObjects = [(HFMessageBatcher *)self mutableObjects];
  [mutableObjects removeAllObjects];

  [(HFMessageBatcher *)self setBatchBeginDate:0];
  if ([objects count])
  {
    v5 = HFLogForCategory(0x36uLL);
    v6 = v5;
    signpostID = self->signpostID;
    if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
    {
      identifier = [(HFMessageBatcher *)self identifier];
      v10 = 138543618;
      v11 = identifier;
      v12 = 2048;
      v13 = [objects count];
      _os_signpost_emit_with_name_impl(&dword_20D9BF000, v6, OS_SIGNPOST_INTERVAL_END, signpostID, "HFMessageBatcher", "HFMessageBatcher-%{public}@: executing batch with %lu objects", &v10, 0x16u);
    }

    block = [(HFMessageBatcher *)self block];
    (block)[2](block, objects);
  }
}

@end