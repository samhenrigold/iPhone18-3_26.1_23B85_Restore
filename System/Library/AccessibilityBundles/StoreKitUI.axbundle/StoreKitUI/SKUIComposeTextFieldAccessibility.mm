@interface SKUIComposeTextFieldAccessibility
- (SKUIComposeTextFieldAccessibility)initWithConfiguration:(id)configuration style:(int)style;
@end

@implementation SKUIComposeTextFieldAccessibility

- (SKUIComposeTextFieldAccessibility)initWithConfiguration:(id)configuration style:(int)style
{
  v9.receiver = self;
  v9.super_class = SKUIComposeTextFieldAccessibility;
  v4 = [(SKUIComposeTextFieldAccessibility *)&v9 initWithConfiguration:configuration style:*&style];
  v5 = [(SKUIComposeTextFieldAccessibility *)v4 safeValueForKey:@"_textField"];
  v6 = [(SKUIComposeTextFieldAccessibility *)v4 safeValueForKey:@"_configuration"];
  v7 = [v6 safeValueForKey:@"label"];
  [v5 setAccessibilityLabel:v7];

  return v4;
}

@end