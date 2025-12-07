@interface APOdmlAllowList
+ (id)sharedInstance;
- (APOdmlAllowList)init;
- (BOOL)isAllowed:(id)allowed;
- (unint64_t)count;
- (void)reinitializeAllowList;
@end

@implementation APOdmlAllowList

+ (id)sharedInstance
{
  if (qword_280CCF548 != -1)
  {
    sub_260EF80D8();
  }

  v3 = qword_280CCF540;

  return v3;
}

- (APOdmlAllowList)init
{
  v5.receiver = self;
  v5.super_class = APOdmlAllowList;
  v2 = [(APOdmlAllowList *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(APOdmlAllowList *)v2 reinitializeAllowList];
  }

  return v3;
}

- (void)reinitializeAllowList
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = +[APOdmlAssetManagerCoordinator sharedAssetManagerCoordinator];
  v4 = [v3 assetManagerForPlacementType:0 assetManagerType:0];

  v5 = [v4 pathForFactor:@"AllowList" isDirectory:0];
  if (v5)
  {
    v6 = objc_alloc_init(APOdmlAllowListReader);
    v7 = [(APOdmlAllowListReader *)v6 openForReadingContentsOfURL:v5];
    if (v7)
    {
      v8 = OdmlLogForCategory(7uLL);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *v14 = 138412546;
        *&v14[4] = objc_opt_class();
        *&v14[12] = 2112;
        *&v14[14] = v7;
        v9 = *&v14[4];
        _os_log_impl(&dword_260ECB000, v8, OS_LOG_TYPE_ERROR, "[%@] Error initializing AllowList: %@", v14, 0x16u);
      }

      [APOdmlAnalyticsReranking sendEvent:v7 additionalDetails:0];
      readFile = objc_alloc_init(MEMORY[0x277CBEB98]);
    }

    else
    {
      readFile = [(APOdmlAllowListReader *)v6 readFile];
    }

    v13 = readFile;
    [(APOdmlAllowList *)self setAllowList:readFile, *v14, *&v14[8]];
  }

  else
  {
    v11 = OdmlLogForCategory(7uLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *v14 = 138412290;
      *&v14[4] = objc_opt_class();
      v12 = *&v14[4];
      _os_log_impl(&dword_260ECB000, v11, OS_LOG_TYPE_ERROR, "[%@] Bad path for AllowList asset.", v14, 0xCu);
    }

    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"APOdmlRerankingErrorDomain" code:3004 userInfo:0];
    [APOdmlAnalyticsReranking sendEvent:v6 additionalDetails:0];
    v7 = objc_alloc_init(MEMORY[0x277CBEB98]);
    [(APOdmlAllowList *)self setAllowList:v7];
  }
}

- (BOOL)isAllowed:(id)allowed
{
  allowedCopy = allowed;
  allowList = [(APOdmlAllowList *)self allowList];
  v6 = [allowList containsObject:allowedCopy];

  return v6;
}

- (unint64_t)count
{
  allowList = [(APOdmlAllowList *)self allowList];
  v3 = [allowList count];

  return v3;
}

@end