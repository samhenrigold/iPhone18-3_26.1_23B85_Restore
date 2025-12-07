@interface AVTAvatarPhysicalizedPose
- (AVTAvatarPhysicalizedPose)initWithPose:(id)pose physicsStates:(id)states;
- (AVTAvatarPhysicalizedPose)initWithPoseRepresentation:(id)representation physicsStatesRepresentation:(id)statesRepresentation;
- (AVTAvatarPhysicalizedPose)initWithSceneKitSceneAtURL:(id)l;
- (void)applyWithTransitionToAvatar:(id)avatar duration:(double)duration completionHandler:(id)handler;
@end

@implementation AVTAvatarPhysicalizedPose

- (AVTAvatarPhysicalizedPose)initWithSceneKitSceneAtURL:(id)l
{
  lCopy = l;
  v14.receiver = self;
  v14.super_class = AVTAvatarPhysicalizedPose;
  v5 = [(AVTAvatarPhysicalizedPose *)&v14 init];
  if (v5)
  {
    v13 = 0;
    v6 = [MEMORY[0x1E697A8C8] avt_newSceneWithURL:? options:? error:?];
    v7 = v13;
    v8 = [v6 avt_fixQuirksOfNewUSDSchemaWithOptions:? handler:?];
    if (v7)
    {
      v9 = avt_default_log(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [(AVTAvatarPoseAnimation *)lCopy initWithSceneKitSceneAtURL:v7 usdaMetadata:v9];
      }
    }

    v10 = [[AVTAvatarPose alloc] initWithScene:?];
    pose = v5->_pose;
    v5->_pose = v10;
  }

  return v5;
}

- (AVTAvatarPhysicalizedPose)initWithPose:(id)pose physicsStates:(id)states
{
  poseCopy = pose;
  statesCopy = states;
  v12.receiver = self;
  v12.super_class = AVTAvatarPhysicalizedPose;
  v9 = [(AVTAvatarPhysicalizedPose *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_pose, pose);
    objc_storeStrong(&v10->_physicsStates, states);
  }

  return v10;
}

- (AVTAvatarPhysicalizedPose)initWithPoseRepresentation:(id)representation physicsStatesRepresentation:(id)statesRepresentation
{
  representationCopy = representation;
  statesRepresentationCopy = statesRepresentation;
  v22.receiver = self;
  v22.super_class = AVTAvatarPhysicalizedPose;
  v8 = [(AVTAvatarPhysicalizedPose *)&v22 init];
  if (v8)
  {
    if (representationCopy)
    {
      v9 = [[AVTAvatarPose alloc] initWithDictionaryRepresentation:?];
      pose = v8->_pose;
      v8->_pose = v9;
    }

    if (statesRepresentationCopy)
    {
      v11 = objc_alloc(MEMORY[0x1E695DF90]);
      [statesRepresentationCopy count];
      v12 = [v11 initWithCapacity:?];
      v17 = MEMORY[0x1E69E9820];
      v18 = 3221225472;
      v19 = __84__AVTAvatarPhysicalizedPose_initWithPoseRepresentation_physicsStatesRepresentation___block_invoke;
      v20 = &unk_1E7F487E0;
      v13 = v12;
      v21 = v13;
      [statesRepresentationCopy enumerateKeysAndObjectsUsingBlock:?];
      physicsStates = v8->_physicsStates;
      v8->_physicsStates = v13;
      v15 = v13;
    }
  }

  return v8;
}

void __84__AVTAvatarPhysicalizedPose_initWithPoseRepresentation_physicsStatesRepresentation___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [[AVTAvatarPhysicsState alloc] initWithDictionaryRepresentation:?];

  [*(a1 + 32) setObject:? forKeyedSubscript:?];
}

- (void)applyWithTransitionToAvatar:(id)avatar duration:(double)duration completionHandler:(id)handler
{
  handlerCopy = handler;
  avatarCopy = avatar;
  v9 = avatarCopy;
  if (duration <= 0.0)
  {
    [avatarCopy setPose:?];
    physicsStates = self->_physicsStates;
    stickerPhysicsStateIdentifier = [v9 stickerPhysicsStateIdentifier];
    v12 = [(NSDictionary *)physicsStates objectForKeyedSubscript:?];

    [v9 resetToPhysicsState:? assumeRestStateIfNil:?];
    if (handlerCopy)
    {
      handlerCopy[2]();
    }

    v9 = v12;
  }

  else
  {
    [avatarCopy transitionFromPose:? toPose:? duration:? delay:? completionHandler:?];
  }
}

@end