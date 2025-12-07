@interface PLBasebandMavLogMessage
- (BOOL)parseData:(id)data;
- (PLBasebandMavLogMessage)initWithData:(id)data;
- (id)stringForUnknownBytes:(unsigned int)bytes;
- (id)tooShortErrorString;
- (void)logWithLogger:(id)logger;
@end

@implementation PLBasebandMavLogMessage

- (PLBasebandMavLogMessage)initWithData:(id)data
{
  v21 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __40__PLBasebandMavLogMessage_initWithData___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v5;
    if (qword_2811F7D30 != -1)
    {
      dispatch_once(&qword_2811F7D30, block);
    }

    if (_MergedGlobals_102 == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBasebandMavLogMessage initWithData:]"];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBasebandMavLogMessage.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBasebandMavLogMessage initWithData:]"];
      [v7 logMessage:v6 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:22];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v20 = v6;
        _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v17.receiver = self;
  v17.super_class = PLBasebandMavLogMessage;
  v12 = [(PLBasebandMessage *)&v17 initWithData:dataCopy];
  v13 = v12;
  if (!v12 || (v12->_header = 0, payload = v12->_payload, v12->_payload = 0, payload, v15 = 0, [(PLBasebandMavLogMessage *)v13 parseData:dataCopy]))
  {
    v15 = v13;
  }

  return v15;
}

void *__40__PLBasebandMavLogMessage_initWithData___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  _MergedGlobals_102 = result;
  return result;
}

- (BOOL)parseData:(id)data
{
  v34 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v24 = 3221225472;
    v25 = __37__PLBasebandMavLogMessage_parseData___block_invoke;
    v26 = &__block_descriptor_40_e5_v8__0lu32l8;
    v27 = v5;
    if (qword_2811F7D38 != -1)
    {
      dispatch_once(&qword_2811F7D38, &block);
    }

    if (byte_2811F7D29 == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBasebandMavLogMessage parseData:]", block, v24, v25, v26, v27];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBasebandMavLogMessage.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBasebandMavLogMessage parseData:]"];
      [v7 logMessage:v6 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:35];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v29 = v6;
        _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  bytes = [dataCopy bytes];
  v13 = &bytes[2 * (*bytes == 129)];
  [(PLBasebandMavLogMessage *)self setHeader:v13];
  v14 = v13 + 13;
  v15 = [(PLBasebandMavLogMessage *)self header][1];
  v16 = v15 - 12;
  if (v15 >= 0xD && (v17 = &v14[v16 - [dataCopy bytes]], v17 <= objc_msgSend(dataCopy, "length")))
  {
    v18 = [MEMORY[0x277CBEA90] dataWithBytes:v14 length:v16];
    [(PLBasebandMavLogMessage *)self setPayload:v18];
    v19 = 1;
  }

  else
  {
    v18 = PLLogCommon();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v21 = &v14[v16 - [dataCopy bytes]];
      v22 = [dataCopy length];
      *buf = 134218498;
      v29 = v21;
      v30 = 2048;
      v31 = v22;
      v32 = 2080;
      v33 = "[PLBasebandMavLogMessage parseData:]";
      _os_log_error_impl(&dword_21A4C6000, v18, OS_LOG_TYPE_ERROR, "Expected data length %lu but got %lu in %s", buf, 0x20u);
    }

    v19 = 0;
  }

  return v19;
}

void *__37__PLBasebandMavLogMessage_parseData___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7D29 = result;
  return result;
}

- (void)logWithLogger:(id)logger
{
  v16 = *MEMORY[0x277D85DE8];
  loggerCopy = logger;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __41__PLBasebandMavLogMessage_logWithLogger___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v5;
    if (qword_2811F7D40 != -1)
    {
      dispatch_once(&qword_2811F7D40, block);
    }

    if (byte_2811F7D2A == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBasebandMavLogMessage logWithLogger:]"];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBasebandMavLogMessage.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBasebandMavLogMessage logWithLogger:]"];
      [v7 logMessage:v6 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:67];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v15 = v6;
        _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v12.receiver = self;
  v12.super_class = PLBasebandMavLogMessage;
  [(PLBasebandMessage *)&v12 logWithLogger:loggerCopy];
  [(PLBasebandMavLogMessage *)self header];
}

void *__41__PLBasebandMavLogMessage_logWithLogger___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7D2A = result;
  return result;
}

- (id)stringForUnknownBytes:(unsigned int)bytes
{
  v3 = *&bytes;
  v16 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v4 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __49__PLBasebandMavLogMessage_stringForUnknownBytes___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v4;
    if (qword_2811F7D48 != -1)
    {
      dispatch_once(&qword_2811F7D48, block);
    }

    if (byte_2811F7D2B == 1)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBasebandMavLogMessage stringForUnknownBytes:]"];
      v6 = MEMORY[0x277D3F178];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBasebandMavLogMessage.m"];
      lastPathComponent = [v7 lastPathComponent];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBasebandMavLogMessage stringForUnknownBytes:]"];
      [v6 logMessage:v5 fromFile:lastPathComponent fromFunction:v9 fromLineNumber:120];

      v10 = PLLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v15 = v5;
        _os_log_debug_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"?-(0x%x/%u)", v3, v3];

  return v11;
}

void *__49__PLBasebandMavLogMessage_stringForUnknownBytes___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7D2B = result;
  return result;
}

- (id)tooShortErrorString
{
  v19 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __46__PLBasebandMavLogMessage_tooShortErrorString__block_invoke;
    v15 = &__block_descriptor_40_e5_v8__0lu32l8;
    v16 = v3;
    if (qword_2811F7D50 != -1)
    {
      dispatch_once(&qword_2811F7D50, &block);
    }

    if (byte_2811F7D2C == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBasebandMavLogMessage tooShortErrorString]", block, v13, v14, v15, v16];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBasebandMavLogMessage.m"];
      lastPathComponent = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBasebandMavLogMessage tooShortErrorString]"];
      [v5 logMessage:v4 fromFile:lastPathComponent fromFunction:v8 fromLineNumber:125];

      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v18 = v4;
        _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"short_length!(%d)", -[PLBasebandMavLogMessage header](self, "header")[1]];

  return v10;
}

void *__46__PLBasebandMavLogMessage_tooShortErrorString__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7D2C = result;
  return result;
}

@end