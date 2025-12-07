@interface UNSNotificationRecordRemoveUpdate
+ (id)updateWithNotificationRecord:(id)record shouldSync:(BOOL)sync;
@end

@implementation UNSNotificationRecordRemoveUpdate

+ (id)updateWithNotificationRecord:(id)record shouldSync:(BOOL)sync
{
  syncCopy = sync;
  recordCopy = record;
  v7 = [[self alloc] _initWithNotificationRecord:recordCopy shouldSync:syncCopy];

  return v7;
}

@end