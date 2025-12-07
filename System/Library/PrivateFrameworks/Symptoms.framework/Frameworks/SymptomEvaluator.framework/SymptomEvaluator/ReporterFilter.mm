@interface ReporterFilter
+ (id)filterForId:(unsigned int)id;
+ (id)filterForName:(id)name id:(id)id;
+ (void)enumerateReporterFiltersUsingBlock:(id)block;
+ (void)initialize;
- (ReporterFilter)init;
- (int)configureSymptomFilter:(id)filter;
- (void)pushFinalFilters;
- (void)pushTransportFilters;
- (void)setFinalTimer:(int64_t)timer;
- (void)updateTransportFilters;
@end

@implementation ReporterFilter

+ (void)initialize
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = reporterFilters;
  reporterFilters = v2;

  MEMORY[0x2821F96F8](v2, v3);
}

- (ReporterFilter)init
{
  v6.receiver = self;
  v6.super_class = ReporterFilter;
  v2 = [(ReporterFilter *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    symptomFilters = v2->_symptomFilters;
    v2->_symptomFilters = v3;
  }

  return v2;
}

+ (id)filterForName:(id)name id:(id)id
{
  nameCopy = name;
  idCopy = id;
  v8 = [reporterFilters objectForKey:idCopy];
  if (!v8)
  {
    v9 = objc_alloc_init(ReporterFilter);
    v8 = v9;
    if (v9)
    {
      objc_storeStrong(&v9->_reporterName, name);
      v8[9] = [idCopy unsignedIntValue];
      [reporterFilters setObject:v8 forKey:idCopy];
    }
  }

  v10 = v8;

  return v10;
}

+ (void)enumerateReporterFiltersUsingBlock:(id)block
{
  v14 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v4 = filterLogHandle;
  if (os_log_type_enabled(filterLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v5 = reporterFilters;
    v6 = v4;
    v7 = [v5 description];
    *buf = 136315138;
    uTF8String = [v7 UTF8String];
    _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEBUG, "enumerateReporterFiltersUsingBlock, look at reporterFilters %s", buf, 0xCu);
  }

  v8 = reporterFilters;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __53__ReporterFilter_enumerateReporterFiltersUsingBlock___block_invoke;
  v10[3] = &unk_27898E628;
  v11 = blockCopy;
  v9 = blockCopy;
  [v8 enumerateKeysAndObjectsUsingBlock:v10];
}

+ (id)filterForId:(unsigned int)id
{
  v3 = reporterFilters;
  v4 = [MEMORY[0x277CCABB0] numberWithInt:*&id];
  v5 = [v3 objectForKey:v4];

  return v5;
}

- (void)updateTransportFilters
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB28] dataWithLength:{16 * -[NSMutableArray count](self->_symptomFilters, "count")}];
  mutableBytes = [v3 mutableBytes];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_symptomFilters;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v5);
        }

        currentFilter = [*(*(&v15 + 1) + 8 * i) currentFilter];
        v12 = currentFilter;
        if (currentFilter)
        {
          *mutableBytes = 1;
          *(mutableBytes + 4) = [currentFilter symptomId] | (self->_reporterId << 20);
          *(mutableBytes + 8) = [v12 queueLenAlert];
          *(mutableBytes + 10) = [v12 queueLenDrop];
          *(mutableBytes + 12) = [v12 queueTimeLimit];
          mutableBytes += 16;
          ++v8;
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v7);

    if (v8)
    {
      [v3 setLength:16 * v8];
      goto LABEL_14;
    }
  }

  else
  {
  }

  v3 = 0;
LABEL_14:
  objc_storeStrong(&self->_filterMessage, v3);
  v13 = evaluationLogHandle;
  if (os_log_type_enabled(evaluationLogHandle, OS_LOG_TYPE_DEBUG))
  {
    filterMessage = self->_filterMessage;
    *buf = 138412290;
    v20 = filterMessage;
    _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_DEBUG, "updateTransportFilters: Set filter data to %@", buf, 0xCu);
  }
}

- (void)pushTransportFilters
{
  if (self->_filterMessage)
  {
    [TransportHandler updateFilters:self->_reporterId];
  }
}

- (void)pushFinalFilters
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = evaluationLogHandle;
  if (os_log_type_enabled(evaluationLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEBUG, "pushFinalFilters entry", buf, 2u);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  selfCopy = self;
  v4 = self->_symptomFilters;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = evaluationLogHandle;
        if (os_log_type_enabled(evaluationLogHandle, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v20 = v9;
          _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEBUG, "pushFinalFilters check SymptomFilter %@", buf, 0xCu);
        }

        finalFilter = [v9 finalFilter];

        if (finalFilter)
        {
          v12 = evaluationLogHandle;
          if (os_log_type_enabled(evaluationLogHandle, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v20 = v9;
            _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_DEBUG, "pushFinalFilters update SymptomFilter %@", buf, 0xCu);
          }

          finalFilter2 = [v9 finalFilter];
          [v9 setCurrentFilter:finalFilter2];

          [v9 setFinalFilter:0];
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v6);
  }

  [(ReporterFilter *)selfCopy updateTransportFilters];
  [(ReporterFilter *)selfCopy pushTransportFilters];
}

- (void)setFinalTimer:(int64_t)timer
{
  v16 = *MEMORY[0x277D85DE8];
  if (timer)
  {
    finalTimer = self->_finalTimer;
    if (finalTimer)
    {
      dispatch_suspend(finalTimer);
    }

    else
    {
      v8 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, MEMORY[0x277D85CD0]);
      v9 = self->_finalTimer;
      self->_finalTimer = v8;

      v10 = self->_finalTimer;
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __32__ReporterFilter_setFinalTimer___block_invoke;
      handler[3] = &unk_27898A0C8;
      handler[4] = self;
      dispatch_source_set_event_handler(v10, handler);
    }

    v11 = self->_finalTimer;
    v12 = dispatch_time(0, 1000000000 * timer);
    dispatch_source_set_timer(v11, v12, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
    self->_timingInProgress = 1;
    dispatch_resume(self->_finalTimer);
  }

  else
  {
    v6 = filterLogHandle;
    if (os_log_type_enabled(filterLogHandle, OS_LOG_TYPE_DEBUG))
    {
      timingInProgress = self->_timingInProgress;
      *buf = 67109120;
      v15 = timingInProgress;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEBUG, "Final Timer cancelled, in progress %d", buf, 8u);
    }

    self->_timingInProgress = 0;
  }
}

void __32__ReporterFilter_setFinalTimer___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = filterLogHandle;
  if (os_log_type_enabled(filterLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(*(a1 + 32) + 16);
    v5[0] = 67109120;
    v5[1] = v3;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEBUG, "Final Timer fired, in progress %d", v5, 8u);
  }

  v4 = *(a1 + 32);
  if (*(v4 + 16) == 1)
  {
    *(v4 + 16) = 0;
    [*(a1 + 32) pushFinalFilters];
  }
}

- (int)configureSymptomFilter:(id)filter
{
  v22 = *MEMORY[0x277D85DE8];
  filterCopy = filter;
  v5 = [filterCopy objectForKey:@"SYMPTOM_FOR_FILTERING"];
  if (v5)
  {
    v6 = [SymptomStore idFromSymptomName:v5];
    unsignedIntValue = [v6 unsignedIntValue];
    if (![(NSMutableArray *)self->_symptomFilters count])
    {
      goto LABEL_9;
    }

    v8 = 0;
    while (1)
    {
      v9 = [(NSMutableArray *)self->_symptomFilters objectAtIndex:v8];
      if ([(SymptomFilter *)v9 targetSymptomId]== unsignedIntValue)
      {
        break;
      }

      if ([(NSMutableArray *)self->_symptomFilters count]<= ++v8)
      {
        goto LABEL_9;
      }
    }

    if (!v9)
    {
LABEL_9:
      v9 = objc_alloc_init(SymptomFilter);
      [(SymptomFilter *)v9 setTargetSymptomId:unsignedIntValue];
      [(NSMutableArray *)self->_symptomFilters addObject:v9];
      if (!v9)
      {
        v10 = -1;
LABEL_19:

        goto LABEL_20;
      }
    }

    v11 = [filterCopy objectForKey:@"POSSIBLE_FILTERS"];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v18;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v18 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [(SymptomFilter *)v9 configureItem:*(*(&v17 + 1) + 8 * i)];
        }

        v13 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v13);
    }

    [(ReporterFilter *)self updateTransportFilters];

    v10 = 0;
    goto LABEL_19;
  }

  v10 = -1;
LABEL_20:

  return v10;
}

@end