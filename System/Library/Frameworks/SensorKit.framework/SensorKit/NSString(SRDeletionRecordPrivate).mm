@interface NSString(SRDeletionRecordPrivate)
- (void)sr_sensorByDeletingDeletionRecord;
@end

@implementation NSString(SRDeletionRecordPrivate)

- (void)sr_sensorByDeletingDeletionRecord
{
  if (![self hasSuffix:@".tombstones"])
  {
    return self;
  }

  return [self stringByDeletingPathExtension];
}

@end