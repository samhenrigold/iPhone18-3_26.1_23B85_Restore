@interface HRTFSerializableCaptureData
- (CGPoint)distortionCenter;
- (CGSize)referenceDimensions;
- (HRTFSerializableCaptureData)initWithCoder:(id)coder;
- (HRTFSerializableCaptureData)initWithColorPixelBuffer:(__n128)buffer depthPixelBuffer:(__n128)pixelBuffer colorIntrinsics:(__n128)intrinsics depthIntrinsics:(__n128)depthIntrinsics distortionLookupTable:(__n128)table referenceDimensions:(CGFloat)dimensions distortionCenter:(CGFloat)center timestamp:(uint64_t)self0;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HRTFSerializableCaptureData

- (HRTFSerializableCaptureData)initWithColorPixelBuffer:(__n128)buffer depthPixelBuffer:(__n128)pixelBuffer colorIntrinsics:(__n128)intrinsics depthIntrinsics:(__n128)depthIntrinsics distortionLookupTable:(__n128)table referenceDimensions:(CGFloat)dimensions distortionCenter:(CGFloat)center timestamp:(uint64_t)self0
{
  v22 = a13;
  v39.receiver = self;
  v39.super_class = HRTFSerializableCaptureData;
  v23 = [(HRTFSerializableCaptureData *)&v39 init];
  if (v23)
  {
    v24 = [[_SerializableCVPixelBuffer alloc] initWithCVPixelBufferRef:a11];
    serializableColorPixelBuffer = v23->_serializableColorPixelBuffer;
    v23->_serializableColorPixelBuffer = v24;

    v26 = [[_SerializableCVPixelBuffer alloc] initWithCVPixelBufferRef:a12];
    serializableDepthPixelBuffer = v23->_serializableDepthPixelBuffer;
    v23->_serializableDepthPixelBuffer = v26;

    v28 = CVPixelBufferGetIOSurface(a11);
    colorSurface = v23->_colorSurface;
    v23->_colorSurface = v28;

    v30 = CVPixelBufferGetIOSurface(a12);
    depthSurface = v23->_depthSurface;
    v23->_depthSurface = v30;

    *v23->_anon_20 = a2;
    *&v23->_anon_20[16] = buffer;
    *&v23->_anon_20[32] = pixelBuffer;
    *v23->_anon_50 = intrinsics;
    *&v23->_anon_50[16] = depthIntrinsics;
    *&v23->_anon_50[32] = table;
    objc_storeStrong(&v23->_distortionLookupTable, a13);
    v23->_referenceDimensions.width = dimensions;
    v23->_referenceDimensions.height = center;
    v23->_distortionCenter.x = a14;
    v23->_distortionCenter.y = a15;
    v23->_timestamp = a16;
  }

  return v23;
}

- (void)encodeWithCoder:(id)coder
{
  colorSurface = self->_colorSurface;
  coderCopy = coder;
  [coderCopy encodeObject:colorSurface forKey:@"ColorSurface"];
  [coderCopy encodeObject:self->_depthSurface forKey:@"DepthSurface"];
  [coderCopy encodeObject:self->_serializableColorPixelBuffer forKey:@"ColorPixelBuffer"];
  [coderCopy encodeObject:self->_serializableDepthPixelBuffer forKey:@"DepthPixelBuffer"];
  v6 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:self->_anon_20 length:48];
  [coderCopy encodeObject:v6 forKey:@"ColorIntrinsics"];
  v7 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:self->_anon_50 length:48];

  [coderCopy encodeObject:v7 forKey:@"DepthIntrinsics"];
  [coderCopy encodeObject:self->_distortionLookupTable forKey:@"DistortionLUT"];
  v8 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:&self->_referenceDimensions length:16];

  [coderCopy encodeObject:v8 forKey:@"RefDimensions"];
  v10 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:&self->_distortionCenter length:16];

  [coderCopy encodeObject:v10 forKey:@"DistortionCenter"];
  v9 = [MEMORY[0x277CCABB0] numberWithDouble:self->_timestamp];
  [coderCopy encodeObject:v9 forKey:@"Timestamp"];
}

- (HRTFSerializableCaptureData)initWithCoder:(id)coder
{
  coderCopy = coder;
  if ([coderCopy containsValueForKey:@"ColorSurface"] && objc_msgSend(coderCopy, "containsValueForKey:", @"DepthSurface") && objc_msgSend(coderCopy, "containsValueForKey:", @"ColorPixelBuffer") && objc_msgSend(coderCopy, "containsValueForKey:", @"DepthPixelBuffer") && objc_msgSend(coderCopy, "containsValueForKey:", @"ColorIntrinsics") && objc_msgSend(coderCopy, "containsValueForKey:", @"DepthIntrinsics") && objc_msgSend(coderCopy, "containsValueForKey:", @"DistortionLUT") && objc_msgSend(coderCopy, "containsValueForKey:", @"RefDimensions") && objc_msgSend(coderCopy, "containsValueForKey:", @"DistortionCenter") && objc_msgSend(coderCopy, "containsValueForKey:", @"Timestamp"))
  {
    v30.receiver = self;
    v30.super_class = HRTFSerializableCaptureData;
    v5 = [(HRTFSerializableCaptureData *)&v30 init];
    if (v5)
    {
      v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ColorSurface"];
      v7 = *(v5 + 22);
      *(v5 + 22) = v6;

      v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DepthSurface"];
      v9 = *(v5 + 23);
      *(v5 + 23) = v8;

      v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ColorPixelBuffer"];
      v11 = *(v5 + 1);
      *(v5 + 1) = v10;

      v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DepthPixelBuffer"];
      v13 = *(v5 + 2);
      *(v5 + 2) = v12;

      v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ColorIntrinsics"];
      if ([v14 length] != 48)
      {
        [HRTFSerializableCaptureData initWithCoder:];
      }

      bytes = [v14 bytes];
      v17 = bytes[1];
      v16 = bytes[2];
      *(v5 + 2) = *bytes;
      *(v5 + 3) = v17;
      *(v5 + 4) = v16;
      v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DepthIntrinsics"];

      if ([v18 length] != 48)
      {
        [HRTFSerializableCaptureData initWithCoder:];
      }

      bytes2 = [v18 bytes];
      v21 = bytes2[1];
      v20 = bytes2[2];
      *(v5 + 5) = *bytes2;
      *(v5 + 6) = v21;
      *(v5 + 7) = v20;
      v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DistortionLUT"];
      v23 = *(v5 + 16);
      *(v5 + 16) = v22;

      v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"RefDimensions"];

      if ([v24 length] != 16)
      {
        [HRTFSerializableCaptureData initWithCoder:];
      }

      *(v5 + 136) = *[v24 bytes];
      v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DistortionCenter"];

      if ([v25 length] != 16)
      {
        [HRTFSerializableCaptureData initWithCoder:];
      }

      *(v5 + 152) = *[v25 bytes];
      v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Timestamp"];
      [v26 doubleValue];
      *(v5 + 21) = v27;
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (CGSize)referenceDimensions
{
  width = self->_referenceDimensions.width;
  height = self->_referenceDimensions.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGPoint)distortionCenter
{
  x = self->_distortionCenter.x;
  y = self->_distortionCenter.y;
  result.y = y;
  result.x = x;
  return result;
}

@end