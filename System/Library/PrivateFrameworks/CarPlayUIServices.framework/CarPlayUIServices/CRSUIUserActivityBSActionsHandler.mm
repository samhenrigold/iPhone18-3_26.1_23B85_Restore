@interface CRSUIUserActivityBSActionsHandler
- (id)_respondToActions:(id)actions forFBSScene:(id)scene inUIScene:(id)iScene fromTransitionContext:(id)context;
@end

@implementation CRSUIUserActivityBSActionsHandler

- (id)_respondToActions:(id)actions forFBSScene:(id)scene inUIScene:(id)iScene fromTransitionContext:(id)context
{
  v25 = *MEMORY[0x277D85DE8];
  actionsCopy = actions;
  iSceneCopy = iScene;
  v19 = [actionsCopy mutableCopy];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = actionsCopy;
  v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v19 removeObject:v14];
          delegate = [iSceneCopy delegate];
          v16 = objc_opt_respondsToSelector();

          if (v16)
          {
            delegate2 = [iSceneCopy delegate];
            [delegate2 forwardActivityContinuationAction:v14 fromScene:iSceneCopy];
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v11);
  }

  return v19;
}

@end