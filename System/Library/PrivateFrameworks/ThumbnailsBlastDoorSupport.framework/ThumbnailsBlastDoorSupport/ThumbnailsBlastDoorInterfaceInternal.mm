@interface ThumbnailsBlastDoorInterfaceInternal
- (id)generateImageThumbnailForFileURL:(id)l maxPixelDimension:(float)dimension scale:(float)scale error:(id *)error;
- (void)generateMovieThumbnailForAttachmentWithFileURL:(id)l maxPixelDimension:(float)dimension minThumbnailPxSize:(CGSize)size scale:(float)scale resultHandler:(id)handler;
@end

@implementation ThumbnailsBlastDoorInterfaceInternal

- (id)generateImageThumbnailForFileURL:(id)l maxPixelDimension:(float)dimension scale:(float)scale error:(id *)error
{
  v9 = sub_29EC29BEC();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8]();
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29EC29BCC();
  selfCopy = self;
  v14 = sub_29EC289D0(v12, dimension, scale);
  (*(v10 + 8))(v12, v9);

  return v14;
}

- (void)generateMovieThumbnailForAttachmentWithFileURL:(id)l maxPixelDimension:(float)dimension minThumbnailPxSize:(CGSize)size scale:(float)scale resultHandler:(id)handler
{
  height = size.height;
  width = size.width;
  v13 = sub_29EC29BEC();
  v14 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8]();
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = _Block_copy(handler);
  sub_29EC29BCC();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  selfCopy = self;
  sub_29EC291AC(dimension, width, height, scale, v16, sub_29EC29B44, v18);

  (*(v14 + 8))(v16, v13);
}

@end