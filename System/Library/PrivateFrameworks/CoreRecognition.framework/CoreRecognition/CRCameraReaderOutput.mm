@interface CRCameraReaderOutput
- (CRCameraReaderOutput)init;
- (CRCameraReaderOutput)initWithImageReaderOutput:(id)output;
- (NSString)formattedStringValue;
- (NSString)stringValue;
- (NSString)type;
- (void)dealloc;
@end

@implementation CRCameraReaderOutput

- (CRCameraReaderOutput)init
{
  v5.receiver = self;
  v5.super_class = CRCameraReaderOutput;
  v2 = [(CRCameraReaderOutput *)&v5 init];
  if (v2)
  {
    v3 = objc_alloc_init(CRCameraReaderOutputInternal);
    [(CRCameraReaderOutput *)v2 setObjectInternal:?];
  }

  return v2;
}

- (CRCameraReaderOutput)initWithImageReaderOutput:(id)output
{
  outputCopy = output;
  v12.receiver = self;
  v12.super_class = CRCameraReaderOutput;
  v5 = [(CRCameraReaderOutput *)&v12 init];
  if (v5)
  {
    v6 = objc_alloc_init(CRCameraReaderOutputInternal);
    [(CRCameraReaderOutput *)v5 setObjectInternal:?];

    stringValue = [outputCopy stringValue];
    objectInternal = [(CRCameraReaderOutput *)v5 objectInternal];
    [objectInternal setStringValue:?];

    [outputCopy boundingBox];
    objectInternal2 = [(CRCameraReaderOutput *)v5 objectInternal];
    [objectInternal2 setBoundingBox:?];

    [outputCopy baselineAngle];
    objectInternal3 = [(CRCameraReaderOutput *)v5 objectInternal];
    [objectInternal3 setRotation:?];
  }

  return v5;
}

- (void)dealloc
{
  [(CRCameraReaderOutput *)self setObjectInternal:?];
  v3.receiver = self;
  v3.super_class = CRCameraReaderOutput;
  [(CRCameraReaderOutput *)&v3 dealloc];
}

- (NSString)type
{
  objectInternal = [(CRCameraReaderOutput *)self objectInternal];
  type = [objectInternal type];

  return type;
}

- (NSString)stringValue
{
  objectInternal = [(CRCameraReaderOutput *)self objectInternal];
  stringValue = [objectInternal stringValue];

  return stringValue;
}

- (NSString)formattedStringValue
{
  objectInternal = [(CRCameraReaderOutput *)self objectInternal];
  formattedStringValue = [objectInternal formattedStringValue];

  return formattedStringValue;
}

@end