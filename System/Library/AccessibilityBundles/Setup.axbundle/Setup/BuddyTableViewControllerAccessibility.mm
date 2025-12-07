@interface BuddyTableViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BuddyTableViewControllerAccessibility)init;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_accessibilityMarkTableViewAsNotAXElement;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation BuddyTableViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"BuddyTableViewController" hasInstanceMethod:@"tableView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"BuddyTableViewController" hasInstanceVariable:@"_tableView" withType:"UITableView"];
}

- (void)_accessibilityMarkTableViewAsNotAXElement
{
  objc_opt_class();
  v3 = [(BuddyTableViewControllerAccessibility *)self safeValueForKey:@"tableView"];
  v4 = __UIAccessibilityCastAsClass();

  [v4 setIsAccessibilityElement:0];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = BuddyTableViewControllerAccessibility;
  [(BuddyTableViewControllerAccessibility *)&v4 viewDidAppear:appear];
  [(BuddyTableViewControllerAccessibility *)self _accessibilityMarkTableViewAsNotAXElement];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = BuddyTableViewControllerAccessibility;
  [(BuddyTableViewControllerAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(BuddyTableViewControllerAccessibility *)self _accessibilityMarkTableViewAsNotAXElement];
}

- (BuddyTableViewControllerAccessibility)init
{
  v7.receiver = self;
  v7.super_class = BuddyTableViewControllerAccessibility;
  v2 = [(BuddyTableViewControllerAccessibility *)&v7 init];
  v3 = [(BuddyTableViewControllerAccessibility *)v2 safeValueForKey:@"_containerView"];
  [v3 setAccessibilityIdentifier:@"BuddyContainerView"];

  v4 = [(BuddyTableViewControllerAccessibility *)v2 safeValueForKey:@"_tableView"];
  [v4 setAccessibilityIdentifier:@"BuddyTableView"];

  v5 = [(BuddyTableViewControllerAccessibility *)v2 safeValueForKey:@"_tableView"];
  [v5 setAccessibilityLabel:&stru_2A22D4EC0];

  return v2;
}

@end