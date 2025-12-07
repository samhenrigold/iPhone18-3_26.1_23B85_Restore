@interface UIViewController
@end

@implementation UIViewController

uint64_t __48__UIViewController_IC__ic_viewControllerManager__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) viewIfLoaded];
  *(*(*(a1 + 40) + 8) + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2);
}

@end