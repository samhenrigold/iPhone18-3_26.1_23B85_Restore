@interface PLFSEventAgent
+ (id)entryEventIntervalDefinitions;
+ (void)load;
- (PLFSEventAgent)init;
- (void)addLogFileNameEntry:(BOOL)entry withType:(id)type withName:(id)name;
- (void)dealloc;
- (void)initOperatorDependancies;
- (void)logLogFileName:(id)name withName:(id)withName;
- (void)registerforFSEventNotification;
- (void)startMonitoring;
- (void)stopMonitoring;
@end

@implementation PLFSEventAgent

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___PLFSEventAgent;
  objc_msgSendSuper2(&v2, sel_load);
}

+ (id)entryEventIntervalDefinitions
{
  v21[1] = *MEMORY[0x277D85DE8];
  v20 = @"LogFile";
  v18[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v16[0] = *MEMORY[0x277D3F568];
  v16[1] = v2;
  v17[0] = &unk_282C1C4A8;
  v17[1] = MEMORY[0x277CBEC28];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
  v19[0] = v3;
  v18[1] = *MEMORY[0x277D3F540];
  v14[0] = @"timestampEnd";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat = [mEMORY[0x277D3F198] commonTypeDict_DateFormat];
  v15[0] = commonTypeDict_DateFormat;
  v14[1] = @"FileType";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat];
  v15[1] = commonTypeDict_StringFormat;
  v14[2] = @"FilePath";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat2 = [mEMORY[0x277D3F198]3 commonTypeDict_StringFormat];
  v15[2] = commonTypeDict_StringFormat2;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];
  v19[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];
  v21[0] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];

  return v12;
}

- (PLFSEventAgent)init
{
  if ([MEMORY[0x277D3F208] isHomePod])
  {
    selfCopy = 0;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = PLFSEventAgent;
    self = [(PLAgent *)&v5 init];
    selfCopy = self;
  }

  return selfCopy;
}

- (void)dealloc
{
  [(PLFSEventAgent *)self stopMonitoring];
  stream = self->_stream;
  if (stream)
  {
    CFRelease(stream);
  }

  v4.receiver = self;
  v4.super_class = PLFSEventAgent;
  [(PLAgent *)&v4 dealloc];
}

- (void)stopMonitoring
{
  v8 = *MEMORY[0x277D85DE8];
  FSEventStreamStop(self->_stream);
  stream = self->_stream;
  Current = CFRunLoopGetCurrent();
  FSEventStreamUnscheduleFromRunLoop(stream, Current, *MEMORY[0x277CBF058]);
  v5 = PLLogFSEvent();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = 138412290;
    v7 = &unk_282C14BB0;
    _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "Stopped monitoring paths %@", &v6, 0xCu);
  }
}

- (void)startMonitoring
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__PLFSEventAgent_startMonitoring__block_invoke;
  block[3] = &unk_2782591D0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __33__PLFSEventAgent_startMonitoring__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = PLLogFSEvent();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v6 = 138412290;
    v7 = &unk_282C14BC8;
    _os_log_debug_impl(&dword_21A4C6000, v2, OS_LOG_TYPE_DEBUG, "StartMonitoring paths: %@", &v6, 0xCu);
  }

  if ([*(a1 + 32) stream])
  {
    v3 = [*(a1 + 32) stream];
    Current = CFRunLoopGetCurrent();
    FSEventStreamScheduleWithRunLoop(v3, Current, *MEMORY[0x277CBF058]);
    if (!FSEventStreamStart([*(a1 + 32) stream]))
    {
      v5 = PLLogFSEvent();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v6) = 0;
        _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "Failed to start monitoring fsevents.", &v6, 2u);
      }
    }
  }
}

- (void)registerforFSEventNotification
{
  context.version = 0;
  context.info = self;
  context.retain = MEMORY[0x277CBE558];
  context.release = MEMORY[0x277CBE550];
  context.copyDescription = MEMORY[0x277CBE530];
  v3 = FSEventStreamCreate(*MEMORY[0x277CBECE8], fsEventsHandler, &context, &unk_282C14BE0, 0xFFFFFFFFFFFFFFFFLL, 1.0, 0x11u);
  self->_stream = v3;
  if (v3)
  {
    v4 = dispatch_get_global_queue(2, 0);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __48__PLFSEventAgent_registerforFSEventNotification__block_invoke;
    v5[3] = &unk_2782591D0;
    v5[4] = self;
    dispatch_sync(v4, v5);
  }
}

- (void)initOperatorDependancies
{
  v3 = objc_alloc(MEMORY[0x277D3F278]);
  v4 = dispatch_get_global_queue(-32768, 0);
  v5 = [v3 initWithWorkQueue:v4 withRegistration:&unk_282C18490 withBlock:&__block_literal_global_49];
  [(PLFSEventAgent *)self setFileListResponder:v5];

  [(PLFSEventAgent *)self registerforFSEventNotification];
}

id __42__PLFSEventAgent_initOperatorDependancies__block_invoke(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void *a5)
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = MEMORY[0x277CCACA8];
  v8 = a5;
  v9 = [v7 stringWithFormat:@"Received log files request from %d, %@", a2, a3];
  v10 = MEMORY[0x277D3F178];
  v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLFSEventAgent.m"];
  v12 = [v11 lastPathComponent];
  v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLFSEventAgent initOperatorDependancies]_block_invoke"];
  [v10 logMessage:v9 fromFile:v12 fromFunction:v13 fromLineNumber:177];

  v14 = PLLogCommon();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = v9;
    _os_log_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  v15 = [MEMORY[0x277D3F238] sharedInstance];
  v16 = [v15 generateMSSSubmissionWithPayload:v8];

  return v16;
}

- (void)addLogFileNameEntry:(BOOL)entry withType:(id)type withName:(id)name
{
  entryCopy = entry;
  v8 = *MEMORY[0x277D3F5D8];
  nameCopy = name;
  typeCopy = type;
  v15 = [(PLOperator *)PLFSEventAgent entryKeyForType:v8 andName:@"LogFile"];
  v11 = objc_alloc(MEMORY[0x277D3F190]);
  if (entryCopy)
  {
    v12 = [v11 initWithEntryKey:v15];
    [v12 setObject:0 forKeyedSubscript:@"timestampEnd"];
  }

  else
  {
    v13 = [v11 initWithEntryKey:v15 withDate:0];
    monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
    [v13 setObject:monotonicDate forKeyedSubscript:@"timestampEnd"];

    v12 = 0;
  }

  [v12 setObject:typeCopy forKeyedSubscript:@"FileType"];

  [v12 setObject:nameCopy forKeyedSubscript:@"FilePath"];
  [(PLOperator *)self logEntry:v12];
}

- (void)logLogFileName:(id)name withName:(id)withName
{
  v46 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  withNameCopy = withName;
  v8 = withNameCopy;
  if (nameCopy && withNameCopy)
  {
    v9 = PLLogFSEvent();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v43 = nameCopy;
      v44 = 2112;
      v45 = v8;
      _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "logLogFileName(%@, %@)\n", buf, 0x16u);
    }

    v10 = [v8 componentsSeparatedByString:@"."];
    if ([v10 count] == 4)
    {
      v11 = [v10 objectAtIndexedSubscript:2];
      v12 = [v11 isEqualToString:@"XXXXXX"];
    }

    else
    {
      v12 = 0;
    }

    v13 = [(PLOperator *)PLFSEventAgent entryKeyForType:*MEMORY[0x277D3F5D8] andName:@"LogFile"];
    nameCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@=%@", @"FileType", nameCopy];
    v15 = objc_msgSend_storage(self);
    v41 = nameCopy;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v41 count:1];
    v17 = [v15 lastEntryForKey:v13 withFilters:v16];

    if (!v17)
    {
      [(PLFSEventAgent *)self addLogFileNameEntry:v12 withType:nameCopy withName:v8];
      v19 = v10;
LABEL_22:

      goto LABEL_23;
    }

    v18 = [v17 objectForKeyedSubscript:@"FilePath"];
    v19 = [v18 componentsSeparatedByString:@"."];

    v33 = v13;
    if ([v19 count] == 4)
    {
      v20 = [v19 objectAtIndexedSubscript:2];
      v21 = [v20 isEqualToString:@"XXXXXX"];
    }

    else
    {
      v21 = 0;
    }

    monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
    if (v21)
    {
      if (v12)
      {
        v23 = [v17 objectForKeyedSubscript:@"FilePath"];
        v24 = [v8 isEqualToString:v23];

        if (v24)
        {
          v38[0] = MEMORY[0x277D85DD0];
          v38[1] = 3221225472;
          v38[2] = __42__PLFSEventAgent_logLogFileName_withName___block_invoke;
          v38[3] = &unk_278259658;
          v25 = &v39;
          v26 = v17;
          v27 = &v40;
          v39 = v26;
          v40 = monotonicDate;
          v28 = monotonicDate;
          [(PLOperator *)self updateEntry:v26 withBlock:v38];
LABEL_19:

LABEL_21:
          v13 = v33;
          goto LABEL_22;
        }
      }

      else
      {
        entryDate = [v17 entryDate];
        v30 = [monotonicDate compare:entryDate];

        if (v30 == 1)
        {
          v34[0] = MEMORY[0x277D85DD0];
          v34[1] = 3221225472;
          v34[2] = __42__PLFSEventAgent_logLogFileName_withName___block_invoke_2;
          v34[3] = &unk_27825D6E8;
          v25 = &v35;
          v31 = v17;
          v27 = &v36;
          v35 = v31;
          v36 = monotonicDate;
          v37 = v8;
          v32 = monotonicDate;
          [(PLOperator *)self updateEntry:v31 withBlock:v34];

          goto LABEL_19;
        }
      }
    }

    [(PLFSEventAgent *)self addLogFileNameEntry:v12 withType:nameCopy withName:v8];
    goto LABEL_21;
  }

LABEL_23:
}

uint64_t __42__PLFSEventAgent_logLogFileName_withName___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setObject:*(a1 + 40) forKeyedSubscript:@"timestampEnd"];
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);

  return [v3 setObject:v2 forKeyedSubscript:@"FilePath"];
}

@end