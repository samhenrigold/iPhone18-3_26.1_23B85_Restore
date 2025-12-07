@interface WFHomeAccessoryAction(UIKit)
- (id)localizedFooter;
@end

@implementation WFHomeAccessoryAction(UIKit)

- (id)localizedFooter
{
  mEMORY[0x277D7C4F0] = [MEMORY[0x277D7C4F0] sharedManager];
  v2 = WFFooterTextForHomeAction();

  return v2;
}

@end