@interface CanUseAppsCache
+ (BOOL)makeVerdictFromRationaleCode:(int)code;
- (BOOL)hasEntryFor:(id)for state:(int64_t)state rationaleCode:(int *)code;
- (CanUseAppsCache)init;
- (id)description;
- (void)disable;
- (void)enable;
- (void)insertEntryFor:(id)for state:(int64_t)state rationaleCode:(int)code;
@end

@implementation CanUseAppsCache

- (CanUseAppsCache)init
{
  v6.receiver = self;
  v6.super_class = CanUseAppsCache;
  v2 = [(CanUseAppsCache *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    cache = v2->cache;
    v2->cache = v3;
  }

  return v2;
}

- (id)description
{
  v2 = "no";
  if (self->disabled)
  {
    v2 = "yes";
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"CFSM canUse cache: disabled=%s cache=%@", v2, self->cache];
}

- (BOOL)hasEntryFor:(id)for state:(int64_t)state rationaleCode:(int *)code
{
  v32 = *MEMORY[0x277D85DE8];
  forCopy = for;
  v9 = forCopy;
  if (self->disabled)
  {
    v10 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      v11 = "CFSM canUse cache: ignoring because disabled";
      v12 = v10;
      v13 = OS_LOG_TYPE_DEBUG;
      v14 = 2;
LABEL_12:
      _os_log_impl(&dword_23255B000, v12, v13, v11, buf, v14);
      goto LABEL_13;
    }

    goto LABEL_13;
  }

  v15 = [forCopy length];
  if (!code || !v15)
  {
    v23 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v27 = v9;
      v28 = 2048;
      stateCopy2 = code;
      v11 = "CFSM canUse cache: wants non-nil args (appName/code): %p/%p";
      v12 = v23;
      v13 = OS_LOG_TYPE_ERROR;
      v14 = 22;
      goto LABEL_12;
    }

LABEL_13:
    v19 = 0;
    goto LABEL_20;
  }

  v16 = [(CanUseAppsCache *)self _makeKeyFrom:v9 state:state];
  v17 = [(NSMutableDictionary *)self->cache objectForKeyedSubscript:v16];
  v18 = v17;
  v19 = v17 != 0;
  if (v17)
  {
    intValue = [v17 intValue];
    *code = intValue;
    v21 = rnfLogHandle;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      if ((intValue - 1) >= 7)
      {
        v22 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"(unknown: %i)", intValue];
      }

      else
      {
        v22 = off_27898D430[(intValue - 1)];
      }

      *buf = 138412802;
      v27 = v9;
      v28 = 2048;
      stateCopy2 = state;
      v30 = 2112;
      v31 = v22;
      _os_log_impl(&dword_23255B000, v21, OS_LOG_TYPE_DEBUG, "CFSM canUse cache: hit for (appName/state/code): %@/%ld/%@", buf, 0x20u);
    }
  }

  else
  {
    v24 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v27 = v9;
      v28 = 2048;
      stateCopy2 = state;
      _os_log_impl(&dword_23255B000, v24, OS_LOG_TYPE_DEBUG, "CFSM canUse cache: miss for (appName/state): %@/%ld", buf, 0x16u);
    }
  }

LABEL_20:
  return v19;
}

- (void)insertEntryFor:(id)for state:(int64_t)state rationaleCode:(int)code
{
  v5 = *&code;
  v20 = *MEMORY[0x277D85DE8];
  forCopy = for;
  if (self->disabled)
  {
    v9 = rnfLogHandle;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      if ((v5 - 1) >= 7)
      {
        v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"(unknown: %i)", v5];
      }

      else
      {
        v10 = off_27898D430[(v5 - 1)];
      }

      *buf = 138412802;
      v15 = forCopy;
      v16 = 2048;
      stateCopy2 = state;
      v18 = 2112;
      v19 = v10;
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEBUG, "CFSM canUse cache: ignoring because disabled (appName/state/code): %@/%ld/%@", buf, 0x20u);
    }
  }

  else
  {
    v9 = [(CanUseAppsCache *)self _makeKeyFrom:forCopy state:state];
    v11 = [MEMORY[0x277CCABB0] numberWithInt:v5];
    [(NSMutableDictionary *)self->cache setObject:v11 forKeyedSubscript:v9];

    v12 = rnfLogHandle;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      if ((v5 - 1) >= 7)
      {
        v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"(unknown: %i)", v5];
      }

      else
      {
        v13 = off_27898D430[(v5 - 1)];
      }

      *buf = 138412802;
      v15 = forCopy;
      v16 = 2048;
      stateCopy2 = state;
      v18 = 2112;
      v19 = v13;
      _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_DEBUG, "CFSM canUse cache: inserted (appName/state/code): %@/%ld/%@", buf, 0x20u);
    }
  }
}

- (void)disable
{
  v3 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEBUG, "CFSM canUse cache: disable", v4, 2u);
  }

  self->disabled = 1;
  [(NSMutableDictionary *)self->cache removeAllObjects];
}

- (void)enable
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v8) = 0;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEBUG, "CFSM canUse cache: enable", &v8, 2u);
  }

  self->disabled = 0;
  if ([(NSMutableDictionary *)self->cache count]>= 0x15)
  {
    v4 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEBUG))
    {
      cache = self->cache;
      v6 = v4;
      v7 = [(NSMutableDictionary *)cache count];
      v8 = 134217984;
      v9 = v7;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEBUG, "CFSM canUse cache: enable and drop %ld entries", &v8, 0xCu);
    }

    [(NSMutableDictionary *)self->cache removeAllObjects];
  }
}

+ (BOOL)makeVerdictFromRationaleCode:(int)code
{
  v8 = *MEMORY[0x277D85DE8];
  if ((code - 1) >= 7)
  {
    v5 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
    {
      v7[0] = 67109120;
      v7[1] = code;
      _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_ERROR, "CFSM canUse cache, unexpected code: %d", v7, 8u);
    }

    LOBYTE(v3) = 0;
  }

  else
  {
    v3 = 0x61u >> (code - 1);
  }

  return v3 & 1;
}

@end