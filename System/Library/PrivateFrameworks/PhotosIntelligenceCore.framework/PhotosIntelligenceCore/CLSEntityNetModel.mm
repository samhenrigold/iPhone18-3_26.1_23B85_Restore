@interface CLSEntityNetModel
+ (id)_sceneTaxonomyIdentifierForBaseVersion:(unint64_t)version;
+ (unint64_t)baseSceneAnalysisVersionWithSceneAnalysisVersion:(unint64_t)version;
- (CLSEntityNetModel)initWithSceneAnalysisVersion:(unint64_t)version;
@end

@implementation CLSEntityNetModel

- (CLSEntityNetModel)initWithSceneAnalysisVersion:(unint64_t)version
{
  versionCopy = version;
  v18 = *MEMORY[0x277D85DE8];
  v5 = [objc_opt_class() baseSceneAnalysisVersionWithSceneAnalysisVersion:version];
  if (v5)
  {
    v6 = v5;
    v7 = [objc_opt_class() _sceneTaxonomyIdentifierForBaseVersion:v5];
    if (v7)
    {
      v15 = 0;
      initWithLatestTaxonomy = [objc_alloc(MEMORY[0x277D3B4C8]) initWithIdentifier:v7 error:&v15];
      v9 = v15;
      if (initWithLatestTaxonomy)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          digest = [initWithLatestTaxonomy digest];
          *buf = 67109378;
          *v17 = v6;
          *&v17[4] = 2112;
          *&v17[6] = digest;
          _os_log_impl(&dword_25E5F0000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Setting up EntityNet model version %d using scene taxonomy with digest '%@'", buf, 0x12u);
        }

        goto LABEL_14;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        *v17 = v7;
        *&v17[8] = 2112;
        *&v17[10] = v9;
        _os_log_error_impl(&dword_25E5F0000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Error instantiating scene taxonomy for version %@, using latest: %@", buf, 0x16u);
      }
    }

    initWithLatestTaxonomy = [objc_alloc(MEMORY[0x277D3B4C8]) initWithLatestTaxonomy];
    if (!initWithLatestTaxonomy)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_25E5F0000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Error instantiating latest scene taxonomy", buf, 2u);
      }

      selfCopy = 0;
      goto LABEL_20;
    }

LABEL_14:
    v14.receiver = self;
    v14.super_class = CLSEntityNetModel;
    v12 = [(CLSTaxonomyBasedModel *)&v14 initWithSceneTaxonomy:initWithLatestTaxonomy];
    if (v12)
    {
      v12->_version = v6;
    }

    self = v12;

    selfCopy = self;
LABEL_20:

    goto LABEL_21;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    *v17 = versionCopy;
    *&v17[4] = 2112;
    *&v17[6] = objc_opt_class();
    _os_log_impl(&dword_25E5F0000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Unsupported version %d in %@", buf, 0x12u);
  }

  selfCopy = 0;
LABEL_21:

  return selfCopy;
}

+ (id)_sceneTaxonomyIdentifierForBaseVersion:(unint64_t)version
{
  v3 = @"84";
  if (version != 96)
  {
    v3 = 0;
  }

  if (version == 99)
  {
    return @"99";
  }

  else
  {
    return v3;
  }
}

+ (unint64_t)baseSceneAnalysisVersionWithSceneAnalysisVersion:(unint64_t)version
{
  v3 = 96;
  if (version < 0x60)
  {
    v3 = 0;
  }

  if (version >= 0x63)
  {
    return 99;
  }

  else
  {
    return v3;
  }
}

@end