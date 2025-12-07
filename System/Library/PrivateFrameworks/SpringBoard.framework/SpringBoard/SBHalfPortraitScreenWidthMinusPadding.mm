@interface SBHalfPortraitScreenWidthMinusPadding
@end

@implementation SBHalfPortraitScreenWidthMinusPadding

void ___SBHalfPortraitScreenWidthMinusPadding_block_invoke()
{
  v3 = [MEMORY[0x277D759A0] mainScreen];
  v0 = [v3 fixedCoordinateSpace];
  [v0 bounds];
  Width = CGRectGetWidth(v5);
  _SBHalfPortraitScreenWidthMinusPadding___size = floor(-2.0 - (_SBPIPContentViewPaddingWhileStashed(0, v2) - Width * 0.5));
}

@end