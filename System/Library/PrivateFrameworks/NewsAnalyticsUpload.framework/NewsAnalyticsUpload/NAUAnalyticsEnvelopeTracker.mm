@interface NAUAnalyticsEnvelopeTracker
+ (void)_registerContentTypes:(id)types withEventName:(id)name;
+ (void)_registerEnvelopes:(id)envelopes withEventName:(id)name;
+ (void)registerEnvelopeContentTypesAsDropped:(id)dropped forReason:(unint64_t)reason withError:(id)error;
+ (void)registerEnvelopeContentTypesAsPreparedForUpload:(id)upload;
+ (void)registerEnvelopeContentTypesAsRetainedForUploadRetry:(id)retry;
+ (void)registerEnvelopeContentTypesAsUploaded:(id)uploaded;
+ (void)registerEnvelopeCreationAnticipatedForContentType:(int)type;
+ (void)registerEnvelopesAsCreated:(id)created;
+ (void)registerEnvelopesAsReceivedByUploader:(id)uploader;
+ (void)registerEnvelopesAsSubmittedToUploader:(id)uploader;
@end

@implementation NAUAnalyticsEnvelopeTracker

+ (void)registerEnvelopeCreationAnticipatedForContentType:(int)type
{
  v3 = *&type;
  v7[1] = *MEMORY[0x277D85DE8];
  if (type >= 9 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    +[NAUAnalyticsEnvelopeTracker registerEnvelopeCreationAnticipatedForContentType:];
  }

  v5 = [MEMORY[0x277CCABB0] numberWithInt:v3];
  v7[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  [self _registerContentTypes:v6 withEventName:@"anticipated"];
}

+ (void)registerEnvelopesAsCreated:(id)created
{
  createdCopy = created;
  if (!createdCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    +[NAUAnalyticsEnvelopeTracker registerEnvelopesAsCreated:];
  }

  if ([createdCopy fc_containsObjectPassingTest:&__block_literal_global_4] && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    +[NAUAnalyticsEnvelopeTracker registerEnvelopesAsCreated:];
  }

  [self _registerEnvelopes:createdCopy withEventName:@"created"];
}

+ (void)registerEnvelopesAsSubmittedToUploader:(id)uploader
{
  uploaderCopy = uploader;
  if (!uploaderCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    +[NAUAnalyticsEnvelopeTracker registerEnvelopesAsSubmittedToUploader:];
  }

  if ([uploaderCopy fc_containsObjectPassingTest:&__block_literal_global_21] && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    +[NAUAnalyticsEnvelopeTracker registerEnvelopesAsSubmittedToUploader:];
  }

  [self _registerEnvelopes:uploaderCopy withEventName:@"submitted"];
}

+ (void)registerEnvelopesAsReceivedByUploader:(id)uploader
{
  uploaderCopy = uploader;
  if (!uploaderCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    +[NAUAnalyticsEnvelopeTracker registerEnvelopesAsReceivedByUploader:];
  }

  if ([uploaderCopy fc_containsObjectPassingTest:&__block_literal_global_26] && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    +[NAUAnalyticsEnvelopeTracker registerEnvelopesAsReceivedByUploader:];
  }

  [self _registerEnvelopes:uploaderCopy withEventName:@"received"];
}

+ (void)registerEnvelopeContentTypesAsPreparedForUpload:(id)upload
{
  uploadCopy = upload;
  if (!uploadCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    +[NAUAnalyticsEnvelopeTracker registerEnvelopeContentTypesAsPreparedForUpload:];
  }

  if ([uploadCopy fc_containsObjectPassingTest:&__block_literal_global_33] && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    +[NAUAnalyticsEnvelopeTracker registerEnvelopeContentTypesAsPreparedForUpload:];
  }

  [self _registerContentTypes:uploadCopy withEventName:@"prepared"];
}

+ (void)registerEnvelopeContentTypesAsRetainedForUploadRetry:(id)retry
{
  retryCopy = retry;
  if (!retryCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    +[NAUAnalyticsEnvelopeTracker registerEnvelopeContentTypesAsRetainedForUploadRetry:];
  }

  if ([retryCopy fc_containsObjectPassingTest:&__block_literal_global_39] && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    +[NAUAnalyticsEnvelopeTracker registerEnvelopeContentTypesAsRetainedForUploadRetry:];
  }

  [self _registerContentTypes:retryCopy withEventName:@"retained"];
}

+ (void)registerEnvelopeContentTypesAsUploaded:(id)uploaded
{
  v31[3] = *MEMORY[0x277D85DE8];
  uploadedCopy = uploaded;
  if (!uploadedCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    +[NAUAnalyticsEnvelopeTracker registerEnvelopeContentTypesAsUploaded:];
  }

  allKeys = [uploadedCopy allKeys];
  v6 = [allKeys fc_containsObjectPassingTest:&__block_literal_global_45];

  if (v6 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    +[NAUAnalyticsEnvelopeTracker registerEnvelopeContentTypesAsUploaded:];
  }

  date = [MEMORY[0x277CBEAA8] date];
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  localTimeZone = [MEMORY[0x277CBEBB0] localTimeZone];
  v24 = [currentCalendar componentsInTimeZone:localTimeZone fromDate:date];

  hour = [v24 hour];
  v10 = [MEMORY[0x277D41DA0] propertyWithName:@"localHour" range:{0, 24}];
  v11 = objc_alloc(MEMORY[0x277D41DB8]);
  _contentTypeProperty = [self _contentTypeProperty];
  v31[0] = _contentTypeProperty;
  _daysSinceSubmissionDateProperty = [self _daysSinceSubmissionDateProperty];
  v31[1] = _daysSinceSubmissionDateProperty;
  v31[2] = v10;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:3];
  v15 = [v11 initWithFeatureId:@"newsenvelopetracker" event:@"uploaded" registerProperties:v14];

  v16 = objc_alloc(MEMORY[0x277D41D98]);
  _contentTypeProperty2 = [self _contentTypeProperty];
  v30 = _contentTypeProperty2;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
  v19 = [v16 initWithFeatureId:@"newsenvelopetracker" event:@"uploaded_interval" registerProperties:v18];

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __70__NAUAnalyticsEnvelopeTracker_registerEnvelopeContentTypesAsUploaded___block_invoke_62;
  v25[3] = &unk_27997ABD8;
  v26 = v15;
  v27 = date;
  v28 = v19;
  v29 = hour;
  v20 = v19;
  v21 = date;
  v22 = v15;
  [uploadedCopy enumerateKeysAndObjectsUsingBlock:v25];
}

void __70__NAUAnalyticsEnvelopeTracker_registerEnvelopeContentTypesAsUploaded___block_invoke_62(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __70__NAUAnalyticsEnvelopeTracker_registerEnvelopeContentTypesAsUploaded___block_invoke_2;
  v7[3] = &unk_27997ABB0;
  v8 = *(a1 + 32);
  v9 = v5;
  v12 = *(a1 + 56);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v6 = v5;
  [a3 enumerateObjectsUsingBlock:v7];
}

void __70__NAUAnalyticsEnvelopeTracker_registerEnvelopeContentTypesAsUploaded___block_invoke_2(uint64_t a1, void *a2)
{
  v14[3] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCABB0];
  v4 = a2;
  v5 = [v3 numberWithInteger:{objc_msgSend(v4, "fc_GregorianCalendarDaysSinceDate:", v4)}];
  v6 = *(a1 + 32);
  v14[0] = *(a1 + 40);
  v14[1] = v5;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 64)];
  v14[2] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:3];
  [v6 trackEventWithPropertyValues:v8];

  [*(a1 + 48) timeIntervalSinceDate:v4];
  v10 = v9;

  v11 = *(a1 + 56);
  v13 = *(a1 + 40);
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v13 count:1];
  [v11 trackEventWithPropertyValues:v12 value:v10 / 60.0];
}

+ (void)registerEnvelopeContentTypesAsDropped:(id)dropped forReason:(unint64_t)reason withError:(id)error
{
  v58[3] = *MEMORY[0x277D85DE8];
  droppedCopy = dropped;
  errorCopy = error;
  if (!droppedCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    +[NAUAnalyticsEnvelopeTracker registerEnvelopeContentTypesAsDropped:forReason:withError:];
  }

  date = [MEMORY[0x277CBEAA8] date];
  v10 = objc_alloc(MEMORY[0x277D41DB8]);
  _contentTypeProperty = [self _contentTypeProperty];
  v58[0] = _contentTypeProperty;
  v12 = MEMORY[0x277D41DA0];
  v56[0] = &unk_286D79210;
  v56[1] = &unk_286D79228;
  v57[0] = @"sampling";
  v57[1] = @"failed";
  v56[2] = &unk_286D79240;
  v56[3] = &unk_286D79258;
  v57[2] = @"missingconfig";
  v57[3] = @"pruned";
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v57 forKeys:v56 count:4];
  v14 = [v12 propertyWithName:@"reason" enumMapping:v13];
  v58[1] = v14;
  _daysSinceSubmissionDateProperty = [self _daysSinceSubmissionDateProperty];
  v58[2] = _daysSinceSubmissionDateProperty;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:3];
  v17 = [v10 initWithFeatureId:@"newsenvelopetracker" event:@"dropped" registerProperties:v16];

  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __89__NAUAnalyticsEnvelopeTracker_registerEnvelopeContentTypesAsDropped_forReason_withError___block_invoke;
  v49[3] = &unk_27997AC28;
  v18 = date;
  v50 = v18;
  v19 = v17;
  v51 = v19;
  reasonCopy = reason;
  [droppedCopy enumerateKeysAndObjectsUsingBlock:v49];
  v20 = reason == 2;
  v21 = errorCopy;
  if (v20 && errorCopy)
  {
    v22 = *MEMORY[0x277D309B8];
    v55[0] = *MEMORY[0x277CCA738];
    v55[1] = v22;
    v42 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:2];
    domain = [errorCopy domain];
    v41 = domain;
    v24 = [v42 containsObject:domain];
    v25 = @"unknown";
    if (v24)
    {
      v25 = domain;
    }

    v40 = v25;
    v26 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(errorCopy, "code")}];
    v39 = [&unk_286D79378 containsObject:v26];
    v27 = [MEMORY[0x277D41DA0] freeValuedPropertyWithName:@"errorDomain"];
    v28 = MEMORY[0x277D41DA0];
    v54[0] = @"yes";
    v54[1] = @"no";
    v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:2];
    v30 = [v28 propertyWithName:@"errorCodeValid" possibleValues:v29];

    v31 = [MEMORY[0x277D41DA0] freeValuedPropertyWithName:@"errorCode"];
    v32 = objc_alloc(MEMORY[0x277D41DB8]);
    _contentTypeProperty2 = [self _contentTypeProperty];
    v53[0] = _contentTypeProperty2;
    v53[1] = v27;
    v53[2] = v30;
    v53[3] = v31;
    v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:4];
    v35 = [v32 initWithFeatureId:@"newsenvelopetracker" event:@"upload_error" registerProperties:v34];

    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __89__NAUAnalyticsEnvelopeTracker_registerEnvelopeContentTypesAsDropped_forReason_withError___block_invoke_135;
    v44[3] = &unk_27997AC50;
    v45 = v35;
    v46 = v40;
    v48 = v39;
    v47 = v26;
    v36 = v26;
    v37 = v40;
    v38 = v35;
    [droppedCopy enumerateKeysAndObjectsUsingBlock:v44];

    v21 = errorCopy;
  }
}

void __89__NAUAnalyticsEnvelopeTracker_registerEnvelopeContentTypesAsDropped_forReason_withError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __89__NAUAnalyticsEnvelopeTracker_registerEnvelopeContentTypesAsDropped_forReason_withError___block_invoke_2;
  v7[3] = &unk_27997AC00;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = v5;
  v11 = *(a1 + 48);
  v6 = v5;
  [a3 enumerateObjectsUsingBlock:v7];
}

void __89__NAUAnalyticsEnvelopeTracker_registerEnvelopeContentTypesAsDropped_forReason_withError___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v8[3] = *MEMORY[0x277D85DE8];
  v3 = [*(a1 + 32) fc_GregorianCalendarDaysSinceDate:a2];
  v4 = *(a1 + 40);
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{*(a1 + 56), *(a1 + 48)}];
  v8[1] = v5;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v3];
  v8[2] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:3];
  [v4 trackEventWithPropertyValues:v7];
}

void __89__NAUAnalyticsEnvelopeTracker_registerEnvelopeContentTypesAsDropped_forReason_withError___block_invoke_135(uint64_t a1, void *a2, void *a3)
{
  v13[4] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v13[0] = a2;
  v13[1] = v4;
  if (*(a1 + 56))
  {
    v6 = @"yes";
  }

  else
  {
    v6 = @"no";
  }

  v13[2] = v6;
  v7 = *(a1 + 48);
  v8 = a3;
  v9 = a2;
  v10 = [v7 stringValue];
  v13[3] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:4];
  v12 = [v8 count];

  [v5 trackEventWithPropertyValues:v11 value:v12];
}

+ (void)_registerEnvelopes:(id)envelopes withEventName:(id)name
{
  envelopesCopy = envelopes;
  nameCopy = name;
  if (!envelopesCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    +[NAUAnalyticsEnvelopeTracker _registerEnvelopes:withEventName:];
    if (nameCopy)
    {
      goto LABEL_6;
    }
  }

  else if (nameCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    +[NAUAnalyticsEnvelopeTracker _registerEnvelopes:withEventName:];
  }

LABEL_6:
  v8 = [envelopesCopy fc_arrayByTransformingWithBlock:&__block_literal_global_139];
  [self _registerContentTypes:v8 withEventName:nameCopy];
}

uint64_t __64__NAUAnalyticsEnvelopeTracker__registerEnvelopes_withEventName___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 contentType];

  return [v2 numberWithInt:v3];
}

+ (void)_registerContentTypes:(id)types withEventName:(id)name
{
  v26[1] = *MEMORY[0x277D85DE8];
  typesCopy = types;
  nameCopy = name;
  if (!typesCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    +[NAUAnalyticsEnvelopeTracker _registerContentTypes:withEventName:];
    if (nameCopy)
    {
      goto LABEL_6;
    }
  }

  else if (nameCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    +[NAUAnalyticsEnvelopeTracker _registerContentTypes:withEventName:];
  }

LABEL_6:
  v8 = objc_alloc(MEMORY[0x277D41DB8]);
  _contentTypeProperty = [self _contentTypeProperty];
  v26[0] = _contentTypeProperty;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
  v11 = [v8 initWithFeatureId:@"newsenvelopetracker" event:nameCopy registerProperties:v10];

  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v12 = [objc_alloc(MEMORY[0x277CCA940]) initWithArray:typesCopy];
  v13 = [v12 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v21;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v20 + 1) + 8 * i);
        v18 = [v12 countForObject:{v17, v20}];
        v24 = v17;
        v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];
        [v11 trackEventWithPropertyValues:v19 value:v18];
      }

      v14 = [v12 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v14);
  }
}

+ (void)registerEnvelopeCreationAnticipatedForContentType:.cold.1()
{
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s", "NAUAnalyticsEnvelopeTrackerContentTypeIsSupported(contentType)"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BDF7000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

+ (void)registerEnvelopesAsCreated:.cold.1()
{
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s", "envelopes"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BDF7000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

+ (void)registerEnvelopesAsCreated:.cold.2()
{
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s", "![envelopes fc_containsObjectPassingTest:^BOOL(NTPBEnvelope *envelope) { return !NAUAnalyticsEnvelopeTrackerContentTypeIsSupported(envelope.contentType); }]"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BDF7000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

+ (void)registerEnvelopesAsSubmittedToUploader:.cold.1()
{
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s", "envelopes"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BDF7000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

+ (void)registerEnvelopesAsSubmittedToUploader:.cold.2()
{
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s", "![envelopes fc_containsObjectPassingTest:^BOOL(NTPBEnvelope *envelope) { return !NAUAnalyticsEnvelopeTrackerContentTypeIsSupported(envelope.contentType); }]"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BDF7000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

+ (void)registerEnvelopesAsReceivedByUploader:.cold.1()
{
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s", "envelopes"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BDF7000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

+ (void)registerEnvelopesAsReceivedByUploader:.cold.2()
{
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s", "![envelopes fc_containsObjectPassingTest:^BOOL(NTPBEnvelope *envelope) { return !NAUAnalyticsEnvelopeTrackerContentTypeIsSupported(envelope.contentType); }]"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BDF7000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

+ (void)registerEnvelopeContentTypesAsPreparedForUpload:.cold.1()
{
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s", "contentTypes"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BDF7000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

+ (void)registerEnvelopeContentTypesAsPreparedForUpload:.cold.2()
{
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s", "![contentTypes fc_containsObjectPassingTest:^BOOL(NSNumber *contentType) { return !NAUAnalyticsEnvelopeTrackerContentTypeIsSupported((NTPBEnvelope_ContentType)[contentType unsignedIntegerValue]); }]"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BDF7000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

+ (void)registerEnvelopeContentTypesAsRetainedForUploadRetry:.cold.1()
{
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s", "contentTypes"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BDF7000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

+ (void)registerEnvelopeContentTypesAsRetainedForUploadRetry:.cold.2()
{
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s", "![contentTypes fc_containsObjectPassingTest:^BOOL(NSNumber *contentType) { return !NAUAnalyticsEnvelopeTrackerContentTypeIsSupported((NTPBEnvelope_ContentType)[contentType unsignedIntegerValue]); }]"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BDF7000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

+ (void)registerEnvelopeContentTypesAsUploaded:.cold.1()
{
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s", "submissionDatesByContentType"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BDF7000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

+ (void)registerEnvelopeContentTypesAsUploaded:.cold.2()
{
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s", "![submissionDatesByContentType.allKeys fc_containsObjectPassingTest:^BOOL(NSNumber *contentType) { return !NAUAnalyticsEnvelopeTrackerContentTypeIsSupported((NTPBEnvelope_ContentType)[contentType unsignedIntegerValue]); }]"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BDF7000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

+ (void)registerEnvelopeContentTypesAsDropped:forReason:withError:.cold.1()
{
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s", "submissionDatesByContentType"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BDF7000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

+ (void)_registerEnvelopes:withEventName:.cold.1()
{
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s", "envelopes"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BDF7000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

+ (void)_registerEnvelopes:withEventName:.cold.2()
{
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s", "eventName"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BDF7000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

+ (void)_registerContentTypes:withEventName:.cold.1()
{
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s", "contentTypes"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BDF7000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

+ (void)_registerContentTypes:withEventName:.cold.2()
{
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s", "eventName"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BDF7000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

@end