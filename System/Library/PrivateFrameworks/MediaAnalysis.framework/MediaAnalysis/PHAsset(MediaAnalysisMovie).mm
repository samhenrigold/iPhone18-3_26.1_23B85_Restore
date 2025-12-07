@interface PHAsset(MediaAnalysisMovie)
- (void)vcp_isShortMovie;
@end

@implementation PHAsset(MediaAnalysisMovie)

- (void)vcp_isShortMovie
{
  result = [self isVideo];
  if (result)
  {
    objc_msgSend_duration(self);
    return (v3 < [objc_opt_class() vcp_shortMovieDurationThreshold]);
  }

  return result;
}

@end