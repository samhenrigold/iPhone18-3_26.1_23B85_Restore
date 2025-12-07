@interface CACElementNamesOverlayViewController
- (NSArray)items;
- (void)loadView;
- (void)setItems:(id)items;
@end

@implementation CACElementNamesOverlayViewController

- (void)loadView
{
  v5 = objc_opt_new();
  v3 = objc_opt_new();
  [v3 setItemBackgroundViewCreationHandler:&__block_literal_global_12];
  v4 = CACLogGeneral([v5 setStyleProvider:v3]);
  [v5 setLoggingFacility:v4];

  [(CACElementNamesOverlayViewController *)self setView:v5];
}

CACAdaptiveBackdropView *__48__CACElementNamesOverlayViewController_loadView__block_invoke(uint64_t a1)
{
  if (_UISolariumEnabled() && [MEMORY[0x277D79880] glassOverlaysEnabled])
  {
    v1 = objc_opt_new();
    [v1 vc_setWantsGlassAppearance:1];
    [v1 setOverrideUserInterfaceStyle:2];
  }

  else
  {
    v1 = objc_opt_new();
  }

  return v1;
}

- (void)setItems:(id)items
{
  itemsCopy = items;
  view = [(CACElementNamesOverlayViewController *)self view];
  [view setItems:itemsCopy];
}

- (NSArray)items
{
  view = [(CACElementNamesOverlayViewController *)self view];
  items = [view items];

  return items;
}

@end