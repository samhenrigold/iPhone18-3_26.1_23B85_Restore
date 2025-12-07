@interface TSgPTPClock
+ (id)diagnosticDescriptionForInfo:(id)info withIndent:(id)indent;
- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)convertFromMachAbsoluteTo128BitgPTPTime:(unint64_t)time grandmasterUsed:(unint64_t *)used portNumber:(unsigned __int16 *)number;
- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)convertFromTimeSyncTimeTo128BitgPTPTime:(unint64_t)time grandmasterUsed:(unint64_t *)used portNumber:(unsigned __int16 *)number;
- (NSArray)ports;
- (TSgPTPClock)initWithImplDC:(id)c;
- (id)getMetrics;
- (id)getMetricsWithDelta:(id)delta;
- (id)portWithPortNumber:(unsigned __int16)number;
- (void)dealloc;
@end

@implementation TSgPTPClock

- (TSgPTPClock)initWithImplDC:(id)c
{
  cCopy = c;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(TSgPTPClock *)self initWithImplDC:&v11];
    impl = v10;
    v5 = v11;
    goto LABEL_4;
  }

  v9.receiver = self;
  v9.super_class = TSgPTPClock;
  v5 = [(TSKernelClock *)&v9 initWithImplDC:cCopy];
  if (v5)
  {
    v6 = cCopy;
    impl = v5->_impl;
    v5->_impl = v6;
LABEL_4:
  }

  return v5;
}

- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)convertFromMachAbsoluteTo128BitgPTPTime:(unint64_t)time grandmasterUsed:(unint64_t *)used portNumber:(unsigned __int16 *)number
{
  v5 = [TSDCgPTPClock convertFromMachAbsoluteTo128BitgPTPTime:"convertFromMachAbsoluteTo128BitgPTPTime:grandmasterUsed:portNumber:" grandmasterUsed:? portNumber:?];
  result.var1 = v6;
  result.var0 = v5;
  return result;
}

- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)convertFromTimeSyncTimeTo128BitgPTPTime:(unint64_t)time grandmasterUsed:(unint64_t *)used portNumber:(unsigned __int16 *)number
{
  v5 = [TSDCgPTPClock convertFromTimeSyncTimeTo128BitgPTPTime:"convertFromTimeSyncTimeTo128BitgPTPTime:grandmasterUsed:portNumber:" grandmasterUsed:? portNumber:?];
  result.var1 = v6;
  result.var0 = v5;
  return result;
}

- (id)getMetrics
{
  getMetrics = [(TSDCgPTPClock *)self->_impl getMetrics];
  if (getMetrics)
  {
    v3 = [[TSClockMetrics alloc] initWithDaemonMetrics:?];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)getMetricsWithDelta:(id)delta
{
  impl = self->_impl;
  toDaemonMetrics = [delta toDaemonMetrics];
  v5 = [(TSDCgPTPClock *)impl getMetricsWithDelta:?];

  if (v5)
  {
    v6 = [[TSClockMetrics alloc] initWithDaemonMetrics:?];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSArray)ports
{
  array = [MEMORY[0x277CBEB18] array];
  ports = [(TSDCgPTPClock *)self->_impl ports];
  v5 = [ports countByEnumeratingWithState:0 objects:? count:?];
  if (v5)
  {
    v6 = v5;
    v7 = MEMORY[0];
    do
    {
      for (i = 0; i != v6; i = (i + 1))
      {
        if (MEMORY[0] != v7)
        {
          objc_enumerationMutation(ports);
        }

        v9 = [TSgPTPPort gPTPPortWithImplDC:?];
        if (v9)
        {
          [array addObject:?];
        }
      }

      v6 = [ports countByEnumeratingWithState:? objects:? count:?];
    }

    while (v6);
  }

  return array;
}

- (id)portWithPortNumber:(unsigned __int16)number
{
  v3 = [(TSDCgPTPClock *)self->_impl portWithPortNumber:?];
  v4 = [TSgPTPPort gPTPPortWithImplDC:?];

  return v4;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = TSgPTPClock;
  [(TSKernelClock *)&v2 dealloc];
}

+ (id)diagnosticDescriptionForInfo:(id)info withIndent:(id)indent
{
  v43 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  indentCopy = indent;
  v42.receiver = self;
  v42.super_class = &OBJC_METACLASS___TSgPTPClock;
  v8 = objc_msgSendSuper2(&v42, sel_diagnosticDescriptionForInfo_withIndent_, infoCopy, indentCopy);
  [v8 appendFormat:indentCopy];
  v9 = [infoCopy objectForKeyedSubscript:?];
  v39 = v9;
  if (v9)
  {
    [v8 appendFormat:objc_msgSend(v9, "unsignedLongLongValue")];
  }

  else
  {
    [v8 appendString:?];
  }

  [v8 appendFormat:indentCopy];
  v10 = [infoCopy objectForKeyedSubscript:?];
  v38 = v10;
  if (v10)
  {
    v11 = v10;
    [v8 appendString:?];
    v12 = v11;
    v13 = [v12 countByEnumeratingWithState:? objects:? count:?];
    if (v13)
    {
      v14 = v13;
      v15 = MEMORY[0];
      do
      {
        for (i = 0; i != v14; i = (i + 1))
        {
          if (MEMORY[0] != v15)
          {
            objc_enumerationMutation(v12);
          }

          [v8 appendFormat:indentCopy, objc_msgSend(*(8 * i), "unsignedLongLongValue"), v38, v39];
        }

        v14 = [v12 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v14);
    }
  }

  else
  {
    [v8 appendString:?];
  }

  [v8 appendFormat:indentCopy];
  v40 = indentCopy;
  v17 = [indentCopy stringByAppendingString:?];
  v41 = infoCopy;
  v18 = [infoCopy objectForKeyedSubscript:?];
  v19 = [v18 countByEnumeratingWithState:? objects:? count:?];
  if (v19)
  {
    v20 = v19;
    v21 = MEMORY[0];
    do
    {
      for (j = 0; j != v20; j = (j + 1))
      {
        if (MEMORY[0] != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = [*(8 * j) objectForKeyedSubscript:?];
        v25 = [v24 isEqualToString:?];
        v26 = off_279DBD2E0;
        if ((v25 & 1) == 0)
        {
          v27 = [off_279DBD2E0 isEqualToString:?];
          v26 = off_279DBD320;
          if ((v27 & 1) == 0)
          {
            v28 = [off_279DBD320 isEqualToString:?];
            v26 = off_279DBD318;
            if ((v28 & 1) == 0)
            {
              v29 = [off_279DBD318 isEqualToString:?];
              v26 = off_279DBD330;
              if ((v29 & 1) == 0)
              {
                v30 = [off_279DBD330 isEqualToString:?];
                v26 = off_279DBD340;
                if ((v30 & 1) == 0)
                {
                  v31 = [off_279DBD340 isEqualToString:?];
                  v26 = off_279DBD328;
                  if ((v31 & 1) == 0)
                  {
                    v32 = [off_279DBD328 isEqualToString:?];
                    v26 = off_279DBD338;
                    if ((v32 & 1) == 0)
                    {
                      if ([off_279DBD338 isEqualToString:?] & 1) != 0 || (objc_msgSend(v33, "isEqualToString:"))
                      {
                        v26 = off_279DBD2E8;
                      }

                      else
                      {
                        v35 = [v34 isEqualToString:?];
                        v26 = off_279DBD2E8;
                        if (!v35)
                        {
                          v26 = off_279DBD300;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }

        v36 = [__objc2_class diagnosticDescriptionForInfo:"diagnosticDescriptionForInfo:withIndent:" withIndent:?];
        [v8 appendString:?];
      }

      v20 = [v18 countByEnumeratingWithState:? objects:? count:?];
    }

    while (v20);
  }

  return v8;
}

- (void)initWithImplDC:(void *)a3 .cold.1(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136316418;
    v7 = "[kernelClock isKindOfClass:[TSDCgPTPClock class]]";
    v8 = 2048;
    v9 = 0;
    v10 = 2048;
    v11 = 0;
    v12 = 2080;
    v13 = "";
    v14 = 2080;
    v15 = "/Library/Caches/com.apple.xbs/Sources/TimeSync/TimeSync/API/TSgPTPClock.m";
    v16 = 1024;
    v17 = 77;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", &v6, 0x3Au);
  }

  *a3 = 0;
  *a2 = a1;
}

@end