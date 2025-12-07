@interface PFCloudKitStoreMonitorProvider
- (id)createMonitorForObservedStore:(id)result inTransactionWithLabel:(uint64_t)label;
@end

@implementation PFCloudKitStoreMonitorProvider

- (id)createMonitorForObservedStore:(id)result inTransactionWithLabel:(uint64_t)label
{
  if (result)
  {
    v3 = [PFCloudKitStoreMonitor alloc];

    return [(PFCloudKitStoreMonitor *)v3 initForStore:label];
  }

  return result;
}

@end