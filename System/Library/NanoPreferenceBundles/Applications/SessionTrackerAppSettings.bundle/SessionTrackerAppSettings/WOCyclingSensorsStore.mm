@interface WOCyclingSensorsStore
- (WOCyclingSensorsStore)init;
- (void)isPowerMeterAvailableWithCompletion:(id)completion;
@end

@implementation WOCyclingSensorsStore

- (void)isPowerMeterAvailableWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  *(swift_allocObject() + 16) = v4;
  selfCopy = self;
  sub_22454();
}

- (WOCyclingSensorsStore)init
{
  v3 = OBJC_IVAR___WOCyclingSensorsStore_cyclingSensorsStore;
  v4 = [objc_allocWithZone(sub_22464()) init];
  *(&self->super.isa + v3) = v4;
  v7.receiver = self;
  v7.super_class = type metadata accessor for CyclingSensorsStoreBridge(v4, v5);
  return [(WOCyclingSensorsStore *)&v7 init];
}

@end