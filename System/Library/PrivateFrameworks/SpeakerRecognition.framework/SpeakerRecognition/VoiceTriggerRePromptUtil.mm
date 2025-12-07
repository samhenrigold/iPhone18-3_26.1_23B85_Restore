@interface VoiceTriggerRePromptUtil
+ (id)sharedInstance;
- (BOOL)isRePromptableWithAssistantId:(id)id;
- (id)initAndLoadImpactedAssistantIdsForRePrompt;
- (id)initAndLoadImpactedAssistantIdsForRePromptWithAsset:(id)asset;
@end

@implementation VoiceTriggerRePromptUtil

- (BOOL)isRePromptableWithAssistantId:(id)id
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCAC38];
  idCopy = id;
  processInfo = [v4 processInfo];
  [processInfo systemUptime];
  v8 = v7;

  bloomFilter = self->_bloomFilter;
  v10 = [idCopy dataUsingEncoding:4];

  v11 = [(BloomFilter *)bloomFilter contains:v10];
  processInfo2 = [MEMORY[0x277CCAC38] processInfo];
  [processInfo2 systemUptime];
  v14 = v13;

  v15 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v17 = 136315394;
    v18 = "[VoiceTriggerRePromptUtil isRePromptableWithAssistantId:]";
    v19 = 2050;
    v20 = (v14 - v8) * 1000.0;
    _os_log_impl(&dword_225E12000, v15, OS_LOG_TYPE_DEFAULT, "%s Bloom filter inference to check if ID exists took %{public}.3fms", &v17, 0x16u);
  }

  return v11;
}

- (id)initAndLoadImpactedAssistantIdsForRePromptWithAsset:(id)asset
{
  v29 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  v24.receiver = self;
  v24.super_class = VoiceTriggerRePromptUtil;
  v5 = [(VoiceTriggerRePromptUtil *)&v24 init];
  if (!v5)
  {
    goto LABEL_15;
  }

  SSRLogInitIfNeeded();
  blobVersion = [assetCopy blobVersion];
  if (([blobVersion isEqualToString:@"1"] & 1) == 0)
  {
    v19 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v26 = "[VoiceTriggerRePromptUtil initAndLoadImpactedAssistantIdsForRePromptWithAsset:]";
      v27 = 2112;
      v28 = blobVersion;
      _os_log_error_impl(&dword_225E12000, v19, OS_LOG_TYPE_ERROR, "%s Unsupported blob version %@", buf, 0x16u);
    }

    goto LABEL_13;
  }

  blobName = [assetCopy blobName];
  resourcePath = [assetCopy resourcePath];
  v9 = [resourcePath stringByAppendingPathComponent:blobName];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v11 = [defaultManager fileExistsAtPath:v9];

  if ((v11 & 1) == 0)
  {
    v20 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v26 = "[VoiceTriggerRePromptUtil initAndLoadImpactedAssistantIdsForRePromptWithAsset:]";
      v27 = 2114;
      v28 = v9;
      _os_log_error_impl(&dword_225E12000, v20, OS_LOG_TYPE_ERROR, "%s Blob file not found at path : %{public}@", buf, 0x16u);
    }

    goto LABEL_12;
  }

  v12 = MEMORY[0x277CCAAC8];
  v13 = objc_opt_class();
  v14 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v9];
  v23 = 0;
  v15 = [v12 unarchivedObjectOfClass:v13 fromData:v14 error:&v23];
  v16 = v23;
  bloomFilter = v5->_bloomFilter;
  v5->_bloomFilter = v15;

  if (!v16)
  {

LABEL_15:
    v21 = v5;
    goto LABEL_16;
  }

  v18 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v26 = "[VoiceTriggerRePromptUtil initAndLoadImpactedAssistantIdsForRePromptWithAsset:]";
    v27 = 2114;
    v28 = v16;
    _os_log_error_impl(&dword_225E12000, v18, OS_LOG_TYPE_ERROR, "%s Failed to unarchive blob with err: %{public}@", buf, 0x16u);
  }

LABEL_12:
LABEL_13:

  v21 = 0;
LABEL_16:

  return v21;
}

- (id)initAndLoadImpactedAssistantIdsForRePrompt
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(SSRMobileAssetProvider);
  v4 = [(SSRMobileAssetProvider *)v3 installedAssetOfType:8 forLanguageCode:0];
  if (v4)
  {
    self = [(VoiceTriggerRePromptUtil *)self initAndLoadImpactedAssistantIdsForRePromptWithAsset:v4];
    selfCopy = self;
  }

  else
  {
    v6 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      v8 = 136315138;
      v9 = "[VoiceTriggerRePromptUtil initAndLoadImpactedAssistantIdsForRePrompt]";
      _os_log_error_impl(&dword_225E12000, v6, OS_LOG_TYPE_ERROR, "%s No asset found, nothing to do", &v8, 0xCu);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_3936 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_3936, &__block_literal_global_3937);
  }

  v3 = sharedInstance_vtRepromptUtil;

  return v3;
}

uint64_t __42__VoiceTriggerRePromptUtil_sharedInstance__block_invoke()
{
  sharedInstance_vtRepromptUtil = [[VoiceTriggerRePromptUtil alloc] initAndLoadImpactedAssistantIdsForRePrompt];

  return MEMORY[0x2821F96F8]();
}

@end