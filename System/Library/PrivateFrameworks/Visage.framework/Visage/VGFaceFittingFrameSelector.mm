@interface VGFaceFittingFrameSelector
+ (void)getFaceKitTrackedLandmarks:(void *)landmarks@<X2>;
- (BOOL)startFaceExpressionCapture:(unint64_t)capture;
- (CGRect)getValidDataFrameBounds:(id)bounds;
- (FrameRejectionState)checkMotionBlurFilter:(SEL)filter frameTimestampMS:(id)s;
- (VGFaceFittingFrameSelector)initWithOptions:(id)options faceKitSemantics:(__CFDictionary *)semantics;
- (id)_currentState;
- (id)addPoseWithCaptureData:(id)data tracking:(id)tracking externalTracking:(BOOL)externalTracking metricsData:(void *)metricsData;
- (id)allPoseSelectors;
- (id)enrolledPoses;
- (id)expressionSelectors;
- (id)finish;
- (id)neutralSelectors;
- (id)posesFromSelectors:(id)selectors;
- (uint64_t)checkDistanceFilter:(float32x4_t)filter@<Q3> frameTimestampMS:;
- (void)addPoseWithCaptureData:tracking:externalTracking:metricsData:;
@end

@implementation VGFaceFittingFrameSelector

- (id)allPoseSelectors
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  neutralSelectors = [(VGFaceFittingFrameSelector *)self neutralSelectors];
  [v3 addObjectsFromArray:neutralSelectors];

  expressionSelectors = [(VGFaceFittingFrameSelector *)self expressionSelectors];
  [v3 addObjectsFromArray:expressionSelectors];

  return v3;
}

- (id)neutralSelectors
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = v3;
  if (self->_poseSelector)
  {
    [v3 addObject:?];
  }

  return v4;
}

- (id)expressionSelectors
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableDictionary count](self->_expressionsSelector, "count")}];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = self->_expressionsSelector;
  v5 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = [(NSMutableDictionary *)self->_expressionsSelector objectForKey:*(*(&v10 + 1) + 8 * i), v10];
        [v3 addObject:v8];
      }

      v5 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  return v3;
}

+ (void)getFaceKitTrackedLandmarks:(void *)landmarks@<X2>
{
  landmarksCopy = landmarks;
  v4 = VGLogVGFaceFittingFrameSelector(landmarksCopy);
  if (os_signpost_enabled(v4))
  {
    *v12 = 0;
    _os_signpost_emit_with_name_impl(&dword_270F06000, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "GetFaceKitTrackedLandmarks", &unk_270FBF062, v12, 2u);
  }

  v5 = [landmarksCopy objectForKeyedSubscript:@"smooth_data"];
  v6 = [v5 objectForKeyedSubscript:@"geometry"];
  v7 = [v6 objectForKeyedSubscript:@"landmarks"];
  v8 = [v7 length];
  bytes = [v7 bytes];
  _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEEC2B8ne200100Em(a2, v8 >> 3);
  if (v8 >= 8)
  {
    v10 = 0;
    do
    {
      *(*a2 + 8 * v10) = *(bytes + 8 * v10);
      ++v10;
    }

    while (v8 >> 3 != v10);
  }

  __57__VGFaceFittingFrameSelector_getFaceKitTrackedLandmarks___block_invoke(v11);
}

void __57__VGFaceFittingFrameSelector_getFaceKitTrackedLandmarks___block_invoke(uint64_t a1)
{
  v1 = VGLogVGFaceFittingFrameSelector(a1);
  if (os_signpost_enabled(v1))
  {
    *v2 = 0;
    _os_signpost_emit_with_name_impl(&dword_270F06000, v1, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "GetFaceKitTrackedLandmarks", &unk_270FBF062, v2, 2u);
  }
}

- (uint64_t)checkDistanceFilter:(float32x4_t)filter@<Q3> frameTimestampMS:
{
  v5 = VGLogVGFaceFittingFrameSelector(self);
  if (os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_270F06000, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "CheckDistanceFilter", &unk_270FBF062, buf, 2u);
  }

  useSimpleSelector = [*(self + 48) useSimpleSelector];
  if (useSimpleSelector)
  {
    goto LABEL_4;
  }

  [*(self + 48) distanceFilterCloseThreshold];
  v7 = vmuls_lane_f32(0.1, filter, 2);
  v8 = *(self + 48);
  if (v7 < v9)
  {
    [v8 distanceFilterCloseThreshold];
    v11 = v10;
    *a2 = 26;
    v12 = MEMORY[0x277CCACA8];
    [*(self + 48) distanceFilterCloseThreshold];
    useSimpleSelector = [v12 stringWithFormat:@"face too close: %g cm < %g cm", v7, v13];
LABEL_9:
    *(a2 + 8) = useSimpleSelector;
    *(a2 + 16) = 0;
    *(a2 + 20) = vabds_f32(v7, v11);
    *(a2 + 24) = 0;
    goto LABEL_10;
  }

  useSimpleSelector = [v8 distanceFilterFarThreshold];
  if (v7 > v14)
  {
    [*(self + 48) distanceFilterFarThreshold];
    v11 = v15;
    *a2 = 27;
    v16 = MEMORY[0x277CCACA8];
    [*(self + 48) distanceFilterFarThreshold];
    useSimpleSelector = [v16 stringWithFormat:@"face too far: %g cm > %g cm", v7, v17];
    goto LABEL_9;
  }

LABEL_4:
  *a2 = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
LABEL_10:
  __67__VGFaceFittingFrameSelector_checkDistanceFilter_frameTimestampMS___block_invoke(useSimpleSelector);
  return result;
}

void __67__VGFaceFittingFrameSelector_checkDistanceFilter_frameTimestampMS___block_invoke(uint64_t a1)
{
  v1 = VGLogVGFaceFittingFrameSelector(a1);
  if (os_signpost_enabled(v1))
  {
    *v2 = 0;
    _os_signpost_emit_with_name_impl(&dword_270F06000, v1, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "CheckDistanceFilter", &unk_270FBF062, v2, 2u);
  }
}

- (FrameRejectionState)checkMotionBlurFilter:(SEL)filter frameTimestampMS:(id)s
{
  sCopy = s;
  v9 = VGLogVGFaceFittingFrameSelector(sCopy);
  if (os_signpost_enabled(v9))
  {
    LOWORD(v18) = 0;
    _os_signpost_emit_with_name_impl(&dword_270F06000, v9, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "CheckMotionBlurFilter", &unk_270FBF062, &v18, 2u);
  }

  v10 = objc_opt_class();
  if (v10)
  {
    objc_msgSend_getFaceKitTrackedLandmarks_(v10);
    v11 = v22;
    v12 = v23;
  }

  else
  {
    v12 = 0;
    v11 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
  }

  v18 = a5;
  __p = 0;
  v20 = 0;
  v21 = 0;
  _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPS1_S6_EEvT_T0_m(&__p, v11, v12, (v12 - v11) >> 3);
  v13 = vg::frame_selection::VGBlurDetector::detectMotionBlur(self->_blurDetector.__ptr_, &v18);
  if ((v14 & 1) == 0)
  {
    retstr->reason = 7;
    v15 = @"motion blur is initializing temporal state from this frame";
    goto LABEL_10;
  }

  if (v13)
  {
    retstr->reason = 6;
    v15 = @"motion blur detected";
LABEL_10:
    *&retstr->outOfFovOffset = 0;
    retstr->debugDictionary = 0;
    retstr->description = &v15->isa;
    goto LABEL_12;
  }

  retstr->reason = 0;
  *&retstr->outOfFovOffset = 0;
  retstr->debugDictionary = 0;
  retstr->description = 0;
LABEL_12:
  if (__p)
  {
    v20 = __p;
    operator delete(__p);
  }

  v16 = v22;
  if (v22)
  {
    v23 = v22;
    operator delete(v22);
  }

  __69__VGFaceFittingFrameSelector_checkMotionBlurFilter_frameTimestampMS___block_invoke(v16);

  return result;
}

void __69__VGFaceFittingFrameSelector_checkMotionBlurFilter_frameTimestampMS___block_invoke(uint64_t a1)
{
  v1 = VGLogVGFaceFittingFrameSelector(a1);
  if (os_signpost_enabled(v1))
  {
    *v2 = 0;
    _os_signpost_emit_with_name_impl(&dword_270F06000, v1, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "CheckMotionBlurFilter", &unk_270FBF062, v2, 2u);
  }
}

- (CGRect)getValidDataFrameBounds:(id)bounds
{
  boundsCopy = bounds;
  v4 = VGLogVGFaceFittingFrameSelector(boundsCopy);
  if (os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_270F06000, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "GetValidDataFrameBounds", &unk_270FBF062, buf, 2u);
  }

  Width = CVPixelBufferGetWidth([boundsCopy depth]);
  Height = CVPixelBufferGetHeight([boundsCopy depth]);
  v17 = getImageBBoxAboveThreshold([boundsCopy depth], 0.015).n128_u64[0];
  v8 = v7;
  __54__VGFaceFittingFrameSelector_getValidDataFrameBounds___block_invoke(v9);
  v10 = vsub_s32(v8, v17);
  v11 = (v10.i32[0] / Width);
  v12 = (v10.i32[1] / Height);

  v13 = (v17.i32[0] / Width);
  v14 = (v17.i32[1] / Height);
  v15 = v11;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

void __54__VGFaceFittingFrameSelector_getValidDataFrameBounds___block_invoke(uint64_t a1)
{
  v1 = VGLogVGFaceFittingFrameSelector(a1);
  if (os_signpost_enabled(v1))
  {
    *v2 = 0;
    _os_signpost_emit_with_name_impl(&dword_270F06000, v1, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "GetValidDataFrameBounds", &unk_270FBF062, v2, 2u);
  }
}

- (VGFaceFittingFrameSelector)initWithOptions:(id)options faceKitSemantics:(__CFDictionary *)semantics
{
  v41[1] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  v38.receiver = self;
  v38.super_class = VGFaceFittingFrameSelector;
  v7 = [(VGFaceFittingFrameSelector *)&v38 init];
  if (v7)
  {
    if (semantics)
    {
      CFRetain(semantics);
      facekitSemantics = v7->_facekitSemantics;
      v7->_facekitSemantics = semantics;
    }

    options = [VGFrameSelectorOptions optionsWithCaptureOptions:optionsCopy, options];
    v9 = [[VGFrameSelector alloc] initWithOptions:options];
    poseSelector = v7->_poseSelector;
    v7->_poseSelector = v9;

    v11 = MEMORY[0x277CBEB38];
    requiredExpressions = [optionsCopy requiredExpressions];
    v13 = [v11 dictionaryWithCapacity:{objc_msgSend(requiredExpressions, "count")}];
    expressionsSelector = v7->_expressionsSelector;
    v7->_expressionsSelector = v13;

    for (i = 0; ; ++i)
    {
      requiredExpressions2 = [optionsCopy requiredExpressions];
      v17 = i < [requiredExpressions2 count];

      if (!v17)
      {
        break;
      }

      requiredExpressions3 = [optionsCopy requiredExpressions];
      v19 = [requiredExpressions3 objectAtIndex:i];
      intValue = [v19 intValue];

      v21 = objc_opt_new();
      v22 = objc_opt_new();
      [v22 setYawFrameCount:1];
      LODWORD(v23) = 1057360530;
      [v22 setYawLimit:v23];
      v41[0] = v21;
      v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:1];
      [v22 setYawExpressionFilters:v24];

      v25 = [[VGFrameSelector alloc] initWithOptions:v22];
      v26 = v7->_expressionsSelector;
      v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:intValue];
      [(NSMutableDictionary *)v26 setObject:v25 forKeyedSubscript:v27];
    }

    v7->_frameCount = 0;
    objc_storeStrong(&v7->_options, obja);
    trackedFaceIdentifier = v7->_trackedFaceIdentifier;
    v7->_trackedFaceIdentifier = 0;

    useMotionBlurFilter = [(VGFaceCaptureOptions *)v7->_options useMotionBlurFilter];
    if (useMotionBlurFilter)
    {
      *buf = 1106247680;
      [(VGFaceCaptureOptions *)v7->_options motionBlurThreshold];
      LODWORD(optionsCopy2) = v30;
      BYTE4(optionsCopy2) = 0;
      vg::frame_selection::VGBlurDetector::create();
    }

    v31 = __VGLogSharedInstance(useMotionBlurFilter);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      options = v7->_options;
      *buf = 138412290;
      optionsCopy2 = options;
      _os_log_impl(&dword_270F06000, v31, OS_LOG_TYPE_DEBUG, " Initialized FaceFittingSelector with face capture options:\n%@ ", buf, 0xCu);
    }

    v33 = v7;
  }

  else
  {
    v33 = 0;
  }

  return v33;
}

- (BOOL)startFaceExpressionCapture:(unint64_t)capture
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  [v6 setYawFrameCount:1];
  LODWORD(v7) = 1057360530;
  [v6 setYawLimit:v7];
  v13[0] = v5;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  [v6 setYawExpressionFilters:v8];

  v9 = [[VGFrameSelector alloc] initWithOptions:v6];
  expressionsSelector = self->_expressionsSelector;
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:capture];
  [(NSMutableDictionary *)expressionsSelector setObject:v9 forKeyedSubscript:v11];

  return 1;
}

- (id)_currentState
{
  v70 = *MEMORY[0x277D85DE8];
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = [(VGFaceFittingFrameSelector *)self allPoseSelectors];
  v2 = 0;
  v3 = 0;
  v4 = [obj countByEnumeratingWithState:&v55 objects:v69 count:16];
  if (v4)
  {
    v5 = *v56;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v56 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v55 + 1) + 8 * i);
        v3 += [v7 remainingPosesCount];
        v2 += [v7 requiredPosesCount];
      }

      v4 = [obj countByEnumeratingWithState:&v55 objects:v69 count:16];
    }

    while (v4);
  }

  obja = objc_alloc_init(VGFaceSelectionState);
  [(VGSelectionState *)obja setFailed:v2 == 0];
  failed = [(VGSelectionState *)obja failed];
  if ((failed & 1) == 0)
  {
    [(VGSelectionState *)obja setCompleted:v3 == 0];
    if (v2)
    {
      *&v9 = (v2 - v3) / v2;
      [(VGSelectionState *)obja setProgress:v9];
    }

    yawResults = [(VGFrameSelector *)self->_poseSelector yawResults];
    [(VGFaceSelectionState *)obja setYawAngleCapturedPoses:yawResults];

    pitchResults = [(VGFrameSelector *)self->_poseSelector pitchResults];
    [(VGFaceSelectionState *)obja setPitchAngleCapturedPoses:pitchResults];

    yawResults2 = [(VGFrameSelector *)self->_poseSelector yawResults];
    [(VGFaceSelectionState *)obja setPosesForHairCapturedPoses:yawResults2];

    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    poseSelector = self->_poseSelector;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&poseSelector count:1];
    v14 = [(VGFaceFittingFrameSelector *)self posesFromSelectors:v13];

    v15 = [v14 countByEnumeratingWithState:&v51 objects:v68 count:16];
    if (v15)
    {
      v16 = *v52;
      while (2)
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v52 != v16)
          {
            objc_enumerationMutation(v14);
          }

          v18 = *(*(&v51 + 1) + 8 * j);
          if ([v18 frontPose])
          {
            [(VGFaceSelectionState *)obja setCapturedFrontPose:v18];
            goto LABEL_21;
          }
        }

        v15 = [v14 countByEnumeratingWithState:&v51 objects:v68 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

LABEL_21:

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v37 = self->_expressionsSelector;
    v20 = [(NSMutableDictionary *)v37 countByEnumeratingWithState:&v47 objects:v66 count:16];
    if (v20)
    {
      v38 = *v48;
      do
      {
        v39 = v20;
        for (k = 0; k != v39; ++k)
        {
          if (*v48 != v38)
          {
            objc_enumerationMutation(v37);
          }

          v22 = *(*(&v47 + 1) + 8 * k);
          v23 = [(NSMutableDictionary *)self->_expressionsSelector objectForKey:v22];
          results = [v23 results];

          v45 = 0u;
          v46 = 0u;
          v43 = 0u;
          v44 = 0u;
          v25 = results;
          v26 = [v25 countByEnumeratingWithState:&v43 objects:v65 count:16];
          if (v26)
          {
            v27 = *v44;
            do
            {
              for (m = 0; m != v26; ++m)
              {
                if (*v44 != v27)
                {
                  objc_enumerationMutation(v25);
                }

                v29 = [v25 objectForKey:*(*(&v43 + 1) + 8 * m)];
                [dictionary setObject:v29 forKeyedSubscript:v22];
              }

              v26 = [v25 countByEnumeratingWithState:&v43 objects:v65 count:16];
            }

            while (v26);
          }
        }

        v20 = [(NSMutableDictionary *)v37 countByEnumeratingWithState:&v47 objects:v66 count:16];
      }

      while (v20);
    }

    [(VGFaceSelectionState *)obja setExpressionCapturedPoses:dictionary];
    [(VGFaceSelectionState *)obja setCompletionScore:0.0];
    capturedFrontPose = [(VGFaceSelectionState *)obja capturedFrontPose];
    v31 = capturedFrontPose == 0;

    if (!v31)
    {
      LODWORD(v32) = 0.25;
      [(VGFaceSelectionState *)obja setCompletionScore:v32];
      v34 = 1.0;
      if ([(VGFrameSelector *)self->_poseSelector completed]|| (v34 = 0.5, [(VGFrameSelector *)self->_poseSelector completedYaw]) || [(VGFrameSelector *)self->_poseSelector completedPitch])
      {
        *&v33 = v34;
        [(VGFaceSelectionState *)obja setCompletionScore:v33];
      }
    }
  }

  v35 = __VGLogSharedInstance(failed);
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218498;
    v60 = v3;
    v61 = 2048;
    v62 = v2;
    v63 = 2112;
    v64 = obja;
    _os_log_impl(&dword_270F06000, v35, OS_LOG_TYPE_DEBUG, " %lu/%lu %@ ", buf, 0x20u);
  }

  return obja;
}

- (id)addPoseWithCaptureData:(id)data tracking:(id)tracking externalTracking:(BOOL)externalTracking metricsData:(void *)metricsData
{
  v170 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  trackingCopy = tracking;
  v10 = VGLogVGFaceFittingFrameSelector(trackingCopy);
  if (os_signpost_enabled(v10))
  {
    LOWORD(buf.value) = 0;
    _os_signpost_emit_with_name_impl(&dword_270F06000, v10, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "AddPoseWithCaptureData", &unk_270FBF062, &buf, 2u);
  }

  ++self->_frameCount;
  if (dataCopy)
  {
    objc_msgSend_timestamp(dataCopy);
  }

  else
  {
    memset(&buf, 0, sizeof(buf));
  }

  Seconds = CMTimeGetSeconds(&buf);
  _currentState = [(VGFaceFittingFrameSelector *)self _currentState];
  v13 = (Seconds * 1000.0);
  v160[0] = metricsData;
  v160[1] = v13;
  selfCopy = self;
  if ([_currentState failed])
  {
    v156 = 1;
    v159 = 0;
    v157 = @"enrollment failed";
    v158 = 0;
    [VGFaceFittingFrameSelector addPoseWithCaptureData:tracking:externalTracking:metricsData:]::$_0::operator()(v160, _currentState, &v156);
    if ([(VGFaceCaptureOptions *)selfCopy->_options useMotionBlurFilter])
    {
      vg::frame_selection::VGBlurDetector::resetPreviousState(selfCopy->_blurDetector.__ptr_);
    }

    goto LABEL_27;
  }

  if (!externalTracking)
  {
    frameCount = self->_frameCount;
    if (frameCount <= 0x32)
    {
      v152 = 10;
      [MEMORY[0x277CCACA8] stringWithFormat:@"not ready [%lu / %lu]", frameCount, 50];
      v153 = v155 = 0;
      v154 = 0;
      [VGFaceFittingFrameSelector addPoseWithCaptureData:tracking:externalTracking:metricsData:]::$_0::operator()(v160, _currentState, &v152);
LABEL_27:
      v25 = _currentState;
      goto LABEL_113;
    }
  }

  if (!trackingCopy)
  {
    v148 = 2;
    v151 = 0;
    v149 = @"no tracking data";
    v150 = 0;
    [VGFaceFittingFrameSelector addPoseWithCaptureData:tracking:externalTracking:metricsData:]::$_0::operator()(v160, _currentState, &v148);
    if ([(VGFaceCaptureOptions *)selfCopy->_options useMotionBlurFilter])
    {
      vg::frame_selection::VGBlurDetector::resetPreviousState(selfCopy->_blurDetector.__ptr_);
    }

    goto LABEL_27;
  }

  v103 = [trackingCopy objectForKeyedSubscript:@"tracked_faces"];
  if (!v103 || ![v103 count])
  {
    v144 = 3;
    v147 = 0;
    v145 = @"no tracked face";
    v146 = 0;
    [VGFaceFittingFrameSelector addPoseWithCaptureData:tracking:externalTracking:metricsData:]::$_0::operator()(v160, _currentState, &v144);
    if ([(VGFaceCaptureOptions *)selfCopy->_options useMotionBlurFilter])
    {
      vg::frame_selection::VGBlurDetector::resetPreviousState(selfCopy->_blurDetector.__ptr_);
    }

    v25 = _currentState;
    goto LABEL_112;
  }

  v101 = [v103 objectAtIndexedSubscript:0];
  if (!v101)
  {
    v140 = 3;
    v143 = 0;
    v141 = @"null tracked face";
    v142 = 0;
    [VGFaceFittingFrameSelector addPoseWithCaptureData:tracking:externalTracking:metricsData:]::$_0::operator()(v160, _currentState, &v140);
    if ([(VGFaceCaptureOptions *)selfCopy->_options useMotionBlurFilter])
    {
      vg::frame_selection::VGBlurDetector::resetPreviousState(selfCopy->_blurDetector.__ptr_);
    }

    v25 = _currentState;
    goto LABEL_111;
  }

  if ([(VGFaceCaptureOptions *)selfCopy->_options useAmbientLightFilter])
  {
    v16 = [v101 objectForKeyedSubscript:@"vg_ambient_light"];
    v17 = v16;
    if (v16)
    {
      [v16 floatValue];
      v19 = v18;
      [(VGFaceCaptureOptions *)selfCopy->_options ambientLightFilterLowThreshold];
      if (v19 < v20)
      {
        v136 = 5;
        v21 = MEMORY[0x277CCACA8];
        [v17 floatValue];
        v23 = v22;
        [(VGFaceCaptureOptions *)selfCopy->_options ambientLightFilterLowThreshold];
        [v21 stringWithFormat:@"low ambient light [%g < %g]", v23, v24];
        v138 = 0;
        v137 = v139 = 0;
        [VGFaceFittingFrameSelector addPoseWithCaptureData:tracking:externalTracking:metricsData:]::$_0::operator()(v160, _currentState, &v136);
        if ([(VGFaceCaptureOptions *)selfCopy->_options useMotionBlurFilter])
        {
          vg::frame_selection::VGBlurDetector::resetPreviousState(selfCopy->_blurDetector.__ptr_);
        }

        v25 = _currentState;

        goto LABEL_111;
      }
    }
  }

  if ([(VGFaceCaptureOptions *)selfCopy->_options useTrackedFaceIdentifierFilter])
  {
    v26 = [v101 objectForKeyedSubscript:@"identifier"];
    v27 = v26;
    if (v26)
    {
      if (selfCopy->_trackedFaceIdentifier)
      {
        if (([v26 isEqualToString:?] & 1) == 0)
        {
          v132 = 4;
          [MEMORY[0x277CCACA8] stringWithFormat:@"tracked face changed [%@ != %@]", v27, selfCopy->_trackedFaceIdentifier];
          v134 = 0;
          v133 = v135 = 0;
          [VGFaceFittingFrameSelector addPoseWithCaptureData:tracking:externalTracking:metricsData:]::$_0::operator()(v160, _currentState, &v132);
          if ([(VGFaceCaptureOptions *)selfCopy->_options useMotionBlurFilter])
          {
            vg::frame_selection::VGBlurDetector::resetPreviousState(selfCopy->_blurDetector.__ptr_);
          }

          v25 = _currentState;

          goto LABEL_111;
        }
      }

      else
      {
        objc_storeStrong(&selfCopy->_trackedFaceIdentifier, v26);
      }
    }
  }

  v28 = [v101 objectForKeyedSubscript:@"confidence"];
  [v28 floatValue];
  if (v29 < 0.95)
  {
    v128 = 8;
    v30 = MEMORY[0x277CCACA8];
    [v28 floatValue];
    [v30 stringWithFormat:@"low confidence [%g < %g]", v31, 0x3FEE666660000000];
    v130 = 0;
    v129 = v131 = 0;
    [VGFaceFittingFrameSelector addPoseWithCaptureData:tracking:externalTracking:metricsData:]::$_0::operator()(v160, _currentState, &v128);
    if ([(VGFaceCaptureOptions *)selfCopy->_options useMotionBlurFilter])
    {
      vg::frame_selection::VGBlurDetector::resetPreviousState(selfCopy->_blurDetector.__ptr_);
    }

    v25 = _currentState;
    goto LABEL_110;
  }

  v99 = v28;
  if (![(VGFaceCaptureOptions *)selfCopy->_options useMotionBlurFilter])
  {
LABEL_49:
    v32 = *(MEMORY[0x277D860B8] + 16);
    v33 = *(MEMORY[0x277D860B8] + 32);
    v34 = *(MEMORY[0x277D860B8] + 48);
    v120 = *MEMORY[0x277D860B8];
    v121 = v32;
    v122 = v33;
    v123 = v34;
    v95 = [v101 objectForKeyedSubscript:@"smooth_data"];
    v100 = [v95 objectForKeyedSubscript:@"pose"];
    v102 = [v100 objectForKeyedSubscript:@"rotation"];
    for (i = 0; i != 3; ++i)
    {
      v36 = [v102 objectAtIndex:i];
      for (j = 0; j != 3; ++j)
      {
        v38 = [v36 objectAtIndex:j];
        [v38 floatValue];
        *((&v120 + j) & 0xFFFFFFFFFFFFFFF3 | (4 * (i & 3))) = v39;
      }
    }

    v40 = [v100 objectForKeyedSubscript:@"translation"];
    v41 = 0;
    v104 = v123;
    do
    {
      v42 = [v40 objectAtIndexedSubscript:v41];
      [v42 floatValue];
      v109 = v104;
      *(&v109 & 0xFFFFFFFFFFFFFFF3 | (4 * (v41 & 3))) = v43;
      v104 = v109;

      ++v41;
    }

    while (v41 != 3);
    v123 = v104;
    if ((atomic_load_explicit(_MergedGlobals, memory_order_acquire) & 1) == 0)
    {
      [VGFaceFittingFrameSelector addPoseWithCaptureData:tracking:externalTracking:metricsData:];
    }

    v44 = 0;
    v45 = v120;
    v46 = v121;
    v47 = v122;
    v48 = v123;
    *v167 = xmmword_280870BC0;
    *&v167[16] = unk_280870BD0;
    v168 = xmmword_280870BE0;
    v169 = unk_280870BF0;
    do
    {
      *(&buf.value + v44) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v45, COERCE_FLOAT(*&v167[v44])), v46, *&v167[v44], 1), v47, *&v167[v44], 2), v48, *&v167[v44], 3);
      v44 += 16;
    }

    while (v44 != 64);
    v105 = *&buf.value;
    v97 = *&v163;
    v98 = *&buf.epoch;
    v96 = *&v164;
    LOBYTE(buf.value) = 0;
    LOBYTE(v163) = 0;
    if ([(VGFaceCaptureOptions *)selfCopy->_options useDepthFovFilter])
    {
      [(VGFaceFittingFrameSelector *)selfCopy getValidDataFrameBounds:dataCopy];
      buf.value = v49;
      *&buf.timescale = v50;
      buf.epoch = v51;
      v162 = v52;
      if ((v163 & 1) == 0)
      {
        LOBYTE(v163) = 1;
      }
    }

    if ([(VGFaceCaptureOptions *)selfCopy->_options useDistanceFilter])
    {
      objc_msgSend_checkDistanceFilter_frameTimestampMS_(selfCopy, v105, v98, v97, v96);
      if (*v167)
      {
        v116 = *v167;
        v117 = *&v167[8];
        v118 = *&v167[16];
        v119 = *&v167[24];
        [VGFaceFittingFrameSelector addPoseWithCaptureData:tracking:externalTracking:metricsData:]::$_0::operator()(v160, _currentState, &v116);
        v25 = _currentState;

LABEL_108:
        goto LABEL_109;
      }
    }

    v53 = [(VGFrameSelector *)selfCopy->_poseSelector processCaptureData:dataCopy trackingData:trackingCopy framePose:&buf validDataFrameBounds:v105, v98, v97, v96];
    v106 = v53;
    if ([v53 isSuccessful])
    {
      if (metricsData)
      {
        motionType = [v53 motionType];
        v55 = metricsData + 24 * motionType;
        targetAngleId = [v53 targetAngleId];
        *v167 = &targetAngleId;
        v56 = std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long &&>,std::tuple<>>((v55 + 352), &targetAngleId, &std::piecewise_construct, v167);
        if (!*(v56 + 5))
        {
          v57 = vg::shared::Time(v56);
          targetAngleId = [v53 targetAngleId];
          *v167 = &targetAngleId;
          std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long &&>,std::tuple<>>(metricsData + 24 * motionType + 440, &targetAngleId, &std::piecewise_construct, v167)[5] = v57;
        }

        targetAngleId = [v53 targetAngleId];
        *v167 = &targetAngleId;
        v58 = std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long &&>,std::tuple<>>((v55 + 352), &targetAngleId, &std::piecewise_construct, v167);
        ++v58[5];
      }

      _currentState2 = [(VGFaceFittingFrameSelector *)selfCopy _currentState];

      _currentState = _currentState2;
    }

    if (v53)
    {
      objc_msgSend_rejectionState(v53);
    }

    else
    {
      memset(v114, 0, sizeof(v114));
    }

    [VGFaceFittingFrameSelector addPoseWithCaptureData:tracking:externalTracking:metricsData:]::$_0::operator()(v160, _currentState, v114);
    [_currentState setPoseIndex:{objc_msgSend(v53, "poseIndex")}];
    [v53 yawInDegrees];
    [_currentState setYawAngle:?];
    [v53 pitchInDegrees];
    [_currentState setPitchAngle:?];
    motionType2 = [v53 motionType];
    if (motionType2)
    {
      v61 = 0;
    }

    else
    {
      v62 = MEMORY[0x277CCABB0];
      [v53 angleInDegrees];
      v61 = [v62 numberWithFloat:?];
    }

    [_currentState setYawTargetAngle:v61];
    if (!motionType2)
    {
    }

    motionType3 = [v53 motionType];
    if (motionType3 == 1)
    {
      v64 = MEMORY[0x277CCABB0];
      [v53 angleInDegrees];
      v65 = [v64 numberWithFloat:?];
    }

    else
    {
      v65 = 0;
    }

    [_currentState setPitchTargetAngle:v65];
    if (motionType3 == 1)
    {
    }

    debugData = [v53 debugData];
    [_currentState setDebugData:debugData];

    bodyPoseFrameState = [v53 bodyPoseFrameState];
    [_currentState setBodyPoseFrameState:bodyPoseFrameState];

    yawTargetAngle = [_currentState yawTargetAngle];
    if (yawTargetAngle)
    {
      yawAngleCapturedPoses = [_currentState yawAngleCapturedPoses];
      yawTargetAngle2 = [_currentState yawTargetAngle];
      v71 = [yawAngleCapturedPoses objectForKey:yawTargetAngle2];
      v72 = v71 == 0;

      if (v72)
      {
        v74 = __VGLogSharedInstance(v73);
        if (os_log_type_enabled(v74, OS_LOG_TYPE_DEBUG))
        {
          yawTargetAngle3 = [_currentState yawTargetAngle];
          *v167 = 134218242;
          *&v167[4] = v13;
          *&v167[12] = 2112;
          *&v167[14] = yawTargetAngle3;
          _os_log_impl(&dword_270F06000, v74, OS_LOG_TYPE_DEBUG, " Frame#%zu reported target angle %@ (yaw) through selection state is not present in keys of yaw captured poses dictionary ", v167, 0x16u);
        }
      }
    }

    pitchTargetAngle = [_currentState pitchTargetAngle];
    if (pitchTargetAngle)
    {
      pitchAngleCapturedPoses = [_currentState pitchAngleCapturedPoses];
      pitchTargetAngle2 = [_currentState pitchTargetAngle];
      v79 = [pitchAngleCapturedPoses objectForKey:pitchTargetAngle2];
      v80 = v79 == 0;

      if (v80)
      {
        v82 = __VGLogSharedInstance(v81);
        if (os_log_type_enabled(v82, OS_LOG_TYPE_DEBUG))
        {
          pitchTargetAngle3 = [_currentState pitchTargetAngle];
          *v167 = 134218242;
          *&v167[4] = v13;
          *&v167[12] = 2112;
          *&v167[14] = pitchTargetAngle3;
          _os_log_impl(&dword_270F06000, v82, OS_LOG_TYPE_DEBUG, " Frame#%zu reported target angle %@ (pitch) through selection state is not present in keys of pitch captured poses dictionary ", v167, 0x16u);
        }
      }
    }

    allPoseSelectors = [(VGFaceFittingFrameSelector *)selfCopy allPoseSelectors];
    v85 = [(VGFaceFittingFrameSelector *)selfCopy posesFromSelectors:allPoseSelectors];
    [_currentState setTronPoses:v85];

    v112 = 0u;
    v113 = 0u;
    v110 = 0u;
    v111 = 0u;
    poseSelector = selfCopy->_poseSelector;
    v86 = [MEMORY[0x277CBEA60] arrayWithObjects:&poseSelector count:1];
    v87 = [(VGFaceFittingFrameSelector *)selfCopy posesFromSelectors:v86];

    v88 = [v87 countByEnumeratingWithState:&v110 objects:v166 count:16];
    if (v88)
    {
      v89 = *v111;
      while (2)
      {
        for (k = 0; k != v88; ++k)
        {
          if (*v111 != v89)
          {
            objc_enumerationMutation(v87);
          }

          v91 = *(*(&v110 + 1) + 8 * k);
          if ([v91 frontPose])
          {
            [_currentState setCapturedFrontPose:v91];
            v92 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{v91, 0}];
            [_currentState setHairPoses:v92];

            goto LABEL_105;
          }
        }

        v88 = [v87 countByEnumeratingWithState:&v110 objects:v166 count:16];
        if (v88)
        {
          continue;
        }

        break;
      }
    }

LABEL_105:

    if ([_currentState completed])
    {
      selfCopy->_selectionCompleted = 1;
    }

    v25 = _currentState;

    goto LABEL_108;
  }

  objc_msgSend_checkMotionBlurFilter_frameTimestampMS_(selfCopy);
  if (!LODWORD(buf.value))
  {

    goto LABEL_49;
  }

  value = buf.value;
  v125 = *&buf.timescale;
  epoch = buf.epoch;
  v127 = v162;
  [VGFaceFittingFrameSelector addPoseWithCaptureData:tracking:externalTracking:metricsData:]::$_0::operator()(v160, _currentState, &value);
  v25 = _currentState;

LABEL_109:
  v28 = v99;
LABEL_110:

LABEL_111:
LABEL_112:

LABEL_113:
  __91__VGFaceFittingFrameSelector_addPoseWithCaptureData_tracking_externalTracking_metricsData___block_invoke(v93);

  return v25;
}

void __91__VGFaceFittingFrameSelector_addPoseWithCaptureData_tracking_externalTracking_metricsData___block_invoke(uint64_t a1)
{
  v1 = VGLogVGFaceFittingFrameSelector(a1);
  if (os_signpost_enabled(v1))
  {
    *v2 = 0;
    _os_signpost_emit_with_name_impl(&dword_270F06000, v1, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "AddPoseWithCaptureData", &unk_270FBF062, v2, 2u);
  }
}

- (void)addPoseWithCaptureData:tracking:externalTracking:metricsData:
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (*self)
  {
    v6 = *self + 8 * *a3;
    ++*(v6 + 16);
  }

  v7 = [VGFrameRejectionState alloc];
  v18 = *a3;
  v8 = *(a3 + 1);
  v9 = *(a3 + 2);
  v10 = *(a3 + 3);
  v19 = v8;
  v20 = v9;
  v11 = v10;
  v21 = v11;
  if (v7)
  {
    v7 = [(VGFrameRejectionState *)v7 initFromInternalRejectionState:&v18];
  }

  else
  {
  }

  [v5 setRejectionState:v7];

  v13 = __VGLogSharedInstance(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v14 = self[1];
    vg::frame_selection::frameRejectionReasonToString(*a3, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v16 = *(a3 + 1);
    *buf = 134218498;
    v23 = v14;
    v24 = 2080;
    v25 = p_p;
    v26 = 2112;
    v27 = v16;
    _os_log_impl(&dword_270F06000, v13, OS_LOG_TYPE_DEBUG, " Frame#%zu rejection state: %s description: %@ ", buf, 0x20u);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

- (id)posesFromSelectors:(id)selectors
{
  v41 = *MEMORY[0x277D85DE8];
  selectorsCopy = selectors;
  array = [MEMORY[0x277CBEB18] array];
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = selectorsCopy;
  v5 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v5)
  {
    v22 = *v35;
    do
    {
      v23 = v5;
      for (i = 0; i != v23; ++i)
      {
        if (*v35 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v34 + 1) + 8 * i);
        yawResults = [v7 yawResults];
        pitchResults = [v7 pitchResults];
        v25 = [yawResults keysSortedByValueUsingComparator:&__block_literal_global_311];
        v24 = [pitchResults keysSortedByValueUsingComparator:&__block_literal_global_313];
        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        v10 = v25;
        v11 = [v10 countByEnumeratingWithState:&v30 objects:v39 count:16];
        if (v11)
        {
          v12 = *v31;
          do
          {
            for (j = 0; j != v11; ++j)
            {
              if (*v31 != v12)
              {
                objc_enumerationMutation(v10);
              }

              v14 = [yawResults objectForKey:*(*(&v30 + 1) + 8 * j)];
              [array addObject:v14];
            }

            v11 = [v10 countByEnumeratingWithState:&v30 objects:v39 count:16];
          }

          while (v11);
        }

        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        v15 = v24;
        v16 = [v15 countByEnumeratingWithState:&v26 objects:v38 count:16];
        if (v16)
        {
          v17 = *v27;
          do
          {
            for (k = 0; k != v16; ++k)
            {
              if (*v27 != v17)
              {
                objc_enumerationMutation(v15);
              }

              v19 = [pitchResults objectForKey:*(*(&v26 + 1) + 8 * k)];
              [array addObject:v19];
            }

            v16 = [v15 countByEnumeratingWithState:&v26 objects:v38 count:16];
          }

          while (v16);
        }
      }

      v5 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
    }

    while (v5);
  }

  return array;
}

uint64_t __49__VGFaceFittingFrameSelector_posesFromSelectors___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = MEMORY[0x277CCABB0];
  [v4 selectedAngle];
  v7 = [v6 numberWithFloat:?];
  v8 = MEMORY[0x277CCABB0];
  [v5 selectedAngle];
  v9 = [v8 numberWithFloat:?];
  v10 = [v7 compare:v9];

  return v10;
}

uint64_t __49__VGFaceFittingFrameSelector_posesFromSelectors___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = MEMORY[0x277CCABB0];
  [v4 selectedAngle];
  v7 = [v6 numberWithFloat:?];
  v8 = MEMORY[0x277CCABB0];
  [v5 selectedAngle];
  v9 = [v8 numberWithFloat:?];
  v10 = [v7 compare:v9];

  return v10;
}

- (id)enrolledPoses
{
  v29 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  if ([(VGFrameSelector *)self->_poseSelector completedYaw])
  {
    selectedYawValidPoses = [(VGFrameSelector *)self->_poseSelector selectedYawValidPoses];
    allValues = [selectedYawValidPoses allValues];
    [array addObjectsFromArray:allValues];
  }

  else
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    selectedYawValidPoses2 = [(VGFrameSelector *)self->_poseSelector selectedYawValidPoses];
    allValues2 = [selectedYawValidPoses2 allValues];

    v8 = [allValues2 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v8)
    {
      v9 = *v24;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v24 != v9)
          {
            objc_enumerationMutation(allValues2);
          }

          v11 = *(*(&v23 + 1) + 8 * i);
          if ([v11 frontPose])
          {
            [array addObject:v11];
          }
        }

        v8 = [allValues2 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v8);
    }
  }

  if ([(VGFrameSelector *)self->_poseSelector completedPitch])
  {
    selectedPitchValidPoses = [(VGFrameSelector *)self->_poseSelector selectedPitchValidPoses];
    allValues3 = [selectedPitchValidPoses allValues];
    [array addObjectsFromArray:allValues3];
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v14 = array;
  v15 = [v14 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v15)
  {
    v16 = *v20;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v20 != v16)
        {
          objc_enumerationMutation(v14);
        }

        [*(*(&v19 + 1) + 8 * j) setTrackingData:{self->_facekitSemantics, v19}];
      }

      v15 = [v14 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v15);
  }

  return v14;
}

- (id)finish
{
  v15 = *MEMORY[0x277D85DE8];
  if (self->_selectionCompleted)
  {
    neutralSelectors = [(VGFaceFittingFrameSelector *)self neutralSelectors];
    v4 = [(VGFaceFittingFrameSelector *)self posesFromSelectors:neutralSelectors];

    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    enrolledPoses = v4;
    v6 = [enrolledPoses countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = *v11;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(enrolledPoses);
          }

          [*(*(&v10 + 1) + 8 * i) setTrackingData:{self->_facekitSemantics, v10}];
        }

        v6 = [enrolledPoses countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }

  else
  {
    enrolledPoses = [(VGFaceFittingFrameSelector *)self enrolledPoses];
  }

  return enrolledPoses;
}

- (void)addPoseWithCaptureData:tracking:externalTracking:metricsData:.cold.1()
{
  if (__cxa_guard_acquire(_MergedGlobals))
  {
    xmmword_280870BC0 = xmmword_270FA6CF0;
    unk_280870BD0 = xmmword_270FA6D00;
    xmmword_280870BE0 = xmmword_270FA6D10;
    unk_280870BF0 = xmmword_270FA6D20;
    __cxa_guard_release(_MergedGlobals);
  }
}

@end