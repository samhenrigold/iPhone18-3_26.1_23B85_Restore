@interface BlastDoorAnimatedImageMetadata
- (BlastDoorAnimatedImageMetadata)init;
- (CGSize)pixelSize;
- (NSArray)durations;
- (NSString)description;
- (NSString)utTypeString;
@end

@implementation BlastDoorAnimatedImageMetadata

- (NSString)description
{

  sub_2146D9608();
  v2 = sub_2146D9588();

  return v2;
}

- (NSArray)durations
{

  v2 = sub_2146D98E8();

  return v2;
}

- (CGSize)pixelSize
{
  v2 = *&self->animatedImageMetadata[OBJC_IVAR___BlastDoorAnimatedImageMetadata_animatedImageMetadata];
  v3 = *&self->animatedImageMetadata[OBJC_IVAR___BlastDoorAnimatedImageMetadata_animatedImageMetadata + 8];
  result.height = v3;
  result.width = v2;
  return result;
}

- (NSString)utTypeString
{

  v2 = sub_2146D9588();

  return v2;
}

- (BlastDoorAnimatedImageMetadata)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end