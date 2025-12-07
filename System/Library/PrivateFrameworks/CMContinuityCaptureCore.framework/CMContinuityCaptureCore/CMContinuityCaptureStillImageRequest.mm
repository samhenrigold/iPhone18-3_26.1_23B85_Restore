@interface CMContinuityCaptureStillImageRequest
- (CMContinuityCaptureStillImageRequest)init;
- (CMContinuityCaptureStillImageRequest)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CMContinuityCaptureStillImageRequest

- (CMContinuityCaptureStillImageRequest)init
{
  v3.receiver = self;
  v3.super_class = CMContinuityCaptureStillImageRequest;
  return [(CMContinuityCaptureStillImageRequest *)&v3 init];
}

- (CMContinuityCaptureStillImageRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = CMContinuityCaptureStillImageRequest;
  v5 = [(CMContinuityCaptureStillImageRequest *)&v15 init];
  if (v5)
  {
    v5->_uniqueID = [coderCopy decodeInt64ForKey:?];
    objc_opt_class();
    v6 = [coderCopy decodeObjectOfClass:? forKey:?];
    compressedFormat = v5->_compressedFormat;
    v5->_compressedFormat = v6;

    v5->_highResolutionPhotoEnabled = [coderCopy decodeBoolForKey:?];
    v5->_flashMode = [coderCopy decodeInt32ForKey:?];
    v5->_photoQualityPrioritization = [coderCopy decodeInt32ForKey:?];
    v5->_maxPhotoDimensions.width = [coderCopy decodeInt32ForKey:?];
    v5->_maxPhotoDimensions.height = [coderCopy decodeInt32ForKey:?];
    v5->_captureComplete = [coderCopy decodeBoolForKey:?];
    objc_opt_class();
    v8 = [coderCopy decodeObjectOfClass:? forKey:?];
    networkTimestamp = v5->_networkTimestamp;
    v5->_networkTimestamp = v8;

    objc_opt_class();
    v10 = [coderCopy decodeObjectOfClass:? forKey:?];
    error = v5->_error;
    v5->_error = v10;

    objc_opt_class();
    v12 = [coderCopy decodeObjectOfClass:? forKey:?];
    imageFileData = v5->_imageFileData;
    v5->_imageFileData = v12;

    v5->_imageCodecType = [coderCopy decodeInt32ForKey:?];
    v5->_imageWidth = [coderCopy decodeInt32ForKey:?];
    v5->_imageHeight = [coderCopy decodeInt32ForKey:?];
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:v5, self->_uniqueID, self->_compressedFormat, self->_highResolutionPhotoEnabled, self->_flashMode, self->_photoQualityPrioritization, self->_maxPhotoDimensions.width, self->_maxPhotoDimensions.height, self->_captureComplete, self->_networkTimestamp, self->_error, self->_imageFileData, self];

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt64:? forKey:?];
  [coderCopy encodeObject:? forKey:?];
  [coderCopy encodeBool:? forKey:?];
  [coderCopy encodeInt32:? forKey:?];
  [coderCopy encodeInt32:? forKey:?];
  [coderCopy encodeInt32:? forKey:?];
  [coderCopy encodeInt32:? forKey:?];
  [coderCopy encodeBool:? forKey:?];
  [coderCopy encodeObject:? forKey:?];
  [coderCopy encodeObject:? forKey:?];
  [coderCopy encodeObject:? forKey:?];
  [coderCopy encodeInt32:? forKey:?];
  [coderCopy encodeInt32:? forKey:?];
  [coderCopy encodeInt32:? forKey:?];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() "allocWithZone:"init"")];
  [(CMContinuityCaptureStillImageRequest *)self uniqueID];
  [v4 setUniqueID:?];
  compressedFormat = [(CMContinuityCaptureStillImageRequest *)self compressedFormat];
  v6 = [compressedFormat copy];
  [v4 setCompressedFormat:?];

  [(CMContinuityCaptureStillImageRequest *)self highResolutionPhotoEnabled];
  [v4 setHighResolutionPhotoEnabled:?];
  [(CMContinuityCaptureStillImageRequest *)self flashMode];
  [v4 setFlashMode:?];
  [(CMContinuityCaptureStillImageRequest *)self photoQualityPrioritization];
  [v4 setPhotoQualityPrioritization:?];
  [(CMContinuityCaptureStillImageRequest *)self maxPhotoDimensions];
  [v4 setMaxPhotoDimensions:?];
  [(CMContinuityCaptureStillImageRequest *)self captureComplete];
  [v4 setCaptureComplete:?];
  networkTimestamp = [(CMContinuityCaptureStillImageRequest *)self networkTimestamp];
  v8 = [networkTimestamp copy];
  [v4 setNetworkTimestamp:?];

  error = [(CMContinuityCaptureStillImageRequest *)self error];
  v10 = [error copy];
  [v4 setError:?];

  imageFileData = [(CMContinuityCaptureStillImageRequest *)self imageFileData];
  v12 = [imageFileData copy];
  [v4 setImageFileData:?];

  [(CMContinuityCaptureStillImageRequest *)self imageCodecType];
  [v4 setImageCodecType:?];
  [(CMContinuityCaptureStillImageRequest *)self imageWidth];
  [v4 setImageWidth:?];
  [(CMContinuityCaptureStillImageRequest *)self imageHeight];
  [v4 setImageHeight:?];
  return v4;
}

@end