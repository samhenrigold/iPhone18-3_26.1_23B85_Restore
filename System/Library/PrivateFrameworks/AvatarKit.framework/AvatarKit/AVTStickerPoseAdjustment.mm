@interface AVTStickerPoseAdjustment
- (id)description;
- (id)poseByApplyingToPose:(id)pose forAvatar:(id)avatar;
@end

@implementation AVTStickerPoseAdjustment

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = AVTPresetCategoryToString(self->_presetCategory);
  v6 = [v3 stringWithFormat:v4, self, v5, self->_presetIdentifier, self->_pose];

  return v6;
}

- (id)poseByApplyingToPose:(id)pose forAvatar:(id)avatar
{
  poseCopy = pose;
  avatarCopy = avatar;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [avatarCopy presetForCategory:?];
    identifier = [v7 identifier];
    v9 = [identifier isEqualToString:?];

    if (v9)
    {
      v10 = [poseCopy poseByMergingPose:?];

      goto LABEL_6;
    }
  }

  v10 = poseCopy;
LABEL_6:

  return v10;
}

@end