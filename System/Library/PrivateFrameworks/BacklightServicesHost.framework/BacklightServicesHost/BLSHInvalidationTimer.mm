@interface BLSHInvalidationTimer
- (void)timerFired;
@end

@implementation BLSHInvalidationTimer

- (void)timerFired
{
  v10[1] = *MEMORY[0x277D85DE8];
  service = [(BLSHAssertionAttributeTimer *)self service];
  assertion = [(BLSHAssertionAttributeTimer *)self assertion];
  v5 = MEMORY[0x277CCA9B8];
  v6 = *MEMORY[0x277CF0828];
  v9 = *MEMORY[0x277CCA450];
  v10[0] = @"invalidation duration expired";
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v8 = [v5 errorWithDomain:v6 code:10 userInfo:v7];
  [service cancelAssertion:assertion withError:v8];

  [(BLSHAssertionAttributeTimer *)self invalidate];
}

@end