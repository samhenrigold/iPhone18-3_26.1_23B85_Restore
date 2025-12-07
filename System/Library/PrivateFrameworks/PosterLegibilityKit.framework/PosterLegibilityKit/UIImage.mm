@interface UIImage
@end

@implementation UIImage

void *__43__UIImage_PLKUtilities__plk_alphaMaskImage__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D75348] whiteColor];
  [v2 setFill];

  BSRectWithSize();
  UIRectFill(v6);
  v3 = *(a1 + 32);
  BSRectWithSize();

  return [v3 drawInRect:? blendMode:? alpha:?];
}

@end