@interface WKInterfaceGroup
- (void)setBackgroundColor:(id)color;
- (void)setBackgroundImageData:(id)data;
- (void)setBackgroundImageNamed:(id)named;
- (void)setContentInset:(UIEdgeInsets)inset;
- (void)setCornerRadius:(double)radius;
- (void)startAnimatingWithImagesInRange:(_NSRange)range duration:(double)duration repeatCount:(int64_t)count;
@end

@implementation WKInterfaceGroup

- (void)setCornerRadius:(double)radius
{
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:radius];
  [(WKInterfaceObject *)self _sendValueChanged:v4 forProperty:@"radius"];
}

- (void)setContentInset:(UIEdgeInsets)inset
{
  right = inset.right;
  bottom = inset.bottom;
  left = inset.left;
  v13[4] = *MEMORY[0x277D85DE8];
  v12[0] = @"top";
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:inset.top];
  v13[0] = v7;
  v12[1] = @"left";
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:left];
  v13[1] = v8;
  v12[2] = @"bottom";
  v9 = [MEMORY[0x277CCABB0] numberWithDouble:bottom];
  v13[2] = v9;
  v12[3] = @"right";
  v10 = [MEMORY[0x277CCABB0] numberWithDouble:right];
  v13[3] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:4];
  [(WKInterfaceObject *)self _sendValueChanged:v11 forProperty:@"contentInset"];
}

- (void)setBackgroundColor:(id)color
{
  v4 = [SPColorWrapper wrapperForColor:color];
  [(WKInterfaceObject *)self _sendValueChanged:v4 forProperty:@"color"];
}

- (void)setBackgroundImageData:(id)data
{
  v4 = [data copy];
  [(WKInterfaceObject *)self _setImageData:v4 forProperty:&stru_284DFE9D8];
}

- (void)setBackgroundImageNamed:(id)named
{
  v4 = [named copy];
  [(WKInterfaceObject *)self _setImageNamed:v4 forProperty:&stru_284DFE9D8];
}

- (void)startAnimatingWithImagesInRange:(_NSRange)range duration:(double)duration repeatCount:(int64_t)count
{
  length = range.length;
  v14[4] = *MEMORY[0x277D85DE8];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:range.location];
  v14[0] = v9;
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:length];
  v14[1] = v10;
  v11 = [MEMORY[0x277CCABB0] numberWithDouble:duration];
  v14[2] = v11;
  v12 = [MEMORY[0x277CCABB0] numberWithInteger:count];
  v14[3] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:4];
  [(WKInterfaceObject *)self _sendValueChanged:v13 forProperty:@".start"];
}

@end