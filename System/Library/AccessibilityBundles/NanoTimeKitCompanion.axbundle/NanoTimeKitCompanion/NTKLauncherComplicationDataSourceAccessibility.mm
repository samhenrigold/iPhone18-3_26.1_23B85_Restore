@interface NTKLauncherComplicationDataSourceAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_currentTimelineEntry;
@end

@implementation NTKLauncherComplicationDataSourceAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"NTKLauncherComplicationDataSource" hasInstanceMethod:@"_currentTimelineEntry" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NTKLauncherComplicationDataSource" hasInstanceMethod:@"_appTitle" withFullSignature:{"@", 0}];
}

- (id)_currentTimelineEntry
{
  v11.receiver = self;
  v11.super_class = NTKLauncherComplicationDataSourceAccessibility;
  _currentTimelineEntry = [(NTKLauncherComplicationDataSourceAccessibility *)&v11 _currentTimelineEntry];
  complicationTemplate = [_currentTimelineEntry complicationTemplate];
  if (_accessibilityComplicationTemplateContainsSimpleImage())
  {
    v5 = [(NTKLauncherComplicationDataSourceAccessibility *)self safeValueForKey:@"_appTitle"];
    if ([v5 length])
    {
      v6 = [complicationTemplate safeValueForKey:@"imageProvider"];
      [v6 setAccessibilityLabel:v5];

      v7 = [complicationTemplate safeValueForKey:@"imageProvider"];
      v8 = accessibilityLocalizedString(@"double.tap.to.open.complication.hint");
      v9 = [NSString stringWithFormat:v8, v5];
      [v7 setAccessibilityHint:v9];
    }
  }

  return _currentTimelineEntry;
}

@end