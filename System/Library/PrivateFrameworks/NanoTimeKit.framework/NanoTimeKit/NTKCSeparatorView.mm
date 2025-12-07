@interface NTKCSeparatorView
+ (double)intrinsicHeight;
- (CGSize)intrinsicContentSize;
- (NTKCSeparatorView)init;
@end

@implementation NTKCSeparatorView

- (NTKCSeparatorView)init
{
  [objc_opt_class() intrinsicHeight];
  v9.receiver = self;
  v9.super_class = NTKCSeparatorView;
  v4 = [(NTKCSeparatorView *)&v9 initWithFrame:0.0, 0.0, 0.0, v3];
  v5 = v4;
  if (v4)
  {
    v6 = NTKCSeparatorColor(v4);
    v8.receiver = v5;
    v8.super_class = NTKCSeparatorView;
    [(NTKCSeparatorView *)&v8 setBackgroundColor:v6];
  }

  return v5;
}

+ (double)intrinsicHeight
{
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v4 = 1.0 / v3;

  return v4;
}

- (CGSize)intrinsicContentSize
{
  v2 = *MEMORY[0x277D77260];
  [objc_opt_class() intrinsicHeight];
  v4 = v3;
  v5 = v2;
  result.height = v4;
  result.width = v5;
  return result;
}

@end