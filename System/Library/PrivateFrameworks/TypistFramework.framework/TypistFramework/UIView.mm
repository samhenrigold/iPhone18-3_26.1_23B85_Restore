@interface UIView
@end

@implementation UIView

void __36__UIView_ViewRecursion__allSubViews__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [*(a1 + 32) subviews];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(*(a1 + 40) + 8) + 40);
        v8 = [*(*(&v9 + 1) + 8 * v6) allSubViews];
        [v7 addObjectsFromArray:v8];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

void __44__UIView_ViewRecursion__viewExistsOnScreen___block_invoke(uint64_t a1)
{
  v46 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D75128] sharedApplication];
  v3 = [v2 connectedScenes];
  v4 = [v3 allObjects];

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = v4;
  v29 = [obj countByEnumeratingWithState:&v39 objects:v45 count:16];
  if (v29)
  {
    v28 = *v40;
LABEL_3:
    v5 = 0;
    while (1)
    {
      if (*v40 != v28)
      {
        objc_enumerationMutation(obj);
      }

      v30 = v5;
      v6 = [*(*(&v39 + 1) + 8 * v5) _visibleWindows];
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v35 objects:v44 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v36;
LABEL_8:
        v11 = 0;
        while (1)
        {
          if (*v36 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v35 + 1) + 8 * v11) allSubViews];
          v13 = *(*(a1 + 40) + 8);
          v14 = *(v13 + 40);
          *(v13 + 40) = v12;

          v33 = 0u;
          v34 = 0u;
          v31 = 0u;
          v32 = 0u;
          v15 = *(*(*(a1 + 40) + 8) + 40);
          v16 = [v15 countByEnumeratingWithState:&v31 objects:v43 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v32;
LABEL_13:
            v19 = 0;
            while (1)
            {
              if (*v32 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v20 = *(*(&v31 + 1) + 8 * v19);
              NSClassFromString(*(a1 + 32));
              if (objc_opt_isKindOfClass())
              {
                [v20 frame];
                v47.origin.x = v21;
                v47.origin.y = v22;
                v47.size.width = v23;
                v47.size.height = v24;
                if (CGRectContainsRect(*(a1 + 56), v47))
                {
                  break;
                }
              }

              if (v17 == ++v19)
              {
                v17 = [v15 countByEnumeratingWithState:&v31 objects:v43 count:16];
                if (v17)
                {
                  goto LABEL_13;
                }

                goto LABEL_26;
              }
            }

            if ([v20 isHidden])
            {
              v25 = 0;
            }

            else
            {
              if (([v20 isEnabled] & 1) == 0)
              {
                goto LABEL_26;
              }

              v25 = 1;
            }

            *(*(*(a1 + 48) + 8) + 24) = v25;
          }

LABEL_26:

          if (*(*(*(a1 + 48) + 8) + 24))
          {
            break;
          }

          if (++v11 == v9)
          {
            v9 = [v7 countByEnumeratingWithState:&v35 objects:v44 count:16];
            if (v9)
            {
              goto LABEL_8;
            }

            break;
          }
        }
      }

      v26 = *(*(*(a1 + 48) + 8) + 24);
      if (v26)
      {
        break;
      }

      v5 = v30 + 1;
      if (v30 + 1 == v29)
      {
        v29 = [obj countByEnumeratingWithState:&v39 objects:v45 count:16];
        if (v29)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

@end