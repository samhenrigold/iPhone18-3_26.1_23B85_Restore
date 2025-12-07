@interface UsageAnalytics
- (UsageAnalytics)init;
- (UsageAnalytics)initWithWorkspace:(id)workspace withCache:(BOOL)cache;
- (id)allUsageMarkersWithTag:(unsigned int)tag andMetadata:(unsigned int)metadata;
- (id)lastHappenedWithTag:(unsigned int)tag;
- (id)lastHappenedWithTag:(unsigned int)tag andMetadata:(unsigned int)metadata;
- (id)usageMarkersWithTag:(unsigned int)tag andMetadata:(unsigned int)metadata fromDate:(id)date untilDate:(id)untilDate;
@end

@implementation UsageAnalytics

- (UsageAnalytics)init
{
  v3 = +[AnalyticsWorkspace defaultWorkspace];
  v4 = +[LiveUsage entityName];
  v7.receiver = self;
  v7.super_class = UsageAnalytics;
  v5 = [(ObjectAnalytics *)&v7 initWithWorkspace:v3 entityName:v4 withCache:1];

  return v5;
}

- (UsageAnalytics)initWithWorkspace:(id)workspace withCache:(BOOL)cache
{
  cacheCopy = cache;
  workspaceCopy = workspace;
  v7 = +[LiveUsage entityName];
  v10.receiver = self;
  v10.super_class = UsageAnalytics;
  v8 = [(ObjectAnalytics *)&v10 initWithWorkspace:workspaceCopy entityName:v7 withCache:cacheCopy];

  return v8;
}

- (id)usageMarkersWithTag:(unsigned int)tag andMetadata:(unsigned int)metadata fromDate:(id)date untilDate:(id)untilDate
{
  if (metadata)
  {
    [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %lu AND %K == %lu AND %K >= %@ AND %K < %@", @"tag", *&tag, @"metadata", *&metadata, @"timeStamp", date, @"timeStamp", untilDate];
  }

  else
  {
    [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %lu AND %K >= %@ AND %K < %@", @"tag", *&tag, @"timeStamp", date, @"timeStamp", untilDate, v10, v11];
  }
  v7 = ;
  v8 = [(ObjectAnalytics *)self fetchEntitiesFreeForm:v7 sortDesc:0];

  return v8;
}

- (id)allUsageMarkersWithTag:(unsigned int)tag andMetadata:(unsigned int)metadata
{
  if (metadata)
  {
    [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %lu AND %K == %lu", @"tag", *&tag, @"metadata", *&metadata];
  }

  else
  {
    [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %lu", @"tag", *&tag, v8, v9];
  }
  v5 = ;
  v6 = [(ObjectAnalytics *)self fetchEntitiesFreeForm:v5 sortDesc:0];

  return v6;
}

- (id)lastHappenedWithTag:(unsigned int)tag andMetadata:(unsigned int)metadata
{
  v4 = [(UsageAnalytics *)self allUsageMarkersWithTag:*&tag andMetadata:*&metadata];
  lastObject = [v4 lastObject];

  return lastObject;
}

- (id)lastHappenedWithTag:(unsigned int)tag
{
  v3 = [(UsageAnalytics *)self allUsageMarkersWithTag:*&tag andMetadata:0];
  lastObject = [v3 lastObject];

  return lastObject;
}

@end