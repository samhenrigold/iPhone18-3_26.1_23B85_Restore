@interface CBCombinedConfigProvider
+ (id)providerFromList:(id)list;
- (BOOL)loadFixedFloat:(id)float toDestination:(float *)destination;
- (BOOL)loadFixedFloat:(id)float withScaler:(float)scaler toDestination:(float *)destination;
- (BOOL)loadFloat:(id)float toDestination:(float *)destination;
- (BOOL)loadInt:(id)int toDestination:(int *)destination;
- (BOOL)loadUint:(id)uint toDestination:(unsigned int *)destination;
- (CBCombinedConfigProvider)initWithProviders:(id)providers;
- (unint64_t)loadFloatArray:(id)array toDestination:(float *)destination;
- (unint64_t)loadIOFixedArray:(id)array toDestination:(float *)destination;
- (unint64_t)loadInt16Array:(id)array toDestination:(signed __int16 *)destination;
- (unint64_t)loadUintArray:(id)array toDestination:(unsigned int *)destination;
- (void)dealloc;
@end

@implementation CBCombinedConfigProvider

+ (id)providerFromList:(id)list
{
  v3 = [[CBCombinedConfigProvider alloc] initWithProviders:list];

  return v3;
}

- (CBCombinedConfigProvider)initWithProviders:(id)providers
{
  v18 = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = CBCombinedConfigProvider;
  v4 = [(CBCombinedConfigProvider *)&v16 init];
  if ([providers count])
  {
    if ([providers count] == 1)
    {

      return [providers objectAtIndexedSubscript:0];
    }

    else
    {
      v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v12 = 0u;
      v13 = 0u;
      v14 = 0u;
      v15 = 0u;
      v6 = [providers countByEnumeratingWithState:&v12 objects:v17 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v13;
        do
        {
          v9 = 0;
          do
          {
            if (*v13 != v8)
            {
              objc_enumerationMutation(providers);
            }

            v10 = *(*(&v12 + 1) + 8 * v9);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              -[NSArray addObjectsFromArray:](v5, "addObjectsFromArray:", [v10 providers]);
            }

            else
            {
              [(NSArray *)v5 addObject:v10];
            }

            ++v9;
          }

          while (v7 != v9);
          v7 = [providers countByEnumeratingWithState:&v12 objects:v17 count:16];
        }

        while (v7);
      }

      v4->_logHandle = 0;
      v4->_providers = v5;
    }
  }

  else
  {

    return 0;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CBCombinedConfigProvider;
  [(CBCombinedConfigProvider *)&v3 dealloc];
}

- (BOOL)loadFixedFloat:(id)float toDestination:(float *)destination
{
  v27 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  providers = self->_providers;
  v8 = [(NSArray *)providers countByEnumeratingWithState:&v16 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    while (2)
    {
      v11 = 0;
      do
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(providers);
        }

        v12 = *(*(&v16 + 1) + 8 * v11);
        if ([v12 loadFixedFloat:float toDestination:destination])
        {
          logHandle = self->_logHandle;
          if (logHandle && os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
          {
            v14 = *destination;
            *buf = 138412802;
            floatCopy = float;
            v22 = 2048;
            v23 = v14;
            v24 = 2112;
            v25 = v12;
            _os_log_debug_impl(&dword_223D10000, logHandle, OS_LOG_TYPE_DEBUG, "Loaded %@ = %f from %@", buf, 0x20u);
          }

          LOBYTE(v8) = 1;
          return v8;
        }

        ++v11;
      }

      while (v9 != v11);
      v8 = [(NSArray *)providers countByEnumeratingWithState:&v16 objects:v26 count:16];
      v9 = v8;
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  return v8;
}

- (BOOL)loadFixedFloat:(id)float withScaler:(float)scaler toDestination:(float *)destination
{
  v30 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  providers = self->_providers;
  v10 = [(NSArray *)providers countByEnumeratingWithState:&v19 objects:v29 count:16];
  if (v10)
  {
    v12 = v10;
    v13 = *v20;
    while (2)
    {
      v14 = 0;
      do
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(providers);
        }

        v15 = *(*(&v19 + 1) + 8 * v14);
        *&v11 = scaler;
        if ([v15 loadFixedFloat:float withScaler:destination toDestination:v11])
        {
          logHandle = self->_logHandle;
          if (logHandle && os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
          {
            v17 = *destination;
            *buf = 138412802;
            floatCopy = float;
            v25 = 2048;
            v26 = v17;
            v27 = 2112;
            v28 = v15;
            _os_log_debug_impl(&dword_223D10000, logHandle, OS_LOG_TYPE_DEBUG, "Loaded %@ = %f from %@", buf, 0x20u);
          }

          LOBYTE(v10) = 1;
          return v10;
        }

        ++v14;
      }

      while (v12 != v14);
      v10 = [(NSArray *)providers countByEnumeratingWithState:&v19 objects:v29 count:16];
      v12 = v10;
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  return v10;
}

- (BOOL)loadFloat:(id)float toDestination:(float *)destination
{
  v27 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  providers = self->_providers;
  v8 = [(NSArray *)providers countByEnumeratingWithState:&v16 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    while (2)
    {
      v11 = 0;
      do
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(providers);
        }

        v12 = *(*(&v16 + 1) + 8 * v11);
        if ([v12 loadFloat:float toDestination:destination])
        {
          logHandle = self->_logHandle;
          if (logHandle && os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
          {
            v14 = *destination;
            *buf = 138412802;
            floatCopy = float;
            v22 = 2048;
            v23 = v14;
            v24 = 2112;
            v25 = v12;
            _os_log_debug_impl(&dword_223D10000, logHandle, OS_LOG_TYPE_DEBUG, "Loaded %@ = %f from %@", buf, 0x20u);
          }

          LOBYTE(v8) = 1;
          return v8;
        }

        ++v11;
      }

      while (v9 != v11);
      v8 = [(NSArray *)providers countByEnumeratingWithState:&v16 objects:v26 count:16];
      v9 = v8;
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  return v8;
}

- (unint64_t)loadFloatArray:(id)array toDestination:(float *)destination
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  providers = self->_providers;
  result = [(NSArray *)providers countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (result)
  {
    v9 = result;
    v10 = *v13;
    while (2)
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(providers);
        }

        if ([*(*(&v12 + 1) + 8 * v11) loadFloatArray:array toDestination:destination])
        {
          if (self->_logHandle)
          {
            if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_DEBUG))
            {
              [CBCombinedConfigProvider loadFloatArray:toDestination:];
            }
          }

          return 1;
        }

        ++v11;
      }

      while (v9 != v11);
      result = [(NSArray *)providers countByEnumeratingWithState:&v12 objects:v16 count:16];
      v9 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

- (unint64_t)loadIOFixedArray:(id)array toDestination:(float *)destination
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  providers = self->_providers;
  result = [(NSArray *)providers countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (result)
  {
    v9 = result;
    v10 = *v13;
    while (2)
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(providers);
        }

        if ([*(*(&v12 + 1) + 8 * v11) loadIOFixedArray:array toDestination:destination])
        {
          if (self->_logHandle)
          {
            if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_DEBUG))
            {
              [CBCombinedConfigProvider loadFloatArray:toDestination:];
            }
          }

          return 1;
        }

        ++v11;
      }

      while (v9 != v11);
      result = [(NSArray *)providers countByEnumeratingWithState:&v12 objects:v16 count:16];
      v9 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

- (unint64_t)loadInt16Array:(id)array toDestination:(signed __int16 *)destination
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  providers = self->_providers;
  result = [(NSArray *)providers countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (result)
  {
    v9 = result;
    v10 = *v13;
    while (2)
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(providers);
        }

        if ([*(*(&v12 + 1) + 8 * v11) loadInt16Array:array toDestination:destination])
        {
          if (self->_logHandle)
          {
            if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_DEBUG))
            {
              [CBCombinedConfigProvider loadFloatArray:toDestination:];
            }
          }

          return 1;
        }

        ++v11;
      }

      while (v9 != v11);
      result = [(NSArray *)providers countByEnumeratingWithState:&v12 objects:v16 count:16];
      v9 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

- (BOOL)loadInt:(id)int toDestination:(int *)destination
{
  v27 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  providers = self->_providers;
  v8 = [(NSArray *)providers countByEnumeratingWithState:&v16 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    while (2)
    {
      v11 = 0;
      do
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(providers);
        }

        v12 = *(*(&v16 + 1) + 8 * v11);
        if ([v12 loadInt:int toDestination:destination])
        {
          logHandle = self->_logHandle;
          if (logHandle && os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
          {
            v14 = *destination;
            *buf = 138412802;
            intCopy = int;
            v22 = 1024;
            v23 = v14;
            v24 = 2112;
            v25 = v12;
            _os_log_debug_impl(&dword_223D10000, logHandle, OS_LOG_TYPE_DEBUG, "Loaded %@ = %d from %@", buf, 0x1Cu);
          }

          LOBYTE(v8) = 1;
          return v8;
        }

        ++v11;
      }

      while (v9 != v11);
      v8 = [(NSArray *)providers countByEnumeratingWithState:&v16 objects:v26 count:16];
      v9 = v8;
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  return v8;
}

- (BOOL)loadUint:(id)uint toDestination:(unsigned int *)destination
{
  v27 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  providers = self->_providers;
  v8 = [(NSArray *)providers countByEnumeratingWithState:&v16 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    while (2)
    {
      v11 = 0;
      do
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(providers);
        }

        v12 = *(*(&v16 + 1) + 8 * v11);
        if ([v12 loadUint:uint toDestination:destination])
        {
          logHandle = self->_logHandle;
          if (logHandle && os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
          {
            v14 = *destination;
            *buf = 138412802;
            uintCopy = uint;
            v22 = 1024;
            v23 = v14;
            v24 = 2112;
            v25 = v12;
            _os_log_debug_impl(&dword_223D10000, logHandle, OS_LOG_TYPE_DEBUG, "Loaded %@ = %u from %@", buf, 0x1Cu);
          }

          LOBYTE(v8) = 1;
          return v8;
        }

        ++v11;
      }

      while (v9 != v11);
      v8 = [(NSArray *)providers countByEnumeratingWithState:&v16 objects:v26 count:16];
      v9 = v8;
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  return v8;
}

- (unint64_t)loadUintArray:(id)array toDestination:(unsigned int *)destination
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  providers = self->_providers;
  result = [(NSArray *)providers countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (result)
  {
    v9 = result;
    v10 = *v13;
    while (2)
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(providers);
        }

        if ([*(*(&v12 + 1) + 8 * v11) loadUintArray:array toDestination:destination])
        {
          if (self->_logHandle)
          {
            if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_DEBUG))
            {
              [CBCombinedConfigProvider loadFloatArray:toDestination:];
            }
          }

          return 1;
        }

        ++v11;
      }

      while (v9 != v11);
      result = [(NSArray *)providers countByEnumeratingWithState:&v12 objects:v16 count:16];
      v9 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

@end