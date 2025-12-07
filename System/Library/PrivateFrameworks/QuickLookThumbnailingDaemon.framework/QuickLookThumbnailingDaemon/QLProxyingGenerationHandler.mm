@interface QLProxyingGenerationHandler
- (QLProxyingGenerationHandler)initWithGeneratorRequest:(id)request;
- (void)didGenerateThumbnailForRequestWithUUID:(id)d images:(id)images metadata:(id)metadata contentRect:(CGRect)rect iconFlavor:(int)flavor thumbnailType:(int64_t)type clientShouldTakeOwnership:(BOOL)ownership;
- (void)didUpdateStatus:(int64_t)status ofThumbnailGenerationWithUUID:(id)d;
- (void)failedToGenerateThumbnailOfType:(int64_t)type forRequestWithUUID:(id)d error:(id)error;
@end

@implementation QLProxyingGenerationHandler

- (QLProxyingGenerationHandler)initWithGeneratorRequest:(id)request
{
  requestCopy = request;
  v9.receiver = self;
  v9.super_class = QLProxyingGenerationHandler;
  v6 = [(QLProxyingGenerationHandler *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_generatorRequest, request);
  }

  return v7;
}

- (void)didGenerateThumbnailForRequestWithUUID:(id)d images:(id)images metadata:(id)metadata contentRect:(CGRect)rect iconFlavor:(int)flavor thumbnailType:(int64_t)type clientShouldTakeOwnership:(BOOL)ownership
{
  ownershipCopy = ownership;
  v11 = *&flavor;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  metadataCopy = metadata;
  generatorRequest = self->_generatorRequest;
  imagesCopy = images;
  [(QLTGeneratorThumbnailRequest *)generatorRequest addTypeToHandledTypes:type];
  [(QLTGeneratorThumbnailRequest *)self->_generatorRequest addTypeToSuccessfullyHandledTypes:type];
  generationHandler = [(QLTGeneratorThumbnailRequest *)self->_generatorRequest generationHandler];
  request = [(QLTGeneratorThumbnailRequest *)self->_generatorRequest request];
  uuid = [request uuid];
  [generationHandler didGenerateThumbnailForRequestWithUUID:uuid images:imagesCopy metadata:metadataCopy contentRect:v11 iconFlavor:type thumbnailType:ownershipCopy clientShouldTakeOwnership:{x, y, width, height}];

  firstObject = [imagesCopy firstObject];

  if (type == 2 && ownershipCopy && firstObject)
  {
    v24 = +[QLServerThread sharedInstance];
    data = [firstObject data];
    v26 = self->_generatorRequest;
    format = [firstObject format];
    [v24 addImageData:data toCacheForRequest:v26 withBitmapFormat:format contentRect:v11 flavor:metadataCopy metadata:x, y, width, height];
  }
}

- (void)failedToGenerateThumbnailOfType:(int64_t)type forRequestWithUUID:(id)d error:(id)error
{
  generatorRequest = self->_generatorRequest;
  errorCopy = error;
  [(QLTGeneratorThumbnailRequest *)generatorRequest addTypeToHandledTypes:type];
  generationHandler = [(QLTGeneratorThumbnailRequest *)self->_generatorRequest generationHandler];
  request = [(QLTGeneratorThumbnailRequest *)self->_generatorRequest request];
  uuid = [request uuid];
  [generationHandler failedToGenerateThumbnailOfType:type forRequestWithUUID:uuid error:errorCopy];
}

- (void)didUpdateStatus:(int64_t)status ofThumbnailGenerationWithUUID:(id)d
{
  v8 = [(QLTGeneratorThumbnailRequest *)self->_generatorRequest generationHandler:status];
  request = [(QLTGeneratorThumbnailRequest *)self->_generatorRequest request];
  uuid = [request uuid];
  [v8 didUpdateStatus:status ofThumbnailGenerationWithUUID:uuid];
}

@end