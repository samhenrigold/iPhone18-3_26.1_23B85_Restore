@interface VNImageBasedRequest(MediaAnalysis)
+ (id)vcp_sceneRequestWithRequestClass:()MediaAnalysis andRevision:;
- (uint64_t)_configureRequestWithRevision:()MediaAnalysis;
@end

@implementation VNImageBasedRequest(MediaAnalysis)

- (uint64_t)_configureRequestWithRevision:()MediaAnalysis
{
  v19 = *MEMORY[0x1E69E9840];
  [self setMetalContextPriority:1];
  v5 = [self setPreferBackgroundProcessing:1];
  if (DeviceHasANE(v5, v6) && [objc_opt_class() _allowANE])
  {
    defaultANEDevice = [MEMORY[0x1E6984608] defaultANEDevice];
    [self setProcessingDevice:defaultANEDevice];
  }

  v12 = 0;
  v8 = [self setRevision:a3 error:&v12];
  v9 = v12;
  if ((v8 & 1) == 0 && MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v10 = objc_opt_class();
    *buf = 138412802;
    v14 = v10;
    v15 = 2048;
    v16 = a3;
    v17 = 2112;
    v18 = v9;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to set %@::setRevision %lu: %@", buf, 0x20u);
  }

  return v8;
}

+ (id)vcp_sceneRequestWithRequestClass:()MediaAnalysis andRevision:
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = objc_alloc_init(a3);
  v7 = v6;
  if (!v6)
  {
    if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    v12 = 138412290;
    v13 = a3;
    v9 = MEMORY[0x1E69E9C10];
    v10 = "Failed to create %@";
    goto LABEL_10;
  }

  if ([v6 _configureRequestWithRevision:a4])
  {
    v8 = v7;
    goto LABEL_12;
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v12 = 138412290;
    v13 = a3;
    v9 = MEMORY[0x1E69E9C10];
    v10 = "Failed to configure %@";
LABEL_10:
    _os_log_impl(&dword_1C9B70000, v9, OS_LOG_TYPE_ERROR, v10, &v12, 0xCu);
  }

LABEL_11:
  v8 = 0;
LABEL_12:

  return v8;
}

@end