@interface MRNowPlayingSupportedAnimatedArtworkFormats
@end

@implementation MRNowPlayingSupportedAnimatedArtworkFormats

void ___MRNowPlayingSupportedAnimatedArtworkFormats_block_invoke()
{
  v2[2] = *MEMORY[0x1E69E9840];
  v2[0] = @"MRContentItemAnimatedArtworkFormatSquare";
  v2[1] = @"MRContentItemAnimatedArtworkFormatTall";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:2];
  v1 = _MRNowPlayingSupportedAnimatedArtworkFormats_all;
  _MRNowPlayingSupportedAnimatedArtworkFormats_all = v0;
}

@end