@interface ANTimer
+ (id)timerWithLabel:(id)label identifier:(id)identifier;
- (ANTimer)initWithLabel:(id)label identifier:(id)identifier;
- (id)description;
- (void)_createAndStartTimerWithQueue:(id)queue handler:(id)handler;
- (void)_startTimer;
- (void)cancel;
- (void)dealloc;
- (void)reset;
- (void)startWithValue:(double)value queue:(id)queue handler:(id)handler;
@end

@implementation ANTimer

+ (id)timerWithLabel:(id)label identifier:(id)identifier
{
  identifierCopy = identifier;
  labelCopy = label;
  v7 = [[ANTimer alloc] initWithLabel:labelCopy identifier:identifierCopy];

  return v7;
}

- (ANTimer)initWithLabel:(id)label identifier:(id)identifier
{
  labelCopy = label;
  identifierCopy = identifier;
  v16.receiver = self;
  v16.super_class = ANTimer;
  v9 = [(ANTimer *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_label, label);
    labelCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@Timer", labelCopy];
    v12 = ANLogBuildCategoryName(labelCopy, identifierCopy);
    v13 = ANLogWithCategory(v12);
    log = v10->_log;
    v10->_log = v13;
  }

  return v10;
}

- (void)dealloc
{
  [(ANTimer *)self cancel];
  v3.receiver = self;
  v3.super_class = ANTimer;
  [(ANTimer *)&v3 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  timer = [(ANTimer *)self timer];
  label = [(ANTimer *)self label];
  [(ANTimer *)self timeoutValue];
  v7 = [v3 stringWithFormat:@"Timer = %@, Label = %@, Timeout Value = %f", timer, label, v6];

  return v7;
}

- (void)startWithValue:(double)value queue:(id)queue handler:(id)handler
{
  handlerCopy = handler;
  queueCopy = queue;
  [(ANTimer *)self setTimeoutValue:value];
  [(ANTimer *)self cancel];
  [(ANTimer *)self _createAndStartTimerWithQueue:queueCopy handler:handlerCopy];
}

- (void)_createAndStartTimerWithQueue:(id)queue handler:(id)handler
{
  v14 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v7 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, queue);
  [(ANTimer *)self setTimer:v7];

  timer = [(ANTimer *)self timer];

  if (timer)
  {
    v9 = [(ANTimer *)self log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      timer2 = [(ANTimer *)self timer];
      v12 = 138412290;
      v13 = timer2;
      _os_log_impl(&dword_2237C8000, v9, OS_LOG_TYPE_DEFAULT, "Created Timer %@", &v12, 0xCu);
    }

    timer3 = [(ANTimer *)self timer];
    dispatch_source_set_event_handler(timer3, handlerCopy);

    [(ANTimer *)self _startTimer];
  }
}

- (void)_startTimer
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [(ANTimer *)self log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    timer = [(ANTimer *)self timer];
    [(ANTimer *)self timeoutValue];
    v11 = 138412546;
    v12 = timer;
    v13 = 2048;
    v14 = v5;
    _os_log_impl(&dword_2237C8000, v3, OS_LOG_TYPE_DEFAULT, "Starting Timer (%@) for %f seconds", &v11, 0x16u);
  }

  timer2 = [(ANTimer *)self timer];
  [(ANTimer *)self timeoutValue];
  v8 = dispatch_time(0, (v7 * 1000000000.0));
  [(ANTimer *)self timeoutValue];
  dispatch_source_set_timer(timer2, v8, (v9 * 1000000000.0), 0);

  timer3 = [(ANTimer *)self timer];
  dispatch_resume(timer3);
}

- (void)reset
{
  v9 = *MEMORY[0x277D85DE8];
  timer = [(ANTimer *)self timer];

  if (timer)
  {
    timer2 = [(ANTimer *)self timer];
    dispatch_suspend(timer2);

    v5 = [(ANTimer *)self log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      timer3 = [(ANTimer *)self timer];
      v7 = 138412290;
      v8 = timer3;
      _os_log_impl(&dword_2237C8000, v5, OS_LOG_TYPE_DEFAULT, "Restarting Timer %@", &v7, 0xCu);
    }

    [(ANTimer *)self _startTimer];
  }
}

- (void)cancel
{
  v9 = *MEMORY[0x277D85DE8];
  timer = [(ANTimer *)self timer];

  if (timer)
  {
    v4 = [(ANTimer *)self log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      timer2 = [(ANTimer *)self timer];
      v7 = 138412290;
      v8 = timer2;
      _os_log_impl(&dword_2237C8000, v4, OS_LOG_TYPE_DEFAULT, "Canceling and removing Timer %@", &v7, 0xCu);
    }

    timer3 = [(ANTimer *)self timer];
    dispatch_source_cancel(timer3);

    [(ANTimer *)self setTimer:0];
  }
}

@end