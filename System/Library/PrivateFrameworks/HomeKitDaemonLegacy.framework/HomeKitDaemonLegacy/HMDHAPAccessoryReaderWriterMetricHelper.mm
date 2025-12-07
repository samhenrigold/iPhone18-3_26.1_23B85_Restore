@interface HMDHAPAccessoryReaderWriterMetricHelper
+ (BOOL)_isLinkFallback:(id)fallback reportedLinkLayerType:(int64_t)type;
+ (void)updateLogEvents:(id)events withResponses:(id)responses forTaskID:(id)d shouldSubmit:(BOOL)submit;
+ (void)updateLogEvents:(id)events withResponses:(id)responses remoteMessageResponse:(id)response forTaskID:(id)d shouldSubmit:(BOOL)submit;
@end

@implementation HMDHAPAccessoryReaderWriterMetricHelper

+ (BOOL)_isLinkFallback:(id)fallback reportedLinkLayerType:(int64_t)type
{
  fallbackCopy = fallback;
  v6 = fallbackCopy;
  if ((type - 1) < 2)
  {
    if ([fallbackCopy isEqualToString:@"WiFi-Ethernet"])
    {
      goto LABEL_9;
    }

    v7 = @"IP";
  }

  else if (type == 3)
  {
    v7 = @"BLE";
  }

  else
  {
    if (type != 4)
    {
      goto LABEL_9;
    }

    v7 = @"Thread";
  }

  if (([v6 isEqualToString:v7] & 1) == 0)
  {
    v8 = 1;
    goto LABEL_11;
  }

LABEL_9:
  v8 = 0;
LABEL_11:

  return v8;
}

+ (void)updateLogEvents:(id)events withResponses:(id)responses remoteMessageResponse:(id)response forTaskID:(id)d shouldSubmit:(BOOL)submit
{
  eventsCopy = events;
  dCopy = d;
  responseCopy = response;
  responsesCopy = responses;
  v16 = [responseCopy objectForKeyedSubscript:@"kRemoteMessageTransportAttributionKey"];
  intValue = [v16 intValue];

  LOBYTE(v16) = [responseCopy hmf_BOOLForKey:@"kRemoteMessageIsRapportLinkSlowKey"];
  v18 = [responseCopy hmf_BOOLForKey:@"kRemoteMessageIsModernTransportUsedKey"];

  [MEMORY[0x277D17DC0] currentTime];
  v20 = v19;
  v21 = [MEMORY[0x277CBEB58] set];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __118__HMDHAPAccessoryReaderWriterMetricHelper_updateLogEvents_withResponses_remoteMessageResponse_forTaskID_shouldSubmit___block_invoke;
  v25[3] = &unk_279728DB0;
  v31 = intValue;
  v32 = v16;
  v33 = v18;
  v29 = v20;
  submitCopy = submit;
  v26 = eventsCopy;
  v27 = v21;
  selfCopy = self;
  v28 = dCopy;
  v22 = dCopy;
  v23 = v21;
  v24 = eventsCopy;
  [responsesCopy na_each:v25];
}

void __118__HMDHAPAccessoryReaderWriterMetricHelper_updateLogEvents_withResponses_remoteMessageResponse_forTaskID_shouldSubmit___block_invoke(uint64_t a1, void *a2)
{
  v57 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 request];
  v5 = [v4 accessory];

  if (([v5 isPrimary] & 1) == 0)
  {
    v6 = [v5 bridge];

    v5 = v6;
  }

  v7 = [v5 uuid];
  v8 = [v7 UUIDString];

  if (v8)
  {
    v9 = [*(a1 + 32) objectForKeyedSubscript:v8];
    v10 = v9;
    if (v9)
    {
      if (([v9 isSubmitted] & 1) == 0)
      {
        [v10 setTransportType:*(a1 + 72)];
        [v10 setIsSlowRapport:*(a1 + 76)];
        [v10 setIsModernTransport:*(a1 + 77)];
        v11 = [v3 error];
        [v10 setResidentFirstError:v11];

        [v10 setResidentFirstEndTime:*(a1 + 56)];
        v12 = objc_opt_class();
        v13 = [v10 expectedTransport];
        [v10 setIsLinkFallback:{objc_msgSend(v12, "_isLinkFallback:reportedLinkLayerType:", v13, objc_msgSend(v10, "linkLayerType"))}];

        if (*(a1 + 78) == 1)
        {
          if (([*(a1 + 40) containsObject:v8] & 1) == 0)
          {
            v14 = objc_autoreleasePoolPush();
            v15 = *(a1 + 64);
            v16 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
            {
              v33 = v14;
              v34 = HMFGetLogIdentifier();
              v17 = *(a1 + 48);
              if ([v10 isWriteOperation])
              {
                v18 = @"Writing";
              }

              else
              {
                v18 = @"Reading";
              }

              v32 = [v10 characteristicsInRequest];
              v28 = [v32 count];
              v31 = [v10 accessoryUUID];
              v30 = [v10 error];
              v29 = [v10 residentFirstError];
              v27 = [v10 durationMilliseconds];
              v26 = [v10 localDurationInMilliseconds];
              v25 = [v10 residentFirstDurationInMilliseconds];
              if ([v10 isLocal])
              {
                [v10 linkType];
                v19 = HAPLinkTypeDescription();
              }

              else
              {
                v20 = [v10 transportType];
                if (v20 > 7)
                {
                  v21 = 0;
                }

                else
                {
                  v21 = off_279735698[v20];
                }

                v19 = v21;
              }

              v22 = v19;
              *buf = 138545922;
              v36 = v34;
              v37 = 2114;
              v38 = v17;
              v39 = 2114;
              v40 = v18;
              v41 = 2048;
              v42 = v28;
              v43 = 2114;
              v44 = v31;
              v45 = 2114;
              v46 = v30;
              v47 = 2114;
              v48 = v29;
              v49 = 2048;
              v50 = v27;
              v51 = 2048;
              v52 = v26;
              v53 = 2048;
              v54 = v25;
              v55 = 2114;
              v56 = v19;
              _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@For Task: %{public}@ -- %{public}@ %tu characteristic(s) on accessory %{public}@ completed with error: %{public}@ (Resident first error: %{public}@), Total duration: %ld ms (Local duration: %ld ms, Resident first duration: %ld ms) using transport: %{public}@", buf, 0x70u);

              v14 = v33;
            }

            objc_autoreleasePoolPop(v14);
            [*(a1 + 40) addObject:v8];
          }

          v23 = +[HMDMetricsManager sharedLogEventSubmitter];
          v24 = [v10 residentFirstError];
          [v23 submitLogEvent:v10 error:v24];
        }
      }
    }
  }

  else
  {
    v10 = 0;
  }
}

+ (void)updateLogEvents:(id)events withResponses:(id)responses forTaskID:(id)d shouldSubmit:(BOOL)submit
{
  eventsCopy = events;
  dCopy = d;
  v12 = MEMORY[0x277D17DC0];
  responsesCopy = responses;
  [v12 currentTime];
  v15 = v14;
  v16 = [MEMORY[0x277CBEB58] set];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __96__HMDHAPAccessoryReaderWriterMetricHelper_updateLogEvents_withResponses_forTaskID_shouldSubmit___block_invoke;
  v20[3] = &unk_279728D88;
  v24 = v15;
  selfCopy = self;
  submitCopy = submit;
  v21 = eventsCopy;
  v22 = v16;
  v23 = dCopy;
  v17 = dCopy;
  v18 = v16;
  v19 = eventsCopy;
  [responsesCopy na_each:v20];
}

void __96__HMDHAPAccessoryReaderWriterMetricHelper_updateLogEvents_withResponses_forTaskID_shouldSubmit___block_invoke(uint64_t a1, void *a2)
{
  v57 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 request];
  v5 = [v4 accessory];

  if (([v5 isPrimary] & 1) == 0)
  {
    v6 = [v5 bridge];

    v5 = v6;
  }

  v7 = [v5 uuid];
  v8 = [v7 UUIDString];

  if (v8)
  {
    v9 = [*(a1 + 32) objectForKeyedSubscript:v8];
    v10 = v9;
    if (v9)
    {
      if (([v9 isSubmitted] & 1) == 0)
      {
        v11 = [v3 error];
        [v10 setResidentFirstError:v11];

        [v10 setResidentFirstEndTime:*(a1 + 56)];
        v12 = *(a1 + 64);
        v13 = [v10 expectedTransport];
        [v10 setIsLinkFallback:{objc_msgSend(v12, "_isLinkFallback:reportedLinkLayerType:", v13, objc_msgSend(v10, "linkLayerType"))}];

        if (*(a1 + 72) == 1)
        {
          if (([*(a1 + 40) containsObject:v8] & 1) == 0)
          {
            v14 = objc_autoreleasePoolPush();
            v15 = *(a1 + 64);
            v16 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
            {
              v33 = v14;
              v34 = HMFGetLogIdentifier();
              v17 = *(a1 + 48);
              if ([v10 isWriteOperation])
              {
                v18 = @"Writing";
              }

              else
              {
                v18 = @"Reading";
              }

              v32 = [v10 characteristicsInRequest];
              v28 = [v32 count];
              v31 = [v10 accessoryUUID];
              v30 = [v10 error];
              v29 = [v10 residentFirstError];
              v27 = [v10 durationMilliseconds];
              v26 = [v10 localDurationInMilliseconds];
              v25 = [v10 residentFirstDurationInMilliseconds];
              if ([v10 isLocal])
              {
                [v10 linkType];
                v19 = HAPLinkTypeDescription();
              }

              else
              {
                v20 = [v10 transportType];
                if (v20 > 7)
                {
                  v21 = 0;
                }

                else
                {
                  v21 = off_279735698[v20];
                }

                v19 = v21;
              }

              v22 = v19;
              *buf = 138545922;
              v36 = v34;
              v37 = 2114;
              v38 = v17;
              v39 = 2114;
              v40 = v18;
              v41 = 2048;
              v42 = v28;
              v43 = 2114;
              v44 = v31;
              v45 = 2114;
              v46 = v30;
              v47 = 2114;
              v48 = v29;
              v49 = 2048;
              v50 = v27;
              v51 = 2048;
              v52 = v26;
              v53 = 2048;
              v54 = v25;
              v55 = 2114;
              v56 = v19;
              _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@For Task: %{public}@ -- %{public}@ %tu characteristic(s) on accessory %{public}@ completed with error: %{public}@ (Resident first error: %{public}@), Total duration: %ld ms (Local duration: %ld ms, Resident first duration: %ld ms) using transport: %{public}@", buf, 0x70u);

              v14 = v33;
            }

            objc_autoreleasePoolPop(v14);
            [*(a1 + 40) addObject:v8];
          }

          v23 = +[HMDMetricsManager sharedLogEventSubmitter];
          v24 = [v10 residentFirstError];
          [v23 submitLogEvent:v10 error:v24];
        }
      }
    }
  }

  else
  {
    v10 = 0;
  }
}

@end