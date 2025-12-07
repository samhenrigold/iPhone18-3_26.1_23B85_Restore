@interface ARAppClipCodeResultData
- (ARAppClipCodeResultData)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (id)anchorsForCameraWithTransform:(double)transform referenceOriginTransform:(double)originTransform existingAnchors:(double)anchors anchorsToRemove:(float32x4_t)remove;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation ARAppClipCodeResultData

- (id)anchorsForCameraWithTransform:(double)transform referenceOriginTransform:(double)originTransform existingAnchors:(double)anchors anchorsToRemove:(float32x4_t)remove
{
  v121 = *MEMORY[0x1E69E9840];
  v13 = a11;
  v78 = a12;
  v14 = objc_opt_new();
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  v15 = v13;
  v16 = [v15 countByEnumeratingWithState:&v106 objects:v117 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v107;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v107 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v106 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v21 = v20;
          instanceID = [v21 instanceID];
          [v14 setObject:v21 forKey:instanceID];
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v106 objects:v117 count:16];
    }

    while (v17);
  }

  v76 = v15;

  v87 = objc_opt_new();
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  v105 = 0u;
  selfCopy3 = self;
  obj = [*(self + 8) allKeys];
  v80 = v14;
  v86 = [obj countByEnumeratingWithState:&v102 objects:v116 count:16];
  if (v86)
  {
    v81 = *v103;
    do
    {
      v24 = 0;
      do
      {
        if (*v103 != v81)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v102 + 1) + 8 * v24);
        v26 = [*(selfCopy3 + 8) objectForKeyedSubscript:v25];
        v27 = [v14 objectForKeyedSubscript:v25];
        v28 = v27;
        if (v27)
        {
          v29 = [v27 url];
          if (v29)
          {
            v30 = v29;
            v31 = [v26 url];
            if (!v31)
            {
              goto LABEL_28;
            }

            v32 = v31;
            v33 = [v28 url];
            v34 = [v26 url];

            v36 = v33 == v34;
            selfCopy3 = self;
            v14 = v80;
            if (!v36)
            {
              if (ARShouldUseLogTypeError_onceToken_28 != -1)
              {
                [ARAppClipCodeResultData anchorsForCameraWithTransform:referenceOriginTransform:existingAnchors:anchorsToRemove:];
              }

              v37 = ARShouldUseLogTypeError_internalOSVersion_28;
              v38 = _ARLogGeneral_16(v35);
              v30 = v38;
              if (v37 == 1)
              {
                if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
                {
                  v39 = [v28 url];
                  v40 = [v26 url];
                  *buf = 138412546;
                  *&buf[4] = v39;
                  *&buf[12] = 2112;
                  *&buf[14] = v40;
                  v41 = v30;
                  v42 = OS_LOG_TYPE_ERROR;
                  v43 = "ARAppClipCodeResultData: URL of app clip code instance changed from %@ to %@. This should not happen.";
                  goto LABEL_27;
                }
              }

              else if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
              {
                v39 = [v28 url];
                v40 = [v26 url];
                *buf = 138412546;
                *&buf[4] = v39;
                *&buf[12] = 2112;
                *&buf[14] = v40;
                v41 = v30;
                v42 = OS_LOG_TYPE_INFO;
                v43 = "Error: ARAppClipCodeResultData: URL of app clip code instance changed from %@ to %@. This should not happen.";
LABEL_27:
                _os_log_impl(&dword_1C241C000, v41, v42, v43, buf, 0x16u);

                selfCopy3 = self;
              }

LABEL_28:
            }
          }

          v44 = [v28 copyWithAppClipCodeResult:v26 isTracked:1];
          goto LABEL_30;
        }

        v44 = [[ARAppClipCodeAnchor alloc] initWithAppClipCodeResult:v26 instanceID:v25];
LABEL_30:
        v45 = v44;
        [v26 codeToWorldVisionTransform];
        v50 = 0;
        v110 = xmmword_1C25C9020;
        v111 = xmmword_1C25C9030;
        v112 = xmmword_1C25C9040;
        v113 = xmmword_1C25C8560;
        memset(buf, 0, sizeof(buf));
        v119 = 0u;
        v120 = 0u;
        do
        {
          *&buf[v50] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v46, COERCE_FLOAT(*(&v110 + v50))), v47, *(&v110 + v50), 1), v48, *(&v110 + v50), 2), v49, *(&v110 + v50), 3);
          v50 += 16;
        }

        while (v50 != 64);
        *v90 = *&buf[16];
        v92 = *buf;
        v88 = v120;
        v89 = v119;
        *&v51 = ARVisionToRenderingCoordinateTransform();
        v52 = 0;
        v110 = v51;
        v111 = v53;
        v112 = v54;
        v113 = v55;
        memset(buf, 0, sizeof(buf));
        v119 = 0u;
        v120 = 0u;
        do
        {
          *&buf[v52] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(remove, COERCE_FLOAT(*(&v110 + v52))), a7, *(&v110 + v52), 1), a8, *(&v110 + v52), 2), a9, *(&v110 + v52), 3);
          v52 += 16;
        }

        while (v52 != 64);
        v56 = 0;
        v57 = *buf;
        v58 = *&buf[16];
        v59 = v119;
        v60 = v120;
        v110 = v92;
        v111 = *v90;
        v112 = v89;
        v113 = v88;
        memset(buf, 0, sizeof(buf));
        v119 = 0u;
        v120 = 0u;
        do
        {
          *&buf[v56] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v57, COERCE_FLOAT(*(&v110 + v56))), v58, *(&v110 + v56), 1), v59, *(&v110 + v56), 2), v60, *(&v110 + v56), 3);
          v56 += 16;
        }

        while (v56 != 64);
        [(ARAnchor *)v45 setTransform:*buf, *&buf[16], *v119.i64, *v120.i64];
        if (v45)
        {
          [v87 addObject:v45];
          [v14 removeObjectForKey:v25];
        }

        ++v24;
      }

      while (v24 != v86);
      v86 = [obj countByEnumeratingWithState:&v102 objects:v116 count:16];
    }

    while (v86);
  }

  v93 = [v87 copy];
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  allValues = [v14 allValues];
  v61 = [allValues countByEnumeratingWithState:&v98 objects:v115 count:16];
  if (v61)
  {
    v62 = v61;
    v63 = *v99;
    do
    {
      for (j = 0; j != v62; ++j)
      {
        if (*v99 != v63)
        {
          objc_enumerationMutation(allValues);
        }

        v65 = *(*(&v98 + 1) + 8 * j);
        v66 = [v65 url];

        if (v66)
        {
          v96 = 0u;
          v97 = 0u;
          v94 = 0u;
          v95 = 0u;
          v67 = v93;
          v68 = [v67 countByEnumeratingWithState:&v94 objects:v114 count:16];
          if (v68)
          {
            v69 = v68;
            v70 = *v95;
            while (2)
            {
              for (k = 0; k != v69; ++k)
              {
                if (*v95 != v70)
                {
                  objc_enumerationMutation(v67);
                }

                v72 = [*(*(&v94 + 1) + 8 * k) url];
                v73 = [v65 url];

                if (v72 == v73)
                {

                  [v78 addObject:v65];
                  v14 = v80;
                  goto LABEL_57;
                }
              }

              v69 = [v67 countByEnumeratingWithState:&v94 objects:v114 count:16];
              if (v69)
              {
                continue;
              }

              break;
            }
          }

          v14 = v80;
        }

        v74 = [v65 copyWithTrackedState:0];
        [v87 addObject:v74];

LABEL_57:
        ;
      }

      v62 = [allValues countByEnumeratingWithState:&v98 objects:v115 count:16];
    }

    while (v62);
  }

  return v87;
}

- (ARAppClipCodeResultData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = ARAppClipCodeResultData;
  v5 = [(ARAppClipCodeResultData *)&v13 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"trackedAppClipCodes"];
    trackedAppClipCodes = v5->_trackedAppClipCodes;
    v5->_trackedAppClipCodes = v10;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSDictionary *)self->_trackedAppClipCodes copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    trackedAppClipCodes = [equalCopy trackedAppClipCodes];
    trackedAppClipCodes2 = [(ARAppClipCodeResultData *)self trackedAppClipCodes];
    v7 = [trackedAppClipCodes isEqual:trackedAppClipCodes2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end