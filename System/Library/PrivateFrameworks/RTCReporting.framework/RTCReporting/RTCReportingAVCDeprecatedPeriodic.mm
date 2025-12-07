@interface RTCReportingAVCDeprecatedPeriodic
- (BOOL)registerPeriodicTaskForModule:(unsigned int)module needToUpdate:(BOOL)update needToReport:(BOOL)report serviceBlock:(id)block;
- (BOOL)unregisterPeriodTaskForModule:(unsigned int)module;
- (RTCReportingAVCDeprecatedPeriodic)initWithSession:(id)session;
- (void)_myPeriodicTask:(unsigned __int16)task type:(unsigned __int16)type intervalMultiplier:(int)multiplier updateTimeout:(unint64_t)timeout;
- (void)dealloc;
- (void)startLogTimerWithInterval:(int)interval reportingMultiplier:(int)multiplier category:(unsigned __int16)category type:(unsigned __int16)type;
- (void)stopLogTimer;
@end

@implementation RTCReportingAVCDeprecatedPeriodic

- (RTCReportingAVCDeprecatedPeriodic)initWithSession:(id)session
{
  v9.receiver = self;
  v9.super_class = RTCReportingAVCDeprecatedPeriodic;
  v4 = [(RTCReportingAVCDeprecatedPeriodic *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_session = session;
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5->_queue = dispatch_queue_create("com.apple.AVConference.RTCPeriodicTask", v6);
    v7 = dispatch_queue_attr_make_with_qos_class(MEMORY[0x277D85CD8], QOS_CLASS_USER_INITIATED, 0);
    v5->_periodicTaskQueue = dispatch_queue_create("com.apple.AVConference.PeriodicReportingTask", v7);
    v5->_periodicServiceDict = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  return v5;
}

- (void)dealloc
{
  if (self->_timer)
  {
    [(RTCReportingAVCDeprecatedPeriodic *)self stopLogTimer];
  }

  dispatch_release(self->_queue);
  dispatch_release(self->_periodicTaskQueue);
  v3.receiver = self;
  v3.super_class = RTCReportingAVCDeprecatedPeriodic;
  [(RTCReportingAVCDeprecatedPeriodic *)&v3 dealloc];
}

- (void)_myPeriodicTask:(unsigned __int16)task type:(unsigned __int16)type intervalMultiplier:(int)multiplier updateTimeout:(unint64_t)timeout
{
  typeCopy = type;
  taskCopy = task;
  v90 = *MEMORY[0x277D85DE8];
  ++self->_counter;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [RTCReportingAVCDeprecatedPeriodic _myPeriodicTask:type:intervalMultiplier:updateTimeout:];
  }

  group = dispatch_group_create();
  v11 = dispatch_semaphore_create(4);
  if (self->_counter == multiplier)
  {
    v64 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v81 = 0;
    v82 = &v81;
    v83 = 0x6010000000;
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v89 = 0;
    v84 = "";
    v85 = 850045863;
    v12 = [-[NSMutableDictionary allKeys](self->_periodicServiceDict "allKeys")];
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v13 = [v12 countByEnumeratingWithState:&v73 objects:v80 count:16];
    if (v13)
    {
      v63 = typeCopy;
      v14 = *v74;
      v15 = 95000000000 * timeout / 0x64;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v74 != v14)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [(NSMutableDictionary *)self->_periodicServiceDict objectForKey:*(*(&v73 + 1) + 8 * i)];
          if ([v17 report])
          {
            v18 = dispatch_time(0, v15);
            if (dispatch_semaphore_wait(v11, v18))
            {
              v36 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
              taskCopy = taskCopy;
              typeCopy = v63;
              if (v36)
              {
                [(RTCReportingAVCDeprecatedPeriodic *)v36 _myPeriodicTask:v37 type:v38 intervalMultiplier:v39 updateTimeout:v40, v41, v42, v43];
              }

              goto LABEL_40;
            }

            periodicTaskQueue = self->_periodicTaskQueue;
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __91__RTCReportingAVCDeprecatedPeriodic__myPeriodicTask_type_intervalMultiplier_updateTimeout___block_invoke_27;
            block[3] = &unk_2784F1250;
            block[4] = v17;
            block[5] = v64;
            block[6] = v11;
            block[7] = &v81;
            dispatch_group_async(group, periodicTaskQueue, block);
          }
        }

        v13 = [v12 countByEnumeratingWithState:&v73 objects:v80 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }

      taskCopy = taskCopy;
      typeCopy = v63;
    }

    else
    {
      v15 = 95000000000 * timeout / 0x64;
    }

    v53 = dispatch_time(0, v15);
    if (dispatch_group_wait(group, v53))
    {
      v54 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (v54)
      {
        [(RTCReportingAVCDeprecatedPeriodic *)v54 _myPeriodicTask:v55 type:v56 intervalMultiplier:v57 updateTimeout:v58, v59, v60, v61];
      }
    }

LABEL_40:
    pthread_mutex_lock((v82 + 4));
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      [RTCReportingAVCDeprecatedPeriodic _myPeriodicTask:type:intervalMultiplier:updateTimeout:];
    }

    v71 = 0;
    if ([v64 count])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        [RTCReportingAVCDeprecatedPeriodic _myPeriodicTask:type:intervalMultiplier:updateTimeout:];
      }

      v79[0] = &unk_283722868;
      v78[0] = @"ParametersFlag";
      v78[1] = @"ParametersCategory";
      v79[1] = [MEMORY[0x277CCABB0] numberWithUnsignedShort:taskCopy];
      v78[2] = @"ParametersType";
      v62 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:typeCopy];
      v78[3] = @"ParametersPayload";
      v79[2] = v62;
      v79[3] = v64;
      -[RTCReporting sendMessageWithDictionary:error:](self->_session, "sendMessageWithDictionary:error:", [MEMORY[0x277CBEAC0] dictionaryWithObjects:v79 forKeys:v78 count:4], &v71);
    }

    pthread_mutex_unlock((v82 + 4));

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      [RTCReportingAVCDeprecatedPeriodic _myPeriodicTask:type:intervalMultiplier:updateTimeout:];
    }

    self->_counter = 0;
    _Block_object_dispose(&v81, 8);
  }

  else
  {
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    periodicServiceDict = self->_periodicServiceDict;
    v21 = [(NSMutableDictionary *)periodicServiceDict countByEnumeratingWithState:&v67 objects:v77 count:16];
    if (v21)
    {
      v22 = *v68;
      v23 = 95000000000 * timeout / 0x64;
      while (2)
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v68 != v22)
          {
            objc_enumerationMutation(periodicServiceDict);
          }

          v25 = [(NSMutableDictionary *)self->_periodicServiceDict objectForKey:*(*(&v67 + 1) + 8 * j)];
          if ([v25 update])
          {
            v26 = dispatch_time(0, v23);
            if (dispatch_semaphore_wait(v11, v26))
            {
              v28 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
              if (v28)
              {
                [(RTCReportingAVCDeprecatedPeriodic *)v28 _myPeriodicTask:v29 type:v30 intervalMultiplier:v31 updateTimeout:v32, v33, v34, v35];
              }

              goto LABEL_34;
            }

            v27 = self->_periodicTaskQueue;
            v66[0] = MEMORY[0x277D85DD0];
            v66[1] = 3221225472;
            v66[2] = __91__RTCReportingAVCDeprecatedPeriodic__myPeriodicTask_type_intervalMultiplier_updateTimeout___block_invoke_32;
            v66[3] = &unk_2784F1278;
            v66[4] = v25;
            v66[5] = v11;
            dispatch_group_async(group, v27, v66);
          }
        }

        v21 = [(NSMutableDictionary *)periodicServiceDict countByEnumeratingWithState:&v67 objects:v77 count:16];
        if (v21)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v23 = 95000000000 * timeout / 0x64;
    }

    v44 = dispatch_time(0, v23);
    if (dispatch_group_wait(group, v44))
    {
      v45 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (v45)
      {
        [(RTCReportingAVCDeprecatedPeriodic *)v45 _myPeriodicTask:v46 type:v47 intervalMultiplier:v48 updateTimeout:v49, v50, v51, v52];
      }
    }

LABEL_34:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      [RTCReportingAVCDeprecatedPeriodic _myPeriodicTask:type:intervalMultiplier:updateTimeout:];
    }
  }

  dispatch_release(group);
  dispatch_release(v11);
}

uint64_t __91__RTCReportingAVCDeprecatedPeriodic__myPeriodicTask_type_intervalMultiplier_updateTimeout___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = [a2 integerValue];
  if (v5 > [a3 integerValue])
  {
    return 1;
  }

  v7 = [a2 integerValue];
  if (v7 >= [a3 integerValue])
  {
    return 0;
  }

  else
  {
    return -1;
  }
}

intptr_t __91__RTCReportingAVCDeprecatedPeriodic__myPeriodicTask_type_intervalMultiplier_updateTimeout___block_invoke_27(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = [*(a1 + 32) block];
  (*(v3 + 16))(v3, v2);
  pthread_mutex_lock((*(*(a1 + 56) + 8) + 32));
  if (v2)
  {
    v4 = *(a1 + 40);
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v2);
          }

          v9 = *(*(&v11 + 1) + 8 * i);
          [v2 objectForKeyedSubscript:v9];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if ([v4 objectForKeyedSubscript:v9])
            {
              [objc_msgSend(v4 objectForKeyedSubscript:{v9), "addEntriesFromDictionary:", objc_msgSend(v2, "objectForKeyedSubscript:", v9)}];
              continue;
            }
          }

          else
          {
            [v2 objectForKeyedSubscript:v9];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && [v4 objectForKeyedSubscript:v9])
            {
              [objc_msgSend(v4 objectForKeyedSubscript:{v9), "addObjectsFromArray:", objc_msgSend(v2, "objectForKeyedSubscript:", v9)}];
              continue;
            }
          }

          [v4 setObject:objc_msgSend(v2 forKeyedSubscript:{"objectForKeyedSubscript:", v9), v9}];
        }

        v6 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }
  }

  pthread_mutex_unlock((*(*(a1 + 56) + 8) + 32));

  return dispatch_semaphore_signal(*(a1 + 48));
}

intptr_t __91__RTCReportingAVCDeprecatedPeriodic__myPeriodicTask_type_intervalMultiplier_updateTimeout___block_invoke_32(uint64_t a1)
{
  v2 = [*(a1 + 32) block];
  (*(v2 + 16))(v2, 0);
  v3 = *(a1 + 40);

  return dispatch_semaphore_signal(v3);
}

- (void)startLogTimerWithInterval:(int)interval reportingMultiplier:(int)multiplier category:(unsigned __int16)category type:(unsigned __int16)type
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __97__RTCReportingAVCDeprecatedPeriodic_startLogTimerWithInterval_reportingMultiplier_category_type___block_invoke;
  block[3] = &unk_2784F12C8;
  block[4] = self;
  categoryCopy = category;
  typeCopy = type;
  intervalCopy = interval;
  multiplierCopy = multiplier;
  dispatch_async(queue, block);
}

void __97__RTCReportingAVCDeprecatedPeriodic_startLogTimerWithInterval_reportingMultiplier_category_type___block_invoke(dispatch_source_t result)
{
  isa = result[4].isa;
  if (!*(isa + 5))
  {
    *(result[4].isa + 5) = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(isa + 3));
    v3 = result[4].isa;
    if (*(v3 + 5))
    {
      *(v3 + 2) = 0;
      v4 = 1000000000 * LODWORD(result[5].isa);
      v5 = *(result[4].isa + 5);
      v6 = dispatch_walltime(0, 0);
      dispatch_source_set_timer(v5, v6, v4, 0x5F5E100uLL);
      v7 = result[4].isa;
      v8 = *(v7 + 5);
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __97__RTCReportingAVCDeprecatedPeriodic_startLogTimerWithInterval_reportingMultiplier_category_type___block_invoke_2;
      handler[3] = &unk_2784F12A0;
      v9 = result[6].isa;
      isa_high = HIDWORD(result[5].isa);
      v12 = v9;
      handler[4] = v7;
      handler[5] = v4;
      dispatch_source_set_event_handler(v8, handler);
      dispatch_resume(*(result[4].isa + 5));
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        __97__RTCReportingAVCDeprecatedPeriodic_startLogTimerWithInterval_reportingMultiplier_category_type___block_invoke_cold_1();
      }
    }
  }
}

- (void)stopLogTimer
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__RTCReportingAVCDeprecatedPeriodic_stopLogTimer__block_invoke;
  block[3] = &unk_2784F12F0;
  block[4] = self;
  dispatch_async(queue, block);
}

void __49__RTCReportingAVCDeprecatedPeriodic_stopLogTimer__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 40);
  v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
  if (v2)
  {
    if (v3)
    {
      *v4 = 0;
      _os_log_debug_impl(&dword_223C26000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "stopLogTimer.", v4, 2u);
      v2 = *(*(a1 + 32) + 40);
    }

    dispatch_source_cancel(v2);
    dispatch_release(*(*(a1 + 32) + 40));
    *(*(a1 + 32) + 40) = 0;
    [*(*(a1 + 32) + 16) removeAllObjects];
    *(*(a1 + 32) + 8) = 0;
  }

  else if (v3)
  {
    __49__RTCReportingAVCDeprecatedPeriodic_stopLogTimer__block_invoke_cold_1();
  }
}

- (BOOL)registerPeriodicTaskForModule:(unsigned int)module needToUpdate:(BOOL)update needToReport:(BOOL)report serviceBlock:(id)block
{
  if (block)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __106__RTCReportingAVCDeprecatedPeriodic_registerPeriodicTaskForModule_needToUpdate_needToReport_serviceBlock___block_invoke;
    block[3] = &unk_2784F1318;
    updateCopy = update;
    reportCopy = report;
    block[4] = self;
    block[5] = block;
    moduleCopy = module;
    dispatch_async(queue, block);
  }

  return block != 0;
}

void __106__RTCReportingAVCDeprecatedPeriodic_registerPeriodicTaskForModule_needToUpdate_needToReport_serviceBlock___block_invoke(uint64_t a1)
{
  v2 = [[UpdateAndReportServices alloc] initWithServices:*(a1 + 52) needToReport:*(a1 + 53) service:*(a1 + 40)];
  if (v2)
  {
    v3 = v2;
    [*(*(a1 + 32) + 16) setObject:v2 forKeyedSubscript:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInt:", *(a1 + 48))}];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      __106__RTCReportingAVCDeprecatedPeriodic_registerPeriodicTaskForModule_needToUpdate_needToReport_serviceBlock___block_invoke_cold_1();
    }
  }
}

- (BOOL)unregisterPeriodTaskForModule:(unsigned int)module
{
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __67__RTCReportingAVCDeprecatedPeriodic_unregisterPeriodTaskForModule___block_invoke;
  v5[3] = &unk_2784F1340;
  v5[4] = self;
  moduleCopy = module;
  dispatch_sync(queue, v5);
  return 1;
}

void __67__RTCReportingAVCDeprecatedPeriodic_unregisterPeriodTaskForModule___block_invoke(uint64_t a1)
{
  if ([*(*(a1 + 32) + 16) objectForKey:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInt:", *(a1 + 40))}])
  {
    [*(*(a1 + 32) + 16) removeObjectForKey:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInt:", *(a1 + 40))}];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      __67__RTCReportingAVCDeprecatedPeriodic_unregisterPeriodTaskForModule___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    __67__RTCReportingAVCDeprecatedPeriodic_unregisterPeriodTaskForModule___block_invoke_cold_2();
  }
}

void __97__RTCReportingAVCDeprecatedPeriodic_startLogTimerWithInterval_reportingMultiplier_category_type___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xEu);
}

@end