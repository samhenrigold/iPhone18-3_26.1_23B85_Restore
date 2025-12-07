@interface OUObjectCompleteness
- (BOOL)checkBoxFaceCompleteness:(uint64_t)completeness faceIndex:(int)index boxType:(void *)type pointCloud:(void *)cloud;
- (BOOL)isPointInCameraView:(simd_float4)view cameraPose:(simd_float4)pose camera:(simd_float4)camera marginRatio:(float)ratio;
- (void)updateRawCornersStatus:(float32x4_t)status withOldObjects:(float32x4_t)objects cameraPose:(double)pose camera:(uint64_t)camera;
- (void)updateRawCornersStatusNoTimer:(float32x4_t)timer withOldObjects:(float32x4_t)objects cameraPose:(double)pose camera:(uint64_t)camera;
- (void)updateRawFacesStatus:(double)status withOldObjects:(double)objects pointCloud:(double)cloud cameraPose:(uint64_t)pose camera:(void *)camera;
@end

@implementation OUObjectCompleteness

- (BOOL)isPointInCameraView:(simd_float4)view cameraPose:(simd_float4)pose camera:(simd_float4)camera marginRatio:(float)ratio
{
  v29.columns[2] = pose;
  v29.columns[3] = camera;
  v29.columns[0] = a2;
  v29.columns[1] = view;
  v10 = a9;
  v36 = __invert_f4(v29);
  v35 = vaddq_f32(v36.columns[3], vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v36.columns[0], self.f32[0]), v36.columns[1], *self.f32, 1), v36.columns[2], self, 2));
  v27 = 0;
  if (v35.f32[2] > 0.01)
  {
    [v10 intrinsics];
    v33 = v11;
    [v10 intrinsics];
    v32 = v12;
    [v10 intrinsics];
    v31 = v13;
    [v10 intrinsics];
    [v10 imageResolution];
    v16 = v15;
    [v10 imageResolution];
    v18 = v17;
    v19 = (vmuls_n_f32(v35.f32[0], v33) / v35.f32[2]) + v32;
    ratioCopy = ratio;
    v21 = v16 * ratio;
    if (v19 >= v21)
    {
      [v10 imageResolution];
      v22 = (vmuls_lane_f32(v35.f32[1], v31, 1) / v35.f32[2]) + v30;
      v23 = v18 * ratioCopy;
      if (v24 - v21 > v19 && v22 >= v23)
      {
        [v10 imageResolution];
        if (v26 - v23 > v22)
        {
          v27 = 1;
        }
      }
    }
  }

  return v27;
}

- (void)updateRawCornersStatusNoTimer:(float32x4_t)timer withOldObjects:(float32x4_t)objects cameraPose:(double)pose camera:(uint64_t)camera
{
  v64 = a7;
  v62 = a8;
  v11 = a9;
  v12 = vaddq_f32(objects, vmlaq_f32(vmulq_f32(a2, 0), 0, timer)).u64[0];
  v13 = 1.57079633 - atan2f(*(&v12 + 1), *&v12);
  v14.i64[0] = 0;
  v14.i32[2] = 0;
  *&v14.i32[3] = -*&pose;
  v15.i64[0] = 0;
  v15.i32[2] = 0;
  *&v15.i32[3] = -*(&pose + 1);
  v16 = vzip2q_s32(v14, xmmword_25D277BC0);
  v17 = vzip2q_s32(v15, xmmword_25D277B90);
  v68 = vzip2q_s32(v16, v17);
  v70 = vzip1q_s32(v16, v17);
  v20 = __sincosf_stret(v13);
  *v19.i32 = v20.__cosval;
  *v18.i8 = v20;
  v21 = 0;
  *&v19.i32[1] = -v20.__sinval;
  v22 = vzip1q_s32(v19, 0);
  v23 = vzip1q_s32(v18, 0);
  v24 = vzip1q_s32(v22, v23);
  v25 = vzip2q_s32(v22, v23);
  v81[0] = xmmword_25D277BA0;
  v81[1] = xmmword_25D277BB0;
  v81[2] = v70;
  v81[3] = v68;
  do
  {
    v76.columns[v21] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v24, COERCE_FLOAT(v81[v21])), v25, *&v81[v21], 1), xmmword_25D277BC0, v81[v21], 2), xmmword_25D277B90, v81[v21], 3);
    ++v21;
  }

  while (v21 != 4);
  v69 = v76.columns[1];
  v71 = v76.columns[0];
  v66 = v76.columns[3];
  v67 = v76.columns[2];
  __invert_f4(v76);
  v61 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v62, "count")}];
  for (i = 0; [v62 count] > i; ++i)
  {
    v27 = [v62 objectAtIndexedSubscript:i];
    v28 = [v62 objectAtIndexedSubscript:i];
    identifier = [v28 identifier];
    [v61 setObject:v27 forKey:identifier];
  }

  v65 = 0;
  v30 = MEMORY[0x277CBEC38];
  v31 = MEMORY[0x277CBEC28];
  while ([v64 count] > v65)
  {
    v32 = [v64 objectAtIndexedSubscript:?];
    identifier2 = [v32 identifier];
    v34 = [v61 objectForKey:identifier2];

    v63 = [v64 objectAtIndexedSubscript:v65];
    boxesDict = [v63 boxesDict];
    v36 = [boxesDict objectForKey:@"rawdetection"];

    if (v36)
    {
      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      memset(&v76, 0, sizeof(v76));
      boxesDict2 = [v63 boxesDict];
      v38 = [boxesDict2 objectForKeyedSubscript:@"rawdetection"];
      box3dFromNSArray(v38, &v76);

      v39 = objc_opt_new();
      for (j = 0; j != 8; ++j)
      {
        if (v11)
        {
          LODWORD(v40) = 0.125;
          if ([self isPointInCameraView:v11 cameraPose:*v76.columns[j].i64 camera:*a2.i64 marginRatio:{*timer.i64, *objects.i64, pose, v40}])
          {
            v42 = v30;
          }

          else
          {
            v42 = v31;
          }
        }

        else
        {
          v43 = vaddq_f32(v66, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v71, COERCE_FLOAT(*&v76.columns[j])), v69, *v76.columns[j].f32, 1), v67, v76.columns[j], 2)).u64[0];
          if (fabsf(*&v43 / *(&v43 + 1)) >= 0.483 || *(&v43 + 1) <= 0.0)
          {
            v42 = v31;
          }

          else
          {
            v42 = v30;
          }
        }

        [v39 addObject:v42];
      }

      v45 = [v39 copy];
      [v63 setCorners_status:v45];
    }

    if (v34)
    {
      corners_status = [v34 corners_status];
      v47 = [corners_status count];

      if (v47 == 8)
      {
        corners_status2 = [v63 corners_status];
        v49 = [corners_status2 count];

        if (v49 == 8)
        {
          corners_status5 = objc_opt_new();
          for (k = 0; k != 8; ++k)
          {
            v52 = v34;
            corners_status3 = [v34 corners_status];
            v54 = [corners_status3 objectAtIndexedSubscript:k];
            bOOLValue = [v54 BOOLValue];

            if (bOOLValue)
            {
              [corners_status5 addObject:v30];
            }

            else
            {
              v56 = [v64 objectAtIndexedSubscript:v65];
              corners_status4 = [v56 corners_status];
              v58 = [corners_status4 objectAtIndexedSubscript:k];
              [corners_status5 addObject:v58];
            }

            v34 = v52;
          }

          v59 = [corners_status5 copy];
          [v63 setCorners_status:v59];
        }

        else
        {
          corners_status5 = [v34 corners_status];
          v59 = [corners_status5 copy];
          [v63 setCorners_status:v59];
        }
      }
    }

    ++v65;
  }
}

- (void)updateRawCornersStatus:(float32x4_t)status withOldObjects:(float32x4_t)objects cameraPose:(double)pose camera:(uint64_t)camera
{
  v69 = a7;
  v11 = a8;
  v12 = a9;
  v13 = vaddq_f32(objects, vmlaq_f32(vmulq_f32(a2, 0), 0, status)).u64[0];
  v14 = 1.57079633 - atan2f(*(&v13 + 1), *&v13);
  v15.i64[0] = 0;
  v15.i32[2] = 0;
  *&v15.i32[3] = -*&pose;
  v16.i64[0] = 0;
  v16.i32[2] = 0;
  *&v16.i32[3] = -*(&pose + 1);
  v17 = vzip2q_s32(v15, xmmword_25D277BC0);
  v18 = vzip2q_s32(v16, xmmword_25D277B90);
  v81 = vzip1q_s32(v17, v18);
  v74 = vzip2q_s32(v17, v18);
  v21 = __sincosf_stret(v14);
  *v20.i32 = v21.__cosval;
  *v19.i8 = v21;
  v22 = 0;
  *&v20.i32[1] = -v21.__sinval;
  v23 = vzip1q_s32(v20, 0);
  v24 = vzip1q_s32(v19, 0);
  v25 = vzip1q_s32(v23, v24);
  v26 = vzip2q_s32(v23, v24);
  *buf = xmmword_25D277BA0;
  v89 = xmmword_25D277BB0;
  v90 = v81;
  v91 = v74;
  do
  {
    v83.columns[v22 / 0x10] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v25, COERCE_FLOAT(*&buf[v22])), v26, *&buf[v22], 1), xmmword_25D277BC0, *&buf[v22], 2), xmmword_25D277B90, *&buf[v22], 3);
    v22 += 16;
  }

  while (v22 != 64);
  v73 = v83.columns[1];
  v75 = v83.columns[0];
  v71 = v83.columns[3];
  v72 = v83.columns[2];
  __invert_f4(v83);
  v66 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v11, "count")}];
  v67 = v11;
  for (i = 0; [v67 count] > i; ++i)
  {
    v28 = [v67 objectAtIndexedSubscript:i];
    v29 = [v67 objectAtIndexedSubscript:i];
    identifier = [v29 identifier];
    [v66 setObject:v28 forKey:identifier];
  }

  v31 = 0;
  v32 = MEMORY[0x277CBEC28];
  v33 = MEMORY[0x277CBEC38];
  v34 = v67;
  while ([v69 count] > v31)
  {
    v35 = [v69 objectAtIndexedSubscript:v31];
    identifier2 = [v35 identifier];
    v68 = [v66 objectForKey:identifier2];

    v70 = [v69 objectAtIndexedSubscript:v31];
    boxesDict = [v70 boxesDict];
    v38 = [boxesDict objectForKey:@"rawdetection"];

    if (v38)
    {
      if (v68)
      {
        corners_history = [v68 corners_history];
        v42 = [corners_history copy];
        [v70 setCorners_history:v42];
      }

      v86 = 0u;
      v87 = 0u;
      v84 = 0u;
      v85 = 0u;
      memset(&v83, 0, sizeof(v83));
      boxesDict2 = [v70 boxesDict];
      v44 = [boxesDict2 objectForKeyedSubscript:@"rawdetection"];
      box3dFromNSArray(v44, &v83);

      corners_history2 = [v70 corners_history];
      v46 = [corners_history2 mutableCopy];

      date = [MEMORY[0x277CBEAA8] date];
      [date timeIntervalSince1970];
      v49 = v48;
      v65 = v31;

      v50 = objc_opt_new();
      v52 = 0;
      v53 = &v83;
      do
      {
        if (v12)
        {
          LODWORD(v51) = 0.125;
          v54 = [self isPointInCameraView:v12 cameraPose:*v53 camera:*a2.i64 marginRatio:{*status.i64, *objects.i64, pose, v51}];
        }

        else
        {
          v55 = vaddq_f32(v71, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v75, COERCE_FLOAT(*v53->f32)), v73, *v53, 1), v72, *v53->f32, 2)).u64[0];
          v54 = fabsf(*&v55 / *(&v55 + 1)) < 0.483 && *(&v55 + 1) > 0.0;
        }

        if (v54)
        {
          v57 = v33;
        }

        else
        {
          v57 = v32;
        }

        v58 = [v46 objectAtIndexedSubscript:v52];
        v82 = *v53->f32;
        v59 = [MEMORY[0x277CCABB0] numberWithDouble:v49];
        [v58 addCornerStatus:v57 inView:v59 timestamp:*&v82];

        v60 = [v46 objectAtIndexedSubscript:v52];
        if ([v60 isCompleted])
        {
          v61 = v33;
        }

        else
        {
          v61 = v32;
        }

        [v50 addObject:v61];

        ++v52;
        v53 += 2;
      }

      while (v52 != 8);
      v31 = v65;
      v62 = [v50 copy];
      [v70 setCorners_status:v62];

      v63 = [v46 copy];
      [v70 setCorners_history:v63];

      v34 = v67;
    }

    else
    {
      v64 = _OULoggingGetOSLogForCategoryObjectUnderstanding(v39, v40);
      if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
      {
        [OUObjectCompleteness updateRawCornersStatus:buf withOldObjects:&buf[1] cameraPose:v64 camera:?];
      }
    }

    ++v31;
  }
}

- (void)updateRawFacesStatus:(double)status withOldObjects:(double)objects pointCloud:(double)cloud cameraPose:(uint64_t)pose camera:(void *)camera
{
  cameraCopy = camera;
  v69 = a8;
  v71 = a9;
  v79 = a10;
  v68 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v69, "count")}];
  for (i = 0; [v69 count] > i; ++i)
  {
    v15 = [v69 objectAtIndexedSubscript:i];
    v16 = [v69 objectAtIndexedSubscript:i];
    identifier = [v16 identifier];
    [v68 setObject:v15 forKey:identifier];
  }

  v18 = 0;
  v19 = MEMORY[0x277CBEC28];
  while ([cameraCopy count] > v18)
  {
    v20 = [cameraCopy objectAtIndexedSubscript:v18];
    identifier2 = [v20 identifier];
    v73 = [v68 objectForKey:identifier2];

    v80 = [cameraCopy objectAtIndexedSubscript:v18];
    type = [v80 type];
    if ([type isEqualToString:@"Cabinet"])
    {
      goto LABEL_9;
    }

    type2 = [v80 type];
    if ([type2 isEqualToString:@"Sofa"])
    {

LABEL_9:
      goto LABEL_10;
    }

    type3 = [v80 type];
    v67 = [type3 isEqualToString:@"Table"];

    if ((v67 & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_10:
    boxesDict = [v80 boxesDict];
    v25 = [boxesDict objectForKey:@"rawdetection"];

    if (v25)
    {
      v96 = 0u;
      v97 = 0u;
      v94 = 0u;
      v95 = 0u;
      v92 = 0u;
      v93 = 0u;
      v90 = 0u;
      v91 = 0u;
      boxesDict2 = [v80 boxesDict];
      v29 = [boxesDict2 objectForKeyedSubscript:@"rawdetection"];
      box3dFromNSArray(v29, &v90);

      v30.i32[0] = 1017370378;
      box3dEnlarge(__p, &v90, v30, 0.02, 0.02);
      v94 = v86;
      v95 = v87;
      v96 = v88;
      v97 = v89;
      v90 = *__p;
      v91 = v83;
      v92 = v84;
      v93 = v85;
      v74 = objc_opt_new();
      v32 = 0;
      v72 = v18;
      while (1)
      {
        if (!v73)
        {
          goto LABEL_17;
        }

        faces_status = [v73 faces_status];
        if ([faces_status count] != 6)
        {
          break;
        }

        faces_status2 = [v73 faces_status];
        v35 = [faces_status2 objectAtIndexedSubscript:v32];
        bOOLValue = [v35 BOOLValue];

        if (!bOOLValue)
        {
          goto LABEL_17;
        }

        [v74 addObject:MEMORY[0x277CBEC38]];
LABEL_33:
        if (++v32 == 6)
        {
          v81 = 0;
          std::vector<int>::vector[abi:ne200100](__p, 0xCuLL, &v81);
          for (j = 0; j != 6; ++j)
          {
            v53 = [v74 objectAtIndexedSubscript:j];
            bOOLValue2 = [v53 BOOLValue];

            if (bOOLValue2)
            {
              v55 = kFaceEdgeIndicesMap + 24 * j;
              v56 = *v55;
              v57 = *(v55 + 8);
              if (v56 != v57)
              {
                v58 = __p[0];
                do
                {
                  v59 = *v56++;
                  ++v58[v59];
                }

                while (v56 != v57);
              }
            }
          }

          v60 = objc_opt_new();
          for (k = 0; k != 48; k += 4)
          {
            if (*(__p[0] + k) <= 1)
            {
              v62 = v19;
            }

            else
            {
              v62 = MEMORY[0x277CBEC38];
            }

            [v60 addObject:v62];
          }

          v63 = [v74 copy];
          [v80 setFaces_status:v63];

          v64 = [v60 copy];
          [v80 setEdges_status:v64];

          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          goto LABEL_52;
        }
      }

LABEL_17:
      v37 = kFaceCornerIndicesMap + 24 * v32;
      v38 = *v37;
      v39 = *(v37 + 8);
      if (*v37 == v39)
      {
        goto LABEL_28;
      }

      v40 = 0;
      v41 = 0;
      do
      {
        v42 = *v38;
        LODWORD(v31) = 1011666125;
        v43 = [self isPointInCameraView:v79 cameraPose:*&v90.i64[2 * v42] camera:a2 marginRatio:{status, objects, cloud, v31}];
        corners_status = [v80 corners_status];
        v45 = [corners_status objectAtIndexedSubscript:v42];
        bOOLValue3 = [v45 BOOLValue];
        v41 += v43;

        v40 += bOOLValue3;
        ++v38;
      }

      while (v38 != v39);
      v47 = v41 && v40 > 1;
      v48 = v47;
      v47 = v41 > 3;
      v18 = v72;
      v19 = MEMORY[0x277CBEC28];
      if (v47 || v48)
      {
        v86 = v94;
        v87 = v95;
        v88 = v96;
        v89 = v97;
        *__p = v90;
        v83 = v91;
        v84 = v92;
        v85 = v93;
        type4 = [v80 type];
        v50 = [self checkBoxFaceCompleteness:__p faceIndex:v32 boxType:type4 pointCloud:v71];

        if (v50)
        {
          v51 = MEMORY[0x277CBEC38];
        }

        else
        {
          v51 = v19;
        }

        [v74 addObject:v51];
      }

      else
      {
LABEL_28:
        [v74 addObject:v19];
      }

      goto LABEL_33;
    }

    v65 = _OULoggingGetOSLogForCategoryObjectUnderstanding(v26, v27);
    if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
    {
      [OUObjectCompleteness updateRawCornersStatus:v99 withOldObjects:v65 cameraPose:? camera:?];
    }

LABEL_52:
    ++v18;
  }
}

- (BOOL)checkBoxFaceCompleteness:(uint64_t)completeness faceIndex:(int)index boxType:(void *)type pointCloud:(void *)cloud
{
  typeCopy = type;
  cloudCopy = cloud;
  if (index > 5)
  {
    v22 = 0;
    goto LABEL_31;
  }

  v31 = 0;
  v32 = 0;
  v30 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v30, *(kFaceCornerIndicesMap + 24 * index), *(kFaceCornerIndicesMap + 24 * index + 8), (*(kFaceCornerIndicesMap + 24 * index + 8) - *(kFaceCornerIndicesMap + 24 * index)) >> 2);
  __p = 0;
  v28 = 0;
  v29 = 0;
  v12 = v30;
  v13 = v31;
  if (v30 != v31)
  {
    v14 = 0;
    do
    {
      v15 = *v12;
      if (v14 >= v29)
      {
        v16 = (v14 - __p) >> 4;
        if ((v16 + 1) >> 60)
        {
          std::vector<float>::__throw_length_error[abi:ne200100]();
        }

        v17 = (v29 - __p) >> 3;
        if (v17 <= v16 + 1)
        {
          v17 = v16 + 1;
        }

        if (v29 - __p >= 0x7FFFFFFFFFFFFFF0)
        {
          v18 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v18 = v17;
        }

        if (v18)
        {
          _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv3_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(&__p, v18);
        }

        v19 = (16 * v16);
        *v19 = *(completeness + 16 * v15);
        v14 = (16 * v16 + 16);
        v20 = v19 - (v28 - __p);
        memcpy(v20, __p, v28 - __p);
        v21 = __p;
        __p = v20;
        v28 = v14;
        v29 = 0;
        if (v21)
        {
          operator delete(v21);
        }
      }

      else
      {
        v11 = *(completeness + 16 * v15);
        *v14 = v11;
        v14 += 16;
      }

      v28 = v14;
      ++v12;
    }

    while (v12 != v13);
  }

  LODWORD(v11) = 1036831949;
  CountPointsNearPlane(typeCopy, &__p, cloudCopy, v24, *&v11);
  if (3 * v25 < v24[2])
  {
    v22 = 1;
    if (v25 < 6 || (v26 / v25) > 0.5)
    {
      goto LABEL_27;
    }

    goto LABEL_24;
  }

  if (v25 >= 6)
  {
LABEL_24:
    v22 = v24[0] >= 6 && (v24[0] / v24[1]) >= 8.0;
    goto LABEL_27;
  }

  v22 = 1;
LABEL_27:
  if (__p)
  {
    v28 = __p;
    operator delete(__p);
  }

  if (v30)
  {
    v31 = v30;
    operator delete(v30);
  }

LABEL_31:

  return v22;
}

- (void)updateRawCornersStatus:(os_log_t)log withOldObjects:cameraPose:camera:.cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&dword_25D1DB000, log, OS_LOG_TYPE_DEBUG, "[3DOD] WARNING: the object needs to have raw box for corner completeness.", buf, 2u);
}

@end