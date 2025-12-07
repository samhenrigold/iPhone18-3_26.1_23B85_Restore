@interface PFVideoAVObjectBuilder(CMTimerange)
- (CMTimeRange)vcp_convertToOriginalTimerangeFromScaledTimerange:()CMTimerange;
@end

@implementation PFVideoAVObjectBuilder(CMTimerange)

- (CMTimeRange)vcp_convertToOriginalTimerangeFromScaledTimerange:()CMTimerange
{
  memset(&v10, 0, sizeof(v10));
  v6 = *(a2 + 16);
  *&range.start.value = *a2;
  *&range.start.epoch = v6;
  *&range.duration.timescale = *(a2 + 32);
  CMTimeRangeGetEnd(&v10, &range);
  end = *a2;
  objc_msgSend_convertToOriginalTimeFromScaledTime_forExport_(self);
  objc_msgSend_convertToOriginalTimeFromScaledTime_forExport_(self, v10.value, *&v10.timescale, v10.epoch);
  return CMTimeRangeFromTimeToTime(a3, &range.start, &end);
}

@end