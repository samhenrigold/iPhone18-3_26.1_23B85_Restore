@interface BlastDoorLargeImage
- (BlastDoorLargeImage)init;
- (BlastDoorMachImage)image;
- (BlastDoorMediaMetadata)metadata;
@end

@implementation BlastDoorLargeImage

- (BlastDoorMachImage)image
{
  v3 = type metadata accessor for LargeImage(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = (&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_213FB568C(self + OBJC_IVAR___BlastDoorLargeImage_largeImage, v5, type metadata accessor for LargeImage);
  v6 = *v5;
  selfCopy = self;

  sub_213FB5844(v5, type metadata accessor for LargeImage);
  v8 = type metadata accessor for _ObjCMachImageWrapper();
  v9 = objc_allocWithZone(v8);
  *&v9[OBJC_IVAR___BlastDoorMachImage_image] = v6;
  v12.receiver = v9;
  v12.super_class = v8;

  v10 = [(BlastDoorLargeImage *)&v12 init];

  return v10;
}

- (BlastDoorMediaMetadata)metadata
{
  v3 = type metadata accessor for MediaMetadata(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = self + OBJC_IVAR___BlastDoorLargeImage_largeImage;
  v7 = type metadata accessor for LargeImage(0);
  sub_213FB568C(&v6[*(v7 + 20)], v5, type metadata accessor for MediaMetadata);
  v8 = type metadata accessor for _ObjCMediaMetadataWrapper(0);
  v9 = objc_allocWithZone(v8);
  sub_213FB568C(v5, v9 + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata, type metadata accessor for MediaMetadata);
  v12.receiver = v9;
  v12.super_class = v8;
  v10 = [(BlastDoorLargeImage *)&v12 init];
  sub_213FB5844(v5, type metadata accessor for MediaMetadata);

  return v10;
}

- (BlastDoorLargeImage)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end