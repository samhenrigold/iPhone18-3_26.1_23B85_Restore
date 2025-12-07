@interface CrashReportOutlet
- (BOOL)publishReportForCase:(id)case options:(id)options;
- (id)descriptiveFilenameWithPrefix:(id)prefix domain:(id)domain process:(id)process;
@end

@implementation CrashReportOutlet

- (id)descriptiveFilenameWithPrefix:(id)prefix domain:(id)domain process:(id)process
{
  prefixCopy = prefix;
  processCopy = process;
  v9 = [domain stringByReplacingOccurrencesOfString:@" " withString:@"+"];
  v10 = [processCopy stringByReplacingOccurrencesOfString:@" " withString:@"+"];

  v11 = prefixCopy;
  if ([v9 length])
  {
    v11 = prefixCopy;
    if ([v10 length])
    {
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@-%@", prefixCopy, v9, v10];
    }
  }

  return v11;
}

- (BOOL)publishReportForCase:(id)case options:(id)options
{
  v49 = *MEMORY[0x277D85DE8];
  caseCopy = case;
  dampeningType = [caseCopy dampeningType];
  if (dampeningType == -1)
  {
    dictionary = diagcaseLogHandle(dampeningType);
    if (os_log_type_enabled(dictionary, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v35 = "Skip publishing report to CrashReporter since this is a transient case.";
LABEL_18:
      _os_log_impl(&dword_241804000, dictionary, OS_LOG_TYPE_DEFAULT, v35, buf, 2u);
    }
  }

  else
  {
    writeIPSFile = [caseCopy writeIPSFile];
    v8 = writeIPSFile;
    v9 = diagcaseLogHandle(writeIPSFile);
    dictionary = v9;
    if (v8)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        caseId = [caseCopy caseId];
        uUIDString = [caseId UUIDString];
        *buf = 138412290;
        v44 = uUIDString;
        _os_log_impl(&dword_241804000, dictionary, OS_LOG_TYPE_DEBUG, "Publishing report of case %@ to CrashReporter", buf, 0xCu);
      }

      dictionary = [MEMORY[0x277CBEB38] dictionary];
      signature = [caseCopy signature];
      [dictionary setObject:signature forKeyedSubscript:@"signature"];

      events = [caseCopy events];
      [dictionary setObject:events forKeyedSubscript:@"events"];

      attachments = [caseCopy attachments];
      [dictionary setObject:attachments forKeyedSubscript:@"attachments"];

      v16 = MEMORY[0x277CBEAC0];
      caseDampeningTypeString = [caseCopy caseDampeningTypeString];
      caseClosureTypeString = [caseCopy caseClosureTypeString];
      v19 = [v16 dictionaryWithObjectsAndKeys:{caseDampeningTypeString, @"dampening_type", caseClosureTypeString, @"closure_type", 0}];
      [dictionary setObject:v19 forKeyedSubscript:@"case_status"];

      dictionary2 = [MEMORY[0x277CBEB38] dictionary];
      caseId2 = [caseCopy caseId];
      uUIDString2 = [caseId2 UUIDString];

      if (uUIDString2)
      {
        caseId3 = [caseCopy caseId];
        uUIDString3 = [caseId3 UUIDString];
        [dictionary2 setObject:uUIDString3 forKey:@"caseID"];
      }

      [caseCopy caseOpenedTime];
      if (v25 != 0.0)
      {
        v26 = MEMORY[0x277CCABB0];
        [caseCopy caseOpenedTime];
        v27 = [v26 numberWithDouble:?];
        [dictionary2 setObject:v27 forKey:@"triggerTime"];
      }

      [dictionary setObject:dictionary2 forKeyedSubscript:@"case_header"];
      v28 = sanitizedJSONCollectionObject(dictionary, 1);
      v29 = [MEMORY[0x277CCAAA0] isValidJSONObject:v28];
      if (!v29)
      {
        v32 = diagcaseLogHandle(v29);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v44 = caseCopy;
          v45 = 2112;
          v46 = v28;
          _os_log_impl(&dword_241804000, v32, OS_LOG_TYPE_ERROR, "CrashReport content dictionary for case %@ is not JSON compatible. (content=%@)", buf, 0x16u);
        }

        v34 = 0;
        goto LABEL_27;
      }

      v42 = 0;
      v30 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v28 options:0 error:&v42];
      v31 = v42;
      v32 = v31;
      if (v31)
      {
        v33 = diagcaseLogHandle(v31);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412802;
          v44 = caseCopy;
          v45 = 2112;
          v46 = v32;
          v47 = 2112;
          v48 = v28;
          _os_log_impl(&dword_241804000, v33, OS_LOG_TYPE_ERROR, "Failed JSON serialization of CrashReport content dictionary for case %@: %@ (content=%@)", buf, 0x20u);
        }

        v34 = 0;
      }

      else
      {
        if (!v30)
        {
          v34 = 0;
          goto LABEL_26;
        }

        signature2 = [caseCopy signature];
        v36 = [signature2 objectForKeyedSubscript:@"domain"];
        signature3 = [caseCopy signature];
        v38 = [signature3 objectForKeyedSubscript:@"detected"];
        v33 = [(CrashReportOutlet *)self descriptiveFilenameWithPrefix:@"AutoBugCapture" domain:v36 process:v38];

        v41 = v30;
        v34 = OSAWriteLogForSubmission();
      }

LABEL_26:
LABEL_27:

      goto LABEL_28;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v35 = "Skip publishing report to CrashReporter since we surpassed the daily file count limit.";
      goto LABEL_18;
    }
  }

  v34 = 0;
LABEL_28:

  return v34;
}

@end