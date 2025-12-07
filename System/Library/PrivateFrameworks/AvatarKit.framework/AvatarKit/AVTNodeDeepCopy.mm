@interface AVTNodeDeepCopy
@end

@implementation AVTNodeDeepCopy

void ___AVTNodeDeepCopy_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 animationKeys];
  if ([v4 count])
  {
    v21 = a1;
    v5 = [*(a1 + 32) objectForKey:?];
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:? objects:? count:?];
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

          v11 = [v3 animationPlayerForKey:?];
          v12 = [v11 copy];
          [v5 addAnimationPlayer:? forKey:?];
        }

        v8 = [v6 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v8);
    }

    a1 = v21;
  }

  v13 = [v3 actionKeys];
  if ([v13 count])
  {
    v14 = [*(a1 + 32) objectForKey:?];
    v15 = v13;
    v16 = [v15 countByEnumeratingWithState:? objects:? count:?];
    if (v16)
    {
      v17 = v16;
      v18 = MEMORY[0];
      do
      {
        for (j = 0; j != v17; j = (j + 1))
        {
          if (MEMORY[0] != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = [v3 actionForKey:?];
          [v14 runAction:? forKey:?];
        }

        v17 = [v15 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v17);
    }
  }
}

void ___AVTNodeDeepCopy_block_invoke_0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 animationKeys];
  if ([v4 count])
  {
    v5 = [*(a1 + 32) objectForKey:?];
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:0 objects:? count:?];
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

          v11 = [v3 animationPlayerForKey:?];
          v12 = [v11 copy];
          [v5 addAnimationPlayer:? forKey:?];
        }

        v8 = [v6 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v8);
    }
  }
}

@end