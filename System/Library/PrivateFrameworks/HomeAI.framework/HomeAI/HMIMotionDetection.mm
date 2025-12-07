@interface HMIMotionDetection
+ (id)firstMotionDetectionInArray:(id)array withMode:(unint64_t)mode;
- (BOOL)applyEventTypeAndCheckIfSubBoundingIsStatic:(CGRect)static eventClass:(Class)class confidence:(float)confidence;
- (CGRect)boundingBox;
- (CGSize)size;
- (HMIMotionDetection)initWithBoundingBox:(CGRect)box size:(CGSize)size motionVectors:(id)vectors motionScore:(float)score motionMode:(unint64_t)mode;
- (float)scoreForSubBoundingBox:(CGRect)box eventClass:(Class)class confidence:(float)confidence;
- (id)classMotionScoreMap;
- (id)classPaddingMap;
@end

@implementation HMIMotionDetection

- (HMIMotionDetection)initWithBoundingBox:(CGRect)box size:(CGSize)size motionVectors:(id)vectors motionScore:(float)score motionMode:(unint64_t)mode
{
  height = size.height;
  width = size.width;
  v11 = box.size.height;
  v12 = box.size.width;
  y = box.origin.y;
  x = box.origin.x;
  vectorsCopy = vectors;
  v22.receiver = self;
  v22.super_class = HMIMotionDetection;
  v17 = [(HMIMotionDetection *)&v22 init];
  v18 = v17;
  if (v17)
  {
    v17->_boundingBox.origin.x = x;
    v17->_boundingBox.origin.y = y;
    v17->_boundingBox.size.width = v12;
    v17->_boundingBox.size.height = v11;
    v17->_size.width = width;
    v17->_size.height = height;
    v19 = [vectorsCopy copy];
    motionVectors = v18->_motionVectors;
    v18->_motionVectors = v19;

    v18->_motionScore = score;
    v18->_motionMode = mode;
  }

  return v18;
}

+ (id)firstMotionDetectionInArray:(id)array withMode:(unint64_t)mode
{
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __59__HMIMotionDetection_firstMotionDetectionInArray_withMode___block_invoke;
  v9 = &__block_descriptor_40_e28_B16__0__HMIMotionDetection_8l;
  modeCopy = mode;
  v4 = [array na_firstObjectPassingTest:?];

  return v4;
}

- (float)scoreForSubBoundingBox:(CGRect)box eventClass:(Class)class confidence:(float)confidence
{
  height = box.size.height;
  width = box.size.width;
  y = box.origin.y;
  x = box.origin.x;
  v11 = 0;
  v12 = 0.0;
  while (1)
  {
    motionVectors = [(HMIMotionDetection *)self motionVectors];
    v14 = [motionVectors count];

    if (v14 <= v11)
    {
      break;
    }

    motionVectors2 = [(HMIMotionDetection *)self motionVectors];
    v16 = [motionVectors2 objectAtIndexedSubscript:?];

    [v16 target];
    v18 = v17;
    v20 = v19;
    v21 = [v16 eventClass] != class && objc_msgSend(v16, "eventClass") != 0;
    v26.origin.x = x;
    v26.origin.y = y;
    v26.size.width = width;
    v26.size.height = height;
    v25.x = v18;
    v25.y = v20;
    if (!(v21 | !CGRectContainsPoint(v26, v25)))
    {
      [v16 distance];
      v12 = sqrt(v22) + v12;
      if (confidence > 0.6)
      {
        [v16 setEventClass:?];
      }
    }

    ++v11;
  }

  return v12 / (height * width + 0.00000011920929);
}

- (BOOL)applyEventTypeAndCheckIfSubBoundingIsStatic:(CGRect)static eventClass:(Class)class confidence:(float)confidence
{
  classMotionScoreMap = [(HMIMotionDetection *)self classMotionScoreMap];
  classPaddingMap = [(HMIMotionDetection *)self classPaddingMap];
  v9 = [classPaddingMap objectForKeyedSubscript:?];
  [v9 floatValue];

  v10 = [classMotionScoreMap objectForKeyedSubscript:?];
  [v10 floatValue];
  v12 = v11;

  [(HMIMotionDetection *)self size];
  [HMIVisionUtilities applyPadding:"applyPadding:withOriginalSize:padding:" withOriginalSize:? padding:?];
  if (objc_opt_class() == class)
  {
    objc_opt_class();
  }

  [HMIMotionDetection scoreForSubBoundingBox:"scoreForSubBoundingBox:eventClass:confidence:" eventClass:? confidence:?];
  v14 = v13 < v12;

  return v14;
}

- (id)classMotionScoreMap
{
  if ([HMIMotionDetection classMotionScoreMap]::onceToken != -1)
  {
    [HMIMotionDetection classMotionScoreMap];
  }

  v3 = [HMIMotionDetection classMotionScoreMap]::motionScoreMap;

  return v3;
}

void __41__HMIMotionDetection_classMotionScoreMap__block_invoke()
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_class();
  v5 = &unk_284075B60;
  v3 = objc_opt_class();
  v6 = &unk_284075B70;
  v4 = objc_opt_class();
  v7 = &unk_284075B60;
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
  v1 = [HMIMotionDetection classMotionScoreMap]::motionScoreMap;
  [HMIMotionDetection classMotionScoreMap]::motionScoreMap = v0;
}

- (id)classPaddingMap
{
  if ([HMIMotionDetection classPaddingMap]::onceToken != -1)
  {
    [HMIMotionDetection classPaddingMap];
  }

  v3 = [HMIMotionDetection classPaddingMap]::paddingMap;

  return v3;
}

void __37__HMIMotionDetection_classPaddingMap__block_invoke()
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_class();
  v5 = &unk_284075B80;
  v3 = objc_opt_class();
  v6 = &unk_284075B90;
  v4 = objc_opt_class();
  v7 = &unk_284075B80;
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
  v1 = [HMIMotionDetection classPaddingMap]::paddingMap;
  [HMIMotionDetection classPaddingMap]::paddingMap = v0;
}

- (CGRect)boundingBox
{
  objc_copyStruct(v6, &self->_boundingBox, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGSize)size
{
  objc_copyStruct(v4, &self->_size, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.height = v3;
  result.width = v2;
  return result;
}

@end