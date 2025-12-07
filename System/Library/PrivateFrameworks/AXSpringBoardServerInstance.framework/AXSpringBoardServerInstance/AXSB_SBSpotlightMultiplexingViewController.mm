@interface AXSB_SBSpotlightMultiplexingViewController
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation AXSB_SBSpotlightMultiplexingViewController

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SBSpotlightMultiplexingViewController" hasInstanceMethod:@"viewWillAppear:" withFullSignature:{"v", "B", 0}];
  [validationsCopy validateClass:@"SBSpotlightMultiplexingViewController" hasInstanceMethod:@"viewWillDisappear:" withFullSignature:{"v", "B", 0}];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = AXSB_SBSpotlightMultiplexingViewController;
  [(AXSB_SBSpotlightMultiplexingViewController *)&v4 viewWillAppear:appear];
  v3 = +[_AXSpringBoardServerInstance springBoardServerInstance];
  [v3 springBoardActionOccurred:14 withPayload:&unk_2833B17B0];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = AXSB_SBSpotlightMultiplexingViewController;
  [(AXSB_SBSpotlightMultiplexingViewController *)&v4 viewWillDisappear:disappear];
  v3 = +[_AXSpringBoardServerInstance springBoardServerInstance];
  [v3 springBoardActionOccurred:14 withPayload:&unk_2833B17D8];
}

@end