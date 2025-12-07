@interface WLTelemetry
+ (id)sharedInstance;
- (id)_telemetryDictionaryForContentTypeDidComplete:(id)complete downloadByteCount:(unint64_t)count importRecordCount:(unint64_t)recordCount importFailedRecordCount:(unint64_t)failedRecordCount downloadDuration:(unint64_t)duration importDuration:(unint64_t)importDuration android:(id)android model:(id)self0 version:(id)self1;
- (id)_telemetryDictionaryForPreparatoryDataDidComplete:(id)complete contentType:(id)type duration:(double)duration android:(id)android model:(id)model version:(id)version;
- (void)contentTypeDidComplete:(id)complete downloadByteCount:(unint64_t)count importRecordCount:(unint64_t)recordCount importFailedRecordCount:(unint64_t)failedRecordCount downloadDuration:(unint64_t)duration importDuration:(unint64_t)importDuration android:(id)android model:(id)self0 version:(id)self1;
- (void)daemonDidGetInterrupted;
- (void)deviceDidFailWithAuthenticationError;
- (void)deviceDidFailWithTimeout;
- (void)didLoadAndroidStore:(id)store selected:(BOOL)selected canceled:(BOOL)canceled inAttempts:(unint64_t)attempts;
- (void)didResolveTimeEstimate:(unint64_t)estimate forDownloadTask:(id)task threshold:(unint64_t)threshold actualTime:(unint64_t)time;
- (void)importDidFailSilentlyForContentType:(id)type;
- (void)migratorDidFinish:(id)finish;
- (void)photoLibraryDidFailWithExtension:(id)extension;
- (void)preparatoryDataDidComplete:(id)complete contentType:(id)type duration:(double)duration android:(id)android model:(id)model version:(id)version;
- (void)send:(id)send payload:(id)payload;
- (void)wifiDidFail;
@end

@implementation WLTelemetry

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[WLTelemetry sharedInstance];
  }

  v3 = sharedInstance__sharedInstance;

  return v3;
}

uint64_t __29__WLTelemetry_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(WLTelemetry);
  sharedInstance__sharedInstance = v0;

  return MEMORY[0x2821F96F8](v0);
}

- (void)send:(id)send payload:(id)payload
{
  payloadCopy = payload;
  sendCopy = send;
  _WLLog(v4, 2, @"WLTelemetry will send an event - %@ with payload %@.", v8, v9, v10, v11, v12, sendCopy);
  v13 = payloadCopy;
  AnalyticsSendEventLazy();
}

- (void)wifiDidFail
{
  _WLLog(v7, 2, @"WLTelemetry got wifiDidFail event.", v2, v3, v4, v5, v6, v10);
  v11 = objc_alloc_init(WLPayload);
  [(WLPayload *)v11 setState:@"wifi_error"];
  dictionary = [(WLPayload *)v11 dictionary];
  [(WLTelemetry *)self send:@"com.apple.welcomemat" payload:dictionary];
}

- (void)deviceDidFailWithTimeout
{
  _WLLog(v7, 2, @"WLTelemetry got deviceDidFailWithTimeout event.", v2, v3, v4, v5, v6, v10);
  v11 = objc_alloc_init(WLPayload);
  [(WLPayload *)v11 setState:@"device_discovery_error_timeout"];
  dictionary = [(WLPayload *)v11 dictionary];
  [(WLTelemetry *)self send:@"com.apple.welcomemat" payload:dictionary];
}

- (void)deviceDidFailWithAuthenticationError
{
  _WLLog(v7, 2, @"WLTelemetry got deviceDidFailWithAuthenticationError event.", v2, v3, v4, v5, v6, v10);
  v11 = objc_alloc_init(WLPayload);
  [(WLPayload *)v11 setState:@"device_discovery_error_authentication_failed"];
  dictionary = [(WLPayload *)v11 dictionary];
  [(WLTelemetry *)self send:@"com.apple.welcomemat" payload:dictionary];
}

- (void)migratorDidFinish:(id)finish
{
  finishCopy = finish;
  _WLLog(v3, 2, @"WLTelemetry got migratorDidFinish event.", v6, v7, v8, v9, v10, v11);
  dictionary = [finishCopy dictionary];

  [(WLTelemetry *)self send:@"com.apple.welcomemat" payload:dictionary];
}

- (id)_telemetryDictionaryForPreparatoryDataDidComplete:(id)complete contentType:(id)type duration:(double)duration android:(id)android model:(id)model version:(id)version
{
  v27[6] = *MEMORY[0x277D85DE8];
  v26[0] = @"contentType";
  v26[1] = @"dataType";
  v27[0] = type;
  v27[1] = complete;
  v26[2] = @"durationInSeconds";
  v12 = MEMORY[0x277CCABB0];
  durationCopy = duration;
  versionCopy = version;
  modelCopy = model;
  androidCopy = android;
  typeCopy = type;
  completeCopy = complete;
  v19 = [v12 numberWithInteger:durationCopy];
  v20 = v19;
  v21 = @"(unknown)";
  if (androidCopy)
  {
    v22 = androidCopy;
  }

  else
  {
    v22 = @"(unknown)";
  }

  v27[2] = v19;
  v27[3] = v22;
  v26[3] = @"androidOSVersion";
  v26[4] = @"androidDeviceModel";
  v26[5] = @"androidClientVersion";
  if (modelCopy)
  {
    v23 = modelCopy;
  }

  else
  {
    v23 = @"(unknown)";
  }

  if (versionCopy)
  {
    v21 = versionCopy;
  }

  v27[4] = v23;
  v27[5] = v21;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:6];

  return v24;
}

- (void)preparatoryDataDidComplete:(id)complete contentType:(id)type duration:(double)duration android:(id)android model:(id)model version:(id)version
{
  completeCopy = complete;
  typeCopy = type;
  androidCopy = android;
  modelCopy = model;
  versionCopy = version;
  v29 = [MEMORY[0x277CCABB0] numberWithDouble:duration];
  _WLLog(v8, 2, @"Telemetry: preparatoryDataDidComplete %@ contentType %@ duration %@", v19, v20, v21, v22, v23, completeCopy);

  v30 = completeCopy;
  v31 = typeCopy;
  v32 = androidCopy;
  v33 = modelCopy;
  v24 = versionCopy;
  v25 = modelCopy;
  v26 = androidCopy;
  v27 = typeCopy;
  v28 = completeCopy;
  AnalyticsSendEventLazy();
}

- (id)_telemetryDictionaryForContentTypeDidComplete:(id)complete downloadByteCount:(unint64_t)count importRecordCount:(unint64_t)recordCount importFailedRecordCount:(unint64_t)failedRecordCount downloadDuration:(unint64_t)duration importDuration:(unint64_t)importDuration android:(id)android model:(id)self0 version:(id)self1
{
  v34[9] = *MEMORY[0x277D85DE8];
  LODWORD(v11) = vcvtpd_u64_f64(vcvtd_n_f64_u64(count, 0x14uLL));
  v34[0] = complete;
  v33[0] = @"contentType";
  v33[1] = @"recordCount";
  v16 = MEMORY[0x277CCABB0];
  versionCopy = version;
  modelCopy = model;
  androidCopy = android;
  completeCopy = complete;
  v21 = [v16 numberWithUnsignedInteger:recordCount];
  v34[1] = v21;
  v33[2] = @"failedRecordCount";
  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:failedRecordCount];
  v34[2] = v22;
  v33[3] = @"downloadSizeInMegabytes";
  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v11];
  v34[3] = v23;
  v33[4] = @"downloadDurationInSeconds";
  v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:duration];
  v34[4] = v24;
  v33[5] = @"importDurationInSeconds";
  v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:importDuration];
  v26 = v25;
  v27 = @"(unknown)";
  if (androidCopy)
  {
    v28 = androidCopy;
  }

  else
  {
    v28 = @"(unknown)";
  }

  v34[5] = v25;
  v34[6] = v28;
  v33[6] = @"androidOSVersion";
  v33[7] = @"androidDeviceModel";
  v33[8] = @"androidClientVersion";
  if (modelCopy)
  {
    v29 = modelCopy;
  }

  else
  {
    v29 = @"(unknown)";
  }

  if (versionCopy)
  {
    v27 = versionCopy;
  }

  v34[7] = v29;
  v34[8] = v27;
  v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:9];

  return v30;
}

- (void)contentTypeDidComplete:(id)complete downloadByteCount:(unint64_t)count importRecordCount:(unint64_t)recordCount importFailedRecordCount:(unint64_t)failedRecordCount downloadDuration:(unint64_t)duration importDuration:(unint64_t)importDuration android:(id)android model:(id)self0 version:(id)self1
{
  completeCopy = complete;
  androidCopy = android;
  modelCopy = model;
  versionCopy = version;
  _WLLog(v11, 2, @"Telemetry: contentTypeDidComplete %@", v16, v17, v18, v19, v20, completeCopy);
  v25 = completeCopy;
  v26 = versionCopy;
  v21 = versionCopy;
  v22 = modelCopy;
  v23 = androidCopy;
  v24 = completeCopy;
  AnalyticsSendEventLazy();
}

- (void)importDidFailSilentlyForContentType:(id)type
{
  typeCopy = type;
  _WLLog(v3, 2, @"Telemetry: recordImportDidFail contentType %@", v5, v6, v7, v8, v9, typeCopy);
  v10 = typeCopy;
  AnalyticsSendEventLazy();
}

id __51__WLTelemetry_importDidFailSilentlyForContentType___block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v4 = @"contentType";
  v5[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

- (void)didResolveTimeEstimate:(unint64_t)estimate forDownloadTask:(id)task threshold:(unint64_t)threshold actualTime:(unint64_t)time
{
  taskCopy = task;
  _WLLog(v6, 2, @"Telemetry: timeEstimateDidResolve task %@ estimate %lu threshold %lu actual time %lu", v8, v9, v10, v11, v12, taskCopy);
  v13 = taskCopy;
  AnalyticsSendEventLazy();
}

id __75__WLTelemetry_didResolveTimeEstimate_forDownloadTask_threshold_actualTime___block_invoke(void *a1)
{
  v8[3] = *MEMORY[0x277D85DE8];
  v1 = a1[7];
  v2 = (100 * a1[5]) / a1[6];
  v8[0] = a1[4];
  v7[0] = @"downloadTask";
  v7[1] = @"magnitude";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v1];
  v8[1] = v3;
  v7[2] = @"accuracy";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v2];
  v8[2] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:3];

  return v5;
}

id __52__WLTelemetry_userDidChooseToInstallMigratableApps___block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"install";
  v1 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 32)];
  v5[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

id __59__WLTelemetry_didLookupAppsWithMatchedApps_mismatchedApps___block_invoke(uint64_t a1)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v6[0] = @"matched_apps";
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 32)];
  v6[1] = @"mismatched_apps";
  v7[0] = v2;
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 40)];
  v7[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

- (void)photoLibraryDidFailWithExtension:(id)extension
{
  extensionCopy = extension;
  if (extensionCopy)
  {
    v10 = extensionCopy;
  }

  else
  {
    v10 = &stru_2882C75C0;
  }

  _WLLog(v3, 2, @"Telemetry: photoLibraryDidFailWithExtension:%@", v5, v6, v7, v8, v9, v10);
  v11 = v10;
  AnalyticsSendEventLazy();
}

id __48__WLTelemetry_photoLibraryDidFailWithExtension___block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v4 = @"extension";
  v5[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

id __29__WLTelemetry_didLoadQRCode___block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"enabled";
  v1 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 32)];
  v5[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

- (void)didLoadAndroidStore:(id)store selected:(BOOL)selected canceled:(BOOL)canceled inAttempts:(unint64_t)attempts
{
  storeCopy = store;
  if (storeCopy)
  {
    v13 = storeCopy;
  }

  else
  {
    v13 = &stru_2882C75C0;
  }

  _WLLog(v6, 2, @"Telemetry: didLoadAndroidStore:%@ selected:%d canceled:%d inAttempts:%ld", v8, v9, v10, v11, v12, v13);
  v14 = v13;
  AnalyticsSendEventLazy();
}

id __64__WLTelemetry_didLoadAndroidStore_selected_canceled_inAttempts___block_invoke(uint64_t a1)
{
  v9[4] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v9[0] = *(a1 + 32);
  v8[0] = @"android_store";
  v8[1] = @"attempts";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v2];
  v9[1] = v3;
  v8[2] = @"canceled";
  v4 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 48)];
  v9[2] = v4;
  v8[3] = @"selected";
  v5 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 49)];
  v9[3] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:4];

  return v6;
}

- (void)daemonDidGetInterrupted
{
  _WLLog(v7, 2, @"Telemetry: daemonDidGetInterrupted", v2, v3, v4, v5, v6, vars0);

  AnalyticsSendEventLazy();
}

@end