@interface SafariCNContactPickerViewController
- (unint64_t)supportedInterfaceOrientations;
@end

@implementation SafariCNContactPickerViewController

- (unint64_t)supportedInterfaceOrientations
{
  if (isiPad(self, a2))
  {
    return 30;
  }

  if (PSIsN56())
  {
    return 30;
  }

  return 2;
}

@end