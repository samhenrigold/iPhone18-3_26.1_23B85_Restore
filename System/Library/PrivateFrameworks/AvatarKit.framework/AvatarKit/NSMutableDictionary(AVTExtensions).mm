@interface NSMutableDictionary(AVTExtensions)
- (void)avt_applyPoseRoundingBehaviour;
@end

@implementation NSMutableDictionary(AVTExtensions)

- (void)avt_applyPoseRoundingBehaviour
{
  v9 = _AVTPoseRoundingBehaviour(self);
  allKeys = [self allKeys];
  v3 = [allKeys countByEnumeratingWithState:? objects:? count:?];
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
          objc_enumerationMutation(allKeys);
        }

        v7 = [self objectForKeyedSubscript:?];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = [v7 avt_numberByRoundingWithBehavior:?];
          [self setObject:? forKeyedSubscript:?];
        }

        else if (objc_opt_respondsToSelector())
        {
          [v7 avt_applyPoseRoundingBehaviour];
        }
      }

      v4 = [allKeys countByEnumeratingWithState:? objects:? count:?];
    }

    while (v4);
  }
}

@end