@interface WFScanMetricsManager
- (WFScanMetricsManager)init;
- (id)sectionNameForRecord:(id)record;
- (void)ingestScanResults:(id)results;
- (void)reset;
- (void)submit;
@end

@implementation WFScanMetricsManager

- (WFScanMetricsManager)init
{
  v6.receiver = self;
  v6.super_class = WFScanMetricsManager;
  v2 = [(WFScanMetricsManager *)&v6 init];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  sectionCounts = v2->_sectionCounts;
  v2->_sectionCounts = dictionary;

  [(WFScanMetricsManager *)v2 reset];
  return v2;
}

- (void)reset
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = WFLogForCategory(0);
  v4 = OSLogForWFLogLevel(4uLL);
  v5 = v4;
  if (WFCurrentLogLevel(v4, v6) >= 4 && v3 && os_log_type_enabled(v3, v5))
  {
    v16 = 136315138;
    v17 = "[WFScanMetricsManager reset]";
    _os_log_impl(&dword_273ECD000, v3, v5, "%s", &v16, 0xCu);
  }

  [(WFScanMetricsManager *)self setSubmited:0];
  sectionCounts = [(WFScanMetricsManager *)self sectionCounts];
  [sectionCounts removeAllObjects];

  sectionCounts2 = [(WFScanMetricsManager *)self sectionCounts];
  [sectionCounts2 setObject:&unk_288304D38 forKey:@"known"];

  sectionCounts3 = [(WFScanMetricsManager *)self sectionCounts];
  [sectionCounts3 setObject:&unk_288304D38 forKey:@"hotspot"];

  sectionCounts4 = [(WFScanMetricsManager *)self sectionCounts];
  [sectionCounts4 setObject:&unk_288304D38 forKey:@"public"];

  sectionCounts5 = [(WFScanMetricsManager *)self sectionCounts];
  [sectionCounts5 setObject:&unk_288304D38 forKey:@"infra"];

  sectionCounts6 = [(WFScanMetricsManager *)self sectionCounts];
  [sectionCounts6 setObject:&unk_288304D38 forKey:@"adhoc"];

  sectionCounts7 = [(WFScanMetricsManager *)self sectionCounts];
  [sectionCounts7 setObject:&unk_288304D38 forKey:@"accessory"];

  date = [MEMORY[0x277CBEAA8] date];
  timestamp = self->_timestamp;
  self->_timestamp = date;
}

- (void)submit
{
  v25 = *MEMORY[0x277D85DE8];
  if (![(WFScanMetricsManager *)self submited])
  {
    timestamp = [(WFScanMetricsManager *)self timestamp];
    [timestamp timeIntervalSinceNow];
    v5 = v4;

    v6 = WFLogForCategory(0);
    v7 = OSLogForWFLogLevel(3uLL);
    v8 = v7;
    if (WFCurrentLogLevel(v7, v9) >= 3 && v6)
    {
      v10 = v6;
      if (os_log_type_enabled(v10, v8))
      {
        timestamp2 = [(WFScanMetricsManager *)self timestamp];
        [timestamp2 timeIntervalSinceNow];
        v23 = 134217984;
        v24 = -v12;
        _os_log_impl(&dword_273ECD000, v10, v8, "scan metrics session duration %f", &v23, 0xCu);
      }
    }

    v13 = -v5;

    v14 = WFLogForCategory(0);
    v15 = OSLogForWFLogLevel(3uLL);
    v16 = v15;
    if (WFCurrentLogLevel(v15, v17) >= 3 && v14)
    {
      v18 = v14;
      if (os_log_type_enabled(v18, v16))
      {
        [(WFScanMetricsManager *)self sectionCounts];
        v19 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        v23 = 138412290;
        v24 = v19;
        _os_log_impl(&dword_273ECD000, v18, v16, "scan metrics section counts %@", &v23, 0xCu);
      }
    }

    v20 = +[WFMetricsManager sharedManager];
    sectionCounts = [(WFScanMetricsManager *)self sectionCounts];
    v22 = [WFScanSessionEvent scanSessionEventWithSectionCounts:sectionCounts duration:v13];
    [v20 processEvent:v22];

    [(WFScanMetricsManager *)self setSubmited:1];
  }
}

- (void)ingestScanResults:(id)results
{
  resultsCopy = results;
  knownNetworks = [resultsCopy knownNetworks];
  v5 = [knownNetworks count];

  sectionCounts = [(WFScanMetricsManager *)self sectionCounts];
  v7 = [sectionCounts objectForKeyedSubscript:@"known"];
  unsignedIntegerValue = [v7 unsignedIntegerValue];

  if (v5 > unsignedIntegerValue)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v5];
    sectionCounts2 = [(WFScanMetricsManager *)self sectionCounts];
    [sectionCounts2 setObject:v9 forKeyedSubscript:@"known"];
  }

  infrastructureNetworks = [resultsCopy infrastructureNetworks];
  v12 = [infrastructureNetworks count];

  sectionCounts3 = [(WFScanMetricsManager *)self sectionCounts];
  v14 = [sectionCounts3 objectForKeyedSubscript:@"infra"];
  unsignedIntegerValue2 = [v14 unsignedIntegerValue];

  if (v12 > unsignedIntegerValue2)
  {
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v12];
    sectionCounts4 = [(WFScanMetricsManager *)self sectionCounts];
    [sectionCounts4 setObject:v16 forKeyedSubscript:@"infra"];
  }

  instantHotspotNetworks = [resultsCopy instantHotspotNetworks];
  v19 = [instantHotspotNetworks count];

  sectionCounts5 = [(WFScanMetricsManager *)self sectionCounts];
  v21 = [sectionCounts5 objectForKeyedSubscript:@"hotspot"];
  unsignedIntegerValue3 = [v21 unsignedIntegerValue];

  if (v19 > unsignedIntegerValue3)
  {
    v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v19];
    sectionCounts6 = [(WFScanMetricsManager *)self sectionCounts];
    [sectionCounts6 setObject:v23 forKeyedSubscript:@"hotspot"];
  }

  popularNetworks = [resultsCopy popularNetworks];
  v26 = [popularNetworks count];

  sectionCounts7 = [(WFScanMetricsManager *)self sectionCounts];
  v28 = [sectionCounts7 objectForKeyedSubscript:@"public"];
  unsignedIntegerValue4 = [v28 unsignedIntegerValue];

  if (v26 > unsignedIntegerValue4)
  {
    v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v26];
    sectionCounts8 = [(WFScanMetricsManager *)self sectionCounts];
    [sectionCounts8 setObject:v30 forKeyedSubscript:@"public"];
  }

  adhocNetworks = [resultsCopy adhocNetworks];
  v33 = [adhocNetworks count];

  sectionCounts9 = [(WFScanMetricsManager *)self sectionCounts];
  v35 = [sectionCounts9 objectForKeyedSubscript:@"adhoc"];
  unsignedIntegerValue5 = [v35 unsignedIntegerValue];

  if (v33 > unsignedIntegerValue5)
  {
    v37 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v33];
    sectionCounts10 = [(WFScanMetricsManager *)self sectionCounts];
    [sectionCounts10 setObject:v37 forKeyedSubscript:@"adhoc"];
  }

  unconfiguredNetworks = [resultsCopy unconfiguredNetworks];
  v40 = [unconfiguredNetworks count];

  sectionCounts11 = [(WFScanMetricsManager *)self sectionCounts];
  v42 = [sectionCounts11 objectForKeyedSubscript:@"accessory"];
  unsignedIntegerValue6 = [v42 unsignedIntegerValue];

  if (v40 > unsignedIntegerValue6)
  {
    v44 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v40];
    sectionCounts12 = [(WFScanMetricsManager *)self sectionCounts];
    [sectionCounts12 setObject:v44 forKeyedSubscript:@"accessory"];
  }
}

- (id)sectionNameForRecord:(id)record
{
  recordCopy = record;
  if ([recordCopy isKnown])
  {
    v4 = @"known";
  }

  else if ([recordCopy isInstantHotspot])
  {
    v4 = @"hotspot";
  }

  else if ([recordCopy isPopular])
  {
    v4 = @"public";
  }

  else if ([recordCopy isAdhoc])
  {
    v4 = @"adhoc";
  }

  else if ([recordCopy isUnconfiguredAccessory])
  {
    v4 = @"accessory";
  }

  else
  {
    v4 = @"infra";
  }

  return v4;
}

@end