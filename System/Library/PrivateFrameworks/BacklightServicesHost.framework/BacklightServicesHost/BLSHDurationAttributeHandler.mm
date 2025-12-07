@interface BLSHDurationAttributeHandler
+ (id)attributeClasses;
@end

@implementation BLSHDurationAttributeHandler

+ (id)attributeClasses
{
  v4[3] = *MEMORY[0x277D85DE8];
  v4[0] = objc_opt_class();
  v4[1] = objc_opt_class();
  v4[2] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:3];

  return v2;
}

@end