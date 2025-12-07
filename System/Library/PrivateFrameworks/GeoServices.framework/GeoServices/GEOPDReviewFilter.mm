@interface GEOPDReviewFilter
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation GEOPDReviewFilter

- (unint64_t)hash
{
  v3 = PBHashBytes();
  if (*&self->_flags)
  {
    v4 = 2654435761 * self->_suppressSyntheticReviews;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

- (void)dealloc
{
  if (self)
  {
    self->_photoSizeFiltersSpace = 0;
    self->_photoSizeFiltersCount = 0;
    free(self->_photoSizeFilters);
    self->_photoSizeFilters = 0;
  }

  v3.receiver = self;
  v3.super_class = GEOPDReviewFilter;
  [(GEOPDReviewFilter *)&v3 dealloc];
}

@end