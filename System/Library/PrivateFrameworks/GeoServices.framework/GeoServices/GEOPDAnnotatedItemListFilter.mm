@interface GEOPDAnnotatedItemListFilter
- (void)dealloc;
@end

@implementation GEOPDAnnotatedItemListFilter

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
  v3.super_class = GEOPDAnnotatedItemListFilter;
  [(GEOPDAnnotatedItemListFilter *)&v3 dealloc];
}

@end