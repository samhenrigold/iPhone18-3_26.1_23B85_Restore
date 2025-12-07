@interface AVTAvatarPose
+ (id)friendlyPose;
+ (id)neutralPose;
+ (id)posesForAnimojiNamed:(id)named inPosePack:(id)pack;
+ (id)posesInPosePack:(id)pack avatarSelectionBlock:(id)block;
- (AVTAvatarPose)initWithDictionaryRepresentation:(id)representation;
- (AVTAvatarPose)initWithScene:(id)scene;
- (AVTAvatarPose)initWithWeights:(id)weights neckPosition:neckOrientation:bakedAnimationBlendFactor:;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToPose:(id)pose;
- (BOOL)isFriendlyPose;
- (BOOL)isNeutralPose;
- (double)weightForBlendShapeNamed:(id)named;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)hashString;
- (id)poseByMergingPose:(id)pose;
- (int8x16_t)setNeckOrientation:(int32x4_t)orientation;
- (void)setNeckPosition:(AVTAvatarPose *)self;
- (void)setNeckPositionAndOrientationFromHierarchy:(id)hierarchy;
- (void)setWeight:(double)weight forBlendShapeNamed:(id)named;
- (void)setWeights:(id)weights;
@end

@implementation AVTAvatarPose

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = objc_alloc(objc_opt_class());

  return [v3 initWithWeights:? neckPosition:? neckOrientation:? bakedAnimationBlendFactor:?];
}

- (void)setWeights:(id)weights
{
  v4 = [weights mutableCopy];
  weights = self->_weights;
  self->_weights = v4;

  MEMORY[0x1EEE66BB8](v4, weights);
}

- (double)weightForBlendShapeNamed:(id)named
{
  v3 = [(NSMutableDictionary *)self->_weights objectForKeyedSubscript:?];
  [v3 floatValue];
  v5 = v4;

  return v5;
}

- (void)setWeight:(double)weight forBlendShapeNamed:(id)named
{
  namedCopy = named;
  weights = self->_weights;
  v11 = namedCopy;
  if (weight == 0.0)
  {
    [(NSMutableDictionary *)weights removeObjectForKey:?];
  }

  else
  {
    if (!weights)
    {
      v8 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:?];
      v9 = self->_weights;
      self->_weights = v8;

      weights = self->_weights;
    }

    v10 = [MEMORY[0x1E696AD98] numberWithFloat:?];
    [NSMutableDictionary setValue:"setValue:forKey:" forKey:?];
  }
}

- (void)setNeckPosition:(AVTAvatarPose *)self
{
  v3.i32[0] = 0;
  v4.i64[0] = 0x3400000034000000;
  v4.i64[1] = 0x3400000034000000;
  v5 = vcgtq_f32(vabsq_f32(v2), v4);
  v5.i32[3] = v5.i32[2];
  v5.i32[0] = vmaxvq_u32(v5);
  self->_hasNeckPosition = v5.i32[0] < 0;
  *self->_neckPosition = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v3, v5), 0), v2, 0);
}

- (int8x16_t)setNeckOrientation:(int32x4_t)orientation
{
  orientation.i32[0] = 0;
  v3.i64[0] = 0x3400000034000000;
  v3.i64[1] = 0x3400000034000000;
  v4 = vcgtq_f32(vabsq_f32(vaddq_f32(a2, xmmword_1BB4F0EB0)), v3);
  v4.i32[0] = vmaxvq_u32(v4);
  result = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(orientation, v4), 0), a2, xmmword_1BB4F06F0);
  self->i8[9] = v4.i32[0] < 0;
  self[3] = result;
  return result;
}

- (id)dictionaryRepresentation
{
  v3 = _AVTPoseRoundingBehaviour(self);
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  weights = self->_weights;
  v13 = MEMORY[0x1E69E9820];
  v6 = v4;
  v7 = v3;
  [(NSMutableDictionary *)weights enumerateKeysAndObjectsUsingBlock:v13, 3221225472, __41__AVTAvatarPose_dictionaryRepresentation__block_invoke, &unk_1E7F49F40];
  if (self->_hasNeckPosition)
  {
    v8 = [MEMORY[0x1E695DEC8] avt_arrayWithFloat3:? roundingBehavior:?];
    [v6 setObject:? forKeyedSubscript:?];
  }

  if (self->_hasNeckOrientation)
  {
    v9 = [MEMORY[0x1E695DEC8] avt_arrayWithFloat4:? roundingBehavior:?];
    [v6 setObject:? forKeyedSubscript:?];
  }

  v10 = [MEMORY[0x1E696AD98] avt_numberWithFloat:? roundingBehavior:?];
  [v6 setObject:? forKeyedSubscript:?];

  v11 = [v6 copy];

  return v11;
}

void __41__AVTAvatarPose_dictionaryRepresentation__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 avt_numberByRoundingWithBehavior:?];
  [*(a1 + 32) setObject:? forKeyedSubscript:?];
}

- (AVTAvatarPose)initWithWeights:(id)weights neckPosition:neckOrientation:bakedAnimationBlendFactor:
{
  v6 = v5;
  v7 = v4;
  v8 = v3;
  weightsCopy = weights;
  v22.receiver = self;
  v22.super_class = AVTAvatarPose;
  v11 = [(AVTAvatarPose *)&v22 init];
  if (v11)
  {
    v12 = [weightsCopy mutableCopy];
    weights = v11->_weights;
    v11->_weights = v12;

    if (v8)
    {
      v14.i64[0] = 0x3400000034000000;
      v14.i64[1] = 0x3400000034000000;
      v15 = vcgtq_f32(vabsq_f32(*v8), v14);
      v15.i32[3] = v15.i32[2];
      v16 = vmaxvq_u32(v15);
      v11->_hasNeckPosition = v16 < 0;
      v17 = 0uLL;
      if (v16 < 0)
      {
        v17 = *v8;
      }
    }

    else
    {
      v11->_hasNeckPosition = 0;
      v17 = 0uLL;
    }

    *v11->_neckPosition = v17;
    if (v7)
    {
      v18.i64[0] = 0x3400000034000000;
      v18.i64[1] = 0x3400000034000000;
      v19 = vmaxvq_u32(vcgtq_f32(vabsq_f32(vaddq_f32(*v7, xmmword_1BB4F0EB0)), v18));
      v11->_hasNeckOrientation = v19 < 0;
      if (v19 < 0)
      {
        v20 = *v7;
LABEL_11:
        *&v11[1].super.isa = v20;
        v11->_bakedAnimationBlendFactor = v6;
        goto LABEL_12;
      }
    }

    else
    {
      v11->_hasNeckOrientation = 0;
    }

    v20 = xmmword_1BB4F06F0;
    goto LABEL_11;
  }

LABEL_12:

  return v11;
}

- (AVTAvatarPose)initWithScene:(id)scene
{
  v4 = MEMORY[0x1E695DFA8];
  sceneCopy = scene;
  v6 = objc_alloc_init(v4);
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __31__AVTAvatarPose_initWithScene___block_invoke;
  v21[3] = &unk_1E7F49F68;
  v22 = v6;
  v23 = dictionary;
  v8 = dictionary;
  v9 = v6;
  rootNode = [sceneCopy rootNode];
  v11 = [rootNode childNodeWithName:? recursively:?];

  __31__AVTAvatarPose_initWithScene___block_invoke(v21, v11);
  rootNode2 = [sceneCopy rootNode];
  [rootNode2 enumerateHierarchyUsingBlock:?];

  rootNode3 = [sceneCopy rootNode];
  v14 = [rootNode3 childNodeWithName:? recursively:?];

  [v14 simdPosition];
  rootNode4 = [sceneCopy rootNode];

  v16 = [rootNode4 childNodeWithName:? recursively:?];

  [v16 simdOrientation];
  v19 = [AVTAvatarPose initWithWeights:"initWithWeights:neckPosition:neckOrientation:bakedAnimationBlendFactor:" neckPosition:v17 neckOrientation:v18 bakedAnimationBlendFactor:?];

  return v19;
}

void __31__AVTAvatarPose_initWithScene___block_invoke(uint64_t a1, void *a2)
{
  v14 = [a2 morpher];
  v3 = [v14 weights];
  v4 = [v3 count];

  if (v4)
  {
    v5 = 0;
    do
    {
      v6 = [v14 targets];
      v7 = [v6 objectAtIndexedSubscript:?];

      v8 = [v7 name];
      if (AVTMorphTargetNameDefinesPose(v8) && ([*(a1 + 32) containsObject:?] & 1) == 0)
      {
        v9 = [v14 weights];
        v10 = [v9 objectAtIndexedSubscript:?];

        [v10 floatValue];
        if (v11 != 0.0)
        {
          [*(a1 + 40) setValue:? forKey:?];
          [*(a1 + 32) addObject:?];
        }
      }

      ++v5;
      v12 = [v14 weights];
      v13 = [v12 count];
    }

    while (v13 > v5);
  }
}

- (void)setNeckPositionAndOrientationFromHierarchy:(id)hierarchy
{
  hierarchyCopy = hierarchy;
  v6 = [hierarchyCopy childNodeWithName:? recursively:?];
  [v6 simdPosition];
  [(AVTAvatarPose *)self setNeckPosition:?];
  v5 = [hierarchyCopy childNodeWithName:? recursively:?];

  [v5 simdOrientation];
  [(AVTAvatarPose *)self setNeckOrientation:?];
}

- (AVTAvatarPose)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v16 = 0uLL;
  v5 = [representationCopy objectForKeyedSubscript:?];
  v6 = v5;
  if (v5)
  {
    [v5 avt_float3];
    v16 = v7;
  }

  v8 = [representationCopy objectForKeyedSubscript:{0, 0x3F80000000000000, v16}];

  if (v8)
  {
    [v8 avt_float4];
    v15 = v9;
  }

  v10 = [representationCopy objectForKeyedSubscript:v15];
  [v10 doubleValue];

  v11 = [representationCopy mutableCopy];
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:? count:?];
  [v11 removeObjectsForKeys:?];

  v13 = [AVTAvatarPose initWithWeights:"initWithWeights:neckPosition:neckOrientation:bakedAnimationBlendFactor:" neckPosition:? neckOrientation:? bakedAnimationBlendFactor:?];
  return v13;
}

+ (id)neutralPose
{
  if (neutralPose_onceToken_0 != -1)
  {
    +[AVTAvatarPose neutralPose];
  }

  v3 = neutralPose_pose;

  return v3;
}

uint64_t __28__AVTAvatarPose_neutralPose__block_invoke()
{
  v0 = objc_alloc_init(AVTAvatarPose);
  v1 = neutralPose_pose;
  neutralPose_pose = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)friendlyPose
{
  if (friendlyPose_onceToken != -1)
  {
    +[AVTAvatarPose friendlyPose];
  }

  v3 = friendlyPose_pose;

  return v3;
}

void *__29__AVTAvatarPose_friendlyPose__block_invoke()
{
  v0 = objc_alloc_init(AVTAvatarPose);
  v1 = friendlyPose_pose;
  friendlyPose_pose = v0;

  v2 = friendlyPose_pose;

  return [v2 setWeight:? forBlendShapeNamed:?];
}

- (BOOL)isNeutralPose
{
  v3 = +[AVTAvatarPose neutralPose];
  LOBYTE(self) = [(AVTAvatarPose *)self isEqualToPose:?];

  return self;
}

- (BOOL)isFriendlyPose
{
  v3 = +[AVTAvatarPose friendlyPose];
  LOBYTE(self) = [(AVTAvatarPose *)self isEqualToPose:?];

  return self;
}

- (BOOL)isEqualToPose:(id)pose
{
  poseCopy = pose;
  p_isa = &poseCopy->super.isa;
  if (poseCopy == self)
  {
    v6 = 1;
  }

  else if (poseCopy && self->_bakedAnimationBlendFactor == poseCopy->_bakedAnimationBlendFactor && (v8 = vmvnq_s8(vceqq_f32(*self->_neckPosition, *poseCopy->_neckPosition)), v8.i32[3] = v8.i32[2], (vmaxvq_u32(v8) & 0x80000000) == 0) && (vmaxvq_u32(vmvnq_s8(vceqq_f32(*&self[1].super.isa, *&poseCopy[1].super.isa))) & 0x80000000) == 0 && (v9 = -[NSMutableDictionary count](self->_weights, "count"), v9 == [p_isa[3] count]))
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 1;
    weights = self->_weights;
    v11 = MEMORY[0x1E69E9820];
    v12 = p_isa;
    [(NSMutableDictionary *)weights enumerateKeysAndObjectsUsingBlock:?];
    if (*(v14 + 24))
    {
      [p_isa[3] enumerateKeysAndObjectsUsingBlock:{MEMORY[0x1E69E9820], 3221225472, __31__AVTAvatarPose_isEqualToPose___block_invoke_2, &unk_1E7F49FB0, self, &v13, v11, 3221225472, __31__AVTAvatarPose_isEqualToPose___block_invoke, &unk_1E7F49FB0}];
      v6 = *(v14 + 24);
    }

    else
    {
      v6 = 0;
    }

    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __31__AVTAvatarPose_isEqualToPose___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  [a3 floatValue];
  v9 = v8;
  v10 = [*(*(a1 + 32) + 24) objectForKeyedSubscript:?];

  [v10 floatValue];
  v12 = v11;

  if (vabds_f32(v9, v12) > 0.000001)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }
}

void __31__AVTAvatarPose_isEqualToPose___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = *(*(a1 + 32) + 24);
  v7 = a3;
  v8 = [v6 objectForKeyedSubscript:?];
  [v8 floatValue];
  v10 = v9;

  [v7 floatValue];
  v12 = v11;

  if (vabds_f32(v10, v12) > 0.000001)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [(AVTAvatarPose *)self isEqualToPose:?];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)poseByMergingPose:(id)pose
{
  poseCopy = pose;
  weights = self->_weights;
  if (weights)
  {
    v6 = [(NSMutableDictionary *)weights mutableCopy];
    [v6 addEntriesFromDictionary:?];
  }

  else
  {
    v6 = [poseCopy[3] copy];
  }

  v10 = *self->_neckPosition;
  if (*(poseCopy + 8) == 1)
  {
    v10 = *(poseCopy + 2);
  }

  v9 = *&self[1].super.isa;
  if (*(poseCopy + 9) == 1)
  {
    v9 = *(poseCopy + 3);
  }

  v7 = [objc_alloc(objc_opt_class()) initWithWeights:v9 neckPosition:v10 neckOrientation:? bakedAnimationBlendFactor:?];

  return v7;
}

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:?];
  allKeys = [(NSMutableDictionary *)self->_weights allKeys];
  v5 = [allKeys sortedArrayUsingSelector:?];

  v13 = MEMORY[0x1E69E9820];
  v6 = v3;
  [v5 enumerateObjectsUsingBlock:?];
  if (self->_hasNeckPosition)
  {
    [(__CFString *)v6 appendFormat:COERCE_FLOAT(*self->_neckPosition), COERCE_FLOAT(HIDWORD(*self->_neckPosition)), COERCE_FLOAT(*&self->_neckPosition[8])];
  }

  if (self->_hasNeckOrientation)
  {
    [(__CFString *)v6 appendFormat:COERCE_FLOAT(*&self[1].super.isa), COERCE_FLOAT(self[1].super.isa >> 32), COERCE_FLOAT(*&self[1]._hasNeckPosition), COERCE_FLOAT(HIDWORD(*&self[1].super.isa)), v13, 3221225472, __28__AVTAvatarPose_description__block_invoke, &unk_1E7F49FD8];
  }

  if (self->_bakedAnimationBlendFactor > 0.0)
  {
    [(__CFString *)v6 appendFormat:*&self->_bakedAnimationBlendFactor];
  }

  v7 = MEMORY[0x1E696AEC0];
  v8 = objc_opt_class();
  v9 = [(__CFString *)v6 length];
  v10 = @" | empty pose";
  if (v9)
  {
    v10 = v6;
  }

  v11 = [v7 stringWithFormat:v8, self, v10];

  return v11;
}

void __28__AVTAvatarPose_description__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 24);
  v4 = a2;
  v5 = [v3 objectForKeyedSubscript:?];
  [v2 appendFormat:v4, v5];
}

- (id)hashString
{
  if ([(AVTAvatarPose *)self isNeutralPose])
  {
    v3 = @"neutral";
  }

  else if ([(AVTAvatarPose *)self isFriendlyPose])
  {
    v3 = @"friendly";
  }

  else
  {
    v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:?];
    for (i = 0; i != 52; ++i)
    {
      v5 = AVTBlendShapeLocationFromARIndex(i);
      v6 = [(NSMutableDictionary *)self->_weights objectForKeyedSubscript:?];
      [v6 floatValue];
      v8 = v7;

      if (v8 > 0.0)
      {
        if ([(__CFString *)v3 length])
        {
          v9 = 59;
        }

        else
        {
          v9 = 0;
        }

        [(__CFString *)v3 appendFormat:v9, i, v8];
      }
    }

    v10 = [(NSMutableDictionary *)self->_weights objectForKeyedSubscript:?];
    [v10 floatValue];
    v12 = v11;

    if (v12 > 0.0)
    {
      v13 = [(__CFString *)v3 length];
      v14 = 59;
      if (!v13)
      {
        v14 = 0;
      }

      [(__CFString *)v3 appendFormat:v14, @"Emoji", v12];
    }

    if (self->_hasNeckPosition)
    {
      [(__CFString *)v3 appendFormat:32 * ([(__CFString *)v3 length]!= 0), COERCE_FLOAT(*self->_neckPosition), COERCE_FLOAT(HIDWORD(*self->_neckPosition)), COERCE_FLOAT(*&self->_neckPosition[8])];
    }

    if (self->_hasNeckOrientation)
    {
      [(__CFString *)v3 appendFormat:32 * ([(__CFString *)v3 length]!= 0), COERCE_FLOAT(*&self[1].super.isa), COERCE_FLOAT(self[1].super.isa >> 32), COERCE_FLOAT(*&self[1]._hasNeckPosition), COERCE_FLOAT(HIDWORD(*&self[1].super.isa))];
    }

    if (self->_bakedAnimationBlendFactor > 0.0)
    {
      [(__CFString *)v3 appendFormat:32 * ([(__CFString *)v3 length]!= 0), *&self->_bakedAnimationBlendFactor];
    }
  }

  return v3;
}

+ (id)posesForAnimojiNamed:(id)named inPosePack:(id)pack
{
  namedCopy = named;
  v5 = namedCopy;
  v6 = [self posesInPosePack:? avatarSelectionBlock:?];

  return v6;
}

id __49__AVTAvatarPose_posesForAnimojiNamed_inPosePack___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 objectForKeyedSubscript:?];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [v2 objectForKeyedSubscript:?];
  }

  v6 = v5;

  return v6;
}

+ (id)posesInPosePack:(id)pack avatarSelectionBlock:(id)block
{
  packCopy = pack;
  blockCopy = block;
  v7 = [packCopy isEqualToString:?];
  if (v7 && (+[AVTResourceLocator sharedResourceLocator], v8 = objc_claimAutoreleasedReturnValue(), [AVTResourceLocator pathForPoseResource:v8 ofType:? isDirectory:?], v9 = objc_claimAutoreleasedReturnValue(), v8, v9))
  {
    v20 = [objc_alloc(MEMORY[0x1E695DF20]) initWithContentsOfFile:?];
    v10 = blockCopy[2](blockCopy);
    v11 = objc_alloc(MEMORY[0x1E695DF70]);
    [v10 count];
    v12 = [v11 initWithCapacity:?];
    v13 = v10;
    v14 = [v13 countByEnumeratingWithState:? objects:? count:?];
    if (v14)
    {
      v15 = v14;
      v16 = MEMORY[0];
      do
      {
        for (i = 0; i != v15; i = (i + 1))
        {
          if (MEMORY[0] != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [[AVTAvatarPose alloc] initWithDictionaryRepresentation:?];
          [v12 addObject:?];
        }

        v15 = [v13 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v15);
    }
  }

  else
  {
    v9 = avt_default_log(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(AVTAvatarBodyPose *)packCopy posesInPosePack:v9];
    }

    v12 = MEMORY[0x1E695E0F0];
  }

  return v12;
}

@end