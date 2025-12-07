@interface CMIVideoDeghostingTrackingV1
- (CGPoint)_applyDistortionPolynomial:(float *)polynomial ToPoint:(CGPoint *)point;
- (CGPoint)_pixelBufferToRawBuffer:(CGPoint *)buffer;
- (CGPoint)_rawBufferToPixelBuffer:(CGPoint *)buffer;
- (CGPoint)_reflectPoint:(CGPoint *)point pivotPoint:(CGPoint *)pivotPoint;
- (CGPoint)bias;
- (CGRect)ghostRectImageBased;
- (CGRect)ghostRectMetadataBased;
- (CGRect)lightSourceRect;
- (CMIVideoDeghostingTrackingV1)initWithMetalContext:(id)context tuningParameters:(id)parameters;
- (float)_getRadialMagnificationAtDistanceMM:(float)m WithPolynomial:(float *)polynomial;
- (int)_extractAndCheckTuningParameters:(id)parameters;
- (int)_extractCalibrationData;
- (int)process;
- (int)resetState;
- (void)_calibrateGhostSizeWithAngle:(float)angle;
- (void)_extractCameraInfo;
- (void)_pushGhostToHistory:(CGPoint *)history shapeScore:(float)score lensPosition:(float)position adjustedPrincipalPoint:(CGPoint *)point quaternion:(id *)quaternion;
@end

@implementation CMIVideoDeghostingTrackingV1

- (CMIVideoDeghostingTrackingV1)initWithMetalContext:(id)context tuningParameters:(id)parameters
{
  contextCopy = context;
  parametersCopy = parameters;
  v19.receiver = self;
  v19.super_class = CMIVideoDeghostingTrackingV1;
  v8 = [(CMIVideoDeghostingTrackingV1 *)&v19 init];
  v9 = v8;
  if (!v8)
  {
    sub_2410C();
LABEL_15:
    v17 = 0;
    goto LABEL_8;
  }

  if ([(CMIVideoDeghostingTrackingV1 *)v8 _extractAndCheckTuningParameters:parametersCopy])
  {
    sub_23E98();
    goto LABEL_15;
  }

  v10 = objc_alloc_init(NSMutableArray);
  greenGhostRectangles = v9->_greenGhostRectangles;
  v9->_greenGhostRectangles = v10;

  if (!v9->_greenGhostRectangles)
  {
    sub_24090();
    goto LABEL_15;
  }

  v12 = [[NSMutableArray alloc] initWithCapacity:10];
  ghostBoundingBoxPredictions = v9->_ghostBoundingBoxPredictions;
  v9->_ghostBoundingBoxPredictions = v12;

  if (!v9->_ghostBoundingBoxPredictions)
  {
    sub_24014();
    goto LABEL_15;
  }

  if ([(CMIVideoDeghostingTrackingV1 *)v9 resetState])
  {
    sub_23F18();
    goto LABEL_15;
  }

  *&v9->_sensorBinningFactorVertical = 0x100000001;
  motionSampleRingBuffer = v9->_motionSampleRingBuffer;
  v9->_motionSampleRingBuffer = 0;

  v15 = [[VDGMetalUtilsV1 alloc] initWithMetalContext:contextCopy];
  vdgMetalUtils = v9->_vdgMetalUtils;
  v9->_vdgMetalUtils = v15;

  if (!v9->_vdgMetalUtils)
  {
    sub_23F98();
    goto LABEL_15;
  }

  v17 = v9;
LABEL_8:

  return v17;
}

- (int)resetState
{
  [(NSMutableArray *)self->_greenGhostRectangles removeAllObjects];
  [(NSMutableArray *)self->_ghostBoundingBoxPredictions removeAllObjects];
  detectedGhostBoundingBoxes = self->_detectedGhostBoundingBoxes;
  self->_detectedGhostBoundingBoxes = 0;

  self->_pixelsPerMicron = 1.0;
  v4 = CGPointZero;
  self->_adjustedPrincipalPoint = CGPointZero;
  self->_bias = v4;
  self->_ghostHistoryCount = 0;
  self->_trajectoryScore = 0.0;
  *&self->_prevGhostSizeBias = 0;
  *&self->_confidence = 0u;
  self->_breathingDirection = 1.0;
  self->_resetTrackerWithInputGhostBoundingBoxes = 1;
  previousPortType = self->_previousPortType;
  self->_previousPortType = 0;

  currentPortType = self->_currentPortType;
  self->_currentPortType = 0;

  currentCameraInfo = self->_currentCameraInfo;
  self->_currentCameraInfo = 0;

  v8 = sub_A090(&self->_centerQuaternion.w);
  v9 = v8;
  if (v8)
  {
    sub_24188(v8);
  }

  return v9;
}

- (int)process
{
  p_adjustedPrincipalPoint = &self->_adjustedPrincipalPoint;
  [(NSMutableArray *)self->_ghostBoundingBoxPredictions removeAllObjects];
  origin = CGRectZero.origin;
  size = CGRectZero.size;
  self->_ghostRectImageBased.origin = CGRectZero.origin;
  self->_ghostRectImageBased.size = size;
  p_adjustedPrincipalPoint[29] = origin;
  p_adjustedPrincipalPoint[30] = size;
  self->_lightSourceRect.origin = origin;
  self->_lightSourceRect.size = size;
  [(CMIVideoDeghostingTrackingV1 *)self _extractCameraInfo];
  v107 = 0.0;
  v6 = sub_9F08(self->_metadataDictionary, &v107, 0.5);
  if (v6)
  {
    v25 = v6;
    sub_24208();
    return v25;
  }

  [(CMIMotionSampleRingBufferV1 *)self->_motionSampleRingBuffer computeQuaternionForTimeStamp:v107];
  self->_centerQuaternion.w = v7;
  self->_centerQuaternion.x = v8;
  self->_centerQuaternion.y = v9;
  self->_centerQuaternion.z = v10;
  if ([CMIMotionSampleRingBufferV1 isUnitQuaternion:&self->_centerQuaternion])
  {
    goto LABEL_23;
  }

  if ([(CMIVideoDeghostingTrackingV1 *)self _extractCalibrationData])
  {
    sub_24284(&rect);
    return LODWORD(rect.origin.x);
  }

  if (self->_resetTrackerWithInputGhostBoundingBoxes)
  {
    [(NSMutableArray *)self->_greenGhostRectangles removeAllObjects];
    v105 = 0u;
    v106 = 0u;
    v103 = 0u;
    v104 = 0u;
    v11 = self->_detectedGhostBoundingBoxes;
    v12 = [(NSArray *)v11 countByEnumeratingWithState:&v103 objects:v102 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v104;
      __asm { FMOV            V0.2D, #0.5 }

      v82 = _Q0;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v104 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v21 = *(*(&v103 + 1) + 8 * i);
          [(NSMutableArray *)self->_greenGhostRectangles addObject:v21];
          memset(&rect, 0, sizeof(rect));
          CGRectMakeWithDictionaryRepresentation(v21, &rect);
          v22 = vmulq_f64(rect.size, v82);
          v23 = vaddq_f64(rect.origin, v22);
          v100[0] = v23;
          *v23.f64 = self->_shapeScore;
          *v22.f64 = self->_lensPosition;
          [(CMIVideoDeghostingTrackingV1 *)self _pushGhostToHistory:v100 shapeScore:&self->_adjustedPrincipalPoint lensPosition:&self->_centerQuaternion adjustedPrincipalPoint:v23.f64[0] quaternion:v22.f64[0]];
        }

        v13 = [(NSArray *)v11 countByEnumeratingWithState:&v103 objects:v102 count:16];
      }

      while (v13);
    }

    self->_ghostSizeBias = 0.0;
    self->_prevGhostSizeBias = 0.0;
    self->_prevShapeScore = self->_shapeScore;
    goto LABEL_13;
  }

  LODWORD(p_adjustedPrincipalPoint[24].x) = 0;
  HIDWORD(p_adjustedPrincipalPoint[23].y) = 0;
  self->_trajectoryScore = 0.0;
  self->_contextScore = 0.0;
  v26 = sub_A044(&self->_previousCameraInfo.quaternion.w, &self->_centerQuaternion);
  __x = v26;
  v97 = v27;
  v98 = v28;
  v99 = v29;
  sub_A348(&__x, 0, &rect);
  adjustedPrincipalPoint = self->_previousCameraInfo.adjustedPrincipalPoint;
  v30 = acos(v26);
  v31 = 3.14159265;
  v94 = 0;
  *&v94 = self->_previousCameraInfo.lensPosition;
  v95 = adjustedPrincipalPoint;
  v92 = 0;
  *&v92 = self->_lensPosition;
  v93 = *p_adjustedPrincipalPoint;
  sub_A2B8(&v92, &v94, &rect, v100);
  v91 = CGPointZero;
  v32 = 0.0;
  if (self->_ghostHistoryCount)
  {
    v89[0] = self->_ghostHistory[0].ghostLoc;
    [(CMIVideoDeghostingTrackingV1 *)self _reflectPoint:v89 pivotPoint:&self->_previousCameraInfo.adjustedPrincipalPoint];
    *&v33 = v33;
    *&v34 = v34;
    v87.f64[0] = 0.0;
    sub_A7D0(v100, &v87, v87.f64 + 1, *&v33, *&v34);
    v90 = vcvtq_f64_f32(*&v87.f64[0]);
    [(CMIVideoDeghostingTrackingV1 *)self _reflectPoint:&v90 pivotPoint:p_adjustedPrincipalPoint];
    v91.x = v35;
    v91.y = v36;
    [(CMIVideoDeghostingTrackingV1 *)self _applyDistortionPolynomial:self->_lensDistortionCoefficients.inverseOrders ToPoint:&v91];
    v91.x = v37;
    v91.y = v38;
    adjustedGhostSize = self->_adjustedGhostSize;
    v40 = v37 - (adjustedGhostSize / 2);
    v41 = v38 - (adjustedGhostSize / 2);
    self->_ghostRectMetadataBased.origin.x = v40;
    self->_ghostRectMetadataBased.origin.y = v41;
    self->_ghostRectMetadataBased.size.width = adjustedGhostSize;
    self->_ghostRectMetadataBased.size.height = adjustedGhostSize;
    *&v40 = self->_shapeScoreLambda;
    *&v41 = self->_contextScoreLambda;
    LODWORD(v81) = self->_contextPaddingInPixel;
    [(VDGMetalUtilsV1 *)self->_vdgMetalUtils updateGhostPositionsUsingSourceImageFeatureMatching:&p_adjustedPrincipalPoint[29] shapeScore:&self->_shapeScore contextScore:&self->_contextScore confidenceOut:&p_adjustedPrincipalPoint[23].y + 4 pixelBuffer:self->_inputPixelBuffer searchRangeInPixel:self->_adjustedSearchRange shapeScoreLambda:v40 contextScoreLambda:v41 contextPaddingInPixel:v81];
    self->_ghostRectImageBased.origin.x = v42.f64[0];
    self->_ghostRectImageBased.origin.y = v43;
    self->_ghostRectImageBased.size.width = v44;
    self->_ghostRectImageBased.size.height = v45;
    v42.f64[1] = v43;
    __asm { FMOV            V1.2D, #0.5 }

    v47.f64[0] = v44;
    v47.f64[1] = v45;
    v48 = vmulq_f64(vaddq_f64(v42, p_adjustedPrincipalPoint[29]), _Q1);
    v91 = vaddq_f64(vmulq_f64(v47, _Q1), v48);
    greenGhostRectangles = self->_greenGhostRectangles;
    _Q1.f64[0] = v48.f64[1];
    DictionaryRepresentation = CGRectCreateDictionaryRepresentation(*(&v44 - 2));
    [(NSMutableArray *)greenGhostRectangles replaceObjectAtIndex:0 withObject:DictionaryRepresentation];

    if (self->_ghostHistoryCount)
    {
      v84 = v30;
      v51 = 0;
      p_shapeScore = &self->_ghostHistory[0].shapeScore;
      do
      {
        __x = sub_A044(p_shapeScore - 6, &self->_centerQuaternion);
        v97 = v53;
        v98 = v54;
        v99 = v55;
        sub_A348(&__x, 0, &rect);
        *&v89[0] = 0;
        *v89 = *(p_shapeScore - 18);
        *(v89 + 8) = *(p_shapeScore - 4);
        sub_A2B8(&v92, v89, &rect, v100);
        v90 = *(p_shapeScore - 4);
        [(CMIVideoDeghostingTrackingV1 *)self _reflectPoint:&v90 pivotPoint:p_shapeScore - 16];
        *&v56 = v56;
        *&v57 = v57;
        v88 = 0;
        sub_A7D0(v100, &v88, &v88 + 1, *&v56, *&v57);
        v58 = acos(__x);
        *&v58 = (v58 + v58) / v31 * 180.0;
        v59 = (((*&v58 + -18.0) / 15.0) * 15.0) + 18.0;
        if (v59 > 10.0)
        {
          v59 = 10.0;
        }

        v87 = vcvtq_f64_f32(v88);
        v60 = v31;
        v61 = (self->_lensPosition / -1630.0) * fmaxf(v59, 5.0);
        v85 = 0.0;
        v86 = 0.0;
        [(CMIVideoDeghostingTrackingV1 *)self _reflectPoint:&v87 pivotPoint:p_adjustedPrincipalPoint];
        v85 = v62;
        v86 = v63;
        [(CMIVideoDeghostingTrackingV1 *)self _applyDistortionPolynomial:self->_lensDistortionCoefficients.inverseOrders ToPoint:&v85];
        v85 = v64;
        v86 = v65;
        v66 = v64 - v91.x;
        v67 = v65 - v91.y;
        v68 = sqrtf((v67 * v67) + (v66 * v66));
        v108.origin.x = v64 + -1.0;
        v108.origin.y = v65 + -1.0;
        ghostBoundingBoxPredictions = self->_ghostBoundingBoxPredictions;
        v108.size.width = 2.0;
        v108.size.height = 2.0;
        v70 = CGRectCreateDictionaryRepresentation(v108);
        [(NSMutableArray *)ghostBoundingBoxPredictions addObject:v70];

        v71 = v68 / v61;
        v31 = v60;
        v72 = *p_shapeScore;
        p_shapeScore += 20;
        self->_trajectoryScore = self->_trajectoryScore + (v72 * (v71 + 1.0));
        ++v51;
        ghostHistoryCount = self->_ghostHistoryCount;
      }

      while (v51 < ghostHistoryCount);
      v32 = ghostHistoryCount;
      v30 = v84;
    }
  }

  minShapeScore = self->_minShapeScore;
  shapeScore = self->_shapeScore;
  if (shapeScore < (((v32 / -10.0) + 1.0) * minShapeScore) || (shapeScore + self->_trajectoryScore) < minShapeScore)
  {
LABEL_23:
    [(CMIVideoDeghostingTrackingV1 *)self resetState];
    return 0;
  }

  v77 = (v30 + v30) / v31 * 180.0;
  objc_storeStrong(&self->_detectedGhostBoundingBoxes, self->_greenGhostRectangles);
  *&v78 = self->_shapeScore;
  *&v79 = self->_lensPosition;
  [(CMIVideoDeghostingTrackingV1 *)self _pushGhostToHistory:&v91 shapeScore:p_adjustedPrincipalPoint lensPosition:&self->_centerQuaternion adjustedPrincipalPoint:v78 quaternion:v79];
  *&v80 = v77;
  [(CMIVideoDeghostingTrackingV1 *)self _calibrateGhostSizeWithAngle:v80];
LABEL_13:
  self->_previousCameraInfo.lensPosition = self->_lensPosition;
  self->_previousCameraInfo.adjustedPrincipalPoint = self->_adjustedPrincipalPoint;
  v24 = *&self->_centerQuaternion.y;
  *&self->_previousCameraInfo.quaternion.w = *&self->_centerQuaternion.w;
  *&self->_previousCameraInfo.quaternion.y = v24;
  objc_storeStrong(&self->_previousPortType, self->_currentPortType);
  v25 = 0;
  self->_resetTrackerWithInputGhostBoundingBoxes = 0;
  return v25;
}

- (void)_calibrateGhostSizeWithAngle:(float)angle
{
  pixelScale = self->_pixelScale;
  v5 = pixelScale * self->_minBreathingMagnitude;
  shapeScore = self->_shapeScore;
  if (shapeScore > self->_minShapeScore)
  {
    ghostSizeBias = self->_ghostSizeBias;
    prevGhostSizeBias = self->_prevGhostSizeBias;
    maxBreathingMagnitude = self->_maxBreathingMagnitude;
    v10 = -(pixelScale * maxBreathingMagnitude);
    if (ghostSizeBias != prevGhostSizeBias)
    {
      if (ghostSizeBias <= prevGhostSizeBias)
      {
        v11 = -(shapeScore - self->_prevShapeScore);
      }

      else
      {
        v11 = shapeScore - self->_prevShapeScore;
      }

      v12 = self->_contextScore * (v11 * (pixelScale * self->_slopeMultiplier));
      v10 = v12 * expf(-angle / self->_angularHalfLife);
    }

    v13 = pixelScale * maxBreathingMagnitude;
    if ((pixelScale * maxBreathingMagnitude) >= v10)
    {
      v14 = v10;
    }

    else
    {
      v14 = pixelScale * maxBreathingMagnitude;
    }

    if (-(pixelScale * maxBreathingMagnitude) >= v14)
    {
      v14 = -(pixelScale * maxBreathingMagnitude);
    }

    v15 = ghostSizeBias + v14;
    v16 = maxBreathingMagnitude * fabsf(v14);
    if (v13 >= v16)
    {
      v13 = v16;
    }

    self->_prevGhostSizeBias = ghostSizeBias;
    if (v5 < v13)
    {
      v5 = v13;
    }

    self->_ghostSizeBias = v15;
    self->_prevShapeScore = shapeScore;
  }

  v17 = -self->_breathingDirection;
  self->_breathingDirection = v17;
  if ((pixelScale * self->_minGhostSize) > self->_adjustedGhostSize)
  {
    self->_breathingDirection = 1.0;
    v17 = 1.0;
  }

  minGhostSizeBias = self->_ghostSizeBias + (v17 * v5);
  if (self->_minGhostSizeBias >= minGhostSizeBias)
  {
    minGhostSizeBias = self->_minGhostSizeBias;
  }

  if (self->_maxGhostSizeBias < minGhostSizeBias)
  {
    minGhostSizeBias = self->_maxGhostSizeBias;
  }

  self->_ghostSizeBias = minGhostSizeBias;
}

- (void)_pushGhostToHistory:(CGPoint *)history shapeScore:(float)score lensPosition:(float)position adjustedPrincipalPoint:(CGPoint *)point quaternion:(id *)quaternion
{
  ghostHistoryCount = self->_ghostHistoryCount;
  if (ghostHistoryCount)
  {
    if (ghostHistoryCount >= 9)
    {
      v14 = 9;
    }

    else
    {
      v14 = ghostHistoryCount;
    }

    v15 = v14 + 1;
    v16 = &self->_ghostHistory[v14];
    do
    {
      v17 = *&v16[-1].quaternion.z;
      *&v16->quaternion.x = *&v16[-1].quaternion.x;
      *&v16->quaternion.z = v17;
      *&v16->ghostLoc.y = *&v16[-1].ghostLoc.y;
      v18 = *&v16[-1].adjustedPrincipalPoint.y;
      *&v16->lensPosition = *&v16[-1].lensPosition;
      *&v16->adjustedPrincipalPoint.y = v18;
      --v16;
      --v15;
    }

    while (v15 > 1);
  }

  if (ghostHistoryCount >= 9)
  {
    v19 = 9;
  }

  else
  {
    v19 = ghostHistoryCount;
  }

  [(CMIVideoDeghostingTrackingV1 *)self _reflectPoint:history pivotPoint:&self->_adjustedPrincipalPoint];
  self->_lightSourceRect.origin.x = v20 + -1.0;
  self->_lightSourceRect.origin.y = v21 + -1.0;
  self->_lightSourceRect.size.width = 2.0;
  self->_lightSourceRect.size.height = 2.0;
  [(CMIVideoDeghostingTrackingV1 *)self _applyDistortionPolynomial:&self->_lensDistortionCoefficients ToPoint:history];
  self->_ghostHistory[0].ghostLoc.x = v22;
  self->_ghostHistory[0].ghostLoc.y = v23;
  self->_ghostHistory[0].shapeScore = score;
  self->_ghostHistory[0].lensPosition = position;
  self->_ghostHistory[0].adjustedPrincipalPoint = *point;
  v24 = *&quaternion->var2;
  *&self->_ghostHistory[0].quaternion.w = *&quaternion->var0;
  *&self->_ghostHistory[0].quaternion.y = v24;
  self->_ghostHistoryCount = v19 + 1;
}

- (int)_extractAndCheckTuningParameters:(id)parameters
{
  parametersCopy = parameters;
  v5 = parametersCopy;
  if (!parametersCopy)
  {
    sub_2478C(&v44);
LABEL_31:
    v42 = v44;
    goto LABEL_16;
  }

  v6 = [parametersCopy objectForKeyedSubscript:@"MinShapeScore"];

  if (!v6)
  {
    sub_24730(&v44);
    goto LABEL_31;
  }

  v7 = [v5 objectForKeyedSubscript:@"GhostSize"];

  if (!v7)
  {
    sub_246D4(&v44);
    goto LABEL_31;
  }

  v8 = [v5 objectForKeyedSubscript:@"MinGhostSizeBias"];

  if (!v8)
  {
    sub_24678(&v44);
    goto LABEL_31;
  }

  v9 = [v5 objectForKeyedSubscript:@"MaxGhostSizeBias"];

  if (!v9)
  {
    sub_2461C(&v44);
    goto LABEL_31;
  }

  v10 = [v5 objectForKeyedSubscript:@"MinGhostSize"];

  if (!v10)
  {
    sub_245C0(&v44);
    goto LABEL_31;
  }

  v11 = [v5 objectForKeyedSubscript:@"MinBreathingMagnitude"];

  if (!v11)
  {
    sub_24564(&v44);
    goto LABEL_31;
  }

  v12 = [v5 objectForKeyedSubscript:@"MaxBreathingMagnitude"];

  if (!v12)
  {
    sub_24508(&v44);
    goto LABEL_31;
  }

  v13 = [v5 objectForKeyedSubscript:@"SlopeMultiplier"];

  if (!v13)
  {
    sub_244AC(&v44);
    goto LABEL_31;
  }

  v14 = [v5 objectForKeyedSubscript:@"AngularHalfLife"];

  if (!v14)
  {
    sub_24450(&v44);
    goto LABEL_31;
  }

  v15 = [v5 objectForKeyedSubscript:@"SearchRangeInPixel"];

  if (!v15)
  {
    sub_243F4(&v44);
    goto LABEL_31;
  }

  v16 = [v5 objectForKeyedSubscript:@"ShapeScoreLambda"];

  if (!v16)
  {
    sub_24398(&v44);
    goto LABEL_31;
  }

  v17 = [v5 objectForKeyedSubscript:@"ContextScoreLambda"];

  if (!v17)
  {
    sub_2433C(&v44);
    goto LABEL_31;
  }

  v18 = [v5 objectForKeyedSubscript:@"ContextPaddingInPixel"];

  if (!v18)
  {
    sub_242E0(&v44);
    goto LABEL_31;
  }

  v19 = [v5 objectForKeyedSubscript:@"MinShapeScore"];
  [v19 floatValue];
  self->_minShapeScore = v20;

  v21 = [v5 objectForKeyedSubscript:@"GhostSize"];
  self->_ghostSize = [v21 intValue];

  v22 = [v5 objectForKeyedSubscript:@"MinGhostSizeBias"];
  [v22 floatValue];
  self->_minGhostSizeBias = v23;

  v24 = [v5 objectForKeyedSubscript:@"MaxGhostSizeBias"];
  [v24 floatValue];
  self->_maxGhostSizeBias = v25;

  v26 = [v5 objectForKeyedSubscript:@"MinGhostSize"];
  [v26 floatValue];
  self->_minGhostSize = v27;

  v28 = [v5 objectForKeyedSubscript:@"MinBreathingMagnitude"];
  [v28 floatValue];
  self->_minBreathingMagnitude = v29;

  v30 = [v5 objectForKeyedSubscript:@"MaxBreathingMagnitude"];
  [v30 floatValue];
  self->_maxBreathingMagnitude = v31;

  v32 = [v5 objectForKeyedSubscript:@"SlopeMultiplier"];
  [v32 floatValue];
  self->_slopeMultiplier = v33;

  v34 = [v5 objectForKeyedSubscript:@"AngularHalfLife"];
  [v34 floatValue];
  self->_angularHalfLife = v35;

  v36 = [v5 objectForKeyedSubscript:@"SearchRangeInPixel"];
  self->_searchRangeInPixel = [v36 intValue];

  v37 = [v5 objectForKeyedSubscript:@"ShapeScoreLambda"];
  [v37 floatValue];
  self->_shapeScoreLambda = v38;

  v39 = [v5 objectForKeyedSubscript:@"ContextScoreLambda"];
  [v39 floatValue];
  self->_contextScoreLambda = v40;

  v41 = [v5 objectForKeyedSubscript:@"ContextPaddingInPixel"];
  self->_contextPaddingInPixel = [v41 intValue];

  v42 = 0;
LABEL_16:

  return v42;
}

- (void)_extractCameraInfo
{
  v3 = [(NSDictionary *)self->_metadataDictionary objectForKeyedSubscript:kFigCaptureStreamMetadata_PortType];
  currentPortType = self->_currentPortType;
  self->_currentPortType = v3;

  if (!self->_cameraInfoByPortType)
  {
    v5 = [(NSDictionary *)self->_metadataDictionary objectForKeyedSubscript:kFigCaptureSampleBufferProcessorOption_CameraInfoByPortType];
    cameraInfoByPortType = self->_cameraInfoByPortType;
    self->_cameraInfoByPortType = v5;
  }

  if (![(NSString *)self->_currentPortType isEqualToString:self->_previousPortType])
  {
    v7 = self->_cameraInfoByPortType;
    if (v7)
    {
      v8 = [(NSDictionary *)v7 objectForKeyedSubscript:self->_currentPortType];
      currentCameraInfo = self->_currentCameraInfo;
      self->_currentCameraInfo = v8;

      v10 = [(NSDictionary *)self->_currentCameraInfo objectForKeyedSubscript:kFigCaptureCameraInfoKey_PixelSize];
      [v10 floatValue];
      v12 = v11;

      v13 = 1.0;
      if (v12 > 0.0)
      {
        v13 = 1.0 / v12;
      }

      self->_pixelsPerMicron = v13;
      p_lensDistortionCorrectionBasePolynomial = &self->_lensDistortionCorrectionBasePolynomial;
      *self->_lensDistortionCorrectionBasePolynomial.forwardOrders = 0u;
      *&self->_lensDistortionCorrectionBasePolynomial.forwardOrders[4] = 0u;
      *self->_lensDistortionCorrectionBasePolynomial.inverseOrders = 0u;
      *&self->_lensDistortionCorrectionBasePolynomial.inverseOrders[4] = 0u;
      p_lensDistortionCorrectionDynamicPolynomial = &self->_lensDistortionCorrectionDynamicPolynomial;
      *self->_lensDistortionCorrectionDynamicPolynomial.forwardOrders = 0u;
      *&self->_lensDistortionCorrectionDynamicPolynomial.forwardOrders[4] = 0u;
      *self->_lensDistortionCorrectionDynamicPolynomial.inverseOrders = 0u;
      *&self->_lensDistortionCorrectionDynamicPolynomial.inverseOrders[4] = 0u;
      v16 = [(NSDictionary *)self->_currentCameraInfo objectForKeyedSubscript:kFigCaptureCameraInfoKey_GeometricDistortionCoefficients];
      if (v16)
      {
        v29 = v16;
        v17 = [v16 objectForKeyedSubscript:kFigCaptureStreamGDCCoefficientsKey_BasePolynomial];
        v18 = v17;
        if (v17)
        {
          bytes = [v17 bytes];
          v20 = bytes[3];
          v22 = *bytes;
          v21 = bytes[1];
          *p_lensDistortionCorrectionBasePolynomial->inverseOrders = bytes[2];
          *&p_lensDistortionCorrectionBasePolynomial->inverseOrders[4] = v20;
          *p_lensDistortionCorrectionBasePolynomial->forwardOrders = v22;
          *&p_lensDistortionCorrectionBasePolynomial->forwardOrders[4] = v21;
        }

        v23 = [v29 objectForKeyedSubscript:kFigCaptureStreamGDCCoefficientsKey_DynamicPolynomial];
        v24 = v23;
        if (v23)
        {
          bytes2 = [v23 bytes];
          v26 = bytes2[3];
          v28 = *bytes2;
          v27 = bytes2[1];
          *p_lensDistortionCorrectionDynamicPolynomial->inverseOrders = bytes2[2];
          *&p_lensDistortionCorrectionDynamicPolynomial->inverseOrders[4] = v26;
          *p_lensDistortionCorrectionDynamicPolynomial->forwardOrders = v28;
          *&p_lensDistortionCorrectionDynamicPolynomial->forwardOrders[4] = v27;
        }

        v16 = v29;
      }
    }
  }
}

- (CGPoint)_reflectPoint:(CGPoint *)point pivotPoint:(CGPoint *)pivotPoint
{
  __asm { FMOV            V2.2D, #2.0 }

  v9 = vaddq_f64(vmlaq_f64(vnegq_f64(*point), _Q2, *pivotPoint), self->_bias);
  v10 = v9.f64[1];
  result.x = v9.f64[0];
  result.y = v10;
  return result;
}

- (CGPoint)_applyDistortionPolynomial:(float *)polynomial ToPoint:(CGPoint *)point
{
  [(CMIVideoDeghostingTrackingV1 *)self _pixelBufferToRawBuffer:point];
  v7 = v6 - self->_distortionOpticalCenterRaw.x;
  v9 = v8 - self->_distortionOpticalCenterRaw.y;
  v10 = v9 * v9 + v7 * v7;
  *&v10 = v10;
  *&v10 = (0.001 / self->_pixelsPerMicron) * sqrtf(*&v10);
  [(CMIVideoDeghostingTrackingV1 *)self _getRadialMagnificationAtDistanceMM:polynomial WithPolynomial:v10];
  v12 = v11;
  v13 = self->_distortionOpticalCenterRaw.x + v7 * v12;
  v14 = self->_distortionOpticalCenterRaw.y + v9 * v12;
  *v17 = v13;
  *&v17[1] = v14;
  [(CMIVideoDeghostingTrackingV1 *)self _rawBufferToPixelBuffer:v17];
  result.y = v16;
  result.x = v15;
  return result;
}

- (float)_getRadialMagnificationAtDistanceMM:(float)m WithPolynomial:(float *)polynomial
{
  v4 = m * m;
  v5 = v4 * (v4 * v4);
  v6 = v4 * (v4 * v5);
  return 1.0 / (((((((((*polynomial + (v4 * polynomial[1])) + ((v4 * v4) * polynomial[2])) + (v5 * polynomial[3])) + ((v4 * v5) * polynomial[4])) + (v6 * polynomial[5])) + ((v4 * v6) * polynomial[6])) + ((v4 * (v4 * v6)) * polynomial[7])) / 100.0) + 1.0);
}

- (CGPoint)_pixelBufferToRawBuffer:(CGPoint *)buffer
{
  v3 = vaddq_f64(self->_rawSensorCenter, vdivq_f64(vsubq_f64(*buffer, self->_pixelBufferCenter), vdupq_lane_s64(COERCE__INT64(self->_scalingFactor), 0)));
  v4 = v3.f64[1];
  result.x = v3.f64[0];
  result.y = v4;
  return result;
}

- (CGPoint)_rawBufferToPixelBuffer:(CGPoint *)buffer
{
  scalingFactor = self->_scalingFactor;
  v4 = self->_pixelBufferCenter.x + (buffer->x - self->_rawSensorCenter.x) * scalingFactor;
  v5 = self->_pixelBufferCenter.y + (buffer->y - self->_rawSensorCenter.y) * scalingFactor;
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPoint)bias
{
  x = self->_bias.x;
  y = self->_bias.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGRect)ghostRectMetadataBased
{
  x = self->_ghostRectMetadataBased.origin.x;
  y = self->_ghostRectMetadataBased.origin.y;
  width = self->_ghostRectMetadataBased.size.width;
  height = self->_ghostRectMetadataBased.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)ghostRectImageBased
{
  x = self->_ghostRectImageBased.origin.x;
  y = self->_ghostRectImageBased.origin.y;
  width = self->_ghostRectImageBased.size.width;
  height = self->_ghostRectImageBased.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)lightSourceRect
{
  x = self->_lightSourceRect.origin.x;
  y = self->_lightSourceRect.origin.y;
  width = self->_lightSourceRect.size.width;
  height = self->_lightSourceRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (int)_extractCalibrationData
{
  v4 = [(NSDictionary *)self->_metadataDictionary objectForKeyedSubscript:kFigCaptureStreamMetadata_SphereMode];
  v5 = v4 != 0;

  v6 = [(NSDictionary *)self->_metadataDictionary objectForKeyedSubscript:kFigMotionAttachmentsSampleBufferProcessorMetadata_FramePTSSeconds];
  [v6 doubleValue];
  v8 = v7;

  if (v8 == 0.0)
  {
    v9 = [(NSDictionary *)self->_metadataDictionary objectForKeyedSubscript:kFigCaptureSampleBufferAttachmentKey_OriginalPresentationTimeStamp];
    CMTimeMakeFromDictionary(&time, v9);
    CMTimeGetSeconds(&time);
    time.value = 0;
    v10 = sub_98B8(self->_metadataDictionary, &time.value);

    if (v10)
    {
      return v10;
    }
  }

  v11 = [(NSDictionary *)self->_metadataDictionary objectForKeyedSubscript:kFigCaptureStreamMetadata_PinholeCameraFocalLength];
  [v11 floatValue];
  v13 = v12;

  if (v13 == 0.0)
  {
    sub_150CC();
    sub_4C48();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v71, v72, v73, v75, LODWORD(rect.origin.x), *&rect.origin.y, *&rect.size.width, LODWORD(rect.size.height));
    v69 = sub_150CC();
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v69, 4294954516, "<<<< CMIVideoDeghostingTrackingV1 >>>>", 524);
  }

  self->_pixelBufferWidth = CVPixelBufferGetWidth(self->_inputPixelBuffer);
  self->_pixelBufferHeight = CVPixelBufferGetHeight(self->_inputPixelBuffer);
  v14 = [(NSDictionary *)self->_metadataDictionary objectForKeyedSubscript:kFigCaptureStreamMetadata_RawSensorWidth];
  self->_rawSensorWidth = [v14 intValue];

  v15 = [(NSDictionary *)self->_metadataDictionary objectForKeyedSubscript:kFigCaptureStreamMetadata_RawSensorHeight];
  self->_rawSensorHeight = [v15 intValue];

  v16 = *&self->_pixelBufferWidth;
  v17.i64[0] = v16;
  v17.i64[1] = HIDWORD(v16);
  __asm { FMOV            V1.2D, #-1.0 }

  v23 = vaddq_f64(vcvtq_f64_u64(v17), _Q1);
  v24 = *&self->_rawSensorWidth;
  v17.i64[0] = v24;
  v17.i64[1] = HIDWORD(v24);
  __asm { FMOV            V2.2D, #0.5 }

  self->_pixelBufferCenter = vmulq_f64(v23, _Q2);
  self->_rawSensorCenter = vmulq_f64(vaddq_f64(vcvtq_f64_u64(v17), _Q1), _Q2);
  v26 = [(NSDictionary *)self->_metadataDictionary objectForKeyedSubscript:kFigCaptureStreamMetadata_QuadraBinningFactor];
  intValue = [v26 intValue];

  if (intValue <= 1)
  {
    v28 = 1;
  }

  else
  {
    v28 = intValue;
  }

  v29 = self->_sensorBinningFactorHorizontal * v28;
  v30 = (self->_sensorBinningFactorVertical * v28);
  v31 = [(NSDictionary *)self->_metadataDictionary objectForKeyedSubscript:kFigMotionAttachmentsSampleBufferProcessorMetadata_ScalingFactor];
  [v31 floatValue];
  self->_scalingFactor = v32;

  scalingFactor = self->_scalingFactor;
  if (scalingFactor == 0.0)
  {
    v34 = sub_9658(self->_metadataDictionary, self->_pixelBufferWidth, self->_pixelBufferHeight, v29, v30, &self->_scalingFactor);
    if (v34)
    {
      return v34;
    }

    scalingFactor = self->_scalingFactor;
  }

  pixelsPerMicron = self->_pixelsPerMicron;
  self->_lensPosition = (v13 * scalingFactor) * pixelsPerMicron;
  self->_adjustedPrincipalPoint = CGPointZero;
  v34 = sub_1C5B8(self->_metadataDictionary, self->_pixelBufferWidth, self->_pixelBufferHeight, v29, v30, v5, &self->_adjustedPrincipalPoint, pixelsPerMicron, scalingFactor);
  if (v34)
  {
    return v34;
  }

  size = CGRectNull.size;
  rect.origin = CGRectNull.origin;
  rect.size = size;
  v37 = [(NSDictionary *)self->_metadataDictionary objectForKeyedSubscript:kFigCaptureStreamMetadata_ValidBufferRect];
  v38 = CGRectMakeWithDictionaryRepresentation(v37, &rect);

  if (v38 && !CGRectIsEmpty(rect) && !CGRectContainsPoint(rect, self->_adjustedPrincipalPoint))
  {
    fig_log_get_emitter();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v2, v73, v75, LODWORD(rect.origin.x), *&rect.origin.y, *&rect.size.width, LODWORD(rect.size.height));
  }

  v39 = [(NSDictionary *)self->_metadataDictionary objectForKeyedSubscript:kFigCaptureStreamMetadata_Fnumber];
  [v39 floatValue];
  v41 = v40;

  v42 = [(NSDictionary *)self->_metadataDictionary objectForKeyedSubscript:kFigCaptureStreamMetadata_EffectiveFocalLength];
  [v42 floatValue];
  v44 = v43;

  v45 = [(NSDictionary *)self->_metadataDictionary objectForKeyedSubscript:kFigCaptureStreamMetadata_PracticalFocalLength];
  [v45 floatValue];
  v47 = v46;

  if (v41 <= 0.0)
  {
    sub_150CC();
    sub_4C48();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v71, v72, v73, v75, LODWORD(rect.origin.x), *&rect.origin.y, *&rect.size.width, LODWORD(rect.size.height));
    v70 = sub_150CC();
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v70, 4294954516, "<<<< CMIVideoDeghostingTrackingV1 >>>>", 566);
  }

  v48 = (vabds_f32(v44, v47) * self->_scalingFactor) * self->_pixelsPerMicron;
  v49 = self->_lensPosition / 1630.0;
  self->_pixelScale = v49;
  v50 = ((v48 + v48) / v41) + (v49 * self->_ghostSize);
  ghostSizeBias = self->_ghostSizeBias;
  v52 = ghostSizeBias + v50;
  self->_adjustedGhostSize = llroundf(v52);
  self->_adjustedSearchRange = llroundf(v49 * self->_searchRangeInPixel);
  v53 = v49 * self->_minGhostSize;
  v54 = roundf(v52);
  if (v53 > v54)
  {
    self->_ghostSizeBias = ghostSizeBias + (v53 - v54);
    self->_adjustedGhostSize = v53;
  }

  v55 = kFigCaptureStreamMetadata_DynamicDistortionFactor;
  v56 = [(NSDictionary *)self->_metadataDictionary objectForKey:kFigCaptureStreamMetadata_DynamicDistortionFactor];

  if (v56)
  {
    v57 = [(NSDictionary *)self->_metadataDictionary objectForKeyedSubscript:v55];
    [v57 floatValue];
    v74 = v58;

    v59 = v74;
  }

  else
  {
    v59 = 1.0;
  }

  v60 = vmlaq_n_f32(*self->_lensDistortionCorrectionBasePolynomial.inverseOrders, *self->_lensDistortionCorrectionDynamicPolynomial.inverseOrders, v59);
  v61 = vmlaq_n_f32(*&self->_lensDistortionCorrectionBasePolynomial.forwardOrders[4], *&self->_lensDistortionCorrectionDynamicPolynomial.forwardOrders[4], v59);
  v62 = vmlaq_n_f32(*&self->_lensDistortionCorrectionBasePolynomial.inverseOrders[4], *&self->_lensDistortionCorrectionDynamicPolynomial.inverseOrders[4], v59);
  *self->_lensDistortionCoefficients.forwardOrders = vmlaq_n_f32(*self->_lensDistortionCorrectionBasePolynomial.forwardOrders, *self->_lensDistortionCorrectionDynamicPolynomial.forwardOrders, v59);
  *&self->_lensDistortionCoefficients.forwardOrders[4] = v61;
  *self->_lensDistortionCoefficients.inverseOrders = v60;
  *&self->_lensDistortionCoefficients.inverseOrders[4] = v62;
  [(CMIVideoDeghostingTrackingV1 *)self _pixelBufferToRawBuffer:&self->_adjustedPrincipalPoint];
  self->_distortionOpticalCenterRaw.x = v63;
  self->_distortionOpticalCenterRaw.y = v64;
  v65 = kFigCaptureStreamMetadata_DistortionOpticalCenter;
  v66 = [(NSDictionary *)self->_metadataDictionary objectForKey:kFigCaptureStreamMetadata_DistortionOpticalCenter];

  if (v66)
  {
    v67 = [(NSDictionary *)self->_metadataDictionary objectForKeyedSubscript:v65];
    CGPointMakeWithDictionaryRepresentation(v67, &self->_distortionOpticalCenterRaw);
  }

  return 0;
}

@end