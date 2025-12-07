@interface CUIKOverlayCalendarCache
@end

@implementation CUIKOverlayCalendarCache

uint64_t ___CUIKOverlayCalendarCache_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v1 = _CUIKOverlayCalendarCache_overlayCalendarCache;
  _CUIKOverlayCalendarCache_overlayCalendarCache = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end