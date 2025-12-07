@interface DiagnosticCaseUsageAnalytics
- (DiagnosticCaseUsageAnalytics)init;
- (DiagnosticCaseUsageAnalytics)initWithWorkspace:(id)workspace withCache:(BOOL)cache;
@end

@implementation DiagnosticCaseUsageAnalytics

- (DiagnosticCaseUsageAnalytics)init
{
  v3 = +[AnalyticsWorkspace defaultWorkspace];
  v6.receiver = self;
  v6.super_class = DiagnosticCaseUsageAnalytics;
  v4 = [(ObjectAnalytics *)&v6 initWithWorkspace:v3 entityName:@"DiagnosticCaseUsage" withCache:1];

  return v4;
}

- (DiagnosticCaseUsageAnalytics)initWithWorkspace:(id)workspace withCache:(BOOL)cache
{
  v5.receiver = self;
  v5.super_class = DiagnosticCaseUsageAnalytics;
  return [(ObjectAnalytics *)&v5 initWithWorkspace:workspace entityName:@"DiagnosticCaseUsage" withCache:cache];
}

@end