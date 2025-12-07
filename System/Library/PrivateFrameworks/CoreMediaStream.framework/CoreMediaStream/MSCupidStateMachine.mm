@interface MSCupidStateMachine
- (MSCupidStateMachine)initWithPersonID:(id)d;
- (id)_latestNextActivityDate;
- (void)_backoffMMCSBackoffTimer;
- (void)_backoffStreamsBackoffTimer;
- (void)_commitUserManifest;
- (void)_didReceiveMMCSRetryAfterDate:(id)date;
- (void)_didReceiveStreamsRetryAfterDate:(id)date;
- (void)_resetMMCSBackoffTimer;
- (void)_resetStreamsBackoffTimer;
- (void)deactivate;
- (void)dealloc;
- (void)forget;
@end

@implementation MSCupidStateMachine

- (id)_latestNextActivityDate
{
  nextExpiryDate = [(MSBackoffManager *)self->_streamsBackoffManager nextExpiryDate];
  nextExpiryDate2 = [(MSBackoffManager *)self->_MMCSBackoffManager nextExpiryDate];
  if ([nextExpiryDate2 compare:nextExpiryDate] == 1)
  {
    v5 = nextExpiryDate2;

    nextExpiryDate = v5;
  }

  return nextExpiryDate;
}

- (void)_didReceiveMMCSRetryAfterDate:(id)date
{
  v16 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = v5;
    personID = [(MSCupidStateMachine *)self personID];
    v10 = 138543874;
    v11 = v5;
    v12 = 2112;
    v13 = personID;
    v14 = 2114;
    v15 = dateCopy;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@ - %@ Received an MMCS server retry-after date of: %{public}@", &v10, 0x20u);
  }

  [(MSBackoffManager *)self->_MMCSBackoffManager didReceiveRetryAfterDate:dateCopy];
  retryAfterDate = [(MSBackoffManager *)self->_MMCSBackoffManager retryAfterDate];
  userManifest = self->_userManifest;
  if (retryAfterDate)
  {
    [(NSMutableDictionary *)userManifest setObject:retryAfterDate forKey:@"MMCSRetryAfterDate"];
  }

  else
  {
    [(NSMutableDictionary *)userManifest removeObjectForKey:@"MMCSRetryAfterDate"];
  }

  [(MSCupidStateMachine *)self _commitUserManifest];
}

- (void)_backoffMMCSBackoffTimer
{
  v22 = *MEMORY[0x277D85DE8];
  [(MSBackoffManager *)self->_MMCSBackoffManager backoff];
  userManifest = self->_userManifest;
  v4 = MEMORY[0x277CCABB0];
  [(MSBackoffManager *)self->_MMCSBackoffManager currentInterval];
  v5 = [v4 numberWithDouble:?];
  [(NSMutableDictionary *)userManifest setObject:v5 forKey:@"MMCSBackoffInterval"];

  v6 = self->_userManifest;
  nextExpiryDate = [(MSBackoffManager *)self->_MMCSBackoffManager nextExpiryDate];
  [(NSMutableDictionary *)v6 setObject:nextExpiryDate forKey:@"MMCSBackoffDate"];

  [(MSCupidStateMachine *)self _commitUserManifest];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = v8;
    personID = [(MSCupidStateMachine *)self personID];
    [(MSBackoffManager *)self->_MMCSBackoffManager currentInterval];
    v12 = v11;
    nextExpiryDate2 = [(MSBackoffManager *)self->_MMCSBackoffManager nextExpiryDate];
    v14 = 138544130;
    v15 = v8;
    v16 = 2112;
    v17 = personID;
    v18 = 2048;
    v19 = v12;
    v20 = 2114;
    v21 = nextExpiryDate2;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@ - %@ Backing off the MMCS server. Interval: %lf, next fire date: %{public}@", &v14, 0x2Au);
  }
}

- (void)_resetMMCSBackoffTimer
{
  v11 = *MEMORY[0x277D85DE8];
  [(MSBackoffManager *)self->_MMCSBackoffManager currentInterval];
  if (v3 != 0.0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v4 = objc_opt_class();
      v5 = v4;
      personID = [(MSCupidStateMachine *)self personID];
      v7 = 138543618;
      v8 = v4;
      v9 = 2112;
      v10 = personID;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@ - %@ Resetting MMCS backoff timer.", &v7, 0x16u);
    }

    [(MSBackoffManager *)self->_MMCSBackoffManager reset];
    [(NSMutableDictionary *)self->_userManifest removeObjectForKey:@"MMCSBackoffDate"];
    [(NSMutableDictionary *)self->_userManifest removeObjectForKey:@"MMCSBackoffInterval"];
    [(MSCupidStateMachine *)self _commitUserManifest];
  }
}

- (void)_didReceiveStreamsRetryAfterDate:(id)date
{
  v16 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = v5;
    personID = [(MSCupidStateMachine *)self personID];
    v10 = 138543874;
    v11 = v5;
    v12 = 2112;
    v13 = personID;
    v14 = 2114;
    v15 = dateCopy;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@ - %@ Received a metadata server retry-after date of: %{public}@", &v10, 0x20u);
  }

  [(MSBackoffManager *)self->_streamsBackoffManager didReceiveRetryAfterDate:dateCopy];
  retryAfterDate = [(MSBackoffManager *)self->_streamsBackoffManager retryAfterDate];
  userManifest = self->_userManifest;
  if (retryAfterDate)
  {
    [(NSMutableDictionary *)userManifest setObject:retryAfterDate forKey:@"streamsRetryAfterDate"];
  }

  else
  {
    [(NSMutableDictionary *)userManifest removeObjectForKey:@"streamsRetryAfterDate"];
  }

  [(MSCupidStateMachine *)self _commitUserManifest];
}

- (void)_backoffStreamsBackoffTimer
{
  v22 = *MEMORY[0x277D85DE8];
  [(MSBackoffManager *)self->_streamsBackoffManager backoff];
  v3 = MEMORY[0x277CCABB0];
  userManifest = self->_userManifest;
  [(MSBackoffManager *)self->_streamsBackoffManager currentInterval];
  v5 = [v3 numberWithDouble:?];
  [(NSMutableDictionary *)userManifest setObject:v5 forKey:@"streamsBackoffInterval"];

  v6 = self->_userManifest;
  nextExpiryDate = [(MSBackoffManager *)self->_streamsBackoffManager nextExpiryDate];
  [(NSMutableDictionary *)v6 setObject:nextExpiryDate forKey:@"streamsBackoffDate"];

  [(MSCupidStateMachine *)self _commitUserManifest];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = v8;
    personID = [(MSCupidStateMachine *)self personID];
    [(MSBackoffManager *)self->_streamsBackoffManager currentInterval];
    v12 = v11;
    nextExpiryDate2 = [(MSBackoffManager *)self->_streamsBackoffManager nextExpiryDate];
    v14 = 138544130;
    v15 = v8;
    v16 = 2112;
    v17 = personID;
    v18 = 2048;
    v19 = v12;
    v20 = 2114;
    v21 = nextExpiryDate2;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@ - %@ Backing off the metadata server. Interval: %lf, next fire date: %{public}@", &v14, 0x2Au);
  }
}

- (void)_resetStreamsBackoffTimer
{
  v11 = *MEMORY[0x277D85DE8];
  [(MSBackoffManager *)self->_streamsBackoffManager currentInterval];
  if (v3 != 0.0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v4 = objc_opt_class();
      v5 = v4;
      personID = [(MSCupidStateMachine *)self personID];
      v7 = 138543618;
      v8 = v4;
      v9 = 2112;
      v10 = personID;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@ - %@ Resetting metadata stream backoff timer.", &v7, 0x16u);
    }

    [(MSBackoffManager *)self->_streamsBackoffManager reset];
    [(NSMutableDictionary *)self->_userManifest removeObjectForKey:@"streamsBackoffDate"];
    [(NSMutableDictionary *)self->_userManifest removeObjectForKey:@"streamsBackoffInterval"];
    [(MSCupidStateMachine *)self _commitUserManifest];
  }
}

- (void)_commitUserManifest
{
  v14 = *MEMORY[0x277D85DE8];
  userManifest = self->_userManifest;
  v9 = 0;
  v4 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:userManifest requiringSecureCoding:1 error:&v9];
  v5 = v9;
  if (!v4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = v5;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Failed to archive userManifest, error: %@", buf, 0xCu);
  }

  if (([v4 writeToFile:self->_manifestPath atomically:1] & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v6 = objc_opt_class();
    v7 = v6;
    personID = [(MSCupidStateMachine *)self personID];
    *buf = 138543618;
    v11 = v6;
    v12 = 2112;
    v13 = personID;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ Cannot save user manifest.", buf, 0x16u);
  }

  [(MSCupidStateMachine *)self _updateMasterManifest];
}

- (void)forget
{
  [(MSCupidStateMachine *)self _resetStreamsBackoffTimer];
  [(MSCupidStateMachine *)self _resetMMCSBackoffTimer];
  [(MSCupidStateMachine *)self _abort];

  [(MSCupidStateMachine *)self _forget];
}

- (void)deactivate
{
  [(MSCupidStateMachine *)self setHasDeactivated:1];
  MMCSBackoffManager = self->_MMCSBackoffManager;
  self->_MMCSBackoffManager = 0;

  streamsBackoffManager = self->_streamsBackoffManager;
  self->_streamsBackoffManager = 0;

  userManifest = self->_userManifest;
  self->_userManifest = 0;

  manifestPath = self->_manifestPath;
  self->_manifestPath = 0;

  personID = self->_personID;
  self->_personID = 0;
}

- (void)dealloc
{
  [(MSCupidStateMachine *)self deactivate];
  v3.receiver = self;
  v3.super_class = MSCupidStateMachine;
  [(MSCupidStateMachine *)&v3 dealloc];
}

- (MSCupidStateMachine)initWithPersonID:(id)d
{
  dCopy = d;
  v30.receiver = self;
  v30.super_class = MSCupidStateMachine;
  v6 = [(MSCupidStateMachine *)&v30 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_personID, d);
    v8 = [[MSBackoffManager alloc] initWithInitialInterval:0 backoffFactor:5.0 randomizeFactor:2.0 maxBackoffInterval:0.15 retryAfterDate:1200.0];
    streamsBackoffManager = v7->_streamsBackoffManager;
    v7->_streamsBackoffManager = v8;

    v10 = [[MSBackoffManager alloc] initWithInitialInterval:0 backoffFactor:5.0 randomizeFactor:2.0 maxBackoffInterval:0.15 retryAfterDate:1200.0];
    MMCSBackoffManager = v7->_MMCSBackoffManager;
    v7->_MMCSBackoffManager = v10;

    v12 = MSPathSubscriberManifestForPersonID(dCopy);
    manifestPath = v7->_manifestPath;
    v7->_manifestPath = v12;

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v15 = [defaultManager fileExistsAtPath:v7->_manifestPath];

    if (v15)
    {
      v16 = [MEMORY[0x277CCAAC8] MSSafeUnarchiveObjectWithFile:v7->_manifestPath outError:0];
      userManifest = v7->_userManifest;
      v7->_userManifest = v16;
    }

    v18 = v7->_userManifest;
    if (!v18)
    {
      v19 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v20 = v7->_userManifest;
      v7->_userManifest = v19;

      v18 = v7->_userManifest;
    }

    v21 = [(NSMutableDictionary *)v18 objectForKey:@"streamsBackoffInterval"];
    v22 = [(NSMutableDictionary *)v7->_userManifest objectForKey:@"streamsBackoffDate"];
    v23 = [(NSMutableDictionary *)v7->_userManifest objectForKey:@"streamsBackoffDate"];
    if (v21 && v22)
    {
      v24 = v7->_streamsBackoffManager;
      [v21 doubleValue];
      [(MSBackoffManager *)v24 setCurrentInterval:?];
      [(MSBackoffManager *)v7->_streamsBackoffManager setNextExpiryDate:v22];
      [(MSBackoffManager *)v7->_streamsBackoffManager setRetryAfterDate:v23];
    }

    v25 = [(NSMutableDictionary *)v7->_userManifest objectForKey:@"MMCSBackoffInterval"];
    v26 = [(NSMutableDictionary *)v7->_userManifest objectForKey:@"MMCSBackoffDate"];
    v27 = [(NSMutableDictionary *)v7->_userManifest objectForKey:@"MMCSRetryAfterDate"];
    if (v25 && v26)
    {
      v28 = v7->_MMCSBackoffManager;
      [v25 doubleValue];
      [(MSBackoffManager *)v28 setCurrentInterval:?];
      [(MSBackoffManager *)v7->_MMCSBackoffManager setNextExpiryDate:v26];
      [(MSBackoffManager *)v7->_MMCSBackoffManager setRetryAfterDate:v27];
    }
  }

  return v7;
}

@end