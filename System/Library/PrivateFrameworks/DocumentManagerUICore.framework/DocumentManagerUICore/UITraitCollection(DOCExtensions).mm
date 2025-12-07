@interface UITraitCollection(DOCExtensions)
+ (id)doc_traitsAffectingFonts;
@end

@implementation UITraitCollection(DOCExtensions)

+ (id)doc_traitsAffectingFonts
{
  v3[1] = *MEMORY[0x277D85DE8];
  v0 = objc_opt_self();
  v3[0] = v0;
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:1];

  return v1;
}

@end