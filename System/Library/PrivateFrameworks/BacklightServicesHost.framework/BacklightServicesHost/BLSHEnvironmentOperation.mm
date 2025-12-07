@interface BLSHEnvironmentOperation
- (BLSHEnvironmentOperation)initWithBacklightState:(int64_t)state;
- (id)description;
@end

@implementation BLSHEnvironmentOperation

- (BLSHEnvironmentOperation)initWithBacklightState:(int64_t)state
{
  v5.receiver = self;
  v5.super_class = BLSHEnvironmentOperation;
  result = [(BLSHEnvironmentOperation *)&v5 init];
  if (result)
  {
    result->_backlightState = state;
  }

  return result;
}

- (id)description
{
  v2 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v3 = NSStringFromBLSBacklightState();
  v4 = [v2 appendObject:v3 withName:@"backlightState"];

  build = [v2 build];

  return build;
}

@end