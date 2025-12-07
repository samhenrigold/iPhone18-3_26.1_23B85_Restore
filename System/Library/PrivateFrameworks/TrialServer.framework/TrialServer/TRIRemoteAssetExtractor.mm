@interface TRIRemoteAssetExtractor
- ($A5A652246548B43F8BC05201A1C72A70)extractArchiveFromFile:(id)file withArchiveName:(id)name toEmptyDirectory:(id)directory postExtractionCompression:(id)compression error:(id *)error;
- (TRIRemoteAssetExtractor)initWithMonitoredActivity:(id)activity;
@end

@implementation TRIRemoteAssetExtractor

- (TRIRemoteAssetExtractor)initWithMonitoredActivity:(id)activity
{
  activityCopy = activity;
  v9.receiver = self;
  v9.super_class = TRIRemoteAssetExtractor;
  v6 = [(TRIRemoteAssetExtractor *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_monitoredActivity, activity);
  }

  return v7;
}

- ($A5A652246548B43F8BC05201A1C72A70)extractArchiveFromFile:(id)file withArchiveName:(id)name toEmptyDirectory:(id)directory postExtractionCompression:(id)compression error:(id *)error
{
  v47 = *MEMORY[0x277D85DE8];
  fileCopy = file;
  nameCopy = name;
  directoryCopy = directory;
  monitoredActivity = self->_monitoredActivity;
  if (monitoredActivity && xpc_activity_should_defer(monitoredActivity))
  {
    v15 = TRILogCategory_Archiving();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v16.var0 = 2;
      _os_log_impl(&dword_26F567000, v15, OS_LOG_TYPE_DEFAULT, "Deferral requested before start of archive extraction.", buf, 2u);
    }

    else
    {
      v16.var0 = 2;
    }
  }

  else
  {
    v15 = [objc_alloc(MEMORY[0x277CCAE80]) initWithServiceName:@"com.apple.trial.TrialArchivingService"];
    v17 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287FEF680];
    [v15 setRemoteObjectInterface:v17];

    [v15 resume];
    *buf = 0;
    v39 = buf;
    v40 = 0x3032000000;
    v41 = __Block_byref_object_copy__37;
    v42 = __Block_byref_object_dispose__37;
    v43 = 0;
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __115__TRIRemoteAssetExtractor_extractArchiveFromFile_withArchiveName_toEmptyDirectory_postExtractionCompression_error___block_invoke;
    v37[3] = &unk_279DE09F8;
    v37[4] = buf;
    v18 = [v15 synchronousRemoteObjectProxyWithErrorHandler:v37];
    v19 = [TRISandboxExtensionFactory extensionTokenForPath:directoryCopy extensionClass:1];
    if (v19)
    {
      v20 = MEMORY[0x277CCA9F8];
      v21 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:fileCopy];
      v36 = 0;
      v22 = [v20 fileHandleForReadingFromURL:v21 error:&v36];
      v26 = v36;

      if (v22)
      {
        *v44 = 0;
        *&v44[8] = v44;
        *&v44[16] = 0x2810000000;
        v45 = &unk_26F7089E2;
        v46 = 0;
        v23 = self->_monitoredActivity;
        v28[0] = MEMORY[0x277D85DD0];
        v28[1] = 3221225472;
        v28[2] = __115__TRIRemoteAssetExtractor_extractArchiveFromFile_withArchiveName_toEmptyDirectory_postExtractionCompression_error___block_invoke_29;
        v28[3] = &unk_279DE32F8;
        v29 = v18;
        v30 = v22;
        v31 = nameCopy;
        v32 = directoryCopy;
        v33 = v19;
        v34 = v44;
        var0 = compression.var0;
        [TRIDeferralNotifier forwardDeferralsFromMonitoredActivity:v23 usingDarwinNotificationName:"com.apple.trial.TrialArchivingService.shouldDefer" whileExecutingBlock:v28];
        [v15 invalidate];
        if (error)
        {
          *error = *(v39 + 5);
        }

        if (*(v39 + 5))
        {
          v16.var0 = 0;
        }

        else
        {
          v16.var0 = *(*&v44[8] + 32);
        }

        _Block_object_dispose(v44, 8);
      }

      else
      {
        v24 = TRILogCategory_Server();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          *v44 = 138543618;
          *&v44[4] = fileCopy;
          *&v44[12] = 2114;
          *&v44[14] = v26;
          _os_log_error_impl(&dword_26F567000, v24, OS_LOG_TYPE_ERROR, "Failed to open archive handle for %{public}@ with error %{public}@", v44, 0x16u);
        }

        v16.var0 = 0;
      }
    }

    else
    {
      v16.var0 = 0;
    }

    _Block_object_dispose(buf, 8);
  }

  return v16;
}

void __115__TRIRemoteAssetExtractor_extractArchiveFromFile_withArchiveName_toEmptyDirectory_postExtractionCompression_error___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = TRILogCategory_Server();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = v3;
    _os_log_impl(&dword_26F567000, v4, OS_LOG_TYPE_DEFAULT, "connection invalidated with error %{public}@", &v7, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __115__TRIRemoteAssetExtractor_extractArchiveFromFile_withArchiveName_toEmptyDirectory_postExtractionCompression_error___block_invoke_29(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = [MEMORY[0x277CBEBC0] fileURLWithPath:a1[7] isDirectory:1];
  v6 = a1[10];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __115__TRIRemoteAssetExtractor_extractArchiveFromFile_withArchiveName_toEmptyDirectory_postExtractionCompression_error___block_invoke_2;
  v8[3] = &unk_279DE32D0;
  v7 = a1[8];
  v10 = a1[9];
  v9 = a1[6];
  [v2 extractArchiveFromHandle:v3 withArchiveName:v4 toDirectory:v5 destDirExtension:v7 postExtractionCompression:v6 completion:v8];
}

void __115__TRIRemoteAssetExtractor_extractArchiveFromFile_withArchiveName_toEmptyDirectory_postExtractionCompression_error___block_invoke_2(uint64_t a1, char a2)
{
  v11 = *MEMORY[0x277D85DE8];
  *(*(*(a1 + 40) + 8) + 32) = a2;
  v3 = TRILogCategory_Server();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = *(*(*(a1 + 40) + 8) + 32);
    if (v5 > 2)
    {
      v6 = 0;
    }

    else
    {
      v6 = off_279DE3318[v5];
    }

    v7 = 138543618;
    v8 = v4;
    v9 = 2114;
    v10 = v6;
    _os_log_impl(&dword_26F567000, v3, OS_LOG_TYPE_DEFAULT, "extraction of %{public}@ completed with result: %{public}@", &v7, 0x16u);
  }
}

@end