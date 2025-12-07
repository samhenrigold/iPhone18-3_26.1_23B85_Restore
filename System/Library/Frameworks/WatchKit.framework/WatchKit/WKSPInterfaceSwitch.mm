@interface WKSPInterfaceSwitch
- (void)setEnabled:(BOOL)enabled;
- (void)setOn:(BOOL)on;
@end

@implementation WKSPInterfaceSwitch

- (void)setOn:(BOOL)on
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:on];
  [(WKSPInterfaceObject *)self _sendValueChanged:v4];
}

- (void)setEnabled:(BOOL)enabled
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:enabled];
  [(WKSPInterfaceObject *)self _sendValueChanged:v4 forProperty:@"enabled"];
}

@end