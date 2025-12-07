@interface GEOPDTipFilter
- (void)dealloc;
@end

@implementation GEOPDTipFilter

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
  v3.super_class = GEOPDTipFilter;
  [(GEOPDTipFilter *)&v3 dealloc];
}

@end