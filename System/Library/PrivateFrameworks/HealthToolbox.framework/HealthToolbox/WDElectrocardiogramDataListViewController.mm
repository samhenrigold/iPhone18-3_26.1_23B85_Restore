@interface WDElectrocardiogramDataListViewController
- (BOOL)isEditEnabled;
- (WDElectrocardiogramDataListViewController)initWithDisplayType:(id)type profile:(id)profile dataProvider:(id)provider usingInsetStyling:(BOOL)styling mode:(int64_t)mode;
@end

@implementation WDElectrocardiogramDataListViewController

- (WDElectrocardiogramDataListViewController)initWithDisplayType:(id)type profile:(id)profile dataProvider:(id)provider usingInsetStyling:(BOOL)styling mode:(int64_t)mode
{
  v9.receiver = self;
  v9.super_class = WDElectrocardiogramDataListViewController;
  result = [(WDDataListViewController *)&v9 initWithDisplayType:type profile:profile dataProvider:provider usingInsetStyling:styling];
  if (result)
  {
    result->_mode = mode;
  }

  return result;
}

- (BOOL)isEditEnabled
{
  v5.receiver = self;
  v5.super_class = WDElectrocardiogramDataListViewController;
  isEditEnabled = [(WDDataListViewController *)&v5 isEditEnabled];
  if (isEditEnabled)
  {
    LOBYTE(isEditEnabled) = self->_mode == 0;
  }

  return isEditEnabled;
}

@end