@interface NetDiagnosticProbe
- (BOOL)netDiagnosticsTaskInProgress:(id)progress;
- (BOOL)startNetDiagnosticsTask:(id)task;
- (BOOL)stopNetDiagnosticsTask:(id)task;
- (NetDiagnosticsShim)netDiags;
- (id)setUpDefaultTaskDictionary;
- (void)cancelTest:(id)test;
- (void)dealloc;
- (void)setNetDiags:(id)diags;
@end

@implementation NetDiagnosticProbe

- (void)setNetDiags:(id)diags
{
  diagsCopy = diags;
  netDiags = self->_netDiags;
  if (netDiags != diagsCopy)
  {
    v7 = diagsCopy;
    if (netDiags)
    {
      [(NetDiagnosticsShim *)netDiags setDelegate:0];
      [(NetDiagnosticsShim *)self->_netDiags invalidateConnections];
      diagsCopy = v7;
    }

    if (diagsCopy)
    {
      [(NetDiagnosticsShim *)v7 setDelegate:self];
    }

    objc_storeStrong(&self->_netDiags, diags);
    diagsCopy = v7;
  }

  MEMORY[0x2821F96F8](netDiags, diagsCopy);
}

- (NetDiagnosticsShim)netDiags
{
  netDiags = self->_netDiags;
  if (!netDiags)
  {
    v4 = [NetDiagnosticsShim alloc];
    taskName = self->_taskName;
    queue = [(TestProbe *)self queue];
    v7 = [(NetDiagnosticsShim *)v4 initWithTaskName:taskName queue:queue];
    [(NetDiagnosticProbe *)self setNetDiags:v7];

    netDiags = self->_netDiags;
  }

  return netDiags;
}

- (void)dealloc
{
  [(NetDiagnosticProbe *)self setNetDiags:0];
  v3.receiver = self;
  v3.super_class = NetDiagnosticProbe;
  [(NetDiagnosticProbe *)&v3 dealloc];
}

- (id)setUpDefaultTaskDictionary
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  taskName = [(NetDiagnosticProbe *)self taskName];
  [dictionary setObject:taskName forKeyedSubscript:@"taskName"];

  v12 = 0;
  v13 = 0;
  v11 = 0;
  [TestProbe autoBugCapturePath:&v13 autoBugCaptureUID:&v12 autoBugCaptureGID:&v11];
  v5 = v13;
  v6 = v12;
  v7 = v11;
  v8 = v7;
  if (v5 && v6 && v7)
  {
    v9 = [v5 stringByAppendingString:@"/"];
    [dictionary setObject:v9 forKeyedSubscript:@"filename"];

    [dictionary setObject:v6 forKeyedSubscript:@"taskFileUserID"];
    [dictionary setObject:v8 forKeyedSubscript:@"taskFileGroupID"];
  }

  [dictionary setObject:&unk_28537A038 forKeyedSubscript:@"taskFileMode"];
  [(NetDiagnosticProbe *)self setNetDiagsTaskDict:dictionary];

  return dictionary;
}

- (BOOL)startNetDiagnosticsTask:(id)task
{
  taskCopy = task;
  [(TestProbe *)self setStatus:1];
  netDiags = [(NetDiagnosticProbe *)self netDiags];
  netDiagsTaskDict = [(NetDiagnosticProbe *)self netDiagsTaskDict];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __46__NetDiagnosticProbe_startNetDiagnosticsTask___block_invoke;
  v9[3] = &unk_278CF0548;
  v9[4] = self;
  v10 = taskCopy;
  v7 = taskCopy;
  LOBYTE(taskCopy) = [netDiags startNetDiagnosticTaskWithOptions:netDiagsTaskDict reply:v9];

  return taskCopy;
}

void __46__NetDiagnosticProbe_startNetDiagnosticsTask___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5)
  {
    if (!v6)
    {
      goto LABEL_13;
    }

    v19 = symptomsLogHandle(v6);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [v7 userInfo];
      *buf = 138412290;
      v25 = v20;
      _os_log_impl(&dword_241804000, v19, OS_LOG_TYPE_ERROR, "Error: %@", buf, 0xCu);
    }

    goto LABEL_11;
  }

  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"filename"];
  v9 = [v5 objectForKeyedSubscript:v8];
  [*(a1 + 32) setNdFilePath:v9];

  v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:kNetDiagStatus[0]];
  v11 = [v5 objectForKeyedSubscript:v10];
  v12 = [v11 longLongValue];

  if (v12)
  {
    if (v12 != -1)
    {
      v14 = symptomsLogHandle(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = [*(a1 + 32) taskName];
        v16 = *(a1 + 32);
        *buf = 138412802;
        v25 = v15;
        v26 = 2048;
        v27 = v16;
        v28 = 2048;
        v29 = v12;
        _os_log_impl(&dword_241804000, v14, OS_LOG_TYPE_INFO, "%@ (%p) Unknown kNetDiagStatus %lld\n", buf, 0x20u);
      }

      v17 = *(a1 + 32);
      v18 = 0xFFFFFFFFLL;
      goto LABEL_12;
    }

LABEL_11:
    v17 = *(a1 + 32);
    v18 = 3;
LABEL_12:
    [v17 setStatus:v18];
    goto LABEL_13;
  }

  [*(a1 + 32) setRunning:1];
  if ([*(a1 + 32) status] == 5)
  {
    v22 = *(a1 + 32);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __46__NetDiagnosticProbe_startNetDiagnosticsTask___block_invoke_2;
    v23[3] = &unk_278CF0520;
    v23[4] = v22;
    [v22 stopNetDiagnosticsTask:v23];
  }

LABEL_13:
  v21 = *(a1 + 40);
  if (v21)
  {
    (*(v21 + 16))(v21, [*(a1 + 32) status]);
  }
}

uint64_t __46__NetDiagnosticProbe_startNetDiagnosticsTask___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) removeProbeOutputFiles];
  [*(a1 + 32) setStatus:4];
  v2 = *(a1 + 32);

  return [v2 disconnectFromNetDiagnostics];
}

- (void)cancelTest:(id)test
{
  testCopy = test;
  if ([(TestProbe *)self isRunning])
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __33__NetDiagnosticProbe_cancelTest___block_invoke;
    v5[3] = &unk_278CF0570;
    v5[4] = self;
    v6 = testCopy;
    [(NetDiagnosticProbe *)self stopNetDiagnosticsTask:v5];
  }

  else
  {
    [(TestProbe *)self setStatus:5];
    if (testCopy)
    {
      (*(testCopy + 2))(testCopy, [(TestProbe *)self status]);
    }
  }
}

void *__33__NetDiagnosticProbe_cancelTest___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setStatus:4];
  [*(a1 + 32) removeProbeOutputFiles];
  result = [*(a1 + 32) disconnectFromNetDiagnostics];
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = [*(a1 + 32) status];
    v5 = *(v3 + 16);

    return v5(v3, v4);
  }

  return result;
}

- (BOOL)stopNetDiagnosticsTask:(id)task
{
  taskCopy = task;
  [(TestProbe *)self setRunning:0];
  netDiags = [(NetDiagnosticProbe *)self netDiags];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __45__NetDiagnosticProbe_stopNetDiagnosticsTask___block_invoke;
  v8[3] = &unk_278CF0548;
  v8[4] = self;
  v9 = taskCopy;
  v6 = taskCopy;
  LOBYTE(taskCopy) = [netDiags stopNetDiagnosticTaskWithReply:v8];

  return taskCopy;
}

void __45__NetDiagnosticProbe_stopNetDiagnosticsTask___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:kNetDiagStatus[0]];
    v9 = [v5 objectForKeyedSubscript:v8];
    v10 = [v9 longLongValue];

    if (!v10)
    {
      v13 = *(a1 + 32);
      v14 = 2;
      goto LABEL_13;
    }

    if (v10 != -1)
    {
      v12 = symptomsLogHandle(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v18 = 134217984;
        v19 = v10;
        _os_log_impl(&dword_241804000, v12, OS_LOG_TYPE_INFO, "Unknown kNetDiagStatus %lld\n", &v18, 0xCu);
      }

      v13 = *(a1 + 32);
      v14 = 0xFFFFFFFFLL;
      goto LABEL_13;
    }
  }

  else
  {
    if (!v6)
    {
      goto LABEL_14;
    }

    v15 = symptomsLogHandle(v6);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [v7 userInfo];
      v18 = 138412290;
      v19 = v16;
      _os_log_impl(&dword_241804000, v15, OS_LOG_TYPE_ERROR, "Error: %@", &v18, 0xCu);
    }
  }

  v13 = *(a1 + 32);
  v14 = 3;
LABEL_13:
  [v13 setStatus:v14];
LABEL_14:
  v17 = *(a1 + 40);
  if (v17)
  {
    (*(v17 + 16))(v17, [*(a1 + 32) status]);
  }
}

- (BOOL)netDiagnosticsTaskInProgress:(id)progress
{
  progressCopy = progress;
  netDiags = [(NetDiagnosticProbe *)self netDiags];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __51__NetDiagnosticProbe_netDiagnosticsTaskInProgress___block_invoke;
  v8[3] = &unk_278CF0548;
  v8[4] = self;
  v9 = progressCopy;
  v6 = progressCopy;
  LOBYTE(progressCopy) = [netDiags netDiagnosticTaskStatusWithReply:v8];

  return progressCopy;
}

void __51__NetDiagnosticProbe_netDiagnosticsTaskInProgress___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) status];
  if (v7 != 5)
  {
    if (!v5)
    {
      if (!v6)
      {
        goto LABEL_25;
      }

      v12 = symptomsLogHandle(v7);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v14 = *(*(a1 + 32) + 64);
        v15 = [v6 userInfo];
        v26 = 138412546;
        v27 = v14;
        v28 = 2112;
        v29 = v15;
        _os_log_impl(&dword_241804000, v12, OS_LOG_TYPE_INFO, "%@ kNetDiagCmdTasksStatus %@", &v26, 0x16u);
      }

      goto LABEL_9;
    }

    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:kNetDiagStatus[0]];
    v9 = [v5 objectForKeyedSubscript:v8];
    v10 = [v9 longLongValue];

    if (v10)
    {
      v12 = symptomsLogHandle(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = *(*(a1 + 32) + 64);
        v26 = 138412546;
        v27 = v13;
        v28 = 2048;
        v29 = v10;
        _os_log_impl(&dword_241804000, v12, OS_LOG_TYPE_INFO, "%@ kNetDiagStatus is %lld\n", &v26, 0x16u);
      }

LABEL_9:

      [*(a1 + 32) setStatus:3];
      goto LABEL_25;
    }

    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:kNetDiagKeyValues[0]];
    v17 = [v5 objectForKeyedSubscript:v16];

    if (!v17)
    {
      goto LABEL_24;
    }

    v18 = [v17 objectForKeyedSubscript:*(*(a1 + 32) + 64)];
    v19 = [v18 longLongValue];

    if (v19 > 1)
    {
      if (v19 != 2)
      {
        if (v19 != 3)
        {
LABEL_19:
          v23 = symptomsLogHandle(v20);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
          {
            v24 = *(*(a1 + 32) + 64);
            v26 = 138412546;
            v27 = v24;
            v28 = 2048;
            v29 = v19;
            _os_log_impl(&dword_241804000, v23, OS_LOG_TYPE_INFO, "%@  UNEXPECTED status %lld", &v26, 0x16u);
          }

          v21 = *(a1 + 32);
          v22 = 0xFFFFFFFFLL;
          goto LABEL_23;
        }

        v21 = *(a1 + 32);
        v22 = 2;
LABEL_23:
        [v21 setStatus:v22];
LABEL_24:

        goto LABEL_25;
      }
    }

    else
    {
      if (!v19)
      {
        v21 = *(a1 + 32);
        v22 = 0;
        goto LABEL_23;
      }

      if (v19 != 1)
      {
        goto LABEL_19;
      }
    }

    v21 = *(a1 + 32);
    v22 = 1;
    goto LABEL_23;
  }

LABEL_25:
  v25 = *(a1 + 40);
  if (v25)
  {
    (*(v25 + 16))(v25, [*(a1 + 32) status]);
  }
}

@end