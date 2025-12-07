@interface LKBacktraceLogger
- (BOOL)_copyFrameInformation:(unint64_t)information destination:(unint64_t)destination size:(unint64_t)size;
- (__darwin_arm_thread_state64)_getThreadStateForThread:(SEL)thread;
- (id)_getBacktraceFromThread:(unsigned int)thread;
- (id)_logWithSymbol:(dl_info *)symbol address:(unint64_t)address index:(int)index;
- (id)getBacktraceFromTrackedThread;
- (void)_symbolicateBuffer:(const unint64_t *)buffer symbolsBuffer:(dl_info *)symbolsBuffer count:(int)count;
- (void)trackCurrentThread;
@end

@implementation LKBacktraceLogger

- (void)trackCurrentThread
{
  v3 = MEMORY[0x259C5CE20](self, a2);

  [(LKBacktraceLogger *)self setTrackedThread:v3];
}

- (id)getBacktraceFromTrackedThread
{
  trackedThread = [(LKBacktraceLogger *)self trackedThread];

  return [(LKBacktraceLogger *)self _getBacktraceFromThread:trackedThread];
}

- (id)_getBacktraceFromThread:(unsigned int)thread
{
  v18[15] = *MEMORY[0x277D85DE8];
  v4 = objc_opt_new();
  memset(v15, 0, sizeof(v15));
  objc_msgSend__getThreadStateForThread_(self);
  memcpy(v17, v15, sizeof(v17));
  v5 = [(LKBacktraceLogger *)self _getPCFromThreadState:v17];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    LODWORD(v17[0]) = 134217984;
    *(v17 + 4) = v5;
    _os_log_impl(&dword_25618F000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "program counter: 0x%lx", v17, 0xCu);
  }

  if (v5)
  {
    v18[0] = v5;
    memcpy(v17, v15, sizeof(v17));
    v5 = [(LKBacktraceLogger *)self _getLRFromThreadState:v17];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      [LKBacktraceLogger _getBacktraceFromThread:v5];
      if (!v5)
      {
        goto LABEL_27;
      }
    }

    else if (!v5)
    {
      goto LABEL_27;
    }

    v18[1] = v5;
    memcpy(v17, v15, sizeof(v17));
    v5 = [(LKBacktraceLogger *)self _getFPFromThreadState:v17];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      [LKBacktraceLogger _getBacktraceFromThread:v5];
      if (!v5)
      {
        goto LABEL_27;
      }
    }

    else if (!v5)
    {
      goto LABEL_27;
    }

    v17[0] = 0uLL;
    v6 = [(LKBacktraceLogger *)self _copyFrameInformation:v5 destination:v17 size:16];
    v5 = 0;
    if (v6)
    {
      v7 = *(&v17[0] + 1);
      v8 = 2;
      if (*(&v17[0] + 1) && *&v17[0])
      {
        v9 = 2;
        while (1)
        {
          v18[v9] = v7;
          v16 = 0uLL;
          if (![LKBacktraceLogger _copyFrameInformation:"_copyFrameInformation:destination:size:" destination:? size:?])
          {
            break;
          }

          v8 = v9 + 1;
          v17[0] = v16;
          if (v9 <= 0xD)
          {
            v7 = *(&v17[0] + 1);
            if (*(&v17[0] + 1))
            {
              ++v9;
              if (*&v17[0])
              {
                continue;
              }
            }
          }

          goto LABEL_16;
        }

        v5 = 0;
      }

      else
      {
LABEL_16:
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          LODWORD(v16) = 67109120;
          DWORD1(v16) = v8;
          _os_log_impl(&dword_25618F000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "backtrace's size: %d", &v16, 8u);
        }

        v10 = v8;
        v11 = &v15[-2 * v8];
        bzero(v11, 32 * v8);
        [(LKBacktraceLogger *)self _symbolicateBuffer:v18 symbolsBuffer:v11 count:v8];
        v12 = 0;
        do
        {
          if (v11[2])
          {
            v13 = [(LKBacktraceLogger *)self _logWithSymbol:v11 address:v18[v12] index:v12];
            [v4 addObject:v13];
          }

          ++v12;
          v11 += 4;
        }

        while (v10 != v12);
        v5 = v4;
      }
    }
  }

LABEL_27:

  return v5;
}

- (__darwin_arm_thread_state64)_getThreadStateForThread:(SEL)thread
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
    result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (result)
    {
      [LKBacktraceLogger _getThreadStateForThread:];
    }
  }

  return result;
}

- (BOOL)_copyFrameInformation:(unint64_t)information destination:(unint64_t)destination size:(unint64_t)size
{
  outsize = 0;
  v6 = vm_read_overwrite(*MEMORY[0x277D85F48], information, size, destination, &outsize);
  if (v6 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [LKBacktraceLogger _copyFrameInformation:information destination:? size:?];
  }

  return v6 == 0;
}

- (void)_symbolicateBuffer:(const unint64_t *)buffer symbolsBuffer:(dl_info *)symbolsBuffer count:(int)count
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

- (id)_logWithSymbol:(dl_info *)symbol address:(unint64_t)address index:(int)index
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

  return [MEMORY[0x277CCACA8] stringWithFormat:@"%2d %-30s  0x%08lx %s + %lu", v5, v10, address, symbol->dli_sname, address - symbol->dli_saddr];
}

- (void)_getBacktraceFromThread:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 134217984;
  v2 = a1;
  _os_log_debug_impl(&dword_25618F000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "link register: 0x%lx", &v1, 0xCu);
}

- (void)_getBacktraceFromThread:(uint64_t)a1 .cold.2(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 134217984;
  v2 = a1;
  _os_log_debug_impl(&dword_25618F000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "frame pointer: 0x%lx", &v1, 0xCu);
}

- (void)_copyFrameInformation:(uint64_t)a1 destination:size:.cold.1(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 134217984;
  v2 = a1;
  _os_log_error_impl(&dword_25618F000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to copy frame information from 0x%lx", &v1, 0xCu);
}

@end