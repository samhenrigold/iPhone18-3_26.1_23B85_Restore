@interface PFLJetsamInfoInterval
- (PFLJetsamInfoInterval)initWithLabel:(id)label;
- (jetsam_info)currentInfo;
- (void)logCurrentInterval;
- (void)reset;
@end

@implementation PFLJetsamInfoInterval

- (PFLJetsamInfoInterval)initWithLabel:(id)label
{
  v20 = *MEMORY[0x277D85DE8];
  labelCopy = label;
  v15.receiver = self;
  v15.super_class = PFLJetsamInfoInterval;
  v6 = [(PFLJetsamInfoInterval *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_label, label);
    v8 = objc_opt_new();
    fetcher = v7->_fetcher;
    v7->_fetcher = v8;

    if ([(PFLJetsamInfoFetcher *)v7->_fetcher getInfo:&v7->_startInfo])
    {
      resetInterval = [(PFLJetsamInfoFetcher *)v7->_fetcher resetInterval];
      if (resetInterval)
      {
        v11 = pfl_jetsam_log(resetInterval);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          label = v7->_label;
          v13 = v7->_startInfo.currentKB * 0.0009765625;
          *buf = 138412546;
          labelCopy2 = label;
          v18 = 2048;
          v19 = v13;
          _os_log_impl(&dword_22D2ED000, v11, OS_LOG_TYPE_DEFAULT, "jetsam interval '%@': start footprint: %.3f", buf, 0x16u);
        }
      }
    }
  }

  return v7;
}

- (jetsam_info)currentInfo
{
  retstr->maxLifetimeKB = -1;
  retstr->maxIntervalKB = -1;
  retstr->currentKB = -1;
  return [(PFLJetsamInfoFetcher *)self->_fetcher getInfo:?];
}

- (void)logCurrentInterval
{
  v17 = *MEMORY[0x277D85DE8];
  v7[0] = 0;
  v7[1] = 0;
  v8 = 0;
  v3 = [(PFLJetsamInfoFetcher *)self->_fetcher getInfo:v7];
  if (v3)
  {
    v4 = pfl_jetsam_log(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      label = self->_label;
      v6 = self->_startInfo.currentKB * 0.0009765625;
      *buf = 138413058;
      v10 = label;
      v11 = 2048;
      v12 = v6;
      v13 = 2048;
      v14 = v8 * 0.0009765625;
      v15 = 2048;
      v16 = v7[0] * 0.0009765625;
      _os_log_impl(&dword_22D2ED000, v4, OS_LOG_TYPE_DEFAULT, "jetsam interval '%@': start footprint: %.3f, max: %.3f, end: %.3f", buf, 0x2Au);
    }
  }
}

- (void)reset
{
  [(PFLJetsamInfoFetcher *)self->_fetcher getInfo:&self->_startInfo];
  fetcher = self->_fetcher;

  [(PFLJetsamInfoFetcher *)fetcher resetInterval];
}

@end