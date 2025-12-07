@interface CLSSceneModel
+ (unint64_t)baseSceneAnalysisVersionWithSceneAnalysisVersion:(unint64_t)version;
- (CLSSceneModel)initWithSceneAnalysisVersion:(unint64_t)version;
- (id)confidenceThresholdBySceneIdentifierForSceneNames:(id)names withThresholdType:(unint64_t)type;
- (id)modelInfo;
@end

@implementation CLSSceneModel

- (id)confidenceThresholdBySceneIdentifierForSceneNames:(id)names withThresholdType:(unint64_t)type
{
  v23 = *MEMORY[0x277D85DE8];
  namesCopy = names;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = namesCopy;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    lowercaseString = 0;
    v12 = *v19;
    do
    {
      v13 = 0;
      v14 = lowercaseString;
      do
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v8);
        }

        lowercaseString = [*(*(&v18 + 1) + 8 * v13) lowercaseString];

        [v7 addObject:lowercaseString];
        ++v13;
        v14 = lowercaseString;
      }

      while (v10 != v13);
      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  v17.receiver = self;
  v17.super_class = CLSSceneModel;
  v15 = [(CLSTaxonomyBasedModel *)&v17 confidenceThresholdBySceneIdentifierForSceneNames:v7 withThresholdType:type];

  return v15;
}

- (id)modelInfo
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);

  return v2;
}

- (CLSSceneModel)initWithSceneAnalysisVersion:(unint64_t)version
{
  versionCopy = version;
  v19 = *MEMORY[0x277D85DE8];
  v5 = [objc_opt_class() baseSceneAnalysisVersionWithSceneAnalysisVersion:version];
  if (v5)
  {
    v6 = v5;
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v5];
    stringValue = [v7 stringValue];

    v16 = 0;
    initWithLatestTaxonomy = [objc_alloc(MEMORY[0x277D3B4C8]) initWithIdentifier:stringValue error:&v16];
    v10 = v16;
    if (initWithLatestTaxonomy)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        digest = [initWithLatestTaxonomy digest];
        *buf = 67109378;
        *v18 = v6;
        *&v18[4] = 2112;
        *&v18[6] = digest;
        _os_log_impl(&dword_25E5F0000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Setting up scene model version %d using scene taxonomy with digest '%@'", buf, 0x12u);
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        *v18 = stringValue;
        *&v18[8] = 2112;
        *&v18[10] = v10;
        _os_log_error_impl(&dword_25E5F0000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Error instantiating scene taxonomy for version %@, using latest: %@", buf, 0x16u);
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
        goto LABEL_14;
      }
    }

    v15.receiver = self;
    v15.super_class = CLSSceneModel;
    v13 = [(CLSTaxonomyBasedModel *)&v15 initWithSceneTaxonomy:initWithLatestTaxonomy];
    if (v13)
    {
      v13->_version = v6;
    }

    self = v13;

    selfCopy = self;
LABEL_14:

    goto LABEL_15;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    *v18 = versionCopy;
    *&v18[4] = 2112;
    *&v18[6] = objc_opt_class();
    _os_log_impl(&dword_25E5F0000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Unsupported version %d in %@", buf, 0x12u);
  }

  selfCopy = 0;
LABEL_15:

  return selfCopy;
}

+ (unint64_t)baseSceneAnalysisVersionWithSceneAnalysisVersion:(unint64_t)version
{
  v3 = 33;
  if (version < 0x21)
  {
    v3 = 0;
  }

  if (version >= 0x54)
  {
    return 84;
  }

  else
  {
    return v3;
  }
}

@end