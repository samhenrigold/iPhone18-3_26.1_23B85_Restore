@interface WDTableViewSection
- (WDTableViewSection)initWithDelegate:(id)delegate atSection:(unint64_t)section;
- (WDTableViewSectionDelegate)delegate;
- (void)reloadAnimated:(BOOL)animated;
@end

@implementation WDTableViewSection

- (WDTableViewSection)initWithDelegate:(id)delegate atSection:(unint64_t)section
{
  delegateCopy = delegate;
  v11.receiver = self;
  v11.super_class = WDTableViewSection;
  v7 = [(WDTableViewSection *)&v11 init];
  v8 = v7;
  if (v7)
  {
    v7->_section = section;
    objc_storeWeak(&v7->_delegate, delegateCopy);
    v9 = v8;
  }

  return v8;
}

- (void)reloadAnimated:(BOOL)animated
{
  animatedCopy = animated;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained reloadSection:self->_section animated:animatedCopy];
}

- (WDTableViewSectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end