@interface IMMediaAnalysisBlastDoorInterfaceInternal
+ (BOOL)supportsFeature:(id)feature;
- (id)generateImagePreviewForFileURL:(id)l maxPixelDimension:(float)dimension scale:(float)scale error:(id *)error;
- (void)generateMetadataforAttachmentWithfileURL:(id)l resultHandler:(id)handler;
- (void)generateMovieFramesForAttachmentWithFileURL:(id)l targetPixelWidth:(int64_t)width targetPixelHeight:(int64_t)height frameLimit:(int64_t)limit uniformSampling:(BOOL)sampling framesPerSync:(int64_t)sync appliesPreferredTrackTransform:(BOOL)transform resultHandler:(id)self0;
- (void)generateMoviePreviewForAttachmentWithFileURL:(id)l maxPixelDimension:(float)dimension minThumbnailPxSize:(CGSize)size scale:(float)scale resultHandler:(id)handler;
@end

@implementation IMMediaAnalysisBlastDoorInterfaceInternal

+ (BOOL)supportsFeature:(id)feature
{
  v4 = sub_258455138();
  v5 = v3;
  if (v4 == 0x6572506567616D69 && v3 == 0xED00007377656976 || (sub_2584551C8() & 1) != 0 || v4 == 0x6572506F65646976 && v5 == 0xED00007377656976)
  {

    v6 = 1;
  }

  else
  {
    v6 = sub_2584551C8();
  }

  return v6 & 1;
}

- (void)generateMetadataforAttachmentWithfileURL:(id)l resultHandler:(id)handler
{
  v6 = sub_258454ED8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _Block_copy(handler);
  sub_258454EB8();
  _Block_copy(v10);
  selfCopy = self;
  sub_258454240(v9, selfCopy, v10);
  _Block_release(v10);
  _Block_release(v10);

  (*(v7 + 8))(v9, v6);
}

- (id)generateImagePreviewForFileURL:(id)l maxPixelDimension:(float)dimension scale:(float)scale error:(id *)error
{
  v9 = sub_258454ED8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258454EB8();
  selfCopy = self;
  v14 = sub_258452810(v12, dimension, scale);
  (*(v10 + 8))(v12, v9);

  return v14;
}

- (void)generateMoviePreviewForAttachmentWithFileURL:(id)l maxPixelDimension:(float)dimension minThumbnailPxSize:(CGSize)size scale:(float)scale resultHandler:(id)handler
{
  height = size.height;
  width = size.width;
  v13 = sub_258454ED8();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = _Block_copy(handler);
  sub_258454EB8();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  selfCopy = self;
  sub_258452F94(dimension, width, height, scale, v16, sub_258454238, v18);

  (*(v14 + 8))(v16, v13);
}

- (void)generateMovieFramesForAttachmentWithFileURL:(id)l targetPixelWidth:(int64_t)width targetPixelHeight:(int64_t)height frameLimit:(int64_t)limit uniformSampling:(BOOL)sampling framesPerSync:(int64_t)sync appliesPreferredTrackTransform:(BOOL)transform resultHandler:(id)self0
{
  syncCopy = sync;
  HIDWORD(v21) = sampling;
  v14 = sub_258454ED8();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = _Block_copy(handler);
  sub_258454EB8();
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  selfCopy = self;
  sub_25845379C(v17, width, height, limit, HIDWORD(v21), syncCopy, transform, sub_258454230, v19);

  (*(v15 + 8))(v17, v14);
}

@end