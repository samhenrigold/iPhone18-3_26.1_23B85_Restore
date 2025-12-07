@interface WKInterfaceSwitch
- (void)setAttributedTitle:(id)title;
- (void)setColor:(id)color;
- (void)setEnabled:(BOOL)enabled;
- (void)setOn:(BOOL)on;
- (void)setTitle:(id)title;
@end

@implementation WKInterfaceSwitch

- (void)setTitle:(id)title
{
  v4 = [title copy];
  [(WKInterfaceObject *)self _sendValueChanged:v4 forProperty:@"title"];
}

- (void)setAttributedTitle:(id)title
{
  v4 = _WKValidatedAttributedString(title);
  [(WKInterfaceObject *)self _sendValueChanged:v4 forProperty:@"title"];
}

- (void)setOn:(BOOL)on
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:on];
  [(WKInterfaceObject *)self _sendValueChanged:v4 forProperty:@"#value"];
}

- (void)setEnabled:(BOOL)enabled
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:enabled];
  [(WKInterfaceObject *)self _sendValueChanged:v4 forProperty:@"enabled"];
}

- (void)setColor:(id)color
{
  v4 = [SPColorWrapper wrapperForColor:color];
  [(WKInterfaceObject *)self _sendValueChanged:v4 forProperty:@"color"];
}

@end