@interface AVTAvatarPoseAnimationController
- (AVTAvatarPoseAnimationController)initWithAvatar:(id)avatar animationKeys:(id)keys;
- (void)removeAnimationWithBlendOutDuration:(double)duration;
@end

@implementation AVTAvatarPoseAnimationController

- (AVTAvatarPoseAnimationController)initWithAvatar:(id)avatar animationKeys:(id)keys
{
  avatarCopy = avatar;
  keysCopy = keys;
  v11.receiver = self;
  v11.super_class = AVTAvatarPoseAnimationController;
  v8 = [(AVTAvatarPoseAnimationController *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_avatar, avatarCopy);
    objc_storeStrong(&v9->_animationKeys, keys);
  }

  return v9;
}

- (void)removeAnimationWithBlendOutDuration:(double)duration
{
  WeakRetained = objc_loadWeakRetained(&self->_avatar);
  avatarNode = [WeakRetained avatarNode];

  v6 = self->_animationKeys;
  v7 = [NSArray countByEnumeratingWithState:v6 objects:"countByEnumeratingWithState:objects:count:" count:0];
  if (v7)
  {
    v8 = v7;
    v9 = MEMORY[0];
    do
    {
      for (i = 0; i != v8; i = (i + 1))
      {
        if (MEMORY[0] != v9)
        {
          objc_enumerationMutation(v6);
        }

        [avatarNode removeAnimationForKey:? blendOutDuration:?];
      }

      v8 = [NSArray countByEnumeratingWithState:v6 objects:"countByEnumeratingWithState:objects:count:" count:?];
    }

    while (v8);
  }
}

@end