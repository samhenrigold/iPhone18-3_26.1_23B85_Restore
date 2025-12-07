@interface SUICCheckGlyphSpringAnimationFactory
@end

@implementation SUICCheckGlyphSpringAnimationFactory

uint64_t __77___SUICCheckGlyphSpringAnimationFactory_springAnimationWithKeyPath_velocity___block_invoke(uint64_t a1)
{
  [_SUICDefaultSpringAnimationFactory setVelocity:*(a1 + 48)];
  v2 = [_SUICDefaultSpringAnimationFactory springAnimationWithKeyPath:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

@end