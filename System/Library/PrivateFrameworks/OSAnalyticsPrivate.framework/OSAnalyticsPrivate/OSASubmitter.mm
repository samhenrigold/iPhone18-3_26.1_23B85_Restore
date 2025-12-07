@interface OSASubmitter
+ (BOOL)submitToUAT;
+ (id)endpointToString:(int)string;
+ (id)extractAuthenticatedBlob:(id)blob error:(id *)error;
+ (id)submissionPathsWithHomeDirectory:(id)directory withProxies:(BOOL)proxies;
+ (id)taskingKeyForRouting:(id)routing withConfig:(id)config;
- (BOOL)taskingNeedsRefreshForRouting:(id)routing at:(double)at;
- (OSASubmitter)init;
- (id)applyTasking:(id)tasking taskId:(id)id usingConfig:(id)config fromBlob:(id)blob;
- (id)getAdditionalRequestHeaders;
- (id)locateLog:(id)log forRouting:(id)routing usingConfig:(id)config options:(id)options error:(id *)error;
- (id)primarySubmissionPaths;
- (id)processJob:(id)job forRouting:(id)routing including:(id)including usingConfig:(id)config taskings:(id)taskings summarize:(id)summarize additionalRequestHeaders:(id)headers;
- (id)processSubmissionJobs:(id)jobs usingConfig:(id)config summarize:(id)summarize;
- (id)taskingLastSuccessfulRequest;
- (void)cheaterTaskingWithSets:(id)sets usingConfig:(id)config resultsCallback:(id)callback;
- (void)getAdditionalRequestHeaders;
- (void)prefaceSubmission:(id)submission withData:(id)data usingArchive:(id)archive andHeaders:(id)headers;
- (void)submitLogsUsingPolicy:(id)policy resultsCallback:(id)callback;
- (void)updateTaskingLastSuccessfulRequest:(id)request at:(double)at;
@end

@implementation OSASubmitter

- (OSASubmitter)init
{
  v6.receiver = self;
  v6.super_class = OSASubmitter;
  v2 = [(OSASubmitter *)&v6 init];
  v3 = v2;
  if (v2)
  {
    connectionType = v2->_connectionType;
    v2->_connectionType = @"proxied";
  }

  return v3;
}

- (void)prefaceSubmission:(id)submission withData:(id)data usingArchive:(id)archive andHeaders:(id)headers
{
  v30 = *MEMORY[0x277D85DE8];
  submissionCopy = submission;
  dataCopy = data;
  archiveCopy = archive;
  headersCopy = headers;
  v13 = [dataCopy objectForKeyedSubscript:@"content"];
  if ([v13 length])
  {
    v14 = [OSAEphemeralLog alloc];
    v15 = [dataCopy objectForKeyedSubscript:@"metadata"];
    v16 = [(OSAEphemeralLog *)v14 initWithData:v13 andMetadata:v15];

    if (v16)
    {
      v17 = [archiveCopy copyDeflatedDataFromStream:-[OSAEphemeralLog stream](v16 withCap:{"stream"), 4096}];
      if (v17)
      {
        v18 = v17;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v19 = [v18 length];
          metaData = [(OSAEphemeralLog *)v16 metaData];
          *buf = 134218242;
          v27 = v19;
          v28 = 2112;
          v29 = metaData;
          _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "preface payload %ld, metadata: %@", buf, 0x16u);
        }

        v21 = [headersCopy mutableCopy];
        metaData2 = [(OSAEphemeralLog *)v16 metaData];
        [v21 addEntriesFromDictionary:metaData2];

        v23 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v18, "length")}];
        [v21 setValue:v23 forKey:@"length"];

        [v21 setValue:@"deflate" forKey:@"compression"];
        v25 = 0;
        v24 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v21 options:0 error:&v25];
        [submissionCopy appendData:v24];
        [submissionCopy appendBytes:"\n" length:1];
        [submissionCopy appendData:v18];
        [submissionCopy appendBytes:"\n" length:1];
        [(OSAEphemeralLog *)v16 closeFileStream];
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v27) = 4096;
        _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Submission archive too big (> %u) for submission with preface", buf, 8u);
      }
    }
  }
}

- (id)getAdditionalRequestHeaders
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  fastLane = [MEMORY[0x277D36B80] fastLane];
  if (fastLane >= 1)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", fastLane];
    [dictionary setObject:v4 forKeyedSubscript:@"x-fast-lane"];
  }

  if ([dictionary count] && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [(OSASubmitter *)dictionary getAdditionalRequestHeaders];
  }

  return dictionary;
}

- (id)processSubmissionJobs:(id)jobs usingConfig:(id)config summarize:(id)summarize
{
  v117 = *MEMORY[0x277D85DE8];
  jobsCopy = jobs;
  configCopy = config;
  summarizeCopy = summarize;
  Current = CFAbsoluteTimeGetCurrent();
  self->_jobCount = 0;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v96 = configCopy;
  identifier = [configCopy identifier];
  v77 = dictionary;
  [dictionary setObject:identifier forKeyedSubscript:@"name"];

  array = [MEMORY[0x277CBEB18] array];
  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  selfCopy = self;
  getAdditionalRequestHeaders = [(OSASubmitter *)self getAdditionalRequestHeaders];
  v13 = objc_alloc_init(OSAStreamDeflater);
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  v14 = jobsCopy;
  v15 = [v14 countByEnumeratingWithState:&v107 objects:v116 count:16];
  if (!v15)
  {

    v71 = @"success";
    goto LABEL_74;
  }

  v16 = v15;
  v86 = 0;
  v17 = *v108;
  v78 = *v108;
  v79 = v14;
  v88 = v13;
  do
  {
    v18 = 0;
    v80 = v16;
    do
    {
      if (*v108 != v17)
      {
        objc_enumerationMutation(v14);
      }

      v81 = v18;
      v19 = *(*(&v107 + 1) + 8 * v18);
      v20 = [v19 objectForKey:@"routing"];
      v21 = [v19 objectForKeyedSubscript:@"<inactive>"];

      if (v21)
      {
        v111[0] = @"<inactive>";
        v22 = [v19 objectForKeyedSubscript:@"<inactive>"];
        v111[1] = @"routing";
        v112[0] = v22;
        v112[1] = v20;
        v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v112 forKeys:v111 count:2];
        [array addObject:v23];
        goto LABEL_64;
      }

      v84 = v19;
      v24 = [v19 objectForKey:@"logs"];
      v100 = [objc_alloc(MEMORY[0x277CBEB28]) initWithCapacity:0x80000];
      v91 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v24, "count")}];
      v95 = v20;
      LODWORD(v25) = ([v20 isEqualToString:@"anon"] & 1) != 0 || (objc_msgSend(v20, "isEqualToString:", @"beta") & 1) != 0 || (objc_msgSend(v20, "isEqualToString:", @"session") & 1) != 0 || (objc_msgSend(v20, "isEqualToString:", @"ca1") & 1) != 0 || objc_msgSend(v20, "isEqualToString:", @"ca1-ohttp");
      if ([v20 isEqualToString:@"anon"])
      {
        v25 = v25 | 2;
      }

      else
      {
        v25 = v25;
      }

      if (([v20 isEqualToString:@"ca1"] & 1) != 0 || objc_msgSend(v20, "isEqualToString:", @"ca1-ohttp"))
      {
        v25 = v25 | 4;
      }

      v26 = [v96 assembleMetadataAt:v25 withOptions:Current];
      v27 = [v84 objectForKey:@"submission_info"];
      v89 = v26;
      [v26 setValue:v27 forKey:@"submission_info"];

      dictionary3 = [MEMORY[0x277CBEB38] dictionary];
      v29 = [v84 objectForKeyedSubscript:@"<metadata>"];

      if (v29)
      {
        v30 = MEMORY[0x277CCABB0];
        v31 = [v84 objectForKeyedSubscript:@"<metadata>"];
        v32 = [v30 numberWithBool:{objc_msgSend(v31, "BOOLValue")}];
        [dictionary3 setObject:v32 forKeyedSubscript:@"<metadata>"];
      }

      if ([(NSArray *)selfCopy->_internalWhitelist count])
      {
        [dictionary3 setObject:selfCopy->_internalWhitelist forKeyedSubscript:@"<whitelist>"];
      }

      v105 = 0u;
      v106 = 0u;
      v103 = 0u;
      v104 = 0u;
      v22 = v24;
      v33 = v100;
      v94 = [v22 countByEnumeratingWithState:&v103 objects:v115 count:16];
      if (!v94)
      {
        goto LABEL_55;
      }

      v93 = *v104;
      v87 = v22;
      do
      {
        v34 = 0;
        do
        {
          if (*v104 != v93)
          {
            objc_enumerationMutation(v22);
          }

          v35 = *(*(&v103 + 1) + 8 * v34);
          v36 = objc_autoreleasePoolPush();
          v102 = 0;
          v37 = [(OSASubmitter *)selfCopy locateLog:v35 forRouting:v20 usingConfig:v96 options:dictionary3 error:&v102];
          v38 = v102;
          v39 = v38;
          if (!v37)
          {
            if ([v38 code] == 2)
            {
              userInfo = [v39 userInfo];
              v56 = [userInfo objectForKeyedSubscript:@"bug_type"];
              localizedDescription = [v39 localizedDescription];
              [summarizeCopy _recordRetirement:v56 reason:localizedDescription];

              v20 = v95;
            }

            objc_autoreleasePoolPop(v36);
            v33 = v100;
            goto LABEL_51;
          }

          v40 = -[OSAStreamDeflater copyDeflatedDataFromStream:withCap:](v13, "copyDeflatedDataFromStream:withCap:", [v37 stream], 10477568);
          context = v36;
          v98 = v39;
          if (v40)
          {
            v41 = v40;
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
            {
              v60 = [v41 length];
              metaData = [v37 metaData];
              *buf = 138412802;
              *v114 = v35;
              *&v114[8] = 2048;
              *&v114[10] = v60;
              *&v114[18] = 2112;
              *&v114[20] = metaData;
              _os_log_debug_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "'%@' payload %ld, metadata: %@", buf, 0x20u);
            }

            v42 = [v89 mutableCopy];
            metaData2 = [v37 metaData];
            [v42 addEntriesFromDictionary:metaData2];

            v44 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v41, "length")}];
            [v42 setValue:v44 forKey:@"length"];

            [v42 setValue:@"deflate" forKey:@"compression"];
            v101 = 0;
            v45 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v42 options:0 error:&v101];
            v92 = v101;
            v46 = v45;
            v47 = [v45 length];
            v48 = [v41 length];
            v49 = v100;
            if ([v100 length])
            {
              v50 = v47 + v48 + [v100 length] + 2;
              v20 = v95;
              if (v50 > 0x80000 || [v95 isEqualToString:@"ca1-ohttp"])
              {
                v51 = [(OSASubmitter *)selfCopy processJob:v100 forRouting:v95 including:v91 usingConfig:v96 taskings:dictionary2 summarize:summarizeCopy additionalRequestHeaders:getAdditionalRequestHeaders];
                [array addObject:v51];
                v52 = [v51 objectForKeyedSubscript:@"complete"];
                bOOLValue = [v52 BOOLValue];

                v54 = bOOLValue ^ 1;
                HIDWORD(v86) += bOOLValue ^ 1;
                LODWORD(v86) = v86 + bOOLValue;
                v49 = v100;

                goto LABEL_46;
              }

              v54 = 0;
            }

            else
            {
              v54 = 0;
LABEL_46:
              v20 = v95;
            }

            if (![v49 length])
            {
              v59 = [v84 objectForKeyedSubscript:@"<preface>"];
              [(OSASubmitter *)selfCopy prefaceSubmission:v49 withData:v59 usingArchive:v88 andHeaders:v89];

              v20 = v95;
            }

            [v49 appendData:v46];
            [v49 appendBytes:"\n" length:1];
            [v49 appendData:v41];
            [v49 appendBytes:"\n" length:1];
            [v37 closeFileStream];
            [v91 addObject:v37];

            v22 = v87;
            v13 = v88;
            goto LABEL_50;
          }

          if ([(OSAStreamDeflater *)v13 capViolation])
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109378;
              *v114 = 10485760;
              *&v114[4] = 2112;
              *&v114[6] = v35;
              _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Submission archive too big (> %u) for submission with file %@", buf, 0x12u);
            }

            AnalyticsSendEvent();
          }

          bugType = [v37 bugType];
          [summarizeCopy _recordRetirement:bugType reason:@"rejected-capviolation"];

          [v37 retire:"rejected-capviolation"];
          v54 = 0;
LABEL_50:

          objc_autoreleasePoolPop(context);
          v33 = v100;
          if (v54)
          {
            v63 = v22;
            goto LABEL_63;
          }

LABEL_51:
          ++v34;
        }

        while (v94 != v34);
        v62 = [v22 countByEnumeratingWithState:&v103 objects:v115 count:16];
        v94 = v62;
      }

      while (v62);
LABEL_55:

      v63 = [(OSASubmitter *)selfCopy processJob:v33 forRouting:v20 including:v91 usingConfig:v96 taskings:dictionary2 summarize:summarizeCopy additionalRequestHeaders:getAdditionalRequestHeaders];
      [array addObject:v63];
      v64 = [v63 objectForKeyedSubscript:@"contentLength"];

      if (v64)
      {
        v65 = [v63 objectForKeyedSubscript:@"complete"];
        bOOLValue2 = [v65 BOOLValue];

        if (bOOLValue2)
        {
          v67 = HIDWORD(v86);
        }

        else
        {
          v67 = HIDWORD(v86) + 1;
        }

        v68 = v86;
        if (bOOLValue2)
        {
          v68 = v86 + 1;
        }

        v86 = __PAIR64__(v67, v68);
      }

LABEL_63:
      v14 = v79;
      v16 = v80;
      v17 = v78;

      v20 = v95;
      v23 = v100;
LABEL_64:

      v18 = v81 + 1;
    }

    while (v81 + 1 != v16);
    v69 = [v14 countByEnumeratingWithState:&v107 objects:v116 count:16];
    v16 = v69;
  }

  while (v69);

  v70 = @"partial success";
  if (!v86)
  {
    v70 = @"failed";
  }

  if (HIDWORD(v86))
  {
    v71 = v70;
  }

  else
  {
    v71 = @"success";
  }

LABEL_74:
  mEMORY[0x277D36B80] = [MEMORY[0x277D36B80] sharedInstance];
  logDomain = [mEMORY[0x277D36B80] logDomain];

  if (os_log_type_enabled(logDomain, OS_LOG_TYPE_DEFAULT))
  {
    jobCount = selfCopy->_jobCount;
    v75 = CFAbsoluteTimeGetCurrent();
    *buf = 138543874;
    *v114 = v71;
    *&v114[8] = 1024;
    *&v114[10] = jobCount;
    *&v114[14] = 2048;
    *&v114[16] = v75 - Current;
    _os_log_impl(&dword_25D12D000, logDomain, OS_LOG_TYPE_DEFAULT, "Submission Result: %{public}@ after %u job(s), elapsed time %.2f s", buf, 0x1Cu);
  }

  [v77 setObject:v71 forKeyedSubscript:@"result"];
  [v77 setObject:array forKeyedSubscript:@"jobs"];
  [v77 setObject:dictionary2 forKeyedSubscript:@"taskings"];

  return v77;
}

- (id)locateLog:(id)log forRouting:(id)routing usingConfig:(id)config options:(id)options error:(id *)error
{
  v11 = MEMORY[0x277D36B68];
  optionsCopy = options;
  configCopy = config;
  routingCopy = routing;
  logCopy = log;
  v16 = [[v11 alloc] initWithPath:logCopy forRouting:routingCopy usingConfig:configCopy options:optionsCopy error:error];

  return v16;
}

- (id)applyTasking:(id)tasking taskId:(id)id usingConfig:(id)config fromBlob:(id)blob
{
  v19[4] = *MEMORY[0x277D85DE8];
  taskingCopy = tasking;
  idCopy = id;
  configCopy = config;
  blobCopy = blob;
  if ([configCopy isProxy])
  {
    [MEMORY[0x277D36B88] proxyTasking:taskingCopy taskId:idCopy usingConfig:configCopy fromBlob:blobCopy];
  }

  else
  {
    [MEMORY[0x277D36B88] applyTasking:taskingCopy taskId:idCopy fromBlob:blobCopy];
  }
  v13 = ;
  if (([idCopy isEqualToString:@"-1"] & 1) == 0)
  {
    v18[0] = @"action";
    v18[1] = @"routing";
    v19[0] = @"received";
    v19[1] = taskingCopy;
    v19[2] = idCopy;
    v18[2] = @"taskId";
    v18[3] = @"blob";
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(blobCopy, "length")}];
    v19[3] = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:4];
    v16 = [v15 mutableCopy];

    if ([configCopy isProxy])
    {
      [v16 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"proxied"];
    }

    AnalyticsSendEvent();
  }

  return v13;
}

- (id)processJob:(id)job forRouting:(id)routing including:(id)including usingConfig:(id)config taskings:(id)taskings summarize:(id)summarize additionalRequestHeaders:(id)headers
{
  v244 = *MEMORY[0x277D85DE8];
  jobCopy = job;
  routingCopy = routing;
  includingCopy = including;
  configCopy = config;
  taskingsCopy = taskings;
  summarizeCopy = summarize;
  headersCopy = headers;
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v21 = v20;
  v182 = taskingsCopy;
  v22 = [taskingsCopy objectForKeyedSubscript:routingCopy];

  if (v22)
  {
    v186 = 0;
  }

  else
  {
    v186 = [OSASubmitter taskingKeyForRouting:routingCopy withConfig:configCopy];
  }

  v184 = jobCopy;
  v195 = routingCopy;
  v189 = includingCopy;
  v187 = configCopy;
  if (([routingCopy isEqualToString:@"ca1"] & 1) != 0 || objc_msgSend(routingCopy, "isEqualToString:", @"ca1-ohttp"))
  {
    v23 = objc_opt_new();
    v213 = 0u;
    v214 = 0u;
    v215 = 0u;
    v216 = 0u;
    v24 = includingCopy;
    v25 = [v24 countByEnumeratingWithState:&v213 objects:v243 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v214;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v214 != v27)
          {
            objc_enumerationMutation(v24);
          }

          filepath = [*(*(&v213 + 1) + 8 * i) filepath];
          [v23 addObject:filepath];
        }

        v26 = [v24 countByEnumeratingWithState:&v213 objects:v243 count:16];
      }

      while (v26);
    }

    v30 = MEMORY[0x277D36B78];
    v31 = *MEMORY[0x277D36BF8];
    v241 = *MEMORY[0x277D36C00];
    v242 = v23;
    v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v242 forKeys:&v241 count:1];
    [v30 recordEvent:v31 with:v32];

    routingCopy = v195;
    includingCopy = v189;
    configCopy = v187;
  }

  self->_responseCode = 0;
  if (![jobCopy length] && (!v186 || !-[OSASubmitter taskingNeedsRefreshForRouting:at:](self, "taskingNeedsRefreshForRouting:at:", routingCopy, v21)))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      identifier = [configCopy identifier];
      *buf = 138412546;
      v236 = identifier;
      v237 = 2112;
      *v238 = routingCopy;
      _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "nothing to do for %@-%@", buf, 0x16u);
    }

    v218[0] = MEMORY[0x277CBEC38];
    v217[0] = @"complete";
    v217[1] = @"logCount";
    v53 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(includingCopy, "count")}];
    v217[2] = @"routing";
    routingCopy = v53;
    v218[1] = v53;
    v218[2] = routingCopy;
    [MEMORY[0x277CBEAC0] dictionaryWithObjects:v218 forKeys:v217 count:3];
    v55 = v54 = routingCopy;
    goto LABEL_129;
  }

  ++self->_jobCount;
  v33 = configCopy;
  v34 = MEMORY[0x277CCACA8];
  identifier2 = [configCopy identifier];
  routingCopy = [v34 stringWithFormat:@"job_%@-%u-%@", identifier2, self->_jobCount, routingCopy];

  v36 = MEMORY[0x277CCACA8];
  productVersion = [configCopy productVersion];
  releaseType = [configCopy releaseType];
  v39 = [v36 stringWithFormat:@"%@-%@", productVersion, releaseType];

  v240[0] = @"application/vnd.apple.ips";
  v239[0] = @"Content-Type";
  v239[1] = @"x-hardware-model";
  modelCode = [v33 modelCode];
  v240[1] = modelCode;
  v239[2] = @"x-os-version";
  buildVersion = [v33 buildVersion];
  v240[2] = buildVersion;
  v239[3] = @"x-os-train";
  osTrain = [v33 osTrain];
  v240[3] = osTrain;
  v239[4] = @"x-target-audience";
  targetAudience = [v33 targetAudience];
  v240[4] = targetAudience;
  v179 = v39;
  v240[5] = v39;
  v239[5] = @"x-product-release";
  v239[6] = @"x-routing";
  v240[6] = routingCopy;
  v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v240 forKeys:v239 count:7];
  v188 = [v44 mutableCopy];

  v45 = v195;
  if ([v195 isEqualToString:@"ca1-ohttp"])
  {
    [v188 setObject:@"ca1" forKeyedSubscript:@"x-routing"];
  }

  v46 = v187;
  currentTaskingIDByRouting = [v187 currentTaskingIDByRouting];
  v48 = [currentTaskingIDByRouting objectForKeyedSubscript:v195];

  v181 = v48;
  if (v186)
  {
    v49 = v48 == 0;
  }

  else
  {
    v49 = 1;
  }

  v50 = !v49;
  v175 = v50;
  if (v49)
  {
    [v188 setObject:@"NO" forKeyedSubscript:@"x-tasking-requested"];
    v51 = v189;
  }

  else
  {
    [v188 setObject:@"YES" forKeyedSubscript:@"x-tasking-requested"];
    [v188 setObject:v186 forKeyedSubscript:@"x-crashreporter-key"];
    v51 = v189;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v236 = v195;
      v237 = 2114;
      *v238 = v186;
      *&v238[8] = 2114;
      *&v238[10] = v48;
      _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Requesting tasking for routing %{public}@ using key %{public}@ with task_id %{public}@", buf, 0x20u);
    }

    [v188 setObject:v48 forKeyedSubscript:@"x-task-id"];
  }

  if ([v187 isInDeviceRecoveryEnvironment])
  {
    recoveryModeReason = [v187 recoveryModeReason];
    [v188 setObject:recoveryModeReason forKeyedSubscript:@"x-dre-submission"];
  }

  if (([v195 isEqualToString:@"ca1"] & 1) != 0 || objc_msgSend(v195, "isEqualToString:", @"ca1-ohttp"))
  {
    firstObject = [v51 firstObject];
    v58 = firstObject;
    if (firstObject)
    {
      metaData = [firstObject metaData];
      v60 = [metaData objectForKeyedSubscript:*MEMORY[0x277D36C08]];
      [v188 setObject:v60 forKeyedSubscript:@"x-incident-id"];

      v46 = v187;
    }
  }

  [v188 addEntriesFromDictionary:headersCopy];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v61 = [jobCopy length];
    v62 = [v51 count];
    *buf = 138412802;
    v236 = routingCopy;
    v237 = 2048;
    *v238 = v61;
    *&v238[8] = 2048;
    *&v238[10] = v62;
    _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "'%@' posting content of %lu bytes from %lu logs", buf, 0x20u);
  }

  if (([v195 isEqualToString:@"ca1"] & 1) != 0 || objc_msgSend(v195, "isEqualToString:", @"ca1-ohttp"))
  {
    v63 = objc_opt_new();
    v209 = 0u;
    v210 = 0u;
    v211 = 0u;
    v212 = 0u;
    v64 = v51;
    v65 = [v64 countByEnumeratingWithState:&v209 objects:v234 count:16];
    if (v65)
    {
      v66 = v65;
      v67 = *v210;
      do
      {
        for (j = 0; j != v66; ++j)
        {
          if (*v210 != v67)
          {
            objc_enumerationMutation(v64);
          }

          filepath2 = [*(*(&v209 + 1) + 8 * j) filepath];
          [v63 addObject:filepath2];
        }

        v66 = [v64 countByEnumeratingWithState:&v209 objects:v234 count:16];
      }

      while (v66);
    }

    v70 = MEMORY[0x277D36B78];
    v71 = *MEMORY[0x277D36BE0];
    v72 = *MEMORY[0x277D36BF0];
    v233[0] = v63;
    v73 = *MEMORY[0x277D36BE8];
    v232[0] = v72;
    v232[1] = v73;
    v74 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(jobCopy, "length")}];
    v233[1] = v74;
    v75 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v233 forKeys:v232 count:2];
    [v70 recordEvent:v71 with:v75];

    v45 = v195;
    v51 = v189;
    v46 = v187;
  }

  if ([v45 isEqualToString:@"ca1-ohttp"])
  {
    v76 = 2;
  }

  else
  {
    v76 = +[OSASubmitter submitToUAT];
  }

  Current = CFAbsoluteTimeGetCurrent();
  v78 = jobCopy;
  v177 = v76;
  [(OSASubmitter *)self postContent:jobCopy withHeaders:v188 toEndpoint:v76];
  v79 = CFAbsoluteTimeGetCurrent() - Current;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    responseCode = self->_responseCode;
    v81 = [(NSData *)self->_responseData length];
    *buf = 138412802;
    v236 = routingCopy;
    v237 = 1024;
    *v238 = responseCode;
    *&v238[4] = 2048;
    *&v238[6] = v81;
    _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "'%@' server responded %d with %lu-byte payload", buf, 0x1Cu);
  }

  modelCode2 = [v46 modelCode];
  mEMORY[0x277D36B80] = [MEMORY[0x277D36B80] sharedInstance];
  modelCode3 = [mEMORY[0x277D36B80] modelCode];
  v85 = [modelCode2 isEqualToString:modelCode3];

  v230[0] = @"response";
  v86 = [MEMORY[0x277CCABB0] numberWithInteger:self->_responseCode];
  connectionType = self->_connectionType;
  v231[0] = v86;
  v231[1] = connectionType;
  v230[1] = @"connection";
  v230[2] = @"routing";
  v231[2] = v45;
  v230[3] = @"bytes";
  v88 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v78, "length")}];
  v231[3] = v88;
  v230[4] = @"logs";
  v89 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v51, "count")}];
  v231[4] = v89;
  v230[5] = @"seconds";
  v90 = [MEMORY[0x277CCABB0] numberWithDouble:v79];
  v231[5] = v90;
  v230[6] = @"proxied";
  v91 = v85;
  v92 = [MEMORY[0x277CCABB0] numberWithBool:v85 ^ 1u];
  v231[6] = v92;
  v93 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v231 forKeys:v230 count:7];
  AnalyticsSendEvent();

  v180 = objc_opt_new();
  v94 = self->_responseCode;
  v95 = v94 == 200;
  if (v94 == 304)
  {
    v95 = 1;
  }

  v176 = v95;
  selfCopy = self;
  if (v94 != 304 && v94 != 200)
  {
    v118 = MEMORY[0x277D36B78];
    v119 = *MEMORY[0x277D36BC8];
    v224 = *MEMORY[0x277D36BC0];
    v120 = [MEMORY[0x277CCABB0] numberWithInteger:v94];
    v225 = v120;
    v121 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v225 forKeys:&v224 count:1];
    [v118 recordEvent:v119 with:v121];

    v108 = 0x277D36000;
    goto LABEL_106;
  }

  v174 = self->_responseCode;
  v207 = 0u;
  v208 = 0u;
  v205 = 0u;
  v206 = 0u;
  obj = v189;
  v96 = [obj countByEnumeratingWithState:&v205 objects:v229 count:16];
  if (v96)
  {
    v97 = v96;
    v98 = *v206;
    do
    {
      for (k = 0; k != v97; ++k)
      {
        if (*v206 != v98)
        {
          objc_enumerationMutation(obj);
        }

        v100 = *(*(&v205 + 1) + 8 * k);
        v227[0] = @"bugType";
        bugType = [v100 bugType];
        v102 = bugType;
        v103 = v195;
        if (bugType)
        {
          v103 = bugType;
        }

        v228[0] = v103;
        v227[1] = @"proxied";
        v104 = [MEMORY[0x277CCABB0] numberWithBool:v91 ^ 1u];
        v227[2] = @"logCount";
        v228[1] = v104;
        v228[2] = &unk_286EB2208;
        v105 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v228 forKeys:v227 count:3];
        AnalyticsSendEvent();
      }

      v97 = [obj countByEnumeratingWithState:&v205 objects:v229 count:16];
    }

    while (v97);
  }

  v203 = 0u;
  v204 = 0u;
  v201 = 0u;
  v202 = 0u;
  v106 = selfCopy->_responseHeaders;
  v107 = [(NSDictionary *)v106 countByEnumeratingWithState:&v201 objects:v226 count:16];
  v108 = 0x277D36000uLL;
  v94 = v174;
  if (!v107)
  {
    goto LABEL_104;
  }

  v109 = v107;
  v110 = *v202;
  while (2)
  {
    for (m = 0; m != v109; ++m)
    {
      if (*v202 != v110)
      {
        objc_enumerationMutation(v106);
      }

      v112 = *(*(&v201 + 1) + 8 * m);
      if (![v112 compare:@"x-task-id" options:1])
      {
        if (v181)
        {
          [v180 setObject:v181 forKeyedSubscript:@"lastId"];
        }

        v113 = selfCopy->_responseCode;
        if (v113 == 304)
        {
          [v180 setObject:@"affirmed" forKeyedSubscript:@"action"];
          [v180 setObject:v181 forKeyedSubscript:@"taskId"];
          [v180 removeObjectForKey:@"lastId"];
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v236 = v195;
            v115 = MEMORY[0x277D86220];
            v116 = "device is already in the correct %@ investigation";
            v117 = OS_LOG_TYPE_DEFAULT;
            goto LABEL_89;
          }

LABEL_103:
          [v182 setObject:v180 forKeyedSubscript:v195];
          goto LABEL_104;
        }

        if (v113 != 200)
        {
          goto LABEL_103;
        }

        v114 = [v182 objectForKeyedSubscript:v195];

        if (v114)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v236 = v195;
            v115 = MEMORY[0x277D86220];
            v116 = "Unexpected response data; already installed tasking blob of type %@ this session";
            v117 = OS_LOG_TYPE_INFO;
LABEL_89:
            _os_log_impl(&dword_25D12D000, v115, v117, v116, buf, 0xCu);
            goto LABEL_103;
          }

          goto LABEL_103;
        }

        v123 = [(NSDictionary *)selfCopy->_responseHeaders objectForKeyedSubscript:v112];
        if (![v123 length])
        {
          [v180 setObject:@"unchanged" forKeyedSubscript:@"action"];
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v236 = v195;
            _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "no tasking id returned for %@", buf, 0xCu);
          }

          goto LABEL_102;
        }

        mEMORY[0x277D36B80]2 = [MEMORY[0x277D36B80] sharedInstance];
        if ([mEMORY[0x277D36B80]2 appleInternal])
        {
          v125 = selfCopy;
          allowUnsignedBlobs = selfCopy->_allowUnsignedBlobs;

          if (allowUnsignedBlobs)
          {
            v127 = selfCopy->_responseData;
            v128 = 0;
LABEL_101:
            v132 = [(OSASubmitter *)selfCopy applyTasking:v195 taskId:v123 usingConfig:v187 fromBlob:v127];
            [v180 addEntriesFromDictionary:v132];

LABEL_102:
            goto LABEL_103;
          }
        }

        else
        {

          v125 = selfCopy;
        }

        if ([(NSData *)v125->_responseData length])
        {
          responseData = v125->_responseData;
          v200 = 0;
          v127 = [OSASubmitter extractAuthenticatedBlob:responseData error:&v200];
          v130 = v200;
          v128 = v130;
          if (v130)
          {
            localizedDescription = [v130 localizedDescription];
            [v180 setObject:localizedDescription forKeyedSubscript:@"authenticationError"];
          }
        }

        else
        {
          v128 = 0;
          v127 = 0;
        }

        goto LABEL_101;
      }
    }

    v109 = [(NSDictionary *)v106 countByEnumeratingWithState:&v201 objects:v226 count:16];
    if (v109)
    {
      continue;
    }

    break;
  }

LABEL_104:

  self = selfCopy;
  v122 = v195;
  if (v175)
  {
    [(OSASubmitter *)selfCopy updateTaskingLastSuccessfulRequest:v195 at:v21];
  }

LABEL_106:
  localizedDescription2 = [(NSError *)self->_responseError localizedDescription];
  v134 = localizedDescription2;
  v135 = &stru_286EAD908;
  if (localizedDescription2)
  {
    v135 = localizedDescription2;
  }

  obja = v135;

  sharedInstance = [*(v108 + 2944) sharedInstance];
  appleInternal = [sharedInstance appleInternal];

  v138 = v189;
  if (appleInternal)
  {
    sharedInstance2 = [*(v108 + 2944) sharedInstance];
    pathDiagnostics = [sharedInstance2 pathDiagnostics];
    v141 = [pathDiagnostics stringByAppendingPathComponent:routingCopy];
    v142 = [v141 stringByAppendingPathExtension:@"ips"];

    [v184 writeToFile:v142 atomically:0];
    v222[0] = @"logs";
    v143 = [v189 valueForKey:@"getFilenames"];
    v223[0] = v143;
    v223[1] = v188;
    v222[1] = @"postHeaders";
    v222[2] = @"response";
    v144 = [MEMORY[0x277CCABB0] numberWithInteger:self->_responseCode];
    responseHeaders = MEMORY[0x277CBEC10];
    v146 = self->_responseData;
    if (self->_responseHeaders)
    {
      responseHeaders = self->_responseHeaders;
    }

    v223[2] = v144;
    v223[3] = responseHeaders;
    v222[3] = @"responseHeaders";
    v222[4] = @"responseError";
    v223[4] = obja;
    v222[5] = @"payloadLength";
    v147 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[NSData length](v146, "length")}];
    v223[5] = v147;
    v148 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v223 forKeys:v222 count:6];

    sharedInstance3 = [*(v108 + 2944) sharedInstance];
    pathDiagnostics2 = [sharedInstance3 pathDiagnostics];
    v151 = [pathDiagnostics2 stringByAppendingPathComponent:routingCopy];
    v152 = [v151 stringByAppendingPathExtension:@"diagnostics"];
    [v148 writeToFile:v152 atomically:1];

    v138 = v189;
  }

  if (v94 == 304 || v94 == 200)
  {
    v198 = 0u;
    v199 = 0u;
    v196 = 0u;
    v197 = 0u;
    v153 = v138;
    v154 = [v153 countByEnumeratingWithState:&v196 objects:v221 count:16];
    if (v154)
    {
      v155 = v154;
      LODWORD(v156) = 0;
      v157 = *v197;
      do
      {
        for (n = 0; n != v155; ++n)
        {
          if (*v197 != v157)
          {
            objc_enumerationMutation(v153);
          }

          v159 = *(*(&v196 + 1) + 8 * n);
          bugType2 = [v159 bugType];
          v161 = [bugType2 isEqualToString:@"193"];

          dryRun = self->_dryRun;
          bugType3 = [v159 bugType];
          if (dryRun)
          {
            [summarizeCopy _recordRetirement:bugType3 reason:@"pending"];
          }

          else
          {
            [summarizeCopy _recordRetirement:bugType3 reason:@"submitted"];

            [v159 retire:"submitted"];
          }

          v156 = (v156 + v161);
          self = selfCopy;
        }

        v155 = [v153 countByEnumeratingWithState:&v196 objects:v221 count:16];
      }

      while (v155);
    }

    else
    {
      v156 = 0;
    }

    v138 = v189;
  }

  else
  {
    v156 = 0;
  }

  v219[0] = @"complete";
  v194 = [MEMORY[0x277CCABB0] numberWithBool:v176];
  v220[0] = v194;
  v220[1] = v195;
  v219[1] = @"routing";
  v219[2] = @"endpoint";
  v178 = [OSASubmitter endpointToString:v177];
  requestURL = self->_requestURL;
  v220[2] = v178;
  v220[3] = requestURL;
  v219[3] = @"url";
  v219[4] = @"logCount";
  v165 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v138, "count")}];
  v220[4] = v165;
  v219[5] = @"aggdCount";
  v166 = [MEMORY[0x277CCABB0] numberWithInt:v156];
  v220[5] = v166;
  v219[6] = @"contentLength";
  v167 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v184, "length")}];
  v220[6] = v167;
  v219[7] = @"response";
  v168 = [MEMORY[0x277CCABB0] numberWithInteger:self->_responseCode];
  selfCopy2 = self;
  v170 = v168;
  v220[7] = v168;
  v220[8] = obja;
  v219[8] = @"error";
  v219[9] = @"payloadLength";
  v171 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[NSData length](selfCopy2->_responseData, "length")}];
  v220[9] = v171;
  v220[10] = v180;
  v219[10] = @"tasking";
  v219[11] = @"seconds";
  v172 = [MEMORY[0x277CCABB0] numberWithDouble:v79];
  v220[11] = v172;
  v55 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v220 forKeys:v219 count:12];

  includingCopy = v189;
  jobCopy = v184;
  [v189 removeAllObjects];
  [v184 setLength:0];

  v54 = v195;
  configCopy = v187;
LABEL_129:

  return v55;
}

- (void)cheaterTaskingWithSets:(id)sets usingConfig:(id)config resultsCallback:(id)callback
{
  callbackCopy = callback;
  configCopy = config;
  setsCopy = sets;
  v10 = objc_opt_new();
  v11 = [(OSASubmitter *)self processSubmissionJobs:setsCopy usingConfig:configCopy summarize:v10];

  if (callbackCopy)
  {
    callbackCopy[2](callbackCopy, v11);
  }
}

- (void)submitLogsUsingPolicy:(id)policy resultsCallback:(id)callback
{
  v190[1] = *MEMORY[0x277D85DE8];
  policyCopy = policy;
  callbackCopy = callback;
  v7 = 0x277D36000uLL;
  mEMORY[0x277D36B80] = [MEMORY[0x277D36B80] sharedInstance];
  submissionsDisabled = [mEMORY[0x277D36B80] submissionsDisabled];

  if (submissionsDisabled)
  {
    v10 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v10)
    {
      [(OSASubmitter *)v10 submitLogsUsingPolicy:v11 resultsCallback:v12, v13, v14, v15, v16, v17];
    }

    v18 = callbackCopy;
    if (callbackCopy)
    {
      (*(callbackCopy + 2))(callbackCopy, &unk_286EB22D8);
    }

    goto LABEL_128;
  }

  v133 = objc_opt_new();
  v129 = objc_opt_new();
  mEMORY[0x277D36B80]2 = [MEMORY[0x277D36B80] sharedInstance];
  appleInternal = [mEMORY[0x277D36B80]2 appleInternal];

  if (appleInternal)
  {
    mEMORY[0x277D36B80]3 = [MEMORY[0x277D36B80] sharedInstance];
    pathDiagnostics = [mEMORY[0x277D36B80]3 pathDiagnostics];

    if (pathDiagnostics)
    {
      v23 = MEMORY[0x277D36B68];
      v189 = *MEMORY[0x277D36C48];
      v190[0] = pathDiagnostics;
      v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v190 forKeys:&v189 count:1];
      [v23 iterateLogsWithOptions:v24 usingBlock:&__block_literal_global];
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Not clearing past submission artifacts because path is not available.", buf, 2u);
    }
  }

  v25 = MEMORY[0x277D36B68];
  mEMORY[0x277D36B80]4 = [MEMORY[0x277D36B80] sharedInstance];
  pathSubmission = [mEMORY[0x277D36B80]4 pathSubmission];
  v127 = [v25 scanProxies:pathSubmission];

  if ([MEMORY[0x277D36B68] isDataVaultEnabled])
  {
    mEMORY[0x277D36B80]5 = [MEMORY[0x277D36B80] sharedInstance];
    pathSubmissionDataVault = [mEMORY[0x277D36B80]5 pathSubmissionDataVault];

    if (pathSubmissionDataVault)
    {
      v30 = [MEMORY[0x277D36B68] scanProxies:pathSubmissionDataVault];
      v31 = [v127 arrayByAddingObjectsFromArray:v30];

      v127 = v31;
    }

    else
    {
      v32 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (v32)
      {
        [(OSASubmitter *)v32 submitLogsUsingPolicy:v33 resultsCallback:v34, v35, v36, v37, v38, v39];
      }
    }
  }

  [MEMORY[0x277D36B68] createRetiredDirectoriesForUser:0];
  if ([policyCopy ignoreProxies])
  {
    v40 = &unk_286EB23C8;
  }

  else
  {
    v40 = [&unk_286EB23E0 arrayByAddingObjectsFromArray:v127];
  }

  v168 = 0u;
  v169 = 0u;
  v166 = 0u;
  v167 = 0u;
  obj = v40;
  v142 = policyCopy;
  v134 = [obj countByEnumeratingWithState:&v166 objects:v188 count:16];
  if (v134)
  {
    v132 = *v167;
    v143 = *MEMORY[0x277D36BD8];
    v144 = *MEMORY[0x277D36BD0];
    v41 = @"routing";
    do
    {
      for (i = 0; i != v134; i = v58 + 1)
      {
        if (*v167 != v132)
        {
          objc_enumerationMutation(obj);
        }

        v43 = *(*(&v166 + 1) + 8 * i);
        context = objc_autoreleasePoolPush();
        v138 = i;
        if ([v43 length])
        {
          lastPathComponent = [v43 lastPathComponent];
          v187 = v43;
          primarySubmissionPaths = [MEMORY[0x277CBEA60] arrayWithObjects:&v187 count:1];
        }

        else
        {
          primarySubmissionPaths = [(OSASubmitter *)self primarySubmissionPaths];
          lastPathComponent = @"Primary";
        }

        v164 = 0u;
        v165 = 0u;
        v162 = 0u;
        v163 = 0u;
        v145 = primarySubmissionPaths;
        v45 = [v145 countByEnumeratingWithState:&v162 objects:v186 count:16];
        if (v45)
        {
          v46 = v45;
          v47 = *v163;
          do
          {
            for (j = 0; j != v46; ++j)
            {
              if (*v163 != v47)
              {
                objc_enumerationMutation(v145);
              }

              [(OSASubmitter *)self prepConfig:*(*(&v162 + 1) + 8 * j)];
            }

            v46 = [v145 countByEnumeratingWithState:&v162 objects:v186 count:16];
          }

          while (v46);
        }

        if ([v43 length])
        {
          sharedInstance = [objc_alloc(MEMORY[0x277D36B70]) initFromPath:v43];
        }

        else
        {
          sharedInstance = [*(v7 + 2944) sharedInstance];
        }

        v50 = sharedInstance;
        v51 = MEMORY[0x277D86220];
        v52 = lastPathComponent;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v183 = lastPathComponent;
          _os_log_impl(&dword_25D12D000, v51, OS_LOG_TYPE_DEFAULT, "----- '%{public}@' -----", buf, 0xCu);
        }

        if (v50)
        {
          v53 = [policyCopy buildSubmissionTemplateForConfig:v50];
          v54 = [v53 copy];

          if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412546;
            v183 = v50;
            v184 = 2112;
            v185 = v54;
            _os_log_debug_impl(&dword_25D12D000, v51, OS_LOG_TYPE_DEBUG, "config: %@\npolicy: %@", buf, 0x16u);
          }

          v135 = v50;
          v55 = MEMORY[0x277D36B68];
          scanOptions = [policyCopy scanOptions];
          v136 = v54;
          if ([v55 scanLogs:v54 from:v145 options:scanOptions])
          {

            goto LABEL_50;
          }

          hasTasking = [policyCopy hasTasking];

          if (hasTasking)
          {
LABEL_50:
            sharedInstance2 = [*(v7 + 2944) sharedInstance];
            logDomain = [sharedInstance2 logDomain];

            if (os_log_type_enabled(logDomain, OS_LOG_TYPE_DEFAULT))
            {
              sharedInstance3 = [*(v7 + 2944) sharedInstance];
              optInApple = [sharedInstance3 optInApple];
              *buf = 138543618;
              v64 = @"OUT";
              if (optInApple)
              {
                v64 = @"IN";
              }

              v183 = lastPathComponent;
              v184 = 2112;
              v185 = v64;
              _os_log_impl(&dword_25D12D000, logDomain, OS_LOG_TYPE_DEFAULT, "Initiating submission for '%{public}@' optIn: %@", buf, 0x16u);
            }

            v160 = 0u;
            v161 = 0u;
            v158 = 0u;
            v159 = 0u;
            v65 = v54;
            v66 = [(__CFString *)v65 countByEnumeratingWithState:&v158 objects:v181 count:16];
            if (v66)
            {
              v67 = v66;
              v68 = *v159;
              do
              {
                for (k = 0; k != v67; ++k)
                {
                  if (*v159 != v68)
                  {
                    objc_enumerationMutation(v65);
                  }

                  v70 = *(*(&v158 + 1) + 8 * k);
                  v71 = [v70 objectForKeyedSubscript:v41];
                  if ([v71 isEqualToString:@"ca1"])
                  {
                  }

                  else
                  {
                    v72 = [v70 objectForKeyedSubscript:v41];
                    v73 = [v72 isEqualToString:@"ca1-ohttp"];

                    if (!v73)
                    {
                      goto LABEL_65;
                    }
                  }

                  v74 = MEMORY[0x277D36B78];
                  v179 = v143;
                  v75 = [v70 objectForKeyedSubscript:@"logs"];
                  v76 = v75;
                  v77 = MEMORY[0x277CBEBF8];
                  if (v75)
                  {
                    v77 = v75;
                  }

                  v180 = v77;
                  v78 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v180 forKeys:&v179 count:1];
                  [v74 recordEvent:v144 with:v78];

LABEL_65:
                  v41 = @"routing";
                }

                v67 = [(__CFString *)v65 countByEnumeratingWithState:&v158 objects:v181 count:16];
              }

              while (v67);
            }

            v50 = v135;
            v79 = [(OSASubmitter *)self processSubmissionJobs:v65 usingConfig:v135 summarize:v129];
            v57 = v79;
            if (self->_dryRun)
            {
              policyCopy = v142;
              v7 = 0x277D36000;
              v58 = v138;
              v80 = v136;
LABEL_97:

              v52 = lastPathComponent;
              goto LABEL_98;
            }

            v156 = 0u;
            v157 = 0u;
            v154 = 0u;
            v155 = 0u;
            v131 = v79;
            v81 = [v79 objectForKeyedSubscript:@"jobs"];
            v82 = [v81 countByEnumeratingWithState:&v154 objects:v178 count:16];
            if (v82)
            {
              v83 = v82;
              v84 = *v155;
              do
              {
                for (m = 0; m != v83; ++m)
                {
                  if (*v155 != v84)
                  {
                    objc_enumerationMutation(v81);
                  }

                  v86 = *(*(&v154 + 1) + 8 * m);
                  v87 = [v86 objectForKeyedSubscript:@"<inactive>"];

                  if (!v87)
                  {
                    v88 = [v86 objectForKeyedSubscript:v41];
                    v89 = [v86 objectForKeyedSubscript:@"complete"];
                    bOOLValue = [v89 BOOLValue];

                    [v142 registerRouting:v88 result:bOOLValue];
                  }
                }

                v83 = [v81 countByEnumeratingWithState:&v154 objects:v178 count:16];
              }

              while (v83);
              goto LABEL_94;
            }

            policyCopy = v142;
          }

          else
          {
            if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v183 = lastPathComponent;
              _os_log_impl(&dword_25D12D000, v51, OS_LOG_TYPE_DEFAULT, "No logs/tasking found for submission from '%{public}@'", buf, 0xCu);
            }

            dictionary = [MEMORY[0x277CBEB38] dictionary];
            identifier = [(__CFString *)v135 identifier];
            [dictionary setObject:identifier forKeyedSubscript:@"name"];

            [dictionary setObject:@"success" forKeyedSubscript:@"result"];
            v81 = objc_opt_new();
            v131 = dictionary;
            [dictionary setObject:v81 forKeyedSubscript:@"jobs"];
            v152 = 0u;
            v153 = 0u;
            v150 = 0u;
            v151 = 0u;
            v140 = v54;
            v93 = [(__CFString *)v140 countByEnumeratingWithState:&v150 objects:v177 count:16];
            if (v93)
            {
              v94 = v93;
              v141 = *v151;
              do
              {
                for (n = 0; n != v94; ++n)
                {
                  if (*v151 != v141)
                  {
                    objc_enumerationMutation(v140);
                  }

                  v96 = *(*(&v150 + 1) + 8 * n);
                  v97 = [v96 objectForKeyedSubscript:v41];
                  [v96 objectForKeyedSubscript:@"<inactive>"];
                  v99 = v98 = v41;

                  if (v99)
                  {
                    v173[0] = @"<inactive>";
                    v100 = [v96 objectForKeyedSubscript:@"<inactive>"];
                    v173[1] = v98;
                    v174[0] = v100;
                    v174[1] = v97;
                    v101 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v174 forKeys:v173 count:2];
                    [v81 addObject:v101];

                    v41 = v98;
                  }

                  else
                  {
                    if (!self->_dryRun)
                    {
                      [v142 registerRouting:v97 result:1];
                    }

                    v175[0] = @"logCount";
                    v41 = @"routing";
                    v175[1] = @"routing";
                    v176[0] = &unk_286EB2220;
                    v176[1] = v97;
                    v100 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v176 forKeys:v175 count:2];
                    [v81 addObject:v100];
                  }
                }

                v94 = [(__CFString *)v140 countByEnumeratingWithState:&v150 objects:v177 count:16];
              }

              while (v94);
            }

LABEL_94:
            policyCopy = v142;
            v50 = v135;
          }

          v7 = 0x277D36000uLL;
          v58 = v138;
          v80 = v136;
          v57 = v131;
          goto LABEL_97;
        }

        v171[0] = @"name";
        v171[1] = @"result";
        v172[0] = lastPathComponent;
        v172[1] = @"skipped - no metadata for proxy device";
        v57 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v172 forKeys:v171 count:2];
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v183 = lastPathComponent;
          _os_log_impl(&dword_25D12D000, v51, OS_LOG_TYPE_DEFAULT, "No submission parameters found from '%{public}@'", buf, 0xCu);
        }

        v58 = v138;
LABEL_98:
        [v133 addObject:v57];

        objc_autoreleasePoolPop(context);
      }

      v134 = [obj countByEnumeratingWithState:&v166 objects:v188 count:16];
    }

    while (v134);
  }

  if (!self->_dryRun)
  {
    [policyCopy persist];
  }

  launchInfo = self->_launchInfo;
  if (launchInfo)
  {
    v103 = [(NSDictionary *)launchInfo mutableCopy];
  }

  else
  {
    v103 = objc_opt_new();
  }

  v104 = v103;
  date = [v103 objectForKeyedSubscript:@"time"];
  if (!date)
  {
    date = [MEMORY[0x277CBEAA8] date];
    [v104 setObject:date forKeyedSubscript:@"time"];
  }

  [v104 setObject:self->_connectionType forKeyedSubscript:@"connection"];
  sharedInstance4 = [*(v7 + 2944) sharedInstance];
  buildVersion = [sharedInstance4 buildVersion];
  [v104 setObject:buildVersion forKeyedSubscript:@"version"];

  v148 = 0u;
  v149 = 0u;
  v146 = 0u;
  v147 = 0u;
  v108 = v133;
  v109 = [v108 countByEnumeratingWithState:&v146 objects:v170 count:16];
  if (v109)
  {
    v110 = v109;
    v111 = *v147;
    LOBYTE(v112) = 1;
    do
    {
      for (ii = 0; ii != v110; ++ii)
      {
        if (*v147 != v111)
        {
          objc_enumerationMutation(v108);
        }

        if (v112)
        {
          v114 = [*(*(&v146 + 1) + 8 * ii) objectForKeyedSubscript:@"result"];
          v112 = [v114 isEqualToString:@"success"];
        }

        else
        {
          v112 = 0;
        }
      }

      v110 = [v108 countByEnumeratingWithState:&v146 objects:v170 count:16];
    }

    while (v110);
  }

  else
  {
    v112 = 1;
  }

  v115 = [MEMORY[0x277CCABB0] numberWithBool:v112];
  [v104 setObject:v115 forKeyedSubscript:@"success"];

  v18 = callbackCopy;
  if (callbackCopy)
  {
    (*(callbackCopy + 2))(callbackCopy, v104);
  }

  mEMORY[0x277D36B80]6 = [MEMORY[0x277D36B80] sharedInstance];
  appleInternal2 = [mEMORY[0x277D36B80]6 appleInternal];

  if (appleInternal2)
  {
    mEMORY[0x277D36B80]7 = [MEMORY[0x277D36B80] sharedInstance];
    pathDiagnostics2 = [mEMORY[0x277D36B80]7 pathDiagnostics];
    v120 = MEMORY[0x277CCACA8];
    v121 = OSANSDateFormat();
    v121 = [v120 stringWithFormat:@"submission-%@", v121];
    v123 = [pathDiagnostics2 stringByAppendingPathComponent:v121];
    v124 = [v123 stringByAppendingPathExtension:@"results"];

    [v104 setObject:v108 forKeyedSubscript:@"submissions"];
    [v104 setObject:v129 forKeyedSubscript:@"retirement-summary"];
    if (([v104 writeToFile:v124 atomically:1] & 1) == 0)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "failed to write results file, saving as txt", buf, 2u);
      }

      v125 = [v124 stringByAppendingPathExtension:@"txt"];

      v126 = [v104 description];
      [v126 writeToFile:v125 atomically:1 encoding:4 error:0];

      v124 = v125;
    }

    v18 = callbackCopy;
  }

  policyCopy = v142;
LABEL_128:
}

void __54__OSASubmitter_submitLogsUsingPolicy_resultsCallback___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 pathExtension];
  if (([v3 isEqualToString:@"ips"] & 1) != 0 || objc_msgSend(v3, "isEqualToString:", @"diagnostics"))
  {
    v4 = [MEMORY[0x277CCAA00] defaultManager];
    [v4 removeItemAtURL:v2 error:0];
  }

  else
  {
    if (![v3 isEqualToString:@"results"])
    {
      goto LABEL_5;
    }

    v5 = [MEMORY[0x277CCAA00] defaultManager];
    v6 = [v2 path];
    v11 = 0;
    v4 = [v5 attributesOfItemAtPath:v6 error:&v11];

    if (v4)
    {
      v7 = [v4 fileModificationDate];
      [v7 timeIntervalSinceNow];
      v9 = fabs(v8);

      if (v9 > 604800.0)
      {
        v10 = [MEMORY[0x277CCAA00] defaultManager];
        [v10 removeItemAtURL:v2 error:0];
      }
    }
  }

LABEL_5:
}

- (BOOL)taskingNeedsRefreshForRouting:(id)routing at:(double)at
{
  routingCopy = routing;
  if ([routingCopy isEqualToString:@"ca1"])
  {
    v7 = 0;
  }

  else
  {
    taskingLastSuccessfulRequest = [(OSASubmitter *)self taskingLastSuccessfulRequest];
    v9 = taskingLastSuccessfulRequest;
    if (taskingLastSuccessfulRequest)
    {
      v10 = [taskingLastSuccessfulRequest objectForKeyedSubscript:routingCopy];
      if (v10)
      {
        v11 = [v9 objectForKeyedSubscript:routingCopy];
        [v11 doubleValue];
        v13 = v12;
      }

      else
      {
        v13 = 0.0;
      }
    }

    else
    {
      v13 = 0.0;
    }

    v14 = at - v13;
    v7 = v14 >= 43200.0;
    if (v14 >= 43200.0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      [OSASubmitter taskingNeedsRefreshForRouting:routingCopy at:v14];
    }
  }

  return v7;
}

+ (id)taskingKeyForRouting:(id)routing withConfig:(id)config
{
  routingCopy = routing;
  configCopy = config;
  if ([routingCopy isEqualToString:@"da3"])
  {
    crashReporterKey = [configCopy crashReporterKey];
    goto LABEL_5;
  }

  if ([routingCopy isEqualToString:@"awd"])
  {
    crashReporterKey = [configCopy awdReporterKey];
LABEL_5:
    v8 = crashReporterKey;
    if (!crashReporterKey)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  if (([routingCopy isEqualToString:@"ca1"] & 1) == 0)
  {
    v8 = 0;
    goto LABEL_11;
  }

  v8 = @"core-analytics-tasking-key";
LABEL_9:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [OSASubmitter taskingKeyForRouting:routingCopy withConfig:v8];
  }

LABEL_11:

  return v8;
}

+ (BOOL)submitToUAT
{
  v2 = objc_alloc(MEMORY[0x277CBEBD0]);
  v3 = [v2 initWithSuiteName:*MEMORY[0x277D36C58]];
  v4 = [v3 BOOLForKey:@"UATSubmissionServer"];

  return v4;
}

+ (id)submissionPathsWithHomeDirectory:(id)directory withProxies:(BOOL)proxies
{
  proxiesCopy = proxies;
  v40 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  if ([MEMORY[0x277D36B68] isDataVaultEnabled])
  {
    mEMORY[0x277D36B80] = [MEMORY[0x277D36B80] sharedInstance];
    pathSubmissionDataVault = [mEMORY[0x277D36B80] pathSubmissionDataVault];

    if ([pathSubmissionDataVault length])
    {
      [array addObject:pathSubmissionDataVault];
    }

    else
    {
      v8 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (v8)
      {
        [(OSASubmitter *)v8 submitLogsUsingPolicy:v9 resultsCallback:v10, v11, v12, v13, v14, v15];
      }
    }
  }

  mEMORY[0x277D36B80]2 = [MEMORY[0x277D36B80] sharedInstance];
  pathSubmission = [mEMORY[0x277D36B80]2 pathSubmission];

  if ([pathSubmission length])
  {
    [array addObject:pathSubmission];
    if (!proxiesCopy)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v18 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v18)
    {
      [(OSASubmitter *)v18 submissionPathsWithHomeDirectory:v19 withProxies:v20, v21, v22, v23, v24, v25];
      if (!proxiesCopy)
      {
        goto LABEL_20;
      }
    }

    else if (!proxiesCopy)
    {
      goto LABEL_20;
    }
  }

  array2 = [MEMORY[0x277CBEB18] array];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v27 = array;
  v28 = [v27 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v36;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v36 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = [MEMORY[0x277D36B68] scanProxies:{*(*(&v35 + 1) + 8 * i), v35}];
        [array2 addObjectsFromArray:v32];
      }

      v29 = [v27 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v29);
  }

  [v27 addObjectsFromArray:array2];
LABEL_20:
  v33 = [MEMORY[0x277CBEA60] arrayWithArray:{array, v35}];

  return v33;
}

- (id)primarySubmissionPaths
{
  launchInfo = [(OSASubmitter *)self launchInfo];
  v3 = [launchInfo objectForKeyedSubscript:@"legacy-homePath"];
  v4 = [OSASubmitter submissionPathsWithHomeDirectory:v3 withProxies:0];

  return v4;
}

+ (id)extractAuthenticatedBlob:(id)blob error:(id *)error
{
  v28 = *MEMORY[0x277D85DE8];
  blobCopy = blob;
  ApplePinned = SecPolicyCreateApplePinned();
  if (ApplePinned)
  {
    v7 = ApplePinned;
    trust = 0;
    v21 = 0;
    v8 = SecCMSVerifyCopyDataAndAttributes();
    if (v8)
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Could not extract signature from blob, error %d", v8];
      v10 = v9;
      if (error)
      {
        v11 = MEMORY[0x277CCA9B8];
        v24 = *MEMORY[0x277CCA450];
        v25 = v9;
        v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
        *error = [v11 errorWithDomain:@"OSASubmitter" code:1 userInfo:v12];
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v27 = v10;
        _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
      }

      v13 = 0;
    }

    else
    {
      error = 0;
      if (SecTrustEvaluateWithError(trust, &error))
      {
        v13 = v21;
      }

      else
      {
        errorCopy = error;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v27 = errorCopy;
          _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Signature on blob is not trusted, %@", buf, 0xCu);
        }

        if (error)
        {
          v17 = errorCopy;
          *error = errorCopy;
        }

        v13 = 0;
      }

      CFRelease(trust);
    }

    CFRelease(v7);
  }

  else
  {
    if (error)
    {
      v14 = MEMORY[0x277CCA9B8];
      v22 = *MEMORY[0x277CCA450];
      v23 = @"Unable to create pinned policy";
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
      *error = [v14 errorWithDomain:@"OSASubmitter" code:2 userInfo:v15];
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v27 = @"Unable to create pinned policy";
      _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
    }

    v13 = 0;
  }

  return v13;
}

+ (id)endpointToString:(int)string
{
  if (string > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_2799BFF58[string];
  }
}

- (void)updateTaskingLastSuccessfulRequest:(id)request at:(double)at
{
  requestCopy = request;
  taskingLastSuccessfulRequest = [(OSASubmitter *)self taskingLastSuccessfulRequest];
  v8 = [taskingLastSuccessfulRequest mutableCopy];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  v13 = v10;

  v11 = [MEMORY[0x277CCABB0] numberWithDouble:at];
  [v13 setObject:v11 forKeyedSubscript:requestCopy];

  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults setObject:v13 forKey:@"taskingLastSuccessfulRequest"];
}

- (id)taskingLastSuccessfulRequest
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults objectForKey:@"taskingLastSuccessfulRequest"];

  return v3;
}

- (void)getAdditionalRequestHeaders
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 138543362;
  selfCopy = self;
  _os_log_debug_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Submission jobs will include additional request headers %{public}@", &v1, 0xCu);
}

- (void)taskingNeedsRefreshForRouting:(uint64_t)a1 at:(double)a2 .cold.1(uint64_t a1, double a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 138412546;
  v3 = a1;
  v4 = 2048;
  v5 = a2;
  _os_log_debug_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%@ tasking needs refresh for routing (time elapsed: %f)", &v2, 0x16u);
}

+ (void)taskingKeyForRouting:(uint64_t)a1 withConfig:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 138412546;
  v3 = a1;
  v4 = 2112;
  v5 = a2;
  _os_log_debug_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%@ tasking key is %@", &v2, 0x16u);
}

@end