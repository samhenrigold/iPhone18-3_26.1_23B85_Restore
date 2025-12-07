@interface DebugLifecycleMetricsHelper
- (void)trackImpressionWithStartDate:(id)date endDate:(id)endDate;
@end

@implementation DebugLifecycleMetricsHelper

- (void)trackImpressionWithStartDate:(id)date endDate:(id)endDate
{
  v4 = sub_1D7702F50();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v12 - v9;
  sub_1D7702F30();
  sub_1D7702F30();
  v11 = *(v5 + 8);
  v11(v8, v4);
  v11(v10, v4);
}

@end