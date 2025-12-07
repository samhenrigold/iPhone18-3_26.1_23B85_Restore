@interface SBThreeFourthsPortraitScreenWidthMinusPadding
@end

@implementation SBThreeFourthsPortraitScreenWidthMinusPadding

void ___SBThreeFourthsPortraitScreenWidthMinusPadding_block_invoke()
{
  v3 = [MEMORY[0x277D759A0] mainScreen];
  v0 = [v3 fixedCoordinateSpace];
  [v0 bounds];
  Width = CGRectGetWidth(v5);
  _SBThreeFourthsPortraitScreenWidthMinusPadding___size = floor(_SBPIPContentViewPaddingWhileStashed(0, v2) * -2.0 + Width * 0.75 + -2.0);
}

@end