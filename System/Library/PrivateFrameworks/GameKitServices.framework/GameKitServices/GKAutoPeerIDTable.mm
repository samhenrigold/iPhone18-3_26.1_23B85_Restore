@interface GKAutoPeerIDTable
- (id)objectForKey:(unsigned int)key;
- (void)setObject:(id)object forKey:(unsigned int)key;
@end

@implementation GKAutoPeerIDTable

- (id)objectForKey:(unsigned int)key
{
  v3 = *&key;
  v11.receiver = self;
  v11.super_class = GKAutoPeerIDTable;
  v5 = [(GKTable *)&v11 objectForKey:?];
  if (v5)
  {
    v6 = v5;
    return v6;
  }

  v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%d", v3];
  if (v7)
  {
    v8 = v7;
    v10.receiver = self;
    v10.super_class = GKAutoPeerIDTable;
    [(GKTable *)&v10 setObject:v7 forKey:v3];
    v6 = v8;
    return v6;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
    {
      [GKAutoPeerIDTable objectForKey:];
    }
  }

  return @"0";
}

- (void)setObject:(id)object forKey:(unsigned int)key
{
  v18 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136316162;
      v9 = v6;
      v10 = 2080;
      v11 = "[GKAutoPeerIDTable setObject:forKey:]";
      v12 = 1024;
      v13 = 631;
      v14 = 2112;
      objectCopy = object;
      v16 = 1024;
      keyCopy = key;
      _os_log_impl(&dword_24E50C000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GKAutoPeerIDTable setObject:[%@] forKey:[%d] ignored", &v8, 0x2Cu);
    }
  }
}

- (void)objectForKey:.cold.1()
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_2_1(&dword_24E50C000, v0, v1, " [%s] %s:%d GKAutoPeerIDTable: CANNOT CREATE NSSTRING?", v2, v3, v4, v5);
}

@end