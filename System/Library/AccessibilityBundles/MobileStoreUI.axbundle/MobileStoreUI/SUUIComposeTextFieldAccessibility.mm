@interface SUUIComposeTextFieldAccessibility
- (SUUIComposeTextFieldAccessibility)initWithConfiguration:(id)configuration style:(int)style;
@end

@implementation SUUIComposeTextFieldAccessibility

- (SUUIComposeTextFieldAccessibility)initWithConfiguration:(id)configuration style:(int)style
{
  v9.receiver = self;
  v9.super_class = SUUIComposeTextFieldAccessibility;
  v4 = [(SUUIComposeTextFieldAccessibility *)&v9 initWithConfiguration:configuration style:*&style];
  v5 = [(SUUIComposeTextFieldAccessibility *)v4 safeValueForKey:@"_textField"];
  v6 = [(SUUIComposeTextFieldAccessibility *)v4 safeValueForKey:@"_configuration"];
  v7 = [v6 safeValueForKey:@"label"];
  [v5 setAccessibilityLabel:v7];

  return v4;
}

@end