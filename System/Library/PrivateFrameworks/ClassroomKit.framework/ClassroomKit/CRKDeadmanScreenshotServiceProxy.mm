@interface CRKDeadmanScreenshotServiceProxy
- (CRKDeadmanScreenshotServiceProxy)initWithTimeout:(double)timeout;
- (CRKScreenshotServiceInterface)underlyingProxy;
- (void)dealloc;
- (void)fetchScreenshotDataWithMaximumSizeInPixels:(CGSize)pixels completion:(id)completion;
- (void)startTimer;
- (void)stopTimer;
@end

@implementation CRKDeadmanScreenshotServiceProxy

- (void)dealloc
{
  [(CRKDeadmanScreenshotServiceProxy *)self stopTimer];
  v3.receiver = self;
  v3.super_class = CRKDeadmanScreenshotServiceProxy;
  [(CRKDeadmanScreenshotServiceProxy *)&v3 dealloc];
}

- (CRKDeadmanScreenshotServiceProxy)initWithTimeout:(double)timeout
{
  v5.receiver = self;
  v5.super_class = CRKDeadmanScreenshotServiceProxy;
  result = [(CRKDeadmanScreenshotServiceProxy *)&v5 init];
  if (result)
  {
    result->_timeout = timeout;
  }

  return result;
}

- (void)fetchScreenshotDataWithMaximumSizeInPixels:(CGSize)pixels completion:(id)completion
{
  height = pixels.height;
  width = pixels.width;
  completionCopy = completion;
  [(CRKDeadmanScreenshotServiceProxy *)self setCountOfInFlightRequests:[(CRKDeadmanScreenshotServiceProxy *)self countOfInFlightRequests]+ 1];
  [(CRKDeadmanScreenshotServiceProxy *)self stopTimer];
  underlyingProxy = [(CRKDeadmanScreenshotServiceProxy *)self underlyingProxy];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __90__CRKDeadmanScreenshotServiceProxy_fetchScreenshotDataWithMaximumSizeInPixels_completion___block_invoke;
  v10[3] = &unk_278DC2F70;
  v10[4] = self;
  v11 = completionCopy;
  v9 = completionCopy;
  [underlyingProxy fetchScreenshotDataWithMaximumSizeInPixels:v10 completion:{width, height}];
}

void *__90__CRKDeadmanScreenshotServiceProxy_fetchScreenshotDataWithMaximumSizeInPixels_completion___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) setCountOfInFlightRequests:{objc_msgSend(*(a1 + 32), "countOfInFlightRequests") - 1}];
  result = [*(a1 + 32) countOfInFlightRequests];
  if (!result)
  {
    v3 = *(a1 + 32);

    return [v3 startTimer];
  }

  return result;
}

- (void)startTimer
{
  timer = [(CRKDeadmanScreenshotServiceProxy *)self timer];

  if (!timer)
  {
    v5 = _CRKLogGeneral_14(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_243550000, v5, OS_LOG_TYPE_DEFAULT, "Starting ScreenshotService deadman timer", buf, 2u);
    }

    objc_initWeak(buf, self);
    v6 = MEMORY[0x277CBEBB8];
    [(CRKDeadmanScreenshotServiceProxy *)self timeout];
    v8 = v7;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __46__CRKDeadmanScreenshotServiceProxy_startTimer__block_invoke;
    v10[3] = &unk_278DC2F98;
    objc_copyWeak(&v11, buf);
    v9 = [v6 scheduledTimerWithTimeInterval:0 repeats:v10 block:v8];
    [(CRKDeadmanScreenshotServiceProxy *)self setTimer:v9];

    objc_destroyWeak(&v11);
    objc_destroyWeak(buf);
  }
}

void __46__CRKDeadmanScreenshotServiceProxy_startTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = _CRKLogGeneral_14(WeakRetained);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_243550000, v3, OS_LOG_TYPE_DEFAULT, "ScreenshotService deadman timer fired. Tearing down connection", v4, 2u);
    }

    [v2 setUnderlyingProxy:0];
    [v2 setTimer:0];
  }
}

- (void)stopTimer
{
  timer = [(CRKDeadmanScreenshotServiceProxy *)self timer];

  if (timer)
  {
    v5 = _CRKLogGeneral_14(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_243550000, v5, OS_LOG_TYPE_DEFAULT, "Invalidating ScreenshotService deadman timer", v7, 2u);
    }

    timer2 = [(CRKDeadmanScreenshotServiceProxy *)self timer];
    [timer2 invalidate];

    [(CRKDeadmanScreenshotServiceProxy *)self setTimer:0];
  }
}

- (CRKScreenshotServiceInterface)underlyingProxy
{
  underlyingProxy = self->_underlyingProxy;
  if (!underlyingProxy)
  {
    v4 = objc_opt_new();
    v5 = self->_underlyingProxy;
    self->_underlyingProxy = v4;

    underlyingProxy = self->_underlyingProxy;
  }

  return underlyingProxy;
}

@end