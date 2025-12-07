@interface WKSPInterfaceButton
- (void)setEnabled:(BOOL)enabled;
@end

@implementation WKSPInterfaceButton

- (void)setEnabled:(BOOL)enabled
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:enabled];
  [(WKSPInterfaceObject *)self _sendValueChanged:v4];
}

@end