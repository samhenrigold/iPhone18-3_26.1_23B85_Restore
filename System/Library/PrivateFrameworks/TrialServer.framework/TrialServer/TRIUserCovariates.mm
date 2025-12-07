@interface TRIUserCovariates
- (TRIUserCovariates)initWithContext:(id)context;
- (id)_applicationRecordForBundleId:(id)id;
- (id)tri_hasApplicationWithBundleId:(id)id;
- (id)tri_majorVersionForBundleId:(id)id;
- (id)tri_minorVersionForBundleId:(id)id;
- (id)tri_patchVersionForBundleId:(id)id;
- (id)tri_shortVersionStringForBundleId:(id)id;
- (id)tri_versionForBundleId:(id)id;
- (id)tri_versionForBundleId:(id)id compareToString:(id)string;
- (id)tri_versionStringForBundleId:(id)id;
@end

@implementation TRIUserCovariates

- (TRIUserCovariates)initWithContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = TRIUserCovariates;
  v6 = [(TRIUserCovariates *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_context, context);
  }

  return v7;
}

- (id)_applicationRecordForBundleId:(id)id
{
  v13 = *MEMORY[0x277D85DE8];
  idCopy = id;
  v8 = 0;
  v4 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:idCopy allowPlaceholder:0 error:&v8];
  v5 = v8;
  if (!v4)
  {
    v6 = TRILogCategory_Server();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v10 = idCopy;
      v11 = 2114;
      v12 = v5;
      _os_log_debug_impl(&dword_26F567000, v6, OS_LOG_TYPE_DEBUG, "application not found for bundle id {public}%@ -- %{public}@", buf, 0x16u);
    }
  }

  return v4;
}

- (id)tri_hasApplicationWithBundleId:(id)id
{
  idCopy = id;
  v5 = objc_autoreleasePoolPush();
  v6 = MEMORY[0x277CCABB0];
  v7 = [(TRIUserCovariates *)self _applicationRecordForBundleId:idCopy];
  v8 = [v6 numberWithInt:v7 != 0];

  objc_autoreleasePoolPop(v5);

  return v8;
}

- (id)tri_shortVersionStringForBundleId:(id)id
{
  idCopy = id;
  v5 = objc_autoreleasePoolPush();
  v6 = [(TRIUserCovariates *)self _applicationRecordForBundleId:idCopy];
  shortVersionString = [v6 shortVersionString];
  v8 = shortVersionString;
  v9 = &stru_287FA0430;
  if (shortVersionString)
  {
    v9 = shortVersionString;
  }

  v10 = v9;

  objc_autoreleasePoolPop(v5);

  return v10;
}

- (id)tri_versionStringForBundleId:(id)id
{
  idCopy = id;
  v5 = objc_autoreleasePoolPush();
  v6 = [(TRIUserCovariates *)self _applicationRecordForBundleId:idCopy];
  exactBundleVersion = [v6 exactBundleVersion];
  v8 = exactBundleVersion;
  v9 = &stru_287FA0430;
  if (exactBundleVersion)
  {
    v9 = exactBundleVersion;
  }

  v10 = v9;

  objc_autoreleasePoolPop(v5);

  return v10;
}

- (id)tri_versionForBundleId:(id)id
{
  v3 = [(TRIUserCovariates *)self tri_shortVersionStringForBundleId:id];
  v4 = [MEMORY[0x277D73800] parseVersionFromString:v3 withPrefix:0];

  return v4;
}

- (id)tri_majorVersionForBundleId:(id)id
{
  v3 = [(TRIUserCovariates *)self tri_versionForBundleId:id];
  majorVersion = [v3 majorVersion];

  return majorVersion;
}

- (id)tri_minorVersionForBundleId:(id)id
{
  v3 = [(TRIUserCovariates *)self tri_versionForBundleId:id];
  minorVersion = [v3 minorVersion];

  return minorVersion;
}

- (id)tri_patchVersionForBundleId:(id)id
{
  v3 = [(TRIUserCovariates *)self tri_versionForBundleId:id];
  patchVersion = [v3 patchVersion];

  return patchVersion;
}

- (id)tri_versionForBundleId:(id)id compareToString:(id)string
{
  stringCopy = string;
  v7 = [(TRIUserCovariates *)self tri_versionForBundleId:id];
  v8 = [MEMORY[0x277D73800] parseVersionFromString:stringCopy withPrefix:0];

  v9 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v7, "compare:", v8)}];

  return v9;
}

@end