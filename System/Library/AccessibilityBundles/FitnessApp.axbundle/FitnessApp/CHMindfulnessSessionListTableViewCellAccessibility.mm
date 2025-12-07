@interface CHMindfulnessSessionListTableViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_isDateInLastWeek:(id)week;
- (id)accessibilityPath;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation CHMindfulnessSessionListTableViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CHMindfulnessSessionListTableViewCell" hasSwiftFieldOfAnyClass:@"insetContentView"];
  [validationsCopy validateClass:@"CHMindfulnessSessionListTableViewCell" hasSwiftField:@"mindfulnessSessionViewModel" withSwiftType:"Optional<MindfulnessSessionViewModel>"];
  [validationsCopy validateClass:@"CHMindfulnessSessionListTableViewCell" hasSwiftField:@"dateLabel" withSwiftType:"UILabel"];
  [validationsCopy validateClass:@"FitnessUI.MindfulnessSessionViewModel" hasSwiftField:@"endDate" withSwiftType:"Date"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v10.receiver = self;
  v10.super_class = CHMindfulnessSessionListTableViewCellAccessibility;
  [(CHMindfulnessSessionListTableViewCellAccessibility *)&v10 _accessibilityLoadAccessibilityInformation];
  objc_initWeak(&location, self);
  LOBYTE(from) = 0;
  objc_opt_class();
  v3 = [(CHMindfulnessSessionListTableViewCellAccessibility *)self safeSwiftValueForKey:@"dateLabel"];
  v4 = __UIAccessibilityCastAsClass();

  objc_initWeak(&from, v4);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __96__CHMindfulnessSessionListTableViewCellAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v5[3] = &unk_1C5B8;
  objc_copyWeak(&v6, &location);
  objc_copyWeak(&v7, &from);
  [v4 setAccessibilityLabelBlock:v5];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&from);

  objc_destroyWeak(&location);
}

id __96__CHMindfulnessSessionListTableViewCellAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1, uint64_t a2)
{
  objc_opt_class();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained safeSwiftValueForKey:@"mindfulnessSessionViewModel"];
  v5 = [v4 safeSwiftValueForKey:@"endDate"];
  v6 = __UIAccessibilityCastAsClass();

  if (v6 && (v7 = objc_loadWeakRetained((a1 + 32)), v8 = [v7 _isDateInLastWeek:v6], v7, (v8 & 1) == 0))
  {
    v10 = AXDateStringForFormat();
  }

  else
  {
    v9 = objc_loadWeakRetained((a1 + 40));
    v10 = [v9 text];
  }

  return v10;
}

- (id)accessibilityPath
{
  v3 = [(CHMindfulnessSessionListTableViewCellAccessibility *)self safeSwiftValueForKey:@"insetContentView"];
  accessibilityPath = [v3 accessibilityPath];
  v5 = accessibilityPath;
  if (accessibilityPath)
  {
    accessibilityPath2 = accessibilityPath;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = CHMindfulnessSessionListTableViewCellAccessibility;
    accessibilityPath2 = [(CHMindfulnessSessionListTableViewCellAccessibility *)&v9 accessibilityPath];
  }

  v7 = accessibilityPath2;

  return v7;
}

- (BOOL)_isDateInLastWeek:(id)week
{
  weekCopy = week;
  v4 = +[NSCalendar currentCalendar];
  v5 = +[NSDate date];
  v6 = [v4 dateByAddingUnit:16 value:-6 toDate:v5 options:0];

  v7 = +[NSCalendar currentCalendar];
  v8 = [v7 startOfDayForDate:v6];

  v9 = [weekCopy laterDate:v8];

  return v9 == weekCopy;
}

@end