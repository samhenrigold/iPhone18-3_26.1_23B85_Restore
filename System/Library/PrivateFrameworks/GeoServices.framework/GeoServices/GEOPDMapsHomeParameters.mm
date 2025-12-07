@interface GEOPDMapsHomeParameters
- (unint64_t)hash;
@end

@implementation GEOPDMapsHomeParameters

- (unint64_t)hash
{
  v3 = [(GEOPDCollectionSuggestionParameters *)self->_collectionSuggestionParameters hash];
  if (*&self->_flags)
  {
    v4 = 2654435761 * self->_shouldPopulateExploreGuidesEntry;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

@end