@interface ATXInformationHeuristicRefreshNotitifcationTrigger
- (ATXInformationHeuristicRefreshNotitifcationTrigger)initWithCoder:(id)coder;
- (ATXInformationHeuristicRefreshNotitifcationTrigger)initWithNotification:(id)notification type:(int64_t)type coalescingInterval:(double)interval;
- (BOOL)isEqual:(id)equal;
- (id)description;
- (unint64_t)hash;
- (void)_createCoalescingTimer;
- (void)_start;
- (void)_stop;
- (void)_triggerRefresh;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXInformationHeuristicRefreshNotitifcationTrigger

- (void)_triggerRefresh
{
  delegate = [(ATXInformationHeuristicRefreshTrigger *)self delegate];
  registeredHeuristics = [(ATXInformationHeuristicRefreshTrigger *)self registeredHeuristics];
  [delegate informationHeuristicRefreshTrigger:self didTriggerRefreshForHeuristics:registeredHeuristics];
}

void __60__ATXInformationHeuristicRefreshNotitifcationTrigger__start__block_invoke_103(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = __atxlog_handle_gi(WeakRetained);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v2[4];
      *buf = 134218242;
      v12 = v2;
      v13 = 2114;
      v14 = v4;
      _os_log_impl(&dword_23E3EA000, v3, OS_LOG_TYPE_DEFAULT, "ATXInformationHeuristicRefreshNotitifcationTrigger (%p): Received Darwin notification: %{public}@. Triggering heuristics refresh.", buf, 0x16u);
    }

    if ([v2[4] isEqualToString:@"SignificantTimeChangeNotification"])
    {
      v5 = arc4random_uniform(0xB4u);
      v6 = v5;
      v7 = __atxlog_handle_gi(v5);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v12) = v6;
        _os_log_impl(&dword_23E3EA000, v7, OS_LOG_TYPE_DEFAULT, "ATXInformationHeuristicRefreshNotitifcationTrigger: Triggering heuristics refresh after %d seconds", buf, 8u);
      }

      v8 = dispatch_time(0, (1000000000 * v6) | 1);
      v9 = dispatch_get_global_queue(9, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __60__ATXInformationHeuristicRefreshNotitifcationTrigger__start__block_invoke_107;
      block[3] = &unk_278C3CF40;
      block[4] = v2;
      dispatch_after(v8, v9, block);
    }

    else
    {
      [v2 _scheduleTriggerRefresh];
    }
  }
}

void __76__ATXInformationHeuristicRefreshNotitifcationTrigger__createCoalescingTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _triggerRefresh];
}

- (ATXInformationHeuristicRefreshNotitifcationTrigger)initWithNotification:(id)notification type:(int64_t)type coalescingInterval:(double)interval
{
  notificationCopy = notification;
  v13.receiver = self;
  v13.super_class = ATXInformationHeuristicRefreshNotitifcationTrigger;
  v10 = [(ATXInformationHeuristicRefreshTrigger *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_notificationType = type;
    objc_storeStrong(&v10->_notificationName, notification);
    v11->_coalescingInterval = interval;
    [(ATXInformationHeuristicRefreshNotitifcationTrigger *)v11 _createCoalescingTimer];
  }

  return v11;
}

- (void)_createCoalescingTimer
{
  objc_initWeak(&location, self);
  v3 = objc_alloc(MEMORY[0x277D42628]);
  v4 = dispatch_get_global_queue(17, 0);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __76__ATXInformationHeuristicRefreshNotitifcationTrigger__createCoalescingTimer__block_invoke;
  v7[3] = &unk_278C3CEF0;
  objc_copyWeak(&v8, &location);
  v5 = [v3 initWithQueue:v4 operation:v7];
  coalescingTimer = self->_coalescingTimer;
  self->_coalescingTimer = v5;

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)_start
{
  v21 = *MEMORY[0x277D85DE8];
  if (!self->_observerToken)
  {
    v3 = __atxlog_handle_gi(self);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      notificationName = self->_notificationName;
      *buf = 138412290;
      v20 = notificationName;
      _os_log_impl(&dword_23E3EA000, v3, OS_LOG_TYPE_DEFAULT, "Starting ATXInformationHeuristicRefreshNotitifcationTrigger for %@. We will now refresh heuristics when seeing this notification.", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    notificationType = self->_notificationType;
    if (notificationType == 1)
    {
      out_token = 0;
      uTF8String = [(NSString *)self->_notificationName UTF8String];
      v11 = dispatch_get_global_queue(9, 0);
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __60__ATXInformationHeuristicRefreshNotitifcationTrigger__start__block_invoke_103;
      handler[3] = &unk_278C3CF68;
      objc_copyWeak(&v15, buf);
      notify_register_dispatch(uTF8String, &out_token, v11, handler);

      v12 = [MEMORY[0x277CCABB0] numberWithInt:out_token];
      observerToken = self->_observerToken;
      self->_observerToken = v12;

      objc_destroyWeak(&v15);
    }

    else if (!notificationType)
    {
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      v7 = self->_notificationName;
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __60__ATXInformationHeuristicRefreshNotitifcationTrigger__start__block_invoke;
      v17[3] = &unk_278C3CF18;
      objc_copyWeak(&v18, buf);
      v8 = [defaultCenter addObserverForName:v7 object:0 queue:0 usingBlock:v17];
      v9 = self->_observerToken;
      self->_observerToken = v8;

      objc_destroyWeak(&v18);
    }

    objc_destroyWeak(buf);
  }
}

void __60__ATXInformationHeuristicRefreshNotitifcationTrigger__start__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = __atxlog_handle_gi(WeakRetained);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v2[4];
      v5 = 134218242;
      v6 = v2;
      v7 = 2114;
      v8 = v4;
      _os_log_impl(&dword_23E3EA000, v3, OS_LOG_TYPE_DEFAULT, "ATXInformationHeuristicRefreshNotitifcationTrigger (%p): Received local notification: %{public}@. Triggering heuristics refresh.", &v5, 0x16u);
    }

    [v2 _scheduleTriggerRefresh];
  }
}

- (void)_stop
{
  observerToken = self->_observerToken;
  if (observerToken)
  {
    notificationType = self->_notificationType;
    if (notificationType == 1)
    {
      notify_cancel([observerToken intValue]);
    }

    else if (!notificationType)
    {
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter removeObserver:self->_observerToken];
    }

    v6 = self->_observerToken;
    self->_observerToken = 0;
  }
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_notificationName hash];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:self->_notificationType];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v6 = v5->_notificationName;
      notificationName = self->_notificationName;
      v8 = (notificationName == v6 || [(NSString *)notificationName isEqual:v6]) && self->_notificationType == v5->_notificationType;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"InfoHeuristicRefreshNotitifcationTrigger for %@", self->_notificationName];

  return v2;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = ATXInformationHeuristicRefreshNotitifcationTrigger;
  coderCopy = coder;
  [(ATXInformationHeuristicRefreshTrigger *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_notificationType forKey:{@"notificationType", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_notificationName forKey:@"notificationName"];
  [coderCopy encodeDouble:@"coalescingInterval" forKey:self->_coalescingInterval];
}

- (ATXInformationHeuristicRefreshNotitifcationTrigger)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = ATXInformationHeuristicRefreshNotitifcationTrigger;
  v5 = [(ATXInformationHeuristicRefreshTrigger *)&v17 initWithCoder:coderCopy];
  if (v5)
  {
    error = [coderCopy error];

    if (!error)
    {
      v9 = [coderCopy decodeIntegerForKey:@"notificationType"];
      v5->_notificationType = v9;
      if (v9 || ([coderCopy error], v14 = objc_claimAutoreleasedReturnValue(), v14, !v14))
      {
        v10 = [(ATXInformationHeuristicRefreshTrigger *)v5 _safeDecodeObjectOfClass:objc_opt_class() forKey:@"notificationName" withCoder:coderCopy nonNull:1];
        notificationName = v5->_notificationName;
        v5->_notificationName = v10;

        if (v5->_notificationName)
        {
          error2 = [coderCopy error];

          if (!error2)
          {
            [coderCopy decodeDoubleForKey:@"coalescingInterval"];
            v5->_coalescingInterval = v13;
            [(ATXInformationHeuristicRefreshNotitifcationTrigger *)v5 _createCoalescingTimer];
            v7 = v5;
            goto LABEL_4;
          }
        }
      }

      else
      {
        v16 = __atxlog_handle_gi(v15);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          [ATXInformationHeuristicRefreshNotitifcationTrigger initWithCoder:coderCopy];
        }
      }
    }
  }

  v7 = 0;
LABEL_4:

  return v7;
}

- (void)initWithCoder:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 error];
  *v8 = 138412546;
  *&v8[4] = @"notificationType";
  *&v8[12] = 2112;
  *&v8[14] = v1;
  OUTLINED_FUNCTION_1_2(&dword_23E3EA000, v2, v3, "ATXInformationHeuristicRefreshNotitifcationTrigger: error decoding %@ - %@", v4, v5, v6, v7, *v8, *&v8[8], *&v8[16]);
}

@end