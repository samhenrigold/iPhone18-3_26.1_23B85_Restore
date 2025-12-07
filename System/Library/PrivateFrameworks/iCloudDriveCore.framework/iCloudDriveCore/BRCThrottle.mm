@interface BRCThrottle
+ (int64_t)throttleHashBytes:(void *)bytes length:(unint64_t)length;
+ (int64_t)throttleHashFormat:(id)format;
- (BRCThrottle)initWithName:(id)name andParameters:(id)parameters;
- (int64_t)nsecsToNextRetry:(int64_t)retry now:(int64_t)now increment:(BOOL)increment;
- (void)_cleanupStaleCounters:(int64_t)counters;
- (void)incrementRetryCount:(int64_t)count;
- (void)reset;
@end

@implementation BRCThrottle

- (BRCThrottle)initWithName:(id)name andParameters:(id)parameters
{
  v10.receiver = self;
  v10.super_class = BRCThrottle;
  v4 = [(BRCThrottleBase *)&v10 initWithName:name andParameters:parameters];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:32];
    retryCounters = v4->_retryCounters;
    v4->_retryCounters = v5;

    v7 = [[BRCMinHeap alloc] initWithComparator:&__block_literal_global_22];
    retryHeap = v4->_retryHeap;
    v4->_retryHeap = v7;
  }

  return v4;
}

uint64_t __42__BRCThrottle_initWithName_andParameters___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 latestRetry];
  v6 = [v4 latestRetry];

  if (v5 < v6)
  {
    return -1;
  }

  else
  {
    return v5 > v6;
  }
}

- (void)_cleanupStaleCounters:(int64_t)counters
{
  nsecsBeforeForgettingCounter = self->super._nsecsBeforeForgettingCounter;
  firstObject = [(BRCMinHeap *)self->_retryHeap firstObject];
  if (firstObject)
  {
    v7 = counters - nsecsBeforeForgettingCounter;
    while (1)
    {
      v11 = firstObject;
      if ([firstObject latestRetry] >= v7 && -[BRCMinHeap count](self->_retryHeap, "count") <= self->super._maximumElementCount)
      {
        break;
      }

      [(BRCMinHeap *)self->_retryHeap removeFirstObject];
      retryCounters = self->_retryCounters;
      v9 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v11, "throttleHash")}];
      [(NSMutableDictionary *)retryCounters removeObjectForKey:v9];

      firstObject2 = [(BRCMinHeap *)self->_retryHeap firstObject];

      firstObject = firstObject2;
      if (!firstObject2)
      {
        goto LABEL_9;
      }
    }

    firstObject = v11;
LABEL_9:
  }
}

- (void)incrementRetryCount:(int64_t)count
{
  obj = self;
  objc_sync_enter(obj);
  v4 = [MEMORY[0x277CCABB0] numberWithLongLong:count];
  v5 = [(NSMutableDictionary *)obj->_retryCounters objectForKeyedSubscript:v4];
  v6 = v5;
  if (v5)
  {
    [(BRCRetryCounter *)v5 incrementRetry];
    [(BRCMinHeap *)obj->_retryHeap objectWeightChanged:v6];
  }

  else
  {
    v6 = [[BRCRetryCounter alloc] initWithThrottleHash:count];
    [(NSMutableDictionary *)obj->_retryCounters setObject:v6 forKeyedSubscript:v4];
    [(BRCMinHeap *)obj->_retryHeap addObject:v6];
  }

  objc_sync_exit(obj);
}

- (int64_t)nsecsToNextRetry:(int64_t)retry now:(int64_t)now increment:(BOOL)increment
{
  incrementCopy = increment;
  v31 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(BRCThrottle *)selfCopy _cleanupStaleCounters:now];
  retryCounters = selfCopy->_retryCounters;
  v10 = [MEMORY[0x277CCABB0] numberWithLongLong:retry];
  v11 = [(NSMutableDictionary *)retryCounters objectForKeyedSubscript:v10];

  [v11 schedule];
  retryCount = [v11 retryCount];
  objc_sync_exit(selfCopy);

  v12 = -[BRCThrottleBase nsecsToNextRetry:retryCount:now:](selfCopy, "nsecsToNextRetry:retryCount:now:", [v11 latestRetry], &retryCount, now);
  LODWORD(v10) = retryCount;
  if (v10 > [v11 retryCount] && incrementCopy)
  {
    [(BRCThrottle *)selfCopy incrementRetryCount:retry];
  }

  if (v12 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = brc_bread_crumbs();
    v15 = brc_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      name = selfCopy->super._name;
      *buf = 138413058;
      v24 = name;
      v25 = 2048;
      retryCopy2 = retry;
      v27 = 1024;
      *v28 = retryCount;
      *&v28[4] = 2112;
      *&v28[6] = v14;
      v17 = "[DEBUG] gave up on %@/%llx (retry-count:%u)%@";
      v18 = v15;
      v19 = 38;
LABEL_14:
      _os_log_debug_impl(&dword_223E7A000, v18, OS_LOG_TYPE_DEBUG, v17, buf, v19);
      goto LABEL_11;
    }

    goto LABEL_11;
  }

  if (v12 >= 100000000)
  {
    v14 = brc_bread_crumbs();
    v15 = brc_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v21 = selfCopy->super._name;
      *buf = 138413314;
      v24 = v21;
      v25 = 2048;
      retryCopy2 = retry;
      v27 = 2048;
      *v28 = v12 / 0xF4240uLL;
      *&v28[8] = 1024;
      *&v28[10] = retryCount;
      v29 = 2112;
      v30 = v14;
      v17 = "[DEBUG] backing off %@/%llx for %llu milliseconds (retry-count:%u)%@";
      v18 = v15;
      v19 = 48;
      goto LABEL_14;
    }

LABEL_11:
  }

  return v12;
}

- (void)reset
{
  v14 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(BRCMinHeap *)selfCopy->_retryHeap removeAllObjects];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  allKeys = [(NSMutableDictionary *)selfCopy->_retryCounters allKeys];
  v4 = [allKeys countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(allKeys);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        v8 = -[BRCRetryCounter initWithThrottleHash:]([BRCRetryCounter alloc], "initWithThrottleHash:", [v7 unsignedLongLongValue]);
        [(NSMutableDictionary *)selfCopy->_retryCounters setObject:v8 forKeyedSubscript:v7];
        [(BRCMinHeap *)selfCopy->_retryHeap addObject:v8];

        ++v6;
      }

      while (v4 != v6);
      v4 = [allKeys countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  objc_sync_exit(selfCopy);
}

+ (int64_t)throttleHashFormat:(id)format
{
  v35 = *MEMORY[0x277D85DE8];
  formatCopy = format;
  v33 = 0;
  v32 = 0;
  v30 = 0;
  v31 = 0;
  v29 = 0;
  memset(&c, 0, sizeof(c));
  CC_SHA1_Init(&c);
  uTF8String = [formatCopy UTF8String];
  v33 = &v36;
  v5 = *uTF8String;
  if (*uTF8String)
  {
    j = uTF8String;
    while (1)
    {
      v7 = 0;
      for (i = j + 2; v5; ++i)
      {
        if (v5 == 37)
        {
          break;
        }

        v5 = j[++v7];
      }

      if (v7)
      {
        CC_SHA1_Update(&c, j, v7);
        v5 = j[v7];
      }

      if (!v5)
      {
        goto LABEL_40;
      }

      v9 = 0;
      for (j = i; ; ++j)
      {
        v10 = *(j - 1);
        if (v10 != 108)
        {
          break;
        }

        ++v9;
      }

      if ((v10 - 100) > 0x14)
      {
        goto LABEL_20;
      }

      if (((1 << (v10 - 100)) & 0x120021) == 0)
      {
        if (v10 != 112)
        {
          if (v10 == 115)
          {
            v14 = v33++;
            uTF8String2 = *v14;
          }

          else
          {
LABEL_20:
            if (v10 != 64)
            {
              v20 = brc_bread_crumbs();
              v21 = brc_default_log();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
              {
                *buf = 138412290;
                *&buf[4] = v20;
                _os_log_fault_impl(&dword_223E7A000, v21, OS_LOG_TYPE_FAULT, "[CRIT] API MISUSE: unhandled format specifier%@", buf, 0xCu);
              }

              v22 = brc_bread_crumbs();
              v23 = brc_default_log();
              if (os_log_type_enabled(v23, 0x90u))
              {
                v25 = *j;
                *buf = 67109378;
                *&buf[4] = v25;
                *&buf[8] = 2112;
                *&buf[10] = v22;
                _os_log_error_impl(&dword_223E7A000, v23, 0x90u, "[ERROR] unhandled format specifier %%%c\n%@", buf, 0x12u);
              }

              goto LABEL_39;
            }

            v16 = v33++;
            uTF8String2 = [*v16 UTF8String];
          }

          if (uTF8String2)
          {
            v17 = uTF8String2;
          }

          else
          {
            v17 = "NULL";
          }

          if (uTF8String2)
          {
            v13 = strlen(uTF8String2);
          }

          else
          {
            v13 = 4;
          }

          v12 = v17;
          goto LABEL_38;
        }

        v24 = v33++;
        v29 = *v24;
        v12 = &v29;
        goto LABEL_35;
      }

      if (v9 == 1)
      {
        break;
      }

      if (v9)
      {
        v19 = v33++;
        v30 = *v19;
        v12 = &v30;
        goto LABEL_35;
      }

      v11 = v33++;
      v32 = *v11;
      v12 = &v32;
      v13 = 4;
LABEL_38:
      CC_SHA1_Update(&c, v12, v13);
LABEL_39:
      v5 = *j;
      if (!*j)
      {
        goto LABEL_40;
      }
    }

    v18 = v33++;
    v31 = *v18;
    v12 = &v31;
LABEL_35:
    v13 = 8;
    goto LABEL_38;
  }

LABEL_40:
  CC_SHA1_Final(buf, &c);
  v26 = *buf;

  return v26;
}

+ (int64_t)throttleHashBytes:(void *)bytes length:(unint64_t)length
{
  lengthCopy = length;
  v9 = *MEMORY[0x277D85DE8];
  memset(&v7, 0, sizeof(v7));
  CC_SHA1_Init(&v7);
  CC_SHA1_Update(&v7, bytes, lengthCopy);
  CC_SHA1_Final(md, &v7);
  return *md;
}

@end