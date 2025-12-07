@interface GEOGuidanceImportanceMode
- (void)dealloc;
@end

@implementation GEOGuidanceImportanceMode

- (void)dealloc
{
  PBRepeatedInt32Clear();
  v3.receiver = self;
  v3.super_class = GEOGuidanceImportanceMode;
  [(GEOGuidanceImportanceMode *)&v3 dealloc];
}

@end