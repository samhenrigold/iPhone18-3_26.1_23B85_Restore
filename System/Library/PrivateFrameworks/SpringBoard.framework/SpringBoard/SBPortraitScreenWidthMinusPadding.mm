@interface SBPortraitScreenWidthMinusPadding
@end

@implementation SBPortraitScreenWidthMinusPadding

void ___SBPortraitScreenWidthMinusPadding_block_invoke()
{
  v3 = [MEMORY[0x277D759A0] mainScreen];
  v0 = [v3 fixedCoordinateSpace];
  [v0 bounds];
  Width = CGRectGetWidth(v5);
  _SBPortraitScreenWidthMinusPadding___size = floor(Width + _SBPIPContentViewPaddingWhileStashed(0, v2) * -2.0 + -2.0);
}

@end