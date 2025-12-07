@interface SXActionViewManager
- (SXActionViewManager)initWithViewControllerPresenting:(id)presenting;
- (void)presentActivityGroup:(id)group action:(id)action sourceView:(id)view sourceRect:(CGRect)rect completion:(id)completion;
@end

@implementation SXActionViewManager

- (SXActionViewManager)initWithViewControllerPresenting:(id)presenting
{
  presentingCopy = presenting;
  v9.receiver = self;
  v9.super_class = SXActionViewManager;
  v6 = [(SXActionViewManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_viewControllerPresenter, presenting);
  }

  return v7;
}

- (void)presentActivityGroup:(id)group action:(id)action sourceView:(id)view sourceRect:(CGRect)rect completion:(id)completion
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v54 = *MEMORY[0x1E69E9840];
  groupCopy = group;
  actionCopy = action;
  viewCopy = view;
  completionCopy = completion;
  if (groupCopy)
  {
    activities = [groupCopy activities];
    if (activities)
    {
      v19 = activities;
      activities2 = [groupCopy activities];
      v21 = [activities2 count];

      if (actionCopy)
      {
        if (v21)
        {
          selfCopy = self;
          v41 = viewCopy;
          v42 = actionCopy;
          v22 = MEMORY[0x1E69DC650];
          title = [groupCopy title];
          v24 = [v22 alertControllerWithTitle:title message:0 preferredStyle:0];

          v51 = 0u;
          v52 = 0u;
          v49 = 0u;
          v50 = 0u;
          obj = [groupCopy activities];
          v25 = [obj countByEnumeratingWithState:&v49 objects:v53 count:16];
          if (v25)
          {
            v26 = v25;
            v27 = *v50;
            do
            {
              for (i = 0; i != v26; ++i)
              {
                if (*v50 != v27)
                {
                  objc_enumerationMutation(obj);
                }

                v29 = *(*(&v49 + 1) + 8 * i);
                v30 = MEMORY[0x1E69DC648];
                label = [v29 label];
                v47[0] = MEMORY[0x1E69E9820];
                v47[1] = 3221225472;
                v47[2] = __84__SXActionViewManager_presentActivityGroup_action_sourceView_sourceRect_completion___block_invoke;
                v47[3] = &unk_1E84FFAB8;
                v32 = completionCopy;
                v47[4] = v29;
                v48 = v32;
                v33 = [v30 actionWithTitle:label style:0 handler:v47];

                [v24 addAction:v33];
              }

              v26 = [obj countByEnumeratingWithState:&v49 objects:v53 count:16];
            }

            while (v26);
          }

          v34 = MEMORY[0x1E69DC648];
          v36 = SXBundle(v35);
          v37 = [v36 localizedStringForKey:@"Cancel" value:&stru_1F532F6C0 table:0];
          v45[0] = MEMORY[0x1E69E9820];
          v45[1] = 3221225472;
          v45[2] = __84__SXActionViewManager_presentActivityGroup_action_sourceView_sourceRect_completion___block_invoke_2;
          v45[3] = &unk_1E84FFAE0;
          v46 = completionCopy;
          v38 = [v34 actionWithTitle:v37 style:1 handler:v45];

          [v24 addAction:v38];
          viewControllerPresenter = [(SXActionViewManager *)selfCopy viewControllerPresenter];
          viewCopy = v41;
          [viewControllerPresenter presentViewController:v24 animated:1 sourceView:v41 sourceRect:{x, y, width, height}];

          actionCopy = v42;
        }
      }
    }
  }
}

uint64_t __84__SXActionViewManager_presentActivityGroup_action_sourceView_sourceRect_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0, *(a1 + 32));
  }

  return result;
}

uint64_t __84__SXActionViewManager_presentActivityGroup_action_sourceView_sourceRect_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1, 0);
  }

  return result;
}

@end