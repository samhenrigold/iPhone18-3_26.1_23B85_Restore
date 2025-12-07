@interface GKTable
- (GKTable)initWithSize:(unint64_t)size;
- (id)allObjects;
- (id)objectForKey:(unsigned int)key;
- (void)dealloc;
- (void)lock;
- (void)makeObjectsPerformSelector:(SEL)selector;
- (void)makeObjectsPerformSelector:(SEL)selector withObject:(id)object;
- (void)print;
- (void)removeAllObjects;
- (void)removeObjectForKey:(unsigned int)key;
- (void)setObject:(id)object forKey:(unsigned int)key;
- (void)touchObject:(id)object;
- (void)touchObjectForKey:(unsigned int)key;
- (void)unlock;
@end

@implementation GKTable

- (GKTable)initWithSize:(unint64_t)size
{
  v10 = *MEMORY[0x277D85DE8];
  v8.receiver = self;
  v8.super_class = GKTable;
  v4 = [(GKTable *)&v8 init];
  if (v4)
  {
    if (size)
    {
      sizeCopy = size;
    }

    else
    {
      sizeCopy = 20;
    }

    v4->_count = 0;
    v4->_size = sizeCopy;
    v6 = malloc_type_calloc(sizeCopy, 0x20uLL, 0x10800406DC01D99uLL);
    v4->_items = v6;
    if (v6)
    {
      v9.__sig = 0xAAAAAAAAAAAAAAAALL;
      *v9.__opaque = 0xAAAAAAAAAAAAAAAALL;
      pthread_mutexattr_init(&v9);
      pthread_mutexattr_settype(&v9, 2);
      pthread_mutex_init(&v4->_lock, &v9);
      pthread_mutexattr_destroy(&v9);
    }

    else
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          [GKTable initWithSize:];
        }
      }

      return 0;
    }
  }

  return v4;
}

- (void)dealloc
{
  [(GKTable *)self removeAllObjects];
  free(self->_items);
  pthread_mutex_destroy(&self->_lock);
  v3.receiver = self;
  v3.super_class = GKTable;
  [(GKTable *)&v3 dealloc];
}

- (id)objectForKey:(unsigned int)key
{
  lock = [(GKTable *)self lock];
  count = self->_count;
  if (count)
  {
    v8 = 0;
    while (self->_items[v8].var0 != key)
    {
      ++v8;
      if (!--count)
      {
        goto LABEL_5;
      }
    }

    v10 = micro(lock, v6);
    v11 = &self->_items[v8];
    v11->var3 = v10;
    v9 = v11->var1;
  }

  else
  {
LABEL_5:
    v9 = 0;
  }

  [(GKTable *)self unlock];
  return v9;
}

- (id)allObjects
{
  [(GKTable *)self lock];
  v3 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:self->_count];
  if (v3 && self->_count)
  {
    v4 = 0;
    v5 = 8;
    do
    {
      [v3 addObject:*(&self->_items->var0 + v5)];
      ++v4;
      v5 += 32;
    }

    while (v4 < self->_count);
  }

  [(GKTable *)self unlock];

  return v3;
}

- (void)setObject:(id)object forKey:(unsigned int)key
{
  v42 = *MEMORY[0x277D85DE8];
  [(GKTable *)self lock];
  count = self->_count;
  if (!count)
  {
    LODWORD(v11) = 0;
LABEL_7:
    if (count == self->_size)
    {
      v12 = count + 20;
      items = malloc_type_realloc(self->_items, 32 * (count + 20), 0x10800406DC01D99uLL);
      if (!items)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v23 = VRTraceErrorLogLevelToCSTR();
          v24 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
          {
            v25 = *__error();
            v26 = 136316674;
            v27 = v23;
            v28 = 2080;
            v29 = "[GKTable setObject:forKey:]";
            v30 = 1024;
            v31 = 482;
            v32 = 2048;
            selfCopy3 = self;
            v34 = 2112;
            objectCopy4 = object;
            v36 = 1024;
            keyCopy3 = key;
            v38 = 1024;
            LODWORD(v39) = v25;
            _os_log_error_impl(&dword_24E50C000, v24, OS_LOG_TYPE_ERROR, " [%s] %s:%d GKTable[%p] setObject:[%@]forKey:[%d] realloc error %d", &v26, 0x3Cu);
          }
        }

        goto LABEL_20;
      }

      self->_items = items;
      self->_size = v12;
      count = self->_count;
    }

    else
    {
      items = self->_items;
    }

    items[count].var0 = key;
    *&self->_items[self->_count].var2 = vdupq_lane_s64(COERCE__INT64(micro(items, v7)), 0);
    objectCopy2 = object;
    v15 = self->_count;
    self->_items[v15].var1 = objectCopy2;
    self->_count = v15 + 1;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v16 = VRTraceErrorLogLevelToCSTR();
      v17 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v26 = 136316674;
        v27 = v16;
        v28 = 2080;
        v29 = "[GKTable setObject:forKey:]";
        v30 = 1024;
        v31 = 493;
        v32 = 2048;
        selfCopy3 = self;
        v34 = 2112;
        objectCopy4 = object;
        v36 = 1024;
        keyCopy3 = key;
        v38 = 1024;
        LODWORD(v39) = v11;
        _os_log_impl(&dword_24E50C000, v17, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GKTable[%p] setObject:[%@] forKey:[%d] @%d", &v26, 0x3Cu);
      }
    }

    goto LABEL_20;
  }

  v9 = 0;
  v10 = 8;
  while (*(self->_items + v10 - 8) != key)
  {
    ++v9;
    v10 += 32;
    if (count == v9)
    {
      v11 = self->_count;
      goto LABEL_7;
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v18 = VRTraceErrorLogLevelToCSTR();
    v19 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v20 = *(&self->_items->var0 + v10);
      v26 = 136316930;
      v27 = v18;
      v28 = 2080;
      v29 = "[GKTable setObject:forKey:]";
      v30 = 1024;
      v31 = 466;
      v32 = 2048;
      selfCopy3 = self;
      v34 = 2112;
      objectCopy4 = object;
      v36 = 1024;
      keyCopy3 = key;
      v38 = 2112;
      v39 = v20;
      v40 = 1024;
      v41 = v9;
      _os_log_impl(&dword_24E50C000, v19, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GKTable[%p] setObject:[%@] forKey:[%d] replacing [%@] @%d", &v26, 0x46u);
    }
  }

  if ([*(&self->_items->var0 + v10) conformsToProtocol:&unk_28619F958])
  {
    [*(&self->_items->var0 + v10) cleanupForGKTable:self];
  }

  *(&self->_items->var1 + v10) = vdupq_lane_s64(COERCE__INT64(micro(v21, v22)), 0);
  *(&self->_items->var0 + v10) = object;
LABEL_20:
  [(GKTable *)self unlock];
}

- (void)touchObject:(id)object
{
  [(GKTable *)self lock];
  if (self->_count)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = [self->_items[v5].var1 isEqual:object];
      if (v7)
      {
        *&self->_items[v5].var2 = vdupq_lane_s64(COERCE__INT64(micro(v7, v8)), 0);
      }

      ++v6;
      ++v5;
    }

    while (v6 < self->_count);
  }

  [(GKTable *)self unlock];
}

- (void)touchObjectForKey:(unsigned int)key
{
  lock = [(GKTable *)self lock];
  count = self->_count;
  if (count)
  {
    v8 = 0;
    v9 = 0;
    items = self->_items;
    do
    {
      if (items[v8].var0 == key)
      {
        *&v11 = micro(lock, v6);
        items = self->_items;
        count = self->_count;
        *&items[v8].var2 = vdupq_lane_s64(v11, 0);
      }

      ++v9;
      ++v8;
    }

    while (v9 < count);
  }

  [(GKTable *)self unlock];
}

- (void)removeObjectForKey:(unsigned int)key
{
  v32 = *MEMORY[0x277D85DE8];
  [(GKTable *)self lock];
  count = self->_count;
  if (count)
  {
    v7 = 0;
    v8 = 0;
    v9 = MEMORY[0x277CE5818];
    *&v5 = 136316674;
    v17 = v5;
    do
    {
      if (self->_items[v7].var0 == key)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v10 = VRTraceErrorLogLevelToCSTR();
          v11 = *v9;
          if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
          {
            var1 = self->_items[v7].var1;
            *buf = v17;
            v19 = v10;
            v20 = 2080;
            v21 = "[GKTable removeObjectForKey:]";
            v22 = 1024;
            v23 = 524;
            v24 = 2048;
            selfCopy = self;
            v26 = 2112;
            v27 = var1;
            v28 = 1024;
            keyCopy = key;
            v30 = 1024;
            v31 = v8;
            _os_log_impl(&dword_24E50C000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GKTable[%p] removeObject:[%@] forKey:[%d] @%d", buf, 0x3Cu);
          }
        }

        if ([self->_items[v7].var1 conformsToProtocol:{&unk_28619F958, v17}])
        {
          [self->_items[v7].var1 cleanupForGKTable:self];
        }

        count = self->_count - 1;
        self->_count = count;
        if (v8 < count)
        {
          items = self->_items;
          v14 = &items[v7];
          v15 = &items[count];
          v16 = *&v15->var2;
          *&v14->var0 = *&v15->var0;
          *&v14->var2 = v16;
          count = self->_count;
        }
      }

      ++v8;
      ++v7;
    }

    while (v8 < count);
  }

  [(GKTable *)self unlock];
}

- (void)removeAllObjects
{
  [(GKTable *)self lock];
  if (self->_count)
  {
    v3 = 0;
    v4 = 8;
    do
    {
      if ([*(&self->_items->var0 + v4) conformsToProtocol:&unk_28619F958])
      {
        [*(&self->_items->var0 + v4) cleanupForGKTable:self];
      }

      ++v3;
      v4 += 32;
    }

    while (v3 < self->_count);
  }

  self->_count = 0;

  [(GKTable *)self unlock];
}

- (void)makeObjectsPerformSelector:(SEL)selector
{
  [(GKTable *)self lock];
  if (self->_count)
  {
    v5 = 0;
    v6 = 8;
    do
    {
      if (objc_opt_respondsToSelector())
      {
        [*(&self->_items->var0 + v6) performSelector:selector];
      }

      ++v5;
      v6 += 32;
    }

    while (v5 < self->_count);
  }

  [(GKTable *)self unlock];
}

- (void)makeObjectsPerformSelector:(SEL)selector withObject:(id)object
{
  [(GKTable *)self lock];
  if (self->_count)
  {
    v7 = 0;
    v8 = 8;
    do
    {
      if (objc_opt_respondsToSelector())
      {
        [*(&self->_items->var0 + v8) performSelector:selector withObject:object];
      }

      ++v7;
      v8 += 32;
    }

    while (v7 < self->_count);
  }

  [(GKTable *)self unlock];
}

- (void)lock
{
  OUTLINED_FUNCTION_6_2();
  __error();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

- (void)unlock
{
  OUTLINED_FUNCTION_6_2();
  __error();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

- (void)print
{
  v3 = objc_alloc_init(MEMORY[0x277CCA8B0]);
  v5 = micro(v3, v4);
  [(GKTable *)self lock];
  v6 = MEMORY[0x277D85DF8];
  fprintf(*MEMORY[0x277D85DF8], "GKTable[%x] (%lu/%lu): {\n", self, self->_count, self->_size);
  if (self->_count)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = *v6;
      v10 = &self->_items[v7];
      var0 = v10->var0;
      uTF8String = [objc_msgSend_description(v10->var1) UTF8String];
      fprintf(v9, "\t%d => [%s] (Q:-%.3lf, U:-%.3lf)\n", var0, uTF8String, v5 - self->_items[v7].var3, v5 - self->_items[v7].var2);
      ++v8;
      ++v7;
    }

    while (v8 < self->_count);
  }

  fwrite("}\n", 2uLL, 1uLL, *v6);
  [(GKTable *)self unlock];

  [v3 drain];
}

- (void)initWithSize:.cold.1()
{
  __error();
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

@end