@interface SPUIKeyboardGaussianBlurView
- (SPUIKeyboardGaussianBlurView)init;
@end

@implementation SPUIKeyboardGaussianBlurView

- (SPUIKeyboardGaussianBlurView)init
{
  v9[1] = *MEMORY[0x277D85DE8];
  v8.receiver = self;
  v8.super_class = SPUIKeyboardGaussianBlurView;
  v2 = [(SPUIKeyboardGaussianBlurView *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA328]];
    [v3 setName:@"blur"];
    [v3 setValue:&unk_287C4F758 forKey:*MEMORY[0x277CDA4F0]];
    [v3 setValue:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CDA4C8]];
    v9[0] = v3;
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
    layer = [(SPUIKeyboardGaussianBlurView *)v2 layer];
    [layer setFilters:v4];

    layer2 = [(SPUIKeyboardGaussianBlurView *)v2 layer];
    [layer2 setScale:0.125];
  }

  return v2;
}

@end