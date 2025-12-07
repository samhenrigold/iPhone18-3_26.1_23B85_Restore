@interface GEOComposedStringOptions
- (GEOComposedStringOptions)init;
@end

@implementation GEOComposedStringOptions

- (GEOComposedStringOptions)init
{
  v3.receiver = self;
  v3.super_class = GEOComposedStringOptions;
  result = [(GEOComposedStringOptions *)&v3 init];
  if (result)
  {
    result->_shouldUpdateFormatStrings = 1;
  }

  return result;
}

@end