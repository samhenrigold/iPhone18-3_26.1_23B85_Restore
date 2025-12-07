@interface MCUIApplicationTrustCell
- (void)setText:(id)text color:(id)color enabled:(BOOL)enabled;
@end

@implementation MCUIApplicationTrustCell

- (void)setText:(id)text color:(id)color enabled:(BOOL)enabled
{
  enabledCopy = enabled;
  colorCopy = color;
  v8 = MEMORY[0x277D756E0];
  textCopy = text;
  cellConfiguration = [v8 cellConfiguration];
  v11 = cellConfiguration;
  if (enabledCopy)
  {
    textProperties = [cellConfiguration textProperties];
    [textProperties setColor:colorCopy];
  }

  textProperties2 = [v11 textProperties];
  [textProperties2 setAlignment:1];

  [v11 setText:textCopy];
  [(MCUIApplicationTrustCell *)self setContentConfiguration:v11];
  [(MCUIApplicationTrustCell *)self setUserInteractionEnabled:enabledCopy];
}

@end