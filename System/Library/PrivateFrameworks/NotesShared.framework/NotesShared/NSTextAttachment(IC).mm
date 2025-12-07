@interface NSTextAttachment(IC)
- (uint64_t)ic_isSystemTextAttachment;
@end

@implementation NSTextAttachment(IC)

- (uint64_t)ic_isSystemTextAttachment
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = [v2 containsObject:objc_opt_class()];

  return v3;
}

@end