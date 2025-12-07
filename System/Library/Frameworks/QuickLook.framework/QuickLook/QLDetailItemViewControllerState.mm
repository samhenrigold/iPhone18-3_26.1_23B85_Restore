@interface QLDetailItemViewControllerState
+ (id)detailItemViewControllerStateWithActionButtonTitle:(id)title actionButtonView:(id)view informationVisible:(BOOL)visible;
@end

@implementation QLDetailItemViewControllerState

+ (id)detailItemViewControllerStateWithActionButtonTitle:(id)title actionButtonView:(id)view informationVisible:(BOOL)visible
{
  visibleCopy = visible;
  viewCopy = view;
  titleCopy = title;
  v9 = objc_opt_new();
  [v9 setActionButtonTitle:titleCopy];

  [v9 setActionButtonView:viewCopy];
  [v9 setInformationVisible:visibleCopy];

  return v9;
}

@end