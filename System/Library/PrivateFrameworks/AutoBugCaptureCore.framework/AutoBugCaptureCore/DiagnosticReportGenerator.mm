@interface DiagnosticReportGenerator
- (BOOL)generateReportForCase:(id)case reportName:(id)name completion:(id)completion;
- (DiagnosticReportGenerator)initWithQueue:(id)queue;
- (DiagnosticReportGeneratorDelegate)delegate;
@end

@implementation DiagnosticReportGenerator

- (DiagnosticReportGenerator)initWithQueue:(id)queue
{
  queueCopy = queue;
  v9.receiver = self;
  v9.super_class = DiagnosticReportGenerator;
  v6 = [(DiagnosticReportGenerator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
  }

  return v7;
}

- (BOOL)generateReportForCase:(id)case reportName:(id)name completion:(id)completion
{
  v48 = *MEMORY[0x277D85DE8];
  caseCopy = case;
  nameCopy = name;
  completionCopy = completion;
  v11 = diagreportLogHandle(completionCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    caseId = [caseCopy caseId];
    *buf = 138412546;
    v45 = caseId;
    v46 = 2112;
    v47 = nameCopy;
    _os_log_impl(&dword_241804000, v11, OS_LOG_TYPE_DEBUG, "Generating a report for case ID %@, desired report file name %@", buf, 0x16u);
  }

  [(DiagnosticReportGenerator *)self setDiagCase:caseCopy];
  if (completionCopy)
  {
    [(DiagnosticReportGenerator *)self setCompletionHandler:completionCopy];
  }

  date = [MEMORY[0x277CBEAA8] date];
  delegate = [(DiagnosticReportGenerator *)self delegate];
  startReportGeneration = [(DiagnosticReportGenerator *)self startReportGeneration];
  v16 = startReportGeneration;
  if (startReportGeneration)
  {
    [(DiagnosticReportGenerator *)self timeoutSeconds];
    v18 = dispatch_time(0, (v17 * 1000000000.0));
    queue = [(DiagnosticReportGenerator *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __73__DiagnosticReportGenerator_generateReportForCase_reportName_completion___block_invoke;
    block[3] = &unk_278CF00E0;
    block[4] = self;
    v40 = date;
    v41 = delegate;
    dispatch_after(v18, queue, block);
  }

  else
  {
    v36 = delegate;
    v37 = nameCopy;
    v38 = caseCopy;
    v20 = diagreportLogHandle(startReportGeneration);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_241804000, v20, OS_LOG_TYPE_INFO, "report generation did not start", buf, 2u);
    }

    v21 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v21 setObject:date forKey:@"reportStart"];
    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    [v21 setObject:v23 forKey:@"reportCreator"];

    date2 = [MEMORY[0x277CBEAA8] date];
    [v21 setObject:date2 forKey:@"reportEnd"];

    [v21 setObject:@"Error" forKey:@"reportEndStatus"];
    [v21 setObject:@"Failed to start report generation." forKey:@"reportError"];
    v25 = MEMORY[0x277CCA9B8];
    v26 = *MEMORY[0x277CCA5B8];
    v42 = @"error";
    v27 = MEMORY[0x277CCACA8];
    v28 = objc_opt_class();
    v29 = NSStringFromClass(v28);
    v30 = [v27 stringWithFormat:@"%@ failed to start", v29];
    v43 = v30;
    v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
    v32 = [v25 errorWithDomain:v26 code:5 userInfo:v31];

    completionHandler = [(DiagnosticReportGenerator *)self completionHandler];

    if (completionHandler)
    {
      completionHandler2 = [(DiagnosticReportGenerator *)self completionHandler];
      (completionHandler2)[2](completionHandler2, v21, v32);

      [(DiagnosticReportGenerator *)self setCompletionHandler:0];
      nameCopy = v37;
      caseCopy = v38;
      delegate = v36;
    }

    else
    {
      delegate = v36;
      nameCopy = v37;
      caseCopy = v38;
      if (objc_opt_respondsToSelector())
      {
        [v36 reportGeneratorEnded:self reportInfo:v21 error:v32];
      }
    }

    [(DiagnosticReportGenerator *)self setDiagCase:0];
  }

  return v16;
}

void __73__DiagnosticReportGenerator_generateReportForCase_reportName_completion___block_invoke(uint64_t a1)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) reportGenerated];
  if ((v2 & 1) == 0)
  {
    v3 = diagreportLogHandle(v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_241804000, v3, OS_LOG_TYPE_INFO, "report generator timed out.", buf, 2u);
    }

    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v4 setObject:*(a1 + 40) forKey:@"reportStart"];
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    [v4 setObject:v6 forKey:@"reportCreator"];

    v7 = [MEMORY[0x277CBEAA8] date];
    [v4 setObject:v7 forKey:@"reportEnd"];

    [v4 setObject:@"Timeout" forKey:@"reportEndStatus"];
    v8 = MEMORY[0x277CCA9B8];
    v9 = *MEMORY[0x277CCA5B8];
    v19 = @"error";
    v10 = MEMORY[0x277CCACA8];
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = [v10 stringWithFormat:@"%@ timed out", v12];
    v20[0] = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    v15 = [v8 errorWithDomain:v9 code:60 userInfo:v14];

    v16 = [*(a1 + 32) completionHandler];

    if (v16)
    {
      v17 = [*(a1 + 32) completionHandler];
      (v17)[2](v17, v4, v15);

      [*(a1 + 32) setCompletionHandler:0];
    }

    else if (objc_opt_respondsToSelector())
    {
      [*(a1 + 48) reportGeneratorEnded:*(a1 + 32) reportInfo:v4 error:v15];
    }

    [*(a1 + 32) setDiagCase:0];
  }
}

- (DiagnosticReportGeneratorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end