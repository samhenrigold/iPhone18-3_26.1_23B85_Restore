@interface NPLPeopleViewCellAccessibility
- (void)pageViewController:(id)controller didFinishAnimating:(BOOL)animating previousViewControllers:(id)controllers transitionCompleted:(BOOL)completed;
@end

@implementation NPLPeopleViewCellAccessibility

- (void)pageViewController:(id)controller didFinishAnimating:(BOOL)animating previousViewControllers:(id)controllers transitionCompleted:(BOOL)completed
{
  v7.receiver = self;
  v7.super_class = NPLPeopleViewCellAccessibility;
  [(NPLPeopleViewCellAccessibility *)&v7 pageViewController:controller didFinishAnimating:animating previousViewControllers:controllers transitionCompleted:completed];
  [(NPLPeopleViewCellAccessibility *)self _accessibilityClearChildren];
}

@end