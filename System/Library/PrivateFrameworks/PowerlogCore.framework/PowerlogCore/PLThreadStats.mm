@interface PLThreadStats
+ (id)getThreadName:(unint64_t)name inProcess:(int)process isNamed:(BOOL *)named;
- (BOOL)shouldGatherStatsForProcessName:(id)name;
- (BOOL)shouldIncludeThread:(id)thread withTotalSystemTime:(double)time withTotalUserTime:(double)userTime;
- (PLThreadStats)initWithTimeFilter:(double)filter withPercentFilter:(unint64_t)percentFilter withProcessThreadMapping:(id)mapping withError:(id *)error;
- (id)diffSinceLastSnapshot;
- (id)diffSnapshotWithNew:(id)new andOld:(id)old;
- (id)filterDiff:(id)diff;
- (id)generateSnapshot;
- (id)threadStatsForPid:(void *)pid withThreads:;
@end

@implementation PLThreadStats

- (PLThreadStats)initWithTimeFilter:(double)filter withPercentFilter:(unint64_t)percentFilter withProcessThreadMapping:(id)mapping withError:(id *)error
{
  mappingCopy = mapping;
  v21.receiver = self;
  v21.super_class = PLThreadStats;
  v11 = [(PLThreadStats *)&v21 init];
  if (!v11)
  {
    goto LABEL_8;
  }

  objc_opt_self();
  if (filter < 0.0)
  {
    v12 = MEMORY[0x1E696ABC0];
    v13 = 1;
LABEL_10:
    [v12 errorWithDomain:@"PLThreadStatsErrorDomain" code:v13 userInfo:0];
    *error = v16 = 0;
    goto LABEL_11;
  }

  [(PLThreadStats *)v11 setAbsoluteTimeFilter:filter];
  objc_opt_self();
  if (percentFilter >= 0x65)
  {
    v12 = MEMORY[0x1E696ABC0];
    v13 = 2;
    goto LABEL_10;
  }

  [(PLThreadStats *)v11 setPercentTimeFilter:percentFilter];
  if (!mappingCopy)
  {
    [(PLThreadStats *)v11 setProcessThreadMap:0];
LABEL_14:
    generateSnapshot = [(PLThreadStats *)v11 generateSnapshot];
    [(PLThreadStats *)v11 setCurrentSnapshot:generateSnapshot];

    v16 = v11;
    goto LABEL_11;
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __89__PLThreadStats_initWithTimeFilter_withPercentFilter_withProcessThreadMapping_withError___block_invoke;
  v19[3] = &unk_1E851B070;
  v15 = dictionary;
  v20 = v15;
  [mappingCopy enumerateKeysAndObjectsUsingBlock:v19];
  if ([v15 count])
  {
    [(PLThreadStats *)v11 setProcessThreadMap:v15];

    goto LABEL_14;
  }

  *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"PLThreadStatsErrorDomain" code:3 userInfo:0];

LABEL_8:
  v16 = 0;
LABEL_11:

  return v16;
}

void __89__PLThreadStats_initWithTimeFilter_withPercentFilter_withProcessThreadMapping_withError___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x1E695DFD8];
  v6 = a2;
  v7 = [v5 setWithArray:a3];
  [*(a1 + 32) setObject:v7 forKeyedSubscript:v6];
}

- (id)diffSnapshotWithNew:(id)new andOld:(id)old
{
  oldCopy = old;
  newCopy = new;
  v7 = objc_opt_new();
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __44__PLThreadStats_diffSnapshotWithNew_andOld___block_invoke;
  v15 = &unk_1E851B1B0;
  v16 = oldCopy;
  v17 = v7;
  v8 = v7;
  v9 = oldCopy;
  [newCopy enumerateKeysAndObjectsUsingBlock:&v12];

  v10 = [v8 copy];

  return v10;
}

void __44__PLThreadStats_diffSnapshotWithNew_andOld___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v9 = [v5 objectForKeyedSubscript:v7];
  v8 = [v6 diffSinceBaseline:v9];

  [*(a1 + 40) setObject:v8 forKeyedSubscript:v7];
}

- (id)filterDiff:(id)diff
{
  diffCopy = diff;
  v5 = objc_opt_new();
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __28__PLThreadStats_filterDiff___block_invoke;
  v12 = &unk_1E851B1B0;
  selfCopy = self;
  v14 = v5;
  v6 = v5;
  [diffCopy enumerateKeysAndObjectsUsingBlock:&v9];

  v7 = [v6 copy];

  return v7;
}

void __28__PLThreadStats_filterDiff___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x2020000000;
  v22[3] = 0;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x2020000000;
  v21[3] = 0;
  v7 = [v6 threadNameToInfo];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __28__PLThreadStats_filterDiff___block_invoke_2;
  v20[3] = &unk_1E851B1D8;
  v20[4] = v22;
  v20[5] = v21;
  [v7 enumerateKeysAndObjectsUsingBlock:v20];

  v8 = [MEMORY[0x1E695DF90] dictionary];
  v9 = [v6 threadNameToInfo];
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __28__PLThreadStats_filterDiff___block_invoke_3;
  v15 = &unk_1E851B200;
  v16 = *(a1 + 32);
  v18 = v21;
  v19 = v22;
  v10 = v8;
  v17 = v10;
  [v9 enumerateKeysAndObjectsUsingBlock:&v12];

  if ([v10 count])
  {
    v11 = [[PLProcessInfo alloc] initWithProcessInfo:v6];
    [(PLProcessInfo *)v11 setThreadNameToInfo:v10];
    [*(a1 + 40) setObject:v11 forKeyedSubscript:v5];
  }

  _Block_object_dispose(v21, 8);
  _Block_object_dispose(v22, 8);
}

double __28__PLThreadStats_filterDiff___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  [v4 userTime];
  *(*(*(a1 + 32) + 8) + 24) = v5 + *(*(*(a1 + 32) + 8) + 24);
  [v4 systemTime];
  v7 = v6;

  v8 = *(*(a1 + 40) + 8);
  result = v7 + *(v8 + 24);
  *(v8 + 24) = result;
  return result;
}

void __28__PLThreadStats_filterDiff___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ([*(a1 + 32) shouldIncludeThread:v5 withTotalSystemTime:*(*(*(a1 + 48) + 8) + 24) withTotalUserTime:*(*(*(a1 + 56) + 8) + 24)])
  {
    [*(a1 + 40) setObject:v5 forKeyedSubscript:v6];
  }
}

- (BOOL)shouldGatherStatsForProcessName:(id)name
{
  nameCopy = name;
  v5 = nameCopy;
  if (nameCopy && [nameCopy length])
  {
    processThreadMap = [(PLThreadStats *)self processThreadMap];

    if (processThreadMap)
    {
      processThreadMap2 = [(PLThreadStats *)self processThreadMap];
      v8 = [processThreadMap2 objectForKeyedSubscript:v5];
      v9 = v8 != 0;
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)shouldIncludeThread:(id)thread withTotalSystemTime:(double)time withTotalUserTime:(double)userTime
{
  threadCopy = thread;
  percentTimeFilter = [(PLThreadStats *)self percentTimeFilter];
  if (percentTimeFilter)
  {
    if (time <= 0.0)
    {
      v14 = 0;
    }

    else
    {
      systemTime = [threadCopy systemTime];
      v12 = v11 * 100.0 / time;
      v13 = PLLogThreadStats(systemTime);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [PLThreadStats shouldIncludeThread:? withTotalSystemTime:? withTotalUserTime:?];
      }

      percentTimeFilter = [(PLThreadStats *)self percentTimeFilter];
      v14 = v12 >= percentTimeFilter;
    }

    if (userTime > 0.0)
    {
      userTime = [threadCopy userTime];
      v17 = v16 * 100.0 / userTime;
      v18 = PLLogThreadStats(userTime);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        [PLThreadStats shouldIncludeThread:? withTotalSystemTime:? withTotalUserTime:?];
      }

      percentTimeFilter = [(PLThreadStats *)self percentTimeFilter];
      if (v17 >= percentTimeFilter)
      {
        v14 = 1;
      }
    }
  }

  else
  {
    v14 = 1;
  }

  v19 = PLLogThreadStats(percentTimeFilter);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    [PLThreadStats shouldIncludeThread:v14 withTotalSystemTime:v19 withTotalUserTime:?];
  }

  [(PLThreadStats *)self absoluteTimeFilter];
  if (v20 == 0.0)
  {
    v21 = 1;
  }

  else
  {
    [threadCopy systemTime];
    v23 = v22;
    [(PLThreadStats *)self absoluteTimeFilter];
    v25 = v23 >= v24;
    [threadCopy userTime];
    v27 = v26;
    [(PLThreadStats *)self absoluteTimeFilter];
    v21 = v27 >= v28 || v25;
  }

  return v21 & v14;
}

+ (id)getThreadName:(unint64_t)name inProcess:(int)process isNamed:(BOOL *)named
{
  v16 = *MEMORY[0x1E69E9840];
  *named = 0;
  name = [MEMORY[0x1E696AEC0] stringWithFormat:@"0x%llx", name];
  if (process < 1)
  {
    v12 = 0;
  }

  else
  {
    memset(v15, 0, 464);
    memset(buffer, 0, sizeof(buffer));
    if (proc_pidinfo(process, 10, name, buffer, 1288) <= 0 && (*__error() == 3 || *__error() == 22))
    {
      v12 = name;
    }

    else
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v15];
      v10 = [v9 length];
      v11 = name;
      if (v10)
      {
        *named = 1;
        v11 = v9;
      }

      v12 = v11;
    }
  }

  return v12;
}

- (id)generateSnapshot
{
  selfCopy = self;
  v21 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v2 = objc_opt_new();
    v3 = PLLogThreadStats(v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1D8611000, v3, OS_LOG_TYPE_INFO, "started snapshot generation", buf, 2u);
    }

    v4 = +[PLUtilities maxProcessCount];
    v18[1] = v18;
    v5 = (v18 - ((4 * v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    bzero(v5, 4 * v4);
    v6 = proc_listpids(1u, 0, 0, 0);
    v7 = proc_listpids(1u, 0, v5, 4 * v4);
    if (v6 >> 2 >= v4)
    {
      v8 = v4;
    }

    else
    {
      v8 = v6 >> 2;
    }

    for (; v8; --v8)
    {
      v14 = *v5++;
      v13 = v14;
      v15 = [PLUtilities fullProcessNameForPid:v14];
      if ([selfCopy shouldGatherStatsForProcessName:v15])
      {
        processThreadMap = [selfCopy processThreadMap];
        v10 = [processThreadMap objectForKeyedSubscript:v15];
        v11 = [(PLThreadStats *)selfCopy threadStatsForPid:v13 withThreads:v10];

        if ([v11 count])
        {
          v12 = [[PLProcessInfo alloc] initWithName:v15 andID:v13];
          [(PLProcessInfo *)v12 setThreadNameToInfo:v11];
          [v2 setObject:v12 forKeyedSubscript:v15];
        }
      }
    }

    v16 = PLLogThreadStats(v7);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *v19 = 0;
      _os_log_impl(&dword_1D8611000, v16, OS_LOG_TYPE_INFO, "finished snapshot generation", v19, 2u);
    }

    selfCopy = [v2 copy];
  }

  return selfCopy;
}

- (id)diffSinceLastSnapshot
{
  generateSnapshot = [(PLThreadStats *)self generateSnapshot];
  currentSnapshot = [(PLThreadStats *)self currentSnapshot];
  v5 = [(PLThreadStats *)self diffSnapshotWithNew:generateSnapshot andOld:currentSnapshot];

  [(PLThreadStats *)self setCurrentSnapshot:generateSnapshot];
  v6 = [(PLThreadStats *)self filterDiff:v5];

  return v6;
}

- (id)threadStatsForPid:(void *)pid withThreads:
{
  pidCopy = pid;
  v6 = pidCopy;
  if (self)
  {
    v7 = [pidCopy count];
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v25 = 0u;
    memset(buffer, 0, sizeof(buffer));
    if (proc_pidinfo(a2, 4, 0, buffer, 96) == 96 && (v9 = 8 * SDWORD1(v25), (v10 = malloc_type_malloc(v9, 0x497D4EEuLL)) != 0))
    {
      v11 = v10;
      while (1)
      {
        v12 = proc_pidinfo(a2, 6, 0, v11, v9);
        if ((v12 & 0x80000000) != 0)
        {
          break;
        }

        if (v9 >= v12)
        {
          if (v12 >= 8)
          {
            v14 = v12 >> 3;
            v15 = v11;
            do
            {
              v17 = *v15++;
              v16 = v17;
              v23 = 0;
              v18 = [PLThreadStats getThreadName:v17 inProcess:a2 isNamed:&v23];
              if (v18 && (!v7 || [v6 containsObject:v18]))
              {
                v19 = [[PLThreadInfo alloc] initWithThread:v16 inProcess:a2];
                v20 = v19;
                if (v19)
                {
                  [(PLThreadInfo *)v19 setThreadName:v18];
                  [(PLThreadInfo *)v20 setIsNamed:v23];
                  [dictionary setObject:v20 forKeyedSubscript:v18];
                }
              }

              --v14;
            }

            while (v14);
          }

          break;
        }

        v9 += 512;
        v11 = reallocf(v11, v9);
        if (!v11)
        {
          goto LABEL_20;
        }
      }

      free(v11);
LABEL_20:
      v13 = [dictionary copy];
    }

    else
    {
      v13 = dictionary;
    }

    v21 = v13;
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (void)shouldIncludeThread:(void *)a1 withTotalSystemTime:withTotalUserTime:.cold.1(void *a1)
{
  [a1 percentTimeFilter];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_7(&dword_1D8611000, v1, v2, "sys pct %f filter %zu", v3, v4, v5, v6);
}

- (void)shouldIncludeThread:(void *)a1 withTotalSystemTime:withTotalUserTime:.cold.2(void *a1)
{
  [a1 percentTimeFilter];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_7(&dword_1D8611000, v1, v2, "usr pct %f filter %zu", v3, v4, v5, v6);
}

- (void)shouldIncludeThread:(char)a1 withTotalSystemTime:(NSObject *)a2 withTotalUserTime:.cold.3(char a1, NSObject *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = a1 & 1;
  _os_log_debug_impl(&dword_1D8611000, a2, OS_LOG_TYPE_DEBUG, "thread meets pct: %d", v2, 8u);
}

@end