@interface CRFeatureSequenceRecognitionInfo
+ (CRFeatureSequenceRecognitionInfo)infoForRegion:(float)region scale:(double)scale bounds:(double)bounds featureImageSize:(double)size rotatedROI:(double)i;
- (double)bounds;
- (double)featureImageSize;
- (double)orientationConfidence;
- (double)rotatedROI;
- (id)recognizedTextRegion;
- (id)sequenceScriptCategory;
- (id)sequenceScriptOutputResult;
- (id)transientDecodingResult;
- (uint64_t)layoutDirection;
- (uint64_t)orientationAdjustment;
@end

@implementation CRFeatureSequenceRecognitionInfo

+ (CRFeatureSequenceRecognitionInfo)infoForRegion:(float)region scale:(double)scale bounds:(double)bounds featureImageSize:(double)size rotatedROI:(double)i
{
  v22 = a2;
  objc_opt_self();
  v23 = objc_opt_new();
  v24 = v23;
  if (v23)
  {
    objc_storeStrong((v23 + 16), a2);

    *(v24 + 8) = region;
    src = scale;
    boundsCopy = bounds;
    sizeCopy = size;
    iCopy = i;
    objc_copyStruct((v24 + 104), &src, 32, 1, 0);
    src = a8;
    boundsCopy = a9;
    objc_copyStruct((v24 + 88), &src, 16, 1, 0);
    src = a11;
    boundsCopy = a12;
    sizeCopy = a13;
    iCopy = a14;
    objc_copyStruct((v24 + 136), &src, 32, 1, 0);
    *(v24 + 24) = 0;
    objc_setProperty_atomic(v24, v25, 0, 40);
    objc_setProperty_atomic(v24, v26, 0, 48);
    objc_setProperty_atomic(v24, v27, 0, 56);
    *(v24 + 72) = 0;
    objc_setProperty_atomic(v24, v28, 0, 80);
  }

  else
  {
  }

  return v24;
}

- (double)bounds
{
  if (!self)
  {
    return 0.0;
  }

  objc_copyStruct(&v2, (self + 104), 32, 1, 0);
  return v2;
}

- (double)featureImageSize
{
  if (!self)
  {
    return 0.0;
  }

  objc_copyStruct(&v2, (self + 88), 16, 1, 0);
  return v2;
}

- (double)rotatedROI
{
  if (!self)
  {
    return 0.0;
  }

  objc_copyStruct(&v2, (self + 136), 32, 1, 0);
  return v2;
}

- (uint64_t)orientationAdjustment
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

- (double)orientationConfidence
{
  if (self)
  {
    return *(self + 32);
  }

  else
  {
    return 0.0;
  }
}

- (id)sequenceScriptCategory
{
  if (result)
  {
    return objc_getProperty(result, a2, 48, 1);
  }

  return result;
}

- (id)sequenceScriptOutputResult
{
  if (result)
  {
    return objc_getProperty(result, a2, 56, 1);
  }

  return result;
}

- (id)recognizedTextRegion
{
  if (result)
  {
    return objc_getProperty(result, a2, 64, 1);
  }

  return result;
}

- (uint64_t)layoutDirection
{
  if (result)
  {
    return *(result + 72);
  }

  return result;
}

- (id)transientDecodingResult
{
  if (result)
  {
    return objc_getProperty(result, a2, 80, 1);
  }

  return result;
}

@end