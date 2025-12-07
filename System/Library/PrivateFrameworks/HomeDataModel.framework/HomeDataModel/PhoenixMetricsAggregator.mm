@interface PhoenixMetricsAggregator
- (void)timerFired;
@end

@implementation PhoenixMetricsAggregator

- (void)timerFired
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v8 - v4;
  v6 = sub_1D1E67E7C();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = self;

  sub_1D17C6EF0(0, 0, v5, &unk_1D1E97FE0, v7);
}

@end