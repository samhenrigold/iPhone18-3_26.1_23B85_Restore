@interface SBSeventeenFiftiethsScreenWidthMinusPadding
@end

@implementation SBSeventeenFiftiethsScreenWidthMinusPadding

void ___SBSeventeenFiftiethsScreenWidthMinusPadding_block_invoke()
{
  v3 = [MEMORY[0x277D759A0] mainScreen];
  v0 = [v3 fixedCoordinateSpace];
  [v0 bounds];
  Width = CGRectGetWidth(v5);
  _SBSeventeenFiftiethsScreenWidthMinusPadding___size = floor(-2.0 - (_SBPIPContentViewPaddingWhileStashed(0, v2) - Width * 0.340000004));
}

@end