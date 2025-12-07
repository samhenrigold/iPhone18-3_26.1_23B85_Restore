@interface NetworkDiagnosticsReportGenerator
- (BOOL)startNetDiagnosticsTaskWithReply:(id)reply;
- (BOOL)startReportGeneration;
- (NetDiagnosticsShim)netDiags;
- (NetworkDiagnosticsReportGenerator)initWithQueue:(id)queue;
- (id)createDefaultTaskDictionaryWithTaskName:(const char *)name;
- (void)netDiagnosticTaskStatusChangedFor:(id)for toStatus:(int)status;
- (void)setNetDiags:(id)diags;
@end

@implementation NetworkDiagnosticsReportGenerator

- (NetworkDiagnosticsReportGenerator)initWithQueue:(id)queue
{
  v6.receiver = self;
  v6.super_class = NetworkDiagnosticsReportGenerator;
  v3 = [(DiagnosticReportGenerator *)&v6 initWithQueue:queue];
  v4 = v3;
  if (v3)
  {
    [(DiagnosticReportGenerator *)v3 setTimeoutSeconds:600.0];
  }

  return v4;
}

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
    options = [(NetworkDiagnosticsReportGenerator *)self options];
    v6 = [options objectForKeyedSubscript:@"taskName"];
    queue = [(DiagnosticReportGenerator *)self queue];
    v8 = [(NetDiagnosticsShim *)v4 initWithTaskName:v6 queue:queue];
    [(NetworkDiagnosticsReportGenerator *)self setNetDiags:v8];

    netDiags = self->_netDiags;
  }

  return netDiags;
}

- (BOOL)startNetDiagnosticsTaskWithReply:(id)reply
{
  replyCopy = reply;
  netDiags = [(NetworkDiagnosticsReportGenerator *)self netDiags];
  options = [(NetworkDiagnosticsReportGenerator *)self options];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __70__NetworkDiagnosticsReportGenerator_startNetDiagnosticsTaskWithReply___block_invoke;
  v10[3] = &unk_278CF2288;
  v11 = replyCopy;
  v7 = replyCopy;
  v8 = [netDiags startNetDiagnosticTaskWithOptions:options reply:v10];

  return v8;
}

void __70__NetworkDiagnosticsReportGenerator_startNetDiagnosticsTaskWithReply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v51 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = 0x277CCA000uLL;
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:kNetDiagTaskFilePath[0]];
    v10 = [v5 objectForKeyedSubscript:v9];

    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    if (v10)
    {
      v13 = [MEMORY[0x277CBEBC0] fileURLWithPath:v10];
      v14 = [v13 absoluteString];
      [v12 addObject:v14];
    }

    else
    {
      v24 = [v5 objectForKeyedSubscript:@"filepaths"];
      v10 = v24;
      if (v24)
      {
        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v25 = [v24 countByEnumeratingWithState:&v42 objects:v50 count:16];
        if (v25)
        {
          v26 = v25;
          v40 = a1;
          v41 = v7;
          v27 = 0;
          v28 = *v43;
          do
          {
            v29 = 0;
            v30 = v27;
            do
            {
              if (*v43 != v28)
              {
                objc_enumerationMutation(v10);
              }

              v27 = *(*(&v42 + 1) + 8 * v29);

              v31 = [MEMORY[0x277CBEBC0] fileURLWithPath:v27];
              v32 = [v31 absoluteString];
              [v12 addObject:v32];

              ++v29;
              v30 = v27;
            }

            while (v26 != v29);
            v26 = [v10 countByEnumeratingWithState:&v42 objects:v50 count:16];
          }

          while (v26);

          v7 = v41;
          a1 = v40;
          v8 = 0x277CCA000;
        }
      }
    }

    [v11 setObject:v12 forKeyedSubscript:@"attachments"];
    v15 = [*(v8 + 3240) stringWithUTF8String:kNetDiagStatus[0]];
    v16 = [v5 objectForKeyedSubscript:v15];
    v17 = [v16 longLongValue];

    if (!v17)
    {
      v33 = *(a1 + 32);
      if (v33)
      {
        (*(v33 + 16))(v33, v11, 0);
      }

      goto LABEL_29;
    }

    if (v17 == -1)
    {
      v19 = *(a1 + 32);
      if (!v19)
      {
LABEL_29:

        goto LABEL_30;
      }

      v20 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:5 userInfo:&unk_285379FB8];
      (*(v19 + 16))(v19, 0, v20);
    }

    else
    {
      v34 = diagreportLogHandle(v18);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        v49 = v17;
        _os_log_impl(&dword_241804000, v34, OS_LOG_TYPE_DEBUG, "Unknown kNetDiagStatus %lld\n", buf, 0xCu);
      }

      v35 = *(a1 + 32);
      if (!v35)
      {
        goto LABEL_29;
      }

      v36 = MEMORY[0x277CCA9B8];
      v37 = *MEMORY[0x277CCA5B8];
      v46 = @"error";
      v20 = [*(v8 + 3240) stringWithFormat:@"Unknown kNetDiagStatus %lld\n", v17];
      v47 = v20;
      v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
      v39 = [v36 errorWithDomain:v37 code:5 userInfo:v38];
      (*(v35 + 16))(v35, 0, v39);
    }

    goto LABEL_29;
  }

  if (v6)
  {
    v21 = diagreportLogHandle(v6);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v22 = [v7 userInfo];
      *buf = 138412290;
      v49 = v22;
      _os_log_impl(&dword_241804000, v21, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    v23 = *(a1 + 32);
    if (v23)
    {
      (*(v23 + 16))(v23, 0, v7);
    }
  }

LABEL_30:
}

- (BOOL)startReportGeneration
{
  selfCopy = self;
  options = [(NetworkDiagnosticsReportGenerator *)self options];
  v4 = [options objectForKeyedSubscript:@"taskName"];

  [(DiagnosticReportGenerator *)selfCopy setReportGenerated:0];
  date = [MEMORY[0x277CBEAA8] date];
  reportStart = selfCopy->_reportStart;
  selfCopy->_reportStart = date;

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __58__NetworkDiagnosticsReportGenerator_startReportGeneration__block_invoke;
  v9[3] = &unk_278CF22B0;
  v10 = v4;
  v11 = selfCopy;
  v7 = v4;
  LOBYTE(selfCopy) = [(NetworkDiagnosticsReportGenerator *)selfCopy startNetDiagnosticsTaskWithReply:v9];

  return selfCopy;
}

void __58__NetworkDiagnosticsReportGenerator_startReportGeneration__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5)
  {
    if (!v6)
    {
      goto LABEL_21;
    }

    v10 = diagreportLogHandle(v6);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 32);
      *buf = 138412546;
      v30 = v11;
      v31 = 2112;
      v32 = v7;
      _os_log_impl(&dword_241804000, v10, OS_LOG_TYPE_ERROR, "Start task %@ failed with error: %@", buf, 0x16u);
    }

    v12 = [*(a1 + 40) delegate];
    v13 = [*(a1 + 40) completionHandler];
    if (v13)
    {
    }

    else if ((objc_opt_respondsToSelector() & 1) == 0)
    {
LABEL_20:
      [*(a1 + 40) setNetDiags:0];
      [*(a1 + 40) setDiagCase:0];

      goto LABEL_21;
    }

    v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v14 setObject:*(*(a1 + 40) + 80) forKey:@"reportStart"];
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    [v14 setObject:v16 forKey:@"reportCreator"];

    v17 = [MEMORY[0x277CBEAA8] date];
    [v14 setObject:v17 forKey:@"reportEnd"];

    [v14 setObject:@"Error" forKey:@"reportEndStatus"];
    v18 = [v7 description];
    v19 = [v18 length];

    if (v19)
    {
      v20 = [v7 description];
    }

    else
    {
      v21 = MEMORY[0x277CCACA8];
      v22 = [v7 domain];
      v23 = [v7 code];
      v24 = [v7 userInfo];
      v25 = v24;
      v26 = &stru_285368168;
      if (v24)
      {
        v26 = v24;
      }

      v20 = [v21 stringWithFormat:@"Error Domain: %@ Error Code: %ld %@", v22, v23, v26];
    }

    [v14 setObject:v20 forKey:@"Error"];

    v27 = [*(a1 + 40) completionHandler];

    if (v27)
    {
      v28 = [*(a1 + 40) completionHandler];
      (v28)[2](v28, v14, v7);

      [*(a1 + 40) setCompletionHandler:0];
    }

    else
    {
      [v12 reportGeneratorEnded:*(a1 + 40) reportInfo:v14 error:v7];
    }

    goto LABEL_20;
  }

  v8 = diagreportLogHandle(v6);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    *buf = 138412546;
    v30 = v9;
    v31 = 2112;
    v32 = v5;
    _os_log_impl(&dword_241804000, v8, OS_LOG_TYPE_DEFAULT, "Started task %@ with info: %@", buf, 0x16u);
  }

  [*(a1 + 40) setNetDiagsResults:v5];
LABEL_21:
}

- (void)netDiagnosticTaskStatusChangedFor:(id)for toStatus:(int)status
{
  v28 = *MEMORY[0x277D85DE8];
  forCopy = for;
  options = [(NetworkDiagnosticsReportGenerator *)self options];
  v8 = [options objectForKeyedSubscript:@"taskName"];

  v9 = [forCopy isEqualToString:v8];
  if (status == 3 && v9)
  {
    v10 = diagreportLogHandle(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      netDiagsResults = [(NetworkDiagnosticsReportGenerator *)self netDiagsResults];
      v24 = 138412546;
      v25 = forCopy;
      v26 = 2112;
      v27 = netDiagsResults;
      _os_log_impl(&dword_241804000, v10, OS_LOG_TYPE_DEFAULT, "%@ changed to ending. Signaling completion with results %@", &v24, 0x16u);
    }

    delegate = [(DiagnosticReportGenerator *)self delegate];
    completionHandler = [(DiagnosticReportGenerator *)self completionHandler];
    if (completionHandler)
    {
      v14 = 1;
    }

    else
    {
      v14 = objc_opt_respondsToSelector();
    }

    netDiagsResults2 = [(NetworkDiagnosticsReportGenerator *)self netDiagsResults];

    if (netDiagsResults2 && (v14 & 1) != 0)
    {
      v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
      [v16 setObject:self->_reportStart forKey:@"reportStart"];
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      [v16 setObject:v18 forKey:@"reportCreator"];

      date = [MEMORY[0x277CBEAA8] date];
      [v16 setObject:date forKey:@"reportEnd"];

      [v16 setObject:@"Success" forKey:@"reportEndStatus"];
      netDiagsResults3 = [(NetworkDiagnosticsReportGenerator *)self netDiagsResults];
      v21 = [netDiagsResults3 objectForKeyedSubscript:@"attachments"];
      [v16 setObject:v21 forKey:@"attachments"];

      [(DiagnosticReportGenerator *)self setReportGenerated:1];
      completionHandler2 = [(DiagnosticReportGenerator *)self completionHandler];

      if (completionHandler2)
      {
        completionHandler3 = [(DiagnosticReportGenerator *)self completionHandler];
        (completionHandler3)[2](completionHandler3, v16, 0);

        [(DiagnosticReportGenerator *)self setCompletionHandler:0];
      }

      else
      {
        [delegate reportGeneratorEnded:self reportInfo:v16 error:0];
      }

      [(NetworkDiagnosticsReportGenerator *)self setNetDiagsResults:0];
    }

    [(NetworkDiagnosticsReportGenerator *)self setNetDiags:0];
    [(DiagnosticReportGenerator *)self setDiagCase:0];
  }
}

- (id)createDefaultTaskDictionaryWithTaskName:(const char *)name
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:name];
  [dictionary setObject:v5 forKeyedSubscript:@"taskName"];

  v6 = +[ABCAdministrator sharedInstance];
  configurationManager = [v6 configurationManager];

  logArchivePath = [configurationManager logArchivePath];
  v9 = [logArchivePath stringByAppendingString:@"/"];
  [dictionary setObject:v9 forKeyedSubscript:@"filename"];

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(configurationManager, "logArchiveUID")}];
  [dictionary setObject:v10 forKeyedSubscript:@"taskFileUserID"];

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(configurationManager, "logArchiveGID")}];
  [dictionary setObject:v11 forKeyedSubscript:@"taskFileGroupID"];

  [dictionary setObject:&unk_28537A2A8 forKeyedSubscript:@"taskFileMode"];

  return dictionary;
}

@end