@interface NSValue(TSMSGExternalSyncConfig)
- (void)TSMSGExternalSyncConfigValue;
@end

@implementation NSValue(TSMSGExternalSyncConfig)

- (void)TSMSGExternalSyncConfigValue
{
  a2[12] = 0;
  *(a2 + 4) = 0u;
  *(a2 + 5) = 0u;
  *(a2 + 2) = 0u;
  *(a2 + 3) = 0u;
  *a2 = 0u;
  *(a2 + 1) = 0u;
  return [self getValue:?];
}

@end