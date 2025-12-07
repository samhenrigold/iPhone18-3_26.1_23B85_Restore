@interface UIWindowSceneGeometrySettingsDiffAction
@end

@implementation UIWindowSceneGeometrySettingsDiffAction

uint64_t __121___UIWindowSceneGeometrySettingsDiffAction__updateSceneGeometryWithSettingObserverContext_windowScene_transitionContext___block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48) == 1)
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      if ((![*(a1 + 32) activationState] || objc_msgSend(v4, "activationState") == 1) && (objc_msgSend(*(a1 + 32), "_isPerformingSystemSnapshot") & 1) == 0)
      {
        a2 = +[UIView areAnimationsEnabled]| a2;
      }
    }
  }

  v5 = *(a1 + 32);
  v6 = *(a1 + 40);

  return [v5 _computeMetricsAndCrossFadeInLiveResize:a2 withTransitionContext:v6];
}

void __121___UIWindowSceneGeometrySettingsDiffAction__updateSceneGeometryWithSettingObserverContext_windowScene_transitionContext___block_invoke_26(uint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x1E69E9840];
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("Orientation", &_UILiveResizeQOSAnimation_block_invoke___s_category);
  if (*CategoryCachedImpl)
  {
    v4 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      if (v5)
      {
        v6 = MEMORY[0x1E696AEC0];
        v7 = v5;
        v8 = objc_opt_class();
        v9 = NSStringFromClass(v8);
        v10 = [v6 stringWithFormat:@"<%@: %p>", v9, v7];

        v11 = *(a1 + 32);
      }

      else
      {
        v11 = 0;
        v10 = @"(nil)";
      }

      v12 = v10;
      v13 = v10;
      v14 = [v11 _persistenceIdentifier];
      [*(a1 + 32) _interfaceOrientation];
      v15 = BSInterfaceOrientationDescription();
      v16 = NSStringFromBOOL();
      *buf = 138544130;
      v18 = v12;
      v19 = 2114;
      v20 = v14;
      v21 = 2114;
      v22 = v15;
      v23 = 2114;
      v24 = v16;
      _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_ERROR, "%{public}@ (%{public}@) Scene did change interface orientation: %{public}@; success=%{public}@", buf, 0x2Au);
    }
  }
}

@end