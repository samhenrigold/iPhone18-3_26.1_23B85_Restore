@interface GEOGloriaTessellationOptions
- (void)dealloc;
@end

@implementation GEOGloriaTessellationOptions

- (void)dealloc
{
  PBRepeatedUInt32Clear();
  v3.receiver = self;
  v3.super_class = GEOGloriaTessellationOptions;
  [(GEOGloriaTessellationOptions *)&v3 dealloc];
}

@end