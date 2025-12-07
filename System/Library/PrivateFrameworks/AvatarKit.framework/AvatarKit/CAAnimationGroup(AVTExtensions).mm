@interface CAAnimationGroup(AVTExtensions)
- (id)avt_animationsByUngroupingRecursively;
- (void)avt_animationsByUngroupingRecursively;
@end

@implementation CAAnimationGroup(AVTExtensions)

- (id)avt_animationsByUngroupingRecursively
{
  *(&v13[17] + 4) = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  animations = [self animations];
  v4 = [animations countByEnumeratingWithState:? objects:? count:?];
  if (v4)
  {
    v5 = v4;
    v6 = MEMORY[0];
    do
    {
      v7 = 0;
      do
      {
        if (MEMORY[0] != v6)
        {
          objc_enumerationMutation(animations);
        }

        v8 = *(8 * v7);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          avt_animationsByUngroupingRecursively = [v8 avt_animationsByUngroupingRecursively];
          [array addObjectsFromArray:?];
        }

        else
        {
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          if (isKindOfClass)
          {
            avt_animationsByUngroupingRecursively = [v8 copy];
            [v8 beginTime];
            [avt_animationsByUngroupingRecursively setBeginTime:?];
            [v8 speed];
            [self speed];
            [avt_animationsByUngroupingRecursively setSpeed:?];
            [v8 timeOffset];
            [self beginTime];
            [self speed];
            [self timeOffset];
            [avt_animationsByUngroupingRecursively setTimeOffset:?];
            [array addObject:?];
          }

          else
          {
            avt_animationsByUngroupingRecursively = avt_default_log(isKindOfClass);
            if (os_log_type_enabled(avt_animationsByUngroupingRecursively, OS_LOG_TYPE_ERROR))
            {
              [(CAAnimationGroup(AVTExtensions) *)v12 avt_animationsByUngroupingRecursively:v8];
            }
          }
        }

        v7 = (v7 + 1);
      }

      while (v5 != v7);
      v5 = [animations countByEnumeratingWithState:? objects:? count:?];
    }

    while (v5);
  }

  return array;
}

- (void)avt_animationsByUngroupingRecursively
{
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  *self = 138412290;
  *a3 = v8;
  _os_log_error_impl(&dword_1BB472000, a4, OS_LOG_TYPE_ERROR, "Error: Unreachable code: Unsupported animation class %@", self, 0xCu);
}

@end