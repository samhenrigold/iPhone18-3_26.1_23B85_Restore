@interface VCReportingHistogram2D
- (VCReportingHistogram2D)initWithType:(int)type bucketValues:(id)values;
@end

@implementation VCReportingHistogram2D

- (VCReportingHistogram2D)initWithType:(int)type bucketValues:(id)values
{
  v5.receiver = self;
  v5.super_class = VCReportingHistogram2D;
  return [(VCHistogram2D *)&v5 initWithRanges:[VCReportingHistogram bucketValues:"bucketWithType:count:" bucketWithType:&self->super.super._bucketCount count:?], values];
}

@end