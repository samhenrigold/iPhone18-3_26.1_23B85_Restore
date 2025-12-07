@interface TLKContentsViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation TLKContentsViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"TLKContentsView" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"TLKContentsView" hasInstanceMethod:@"detailsLabels" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v10[1] = *MEMORY[0x29EDCA608];
  v3 = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:&stru_2A23468F0];
  v4 = [(TLKContentsViewAccessibility *)self _accessibilityStringForLabelKeyValues:@"titleLabel"];
  [v3 appendString:v4];

  v9 = *MEMORY[0x29EDC7F50];
  v10[0] = MEMORY[0x29EDB8EB0];
  v5 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  [v3 setAttributes:v5 withRange:{0, objc_msgSend(v3, "length")}];

  v6 = [(TLKContentsViewAccessibility *)self safeArrayForKey:@"detailsLabels"];
  v7 = MEMORY[0x29ED3C080]();
  [v3 appendString:v7];

  return v3;
}

@end