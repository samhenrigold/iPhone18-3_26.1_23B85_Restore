@interface SBSystemActionElementPreviewingCoordinator
- (void)_updateAnimationAndPriorityAssertions;
- (void)elementInvalidatedProperties;
- (void)initWithElement:(void *)element;
@end

@implementation SBSystemActionElementPreviewingCoordinator

- (void)_updateAnimationAndPriorityAssertions
{
  v68 = *MEMORY[0x277D85DE8];
  if (self)
  {
    WeakRetained = objc_loadWeakRetained((self + 40));
    platformElementHost = [WeakRetained platformElementHost];
    layoutMode = [WeakRetained layoutMode];
    isValid = [*(self + 24) isValid];
    isExpanding = [WeakRetained isExpanding];
    if (isExpanding && layoutMode >= 1)
    {
      if (layoutMode > 2)
      {
        v7 = 1;
      }

      else
      {
        v7 = 2;
      }

      if (!isValid || *(self + 32) != v7)
      {
        v8 = SBLogSystemActionPreviewing(isExpanding);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          v38 = SBStringFromSBSADynamicPersistentAnimation(*(self + 32));
          v39 = SBStringFromSBSADynamicPersistentAnimation(v7);
          OUTLINED_FUNCTION_1_16();
          v64 = 2112;
          v65 = v38;
          v66 = 2112;
          v67 = v40;
          _os_log_debug_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEBUG, "(%@) Updating expansion animation style from %@ to %@", v63, 0x20u);
        }

        [*(self + 24) invalidateWithReason:@"Changing animation style"];
        v9 = [platformElementHost elementRequestsPersistentAnimationOfType:v7];
        v10 = *(self + 24);
        *(self + 24) = v9;

        *(self + 32) = v7;
      }
    }

    else if (isValid)
    {
      v11 = SBLogSystemActionPreviewing(isExpanding);
      if (OUTLINED_FUNCTION_2_22(v11))
      {
        v41 = SBStringFromSBSADynamicPersistentAnimation(*(self + 32));
        OUTLINED_FUNCTION_1_16();
        v64 = 2112;
        v65 = v42;
        OUTLINED_FUNCTION_0_32();
        _os_log_debug_impl(v43, v44, v45, v46, v47, 0x16u);
      }

      [*(self + 24) invalidateWithReason:@"Stopped expanding"];
      v12 = *(self + 24);
      *(self + 24) = 0;

      *(self + 32) = 0;
    }

    isUrgent = [WeakRetained isUrgent];
    urgentAndImportantAssertion = [platformElementHost urgentAndImportantAssertion];

    if (!isUrgent || urgentAndImportantAssertion)
    {
      if (urgentAndImportantAssertion)
      {
        v19 = isUrgent;
      }

      else
      {
        v19 = 1;
      }

      if (v19)
      {
LABEL_29:
        if (SAHasActivityBehavior())
        {
          isPreviewing = [WeakRetained isPreviewing];
          v22 = *(self + 16);
          if (!isPreviewing || v22)
          {
            if (v22)
            {
              v31 = isPreviewing;
            }

            else
            {
              v31 = 1;
            }

            if (v31)
            {
              goto LABEL_47;
            }

            v32 = SBLogSystemActionPreviewing(isPreviewing);
            if (OUTLINED_FUNCTION_2_22(v32))
            {
              OUTLINED_FUNCTION_1_16();
              OUTLINED_FUNCTION_0_32();
              _os_log_debug_impl(v58, v59, v60, v61, v62, 0xCu);
            }

            [*(self + 16) invalidateWithReason:@"Stopped previewing"];
            activityHost = *(self + 16);
            *(self + 16) = 0;
          }

          else
          {
            v23 = SBLogSystemActionPreviewing(isPreviewing);
            if (OUTLINED_FUNCTION_2_22(v23))
            {
              OUTLINED_FUNCTION_1_16();
              OUTLINED_FUNCTION_0_32();
              _os_log_debug_impl(v53, v54, v55, v56, v57, 0xCu);
            }

            activityHost = [WeakRetained activityHost];
            if (objc_opt_respondsToSelector())
            {
              layoutMode2 = [WeakRetained layoutMode];
              if (layoutMode2 <= 2)
              {
                v26 = 2;
              }

              else
              {
                v26 = layoutMode2;
              }

              v27 = [activityHost systemManagedAlertingActivityAssertionWithReason:@"Previewing" preferredLayoutMode:v26];
              v28 = objc_opt_class();
              v29 = NSStringFromClass(v28);
              [v27 setAutomaticallyInvalidatable:0 lockingWithKey:v29 reason:@"Previewing"];

              v30 = *(self + 16);
              *(self + 16) = v27;
            }
          }
        }

LABEL_47:

        return;
      }

      v20 = SBLogSystemActionPreviewing(v15);
      if (OUTLINED_FUNCTION_2_22(v20))
      {
        OUTLINED_FUNCTION_1_16();
        OUTLINED_FUNCTION_0_32();
        _os_log_debug_impl(v48, v49, v50, v51, v52, 0xCu);
      }

      [*(self + 8) invalidateWithReason:@"Not urgent"];
      v18 = *(self + 8);
      *(self + 8) = 0;
    }

    else
    {
      v16 = SBLogSystemActionPreviewing(v15);
      if (OUTLINED_FUNCTION_2_22(v16))
      {
        OUTLINED_FUNCTION_1_16();
        OUTLINED_FUNCTION_0_32();
        _os_log_debug_impl(v33, v34, v35, v36, v37, 0xCu);
      }

      v17 = [platformElementHost requestUrgentAndImportantPriorityWithReason:@"Urgent"];
      v18 = *(self + 8);
      *(self + 8) = v17;
    }

    goto LABEL_29;
  }
}

- (void)elementInvalidatedProperties
{
  if (self)
  {
    [(SBSystemActionElementPreviewingCoordinator *)self _updateAnimationAndPriorityAssertions];
  }
}

- (void)initWithElement:(void *)element
{
  v3 = a2;
  v4 = v3;
  if (element)
  {
    if (!v3)
    {
      [(SBSystemActionElementPreviewingCoordinator *)sel_initWithElement_ initWithElement:element];
    }

    v7.receiver = element;
    v7.super_class = SBSystemActionElementPreviewingCoordinator;
    v5 = objc_msgSendSuper2(&v7, sel_init);
    element = v5;
    if (v5)
    {
      objc_storeWeak(v5 + 5, v4);
      element[4] = 0;
    }
  }

  return element;
}

- (void)initWithElement:(const char *)a1 .cold.1(const char *a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"element != ((void *)0)"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    v13 = a2;
    v14 = 2114;
    v15 = @"SBSystemActionElementPreviewingCoordinator.m";
    v16 = 1024;
    v17 = 30;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end