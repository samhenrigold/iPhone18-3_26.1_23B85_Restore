@interface TCPDumpProbe
- (BOOL)startNetDiagnosticsTask:(id)task;
- (BOOL)stopNetDiagnosticsTask:(id)task;
- (TCPDumpProbe)initWithQueue:(id)queue;
- (id)probeOutputFilePaths;
- (void)startTCPDumpWithDuration:(double)duration destinationPath:(id)path tcpDumpStarted:(id)started tcpDumpCompleted:(id)completed;
@end

@implementation TCPDumpProbe

- (TCPDumpProbe)initWithQueue:(id)queue
{
  v6.receiver = self;
  v6.super_class = TCPDumpProbe;
  v3 = [(TestProbe *)&v6 initWithQueue:queue];
  if (v3)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:kNetDiagTaskSymptomsPcap[0]];
    [(NetDiagnosticProbe *)v3 setTaskName:v4];

    [(TCPDumpProbe *)v3 setDuration:30.0];
  }

  return v3;
}

- (void)startTCPDumpWithDuration:(double)duration destinationPath:(id)path tcpDumpStarted:(id)started tcpDumpCompleted:(id)completed
{
  v27 = *MEMORY[0x277D85DE8];
  startedCopy = started;
  completedCopy = completed;
  pathCopy = path;
  v13 = symptomsLogHandle(pathCopy);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    durationCopy = duration;
    _os_log_impl(&dword_241804000, v13, OS_LOG_TYPE_DEFAULT, "TCPDumpProbe startTCPDumpWithDuration - duration (%f)", buf, 0xCu);
  }

  [(TCPDumpProbe *)self setDuration:duration];
  [(TCPDumpProbe *)self setDestinationPath:pathCopy];

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __89__TCPDumpProbe_startTCPDumpWithDuration_destinationPath_tcpDumpStarted_tcpDumpCompleted___block_invoke;
  aBlock[3] = &unk_278CF05C0;
  aBlock[4] = self;
  v23 = completedCopy;
  v14 = startedCopy;
  v24 = v14;
  v15 = completedCopy;
  v16 = _Block_copy(aBlock);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __89__TCPDumpProbe_startTCPDumpWithDuration_destinationPath_tcpDumpStarted_tcpDumpCompleted___block_invoke_193;
  v19[3] = &unk_278CF05E8;
  v19[4] = self;
  v20 = v14;
  v17 = v16;
  v21 = v17;
  v18 = v14;
  if (![(NetDiagnosticProbe *)self netDiagnosticsTaskInProgress:v19])
  {
    v17[2](v17);
  }
}

void __89__TCPDumpProbe_startTCPDumpWithDuration_destinationPath_tcpDumpStarted_tcpDumpCompleted___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __89__TCPDumpProbe_startTCPDumpWithDuration_destinationPath_tcpDumpStarted_tcpDumpCompleted___block_invoke_2;
  v7[3] = &unk_278CF0598;
  v7[4] = v2;
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v3 = [v2 startNetDiagnosticsTask:v7];
  if ((v3 & 1) == 0)
  {
    v4 = symptomsLogHandle(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_241804000, v4, OS_LOG_TYPE_DEFAULT, "Could not even start the TCP Dump", v6, 2u);
    }

    v5 = *(a1 + 48);
    if (v5)
    {
      (*(v5 + 16))(v5, 3);
    }
  }
}

uint64_t __89__TCPDumpProbe_startTCPDumpWithDuration_destinationPath_tcpDumpStarted_tcpDumpCompleted___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = symptomsLogHandle(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [TestProbe testProbeStatusString:a2];
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&dword_241804000, v4, OS_LOG_TYPE_INFO, "startTCPDumpWithDuration Status Update %@", &v8, 0xCu);
  }

  if ((a2 - 3) > 2)
  {
    v6 = *(a1 + 40);
    if (v6)
    {
      *(*(a1 + 32) + 96) = _Block_copy(v6);
    }
  }

  else
  {
    [*(a1 + 32) removeProbeOutputFiles];
  }

  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, a2);
  }

  return result;
}

void *__89__TCPDumpProbe_startTCPDumpWithDuration_destinationPath_tcpDumpStarted_tcpDumpCompleted___block_invoke_193(void *result, int a2)
{
  if ((a2 + 1) <= 6)
  {
    v2 = result;
    if (((1 << (a2 + 1)) & 0x1B) != 0)
    {
      v3 = *(result[6] + 16);

      return v3();
    }

    else if (a2 == 1)
    {
      v5 = symptomsLogHandle(result);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        _os_log_impl(&dword_241804000, v5, OS_LOG_TYPE_DEFAULT, "A TCP Dump is already in progress. We cannot stop it.", v7, 2u);
      }

      v6 = v2[5];
      if (v6)
      {
        (*(v6 + 16))(v6, 3);
      }

      return [v2[4] disconnectFromNetDiagnostics];
    }

    else if (a2 == 5)
    {
      v4 = result[4];

      return [v4 disconnectFromNetDiagnostics];
    }
  }

  return result;
}

- (BOOL)startNetDiagnosticsTask:(id)task
{
  v20 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  setUpDefaultTaskDictionary = [(NetDiagnosticProbe *)self setUpDefaultTaskDictionary];
  v15.receiver = self;
  v15.super_class = TCPDumpProbe;
  [(NetDiagnosticProbe *)&v15 startNetDiagnosticsTask:taskCopy];

  duration = self->_duration;
  if (duration < 5.0 || duration > 900.0)
  {
    v8 = symptomsLogHandle(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = self->_duration;
      *buf = 134218240;
      v17 = v9;
      v18 = 2048;
      v19 = 0x403E000000000000;
      _os_log_impl(&dword_241804000, v8, OS_LOG_TYPE_ERROR, "Unsupported TCP dump duration (%f) request. Resetting to %f", buf, 0x16u);
    }

    self->_duration = 30.0;
  }

  queue = [(TestProbe *)self queue];
  v11 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, queue);

  v12 = dispatch_time(0, (self->_duration * 1000000000.0));
  dispatch_source_set_timer(v11, v12, 0xFFFFFFFFFFFFFFFFLL, 0);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __40__TCPDumpProbe_startNetDiagnosticsTask___block_invoke;
  handler[3] = &unk_278CEFE88;
  handler[4] = self;
  dispatch_source_set_event_handler(v11, handler);
  [(TCPDumpProbe *)self setTcpDumpTimer:v11];
  dispatch_resume(v11);

  return 1;
}

uint64_t __40__TCPDumpProbe_startNetDiagnosticsTask___block_invoke(uint64_t a1)
{
  v2 = symptomsLogHandle(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_241804000, v2, OS_LOG_TYPE_DEFAULT, "TCP Dump Duration completed", v4, 2u);
  }

  return [*(a1 + 32) stopNetDiagnosticsTask:0];
}

- (BOOL)stopNetDiagnosticsTask:(id)task
{
  taskCopy = task;
  v5 = symptomsLogHandle(taskCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241804000, v5, OS_LOG_TYPE_DEFAULT, "TCPDumpProbe stopNetDiagnosticsTask", buf, 2u);
  }

  tcpDumpTimer = [(TCPDumpProbe *)self tcpDumpTimer];

  if (tcpDumpTimer)
  {
    tcpDumpTimer2 = [(TCPDumpProbe *)self tcpDumpTimer];
    dispatch_source_cancel(tcpDumpTimer2);

    [(TCPDumpProbe *)self setTcpDumpTimer:0];
  }

  if ([(TestProbe *)self isRunning])
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __39__TCPDumpProbe_stopNetDiagnosticsTask___block_invoke;
    v10[3] = &unk_278CF0570;
    v10[4] = self;
    v11 = taskCopy;
    v9.receiver = self;
    v9.super_class = TCPDumpProbe;
    [(NetDiagnosticProbe *)&v9 stopNetDiagnosticsTask:v10];
  }

  return 1;
}

void __39__TCPDumpProbe_stopNetDiagnosticsTask___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) disconnectFromNetDiagnostics];
  v4 = *(a1 + 40);
  if (!v4)
  {
    v4 = *(*(a1 + 32) + 96);
    if (!v4)
    {
      goto LABEL_6;
    }

    if (a2 == 4)
    {
      [*(a1 + 32) removeProbeOutputFiles];
      v4 = *(*(a1 + 32) + 96);
    }
  }

  (*(v4 + 16))(v4, a2);
LABEL_6:
  v5 = *(*(a1 + 32) + 96);
  if (v5)
  {
    _Block_release(v5);
    *(*(a1 + 32) + 96) = 0;
  }
}

- (id)probeOutputFilePaths
{
  array = [MEMORY[0x277CBEB18] array];
  ndFilePath = [(NetDiagnosticProbe *)self ndFilePath];
  v5 = ndFilePath;
  if (ndFilePath)
  {
    lastPathComponent = [ndFilePath lastPathComponent];
    stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];

    v8 = [stringByDeletingPathExtension rangeOfString:@"-" options:4];
    if (v9 == 1)
    {
      v10 = [stringByDeletingPathExtension substringToIndex:v8];
    }

    else
    {

      v12 = symptomsLogHandle(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_241804000, v12, OS_LOG_TYPE_INFO, "Could not parse pcapng file name", buf, 2u);
      }

      v10 = 0;
    }

    v13 = MEMORY[0x277CBEBC0];
    stringByDeletingLastPathComponent = [v5 stringByDeletingLastPathComponent];
    v15 = [v13 URLWithString:stringByDeletingLastPathComponent];

    if (v15)
    {
      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      v17 = [defaultManager enumeratorAtURL:v15 includingPropertiesForKeys:0 options:1 errorHandler:0];

      if (v17)
      {
        nextObject = [v17 nextObject];
        if (nextObject)
        {
          v19 = nextObject;
          v28 = v15;
          v20 = array;
          lastPathComponent2 = 0;
          do
          {
            v22 = lastPathComponent2;
            v23 = objc_autoreleasePoolPush();
            lastPathComponent2 = [v19 lastPathComponent];

            pathExtension = [lastPathComponent2 pathExtension];
            LODWORD(v22) = [pathExtension isEqualToString:@"pcapng"];

            if (v22 && (!v10 || [lastPathComponent2 containsString:v10]))
            {
              path = [v19 path];
              [v20 addObject:path];
            }

            objc_autoreleasePoolPop(v23);
            nextObject2 = [v17 nextObject];

            v19 = nextObject2;
          }

          while (nextObject2);

          array = v20;
          v15 = v28;
        }
      }
    }
  }

  return array;
}

@end