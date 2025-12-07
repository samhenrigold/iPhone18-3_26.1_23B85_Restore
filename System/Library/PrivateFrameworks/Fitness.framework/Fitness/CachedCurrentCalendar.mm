@interface CachedCurrentCalendar
@end

@implementation CachedCurrentCalendar

uint64_t ___CachedCurrentCalendar_block_invoke()
{
  v0 = [MEMORY[0x277CBEA80] autoupdatingCurrentCalendar];
  v1 = _CachedCurrentCalendar___calendar;
  _CachedCurrentCalendar___calendar = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end