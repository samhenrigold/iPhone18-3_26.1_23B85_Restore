@interface PPInternalRequestHandler
- (void)assetDefaultBundleOverridePathForAssetIdentifier:(id)identifier completion:(id)completion;
- (void)assetMetadataRefreshIntervalSecondsWithCompletion:(id)completion;
- (void)assetVersionsWithCompletion:(id)completion;
- (void)clearAssetMetadataRefreshIntervalSecondsWithCompletion:(id)completion;
- (void)setAssetDefaultBundleOverridePath:(id)path assetIdentifier:(id)identifier completion:(id)completion;
- (void)setAssetMetadataRefreshIntervalSeconds:(double)seconds completion:(id)completion;
- (void)setTrialUseDefaultFiles:(BOOL)files completion:(id)completion;
- (void)sysdiagnoseInformationWithCompletion:(id)completion;
- (void)trialOverridePath:(id)path namespaceName:(id)name factorName:(id)factorName completion:(id)completion;
@end

@implementation PPInternalRequestHandler

- (void)sysdiagnoseInformationWithCompletion:(id)completion
{
  v33[2] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v4 = objc_opt_new();
  v5 = +[PPSQLDatabase nonMigratingToolsInstance];
  v6 = v5;
  if (v5)
  {
    stats = [v5 stats];
    v25 = 0;
    v8 = [v6 checkWithError:&v25];
    v9 = v25;
    if (v9)
    {
      v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@", v9];
      [v4 setObject:v10 forKeyedSubscript:@"dbCheck-error"];
    }

    v11 = +[PPConfiguration sharedInstance];
    portraitVariantName = [v11 portraitVariantName];

    v32[0] = @"stats";
    v32[1] = @"check";
    v33[0] = stats;
    v33[1] = v8;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:2];
    [v4 setObject:v13 forKeyedSubscript:@"database"];

    v30 = @"variantName";
    v31 = portraitVariantName;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    [v4 setObject:v14 forKeyedSubscript:@"configuration"];
  }

  else
  {
    v28[0] = @"stats";
    null = [MEMORY[0x277CBEB68] null];
    v28[1] = @"check";
    v29[0] = null;
    null2 = [MEMORY[0x277CBEB68] null];
    v29[1] = null2;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:2];
    [v4 setObject:v17 forKeyedSubscript:@"database"];

    v26 = @"variantName";
    stats = [MEMORY[0x277CBEB68] null];
    v27 = stats;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    [v4 setObject:v9 forKeyedSubscript:@"configuration"];
  }

  v18 = objc_opt_new();
  [v4 setObject:v18 forKeyedSubscript:@"assets"];

  v19 = [v4 objectForKeyedSubscript:@"assets"];
  [v19 setObject:&unk_284785FA0 forKeyedSubscript:@"common"];

  v20 = [v4 objectForKeyedSubscript:@"assets"];
  [v20 setObject:&unk_284785FC8 forKeyedSubscript:@"non-watch"];

  v24 = 0;
  v21 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v4 options:3 error:&v24];
  v22 = v24;
  if (v21)
  {
    v23 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v21 encoding:4];
    completionCopy[2](completionCopy, v23, v22);
  }

  else
  {
    completionCopy[2](completionCopy, 0, v22);
  }
}

- (void)setTrialUseDefaultFiles:(BOOL)files completion:(id)completion
{
  filesCopy = files;
  completionCopy = completion;
  v5 = +[PPSettings sharedInstance];
  [v5 setTrialUseDefaultFiles:filesCopy];

  v6 = +[PPTrialWrapper sharedInstance];
  [v6 setUseDefaultFiles:filesCopy];

  v7 = +[PPTrialWrapper sharedInstance];
  [v7 callRegisteredUpdateHandlers];

  completionCopy[2](completionCopy, 1, 0);
}

- (void)trialOverridePath:(id)path namespaceName:(id)name factorName:(id)factorName completion:(id)completion
{
  pathCopy = path;
  nameCopy = name;
  factorNameCopy = factorName;
  completionCopy = completion;
  v12 = +[PPTrialWrapper sharedInstance];
  v13 = v12;
  if (pathCopy)
  {
    [v12 overrideFilepathForFileFactor:factorNameCopy namespaceName:nameCopy path:pathCopy];
  }

  else
  {
    [v12 clearOverrideFilepathForFileFactor:factorNameCopy namespaceName:nameCopy];
  }

  v14 = +[PPSettings sharedInstance];
  [v14 setTrialPathOverrideForNamespaceName:nameCopy factorName:factorNameCopy path:pathCopy];

  v15 = +[PPTrialWrapper sharedInstance];
  [v15 callRegisteredUpdateHandlersForNamespaceName:nameCopy];

  completionCopy[2](completionCopy, 1, 0);
}

- (void)assetVersionsWithCompletion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion, &unk_284785F78, 0);
  }
}

- (void)assetDefaultBundleOverridePathForAssetIdentifier:(id)identifier completion:(id)completion
{
  if (completion)
  {
    completionCopy = completion;
  }

  else
  {
    completionCopy = &__block_literal_global_151_19555;
  }

  identifierCopy = identifier;
  v8 = _Block_copy(completionCopy);
  v6 = +[PPSettings sharedInstance];
  v7 = [v6 assetDefaultBundleOverridePathForAssetIdentifier:identifierCopy];

  v8[2](v8, v7, 0);
}

- (void)setAssetDefaultBundleOverridePath:(id)path assetIdentifier:(id)identifier completion:(id)completion
{
  if (completion)
  {
    completionCopy = completion;
  }

  else
  {
    completionCopy = &__block_literal_global_148;
  }

  v6 = _Block_copy(completionCopy);
  v6[2](v6, 0);
}

- (void)assetMetadataRefreshIntervalSecondsWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = +[PPSettings sharedInstance];
  [v5 assetMetadataRefreshIntervalSeconds];
  (*(completion + 2))(completionCopy, 1, 0);
}

- (void)clearAssetMetadataRefreshIntervalSecondsWithCompletion:(id)completion
{
  completionCopy = completion;
  v3 = +[PPSettings sharedInstance];
  [v3 clearAssetMetadataRefreshIntervalSeconds];

  v4 = completionCopy;
  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0);
    v4 = completionCopy;
  }
}

- (void)setAssetMetadataRefreshIntervalSeconds:(double)seconds completion:(id)completion
{
  completionCopy = completion;
  v5 = +[PPSettings sharedInstance];
  [v5 setAssetMetadataRefreshIntervalSeconds:seconds];

  v6 = completionCopy;
  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0);
    v6 = completionCopy;
  }
}

@end