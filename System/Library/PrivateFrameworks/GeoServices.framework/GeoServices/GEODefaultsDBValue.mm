@interface GEODefaultsDBValue
- (GEODefaultsDBCollection)parent;
@end

@implementation GEODefaultsDBValue

- (GEODefaultsDBCollection)parent
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);

  return WeakRetained;
}

@end