@interface SRTranscriptStackViewControllerAccessibility
- (void)_enumerateSortedParentItemIndexPathsForItemIndexPaths:(id)paths usingBlock:(id)block;
- (void)navigationController:(id)controller didShowViewController:(id)viewController animated:(BOOL)animated;
@end

@implementation SRTranscriptStackViewControllerAccessibility

- (void)_enumerateSortedParentItemIndexPathsForItemIndexPaths:(id)paths usingBlock:(id)block
{
  v4.receiver = self;
  v4.super_class = SRTranscriptStackViewControllerAccessibility;
  [(SRTranscriptStackViewControllerAccessibility *)&v4 _enumerateSortedParentItemIndexPathsForItemIndexPaths:paths usingBlock:block];
  AXPerformBlockOnMainThreadAfterDelay();
}

- (void)navigationController:(id)controller didShowViewController:(id)viewController animated:(BOOL)animated
{
  v5.receiver = self;
  v5.super_class = SRTranscriptStackViewControllerAccessibility;
  [(SRTranscriptStackViewControllerAccessibility *)&v5 navigationController:controller didShowViewController:viewController animated:animated];
  AXPerformBlockOnMainThreadAfterDelay();
}

@end