@interface WKInterfaceSlider
- (void)setColor:(id)color;
- (void)setEnabled:(BOOL)enabled;
- (void)setNumberOfSteps:(int64_t)steps;
- (void)setValue:(float)value;
@end

@implementation WKInterfaceSlider

- (void)setValue:(float)value
{
  v4 = [MEMORY[0x277CCABB0] numberWithFloat:?];
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

- (void)setNumberOfSteps:(int64_t)steps
{
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:steps];
  [(WKInterfaceObject *)self _sendValueChanged:v4 forProperty:@"steps"];
}

@end