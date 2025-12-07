@interface ARImageDetectionResultData
- (BOOL)isEqual:(id)equal;
- (NSDictionary)tracingEntry;
- (NSString)description;
- (id)anchorsForCameraWithTransform:(float32x4_t)transform referenceOriginTransform:(float32x4_t)originTransform existingAnchors:(float32x4_t)anchors anchorsToRemove:(float32x4_t)remove;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation ARImageDetectionResultData

- (id)anchorsForCameraWithTransform:(float32x4_t)transform referenceOriginTransform:(float32x4_t)originTransform existingAnchors:(float32x4_t)anchors anchorsToRemove:(float32x4_t)remove
{
  v204 = *MEMORY[0x1E69E9840];
  v14 = a11;
  v138 = a12;
  if (anchorsForCameraWithTransform_referenceOriginTransform_existingAnchors_anchorsToRemove__onceToken != -1)
  {
    [ARImageDetectionResultData anchorsForCameraWithTransform:referenceOriginTransform:existingAnchors:anchorsToRemove:];
  }

  v155 = objc_opt_new();
  v190 = 0u;
  v191 = 0u;
  v192 = 0u;
  v193 = 0u;
  v15 = v14;
  v16 = [v15 countByEnumeratingWithState:&v190 objects:v196 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v191;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v191 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v190 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          identifier = [v20 identifier];
          [v155 setObject:v20 forKey:identifier];
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v190 objects:v196 count:16];
    }

    while (v17);
  }

  v137 = v15;

  v152 = objc_opt_new();
  v186 = 0u;
  v187 = 0u;
  v188 = 0u;
  v189 = 0u;
  obj = [self detectedImages];
  v22 = v155;
  v156 = [obj countByEnumeratingWithState:&v186 objects:v195 count:16];
  if (v156)
  {
    v154 = *v187;
    v145 = *(MEMORY[0x1E69E9B18] + 16);
    v146 = *MEMORY[0x1E69E9B18];
    v143 = *(MEMORY[0x1E69E9B18] + 48);
    v144 = *(MEMORY[0x1E69E9B18] + 32);
    do
    {
      for (j = 0; j != v156; ++j)
      {
        if (*v187 != v154)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v186 + 1) + 8 * j);
        referenceImage = [v24 referenceImage];
        identifier2 = [referenceImage identifier];
        v27 = [v22 objectForKeyedSubscript:identifier2];

        if (v27)
        {
          v28 = [v27 copyWithTrackedState:1];
        }

        else
        {
          detectionOnly = [self detectionOnly];
          if (ARLinkedOnOrAfterAzulE(detectionOnly, v30))
          {
            v31 = 0x1E817A000;
          }

          else
          {
            v31 = 0x1E817A000uLL;
            if ([self detectionOnly])
            {
              detectionOnly = 1;
            }

            else
            {
              detectionOnly = [self providesWorldTrackingCameraPose];
            }
          }

          v32 = objc_alloc(*(v31 + 2128));
          referenceImage2 = [v24 referenceImage];
          v28 = [v32 initWithReferenceImage:referenceImage2 transform:detectionOnly detectionOnly:1 tracked:{*&v146, *&v145, *&v144, *&v143}];
        }

        identifier3 = [v28 identifier];
        [v22 removeObjectForKey:identifier3];

        *v35.i64 = ARVisionCameraToRenderingCoordinateTransform();
        v173 = v36;
        v178 = v35;
        v167 = v38;
        v170 = v37;
        [v24 visionTransform];
        v39 = 0;
        *buf = v40;
        *&buf[16] = v41;
        v198 = v42;
        v199 = v43;
        v200 = 0u;
        v201 = 0u;
        v202 = 0u;
        v203 = 0u;
        do
        {
          *(&v200 + v39) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v178, COERCE_FLOAT(*&buf[v39])), v173, *&buf[v39], 1), v170, *&buf[v39], 2), v167, *&buf[v39], 3);
          v39 += 16;
        }

        while (v39 != 64);
        v44 = 0;
        v45 = v200;
        v46 = v201;
        v47 = v202;
        v48 = v203;
        *buf = anchorsForCameraWithTransform_referenceOriginTransform_existingAnchors_anchorsToRemove__renderingToImageCoordinateTransform_0;
        *&buf[16] = anchorsForCameraWithTransform_referenceOriginTransform_existingAnchors_anchorsToRemove__renderingToImageCoordinateTransform_1;
        v198 = anchorsForCameraWithTransform_referenceOriginTransform_existingAnchors_anchorsToRemove__renderingToImageCoordinateTransform_2;
        v199 = anchorsForCameraWithTransform_referenceOriginTransform_existingAnchors_anchorsToRemove__renderingToImageCoordinateTransform_3;
        v200 = 0u;
        v201 = 0u;
        v202 = 0u;
        v203 = 0u;
        do
        {
          *(&v200 + v44) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v45, COERCE_FLOAT(*&buf[v44])), v46, *&buf[v44], 1), v47, *&buf[v44], 2), v48, *&buf[v44], 3);
          v44 += 16;
        }

        while (v44 != 64);
        v168 = v200;
        v171 = v201;
        v174 = v202;
        v179 = v203;
        detectionOnly2 = [self detectionOnly];
        if (!v27 || !detectionOnly2 || (LODWORD(v50) = anchorsForCameraWithTransform_referenceOriginTransform_existingAnchors_anchorsToRemove__s_percentThreshold, *&anchorsForCameraWithTransform_referenceOriginTransform_existingAnchors_anchorsToRemove__s_percentThreshold <= 0.0))
        {
          if ([self providesWorldTrackingCameraPose])
          {
            [v24 worldTrackingCameraTransformAtDetection];
            v115 = 0;
            *buf = v116;
            *&buf[16] = v117;
            v198 = v118;
            v199 = v119;
            v200 = 0u;
            v201 = 0u;
            v202 = 0u;
            v203 = 0u;
            do
            {
              *(&v200 + v115) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(remove, COERCE_FLOAT(*&buf[v115])), a7, *&buf[v115], 1), a8, *&buf[v115], 2), a9, *&buf[v115], 3);
              v115 += 16;
            }

            while (v115 != 64);
            v120 = 0;
            v121 = v200;
            v122 = v201;
            v123 = v202;
            v124 = v203;
            *buf = v168;
            *&buf[16] = v171;
            v198 = v174;
            v199 = v179;
            v200 = 0u;
            v201 = 0u;
            v202 = 0u;
            v203 = 0u;
            do
            {
              *(&v200 + v120) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v121, COERCE_FLOAT(*&buf[v120])), v122, *&buf[v120], 1), v123, *&buf[v120], 2), v124, *&buf[v120], 3);
              v120 += 16;
            }

            while (v120 != 64);
          }

          else
          {
            v125 = 0;
            *buf = v168;
            *&buf[16] = v171;
            v198 = v174;
            v199 = v179;
            v200 = 0u;
            v201 = 0u;
            v202 = 0u;
            v203 = 0u;
            do
            {
              *(&v200 + v125) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a2, COERCE_FLOAT(*&buf[v125])), transform, *&buf[v125], 1), originTransform, *&buf[v125], 2), anchors, *&buf[v125], 3);
              v125 += 16;
            }

            while (v125 != 64);
          }

          v111 = *v200.i64;
          v112 = *v201.i64;
          v113 = *&v202;
          v114 = *&v203;
          v110 = v28;
LABEL_54:
          [v110 setTransform:{v111, v112, v113, v114}];
          [v24 estimatedScaleFactor];
          [v28 setEstimatedScaleFactor:?];
          [v152 addObject:v28];
          goto LABEL_58;
        }

        [v24 worldTrackingCameraTransformAtDetection];
        v51 = 0;
        *buf = v52;
        *&buf[16] = v53;
        v198 = v54;
        v199 = v55;
        v200 = 0u;
        v201 = 0u;
        v202 = 0u;
        v203 = 0u;
        do
        {
          *(&v200 + v51) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(remove, COERCE_FLOAT(*&buf[v51])), a7, *&buf[v51], 1), a8, *&buf[v51], 2), a9, *&buf[v51], 3);
          v51 += 16;
        }

        while (v51 != 64);
        v163 = v200;
        v165 = v201;
        v161 = v202;
        v153 = v203;
        objc_msgSend_transform(v27);
        v159 = v57;
        v160 = v56;
        v157 = v59;
        v158 = v58;
        v60 = 0;
        *buf = v168;
        *&buf[16] = v171;
        v198 = v174;
        v199 = v179;
        v200 = 0u;
        v201 = 0u;
        v202 = 0u;
        v203 = 0u;
        do
        {
          *(&v200 + v60) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v163, COERCE_FLOAT(*&buf[v60])), v165, *&buf[v60], 1), v161, *&buf[v60], 2), v153, *&buf[v60], 3);
          v60 += 16;
        }

        while (v60 != 64);
        v166 = v201;
        v169 = v200;
        v162 = v203;
        v164 = v202;
        referenceImage3 = [v27 referenceImage];
        [referenceImage3 physicalSize];
        v63 = v62;

        referenceImage4 = [v27 referenceImage];
        [referenceImage4 physicalSize];
        v66 = v65;

        v67 = 0;
        v68 = v63 * -0.5;
        v69 = xmmword_1C25C8560;
        v70 = xmmword_1C25C8560;
        *&v70 = v68;
        v71 = v66 * -0.5;
        v72 = v70;
        *(&v72 + 2) = v71;
        v73 = v63 * 0.5;
        *&v69 = v73;
        v74 = v69;
        *(&v74 + 2) = v71;
        v75 = v66 * 0.5;
        *(&v69 + 2) = v75;
        v200 = v72;
        v201 = v74;
        *(&v70 + 2) = v75;
        v202 = v69;
        v203 = v70;
        v76 = 0.0;
        do
        {
          v77 = *(&v200 + v67);
          v78 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v160, v77.f32[0]), v159, *v77.f32, 1), v158, v77, 2), v157, v77, 3);
          v79 = vdivq_f32(v78, vdupq_laneq_s32(v78, 3)).u64[0];
          v80 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v169, v77.f32[0]), v166, *v77.f32, 1), v164, v77, 2), v162, v77, 3);
          v175 = *&v79;
          *&v180 = vdivq_f32(v80, vdupq_laneq_s32(v80, 3)).u64[0];
          currentCamera = [self currentCamera];
          currentCamera2 = [self currentCamera];
          [currentCamera2 imageResolution];
          [currentCamera projectPoint:3 orientation:v175 viewportSize:{v83, v84}];
          v172 = v86;
          v176 = v85;

          v87.f64[0] = v176;
          v87.f64[1] = v172;
          v88 = vcvt_f32_f64(v87);
          currentCamera3 = [self currentCamera];
          currentCamera4 = [self currentCamera];
          [currentCamera4 imageResolution];
          [currentCamera3 projectPoint:3 orientation:v180 viewportSize:{v91, v92}];
          v177 = v94;
          v181 = v93;

          v95.f64[0] = v181;
          v95.f64[1] = v177;
          *&v95.f64[0] = vsub_f32(v88, vcvt_f32_f64(v95));
          v76 = v76 + sqrtf(vaddv_f32(vmul_f32(*&v95.f64[0], *&v95.f64[0])));
          v67 += 16;
        }

        while (v67 != 64);
        currentCamera5 = [self currentCamera];
        [currentCamera5 imageResolution];
        v98 = v97;

        currentCamera6 = [self currentCamera];
        [currentCamera6 imageResolution];
        v101 = v100;

        if (v98 >= v101)
        {
          v103 = v101;
        }

        else
        {
          v103 = v98;
        }

        v104 = v103;
        v105 = *&anchorsForCameraWithTransform_referenceOriginTransform_existingAnchors_anchorsToRemove__s_percentThreshold * v104;
        v106 = _ARLogGeneral_18(v102);
        v107 = os_log_type_enabled(v106, OS_LOG_TYPE_DEBUG);
        v22 = v155;
        if (v76 > v105)
        {
          if (v107)
          {
            v108 = objc_opt_class();
            v109 = NSStringFromClass(v108);
            *buf = 138544130;
            *&buf[4] = v109;
            *&buf[12] = 2048;
            *&buf[14] = self;
            *&buf[22] = 2048;
            *&buf[24] = v76;
            LOWORD(v198) = 2048;
            *(&v198 + 2) = v105;
            _os_log_impl(&dword_1C241C000, v106, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Updated transform of image anchor as the sum of differences of image corners was greater than threshold. (%f > %f)", buf, 0x2Au);
          }

          v110 = v28;
          v112 = *v166.i64;
          v111 = *v169.i64;
          v114 = *v162.i64;
          v113 = *v164.i64;
          goto LABEL_54;
        }

        if (v107)
        {
          v126 = objc_opt_class();
          v127 = NSStringFromClass(v126);
          *buf = 138543618;
          *&buf[4] = v127;
          *&buf[12] = 2048;
          *&buf[14] = self;
          _os_log_impl(&dword_1C241C000, v106, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Did not update transform of image anchor", buf, 0x16u);
        }

LABEL_58:
      }

      v156 = [obj countByEnumeratingWithState:&v186 objects:v195 count:16];
    }

    while (v156);
  }

  v184 = 0u;
  v185 = 0u;
  v182 = 0u;
  v183 = 0u;
  allValues = [v22 allValues];
  v129 = [allValues countByEnumeratingWithState:&v182 objects:v194 count:16];
  v130 = v137;
  if (v129)
  {
    v131 = v129;
    v132 = *v183;
    do
    {
      for (k = 0; k != v131; ++k)
      {
        if (*v183 != v132)
        {
          objc_enumerationMutation(allValues);
        }

        v134 = *(*(&v182 + 1) + 8 * k);
        if ([v134 isTracked])
        {
          v135 = [v134 copyWithTrackedState:0];
          [v152 addObject:v135];
        }
      }

      v131 = [allValues countByEnumeratingWithState:&v182 objects:v194 count:16];
    }

    while (v131);
  }

  [v155 count];
  [v152 count];
  [v152 count];
  kdebug_trace();

  return v152;
}

float __117__ARImageDetectionResultData_anchorsForCameraWithTransform_referenceOriginTransform_existingAnchors_anchorsToRemove___block_invoke()
{
  anchorsForCameraWithTransform_referenceOriginTransform_existingAnchors_anchorsToRemove__renderingToImageCoordinateTransform_0 = xmmword_1C25C9020;
  anchorsForCameraWithTransform_referenceOriginTransform_existingAnchors_anchorsToRemove__renderingToImageCoordinateTransform_1 = xmmword_1C25C9030;
  anchorsForCameraWithTransform_referenceOriginTransform_existingAnchors_anchorsToRemove__renderingToImageCoordinateTransform_2 = xmmword_1C25C9040;
  anchorsForCameraWithTransform_referenceOriginTransform_existingAnchors_anchorsToRemove__renderingToImageCoordinateTransform_3 = xmmword_1C25C8560;
  [ARKitUserDefaults floatForKey:@"com.apple.arkit.imagedetection.percentageThresholdPixels"];
  result = v0 / 100.0;
  anchorsForCameraWithTransform_referenceOriginTransform_existingAnchors_anchorsToRemove__s_percentThreshold = LODWORD(result);
  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_opt_class() allocWithZone:zone];
  detectedImages = [(ARImageDetectionResultData *)self detectedImages];
  v7 = [detectedImages copyWithZone:zone];
  v8 = *(v5 + 32);
  *(v5 + 32) = v7;

  *(v5 + 10) = [(ARImageDetectionResultData *)self providesWorldTrackingCameraPose];
  *(v5 + 8) = [(ARImageDetectionResultData *)self detectionOnly];
  currentCamera = [(ARImageDetectionResultData *)self currentCamera];
  v10 = [currentCamera copyWithZone:zone];
  v11 = *(v5 + 24);
  *(v5 + 24) = v10;

  *(v5 + 9) = self->_predicted;
  *(v5 + 16) = self->_timestamp;
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    detectedImages = [v5 detectedImages];
    detectedImages2 = [(ARImageDetectionResultData *)self detectedImages];
    if ([detectedImages isEqual:detectedImages2] && (v8 = v5[8], v8 == -[ARImageDetectionResultData detectionOnly](self, "detectionOnly")) && (v9 = v5[10], v9 == -[ARImageDetectionResultData providesWorldTrackingCameraPose](self, "providesWorldTrackingCameraPose")))
    {
      currentCamera = [v5 currentCamera];
      currentCamera2 = [(ARImageDetectionResultData *)self currentCamera];
      if ([currentCamera isEqual:currentCamera2] && self->_predicted == objc_msgSend(v5, "predicted"))
      {
        objc_msgSend_timestamp(v5);
        v13 = v12 == self->_timestamp;
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (NSString)description
{
  v2 = MEMORY[0x1E696AEC0];
  tracingEntry = [(ARImageDetectionResultData *)self tracingEntry];
  v4 = [v2 stringWithFormat:@"%@", tracingEntry];

  return v4;
}

- (NSDictionary)tracingEntry
{
  v42 = *MEMORY[0x1E69E9840];
  v3 = ARQATraceableDefaultEntryForResultData(self);
  v33 = [v3 mutableCopy];

  v35 = objc_opt_new();
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = [(ARImageDetectionResultData *)self detectedImages];
  v4 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v37;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v37 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v36 + 1) + 8 * i);
        v9 = objc_opt_new();
        v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v8, "odtObjectIdentifer")}];
        [v9 setObject:v10 forKeyedSubscript:@"odtObjectIdentifer"];

        referenceImage = [v8 referenceImage];
        identifier = [referenceImage identifier];
        uUIDString = [identifier UUIDString];
        [v9 setObject:uUIDString forKeyedSubscript:@"imageIdentifier"];

        [v8 visionTransform];
        v14 = [ARQAHelper arrayWithMatrix4x4:?];
        [v9 setObject:v14 forKeyedSubscript:@"transform"];

        [v8 visionTransform];
        v19 = ARMatrix4x4Description(0, v15, v16, v17, v18);
        [v9 setObject:v19 forKeyedSubscript:@"transformString"];

        referenceImage2 = [v8 referenceImage];
        name = [referenceImage2 name];
        [v9 setObject:name forKeyedSubscript:@"referenceImageName"];

        v22 = MEMORY[0x1E696AD98];
        referenceImage3 = [v8 referenceImage];
        [referenceImage3 physicalSize];
        *&v24 = v24;
        v25 = [v22 numberWithFloat:v24];
        v40[0] = v25;
        v26 = MEMORY[0x1E696AD98];
        referenceImage4 = [v8 referenceImage];
        [referenceImage4 physicalSize];
        *&v29 = v28;
        v30 = [v26 numberWithFloat:v29];
        v40[1] = v30;
        v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:2];
        [v9 setObject:v31 forKeyedSubscript:@"referenceImageSize"];

        [v35 addObject:v9];
      }

      v5 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v5);
  }

  [v33 setObject:v35 forKeyedSubscript:@"detectedImages"];

  return v33;
}

@end