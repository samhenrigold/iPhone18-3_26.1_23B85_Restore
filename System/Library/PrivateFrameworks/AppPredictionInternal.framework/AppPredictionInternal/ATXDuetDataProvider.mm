@interface ATXDuetDataProvider
+ (Class)supportedDuetEventClass;
- (id)fetchEventsBetweenStartDate:(id)date andEndDate:(id)endDate withPredicates:(id)predicates limit:(unint64_t)limit ascending:(BOOL)ascending;
@end

@implementation ATXDuetDataProvider

+ (Class)supportedDuetEventClass
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ATXDuetDataProvider.m" lineNumber:21 description:@"Should be implemented by subclasses"];

  return 0;
}

- (id)fetchEventsBetweenStartDate:(id)date andEndDate:(id)endDate withPredicates:(id)predicates limit:(unint64_t)limit ascending:(BOOL)ascending
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ATXDuetDataProvider.m" lineNumber:32 description:@"The respective subclass should implement this instead with its own relevant stream"];

  return MEMORY[0x277CBEBF8];
}

@end