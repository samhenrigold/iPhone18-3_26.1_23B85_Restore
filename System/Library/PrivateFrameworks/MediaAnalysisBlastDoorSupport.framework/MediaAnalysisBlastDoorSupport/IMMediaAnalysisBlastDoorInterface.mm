@interface IMMediaAnalysisBlastDoorInterface
- (IMMediaAnalysisBlastDoorInterface)init;
- (id)generateImagePreviewForFileURL:(id)l maxPixelDimension:(float)dimension scale:(float)scale error:(id *)error;
- (void)generateMetadataforAttachmentWithfileURL:(id)l resultHandler:(id)handler;
- (void)generateMovieFramesForAttachmentWithFileURL:(id)l targetPixelWidth:(int64_t)width targetPixelHeight:(int64_t)height frameLimit:(int64_t)limit uniformSampling:(BOOL)sampling framesPerSync:(int64_t)sync appliesPreferredTrackTransform:(BOOL)transform resultHandler:(id)self0;
- (void)generateMoviePreviewForAttachmentWithFileURL:(id)l maxPixelDimension:(float)dimension minThumbnailPxSize:(CGSize)size scale:(float)scale resultHandler:(id)handler;
@end

@implementation IMMediaAnalysisBlastDoorInterface

- (IMMediaAnalysisBlastDoorInterface)init
{
  v7 = *MEMORY[0x277D85DE8];
  v6.receiver = self;
  v6.super_class = IMMediaAnalysisBlastDoorInterface;
  v2 = [(IMMediaAnalysisBlastDoorInterface *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(IMMediaAnalysisBlastDoorInterfaceInternal);
    interface = v2->_interface;
    v2->_interface = v3;
  }

  return v2;
}

- (id)generateImagePreviewForFileURL:(id)l maxPixelDimension:(float)dimension scale:(float)scale error:(id *)error
{
  lCopy = l;
  interface = [(IMMediaAnalysisBlastDoorInterface *)self interface];
  *&v12 = dimension;
  *&v13 = scale;
  v14 = [interface generateImagePreviewForFileURL:lCopy maxPixelDimension:error scale:v12 error:v13];

  return v14;
}

- (void)generateMoviePreviewForAttachmentWithFileURL:(id)l maxPixelDimension:(float)dimension minThumbnailPxSize:(CGSize)size scale:(float)scale resultHandler:(id)handler
{
  height = size.height;
  width = size.width;
  handlerCopy = handler;
  lCopy = l;
  interface = [(IMMediaAnalysisBlastDoorInterface *)self interface];
  *&v15 = dimension;
  *&v16 = scale;
  [interface generateMoviePreviewForAttachmentWithFileURL:lCopy maxPixelDimension:handlerCopy minThumbnailPxSize:v15 scale:width resultHandler:{height, v16}];
}

- (void)generateMovieFramesForAttachmentWithFileURL:(id)l targetPixelWidth:(int64_t)width targetPixelHeight:(int64_t)height frameLimit:(int64_t)limit uniformSampling:(BOOL)sampling framesPerSync:(int64_t)sync appliesPreferredTrackTransform:(BOOL)transform resultHandler:(id)self0
{
  samplingCopy = sampling;
  handlerCopy = handler;
  lCopy = l;
  interface = [(IMMediaAnalysisBlastDoorInterface *)self interface];
  LOBYTE(v19) = transform;
  [interface generateMovieFramesForAttachmentWithFileURL:lCopy targetPixelWidth:width targetPixelHeight:height frameLimit:limit uniformSampling:samplingCopy framesPerSync:sync appliesPreferredTrackTransform:v19 resultHandler:handlerCopy];
}

- (void)generateMetadataforAttachmentWithfileURL:(id)l resultHandler:(id)handler
{
  handlerCopy = handler;
  lCopy = l;
  interface = [(IMMediaAnalysisBlastDoorInterface *)self interface];
  [interface generateMetadataforAttachmentWithfileURL:lCopy resultHandler:handlerCopy];
}

@end