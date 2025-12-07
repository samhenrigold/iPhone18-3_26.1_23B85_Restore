@interface DEDRadarFinisher
+ (id)archivedClasses;
- (BOOL)allUploadsComplete;
- (BOOL)allVerificationTasksComplete;
- (DEDBugSession)session;
- (DEDBugSessionConfiguration)configuration;
- (DEDRadarFinisher)initWithCoder:(id)coder;
- (DEDRadarFinisher)initWithConfiguration:(id)configuration session:(id)session;
- (id)createUploadTaskForAttachment:(id)attachment atRadarURL:(id)l;
- (id)folderNameForAttachmentGroup:(id)group;
- (id)getUploadItemForTask:(id)task;
- (id)getVerificationTaskForDataTask:(id)task;
- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data;
- (void)URLSession:(id)session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
- (void)URLSession:(id)session task:(id)task didSendBodyData:(int64_t)data totalBytesSent:(int64_t)sent totalBytesExpectedToSend:(int64_t)send;
- (void)finishRadarUploadSession;
- (void)finishSession:(id)session withConfiguration:(id)configuration;
- (void)processVerifyTaskResults;
- (void)startAttachmentVerificationTasks;
@end

@implementation DEDRadarFinisher

- (DEDRadarFinisher)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = DEDRadarFinisher;
  return [(DEDRadarFinisher *)&v4 init];
}

- (DEDRadarFinisher)initWithConfiguration:(id)configuration session:(id)session
{
  sessionCopy = session;
  v12.receiver = self;
  v12.super_class = DEDRadarFinisher;
  v6 = [(DEDRadarFinisher *)&v12 init];
  if (v6)
  {
    v7 = +[DEDConfiguration sharedInstance];
    v8 = os_log_create([v7 loggingSubsystem], "ded-radar-finisher");
    [(DEDRadarFinisher *)v6 setLog:v8];

    [(DEDRadarFinisher *)v6 setSession:sessionCopy];
    v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
    [(DEDRadarFinisher *)v6 setUploadItems:v9];

    v10 = objc_alloc_init(MEMORY[0x277CBEB58]);
    [(DEDRadarFinisher *)v6 setVerificationTasks:v10];
  }

  return v6;
}

+ (id)archivedClasses
{
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();

  return [v2 setWithObject:v3];
}

- (void)finishSession:(id)session withConfiguration:(id)configuration
{
  v104[3] = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  configurationCopy = configuration;
  v8 = [(DEDRadarFinisher *)self log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_248AD7000, v8, OS_LOG_TYPE_DEFAULT, "Starting Tap-to-Radar finishSession...", buf, 2u);
  }

  v9 = [(DEDRadarFinisher *)self log];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    radarProblemID = [configurationCopy radarProblemID];
    *buf = 138543362;
    v98 = radarProblemID;
    _os_log_impl(&dword_248AD7000, v9, OS_LOG_TYPE_DEFAULT, "config.radarProblemID = %{public}@", buf, 0xCu);
  }

  v11 = [(DEDRadarFinisher *)self log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    radarAuthToken = [configurationCopy radarAuthToken];
    *buf = 138543362;
    v98 = radarAuthToken;
    _os_log_impl(&dword_248AD7000, v11, OS_LOG_TYPE_DEFAULT, "config.radarAuthToken = %{public}@", buf, 0xCu);
  }

  radarProblemID2 = [configurationCopy radarProblemID];
  if (radarProblemID2)
  {
    v14 = radarProblemID2;
    radarAuthToken2 = [configurationCopy radarAuthToken];

    if (radarAuthToken2)
    {
      [(DEDRadarFinisher *)self setSession:sessionCopy];
      [(DEDRadarFinisher *)self setConfiguration:configurationCopy];
      [(DEDRadarFinisher *)self setPercentComplete:0.0];
      [(DEDRadarFinisher *)self setRetryAttemptCount:0];
      v16 = objc_alloc_init(MEMORY[0x277CCABD8]);
      [v16 setQualityOfService:25];
      [v16 setMaxConcurrentOperationCount:1];
      v17 = MEMORY[0x277CCAD38];
      identifier = [sessionCopy identifier];
      v19 = [v17 backgroundSessionConfigurationWithIdentifier:identifier];

      [v19 setUpDataUsageWithConfiguration:configurationCopy];
      [v19 setRequestCachePolicy:1];
      v103[0] = @"Accept";
      v103[1] = @"Content-Type";
      v104[0] = @"application/json";
      v104[1] = @"application/json; charset=utf-8";
      v103[2] = @"Radar-Authentication";
      radarAuthToken3 = [configurationCopy radarAuthToken];
      v104[2] = radarAuthToken3;
      v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v104 forKeys:v103 count:3];
      [v19 setHTTPAdditionalHeaders:v21];

      v76 = v19;
      v77 = v16;
      v22 = [MEMORY[0x277CCAD30] sessionWithConfiguration:v19 delegate:self delegateQueue:v16];
      [(DEDRadarFinisher *)self setUrlSession:v22];

      v23 = objc_alloc(MEMORY[0x277CCACA8]);
      radarProblemID3 = [configurationCopy radarProblemID];
      v25 = [v23 initWithFormat:@"Tap-to-Radar upload for rdar://%@ via diagnosticextensionsd", radarProblemID3];
      [(DEDRadarFinisher *)self urlSession];
      v27 = v26 = sessionCopy;
      [v27 setSessionDescription:v25];

      v28 = objc_alloc_init(DEDDiagnosticCollector);
      availableDiagnosticExtensions = [(DEDDiagnosticCollector *)v28 availableDiagnosticExtensions];

      v30 = objc_opt_new();
      v78 = v26;
      identifier2 = [v26 identifier];
      v75 = availableDiagnosticExtensions;
      v32 = [v30 collectedGroupsWithSessionIdentifier:identifier2 matchingExtensions:availableDiagnosticExtensions];

      v95 = 0u;
      v96 = 0u;
      v93 = 0u;
      v94 = 0u;
      obj = v32;
      v81 = [obj countByEnumeratingWithState:&v93 objects:v102 count:16];
      if (!v81)
      {
        goto LABEL_41;
      }

      v80 = *v94;
      v83 = configurationCopy;
      while (1)
      {
        v33 = 0;
        do
        {
          if (*v94 != v80)
          {
            objc_enumerationMutation(obj);
          }

          v82 = v33;
          v34 = *(*(&v93 + 1) + 8 * v33);
          v87 = [(DEDRadarFinisher *)self folderNameForAttachmentGroup:v34];
          v89 = 0u;
          v90 = 0u;
          v91 = 0u;
          v92 = 0u;
          v35 = MEMORY[0x277D051E0];
          rootURL = [v34 rootURL];
          v37 = [v35 findAllfiles:rootURL];

          v84 = v37;
          v86 = [v37 countByEnumeratingWithState:&v89 objects:v101 count:16];
          if (v86)
          {
            v85 = *v90;
            do
            {
              v38 = 0;
              do
              {
                if (*v90 != v85)
                {
                  objc_enumerationMutation(v84);
                }

                v39 = *(*(&v89 + 1) + 8 * v38);
                v40 = [(DEDRadarFinisher *)self log];
                if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543362;
                  v98 = v39;
                  _os_log_impl(&dword_248AD7000, v40, OS_LOG_TYPE_DEFAULT, "Starting upload for %{public}@", buf, 0xCu);
                }

                lastPathComponent = [v39 lastPathComponent];
                uRLPathAllowedCharacterSet = [MEMORY[0x277CCA900] URLPathAllowedCharacterSet];
                v43 = [lastPathComponent stringByAddingPercentEncodingWithAllowedCharacters:uRLPathAllowedCharacterSet];

                v44 = [MEMORY[0x277CBEBC0] URLWithString:@"https://radar-webservices-ext.apple.com"];
                v45 = MEMORY[0x277CCACA8];
                radarProblemID4 = [configurationCopy radarProblemID];
                v47 = [v45 stringWithFormat:@"problems/%@/attachments/%@/%@", radarProblemID4, v87, v43];
                v48 = [v44 URLByAppendingPathComponent:v47];

                v49 = [(DEDRadarFinisher *)self log];
                if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543362;
                  v98 = v48;
                  _os_log_impl(&dword_248AD7000, v49, OS_LOG_TYPE_DEFAULT, "Calculated Radar API URL: %{public}@", buf, 0xCu);
                }

                v88 = 0;
                v50 = [v39 checkResourceIsReachableAndReturnError:&v88];
                v51 = v88;
                if (v50)
                {
                  selfCopy = self;
                  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
                  path = [v39 path];
                  v55 = [defaultManager attributesOfItemAtPath:path error:0];
                  fileSize = [v55 fileSize];

                  self = selfCopy;
                  if (fileSize)
                  {
                    v57 = [(DEDRadarFinisher *)selfCopy createUploadTaskForAttachment:v39 atRadarURL:v48];
                    v58 = [[DEDRadarUploadItem alloc] initWithUploadTask:v57 andAttachment:v39];
                    v59 = MEMORY[0x277CCACA8];
                    lastPathComponent2 = [v39 lastPathComponent];
                    v61 = [v59 stringWithFormat:@"%@/%@", v87, lastPathComponent2];
                    [(DEDRadarUploadItem *)v58 setRadarAttachmentName:v61];

                    [(DEDRadarUploadItem *)v58 setRadarURL:v48];
                    uploadItems = [(DEDRadarFinisher *)selfCopy uploadItems];
                    [uploadItems addObject:v58];

                    v63 = [(DEDRadarFinisher *)selfCopy log];
                    if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
                    {
                      uploadItems2 = [(DEDRadarFinisher *)selfCopy uploadItems];
                      *buf = 138543362;
                      v98 = uploadItems2;
                      _os_log_impl(&dword_248AD7000, v63, OS_LOG_TYPE_DEFAULT, "self.uploadItems: %{public}@", buf, 0xCu);
                    }

                    [v57 resume];
                    goto LABEL_28;
                  }

                  v57 = [(DEDRadarFinisher *)selfCopy log];
                  if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138543362;
                    v98 = v39;
                    _os_log_error_impl(&dword_248AD7000, v57, OS_LOG_TYPE_ERROR, "File at URL %{public}@ is zero bytes in size, skipping", buf, 0xCu);
LABEL_28:
                    configurationCopy = v83;
                    goto LABEL_35;
                  }

                  configurationCopy = v83;
                }

                else
                {
                  v57 = [(DEDRadarFinisher *)self log];
                  if (os_log_type_enabled(v57, OS_LOG_TYPE_FAULT))
                  {
                    localizedDescription = [v51 localizedDescription];
                    v66 = localizedDescription;
                    *buf = 138543618;
                    v67 = @"unknown";
                    if (localizedDescription)
                    {
                      v67 = localizedDescription;
                    }

                    v98 = v39;
                    v99 = 2114;
                    v100 = v67;
                    _os_log_fault_impl(&dword_248AD7000, v57, OS_LOG_TYPE_FAULT, "File at URL %{public}@ encountered reachable error: %{public}@, skipping", buf, 0x16u);
                  }
                }

LABEL_35:

                ++v38;
              }

              while (v86 != v38);
              v68 = [v84 countByEnumeratingWithState:&v89 objects:v101 count:16];
              v86 = v68;
            }

            while (v68);
          }

          v33 = v82 + 1;
        }

        while (v82 + 1 != v81);
        v81 = [obj countByEnumeratingWithState:&v93 objects:v102 count:16];
        if (!v81)
        {
LABEL_41:

          uploadItems3 = [(DEDRadarFinisher *)self uploadItems];
          v70 = [uploadItems3 count];

          sessionCopy = v78;
          if (!v70)
          {
            v71 = [(DEDRadarFinisher *)self log];
            if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_248AD7000, v71, OS_LOG_TYPE_DEFAULT, "No attachments were sent to radar finisher", buf, 2u);
            }

            session = [(DEDRadarFinisher *)self session];
            [session uploadProgress:1 total:1];

            session2 = [(DEDRadarFinisher *)self session];
            [session2 didFinishUploadingWithError:0];
          }

          goto LABEL_49;
        }
      }
    }
  }

  v74 = [(DEDRadarFinisher *)self log];
  if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
  {
    [DEDRadarFinisher finishSession:withConfiguration:];
  }

  [sessionCopy didFinishUploadingWithError:0];
LABEL_49:
}

- (id)createUploadTaskForAttachment:(id)attachment atRadarURL:(id)l
{
  v16 = *MEMORY[0x277D85DE8];
  attachmentCopy = attachment;
  v7 = [MEMORY[0x277CCAB70] requestWithURL:l cachePolicy:1 timeoutInterval:120.0];
  [v7 setHTTPMethod:@"PUT"];
  [v7 addValue:@"true" forHTTPHeaderField:@"X-Override-File"];
  urlSession = [(DEDRadarFinisher *)self urlSession];
  v9 = [urlSession uploadTaskWithRequest:v7 fromFile:attachmentCopy];

  v10 = [(DEDRadarFinisher *)self log];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543618;
    v13 = attachmentCopy;
    v14 = 2114;
    v15 = v9;
    _os_log_impl(&dword_248AD7000, v10, OS_LOG_TYPE_DEFAULT, "Starting upload for %{public}@ with task: %{public}@", &v12, 0x16u);
  }

  return v9;
}

- (id)folderNameForAttachmentGroup:(id)group
{
  groupCopy = group;
  v4 = +[DEDDevice currentDeviceWithDaemonInfo];
  name = [v4 name];
  v6 = [name stringByReplacingOccurrencesOfString:@"/" withString:@"∕"];

  v7 = [v6 stringByReplacingOccurrencesOfString:@"?" withString:@"﹖"];

  v8 = [v7 stringByReplacingOccurrencesOfString:@"|" withString:@"｜"];

  v9 = v8;
  if ([v4 mediaSystemRole] == 2)
  {
    v10 = @" (L)";
  }

  else
  {
    v11 = v9;
    if ([v4 mediaSystemRole] != 3)
    {
      goto LABEL_6;
    }

    v10 = @" (R)";
  }

  v11 = [v9 stringByAppendingString:v10];

LABEL_6:
  deviceClass = [v4 deviceClass];

  if (v9 != deviceClass)
  {
    deviceClass2 = [v4 deviceClass];
    v14 = [v11 stringByAppendingFormat:@" - %@", deviceClass2];

    v11 = v14;
  }

  hardwareCodename = [v4 hardwareCodename];
  build = [v4 build];
  v17 = [v11 stringByAppendingFormat:@" (%@) - %@", hardwareCodename, build];

  extensionID = [groupCopy extensionID];
  LODWORD(hardwareCodename) = [extensionID isEqualToString:@"com.apple.DiagnosticExtensions.sysdiagnose"];

  if (hardwareCodename)
  {
    v19 = v17;
  }

  else
  {
    displayName = [groupCopy displayName];
    v21 = [displayName stringByReplacingOccurrencesOfString:@"log" withString:@"Log"];

    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@", v17, v21];
  }

  return v19;
}

- (id)getUploadItemForTask:(id)task
{
  v17 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  uploadItems = [(DEDRadarFinisher *)self uploadItems];
  v6 = [uploadItems countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(uploadItems);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        taskIdentifier = [v9 taskIdentifier];
        if (taskIdentifier == [taskCopy taskIdentifier])
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [uploadItems countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (BOOL)allUploadsComplete
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  uploadItems = [(DEDRadarFinisher *)self uploadItems];
  v3 = [uploadItems countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(uploadItems);
        }

        if (![*(*(&v9 + 1) + 8 * i) isUploaded])
        {
          v7 = 0;
          goto LABEL_11;
        }
      }

      v4 = [uploadItems countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v7 = 1;
LABEL_11:

  return v7;
}

- (id)getVerificationTaskForDataTask:(id)task
{
  v17 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  verificationTasks = [(DEDRadarFinisher *)self verificationTasks];
  v6 = [verificationTasks countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(verificationTasks);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        dataTask = [v9 dataTask];

        if (dataTask == taskCopy)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [verificationTasks countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (BOOL)allVerificationTasksComplete
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  verificationTasks = [(DEDRadarFinisher *)self verificationTasks];
  v3 = [verificationTasks countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(verificationTasks);
        }

        if (![*(*(&v9 + 1) + 8 * i) isFinished])
        {
          v7 = 0;
          goto LABEL_11;
        }
      }

      v4 = [verificationTasks countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v7 = 1;
LABEL_11:

  return v7;
}

- (void)startAttachmentVerificationTasks
{
  v34 = *MEMORY[0x277D85DE8];
  configuration = [(DEDRadarFinisher *)self configuration];
  radarProblemID = [configuration radarProblemID];

  if (radarProblemID)
  {
    retryAttemptCount = [(DEDRadarFinisher *)self retryAttemptCount];
    v6 = [(DEDRadarFinisher *)self log];
    v7 = v6;
    if (retryAttemptCount < 3)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        configuration2 = [(DEDRadarFinisher *)self configuration];
        radarProblemID2 = [configuration2 radarProblemID];
        *buf = 138543362;
        v33 = radarProblemID2;
        _os_log_impl(&dword_248AD7000, v7, OS_LOG_TYPE_DEFAULT, "Starting upload verification tasks for rdar://%{public}@", buf, 0xCu);
      }

      v10 = MEMORY[0x277CBEBC0];
      v11 = MEMORY[0x277CCACA8];
      configuration3 = [(DEDRadarFinisher *)self configuration];
      radarProblemID3 = [configuration3 radarProblemID];
      v14 = [v11 stringWithFormat:@"https://radar-webservices.apple.com/problems/%@/attachments", radarProblemID3];
      v15 = [v10 URLWithString:v14];

      v16 = MEMORY[0x277CBEBC0];
      v17 = MEMORY[0x277CCACA8];
      configuration4 = [(DEDRadarFinisher *)self configuration];
      radarProblemID4 = [configuration4 radarProblemID];
      v20 = [v17 stringWithFormat:@"https://radar-webservices.apple.com/problems/%@/pictures", radarProblemID4];
      v21 = [v16 URLWithString:v20];

      verificationTasks = [(DEDRadarFinisher *)self verificationTasks];
      v23 = [DEDDataTask alloc];
      urlSession = [(DEDRadarFinisher *)self urlSession];
      v25 = [urlSession dataTaskWithURL:v15];
      v26 = [(DEDDataTask *)v23 initWithDataTask:v25];
      [verificationTasks addObject:v26];

      verificationTasks2 = [(DEDRadarFinisher *)self verificationTasks];
      v28 = [DEDDataTask alloc];
      urlSession2 = [(DEDRadarFinisher *)self urlSession];
      v30 = [urlSession2 dataTaskWithURL:v21];
      v31 = [(DEDDataTask *)v28 initWithDataTask:v30];
      [verificationTasks2 addObject:v31];
    }

    else
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [DEDRadarFinisher startAttachmentVerificationTasks];
      }

      [(DEDRadarFinisher *)self finishRadarUploadSession];
    }
  }

  else
  {

    [(DEDRadarFinisher *)self finishRadarUploadSession];
  }
}

- (void)processVerifyTaskResults
{
  v26 = *MEMORY[0x277D85DE8];
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = objc_alloc_init(MEMORY[0x277CBEB58]);
  verificationTasks = [(DEDRadarFinisher *)self verificationTasks];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __44__DEDRadarFinisher_processVerifyTaskResults__block_invoke;
  v13[3] = &unk_278F65220;
  v13[4] = self;
  v13[5] = &v20;
  v13[6] = &v14;
  [verificationTasks enumerateObjectsUsingBlock:v13];

  v4 = [(DEDRadarFinisher *)self log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v15[5] count];
    *buf = 134349056;
    v25 = v5;
    _os_log_impl(&dword_248AD7000, v4, OS_LOG_TYPE_DEFAULT, "Attachments fetch task complete with count: %{public}lu", buf, 0xCu);
  }

  if (*(v21 + 24) == 1)
  {
    v6 = [(DEDRadarFinisher *)self log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [DEDRadarFinisher processVerifyTaskResults];
    }

    [(DEDRadarFinisher *)self finishRadarUploadSession];
  }

  else
  {
    uploadItems = [(DEDRadarFinisher *)self uploadItems];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __44__DEDRadarFinisher_processVerifyTaskResults__block_invoke_173;
    v12[3] = &unk_278F65270;
    v12[4] = self;
    v12[5] = &v14;
    [uploadItems enumerateObjectsUsingBlock:v12];

    if ([(DEDRadarFinisher *)self allUploadsComplete])
    {
      [(DEDRadarFinisher *)self finishRadarUploadSession];
    }

    else
    {
      v8 = [(DEDRadarFinisher *)self log];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_248AD7000, v8, OS_LOG_TYPE_DEFAULT, "Some attachments were missing in Radar -- retrying the missing attachments", buf, 2u);
      }

      [(DEDRadarFinisher *)self setRetryAttemptCount:[(DEDRadarFinisher *)self retryAttemptCount]+ 1];
      verificationTasks2 = [(DEDRadarFinisher *)self verificationTasks];
      [verificationTasks2 removeAllObjects];

      uploadItems2 = [(DEDRadarFinisher *)self uploadItems];
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __44__DEDRadarFinisher_processVerifyTaskResults__block_invoke_176;
      v11[3] = &unk_278F65298;
      v11[4] = self;
      [uploadItems2 enumerateObjectsUsingBlock:v11];
    }
  }

  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v20, 8);
}

void __44__DEDRadarFinisher_processVerifyTaskResults__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [v5 response];
  if (v6)
  {
    v7 = v6;
    v8 = [v5 response];
    v9 = [v8 statusCode] - 299;

    if (v9 <= 0xFFFFFFFFFFFFFF9CLL)
    {
      v10 = [*(a1 + 32) log];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __44__DEDRadarFinisher_processVerifyTaskResults__block_invoke_cold_1(v5);
      }

LABEL_12:

      *(*(*(a1 + 40) + 8) + 24) = 1;
      *a3 = 1;
      goto LABEL_24;
    }
  }

  v11 = [v5 data];

  if (!v11)
  {
    v10 = [*(a1 + 32) log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __44__DEDRadarFinisher_processVerifyTaskResults__block_invoke_cold_3();
    }

    goto LABEL_12;
  }

  v12 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v13 = MEMORY[0x277CCAAA0];
  v14 = [v5 data];
  v29 = 0;
  v15 = [v13 JSONObjectWithData:v14 options:4 error:&v29];
  v16 = v29;

  if (v16)
  {
    v17 = [*(a1 + 32) log];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      __44__DEDRadarFinisher_processVerifyTaskResults__block_invoke_cold_2(v16);
    }

    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a3 = 1;
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v24 = v15;
    v18 = v15;
    v19 = [v18 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v26;
      do
      {
        v22 = 0;
        do
        {
          if (*v26 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = [[DEDRadarAttachment alloc] initWithDictionary:*(*(&v25 + 1) + 8 * v22)];
          if (v23)
          {
            [v12 addObject:v23];
          }

          ++v22;
        }

        while (v20 != v22);
        v20 = [v18 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v20);
    }

    [*(*(*(a1 + 48) + 8) + 40) unionSet:v12];
    v15 = v24;
  }

LABEL_24:
}

void __44__DEDRadarFinisher_processVerifyTaskResults__block_invoke_173(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy_;
  v25 = __Block_byref_object_dispose_;
  v26 = 0;
  v4 = *(*(*(a1 + 40) + 8) + 40);
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __44__DEDRadarFinisher_processVerifyTaskResults__block_invoke_2;
  v18 = &unk_278F65248;
  v5 = v3;
  v19 = v5;
  v20 = &v21;
  [v4 enumerateObjectsUsingBlock:&v15];
  v6 = *(a1 + 32);
  if (v22[5])
  {
    v7 = [v6 log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 32) configuration];
      v9 = [v8 radarProblemID];
      v10 = [v5 radarAttachmentName];
      *buf = 138543618;
      v28 = v9;
      v29 = 2114;
      v30 = v10;
      _os_log_impl(&dword_248AD7000, v7, OS_LOG_TYPE_DEFAULT, "Attachment verification (%{public}@): (SUCCESS) %{public}@", buf, 0x16u);
    }
  }

  else
  {
    v11 = [v6 log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [*(a1 + 32) configuration];
      v13 = [v12 radarProblemID];
      v14 = [v5 radarAttachmentName];
      *buf = 138543618;
      v28 = v13;
      v29 = 2114;
      v30 = v14;
      _os_log_error_impl(&dword_248AD7000, v11, OS_LOG_TYPE_ERROR, "Attachment verification (%{public}@): (FAILURE) %{public}@", buf, 0x16u);
    }

    [v5 setIsUploaded:0];
  }

  _Block_object_dispose(&v21, 8);
}

void __44__DEDRadarFinisher_processVerifyTaskResults__block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v9 = a2;
  v6 = [v9 fileName];
  v7 = [*(a1 + 32) radarAttachmentName];
  v8 = [v6 isEqualToString:v7];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a3 = 1;
  }
}

void __44__DEDRadarFinisher_processVerifyTaskResults__block_invoke_176(uint64_t a1, void *a2)
{
  v7 = a2;
  if (([v7 isUploaded] & 1) == 0)
  {
    v3 = *(a1 + 32);
    v4 = [v7 attachedPath];
    v5 = [v7 radarURL];
    v6 = [v3 createUploadTaskForAttachment:v4 atRadarURL:v5];

    [v7 setTotalBytesSent:0];
    [v7 setTaskIdentifier:{objc_msgSend(v6, "taskIdentifier")}];
    [v6 resume];
  }
}

- (void)finishRadarUploadSession
{
  v3 = [(DEDRadarFinisher *)self log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_248AD7000, v3, OS_LOG_TYPE_DEFAULT, "All attachments finished! Clean up time!", v7, 2u);
  }

  session = [(DEDRadarFinisher *)self session];
  [session uploadProgress:1 total:1];

  urlSession = [(DEDRadarFinisher *)self urlSession];
  [urlSession finishTasksAndInvalidate];

  session2 = [(DEDRadarFinisher *)self session];
  [session2 didFinishUploadingWithError:0];
}

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  v19 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  v7 = [(DEDRadarFinisher *)self log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138543362;
    v18 = taskCopy;
    _os_log_impl(&dword_248AD7000, v7, OS_LOG_TYPE_DEFAULT, "urlSessionTask complete: %{public}@", &v17, 0xCu);
  }

  v8 = [(DEDRadarFinisher *)self log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    response = [taskCopy response];
    v17 = 138543362;
    v18 = response;
    _os_log_impl(&dword_248AD7000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@", &v17, 0xCu);
  }

  v10 = [(DEDRadarFinisher *)self getUploadItemForTask:taskCopy];
  v11 = [(DEDRadarFinisher *)self getVerificationTaskForDataTask:taskCopy];
  v12 = v11;
  if (v10)
  {
    [v10 setIsUploaded:1];
    v13 = [(DEDRadarFinisher *)self log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138543362;
      v18 = v10;
      _os_log_impl(&dword_248AD7000, v13, OS_LOG_TYPE_DEFAULT, "Finished upload item: %{public}@", &v17, 0xCu);
    }

    v14 = [(DEDRadarFinisher *)self log];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      uploadItems = [(DEDRadarFinisher *)self uploadItems];
      v17 = 138543362;
      v18 = uploadItems;
      _os_log_impl(&dword_248AD7000, v14, OS_LOG_TYPE_DEFAULT, "self.uploadItems: %{public}@", &v17, 0xCu);
    }

    if ([(DEDRadarFinisher *)self allUploadsComplete])
    {
      [(DEDRadarFinisher *)self startAttachmentVerificationTasks];
    }
  }

  else if (v11)
  {
    [v11 setIsFinished:1];
    v16 = [(DEDRadarFinisher *)self log];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      v18 = v12;
      _os_log_impl(&dword_248AD7000, v16, OS_LOG_TYPE_DEFAULT, "Finished verification task: %@", &v17, 0xCu);
    }

    if ([(DEDRadarFinisher *)self allVerificationTasksComplete])
    {
      [(DEDRadarFinisher *)self processVerifyTaskResults];
    }
  }
}

- (void)URLSession:(id)session task:(id)task didSendBodyData:(int64_t)data totalBytesSent:(int64_t)sent totalBytesExpectedToSend:(int64_t)send
{
  v36 = *MEMORY[0x277D85DE8];
  v10 = [(DEDRadarFinisher *)self getUploadItemForTask:task];
  [v10 setTotalBytesSent:sent];
  [v10 setTotalBytesExpectedToSend:send];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  uploadItems = [(DEDRadarFinisher *)self uploadItems];
  v12 = [uploadItems countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    v15 = 0;
    v16 = *v28;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v28 != v16)
        {
          objc_enumerationMutation(uploadItems);
        }

        v18 = *(*(&v27 + 1) + 8 * i);
        v15 += [v18 totalBytesSent];
        v14 += [v18 totalBytesExpectedToSend];
      }

      v13 = [uploadItems countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v13);
  }

  else
  {
    v14 = 0;
    v15 = 0;
  }

  v19 = ((v15 / v14) * 100.0);
  [(DEDRadarFinisher *)self percentComplete];
  if (v19 != (v20 * 100.0) && v19 != 100)
  {
    v21 = [(DEDRadarFinisher *)self log];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      session = [(DEDRadarFinisher *)self session];
      config = [session config];
      radarProblemID = [config radarProblemID];
      *buf = 138543618;
      v32 = radarProblemID;
      v33 = 1026;
      v34 = ((v15 / v14) * 100.0);
      _os_log_impl(&dword_248AD7000, v21, OS_LOG_TYPE_DEFAULT, "DEDRadarFinisher upload percentComplete (%{public}@): %{public}i%%", buf, 0x12u);
    }

    *&v25 = v15 / v14;
    [(DEDRadarFinisher *)self setPercentComplete:v25];
    session2 = [(DEDRadarFinisher *)self session];
    [session2 uploadProgress:v15 total:v14];
  }
}

- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data
{
  dataCopy = data;
  v7 = [(DEDRadarFinisher *)self getVerificationTaskForDataTask:task];
  v8 = v7;
  if (v7)
  {
    data = [v7 data];

    if (data)
    {
      data2 = [v8 data];
      v11 = [data2 mutableCopy];

      [v11 appendData:dataCopy];
      [v8 setData:v11];
    }

    else
    {
      [v8 setData:dataCopy];
    }
  }
}

- (void)URLSession:(id)session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler
{
  responseCopy = response;
  handlerCopy = handler;
  v10 = [(DEDRadarFinisher *)self getVerificationTaskForDataTask:task];
  v11 = v10;
  if (v10)
  {
    [v10 setResponse:responseCopy];
  }

  handlerCopy[2](handlerCopy, 1);
}

- (DEDBugSession)session
{
  WeakRetained = objc_loadWeakRetained(&self->_session);

  return WeakRetained;
}

- (DEDBugSessionConfiguration)configuration
{
  WeakRetained = objc_loadWeakRetained(&self->_configuration);

  return WeakRetained;
}

void __44__DEDRadarFinisher_processVerifyTaskResults__block_invoke_cold_1(void *a1)
{
  v1 = MEMORY[0x277CCAA40];
  v2 = [a1 response];
  v3 = [v1 localizedStringForStatusCode:{objc_msgSend(v2, "statusCode")}];
  LODWORD(v10) = 138412290;
  *(&v10 + 4) = v3;
  OUTLINED_FUNCTION_2(&dword_248AD7000, v4, v5, "Response headers for verification task indicate an invalid response code: %@", v6, v7, v8, v9, v10, DWORD2(v10));
}

void __44__DEDRadarFinisher_processVerifyTaskResults__block_invoke_cold_2(void *a1)
{
  v1 = [a1 localizedDescription];
  LODWORD(v8) = 138543362;
  *(&v8 + 4) = v1;
  OUTLINED_FUNCTION_2(&dword_248AD7000, v2, v3, "DEDRadarFinisher failed to deserialize attachments response: %{public}@", v4, v5, v6, v7, v8, DWORD2(v8));
}

@end