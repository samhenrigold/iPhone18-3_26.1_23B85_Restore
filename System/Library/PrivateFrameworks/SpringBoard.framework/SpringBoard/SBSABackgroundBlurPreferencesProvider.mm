@interface SBSABackgroundBlurPreferencesProvider
+ (CGRect)frameForVariableBlurUnderContainerViewWithFrame:(CGRect)frame offscreen:(BOOL)offscreen context:(id)context;
- (id)preferencesFromContext:(id)context;
@end

@implementation SBSABackgroundBlurPreferencesProvider

- (id)preferencesFromContext:(id)context
{
  contextCopy = context;
  if (contextCopy)
  {
    v6 = objc_opt_self();
    v7 = contextCopy;
    if (v6)
    {
      if (objc_opt_isKindOfClass())
      {
        v8 = v7;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    if (!v9)
    {
      [(SBSABackgroundBlurPreferencesProvider *)v7 preferencesFromContext:a2, self];
    }
  }

  else
  {
    v9 = 0;
  }

  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__107;
  v37 = __Block_byref_object_dispose__107;
  preferences = [v9 preferences];
  v11 = objc_opt_class();
  v12 = preferences;
  if (v11)
  {
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  v38 = v14;
  v15 = v34[5];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __64__SBSABackgroundBlurPreferencesProvider_preferencesFromContext___block_invoke;
  v29[3] = &unk_2783BA100;
  v32 = a2;
  v29[4] = self;
  v16 = v9;
  v30 = v16;
  v31 = &v33;
  v17 = [v15 copyWithBlock:v29];
  v18 = v34[5];
  v34[5] = v17;

  v19 = [v16 copyByUpdatingPreferences:v34[5]];
  v28.receiver = self;
  v28.super_class = SBSABackgroundBlurPreferencesProvider;
  v20 = [(SBSABasePreferencesProvider *)&v28 preferencesFromContext:v19];
  v21 = objc_opt_class();
  v22 = v20;
  if (v21)
  {
    if (objc_opt_isKindOfClass())
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    v23 = 0;
  }

  v24 = v23;

  v25 = v34[5];
  v34[5] = v24;

  v26 = v34[5];
  _Block_object_dispose(&v33, 8);

  return v26;
}

void __64__SBSABackgroundBlurPreferencesProvider_preferencesFromContext___block_invoke(uint64_t a1, void *a2)
{
  v92 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_opt_self();
    v5 = v3;
    if (v4)
    {
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    if (!v7)
    {
      __64__SBSABackgroundBlurPreferencesProvider_preferencesFromContext___block_invoke_cold_1(a1, v5);
    }
  }

  else
  {
    v7 = 0;
  }

  v79 = v7;
  v8 = v3;

  v9 = [*(a1 + 40) elementContexts];
  v10 = [v9 objectAtIndex:0];

  v11 = [*(*(*(a1 + 48) + 8) + 40) containerViewDescriptions];
  v12 = [v11 firstObject];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = [*(*(*(a1 + 48) + 8) + 40) indicatorContainerViewDescription];
  }

  v15 = v14;

  v16 = [v10 systemApertureCustomLayout];
  v17 = SBSABehavesLikeCustom([v10 layoutMode], v16);
  v18 = [*(a1 + 40) isReduceTransparencyEnabled];
  v19 = (a1 + 32);
  v20 = [objc_opt_class() settings];
  v21 = [v20 backgroundBlurEnabled];

  v81 = a1;
  v22 = [*(a1 + 40) isClearModeEnabled];
  v82 = v15;
  [v15 bounds];
  v27 = 0;
  v77 = v10;
  if (v17)
  {
    v28 = v8;
    if (v16 != 2)
    {
      v27 = (((CGRectGetHeight(*&v23) < 74.0) | v18 | v22) ^ 1) & v21;
    }
  }

  else
  {
    v28 = v8;
  }

  v29 = v82;
  [v82 center];
  SBUnintegralizedRectCenteredAboutPoint();
  v30 = ~v27;
  [objc_opt_class() frameForVariableBlurUnderContainerViewWithFrame:(v27 & 1) == 0 offscreen:*(v81 + 40) context:{v31, v32, v33, v34}];
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v43 = objc_alloc_init(SBSABackgroundBlurDescription);
  v44 = [SBSAInterfaceElementPropertyIdentity alloc];
  v76 = v43;
  v45 = [(SBSABackgroundBlurDescription *)v43 interfaceElementIdentifier];
  obj = [(SBSAInterfaceElementPropertyIdentity *)v44 initWithAssociatedInterfaceElementIdentifier:v45 andProperty:@"blurFrame"];

  v46 = v81;
  v47 = [SBSAInterfaceElementPropertyIdentity alloc];
  v48 = [v82 interfaceElementIdentifier];
  v83 = [(SBSAInterfaceElementPropertyIdentity *)v47 initWithAssociatedInterfaceElementIdentifier:v48 andProperty:@"bounds"];

  v50 = *(v81 + 32);
  v51 = v79;
  v78 = v28;
  if (v30)
  {
    v54 = *(v50 + 32);
    if (v54 == 1)
    {
      if (*(v50 + 40))
      {
        v86 = 0u;
        v87 = 0u;
        v84 = 0u;
        v85 = 0u;
        v55 = [*(v81 + 40) animatedTransitionResults];
        v56 = [v55 countByEnumeratingWithState:&v84 objects:v91 count:16];
        if (v56)
        {
          v57 = v56;
          v58 = *v85;
          v54 = 1;
          do
          {
            for (i = 0; i != v57; ++i)
            {
              if (*v85 != v58)
              {
                objc_enumerationMutation(v55);
              }

              v60 = *(*(&v84 + 1) + 8 * i);
              v61 = [v60 associatedInterfaceElementPropertyIdentity];
              v62 = [v61 isEqual:*(*v19 + 40)];

              if (v62 && [v60 finished])
              {
                v63 = *(*v19 + 40);
                *(*v19 + 40) = 0;

                v54 = 0;
              }
            }

            v57 = [v55 countByEnumeratingWithState:&v84 objects:v91 count:16];
          }

          while (v57);
        }

        else
        {
          v54 = 1;
        }

        v53 = 0;
        v51 = v79;
        v46 = v81;
        v29 = v82;
      }

      else
      {
        v53 = 0;
        v54 = 1;
        v29 = v82;
      }
    }

    else if (v54 == 2)
    {
      objc_storeStrong((v50 + 40), obj);
      v53 = 1;
      v54 = 1;
    }

    else
    {
      v53 = 0;
    }
  }

  else
  {
    v52 = *(v50 + 40);
    *(v50 + 40) = 0;

    v53 = 0;
    v54 = 2;
  }

  if (v54 != *(*v19 + 32))
  {
    v64 = SBLogSystemApertureController(v49);
    if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
    {
      v65 = *(*v19 + 32);
      if (v65 == 1)
      {
        v66 = @"visible-pending-milestone";
      }

      else
      {
        v66 = @"hidden";
      }

      if (v65 == 2)
      {
        v67 = @"visible";
      }

      else
      {
        v67 = v66;
      }

      v68 = v67;
      if (v54 == 1)
      {
        v69 = @"visible-pending-milestone";
      }

      else
      {
        v69 = @"hidden";
      }

      if (v54 == 2)
      {
        v69 = @"visible";
      }

      v46 = v81;
      v29 = v82;
      v70 = v69;
      *buf = 138543618;
      *&buf[4] = v68;
      v89 = 2114;
      v90 = v70;
      _os_log_impl(&dword_21ED4E000, v64, OS_LOG_TYPE_DEFAULT, "Background Blur: Updating background blur visibility: (%{public}@) -> (%{public}@)", buf, 0x16u);
    }

    *(*v19 + 32) = v54;
  }

  v71 = [*(*(*(v46 + 48) + 8) + 40) effectiveAnimatedTransitionDescriptionForProperty:v83];
  if (v71)
  {
    v72 = obj;
    if (v53)
    {
      v73 = [MEMORY[0x277CBEB98] setWithObject:0x28336F620];
    }

    else
    {
      v73 = 0;
    }

    [v51 associateAnimatedTransitionDescriptionOfProperty:v83 withProperty:obj withMilestones:v73];
    goto LABEL_60;
  }

  v72 = obj;
  if (v53)
  {
    __64__SBSABackgroundBlurPreferencesProvider_preferencesFromContext___block_invoke_cold_2(v46, v19, buf);
    v73 = *buf;
LABEL_60:
  }

  v74 = [(SBSABackgroundBlurDescription *)v76 copyBySettingBlurHidden:*(*v19 + 32) == 0];

  v75 = [v74 copyBySettingBlurFrame:{v36, v38, v40, v42}];
  [v51 setBackgroundBlurDescription:v75];
}

+ (CGRect)frameForVariableBlurUnderContainerViewWithFrame:(CGRect)frame offscreen:(BOOL)offscreen context:(id)context
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  contextCopy = context;
  if (offscreen)
  {
    v11 = -360.0;
  }

  else
  {
    v18.origin.x = x;
    v18.origin.y = y;
    v18.size.width = width;
    v18.size.height = height;
    v12 = CGRectGetMaxY(v18) + -40.0;
    if (v12 > 180.0)
    {
      v12 = 180.0;
    }

    v11 = v12 + -180.0;
  }

  [contextCopy systemContainerBounds];
  v13 = CGRectGetWidth(v19);

  v14 = 360.0;
  v15 = 0.0;
  v16 = v11;
  v17 = v13;
  result.size.height = v14;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (void)preferencesFromContext:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSClassFromString(&cfstr_Sbsacontext.isa);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v8 handleFailureInMethod:a2 object:a3 file:@"SBSABackgroundBlurPreferencesProvider.m" lineNumber:39 description:{@"Unexpected class – expected '%@', got '%@'", v5, v7}];
}

void __64__SBSABackgroundBlurPreferencesProvider_preferencesFromContext___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  v3 = *(a1 + 56);
  v4 = *(a1 + 32);
  v5 = NSClassFromString(&cfstr_Sbsapreference_0.isa);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v8 handleFailureInMethod:v3 object:v4 file:@"SBSABackgroundBlurPreferencesProvider.m" lineNumber:43 description:{@"Unexpected class – expected '%@', got '%@'", v5, v7}];
}

uint64_t __64__SBSABackgroundBlurPreferencesProvider_preferencesFromContext___block_invoke_cold_2(uint64_t a1, void *a2, void *a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  *a3 = v6;
  return [v6 handleFailureInMethod:*(a1 + 56) object:*a2 file:@"SBSABackgroundBlurPreferencesProvider.m" lineNumber:105 description:@"Can't add milestone when there's no dismissal animation."];
}

@end