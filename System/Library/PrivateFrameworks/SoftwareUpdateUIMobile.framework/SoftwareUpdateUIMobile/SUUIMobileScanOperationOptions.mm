@interface SUUIMobileScanOperationOptions
- (BOOL)clientIsBuddy;
- (BOOL)doesAllowUnrestrictedCellularDownload;
- (BOOL)supportScanResultsCaching;
- (id)description;
- (id)initFromEnvironmentOptions:(unint64_t)options;
- (void)setAllowUnrestrictedCellularDownload:(BOOL)download;
- (void)setClientIsBuddy:(BOOL)buddy;
- (void)setSupportScanResultsCaching:(BOOL)caching;
@end

@implementation SUUIMobileScanOperationOptions

- (BOOL)doesAllowUnrestrictedCellularDownload
{
  selfCopy = self;
  v3[2] = a2;
  v3[0] = 2;
  p_lock = &self->_lock;
  v6 = 0;
  os_unfair_lock_lock_with_options();
  v3[1] = p_lock;
  allowUnrestrictedCellularDownload = selfCopy->_allowUnrestrictedCellularDownload;
  v8 = v3;
  os_unfair_lock_unlock(p_lock);
  return allowUnrestrictedCellularDownload;
}

- (void)setAllowUnrestrictedCellularDownload:(BOOL)download
{
  selfCopy = self;
  v5 = a2;
  downloadCopy = download;
  v3[0] = 2;
  p_lock = &self->_lock;
  v7 = 0;
  os_unfair_lock_lock_with_options();
  v3[1] = p_lock;
  selfCopy->_allowUnrestrictedCellularDownload = downloadCopy;
  v9 = v3;
  switch(v3[0])
  {
    case 1:
      [v9[1] unlock];
      break;
    case 2:
      os_unfair_lock_unlock(v9[1]);
      break;
    case 3:
      os_unfair_recursive_lock_unlock();
      break;
  }
}

- (BOOL)clientIsBuddy
{
  selfCopy = self;
  v3[2] = a2;
  v3[0] = 2;
  p_lock = &self->_lock;
  v6 = 0;
  os_unfair_lock_lock_with_options();
  v3[1] = p_lock;
  clientIsBuddy = selfCopy->_clientIsBuddy;
  v8 = v3;
  os_unfair_lock_unlock(p_lock);
  return clientIsBuddy;
}

- (void)setClientIsBuddy:(BOOL)buddy
{
  selfCopy = self;
  v5 = a2;
  buddyCopy = buddy;
  v3[0] = 2;
  p_lock = &self->_lock;
  v7 = 0;
  os_unfair_lock_lock_with_options();
  v3[1] = p_lock;
  selfCopy->_clientIsBuddy = buddyCopy;
  v9 = v3;
  switch(v3[0])
  {
    case 1:
      [v9[1] unlock];
      break;
    case 2:
      os_unfair_lock_unlock(v9[1]);
      break;
    case 3:
      os_unfair_recursive_lock_unlock();
      break;
  }
}

- (BOOL)supportScanResultsCaching
{
  selfCopy = self;
  v3[2] = a2;
  v3[0] = 2;
  p_lock = &self->_lock;
  v6 = 0;
  os_unfair_lock_lock_with_options();
  v3[1] = p_lock;
  supportScanResultsCaching = selfCopy->_supportScanResultsCaching;
  v8 = v3;
  os_unfair_lock_unlock(p_lock);
  return supportScanResultsCaching;
}

- (void)setSupportScanResultsCaching:(BOOL)caching
{
  selfCopy = self;
  v5 = a2;
  cachingCopy = caching;
  v3[0] = 2;
  p_lock = &self->_lock;
  v7 = 0;
  os_unfair_lock_lock_with_options();
  v3[1] = p_lock;
  selfCopy->_supportScanResultsCaching = cachingCopy;
  v9 = v3;
  switch(v3[0])
  {
    case 1:
      [v9[1] unlock];
      break;
    case 2:
      os_unfair_lock_unlock(v9[1]);
      break;
    case 3:
      os_unfair_recursive_lock_unlock();
      break;
  }
}

- (id)initFromEnvironmentOptions:(unint64_t)options
{
  v8 = a2;
  optionsCopy = options;
  v9 = 0;
  v6.receiver = self;
  v6.super_class = SUUIMobileScanOperationOptions;
  v5 = [(SUUIMobileScanOperationOptions *)&v6 init];
  v9 = v5;
  objc_storeStrong(&v9, v5);
  if (v5)
  {
    v9->_allowUnrestrictedCellularDownload = (optionsCopy & 1) != 0;
    v9->_supportScanResultsCaching = (optionsCopy & 8) != 0;
  }

  v4 = MEMORY[0x277D82BE0](v9);
  objc_storeStrong(&v9, 0);
  return v4;
}

- (id)description
{
  v17[2] = *MEMORY[0x277D85DE8];
  v10 = MEMORY[0x277D64B68];
  v16[0] = @"allowUnrestrictedCellularDownload";
  if (self->_allowUnrestrictedCellularDownload)
  {
    v2 = @"YES";
  }

  else
  {
    v2 = @"NO";
  }

  v7 = v2;
  v3 = v2;
  v14 = v7;
  v17[0] = v14;
  v16[1] = @"supportScanResultsCaching";
  if (self->_supportScanResultsCaching)
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  v8 = v4;
  v5 = v4;
  v13 = v8;
  v17[1] = v13;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
  v12 = [v10 descriptionForObject:self properties:?];
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);

  return v12;
}

@end