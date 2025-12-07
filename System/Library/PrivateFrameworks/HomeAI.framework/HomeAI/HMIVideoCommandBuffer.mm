@interface HMIVideoCommandBuffer
- (HMIVideoCommandBuffer)initWithMaxCapacity:(unint64_t)capacity;
- (HMIVideoCommandBufferDelegate)delegate;
- (double)delay;
- (void)flush;
- (void)flushAsync;
- (void)handleBlock:(id)block;
- (void)handleSampleBuffer:(opaqueCMSampleBuffer *)buffer;
- (void)setDelegate:(id)delegate queue:(id)queue;
@end

@implementation HMIVideoCommandBuffer

- (HMIVideoCommandBuffer)initWithMaxCapacity:(unint64_t)capacity
{
  v11.receiver = self;
  v11.super_class = HMIVideoCommandBuffer;
  v4 = [(HMIVideoCommandBuffer *)&v11 init];
  if (v4)
  {
    v5 = [[HMITimeIntervalAverage alloc] initWithMaxCapacity:?];
    v6 = *(v4 + 9);
    *(v4 + 9) = v5;

    v7 = MEMORY[0x277CC08F0];
    *(v4 + 24) = *MEMORY[0x277CC08F0];
    *(v4 + 5) = *(v7 + 16);
    *(v4 + 7) = capacity;
    v8 = objc_alloc_init(MEMORY[0x277CCA928]);
    v9 = *(v4 + 8);
    *(v4 + 8) = v8;
  }

  return v4;
}

- (void)setDelegate:(id)delegate queue:(id)queue
{
  queueCopy = queue;
  objc_storeWeak(&self->_delegate, delegate);
  delegateQueue = self->_delegateQueue;
  self->_delegateQueue = queueCopy;
}

- (void)handleSampleBuffer:(opaqueCMSampleBuffer *)buffer
{
  TotalSampleSize = CMSampleBufferGetTotalSampleSize(buffer);
  condition = [(HMIVideoCommandBuffer *)self condition];
  [condition lock];

  if ([(HMIVideoCommandBuffer *)self isFull])
  {
    do
    {
      condition2 = [(HMIVideoCommandBuffer *)self condition];
      [condition2 wait];
    }

    while ([(HMIVideoCommandBuffer *)self isFull]);
  }

  [(HMIVideoCommandBuffer *)self size];
  [(HMIVideoCommandBuffer *)self setSize:?];
  CFRetain(buffer);
  date = [MEMORY[0x277CBEAA8] date];
  delegateQueue = [(HMIVideoCommandBuffer *)self delegateQueue];
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __44__HMIVideoCommandBuffer_handleSampleBuffer___block_invoke;
  v15 = &unk_278755A00;
  selfCopy = self;
  v17 = date;
  bufferCopy = buffer;
  v19 = TotalSampleSize;
  v10 = date;
  dispatch_async(delegateQueue, &v12);

  v11 = [(HMIVideoCommandBuffer *)self condition:v12];
  [v11 unlock];
}

void __44__HMIVideoCommandBuffer_handleSampleBuffer___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) sampleBufferDelay];
  v3 = [MEMORY[0x277CBEAA8] date];
  [v3 timeIntervalSinceDate:?];
  [v2 addValue:?];

  v4 = [*(a1 + 32) delegate];
  [v4 buffer:? willHandleSampleBuffer:?];

  CFRelease(*(a1 + 48));
  v5 = [*(a1 + 32) condition];
  [v5 lock];

  v6 = *(a1 + 32);
  [v6 size];
  [v6 setSize:?];
  if (([*(a1 + 32) isFull] & 1) == 0)
  {
    v7 = [*(a1 + 32) condition];
    [v7 signal];
  }

  v8 = [*(a1 + 32) condition];
  [v8 unlock];
}

- (void)flushAsync
{
  delegateQueue = [(HMIVideoCommandBuffer *)self delegateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__HMIVideoCommandBuffer_flushAsync__block_invoke;
  block[3] = &unk_278752868;
  block[4] = self;
  dispatch_async(delegateQueue, block);
}

void __35__HMIVideoCommandBuffer_flushAsync__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) delegate];
  [v1 bufferWillFlush:?];
}

- (void)flush
{
  delegateQueue = [(HMIVideoCommandBuffer *)self delegateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__HMIVideoCommandBuffer_flush__block_invoke;
  block[3] = &unk_278752868;
  block[4] = self;
  dispatch_sync(delegateQueue, block);
}

void __30__HMIVideoCommandBuffer_flush__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) delegate];
  [v1 bufferWillFlush:?];
}

- (void)handleBlock:(id)block
{
  blockCopy = block;
  delegateQueue = [(HMIVideoCommandBuffer *)self delegateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__HMIVideoCommandBuffer_handleBlock___block_invoke;
  block[3] = &unk_278754068;
  v8 = blockCopy;
  v6 = blockCopy;
  dispatch_async(delegateQueue, block);
}

- (double)delay
{
  sampleBufferDelay = [(HMIVideoCommandBuffer *)self sampleBufferDelay];
  [sampleBufferDelay value];
  v4 = v3;

  return v4;
}

- (HMIVideoCommandBufferDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end