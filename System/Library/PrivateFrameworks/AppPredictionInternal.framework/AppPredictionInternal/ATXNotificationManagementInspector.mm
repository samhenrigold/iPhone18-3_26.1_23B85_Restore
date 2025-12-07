@interface ATXNotificationManagementInspector
- (BOOL)clearAllNotificationData:(id *)data;
- (id)constructStacksForNotifications:(id)notifications;
- (id)constructStacksGroupedByAppForNotifications:(id)notifications;
- (id)fetchNotificationsFromBiomeFromStartDate:(id)date endDate:(id)endDate outError:(id *)error;
- (id)fetchNotificationsFromDbFromStartDate:(id)date endDate:(id)endDate;
- (id)fetchNotificationsFromFileData:(id)data outError:(id *)error;
- (id)fetchNotificationsFromSource:(id)source startDate:(id)date endDate:(id)endDate shouldInferMessages:(BOOL)messages outError:(id *)error;
- (id)fetchSerializedAppGroupedNotificationDigestFromSource:(id)source digestTimeString:(id)string startDate:(id)date endDate:(id)endDate shouldInferMessages:(BOOL)messages outError:(id *)error;
- (id)fetchSerializedMissedNotificationRankingFromFileData:(id)data modeString:(id)string outError:(id *)error;
- (id)fetchSerializedMissedNotificationRankingFromSource:(id)source modeString:(id)string startDate:(id)date endDate:(id)endDate shouldInferMessages:(BOOL)messages outError:(id *)error;
- (id)fetchSerializedNotificationDigestFromFileData:(id)data digestTimeString:(id)string outError:(id *)error;
- (id)fetchSerializedNotificationDigestFromSource:(id)source digestTimeString:(id)string startDate:(id)date endDate:(id)endDate shouldInferMessages:(BOOL)messages outError:(id *)error;
- (id)fetchSerializedNotificationsFromSource:(id)source startDate:(id)date endDate:(id)endDate shouldInferMessages:(BOOL)messages outError:(id *)error;
- (id)logAndCreateErrorForString:(id)string;
@end

@implementation ATXNotificationManagementInspector

- (BOOL)clearAllNotificationData:(id *)data
{
  v4 = objc_opt_new();
  [v4 deleteAllEvents];

  v5 = objc_opt_new();
  [v5 deleteAllEvents];

  v6 = objc_opt_new();
  [v6 deleteAllEvents];

  v7 = objc_opt_new();
  deleteAllData = [v7 deleteAllData];

  if (data)
  {
    v9 = deleteAllData;
    *data = deleteAllData;
  }

  return deleteAllData == 0;
}

- (id)fetchSerializedNotificationDigestFromFileData:(id)data digestTimeString:(id)string outError:(id *)error
{
  dataCopy = data;
  stringCopy = string;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__67;
  v45 = __Block_byref_object_dispose__67;
  v46 = 0;
  v40 = 0;
  v10 = [(ATXNotificationManagementInspector *)self fetchNotificationsFromFileData:dataCopy outError:&v40];
  objc_storeStrong(&v46, v40);
  if (error && (v11 = v42[5]) != 0)
  {
    v12 = 0;
    *error = v11;
  }

  else
  {
    v34 = 0;
    v35 = &v34;
    v36 = 0x3032000000;
    v37 = __Block_byref_object_copy__67;
    v38 = __Block_byref_object_dispose__67;
    v39 = 0;
    v13 = [(ATXNotificationManagementInspector *)self constructStacksForNotifications:v10];
    v14 = objc_alloc(MEMORY[0x277CEB6F8]);
    v15 = +[ATXNotificationDigestRankerServer sharedInstance];
    v16 = [v14 initWithDigestRankerClient:v15];

    v17 = dispatch_semaphore_create(0);
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __110__ATXNotificationManagementInspector_fetchSerializedNotificationDigestFromFileData_digestTimeString_outError___block_invoke;
    v30[3] = &unk_27859EE80;
    v32 = &v41;
    v33 = &v34;
    v18 = v17;
    v31 = v18;
    [v16 generateDigestForNotificationArrays:v13 reply:v30];
    v19 = *MEMORY[0x277CEBB30];
    v28[4] = self;
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __110__ATXNotificationManagementInspector_fetchSerializedNotificationDigestFromFileData_digestTimeString_outError___block_invoke_2;
    v29[3] = &unk_278596BB8;
    v29[4] = self;
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __110__ATXNotificationManagementInspector_fetchSerializedNotificationDigestFromFileData_digestTimeString_outError___block_invoke_57;
    v28[3] = &unk_278596BB8;
    [MEMORY[0x277D425A0] waitForSemaphore:v18 timeoutSeconds:v29 onAcquire:v28 onTimeout:v19];
    if (error && (v20 = v42[5]) != 0)
    {
      v12 = 0;
      *error = v20;
    }

    else
    {
      v21 = MEMORY[0x277CCAAA0];
      jsonRepresentation = [v35[5] jsonRepresentation];
      v23 = v42;
      obj = v42[5];
      v24 = [v21 dataWithJSONObject:jsonRepresentation options:1 error:&obj];
      objc_storeStrong(v23 + 5, obj);

      if (error && (v25 = v42[5]) != 0)
      {
        v12 = 0;
        *error = v25;
      }

      else
      {
        v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v24 encoding:4];
      }
    }

    _Block_object_dispose(&v34, 8);
  }

  _Block_object_dispose(&v41, 8);

  return v12;
}

void __110__ATXNotificationManagementInspector_fetchSerializedNotificationDigestFromFileData_digestTimeString_outError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v11 = v5;
  if (a3)
  {
    v6 = [a3 copy];
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  else
  {
    v9 = *(*(a1 + 48) + 8);
    v10 = v5;
    v8 = *(v9 + 40);
    *(v9 + 40) = v10;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void __110__ATXNotificationManagementInspector_fetchSerializedNotificationDigestFromFileData_digestTimeString_outError___block_invoke_2(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = __atxlog_handle_default(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v2 = objc_opt_class();
    v3 = NSStringFromClass(v2);
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_2263AA000, v1, OS_LOG_TYPE_DEFAULT, "Successfully acquired semaphore in %@", &v4, 0xCu);
  }
}

void __110__ATXNotificationManagementInspector_fetchSerializedNotificationDigestFromFileData_digestTimeString_outError___block_invoke_57(uint64_t a1)
{
  v2 = __atxlog_handle_notification_management(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __110__ATXNotificationManagementInspector_fetchSerializedNotificationDigestFromFileData_digestTimeString_outError___block_invoke_57_cold_1(a1);
  }
}

- (id)fetchSerializedNotificationDigestFromSource:(id)source digestTimeString:(id)string startDate:(id)date endDate:(id)endDate shouldInferMessages:(BOOL)messages outError:(id *)error
{
  messagesCopy = messages;
  sourceCopy = source;
  stringCopy = string;
  dateCopy = date;
  endDateCopy = endDate;
  v50 = 0;
  v51 = &v50;
  v52 = 0x3032000000;
  v53 = __Block_byref_object_copy__67;
  v54 = __Block_byref_object_dispose__67;
  v55 = 0;
  v49 = 0;
  v18 = [(ATXNotificationManagementInspector *)self fetchNotificationsFromSource:sourceCopy startDate:dateCopy endDate:endDateCopy shouldInferMessages:messagesCopy outError:&v49];
  objc_storeStrong(&v55, v49);
  if (error && (v19 = v51[5]) != 0)
  {
    v20 = 0;
    *error = v19;
  }

  else
  {
    v43 = 0;
    v44 = &v43;
    v45 = 0x3032000000;
    v46 = __Block_byref_object_copy__67;
    v47 = __Block_byref_object_dispose__67;
    v48 = 0;
    v35 = [(ATXNotificationManagementInspector *)self constructStacksForNotifications:v18];
    v34 = stringCopy;
    v21 = objc_alloc(MEMORY[0x277CEB6F8]);
    v22 = +[ATXNotificationDigestRankerServer sharedInstance];
    v23 = [v21 initWithDigestRankerClient:v22];

    v24 = dispatch_semaphore_create(0);
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __146__ATXNotificationManagementInspector_fetchSerializedNotificationDigestFromSource_digestTimeString_startDate_endDate_shouldInferMessages_outError___block_invoke;
    v39[3] = &unk_27859EE80;
    v41 = &v50;
    v42 = &v43;
    v25 = v24;
    v40 = v25;
    [v23 generateDigestForNotificationArrays:v35 reply:v39];
    v26 = *MEMORY[0x277CEBB30];
    v37[4] = self;
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __146__ATXNotificationManagementInspector_fetchSerializedNotificationDigestFromSource_digestTimeString_startDate_endDate_shouldInferMessages_outError___block_invoke_2;
    v38[3] = &unk_278596BB8;
    v38[4] = self;
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __146__ATXNotificationManagementInspector_fetchSerializedNotificationDigestFromSource_digestTimeString_startDate_endDate_shouldInferMessages_outError___block_invoke_60;
    v37[3] = &unk_278596BB8;
    [MEMORY[0x277D425A0] waitForSemaphore:v25 timeoutSeconds:v38 onAcquire:v37 onTimeout:v26];
    if (error && (v27 = v51[5]) != 0)
    {
      v20 = 0;
      *error = v27;
    }

    else
    {
      v28 = MEMORY[0x277CCAAA0];
      jsonRepresentation = [v44[5] jsonRepresentation];
      v30 = v51;
      obj = v51[5];
      v31 = [v28 dataWithJSONObject:jsonRepresentation options:1 error:&obj];
      objc_storeStrong(v30 + 5, obj);

      if (error && (v32 = v51[5]) != 0)
      {
        v20 = 0;
        *error = v32;
      }

      else
      {
        v20 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v31 encoding:4];
      }
    }

    _Block_object_dispose(&v43, 8);
    stringCopy = v34;
  }

  _Block_object_dispose(&v50, 8);

  return v20;
}

void __146__ATXNotificationManagementInspector_fetchSerializedNotificationDigestFromSource_digestTimeString_startDate_endDate_shouldInferMessages_outError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v11 = v5;
  if (a3)
  {
    v6 = [a3 copy];
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  else
  {
    v9 = *(*(a1 + 48) + 8);
    v10 = v5;
    v8 = *(v9 + 40);
    *(v9 + 40) = v10;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void __146__ATXNotificationManagementInspector_fetchSerializedNotificationDigestFromSource_digestTimeString_startDate_endDate_shouldInferMessages_outError___block_invoke_2(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = __atxlog_handle_default(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v2 = objc_opt_class();
    v3 = NSStringFromClass(v2);
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_2263AA000, v1, OS_LOG_TYPE_DEFAULT, "Successfully acquired semaphore in %@", &v4, 0xCu);
  }
}

void __146__ATXNotificationManagementInspector_fetchSerializedNotificationDigestFromSource_digestTimeString_startDate_endDate_shouldInferMessages_outError___block_invoke_60(uint64_t a1)
{
  v2 = __atxlog_handle_notification_management(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __110__ATXNotificationManagementInspector_fetchSerializedNotificationDigestFromFileData_digestTimeString_outError___block_invoke_57_cold_1(a1);
  }
}

- (id)fetchSerializedAppGroupedNotificationDigestFromSource:(id)source digestTimeString:(id)string startDate:(id)date endDate:(id)endDate shouldInferMessages:(BOOL)messages outError:(id *)error
{
  v10 = [(ATXNotificationManagementInspector *)self fetchNotificationsFromSource:source startDate:date endDate:endDate shouldInferMessages:messages outError:error];
  if (*error)
  {
    v11 = 0;
  }

  else
  {
    v12 = objc_opt_new();
    v13 = [(ATXNotificationManagementInspector *)self constructStacksGroupedByAppForNotifications:v10];
    v14 = [v12 createDigestForAppGroupedNotificationStacks:v13 maxGlobalMarqueeGroups:2 maxAppMarqueeGroups:2 outError:error];

    if (*error)
    {
      v11 = 0;
    }

    else
    {
      v15 = MEMORY[0x277CCAAA0];
      jsonRepresentation = [v14 jsonRepresentation];
      v17 = [v15 dataWithJSONObject:jsonRepresentation options:1 error:error];

      if (*error)
      {
        v11 = 0;
      }

      else
      {
        v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v17 encoding:4];
      }
    }
  }

  return v11;
}

- (id)fetchSerializedMissedNotificationRankingFromFileData:(id)data modeString:(id)string outError:(id *)error
{
  dataCopy = data;
  stringCopy = string;
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__67;
  v46 = __Block_byref_object_dispose__67;
  v47 = 0;
  v41 = 0;
  v10 = [(ATXNotificationManagementInspector *)self fetchNotificationsFromFileData:dataCopy outError:&v41];
  objc_storeStrong(&v47, v41);
  if (error && (v11 = v43[5]) != 0)
  {
    v12 = 0;
    *error = v11;
  }

  else
  {
    v13 = [(ATXNotificationManagementInspector *)self constructStacksForNotifications:v10];
    v14 = objc_alloc(MEMORY[0x277CEB6F8]);
    v15 = +[ATXNotificationDigestRankerServer sharedInstance];
    v16 = [v14 initWithDigestRankerClient:v15];

    v35 = 0;
    v36 = &v35;
    v37 = 0x3032000000;
    v38 = __Block_byref_object_copy__67;
    v39 = __Block_byref_object_dispose__67;
    v40 = 0;
    v17 = dispatch_semaphore_create(0);
    v18 = ATXStringToMode();
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __111__ATXNotificationManagementInspector_fetchSerializedMissedNotificationRankingFromFileData_modeString_outError___block_invoke;
    v31[3] = &unk_27859EEA8;
    v33 = &v42;
    v34 = &v35;
    v19 = v17;
    v32 = v19;
    [v16 generateMissedNotificationRankingForNotificationArrays:v13 atxMode:v18 reply:v31];
    v20 = *MEMORY[0x277CEBB30];
    v29[4] = self;
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __111__ATXNotificationManagementInspector_fetchSerializedMissedNotificationRankingFromFileData_modeString_outError___block_invoke_2;
    v30[3] = &unk_278596BB8;
    v30[4] = self;
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __111__ATXNotificationManagementInspector_fetchSerializedMissedNotificationRankingFromFileData_modeString_outError___block_invoke_63;
    v29[3] = &unk_278596BB8;
    [MEMORY[0x277D425A0] waitForSemaphore:v19 timeoutSeconds:v30 onAcquire:v29 onTimeout:v20];
    if (error && (v21 = v43[5]) != 0)
    {
      v12 = 0;
      *error = v21;
    }

    else
    {
      v22 = MEMORY[0x277CCAAA0];
      jsonRepresentation = [v36[5] jsonRepresentation];
      v24 = v43;
      obj = v43[5];
      v25 = [v22 dataWithJSONObject:jsonRepresentation options:1 error:&obj];
      objc_storeStrong(v24 + 5, obj);

      if (error && (v26 = v43[5]) != 0)
      {
        v12 = 0;
        *error = v26;
      }

      else
      {
        v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v25 encoding:4];
      }
    }

    _Block_object_dispose(&v35, 8);
  }

  _Block_object_dispose(&v42, 8);

  return v12;
}

void __111__ATXNotificationManagementInspector_fetchSerializedMissedNotificationRankingFromFileData_modeString_outError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v11 = v5;
  if (a3)
  {
    v6 = [a3 copy];
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  else
  {
    v9 = *(*(a1 + 48) + 8);
    v10 = v5;
    v8 = *(v9 + 40);
    *(v9 + 40) = v10;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void __111__ATXNotificationManagementInspector_fetchSerializedMissedNotificationRankingFromFileData_modeString_outError___block_invoke_2(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = __atxlog_handle_default(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v2 = objc_opt_class();
    v3 = NSStringFromClass(v2);
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_2263AA000, v1, OS_LOG_TYPE_DEFAULT, "Successfully acquired semaphore in %@", &v4, 0xCu);
  }
}

void __111__ATXNotificationManagementInspector_fetchSerializedMissedNotificationRankingFromFileData_modeString_outError___block_invoke_63(uint64_t a1)
{
  v2 = __atxlog_handle_notification_management(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __111__ATXNotificationManagementInspector_fetchSerializedMissedNotificationRankingFromFileData_modeString_outError___block_invoke_63_cold_1(a1);
  }
}

- (id)fetchSerializedMissedNotificationRankingFromSource:(id)source modeString:(id)string startDate:(id)date endDate:(id)endDate shouldInferMessages:(BOOL)messages outError:(id *)error
{
  messagesCopy = messages;
  sourceCopy = source;
  stringCopy = string;
  dateCopy = date;
  endDateCopy = endDate;
  v51 = 0;
  v52 = &v51;
  v53 = 0x3032000000;
  v54 = __Block_byref_object_copy__67;
  v55 = __Block_byref_object_dispose__67;
  v56 = 0;
  v50 = 0;
  v18 = [(ATXNotificationManagementInspector *)self fetchNotificationsFromSource:sourceCopy startDate:dateCopy endDate:endDateCopy shouldInferMessages:messagesCopy outError:&v50];
  objc_storeStrong(&v56, v50);
  if (error && (v19 = v52[5]) != 0)
  {
    v20 = 0;
    *error = v19;
  }

  else
  {
    v35 = [(ATXNotificationManagementInspector *)self constructStacksForNotifications:v18];
    v36 = stringCopy;
    v21 = objc_alloc(MEMORY[0x277CEB6F8]);
    v22 = +[ATXNotificationDigestRankerServer sharedInstance];
    v23 = [v21 initWithDigestRankerClient:v22];

    v44 = 0;
    v45 = &v44;
    v46 = 0x3032000000;
    v47 = __Block_byref_object_copy__67;
    v48 = __Block_byref_object_dispose__67;
    v49 = 0;
    v24 = dispatch_semaphore_create(0);
    v25 = ATXStringToMode();
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __147__ATXNotificationManagementInspector_fetchSerializedMissedNotificationRankingFromSource_modeString_startDate_endDate_shouldInferMessages_outError___block_invoke;
    v40[3] = &unk_27859EEA8;
    v42 = &v51;
    v43 = &v44;
    v26 = v24;
    v41 = v26;
    [v23 generateMissedNotificationRankingForNotificationArrays:v35 atxMode:v25 reply:v40];
    v27 = *MEMORY[0x277CEBB30];
    v38[4] = self;
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __147__ATXNotificationManagementInspector_fetchSerializedMissedNotificationRankingFromSource_modeString_startDate_endDate_shouldInferMessages_outError___block_invoke_2;
    v39[3] = &unk_278596BB8;
    v39[4] = self;
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __147__ATXNotificationManagementInspector_fetchSerializedMissedNotificationRankingFromSource_modeString_startDate_endDate_shouldInferMessages_outError___block_invoke_64;
    v38[3] = &unk_278596BB8;
    [MEMORY[0x277D425A0] waitForSemaphore:v26 timeoutSeconds:v39 onAcquire:v38 onTimeout:v27];
    if (error && (v28 = v52[5]) != 0)
    {
      v20 = 0;
      *error = v28;
    }

    else
    {
      v29 = MEMORY[0x277CCAAA0];
      jsonRepresentation = [v45[5] jsonRepresentation];
      v31 = v52;
      obj = v52[5];
      v32 = [v29 dataWithJSONObject:jsonRepresentation options:1 error:&obj];
      objc_storeStrong(v31 + 5, obj);

      if (error && (v33 = v52[5]) != 0)
      {
        v20 = 0;
        *error = v33;
      }

      else
      {
        v20 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v32 encoding:4];
      }
    }

    _Block_object_dispose(&v44, 8);
    stringCopy = v36;
  }

  _Block_object_dispose(&v51, 8);

  return v20;
}

void __147__ATXNotificationManagementInspector_fetchSerializedMissedNotificationRankingFromSource_modeString_startDate_endDate_shouldInferMessages_outError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v11 = v5;
  if (a3)
  {
    v6 = [a3 copy];
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  else
  {
    v9 = *(*(a1 + 48) + 8);
    v10 = v5;
    v8 = *(v9 + 40);
    *(v9 + 40) = v10;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void __147__ATXNotificationManagementInspector_fetchSerializedMissedNotificationRankingFromSource_modeString_startDate_endDate_shouldInferMessages_outError___block_invoke_2(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = __atxlog_handle_default(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v2 = objc_opt_class();
    v3 = NSStringFromClass(v2);
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_2263AA000, v1, OS_LOG_TYPE_DEFAULT, "Successfully acquired semaphore in %@", &v4, 0xCu);
  }
}

void __147__ATXNotificationManagementInspector_fetchSerializedMissedNotificationRankingFromSource_modeString_startDate_endDate_shouldInferMessages_outError___block_invoke_64(uint64_t a1)
{
  v2 = __atxlog_handle_notification_management(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __111__ATXNotificationManagementInspector_fetchSerializedMissedNotificationRankingFromFileData_modeString_outError___block_invoke_63_cold_1(a1);
  }
}

- (id)fetchSerializedNotificationsFromSource:(id)source startDate:(id)date endDate:(id)endDate shouldInferMessages:(BOOL)messages outError:(id *)error
{
  v8 = [(ATXNotificationManagementInspector *)self fetchNotificationsFromSource:source startDate:date endDate:endDate shouldInferMessages:messages outError:?];
  v9 = [v8 _pas_mappedArrayWithTransform:&__block_literal_global_155];
  v10 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v9 options:1 error:error];
  v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v10 encoding:4];

  return v11;
}

- (id)fetchNotificationsFromFileData:(id)data outError:(id *)error
{
  v5 = [MEMORY[0x277CCAAA0] JSONObjectWithData:data options:2 error:error];
  v6 = v5;
  if (error && *error)
  {
    v7 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v7 = [v5 _pas_mappedArrayWithTransform:&__block_literal_global_68_0];
  }

  return v7;
}

id __78__ATXNotificationManagementInspector_fetchNotificationsFromFileData_outError___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CEB958];
  v3 = a2;
  v4 = [[v2 alloc] initFromJSON:v3];

  return v4;
}

- (id)fetchNotificationsFromSource:(id)source startDate:(id)date endDate:(id)endDate shouldInferMessages:(BOOL)messages outError:(id *)error
{
  messagesCopy = messages;
  v43 = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  dateCopy = date;
  endDateCopy = endDate;
  if (dateCopy)
  {
    distantPast = dateCopy;
  }

  else
  {
    distantPast = [MEMORY[0x277CBEAA8] distantPast];
  }

  v16 = distantPast;
  if (endDateCopy)
  {
    distantFuture = endDateCopy;
  }

  else
  {
    distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
  }

  v18 = distantFuture;
  if ([sourceCopy isEqualToString:@"biome"])
  {
    v41 = 0;
    v19 = [(ATXNotificationManagementInspector *)self fetchNotificationsFromBiomeFromStartDate:v16 endDate:v18 outError:&v41];
    v20 = v41;
    if (!error)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (![sourceCopy isEqualToString:@"db"])
  {
    v20 = [(ATXNotificationManagementInspector *)self logAndCreateErrorForString:@"Unknown source specified"];
    v19 = MEMORY[0x277CBEBF8];
    if (!error)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v19 = [(ATXNotificationManagementInspector *)self fetchNotificationsFromDbFromStartDate:v16 endDate:v18];
  v20 = 0;
  if (error)
  {
LABEL_14:
    v21 = v20;
    *error = v20;
  }

LABEL_15:
  if (messagesCopy)
  {
    v33 = v18;
    v34 = v16;
    v35 = dateCopy;
    v36 = sourceCopy;
    v22 = [MEMORY[0x277CBEB98] setWithArray:&unk_283A58910];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v32 = v19;
    v23 = v19;
    v24 = [v23 countByEnumeratingWithState:&v37 objects:v42 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v38;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v38 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = *(*(&v37 + 1) + 8 * i);
          bundleID = [v28 bundleID];
          v30 = [v22 containsObject:bundleID];

          if (v30)
          {
            [v28 setIsMessage:1];
          }
        }

        v25 = [v23 countByEnumeratingWithState:&v37 objects:v42 count:16];
      }

      while (v25);
    }

    dateCopy = v35;
    sourceCopy = v36;
    v18 = v33;
    v16 = v34;
    v19 = v32;
  }

  return v19;
}

- (id)logAndCreateErrorForString:(id)string
{
  v11[2] = *MEMORY[0x277D85DE8];
  stringCopy = string;
  v5 = __atxlog_handle_default(stringCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [ATXNotificationManagementInspector logAndCreateErrorForString:?];
  }

  v6 = *MEMORY[0x277CCA460];
  v10[0] = *MEMORY[0x277CCA068];
  v10[1] = v6;
  v11[0] = stringCopy;
  v11[1] = stringCopy;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ATXNotificationManagementInspector" code:1 userInfo:v7];

  return v8;
}

- (id)fetchNotificationsFromBiomeFromStartDate:(id)date endDate:(id)endDate outError:(id *)error
{
  dateCopy = date;
  endDateCopy = endDate;
  v10 = [objc_alloc(MEMORY[0x277CEBCC8]) initWithMaxSize:200];
  v11 = objc_opt_new();
  [dateCopy timeIntervalSinceReferenceDate];
  v12 = [v11 publisherFromStartTime:?];

  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__67;
  v29 = __Block_byref_object_dispose__67;
  v30 = 0;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __96__ATXNotificationManagementInspector_fetchNotificationsFromBiomeFromStartDate_endDate_outError___block_invoke;
  v24[3] = &unk_27859EF10;
  v24[4] = self;
  v24[5] = &v25;
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __96__ATXNotificationManagementInspector_fetchNotificationsFromBiomeFromStartDate_endDate_outError___block_invoke_88;
  v21 = &unk_27859EF38;
  v13 = endDateCopy;
  v22 = v13;
  v14 = v10;
  v23 = v14;
  v15 = [v12 sinkWithCompletion:v24 shouldContinue:&v18];
  if (error)
  {
    *error = v26[5];
  }

  toArray = [v14 toArray];

  _Block_object_dispose(&v25, 8);

  return toArray;
}

void __96__ATXNotificationManagementInspector_fetchNotificationsFromBiomeFromStartDate_endDate_outError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 state] == 1)
  {
    v4 = __atxlog_handle_default(1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __96__ATXNotificationManagementInspector_fetchNotificationsFromBiomeFromStartDate_endDate_outError___block_invoke_cold_1(a1, v3);
    }

    v5 = [v3 error];
    v6 = [v5 copy];
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }
}

BOOL __96__ATXNotificationManagementInspector_fetchNotificationsFromBiomeFromStartDate_endDate_outError___block_invoke_88(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 timestamp];
  v5 = v4;
  [*(a1 + 32) timeIntervalSinceReferenceDate];
  v7 = v6;
  if (v5 <= v6)
  {
    v8 = [v3 eventBody];
    if ([v8 isReceiveEvent])
    {
      v9 = [v8 notification];

      if (v9)
      {
        v10 = *(a1 + 40);
        v11 = [v8 notification];
        [v10 addObject:v11];
      }
    }
  }

  return v5 <= v7;
}

- (id)fetchNotificationsFromDbFromStartDate:(id)date endDate:(id)endDate
{
  endDateCopy = endDate;
  dateCopy = date;
  v7 = objc_opt_new();
  [v7 updateDatabase];
  v8 = [v7 allNotificationsBetweenStartTimestamp:dateCopy endTimestamp:endDateCopy limit:200];

  return v8;
}

- (id)constructStacksForNotifications:(id)notifications
{
  v25 = *MEMORY[0x277D85DE8];
  notificationsCopy = notifications;
  v4 = objc_opt_new();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = notificationsCopy;
  v5 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        v10 = MEMORY[0x277CCACA8];
        bundleID = [v9 bundleID];
        threadID = [v9 threadID];
        v13 = [v10 stringWithFormat:@"(%@, %@)", bundleID, threadID];

        v14 = [v4 objectForKeyedSubscript:v13];

        if (!v14)
        {
          v15 = objc_opt_new();
          [v4 setObject:v15 forKeyedSubscript:v13];
        }

        v16 = [v4 objectForKeyedSubscript:v13];
        [v16 addObject:v9];
      }

      v6 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v6);
  }

  allValues = [v4 allValues];

  return allValues;
}

- (id)constructStacksGroupedByAppForNotifications:(id)notifications
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = [(ATXNotificationManagementInspector *)self constructStacksForNotifications:notifications];
  v4 = objc_opt_new();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v24;
    *&v7 = 138412290;
    v22 = v7;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v23 + 1) + 8 * i);
        firstObject = [v11 firstObject];
        bundleID = [firstObject bundleID];

        if (bundleID)
        {
          v15 = [v4 objectForKeyedSubscript:bundleID];

          if (!v15)
          {
            v16 = objc_opt_new();
            [v4 setObject:v16 forKeyedSubscript:bundleID];
          }

          v17 = [v4 objectForKeyedSubscript:bundleID];
          [v17 addObject:v11];
        }

        else
        {
          v17 = __atxlog_handle_notification_management(v14);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            v18 = objc_opt_class();
            v19 = NSStringFromClass(v18);
            *buf = v22;
            v28 = v19;
            _os_log_impl(&dword_2263AA000, v17, OS_LOG_TYPE_INFO, "[%@] Missing bundle ID for stack", buf, 0xCu);
          }
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v23 objects:v29 count:16];
    }

    while (v8);
  }

  allValues = [v4 allValues];

  return allValues;
}

void __110__ATXNotificationManagementInspector_fetchSerializedNotificationDigestFromFileData_digestTimeString_outError___block_invoke_57_cold_1(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_2_9(a1);
  v2 = NSStringFromClass(v1);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(&dword_2263AA000, v3, v4, "%@ - timed out trying to get digest", v5, v6, v7, v8);
}

void __111__ATXNotificationManagementInspector_fetchSerializedMissedNotificationRankingFromFileData_modeString_outError___block_invoke_63_cold_1(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_2_9(a1);
  v2 = NSStringFromClass(v1);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(&dword_2263AA000, v3, v4, "%@ - timed out trying to get missed notification ranking", v5, v6, v7, v8);
}

- (void)logAndCreateErrorForString:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_5(&dword_2263AA000, v3, v4, "[%@] Error: %@", v5, v6, v7, v8);
}

void __96__ATXNotificationManagementInspector_fetchNotificationsFromBiomeFromStartDate_endDate_outError___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v3 = OUTLINED_FUNCTION_2_9(a1);
  v4 = NSStringFromClass(v3);
  v5 = [a2 error];
  v6 = [v5 localizedDescription];
  *v13 = 138412546;
  *&v13[4] = v4;
  *&v13[12] = 2112;
  *&v13[14] = v6;
  OUTLINED_FUNCTION_1_5(&dword_2263AA000, v7, v8, "[%@] Failed to fetch Biome events with error %@", v9, v10, v11, v12, *v13, *&v13[8], *&v13[16]);
}

@end