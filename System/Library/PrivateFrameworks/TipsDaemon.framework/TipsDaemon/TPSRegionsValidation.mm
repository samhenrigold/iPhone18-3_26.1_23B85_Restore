@interface TPSRegionsValidation
- (TPSRegionsValidation)initWithTargetRegions:(id)regions excludeRegions:(id)excludeRegions;
- (void)validateWithCompletion:(id)completion;
@end

@implementation TPSRegionsValidation

- (TPSRegionsValidation)initWithTargetRegions:(id)regions excludeRegions:(id)excludeRegions
{
  excludeRegionsCopy = excludeRegions;
  v7 = [regions valueForKeyPath:@"lowercaseString"];
  v8 = [excludeRegionsCopy valueForKeyPath:@"lowercaseString"];

  v11.receiver = self;
  v11.super_class = TPSRegionsValidation;
  v9 = [(TPSInclusivityValidation *)&v11 initWithTargetValues:v7 excludeValues:v8];

  return v9;
}

- (void)validateWithCompletion:(id)completion
{
  v32 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  targetRegions = [(TPSRegionsValidation *)self targetRegions];
  if ([targetRegions count])
  {

LABEL_4:
    tps_userRegion = [MEMORY[0x277CBEAF8] tps_userRegion];
    targetRegions2 = [(TPSRegionsValidation *)self targetRegions];
    if ([targetRegions2 count])
    {
      targetRegions3 = [(TPSRegionsValidation *)self targetRegions];
      v11 = [targetRegions3 containsObject:tps_userRegion];
    }

    else
    {
      v11 = 1;
    }

    excludeRegions = [(TPSRegionsValidation *)self excludeRegions];
    v13 = [excludeRegions containsObject:tps_userRegion];

    v14 = v11 & (v13 ^ 1u);
    targeting = [MEMORY[0x277D71778] targeting];
    if (os_log_type_enabled(targeting, OS_LOG_TYPE_DEBUG))
    {
      v16 = objc_opt_class();
      v17 = v16;
      targetRegions4 = [(TPSRegionsValidation *)self targetRegions];
      v19 = [targetRegions4 componentsJoinedByString:{@", "}];
      excludeRegions2 = [(TPSRegionsValidation *)self excludeRegions];
      v21 = [excludeRegions2 componentsJoinedByString:{@", "}];
      v22 = 138413314;
      v23 = v16;
      v24 = 2112;
      v25 = tps_userRegion;
      v26 = 2112;
      v27 = v19;
      v28 = 2112;
      v29 = v21;
      v30 = 1024;
      v31 = v14;
      _os_log_debug_impl(&dword_232D6F000, targeting, OS_LOG_TYPE_DEBUG, "%@ - checking device region: %@, target regions: %@, exclude regions: %@. Valid: %d", &v22, 0x30u);
    }

    goto LABEL_10;
  }

  excludeRegions3 = [(TPSRegionsValidation *)self excludeRegions];
  v7 = [excludeRegions3 count];

  if (v7)
  {
    goto LABEL_4;
  }

  tps_userRegion = [MEMORY[0x277D71778] targeting];
  if (os_log_type_enabled(tps_userRegion, OS_LOG_TYPE_DEBUG))
  {
    [(TPSRegionsValidation *)self validateWithCompletion:tps_userRegion];
  }

  v14 = 1;
LABEL_10:

  completionCopy[2](completionCopy, v14, 0);
}

- (void)validateWithCompletion:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = 138412290;
  v5 = objc_opt_class();
  v3 = v5;
  _os_log_debug_impl(&dword_232D6F000, a2, OS_LOG_TYPE_DEBUG, "%@ - neither target nor exclude region(s) is specified.", &v4, 0xCu);
}

@end