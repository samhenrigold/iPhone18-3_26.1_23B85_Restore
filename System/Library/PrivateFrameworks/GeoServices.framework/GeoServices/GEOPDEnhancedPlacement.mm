@interface GEOPDEnhancedPlacement
- (void)dealloc;
@end

@implementation GEOPDEnhancedPlacement

- (void)dealloc
{
  PBRepeatedUInt64Clear();
  v3.receiver = self;
  v3.super_class = GEOPDEnhancedPlacement;
  [(GEOPDEnhancedPlacement *)&v3 dealloc];
}

@end