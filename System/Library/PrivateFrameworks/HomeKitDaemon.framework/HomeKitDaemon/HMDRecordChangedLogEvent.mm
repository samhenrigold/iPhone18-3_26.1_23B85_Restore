@interface HMDRecordChangedLogEvent
+ (id)legacyRecordChanged:(id)changed;
+ (id)recordChanged:(id)changed;
- (HMDRecordChangedLogEvent)initWithChangedRecord:(id)record isLegacy:(BOOL)legacy;
@end

@implementation HMDRecordChangedLogEvent

- (HMDRecordChangedLogEvent)initWithChangedRecord:(id)record isLegacy:(BOOL)legacy
{
  v5.receiver = self;
  v5.super_class = HMDRecordChangedLogEvent;
  return -[HMDRecordOperationLogEvent initWithSize:isLegacy:](&v5, sel_initWithSize_isLegacy_, [record size], legacy);
}

+ (id)legacyRecordChanged:(id)changed
{
  changedCopy = changed;
  v4 = [[HMDRecordChangedLogEvent alloc] initWithChangedRecord:changedCopy isLegacy:1];

  return v4;
}

+ (id)recordChanged:(id)changed
{
  changedCopy = changed;
  v4 = [[HMDRecordChangedLogEvent alloc] initWithChangedRecord:changedCopy isLegacy:0];

  return v4;
}

@end