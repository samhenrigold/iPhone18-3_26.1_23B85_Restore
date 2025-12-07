@interface UIView(OnBoardingKit)
- (id)wl_progressLabel;
@end

@implementation UIView(OnBoardingKit)

- (id)wl_progressLabel
{
  v51 = *MEMORY[0x277D85DE8];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  subviews = [self subviews];
  v2 = [subviews countByEnumeratingWithState:&v43 objects:v50 count:16];
  if (v2)
  {
    v3 = *v44;
    while (2)
    {
      for (i = 0; i != v2; i = i + 1)
      {
        if (*v44 != v3)
        {
          objc_enumerationMutation(subviews);
        }

        v5 = *(*(&v43 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v2 = v5;
          goto LABEL_11;
        }
      }

      v2 = [subviews countByEnumeratingWithState:&v43 objects:v50 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  subviews2 = [v2 subviews];
  v7 = [subviews2 countByEnumeratingWithState:&v39 objects:v49 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v40;
    while (2)
    {
      for (j = 0; j != v8; ++j)
      {
        if (*v40 != v9)
        {
          objc_enumerationMutation(subviews2);
        }

        v11 = *(*(&v39 + 1) + 8 * j);
        if ([v11 isMemberOfClass:objc_opt_class()])
        {
          v12 = v11;

          v2 = v12;
          goto LABEL_21;
        }
      }

      v8 = [subviews2 countByEnumeratingWithState:&v39 objects:v49 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_21:

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  subviews3 = [v2 subviews];
  v14 = [subviews3 countByEnumeratingWithState:&v35 objects:v48 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v36;
    while (2)
    {
      for (k = 0; k != v15; ++k)
      {
        if (*v36 != v16)
        {
          objc_enumerationMutation(subviews3);
        }

        v18 = *(*(&v35 + 1) + 8 * k);
        v19 = objc_opt_class();
        v20 = NSStringFromClass(v19);
        v21 = [v20 isEqualToString:@"OBContentView"];

        if (v21)
        {
          v22 = v18;

          v2 = v22;
          goto LABEL_31;
        }
      }

      v15 = [subviews3 countByEnumeratingWithState:&v35 objects:v48 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

LABEL_31:

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  subviews4 = [v2 subviews];
  v24 = [subviews4 countByEnumeratingWithState:&v31 objects:v47 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v32;
    while (2)
    {
      for (m = 0; m != v25; ++m)
      {
        if (*v32 != v26)
        {
          objc_enumerationMutation(subviews4);
        }

        v28 = *(*(&v31 + 1) + 8 * m);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v29 = v28;

          v2 = v29;
          goto LABEL_41;
        }
      }

      v25 = [subviews4 countByEnumeratingWithState:&v31 objects:v47 count:16];
      if (v25)
      {
        continue;
      }

      break;
    }
  }

LABEL_41:

  return v2;
}

@end