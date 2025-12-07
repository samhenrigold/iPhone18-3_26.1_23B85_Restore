@interface PSUITotalCellularUsageSubgroup
- (PSBillingPeriodSource)billingPeriodSource;
- (PSUITotalCellularUsageSubgroup)initWithStatisticsCache:(id)cache andBillingPeriodSource:(id)source usageType:(unint64_t)type;
- (id)specifiers;
- (id)totalBytesUsed;
- (id)totalDataUsageForSpecifier:(id)specifier;
- (id)totalRoamingBytesUsed;
- (id)totalRoamingDataUsageForSpecifier:(id)specifier;
@end

@implementation PSUITotalCellularUsageSubgroup

- (PSUITotalCellularUsageSubgroup)initWithStatisticsCache:(id)cache andBillingPeriodSource:(id)source usageType:(unint64_t)type
{
  cacheCopy = cache;
  sourceCopy = source;
  v28.receiver = self;
  v28.super_class = PSUITotalCellularUsageSubgroup;
  v11 = [(PSUITotalCellularUsageSubgroup *)&v28 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_statisticsCache, cache);
    objc_storeWeak(&v12->_billingPeriodSource, sourceCopy);
    v12->_usageType = type;
    v13 = MEMORY[0x277D3FAD8];
    v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v15 = [v14 localizedStringForKey:@"CURRENT_DATA_PERIOD" value:&stru_287733598 table:@"Cellular"];
    v16 = [v13 preferenceSpecifierNamed:v15 target:v12 set:0 get:sel_totalDataUsageForSpecifier_ detail:0 cell:4 edit:0];
    totalUsageSpecifier = v12->_totalUsageSpecifier;
    v12->_totalUsageSpecifier = v16;

    [(PSSpecifier *)v12->_totalUsageSpecifier setIdentifier:@"DATA_USAGE_IN_PERIOD"];
    v18 = MEMORY[0x277D3FAD8];
    v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v20 = [v19 localizedStringForKey:@"CURRENT_ROAMING" value:&stru_287733598 table:@"Cellular"];
    v21 = [v18 preferenceSpecifierNamed:v20 target:v12 set:0 get:sel_totalRoamingDataUsageForSpecifier_ detail:0 cell:4 edit:0];
    totalRoamingUsageSpecifier = v12->_totalRoamingUsageSpecifier;
    v12->_totalRoamingUsageSpecifier = v21;

    [(PSSpecifier *)v12->_totalRoamingUsageSpecifier setIdentifier:@"ROAMING_DATA_USAGE_IN_PERIOD"];
    if ([(PSDataUsageStatisticsCache *)v12->_statisticsCache useCalendarMonthBillingCycle])
    {
      v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v24 = [v23 localizedStringForKey:@"CELLULAR_DATA_USED" value:&stru_287733598 table:@"Cellular"];
      [(PSSpecifier *)v12->_totalUsageSpecifier setName:v24];

      v25 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v26 = [v25 localizedStringForKey:@"ROAMING" value:&stru_287733598 table:@"Cellular"];
      [(PSSpecifier *)v12->_totalRoamingUsageSpecifier setName:v26];
    }
  }

  return v12;
}

- (id)specifiers
{
  v11 = *MEMORY[0x277D85DE8];
  if (self->_usageType)
  {
    totalUsageSpecifier = self->_totalUsageSpecifier;
    v2 = MEMORY[0x277CBEA60];
    p_totalUsageSpecifier = &totalUsageSpecifier;
    v4 = 1;
  }

  else
  {
    totalRoamingUsageSpecifier = self->_totalRoamingUsageSpecifier;
    v9 = self->_totalUsageSpecifier;
    v10 = totalRoamingUsageSpecifier;
    v2 = MEMORY[0x277CBEA60];
    p_totalUsageSpecifier = &v9;
    v4 = 2;
  }

  v6 = [v2 arrayWithObjects:p_totalUsageSpecifier count:{v4, totalUsageSpecifier, v9, v10, v11}];

  return v6;
}

- (id)totalBytesUsed
{
  v22 = *MEMORY[0x277D85DE8];
  billingPeriodSource = [(PSUITotalCellularUsageSubgroup *)self billingPeriodSource];
  v4 = billingPeriodSource;
  if (billingPeriodSource)
  {
    selectedPeriod = [billingPeriodSource selectedPeriod];
    v6 = @"previous billing cycle";
    if (!selectedPeriod)
    {
      v6 = @"current billing cycle";
    }

    v7 = v6;
    usageType = self->_usageType;
    statisticsCache = self->_statisticsCache;
    selectedPeriod2 = [v4 selectedPeriod];
    if (usageType)
    {
      goto LABEL_5;
    }
  }

  else
  {
    selectedPeriod2 = 0;
    statisticsCache = self->_statisticsCache;
    v7 = @"total";
    if (self->_usageType)
    {
LABEL_5:
      v11 = [(PSDataUsageStatisticsCache *)statisticsCache totalSatelliteUsageForPeriod:selectedPeriod2];
      goto LABEL_8;
    }
  }

  v11 = [(PSDataUsageStatisticsCache *)statisticsCache totalCellularUsageForPeriod:selectedPeriod2];
LABEL_8:
  v12 = v11;
  getLogger = [(PSUITotalCellularUsageSubgroup *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136315650;
    v17 = "[PSUITotalCellularUsageSubgroup totalBytesUsed]";
    v18 = 2112;
    v19 = v7;
    v20 = 2048;
    v21 = v12;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "%s returning %@ usage %f", &v16, 0x20u);
  }

  v14 = [MEMORY[0x277CCABB0] numberWithDouble:v12];

  return v14;
}

- (id)totalRoamingBytesUsed
{
  v20 = *MEMORY[0x277D85DE8];
  billingPeriodSource = [(PSUITotalCellularUsageSubgroup *)self billingPeriodSource];
  v4 = billingPeriodSource;
  if (billingPeriodSource)
  {
    selectedPeriod = [billingPeriodSource selectedPeriod];
    v6 = @"previous billing cycle";
    if (!selectedPeriod)
    {
      v6 = @"current billing cycle";
    }

    v7 = v6;
    statisticsCache = self->_statisticsCache;
    selectedPeriod2 = [v4 selectedPeriod];
  }

  else
  {
    selectedPeriod2 = 0;
    statisticsCache = self->_statisticsCache;
    v7 = @"total";
  }

  v10 = [(PSDataUsageStatisticsCache *)statisticsCache totalRoamingUsageForPeriod:selectedPeriod2];
  getLogger = [(PSUITotalCellularUsageSubgroup *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315650;
    v15 = "[PSUITotalCellularUsageSubgroup totalRoamingBytesUsed]";
    v16 = 2112;
    v17 = v7;
    v18 = 2048;
    v19 = v10;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "%s returning %@ roaming %f", &v14, 0x20u);
  }

  v12 = [MEMORY[0x277CCABB0] numberWithDouble:v10];

  return v12;
}

- (id)totalDataUsageForSpecifier:(id)specifier
{
  specifierCopy = specifier;
  totalBytesUsed = [(PSUITotalCellularUsageSubgroup *)self totalBytesUsed];
  v6 = [specifierCopy propertyForKey:*MEMORY[0x277D40148]];

  if (totalBytesUsed)
  {
    [v6 setAccessoryView:0];
    v7 = MEMORY[0x277D4D878];
    [totalBytesUsed doubleValue];
    v8 = [v7 usageSizeString:?];
  }

  else
  {
    v9 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
    [v9 startAnimating];
    [v6 setAccessoryView:v9];

    v8 = &stru_287733598;
  }

  return v8;
}

- (id)totalRoamingDataUsageForSpecifier:(id)specifier
{
  specifierCopy = specifier;
  totalRoamingBytesUsed = [(PSUITotalCellularUsageSubgroup *)self totalRoamingBytesUsed];
  v6 = [specifierCopy propertyForKey:*MEMORY[0x277D40148]];

  if (totalRoamingBytesUsed)
  {
    [v6 setAccessoryView:0];
    v7 = MEMORY[0x277D4D878];
    [totalRoamingBytesUsed doubleValue];
    v8 = [v7 usageSizeString:?];
  }

  else
  {
    v9 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
    [v9 startAnimating];
    [v6 setAccessoryView:v9];

    v8 = &stru_287733598;
  }

  return v8;
}

- (PSBillingPeriodSource)billingPeriodSource
{
  WeakRetained = objc_loadWeakRetained(&self->_billingPeriodSource);

  return WeakRetained;
}

@end