@interface DRSRapidCloudKitHelper
+ (id)devHelper;
+ (id)prodHelper;
- (id)_initWithEnvironment:(int64_t)environment;
- (void)submitRapidPayload:(id)payload replyHandler:(id)handler;
@end

@implementation DRSRapidCloudKitHelper

- (id)_initWithEnvironment:(int64_t)environment
{
  if (environment == 3)
  {
    selfCopy = 0;
  }

  else
  {
    v5 = [[DiagnosticPipelineRapidServiceFunctionsClientObjc alloc] initWithEnvironment:environment];
    if (v5)
    {
      v9.receiver = self;
      v9.super_class = DRSRapidCloudKitHelper;
      v6 = [(DRSRapidCloudKitHelper *)&v9 init];
      v7 = v6;
      if (v6)
      {
        objc_storeStrong(&v6->_objcClient, v5);
      }

      self = v7;
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  return selfCopy;
}

+ (id)devHelper
{
  if (devHelper_onceToken != -1)
  {
    +[DRSRapidCloudKitHelper devHelper];
  }

  v3 = devHelper_devHelper;

  return v3;
}

void __35__DRSRapidCloudKitHelper_devHelper__block_invoke()
{
  v0 = [[DRSRapidCloudKitHelper alloc] _initWithEnvironment:1];
  v1 = devHelper_devHelper;
  devHelper_devHelper = v0;
}

+ (id)prodHelper
{
  if (prodHelper_onceToken != -1)
  {
    +[DRSRapidCloudKitHelper prodHelper];
  }

  v3 = prodHelper_prodHelper;

  return v3;
}

void __36__DRSRapidCloudKitHelper_prodHelper__block_invoke()
{
  v0 = [[DRSRapidCloudKitHelper alloc] _initWithEnvironment:2];
  v1 = prodHelper_prodHelper;
  prodHelper_prodHelper = v0;
}

- (void)submitRapidPayload:(id)payload replyHandler:(id)handler
{
  v79 = *MEMORY[0x277D85DE8];
  payloadCopy = payload;
  handlerCopy = handler;
  v8 = DPLogHandle_CKCFUpload(handlerCopy);
  if (os_signpost_enabled(v8))
  {
    v9 = [payloadCopy description];
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v9;
    _os_signpost_emit_with_name_impl(&dword_232906000, v8, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "CloudFunctionsRequestUpload", "Upload for %{public}@", &buf, 0xCu);
  }

  if ([payloadCopy requestState] == 1)
  {
    if (([payloadCopy uploadStarted] & 1) == 0)
      v10 = {;
      (*(handlerCopy + 2))(handlerCopy, 0, 0, v10);

      v12 = DPLogHandle_CKCFUpload(v11);
      if (os_signpost_enabled(v12))
      {
        LOWORD(buf) = 0;
LABEL_18:
        _os_signpost_emit_with_name_impl(&dword_232906000, v12, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "CloudFunctionsRequestUpload", v13, &buf, 2u);
        goto LABEL_25;
      }

      goto LABEL_25;
    }
  }

  else if ([payloadCopy requestState] != 2)
  {
    v34 = MEMORY[0x277CCACA8];
    requestStateString = [payloadCopy requestStateString];
    v12 = [v34 stringWithFormat:@"Unexpected request state: %@", requestStateString];

    v36 = DRSRapidErrorWithDescription(v12);
    (*(handlerCopy + 2))(handlerCopy, 0, 0, v36);

    v38 = DPLogHandle_CKCFUpload(v37);
    if (os_signpost_enabled(v38))
    {
      requestStateString2 = [payloadCopy requestStateString];
      LODWORD(buf) = 138543362;
      *(&buf + 4) = requestStateString2;
      _os_signpost_emit_with_name_impl(&dword_232906000, v38, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "CloudFunctionsRequestUpload", "Request in unexpected state: %{public}@", &buf, 0xCu);
    }

    if (![payloadCopy requestOutcome])
    {
      [payloadCopy updateToState:4355 errorDescription:@"Attempted to upload while in unexpected state" errorOut:0];
    }

    goto LABEL_25;
  }

  if ([payloadCopy hasUploadableContent])
  {
    v14 = MEMORY[0x277CBEA90];
    logs = [payloadCopy logs];
    firstObject = [logs firstObject];
    path = [firstObject path];
    v12 = [v14 dataWithContentsOfFile:path];

    if (v12)
    {
      logs2 = [payloadCopy logs];
      firstObject2 = [logs2 firstObject];
      name = [firstObject2 name];

      if (name)
      {
        v21 = +[DRSSystemProfile sharedInstance];
        requestDate = [payloadCopy requestDate];
        [requestDate timeIntervalSince1970];
        v24 = v23;

        v51 = dispatch_queue_create("DRSRapidCloudKitHelper sync queue", 0);
        v53 = dispatch_semaphore_create(0);
        *&buf = 0;
        *(&buf + 1) = &buf;
        v77 = 0x2020000000;
        v78 = 0;
        v74[0] = 0;
        v74[1] = v74;
        v74[2] = 0x2020000000;
        v75 = 0;
        objcClient = [(DRSRapidCloudKitHelper *)self objcClient];
        buildVariant = [v21 buildVariant];
        deviceCategory = [v21 deviceCategory];
        deviceModel = [v21 deviceModel];
        platformString = [v21 platformString];
        teamID = [payloadCopy teamID];
        issueCategory = [payloadCopy issueCategory];
        contextDictionaryData = [payloadCopy contextDictionaryData];
        build = [payloadCopy build];
        logType = [payloadCopy logType];
        v50 = [v12 length];
        uploadAttemptCount = [payloadCopy uploadAttemptCount];
        v48 = objcClient;
        v28 = buildVariant;
        v67[0] = MEMORY[0x277D85DD0];
        v67[1] = 3221225472;
        v67[2] = __58__DRSRapidCloudKitHelper_submitRapidPayload_replyHandler___block_invoke;
        v67[3] = &unk_27899EED8;
        v29 = v51;
        v68 = v29;
        p_buf = &buf;
        v73 = v74;
        v52 = payloadCopy;
        v69 = v52;
        v47 = handlerCopy;
        v71 = v47;
        v30 = v53;
        v70 = v30;
        v31 = v21;
        LODWORD(v46) = uploadAttemptCount;
        [v48 submitRapidPayloadWithBuildVariant:v28 deviceCategory:deviceCategory deviceModel:deviceModel platform:platformString teamID:teamID issueCategory:issueCategory contextDictionaryData:contextDictionaryData requestTime:v24 build:build logType:logType logSize:v50 fileName:name uploadAttempts:v46 payload:v12 completionHandler:v67];

        v32 = dispatch_time(0, 120000000000);
        v33 = dispatch_semaphore_wait(v30, v32);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __58__DRSRapidCloudKitHelper_submitRapidPayload_replyHandler___block_invoke_51;
        block[3] = &unk_27899EF00;
        v64 = v74;
        v66 = v33;
        v62 = v52;
        v63 = v47;
        v65 = &buf;
        dispatch_sync(v29, block);

        _Block_object_dispose(v74, 8);
        _Block_object_dispose(&buf, 8);
      }

      else
      {
        v44 = DRSRapidErrorWithDescription(@"Could not determine file name");
        (*(handlerCopy + 2))(handlerCopy, 0, 0, v44);

        v31 = DPLogHandle_CKCFUpload(v45);
        if (os_signpost_enabled(v31))
        {
          LOWORD(buf) = 0;
          _os_signpost_emit_with_name_impl(&dword_232906000, v31, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "CloudFunctionsRequestUpload", "Could not determine file name", &buf, 2u);
        }
      }
    }

    else
    {
      v42 = DRSRapidErrorWithDescription(@"Invalid payload");
      (*(handlerCopy + 2))(handlerCopy, 0, 0, v42);

      name = DPLogHandle_CKCFUpload(v43);
      if (os_signpost_enabled(name))
      {
        LOWORD(buf) = 0;
        _os_signpost_emit_with_name_impl(&dword_232906000, name, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "CloudFunctionsRequestUpload", "Invalid payload", &buf, 2u);
      }
    }
  }

  else
  {
    v40 = DRSRapidErrorWithDescription(@"File not available");
    (*(handlerCopy + 2))(handlerCopy, 0, 0, v40);

    v12 = DPLogHandle_CKCFUpload(v41);
    if (os_signpost_enabled(v12))
    {
      LOWORD(buf) = 0;
      v13 = "Failed due to missing payload file.";
      goto LABEL_18;
    }
  }

LABEL_25:
}

void __58__DRSRapidCloudKitHelper_submitRapidPayload_replyHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __58__DRSRapidCloudKitHelper_submitRapidPayload_replyHandler___block_invoke_2;
  v14[3] = &unk_27899EEB0;
  v21 = *(a1 + 64);
  v15 = v9;
  v10 = *(a1 + 32);
  v16 = *(a1 + 40);
  v17 = v8;
  v18 = v7;
  v20 = *(a1 + 56);
  v19 = *(a1 + 48);
  v11 = v7;
  v12 = v8;
  v13 = v9;
  dispatch_sync(v10, v14);
}

void *__58__DRSRapidCloudKitHelper_submitRapidPayload_replyHandler___block_invoke_2(void *result)
{
  v13 = *MEMORY[0x277D85DE8];
  if ((*(*(result[10] + 8) + 24) & 1) == 0)
  {
    v1 = result;
    *(*(result[11] + 8) + 24) = 1;
    v2 = result[4];
    v3 = DPLogHandle_CKCFUpload(result);
    v4 = os_signpost_enabled(v3);
    if (v2)
    {
      if (v4)
      {
        v5 = [v1[4] localizedDescription];
        v6 = v5;
        v7 = @"Unknown";
        if (v5)
        {
          v7 = v5;
        }

        v11 = 138543362;
        v12 = v7;
        _os_signpost_emit_with_name_impl(&dword_232906000, v3, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "CloudFunctionsRequestUpload", "Failed to upload due to CK layer error: %{public}@", &v11, 0xCu);
      }

      [v1[5] uploadCompleteWithError:v1[4] ckOperationID:0 ckRecordID:0];
    }

    else
    {
      if (v4)
      {
        v8 = v1[6];
        if (!v8)
        {
          v8 = @"<None>";
        }

        v11 = 138543362;
        v12 = v8;
        _os_signpost_emit_with_name_impl(&dword_232906000, v3, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "CloudFunctionsRequestUpload", "Reached CF endpoint successfully! Failure reason: %{public, name=failureReason}@", &v11, 0xCu);
      }

      [v1[5] uploadCompleteWithError:0 ckOperationID:0 ckRecordID:0];
      if (v1[6])
      {
        v9 = MEMORY[0x277CBEC28];
      }

      else
      {
        v9 = MEMORY[0x277CBEC38];
      }

      [v1[5] setCfDidSucceed:v9];
      [v1[5] setCfFailureReason:v1[6]];
      v10 = v1[7];
      if (v10 && [v10 length])
      {
        [v1[5] setCfReplyPayload:v1[7]];
      }
    }

    (*(v1[9] + 16))();
    return dispatch_semaphore_signal(v1[8]);
  }

  return result;
}

void __58__DRSRapidCloudKitHelper_submitRapidPayload_replyHandler___block_invoke_51(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0 && *(a1 + 64))
  {
    v2 = DRSRapidErrorWithDescription(@"Timed out waiting for CF response");
    v3 = DPLogHandle_CKCFUpload([*(a1 + 32) uploadCompleteWithError:v2 ckOperationID:0 ckRecordID:0]);
    if (os_signpost_enabled(v3))
    {
      v4 = 134217984;
      v5 = 120000000000;
      _os_signpost_emit_with_name_impl(&dword_232906000, v3, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "CloudFunctionsRequestUpload", "Request to CKCF hit %llu second timeout", &v4, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }
}

@end