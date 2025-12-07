@interface CRCameraReaderOutputCameraText
- (CGRect)boundingBox;
- (NSAttributedString)overlayString;
- (float)rotation;
- (void)setBoundingBox:(CGRect)box;
- (void)setOverlayString:(id)string;
- (void)setRotation:(float)rotation;
@end

@implementation CRCameraReaderOutputCameraText

- (void)setOverlayString:(id)string
{
  stringCopy = string;
  objectInternal = [(CRCameraReaderOutput *)self objectInternal];
  [objectInternal setOverlayString:?];
}

- (NSAttributedString)overlayString
{
  objectInternal = [(CRCameraReaderOutput *)self objectInternal];
  overlayString = [objectInternal overlayString];

  return overlayString;
}

- (void)setRotation:(float)rotation
{
  objectInternal = [(CRCameraReaderOutput *)self objectInternal];
  [objectInternal setRotation:?];
}

- (float)rotation
{
  objectInternal = [(CRCameraReaderOutput *)self objectInternal];
  [objectInternal rotation];
  v4 = v3;

  return v4;
}

- (void)setBoundingBox:(CGRect)box
{
  objectInternal = [(CRCameraReaderOutput *)self objectInternal];
  [objectInternal setBoundingBox:?];
}

- (CGRect)boundingBox
{
  objectInternal = [(CRCameraReaderOutput *)self objectInternal];
  [objectInternal boundingBox];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

@end