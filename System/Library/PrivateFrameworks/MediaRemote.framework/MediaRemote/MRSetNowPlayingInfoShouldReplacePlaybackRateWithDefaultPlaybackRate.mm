@interface MRSetNowPlayingInfoShouldReplacePlaybackRateWithDefaultPlaybackRate
@end

@implementation MRSetNowPlayingInfoShouldReplacePlaybackRateWithDefaultPlaybackRate

void ___MRSetNowPlayingInfoShouldReplacePlaybackRateWithDefaultPlaybackRate_block_invoke()
{
  v1 = [MEMORY[0x1E696AAE8] mainBundle];
  v0 = [v1 bundleIdentifier];
  _MRSetNowPlayingInfoShouldReplacePlaybackRateWithDefaultPlaybackRate_shouldReplace = objc_msgSend_isEqualToString_(v0);
}

@end