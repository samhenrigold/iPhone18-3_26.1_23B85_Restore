@interface WADeploymentAnalyzerDefaults
+ (id)_numberDefaultForKey:(id)key;
- (WADeploymentAnalyzerDefaults)init;
@end

@implementation WADeploymentAnalyzerDefaults

- (WADeploymentAnalyzerDefaults)init
{
  v46 = *MEMORY[0x1E69E9840];
  v35.receiver = self;
  v35.super_class = WADeploymentAnalyzerDefaults;
  v2 = [(WADeploymentAnalyzerDefaults *)&v35 init];
  v3 = v2;
  if (v2)
  {
    v2->_poorCoverageRSSI = -80;
    v4 = [objc_opt_class() _numberDefaultForKey:@"poor-coverage-rssi"];

    if (v4)
    {
      v5 = [objc_opt_class() _numberDefaultForKey:@"poor-coverage-rssi"];
      v3->_poorCoverageRSSI = [v5 integerValue];

      v6 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        poorCoverageRSSI = v3->_poorCoverageRSSI;
        *buf = 136447234;
        v37 = "[WADeploymentAnalyzerDefaults init]";
        v38 = 1024;
        v39 = 73;
        v40 = 2080;
        v41 = "[WADeploymentAnalyzerDefaults init]";
        v42 = 2048;
        v43 = *&poorCoverageRSSI;
        v44 = 2112;
        v45 = @"poor-coverage-rssi";
        _os_log_impl(&dword_1C8460000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:%s: using override value (%ld) for %@", buf, 0x30u);
      }
    }

    v3->_poorCoverageThreshold = 0.5;
    v8 = [objc_opt_class() _numberDefaultForKey:@"poor-coverage-threshold"];

    if (v8)
    {
      v9 = [objc_opt_class() _numberDefaultForKey:@"poor-coverage-threshold"];
      [v9 doubleValue];
      v3->_poorCoverageThreshold = v10;

      v11 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        poorCoverageThreshold = v3->_poorCoverageThreshold;
        *buf = 136447234;
        v37 = "[WADeploymentAnalyzerDefaults init]";
        v38 = 1024;
        v39 = 74;
        v40 = 2080;
        v41 = "[WADeploymentAnalyzerDefaults init]";
        v42 = 2048;
        v43 = poorCoverageThreshold;
        v44 = 2112;
        v45 = @"poor-coverage-threshold";
        _os_log_impl(&dword_1C8460000, v11, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:%s: using override value (%f) for %@", buf, 0x30u);
      }
    }

    v3->_poorCoverageMinimumStay = 72000;
    v13 = [objc_opt_class() _numberDefaultForKey:@"poor-coverage-min-stay"];

    if (v13)
    {
      v14 = [objc_opt_class() _numberDefaultForKey:@"poor-coverage-min-stay"];
      v3->_poorCoverageMinimumStay = [v14 unsignedIntegerValue];

      v15 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        poorCoverageMinimumStay = v3->_poorCoverageMinimumStay;
        *buf = 136447234;
        v37 = "[WADeploymentAnalyzerDefaults init]";
        v38 = 1024;
        v39 = 75;
        v40 = 2080;
        v41 = "[WADeploymentAnalyzerDefaults init]";
        v42 = 2048;
        v43 = *&poorCoverageMinimumStay;
        v44 = 2112;
        v45 = @"poor-coverage-min-stay";
        _os_log_impl(&dword_1C8460000, v15, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:%s: using override value (%lu) for %@", buf, 0x30u);
      }
    }

    v3->_highCongestionRSSIThreshold = -75;
    v17 = [objc_opt_class() _numberDefaultForKey:@"high-congestion-rssi"];

    if (v17)
    {
      v18 = [objc_opt_class() _numberDefaultForKey:@"high-congestion-rssi"];
      v3->_highCongestionRSSIThreshold = [v18 integerValue];

      v19 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        highCongestionRSSIThreshold = v3->_highCongestionRSSIThreshold;
        *buf = 136447234;
        v37 = "[WADeploymentAnalyzerDefaults init]";
        v38 = 1024;
        v39 = 78;
        v40 = 2080;
        v41 = "[WADeploymentAnalyzerDefaults init]";
        v42 = 2048;
        v43 = *&highCongestionRSSIThreshold;
        v44 = 2112;
        v45 = @"high-congestion-rssi";
        _os_log_impl(&dword_1C8460000, v19, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:%s: using override value (%ld) for %@", buf, 0x30u);
      }
    }

    v3->_highCongestionCCAThreshold = 50;
    v21 = [objc_opt_class() _numberDefaultForKey:@"high-congestion-cca"];

    if (v21)
    {
      v22 = [objc_opt_class() _numberDefaultForKey:@"high-congestion-cca"];
      v3->_highCongestionCCAThreshold = [v22 unsignedIntegerValue];

      v23 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        highCongestionCCAThreshold = v3->_highCongestionCCAThreshold;
        *buf = 136447234;
        v37 = "[WADeploymentAnalyzerDefaults init]";
        v38 = 1024;
        v39 = 79;
        v40 = 2080;
        v41 = "[WADeploymentAnalyzerDefaults init]";
        v42 = 2048;
        v43 = *&highCongestionCCAThreshold;
        v44 = 2112;
        v45 = @"high-congestion-cca";
        _os_log_impl(&dword_1C8460000, v23, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:%s: using override value (%lu) for %@", buf, 0x30u);
      }
    }

    v3->_highCongestionThreshold = 0.5;
    v25 = [objc_opt_class() _numberDefaultForKey:@"high-congestion-threshold"];

    if (v25)
    {
      v26 = [objc_opt_class() _numberDefaultForKey:@"high-congestion-threshold"];
      [v26 doubleValue];
      v3->_highCongestionThreshold = v27;

      v28 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        highCongestionThreshold = v3->_highCongestionThreshold;
        *buf = 136447234;
        v37 = "[WADeploymentAnalyzerDefaults init]";
        v38 = 1024;
        v39 = 80;
        v40 = 2080;
        v41 = "[WADeploymentAnalyzerDefaults init]";
        v42 = 2048;
        v43 = highCongestionThreshold;
        v44 = 2112;
        v45 = @"high-congestion-threshold";
        _os_log_impl(&dword_1C8460000, v28, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:%s: using override value (%f) for %@", buf, 0x30u);
      }
    }

    v3->_highCongestionMinimumStay = 72000;
    v30 = [objc_opt_class() _numberDefaultForKey:@"high-congestion-min-stay"];

    if (v30)
    {
      v31 = [objc_opt_class() _numberDefaultForKey:@"high-congestion-min-stay"];
      v3->_highCongestionMinimumStay = [v31 unsignedIntegerValue];

      v32 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        highCongestionMinimumStay = v3->_highCongestionMinimumStay;
        *buf = 136447234;
        v37 = "[WADeploymentAnalyzerDefaults init]";
        v38 = 1024;
        v39 = 81;
        v40 = 2080;
        v41 = "[WADeploymentAnalyzerDefaults init]";
        v42 = 2048;
        v43 = *&highCongestionMinimumStay;
        v44 = 2112;
        v45 = @"high-congestion-min-stay";
        _os_log_impl(&dword_1C8460000, v32, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:%s: using override value (%lu) for %@", buf, 0x30u);
      }
    }
  }

  return v3;
}

+ (id)_numberDefaultForKey:(id)key
{
  v3 = MEMORY[0x1E695E000];
  keyCopy = key;
  _WADefaults = [v3 _WADefaults];
  v6 = [_WADefaults objectForKey:keyCopy];

  return v6;
}

@end