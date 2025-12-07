@interface UITableViewCellAccessibility__UIKit__HomeUI
- (unint64_t)accessibilityTraits;
- (void)hu_configureCheckmarkForImageView:(id)view checked:(BOOL)checked;
@end

@implementation UITableViewCellAccessibility__UIKit__HomeUI

- (void)hu_configureCheckmarkForImageView:(id)view checked:(BOOL)checked
{
  checkedCopy = checked;
  v6.receiver = self;
  v6.super_class = UITableViewCellAccessibility__UIKit__HomeUI;
  viewCopy = view;
  [(UITableViewCellAccessibility__UIKit__HomeUI *)&v6 hu_configureCheckmarkForImageView:viewCopy checked:checkedCopy];
  [viewCopy setAccessibilityElementsHidden:{checkedCopy ^ 1, v6.receiver, v6.super_class}];
}

- (unint64_t)accessibilityTraits
{
  v7.receiver = self;
  v7.super_class = UITableViewCellAccessibility__UIKit__HomeUI;
  accessibilityTraits = [(UITableViewCellAccessibility__UIKit__HomeUI *)&v7 accessibilityTraits];
  if ((*MEMORY[0x29EDC7FC0] & ~accessibilityTraits) == 0 && [(UITableViewCellAccessibility__UIKit__HomeUI *)self accessoryType]== 3)
  {
    accessoryView = [(UITableViewCellAccessibility__UIKit__HomeUI *)self accessoryView];
    accessibilityElementsHidden = [accessoryView accessibilityElementsHidden];

    if (accessibilityElementsHidden)
    {
      return _AXTraitsRemoveTrait();
    }
  }

  return accessibilityTraits;
}

@end