@interface WKSPInterfaceSlider
- (void)setEnabled:(BOOL)enabled;
- (void)setValue:(float)value;
@end

@implementation WKSPInterfaceSlider

- (void)setValue:(float)value
{
  v4 = [MEMORY[0x277CCABB0] numberWithFloat:?];
  [(WKSPInterfaceObject *)self _sendValueChanged:v4];
}

- (void)setEnabled:(BOOL)enabled
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:enabled];
  [(WKSPInterfaceObject *)self _sendValueChanged:v4 forProperty:@"enabled"];
}

@end