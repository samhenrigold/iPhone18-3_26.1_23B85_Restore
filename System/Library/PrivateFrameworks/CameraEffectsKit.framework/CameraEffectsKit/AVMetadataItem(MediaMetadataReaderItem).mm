@interface AVMetadataItem(MediaMetadataReaderItem)
- (CMTimeRange)timeRange;
@end

@implementation AVMetadataItem(MediaMetadataReaderItem)

- (CMTimeRange)timeRange
{
  objc_msgSend_time(self, a2);
  objc_msgSend_duration(self);
  return CMTimeRangeMake(a3, &start, &v6);
}

@end