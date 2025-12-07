@interface TMLTimer
+ (void)initializeJSContext:(id)context;
- (void)setRunning:(BOOL)running;
- (void)start;
- (void)timerFired:(id)fired;
- (void)tmlDispose;
@end

@implementation TMLTimer

- (void)tmlDispose
{
  [(NSTimer *)self->_timer invalidate];
  timer = self->_timer;
  self->_timer = 0;

  v4.receiver = self;
  v4.super_class = TMLTimer;
  [&v4 tmlDispose];
}

- (void)setRunning:(BOOL)running
{
  if (self->_running == running)
  {
    return;
  }

  v12 = v4;
  v13 = v3;
  if (!running)
  {
    [(NSTimer *)self->_timer invalidate];
    timer = self->_timer;
    self->_timer = 0;
    goto LABEL_7;
  }

  v8 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel_timerFired_ selector:0 userInfo:self->_repeats repeats:self->_interval];
  v9 = self->_timer;
  self->_timer = v8;

  [(NSTimer *)self->_timer setTolerance:self->_tolerance];
  runLoopMode = self->_runLoopMode;
  if (runLoopMode && ![(NSString *)runLoopMode isEqualToString:*MEMORY[0x277CBE640]])
  {
    timer = [MEMORY[0x277CBEB88] currentRunLoop];
    [timer addTimer:self->_timer forMode:self->_runLoopMode];
LABEL_7:
  }

  [(TMLTimer *)self willChangeValueForKey:@"running", v12, v13, v5];
  self->_running = self->_timer != 0;

  [(TMLTimer *)self didChangeValueForKey:@"running"];
}

- (void)timerFired:(id)fired
{
  firedCopy = fired;
  if (!self->_repeats)
  {
    [(TMLTimer *)self stop];
  }

  block = self->_block;
  if (block)
  {
    block[2]();
  }

  else
  {
    [self emitTMLSignal:@"fired" withArguments:0];
  }
}

- (void)start
{
  if (self->_running)
  {
    [(NSTimer *)self->_timer invalidate];
    timer = self->_timer;
    self->_timer = 0;

    self->_running = 0;
  }

  MEMORY[0x2821F9670](self, sel_setRunning_);
}

+ (void)initializeJSContext:(id)context
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_26F1CCF7C;
  v5[3] = &unk_279DC81A8;
  v5[4] = self;
  contextCopy = context;
  v4 = MEMORY[0x27438BB60](v5);
  [contextCopy setObject:v4 forKeyedSubscript:@"timer"];
}

@end