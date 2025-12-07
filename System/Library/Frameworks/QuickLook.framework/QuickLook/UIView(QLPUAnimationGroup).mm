@interface UIView(QLPUAnimationGroup)
+ (void)_qlpu_animateViews:()QLPUAnimationGroup withAnimationBlock:completionHandler:;
+ (void)qlpu_animateViews:()QLPUAnimationGroup usingDefaultDampedSpringWithDelay:initialSpringVelocity:options:animations:completion:;
+ (void)qlpu_animateViews:()QLPUAnimationGroup usingSpringWithDuration:delay:options:mass:stiffness:damping:initialVelocity:animations:completion:;
+ (void)qlpu_animateViews:()QLPUAnimationGroup withDuration:delay:options:animations:completion:;
+ (void)qlpu_animateViews:()QLPUAnimationGroup withDuration:delay:usingSpringWithDamping:initialSpringVelocity:options:animations:completion:;
- (id)_qlpu_animationDictionary;
@end

@implementation UIView(QLPUAnimationGroup)

+ (void)qlpu_animateViews:()QLPUAnimationGroup withDuration:delay:options:animations:completion:
{
  v14 = a7;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __97__UIView_QLPUAnimationGroup__qlpu_animateViews_withDuration_delay_options_animations_completion___block_invoke;
  v16[3] = &unk_278B58750;
  v18 = a2;
  v19 = a3;
  v20 = a6;
  v17 = v14;
  v15 = v14;
  [self _qlpu_animateViews:a5 withAnimationBlock:v16 completionHandler:a8];
}

+ (void)qlpu_animateViews:()QLPUAnimationGroup withDuration:delay:usingSpringWithDamping:initialSpringVelocity:options:animations:completion:
{
  v18 = a9;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __142__UIView_QLPUAnimationGroup__qlpu_animateViews_withDuration_delay_usingSpringWithDamping_initialSpringVelocity_options_animations_completion___block_invoke;
  v20[3] = &unk_278B58778;
  v22 = a2;
  v23 = a3;
  v24 = a4;
  v25 = a5;
  v26 = a8;
  v21 = v18;
  v19 = v18;
  [self _qlpu_animateViews:a7 withAnimationBlock:v20 completionHandler:a10];
}

+ (void)qlpu_animateViews:()QLPUAnimationGroup usingDefaultDampedSpringWithDelay:initialSpringVelocity:options:animations:completion:
{
  v14 = a7;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __134__UIView_QLPUAnimationGroup__qlpu_animateViews_usingDefaultDampedSpringWithDelay_initialSpringVelocity_options_animations_completion___block_invoke;
  v16[3] = &unk_278B58750;
  v18 = a2;
  v19 = a3;
  v20 = a6;
  v17 = v14;
  v15 = v14;
  [self _qlpu_animateViews:a5 withAnimationBlock:v16 completionHandler:a8];
}

+ (void)qlpu_animateViews:()QLPUAnimationGroup usingSpringWithDuration:delay:options:mass:stiffness:damping:initialVelocity:animations:completion:
{
  v22 = a11;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __147__UIView_QLPUAnimationGroup__qlpu_animateViews_usingSpringWithDuration_delay_options_mass_stiffness_damping_initialVelocity_animations_completion___block_invoke;
  v24[3] = &unk_278B587A0;
  v26 = a2;
  v27 = a3;
  v28 = a10;
  v29 = a4;
  v30 = a5;
  v31 = a6;
  v32 = a7;
  v25 = v22;
  v23 = v22;
  [self _qlpu_animateViews:a9 withAnimationBlock:v24 completionHandler:a12];
}

+ (void)_qlpu_animateViews:()QLPUAnimationGroup withAnimationBlock:completionHandler:
{
  v73 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v39 = a4;
  v38 = a5;
  firstObject = [v7 firstObject];
  layer = [firstObject layer];

  v37 = layer;
  v36 = [[QLPULayerAnimationGroup alloc] initWithReferenceLayer:layer];
  [QLPUAnimationGroup pushAnimationGroup:?];
  strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  obj = v7;
  v44 = [obj countByEnumeratingWithState:&v65 objects:v72 count:16];
  if (v44)
  {
    v42 = *v66;
    do
    {
      for (i = 0; i != v44; ++i)
      {
        if (*v66 != v42)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v65 + 1) + 8 * i);
        layer2 = [v11 layer];
        animationKeys = [layer2 animationKeys];
        if ([animationKeys count])
        {
          v47 = v11;
          v14 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(animationKeys, "count")}];
          v61 = 0u;
          v62 = 0u;
          v63 = 0u;
          v64 = 0u;
          v15 = animationKeys;
          v16 = [v15 countByEnumeratingWithState:&v61 objects:v71 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v62;
            do
            {
              for (j = 0; j != v17; ++j)
              {
                if (*v62 != v18)
                {
                  objc_enumerationMutation(v15);
                }

                v20 = *(*(&v61 + 1) + 8 * j);
                v21 = [layer2 animationForKey:v20];
                if (v21)
                {
                  [v14 setObject:v21 forKeyedSubscript:v20];
                }
              }

              v17 = [v15 countByEnumeratingWithState:&v61 objects:v71 count:16];
            }

            while (v17);
          }

          [strongToStrongObjectsMapTable setObject:v14 forKey:v47];
        }
      }

      v44 = [obj countByEnumeratingWithState:&v65 objects:v72 count:16];
    }

    while (v44);
  }

  if (v38)
  {
    v59[0] = MEMORY[0x277D85DD0];
    v59[1] = 3221225472;
    v59[2] = __86__UIView_QLPUAnimationGroup___qlpu_animateViews_withAnimationBlock_completionHandler___block_invoke;
    v59[3] = &unk_278B583E8;
    v60 = v38;
    [(QLPUAnimationGroup *)v36 setCompletionHandler:v59];
  }

  v57[0] = MEMORY[0x277D85DD0];
  v57[1] = 3221225472;
  v57[2] = __86__UIView_QLPUAnimationGroup___qlpu_animateViews_withAnimationBlock_completionHandler___block_invoke_2;
  v57[3] = &unk_278B571B8;
  v22 = v36;
  v58 = v22;
  v39[2](v39, v57);
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  obja = obj;
  v45 = [obja countByEnumeratingWithState:&v53 objects:v70 count:16];
  if (v45)
  {
    v43 = *v54;
    do
    {
      v23 = 0;
      do
      {
        if (*v54 != v43)
        {
          objc_enumerationMutation(obja);
        }

        v48 = v23;
        v24 = *(*(&v53 + 1) + 8 * v23);
        layer3 = [v24 layer];
        v26 = [strongToStrongObjectsMapTable objectForKey:v24];
        v49 = 0u;
        v50 = 0u;
        v51 = 0u;
        v52 = 0u;
        animationKeys2 = [layer3 animationKeys];
        v28 = [animationKeys2 countByEnumeratingWithState:&v49 objects:v69 count:16];
        if (v28)
        {
          v29 = v28;
          v30 = *v50;
          do
          {
            for (k = 0; k != v29; ++k)
            {
              if (*v50 != v30)
              {
                objc_enumerationMutation(animationKeys2);
              }

              v32 = *(*(&v49 + 1) + 8 * k);
              v33 = [v26 objectForKeyedSubscript:v32];
              v34 = [layer3 animationForKey:v32];
              if (v34 != v33)
              {
                v35 = [[QLPULayerAnimation alloc] initWithLayer:layer3 key:v32];
                [(QLPUAnimationGroup *)v22 addSubAnimationGroup:v35];
              }
            }

            v29 = [animationKeys2 countByEnumeratingWithState:&v49 objects:v69 count:16];
          }

          while (v29);
        }

        v23 = v48 + 1;
      }

      while (v48 + 1 != v45);
      v45 = [obja countByEnumeratingWithState:&v53 objects:v70 count:16];
    }

    while (v45);
  }

  [QLPUAnimationGroup popAnimationGroup:v22];
}

- (id)_qlpu_animationDictionary
{
  v17 = *MEMORY[0x277D85DE8];
  layer = [self layer];
  animationKeys = [layer animationKeys];
  v3 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(animationKeys, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = animationKeys;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [layer animationForKey:{v9, v12}];
        [v3 setObject:v10 forKeyedSubscript:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return v3;
}

@end