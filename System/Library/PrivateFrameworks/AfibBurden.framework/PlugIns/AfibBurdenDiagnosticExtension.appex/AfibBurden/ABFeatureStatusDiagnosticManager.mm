@interface ABFeatureStatusDiagnosticManager
- (ABFeatureStatusDiagnosticManager)initWithLoggingDirectoryPath:(id)path healthStore:(id)store;
- (id)_retrievePrettyPrintedFeatureStatusDiagnostics;
- (id)_retrievePrettyPrintedRegionAvailabilityDiagnostics;
- (id)extractDiagnosticContent;
- (void)_addSectionToString:(id)string withTitle:(id)title;
@end

@implementation ABFeatureStatusDiagnosticManager

- (ABFeatureStatusDiagnosticManager)initWithLoggingDirectoryPath:(id)path healthStore:(id)store
{
  storeCopy = store;
  v11.receiver = self;
  v11.super_class = ABFeatureStatusDiagnosticManager;
  v8 = [(ABDiagnosticManager *)&v11 initWithDiagnosticName:@"FeatureStatus" loggingDirectoryPath:path];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_healthStore, store);
  }

  return v9;
}

- (id)extractDiagnosticContent
{
  v3 = ab_get_framework_log(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543362;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Starting feature status diagnostics", &v12, 0xCu);
  }

  v4 = objc_alloc_init(NSMutableString);
  [(ABFeatureStatusDiagnosticManager *)self _addSectionToString:v4 withTitle:@"Feature Status"];
  _retrievePrettyPrintedFeatureStatusDiagnostics = [(ABFeatureStatusDiagnosticManager *)self _retrievePrettyPrintedFeatureStatusDiagnostics];
  v6 = _retrievePrettyPrintedFeatureStatusDiagnostics;
  if (_retrievePrettyPrintedFeatureStatusDiagnostics)
  {
    v7 = _retrievePrettyPrintedFeatureStatusDiagnostics;
  }

  else
  {
    v7 = @"(Unable to Retrieve)";
  }

  [v4 appendString:v7];

  [v4 appendString:@"\n\n"];
  [(ABFeatureStatusDiagnosticManager *)self _addSectionToString:v4 withTitle:@"Region Availability"];
  _retrievePrettyPrintedRegionAvailabilityDiagnostics = [(ABFeatureStatusDiagnosticManager *)self _retrievePrettyPrintedRegionAvailabilityDiagnostics];
  v9 = _retrievePrettyPrintedRegionAvailabilityDiagnostics;
  if (_retrievePrettyPrintedRegionAvailabilityDiagnostics)
  {
    v10 = _retrievePrettyPrintedRegionAvailabilityDiagnostics;
  }

  else
  {
    v10 = @"(Unable to Retrieve)";
  }

  [v4 appendString:v10];

  return v4;
}

- (void)_addSectionToString:(id)string withTitle:(id)title
{
  stringCopy = string;
  [stringCopy appendFormat:@"%@\n", title];
  [stringCopy appendString:@"======================================\n"];
}

- (id)_retrievePrettyPrintedFeatureStatusDiagnostics
{
  v3 = [HKFeatureStatusManager alloc];
  v4 = HKFeatureIdentifierAFibBurden;
  v5 = [v3 initWithFeatureIdentifier:HKFeatureIdentifierAFibBurden healthStore:self->_healthStore];
  v6 = ab_get_framework_log(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Retrieving feature status", buf, 0xCu);
  }

  v13 = 0;
  v7 = [v5 featureStatusWithError:&v13];
  v8 = v13;
  v9 = v8;
  if (v8)
  {
    v10 = ab_get_framework_log(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100002CD0();
    }

    v11 = 0;
  }

  else
  {
    v10 = [[HKFeatureAvailabilityRequirementSatisfactionOverrides alloc] initWithFeatureIdentifier:v4];
    v11 = HKPrettyPrintedFeatureStatus();
  }

  return v11;
}

- (id)_retrievePrettyPrintedRegionAvailabilityDiagnostics
{
  v3 = [HKFeatureAvailabilityStore alloc];
  v4 = [v3 initWithFeatureIdentifier:HKFeatureIdentifierAFibBurden healthStore:self->_healthStore];
  v5 = ab_get_framework_log(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Retrieving region availability", buf, 0xCu);
  }

  v12 = 0;
  v6 = [v4 regionAvailabilityWithError:&v12];
  v7 = v12;
  v8 = v7;
  if (v6)
  {
    prettyPrintedDescription = [v6 prettyPrintedDescription];
  }

  else
  {
    v10 = ab_get_framework_log(v7);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100002D38();
    }

    prettyPrintedDescription = 0;
  }

  return prettyPrintedDescription;
}

@end