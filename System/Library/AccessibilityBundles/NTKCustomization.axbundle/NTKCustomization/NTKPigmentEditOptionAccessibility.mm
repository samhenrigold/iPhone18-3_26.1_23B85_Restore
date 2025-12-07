@interface NTKPigmentEditOptionAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilityEditOptionDescription;
@end

@implementation NTKPigmentEditOptionAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"NTKPigmentEditOption" hasInstanceMethod:@"localizedName" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NTKPigmentEditOption" hasInstanceVariable:@"_fullname" withType:"NSString"];
}

- (id)_accessibilityEditOptionDescription
{
  v3 = [(NTKPigmentEditOptionAccessibility *)self safeStringForKey:@"_fullname"];
  v4 = AXCFormattedString();
  v5 = accessibilityLocalizedString(v4);
  if ([v5 isEqualToString:{v4, v3}])
  {
    v6 = [(NTKPigmentEditOptionAccessibility *)self safeStringForKey:@"localizedName"];
  }

  else
  {
    v6 = v5;
  }

  v7 = v6;

  return v7;
}

@end