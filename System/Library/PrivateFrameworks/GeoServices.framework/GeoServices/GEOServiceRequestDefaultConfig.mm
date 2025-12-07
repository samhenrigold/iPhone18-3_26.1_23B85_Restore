@interface GEOServiceRequestDefaultConfig
- (id)debugRequestName;
@end

@implementation GEOServiceRequestDefaultConfig

- (id)debugRequestName
{
  urlType = [(GEOServiceRequestDefaultConfig *)self urlType];

  return GEOURLLogFacility(urlType);
}

@end