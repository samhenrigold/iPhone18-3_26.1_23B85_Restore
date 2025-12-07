@interface IndividualSwipeOptionControllerAccessibility
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
@end

@implementation IndividualSwipeOptionControllerAccessibility

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  v10.receiver = self;
  v10.super_class = IndividualSwipeOptionControllerAccessibility;
  cellCopy = cell;
  [(IndividualSwipeOptionControllerAccessibility *)&v10 tableView:view willDisplayCell:cellCopy forRowAtIndexPath:path];
  textLabel = [cellCopy textLabel];
  if ([textLabel isEnabled])
  {
    v9 = 0;
  }

  else
  {
    v9 = *MEMORY[0x29EDC7FA8];
  }

  [cellCopy setAccessibilityTraits:v9];
}

@end