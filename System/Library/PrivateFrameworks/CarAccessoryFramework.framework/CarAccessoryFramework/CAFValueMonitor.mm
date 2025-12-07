@interface CAFValueMonitor
- (BOOL)_locked_receivedAllValues;
- (BOOL)receivedAllValues;
- (BOOL)valueReceivedFor:(id)for;
- (CAFValueMonitor)initWithDelegate:(id)delegate;
- (CAFValueMonitorDelegate)delegate;
- (void)monitorForValue:(id)value;
- (void)setSignaledReadyToMonitor:(BOOL)monitor;
- (void)signalReadyToMonitor;
@end

@implementation CAFValueMonitor

- (CAFValueMonitor)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v18.receiver = self;
  v18.super_class = CAFValueMonitor;
  v5 = [(CAFValueMonitor *)&v18 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
    v7 = objc_opt_new();
    monitoringForValue = v6->_monitoringForValue;
    v6->_monitoringForValue = v7;

    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_attr_make_with_qos_class(v9, QOS_CLASS_USER_INTERACTIVE, 0);

    v11 = MEMORY[0x277CCACA8];
    v12 = objc_opt_class();
    uniqueIdentifier = [delegateCopy uniqueIdentifier];
    v14 = [v11 stringWithFormat:@"com.apple.CarAccessoryFramework.%@.%@.valueMonitor", v12, uniqueIdentifier];
    v15 = dispatch_queue_create([v14 UTF8String], v10);
    monitorQueue = v6->_monitorQueue;
    v6->_monitorQueue = v15;
  }

  return v6;
}

- (BOOL)receivedAllValues
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  monitorQueue = [(CAFValueMonitor *)self monitorQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __36__CAFValueMonitor_receivedAllValues__block_invoke;
  v5[3] = &unk_27890D4F8;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(monitorQueue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

void *__36__CAFValueMonitor_receivedAllValues__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _locked_receivedAllValues];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)_locked_receivedAllValues
{
  monitoringForValue = [(CAFValueMonitor *)self monitoringForValue];
  if ([monitoringForValue count])
  {
    signaledReadyToMonitor = 0;
  }

  else
  {
    signaledReadyToMonitor = [(CAFValueMonitor *)self signaledReadyToMonitor];
  }

  return signaledReadyToMonitor;
}

- (void)monitorForValue:(id)value
{
  valueCopy = value;
  monitorQueue = [(CAFValueMonitor *)self monitorQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35__CAFValueMonitor_monitorForValue___block_invoke;
  v7[3] = &unk_27890D548;
  v7[4] = self;
  v8 = valueCopy;
  v6 = valueCopy;
  dispatch_sync(monitorQueue, v7);
}

void __35__CAFValueMonitor_monitorForValue___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) monitoringForValue];
  v5 = *(a1 + 40);
  v4 = (a1 + 40);
  [v3 addObject:v5];

  v6 = [*v2 signaledReadyToMonitor];
  if (v6)
  {
    v7 = CAFValueMonitorLogging(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __35__CAFValueMonitor_monitorForValue___block_invoke_cold_1(v2, v4);
    }
  }
}

- (void)signalReadyToMonitor
{
  monitorQueue = [(CAFValueMonitor *)self monitorQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__CAFValueMonitor_signalReadyToMonitor__block_invoke;
  block[3] = &unk_27890D4D0;
  block[4] = self;
  dispatch_async(monitorQueue, block);
}

void *__39__CAFValueMonitor_signalReadyToMonitor__block_invoke(uint64_t a1)
{
  v1 = (a1 + 32);
  result = [*(a1 + 32) signaledReadyToMonitor];
  if ((result & 1) == 0)
  {
    v3 = CAFValueMonitorLogging(result);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __39__CAFValueMonitor_signalReadyToMonitor__block_invoke_cold_1(v1, v3);
    }

    return [*v1 setSignaledReadyToMonitor:1];
  }

  return result;
}

- (BOOL)valueReceivedFor:(id)for
{
  forCopy = for;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  monitorQueue = [(CAFValueMonitor *)self monitorQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__CAFValueMonitor_valueReceivedFor___block_invoke;
  block[3] = &unk_27890D900;
  block[4] = self;
  v9 = forCopy;
  v10 = &v11;
  v6 = forCopy;
  dispatch_sync(monitorQueue, block);

  LOBYTE(forCopy) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return forCopy;
}

void __36__CAFValueMonitor_valueReceivedFor___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) monitoringForValue];
  v4 = (a1 + 40);
  v5 = [v3 containsObject:*(a1 + 40)];

  v6 = *v2;
  if (v5)
  {
    v7 = [v6 monitoringForValue];
    [v7 removeObject:*(a1 + 40)];

    v8 = [*(a1 + 32) _locked_receivedAllValues];
    *(*(*(a1 + 48) + 8) + 24) = v8;
    v9 = CAFValueMonitorLogging(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      __36__CAFValueMonitor_valueReceivedFor___block_invoke_cold_1(v2, v4);
    }
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = [v6 _locked_receivedAllValues];
  }
}

- (void)setSignaledReadyToMonitor:(BOOL)monitor
{
  if (self->_signaledReadyToMonitor != monitor)
  {
    if (monitor)
    {
      self->_signaledReadyToMonitor = monitor;
    }

    else
    {
      v3 = CAFGeneralLogging(self);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
      {
        [CAFValueMonitor setSignaledReadyToMonitor:v3];
      }
    }
  }
}

- (CAFValueMonitorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __35__CAFValueMonitor_monitorForValue___block_invoke_cold_1(id *a1, uint64_t *a2)
{
  v4 = [*a1 delegate];
  v5 = [v4 uniqueIdentifier];
  if ([*a1 signaledReadyToMonitor])
  {
    v6 = @"!!signaledReadyToMonitor!!";
  }

  else
  {
    v6 = &stru_284626CA8;
  }

  v7 = *a2;
  v8 = [*a1 monitoringForValue];
  *v15 = 136316162;
  *&v15[4] = "[CAFValueMonitor monitorForValue:]_block_invoke";
  *&v15[12] = 2112;
  *&v15[14] = v5;
  *&v15[22] = 2112;
  *v16 = 2112;
  *&v16[2] = v7;
  *&v16[10] = 2048;
  *&v16[12] = [v8 count];
  OUTLINED_FUNCTION_0_2(&dword_231618000, v9, v10, "%s %@%@ added %@ monitoring.count=%ld ", v11, v12, v13, v14, *v15, *&v15[8], *&v15[16], v6, *v16, *&v16[8], *&v16[16]);
}

void __39__CAFValueMonitor_signalReadyToMonitor__block_invoke_cold_1(id *a1, NSObject *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = [*a1 delegate];
  v5 = [v4 uniqueIdentifier];
  v6 = [*a1 monitoringForValue];
  v7 = [v6 count];
  v8 = [*a1 monitoringForValue];
  v9 = [v8 allObjects];
  v10 = [v9 componentsJoinedByString:{@", "}];
  v11 = 136315906;
  v12 = "[CAFValueMonitor signalReadyToMonitor]_block_invoke";
  v13 = 2112;
  v14 = v5;
  v15 = 2048;
  v16 = v7;
  v17 = 2112;
  v18 = v10;
  _os_log_debug_impl(&dword_231618000, a2, OS_LOG_TYPE_DEBUG, "%s %@ %ld [%@]", &v11, 0x2Au);
}

void __36__CAFValueMonitor_valueReceivedFor___block_invoke_cold_1(id *a1, void *a2)
{
  v4 = [*a1 delegate];
  v5 = [v4 uniqueIdentifier];
  v6 = [*a1 monitoringForValue];
  v7 = [v6 count];
  v8 = [*a1 signaledReadyToMonitor];
  v15 = @"NO";
  *v16 = 136316162;
  *&v16[4] = "[CAFValueMonitor valueReceivedFor:]_block_invoke";
  *&v16[12] = 2112;
  if (v8)
  {
    v15 = @"YES";
  }

  *&v16[14] = v5;
  *&v16[22] = 2048;
  *v17 = 2112;
  *&v17[2] = v15;
  *&v17[10] = 2112;
  *&v17[12] = *a2;
  OUTLINED_FUNCTION_0_2(&dword_231618000, v9, v10, "%s %@ count=%ld signaledReadyToMonitor=%@ recieved %@", v11, v12, v13, v14, *v16, *&v16[8], *&v16[16], v7, *v17, *&v17[8], HIDWORD(*a2));
}

@end