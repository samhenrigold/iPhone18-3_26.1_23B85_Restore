@interface ATXInformationHeuristicRefreshTimeTrigger
- (ATXInformationHeuristicRefreshTimeTrigger)initWithCoder:(id)coder;
- (ATXInformationHeuristicRefreshTimeTrigger)initWithFireDate:(id)date;
- (BOOL)isEqual:(id)equal;
- (id)description;
- (void)_start;
- (void)_stop;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXInformationHeuristicRefreshTimeTrigger

- (ATXInformationHeuristicRefreshTimeTrigger)initWithFireDate:(id)date
{
  dateCopy = date;
  v10.receiver = self;
  v10.super_class = ATXInformationHeuristicRefreshTimeTrigger;
  v5 = [(ATXInformationHeuristicRefreshTrigger *)&v10 init];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277CBEAA8]);
    [dateCopy timeIntervalSinceReferenceDate];
    v7 = [v6 initWithTimeIntervalSinceReferenceDate:?];
    fireDate = v5->_fireDate;
    v5->_fireDate = v7;
  }

  return v5;
}

- (void)_start
{
  v26 = *MEMORY[0x277D85DE8];
  if (!self->_source)
  {
    timeIntervalSinceNow = [(NSDate *)self->_fireDate timeIntervalSinceNow];
    v5 = v4;
    v6 = __atxlog_handle_gi(timeIntervalSinceNow);
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (v5 <= 0.0)
    {
      if (v7)
      {
        fireDate = self->_fireDate;
        registeredHeuristics = [(ATXInformationHeuristicRefreshTrigger *)self registeredHeuristics];
        *buf = 134218498;
        selfCopy2 = self;
        v22 = 2112;
        v23 = fireDate;
        v24 = 2112;
        v25 = registeredHeuristics;
        _os_log_impl(&dword_23E3EA000, v6, OS_LOG_TYPE_DEFAULT, "ATXInformationHeuristicRefreshTimeTrigger (%p): Past [%@]. Will not start. %@", buf, 0x20u);
      }
    }

    else
    {
      if (v7)
      {
        v8 = self->_fireDate;
        registeredHeuristics2 = [(ATXInformationHeuristicRefreshTrigger *)self registeredHeuristics];
        *buf = 134218498;
        selfCopy2 = self;
        v22 = 2112;
        v23 = v8;
        v24 = 2112;
        v25 = registeredHeuristics2;
        _os_log_impl(&dword_23E3EA000, v6, OS_LOG_TYPE_DEFAULT, "ATXInformationHeuristicRefreshTimeTrigger (%p): Start [%@]. %@", buf, 0x20u);
      }

      objc_initWeak(buf, self);
      v10 = dispatch_get_global_queue(25, 0);
      v11 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v10);
      source = self->_source;
      self->_source = v11;

      v13 = self->_source;
      v14 = dispatch_time(0, (v5 * 1000000000.0));
      dispatch_source_set_timer(v13, v14, 0xFFFFFFFFFFFFFFFFLL, 0);
      v15 = self->_source;
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __51__ATXInformationHeuristicRefreshTimeTrigger__start__block_invoke;
      handler[3] = &unk_278C3CEF0;
      objc_copyWeak(&v19, buf);
      dispatch_source_set_event_handler(v15, handler);
      dispatch_resume(self->_source);
      objc_destroyWeak(&v19);
      objc_destroyWeak(buf);
    }
  }
}

void __51__ATXInformationHeuristicRefreshTimeTrigger__start__block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = objc_opt_new();
    v3 = [v2 timeIntervalSinceDate:WeakRetained[4]];
    v5 = v4;
    v6 = __atxlog_handle_gi(v3);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = WeakRetained[4];
      v8 = [WeakRetained registeredHeuristics];
      v11 = 134218754;
      v12 = WeakRetained;
      v13 = 2112;
      v14 = v7;
      v15 = 2048;
      v16 = v5;
      v17 = 2112;
      v18 = v8;
      _os_log_impl(&dword_23E3EA000, v6, OS_LOG_TYPE_DEFAULT, "ATXInformationHeuristicRefreshTimeTrigger (%p): Fired [%@] %0.1fs after date. Triggering heuristics refresh. %@", &v11, 0x2Au);
    }

    v9 = [WeakRetained delegate];
    v10 = [WeakRetained registeredHeuristics];
    [v9 informationHeuristicRefreshTrigger:WeakRetained didTriggerRefreshForHeuristics:v10];
  }
}

- (void)_stop
{
  v13 = *MEMORY[0x277D85DE8];
  if (self->_source)
  {
    v3 = __atxlog_handle_gi(self);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      fireDate = self->_fireDate;
      registeredHeuristics = [(ATXInformationHeuristicRefreshTrigger *)self registeredHeuristics];
      v7 = 134218498;
      selfCopy = self;
      v9 = 2112;
      v10 = fireDate;
      v11 = 2112;
      v12 = registeredHeuristics;
      _os_log_impl(&dword_23E3EA000, v3, OS_LOG_TYPE_DEFAULT, "ATXInformationHeuristicRefreshTimeTrigger (%p): Stopped [%@]. %@.", &v7, 0x20u);
    }

    dispatch_source_cancel(self->_source);
    source = self->_source;
    self->_source = 0;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    goto LABEL_5;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = 0;
    goto LABEL_7;
  }

  fireDate = self->_fireDate;
  if (fireDate == equalCopy->_fireDate)
  {
LABEL_5:
    v6 = 1;
  }

  else
  {
    v6 = [(NSDate *)fireDate isEqual:?];
  }

LABEL_7:

  return v6;
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"InfoHeuristicRefreshTimeTrigger at %@", self->_fireDate];

  return v2;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = ATXInformationHeuristicRefreshTimeTrigger;
  coderCopy = coder;
  [(ATXInformationHeuristicRefreshTrigger *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_fireDate forKey:{@"fireDate", v5.receiver, v5.super_class}];
}

- (ATXInformationHeuristicRefreshTimeTrigger)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = ATXInformationHeuristicRefreshTimeTrigger;
  v5 = [(ATXInformationHeuristicRefreshTrigger *)&v12 initWithCoder:coderCopy];
  if (!v5 || ([coderCopy error], v6 = objc_claimAutoreleasedReturnValue(), v6, v6) || (-[ATXInformationHeuristicRefreshTrigger _safeDecodeObjectOfClass:forKey:withCoder:nonNull:](v5, "_safeDecodeObjectOfClass:forKey:withCoder:nonNull:", objc_opt_class(), @"fireDate", coderCopy, 1), v9 = objc_claimAutoreleasedReturnValue(), fireDate = v5->_fireDate, v5->_fireDate = v9, fireDate, !v5->_fireDate) || (objc_msgSend(coderCopy, "error"), v11 = objc_claimAutoreleasedReturnValue(), v11, v11))
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  return v7;
}

@end