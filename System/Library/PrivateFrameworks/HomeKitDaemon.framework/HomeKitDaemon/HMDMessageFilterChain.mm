@interface HMDMessageFilterChain
- (BOOL)acceptMessage:(id)message error:(id *)error;
- (BOOL)shouldCloudSyncData;
- (HMDMessageFilterChain)init;
- (NSArray)filters;
- (void)addMessageFilter:(id)filter;
- (void)removeMessageFilter:(id)filter;
- (void)resetConfiguration:(id)configuration completionHandler:(id)handler;
@end

@implementation HMDMessageFilterChain

- (NSArray)filters
{
  os_unfair_lock_lock_with_options();
  v3 = objc_msgSend_copy(self->_filters);
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)resetConfiguration:(id)configuration completionHandler:(id)handler
{
  v19 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  handlerCopy = handler;
  os_unfair_lock_lock_with_options();
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = self->_filters;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v14 + 1) + 8 * v11++) resetConfiguration];
      }

      while (v9 != v11);
      v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  os_unfair_lock_unlock(&self->_lock);
  if (configurationCopy && handlerCopy)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __62__HMDMessageFilterChain_resetConfiguration_completionHandler___block_invoke;
    block[3] = &unk_278688B80;
    v13 = handlerCopy;
    dispatch_async(configurationCopy, block);
  }
}

- (BOOL)shouldCloudSyncData
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  filters = [(HMDMessageFilterChain *)self filters];
  v3 = [filters countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(filters);
        }

        if ([*(*(&v7 + 1) + 8 * i) shouldCloudSyncData])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [filters countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (BOOL)acceptMessage:(id)message error:(id *)error
{
  v43 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  destination = [messageCopy destination];
  target = [destination target];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  filters = [(HMDMessageFilterChain *)self filters];
  v10 = [filters countByEnumeratingWithState:&v30 objects:v42 count:16];
  if (v10)
  {
    v11 = v10;
    selfCopy = self;
    errorCopy = error;
    v12 = 0;
    v13 = *v31;
    while (2)
    {
      v14 = 0;
      v15 = v12;
      do
      {
        if (*v31 != v13)
        {
          objc_enumerationMutation(filters);
        }

        v16 = *(*(&v30 + 1) + 8 * v14);
        v29 = v15;
        v17 = [v16 acceptMessage:messageCopy target:target errorReason:&v29];
        v12 = v29;

        if ((v17 & 1) == 0)
        {
          v19 = objc_autoreleasePoolPush();
          v20 = selfCopy;
          v21 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            v22 = HMFGetLogIdentifier();
            name = [v16 name];
            name2 = [messageCopy name];
            *buf = 138544130;
            v35 = v22;
            v36 = 2112;
            v37 = name;
            v38 = 2112;
            v39 = name2;
            v40 = 2112;
            v41 = v12;
            _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@%@ Message %@ was rejected due to reason: %@", buf, 0x2Au);
          }

          objc_autoreleasePoolPop(v19);
          v18 = 0;
          goto LABEL_13;
        }

        ++v14;
        v15 = v12;
      }

      while (v11 != v14);
      v11 = [filters countByEnumeratingWithState:&v30 objects:v42 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }

    v18 = 1;
LABEL_13:
    error = errorCopy;
  }

  else
  {
    v12 = 0;
    v18 = 1;
  }

  if (error)
  {
    if (v18)
    {
      v25 = 0;
    }

    else
    {
      v25 = v12;
    }

    *error = v25;
  }

  return v18;
}

- (void)removeMessageFilter:(id)filter
{
  filterCopy = filter;
  os_unfair_lock_lock_with_options();
  [(NSMutableArray *)self->_filters removeObject:filterCopy];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)addMessageFilter:(id)filter
{
  filterCopy = filter;
  os_unfair_lock_lock_with_options();
  [(NSMutableArray *)self->_filters addObject:filterCopy];
  os_unfair_lock_unlock(&self->_lock);
}

- (HMDMessageFilterChain)init
{
  v6.receiver = self;
  v6.super_class = HMDMessageFilterChain;
  v2 = [(HMDMessageFilterChain *)&v6 init];
  if (v2)
  {
    array = [MEMORY[0x277CBEB18] array];
    filters = v2->_filters;
    v2->_filters = array;
  }

  return v2;
}

@end