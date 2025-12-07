@interface CUIKCalendarCache
@end

@implementation CUIKCalendarCache

uint64_t ___CUIKCalendarCache_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v1 = _CUIKCalendarCache_calendarCache;
  _CUIKCalendarCache_calendarCache = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end