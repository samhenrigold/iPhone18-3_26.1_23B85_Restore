@interface AXMTFaceKitExclavesResult
- ($AA6A45B2DFCED8527C3A0E9A46B0D48F)expressions;
- (AXMTFaceKitExclavesResult)initWithFaceKitLiteSharedDataDictionary:(id)dictionary expressions:(id *)expressions noseBaseCenter:(id)center referenceDimensionsValue:(id)value imageProcessedInExclaves:(BOOL)exclaves;
- (CGPoint)projectedPoint;
- (CGSize)referenceDimensions;
- (__n128)setPose:(__n128)pose;
@end

@implementation AXMTFaceKitExclavesResult

- (AXMTFaceKitExclavesResult)initWithFaceKitLiteSharedDataDictionary:(id)dictionary expressions:(id *)expressions noseBaseCenter:(id)center referenceDimensionsValue:(id)value imageProcessedInExclaves:(BOOL)exclaves
{
  dictionaryCopy = dictionary;
  centerCopy = center;
  valueCopy = value;
  v48.receiver = self;
  v48.super_class = AXMTFaceKitExclavesResult;
  sizeValue = [(AXMTFaceKitExclavesResult *)&v48 init];
  v16 = sizeValue;
  if (sizeValue)
  {
    *(sizeValue + 10) = *&expressions->var0;
    v18 = *&expressions->var4;
    v17 = *&expressions->var6;
    v19 = *&expressions->var2;
    *(sizeValue + 28) = expressions->var8;
    *(sizeValue + 12) = v18;
    *(sizeValue + 13) = v17;
    *(sizeValue + 11) = v19;
    if (valueCopy)
    {
      v20 = sizeValue + 64;
      sizeValue = [valueCopy sizeValue];
      *v20 = v21;
      *(v16 + 9) = v22;
    }

    v16[32] = exclaves;
    v23 = [dictionaryCopy objectForKeyedSubscript:sub_100022FAC(sizeValue)];
    firstObject = [v23 firstObject];
    v25 = [firstObject objectForKeyedSubscript:sub_1000230A0(firstObject)];
    v26 = v25;
    if (v25)
    {
      v47 = v23;
      v27 = [v25 objectForKeyedSubscript:sub_100027528(v25)];
      v28 = [v27 objectForKeyedSubscript:sub_100025A00(v27)];
      v29 = [v27 objectForKeyedSubscript:sub_100025AF4(v28)];
      if (v29)
      {
        [objc_opt_class() _poseTranslationMatrixFromArray:v29];
        *(v16 + 3) = v30;
      }

      [v16 _calculatePoseWithRotation:v28 translation:{v29, v28}];
      v31 = (v16 + 96);
      *(v16 + 6) = v32;
      *(v16 + 7) = v33;
      *(v16 + 8) = v34;
      *(v16 + 9) = v35;
      v36 = [v16 setNoseBaseCenterLandmarkVertex:centerCopy];
      if (qword_100054688 != -1)
      {
        sub_1000293F8();
      }

      v37 = centerCopy;
      if (dword_100054680 >= 1)
      {
        v36 = [v16 _rotatePose:*v31 forCameraSensorRotation:{*(v16 + 14), *(v16 + 16), *(v16 + 18)}];
        *v31 = v38;
        *(v16 + 7) = v39;
        *(v16 + 8) = v40;
        *(v16 + 9) = v41;
      }

      v42 = [dictionaryCopy objectForKeyedSubscript:sub_100025DD0(v36)];
      [objc_opt_class() _projectZAxisVectorUsingRGBCameraDictionary:v42 pose:{*v31, *(v16 + 14), *(v16 + 16), *(v16 + 18)}];
      *(v16 + 10) = v43;
      *(v16 + 11) = v44;

      centerCopy = v37;
      v23 = v47;
    }

    else
    {
      v27 = AXSSLogForCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        sub_100029420();
      }
    }
  }

  return v16;
}

- (__n128)setPose:(__n128)pose
{
  result[6] = a2;
  result[7] = pose;
  result[8] = a4;
  result[9] = a5;
  return result;
}

- (CGSize)referenceDimensions
{
  width = self->_referenceDimensions.width;
  height = self->_referenceDimensions.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGPoint)projectedPoint
{
  x = self->_projectedPoint.x;
  y = self->_projectedPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- ($AA6A45B2DFCED8527C3A0E9A46B0D48F)expressions
{
  v3 = *&self[2].var8;
  *&retstr->var4 = *&self[2].var6;
  *&retstr->var6 = v3;
  retstr->var8 = self[3].var1;
  v4 = *&self[2].var4;
  *&retstr->var0 = *&self[2].var2;
  *&retstr->var2 = v4;
  return self;
}

@end