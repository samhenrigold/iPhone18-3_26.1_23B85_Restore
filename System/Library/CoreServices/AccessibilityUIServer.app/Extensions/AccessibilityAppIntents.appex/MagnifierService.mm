@interface MagnifierService
- (void)showDetectionUI;
@end

@implementation MagnifierService

- (void)showDetectionUI
{

  sub_100001C48(&MAGService.presentDetectionUI(), "Error occurred trying to present detection UI: %s", v2);
}

@end