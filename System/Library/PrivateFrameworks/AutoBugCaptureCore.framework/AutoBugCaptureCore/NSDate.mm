@interface NSDate
@end

@implementation NSDate

uint64_t __iso8601date_string_from_NSDate_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCAA68]);
  v1 = iso8601date_string_from_NSDate_iso8601DateFormatter;
  iso8601date_string_from_NSDate_iso8601DateFormatter = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end