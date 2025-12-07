@interface PageLoadTestMeasurementController
- (void)_doAfterPageLoad;
- (void)_doBeforePageLoad;
@end

@implementation PageLoadTestMeasurementController

- (void)_doBeforePageLoad
{
  v3 = MEMORY[0x277CCABB0];
  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSinceReferenceDate];
  v5 = [v3 numberWithDouble:?];

  [(NSMutableDictionary *)self->super._loadData setValue:v5 forKey:@"PageLoadStartTime"];
}

- (void)_doAfterPageLoad
{
  v3 = MEMORY[0x277CCABB0];
  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSinceReferenceDate];
  v5 = [v3 numberWithDouble:?];

  [(NSMutableDictionary *)self->super._loadData setValue:v5 forKey:@"PageLoadEndTime"];
}

@end