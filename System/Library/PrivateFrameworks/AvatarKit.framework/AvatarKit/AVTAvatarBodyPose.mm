@interface AVTAvatarBodyPose
+ (id)neutralPose;
+ (id)posesInPosePack:(id)pack;
- (AVTAvatarBodyPose)initWithDictionaryRepresentation:(id)representation;
- (AVTAvatarBodyPose)initWithSceneKitHierarchy:(id)hierarchy;
- (AVTAvatarBodyPose)initWithSceneKitRootJoints:(id)joints;
- (AVTAvatarBodyPose)initWithSceneKitSceneAtURL:(id)l;
- (void)_applyBodyPoseWithDictionaryRepresentation:(id)representation skeletonRootJoint:(id)joint;
- (void)_applyBodyPoseWithDictionaryRepresentationA:(id)a dictionaryRepresentationB:(id)b dictionaryRepresentationC:(id)c dictionaryRepresentationD:(id)d variantIntensityX:(float)x variantIntensityY:(float)y skeletonRootJoint:(id)joint;
- (void)_applyBodyPoseWithDictionaryRepresentationA:(id)a dictionaryRepresentationB:(id)b variantIntensity:(float)intensity skeletonRootJoint:(id)joint;
- (void)applyToBodySkeletonWithRootJoint:(id)joint ageBodyPoseVariantIntensity:(float)intensity shoulderWidthBodyPoseVariantIntensity:(float)variantIntensity;
@end

@implementation AVTAvatarBodyPose

+ (id)neutralPose
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__AVTAvatarBodyPose_neutralPose__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (neutralPose_onceToken != -1)
  {
    dispatch_once(&neutralPose_onceToken, block);
  }

  v2 = neutralPose_neutralPose;

  return v2;
}

uint64_t __32__AVTAvatarBodyPose_neutralPose__block_invoke(uint64_t a1)
{
  if (kAVTBodyPosePackMemojiEditor_block_invoke_onceToken != -1)
  {
    __32__AVTAvatarBodyPose_neutralPose__block_invoke_cold_1();
  }

  v2 = [objc_alloc(*(a1 + 32)) initWithDictionaryRepresentation:?];
  v3 = neutralPose_neutralPose;
  neutralPose_neutralPose = v2;

  return MEMORY[0x1EEE66BB8](v2, v3);
}

void __32__AVTAvatarBodyPose_neutralPose__block_invoke_2()
{
  v0 = kAVTBodyPosePackMemojiEditor_block_invoke_kAVTPrecompiledNeutralBodyPoseRepresentation;
  kAVTBodyPosePackMemojiEditor_block_invoke_kAVTPrecompiledNeutralBodyPoseRepresentation = &unk_1F39E3520;
}

+ (id)posesInPosePack:(id)pack
{
  packCopy = pack;
  v4 = [packCopy isEqualToString:?];
  if (v4)
  {
    if (posesInPosePack__onceToken != -1)
    {
      +[AVTAvatarBodyPose posesInPosePack:];
    }

    v5 = posesInPosePack__poses;
  }

  else
  {
    v6 = avt_default_log(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(AVTAvatarBodyPose *)packCopy posesInPosePack:v6];
    }

    v5 = MEMORY[0x1E695E0F0];
  }

  return v5;
}

void __37__AVTAvatarBodyPose_posesInPosePack___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v1 = posesInPosePack__poses;
  posesInPosePack__poses = v0;

  v2 = [AVTStickerConfiguration stickerConfigurationsForMemojiInStickerPack:?];
  v3 = [v2 countByEnumeratingWithState:0 objects:? count:?];
  if (v3)
  {
    v4 = v3;
    v5 = MEMORY[0];
    do
    {
      for (i = 0; i != v4; i = (i + 1))
      {
        if (MEMORY[0] != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(8 * i);
        [v7 loadIfNeeded];
        v8 = posesInPosePack__poses;
        v9 = [v7 bodyPose];
        [v8 addObject:?];

        [v7 unload];
      }

      v4 = [v2 countByEnumeratingWithState:? objects:? count:?];
    }

    while (v4);
  }
}

- (AVTAvatarBodyPose)initWithSceneKitRootJoints:(id)joints
{
  jointsCopy = joints;
  v17.receiver = self;
  v17.super_class = AVTAvatarBodyPose;
  v5 = [(AVTAvatarBodyPose *)&v17 init];
  v6 = v5;
  if (v5)
  {
    v7 = _AVTPoseRoundingBehaviour(v5);
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v14 = MEMORY[0x1E69E9820];
    v15 = v7;
    v9 = v8;
    v16 = v9;
    v10 = v7;
    [jointsCopy enumerateKeysAndObjectsUsingBlock:{v14, 3221225472, __48__AVTAvatarBodyPose_initWithSceneKitRootJoints___block_invoke, &unk_1E7F48F58}];
    dictionaryRepresentation = v6->_dictionaryRepresentation;
    v6->_dictionaryRepresentation = v9;
    v12 = v9;
  }

  return v6;
}

void __48__AVTAvatarBodyPose_initWithSceneKitRootJoints___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = MEMORY[0x1E695DF90];
  v7 = a2;
  v8 = objc_alloc_init(v6);
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __48__AVTAvatarBodyPose_initWithSceneKitRootJoints___block_invoke_2;
  v14 = &unk_1E7F48F30;
  v15 = v5;
  v16 = v8;
  v17 = *(a1 + 32);
  v9 = v8;
  v10 = v5;
  [v10 enumerateChildNodesUsingBlock:?];
  [*(a1 + 40) setObject:? forKeyedSubscript:?];
}

void __48__AVTAvatarBodyPose_initWithSceneKitRootJoints___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 name];
  v5 = [v3 parentNode];
  if ([v4 isEqualToString:?] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:"))
  {
    goto LABEL_26;
  }

  [v3 simdTransform];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = *(a1 + 32);
  if (v5 != v14)
  {
    [v14 simdConvertTransform:? fromNode:?];
    v7 = v15;
    v9 = v16;
    v11 = v17;
    v13 = v18;
  }

  v19 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v11, v11), v11, 0xCuLL), vnegq_f32(v9)), v11, vextq_s8(vuzp1q_s32(v9, v9), v9, 0xCuLL));
  v20 = vmulq_f32(v7, vextq_s8(vuzp1q_s32(v19, v19), v19, 0xCuLL));
  *v19.i32 = vaddv_f32(*v20.f32);
  v21 = -1.0;
  if ((v20.f32[2] + *v19.i32) >= 0.0)
  {
    v21 = 1.0;
  }

  v22 = vmulq_f32(v7, v7);
  v23 = vmulq_f32(v9, v9);
  v24 = vadd_f32(vzip1_s32(*v22.i8, *v23.i8), vzip2_s32(*v22.i8, *v23.i8));
  v25 = vextq_s8(v22, v22, 8uLL);
  *v25.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*v25.f32, *&vextq_s8(v23, v23, 8uLL)), v24));
  v26 = vmulq_f32(v11, v11);
  v25.i32[2] = sqrtf(v26.f32[2] + vaddv_f32(*v26.f32));
  v27 = vmulq_n_f32(v25, v21);
  v28 = vdivq_f32(v7, vdupq_lane_s32(*v27.f32, 0));
  v29 = vdivq_f32(v9, vdupq_lane_s32(*v27.f32, 1));
  v30 = vdivq_f32(v11, vdupq_laneq_s32(v27, 2));
  v31 = v30.f32[2] + (*v28.i32 + v29.f32[1]);
  if (v31 <= 0.0)
  {
    if (*v28.i32 <= v29.f32[1] || *v28.i32 <= v30.f32[2])
    {
      if (v29.f32[1] > v30.f32[2])
      {
        v34 = v29;
        v34.f32[1] = (v29.f32[1] + 1.0) - *v28.i32;
        v34.i32[3] = v30.i32[0];
        v35 = vzip2q_s32(vzip1q_s32(v28, v30), vtrn1q_s32(v30, v28));
        v36 = vaddq_f32(v29, v35);
        v37 = vsubq_f32(v34, v35);
        v30 = vtrn2q_s32(vrev64q_s32(v36), v37);
        v32 = *&v37.i32[1];
        goto LABEL_18;
      }

      *v30.f32 = vadd_f32(*v30.f32, *&vzip2q_s32(v28, v29));
      v32 = ((v30.f32[2] + 1.0) - *v28.i32) - v29.f32[1];
      v30.f32[2] = v32;
      v40 = *&v28.i32[1] - v29.f32[0];
    }

    else
    {
      v32 = ((*v28.i32 + 1.0) - v29.f32[1]) - v30.f32[2];
      *&v38 = v29.f32[0] + *&v28.i32[1];
      v39 = v30.f32[0] + *&v28.i32[2];
      v40 = v29.f32[2] - v30.f32[1];
      v30.i64[0] = __PAIR64__(v38, LODWORD(v32));
      v30.f32[2] = v39;
    }

    v30.f32[3] = v40;
    goto LABEL_18;
  }

  *v30.f32 = vsub_f32(*&vzip2q_s32(v29, vuzp1q_s32(v29, v30)), *&vtrn2q_s32(v30, vzip2q_s32(v30, v28)));
  v30.f32[2] = *&v28.i32[1] - v29.f32[0];
  v32 = v31 + 1.0;
  v30.f32[3] = v31 + 1.0;
LABEL_18:
  v41 = vmulq_n_f32(v30, 0.5 / sqrtf(v32));
  v42 = *MEMORY[0x1E69E9B18];
  v43 = *(MEMORY[0x1E69E9B18] + 16);
  v44 = *(MEMORY[0x1E69E9B18] + 32);
  v45 = vmulq_f32(v41, v41);
  v46 = vaddq_f32(v45, v45);
  v47 = vmulq_laneq_f32(v41, v41, 3);
  v48 = vmuls_lane_f32(v41.f32[0], *v41.f32, 1);
  v49 = vmuls_lane_f32(v41.f32[1], v41, 2);
  v50 = vmuls_lane_f32(v41.f32[0], v41, 2);
  v42.f32[0] = (1.0 - v46.f32[1]) - v46.f32[2];
  v42.f32[1] = (v48 + v47.f32[2]) + (v48 + v47.f32[2]);
  v42.f32[2] = (v50 - v47.f32[1]) + (v50 - v47.f32[1]);
  v43.f32[0] = (v48 - v47.f32[2]) + (v48 - v47.f32[2]);
  v46.f32[0] = 1.0 - v46.f32[0];
  v43.f32[1] = v46.f32[0] - v46.f32[2];
  v43.f32[2] = (v49 + v47.f32[0]) + (v49 + v47.f32[0]);
  v44.f32[0] = (v50 + v47.f32[1]) + (v50 + v47.f32[1]);
  v44.f32[1] = (v49 - v47.f32[0]) + (v49 - v47.f32[0]);
  v44.f32[2] = v46.f32[0] - v46.f32[1];
  v51 = vaddq_f32(v13, *(MEMORY[0x1E69E9B18] + 48));
  v51.i32[3] = HIDWORD(*(MEMORY[0x1E69E9B18] + 48));
  v52 = vabdq_f32(v7, vmulq_n_f32(v42, v27.f32[0]));
  v53 = vdupq_n_s32(0x358637BDu);
  if ((vminvq_u32(vandq_s8(vandq_s8(vandq_s8(vcgeq_f32(v53, vabdq_f32(v9, vmulq_lane_f32(v43, *v27.f32, 1))), vcgeq_f32(v53, vabdq_f32(v13, v51))), vcgeq_f32(v53, vabdq_f32(v11, vmulq_laneq_f32(v44, v27, 2)))), vcgeq_f32(v53, v52))) & 0x80000000) != 0)
  {
    if (v5 == *(a1 + 32))
    {
      [v3 simdPosition];
      [v3 simdOrientation];
      [v3 simdScale];
      v27 = v60;
    }

    __asm { FMOV            V0.4S, #-1.0 }

    v66 = vcgtq_f32(vdupq_n_s32(0x358637BDu), vabsq_f32(vaddq_f32(v27, _Q0)));
    v66.i32[3] = v66.i32[2];
    v67 = vminvq_u32(v66);
    v70 = [MEMORY[0x1E696AD98] avt_numberWithFloat:? roundingBehavior:?];
    v69 = [MEMORY[0x1E696AD98] avt_numberWithFloat:? roundingBehavior:?];
    v59 = [MEMORY[0x1E696AD98] avt_numberWithFloat:? roundingBehavior:?];
    [MEMORY[0x1E696AD98] avt_numberWithFloat:? roundingBehavior:?];
    if ((v67 & 0x80000000) != 0)
      v57 = {;
      v56 = [MEMORY[0x1E696AD98] avt_numberWithFloat:? roundingBehavior:?];
      v71 = [MEMORY[0x1E696AD98] avt_numberWithFloat:? roundingBehavior:?];
      v58 = [MEMORY[0x1E696AD98] avt_numberWithFloat:? roundingBehavior:?];
      v55 = [MEMORY[0x1E695DEC8] arrayWithObjects:? count:?];
      [*(a1 + 40) setObject:? forKeyedSubscript:?];
    }

    else
      v72 = {;
      v73 = [MEMORY[0x1E696AD98] avt_numberWithFloat:? roundingBehavior:?];
      v71 = [MEMORY[0x1E696AD98] avt_numberWithFloat:? roundingBehavior:?];
      v74 = [MEMORY[0x1E696AD98] avt_numberWithFloat:? roundingBehavior:?];
      v55 = [MEMORY[0x1E696AD98] avt_numberWithFloat:? roundingBehavior:?];
      v75 = [MEMORY[0x1E696AD98] avt_numberWithFloat:? roundingBehavior:?];
      v76 = [MEMORY[0x1E696AD98] avt_numberWithFloat:? roundingBehavior:?];
      v68 = [MEMORY[0x1E695DEC8] arrayWithObjects:? count:?];
      [*(a1 + 40) setObject:? forKeyedSubscript:?];

      v56 = v73;
      v58 = v74;

      v57 = v72;
    }
  }

  else
  {
    v70 = [MEMORY[0x1E696AD98] avt_numberWithFloat:? roundingBehavior:?];
    v69 = [MEMORY[0x1E696AD98] avt_numberWithFloat:? roundingBehavior:?];
    v77 = [MEMORY[0x1E696AD98] avt_numberWithFloat:? roundingBehavior:?];
    v78 = [MEMORY[0x1E696AD98] avt_numberWithFloat:? roundingBehavior:?];
    v79 = [MEMORY[0x1E696AD98] avt_numberWithFloat:? roundingBehavior:?];
    v71 = [MEMORY[0x1E696AD98] avt_numberWithFloat:? roundingBehavior:?];
    v80 = [MEMORY[0x1E696AD98] avt_numberWithFloat:? roundingBehavior:?];
    v81 = [MEMORY[0x1E696AD98] avt_numberWithFloat:? roundingBehavior:?];
    v82 = [MEMORY[0x1E696AD98] avt_numberWithFloat:? roundingBehavior:?];
    v83 = [MEMORY[0x1E696AD98] avt_numberWithFloat:? roundingBehavior:?];
    v84 = [MEMORY[0x1E696AD98] avt_numberWithFloat:? roundingBehavior:?];
    v85 = [MEMORY[0x1E696AD98] avt_numberWithFloat:? roundingBehavior:?];
    v86 = [MEMORY[0x1E696AD98] avt_numberWithFloat:? roundingBehavior:?];
    v87 = [MEMORY[0x1E696AD98] avt_numberWithFloat:? roundingBehavior:?];
    v88 = [MEMORY[0x1E696AD98] avt_numberWithFloat:? roundingBehavior:?];
    v89 = [MEMORY[0x1E696AD98] avt_numberWithFloat:? roundingBehavior:?];
    v54 = [MEMORY[0x1E695DEC8] arrayWithObjects:? count:?];
    [*(a1 + 40) setObject:? forKeyedSubscript:?];

    v55 = v81;
    v56 = v79;

    v57 = v78;
    v58 = v80;

    v59 = v77;
  }

LABEL_26:
}

- (AVTAvatarBodyPose)initWithSceneKitHierarchy:(id)hierarchy
{
  v3 = [hierarchy childNodesPassingTest:? recursively:?];
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:? objects:? count:?];
  if (v6)
  {
    v7 = v6;
    v8 = MEMORY[0];
    do
    {
      for (i = 0; i != v7; i = (i + 1))
      {
        if (MEMORY[0] != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(8 * i);
        name = [v10 name];
        v12 = [name isEqualToString:?];

        if (v12)
        {
          [v4 setObject:? forKeyedSubscript:?];
        }

        else
        {
          name2 = [v10 name];
          v14 = [name2 rangeOfString:?];

          if (v14 != 0x7FFFFFFFFFFFFFFFLL)
          {
            name3 = [v10 name];
            v16 = [name3 substringFromIndex:?];

            [v4 setObject:? forKeyedSubscript:?];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:? objects:? count:?];
    }

    while (v7);
  }

  v17 = [(AVTAvatarBodyPose *)self initWithSceneKitRootJoints:?];
  return v17;
}

void *__47__AVTAvatarBodyPose_initWithSceneKitHierarchy___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 name];
  v3 = [v2 hasPrefix:?];

  return v3;
}

- (AVTAvatarBodyPose)initWithSceneKitSceneAtURL:(id)l
{
  lCopy = l;
  v12 = 0;
  v5 = [MEMORY[0x1E697A8C8] avt_newSceneWithURL:? options:? error:?];
  v6 = v12;
  v7 = [v5 avt_fixQuirksOfNewUSDSchemaWithOptions:? handler:?];
  if (v6)
  {
    v8 = avt_default_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(AVTAvatarPoseAnimation *)lCopy initWithSceneKitSceneAtURL:v6 usdaMetadata:v8];
    }
  }

  rootNode = [v5 rootNode];
  v10 = [(AVTAvatarBodyPose *)self initWithSceneKitHierarchy:?];

  return v10;
}

- (AVTAvatarBodyPose)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v9.receiver = self;
  v9.super_class = AVTAvatarBodyPose;
  v6 = [(AVTAvatarBodyPose *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dictionaryRepresentation, representation);
  }

  return v7;
}

- (void)applyToBodySkeletonWithRootJoint:(id)joint ageBodyPoseVariantIntensity:(float)intensity shoulderWidthBodyPoseVariantIntensity:(float)variantIntensity
{
  jointCopy = joint;
  v8 = +[AVTAvatarBodyPose neutralPose];

  if (v8 == self)
  {
    v9 = [(NSDictionary *)self->_dictionaryRepresentation objectForKeyedSubscript:?];
    [AVTAvatarBodyPose _applyBodyPoseWithDictionaryRepresentation:"_applyBodyPoseWithDictionaryRepresentation:skeletonRootJoint:" skeletonRootJoint:?];
    goto LABEL_9;
  }

  if (variantIntensity == 0.0)
  {
    v9 = [(NSDictionary *)self->_dictionaryRepresentation objectForKeyedSubscript:?];
    v10 = [(NSDictionary *)self->_dictionaryRepresentation objectForKeyedSubscript:?];
    selfCopy2 = self;
  }

  else
  {
    v9 = [(NSDictionary *)self->_dictionaryRepresentation objectForKeyedSubscript:?];
    dictionaryRepresentation = self->_dictionaryRepresentation;
    if (intensity != 0.0)
    {
      v10 = [(NSDictionary *)dictionaryRepresentation objectForKeyedSubscript:?];
      v13 = [(NSDictionary *)self->_dictionaryRepresentation objectForKeyedSubscript:?];
      v14 = [(NSDictionary *)self->_dictionaryRepresentation objectForKeyedSubscript:?];
      [AVTAvatarBodyPose _applyBodyPoseWithDictionaryRepresentationA:"_applyBodyPoseWithDictionaryRepresentationA:dictionaryRepresentationB:dictionaryRepresentationC:dictionaryRepresentationD:variantIntensityX:variantIntensityY:skeletonRootJoint:" dictionaryRepresentationB:? dictionaryRepresentationC:? dictionaryRepresentationD:? variantIntensityX:? variantIntensityY:? skeletonRootJoint:?];

      goto LABEL_8;
    }

    v10 = [(NSDictionary *)dictionaryRepresentation objectForKeyedSubscript:?];
    selfCopy2 = self;
  }

  [AVTAvatarBodyPose _applyBodyPoseWithDictionaryRepresentationA:selfCopy2 dictionaryRepresentationB:"_applyBodyPoseWithDictionaryRepresentationA:dictionaryRepresentationB:variantIntensity:skeletonRootJoint:" variantIntensity:? skeletonRootJoint:?];
LABEL_8:

LABEL_9:
}

- (void)_applyBodyPoseWithDictionaryRepresentation:(id)representation skeletonRootJoint:(id)joint
{
  representationCopy = representation;
  jointCopy = joint;
  v9 = MEMORY[0x1E69E9820];
  v10 = representationCopy;
  v11 = jointCopy;
  v7 = jointCopy;
  v8 = representationCopy;
  [v7 enumerateHierarchyUsingBlock:{v9, 3221225472, __82__AVTAvatarBodyPose__applyBodyPoseWithDictionaryRepresentation_skeletonRootJoint___block_invoke, &unk_1E7F47EA0}];
}

void __82__AVTAvatarBodyPose__applyBodyPoseWithDictionaryRepresentation_skeletonRootJoint___block_invoke(uint64_t a1, void *a2)
{
  v25 = a2;
  v3 = [v25 name];
  if (v3)
  {
    v4 = [*(a1 + 32) objectForKeyedSubscript:?];
    v5 = v4;
    if (v4)
    {
      if ([v4 count] == 16)
      {
        AVTAvatarPoseRepresentationGetTransform(v5);
      }

      else
      {
        v6 = v5;
        v7 = [v6 objectAtIndexedSubscript:?];
        [v7 floatValue];
        v8 = [v6 objectAtIndexedSubscript:?];
        [v8 floatValue];
        v9 = [v6 objectAtIndexedSubscript:?];

        [v9 floatValue];
        v10 = v6;
        v11 = [v10 objectAtIndexedSubscript:?];
        [v11 floatValue];
        v12 = [v10 objectAtIndexedSubscript:?];
        [v12 floatValue];
        v13 = [v10 objectAtIndexedSubscript:?];
        [v13 floatValue];
        v14 = [v10 objectAtIndexedSubscript:?];

        [v14 floatValue];
        v15 = v10;
        if ([v15 count] == 10)
        {
          v16 = [v15 objectAtIndexedSubscript:?];
          [v16 floatValue];
          v17 = [v15 objectAtIndexedSubscript:?];
          [v17 floatValue];
          v18 = [v15 objectAtIndexedSubscript:?];
          [v18 floatValue];
        }

        else
        {
          __asm { FMOV            V0.4S, #1.0 }
        }
      }

      v24 = [v25 parentNode];
      [v24 convertTransform:? fromNode:?];
      [v25 setTransform:?];
    }
  }
}

- (void)_applyBodyPoseWithDictionaryRepresentationA:(id)a dictionaryRepresentationB:(id)b variantIntensity:(float)intensity skeletonRootJoint:(id)joint
{
  aCopy = a;
  bCopy = b;
  jointCopy = joint;
  if (intensity == 0.0)
  {
    selfCopy2 = self;
  }

  else
  {
    if (intensity != 1.0)
    {
      v14 = MEMORY[0x1E69E9820];
      v15 = aCopy;
      v16 = bCopy;
      v17 = jointCopy;
      [v17 enumerateHierarchyUsingBlock:{v14, 3221225472, __126__AVTAvatarBodyPose__applyBodyPoseWithDictionaryRepresentationA_dictionaryRepresentationB_variantIntensity_skeletonRootJoint___block_invoke, &unk_1E7F48FA0}];

      goto LABEL_6;
    }

    selfCopy2 = self;
  }

  [AVTAvatarBodyPose _applyBodyPoseWithDictionaryRepresentation:selfCopy2 skeletonRootJoint:"_applyBodyPoseWithDictionaryRepresentation:skeletonRootJoint:"];
LABEL_6:
}

void __126__AVTAvatarBodyPose__applyBodyPoseWithDictionaryRepresentationA_dictionaryRepresentationB_variantIntensity_skeletonRootJoint___block_invoke(uint64_t a1, void *a2)
{
  v63 = a2;
  v3 = [v63 name];
  if (v3)
  {
    v4 = [*(a1 + 32) objectForKeyedSubscript:?];
    v5 = [*(a1 + 40) objectForKeyedSubscript:?];
    v6 = v5;
    if (v4)
    {
      _ZF = v5 == 0;
    }

    else
    {
      _ZF = 1;
    }

    if (!_ZF)
    {
      if ([v4 count] == 16 || objc_msgSend(v6, "count") == 16)
      {
        AVTAvatarPoseRepresentationGetTransform(v4);
        AVTAvatarPoseRepresentationGetTransform(v6);
      }

      else
      {
        v8 = v4;
        v9 = [v8 objectAtIndexedSubscript:?];
        [v9 floatValue];
        v10 = [v8 objectAtIndexedSubscript:?];
        [v10 floatValue];
        v11 = [v8 objectAtIndexedSubscript:?];

        [v11 floatValue];
        v12 = v8;
        v13 = [v12 objectAtIndexedSubscript:?];
        [v13 floatValue];
        v60 = v14;
        v15 = [v12 objectAtIndexedSubscript:?];
        [v15 floatValue];
        v56 = v16;
        v17 = [v12 objectAtIndexedSubscript:?];
        [v17 floatValue];
        v55 = v18;
        v19 = [v12 objectAtIndexedSubscript:?];

        [v19 floatValue];
        v57 = v20;
        v21 = v60;
        v21.vector.i32[1] = v56;
        v21.vector.i32[2] = v55;
        v61 = v21;

        v22 = v12;
        v23 = [v22 count];
        __asm { FMOV            V0.4S, #1.0 }

        if (v23 == 10)
        {
          v28 = [v22 objectAtIndexedSubscript:?];
          [v28 floatValue];
          v29 = [v22 objectAtIndexedSubscript:?];
          [v29 floatValue];
          v30 = [v22 objectAtIndexedSubscript:?];
          [v30 floatValue];
        }

        v31 = v61;
        v31.vector.i32[3] = v57;
        v62 = v31;

        v32 = v6;
        v33 = [v32 objectAtIndexedSubscript:?];
        [v33 floatValue];
        v34 = [v32 objectAtIndexedSubscript:?];
        [v34 floatValue];
        v35 = [v32 objectAtIndexedSubscript:?];

        [v35 floatValue];
        v36 = v32;
        v37 = [v36 objectAtIndexedSubscript:?];
        [v37 floatValue];
        v58 = v38;
        v39 = [v36 objectAtIndexedSubscript:?];
        [v39 floatValue];
        v54 = v40;
        v41 = [v36 objectAtIndexedSubscript:?];
        [v41 floatValue];
        v53 = v42;
        v43 = [v36 objectAtIndexedSubscript:?];

        [v43 floatValue];
        v44.i64[0] = __PAIR64__(v54, v58);
        v44.i64[1] = __PAIR64__(v45, v53);
        v59 = v44;

        v46 = v36;
        if ([v46 count] == 10)
        {
          v47 = [v46 objectAtIndexedSubscript:?];
          [v47 floatValue];
          v48 = [v46 objectAtIndexedSubscript:?];
          [v48 floatValue];
          v49 = [v46 objectAtIndexedSubscript:?];
          [v49 floatValue];
        }

        v50 = vmulq_f32(v62, v59);
        v51 = vextq_s8(v50, v50, 8uLL);
        v50.f32[0] = vaddv_f32(vadd_f32(*v50.f32, *v51.f32));
        v51.i64[0] = 0;
        _simd_slerp_internal(v62, vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vcgeq_f32(v50, v51)), 0), vnegq_f32(v59), v59), *(a1 + 56));
      }

      v52 = [v63 parentNode];
      [v52 convertTransform:? fromNode:?];
      [v63 setTransform:?];
    }
  }
}

- (void)_applyBodyPoseWithDictionaryRepresentationA:(id)a dictionaryRepresentationB:(id)b dictionaryRepresentationC:(id)c dictionaryRepresentationD:(id)d variantIntensityX:(float)x variantIntensityY:(float)y skeletonRootJoint:(id)joint
{
  aCopy = a;
  bCopy = b;
  cCopy = c;
  dCopy = d;
  jointCopy = joint;
  if (x == 0.0)
  {
    selfCopy4 = self;
  }

  else if (x == 1.0)
  {
    selfCopy4 = self;
  }

  else if (y == 0.0)
  {
    selfCopy4 = self;
  }

  else
  {
    if (y != 1.0)
    {
      v22 = aCopy;
      v23 = bCopy;
      v24 = cCopy;
      v25 = dCopy;
      [jointCopy enumerateHierarchyUsingBlock:?];

      goto LABEL_6;
    }

    selfCopy4 = self;
  }

  [AVTAvatarBodyPose _applyBodyPoseWithDictionaryRepresentationA:selfCopy4 dictionaryRepresentationB:"_applyBodyPoseWithDictionaryRepresentationA:dictionaryRepresentationB:variantIntensity:skeletonRootJoint:" variantIntensity:? skeletonRootJoint:?];
LABEL_6:
}

void __197__AVTAvatarBodyPose__applyBodyPoseWithDictionaryRepresentationA_dictionaryRepresentationB_dictionaryRepresentationC_dictionaryRepresentationD_variantIntensityX_variantIntensityY_skeletonRootJoint___block_invoke(uint64_t a1, void *a2)
{
  v131 = a2;
  v3 = [v131 name];
  if (v3)
  {
    v4 = [*(a1 + 32) objectForKeyedSubscript:?];
    v5 = [*(a1 + 40) objectForKeyedSubscript:?];
    v6 = [*(a1 + 48) objectForKeyedSubscript:?];
    v7 = [*(a1 + 56) objectForKeyedSubscript:?];
    v8 = v7;
    if (v4 && v5 && v6 && v7)
    {
      if ([v4 count] == 16 || objc_msgSend(v5, "count") == 16 || objc_msgSend(v6, "count") == 16)
      {
        AVTAvatarPoseRepresentationGetTransform(v4);
        AVTAvatarPoseRepresentationGetTransform(v5);
        AVTAvatarPoseRepresentationGetTransform(v6);
        AVTAvatarPoseRepresentationGetTransform(v8);
      }

      else
      {
        v9 = v4;
        v10 = [v9 objectAtIndexedSubscript:?];
        [v10 floatValue];
        v11 = [v9 objectAtIndexedSubscript:?];
        [v11 floatValue];
        v12 = [v9 objectAtIndexedSubscript:?];

        [v12 floatValue];
        v13 = v9;
        v115 = [v13 objectAtIndexedSubscript:?];
        [v115 floatValue];
        v126 = v14;
        v15 = [v13 objectAtIndexedSubscript:?];
        [v15 floatValue];
        v121 = v16;
        v17 = [v13 objectAtIndexedSubscript:?];
        [v17 floatValue];
        v117 = v18;
        v19 = [v13 objectAtIndexedSubscript:?];

        [v19 floatValue];
        v111 = v20;

        v21 = v13;
        v22 = [v21 count];
        __asm { FMOV            V0.4S, #1.0 }

        if (v22 == 10)
        {
          v28 = [v21 objectAtIndexedSubscript:?];
          [v28 floatValue];
          v29 = [v21 objectAtIndexedSubscript:?];
          [v29 floatValue];
          v30 = [v21 objectAtIndexedSubscript:?];
          [v30 floatValue];
        }

        v31 = v126;
        v31.i32[1] = v121;
        v127 = v31;

        v32 = v5;
        v33 = [v32 objectAtIndexedSubscript:?];
        [v33 floatValue];
        v34 = [v32 objectAtIndexedSubscript:?];
        [v34 floatValue];
        v35 = [v32 objectAtIndexedSubscript:?];

        [v35 floatValue];
        v36 = v32;
        v110 = [v36 objectAtIndexedSubscript:?];
        [v110 floatValue];
        v122 = v37;
        v38 = [v36 objectAtIndexedSubscript:?];
        [v38 floatValue];
        v102 = v39;
        v40 = [v36 objectAtIndexedSubscript:?];
        [v40 floatValue];
        v104 = v41;
        v42 = [v36 objectAtIndexedSubscript:?];

        [v42 floatValue];
        v106 = v43;
        v44 = v122;
        v44.i32[1] = v102;
        v123 = v44;

        v45 = v36;
        if ([v45 count] == 10)
        {
          v46 = [v45 objectAtIndexedSubscript:?];
          [v46 floatValue];
          v47 = [v45 objectAtIndexedSubscript:?];
          [v47 floatValue];
          v48 = [v45 objectAtIndexedSubscript:?];
          [v48 floatValue];
        }

        v49 = v127;
        v49.i32[2] = v117;
        v128 = v49;
        v50 = v123;
        v50.i32[2] = v104;
        v124 = v50;

        v51 = v6;
        v52 = [v51 objectAtIndexedSubscript:?];
        [v52 floatValue];
        v53 = [v51 objectAtIndexedSubscript:?];
        [v53 floatValue];
        v54 = [v51 objectAtIndexedSubscript:?];

        [v54 floatValue];
        v55 = v51;
        v114 = [v55 objectAtIndexedSubscript:?];
        [v114 floatValue];
        v118 = v56;
        v57 = [v55 objectAtIndexedSubscript:?];
        [v57 floatValue];
        v101 = v58;
        v59 = [v55 objectAtIndexedSubscript:?];
        [v59 floatValue];
        v100 = v60;
        v61 = [v55 objectAtIndexedSubscript:?];

        [v61 floatValue];
        v103 = v62;
        v63 = v118;
        v63.i32[1] = v101;
        v63.i32[2] = v100;
        v119 = v63;

        v64 = v55;
        if ([v64 count] == 10)
        {
          v65 = [v64 objectAtIndexedSubscript:?];
          [v65 floatValue];
          v66 = [v64 objectAtIndexedSubscript:?];
          [v66 floatValue];
          v67 = [v64 objectAtIndexedSubscript:?];
          [v67 floatValue];
        }

        v68 = v128;
        v68.i32[3] = v111;
        v129 = v68;
        v69 = v124;
        v69.i32[3] = v106;
        v125 = v69;
        v70 = v119;
        v70.i32[3] = v103;
        v120 = v70;

        v71 = v8;
        v72 = [v71 objectAtIndexedSubscript:?];
        [v72 floatValue];
        v73 = [v71 objectAtIndexedSubscript:?];
        [v73 floatValue];
        v74 = [v71 objectAtIndexedSubscript:?];

        [v74 floatValue];
        v75 = v71;
        v108 = [v75 objectAtIndexedSubscript:?];
        [v108 floatValue];
        v112 = v76;
        v77 = [v75 objectAtIndexedSubscript:?];
        [v77 floatValue];
        v107 = v78;
        v79 = [v75 objectAtIndexedSubscript:?];
        [v79 floatValue];
        v105 = v80;
        v81 = [v75 objectAtIndexedSubscript:?];

        [v81 floatValue];
        v82.i64[0] = __PAIR64__(v107, v112);
        v82.i64[1] = __PAIR64__(v83, v105);
        v113 = v82;

        v84 = v75;
        if ([v84 count] == 10)
        {
          v85 = [v84 objectAtIndexedSubscript:?];
          [v85 floatValue];
          v86 = [v84 objectAtIndexedSubscript:?];
          [v86 floatValue];
          v87 = [v84 objectAtIndexedSubscript:?];
          [v87 floatValue];
        }

        v88 = vmulq_f32(v129, v125);
        v89 = vadd_f32(*v88.i8, *&vextq_s8(v88, v88, 8uLL));
        v90 = vmulq_f32(v120, v113);
        *v90.i8 = vadd_f32(*v90.i8, *&vextq_s8(v90, v90, 8uLL));
        *v88.i8 = vzip1_s32(*v90.i8, v89);
        v91 = vzip2_s32(*v90.i8, v89);
        v92 = vnegq_f32(v125);
        *v88.i8 = vmvn_s8(vcgez_f32(vadd_f32(*v88.i8, v91)));
        v116 = v88.i8[0];
        v109 = *(a1 + 64);
        if (v88.i8[4])
        {
          v93 = -1;
        }

        else
        {
          v93 = 0;
        }

        _simd_slerp_internal(v129, vbslq_s8(vdupq_n_s32(v93), v92, v125), *(a1 + 64));
        v130 = v94;
        v95 = vnegq_f32(v113);
        if (v116)
        {
          v96 = -1;
        }

        else
        {
          v96 = 0;
        }

        _simd_slerp_internal(v120, vbslq_s8(vdupq_n_s32(v96), v95, v113), v109);
        v98 = vmulq_f32(v130, v97);
        v99 = vextq_s8(v98, v98, 8uLL);
        *v98.f32 = vadd_f32(*v98.f32, *v99.f32);
        v98.f32[0] = vaddv_f32(*v98.f32);
        v99.i64[0] = 0;
        _simd_slerp_internal(v130, vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vcgeq_f32(v98, v99)), 0), vnegq_f32(v97), v97), *(a1 + 68));
      }

      [v131 setWorldTransform:?];
    }
  }
}

+ (void)posesInPosePack:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1BB472000, a2, OS_LOG_TYPE_ERROR, "Error: Failed to find pose pack named %@", &v2, 0xCu);
}

@end