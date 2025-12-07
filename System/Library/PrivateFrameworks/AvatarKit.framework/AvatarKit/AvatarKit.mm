void AVTCoordinatorLoadPoseAtPath(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = [v6 lastPathComponent];
  v9 = [v8 stringByDeletingPathExtension];

  v10 = MEMORY[0x1E695DFF8];
  v11 = [v7 stringByAppendingPathComponent:?];

  v12 = [v10 fileURLWithPath:? isDirectory:?];

  v13 = [objc_alloc(MEMORY[0x1E695DF20]) initWithContentsOfURL:? error:?];
  v14 = [[AVTAvatarPose alloc] initWithDictionaryRepresentation:?];
  v15 = [(AVTAvatarPose *)v14 setBakedAnimationBlendFactor:?];
  if (v14)
  {
    if (v9)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v16 = avt_default_log(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    AVTCoordinatorLoadPoseAtPath_cold_1(v16, v17, v18, v19, v20, v21, v22, v23);
  }

  if (!v9)
  {
LABEL_7:
    v24 = avt_default_log(v15);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      AVTCoordinatorLoadPoseAtPath_cold_2(v24, v25, v26, v27, v28, v29, v30, v31);
    }
  }

LABEL_10:
  v5[2](v5, v14, v9);
}

void AVTCoordinatorLoadPosesAtPaths(void *a1, void *a2, void *a3)
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v30 = a3;
  [v6 count];
  v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:?];
  v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:?];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v6;
  v9 = [obj countByEnumeratingWithState:? objects:? count:?];
  if (v9)
  {
    v10 = v9;
    v11 = *v36;
    do
    {
      v12 = 0;
      do
      {
        if (*v36 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v35 + 1) + 8 * v12);
        v32[0] = MEMORY[0x1E69E9820];
        v32[1] = 3221225472;
        v32[2] = __AVTCoordinatorLoadPosesAtPaths_block_invoke;
        v32[3] = &unk_1E7F47A70;
        v33 = v7;
        v34 = v8;
        AVTCoordinatorLoadPoseAtPath(v5, v13, v32);

        v12 = (v12 + 1);
      }

      while (v10 != v12);
      v10 = [obj countByEnumeratingWithState:? objects:? count:?];
    }

    while (v10);
  }

  if (![v7 count])
  {
    v14 = avt_default_log(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      AVTCoordinatorLoadPosesAtPaths_cold_1(v14, v15, v16, v17, v18, v19, v20, v21);
    }
  }

  if (![v8 count])
  {
    v22 = avt_default_log(0);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      AVTCoordinatorLoadPosesAtPaths_cold_2(v22, v23, v24, v25, v26, v27, v28, v29);
    }
  }

  (*(v30 + 2))(v30, v7, v8);
}

void __AVTCoordinatorLoadPosesAtPaths_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  [v4 addObject:?];
  [*(a1 + 40) addObject:?];
}

void AVTCoordinatorLoadPoseAnimationsAtPaths(void *a1, void *a2, void *a3)
{
  v41 = *MEMORY[0x1E69E9840];
  v36 = a1;
  v5 = a2;
  v34 = a3;
  [v5 count];
  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:?];
  v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:?];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = v5;
  v8 = [obj countByEnumeratingWithState:? objects:? count:?];
  if (v8)
  {
    v9 = v8;
    v10 = *v38;
    do
    {
      v11 = 0;
      do
      {
        if (*v38 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = [*(*(&v37 + 1) + 8 * v11) lastPathComponent];
        v13 = [v12 stringByDeletingPathExtension];

        v14 = MEMORY[0x1E695DFF8];
        v15 = [v36 stringByAppendingPathComponent:?];
        v16 = [v14 fileURLWithPath:? isDirectory:?];

        v17 = [[AVTAvatarPoseAnimation alloc] initWithAnimatedPoseRepresentationAtURL:?];
        [v6 addObject:?];
        [v7 addObject:?];

        v11 = (v11 + 1);
      }

      while (v9 != v11);
      v9 = [obj countByEnumeratingWithState:? objects:? count:?];
    }

    while (v9);
  }

  if (![v6 count])
  {
    v18 = avt_default_log(0);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      AVTCoordinatorLoadPoseAnimationsAtPaths_cold_1(v18, v19, v20, v21, v22, v23, v24, v25);
    }
  }

  if (![v7 count])
  {
    v26 = avt_default_log(0);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      AVTCoordinatorLoadPosesAtPaths_cold_2(v26, v27, v28, v29, v30, v31, v32, v33);
    }
  }

  (*(v34 + 2))(v34, v6, v7);
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void sub_1BB476928(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, ...)
{
  va_start(va, a31);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BB4790D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, ...)
{
  va_start(va, a44);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1BB479688(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_2(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_1BB47B0E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BB47C7B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, ...)
{
  va_start(va, a48);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t AVTIsRunningInAppExtensionOrViewService()
{
  if (_UIApplicationIsExtension())
  {
    return 1;
  }

  v1 = [MEMORY[0x1E69DD2E8] _applicationKeyWindow];
  v2 = [v1 _isHostedInAnotherProcess];

  return v2;
}

void sub_1BB47F7FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void AVTTrackingDataFromARFrame(uint64_t a1, void *a2, unint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, float *a9)
{
  v10 = a7;
  v16 = a2;
  v17 = a4;
  [v17 transform];
  v22 = _convertARFaceAnchorTransformToSceneKitTransform(a5, a6, v10, v16, a3, v18, v19, v20, v21);
  v60 = v23;
  v62 = v22;
  v56 = v25;
  v58 = v24;
  if (a9)
  {
    *a9 = fabsf(atan2f(-v22.n128_f32[1], v22.n128_f32[0]));
  }

  [v16 timestamp];
  *a1 = v26;
  *(a1 + 16) = v57;
  v27 = vmulq_f32(v62, v62);
  *&v28 = v27.f32[2] + vaddv_f32(*v27.f32);
  *v27.f32 = vrsqrte_f32(v28);
  *v27.f32 = vmul_f32(*v27.f32, vrsqrts_f32(v28, vmul_f32(*v27.f32, *v27.f32)));
  v29 = vmulq_n_f32(v62, vmul_f32(*v27.f32, vrsqrts_f32(v28, vmul_f32(*v27.f32, *v27.f32))).f32[0]);
  v30 = vmulq_f32(v59, v59);
  *&v31 = v30.f32[2] + vaddv_f32(*v30.f32);
  *v30.f32 = vrsqrte_f32(v31);
  *v30.f32 = vmul_f32(*v30.f32, vrsqrts_f32(v31, vmul_f32(*v30.f32, *v30.f32)));
  v32 = vmulq_n_f32(v59, vmul_f32(*v30.f32, vrsqrts_f32(v31, vmul_f32(*v30.f32, *v30.f32))).f32[0]);
  v33 = vmulq_f32(v61, v61);
  *&v34 = v33.f32[2] + vaddv_f32(*v33.f32);
  *v33.f32 = vrsqrte_f32(v34);
  *v33.f32 = vmul_f32(*v33.f32, vrsqrts_f32(v34, vmul_f32(*v33.f32, *v33.f32)));
  v35 = vmulq_n_f32(v61, vmul_f32(*v33.f32, vrsqrts_f32(v34, vmul_f32(*v33.f32, *v33.f32))).f32[0]);
  v36 = (*v29.i32 + *&v32.i32[1]) + *&v35.i32[2];
  if (v36 <= 0.0)
  {
    if (*v29.i32 <= *&v32.i32[1] || *v29.i32 <= *&v35.i32[2])
    {
      if (*&v32.i32[1] <= *&v35.i32[2])
      {
        *v38.f32 = vadd_f32(*&vzip2q_s32(v29, v32), *v35.i8);
        v37 = ((*&v35.i32[2] + 1.0) - *v29.i32) - *&v32.i32[1];
        v38.f32[2] = v37;
        v38.f32[3] = *&v29.i32[1] - *v32.i32;
      }

      else
      {
        v38.f32[0] = *&v29.i32[1] + *v32.i32;
        v37 = ((*&v32.i32[1] + 1.0) - *v29.i32) - *&v35.i32[2];
        v40 = vzip2q_s32(v29, v32).u64[0];
        v38.f32[1] = v37;
        *&v38.u32[2] = vext_s8(vadd_f32(*v35.i8, v40), vsub_f32(*v35.i8, v40), 4uLL);
      }
    }

    else
    {
      v37 = ((*v29.i32 + 1.0) - *&v32.i32[1]) - *&v35.i32[2];
      v41 = *&v29.i32[1];
      v42 = vzip2q_s32(v29, v32).u64[0];
      LODWORD(v43) = vadd_f32(v42, *v35.i8).u32[0];
      HIDWORD(v43) = vsub_f32(v42, *&v35).i32[1];
      v38.i64[0] = __PAIR64__(v41 + *v32.i32, LODWORD(v37));
      v38.i64[1] = v43;
    }
  }

  else
  {
    *v38.f32 = vsub_f32(*&vzip2q_s32(v32, vuzp1q_s32(v32, v35)), *&vtrn2q_s32(v35, vzip2q_s32(v35, v29)));
    v38.f32[2] = *&v29.i32[1] - *v32.i32;
    v37 = v36 + 1.0;
    v38.f32[3] = v36 + 1.0;
  }

  v44 = 0;
  *(a1 + 32) = vmulq_n_f32(v38, 0.5 / sqrtf(v37));
  *(a1 + 48) = v10 ^ 1;
  do
  {
    v45 = AVTBlendShapeLocationFromARIndex(v44);
    [v17 _avt_rawBlendShapeAtLocation:?];
    *(a1 + 4 * v44 + 256) = v46;

    ++v44;
  }

  while (v44 != 51);
  v47 = AVTBlendShapeLocationFromARIndex(51);
  [v17 _avt_rawBlendShapeAtLocation:?];
  *(a1 + 464) = v48;

  if (a8)
  {
    v49 = *(a1 + 384);
    *(a1 + 196) = *(a1 + 400);
    v50 = *(a1 + 432);
    *(a1 + 212) = *(a1 + 416);
    *(a1 + 228) = v50;
    *(a1 + 240) = *(a1 + 444);
    v51 = *(a1 + 320);
    *(a1 + 132) = *(a1 + 336);
    v52 = *(a1 + 368);
    *(a1 + 148) = *(a1 + 352);
    *(a1 + 164) = v52;
    *(a1 + 180) = v49;
    v53 = *(a1 + 256);
    *(a1 + 68) = *(a1 + 272);
    v54 = *(a1 + 304);
    *(a1 + 84) = *(a1 + 288);
    *(a1 + 100) = v54;
    *(a1 + 116) = v51;
    *(a1 + 52) = v53;
    *(a1 + 460) = *(a1 + 464);
  }

  else
  {
    v55 = [v17 blendShapes];
    v63 = v17;
    [v55 enumerateKeysAndObjectsUsingBlock:?];
  }
}

__n128 _convertARFaceAnchorTransformToSceneKitTransform(uint64_t a1, uint64_t a2, int a3, void *a4, unint64_t a5, __n128 a6, __n128 a7, __n128 a8, __n128 a9)
{
  v13 = a4;
  v14 = v13;
  if (a3)
  {
    v15 = [v13 camera];
    [v15 displayCenterTransform];
    v41 = v16;
    v43 = v17;
    v44 = v19;
    v47 = v18;

    v20 = 0;
    v21 = xmmword_1BB4F05D0;
    v21.i32[3] = v41;
    v22 = xmmword_1BB4F05E0;
    v22.i32[3] = v43;
    v23 = xmmword_1BB4F0610;
    v23.i32[3] = v47;
    v24 = vnegq_f32(v44);
    v24.i32[3] = v44.i32[3];
    v56 = a6;
    v57 = a7;
    v58 = a8;
    v59 = a9;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    do
    {
      *(&v60 + v20) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v21, COERCE_FLOAT(*(&v56 + v20))), v22, v56.n128_u64[v20 / 8], 1), v23, *(&v56 + v20), 2), v24, *(&v56 + v20), 3);
      v20 += 16;
    }

    while (v20 != 64);
    a6 = v60;
    a7 = v61;
    a8 = v62;
    a9 = v63;
  }

  v27 = AVTARKitTransformToSceneKitTransformMatrix(a5, a1, a2);
  v31 = 0;
  v56 = a6;
  v57 = a7;
  v58 = a8;
  v59 = a9;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  do
  {
    *(&v60 + v31) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v27, COERCE_FLOAT(*(&v56 + v31))), v28, v56.n128_u64[v31 / 8], 1), v29, *(&v56 + v31), 2), v30, *(&v56 + v31), 3);
    v31 += 16;
  }

  while (v31 != 64);
  v53 = v61;
  v55 = v60;
  v51 = v62;
  if (a3)
  {
    AVTGetNeutralZ(v25, v26);
  }

  else
  {
    v32 = vmulq_f32(v63, vdupq_n_s32(0x42C80000u));
    v32.i32[3] = v63.i32[3];
    v49 = v32;
    v33 = [v14 camera];
    [v33 transform];
    v45 = v35;
    v46 = v34;
    v40 = v37;
    v42 = v36;

    v64.columns[1] = v45;
    v64.columns[0] = v46;
    v64.columns[3] = v40;
    v64.columns[2] = v42;
    v65 = __invert_f4(v64);
    v38 = 0;
    v56 = v55;
    v57 = v53;
    v58 = v51;
    v59 = v49;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    do
    {
      *(&v60 + v38) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v65.columns[0], COERCE_FLOAT(*(&v56 + v38))), v65.columns[1], v56.n128_u64[v38 / 8], 1), v65.columns[2], *(&v56 + v38), 2), v65.columns[3], *(&v56 + v38), 3);
      v38 += 16;
    }

    while (v38 != 64);
    v55 = v60;
  }

  return v55;
}

void __AVTTrackingDataFromARFrame_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = AVTBlendShapeLocationToARIndex(v9);
  if (v6 > 50)
  {
    [*(a1 + 32) _avt_rawBlendShapeAtLocation:?];
    *(*(a1 + 40) + 4 * v6 + 256) = v8;
  }

  else
  {
    [v5 floatValue];
    *(*(a1 + 40) + 4 * v6 + 52) = v7;
  }
}

void *___slowestToFastestVideoFormatsForConfiguration_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x1E696AD98];
  v5 = a3;
  [a2 framesPerSecond];
  v6 = [v4 numberWithInteger:?];
  v7 = MEMORY[0x1E696AD98];
  [v5 framesPerSecond];

  v8 = [v7 numberWithInteger:?];
  v9 = [v6 compare:?];

  return v9;
}

void sub_1BB48357C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 - 120));
  objc_destroyWeak((v1 - 112));
  _Unwind_Resume(a1);
}

void sub_1BB484548(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 - 120));
  objc_destroyWeak((v1 - 112));
  _Unwind_Resume(a1);
}

void sub_1BB4848F8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 104));
  _Block_object_dispose((v2 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1BB484E8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BB485350(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BB4857CC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 - 120));
  objc_destroyWeak((v1 - 112));
  _Unwind_Resume(a1);
}

void sub_1BB485EF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_7(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 2u);
}

void *AVTPosterExpectsExtraTallContent(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 showsBody];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v3 name];
      v5 = [v6 isEqualToString:?];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

void sub_1BB489F34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1BB48A564(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, ...)
{
  va_start(va, a33);
  _Block_object_dispose(&a20, 8);
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id AVTPlistDatabaseMemojiAssetWithIdentifier(void *a1)
{
  v1 = a1;
  if (AVTPlistDatabaseMemojiAssetWithIdentifier::onceToken != -1)
  {
    AVTPlistDatabaseMemojiAssetWithIdentifier_cold_1();
  }

  v2 = [AVTPlistDatabaseMemojiAssetWithIdentifier::kAVTPlistDatabase_assetByIdentifier objectForKeyedSubscript:?];

  return v2;
}

void __AVTPlistDatabaseMemojiAssetWithIdentifier_block_invoke()
{
  v0 = +[AVTResourceLocator sharedResourceLocator];
  v1 = +[AVTResourceLocator generatedPlistFolderName];
  v4 = [AVTResourceLocator pathForMemojiResource:v0 ofType:? inDirectory:? isDirectory:?];

  v2 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfFile:?];
  v3 = AVTPlistDatabaseMemojiAssetWithIdentifier::kAVTPlistDatabase_assetByIdentifier;
  AVTPlistDatabaseMemojiAssetWithIdentifier::kAVTPlistDatabase_assetByIdentifier = v2;
}

id AVTPlistDatabaseMemojiAssetsForComponentType(unint64_t a1)
{
  if (AVTPlistDatabaseMemojiAssetsForComponentType::onceToken != -1)
  {
    AVTPlistDatabaseMemojiAssetsForComponentType_cold_1();
  }

  v2 = AVTPlistDatabaseMemojiAssetsForComponentType::kAVTPlistDatabase_assetIdentifiersByComponentType;
  v3 = AVTComponentTypeToString(a1);
  v4 = [v2 objectForKeyedSubscript:?];

  return v4;
}

void __AVTPlistDatabaseMemojiAssetsForComponentType_block_invoke()
{
  v0 = +[AVTResourceLocator sharedResourceLocator];
  v1 = +[AVTResourceLocator generatedPlistFolderName];
  v4 = [AVTResourceLocator pathForMemojiResource:v0 ofType:? inDirectory:? isDirectory:?];

  v2 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfFile:?];
  v3 = AVTPlistDatabaseMemojiAssetsForComponentType::kAVTPlistDatabase_assetIdentifiersByComponentType;
  AVTPlistDatabaseMemojiAssetsForComponentType::kAVTPlistDatabase_assetIdentifiersByComponentType = v2;
}

uint64_t AVTBlendShapeLocationToARIndex(void *a1)
{
  v1 = a1;
  if (_initialiseBlendshapeMappingIfNeeded_onceToken != -1)
  {
    AVTBlendShapeLocationToARIndex_cold_1();
  }

  v2 = [kAVTBlendShapeLocationIndices objectForKeyedSubscript:?];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 integerValue];
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v4;
}

id AVTBlendShapeLocationFromARIndex(uint64_t a1)
{
  if (_initialiseBlendshapeMappingIfNeeded_onceToken != -1)
  {
    AVTBlendShapeLocationToARIndex_cold_1();
  }

  v2 = kAVTBlendShapeLocationFromARIndex[a1];

  return v2;
}

BOOL AVTMorphTargetNameIsUsedForFaceAnimation(void *a1)
{
  v1 = _initialiseBlendshapeMappingIfNeeded_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    AVTBlendShapeLocationToARIndex_cold_1();
  }

  v3 = [kAVTBlendShapeLocationIndices objectForKeyedSubscript:?];

  return v3 != 0;
}

uint64_t AVTMorphTargetNameIsUsedForBindings(void *a1)
{
  v1 = a1;
  if ([v1 containsString:?] & 1) != 0 || (objc_msgSend(v1, "containsString:") & 1) != 0 || (objc_msgSend(v1, "hasSuffix:") & 1) != 0 || (objc_msgSend(v1, "hasSuffix:") & 1) != 0 || (objc_msgSend(v1, "hasSuffix:") & 1) != 0 || (objc_msgSend(v1, "hasSuffix:") & 1) != 0 || (objc_msgSend(v1, "hasSuffix:") & 1) != 0 || (objc_msgSend(v1, "hasSuffix:"))
  {
    v2 = 0;
  }

  else
  {
    v2 = [v1 isEqualToString:?] ^ 1;
  }

  return v2;
}

uint64_t AVTMorphTargetNameDefinesPose(void *a1)
{
  v1 = a1;
  if ([v1 containsString:?] & 1) != 0 || (objc_msgSend(v1, "containsString:") & 1) != 0 || (objc_msgSend(v1, "hasSuffix:") & 1) != 0 || (objc_msgSend(v1, "hasSuffix:") & 1) != 0 || (objc_msgSend(v1, "hasSuffix:") & 1) != 0 || (objc_msgSend(v1, "hasSuffix:") & 1) != 0 || (objc_msgSend(v1, "hasSuffix:") & 1) != 0 || (objc_msgSend(v1, "hasSuffix:"))
  {
    v2 = 0;
  }

  else
  {
    v2 = [v1 hasPrefix:?] ^ 1;
  }

  return v2;
}

uint64_t AVTMorphTargetNameIsOfInterestForAnimator(void *a1)
{
  v1 = a1;
  if ([v1 containsString:?] & 1) != 0 || (objc_msgSend(v1, "hasSuffix:") & 1) != 0 || (objc_msgSend(v1, "hasSuffix:") & 1) != 0 || (objc_msgSend(v1, "hasSuffix:") & 1) != 0 || (objc_msgSend(v1, "hasSuffix:") & 1) != 0 || (objc_msgSend(v1, "hasSuffix:") & 1) != 0 || (objc_msgSend(v1, "hasSuffix:"))
  {
    v2 = 0;
  }

  else
  {
    v2 = [v1 isEqualToString:?] ^ 1;
  }

  return v2;
}

void ___initialiseBlendshapeMappingIfNeeded_block_invoke()
{
  if (AVTFaceTrackingIsSupported_onceToken != -1)
  {
    ___initialiseBlendshapeMappingIfNeeded_block_invoke_cold_1();
  }

  if (AVTFaceTrackingIsSupported_kAVTFaceTrackingIsSupported == 1)
  {
    CVAFaceTrackingCopySemantics();
    v0 = [0 objectForKeyedSubscript:?];
  }

  else
  {
    v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:? count:?];
  }

  if ([v0 count] != 51)
  {
    ___initialiseBlendshapeMappingIfNeeded_block_invoke_cold_2();
  }

  v1 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:?];
  v5 = MEMORY[0x1E69E9820];
  v6 = v1;
  v2 = v1;
  [v0 enumerateObjectsUsingBlock:{v5, 3221225472, ___initialiseBlendshapeMappingIfNeeded_block_invoke_2, &unk_1E7F48530}];
  objc_storeStrong(&qword_1EBC59028, *MEMORY[0x1E6986408]);
  [v2 setObject:? forKeyedSubscript:?];
  v3 = [v2 copy];
  v4 = kAVTBlendShapeLocationIndices;
  kAVTBlendShapeLocationIndices = v3;
}

void ___initialiseBlendshapeMappingIfNeeded_block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  objc_storeStrong(&kAVTBlendShapeLocationFromARIndex[a3], a2);
  v5 = a2;
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
  [*(a1 + 32) setObject:? forKeyedSubscript:?];
}

uint64_t __AVTFaceTrackingIsSupported_block_invoke()
{
  v0 = MGIsQuestionValid();
  if (v0)
  {
    LOBYTE(v0) = MGGetBoolAnswer();
  }

  AVTFaceTrackingIsSupported_kAVTFaceTrackingIsSupported = v0;
  result = MGIsQuestionValid();
  if (result)
  {
    result = MGGetBoolAnswer();
  }

  AVTFaceTrackingIsSupported_kAVTFaceTrackingIsSupported |= result;
  return result;
}

void OUTLINED_FUNCTION_1_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

__CFString *AVTComponentTypeToString(unint64_t a1)
{
  if (a1 > 0x29)
  {
    return 0;
  }

  else
  {
    return off_1E7F48580[a1];
  }
}

uint64_t AVTComponentTypeFromString(void *a1)
{
  v1 = a1;
  if (AVTComponentTypeFromString_onceToken != -1)
  {
    AVTComponentTypeFromString_cold_1();
  }

  v2 = [AVTComponentTypeFromString_nameToType objectForKeyedSubscript:?];
  if (v2)
  {
    v3 = [AVTComponentTypeFromString_nameToType objectForKeyedSubscript:?];
    v4 = [v3 intValue];
  }

  else
  {
    v4 = 42;
  }

  return v4;
}

void __AVTComponentTypeFromString_block_invoke()
{
  v0 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:?];
  v1 = AVTComponentTypeFromString_nameToType;
  AVTComponentTypeFromString_nameToType = v0;

  for (i = 0; i != 42; ++i)
  {
    v3 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    v4 = AVTComponentTypeFromString_nameToType;
    v5 = AVTComponentTypeToString(i);
    [v4 setObject:? forKeyedSubscript:?];
  }
}

uint64_t AVTBodyRegionForComponentType(uint64_t a1)
{
  if ((a1 - 34) > 7)
  {
    return 0;
  }

  else
  {
    return qword_1BB4F0710[a1 - 34];
  }
}

void _AVTAvatarPoseImportSceneKitAnimation(void *a1, void *a2, void *a3, void *a4, __int128 *a5)
{
  v65 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = [v10 subAnimations];
  v14 = [v13 countByEnumeratingWithState:? objects:? count:?];
  if (v14)
  {
    v15 = MEMORY[0];
    do
    {
      for (i = 0; i != v14; i = (i + 1))
      {
        if (MEMORY[0] != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(8 * i);
        v18 = a5[1];
        v57 = *a5;
        v58 = v18;
        _AVTAvatarPoseImportSceneKitAnimation(v9, v17, v11, v12, &v57);
      }

      v14 = [v13 countByEnumeratingWithState:? objects:? count:?];
    }

    while (v14);
  }

  if (![v13 count])
  {
    v56 = [v10 keyPath];
    v19 = [v56 containsString:?];
    v54 = [v56 componentsSeparatedByString:?];
    v55 = [v54 lastObject];
    if ([v55 rangeOfString:?] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v20 = 1;
    }

    else
    {
      v20 = v19;
    }

    if (v20 == 1)
    {
      v53 = [v9 name];
      v21 = v55;
    }

    else
    {
      v53 = [v55 substringToIndex:?];
      v21 = [v55 substringFromIndex:?];

      [v10 setKeyPath:?];
      [MEMORY[0x1E697A8D8] flush];
      v56 = v21;
    }

    if (([v21 isEqualToString:?] & 1) != 0 || (objc_msgSend(v21, "isEqualToString:") & 1) != 0 || (objc_msgSend(v21, "isEqualToString:") & 1) != 0 || (objc_msgSend(v21, "isEqualToString:") & 1) != 0 || (objc_msgSend(v21, "isEqualToString:") & 1) != 0 || (v22 = objc_msgSend(v21, "isEqualToString:"), v22))
    {
      v61 = 0;
      v62 = &v61;
      v63 = 0x2020000000;
      v64 = 0;
      v23 = [v10 caAnimation];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        v25 = v23;
        *&v57 = 0;
        *(&v57 + 1) = &v57;
        *&v58 = 0x3032000000;
        *(&v58 + 1) = __Block_byref_object_copy__3;
        v59 = __Block_byref_object_dispose__3;
        v60 = 0;
        v26 = [v25 values];
        [v26 enumerateObjectsUsingBlock:?];

        _Block_object_dispose(&v57, 8);
      }

      else
      {
        v25 = avt_default_log(isKindOfClass);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v27 = objc_opt_class();
          v28 = NSStringFromClass(v27);
          _AVTAvatarPoseImportSceneKitAnimation_cold_2(v28, &v57, v25);
        }
      }

      if (*(v62 + 24) == 1)
      {
        v29 = [v12 objectForKeyedSubscript:?];
        if (!v29)
        {
          v29 = objc_alloc_init(MEMORY[0x1E695DF70]);
          [v12 setObject:? forKeyedSubscript:?];
        }

        v30 = MEMORY[0x1E69DF2B0];
        v31 = [v10 caAnimation];
        v32 = [v30 animationWithCAAnimation:?];

        [v29 addObject:?];
      }

      v33 = &v61;
    }

    else
    {
      if (!v19)
      {
        v37 = avt_default_log(v22);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          _AVTAvatarPoseImportSceneKitAnimation_cold_1(v10, v37);
        }

        goto LABEL_31;
      }

      *&v57 = 0;
      *(&v57 + 1) = &v57;
      *&v58 = 0x2020000000;
      BYTE8(v58) = 0;
      v52 = [v10 caAnimation];
      objc_opt_class();
      v34 = objc_opt_isKindOfClass();
      if (v34)
      {
        v35 = v52;
        v36 = [v35 values];
        [v36 enumerateObjectsUsingBlock:?];
      }

      else
      {
        v35 = avt_default_log(v34);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          v38 = objc_opt_class();
          v39 = NSStringFromClass(v38);
          _AVTAvatarPoseImportSceneKitAnimation_cold_2(v39, &v61, v35);
        }
      }

      if (*(*(&v57 + 1) + 24) == 1)
      {
        v50 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:? options:? error:?];
        [v56 length];
        v51 = [v50 matchesInString:? options:? range:?];
        if ([v51 count])
        {
          v40 = [v51 firstObject];
          [v40 rangeAtIndex:?];

          v41 = [v56 substringWithRange:?];
          [v41 integerValue];
          v42 = [v9 morpher];
          v43 = [v42 targets];
          v44 = [v43 objectAtIndexedSubscript:?];
          v49 = [v44 name];

          v56 = v49;
        }

        else
        {
          v41 = avt_default_log(0);
          if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            _AVTAvatarPoseImportSceneKitAnimation_cold_3(v41);
          }
        }

        if (v56 && AVTMorphTargetNameDefinesPose(v56))
        {
          v45 = [v11 objectForKeyedSubscript:?];
          if (!v45)
          {
            v46 = MEMORY[0x1E69DF2B0];
            v47 = [v10 caAnimation];
            v48 = [v46 animationWithCAAnimation:?];

            [v11 setObject:? forKeyedSubscript:?];
          }
        }
      }

      v33 = &v57;
    }

    _Block_object_dispose(v33, 8);
LABEL_31:
  }
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_0_4(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, a5, 0xCu);
}

id AVTGetCapturedColorTexture(__CVBuffer *a1, __CVMetalTextureCache *a2)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  v5 = 0;
  if (PixelFormatType > 875836533)
  {
    if (PixelFormatType > 1380401728)
    {
      switch(PixelFormatType)
      {
        case 1380411457:
          v6 = MTLPixelFormatRGBA16Float;
          break;
        case 1380410945:
          v6 = MTLPixelFormatRGBA32Float;
          break;
        case 1380401729:
          v6 = MTLPixelFormatRGBA8Unorm_sRGB;
          break;
        default:
          goto LABEL_24;
      }

      goto LABEL_23;
    }

    if (PixelFormatType != 875836534)
    {
      if (PixelFormatType == 1111970369)
      {
        v6 = MTLPixelFormatBGRA8Unorm_sRGB;
      }

      else
      {
        if (PixelFormatType != 1278226488)
        {
          goto LABEL_24;
        }

        v6 = MTLPixelFormatR8Unorm;
      }

      goto LABEL_23;
    }

LABEL_11:
    v6 = MTLPixelFormatR8Unorm_sRGB|0x200;
LABEL_23:
    v5 = AVTGetPixelBufferTexture(a1, a2, v6);
    goto LABEL_24;
  }

  if (PixelFormatType > 875704933)
  {
    if (PixelFormatType == 875704934 || PixelFormatType == 875704950)
    {
      v6 = MTLPixelFormatR8Unorm|0x200;
      goto LABEL_23;
    }

    if (PixelFormatType != 875836518)
    {
      goto LABEL_24;
    }

    goto LABEL_11;
  }

  if (PixelFormatType == 875704422 || PixelFormatType == 875704438)
  {
    v6 = 520;
    goto LABEL_23;
  }

LABEL_24:

  return v5;
}

void __AVTDebugARMask_block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:?];
  AVTDebugARMask_debugMode = [v0 BOOLForKey:?];
}

id AVTGetPixelBufferTexture(__CVBuffer *a1, __CVMetalTextureCache *a2, MTLPixelFormat a3)
{
  if (a1 && (Width = CVPixelBufferGetWidth(a1), Height = CVPixelBufferGetHeight(a1), image = 0, !CVMetalTextureCacheCreateTextureFromImage(*MEMORY[0x1E695E480], a2, a1, 0, a3, Width, Height, 0, &image)))
  {
    v8 = CVMetalTextureGetTexture(image);
    CFRelease(image);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

__n128 AVTColor4WithCGColor(CGColor *a1)
{
  v2 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1B0]);
  if (CGColorGetColorSpace(a1) == v2)
  {
    v4 = CGColorRetain(a1);
  }

  else
  {
    v3 = MEMORY[0x1BFB0E2A0](v2, 0);
    v4 = CGColorTransformConvertColor();
    CFRelease(v3);
  }

  CFRelease(v2);
  NumberOfComponents = CGColorGetNumberOfComponents(v4);
  Components = CGColorGetComponents(v4);
  if (NumberOfComponents < 4)
  {
    v8 = xmmword_1BB4F06F0;
    if (NumberOfComponents)
    {
      if (NumberOfComponents == 3)
      {
        goto LABEL_6;
      }

      if (NumberOfComponents == 2)
      {
        *&v11 = Components->f64[1];
        v8.i32[3] = v11;
      }

      *&v12 = Components->f64[0];
      v8.i32[0] = v12;
      v8.i32[1] = v12;
      v8.i32[2] = v12;
    }

    v14 = v8;
    goto LABEL_13;
  }

  *&v7 = Components[1].f64[1];
  v8.i64[0] = 0;
  v8.i32[2] = 0;
  v8.i32[3] = v7;
LABEL_6:
  *v9.i8 = vcvt_f32_f64(*Components);
  v9.i32[3] = vextq_s8(v8, v8, 8uLL).i32[1];
  *&v10 = Components[1].f64[0];
  v9.i32[2] = v10;
  v14 = v9;
LABEL_13:
  CGColorRelease(v4);
  return v14;
}

double AVTGetColorComponents(void *a1)
{
  if (!a1)
  {
    return 0.0;
  }

  [a1 avt_colorToColor4];
  return result;
}

__n128 AVTGetColorComponentsMetal(void *a1)
{
  v1 = a1;
  v3 = v1;
  if (v1)
  {
    [v1 avt_colorToColor4];
    v4 = v2;
  }

  else
  {
    v4 = 0uLL;
  }

  v13 = v4;
  if (v4.f32[0] <= 0.04045)
  {
    v2.f32[0] = v4.f32[0] / 12.92;
  }

  else
  {
    v2.f32[0] = powf((v4.f32[0] + 0.055) / 1.055, 2.4);
    v4 = v13;
  }

  v12 = v2;
  if (v4.f32[1] <= 0.04045)
  {
    v6 = v4.f32[1] / 12.92;
  }

  else
  {
    v5 = powf((v4.f32[1] + 0.055) / 1.055, 2.4);
    v4 = v13;
    v6 = v5;
  }

  if (v4.f32[2] <= 0.04045)
  {
    v7 = v4.f32[2] / 12.92;
  }

  else
  {
    v11 = v6;
    v7 = powf((v4.f32[2] + 0.055) / 1.055, 2.4);
    v6 = v11;
    v4 = v13;
  }

  v8 = v12;
  v8.f32[1] = v6;
  v8.f32[2] = v7;
  v9 = vmulq_laneq_f32(v8, v4, 3);
  v9.i32[3] = v4.i32[3];
  v14 = v9;

  return v14;
}

float AVTGetNeutralZ(uint64_t a1, uint64_t a2)
{
  if (AVTGetNeutralZ_onceToken != -1)
  {
    AVTGetNeutralZ_cold_1();
  }

  return *&AVTGetNeutralZ_avt_neutral_z;
}

void __AVTGetNeutralZ_block_invoke()
{
  v0 = [MEMORY[0x1E69DC938] currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (v1 == 1)
  {
    AVTGetNeutralZ_avt_neutral_z = -1091693445;
  }
}

void *PerfTimesCreate@<X0>(unsigned int a1@<W0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  result = malloc_type_malloc(24 * a1, 0x1000040504FFAC1uLL);
  *(a2 + 8) = result;
  *(a2 + 16) = 0;
  *(a2 + 20) = a1;
  *(a2 + 24) = a1 != 0;
  return result;
}

void PerfTimesPush(os_unfair_lock_t lock, __int128 *a2)
{
  if (lock && lock[5]._os_unfair_lock_opaque)
  {
    os_unfair_lock_lock(lock);
    v4 = *&lock[2]._os_unfair_lock_opaque + 24 * lock[4]._os_unfair_lock_opaque;
    v5 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v5;
    os_unfair_lock_opaque = lock[4]._os_unfair_lock_opaque;
    if (os_unfair_lock_opaque == lock[5]._os_unfair_lock_opaque - 1)
    {
      v7 = 0;
      LOBYTE(lock[6]._os_unfair_lock_opaque) = 1;
    }

    else
    {
      v7 = os_unfair_lock_opaque + 1;
    }

    lock[4]._os_unfair_lock_opaque = v7;

    os_unfair_lock_unlock(lock);
  }
}

uint64_t PerfTimesNextIndex(uint64_t a1, int a2)
{
  if (*(a1 + 20) == a2)
  {
    return 0;
  }

  else
  {
    return (a2 + 1);
  }
}

void PerfTimesForEach(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1 && *(a1 + 20))
  {
    v10 = v3;
    os_unfair_lock_lock(a1);
    v4 = *(a1 + 24);
    if (v4 == 1)
    {
      v5 = *(a1 + 16);
      if (*(a1 + 20) == v5)
      {
        v6 = 0;
      }

      else
      {
        v6 = v5 + 1;
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = v4 == 0;
    v8 = 16;
    if (!v7)
    {
      v8 = 20;
    }

    v9 = *(a1 + v8);
    if (v9 >= 1)
    {
      do
      {
        v10[2](v10, *(a1 + 8) + 24 * v6);
        if (*(a1 + 20) == v6)
        {
          v6 = 0;
        }

        else
        {
          ++v6;
        }

        --v9;
      }

      while (v9);
    }

    os_unfair_lock_unlock(a1);
    v3 = v10;
  }
}

double PerfTimesMinForKind(uint64_t a1, int a2)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0x7FEFFFFFFFFFFFFFLL;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __PerfTimesMinForKind_block_invoke;
  v4[3] = &unk_1E7F48BB0;
  v5 = a2;
  v4[4] = &v6;
  PerfTimesForEach(a1, v4);
  v2 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v2;
}

void sub_1BB49969C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __PerfTimesMinForKind_block_invoke(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8 * *(result + 40));
  v3 = *(*(result + 32) + 8);
  if (v2 < *(v3 + 24))
  {
    *(v3 + 24) = v2;
  }

  return result;
}

double PerfTimesMaxForKind(uint64_t a1, int a2)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0x10000000000000;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __PerfTimesMaxForKind_block_invoke;
  v4[3] = &unk_1E7F48BB0;
  v5 = a2;
  v4[4] = &v6;
  PerfTimesForEach(a1, v4);
  v2 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v2;
}

void sub_1BB49978C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __PerfTimesMaxForKind_block_invoke(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8 * *(result + 40));
  v3 = *(*(result + 32) + 8);
  if (v2 > *(v3 + 24))
  {
    *(v3 + 24) = v2;
  }

  return result;
}

double PerfTimesMin(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0x7FEFFFFFFFFFFFFFLL;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __PerfTimesMin_block_invoke;
  v3[3] = &unk_1E7F48BD8;
  v3[4] = &v4;
  PerfTimesForEach(a1, v3);
  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_1BB499878(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __PerfTimesMin_block_invoke(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = 0.0;
  do
  {
    v3 = v3 + *(a2 + v2);
    v2 += 8;
  }

  while (v2 != 24);
  v4 = *(*(result + 32) + 8);
  if (v3 < *(v4 + 24))
  {
    *(v4 + 24) = v3;
  }

  return result;
}

double PerfTimesMax(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0x10000000000000;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __PerfTimesMax_block_invoke;
  v3[3] = &unk_1E7F48BD8;
  v3[4] = &v4;
  PerfTimesForEach(a1, v3);
  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_1BB499978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __PerfTimesMax_block_invoke(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = 0.0;
  do
  {
    v3 = v3 + *(a2 + v2);
    v2 += 8;
  }

  while (v2 != 24);
  v4 = *(*(result + 32) + 8);
  if (v3 > *(v4 + 24))
  {
    *(v4 + 24) = v3;
  }

  return result;
}

double PerfTimesAverageLatency(uint64_t a1)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __PerfTimesAverageLatency_block_invoke;
  v3[3] = &unk_1E7F48C00;
  v3[4] = &v8;
  v3[5] = &v4;
  PerfTimesForEach(a1, v3);
  v1 = v9[3] / v5[6];
  _Block_object_dispose(&v4, 8);
  _Block_object_dispose(&v8, 8);
  return v1;
}

void sub_1BB499AA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t __PerfTimesAverageLatency_block_invoke(uint64_t result, uint64_t a2)
{
  for (i = 0; i != 24; i += 8)
  {
    *(*(*(result + 32) + 8) + 24) = *(a2 + i) + *(*(*(result + 32) + 8) + 24);
  }

  ++*(*(*(result + 40) + 8) + 24);
  return result;
}

double PerfTimesAverageLatencyForKind(uint64_t a1, int a2)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __PerfTimesAverageLatencyForKind_block_invoke;
  v4[3] = &unk_1E7F48C28;
  v5 = a2;
  v4[4] = &v10;
  v4[5] = &v6;
  PerfTimesForEach(a1, v4);
  v2 = v11[3] / v7[6];
  _Block_object_dispose(&v6, 8);
  _Block_object_dispose(&v10, 8);
  return v2;
}

void sub_1BB499BE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 64), 8);
  _Unwind_Resume(a1);
}

double __PerfTimesAverageLatencyForKind_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 32) + 8);
  result = *(a2 + 8 * *(a1 + 48)) + *(v2 + 24);
  *(v2 + 24) = result;
  ++*(*(*(a1 + 40) + 8) + 24);
  return result;
}

__n128 AVTARKitTransformToSceneKitTransformMatrix(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 >= 2)
  {
    if (a1 == 2 && (a2 - 2) < 3)
    {
      v6 = qword_1BB4F08D0[a2 - 2];
      goto LABEL_9;
    }
  }

  else
  {
    v5 = avt_default_log(a1);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      AVTARKitTransformToSceneKitTransformMatrix_cold_1(a1, v5);
    }
  }

  v6 = 0;
LABEL_9:
  v7 = v6 + 3;
  v8 = v6 + 2;
  if (a3 != 2)
  {
    v8 = v6;
  }

  if (a3 == 3)
  {
    v9 = v6 + 1;
  }

  else
  {
    v9 = v8;
  }

  if (a3 == 4)
  {
    v9 = v7;
  }

  if (v9 >= 4)
  {
    v9 -= 4;
  }

  return AVTARKitTransformToSceneKitTransformMatrix_rotationMatrices[4 * v9];
}

__n128 AVTSceneKitTextureCoordinatesForCaptureDeviceTexture(void *a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v7 = a1;
  v9 = v7;
  if (a4 > 2)
  {
    if (a4 == 3)
    {
      *&_Q0 = 1065353216;
      v25 = _Q0;
      *&_Q0 = 0x3F80000000000000;
      v26 = _Q0;
      __asm { FMOV            V0.2S, #1.0 }

      v15 = [v7 width];
      goto LABEL_13;
    }

    if (a4 == 4)
    {
      *&_Q0 = 0x3F80000000000000;
      v24 = _Q0;
      *&_Q0 = 1065353216;
      v26 = _Q0;
      __asm { FMOV            V0.2S, #1.0 }

      v15 = [v7 width];
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  if (a4 >= 2)
  {
    if (a4 == 2)
    {
      __asm { FMOV            V0.2S, #1.0 }

      v23 = _Q0;
      *&_Q0 = 0;
      goto LABEL_9;
    }

LABEL_11:
    *&_Q0 = 0;
    v23 = _Q0;
    *&_Q0 = 0;
    v26 = _Q0;
    goto LABEL_12;
  }

  *&_Q0 = 0;
  v23 = _Q0;
  __asm { FMOV            V0.2S, #1.0 }

LABEL_9:
  v26 = _Q0;
LABEL_12:
  v15 = [v7 width];
LABEL_13:
  v17 = v15;
  v18 = [v9 height];
  if (a4 <= 2)
  {
    v17 = [v9 height];
    v18 = [v9 width];
  }

  v19 = a3 * v17;
  v20 = a2 * v18;
  v21 = v26;
  if (v19 <= v20)
  {
    if (v19 < v20)
    {
      *&v21 = ((*&v26 + -0.5) * (v19 / v20)) + 0.5;
      v26 = v21;
    }
  }

  else
  {
    *(&v21 + 1) = ((*(&v26 + 1) + -0.5) * (v20 / v19)) + 0.5;
    v26 = v21;
  }

  return v26;
}

id AVTRenderingCacheFolderURL()
{
  v0 = +[AVTResourceLocator sharedResourceLocator];
  v1 = [(AVTResourceLocator *)v0 rootCacheURL];

  return v1;
}

void AVTSetARCompositingEnabled(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 set_enableARMode:?];
  v5 = [v2 pointOfView];

  v3 = [v5 camera];
  v4 = [v3 grain];
  [v4 setIntensity:?];
}

void AVTApplyARGrainIfNeeded(void *a1, void *a2)
{
  v10 = a1;
  v3 = a2;
  v4 = [v10 pointOfView];
  v5 = [v4 camera];
  v6 = [v5 grain];
  [v3 cameraGrainIntensity];
  if (v7 == 0.0)
  {
    [v6 setIntensity:?];
  }

  else
  {
    [v6 setIntensity:?];
    [v10 _backingSize];
    v8 = [v3 camera];
    [v8 imageResolution];

    [v6 setScale:?];
    [v6 setColored:?];
    v9 = [v3 cameraGrainTexture];
    [v6 setTexture:?];

    [v3 cameraGrainIntensity];
    [v6 setSlice:?];
  }
}

id AVTMTLTextureDescriptorCreateFromTexture(void *a1)
{
  if (a1)
  {
    v1 = MEMORY[0x1E69741B8];
    v2 = a1;
    v3 = objc_alloc_init(v1);
    [v2 textureType];
    [v3 setTextureType:?];
    [v2 pixelFormat];
    [v3 setPixelFormat:?];
    [v2 width];
    [v3 setWidth:?];
    [v2 height];
    [v3 setHeight:?];
    [v2 depth];
    [v3 setDepth:?];
    [v2 mipmapLevelCount];
    [v3 setMipmapLevelCount:?];
    [v2 sampleCount];
    [v3 setSampleCount:?];
    [v2 arrayLength];
    [v3 setArrayLength:?];
    [v2 cpuCacheMode];
    [v3 setCpuCacheMode:?];
    [v2 storageMode];
    [v3 setStorageMode:?];
    [v2 usage];

    [v3 setUsage:?];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id plistWithVector(uint64_t a1, __n128 a2)
{
  v2 = numberFromDouble(a2.n128_f32[0]);
  v3 = numberFromDouble(a2.n128_f32[1]);
  v4 = numberFromDouble(a2.n128_f32[2]);
  if ([v2 isEqualToNumber:a2.n128_u64[0]] && objc_msgSend(v2, "isEqualToNumber:"))
  {
    v5 = v2;
  }

  else
  {
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:? forKeys:? count:?];
  }

  v6 = v5;

  return v6;
}

id numberFromDouble(double a1)
{
  v1 = [MEMORY[0x1E696AB98] decimalNumberHandlerWithRoundingMode:? scale:? raiseOnExactness:? raiseOnOverflow:? raiseOnUnderflow:? raiseOnDivideByZero:?];
  v2 = [MEMORY[0x1E696AB90] numberWithDouble:?];
  v3 = [v2 decimalNumberByRoundingAccordingToBehavior:?];

  return v3;
}

id AVTMergeSpecializationSettings(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = objc_opt_class();
  v6 = __AVTMergeSpecializationSettings(0, v4, v3, @"ARKit driven morpher", v5);
  v7 = objc_opt_class();
  v8 = __AVTMergeSpecializationSettings(v6, v4, v3, @"ARKit driven material", v7);

  v9 = objc_opt_class();
  v10 = __AVTMergeSpecializationSettings(v8, v4, v3, @"ARKit disabled blendshapes", v9);

  v11 = objc_opt_class();
  v12 = __AVTMergeSpecializationSettings(v10, v4, v3, @"dynamics", v11);

  v13 = objc_opt_class();
  v14 = __AVTMergeSpecializationSettings(v12, v4, v3, @"AR", v13);

  return v14;
}

id __AVTMergeSpecializationSettings(void *a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v9 = a1;
  v10 = a4;
  v11 = a3;
  v12 = [a2 objectForKeyedSubscript:?];
  v13 = [v11 objectForKeyedSubscript:?];

  if (v12 | v13)
  {
    if (objc_opt_class() == a5)
    {
      v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v15 = v16;
      if (v12)
      {
        [v16 addEntriesFromDictionary:?];
      }

      if (v13)
      {
        [v15 addEntriesFromDictionary:?];
      }
    }

    else
    {
      v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v15 = v14;
      if (v12)
      {
        [v14 addObjectsFromArray:?];
      }

      if (v13)
      {
        [v15 addObjectsFromArray:?];
      }
    }

    if (!v9)
    {
      v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    [v9 setObject:? forKeyedSubscript:?];
  }

  return v9;
}

void sub_1BB49F068(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id AVTColorApplyVariation(void *a1, void *a2, void *a3, double a4)
{
  v16 = *&a4;
  v6 = a1;
  v7 = a2;
  v8 = a3;
  v9 = v8;
  if (v16 == 0.0)
  {
    goto LABEL_2;
  }

  if (v16 <= 0.0)
  {
    if (v7)
    {
      *&v12 = AVTGetColorComponents(v6);
      v15 = v12;
      AVTGetColorComponents(v7);
      goto LABEL_8;
    }

LABEL_2:
    v10 = v6;
    goto LABEL_9;
  }

  if (!v8)
  {
    goto LABEL_2;
  }

  *&v11 = AVTGetColorComponents(v6);
  v15 = v11;
  AVTGetColorComponents(v9);
LABEL_8:
  v10 = [MEMORY[0x1E69DC888] colorWithRed:v15 green:? blue:? alpha:?];
LABEL_9:
  v13 = v10;

  return v13;
}

void *_scanColor(void *result, float *a2, float *a3, float *a4, float *a5)
{
  if (result)
  {
    v14 = 0;
    v13 = 0;
    v12 = 0;
    result = sscanf([result UTF8String], "%d %d %d %d", &v14, &v13, &v12 + 4, &v12);
    v9 = v13 / 255.0;
    v10 = 1.0;
    v11 = SHIDWORD(v12) / 255.0;
    if (result != 3)
    {
      if (result == 1)
      {
        v9 = v14 / 255.0;
        v11 = v9;
      }

      else
      {
        v10 = v12 / 255.0;
      }
    }

    *a2 = v14 / 255.0;
    *a3 = v9;
    *a4 = v11;
    *a5 = v10;
  }

  return result;
}

__n128 AVTAvatarPoseRepresentationGetTransform(void *a1)
{
  v1 = a1;
  if ([v1 count] == 16)
  {
    v53 = [v1 objectAtIndexedSubscript:?];
    [v53 floatValue];
    v59 = v2;
    v51 = [v1 objectAtIndexedSubscript:?];
    [v51 floatValue];
    v57 = v3;
    v49 = [v1 objectAtIndexedSubscript:?];
    [v49 floatValue];
    v55 = v4;
    v48 = [v1 objectAtIndexedSubscript:?];
    [v48 floatValue];
    v5.i64[0] = __PAIR64__(v57, v59);
    v5.i64[1] = __PAIR64__(v6, v55);
    v60 = v5;
    v47 = [v1 objectAtIndexedSubscript:?];
    [v47 floatValue];
    v46 = [v1 objectAtIndexedSubscript:?];
    [v46 floatValue];
    v45 = [v1 objectAtIndexedSubscript:?];
    [v45 floatValue];
    v7 = [v1 objectAtIndexedSubscript:?];
    [v7 floatValue];
    v8 = [v1 objectAtIndexedSubscript:?];
    [v8 floatValue];
    v9 = [v1 objectAtIndexedSubscript:?];
    [v9 floatValue];
    v10 = [v1 objectAtIndexedSubscript:?];
    [v10 floatValue];
    v11 = [v1 objectAtIndexedSubscript:?];
    [v11 floatValue];
    v12 = [v1 objectAtIndexedSubscript:?];
    [v12 floatValue];
    v13 = [v1 objectAtIndexedSubscript:?];
    [v13 floatValue];
    v14 = [v1 objectAtIndexedSubscript:?];
    [v14 floatValue];
    v15 = [v1 objectAtIndexedSubscript:?];
    [v15 floatValue];
  }

  else
  {
    v16 = v1;
    v17 = [v16 objectAtIndexedSubscript:?];
    [v17 floatValue];
    v18 = [v16 objectAtIndexedSubscript:?];
    [v18 floatValue];
    v19 = [v16 objectAtIndexedSubscript:?];

    [v19 floatValue];
    v20 = v16;
    v21 = [v20 objectAtIndexedSubscript:?];
    [v21 floatValue];
    v56 = v22;
    v23 = [v20 objectAtIndexedSubscript:?];
    [v23 floatValue];
    v61 = v24;
    v25 = [v20 objectAtIndexedSubscript:?];
    [v25 floatValue];
    v58 = v26;
    v27 = [v20 objectAtIndexedSubscript:?];

    [v27 floatValue];
    v28 = v56;
    v28.f32[1] = v61;
    v28.f32[2] = v58;
    v52 = v28;
    v28.i32[3] = v29;
    v50 = v28;

    v30 = v20;
    if ([v30 count] == 10)
    {
      v31 = [v30 objectAtIndexedSubscript:?];
      [v31 floatValue];
      v54 = v32;
      v33 = [v30 objectAtIndexedSubscript:?];
      [v33 floatValue];
      v34 = [v30 objectAtIndexedSubscript:?];
      [v34 floatValue];
    }

    else
    {
      __asm { FMOV            V0.4S, #1.0 }

      v54 = *&_Q0;
    }

    v40 = *MEMORY[0x1E69E9B18];
    v41 = vmulq_f32(v50, v50);
    v42 = vaddq_f32(v41, v41);
    v43 = vmulq_laneq_f32(v52, v50, 3);
    v40.f32[0] = (1.0 - v42.f32[1]) - v42.f32[2];
    v40.f32[1] = ((v56.f32[0] * v61) + v43.f32[2]) + ((v56.f32[0] * v61) + v43.f32[2]);
    v40.f32[2] = ((v56.f32[0] * v58) - v43.f32[1]) + ((v56.f32[0] * v58) - v43.f32[1]);
    v60 = vmulq_n_f32(v40, v54);
  }

  return v60;
}

void _simd_slerp_internal(float32x4_t a1, float32x4_t a2, float a3)
{
  v5 = 1.0 - a3;
  v6 = vsubq_f32(a1, a2);
  v7 = vmulq_f32(v6, v6);
  v8 = vaddq_f32(a1, a2);
  v9 = vmulq_f32(v8, v8);
  v10 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v7.i8, *&vextq_s8(v7, v7, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v9.i8, *&vextq_s8(v9, v9, 8uLL)))));
  v11 = v10 + v10;
  if ((v10 + v10) != 0.0)
  {
    sinf(v11);
  }

  if ((v5 * v11) != 0.0)
  {
    sinf(v5 * v11);
  }

  v12 = v11 * a3;
  if (v12 != 0.0)
  {
    sinf(v12);
  }
}

void *AVTFixVFXShaderModifierFromSCNShaderModifier(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 containsString:?])
  {
    v5 = [v3 mutableCopy];
    [v5 length];
    [v5 replaceOccurrencesOfString:? withString:? options:? range:?];
    if ([v5 containsString:?])
    {
      [v4 isEqualToString:?];
      [v5 length];
      [v5 replaceOccurrencesOfString:? withString:? options:? range:?];
      [v5 length];
      [v5 replaceOccurrencesOfString:? withString:? options:? range:?];
      v6 = [v5 copy];

      goto LABEL_6;
    }
  }

  v6 = v3;
LABEL_6:

  return v6;
}

void __AVTFixMaterialsContainingSceneKitShaderModifiersInVFXNodeHierarchy_block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = [a2 model];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 shaderModifiers];
    v19 = 0;
    if (v4)
    {
      v5 = v4;
      v6 = AVTFixVFXShaderModifiersFromSCNShaderModifiers(v4, &v19);

      [v3 setShaderModifiers:?];
    }

    else
    {
      v6 = 0;
    }

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = [v3 materials];
    v8 = [v7 countByEnumeratingWithState:? objects:? count:?];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; i = (i + 1))
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          v14 = 0;
          v13 = [v12 shaderModifiers];

          if (v13)
          {
            v6 = AVTFixVFXShaderModifiersFromSCNShaderModifiers(v13, &v14);

            [v12 setShaderModifiers:?];
          }

          else
          {
            v6 = 0;
          }

          if (((v19 & 1) != 0 || v14 == 1) && [v12 blendMode] != 1)
          {
            [v12 setBlendMode:?];
          }
        }

        v9 = [v7 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v9);
    }
  }
}

id AVTFixVFXShaderModifiersFromSCNShaderModifiers(void *a1, _BYTE *a2)
{
  v3 = a1;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__4;
  v12 = __Block_byref_object_dispose__4;
  v13 = 0;
  [v3 enumerateKeysAndObjectsUsingBlock:?];
  *a2 = *(v15 + 24);
  v4 = v9[5];
  if (v4)
  {
    v5 = [v4 copy];
  }

  else
  {
    v5 = v3;
  }

  v6 = v5;
  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(&v14, 8);

  return v6;
}

void sub_1BB4A692C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 48), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __AVTFixVFXShaderModifiersFromSCNShaderModifiers_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = AVTFixVFXShaderModifierFromSCNShaderModifier(v5, v11);

  if (v6 != v5)
  {
    v7 = *(*(*(a1 + 40) + 8) + 40);
    if (!v7)
    {
      v8 = [*(a1 + 32) mutableCopy];
      v9 = *(*(a1 + 40) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;

      v7 = *(*(*(a1 + 40) + 8) + 40);
    }

    [v7 setObject:? forKeyedSubscript:?];
  }
}

void __copy_assignment_8_8_t0w72_s72_s80_t88w8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 32);
  v6 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  *(a1 + 16) = v4;
  objc_storeStrong((a1 + 72), *(a2 + 72));
  objc_storeStrong((a1 + 80), *(a2 + 80));
  *(a1 + 88) = *(a2 + 88);
}

__CFString *AVTPrereleaseStickerPackForStickerPack(void *a1)
{
  v1 = a1;
  v2 = @"stickers";
  if ([(__CFString *)v1 isEqualToString:?])
  {
    v3 = @"stickersPrerelease";
  }

  else
  {
    v2 = @"posesPack";
    if ([(__CFString *)v1 isEqualToString:?])
    {
      v3 = @"posesPackPrerelease";
    }

    else
    {
      v2 = @"memojiEditorCarousel";
      if ([(__CFString *)v1 isEqualToString:?])
      {
        v3 = @"memojiEditorCarouselPrerelease";
      }

      else
      {
        v2 = @"memojiEditorCarousel_poses";
        v4 = [(__CFString *)v1 isEqualToString:?];
        v5 = v1;
        if (!v4)
        {
          goto LABEL_12;
        }

        v3 = @"memojiEditorCarousel_posesPrerelease";
      }
    }
  }

  if (AVTPrecompiledStickerPackIsEmpty(v3))
  {
    v5 = v2;
  }

  else
  {
    v5 = v3;
  }

LABEL_12:
  v6 = v5;

  return v6;
}

BOOL AVTPrecompiledStickerPackIsEmpty(void *a1)
{
  v1 = AVTPrecompiledStickerPackPlist(a1);
  v2 = [v1 count] == 0;

  return v2;
}

id AVTPrecompiledStickerPackPlistForPuppetNamed(void *a1, void *a2)
{
  v3 = a2;
  v4 = AVTPrecompiledStickerPackPlist(a1);
  v5 = [v4 objectForKeyedSubscript:?];

  if (!v5)
  {
    v5 = [v4 objectForKeyedSubscript:?];
  }

  return v5;
}

id AVTPrecompiledStickerPackPlist(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:?])
  {
    if (AVTPrecompiledStickerPackPlist_onceToken != -1)
    {
      AVTPrecompiledStickerPackPlist_cold_11();
    }

    v2 = AVTPrecompiledStickerPackPlist_kAVTPrecompiledStickerPack_stickers;
LABEL_41:
    v4 = v2;
    goto LABEL_42;
  }

  if ([v1 isEqualToString:?])
  {
    if (AVTPrecompiledStickerPackPlist_onceToken_1809 != -1)
    {
      AVTPrecompiledStickerPackPlist_cold_10();
    }

    v2 = AVTPrecompiledStickerPackPlist_kAVTPrecompiledStickerPack_stickersPrerelease;
    goto LABEL_41;
  }

  if ([v1 isEqualToString:?])
  {
    if (AVTPrecompiledStickerPackPlist_onceToken_1812 != -1)
    {
      AVTPrecompiledStickerPackPlist_cold_9();
    }

    v2 = AVTPrecompiledStickerPackPlist_kAVTPrecompiledStickerPack_posesPack;
    goto LABEL_41;
  }

  if ([v1 isEqualToString:?])
  {
    if (AVTPrecompiledStickerPackPlist_onceToken_2176 != -1)
    {
      AVTPrecompiledStickerPackPlist_cold_8();
    }

    v2 = AVTPrecompiledStickerPackPlist_kAVTPrecompiledStickerPack_posesPackPrerelease;
    goto LABEL_41;
  }

  if ([v1 isEqualToString:?])
  {
    if (AVTPrecompiledStickerPackPlist_onceToken_2179 != -1)
    {
      AVTPrecompiledStickerPackPlist_cold_7();
    }

    v2 = AVTPrecompiledStickerPackPlist_kAVTPrecompiledStickerPack_memojiEditorCarousel;
    goto LABEL_41;
  }

  if ([v1 isEqualToString:?])
  {
    if (AVTPrecompiledStickerPackPlist_onceToken_2195 != -1)
    {
      AVTPrecompiledStickerPackPlist_cold_6();
    }

    v2 = AVTPrecompiledStickerPackPlist_kAVTPrecompiledStickerPack_memojiEditorCarouselPrerelease;
    goto LABEL_41;
  }

  if ([v1 isEqualToString:?])
  {
    if (AVTPrecompiledStickerPackPlist_onceToken_2198 != -1)
    {
      AVTPrecompiledStickerPackPlist_cold_5();
    }

    v2 = AVTPrecompiledStickerPackPlist_kAVTPrecompiledStickerPack_memojiEditorCarousel_poses;
    goto LABEL_41;
  }

  if ([v1 isEqualToString:?])
  {
    if (AVTPrecompiledStickerPackPlist_onceToken_2214 != -1)
    {
      AVTPrecompiledStickerPackPlist_cold_4();
    }

    v2 = AVTPrecompiledStickerPackPlist_kAVTPrecompiledStickerPack_memojiEditorCarousel_posesPrerelease;
    goto LABEL_41;
  }

  if ([v1 isEqualToString:?])
  {
    if (AVTPrecompiledStickerPackPlist_onceToken_2217 != -1)
    {
      AVTPrecompiledStickerPackPlist_cold_3();
    }

    v2 = AVTPrecompiledStickerPackPlist_kAVTPrecompiledStickerPack_memojiEditorThumbnails;
    goto LABEL_41;
  }

  v3 = [v1 isEqualToString:?];
  if (v3)
  {
    if (AVTPrecompiledStickerPackPlist_onceToken_2239 != -1)
    {
      AVTPrecompiledStickerPackPlist_cold_2();
    }

    v2 = AVTPrecompiledStickerPackPlist_kAVTPrecompiledStickerPack_allStickers;
    goto LABEL_41;
  }

  v6 = avt_default_log(v3);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    AVTPrecompiledStickerPackPlist_cold_1(v1, v6, v7, v8, v9, v10, v11, v12);
  }

  v4 = 0;
LABEL_42:

  return v4;
}

void __AVTPrecompiledStickerPackPlist_block_invoke()
{
  v0 = AVTPrecompiledStickerPackPlist_kAVTPrecompiledStickerPack_stickers;
  AVTPrecompiledStickerPackPlist_kAVTPrecompiledStickerPack_stickers = &unk_1F39E3548;
}

void __AVTPrecompiledStickerPackPlist_block_invoke_2()
{
  v0 = AVTPrecompiledStickerPackPlist_kAVTPrecompiledStickerPack_stickersPrerelease;
  AVTPrecompiledStickerPackPlist_kAVTPrecompiledStickerPack_stickersPrerelease = MEMORY[0x1E695E0F8];
}

void __AVTPrecompiledStickerPackPlist_block_invoke_3()
{
  v0 = AVTPrecompiledStickerPackPlist_kAVTPrecompiledStickerPack_posesPack;
  AVTPrecompiledStickerPackPlist_kAVTPrecompiledStickerPack_posesPack = &unk_1F39E3570;
}

void __AVTPrecompiledStickerPackPlist_block_invoke_4()
{
  v0 = AVTPrecompiledStickerPackPlist_kAVTPrecompiledStickerPack_posesPackPrerelease;
  AVTPrecompiledStickerPackPlist_kAVTPrecompiledStickerPack_posesPackPrerelease = MEMORY[0x1E695E0F8];
}

void __AVTPrecompiledStickerPackPlist_block_invoke_5()
{
  v0 = AVTPrecompiledStickerPackPlist_kAVTPrecompiledStickerPack_memojiEditorCarousel;
  AVTPrecompiledStickerPackPlist_kAVTPrecompiledStickerPack_memojiEditorCarousel = &unk_1F39E3598;
}

void __AVTPrecompiledStickerPackPlist_block_invoke_6()
{
  v0 = AVTPrecompiledStickerPackPlist_kAVTPrecompiledStickerPack_memojiEditorCarouselPrerelease;
  AVTPrecompiledStickerPackPlist_kAVTPrecompiledStickerPack_memojiEditorCarouselPrerelease = MEMORY[0x1E695E0F8];
}

void __AVTPrecompiledStickerPackPlist_block_invoke_7()
{
  v0 = AVTPrecompiledStickerPackPlist_kAVTPrecompiledStickerPack_memojiEditorCarousel_poses;
  AVTPrecompiledStickerPackPlist_kAVTPrecompiledStickerPack_memojiEditorCarousel_poses = &unk_1F39E35C0;
}

void __AVTPrecompiledStickerPackPlist_block_invoke_8()
{
  v0 = AVTPrecompiledStickerPackPlist_kAVTPrecompiledStickerPack_memojiEditorCarousel_posesPrerelease;
  AVTPrecompiledStickerPackPlist_kAVTPrecompiledStickerPack_memojiEditorCarousel_posesPrerelease = MEMORY[0x1E695E0F8];
}

void __AVTPrecompiledStickerPackPlist_block_invoke_9()
{
  v0 = AVTPrecompiledStickerPackPlist_kAVTPrecompiledStickerPack_memojiEditorThumbnails;
  AVTPrecompiledStickerPackPlist_kAVTPrecompiledStickerPack_memojiEditorThumbnails = &unk_1F39E35E8;
}

void __AVTPrecompiledStickerPackPlist_block_invoke_10()
{
  v0 = AVTPrecompiledStickerPackPlist_kAVTPrecompiledStickerPack_allStickers;
  AVTPrecompiledStickerPackPlist_kAVTPrecompiledStickerPack_allStickers = &unk_1F39E3610;
}

void OUTLINED_FUNCTION_1_6(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

uint64_t AVTAvatarKitSnapshotVersionNumber(uint64_t a1, uint64_t a2)
{
  if (AVTAvatarKitSnapshotVersionNumber_onceToken != -1)
  {
    AVTAvatarKitSnapshotVersionNumber_cold_1();
  }

  return AVTAvatarKitSnapshotVersionNumber_kAVTAvatarKitSnapshotVersionNumber;
}

void __AVTAvatarKitSnapshotVersionNumber_block_invoke()
{
  v0 = MEMORY[0x1E696AAE8];
  objc_opt_class();
  v10 = [v0 bundleForClass:?];
  v1 = [v10 infoDictionary];
  v2 = [v1 objectForKeyedSubscript:?];

  v3 = [v2 componentsSeparatedByString:?];
  v4 = [v3 firstObject];
  v5 = [v4 integerValue];

  if ([v3 count] < 2)
  {
    v7 = 0;
  }

  else
  {
    v6 = [v3 objectAtIndexedSubscript:?];
    v7 = [v6 integerValue];
  }

  if ([v3 count] < 3)
  {
    v9 = 0;
  }

  else
  {
    v8 = [v3 objectAtIndexedSubscript:?];
    v9 = [v8 integerValue];
  }

  AVTAvatarKitSnapshotVersionNumber_kAVTAvatarKitSnapshotVersionNumber = &v9[125 * &v7[125 * v5]];
}

id AVTAvatarKitSnapshotVersionString(uint64_t a1)
{
  if (AVTAvatarKitSnapshotVersionString_onceToken != -1)
  {
    AVTAvatarKitSnapshotVersionString_cold_1();
  }

  v2 = AVTAvatarKitSnapshotVersionString_kAVTAvatarKitSnapshotVersionString;

  return v2;
}

void __AVTAvatarKitSnapshotVersionString_block_invoke()
{
  v0 = MEMORY[0x1E696AAE8];
  objc_opt_class();
  v4 = [v0 bundleForClass:?];
  v1 = [v4 infoDictionary];
  v2 = [v1 objectForKeyedSubscript:?];
  v3 = AVTAvatarKitSnapshotVersionString_kAVTAvatarKitSnapshotVersionString;
  AVTAvatarKitSnapshotVersionString_kAVTAvatarKitSnapshotVersionString = v2;
}

char *AVTAvatarKitSnapshotVersionNumberFromString(void *a1)
{
  v1 = [a1 componentsSeparatedByString:?];
  v2 = [v1 firstObject];
  v3 = [v2 integerValue];

  if ([v1 count] < 2)
  {
    v5 = 0;
  }

  else
  {
    v4 = [v1 objectAtIndexedSubscript:?];
    v5 = [v4 integerValue];
  }

  if ([v1 count] < 3)
  {
    v7 = 0;
  }

  else
  {
    v6 = [v1 objectAtIndexedSubscript:?];
    v7 = [v6 integerValue];
  }

  return &v7[125 * &v5[125 * v3]];
}

id AVTSceneKitSnapshotVersionString(uint64_t a1)
{
  if (AVTSceneKitSnapshotVersionString_onceToken != -1)
  {
    AVTSceneKitSnapshotVersionString_cold_1();
  }

  v2 = AVTSceneKitSnapshotVersionString_kAVTSceneKitSnapshotVersionString;

  return v2;
}

void __AVTSceneKitSnapshotVersionString_block_invoke()
{
  v0 = MEMORY[0x1E696AAE8];
  objc_opt_class();
  v1 = [v0 bundleForClass:?];
  if (!v1)
  {
    v2 = avt_default_log(0);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __AVTSceneKitSnapshotVersionString_block_invoke_cold_1();
    }
  }

  v3 = [v1 infoDictionary];
  v4 = [v3 objectForKeyedSubscript:?];
  v5 = AVTSceneKitSnapshotVersionString_kAVTSceneKitSnapshotVersionString;
  AVTSceneKitSnapshotVersionString_kAVTSceneKitSnapshotVersionString = v4;
}

BOOL AVTNodeMatchesHierarchyEnumerationOptions(void *a1, char a2)
{
  v3 = a1;
  v4 = v3;
  if ((a2 & 1) != 0 && ([v3 morpher], v5 = objc_claimAutoreleasedReturnValue(), v5, !v5))
  {
    v6 = 0;
  }

  else if ((a2 & 2) != 0)
  {
    v7 = [v4 model];
    v6 = v7 != 0;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

void AVTInitializeShaderCache(uint64_t result, uint64_t a2)
{
  if (AVTInitializeShaderCache_onceToken != -1)
  {
    AVTInitializeShaderCache_cold_1();
  }
}

void __AVTInitializeShaderCache_block_invoke()
{
  v0 = MEMORY[0x1E696AAE8];
  objc_opt_class();
  v1 = [v0 bundleForClass:?];
  [v1 load];
  v2 = +[AVTResourceLocator sharedResourceLocator];
  v3 = [(AVTResourceLocator *)v2 urlForFrameworkResourceAtPath:0 isDirectory:?];

  if (v3)
  {
    MEMORY[0x1BFB0E720](v3);
  }

  else
  {
    v5 = avt_default_log(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __AVTInitializeShaderCache_block_invoke_cold_1();
    }
  }
}

void sub_1BB4AAB10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BB4AC380(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

float AVTMorphWeightApplyBlinkCorrection(void *a1, float a2)
{
  v3 = a1;
  if (([v3 isEqualToString:?] & 1) != 0 || objc_msgSend(v3, "isEqualToString:"))
  {
    v4 = a2;
    if (a2 < 0.0)
    {
      v4 = 0.0;
    }

    v5 = v4 * 1.1;
    v6 = pow(fminf(v5, 1.0), 0.666666667);
    a2 = fminf(v6, 1.0);
  }

  return a2;
}

float AVTMorphWeightApplyCorrectionForTongue(void *a1, float a2, float a3)
{
  v5 = a1;
  v6 = v5;
  if (a3 != -1.0 && (([v5 isEqualToString:?] & 1) != 0 || (objc_msgSend(v6, "isEqualToString:") & 1) != 0 || (objc_msgSend(v6, "isEqualToString:") & 1) != 0 || (objc_msgSend(v6, "isEqualToString:") & 1) != 0 || (objc_msgSend(v6, "isEqualToString:") & 1) != 0 || (objc_msgSend(v6, "isEqualToString:") & 1) != 0 || objc_msgSend(v6, "isEqualToString:")))
  {
    a2 = (1.0 - a3) * a2;
  }

  return a2;
}

void sub_1BB4ADFD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BB4B0EF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, id a35)
{
  objc_destroyWeak(&a35);
  objc_destroyWeak((v35 - 144));
  _Unwind_Resume(a1);
}

double AVTDebugViewValueForIndex(uint64_t a1, int a2)
{
  v2 = a1 + 24;
  v3 = a1 + 16;
  v4 = a1 + 8;
  if (a2 != 1)
  {
    v4 = a1;
  }

  if (a2 != 2)
  {
    v3 = v4;
  }

  if (a2 != 3)
  {
    v2 = v3;
  }

  return *v2;
}

void sub_1BB4B426C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BB4B5190(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BB4B54E8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1BB4B6328(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BB4B6944(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BB4B7FC0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_8(id *a1, void *a2, void *a3, __n128 a4)
{

  [(AVTViewTransitionHelper *)a1 transitionViewToStickerConfiguration:a2 fallbackPose:a3 duration:v6 style:v5 avatar:v4 completionHandler:0 simultaneousAnimationsBlock:v8];
}

id OUTLINED_FUNCTION_3_2(uint64_t a1, uint64_t a2, void *a3)
{

  return a3;
}

id OUTLINED_FUNCTION_4_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{

  return a5;
}

id avt_default_log(uint64_t a1)
{
  if (avt_default_log_once != -1)
  {
    avt_default_log_cold_1();
  }

  v2 = avt_default_log_logger;

  return v2;
}

uint64_t __avt_default_log_block_invoke()
{
  v0 = os_log_create("com.apple.avatarkit", "AvatarKit");
  v1 = avt_default_log_logger;
  avt_default_log_logger = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

BOOL AVTLogAllowsInternalCrash()
{
  if (!os_variant_has_internal_diagnostics())
  {
    return 0;
  }

  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v1 = [v0 bundleIdentifier];

  if ([v1 isEqualToString:?])
  {

    return 0;
  }

  v2 = [v1 isEqualToString:?];

  return !v2;
}

id AVTEditorMetadata(uint64_t a1)
{
  if (AVTEditorMetadata_onceToken != -1)
  {
    AVTEditorMetadata_cold_1();
  }

  v2 = AVTEditorMetadata_kAVTEditorMetadata;

  return v2;
}

void __AVTEditorMetadata_block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E696AE40];
  v4 = AVTPrecompiledMemojiEditorMetadata(a1);
  v2 = [v1 dataWithPropertyList:? format:? options:? error:?];
  v3 = AVTEditorMetadata_kAVTEditorMetadata;
  AVTEditorMetadata_kAVTEditorMetadata = v2;
}

id AVTPrereleaseEditorMetadata(uint64_t a1)
{
  if (AVTPrereleaseEditorMetadata_onceToken != -1)
  {
    AVTPrereleaseEditorMetadata_cold_1();
  }

  v2 = AVTPrereleaseEditorMetadata_kAVTPrereleaseEditorMetadata;

  return v2;
}

void __AVTPrereleaseEditorMetadata_block_invoke(uint64_t a1)
{
  v5 = AVTPrecompiledMemojiPrereleaseEditorMetadata(a1);
  if ([v5 count])
  {
    v1 = v5;
  }

  else
  {
    v2 = AVTPrecompiledMemojiEditorMetadata(0);

    v1 = v2;
  }

  v6 = v1;
  v3 = [MEMORY[0x1E696AE40] dataWithPropertyList:? format:? options:? error:?];
  v4 = AVTPrereleaseEditorMetadata_kAVTPrereleaseEditorMetadata;
  AVTPrereleaseEditorMetadata_kAVTPrereleaseEditorMetadata = v3;
}

id AVTMakePresetLocalizableKey(unint64_t a1, void *a2)
{
  v3 = a2;
  if (AVTPresetCategoryIsPairable(a1))
  {
    v4 = AVTPresetCategoryPairToString(a1);
    if (![v3 isEqualToString:?])
    {
      AVTPresetCategoryIsOnLeftInPair(a1);
    }
  }

  else
  {
    v4 = AVTPresetCategoryToString(a1);
  }

  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:v4, v3];
  v6 = [v5 uppercaseString];

  return v6;
}

id AVTMakePresetPairLocalizableKey(unint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AVTPresetCategoryPairToString(a1);
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:v4, v3];

  v6 = [v5 uppercaseString];

  return v6;
}

id AVTMakeColorPresetLocalizableKey(unint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AVTPresetCategoryToColorCategoryString(a1);
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:v4, v3];

  v6 = [v5 uppercaseString];

  return v6;
}

id AVTLocalizedEditorString(void *a1)
{
  v1 = MEMORY[0x1E696AAE8];
  v2 = a1;
  objc_opt_class();
  v3 = [v1 bundleForClass:?];
  v4 = [v3 localizedStringForKey:? value:? table:?];

  return v4;
}

void *AVTLocalizedPresetString(unint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AAE8];
  v4 = a2;
  objc_opt_class();
  v5 = [v3 bundleForClass:?];
  v6 = AVTMakePresetLocalizableKey(a1, v4);
  v7 = [v5 localizedStringForKey:? value:? table:?];

  if ([v7 length])
  {
    v8 = v7;
  }

  else
  {
    v8 = v4;
  }

  v9 = v8;

  return v8;
}

void *AVTLocalizedPresetPairString(unint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AAE8];
  v4 = a2;
  objc_opt_class();
  v5 = [v3 bundleForClass:?];
  v6 = AVTMakePresetPairLocalizableKey(a1, v4);
  v7 = [v5 localizedStringForKey:? value:? table:?];

  if ([v7 length])
  {
    v8 = v7;
  }

  else
  {
    v8 = v4;
  }

  v9 = v8;

  return v8;
}

void *AVTLocalizedPaletteString(unint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AAE8];
  v4 = a2;
  objc_opt_class();
  v5 = [v3 bundleForClass:?];
  v6 = AVTMakeColorPresetLocalizableKey(a1, v4);
  v7 = [v5 localizedStringForKey:? value:? table:?];

  if ([v7 length])
  {
    v8 = v7;
  }

  else
  {
    v8 = v4;
  }

  v9 = v8;

  return v8;
}

void *AVTLocalizedStickerName(void *a1)
{
  v1 = MEMORY[0x1E696AAE8];
  v2 = a1;
  objc_opt_class();
  v3 = [v1 bundleForClass:?];
  v4 = [v3 localizedStringForKey:? value:? table:?];

  if ([v4 length])
  {
    v5 = v4;
  }

  else
  {
    v5 = v2;
  }

  v6 = v5;

  return v5;
}

void OUTLINED_FUNCTION_0_7(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void sub_1BB4BBB4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BB4BC4EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BB4BDAE8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

id AVTUpgradesForPresetCategory(unint64_t a1, unsigned int a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v16 = AVTPrecompiledMemojiPresetPlist(a1);
  v4 = [v16 objectForKeyedSubscript:?];
  v15 = [v4 objectForKeyedSubscript:?];

  if (v15)
  {
    v5 = AVTPresetCategoryToString(a1);
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__6;
    v22 = __Block_byref_object_dispose__6;
    v23 = 0;
    v6 = v15;
    v7 = [v6 countByEnumeratingWithState:? objects:? count:?];
    if (v7)
    {
      v8 = MEMORY[0];
      do
      {
        for (i = 0; i != v7; i = (i + 1))
        {
          if (MEMORY[0] != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(8 * i);
          v11 = [v10 objectForKeyedSubscript:v15];
          v12 = v11;
          if (!v11 || [v11 unsignedIntegerValue] > a2)
          {
            v17 = v5;
            [v10 enumerateKeysAndObjectsUsingBlock:?];
          }
        }

        v7 = [v6 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v7);
    }

    v13 = v19[5];
    _Block_object_dispose(&v18, 8);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void sub_1BB4BE6A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *AVTPresetCategoryToString(unint64_t a1)
{
  if (a1 > 0x27)
  {
    return 0;
  }

  else
  {
    return off_1E7F497F0[a1];
  }
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __AVTUpgradesForPresetCategory_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v5 isEqualToString:?])
  {
    v6 = *(*(*(a1 + 40) + 8) + 40);
    if (v6)
    {
      [v6 addObject:?];
    }

    else
    {
      v7 = [MEMORY[0x1E695DF70] arrayWithObject:?];
      v8 = *(*(a1 + 40) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;
    }
  }
}

id AVTUpgradePresetIdentifierIfNeeded(unint64_t a1, void *a2, uint64_t a3)
{
  v3 = a3;
  v5 = a2;
  v6 = AVTPrecompiledMemojiPresetPlist(v5);
  v7 = [v6 objectForKeyedSubscript:?];
  v8 = [v7 objectForKeyedSubscript:?];

  v9 = _AVTRemapIdentifier(a1, v5, v3, v8);

  return v9;
}

id _AVTRemapIdentifier(unint64_t a1, void *a2, unsigned int a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  if (v8)
  {
    v25 = AVTPresetCategoryToString(a1);
    v23 = v8;
    obj = v8;
    v9 = [obj countByEnumeratingWithState:? objects:? count:?];
    if (v9)
    {
      v10 = v9;
      v11 = MEMORY[0];
      v12 = a3;
      do
      {
        for (i = 0; i != v10; i = (i + 1))
        {
          if (MEMORY[0] != v11)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(8 * i);
          v15 = [v14 objectForKeyedSubscript:?];
          v16 = v15;
          if (!v15 || [v15 unsignedIntegerValue] > v12)
          {
            v17 = [v14 objectForKeyedSubscript:?];
            v18 = [v17 objectForKeyedSubscript:?];
            v19 = v18;
            if (v18)
            {
              v20 = v18;

              v7 = v20;
            }
          }
        }

        v10 = [obj countByEnumeratingWithState:? objects:? count:?];
      }

      while (v10);
    }

    v21 = v7;
    v8 = v23;
  }

  else
  {
    v21 = v7;
  }

  return v21;
}

id AVTPresetCategoriesPairs()
{
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:? count:?];
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:? count:?];
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:? forKeys:? count:?];

  return v0;
}

void *AVTUpgradePairedPresetCategoriesIfNeeded(void *a1)
{
  v1 = a1;
  obj = AVTPresetCategoriesPairs();
  v15 = [obj countByEnumeratingWithState:? objects:? count:?];
  v2 = 0;
  if (v15)
  {
    v14 = MEMORY[0];
    do
    {
      for (i = 0; i != v15; i = (i + 1))
      {
        if (MEMORY[0] != v14)
        {
          objc_enumerationMutation(obj);
        }

        v4 = [v1 objectForKeyedSubscript:?];

        if (v4)
        {
          if (!v2)
          {
            v2 = [v1 mutableCopy];
          }

          v5 = [obj objectForKeyedSubscript:?];
          v6 = [v5 countByEnumeratingWithState:? objects:? count:?];
          if (v6)
          {
            v7 = v6;
            v8 = MEMORY[0];
            do
            {
              for (j = 0; j != v7; j = (j + 1))
              {
                if (MEMORY[0] != v8)
                {
                  objc_enumerationMutation(v5);
                }

                v10 = [v1 objectForKeyedSubscript:?];
                [v2 setObject:? forKeyedSubscript:?];
              }

              v7 = [v5 countByEnumeratingWithState:? objects:? count:?];
            }

            while (v7);
          }
        }
      }

      v15 = [obj countByEnumeratingWithState:? objects:? count:?];
    }

    while (v15);
  }

  if (v2)
  {
    v11 = v2;
  }

  else
  {
    v11 = v1;
  }

  v12 = v11;

  return v11;
}

id AVTUpgradeColorPresetIdentifierIfNeeded(unint64_t a1, void *a2, unsigned int a3)
{
  v5 = a2;
  v6 = AVTColorPalettes();
  v7 = [v6 objectForKeyedSubscript:?];
  v8 = [v7 objectForKeyedSubscript:?];

  v9 = _AVTRemapIdentifier(a1, v5, a3, v8);

  return v9;
}

id AVTIdentifierOfUpgradedColorPresetForAssetPresetIdentifier(unint64_t a1, void *a2, unint64_t a3, _DWORD *a4, unsigned int a5)
{
  v41 = a2;
  v8 = AVTPrecompiledMemojiPresetPlist(v41);
  v9 = [v8 objectForKeyedSubscript:?];
  v10 = [v9 objectForKeyedSubscript:?];

  if (v10)
  {
    v11 = AVTPresetCategoryToString(a1);
    v12 = v11;
    if (a3 >= 3)
    {
      v31 = avt_default_log(v11);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        AVTIdentifierOfUpgradedColorPresetForAssetPresetIdentifier_cold_1(v31);
      }

      v30 = 0;
    }

    else
    {
      v33 = v10;
      v34 = v8;
      obj = v10;
      v13 = [obj countByEnumeratingWithState:? objects:? count:?];
      if (v13)
      {
        v14 = v13;
        v40 = 0;
        v15 = MEMORY[0];
        v16 = a5;
        v36 = MEMORY[0];
        v37 = a5;
        v35 = v12;
        do
        {
          for (i = 0; i != v14; i = (i + 1))
          {
            if (MEMORY[0] != v15)
            {
              objc_enumerationMutation(obj);
            }

            v18 = *(8 * i);
            v19 = [v18 objectForKeyedSubscript:?];
            v20 = v19;
            if (!v19 || [v19 unsignedIntegerValue] > v16)
            {
              v21 = [v18 objectForKeyedSubscript:?];
              v22 = [v21 objectForKeyedSubscript:?];
              v23 = v22;
              if (v22)
              {
                v24 = v14;
                v25 = [v22 objectForKeyedSubscript:?];
                v26 = v25;
                if (v25)
                {
                  v27 = v25;

                  v28 = [v23 objectForKeyedSubscript:?];
                  [v28 floatValue];
                  *a4 = v29;

                  v40 = v27;
                  v12 = v35;
                  v15 = v36;
                  v16 = v37;
                }

                v14 = v24;
              }
            }
          }

          v14 = [obj countByEnumeratingWithState:? objects:? count:?];
        }

        while (v14);
      }

      else
      {
        v40 = 0;
      }

      v30 = v40;
      v10 = v33;
      v8 = v34;
    }
  }

  else
  {
    v30 = 0;
  }

  return v30;
}

__CFString *AVTPresetCategoryPairToString(unint64_t a1)
{
  v2 = a1 - 25;
  if (a1 - 25 < 7 && ((0x63u >> v2) & 1) != 0)
  {
    v3 = off_1E7F49960[v2];
  }

  else
  {
    v3 = AVTPresetCategoryToString(a1);
  }

  return v3;
}

__CFString *AVTPresetCategoryToColorCategoryString(unint64_t a1)
{
  if (a1 - 25 < 2)
  {
    v2 = @"audio";
  }

  else if (a1 - 30 >= 2)
  {
    if (a1)
    {
      v2 = AVTPresetCategoryToString(a1);
    }

    else
    {
      v2 = @"skin";
    }
  }

  else
  {
    v2 = @"earrings";
  }

  return v2;
}

uint64_t AVTColorCategoryFromString(void *a1)
{
  v1 = a1;
  if (AVTColorCategoryFromString_onceToken != -1)
  {
    AVTColorCategoryFromString_cold_1();
  }

  v2 = [AVTColorCategoryFromString_nameToCategory objectForKeyedSubscript:?];
  if (v2)
  {
    v3 = [AVTColorCategoryFromString_nameToCategory objectForKeyedSubscript:?];
    v4 = [v3 intValue];
  }

  else
  {
    v4 = 40;
  }

  return v4;
}

void __AVTColorCategoryFromString_block_invoke()
{
  v0 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:?];
  v1 = AVTColorCategoryFromString_nameToCategory;
  AVTColorCategoryFromString_nameToCategory = v0;

  for (i = 0; i != 40; ++i)
  {
    v3 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    v4 = AVTColorCategoryFromString_nameToCategory;
    v5 = AVTPresetCategoryToColorCategoryString(i);
    [v4 setObject:? forKeyedSubscript:?];
  }
}

uint64_t AVTPresetCategoryFromString(void *a1)
{
  v1 = a1;
  if (AVTPresetCategoryFromString_onceToken != -1)
  {
    AVTPresetCategoryFromString_cold_1();
  }

  v2 = [AVTPresetCategoryFromString_nameToCategory objectForKeyedSubscript:?];
  if (v2)
  {
    v3 = [AVTPresetCategoryFromString_nameToCategory objectForKeyedSubscript:?];
    v4 = [v3 integerValue];
  }

  else
  {
    v4 = 40;
  }

  return v4;
}

void __AVTPresetCategoryFromString_block_invoke()
{
  v0 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:?];
  v1 = AVTPresetCategoryFromString_nameToCategory;
  AVTPresetCategoryFromString_nameToCategory = v0;

  for (i = 0; i != 40; ++i)
  {
    v3 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    v4 = AVTPresetCategoryFromString_nameToCategory;
    v5 = AVTPresetCategoryToString(i);
    [v4 setObject:? forKeyedSubscript:?];
  }
}

uint64_t AVTPresetCategoryToComponentType(unint64_t a1, uint64_t a2)
{
  if (a1 >= 0x29)
  {
    AVTPresetCategoryToComponentType_cold_1();
  }

  return qword_1BB4F0A90[a1];
}

uint64_t AVTAvatarBodyPartForComponentType(uint64_t a1)
{
  if ((a1 - 34) > 7)
  {
    return 1;
  }

  else
  {
    return qword_1BB4F0BD8[a1 - 34];
  }
}

uint64_t AVTEnumeratePresetCategories(uint64_t result)
{
  if (result)
  {
    v1 = result;
    for (i = 0; i != 40; ++i)
    {
      result = (*(v1 + 16))(v1, i);
    }
  }

  return result;
}

void AVTEvaluateNameMatchingRules(void *a1, void *a2, void *a3)
{
  v5 = a3;
  if (a1)
  {
    v6 = a2;
    v7 = a1;
    v8 = [v7 objectForKeyedSubscript:?];
    objc_opt_class();
    v9 = objc_opt_isKindOfClass() & 1;
    objc_opt_class();
    v10 = objc_opt_isKindOfClass() & 1;
    v11 = [v7 objectForKeyedSubscript:?];

    objc_opt_class();
    LOBYTE(v7) = objc_opt_isKindOfClass() & 1;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v16 = MEMORY[0x1E69E9820];
    v13 = isKindOfClass & 1;
    v20 = v9;
    v21 = v10;
    v22 = v7;
    v17 = v8;
    v18 = v11;
    v19 = v5;
    v23 = v13;
    v14 = v11;
    v15 = v8;
    [v6 enumerateHierarchyUsingBlock:{v16, 3221225472, __AVTEvaluateNameMatchingRules_block_invoke, &unk_1E7F49720}];
  }
}

void __AVTEvaluateNameMatchingRules_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 name];
  v5 = v4;
  if (!v4)
  {
    goto LABEL_30;
  }

  if (*(a1 + 56) == 1)
  {
    if ([v4 containsString:?])
    {
      goto LABEL_30;
    }
  }

  else if (*(a1 + 57) == 1)
  {
    v6 = *(a1 + 32);
    v7 = [v6 countByEnumeratingWithState:? objects:? count:?];
    if (v7)
    {
      v8 = v7;
      v9 = MEMORY[0];
LABEL_8:
      v10 = 0;
      while (1)
      {
        if (MEMORY[0] != v9)
        {
          objc_enumerationMutation(v6);
        }

        if ([v5 containsString:?])
        {
          goto LABEL_29;
        }

        if (v8 == ++v10)
        {
          v8 = [v6 countByEnumeratingWithState:? objects:? count:?];
          if (v8)
          {
            goto LABEL_8;
          }

          break;
        }
      }
    }
  }

  if (*(a1 + 58) != 1)
  {
    if (*(a1 + 59) != 1)
    {
      goto LABEL_30;
    }

    v6 = *(a1 + 40);
    v11 = [v6 countByEnumeratingWithState:0 objects:? count:?];
    if (v11)
    {
      v12 = v11;
      v13 = MEMORY[0];
      while (2)
      {
        for (i = 0; i != v12; i = (i + 1))
        {
          if (MEMORY[0] != v13)
          {
            objc_enumerationMutation(v6);
          }

          if ([v5 containsString:?])
          {
            (*(*(a1 + 48) + 16))();
            goto LABEL_29;
          }
        }

        v12 = [v6 countByEnumeratingWithState:? objects:? count:?];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

LABEL_29:

    goto LABEL_30;
  }

  if ([v5 containsString:?])
  {
    (*(*(a1 + 48) + 16))();
  }

LABEL_30:
}

void __AVTPresetLoadPresetsIfNeeded_block_invoke(uint64_t a1)
{
  v1 = AVTPrecompiledMemojiPresetPlist(a1);
  [v1 enumerateKeysAndObjectsUsingBlock:?];
  [v1 enumerateKeysAndObjectsUsingBlock:?];
}

void __destructor_8_s72_s80(uint64_t a1)
{
  v2 = *(a1 + 80);
}

void *AVTSetInitialValuesExportedAsAnimations(void *a1, void *a2, uint64_t a3, void *a4)
{
  v37 = a1;
  v7 = a2;
  v8 = a4;
  if (a3)
  {
    v12 = 0;
    goto LABEL_28;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      AVTSetInitialValuesExportedAsAnimations_cold_1();
    }

    v13 = v7;
    v14 = [v13 animations];
    v15 = objc_alloc(MEMORY[0x1E695DF70]);
    [v14 count];
    v16 = [v15 initWithCapacity:?];
    v17 = v14;
    v18 = [v17 countByEnumeratingWithState:? objects:? count:?];
    if (v18)
    {
      v19 = v18;
      v35 = v13;
      v36 = v7;
      v20 = 0;
      v21 = MEMORY[0];
      do
      {
        for (i = 0; i != v19; i = (i + 1))
        {
          if (MEMORY[0] != v21)
          {
            objc_enumerationMutation(v17);
          }

          v23 = *(8 * i);
          v24 = AVTSetInitialValuesExportedAsAnimations(v37, v23, a3, v8);
          if (v24)
          {
            [v16 addObject:?];
          }

          v20 |= v24 != v23;
        }

        v19 = [v17 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v19);

      v13 = v35;
      v7 = v36;
      if (v20)
      {
        if ([v16 count])
        {
          v12 = [v35 copy];
          [v12 setAnimations:?];
        }

        else
        {
          v12 = 0;
        }

        goto LABEL_27;
      }
    }

    else
    {
    }

    v12 = v13;
LABEL_27:

    goto LABEL_28;
  }

  v9 = v7;
  v10 = [v9 keyTimes];
  v11 = [v10 count];

  if ((a3 & 2) != 0 || v11 == 1)
  {
    v25 = [v9 values];
    v26 = [v25 objectAtIndexedSubscript:?];

    v27 = [v9 keyPath];
    [v37 setValue:? forKeyPath:?];

    v28 = [v9 keyTimes];
    v29 = [v28 count];

    if (v8 && v29 >= 2)
    {
      v30 = MEMORY[0x1E696AEC0];
      v31 = [v37 name];
      v32 = [v9 keyTimes];
      v33 = [v30 stringWithFormat:v31, objc_msgSend(v32, "count")];
      (*(v8 + 2))(v8, v33);
    }

    v12 = 0;
  }

  else
  {
    v12 = v9;
  }

LABEL_28:

  return v12;
}

id AVTCloneSceneKitNodesAndMaterials(void *a1)
{
  v1 = MEMORY[0x1E696AD18];
  v2 = a1;
  v3 = [[v1 alloc] initWithKeyOptions:? valueOptions:? capacity:?];
  v4 = _AVTNodeDeepCopyWithCache(v2, v2, v3);
  v7 = v3;
  v5 = v3;
  [v2 enumerateHierarchyUsingBlock:?];

  return v4;
}

id AVTMergeSceneKitShaderModifiers(void *a1, void *a2, void *a3, void *a4)
{
  v21[4] = *MEMORY[0x1E69E9840];
  v20 = a1;
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v21[0] = *MEMORY[0x1E697A9D0];
  v21[1] = *MEMORY[0x1E697A9E0];
  v21[2] = *MEMORY[0x1E697A9D8];
  v21[3] = *MEMORY[0x1E697A9C8];
  v10 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:?];
  for (i = 0; i != 4; ++i)
  {
    v12 = v21[i];
    v13 = [v20 objectForKeyedSubscript:?];
    v14 = [v8 objectForKeyedSubscript:?];
    v15 = AVTMergeSceneKitShaderModifiersForEntryPoint(v13, v7, v14, v9);
    if (v15)
    {
      [v10 setObject:? forKeyedSubscript:?];
    }
  }

  if ([v10 count])
  {
    v16 = v10;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  for (j = 3; j != -1; --j)
  {
  }

  return v17;
}

id AVTMergeSceneKitShaderModifiersForEntryPoint(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (v7 | v10)
  {
    if (v8 | v9)
    {
      v25 = 0;
      v26 = 0;
      v24 = 0;
      _AVTSplitShaderModifier(v7, v8, &v26, &v25, &v24);
      v13 = v26;
      v14 = v25;
      v15 = v24;
      v20 = v13;
      if (v10)
      {
        v22 = 0;
        v23 = 0;
        v21 = 0;
        _AVTSplitShaderModifier(v9, v10, &v23, &v22, &v21);
        v16 = v23;
        v17 = v22;
        v18 = v21;
        v12 = AVTMergeSceneKitShaderModifiersForEntryPointWithPartsAndParts(v13, v14, v15, v16, v17, v18);
      }

      else
      {
        v12 = AVTMergeSceneKitShaderModifiersForEntryPointWithPartsAndCode(v13, v14, v15, v9);
      }

      goto LABEL_10;
    }

    v11 = v7;
  }

  else
  {
    v11 = v9;
  }

  v12 = v11;
LABEL_10:

  return v12;
}

void _AVTSplitShaderModifier(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v23 = a1;
  v9 = a2;
  v10 = [v23 rangeOfString:?];
  v11 = [v23 rangeOfString:?];
  v12 = [v23 rangeOfString:?];
  if (v11 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v10 == 0x7FFFFFFFFFFFFFFFLL || v10 <= v11)
    {
      v13 = v23;
      if (v12 == 0x7FFFFFFFFFFFFFFFLL)
      {
        _AVTSplitShaderModifier_cold_2();
      }
    }

    else
    {
      v13 = v23;
    }

    v16 = [v13 substringWithRange:?];
    goto LABEL_14;
  }

  if ([v23 containsString:?])
  {
    _AVTSplitShaderModifier_cold_1();
  }

  if (v10 && v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v16 = [v23 substringToIndex:?];
LABEL_14:
    v14 = v16;
    goto LABEL_15;
  }

  v14 = 0;
  if (v10 != 0x7FFFFFFFFFFFFFFFLL && v12)
  {
    *a3 = [v23 substringToIndex:?];
    v15 = v23;
    goto LABEL_25;
  }

LABEL_15:
  *a3 = v14;
  if (v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = v23;
    if (v11 != 0x7FFFFFFFFFFFFFFFLL && v11 > v10)
    {
      v17 = [v23 substringWithRange:?];
      goto LABEL_21;
    }

LABEL_25:
    if (v12 == 0x7FFFFFFFFFFFFFFFLL)
    {
      _AVTSplitShaderModifier_cold_3();
    }

    *a4 = [v15 substringWithRange:?];
    goto LABEL_27;
  }

  if ([v23 containsString:?])
  {
    _AVTSplitShaderModifier_cold_5();
  }

  v17 = 0;
LABEL_21:
  *a4 = v17;
  if (v12 != 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_27:
    if (v9)
    {
      v19 = [v23 substringWithRange:?];
      [v23 length];
      v20 = [v23 substringWithRange:?];
      v21 = v9[2](v9, v20);

      *a5 = [v19 stringByAppendingString:?];

      goto LABEL_33;
    }

    [v23 length];
    v18 = [v23 substringWithRange:?];
    goto LABEL_30;
  }

  if ([v23 containsString:?])
  {
    _AVTSplitShaderModifier_cold_4();
  }

  if (!v9)
  {
    v22 = v23;
    goto LABEL_32;
  }

  v18 = v9[2](v9, v23);
LABEL_30:
  v22 = v18;
LABEL_32:
  *a5 = v22;
LABEL_33:
}

id AVTMergeSceneKitShaderModifiersForEntryPointWithPartsAndParts(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  if (v14)
  {
    v17 = v14;
  }

  else
  {
    v17 = &stru_1F39AEE78;
  }

  v18 = v17;
  if ([v11 length])
  {
    if ([(__CFString *)v18 rangeOfString:?]== 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([(__CFString *)v18 containsString:?])
      {
        AVTMergeSceneKitShaderModifiersForEntryPointWithPartsAndParts_cold_1();
      }

      v19 = v11;
    }

    else
    {
      v19 = [__CFString stringByReplacingCharactersInRange:v18 withString:"stringByReplacingCharactersInRange:withString:"];
    }

    v20 = v19;

    v18 = v20;
  }

  if (v15)
  {
    v21 = v15;
  }

  else
  {
    v21 = &stru_1F39AEE78;
  }

  v22 = v21;
  v33 = v12;
  if ([v12 length])
  {
    if ([(__CFString *)v22 rangeOfString:?]== 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([(__CFString *)v22 containsString:?])
      {
        AVTMergeSceneKitShaderModifiersForEntryPointWithPartsAndParts_cold_2();
      }

      v23 = v12;
    }

    else
    {
      v23 = [__CFString stringByReplacingCharactersInRange:v22 withString:"stringByReplacingCharactersInRange:withString:"];
    }

    v24 = v23;

    v22 = v24;
  }

  if (v16)
  {
    v25 = v16;
  }

  else
  {
    v25 = &stru_1F39AEE78;
  }

  v26 = v25;
  if ([v13 length])
  {
    if ([(__CFString *)v26 rangeOfString:?]== 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([(__CFString *)v26 containsString:?])
      {
        AVTMergeSceneKitShaderModifiersForEntryPointWithPartsAndParts_cold_3();
      }

      v27 = v11;
      if ([(__CFString *)v26 rangeOfString:?]!= 0x7FFFFFFFFFFFFFFFLL)
      {
        v29 = [(__CFString *)v26 mutableCopy];
        [__CFString insertString:v29 atIndex:"insertString:atIndex:"];
        goto LABEL_30;
      }

      v28 = v13;
    }

    else
    {
      v27 = v11;
      v28 = [__CFString stringByReplacingCharactersInRange:v26 withString:"stringByReplacingCharactersInRange:withString:"];
    }

    v29 = v28;
LABEL_30:

    v26 = v29;
    v11 = v27;
  }

  v30 = [(__CFString *)v18 stringByAppendingString:?];
  v31 = [v30 stringByAppendingString:?];

  return v31;
}

__CFString *AVTMergeSceneKitShaderModifiersForEntryPointWithPartsAndCode(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (![v9 length])
  {
    v12 = v10;
    goto LABEL_26;
  }

  v11 = &stru_1F39AEE78;
  if (v10)
  {
    v11 = v10;
  }

  v12 = v11;
  if ([v7 length])
  {
    if ([(__CFString *)v12 rangeOfString:?]== 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([(__CFString *)v12 containsString:?])
      {
        AVTMergeSceneKitShaderModifiersForEntryPointWithPartsAndCode_cold_1();
      }

      v13 = [v7 stringByAppendingString:?];
    }

    else
    {
      v13 = [__CFString stringByReplacingCharactersInRange:v12 withString:"stringByReplacingCharactersInRange:withString:"];
    }

    v14 = v13;

    v12 = v14;
  }

  if ([v8 length])
  {
    if ([(__CFString *)v12 rangeOfString:?]== 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([(__CFString *)v12 containsString:?])
      {
        AVTMergeSceneKitShaderModifiersForEntryPointWithPartsAndCode_cold_2();
      }

      v15 = [v8 stringByAppendingString:?];
    }

    else
    {
      v15 = [__CFString stringByReplacingCharactersInRange:v12 withString:"stringByReplacingCharactersInRange:withString:"];
    }

    v16 = v15;

    v12 = v16;
  }

  if (v9)
  {
    if ([(__CFString *)v12 rangeOfString:?]== 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([(__CFString *)v12 containsString:?])
      {
        AVTMergeSceneKitShaderModifiersForEntryPointWithPartsAndCode_cold_3();
      }

      if ([(__CFString *)v12 rangeOfString:?]!= 0x7FFFFFFFFFFFFFFFLL)
      {
        v18 = [(__CFString *)v12 mutableCopy];
        [__CFString insertString:v18 atIndex:"insertString:atIndex:"];
        goto LABEL_25;
      }

      v17 = [(__CFString *)v12 stringByAppendingString:?];
    }

    else
    {
      v17 = [__CFString stringByReplacingCharactersInRange:v12 withString:"stringByReplacingCharactersInRange:withString:"];
    }

    v18 = v17;
LABEL_25:

    v12 = v18;
  }

LABEL_26:

  return v12;
}

__CFString *AVTMergeSceneKitShaderModifiersForEntryPointWithCodeAndParts(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if ([v10 length])
  {
    v11 = &stru_1F39AEE78;
    if (v7)
    {
      v11 = v7;
    }

    v12 = v11;
    if ([v8 length])
    {
      if ([(__CFString *)v12 rangeOfString:?]== 0x7FFFFFFFFFFFFFFFLL)
      {
        if ([(__CFString *)v12 containsString:?])
        {
          AVTMergeSceneKitShaderModifiersForEntryPointWithCodeAndParts_cold_1();
        }

        v13 = [v8 stringByAppendingString:?];
      }

      else
      {
        v13 = [__CFString stringByReplacingCharactersInRange:v12 withString:"stringByReplacingCharactersInRange:withString:"];
      }

      v15 = v13;

      v12 = v15;
    }

    if ([v9 length])
    {
      if ([(__CFString *)v12 rangeOfString:?]== 0x7FFFFFFFFFFFFFFFLL)
      {
        if ([(__CFString *)v12 containsString:?])
        {
          AVTMergeSceneKitShaderModifiersForEntryPointWithCodeAndParts_cold_2();
        }

        v16 = [v9 stringByAppendingString:?];
      }

      else
      {
        v16 = [__CFString stringByReplacingCharactersInRange:v12 withString:"stringByReplacingCharactersInRange:withString:"];
      }

      v17 = v16;

      v12 = v17;
    }

    v14 = [(__CFString *)v12 stringByAppendingString:?];
  }

  else
  {
    v14 = v7;
  }

  return v14;
}

id _AVTNodeDeepCopyWithCache(void *a1, void *a2, void *a3)
{
  v98 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [v7 objectForKey:?];
  if (v8)
  {
    v9 = v8;
    goto LABEL_53;
  }

  v10 = objc_alloc_init(MEMORY[0x1E697A8B0]);
  [v7 setObject:? forKey:?];
  v11 = [v6 name];
  [v10 setName:?];

  [v6 simdTransform];
  [v10 setSimdTransform:?];
  [v6 isHidden];
  [v10 setHidden:?];
  [v6 opacity];
  [v10 setOpacity:?];
  [v6 renderingOrder];
  [v10 setRenderingOrder:?];
  [v6 categoryBitMask];
  [v10 setCategoryBitMask:?];
  v12 = [v6 light];
  [v10 setLight:?];

  v13 = [v6 camera];
  [v10 setCamera:?];

  [v6 castsShadow];
  [v10 setCastsShadow:?];
  [v6 usesDepthPrePass];
  [v10 setUsesDepthPrePass:?];
  v14 = [v6 valueForKey:?];
  v93 = MEMORY[0x1E69E9820];
  v94 = 3221225472;
  v95 = ___AVTNodeDeepCopyWithCache_block_invoke;
  v96 = &unk_1E7F48E68;
  v15 = v10;
  v97 = v15;
  [v14 enumerateKeysAndObjectsUsingBlock:?];
  v16 = [v6 geometry];
  v78 = v16;
  v79 = v14;
  if (v16)
  {
    v17 = v16;
    v18 = [v7 objectForKey:?];
    if (!v18)
    {
      v74 = v6;
      v19 = [v17 copy];
      [v7 setObject:? forKey:?];
      v20 = [v17 tessellator];
      v21 = [v20 copy];
      v76 = v19;
      [v19 setTessellator:?];

      v22 = MEMORY[0x1E695DF70];
      v23 = [v17 materials];
      [v23 count];
      v24 = [v22 arrayWithCapacity:?];

      v91 = 0u;
      v92 = 0u;
      v89 = 0u;
      v90 = 0u;
      v25 = [v17 materials];
      v26 = [v25 countByEnumeratingWithState:? objects:? count:?];
      if (v26)
      {
        v27 = v26;
        v28 = *v90;
        do
        {
          for (i = 0; i != v27; i = (i + 1))
          {
            if (*v90 != v28)
            {
              objc_enumerationMutation(v25);
            }

            v30 = *(*(&v89 + 1) + 8 * i);
            v31 = [v7 objectForKey:?];
            if (!v31)
            {
              v31 = [v30 copy];
              [v7 setObject:? forKey:?];
            }

            [v24 addObject:?];
          }

          v27 = [v25 countByEnumeratingWithState:? objects:? count:?];
        }

        while (v27);
      }

      v18 = v76;
      [v76 setMaterials:?];

      v6 = v74;
    }

    [v15 setGeometry:?];
  }

  v32 = [v6 morpher];
  if (v32)
  {
    v33 = [v7 objectForKey:?];
    if (!v33)
    {
      v33 = [v32 copy];
      [v7 setObject:? forKey:?];
    }

    [v15 setMorpher:?];
  }

  v77 = v32;
  v34 = [v6 skinner];
  if (v34)
  {
    v35 = [v7 objectForKey:?];
    if (v35)
    {
LABEL_44:
      [v15 setSkinner:v70];

      goto LABEL_45;
    }

    v36 = [v34 bones];
    v37 = [v34 skeleton];
    v38 = objc_alloc(MEMORY[0x1E695DF70]);
    [v36 count];
    v39 = [v38 initWithCapacity:?];
    v73 = v36;
    v75 = v6;
    v72 = v37;
    if (v37)
    {
      v40 = v37;
      while (v40 != v5)
      {
        v41 = [v40 parentNode];

        v40 = v41;
        if (!v41)
        {
          goto LABEL_26;
        }
      }

      v50 = [v34 skeleton];
      v71 = _AVTNodeDeepCopyWithCache(v5, v50, v7);

      v87 = 0u;
      v88 = 0u;
      v85 = 0u;
      v86 = 0u;
      v51 = v36;
      v52 = [v51 countByEnumeratingWithState:? objects:? count:?];
      if (!v52)
      {
        goto LABEL_43;
      }

      v53 = v52;
      v70 = v34;
      v54 = *v86;
      do
      {
        for (j = 0; j != v53; j = (j + 1))
        {
          if (*v86 != v54)
          {
            objc_enumerationMutation(v51);
          }

          v56 = _AVTNodeDeepCopyWithCache(v5, *(*(&v85 + 1) + 8 * j), v7);
          [v39 addObject:?];
        }

        v53 = [v51 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v53);
    }

    else
    {
LABEL_26:
      v83 = 0u;
      v84 = 0u;
      v81 = 0u;
      v82 = 0u;
      v42 = v36;
      v43 = [v42 countByEnumeratingWithState:? objects:? count:?];
      if (!v43)
      {
        v71 = 0;
        goto LABEL_43;
      }

      v44 = v43;
      v70 = v34;
      v45 = *v82;
      do
      {
        for (k = 0; k != v44; k = (k + 1))
        {
          if (*v82 != v45)
          {
            objc_enumerationMutation(v42);
          }

          v47 = *(*(&v81 + 1) + 8 * k);
          v48 = objc_alloc_init(MEMORY[0x1E697A8B0]);
          v49 = [v47 name];
          [v48 setName:?];

          [v39 addObject:?];
        }

        v44 = [v42 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v44);
      v71 = 0;
    }

    v34 = v70;
    v36 = v73;
LABEL_43:

    v57 = MEMORY[0x1E697A8D0];
    v58 = [v15 geometry];
    v59 = [v34 boneInverseBindTransforms];
    v60 = [v34 boneWeights];
    v61 = [v34 boneIndices];
    v35 = [v57 skinnerWithBaseGeometry:? bones:? boneInverseBindTransforms:? boneWeights:? boneIndices:?];

    [&v80 baseGeometryBindTransform];
    [v35 setBaseGeometryBindTransform:?];
    [v35 setSkeleton:?];
    [v7 setObject:? forKey:?];

    v6 = v75;
    goto LABEL_44;
  }

LABEL_45:
  v62 = v34;
  v63 = [v6 childNodes];
  v64 = [v63 countByEnumeratingWithState:? objects:? count:?];
  if (v64)
  {
    v65 = v64;
    v66 = MEMORY[0];
    do
    {
      for (m = 0; m != v65; m = (m + 1))
      {
        if (MEMORY[0] != v66)
        {
          objc_enumerationMutation(v63);
        }

        v68 = _AVTNodeDeepCopyWithCache(v5, *(8 * m), v7);
        [v15 addChildNode:?];
      }

      v65 = [v63 countByEnumeratingWithState:? objects:? count:?];
    }

    while (v65);
  }

  v9 = v15;
LABEL_53:

  return v9;
}

void _AVTMemojiRandomize(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = 0;
  v17 = v18;
  do
  {
    v6 = [AVTPreset availablePresetsForCategory:v17];
    if ([v6 count])
    {
      arc4random_uniform([v6 count]);
      v7 = 1.0;
      if ((v5 - 1) <= 0x22)
      {
        v7 = dbl_1BB4F0D38[v5 - 1];
      }

      if (_AVTMemojiRandomizationInitializeRand_onceToken != -1)
      {
        _AVTMemojiRandomize_cold_1();
      }

      if (drand48() > v7)
      {
        [v6 indexOfObjectPassingTest:?];
      }

      v8 = [v6 objectAtIndex:?];
      v3[2](v3, v8, v5);
    }

    v9 = [AVTColorPreset colorPresetsForCategory:?];
    if ([v9 count])
    {
      arc4random_uniform([v9 count]);
      if (v5)
      {
        if (v5 == 10)
        {
          v10 = 1;
        }

        else
        {
          if (v5 != 1)
          {
LABEL_18:
            v11 = [v9 objectAtIndex:?];
            if (_AVTMemojiRandomizationInitializeRand_onceToken != -1)
            {
              _AVTMemojiRandomize_cold_1();
            }

            drand48();
            v12 = [v11 colorPresetWithVariation:?];

            v4[2](v4, v12, v5, 0);
            v18[0] = ___AVTMemojiRandomize_block_invoke_2;
            v18[1] = &unk_1E7F49DC8;
            v19 = v4;
            [v12 enumerateDerivedColorPresetsUsingBlock:?];

            goto LABEL_21;
          }

          v10 = 7;
        }
      }

      else
      {
        v10 = 8;
      }

      arc4random_uniform(v10);
      goto LABEL_18;
    }

LABEL_21:
    if (v5 != 7)
    {
      for (i = 1; i != 3; ++i)
      {
        v14 = v9;
        v9 = [AVTColorPreset colorPresetsForCategory:"colorPresetsForCategory:colorIndex:" colorIndex:?];

        if ([v9 count])
        {
          arc4random_uniform([v9 count]);
          v15 = [v9 objectAtIndex:?];
          if (_AVTMemojiRandomizationInitializeRand_onceToken != -1)
          {
            _AVTMemojiRandomize_cold_1();
          }

          drand48();
          v16 = [v15 colorPresetWithVariation:?];

          v4[2](v4, v16, v5, i);
        }
      }
    }

    ++v5;
  }

  while (v5 != 40);
}

double AVTRGB2HSB(__n128 a1)
{
  if (a1.n128_f32[0] >= a1.n128_f32[1])
  {
    v1 = a1.n128_f32[0];
  }

  else
  {
    v1 = a1.n128_f32[1];
  }

  if (a1.n128_f32[0] >= a1.n128_f32[1])
  {
    v2 = a1.n128_f32[1];
  }

  else
  {
    v2 = a1.n128_f32[0];
  }

  if (v1 >= a1.n128_f32[2])
  {
    v3 = v1;
  }

  else
  {
    v3 = a1.n128_f32[2];
  }

  if (v2 >= a1.n128_f32[2])
  {
    v4 = a1.n128_f32[2];
  }

  else
  {
    v4 = v2;
  }

  v5 = v3 - v4;
  v6 = 0.0;
  if ((v3 - v4) != 0.0)
  {
    v7 = ((a1.n128_f32[0] - a1.n128_f32[1]) / v5) + 4.0;
    if (a1.n128_f32[1] == v3)
    {
      v7 = ((a1.n128_f32[2] - a1.n128_f32[0]) / v5) + 2.0;
    }

    v8 = (a1.n128_f32[1] - a1.n128_f32[2]) / v5;
    if (a1.n128_f32[0] != v3)
    {
      v8 = v7;
    }

    v6 = v8 * 60.0;
    if ((v8 * 60.0) < 0.0)
    {
      v6 = v6 + 360.0;
    }
  }

  v9 = v5 / v3;
  if (v3 == 0.0)
  {
    v9 = 0.0;
  }

  *&v10 = v6 / 360.0;
  *(&v10 + 1) = v9;
  return v10;
}

double AVTHSB2RGB(__n128 a1)
{
  v1 = 0.0;
  v2 = fmaxf(fminf(a1.n128_f32[1], 1.0), 0.0);
  *&v3 = fmaxf(fminf(a1.n128_f32[2], 1.0), 0.0);
  if (v2 != 0.0)
  {
    v6 = fmaxf(fminf(a1.n128_f32[0], 1.0), 0.0) * 360.0;
    if (v6 != 360.0)
    {
      v1 = v6 / 60.0;
    }

    v7 = v1;
    v8 = v1 - v1;
    v9 = *&v3 * (1.0 - v2);
    v10 = *&v3 * (1.0 - (v2 * v8));
    v11 = *&v3 * (1.0 - (v2 * (1.0 - v8)));
    if (v7 > 1)
    {
      switch(v7)
      {
        case 2:
          v4 = *&v3;
          break;
        case 3:
          v4 = v10;
          break;
        case 4:
          v4 = *&v3 * (1.0 - v2);
          *&v3 = v11;
          goto LABEL_3;
        default:
LABEL_18:
          v4 = *&v3 * (1.0 - v2);
          goto LABEL_3;
      }

      *&v3 = v9;
      goto LABEL_3;
    }

    if (!v7)
    {
      v4 = v11;
      goto LABEL_3;
    }

    if (v7 == 1)
    {
      v4 = *&v3;
      *&v3 = v10;
      goto LABEL_3;
    }

    goto LABEL_18;
  }

  v4 = *&v3;
LABEL_3:
  *(&v3 + 1) = v4;
  return v3;
}

void sub_1BB4CD070(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1BB4CDCE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BB4CF2E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BB4D1310(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, ...)
{
  va_start(va, a39);
  _Block_object_dispose(&a36, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *AVTInterpolateBasicAnimationFloat(void *a1, float a2)
{
  v2 = a1;
  v3 = [v2 fromValue];
  [v3 floatValue];

  v4 = [v2 toValue];

  [v4 floatValue];
  v5 = MEMORY[0x1E696AD98];

  return [v5 numberWithFloat:?];
}

void *AVTInterpolateBasicAnimationFloat4(void *a1, float a2)
{
  v2 = a1;
  v3 = [v2 fromValue];
  [v3 avt_float4Value];

  v4 = [v2 toValue];

  [v4 avt_float4Value];
  v5 = MEMORY[0x1E696B098];

  return [v5 avt_valueWithFloat4_usableWithKVCForSCNVector4:?];
}

void *AVTInterpolateBasicAnimationQuaternion(void *a1, float a2)
{
  v3 = a1;
  v4 = [v3 fromValue];
  [v4 avt_float4Value];
  v22 = v5;

  v6 = [v3 toValue];

  [v6 avt_float4Value];
  v21 = v7;

  v8 = vmulq_f32(v22, v21);
  v9 = vextq_s8(v8, v8, 8uLL);
  *v8.f32 = vadd_f32(*v8.f32, *v9.f32);
  v8.f32[0] = vaddv_f32(*v8.f32);
  v9.i64[0] = 0;
  v10 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vcgeq_f32(v8, v9)), 0), vnegq_f32(v21), v21);
  v11 = 1.0 - a2;
  v12 = vsubq_f32(v22, v10);
  v13 = vmulq_f32(v12, v12);
  v14 = vaddq_f32(v22, v10);
  v15 = vmulq_f32(v14, v14);
  v16 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v13.i8, *&vextq_s8(v13, v13, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v15.i8, *&vextq_s8(v15, v15, 8uLL)))));
  v17 = v16 + v16;
  if ((v16 + v16) != 0.0)
  {
    sinf(v17);
  }

  if ((v11 * v17) != 0.0)
  {
    sinf(v11 * v17);
  }

  v18 = v17 * a2;
  if (v18 != 0.0)
  {
    sinf(v18);
  }

  v19 = MEMORY[0x1E696B098];

  return [v19 avt_valueWithFloat4_usableWithKVCForSCNVector4:?];
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1BB4D8B24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v20 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v18 - 80), 8);
  _Unwind_Resume(a1);
}

id AVTPrecompiledAnimojiSpecializationSettings(uint64_t a1)
{
  if (AVTPrecompiledAnimojiSpecializationSettings_onceToken != -1)
  {
    AVTPrecompiledAnimojiSpecializationSettings_cold_1();
  }

  v2 = AVTPrecompiledAnimojiSpecializationSettings_kAVTAnimojiPrecompiledPlist_specializationSettings;

  return v2;
}

void __AVTPrecompiledAnimojiSpecializationSettings_block_invoke()
{
  v0 = AVTPrecompiledAnimojiSpecializationSettings_kAVTAnimojiPrecompiledPlist_specializationSettings;
  AVTPrecompiledAnimojiSpecializationSettings_kAVTAnimojiPrecompiledPlist_specializationSettings = &unk_1F39E6248;
}

id AVTPrecompiledMemojiAssetWithIdentifier(void *a1)
{
  v1 = AVTPrecompiledMemojiAssetWithIdentifier_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    AVTPrecompiledMemojiAssetWithIdentifier_cold_1();
  }

  v3 = [AVTPrecompiledMemojiAssetWithIdentifier_kAVTMemojiPrecompiledPlist_assetByIdentifier objectForKeyedSubscript:?];

  return v3;
}

void __AVTPrecompiledMemojiAssetWithIdentifier_block_invoke()
{
  v0 = AVTPrecompiledMemojiAssetWithIdentifier_kAVTMemojiPrecompiledPlist_assetByIdentifier;
  AVTPrecompiledMemojiAssetWithIdentifier_kAVTMemojiPrecompiledPlist_assetByIdentifier = &unk_1F39FFE00;
}

id AVTPrecompiledMemojiAssetsForComponentType(unint64_t a1)
{
  if (AVTPrecompiledMemojiAssetsForComponentType_onceToken != -1)
  {
    AVTPrecompiledMemojiAssetsForComponentType_cold_1();
  }

  v2 = AVTPrecompiledMemojiAssetsForComponentType_kAVTMemojiPrecompiledPlist_assetIdentifiersByComponentType;
  v3 = AVTComponentTypeToString(a1);
  v4 = [v2 objectForKeyedSubscript:?];

  return v4;
}

void __AVTPrecompiledMemojiAssetsForComponentType_block_invoke()
{
  v0 = AVTPrecompiledMemojiAssetsForComponentType_kAVTMemojiPrecompiledPlist_assetIdentifiersByComponentType;
  AVTPrecompiledMemojiAssetsForComponentType_kAVTMemojiPrecompiledPlist_assetIdentifiersByComponentType = &unk_1F3A00300;
}

id AVTPrecompiledMemojiCompositorPropertyNames(uint64_t a1)
{
  if (AVTPrecompiledMemojiCompositorPropertyNames_onceToken != -1)
  {
    AVTPrecompiledMemojiCompositorPropertyNames_cold_1();
  }

  v2 = AVTPrecompiledMemojiCompositorPropertyNames_kAVTPrecompiledMemojiCompositorPropertyNames;

  return v2;
}

void __AVTPrecompiledMemojiCompositorPropertyNames_block_invoke()
{
  v0 = AVTPrecompiledMemojiCompositorPropertyNames_kAVTPrecompiledMemojiCompositorPropertyNames;
  AVTPrecompiledMemojiCompositorPropertyNames_kAVTPrecompiledMemojiCompositorPropertyNames = &unk_1F39DC688;
}

id AVTPrecompiledMemojiColorPalettes(uint64_t a1)
{
  if (AVTPrecompiledMemojiColorPalettes_onceToken != -1)
  {
    AVTPrecompiledMemojiColorPalettes_cold_1();
  }

  v2 = AVTPrecompiledMemojiColorPalettes_kAVTMemojiPrecompiledPlist_palettes;

  return v2;
}

void __AVTPrecompiledMemojiColorPalettes_block_invoke()
{
  v0 = AVTPrecompiledMemojiColorPalettes_kAVTMemojiPrecompiledPlist_palettes;
  AVTPrecompiledMemojiColorPalettes_kAVTMemojiPrecompiledPlist_palettes = &unk_1F3A13130;
}

id AVTPrecompiledMemojiPresetPlist(uint64_t a1)
{
  if (AVTPrecompiledMemojiPresetPlist_onceToken != -1)
  {
    AVTPrecompiledMemojiPresetPlist_cold_1();
  }

  v2 = AVTPrecompiledMemojiPresetPlist_kAVTMemojiPrecompiledPlist_presets;

  return v2;
}

void __AVTPrecompiledMemojiPresetPlist_block_invoke()
{
  v0 = AVTPrecompiledMemojiPresetPlist_kAVTMemojiPrecompiledPlist_presets;
  AVTPrecompiledMemojiPresetPlist_kAVTMemojiPrecompiledPlist_presets = &unk_1F3A28EE0;
}

id AVTPrecompiledMemojiEditorMetadata(uint64_t a1)
{
  if (AVTPrecompiledMemojiEditorMetadata_onceToken != -1)
  {
    AVTPrecompiledMemojiEditorMetadata_cold_1();
  }

  v2 = AVTPrecompiledMemojiEditorMetadata_kAVTMemojiPrecompiledPlist_editor;

  return v2;
}

void __AVTPrecompiledMemojiEditorMetadata_block_invoke()
{
  v0 = AVTPrecompiledMemojiEditorMetadata_kAVTMemojiPrecompiledPlist_editor;
  AVTPrecompiledMemojiEditorMetadata_kAVTMemojiPrecompiledPlist_editor = &unk_1F3A322B0;
}

id AVTPrecompiledMemojiPrereleaseEditorMetadata(uint64_t a1)
{
  if (AVTPrecompiledMemojiPrereleaseEditorMetadata_onceToken != -1)
  {
    AVTPrecompiledMemojiPrereleaseEditorMetadata_cold_1();
  }

  v2 = AVTPrecompiledMemojiPrereleaseEditorMetadata_kAVTMemojiPrecompiledPlist_editorPrerelease;

  return v2;
}

void __AVTPrecompiledMemojiPrereleaseEditorMetadata_block_invoke()
{
  v0 = AVTPrecompiledMemojiPrereleaseEditorMetadata_kAVTMemojiPrecompiledPlist_editorPrerelease;
  AVTPrecompiledMemojiPrereleaseEditorMetadata_kAVTMemojiPrecompiledPlist_editorPrerelease = MEMORY[0x1E695E0F8];
}

id AVTPrecompiledToyboxAnimojiNames(uint64_t a1)
{
  if (AVTPrecompiledToyboxAnimojiNames_onceToken != -1)
  {
    AVTPrecompiledToyboxAnimojiNames_cold_1();
  }

  v2 = AVTPrecompiledToyboxAnimojiNames_kAVTWatchFacesPrecompiledPlist_toyboxAnimojiNames;

  return v2;
}

void __AVTPrecompiledToyboxAnimojiNames_block_invoke()
{
  v0 = AVTPrecompiledToyboxAnimojiNames_kAVTWatchFacesPrecompiledPlist_toyboxAnimojiNames;
  AVTPrecompiledToyboxAnimojiNames_kAVTWatchFacesPrecompiledPlist_toyboxAnimojiNames = &unk_1F39E1170;
}

id _AVTPoseRoundingBehaviour(uint64_t a1)
{
  if (_AVTPoseRoundingBehaviour_onceToken != -1)
  {
    _AVTPoseRoundingBehaviour_cold_1();
  }

  v2 = _AVTPoseRoundingBehaviour_behavior;

  return v2;
}

void sub_1BB4DB3C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *_AVTUpgradeVFXWorldOptions(void *a1)
{
  if (!a1)
  {
    return [MEMORY[0x1E695DF20] dictionaryWithObjects:? forKeys:? count:?];
  }

  v1 = a1;
  if (![a1 count])
  {
    return [MEMORY[0x1E695DF20] dictionaryWithObjects:? forKeys:? count:?];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v1 setObject:? forKeyedSubscript:?];
    return v1;
  }

  v3 = [v1 mutableCopy];
  [v3 setObject:? forKeyedSubscript:?];

  return v3;
}

id AVTCloneNodesAndMaterials(void *a1)
{
  v1 = MEMORY[0x1E696AD18];
  v2 = a1;
  v3 = [[v1 alloc] initWithKeyOptions:? valueOptions:? capacity:?];
  v4 = _AVTNodeDeepCopyWithCache_0(v2, v2, v3);
  v7 = v3;
  v5 = v3;
  [v2 enumerateHierarchyUsingBlock:?];

  return v4;
}

id AVTMergeShaderModifiers(void *a1, void *a2, void *a3, void *a4)
{
  v21[4] = *MEMORY[0x1E69E9840];
  v20 = a1;
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v21[0] = *MEMORY[0x1E69DF3C8];
  v21[1] = *MEMORY[0x1E69DF3C0];
  v21[2] = *MEMORY[0x1E69DF3B8];
  v21[3] = *MEMORY[0x1E69DF3B0];
  v10 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:?];
  for (i = 0; i != 4; ++i)
  {
    v12 = v21[i];
    v13 = [v20 objectForKeyedSubscript:?];
    v14 = [v8 objectForKeyedSubscript:?];
    v15 = AVTMergeShaderModifiersForEntryPoint(v13, v7, v14, v9);
    if (v15)
    {
      [v10 setObject:? forKeyedSubscript:?];
    }
  }

  if ([v10 count])
  {
    v16 = v10;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  for (j = 3; j != -1; --j)
  {
  }

  return v17;
}

id AVTMergeShaderModifiersForEntryPoint(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (v7 | v10)
  {
    if (v8 | v9)
    {
      v25 = 0;
      v26 = 0;
      v24 = 0;
      _AVTSplitShaderModifier_0(v7, v8, &v26, &v25, &v24);
      v13 = v26;
      v14 = v25;
      v15 = v24;
      v20 = v13;
      if (v10)
      {
        v22 = 0;
        v23 = 0;
        v21 = 0;
        _AVTSplitShaderModifier_0(v9, v10, &v23, &v22, &v21);
        v16 = v23;
        v17 = v22;
        v18 = v21;
        v12 = AVTMergeShaderModifiersForEntryPointWithPartsAndParts(v13, v14, v15, v16, v17, v18);
      }

      else
      {
        v12 = AVTMergeShaderModifiersForEntryPointWithPartsAndCode(v13, v14, v15, v9);
      }

      goto LABEL_10;
    }

    v11 = v7;
  }

  else
  {
    v11 = v9;
  }

  v12 = v11;
LABEL_10:

  return v12;
}

void _AVTSplitShaderModifier_0(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v23 = a1;
  v9 = a2;
  v10 = [v23 rangeOfString:?];
  v11 = [v23 rangeOfString:?];
  v12 = [v23 rangeOfString:?];
  if (v11 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v10 == 0x7FFFFFFFFFFFFFFFLL || v10 <= v11)
    {
      v13 = v23;
      if (v12 == 0x7FFFFFFFFFFFFFFFLL)
      {
        _AVTSplitShaderModifier_cold_2_0();
      }
    }

    else
    {
      v13 = v23;
    }

    v16 = [v13 substringWithRange:?];
    goto LABEL_14;
  }

  if ([v23 containsString:?])
  {
    _AVTSplitShaderModifier_cold_1_0();
  }

  if (v10 && v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v16 = [v23 substringToIndex:?];
LABEL_14:
    v14 = v16;
    goto LABEL_15;
  }

  v14 = 0;
  if (v10 != 0x7FFFFFFFFFFFFFFFLL && v12)
  {
    *a3 = [v23 substringToIndex:?];
    v15 = v23;
    goto LABEL_25;
  }

LABEL_15:
  *a3 = v14;
  if (v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = v23;
    if (v11 != 0x7FFFFFFFFFFFFFFFLL && v11 > v10)
    {
      v17 = [v23 substringWithRange:?];
      goto LABEL_21;
    }

LABEL_25:
    if (v12 == 0x7FFFFFFFFFFFFFFFLL)
    {
      _AVTSplitShaderModifier_cold_3_0();
    }

    *a4 = [v15 substringWithRange:?];
    goto LABEL_27;
  }

  if ([v23 containsString:?])
  {
    _AVTSplitShaderModifier_cold_5_0();
  }

  v17 = 0;
LABEL_21:
  *a4 = v17;
  if (v12 != 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_27:
    if (v9)
    {
      v19 = [v23 substringWithRange:?];
      [v23 length];
      v20 = [v23 substringWithRange:?];
      v21 = v9[2](v9, v20);

      *a5 = [v19 stringByAppendingString:?];

      goto LABEL_33;
    }

    [v23 length];
    v18 = [v23 substringWithRange:?];
    goto LABEL_30;
  }

  if ([v23 containsString:?])
  {
    _AVTSplitShaderModifier_cold_4_0();
  }

  if (!v9)
  {
    v22 = v23;
    goto LABEL_32;
  }

  v18 = v9[2](v9, v23);
LABEL_30:
  v22 = v18;
LABEL_32:
  *a5 = v22;
LABEL_33:
}

id AVTMergeShaderModifiersForEntryPointWithPartsAndParts(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  if (v14)
  {
    v17 = v14;
  }

  else
  {
    v17 = &stru_1F39AEE78;
  }

  v18 = v17;
  if ([v11 length])
  {
    if ([(__CFString *)v18 rangeOfString:?]== 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([(__CFString *)v18 containsString:?])
      {
        AVTMergeShaderModifiersForEntryPointWithPartsAndParts_cold_1();
      }

      v19 = v11;
    }

    else
    {
      v19 = [__CFString stringByReplacingCharactersInRange:v18 withString:"stringByReplacingCharactersInRange:withString:"];
    }

    v20 = v19;

    v18 = v20;
  }

  if (v15)
  {
    v21 = v15;
  }

  else
  {
    v21 = &stru_1F39AEE78;
  }

  v22 = v21;
  v33 = v12;
  if ([v12 length])
  {
    if ([(__CFString *)v22 rangeOfString:?]== 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([(__CFString *)v22 containsString:?])
      {
        AVTMergeShaderModifiersForEntryPointWithPartsAndParts_cold_2();
      }

      v23 = v12;
    }

    else
    {
      v23 = [__CFString stringByReplacingCharactersInRange:v22 withString:"stringByReplacingCharactersInRange:withString:"];
    }

    v24 = v23;

    v22 = v24;
  }

  if (v16)
  {
    v25 = v16;
  }

  else
  {
    v25 = &stru_1F39AEE78;
  }

  v26 = v25;
  if ([v13 length])
  {
    if ([(__CFString *)v26 rangeOfString:?]== 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([(__CFString *)v26 containsString:?])
      {
        AVTMergeShaderModifiersForEntryPointWithPartsAndParts_cold_3();
      }

      v27 = v11;
      if ([(__CFString *)v26 rangeOfString:?]!= 0x7FFFFFFFFFFFFFFFLL)
      {
        v29 = [(__CFString *)v26 mutableCopy];
        [__CFString insertString:v29 atIndex:"insertString:atIndex:"];
        goto LABEL_30;
      }

      v28 = v13;
    }

    else
    {
      v27 = v11;
      v28 = [__CFString stringByReplacingCharactersInRange:v26 withString:"stringByReplacingCharactersInRange:withString:"];
    }

    v29 = v28;
LABEL_30:

    v26 = v29;
    v11 = v27;
  }

  v30 = [(__CFString *)v18 stringByAppendingString:?];
  v31 = [v30 stringByAppendingString:?];

  return v31;
}

__CFString *AVTMergeShaderModifiersForEntryPointWithPartsAndCode(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (![v9 length])
  {
    v12 = v10;
    goto LABEL_26;
  }

  v11 = &stru_1F39AEE78;
  if (v10)
  {
    v11 = v10;
  }

  v12 = v11;
  if ([v7 length])
  {
    if ([(__CFString *)v12 rangeOfString:?]== 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([(__CFString *)v12 containsString:?])
      {
        AVTMergeShaderModifiersForEntryPointWithPartsAndCode_cold_1();
      }

      v13 = [v7 stringByAppendingString:?];
    }

    else
    {
      v13 = [__CFString stringByReplacingCharactersInRange:v12 withString:"stringByReplacingCharactersInRange:withString:"];
    }

    v14 = v13;

    v12 = v14;
  }

  if ([v8 length])
  {
    if ([(__CFString *)v12 rangeOfString:?]== 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([(__CFString *)v12 containsString:?])
      {
        AVTMergeShaderModifiersForEntryPointWithPartsAndCode_cold_2();
      }

      v15 = [v8 stringByAppendingString:?];
    }

    else
    {
      v15 = [__CFString stringByReplacingCharactersInRange:v12 withString:"stringByReplacingCharactersInRange:withString:"];
    }

    v16 = v15;

    v12 = v16;
  }

  if (v9)
  {
    if ([(__CFString *)v12 rangeOfString:?]== 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([(__CFString *)v12 containsString:?])
      {
        AVTMergeShaderModifiersForEntryPointWithPartsAndCode_cold_3();
      }

      if ([(__CFString *)v12 rangeOfString:?]!= 0x7FFFFFFFFFFFFFFFLL)
      {
        v18 = [(__CFString *)v12 mutableCopy];
        [__CFString insertString:v18 atIndex:"insertString:atIndex:"];
        goto LABEL_25;
      }

      v17 = [(__CFString *)v12 stringByAppendingString:?];
    }

    else
    {
      v17 = [__CFString stringByReplacingCharactersInRange:v12 withString:"stringByReplacingCharactersInRange:withString:"];
    }

    v18 = v17;
LABEL_25:

    v12 = v18;
  }

LABEL_26:

  return v12;
}

__CFString *AVTMergeShaderModifiersForEntryPointWithCodeAndParts(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if ([v10 length])
  {
    v11 = &stru_1F39AEE78;
    if (v7)
    {
      v11 = v7;
    }

    v12 = v11;
    if ([v8 length])
    {
      if ([(__CFString *)v12 rangeOfString:?]== 0x7FFFFFFFFFFFFFFFLL)
      {
        if ([(__CFString *)v12 containsString:?])
        {
          AVTMergeShaderModifiersForEntryPointWithCodeAndParts_cold_1();
        }

        v13 = [v8 stringByAppendingString:?];
      }

      else
      {
        v13 = [__CFString stringByReplacingCharactersInRange:v12 withString:"stringByReplacingCharactersInRange:withString:"];
      }

      v15 = v13;

      v12 = v15;
    }

    if ([v9 length])
    {
      if ([(__CFString *)v12 rangeOfString:?]== 0x7FFFFFFFFFFFFFFFLL)
      {
        if ([(__CFString *)v12 containsString:?])
        {
          AVTMergeShaderModifiersForEntryPointWithCodeAndParts_cold_2();
        }

        v16 = [v9 stringByAppendingString:?];
      }

      else
      {
        v16 = [__CFString stringByReplacingCharactersInRange:v12 withString:"stringByReplacingCharactersInRange:withString:"];
      }

      v17 = v16;

      v12 = v17;
    }

    v14 = [(__CFString *)v12 stringByAppendingString:?];
  }

  else
  {
    v14 = v7;
  }

  return v14;
}

id _AVTNodeDeepCopyWithCache_0(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [v7 objectForKey:?];
  if (v8)
  {
    v9 = v8;
    goto LABEL_55;
  }

  v10 = objc_alloc_init(MEMORY[0x1E69DF330]);
  [v7 setObject:? forKey:?];
  v11 = [v6 name];
  [v10 setName:?];

  [v6 transform];
  [v10 setTransform:?];
  [v6 isHidden];
  [v10 setHidden:?];
  [v6 opacity];
  [v10 setOpacity:?];
  [v6 renderingOrder];
  [v10 setRenderingOrder:?];
  [v6 categoryBitMask];
  [v10 setCategoryBitMask:?];
  v12 = [v6 light];
  [v10 setLight:?];

  v13 = [v6 camera];
  [v10 setCamera:?];

  [v6 castsShadow];
  [v10 setCastsShadow:?];
  [v6 usesDepthPrePass];
  [v10 setUsesDepthPrePass:?];
  v14 = [v6 valueForKey:?];
  v15 = v10;
  [v14 enumerateKeysAndObjectsUsingBlock:?];
  v16 = [v6 model];
  v81 = v16;
  if (v16)
  {
    v17 = [v7 objectForKey:?];
    if (!v17)
    {
      v75 = v14;
      v77 = v6;
      v18 = [v16 copy];
      [v7 setObject:? forKey:?];
      v19 = [v16 tessellator];
      v20 = [v19 copy];
      [v18 setTessellator:?];

      v21 = [v16 mesh];
      v22 = [v7 objectForKey:?];
      if (!v22)
      {
        v22 = [v21 copy];
        [v7 setObject:? forKey:?];
      }

      v79 = v21;
      v82 = v18;
      v73 = v22;
      [v18 setMesh:?];
      v23 = MEMORY[0x1E695DF70];
      v24 = [v16 materials];
      [v24 count];
      v25 = [v23 arrayWithCapacity:?];

      v26 = [v16 materials];
      v27 = [v26 countByEnumeratingWithState:? objects:? count:?];
      if (v27)
      {
        v28 = v27;
        v29 = MEMORY[0];
        do
        {
          for (i = 0; i != v28; i = (i + 1))
          {
            if (MEMORY[0] != v29)
            {
              objc_enumerationMutation(v26);
            }

            v31 = *(8 * i);
            v32 = [v7 objectForKey:?];
            if (!v32)
            {
              v32 = [v31 copy];
              [v7 setObject:? forKey:?];
            }

            [v25 addObject:?];
          }

          v28 = [v26 countByEnumeratingWithState:? objects:? count:?];
        }

        while (v28);
      }

      v17 = v82;
      [v82 setMaterials:?];

      v14 = v75;
      v6 = v77;
      v16 = v81;
    }

    [v15 setModel:?];
  }

  v33 = [v6 morpher];
  if (v33)
  {
    v34 = [v7 objectForKey:?];
    if (!v34)
    {
      v34 = [v33 copy];
      [v7 setObject:? forKey:?];
    }

    [v15 setMorpher:?];
  }

  v80 = v33;
  v35 = [v6 skinner];
  v83 = v35;
  if (v35)
  {
    v36 = v35;
    v37 = [v7 objectForKey:?];
    if (v37)
    {
LABEL_46:
      [v15 setSkinner:v71];

      goto LABEL_47;
    }

    v76 = v14;
    v38 = [v36 bones];
    v39 = [v36 skeleton];
    v40 = objc_alloc(MEMORY[0x1E695DF70]);
    v74 = v38;
    [v38 count];
    v41 = [v40 initWithCapacity:?];
    v78 = v6;
    v72 = v39;
    if (v39)
    {
      v42 = v39;
      while (v42 != v5)
      {
        v43 = [v42 parentNode];

        v42 = v43;
        if (!v43)
        {
          goto LABEL_28;
        }
      }

      v52 = [v36 skeleton];
      v71 = _AVTNodeDeepCopyWithCache_0(v5, v52, v7);

      v53 = v74;
      v54 = [v53 countByEnumeratingWithState:? objects:? count:?];
      if (!v54)
      {
        goto LABEL_45;
      }

      v55 = v54;
      v56 = MEMORY[0];
      do
      {
        for (j = 0; j != v55; j = (j + 1))
        {
          if (MEMORY[0] != v56)
          {
            objc_enumerationMutation(v53);
          }

          v58 = _AVTNodeDeepCopyWithCache_0(v5, *(8 * j), v7);
          [v41 addObject:?];
        }

        v55 = [v53 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v55);
    }

    else
    {
LABEL_28:
      v44 = v74;
      v45 = [v44 countByEnumeratingWithState:? objects:? count:?];
      if (!v45)
      {
        v71 = 0;
        goto LABEL_45;
      }

      v46 = v45;
      v47 = MEMORY[0];
      do
      {
        for (k = 0; k != v46; k = (k + 1))
        {
          if (MEMORY[0] != v47)
          {
            objc_enumerationMutation(v44);
          }

          v49 = *(8 * k);
          v50 = objc_alloc_init(MEMORY[0x1E69DF330]);
          v51 = [v49 name];
          [v50 setName:?];

          [v41 addObject:?];
        }

        v46 = [v44 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v46);
      v71 = 0;
    }

    v16 = v81;
    v36 = v83;
LABEL_45:

    v59 = MEMORY[0x1E69DF368];
    v60 = [v16 mesh];
    v61 = [v36 boneInverseBindTransforms];
    v62 = [v83 boneWeights];
    v63 = [v83 boneIndices];
    v37 = [v59 skinnerWithBaseMesh:? bones:? boneInverseBindTransforms:? boneWeights:? boneIndices:?];

    [v83 baseMeshBindTransform];
    [v37 setBaseMeshBindTransform:?];
    [v37 setSkeleton:?];
    [v7 setObject:? forKey:?];

    v14 = v76;
    v6 = v78;
    goto LABEL_46;
  }

LABEL_47:
  v64 = [v6 childNodes];
  v65 = [v64 countByEnumeratingWithState:? objects:? count:?];
  if (v65)
  {
    v66 = v65;
    v67 = MEMORY[0];
    do
    {
      for (m = 0; m != v66; m = (m + 1))
      {
        if (MEMORY[0] != v67)
        {
          objc_enumerationMutation(v64);
        }

        v69 = _AVTNodeDeepCopyWithCache_0(v5, *(8 * m), v7);
        [v15 addChildNode:?];
      }

      v66 = [v64 countByEnumeratingWithState:? objects:? count:?];
    }

    while (v66);
  }

  v9 = v15;
LABEL_55:

  return v9;
}

void AVTCoordinatorLoadPoseAtPath_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "pose";
}

void AVTCoordinatorLoadPoseAtPath_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "poseIdentifier";
}

void AVTCoordinatorLoadPosesAtPaths_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "poses";
}

void AVTCoordinatorLoadPosesAtPaths_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "identifiers";
}

void AVTCoordinatorLoadPoseAnimationsAtPaths_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "poseAnimations";
}

void _AVTAvatarPoseImportSceneKitAnimation_cold_1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 keyPath];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_1BB472000, a2, OS_LOG_TYPE_ERROR, "Error: Unreachable code: Unknown animation target %@", &v4, 0xCu);
}

void _AVTAvatarPoseImportSceneKitAnimation_cold_2(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138412290;
  *(a2 + 4) = a1;
  OUTLINED_FUNCTION_0_4(&dword_1BB472000, a2, a3, "Error: Unreachable code: Unsupported CAPropertyAnimation subclass (%@)", a2);
}

void AVTARKitTransformToSceneKitTransformMatrix_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&dword_1BB472000, a2, OS_LOG_TYPE_ERROR, "Error: Unreachable code: Unsupported worldAlignment %ld", &v2, 0xCu);
}

void AVTPrecompiledStickerPackPlist_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0(&dword_1BB472000, a2, a3, "Error: Could not find precompiled sticker pack %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __AVTInitializeShaderCache_block_invoke_cold_1()
{
  v0 = [0 path];
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1BB4E7754(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BB4E78DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE40](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE88](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

simd_float4x4 __invert_f4(simd_float4x4 a1)
{
  MEMORY[0x1EEE73560](a1.columns[0], a1.columns[1], a1.columns[2], a1.columns[3]);
  result.columns[3].i64[1] = v8;
  result.columns[3].i64[0] = v7;
  result.columns[2].i64[1] = v6;
  result.columns[2].i64[0] = v5;
  result.columns[1].i64[1] = v4;
  result.columns[1].i64[0] = v3;
  result.columns[0].i64[1] = v2;
  result.columns[0].i64[0] = v1;
  return result;
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x1EEE73570](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x1EEE73578](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}