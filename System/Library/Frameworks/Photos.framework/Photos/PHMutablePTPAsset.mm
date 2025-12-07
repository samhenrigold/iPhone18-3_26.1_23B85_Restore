@interface PHMutablePTPAsset
- (id)copyWithZone:(_NSZone *)zone;
- (id)updateForTranscodeChoiceWithConversionResult:(id)result;
- (void)setBurstUUID:(id)d;
- (void)setCaptureDateString:(id)string;
- (void)setCapturedFilename:(id)filename;
- (void)setDcfFilename:(id)filename;
- (void)setDurationString:(id)string;
- (void)setFileSystemFilename:(id)filename;
- (void)setFingerprint:(id)fingerprint;
- (void)setGroupUUID:(id)d;
- (void)setLocationString:(id)string;
- (void)setModificationDateString:(id)string;
- (void)setObjectCompressedSize:(id)size;
- (void)setOriginatingAssetID:(id)d;
- (void)setThumbCompressedSize:(id)size;
- (void)setThumbOffset:(id)offset;
- (void)updateWithConversionResult:(id)result;
@end

@implementation PHMutablePTPAsset

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [PHPTPAsset alloc];

  return [(PHPTPAsset *)v4 initWithPTPAsset:self];
}

- (void)updateWithConversionResult:(id)result
{
  resultCopy = result;
  if ([resultCopy outputVideoCodec])
  {
    self->super._videoCodec = [resultCopy outputVideoCodec];
  }

  outputContentType = [resultCopy outputContentType];
  contentType = self->super._contentType;
  self->super._contentType = outputContentType;

  if ([resultCopy requiresConversion])
  {
    v6 = [PHPTPAssetHandle alloc];
    resourceType = [(PHPTPAssetHandle *)self->super._resourceHandle resourceType];
    orientation = [(PHPTPAssetHandle *)self->super._resourceHandle orientation];
    localIdentifier = [(PHPTPAssetHandle *)self->super._resourceHandle localIdentifier];
    v10 = [(PHPTPAssetHandle *)v6 initWithResourceType:resourceType orientation:orientation localIdentifier:localIdentifier requiresConversion:1];
    resourceHandle = self->super._resourceHandle;
    self->super._resourceHandle = v10;

    stringByDeletingPathExtension = [(NSString *)self->super._dcfFilename stringByDeletingPathExtension];
    pathExtension = [resultCopy pathExtension];
    v14 = [stringByDeletingPathExtension stringByAppendingPathExtension:pathExtension];
    dcfFilename = self->super._dcfFilename;
    self->super._dcfFilename = v14;

    stringByDeletingPathExtension2 = [(NSString *)self->super._capturedFilename stringByDeletingPathExtension];
    pathExtension2 = [resultCopy pathExtension];
    v18 = [stringByDeletingPathExtension2 stringByAppendingPathExtension:pathExtension2];
    capturedFilename = self->super._capturedFilename;
    self->super._capturedFilename = v18;

    stringByDeletingPathExtension3 = [(NSString *)self->super._fileSystemFilename stringByDeletingPathExtension];
    pathExtension3 = [resultCopy pathExtension];
    v22 = [stringByDeletingPathExtension3 stringByAppendingPathExtension:pathExtension3];
    fileSystemFilename = self->super._fileSystemFilename;
    self->super._fileSystemFilename = v22;

    v24 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(resultCopy, "estimatedFileLength")}];
    objectCompressedSize = self->super._objectCompressedSize;
    self->super._objectCompressedSize = v24;
  }
}

- (id)updateForTranscodeChoiceWithConversionResult:(id)result
{
  v29 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  self->super._videoCodec = [resultCopy inputVideoCodec];
  inputContentType = [resultCopy inputContentType];
  contentType = self->super._contentType;
  self->super._contentType = inputContentType;

  if ([resultCopy requiresConversion])
  {
    self->super._conversionGroup = 1;
    v7 = [(PHMutablePTPAsset *)self mutableCopy];
    if (v7)
    {
      v8 = [PHPTPAssetHandle alloc];
      resourceType = [(PHPTPAssetHandle *)self->super._resourceHandle resourceType];
      orientation = [(PHPTPAssetHandle *)self->super._resourceHandle orientation];
      localIdentifier = [(PHPTPAssetHandle *)self->super._resourceHandle localIdentifier];
      v12 = [(PHPTPAssetHandle *)v8 initWithResourceType:resourceType orientation:orientation localIdentifier:localIdentifier requiresConversion:1];
      [v7 setResourceHandle:v12];

      [v7 setConversionGroup:2];
      stringByDeletingPathExtension = [(NSString *)self->super._capturedFilename stringByDeletingPathExtension];
      pathExtension = [resultCopy pathExtension];
      v15 = [stringByDeletingPathExtension stringByAppendingPathExtension:pathExtension];
      [v7 setCapturedFilename:v15];

      stringByDeletingPathExtension2 = [(NSString *)self->super._dcfFilename stringByDeletingPathExtension];
      pathExtension2 = [resultCopy pathExtension];
      v18 = [stringByDeletingPathExtension2 stringByAppendingPathExtension:pathExtension2];
      [v7 setDcfFilename:v18];

      stringByDeletingPathExtension3 = [(NSString *)self->super._fileSystemFilename stringByDeletingPathExtension];
      pathExtension3 = [resultCopy pathExtension];
      v21 = [stringByDeletingPathExtension3 stringByAppendingPathExtension:pathExtension3];
      [v7 setFileSystemFilename:v21];

      v22 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(resultCopy, "estimatedFileLength")}];
      [v7 setObjectCompressedSize:v22];

      [v7 setVideoCodec:{objc_msgSend(resultCopy, "outputVideoCodec")}];
      outputContentType = [resultCopy outputContentType];
      [v7 setContentType:outputContentType];

      v24 = v7;
    }

    else
    {
      v25 = PLPTPGetLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v27 = 138412290;
        selfCopy = self;
        _os_log_impl(&dword_19C86F000, v25, OS_LOG_TYPE_ERROR, "Expected a successful copy of %@", &v27, 0xCu);
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setBurstUUID:(id)d
{
  v4 = [d copy];
  burstUUID = self->super._burstUUID;
  self->super._burstUUID = v4;

  MEMORY[0x1EEE66BB8](v4, burstUUID);
}

- (void)setGroupUUID:(id)d
{
  v4 = [d copy];
  groupUUID = self->super._groupUUID;
  self->super._groupUUID = v4;

  MEMORY[0x1EEE66BB8](v4, groupUUID);
}

- (void)setLocationString:(id)string
{
  v4 = [string copy];
  locationString = self->super._locationString;
  self->super._locationString = v4;

  MEMORY[0x1EEE66BB8](v4, locationString);
}

- (void)setDurationString:(id)string
{
  v4 = [string copy];
  durationString = self->super._durationString;
  self->super._durationString = v4;

  MEMORY[0x1EEE66BB8](v4, durationString);
}

- (void)setCaptureDateString:(id)string
{
  v4 = [string copy];
  captureDateString = self->super._captureDateString;
  self->super._captureDateString = v4;

  MEMORY[0x1EEE66BB8](v4, captureDateString);
}

- (void)setModificationDateString:(id)string
{
  v4 = [string copy];
  modificationDateString = self->super._modificationDateString;
  self->super._modificationDateString = v4;

  MEMORY[0x1EEE66BB8](v4, modificationDateString);
}

- (void)setThumbCompressedSize:(id)size
{
  v4 = [size copy];
  thumbCompressedSize = self->super._thumbCompressedSize;
  self->super._thumbCompressedSize = v4;

  MEMORY[0x1EEE66BB8](v4, thumbCompressedSize);
}

- (void)setThumbOffset:(id)offset
{
  v4 = [offset copy];
  thumbOffset = self->super._thumbOffset;
  self->super._thumbOffset = v4;

  MEMORY[0x1EEE66BB8](v4, thumbOffset);
}

- (void)setOriginatingAssetID:(id)d
{
  v4 = [d copy];
  originatingAssetID = self->super._originatingAssetID;
  self->super._originatingAssetID = v4;

  MEMORY[0x1EEE66BB8](v4, originatingAssetID);
}

- (void)setFingerprint:(id)fingerprint
{
  v4 = [fingerprint copy];
  fingerprint = self->super._fingerprint;
  self->super._fingerprint = v4;

  MEMORY[0x1EEE66BB8](v4, fingerprint);
}

- (void)setObjectCompressedSize:(id)size
{
  v4 = [size copy];
  objectCompressedSize = self->super._objectCompressedSize;
  self->super._objectCompressedSize = v4;

  MEMORY[0x1EEE66BB8](v4, objectCompressedSize);
}

- (void)setFileSystemFilename:(id)filename
{
  v4 = [filename copy];
  fileSystemFilename = self->super._fileSystemFilename;
  self->super._fileSystemFilename = v4;

  MEMORY[0x1EEE66BB8](v4, fileSystemFilename);
}

- (void)setCapturedFilename:(id)filename
{
  v4 = [filename copy];
  capturedFilename = self->super._capturedFilename;
  self->super._capturedFilename = v4;

  MEMORY[0x1EEE66BB8](v4, capturedFilename);
}

- (void)setDcfFilename:(id)filename
{
  v4 = [filename copy];
  dcfFilename = self->super._dcfFilename;
  self->super._dcfFilename = v4;

  MEMORY[0x1EEE66BB8](v4, dcfFilename);
}

@end