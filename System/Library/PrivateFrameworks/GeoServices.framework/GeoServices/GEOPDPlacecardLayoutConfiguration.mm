@interface GEOPDPlacecardLayoutConfiguration
- (unint64_t)hash;
@end

@implementation GEOPDPlacecardLayoutConfiguration

- (unint64_t)hash
{
  [(GEOPDPlacecardLayoutConfiguration *)self readAll:1];
  entries = self->_entries;

  return [(NSMutableArray *)entries hash];
}

@end