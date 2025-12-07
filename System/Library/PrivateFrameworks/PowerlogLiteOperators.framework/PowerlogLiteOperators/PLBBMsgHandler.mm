@interface PLBBMsgHandler
+ (id)getMsgHandler;
- (PLBBMsgHandler)init;
- (id)decodeMsgHeader;
- (void)handleMsg:(id)msg forAgent:(id)agent;
- (void)registerWithHandlerAs:(id)as forType:(unint64_t)type;
@end

@implementation PLBBMsgHandler

- (PLBBMsgHandler)init
{
  v18 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __22__PLBBMsgHandler_init__block_invoke;
    v14 = &__block_descriptor_40_e5_v8__0lu32l8;
    v15 = v3;
    if (qword_2811F7D70 != -1)
    {
      dispatch_once(&qword_2811F7D70, &block);
    }

    if (_MergedGlobals_103 == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMsgHandler init]", block, v12, v13, v14, v15];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMsgHandler.m"];
      lastPathComponent = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMsgHandler init]"];
      [v5 logMessage:v4 fromFile:lastPathComponent fromFunction:v8 fromLineNumber:53];

      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v17 = v4;
        _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  return 0;
}

void *__22__PLBBMsgHandler_init__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  _MergedGlobals_103 = result;
  return result;
}

+ (id)getMsgHandler
{
  v22 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v2 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __31__PLBBMsgHandler_getMsgHandler__block_invoke;
    v18 = &__block_descriptor_40_e5_v8__0lu32l8;
    v19 = v2;
    if (qword_2811F7D78 != -1)
    {
      dispatch_once(&qword_2811F7D78, &block);
    }

    if (byte_2811F7D59 == 1)
    {
      v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "+[PLBBMsgHandler getMsgHandler]", block, v16, v17, v18, v19];
      v4 = MEMORY[0x277D3F178];
      v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMsgHandler.m"];
      lastPathComponent = [v5 lastPathComponent];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[PLBBMsgHandler getMsgHandler]"];
      [v4 logMessage:v3 fromFile:lastPathComponent fromFunction:v7 fromLineNumber:59];

      v8 = PLLogCommon();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v21 = v3;
        _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v9 = qword_2811F7D60;
  if (!qword_2811F7D60)
  {
    v10 = objc_alloc_init(PLBBMsgHandler);
    v11 = qword_2811F7D60;
    qword_2811F7D60 = v10;

    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v13 = qword_2811F7D68;
    qword_2811F7D68 = v12;

    v9 = qword_2811F7D60;
  }

  return v9;
}

void *__31__PLBBMsgHandler_getMsgHandler__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7D59 = result;
  return result;
}

- (void)registerWithHandlerAs:(id)as forType:(unint64_t)type
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277D3F180];
  asCopy = as;
  if ([v5 debugEnabled])
  {
    v7 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __48__PLBBMsgHandler_registerWithHandlerAs_forType___block_invoke;
    v19 = &__block_descriptor_40_e5_v8__0lu32l8;
    v20 = v7;
    if (qword_2811F7D80 != -1)
    {
      dispatch_once(&qword_2811F7D80, &block);
    }

    if (byte_2811F7D5A == 1)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMsgHandler registerWithHandlerAs:forType:]", block, v17, v18, v19, v20];
      v9 = MEMORY[0x277D3F178];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMsgHandler.m"];
      lastPathComponent = [v10 lastPathComponent];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMsgHandler registerWithHandlerAs:forType:]"];
      [v9 logMessage:v8 fromFile:lastPathComponent fromFunction:v12 fromLineNumber:86];

      v13 = PLLogCommon();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v22 = v8;
        _os_log_debug_impl(&dword_21A4C6000, v13, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v14 = qword_2811F7D68;
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
  [v14 setObject:asCopy forKey:v15];
}

void *__48__PLBBMsgHandler_registerWithHandlerAs_forType___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7D5A = result;
  return result;
}

- (void)handleMsg:(id)msg forAgent:(id)agent
{
  v22 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __37__PLBBMsgHandler_handleMsg_forAgent___block_invoke;
    v18 = &__block_descriptor_40_e5_v8__0lu32l8;
    v19 = v5;
    if (qword_2811F7D88 != -1)
    {
      dispatch_once(&qword_2811F7D88, &block);
    }

    if (byte_2811F7D5B == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMsgHandler handleMsg:forAgent:]", block, v16, v17, v18, v19];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMsgHandler.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMsgHandler handleMsg:forAgent:]"];
      [v7 logMessage:v6 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:95];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v21 = v6;
        _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  decodeMsgHeader = [(PLBBMsgHandler *)self decodeMsgHeader];
  unsignedCharValue = [decodeMsgHeader unsignedCharValue];

  switch(unsignedCharValue)
  {
    case 1:
      v14 = &unk_282C11A30;
      break;
    case 2:
      v14 = &unk_282C11A00;
      break;
    case 4:
      v14 = &unk_282C11A18;
      break;
    default:
      return;
  }

  [qword_2811F7D68 objectForKey:v14];
}

void *__37__PLBBMsgHandler_handleMsg_forAgent___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7D5B = result;
  return result;
}

- (id)decodeMsgHeader
{
  v17 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v2 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __33__PLBBMsgHandler_decodeMsgHeader__block_invoke;
    v13 = &__block_descriptor_40_e5_v8__0lu32l8;
    v14 = v2;
    if (qword_2811F7D90 != -1)
    {
      dispatch_once(&qword_2811F7D90, &block);
    }

    if (byte_2811F7D5C == 1)
    {
      v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMsgHandler decodeMsgHeader]", block, v11, v12, v13, v14];
      v4 = MEMORY[0x277D3F178];
      v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMsgHandler.m"];
      lastPathComponent = [v5 lastPathComponent];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMsgHandler decodeMsgHeader]"];
      [v4 logMessage:v3 fromFile:lastPathComponent fromFunction:v7 fromLineNumber:130];

      v8 = PLLogCommon();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v16 = v3;
        _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  return &unk_282C11A48;
}

void *__33__PLBBMsgHandler_decodeMsgHeader__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7D5C = result;
  return result;
}

@end