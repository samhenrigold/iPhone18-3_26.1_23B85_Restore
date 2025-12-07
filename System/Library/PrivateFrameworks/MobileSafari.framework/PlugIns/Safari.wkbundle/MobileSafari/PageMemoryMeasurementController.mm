@interface PageMemoryMeasurementController
- (PageMemoryMeasurementController)initWithPluginPageContextController:(id)controller pagesNeedingMemoryWarningSent:(id)sent;
- (id)_memoryUsage:(BOOL)usage;
- (void)_postPageLoadEnd;
- (void)_waitForMemoryPressureHandlerTimerFired:(id)fired;
@end

@implementation PageMemoryMeasurementController

- (PageMemoryMeasurementController)initWithPluginPageContextController:(id)controller pagesNeedingMemoryWarningSent:(id)sent
{
  sentCopy = sent;
  v12.receiver = self;
  v12.super_class = PageMemoryMeasurementController;
  v8 = [(MeasurementControllerBase *)&v12 initWithPluginPageContextController:controller];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_pagesNeedingMemoryWarningSent, sent);
    v9->_currentPageIndex = -1;
    v10 = v9;
  }

  return v9;
}

- (id)_memoryUsage:(BOOL)usage
{
  usageCopy = usage;
  task_info_outCnt = 93;
  if (task_info(*MEMORY[0x277D85F48], 0x16u, task_info_out, &task_info_outCnt))
  {
    v4 = 0;
  }

  else if (usageCopy)
  {
    v4 = v11;
  }

  else
  {
    v4 = v10 + v9;
  }

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v4];

  return v5;
}

- (void)_postPageLoadEnd
{
  v3 = [(NSMutableDictionary *)self->super._loadData objectForKey:@"PageMemoryBeforeWarning"];

  if (!v3)
  {
    v10 = [(NSArray *)self->_pagesNeedingMemoryWarningSent objectAtIndex:self->_currentPageIndex];
    bOOLValue = [v10 BOOLValue];

    if (bOOLValue)
    {
      v11 = [(PageMemoryMeasurementController *)self _memoryUsage:1];
      [NSMutableDictionary setValue:"setValue:forKey:" forKey:?];
      notify_post("org.WebKit.lowMemory");
      v5 = objc_alloc(MEMORY[0x277CBEBB8]);
      v6 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:2.0];
      v7 = [v5 initWithFireDate:v6 interval:self target:sel__waitForMemoryPressureHandlerTimerFired_ selector:0 userInfo:0 repeats:0.0];
      waitForMemoryPressureHandler = self->_waitForMemoryPressureHandler;
      self->_waitForMemoryPressureHandler = v7;

      currentRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
      [currentRunLoop addTimer:self->_waitForMemoryPressureHandler forMode:*MEMORY[0x277CBE640]];
    }

    else
    {
      [(MeasurementControllerBase *)self _sendPageLoadFinishedEvent];

      [(MeasurementControllerBase *)self _clearPageLoadState];
    }
  }
}

- (void)_waitForMemoryPressureHandlerTimerFired:(id)fired
{
  v4 = [(PageMemoryMeasurementController *)self _memoryUsage:0];
  [NSMutableDictionary setValue:"setValue:forKey:" forKey:?];
  [(MeasurementControllerBase *)self _sendPageLoadFinishedEvent];
  [(MeasurementControllerBase *)self _clearPageLoadState];
}

@end