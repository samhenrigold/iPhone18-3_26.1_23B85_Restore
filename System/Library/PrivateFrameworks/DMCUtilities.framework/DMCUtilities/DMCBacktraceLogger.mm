@interface DMCBacktraceLogger
+ (BOOL)_copyFrameInformation:(unint64_t)information destination:(unint64_t)destination size:(unint64_t)size;
+ (BOOL)dumpStackshotToPath:(id)path fileName:(id)name;
+ (__darwin_arm_thread_state64)_getThreadStateForThread:(SEL)thread;
+ (id)_getBacktraceFromThread:(unsigned int)thread bufferSize:(int)size;
+ (id)_logWithSymbol:(dl_info *)symbol address:(unint64_t)address index:(int)index;
+ (id)callerOfCurrentMethod;
+ (void)_symbolicateBuffer:(const unint64_t *)buffer symbolsBuffer:(dl_info *)symbolsBuffer count:(int)count;
- (id)getBacktraceFromTrackedThread;
- (void)trackCurrentThread;
@end

@implementation DMCBacktraceLogger

+ (id)callerOfCurrentMethod
{
  callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
  if ([callStackSymbols count] >= 3)
  {
    v4 = [callStackSymbols objectAtIndexedSubscript:2];
    v3 = [v4 dmc_substringWithPattern:@".*0x[a-f0-9]*\\s(.*)\\s\\+.*"];
  }

  else
  {
    v3 = @"Unknown";
  }

  return v3;
}

+ (BOOL)dumpStackshotToPath:(id)path fileName:(id)name
{
  v51 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  nameCopy = name;
  v8 = MEMORY[0x1E696AEC0];
  callerOfCurrentMethod = [self callerOfCurrentMethod];
  v10 = [v8 stringWithFormat:@"Requested by: %@", callerOfCurrentMethod];
  v11 = WriteStackshotReport();

  if (v11)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v47 = 0;
    v13 = [defaultManager contentsOfDirectoryAtPath:@"/private/var/mobile/Library/Logs/CrashReporter" error:&v47];
    v14 = v47;
    v16 = v14;
    v17 = v14 == 0;
    if (v14)
    {
      v18 = *DMCLogObjects(v14, v15);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v50 = v16;
        _os_log_impl(&dword_1B1630000, v18, OS_LOG_TYPE_ERROR, "Failed to grab all files under crash report folder: %{public}@", buf, 0xCu);
      }

      goto LABEL_24;
    }

    v42 = objc_opt_new();
    [v42 setDateFormat:@"yyyy-MM-dd-HHmmss"];
    v19 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:0.0];
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    obj = v13;
    v20 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
    if (v20)
    {
      v21 = v20;
      v37 = v13;
      v38 = v17;
      v39 = defaultManager;
      v40 = pathCopy;
      v22 = 0;
      v23 = *v44;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v44 != v23)
          {
            objc_enumerationMutation(obj);
          }

          v25 = *(*(&v43 + 1) + 8 * i);
          v26 = [v25 dmc_substringWithPattern:@"stacks-([0-9-]*).*ips"];
          v27 = [v42 dateFromString:v26];
          v28 = [v19 laterDate:v27];

          if (v28 != v19)
          {
            v29 = v27;

            v30 = v25;
            v19 = v29;
            v22 = v30;
          }
        }

        v21 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
      }

      while (v21);

      if (!v22)
      {
        pathCopy = v40;
        defaultManager = v39;
        v17 = v38;
        v16 = 0;
        v13 = v37;
        goto LABEL_23;
      }

      defaultManager = v39;
      pathCopy = v40;
      v16 = 0;
      if (([v39 fileExistsAtPath:v40 isDirectory:0] & 1) == 0)
      {
        [v39 createDirectoryAtPath:v40 withIntermediateDirectories:1 attributes:0 error:0];
      }

      v31 = [v40 stringByAppendingPathComponent:nameCopy];
      v32 = [@"/private/var/mobile/Library/Logs/CrashReporter" stringByAppendingPathComponent:v22];
      DMCSafelyCopyItemAtPathToDestinationPathFM(v39, v32, v31, 0);

      v35 = *DMCLogObjects(v33, v34);
      v17 = v38;
      v13 = v37;
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v50 = v31;
        _os_log_impl(&dword_1B1630000, v35, OS_LOG_TYPE_DEFAULT, "DMCBacktraceLogger: stackshot collected. Location: %{public}@", buf, 0xCu);
      }
    }

    else
    {
      v22 = 0;
      v31 = obj;
    }

LABEL_23:
LABEL_24:

    goto LABEL_25;
  }

  v17 = 0;
LABEL_25:

  return v17;
}

- (void)trackCurrentThread
{
  v3 = MEMORY[0x1B2731710](self, a2);

  [(DMCBacktraceLogger *)self setTrackedThread:v3];
}

- (id)getBacktraceFromTrackedThread
{
  trackedThread = [(DMCBacktraceLogger *)self trackedThread];

  return [DMCBacktraceLogger _getBacktraceFromThread:trackedThread bufferSize:15];
}

+ (id)_getBacktraceFromThread:(unsigned int)thread bufferSize:(int)size
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = &v24[-((8 * size + 15) & 0xFFFFFFFF0) - 16];
  v7 = objc_opt_new();
  memset(v24, 0, sizeof(v24));
  objc_msgSend__getThreadStateForThread_(self);
  memcpy(v25, v24, sizeof(v25));
  v8 = [self _getPCFromThreadState:v25];
  v10 = *DMCLogObjects(v8, v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    LODWORD(v25[0]) = 134217984;
    *(v25 + 4) = v8;
    _os_log_impl(&dword_1B1630000, v10, OS_LOG_TYPE_INFO, "program counter: 0x%lx", v25, 0xCu);
  }

  if (v8)
  {
    *v6 = v8;
    memcpy(v25, v24, sizeof(v25));
    v8 = [self _getLRFromThreadState:v25];
    v12 = *DMCLogObjects(v8, v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      LODWORD(v25[0]) = 134217984;
      *(v25 + 4) = v8;
      _os_log_impl(&dword_1B1630000, v12, OS_LOG_TYPE_INFO, "link register: 0x%lx", v25, 0xCu);
    }

    if (v8)
    {
      v6[1] = v8;
      memcpy(v25, v24, sizeof(v25));
      v8 = [self _getFPFromThreadState:v25];
      v14 = *DMCLogObjects(v8, v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        LODWORD(v25[0]) = 134217984;
        *(v25 + 4) = v8;
        _os_log_impl(&dword_1B1630000, v14, OS_LOG_TYPE_INFO, "frame pointer: 0x%lx", v25, 0xCu);
      }

      if (v8)
      {
        v25[0] = 0uLL;
        v15 = [self _copyFrameInformation:v8 destination:v25 size:16];
        v8 = 0;
        if (v15)
        {
          v16 = 2;
          if (size >= 3 && (v17 = *(&v25[0] + 1)) != 0 && *&v25[0])
          {
            v16 = 2;
            while (1)
            {
              v6[v16] = v17;
              if (![self _copyFrameInformation:0 destination:0 size:?])
              {
                break;
              }

              ++v16;
              v25[0] = v23;
              if (v16 < size)
              {
                v17 = *(&v25[0] + 1);
                if (*(&v25[0] + 1))
                {
                  if (*&v25[0])
                  {
                    continue;
                  }
                }
              }

              goto LABEL_19;
            }

            v8 = 0;
          }

          else
          {
LABEL_19:
            v18 = v16;
            v19 = &v24[-32 * v16 - 16];
            bzero(v19, 32 * v16);
            [self _symbolicateBuffer:v6 symbolsBuffer:v19 count:v16];
            v20 = 0;
            do
            {
              if (v19[2])
              {
                v21 = [self _logWithSymbol:v19 address:v6[v20] index:v20];
                [v7 addObject:v21];
              }

              ++v20;
              v19 += 4;
            }

            while (v18 != v20);
            v8 = v7;
          }
        }
      }
    }
  }

  return v8;
}

+ (__darwin_arm_thread_state64)_getThreadStateForThread:(SEL)thread
{
  *&retstr->__lr = 0u;
  *&retstr->__pc = 0u;
  *&retstr->__x[26] = 0u;
  *&retstr->__x[28] = 0u;
  *&retstr->__x[22] = 0u;
  *&retstr->__x[24] = 0u;
  *&retstr->__x[18] = 0u;
  *&retstr->__x[20] = 0u;
  *&retstr->__x[14] = 0u;
  *&retstr->__x[16] = 0u;
  *&retstr->__x[10] = 0u;
  *&retstr->__x[12] = 0u;
  *&retstr->__x[6] = 0u;
  *&retstr->__x[8] = 0u;
  *&retstr->__x[2] = 0u;
  *&retstr->__x[4] = 0u;
  *retstr->__x = 0u;
  old_stateCnt = 68;
  result = thread_get_state(a4, 6, retstr, &old_stateCnt);
  if (result)
  {
    v6 = *DMCLogObjects(result, v5);
    result = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
    if (result)
    {
      *v7 = 0;
      _os_log_impl(&dword_1B1630000, v6, OS_LOG_TYPE_ERROR, "Failed to get thread state", v7, 2u);
    }
  }

  return result;
}

+ (BOOL)_copyFrameInformation:(unint64_t)information destination:(unint64_t)destination size:(unint64_t)size
{
  v16 = *MEMORY[0x1E69E9840];
  outsize = 0;
  v6 = vm_read_overwrite(*MEMORY[0x1E69E9A60], information, size, destination, &outsize);
  v8 = v6;
  if (v6)
  {
    v9 = *DMCLogObjects(v6, v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      informationCopy = information;
      v14 = 1024;
      v15 = v8;
      _os_log_impl(&dword_1B1630000, v9, OS_LOG_TYPE_ERROR, "Failed to copy frame information from 0x%lx, result: %d", buf, 0x12u);
    }
  }

  return v8 == 0;
}

+ (void)_symbolicateBuffer:(const unint64_t *)buffer symbolsBuffer:(dl_info *)symbolsBuffer count:(int)count
{
  if (count >= 1)
  {
    v7 = 0;
    v8 = 8 * count;
    symbolsBufferCopy = symbolsBuffer;
    do
    {
      if (v7)
      {
        v10 = ((buffer[v7 / 8] & 0xFFFFFFFFFFFFFFFCLL) - 1);
        symbolsBufferCopy2 = symbolsBufferCopy;
      }

      else
      {
        v10 = *buffer;
        symbolsBufferCopy2 = symbolsBuffer;
      }

      dladdr(v10, symbolsBufferCopy2);
      v7 += 8;
      ++symbolsBufferCopy;
    }

    while (v8 != v7);
  }
}

+ (id)_logWithSymbol:(dl_info *)symbol address:(unint64_t)address index:(int)index
{
  v5 = *&index;
  dli_fname = symbol->dli_fname;
  if (symbol->dli_fname)
  {
    v9 = strrchr(symbol->dli_fname, 47);
    if (v9)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = dli_fname;
    }
  }

  else
  {
    v10 = 0;
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%2d %-30s  0x%08lx %s + %lu", v5, v10, address, symbol->dli_sname, address - symbol->dli_saddr];
}

@end