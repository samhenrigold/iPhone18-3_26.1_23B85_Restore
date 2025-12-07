@interface InternalDistanceUnit
@end

@implementation InternalDistanceUnit

uint64_t ___InternalDistanceUnit_block_invoke()
{
  v0 = [MEMORY[0x277CCDAB0] meterUnit];
  v1 = _InternalDistanceUnit___unit;
  _InternalDistanceUnit___unit = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end