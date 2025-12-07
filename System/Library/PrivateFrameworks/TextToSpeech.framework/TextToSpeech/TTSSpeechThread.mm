@interface TTSSpeechThread
- (TTSSpeechThread)init;
- (void)main;
- (void)stop;
@end

@implementation TTSSpeechThread

- (TTSSpeechThread)init
{
  v6.receiver = self;
  v6.super_class = TTSSpeechThread;
  v2 = [(TTSSpeechThread *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(TTSSpeechThread *)v2 setName:@"AXSpeech"];
    v4 = voucher_copy();
    [(TTSSpeechThread *)v3 setVoucher:v4];
  }

  return v3;
}

- (void)main
{
  voucher = [(TTSSpeechThread *)self voucher];

  if (voucher)
  {
    [(TTSSpeechThread *)self voucher];
    objc_claimAutoreleasedReturnValue();
  }

  currentRunLoop = [MEMORY[0x1E695DFD0] currentRunLoop];
  threadRunLoop = self->_threadRunLoop;
  self->_threadRunLoop = currentRunLoop;

  processInfo = [MEMORY[0x1E696AE30] processInfo];
  processName = [processInfo processName];

  if (([processName isEqualToString:@"com.apple.accessibility.AccessibilityUIServer"] & 1) != 0 || objc_msgSend(processName, "isEqualToString:", @"com.apple.AccessibilityUIServer"))
  {
    AXSetThreadPriority();
  }

  port = [MEMORY[0x1E695DF60] port];
  machPort = self->_machPort;
  self->_machPort = port;

  v9 = *MEMORY[0x1E695D918];
  [(NSRunLoop *)self->_threadRunLoop addPort:self->_machPort forMode:*MEMORY[0x1E695D918]];
  do
  {
    if (([(TTSSpeechThread *)self isCancelled]& 1) != 0)
    {
      break;
    }

    v10 = self->_threadRunLoop;
    distantFuture = [MEMORY[0x1E695DF00] distantFuture];
    LOBYTE(v10) = [(NSRunLoop *)v10 runMode:v9 beforeDate:distantFuture];
  }

  while ((v10 & 1) != 0);
}

- (void)stop
{
  currentThread = [MEMORY[0x1E696AF00] currentThread];

  if (currentThread == self)
  {
    v4.receiver = self;
    v4.super_class = TTSSpeechThread;
    [(TTSSpeechThread *)&v4 cancel];
    CFRunLoopStop([(NSRunLoop *)self->_threadRunLoop getCFRunLoop]);
  }
}

@end