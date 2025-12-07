@interface WOCyclingPowerZonesConfigurationStore
- (WOCyclingPowerZonesConfigurationStore)init;
- (WOCyclingPowerZonesConfigurationStore)initWithHealthStore:(id)store;
- (void)fetchCyclingPowerZonesConfigurationWithCompletion:(id)completion;
- (void)saveCyclingPowerZonesConfiguration:(id)configuration;
@end

@implementation WOCyclingPowerZonesConfigurationStore

- (WOCyclingPowerZonesConfigurationStore)initWithHealthStore:(id)store
{
  sub_226A4();
  storeCopy = store;
  v6 = sub_22694();
  *(&self->super.isa + OBJC_IVAR___WOCyclingPowerZonesConfigurationStore_configurationStore) = v6;
  v10.receiver = self;
  v10.super_class = type metadata accessor for CyclingPowerZonesConfigurationStoreBridge(v6, v7);
  v8 = [(WOCyclingPowerZonesConfigurationStore *)&v10 init];

  return v8;
}

- (void)fetchCyclingPowerZonesConfigurationWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1E014;
  *(v6 + 24) = v5;
  selfCopy = self;

  sub_22684();
}

- (void)saveCyclingPowerZonesConfiguration:(id)configuration
{
  configurationCopy = configuration;
  selfCopy = self;
  sub_22674();
}

- (WOCyclingPowerZonesConfigurationStore)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end