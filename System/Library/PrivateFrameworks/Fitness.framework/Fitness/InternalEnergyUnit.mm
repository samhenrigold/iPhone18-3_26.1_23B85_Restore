@interface InternalEnergyUnit
@end

@implementation InternalEnergyUnit

uint64_t ___InternalEnergyUnit_block_invoke()
{
  v0 = [MEMORY[0x277CCDAB0] kilocalorieUnit];
  v1 = _InternalEnergyUnit___unit;
  _InternalEnergyUnit___unit = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end