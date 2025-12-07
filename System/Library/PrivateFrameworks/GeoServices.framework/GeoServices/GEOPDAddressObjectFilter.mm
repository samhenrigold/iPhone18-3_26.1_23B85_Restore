@interface GEOPDAddressObjectFilter
- (unint64_t)hash;
@end

@implementation GEOPDAddressObjectFilter

- (unint64_t)hash
{
  v3 = [(NSMutableArray *)self->_libraryVersions hash];
  if (*&self->_flags)
  {
    v4 = 2654435761 * self->_enableLocation;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

@end