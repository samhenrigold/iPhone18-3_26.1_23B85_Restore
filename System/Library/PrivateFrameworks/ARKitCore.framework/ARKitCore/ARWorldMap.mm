@interface ARWorldMap
+ (NSObject)keyframesForTrackingData:(double)data withFeaturePoints:(double)points referenceOriginTransform:(double)transform;
+ (__n64)boundsForTrackingData:(uint64_t)data;
+ (id)featurePointsForTrackingData:(float32x4_t)data referenceOriginTransform:(float32x4_t)transform;
- (ARWorldMap)initWithCoder:(id)coder;
- (ARWorldMap)initWithTrackingData:(__n128)data referenceOriginTransform:(__n128)transform;
- (BOOL)isEqual:(id)equal;
- (NSObject)extractReferenceObjectWithTransform:(__n128)transform center:(float64x2_t)center extent:(__n128)extent error:(float32x4_t)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ARWorldMap

- (ARWorldMap)initWithTrackingData:(__n128)data referenceOriginTransform:(__n128)transform
{
  v8 = a7;
  v25.receiver = self;
  v25.super_class = ARWorldMap;
  v9 = [(ARWorldMap *)&v25 init];
  if (v9)
  {
    v10 = [objc_opt_class() featurePointsForTrackingData:v8 referenceOriginTransform:{a2.n128_f64[0], data.n128_f64[0], transform.n128_f64[0], a5.n128_f64[0]}];
    [(ARPointCloud *)v10 computeBounds];
    v19 = v12;
    v20 = v11;
    v9->_version = 3;
    v13 = [v8 copy];
    trackingData = v9->_trackingData;
    v9->_trackingData = v13;

    *&v9[1].super.isa = a2;
    *&v9[1]._rawFeaturePoints = data;
    *&v9[1]._trackingData = transform;
    *v9[1]._center = a5;
    rawFeaturePoints = v9->_rawFeaturePoints;
    v9->_rawFeaturePoints = v10;
    v16 = v10;

    *v9->_center = v20;
    *v9->_extent = v19;
    anchors = v9->_anchors;
    v9->_anchors = MEMORY[0x1E695E0F0];
  }

  return v9;
}

- (NSObject)extractReferenceObjectWithTransform:(__n128)transform center:(float64x2_t)center extent:(__n128)extent error:(float32x4_t)error
{
  v85 = *MEMORY[0x1E69E9840];
  v11 = objc_opt_new();
  [self referenceOriginTransform];
  v88 = __invert_f4(v87);
  v12 = 0;
  *buf = a2;
  *&buf[16] = transform;
  centerCopy = center;
  extentCopy = extent;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  do
  {
    *(&v78 + v12) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v88.columns[0], COERCE_FLOAT(*&buf[v12])), v88.columns[1], *&buf[v12], 1), v88.columns[2], *&buf[v12], 2), v88.columns[3], *&buf[v12], 3);
    v12 += 16;
  }

  while (v12 != 64);
  v69 = v78;
  *v13.f32 = ARInnerScaleFromMatrix(v78, v79);
  v60 = v13;
  *v14.i64 = ARNormalizedTransform(v69);
  v74 = v15;
  v76 = v14;
  v70 = v17;
  v72 = v16;
  *v18.i64 = ARRenderingToVisionCoordinateTransform();
  v22 = 0;
  *buf = v76;
  *&buf[16] = v74;
  centerCopy = v72;
  extentCopy = v70;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  do
  {
    *(&v78 + v22) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v18, COERCE_FLOAT(*&buf[v22])), v19, *&buf[v22], 1), v20, *&buf[v22], 2), v21, *&buf[v22], 3);
    v22 += 16;
  }

  while (v22 != 64);
  v56 = v79;
  v58 = v78;
  v52 = v81;
  v54 = v80;
  *&v23 = ARVisionToRenderingCoordinateTransform();
  v24 = 0;
  *buf = v23;
  *&buf[16] = v25;
  centerCopy = v26;
  extentCopy = v27;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  do
  {
    *(&v78 + v24) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v58, COERCE_FLOAT(*&buf[v24])), v56, *&buf[v24], 1), v54, *&buf[v24], 2), v52, *&buf[v24], 3);
    v24 += 16;
  }

  while (v24 != 64);
  v57 = v80;
  v59 = v81;
  v53 = v78;
  v55 = v79;
  v28.i64[0] = 0x3F0000003F000000;
  v28.i64[1] = 0x3F0000003F000000;
  v29 = vmulq_f32(a7, v28);
  v62 = vmulq_f32(vsubq_f32(error, v29), v60);
  v66 = vmulq_f32(vaddq_f32(error, v29), v60);
  *v30.i64 = ARRenderingToVisionCoordinateTransform();
  v63 = vaddq_f32(v33, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v30, v62.f32[0]), v31, *v62.f32, 1), v32, v62, 2));
  *v34.i64 = ARRenderingToVisionCoordinateTransform();
  v38 = vaddq_f32(v37, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v34, v66.f32[0]), v35, *v66.f32, 1), v36, v66, 2));
  v39 = vdivq_f32(v63, vdupq_laneq_s32(v63, 3));
  v40 = vdivq_f32(v38, vdupq_laneq_s32(v38, 3));
  v39.i32[3] = 0;
  v40.i32[3] = 0;
  v64 = vminnmq_f32(v39, v40);
  v67 = vmaxnmq_f32(v39, v40);
  trackingData = [self trackingData];
  *buf = *v64.i32;
  *&buf[8] = vcvtq_f64_f32(*&vextq_s8(v64, v64, 4uLL));
  *&buf[24] = *v67.i32;
  centerCopy = vcvtq_f64_f32(*&vextq_s8(v67, v67, 4uLL));
  v42 = CV3DVIOExtractObjectMap();

  if (v42)
  {
    v44 = _ARLogGeneral_29(v43);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      v45 = objc_opt_class();
      v46 = NSStringFromClass(v45);
      v47 = NSStringFromCV3DVIOReturn(v42);
      *buf = 138543874;
      *&buf[4] = v46;
      *&buf[12] = 2048;
      *&buf[14] = self;
      *&buf[22] = 2114;
      *&buf[24] = v47;
      _os_log_impl(&dword_1C241C000, v44, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Error extracting reference object: %{public}@", buf, 0x20u);
    }
  }

  else
  {
    v48 = [ARReferenceObject alloc];
    v89.columns[1] = v74;
    v89.columns[0] = v76;
    v89.columns[3] = v70;
    v89.columns[2] = v72;
    v90 = __invert_f4(v89);
    v44 = [(ARReferenceObject *)v48 initWithTrackingData:v11 referenceOriginTransform:*v90.columns[0].i64, *v90.columns[1].i64, *v90.columns[2].i64, *v90.columns[3].i64];
    rawFeaturePoints = [v44 rawFeaturePoints];
    v50 = [rawFeaturePoints count];

    if (v50 >= 0x33)
    {

      goto LABEL_15;
    }
  }

  if (a9)
  {
    ARErrorWithCodeAndUserInfo(400, 0);
    *a9 = v44 = 0;
  }

  else
  {
    v44 = 0;
  }

LABEL_15:

  return v44;
}

- (unint64_t)hash
{
  trackingData = [(ARWorldMap *)self trackingData];
  v3 = [trackingData hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    if (AREqualTransforms(*&self[1].super.isa, *&self[1]._rawFeaturePoints, *&self[1]._trackingData, *self[1]._center, v5[5], v5[6], v5[7], v5[8]) && [(NSArray *)self->_anchors isEqual:v5->i64[1]]&& ((surfaceData = self->_surfaceData, surfaceData == v5[2].i64[1]) || [(NSData *)surfaceData isEqual:?]))
    {
      trackingData = self->_trackingData;
      trackingData = [(float32x4_t *)v5 trackingData];
      v9 = [(NSData *)trackingData isEqual:trackingData];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (v5)
  {
    *(v5 + 24) = self->_version;
    v7 = [(NSData *)self->_trackingData copyWithZone:zone];
    v8 = *(v6 + 32);
    *(v6 + 32) = v7;

    v9 = *&self[1].super.isa;
    v10 = *&self[1]._rawFeaturePoints;
    v11 = *self[1]._center;
    *(v6 + 112) = *&self[1]._trackingData;
    *(v6 + 128) = v11;
    *(v6 + 80) = v9;
    *(v6 + 96) = v10;
    objc_storeStrong((v6 + 16), self->_rawFeaturePoints);
    *(v6 + 48) = *self->_center;
    *(v6 + 64) = *self->_extent;
    v12 = [(NSData *)self->_surfaceData copyWithZone:zone];
    v13 = *(v6 + 40);
    *(v6 + 40) = v12;

    v14 = [(NSArray *)self->_anchors copyWithZone:zone];
    v15 = *(v6 + 8);
    *(v6 + 8) = v14;
  }

  return v6;
}

- (id)description
{
  anchors = [(ARWorldMap *)self anchors];
  if ([anchors count] == 1)
  {
    v4 = @"1 anchor";
  }

  else
  {
    v5 = MEMORY[0x1E696AEC0];
    anchors2 = [(ARWorldMap *)self anchors];
    v4 = [v5 stringWithFormat:@"%d anchors", objc_msgSend(anchors2, "count")];
  }

  v7 = MEMORY[0x1E696AEC0];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  [(ARWorldMap *)self center];
  v11 = ARVector3Description(v10);
  [(ARWorldMap *)self extent];
  v13 = ARVector3Description(v12);
  rawFeaturePoints = [(ARWorldMap *)self rawFeaturePoints];
  v15 = [v7 stringWithFormat:@"<%@: %p center=%@ extent=%@ | %@, %d features>", v9, self, v11, v13, v4, objc_msgSend(rawFeaturePoints, "count")];

  return v15;
}

- (void)encodeWithCoder:(id)coder
{
  v19 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  [coderCopy encodeInteger:-[ARWorldMap version](self forKey:{"version"), @"version"}];
  trackingData = [(ARWorldMap *)self trackingData];
  [coderCopy encodeObject:trackingData forKey:@"trackingData"];

  surfaceData = [(ARWorldMap *)self surfaceData];
  [coderCopy encodeObject:surfaceData forKey:@"surfaceData"];

  [(ARWorldMap *)self referenceOriginTransform];
  [coderCopy ar_encodeMatrix4x4:@"referenceOriginTransform" forKey:?];
  array = [MEMORY[0x1E695DF70] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  anchors = [(ARWorldMap *)self anchors];
  v9 = [anchors countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(anchors);
        }

        v13 = *(*(&v14 + 1) + 8 * v12);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [array addObject:v13];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [anchors countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  [coderCopy encodeObject:array forKey:@"anchors"];
}

- (ARWorldMap)initWithCoder:(id)coder
{
  v34 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"version"];
  if (v5 >= 4)
  {
    v6 = ARErrorWithCodeAndUserInfo(302, 0);
    [coderCopy failWithError:v6];

    v8 = _ARLogGeneral_29(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      *buf = 138543874;
      v29 = v10;
      v30 = 2048;
      selfCopy2 = self;
      v32 = 2048;
      v33 = v5;
      _os_log_impl(&dword_1C241C000, v8, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Error loading map: Unsupported map version (%ld)", buf, 0x20u);
    }

LABEL_14:
    selfCopy3 = 0;
    goto LABEL_15;
  }

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"trackingData"];
  if (!v8)
  {
    v22 = ARErrorWithCodeAndUserInfo(302, 0);
    [coderCopy failWithError:v22];

    v24 = _ARLogGeneral_29(v23);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      *buf = 138543618;
      v29 = v26;
      v30 = 2048;
      selfCopy2 = self;
      _os_log_impl(&dword_1C241C000, v24, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Error loading map: Malformed map data", buf, 0x16u);
    }

    goto LABEL_14;
  }

  [coderCopy ar_decodeMatrix4x4ForKey:@"referenceOriginTransform"];
  v11 = [(ARWorldMap *)self initWithTrackingData:v8 referenceOriginTransform:?];
  v12 = v11;
  if (v11)
  {
    v11->_version = v5;
    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"surfaceData"];
    surfaceData = v12->_surfaceData;
    v12->_surfaceData = v13;

    v15 = MEMORY[0x1E695DFD8];
    v16 = objc_opt_class();
    v17 = [v15 setWithObjects:{v16, objc_opt_class(), 0}];
    v18 = [coderCopy decodeObjectOfClasses:v17 forKey:@"anchors"];
    v19 = v18;
    if (v18)
    {
      v20 = v18;
    }

    else
    {
      v20 = MEMORY[0x1E695E0F0];
    }

    objc_storeStrong(&v12->_anchors, v20);
  }

  self = v12;
  selfCopy3 = self;
LABEL_15:

  return selfCopy3;
}

+ (id)featurePointsForTrackingData:(float32x4_t)data referenceOriginTransform:(float32x4_t)transform
{
  v40 = *MEMORY[0x1E69E9840];
  v8 = a7;
  v9 = objc_opt_new();
  v10 = CV3DVIOCreatePointsFromMap();
  if (v10)
  {
    v11 = v10;
    if (ARShouldUseLogTypeError_onceToken_37 != -1)
    {
      +[ARWorldMap featurePointsForTrackingData:referenceOriginTransform:];
    }

    v12 = ARShouldUseLogTypeError_internalOSVersion_37;
    v13 = _ARLogGeneral_29(v10);
    v14 = v13;
    if (v12 == 1)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v15 = objc_opt_class();
        v16 = NSStringFromClass(v15);
        v17 = NSStringFromCV3DVIOReturn(v11);
        *buf = 138543874;
        *&buf[4] = v16;
        *&buf[12] = 2048;
        *&buf[14] = self;
        *&buf[22] = 2114;
        *&buf[24] = v17;
        v18 = "%{public}@ <%p>: Failed to parse feature points: %{public}@";
        p_super = &v14->super;
        v20 = OS_LOG_TYPE_ERROR;
LABEL_13:
        _os_log_impl(&dword_1C241C000, p_super, v20, v18, buf, 0x20u);
      }
    }

    else if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v27 = objc_opt_class();
      v16 = NSStringFromClass(v27);
      v17 = NSStringFromCV3DVIOReturn(v11);
      *buf = 138543874;
      *&buf[4] = v16;
      *&buf[12] = 2048;
      *&buf[14] = self;
      *&buf[22] = 2114;
      *&buf[24] = v17;
      v18 = "Error: %{public}@ <%p>: Failed to parse feature points: %{public}@";
      p_super = &v14->super;
      v20 = OS_LOG_TYPE_INFO;
      goto LABEL_13;
    }

LABEL_17:

    v26 = +[ARPointCloud emptyPointCloud];
    goto LABEL_18;
  }

  v14 = [[ARPointCloud alloc] initWithPointData:v9];
  if (![(ARPointCloud *)v14 count])
  {
    v28 = _ARLogGeneral_29(0);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      v29 = objc_opt_class();
      v30 = NSStringFromClass(v29);
      *buf = 138543618;
      *&buf[4] = v30;
      *&buf[12] = 2048;
      *&buf[14] = self;
      _os_log_impl(&dword_1C241C000, v28, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Warning: Zero feature points in map.", buf, 0x16u);
    }

    goto LABEL_17;
  }

  *&v21 = ARVisionToRenderingCoordinateTransform();
  v22 = 0;
  v36[0] = v21;
  v36[1] = v23;
  v36[2] = v24;
  v36[3] = v25;
  memset(buf, 0, sizeof(buf));
  v38 = 0u;
  *v39 = 0u;
  do
  {
    *&buf[v22 * 16] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a2, COERCE_FLOAT(v36[v22])), data, *&v36[v22], 1), transform, v36[v22], 2), a5, v36[v22], 3);
    ++v22;
  }

  while (v22 != 4);
  v26 = [(ARPointCloud *)v14 pointCloudByApplyingTransform:*buf, *&buf[16], *&v38, v39[0]];

LABEL_18:

  return v26;
}

+ (__n64)boundsForTrackingData:(uint64_t)data
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = CV3DVIOGetMapBounds();
  if (!v4)
  {
    v5.f64[0] = 0.0;
    v6.f64[0] = 0.0;
    __asm { FMOV            V6.2D, #0.5 }

    v22 = vmulq_f64(vaddq_f64(v5, v6), _Q6).f64[0];
    v23 = COERCE_DOUBLE(*&vmulq_f64(vaddq_f64(0, 0), _Q6).f64[1]);
    result.n64_f32[0] = -v23;
    *&v22 = v22;
    result.n64_u32[1] = LODWORD(v22);
    return result;
  }

  v7 = v4;
  if (ARShouldUseLogTypeError_onceToken_37 != -1)
  {
    +[ARWorldMap boundsForTrackingData:];
  }

  v8 = ARShouldUseLogTypeError_internalOSVersion_37;
  v9 = _ARLogGeneral_29(v4);
  v10 = v9;
  if (v8 == 1)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = NSStringFromCV3DVIOReturn(v7);
      *buf = 138543874;
      v27 = v12;
      v28 = 2048;
      selfCopy2 = self;
      v30 = 2114;
      v31 = v13;
      v14 = "%{public}@ <%p>: Failed to parse bounds: %{public}@";
      v15 = v10;
      v16 = OS_LOG_TYPE_ERROR;
LABEL_10:
      _os_log_impl(&dword_1C241C000, v15, v16, v14, buf, 0x20u);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v25 = objc_opt_class();
    v12 = NSStringFromClass(v25);
    v13 = NSStringFromCV3DVIOReturn(v7);
    *buf = 138543874;
    v27 = v12;
    v28 = 2048;
    selfCopy2 = self;
    v30 = 2114;
    v31 = v13;
    v14 = "Error: %{public}@ <%p>: Failed to parse bounds: %{public}@";
    v15 = v10;
    v16 = OS_LOG_TYPE_INFO;
    goto LABEL_10;
  }

  return 0;
}

+ (NSObject)keyframesForTrackingData:(double)data withFeaturePoints:(double)points referenceOriginTransform:(double)transform
{
  v62 = *MEMORY[0x1E69E9840];
  v10 = a7;
  v11 = a8;
  v49 = 0;
  v50 = 0;
  v46 = 0;
  v47 = &v46;
  v48 = 0x2020000000;
  v12 = CV3DVIOCreateKeyframesFromMap();
  v13 = v12;
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v42 = __82__ARWorldMap_keyframesForTrackingData_withFeaturePoints_referenceOriginTransform___block_invoke;
  v43 = &unk_1E817D868;
  v44 = &v46;
  v45 = v50;
  if (v12)
  {
    if (ARShouldUseLogTypeError_onceToken_37 != -1)
    {
      +[ARWorldMap boundsForTrackingData:];
    }

    v14 = ARShouldUseLogTypeError_internalOSVersion_37;
    v15 = _ARLogGeneral_29(v12);
    v16 = v15;
    if (v14 == 1)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v17 = objc_opt_class();
        v18 = NSStringFromClass(v17);
        v19 = NSStringFromCV3DVIOReturn(v13);
        *buf = 138543874;
        *&buf[4] = v18;
        *&buf[12] = 2048;
        *&buf[14] = self;
        *&buf[22] = 2114;
        *&buf[24] = v19;
        _os_log_impl(&dword_1C241C000, v16, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Failed to parse keyframes: %{public}@", buf, 0x20u);
      }
    }

    else if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v33 = objc_opt_class();
      v34 = NSStringFromClass(v33);
      v35 = NSStringFromCV3DVIOReturn(v13);
      *buf = 138543874;
      *&buf[4] = v34;
      *&buf[12] = 2048;
      *&buf[14] = self;
      *&buf[22] = 2114;
      *&buf[24] = v35;
      _os_log_impl(&dword_1C241C000, v16, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Failed to parse keyframes: %{public}@", buf, 0x20u);
    }
  }

  else
  {
    v16 = objc_opt_new();
    if (v50)
    {
      v20 = 0;
      for (i = 0; i < v50; ++i)
      {
        v61 = 0;
        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        *&buf[16] = 0u;
        v52 = 0u;
        *buf = 0u;
        v22 = (v47[3] + v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v22[2];
        v53 = v22[3];
        *&buf[16] = v24;
        v52 = v25;
        v26 = v22[7];
        v28 = v22[4];
        v27 = v22[5];
        v56 = v22[6];
        v57 = v26;
        v54 = v28;
        v55 = v27;
        v30 = v22[9];
        v29 = v22[10];
        v31 = v22[8];
        v61 = *(v22 + 22);
        v59 = v30;
        v60 = v29;
        v58 = v31;
        *buf = v23;
        transform = [[ARKeyFrame alloc] initWithKeyframeData:buf featurePoints:v11 referenceOriginTransform:a2, data, points, transform];
        [v16 addObject:transform];

        v20 += 184;
      }
    }
  }

  v42(v41);
  _Block_object_dispose(&v46, 8);
  if (v13)
  {
    v16 = objc_opt_new();
  }

  return v16;
}

@end