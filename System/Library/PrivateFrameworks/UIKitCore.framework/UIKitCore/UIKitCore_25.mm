void *_UIDescriptionForTraitName(void *a1)
{
  v2 = [a1 rangeOfString:@"_UITraitName" options:8];
  if (v2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return a1;
  }

  return [a1 substringFromIndex:v2 + v3];
}

__CFString *_NSStringFromUIUserInterfaceStyle(uint64_t a1)
{
  v1 = @"Unspecified";
  if (a1 == 2)
  {
    v1 = @"Dark";
  }

  if (a1 == 1)
  {
    return @"Light";
  }

  else
  {
    return v1;
  }
}

void _UIFocusRegionSearchContextSearchForFocusRegionsInEnvironment(void *a1, void *a2, int a3)
{
  v5 = a1;
  v6 = a2;
  v7 = _UIFocusItemSafeCast(v6);
  v8 = [v6 focusItemContainer];
  v9 = _UITVFocusItemAddsChildFocusItemsBeforeSelf(v7);
  v10 = [v5 searchArea];
  v11 = [v5 coordinateSpace];
  if (v9)
  {
    _UIFocusRegionSearchContextAddChildItemsInEnvironmentContainer(v5, v6, v8, a3 & 0xFFFFFF);
  }

  v36 = a3;
  if (v7)
  {
    if ((a3 & 1) != 0 && (_UITVFocusItemAddsChildFocusItemsButNotSelf(v7) & 1) == 0)
    {
      v12 = [v5 searchInfo];
      v13 = [v12 shouldIncludeFocusItem:v7];

      if (v13)
      {
        v14 = _UIFocusItemFrameInCoordinateSpace(v7, v11);
        v16 = v15;
        v18 = v17;
        v20 = v19;
        if ([v10 intersectsRect:?])
        {
          v21 = [_UIFocusItemRegion alloc];
          v22 = [v5 focusSystem];
          v23 = [(_UIFocusItemRegion *)v21 initWithFrame:v11 coordinateSpace:v7 item:v22 focusSystem:v14, v16, v18, v20];

          [v5 addRegion:v23];
        }
      }
    }

    v24 = v5;
    v25 = v7;
    v26 = _UIFocusItemFocusSpeedBumpEdges(v25);
    if (v26)
    {
      v27 = v26;
      [v24 coordinateSpace];
      v35 = v11;
      v29 = v28 = v10;
      v39.origin.x = _UIFocusItemFrameInCoordinateSpace(v25, v29);
      v40 = CGRectInset(v39, -1.0, -1.0);
      v30 = [[_UIFocusSpeedBumpRegion alloc] initWithFrame:v29 coordinateSpace:v27 speedBumpEdges:v40.origin.x, v40.origin.y, v40.size.width, v40.size.height];
      [v24 addRegion:v30];

      v10 = v28;
      v11 = v35;
    }
  }

  else
  {
    v31 = v5;
  }

  if ((v9 & 1) == 0)
  {
    _UIFocusRegionSearchContextAddChildItemsInEnvironmentContainer(v5, v6, v8, v36 & 0xFFFFFF);
  }

  v32 = v5;
  v33 = v7;
  if (v7 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v34 = [v33 _focusItemGuides];
    [v32 addRegionsInContainers:v34];
  }

  v37 = v32;
  if ((_UIFocusItemContainerSupportsInvalidatingFocusCache(v8) & 1) == 0)
  {
    [v37 markContainerAsProvidingDynamicContent];
  }
}

uint64_t _UITVFocusItemAddsChildFocusItemsBeforeSelf(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && _UIFocusItemIsViewOrRespondsToSelector(v1, sel__tvAddsChildFocusItemsBeforeSelf))
  {
    v3 = [v2 _tvAddsChildFocusItemsBeforeSelf];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t _UITVFocusItemAddsChildFocusItemsButNotSelf(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && _UIFocusItemIsViewOrRespondsToSelector(v1, sel__tvAddsChildFocusItemsButNotSelf))
  {
    v3 = [v2 _tvAddsChildFocusItemsButNotSelf];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t _UIViewIsTransparentFocusItem(void *a1)
{
  v1 = a1;
  if (([v1 isHidden] & 1) != 0 || (objc_msgSend(v1, "alpha"), v2 < 0.01))
  {
    v7 = 1;
  }

  else
  {
    v3 = [v1 backgroundColor];
    if (v3)
    {
      v4 = [v1 backgroundColor];
      [v4 alphaComponent];
      v6 = fabs(v5) < 2.22044605e-16;
    }

    else
    {
      v6 = 1;
    }

    v8 = [v1 layer];
    v9 = [v8 contents];

    if (v9)
    {
      v7 = 0;
    }

    else
    {
      v7 = v6;
    }
  }

  return v7;
}

uint64_t _UIFocusItemIsTransparentFocusItem(void *a1)
{
  v1 = a1;
  if (_UIFocusItemIsViewOrRespondsToSelector(v1, sel_isTransparentFocusItem))
  {
    v2 = [v1 isTransparentFocusItem];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t _UIFocusItemFocusSpeedBumpEdges(void *a1)
{
  v1 = a1;
  if (_UIFocusItemIsViewOrRespondsToSelector(v1, sel__focusSpeedBumpEdges))
  {
    v2 = [v1 _focusSpeedBumpEdges];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void _UIFocusRegionSearchContextAddChildItemsInEnvironmentContainer(void *a1, void *a2, void *a3, int a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v49 = v7;
  v10 = v8;
  v11 = [v10 focusItemContainer];
  if (v11)
  {
    v12 = [v49 searchArea];
    v13 = [v12 coordinateSpace];
    v14 = _UIFocusEnvironmentContainerFrameInCoordinateSpace(v10, v13);
    v16 = v15;
    v18 = v17;
    v20 = v19;

    v21 = [v49 searchArea];
    LOBYTE(v13) = [v21 intersectsRect:{v14, v16, v18, v20}];

    if ((v13 & 1) != 0 || _UIFocusItemContainerIsScrollableContainer(v11) && (v27 = *MEMORY[0x1E695EFF8], v28 = *(MEMORY[0x1E695EFF8] + 8), v29 = v11, [v29 contentSize], v31 = v30, v33 = v32, objc_msgSend(v49, "searchArea"), v34 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v34, "coordinateSpace"), v35 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v29, "coordinateSpace"), v36 = objc_claimAutoreleasedReturnValue(), v29, objc_msgSend(v35, "convertRect:fromCoordinateSpace:", v36, v27, v28, v31, v33), v38 = v37, v40 = v39, v42 = v41, v44 = v43, v36, v35, v34, objc_msgSend(v49, "searchArea"), v45 = objc_claimAutoreleasedReturnValue(), LODWORD(v34) = objc_msgSend(v45, "intersectsRect:", v38, v40, v42, v44), v45, v34))
    {
      v22 = _UIFocusItemSafeCast(v10);
      v23 = [v49 searchInfo];
      v24 = [v23 treatFocusableItemAsLeaf];

      if (v24)
      {
        if (_UITVFocusItemAllowsFocusInChildrenWhenFocused(v22))
        {
          IsFocused = _UIFocusItemIsFocused(v22);
          v26 = 1;
          if (!v22 || IsFocused)
          {
            goto LABEL_14;
          }

          goto LABEL_12;
        }

        if (v22)
        {
LABEL_12:
          v46 = [v49 focusSystem];
          v47 = [v49 searchInfo];
          v26 = _UIFocusItemIsFocusableInFocusSystemWithSearchInfo(v22, v46, v47) ^ 1;

LABEL_14:
          goto LABEL_15;
        }
      }

      v26 = 1;
      goto LABEL_14;
    }
  }

  v26 = 0;
LABEL_15:

  if (v9 && v26)
  {
    v48 = [_UIFocusEnvironmentContainerTuple tupleWithOwningEnvironment:v10 itemContainer:v9];
    _UIFocusItemContainerAddChildItemsInContextWithOptions(v48, v49, a4 & 0xFFFFFF);
  }
}

double _UIFocusEnvironmentContainerFrameInCoordinateSpace(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = _UIFocusItemSafeCast(v3);
  v12.origin.x = _UIFocusItemFrameInCoordinateSpace(v5, v4);
  x = v12.origin.x;
  if (CGRectIsNull(v12))
  {
    v7 = [v3 focusItemContainer];
    v8 = [v7 coordinateSpace];
    v9 = v8;
    if (v7 && v8)
    {
      [v8 bounds];
      [v4 convertRect:v9 fromCoordinateSpace:?];
      x = v10;
    }
  }

  return x;
}

uint64_t _UITVFocusItemAllowsFocusInChildrenWhenFocused(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && _UIFocusItemIsViewOrRespondsToSelector(v1, sel__tvAllowsFocusInChildrenWhenFocused))
  {
    v3 = [v2 _tvAllowsFocusInChildrenWhenFocused];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t _UIFocusItemIsFocusableInFocusSystemWithSearchInfo(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (v5)
  {
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL _UIFocusItemIsFocusableInFocusSystemWithSearchInfo(__strong id<UIFocusItem> _Nonnull, UIFocusSystem *__strong _Nonnull, _UIFocusSearchInfo *__strong _Nonnull)"}];
    [v10 handleFailureInFunction:v11 file:@"UIFocusItem.m" lineNumber:102 description:{@"Invalid parameter not satisfying: %@", @"item"}];

    if (v6)
    {
      goto LABEL_3;
    }
  }

  v12 = [MEMORY[0x1E696AAA8] currentHandler];
  v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL _UIFocusItemIsFocusableInFocusSystemWithSearchInfo(__strong id<UIFocusItem> _Nonnull, UIFocusSystem *__strong _Nonnull, _UIFocusSearchInfo *__strong _Nonnull)"}];
  [v12 handleFailureInFunction:v13 file:@"UIFocusItem.m" lineNumber:103 description:{@"Invalid parameter not satisfying: %@", @"focusSystem"}];

LABEL_3:
  v8 = 0;
  if (__UIFocusItemIsFocusedOrFocusableInFocusSystem(v5, v6, 1, 0))
  {
    v8 = [v7 shouldIncludeFocusItem:v5];
  }

  return v8;
}

void _UIFocusItemContainerAddChildItemsInContextWithOptions(void *a1, void *a2, int a3)
{
  v123 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = [v5 owningEnvironment];
  v8 = [v5 itemContainer];
  v107 = [v8 coordinateSpace];
  v9 = [v6 searchArea];
  v10 = [v6 coordinateSpace];
  v11 = _UIFocusEnvironmentContainerFrameInCoordinateSpace(v7, v10);
  v13 = v12;
  v15 = v14;
  v17 = v16;
  [v10 bounds];
  v97 = v11;
  v98 = v13;
  v99 = v15;
  v100 = v17;
  if ((_UIRectSmartIntersectsRect(v18, v19, v20, v21, v11, v13, v15, v17) & 1) == 0 && (a3 & 0x100) != 0 && _UIFocusItemContainerIsLazy(v8))
  {
    v22 = [_UIFocusPromiseRegion alloc];
    v23 = v8;
    if (v23)
    {
      v24 = MEMORY[0x1E696AEC0];
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      v27 = [v24 stringWithFormat:@"<%@: %p>", v26, v23];
    }

    else
    {
      v27 = @"(nil)";
    }

    v89 = [(_UIFocusPromiseRegion *)v22 initWithFrame:v10 coordinateSpace:v27 identifier:v11, v13, v15, v17];
    v112[0] = MEMORY[0x1E69E9820];
    v112[1] = 3221225472;
    v112[2] = ___UIFocusItemContainerAddChildItemsInContextWithOptions_block_invoke;
    v112[3] = &unk_1E7108418;
    v113 = v5;
    [(_UIFocusPromiseRegion *)v89 setContentFulfillmentHandler:v112];
    v106 = v89;
    [v6 addRegion:v89];
    v87 = v113;
    goto LABEL_47;
  }

  v96 = a3;
  v103 = v5;
  v104 = v7;
  v102 = v9;
  [v9 frame];
  v101 = v10;
  [v107 convertRect:v10 fromCoordinateSpace:?];
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v105 = v8;
  v36 = [v8 focusItemsInRect:?];
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  v111 = 0u;
  v37 = [(_UIFocusPromiseRegion *)v36 countByEnumeratingWithState:&v108 objects:v122 count:16];
  v106 = v36;
  if (v37)
  {
    v38 = v37;
    v39 = *v109;
    do
    {
      v40 = 0;
      do
      {
        if (*v109 != v39)
        {
          objc_enumerationMutation(v36);
        }

        v41 = *(*(&v108 + 1) + 8 * v40);
        if (*__UILogGetCategoryCachedImpl("UIFocus", &_MergedGlobals_1088))
        {
          v59 = [v41 parentFocusEnvironment];
          v60 = [v59 focusItemContainer];

          if (v60 != v105)
          {
            v61 = *(__UILogGetCategoryCachedImpl("UIFocus", &qword_1ED49DCC0) + 8);
            if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
            {
              v92 = v61;
              if (v41)
              {
                v62 = MEMORY[0x1E696AEC0];
                v63 = v41;
                v64 = objc_opt_class();
                v65 = NSStringFromClass(v64);
                v66 = [v62 stringWithFormat:@"<%@: %p>", v65, v63];
              }

              else
              {
                v66 = @"(nil)";
              }

              v95 = v66;
              v67 = [v41 parentFocusEnvironment];
              v91 = v67;
              if (v67)
              {
                v68 = v67;
                v69 = MEMORY[0x1E696AEC0];
                v70 = objc_opt_class();
                v71 = NSStringFromClass(v70);
                v72 = [v69 stringWithFormat:@"<%@: %p>", v71, v68];
              }

              else
              {
                v72 = @"(nil)";
              }

              v94 = v72;
              v73 = v105;
              if (v105)
              {
                v74 = MEMORY[0x1E696AEC0];
                v75 = objc_opt_class();
                v76 = NSStringFromClass(v75);
                v77 = [v74 stringWithFormat:@"<%@: %p>", v76, v73];
              }

              else
              {
                v77 = @"(nil)";
              }

              v90 = v77;
              v78 = v104;
              if (v104)
              {
                v79 = MEMORY[0x1E696AEC0];
                v80 = objc_opt_class();
                v81 = NSStringFromClass(v80);
                v93 = [v79 stringWithFormat:@"<%@: %p>", v81, v78];
              }

              else
              {
                v93 = @"(nil)";
              }

              *buf = 138413058;
              v115 = v95;
              v116 = 2112;
              v117 = v94;
              v118 = 2112;
              v119 = v90;
              v120 = 2112;
              v61 = v92;
              v121 = v93;
              _os_log_impl(&dword_188A29000, v92, OS_LOG_TYPE_ERROR, "UIFocusItem: %@ has mismatched parentFocusEnvironment: %@  from focusItemContainer: %@ with owningEnvironment: %@", buf, 0x2Au);
            }
          }
        }

        v42 = [v41 focusItemContainer];
        if (v42)
        {
          v43 = _UIFocusRegionContainerFromEnvironmentAndContainer(v41, v42);
          [v6 addRegionsInContainer:v43];
        }

        else
        {
          v43 = [v6 searchInfo];
          if ([(_UIFocusItemRegion *)v43 shouldIncludeFocusItem:v41])
          {
            [v41 frame];
            v48 = _UIRectSmartIntersectsRect(v44, v45, v46, v47, v29, v31, v33, v35);

            if (!v48)
            {
              goto LABEL_18;
            }

            v49 = [_UIFocusItemRegion alloc];
            [v41 frame];
            v51 = v50;
            v53 = v52;
            v55 = v54;
            v57 = v56;
            v58 = [v6 focusSystem];
            v43 = [(_UIFocusItemRegion *)v49 initWithFrame:v107 coordinateSpace:v41 item:v58 focusSystem:v51, v53, v55, v57];

            v36 = v106;
            [v6 addRegion:v43];
          }
        }

LABEL_18:
        ++v40;
      }

      while (v38 != v40);
      v82 = [(_UIFocusPromiseRegion *)v36 countByEnumeratingWithState:&v108 objects:v122 count:16];
      v38 = v82;
    }

    while (v82);
  }

  v83 = [v6 movementInfo];
  v8 = v105;
  v84 = v105;
  v85 = v83;
  if (_UIFocusItemIsViewOrRespondsToSelector(v84, sel__focusGuideBehaviorForFocusMovement_))
  {
    v86 = [v84 _focusGuideBehaviorForFocusMovement:v85];
  }

  else
  {
    v86 = 0;
  }

  v5 = v103;
  v7 = v104;
  v10 = v101;
  v9 = v102;

  if ((v96 & 0x10000) != 0)
  {
    if (v86 == 2)
    {
      v87 = [[_UIFocusGuideRegion alloc] initWithFrame:v101 coordinateSpace:v97, v98, v99, v100];
      [(_UIFocusGuideRegion *)v87 setOwningEnvironment:v104];
      [v6 addRegion:v87];
      goto LABEL_47;
    }

    if (v86 == 1)
    {
      v87 = [[_UIFocusRegionContainerProxy alloc] initWithEnvironmentContainer:v103];
      [(_UIFocusGuideRegion *)v87 setShouldCreateRegionForOwningItem:0];
      [(_UIFocusGuideRegion *)v87 setShouldCreateRegionForGuideBehavior:0];
      [(_UIFocusGuideRegion *)v87 setAllowsLazyLoading:0];
      v88 = [(_UIFocusGuideRegion *)[_UIFocusContainerGuideRegion alloc] initWithFrame:v101 coordinateSpace:v97, v98, v99, v100];
      [(_UIFocusContainerGuideRegion *)v88 setContentFocusRegionContainer:v87];
      [v6 addRegion:v88];

LABEL_47:
    }
  }
}

uint64_t _UIRectSmartIntersectsRect(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  if (CGRectIsNull(*&a1))
  {
    return 0;
  }

  v33.origin.x = a5;
  v33.origin.y = a6;
  v33.size.width = a7;
  v33.size.height = a8;
  if (CGRectIsNull(v33))
  {
    return 0;
  }

  v34.origin.x = a1;
  v34.origin.y = a2;
  v34.size.width = a3;
  v34.size.height = a4;
  v35 = CGRectStandardize(v34);
  x = v35.origin.x;
  y = v35.origin.y;
  width = v35.size.width;
  height = v35.size.height;
  v35.origin.x = a5;
  v35.origin.y = a6;
  v35.size.width = a7;
  v35.size.height = a8;
  v36 = CGRectStandardize(v35);
  v21 = v36.origin.x;
  v22 = v36.origin.y;
  v23 = v36.size.width;
  v24 = v36.size.height;
  v31 = y;
  v32 = x;
  v36.origin.x = x;
  v36.origin.y = y;
  v36.size.width = width;
  v36.size.height = height;
  v25 = CGRectGetMinX(v36) + 0.0001;
  v37.origin.x = v21;
  v37.origin.y = v22;
  v37.size.width = v23;
  v37.size.height = v24;
  if (v25 <= CGRectGetMaxX(v37))
  {
    v38.origin.y = v31;
    v38.origin.x = x;
    v38.size.width = width;
    v38.size.height = height;
    v27 = CGRectGetMaxX(v38) + -0.0001;
    v39.origin.x = v21;
    v39.origin.y = v22;
    v39.size.width = v23;
    v39.size.height = v24;
    v26 = v27 >= CGRectGetMinX(v39);
  }

  else
  {
    v26 = 0;
  }

  v40.origin.x = x;
  v40.origin.y = v31;
  v40.size.width = width;
  v40.size.height = height;
  v28 = CGRectGetMinY(v40) + 0.0001;
  v41.origin.x = v21;
  v41.origin.y = v22;
  v41.size.width = v23;
  v41.size.height = v24;
  if (v28 <= CGRectGetMaxY(v41))
  {
    v42.origin.x = v32;
    v42.origin.y = v31;
    v42.size.width = width;
    v42.size.height = height;
    v30 = CGRectGetMaxY(v42) + -0.0001;
    v43.origin.x = v21;
    v43.origin.y = v22;
    v43.size.width = v23;
    v43.size.height = v24;
    v29 = v30 >= CGRectGetMinY(v43);
  }

  else
  {
    v29 = 0;
  }

  return v26 & v29;
}

uint64_t _UIFocusItemContainerSupportsInvalidatingFocusCache(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_respondsToSelector())
  {
    v2 = [objc_opt_class() _supportsInvalidatingFocusCache];
  }

  else
  {
    v2 = 1;
  }

  return v2;
}

uint64_t _UITouchesContainsTouchFromExternalTouchpad(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v1 = a1;
  v2 = [v1 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v2)
  {
    v3 = *v13;
    while (2)
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v13 != v3)
        {
          objc_enumerationMutation(v1);
        }

        v5 = *(*(&v12 + 1) + 8 * i);
        if ([v5 type] == 1)
        {
          v6 = [v5 view];
          v7 = [v6 traitCollection];
          if ([v7 userInterfaceIdiom] == 3)
          {

LABEL_13:
            v2 = 1;
            goto LABEL_14;
          }

          v8 = [v5 view];
          v9 = [v8 traitCollection];
          v10 = [v9 userInterfaceIdiom];

          if (v10 == 2)
          {
            goto LABEL_13;
          }
        }
      }

      v2 = [v1 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  return v2;
}

uint64_t _UIShouldAnimateDefaultCellHighlightAndSelection(void *a1)
{
  if ([a1 userInterfaceIdiom] != 6)
  {
    return 0;
  }

  LODWORD(result) = _UIInternalPreferenceUsesDefault(&_UIInternalPreference_EnableCollectionTableCellSelectionAnimations, @"EnableCollectionTableCellSelectionAnimations", _UIInternalPreferenceUpdateBool);
  if (byte_1EA95E224)
  {
    return 1;
  }

  else
  {
    return result;
  }
}

__CFString *_UIApplicationDeactivationReasonDescription(int a1)
{
  if ((a1 + 1) > 0x1F)
  {
    return @"unknown";
  }

  else
  {
    return off_1E711DF10[a1 + 1];
  }
}

uint64_t _UIEventDeferringBehaviorCarPlayShouldAllowFallbackWindowForEnvironment(void *a1, void *a2)
{
  v4 = [MEMORY[0x1E698E398] keyboardFocusEnvironment];
  isEqual = objc_msgSend_isEqual_(a2);

  if (isEqual)
  {
    v6 = [a1 eventDeferringManager];
    v7 = [v6 windowHostingScene];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = [(UIWindowScene *)v8 _keyWindow];

    if (_UIInternalPreferencesRevisionOnce != -1)
    {
      dispatch_once(&_UIInternalPreferencesRevisionOnce, &__block_literal_global_5_11);
    }

    v10 = _UIInternalPreferencesRevisionVar;
    if (_UIInternalPreferencesRevisionVar < 1 || (v14 = _UIInternalPreference_AllowCarPlayScenesToCallMakeKeyWindow, _UIInternalPreferencesRevisionVar == _UIInternalPreference_AllowCarPlayScenesToCallMakeKeyWindow))
    {
      v11 = 1;
    }

    else
    {
      do
      {
        v11 = v10 >= v14;
        if (v10 < v14)
        {
          break;
        }

        _UIInternalPreferenceSync(v10, &_UIInternalPreference_AllowCarPlayScenesToCallMakeKeyWindow, @"AllowCarPlayScenesToCallMakeKeyWindow", _UIInternalPreferenceUpdateBool);
        v14 = _UIInternalPreference_AllowCarPlayScenesToCallMakeKeyWindow;
      }

      while (v10 != _UIInternalPreference_AllowCarPlayScenesToCallMakeKeyWindow);
    }

    if (byte_1EA95E0C4)
    {
      v12 = v11;
    }

    else
    {
      v12 = 1;
    }

    if (v9)
    {
      isEqual = v12;
    }

    else
    {
      isEqual = 1;
    }
  }

  return isEqual;
}

id sub_188DC755C@<X0>(uint64_t a1@<X8>)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v10 = 0;
  v11[0] = 0;
  v8 = 0;
  v9 = 0;
  result = [v1 getRed:v11 green:&v10 blue:&v9 alpha:&v8];
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  if (result)
  {
    v5 = v10;
    v4 = v11[0];
    v7 = v8;
    v6 = v9;
  }

  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = result ^ 1;
  return result;
}

uint64_t sub_188DC7698(uint64_t a1)
{
  sub_188A55598(a1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93B768, &unk_18A6627B8);
  if (swift_dynamicCast())
  {
    sub_188DC7FD0(v7, v10);
    v3 = [objc_allocWithZone(MEMORY[0x1E696ACC8]) initRequiringSecureCoding_];
    v2 = v11;
    __swift_project_boxed_opaque_existential_0(v10, v11);
    sub_18A4A79B8();
    if (v1)
    {
    }

    else
    {
      v6 = [v3 encodedData];
      v2 = sub_18A4A2928();
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v10);
  }

  else
  {
    v8 = 0;
    memset(v7, 0, sizeof(v7));
    sub_188A3F5FC(v7, &qword_1EA93B760, &qword_18A6627B0);
    sub_189095BC0();
    swift_allocError();
    *v4 = 1;
    swift_willThrow();
  }

  return v2;
}

uint64_t UISceneConnectionOptionDefinitionIdentifier.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9393F0, &qword_18A659C10);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v10 - v5;
  v7 = *(v1 + 16);
  v10[1] = *(v1 + 24);
  v10[2] = v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_188DC79D4();
  sub_18A4A89C8();
  v12 = 0;
  v8 = v10[3];
  sub_18A4A85B8();
  if (!v8)
  {
    v11 = 1;
    sub_18A4A85B8();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_188DC79D4()
{
  result = qword_1EA930378;
  if (!qword_1EA930378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA930378);
  }

  return result;
}

uint64_t sub_188DC7A28(uint64_t a1)
{
  sub_188A55598(a1, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93B768, &unk_18A6627B8);
  if (swift_dynamicCast())
  {
    sub_188DC7FD0(v4, v7);
    __swift_project_boxed_opaque_existential_0(v7, v7[3]);
    v1 = sub_18A4A71B8();
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
  }

  else
  {
    v5 = 0;
    memset(v4, 0, sizeof(v4));
    sub_188A3F5FC(v4, &qword_1EA93B760, &qword_18A6627B0);
    sub_189095BC0();
    swift_allocError();
    *v2 = 1;
    swift_willThrow();
  }

  return v1;
}

double sub_188DC7B68(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935D88, &unk_18A64FF50);
  MEMORY[0x1EEE9AC00](v5);
  v6 = OBJC_IVAR____TtC5UIKitP33_255CA08DD239FA8856FF3210D2BF9D939_ValueBox_contents;
  swift_beginAccess();
  sub_188DC7F98(v2 + v6, &v16);
  if (v18)
  {
    sub_188A55538(&v16, v15);
    v7 = (*(ObjectType + 152))(v15);
    v9 = v8;
    v14 = (*(ObjectType + 144))(v15);
    __swift_destroy_boxed_opaque_existential_0Tm(v15);
  }

  else
  {
    v9 = *(&v16 + 1);
    v7 = v16;
    v14 = v17;
  }

  v10 = sub_18A4A2918();
  v11 = sub_18A4A7258();
  [a1 encodeObject:v10 forKey:v11];

  v12 = sub_18A4A7258();
  [a1 encodeInt64:v14 forKey:v12];

  return sub_188DC0F30(v7, v9);
}

uint64_t sub_188DC7FD0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  *(a2 + 48) = *(a1 + 6);
  *(a2 + 16) = v3;
  *(a2 + 32) = v4;
  *a2 = v2;
  return a2;
}

uint64_t sub_188DC7FF0()
{
  if (*v0)
  {
    return 0x4E64656C676E616DLL;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_188DC8038(uint64_t a1)
{
  sub_18A4A7348();

  return sub_18A4A7348();
}

id sub_188DC8150(void *a1)
{
  v3 = sub_18A4A7258();
  v4 = [a1 decodeInt64ForKey_];

  if (v4)
  {
    sub_188A34624(0, &qword_1EA92FE88, 0x1E695DEF0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v6 = sub_18A4A7258();
    v7 = [a1 decodeObjectOfClass:ObjCClassFromMetadata forKey:v6];

    if (v7)
    {
      sub_18A4A7DE8();
      swift_unknownObjectRelease();
    }

    else
    {
      v14 = 0u;
      v15 = 0u;
    }

    v16[0] = v14;
    v16[1] = v15;
    if (!*(&v15 + 1))
    {
      swift_unknownObjectRelease();
      sub_188A3F5FC(v16, &qword_1EA934050, qword_18A64CA10);
      goto LABEL_10;
    }

    if (swift_dynamicCast())
    {
      v8 = &v1[OBJC_IVAR____TtC5UIKitP33_255CA08DD239FA8856FF3210D2BF9D939_ValueBox_contents];
      *v8 = v13[1];
      *(v8 + 2) = v4;
      v8[32] = 0;
      v9 = type metadata accessor for _ValueBox();
      v13[0].receiver = v1;
      v13[0].super_class = v10;
      v11 = [(objc_super *)v13 init];
      swift_unknownObjectRelease();
      return v11;
    }
  }

  swift_unknownObjectRelease();
LABEL_10:
  type metadata accessor for _ValueBox();
  swift_deallocPartialClassInstance();
  return 0;
}

void sub_188DC8360()
{
  v1 = type metadata accessor for _UILatencyLightView();
  v14.receiver = v0;
  v14.super_class = v2;
  objc_msgSendSuper2(&v14, sel_layoutSubviews, v1);
  v3 = *&v0[OBJC_IVAR____TtC5UIKit19_UILatencyLightView_emitterMaskView];
  [v0 bounds];
  [v3 setFrame_];
  v4 = [v3 layer];
  v5 = [v0 layer];
  [v5 cornerRadius];
  v7 = v6;

  [v4 setCornerRadius_];
  v8 = [v3 layer];
  v9 = [v0 layer];
  v10 = [v9 cornerCurve];

  [v8 setCornerCurve_];
  v11 = [v3 layer];
  v12 = [v0 layer];
  v13 = [v12 maskedCorners];

  [v11 setMaskedCorners_];
}

void sub_188DC854C()
{
  v1 = v0;
  v2 = type metadata accessor for _UISoftOutlineView();
  v42.receiver = v0;
  v42.super_class = v3;
  objc_msgSendSuper2(&v42, sel_layoutSubviews, v2);
  v4 = [v0 traitCollection];
  *&v5 = COERCE_DOUBLE(sub_188DC8974());
  v7 = v6;

  if ((v7 & 1) == 0)
  {
    v8 = *&v5;
    v9 = [v1 layer];
    [v9 setCornerRadius_];
  }

  v10 = [v1 traitCollection];
  v11 = sub_188DC8E18();

  if (v11)
  {
    v12 = [v1 layer];
    [v12 setCornerCurve_];
  }

  v13 = [v1 traitCollection];
  sub_188DC9358();
  v15 = v14;
  v17 = v16;

  if ((v17 & 1) == 0)
  {
    v18 = [v1 layer];
    [v18 setMaskedCorners_];
  }

  v19 = *&v1[OBJC_IVAR____TtC5UIKit18_UISoftOutlineView_shapeView];
  [v1 bounds];
  [v19 setFrame_];
  v20 = [v19 layer];
  v21 = [v1 layer];
  [v21 cornerRadius];
  v23 = v22;

  [v20 setCornerRadius_];
  v24 = [v19 layer];
  v25 = [v1 layer];
  v26 = [v25 cornerCurve];

  [v24 setCornerCurve_];
  v27 = [v19 layer];
  v28 = [v1 layer];
  v29 = [v28 maskedCorners];

  [v27 setMaskedCorners_];
  v30 = [v19 maskView];
  if (v30)
  {
    v31 = v30;
    [v19 bounds];
    [v31 setFrame_];
    v32 = [v31 layer];
    v33 = [v1 layer];
    [v33 cornerRadius];
    v35 = v34;

    [v32 setCornerRadius_];
    v36 = [v31 layer];
    v37 = [v1 layer];
    v38 = [v37 cornerCurve];

    [v36 setCornerCurve_];
    v39 = [v31 layer];
    v40 = [v1 layer];
    v41 = [v40 maskedCorners];

    [v39 setMaskedCorners_];
  }

  sub_188DC0394();
}

uint64_t sub_188DC8974()
{
  if (qword_1ED491B40 != -1)
  {
    swift_once();
  }

  if (qword_1ED491AF0 != -1)
  {
    swift_once();
  }

  v1 = off_1ED491B48;
  os_unfair_lock_lock(*(off_1ED491B48 + 2));
  sub_188DC8ADC(&type metadata for _UIVisualEffectCornerRadiusTrait, sub_188FB141C, 0);
  os_unfair_lock_unlock(v1[2]);
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939088, &unk_18A657B60);
  v2 = sub_188A74A44();
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  [v0 _valueForCGFloatTraitToken_];
  v4 = v3;
  swift_unknownObjectRelease();
  if (v4 == 1.79769313e308)
  {
    return 0;
  }

  else
  {
    return *&v4;
  }
}

id sub_188DC8ADC(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  if (qword_1ED491B10 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = off_1ED491B18;
  if (*(off_1ED491B18 + 2) && (v7 = sub_188A78D9C(a1), (v8 & 1) != 0))
  {
    v9 = *(v6[7] + 8 * v7);
    swift_endAccess();
    if (a2)
    {
      v10 = objc_opt_self();
      sub_188A52E38(a2, a3);
      swift_unknownObjectRetain();
      if ([v10 _isPlaceholderTraitToken_])
      {
        v11 = swift_unknownObjectRetain();
        v12 = a2(v11);
        sub_188A55B8C(a2, a3);
        swift_unknownObjectRelease_n();
        return v12;
      }

      else
      {
        sub_188A55B8C(a2, a3);
      }
    }

    else
    {
      swift_unknownObjectRetain();
    }
  }

  else
  {
    swift_endAccess();
    if (a2)
    {

      v9 = a2(0);
      sub_188A55B8C(a2, a3);
    }

    else
    {
      v13 = objc_opt_self();

      v14 = sub_18A4A7258();

      v15 = sub_18A4A7258();

      v9 = [v13 _existingTraitTokenReservingPlaceholderIfNecessaryWithName_identifier_];
    }

    swift_beginAccess();
    swift_unknownObjectRetain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = off_1ED491B18;
    off_1ED491B18 = 0x8000000000000000;
    swift_getObjectType();
    sub_188AC48E8(v9, a1, isUniquelyReferenced_nonNull_native, &v19);
    off_1ED491B18 = v19;
    swift_endAccess();
    if (qword_1ED491B00 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    swift_unknownObjectRetain();
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v19 = off_1ED491B08;
    off_1ED491B08 = 0x8000000000000000;
    sub_188AC4FC4(&type metadata for _UIVisualEffectCornerRadiusTrait, &off_1EE43C5D8, v9, v17);
    swift_unknownObjectRelease();
    off_1ED491B08 = v19;
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  return v9;
}

uint64_t sub_188DC8E18()
{
  if (qword_1ED491B40 != -1)
  {
    swift_once();
  }

  if (qword_1ED491AF0 != -1)
  {
    swift_once();
  }

  v1 = off_1ED491B48;
  os_unfair_lock_lock(*(off_1ED491B48 + 2));
  v2 = sub_188DC901C(&type metadata for _UIVisualEffectCornerCurveTrait, sub_188E19450, 0);
  os_unfair_lock_unlock(v1[2]);
  v3 = [v0 _objectForTraitToken_];
  swift_unknownObjectRelease();
  if (v3)
  {
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  sub_188A3F29C(v8, &v6, &qword_1EA934050, qword_18A64CA10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934050, qword_18A64CA10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA933490, &qword_18A648D90);
  if (swift_dynamicCast())
  {
    sub_188A3F5FC(v8, &qword_1EA934050, qword_18A64CA10);
    return v5;
  }

  else
  {
    sub_188A3F5FC(v8, &qword_1EA934050, qword_18A64CA10);
    return 0;
  }
}

void sub_188DC900C(id a1)
{
  if (a1 != 1)
  {
  }
}

id sub_188DC901C(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  if (qword_1ED491B10 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = off_1ED491B18;
  if (*(off_1ED491B18 + 2) && (v7 = sub_188A78D9C(a1), (v8 & 1) != 0))
  {
    v9 = *(v6[7] + 8 * v7);
    swift_endAccess();
    if (a2)
    {
      v10 = objc_opt_self();
      sub_188A52E38(a2, a3);
      swift_unknownObjectRetain();
      if ([v10 _isPlaceholderTraitToken_])
      {
        v11 = swift_unknownObjectRetain();
        v12 = a2(v11);
        sub_188A55B8C(a2, a3);
        swift_unknownObjectRelease_n();
        return v12;
      }

      else
      {
        sub_188A55B8C(a2, a3);
      }
    }

    else
    {
      swift_unknownObjectRetain();
    }
  }

  else
  {
    swift_endAccess();
    if (a2)
    {

      v9 = a2(0);
      sub_188A55B8C(a2, a3);
    }

    else
    {
      v13 = objc_opt_self();

      v14 = sub_18A4A7258();

      v15 = sub_18A4A7258();

      v9 = [v13 _existingTraitTokenReservingPlaceholderIfNecessaryWithName_identifier_];
    }

    swift_beginAccess();
    swift_unknownObjectRetain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = off_1ED491B18;
    off_1ED491B18 = 0x8000000000000000;
    swift_getObjectType();
    sub_188AC48E8(v9, a1, isUniquelyReferenced_nonNull_native, &v19);
    off_1ED491B18 = v19;
    swift_endAccess();
    if (qword_1ED491B00 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    swift_unknownObjectRetain();
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v19 = off_1ED491B08;
    off_1ED491B08 = 0x8000000000000000;
    sub_188AC4FC4(&type metadata for _UIVisualEffectCornerCurveTrait, &off_1EE43C618, v9, v17);
    swift_unknownObjectRelease();
    off_1ED491B08 = v19;
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  return v9;
}

void sub_188DC9358()
{
  if (qword_1ED491B40 != -1)
  {
    swift_once();
  }

  if (qword_1ED491AF0 != -1)
  {
    swift_once();
  }

  v1 = off_1ED491B48;
  os_unfair_lock_lock(*(off_1ED491B48 + 2));
  sub_188DC94CC(&type metadata for _UIVisualEffectCornerMaskTrait, sub_1891DBA80, 0);
  os_unfair_lock_unlock(v1[2]);
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA934860, &qword_18A65FA90);
  v2 = sub_188A74A44();
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v3 = [v0 _valueForNSIntegerTraitToken_];
  swift_unknownObjectRelease();
  if (v3 != sub_18A4A2388() && (v3 & 0x8000000000000000) != 0)
  {
    __break(1u);

    os_unfair_lock_unlock(v1[2]);
    __break(1u);
  }
}

id sub_188DC94CC(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  if (qword_1ED491B10 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = off_1ED491B18;
  if (*(off_1ED491B18 + 2) && (v7 = sub_188A78D9C(a1), (v8 & 1) != 0))
  {
    v9 = *(v6[7] + 8 * v7);
    swift_endAccess();
    if (a2)
    {
      v10 = objc_opt_self();
      sub_188A52E38(a2, a3);
      swift_unknownObjectRetain();
      if ([v10 _isPlaceholderTraitToken_])
      {
        v11 = swift_unknownObjectRetain();
        v12 = a2(v11);
        sub_188A55B8C(a2, a3);
        swift_unknownObjectRelease_n();
        return v12;
      }

      else
      {
        sub_188A55B8C(a2, a3);
      }
    }

    else
    {
      swift_unknownObjectRetain();
    }
  }

  else
  {
    swift_endAccess();
    if (a2)
    {

      v9 = a2(0);
      sub_188A55B8C(a2, a3);
    }

    else
    {
      v13 = objc_opt_self();

      v14 = sub_18A4A7258();

      v15 = sub_18A4A7258();

      v9 = [v13 _existingTraitTokenReservingPlaceholderIfNecessaryWithName_identifier_];
    }

    swift_beginAccess();
    swift_unknownObjectRetain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = off_1ED491B18;
    off_1ED491B18 = 0x8000000000000000;
    swift_getObjectType();
    sub_188AC48E8(v9, a1, isUniquelyReferenced_nonNull_native, &v19);
    off_1ED491B18 = v19;
    swift_endAccess();
    if (qword_1ED491B00 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    swift_unknownObjectRetain();
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v19 = off_1ED491B08;
    off_1ED491B08 = 0x8000000000000000;
    sub_188AC4FC4(&type metadata for _UIVisualEffectCornerMaskTrait, &off_1EE43C658, v9, v17);
    swift_unknownObjectRelease();
    off_1ED491B08 = v19;
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  return v9;
}

void sub_188DC9850()
{
  v1 = v0;
  v71 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for _UILatencyLightView.EmitterMaskView();
  v70.receiver = v0;
  v70.super_class = v3;
  objc_msgSendSuper2(&v70, sel_layoutSubviews, v2);
  v4 = [v0 traitCollection];
  *&v5 = COERCE_DOUBLE(sub_188DC8974());
  v7 = v6;

  if ((v7 & 1) == 0)
  {
    v8 = *&v5;
    v9 = [v1 layer];
    [v9 setCornerRadius_];
  }

  v10 = [v1 traitCollection];
  v11 = sub_188DC8E18();

  if (v11)
  {
    v12 = [v1 layer];
    [v12 setCornerCurve_];
  }

  v13 = [v1 traitCollection];
  sub_188DC9358();
  v15 = v14;
  v17 = v16;

  if ((v17 & 1) == 0)
  {
    v18 = [v1 layer];
    [v18 setMaskedCorners_];
  }

  v19 = [v1 layer];
  objc_opt_self();
  v20 = swift_dynamicCastObjCClassUnconditional();
  v21 = [v1 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() bounds];
  v23 = v22;
  v25 = v24;

  [v20 setEmitterSize_];
  v26 = [v1 layer];
  objc_opt_self();
  v27 = swift_dynamicCastObjCClassUnconditional();
  v28 = [v1 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() position];
  v30 = v29;
  v32 = v31;

  [v27 setEmitterPosition_];
  [v1 bounds];
  v34 = 1.0 / v33;
  [v1 bounds];
  CGAffineTransformMakeScale(&transform, v34, 1.0 / v35);
  tx = transform.tx;
  ty = transform.ty;
  v67 = *&transform.c;
  v68 = *&transform.a;
  v38 = [v1 layer];
  [v38 bounds];
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;

  v47 = [v1 layer];
  [v47 cornerRadius];
  v49 = v48;

  v50 = [v1 layer];
  v51 = [v50 cornerCurve];

  *&transform.c = v67;
  *&transform.a = v68;
  transform.tx = tx;
  transform.ty = ty;
  if (v49 != 0.0)
  {
    v53 = sub_18A4A7288();
    v55 = v54;
    if (v53 == sub_18A4A7288() && v55 == v56)
    {
    }

    else
    {
      v57 = sub_18A4A86C8();

      if ((v57 & 1) == 0)
      {
LABEL_14:
        v73.origin.x = v40;
        v73.origin.y = v42;
        v73.size.width = v44;
        v73.size.height = v46;
        v52 = CGPathCreateWithRoundedRect(v73, v49, v49, &transform);
        goto LABEL_15;
      }
    }

    v58 = CGPathCreateWithContinuousRoundedRect();
    if (v58)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  v72.origin.x = v40;
  v72.origin.y = v42;
  v72.size.width = v44;
  v72.size.height = v46;
  v52 = CGPathCreateWithRect(v72, &transform);
LABEL_15:
  v58 = v52;
LABEL_16:

  v59 = [v1 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setEmitterPath_];

  v60 = [v1 layer];
  objc_opt_self();
  v61 = swift_dynamicCastObjCClassUnconditional();
  v62 = *&v1[OBJC_IVAR____TtCC5UIKit19_UILatencyLightViewP33_EC16FCD6D726BF32B6086EE652C76F4615EmitterMaskView_duration];
  v63 = v1[OBJC_IVAR____TtCC5UIKit19_UILatencyLightViewP33_EC16FCD6D726BF32B6086EE652C76F4615EmitterMaskView_duration + 8];
  [v1 bounds];
  v66 = v62;
  if (v63)
  {
    v66 = (v64 + v65 + v64 + v65) / v62;
  }

  *&v66 = v66;
  [v61 setEmitterDuration_];
}

void sub_188DCAD08(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 112));
  _Unwind_Resume(a1);
}

void sub_188DCAEE4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

double _UIGetFocusEngineScrollConvergence()
{
  if (_UIInternalPreferencesRevisionOnce != -1)
  {
    dispatch_once(&_UIInternalPreferencesRevisionOnce, &__block_literal_global_5_11);
  }

  v0 = _UIInternalPreferencesRevisionVar;
  result = 0.9934;
  if (_UIInternalPreferencesRevisionVar >= 1)
  {
    v2 = _UIInternalPreference_FocusEngineScrollConvergence;
    if (_UIInternalPreferencesRevisionVar != _UIInternalPreference_FocusEngineScrollConvergence)
    {
      while (v0 >= v2)
      {
        _UIInternalPreferenceSync(v0, &_UIInternalPreference_FocusEngineScrollConvergence, @"FocusEngineScrollConvergence", _UIInternalPreferenceUpdateDouble);
        v2 = _UIInternalPreference_FocusEngineScrollConvergence;
        if (v0 == _UIInternalPreference_FocusEngineScrollConvergence)
        {
          return 0.9934;
        }
      }

      return *&qword_1ED48B0F0;
    }
  }

  return result;
}

void sub_188DCB334(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a1;
  v20[2] = MEMORY[0x1E69E7CD0];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_18A4A7F18();
    sub_188A34624(0, &qword_1ED48FD98, 0x1E698E5F0);
    sub_188D06B5C();
    sub_18A4A77D8();
    v3 = v20[3];
    v4 = v20[4];
    v6 = v20[5];
    v5 = v20[6];
    v7 = v20[7];
  }

  else
  {
    v8 = -1 << *(a1 + 32);
    v4 = (a1 + 56);
    v6 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = (v10 & *(a1 + 56));

    v5 = 0;
  }

  while (v3 < 0)
  {
    if (!sub_18A4A7FB8() || (sub_188A34624(0, &qword_1ED48FD98, 0x1E698E5F0), swift_dynamicCast(), v15 = v20[0], v13 = v5, v14 = v7, !v20[0]))
    {
LABEL_20:
      sub_188E036A4(v3);
      return;
    }

LABEL_17:
    v16 = sub_188DCB5FC(v15, a2, a3);
    if (v16)
    {
      v17 = v16;
      sub_188D071DC(v20, v17);
    }

    else
    {
    }

    v5 = v13;
    v7 = v14;
  }

  v11 = v5;
  v12 = v7;
  v13 = v5;
  if (v7)
  {
LABEL_13:
    v14 = (v12 - 1) & v12;
    v15 = *(*(v3 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v15)
    {
      goto LABEL_20;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v13 = (v11 + 1);
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= ((v6 + 64) >> 6))
    {
      goto LABEL_20;
    }

    v12 = v4[v13];
    ++v11;
    if (v12)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

id sub_188DCB5FC(void *a1, void *a2, uint64_t a3)
{
  v6 = a1;
  v7 = [a1 info];
  if (v7)
  {
    v8 = v7;
    *&aBlock = &type metadata for _UISceneConnectionOptionCoder._MarkerSetting;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935D80, &unk_18A671B20);
    sub_18A4A7308();
    v9 = sub_18A4A7258();

    v10 = MEMORY[0x18CFE4050](v9);

    v11 = [v8 flagForSetting_];
    if (v11 == 1)
    {
      v12 = [v6 info];
      v13 = sub_188DCBAA4(v12);
      v15 = v14;
      v17 = v16;
      v19 = v18;

      if (v3)
      {
        return v6;
      }

      sub_188DCCF0C(v17, v19, v6, a2, v13, v15, &aBlock);
      sub_188DC0F30(v17, v19);
      sub_188A5EBAC(&aBlock, v41);
      v29 = v42;
      v30 = v43;
      __swift_project_boxed_opaque_existential_0(v41, v42);
      v31 = [(_UISceneHostingController *)a3 _fbScene];
      if (!v31)
      {
        v31 = [objc_allocWithZone(_UISceneConnectionOptionDefinitionPayloadStorage) init];
        [(UIBackgroundConfiguration *)a3 _setBackgroundColor:v31];
      }

      v32 = (*(v30 + 8))(v31, v29, v30);

      v33 = swift_allocObject();
      *(v33 + 16) = v32;
      v39 = sub_188DCDDA8;
      v40 = v33;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v37 = sub_188A4A8F0;
      v38 = &block_descriptor_144;
      v34 = _Block_copy(&aBlock);
      swift_unknownObjectRetain();

      [(_UISceneConnectionOptionsContext *)a3 _addCleanupBlock:v34];
      _Block_release(v34);
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_0Tm(v41);
      return 0;
    }
  }

  if ([v6 UIActionType] != 66)
  {
    v27 = v6;
    return v6;
  }

  v20 = [v6 info];
  if (!v20 || (v21 = v20, v22 = [v20 isKeyedSettings], v21, !v22))
  {
    type metadata accessor for UISSceneConnectionValueError(0);
    v6 = v28;
    v41[0] = 0;
    sub_1891D7F1C(MEMORY[0x1E69E7CC0]);
    sub_1891D802C();
    sub_18A4A27A8();
    swift_willThrow();
    return v6;
  }

  result = [v6 info];
  if (result)
  {
    v24 = result;
    v25 = [(_UISceneConnectionOptionsContext *)a3 connectionValues];
    if (v25)
    {
      v26 = v25;
      [v25 mutableCopy];
      sub_18A4A7DE8();
      swift_unknownObjectRelease();
      sub_188A34624(0, &unk_1EA93FC00, 0x1E698E6F0);
      swift_dynamicCast();
      [v41[0] applySettings_];
      [(_UICollectionLayoutItemSolver *)a3 setSolveResult:?];
    }

    else
    {
      [(_UICollectionLayoutItemSolver *)a3 setSolveResult:v24];
    }

    if ([v6 canSendResponse])
    {
      v35 = [objc_opt_self() responseWithInfo_];
      [v6 sendResponse_];
    }

    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_188DCBA6C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188DCBAA4(void *a1)
{
  if (a1)
  {
    v2 = a1;
    v1 = v2;
    sub_188DCBC90(&v16);
    v3 = *(&v16 + 1);
    if (*(&v16 + 1))
    {
      v4 = v16;
      v5 = v17;
      v6 = v18;
      v1 = v2;
      v7 = sub_188DCCB70();
      if (v8 >> 60 != 15)
      {
        v13 = v7;
        v14 = v8;
        if (qword_1EA92F858 != -1)
        {
          swift_once();
        }

        *&v16 = v4;
        *(&v16 + 1) = v3;
        v17 = v5;
        v18 = v6;
        v1 = sub_188DCD968(&v16);

        if (!v1)
        {
          sub_1891BFE98();
          swift_allocError();
          *v15 = 1;
          swift_willThrow();
          sub_188DBF840(v13, v14);
        }

        goto LABEL_8;
      }

      sub_188DBF498(v4, v3, v5, v6);
      sub_1891BFE98();
      swift_allocError();
      v10 = 3;
    }

    else
    {
      sub_1891BFE98();
      swift_allocError();
      v10 = 2;
    }

    *v9 = v10;
    swift_willThrow();
LABEL_8:

    return v1;
  }

  sub_1891BFE98();
  swift_allocError();
  *v11 = 0;
  swift_willThrow();
  return v1;
}

double sub_188DCBC90@<D0>(__int128 *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935D88, &unk_18A64FF50);
  MEMORY[0x1EEE9AC00](v3);
  *&v9 = &type metadata for _UISceneConnectionOptionCoder._DefinitionIDSetting;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93F660, &qword_18A64FF88);
  sub_18A4A7308();
  v4 = sub_18A4A7258();

  v5 = MEMORY[0x18CFE4050](v4);

  if ([v1 objectForSetting_])
  {
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (*(&v10 + 1))
  {
    type metadata accessor for _BoxedCodableValue();
    if (swift_dynamicCast())
    {
      v6 = v8;
      sub_188DCC12C(a1);

      return result;
    }
  }

  else
  {
    sub_188A3F5FC(v11, &qword_1EA934050, qword_18A64CA10);
  }

  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

void sub_188DCC12C(__int128 *a1@<X8>)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93F670, &qword_18A64FF80);
  v7 = OBJC_IVAR____TtC5UIKitP33_255CA08DD239FA8856FF3210D2BF9D939_ValueBox_contents;
  swift_beginAccess();
  sub_188DC7F98(v3 + v7, v22);
  if (v23 == 1)
  {
    sub_188A55538(v22, &v17);
    sub_188A55598(&v17, &v20);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_0Tm(&v17);
      *a1 = v15;
      a1[1] = v16;
    }

    else
    {
      sub_1891BFEEC(0, 1, 0, 0);
      sub_189095BC0();
      swift_allocError();
      *v9 = 0;
      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_0Tm(&v17);
    }
  }

  else
  {
    v8 = v22[0];
    (*(ObjectType + 160))(&v20, *&v22[0], *(&v22[0] + 1), v6, v6);
    if (v2)
    {
      sub_188DC0F30(v8, *(&v8 + 1));
    }

    else
    {
      v18 = v6;
      v10 = swift_allocObject();
      *&v17 = v10;
      v24 = a1;
      v11 = v20;
      v12 = v21;
      sub_188DBF454(v20, *(&v20 + 1), v21, *(&v21 + 1));
      sub_188DC0F30(v8, *(&v8 + 1));
      *(v10 + 16) = v11;
      *(v10 + 32) = v12;
      v19 = 1;
      swift_beginAccess();
      sub_188DCCB38(&v17, v3 + v7);
      swift_endAccess();
      v13 = v21;
      v14 = v24;
      *v24 = v20;
      v14[1] = v13;
    }
  }
}

uint64_t sub_188DCC364()
{
  if (*(v0 + 24))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

void sub_188DCC3C4(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v41 = a5;
  v10 = sub_18A4A7D38();
  v35 = *(v10 - 8);
  v36 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v30 - v11;
  v13 = dynamic_cast_existential_3_conditional(a3, a3, MEMORY[0x1E69E6440], MEMORY[0x1E69E5E78], MEMORY[0x1E69E5EA0]);
  v33 = v16;
  v34 = v15;
  if (!v13)
  {
    goto LABEL_4;
  }

  v17 = v13;
  v18 = v14;
  v19 = objc_allocWithZone(MEMORY[0x1E696ACD0]);
  sub_188DBF7D8(a1, a2);
  v20 = sub_188DCC878(a1, a2);
  sub_188DC0F30(a1, a2);
  if (v5)
  {

LABEL_4:
    sub_189095BC0();
    swift_allocError();
    *v21 = 0;
    swift_willThrow();
    return;
  }

  if (!v20)
  {
    goto LABEL_4;
  }

  v22 = sub_18A4A7D38();
  v31 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v32 = v30 - v23;
  sub_18A4A7A18();
  v30[1] = v30;
  v24 = *(v17 - 8);
  v25 = v32;
  if ((*(v24 + 48))(v32, 1, v17) == 1)
  {

    (*(v31 + 8))(v25, v22);
    v40 = 0;
    v38 = 0u;
    v39 = 0u;
    v37 = 0u;
  }

  else
  {
    *(&v38 + 1) = v17;
    *&v39 = v18;
    *(&v39 + 1) = v34;
    v40 = v33;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v37);
    (*(v24 + 32))(boxed_opaque_existential_0, v25, v17);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B760, &qword_18A6627B0);
  v27 = swift_dynamicCast();
  v28 = *(*(a4 - 8) + 56);
  if ((v27 & 1) == 0)
  {
    v28(v12, 1, 1, a4);
    (*(v35 + 8))(v12, v36);
    goto LABEL_4;
  }

  v29 = *(a4 - 8);
  v28(v12, 0, 1, a4);
  (*(v29 + 32))(v41, v12, a4);
}

uint64_t dynamic_cast_existential_3_conditional(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = swift_conformsToProtocol2();
  if (result)
  {
    result = swift_conformsToProtocol2();
    if (result)
    {
      if (swift_conformsToProtocol2())
      {
        return a1;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

id sub_188DCC878(uint64_t a1, uint64_t a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = sub_18A4A2918();
  v8[0] = 0;
  v4 = [v2 initForReadingFromData:v3 error:v8];

  if (v4)
  {
    v5 = v8[0];
  }

  else
  {
    v6 = v8[0];
    sub_18A4A27D8();

    swift_willThrow();
  }

  return v4;
}

void UISceneConnectionOptionDefinitionIdentifier.init(from:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9393F8, &qword_18A659C18);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_188DC79D4();
  sub_18A4A8998();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  else
  {
    v18 = 0;
    v9 = sub_18A4A8568();
    v11 = v10;
    v16 = v9;
    v17 = 1;
    v12 = sub_18A4A8568();
    v14 = v13;
    (*(v6 + 8))(v8, v5);
    *a2 = v16;
    a2[1] = v11;
    a2[2] = v12;
    a2[3] = v14;

    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }
}

id sub_188DCCB70()
{
  *&v7[0] = &type metadata for _UISceneConnectionOptionCoder._PayloadDataSetting;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93F650, &unk_18A671B00);
  sub_18A4A7308();
  v1 = sub_18A4A7258();

  v2 = MEMORY[0x18CFE4050](v1);

  if ([v0 objectForSetting_])
  {
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  sub_188A3F29C(v7, &v5, &qword_1EA934050, qword_18A64CA10);
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      sub_188A3F5FC(v7, &qword_1EA934050, qword_18A64CA10);
      return v4;
    }
  }

  else
  {
    sub_188A3F5FC(&v5, &qword_1EA934050, qword_18A64CA10);
  }

  sub_188A3F29C(v7, &v5, &qword_1EA934050, qword_18A64CA10);
  if (!*(&v6 + 1))
  {
    sub_188A3F5FC(&v5, &qword_1EA934050, qword_18A64CA10);
    goto LABEL_12;
  }

  sub_188A34624(0, &qword_1EA93B790, 0x1E695DFB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    sub_188A3F5FC(v7, &qword_1EA934050, qword_18A64CA10);
    return 0;
  }

  sub_188A3F5FC(v7, &qword_1EA934050, qword_18A64CA10);

  return 0;
}

unint64_t sub_188DCCD6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_18A4A8888();
  sub_18A4A7348();
  sub_18A4A7348();
  v8 = sub_18A4A88E8();

  return sub_188DCCE0C(a1, a2, a3, a4, v8);
}

unint64_t sub_188DCCE0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5 + 64;
  v7 = -1 << *(v5 + 32);
  v8 = a5 & ~v7;
  if ((*(v5 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v13 = ~v7;
    v14 = *(v5 + 48);
    do
    {
      v15 = (v14 + 32 * v8);
      v16 = v15[2];
      v17 = v15[3];
      v18 = *v15 == a1 && v15[1] == a2;
      if (v18 || (sub_18A4A86C8() & 1) != 0)
      {
        v19 = v16 == a3 && v17 == a4;
        if (v19 || (sub_18A4A86C8() & 1) != 0)
        {
          break;
        }
      }

      v8 = (v8 + 1) & v13;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return v8;
}

void sub_188DCCF0C(uint64_t a1@<X1>, unint64_t a2@<X2>, void *a3@<X3>, void *a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t *a7@<X8>)
{
  v29 = a4;
  v30 = a3;
  v28 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v27 - v16;
  v18 = v31;
  sub_188DCD0B8(a1, a2, &v27 - v16);
  if (!v18)
  {
    (*(v12 + 32))(v14, v17, AssociatedTypeWitness);
    v20 = type metadata accessor for _UISceneConnectionOptionStorageInvocation(0, a5, a6, v19);
    v21 = v28;
    v28[3] = v20;
    v21[4] = &off_1EFAF1B60;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v21);
    v24 = v29;
    v23 = v30;
    sub_188DCD338(v29, v14, v30, a5, a6, boxed_opaque_existential_0);
    v25 = v24;
    v26 = v23;
  }
}

void sub_188DCD0B8(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a5@<X8>)
{
  v19 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_18A4A7D38();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v20 = &v18 - v11;
  v12 = objc_allocWithZone(MEMORY[0x1E696ACD0]);
  sub_188DBF7D8(a1, a2);
  v13 = sub_188DCC878(a1, a2);
  sub_188DC0F30(a1, a2);
  if (!v5)
  {
    v18 = v9;
    v14 = v10;
    swift_getAssociatedConformanceWitness();
    v15 = v20;
    sub_18A4A7A18();

    v16 = *(AssociatedTypeWitness - 8);
    if ((*(v16 + 48))(v15, 1, AssociatedTypeWitness) == 1)
    {
      (*(v14 + 8))(v15, v18);
      sub_1891BFE98();
      swift_allocError();
      *v17 = 3;
      swift_willThrow();
    }

    else
    {

      (*(v16 + 32))(v19, v15, AssociatedTypeWitness);
    }
  }
}

uint64_t sub_188DCD338@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  *a6 = a1;
  v9 = type metadata accessor for _UISceneConnectionOptionStorageInvocation(0, a4, a5, a4);
  v10 = *(v9 + 36);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  result = (*(*(AssociatedTypeWitness - 8) + 32))(&a6[v10], a2, AssociatedTypeWitness);
  *&a6[*(v9 + 40)] = a3;
  return result;
}

id sub_188DCD454(char *a1, uint64_t a2)
{
  v3 = v2;
  v28 = a1;
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = [*(v2 + *(v8 + 48)) info];
  if (!v9 || (v10 = v9, v11 = sub_1891BD0CC(), v13 = v12, v10, !v13))
  {
    v11 = 0;
    v13 = 0;
  }

  v14 = *(a2 + 36);
  v15 = *(a2 + 16);
  v16 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1891FBCD0(v3 + v14, v11, v13, v15, v15, AssociatedTypeWitness, v16);

  v28 = "tionDefinitionRegistry";
  sub_18A4A80E8();

  aBlock = 0xD000000000000024;
  v30 = 0x800000018A6AF310;
  v18 = sub_18A4A8AA8();
  MEMORY[0x18CFE22D0](v18);

  (*(v5 + 16))(&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a2);
  v19 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v15;
  *(v20 + 24) = v16;
  (*(v5 + 32))(v20 + v19, &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  v21 = objc_allocWithZone(MEMORY[0x1E698E778]);
  v22 = sub_18A4A7258();
  v23 = sub_18A4A7258();

  v33 = sub_188DCDDB8;
  v34 = v20;
  aBlock = MEMORY[0x1E69E9820];
  v30 = 1107296256;
  v31 = sub_188BFF280;
  v32 = &block_descriptor_141;
  v24 = _Block_copy(&aBlock);
  v25 = [v21 initWithIdentifier:v22 forReason:v23 invalidationBlock:v24];

  _Block_release(v24);

  return v25;
}

uint64_t sub_188DCD758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (type metadata accessor for _UISceneConnectionOptionStorageInvocation(0, *(v4 + 16), *(v4 + 24), a4) - 8);
  v6 = *(*v5 + 80);
  v7 = (v6 + 32) & ~v6;
  v8 = *(*v5 + 64);

  v9 = v5[11];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v4 + v7 + v9, AssociatedTypeWitness);

  return MEMORY[0x1EEE6BDD0](v4, v7 + v8, v6 | 7);
}

uint64_t sub_188DCD890@<X0>(uint64_t *a3@<X8>)
{
  swift_getMetatypeMetadata();
  v4 = sub_18A4A7308();
  v6 = v5;
  result = sub_18A4A82E8();
  if (v8)
  {
    *a3 = v4;
    a3[1] = v6;
    a3[2] = result;
    a3[3] = v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t UISceneConnectionOptions.prefersAudioReactivity.getter()
{
  v1 = [(_UISceneHostingController *)v0 _fbScene];
  if (v1)
  {
    v2 = v1;
    v3 = sub_18914926C();
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t sub_188DCD968(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  swift_beginAccess();
  v7 = *(v1 + 16);
  if (*(v7 + 16) && (v8 = sub_188DCCD6C(v3, v4, v5, v6), (v9 & 1) != 0))
  {
    v10 = *(*(v7 + 56) + 16 * v8);
  }

  else
  {
    swift_endAccess();
    v11 = sub_18A4A80F8();
    if (v11)
    {
      v12 = v11;
      sub_188A34624(0, &qword_1ED490230, 0x1E69E58C0);
      if (swift_dynamicCastMetatype())
      {
        [swift_getObjCClassFromMetadata() hash];
      }

      v13 = swift_conformsToProtocol2();
      if (v13)
      {
        v10 = v12;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
      v13 = 0;
    }

    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *(v2 + 16);
    *(v2 + 16) = 0x8000000000000000;
    sub_188DE29D8(v10, v13, v3, v4, v5, v6, isUniquelyReferenced_nonNull_native);
    *(v2 + 16) = v16;
  }

  swift_endAccess();
  return v10;
}

BOOL _UIGetShowSceneIdentifiers()
{
  if (_UIInternalPreferencesRevisionOnce != -1)
  {
    dispatch_once(&_UIInternalPreferencesRevisionOnce, &__block_literal_global_5_11);
  }

  v0 = _UIInternalPreferencesRevisionVar;
  if (_UIInternalPreferencesRevisionVar < 1 || (v3 = _UIInternalPreference_ShowSceneIdentifiers, _UIInternalPreferencesRevisionVar == _UIInternalPreference_ShowSceneIdentifiers))
  {
    v1 = 0;
  }

  else
  {
    do
    {
      v1 = v0 < v3;
      if (v0 < v3)
      {
        break;
      }

      _UIInternalPreferenceSync(v0, &_UIInternalPreference_ShowSceneIdentifiers, @"ShowSceneIdentifiers", _UIInternalPreferenceUpdateBool);
      v3 = _UIInternalPreference_ShowSceneIdentifiers;
    }

    while (v0 != _UIInternalPreference_ShowSceneIdentifiers);
  }

  return byte_1ED48B4D4 && v1;
}

void _queue_setCompatibilityRecord(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _eventDeferringCompatibilityQueue();
  dispatch_assert_queue_V2(v6);

  v7 = _queue_compatibilityRecordsForDisplay(a1);
  if (!v7)
  {
    v10 = objc_opt_new();
    v8 = _eventDeferringCompatibilityQueue();
    dispatch_assert_queue_V2(v8);

    v9 = _queue_compatibilityRecords();
    [v9 setObject:v10 forKey:a1];

    v7 = v10;
  }

  v11 = v7;
  [v7 setObject:a3 forKey:a2];
}

void _queue_removeCompatibilityRecord(uint64_t a1, uint64_t a2)
{
  v4 = _eventDeferringCompatibilityQueue();
  dispatch_assert_queue_V2(v4);

  v5 = _queue_compatibilityRecordsForDisplay(a1);
  if (v5)
  {
    v6 = v5;
    [v5 removeObjectForKey:a2];
    v5 = v6;
  }
}

void sub_188DCDDB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for _UISceneConnectionOptionStorageInvocation(0, v6, v7, a4) - 8);
  v9 = (v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80)));

  sub_188DCDE44(a1, v9, v6, v7);
}

void sub_188DCDE44(uint64_t a1, id *a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_18A4A7D38();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v29 - v9;
  v12 = type metadata accessor for ErrorInfo(0, a3, a4, v11);
  v13 = *(v12 - 1);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v29 - v15;
  v17 = *a2;
  v29 = [*a2 scene];
  if (!v29)
  {
    goto LABEL_7;
  }

  swift_getAssociatedTypeWitness();
  v19 = swift_dynamicCastUnknownClass();
  if (!v19)
  {

LABEL_7:
    v24 = type metadata accessor for _UISceneConnectionOptionStorageInvocation(0, a3, a4, v18);
    v25 = *(v24 + 36);
    v26 = *(a2 + *(v24 + 40));
    v30 = 5;
    v27 = *(AssociatedTypeWitness - 8);
    v29 = v12;
    v28 = v27;
    (*(v27 + 16))(v10, a2 + v25, AssociatedTypeWitness);
    (*(v28 + 56))(v10, 0, 1, AssociatedTypeWitness);
    sub_1891BDABC(&v30, v17, v10, a3, a4, v16);
    sub_1891BDBE8(v26, v16, a3, a4);
    (*(v13 + 8))(v16, v29);
    return;
  }

  v21 = v19;
  v22 = type metadata accessor for _UISceneConnectionOptionStorageInvocation(0, a3, a4, v20);
  sub_188DCE10C(*(a2 + *(v22 + 40)), a2 + *(v22 + 36), v21, a3, a4);
  v23 = v29;
}

uint64_t sub_188DCE10C(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  type metadata accessor for ErrorInfo(255, a4, a5, v12);
  swift_getWitnessTable();
  v13 = sub_18A4A8938();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v22 - v16;
  v18 = *(TupleTypeMetadata2 + 48);
  *v17 = a3;
  (*(*(AssociatedTypeWitness - 8) + 16))(&v17[v18], a2, AssociatedTypeWitness, v15);
  swift_storeEnumTagMultiPayload();
  v19 = a3;
  sub_1891BE834(a1, v17, a4, a5, v20);
  return (*(v14 + 8))(v17, v13);
}

__CFString *UIApplicationSceneClientSettingKeyDescription(uint64_t a1)
{
  if ((a1 - 1) > 0x2F)
  {
    return 0;
  }

  else
  {
    return off_1E710A260[a1 - 1];
  }
}

double sub_188DCE620()
{
  v1 = v0;
  v2 = [v0 collectorInteraction];

  v3 = sub_188DCE8AC(MEMORY[0x1E69E7CC0]);
  v4 = qword_1EFAB8CE8;
  sub_188FAACAC();
  sub_1891DBD2C(v4, v5, v25);

  if (v27)
  {
    v6 = 0;
  }

  else
  {
    v6 = v26;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_188DCE988(v6, v4, isUniquelyReferenced_nonNull_native);
  v8 = qword_1EFAB8CF0;
  sub_188FAACAC();
  sub_1891DBD2C(v8, v9, v25);

  if (v27)
  {
    v10 = 0;
  }

  else
  {
    v10 = v26;
  }

  v11 = swift_isUniquelyReferenced_nonNull_native();
  sub_188DCE988(v10, v8, v11);
  v12 = qword_1EFAB8CF8;
  sub_188FAACAC();
  sub_1891DBD2C(v12, v13, v25);

  if (v27)
  {
    v14 = 0;
  }

  else
  {
    v14 = v26;
  }

  v15 = swift_isUniquelyReferenced_nonNull_native();
  sub_188DCE988(v14, v12, v15);
  v16 = qword_1EFAB8D00;
  sub_188FAACAC();
  sub_1891DBD2C(v16, v17, v25);

  if (v27)
  {
    v18 = 0;
  }

  else
  {
    v18 = v26;
  }

  v19 = swift_isUniquelyReferenced_nonNull_native();
  sub_188DCE988(v18, v16, v19);
  v20 = v3;
  v21 = OBJC_IVAR____UIScrollPocketLumaObserverInteraction_lumaValues;
  swift_beginAccess();
  v22 = *&v1[v21];
  *&v1[v21] = v20;
  LOBYTE(v20) = sub_188DCECF8(v22, v20);

  if ((v20 & 1) != 0 || (v23 = [v1 observer]) == 0)
  {
  }

  else
  {
    [v23 _scrollPocketLumaObserverDidUpdate_];

    swift_unknownObjectRelease();
  }

  return result;
}

unint64_t sub_188DCE8AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA938B60, &qword_18A64E980);
    v3 = sub_18A4A8488();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_188A403F4(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_188DCE988(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_188C4585C(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = result;
      sub_188FA3B54();
      result = v17;
      goto LABEL_8;
    }

    sub_188DCEA94(v14, a3 & 1);
    result = sub_188C4585C(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_14:
      result = sub_18A4A87A8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * result) = a1;
  }

  else
  {

    return sub_188A415E8(result, a2, a1, v19);
  }

  return result;
}

void sub_188DCEA94(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA938B60, &qword_18A64E980);
  v6 = sub_18A4A8468();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v4;
    v32 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      v22 = sub_18A4A8878();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v31)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v7;
}

uint64_t sub_188DCECF8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 56) + 8 * v12);
    result = sub_188C4585C(*(*(v3 + 48) + 8 * v12));
    if ((v14 & 1) == 0 || *(*(a2 + 56) + 8 * result) != v13)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_188DCEE34(uint64_t a1)
{
  v3 = OBJC_IVAR____UIScrollPocketLumaObserverInteraction_lumaValues;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (*(v4 + 16) && (v5 = sub_188C4585C(a1), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 8 * v5);
  }

  else
  {
    v7 = 0;
  }

  swift_endAccess();
  return v7;
}

__CFString *_UISceneStringFromActivationBias(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"***undefined***";
  }

  else
  {
    return off_1E7124180[a1];
  }
}

id sub_188DCF608(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC5UIKit28_UILightEffectTransitionView_transitionSubviews;
  v5 = 1;
  swift_beginAccess();
  *&v2[v4] = MEMORY[0x1E69E7CD0];

  [v2 setAlpha_];
  if (a2)
  {
    v5 = v2[OBJC_IVAR____TtC5UIKit28_UILightEffectTransitionView_hidesWhenIdle];
  }

  return [v2 setHidden_];
}

id sub_188DCF74C()
{
  v1 = OBJC_IVAR____TtC5UIKit24_UISharedTextureViewport__connection;
  v2 = *(v0 + OBJC_IVAR____TtC5UIKit24_UISharedTextureViewport__connection);
  if (v2)
  {
    [v2 _invalidate];
  }

  *(v0 + v1) = 0;
  swift_unknownObjectRelease();
  v3 = *(v0 + OBJC_IVAR____TtC5UIKit24_UISharedTextureViewport__portal);

  return [v3 setSourceView_];
}

void sub_188DCF800()
{
  v10.receiver = v0;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, sel_didMoveToWindow);
  v1 = [v0 window];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 windowScene];
    if (v3)
    {
      v4 = v3;
      sub_188DD0118();
      v5 = objc_opt_self();
      v6 = [v5 defaultCenter];
      [v6 addObserver:v0 selector:sel__disconnectPortal name:@"_UIWindowWillMoveToSceneNotification" object:v2];

      v7 = [v5 defaultCenter];
      [v7 addObserver:v0 selector:sel__connectPortal name:@"_UIWindowDidMoveToSceneNotification" object:v2];

      v8 = [v5 defaultCenter];
      [v8 addObserver:v0 selector:sel__disconnectPortal name:@"UISceneDidEnterBackgroundNotification" object:v4];

      v9 = [v5 defaultCenter];
      [v9 addObserver:v0 selector:sel__connectPortal name:@"UISceneWillEnterForegroundNotification" object:v4];

      v2 = v9;
    }
  }
}

void sub_188DCFA28(void *a1)
{
  v3 = OBJC_IVAR____TtC5UIKitP33_DE00D3934C8DD6B37DA91C2A6799985526_UISurfaceLightEffectEntry_surfaces;
  swift_beginAccess();
  if (*(*(v1 + v3) + 16))
  {
    v4 = sub_188DCFBAC(a1);
    [v4 setTag_];
    [a1 bounds];
    [v4 setFrame_];
    [v4 setAutoresizingMask_];
    v5 = *(v1 + OBJC_IVAR____TtC5UIKitP33_DE00D3934C8DD6B37DA91C2A6799985526_UISurfaceLightEffectEntry_configuration + 88);
    if (v5)
    {
      [a1 setCompositingMode_];
      v6 = [a1 layer];
      [v6 setWantsExtendedDynamicRangeContent_];

      v7 = [a1 layer];
      [v7 setAllowsLimitedHeadroom_];

      v8 = [a1 layer];
      [v8 setContentsMaximumDesiredEDR_];
    }

    [a1 addSubview_];
  }
}

char *sub_188DCFBAC(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC5UIKitP33_DE00D3934C8DD6B37DA91C2A6799985526_UISurfaceLightEffectEntry__cachedLightBoxView);
  if (v2)
  {

    return v2;
  }

  else
  {
    v46 = OBJC_IVAR____TtC5UIKitP33_DE00D3934C8DD6B37DA91C2A6799985526_UISurfaceLightEffectEntry__cachedLightBoxView;
    v4 = v1 + OBJC_IVAR____TtC5UIKitP33_DE00D3934C8DD6B37DA91C2A6799985526_UISurfaceLightEffectEntry_configuration;
    v6 = v1 + OBJC_IVAR____TtC5UIKitP33_DE00D3934C8DD6B37DA91C2A6799985526_UISurfaceLightEffectEntry_configuration + 48;
    v5 = *(v1 + OBJC_IVAR____TtC5UIKitP33_DE00D3934C8DD6B37DA91C2A6799985526_UISurfaceLightEffectEntry_configuration);
    [a1 bounds];
    v8 = [v5 _createLightSourceViewWithFrame_];
    [a1 bounds];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    sub_188A3F29C(v4 + 8, v51, &qword_1EA93A978, &qword_18A666DE0);
    sub_188A3F29C(v6, v50, &qword_1EA93A978, &qword_18A666DE0);
    type metadata accessor for _UILightBoxView();
    v18 = objc_allocWithZone(v17);
    *&v18[OBJC_IVAR____TtC5UIKit15_UILightBoxView_lightSourceView] = v8;
    sub_188A3F29C(v51, v49, &qword_1EA93A978, &qword_18A666DE0);
    sub_188A3F29C(v50, v48, &qword_1EA93A978, &qword_18A666DE0);
    v19 = &v18[OBJC_IVAR____TtC5UIKit28_UILightEffectTransitionView_activationTransition];
    *v19 = 0u;
    *(v19 + 16) = 0u;
    *(v19 + 32) = 0;
    v20 = &v18[OBJC_IVAR____TtC5UIKit28_UILightEffectTransitionView_deactivationTransition];
    *v20 = 0u;
    *(v20 + 16) = 0u;
    *(v20 + 32) = 0;
    *&v18[OBJC_IVAR____TtC5UIKit28_UILightEffectTransitionView_visibility] = 1;
    swift_beginAccess();
    v21 = v8;
    sub_188DF1190(v49, v19);
    swift_endAccess();
    swift_beginAccess();
    sub_188DF1190(v48, v20);
    swift_endAccess();
    type metadata accessor for _UILightEffectTransitionController();
    v22 = swift_allocObject();
    v22[3] = 0;
    swift_unknownObjectWeakInit();
    v23 = MEMORY[0x1E69E7CC0];
    v22[5] = sub_188DF0EF8(MEMORY[0x1E69E7CC0]);
    v22[3] = 0;
    swift_unknownObjectWeakAssign();
    v22[4] = 1;
    *&v18[OBJC_IVAR____TtC5UIKit28_UILightEffectTransitionView_transitionController] = v22;
    if (v23 >> 62 && sub_18A4A7F68())
    {
      sub_188FBFE24(MEMORY[0x1E69E7CC0]);
    }

    else
    {
      v24 = MEMORY[0x1E69E7CD0];
    }

    *&v18[OBJC_IVAR____TtC5UIKit28_UILightEffectTransitionView_transitionSubviews] = v24;
    *&v18[OBJC_IVAR____TtC5UIKit28_UILightEffectTransitionView_transitionSubviewOutset] = 0;
    v18[OBJC_IVAR____TtC5UIKit28_UILightEffectTransitionView_hidesWhenIdle] = 0;
    type metadata accessor for _UILightEffectTransitionView();
    v47.receiver = v18;
    v47.super_class = v25;
    v26 = objc_msgSendSuper2(&v47, sel_initWithFrame_, v10, v12, v14, v16);
    *(*&v26[OBJC_IVAR____TtC5UIKit28_UILightEffectTransitionView_transitionController] + 24) = &off_1EFAEB4A8;
    swift_unknownObjectWeakAssign();
    [v26 setHidden_];
    sub_188A3F5FC(v48, &qword_1EA93A978, &qword_18A666DE0);
    sub_188A3F5FC(v49, &qword_1EA93A978, &qword_18A666DE0);
    v27 = v26;
    v28 = [v21 layer];
    v29 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
    [v28 setCompositingFilter_];

    [v27 addSubview_];
    v45 = v21;

    sub_188A3F5FC(v50, &qword_1EA93A978, &qword_18A666DE0);
    sub_188A3F5FC(v51, &qword_1EA93A978, &qword_18A666DE0);
    v30 = OBJC_IVAR____TtC5UIKitP33_DE00D3934C8DD6B37DA91C2A6799985526_UISurfaceLightEffectEntry_surfaces;
    swift_beginAccess();
    v31 = *(v1 + v30);
    v32 = *(v31 + 16);
    if (v32)
    {
      v33 = v31 + 32;

      v34 = 0.0;
      do
      {
        sub_188A53994(v33, v51);
        v35 = v52;
        v36 = v53;
        __swift_project_boxed_opaque_existential_0(v51, v52);
        v37 = (*(v36 + 24))(v35, v36);
        if (v37)
        {
          v38 = v37;
          [v27 addSubview_];
          v39 = v52;
          v40 = v53;
          __swift_project_boxed_opaque_existential_0(v51, v52);
          v41 = (*(v40 + 16))(v39, v40);

          if (v34 <= v41)
          {
            v34 = v41;
          }
        }

        __swift_destroy_boxed_opaque_existential_0Tm(v51);
        v33 += 40;
        --v32;
      }

      while (v32);

      if (v34 > 0.0)
      {
        *&v27[OBJC_IVAR____TtC5UIKit28_UILightEffectTransitionView_transitionSubviewOutset] = v34;
        v42 = v27;
        [v42 setNeedsLayout];
      }
    }

    v43 = *(v1 + v46);
    *(v1 + v46) = v26;
    v44 = v27;

    return v44;
  }
}

double sub_188DD0118()
{
  v1 = v0;
  v2 = [v0 window];
  if (v2 && (v20 = v2, sub_188A34624(0, &qword_1EA930850, off_1E70EAEB8), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936E88, &qword_18A6517B8), (swift_dynamicCast() & 1) != 0))
  {
    if (*(&v22 + 1))
    {
      sub_188A5EBAC(&v21, v24);
      v3 = v25;
      v4 = v26;
      __swift_project_boxed_opaque_existential_0(v24, v25);
      *&v0[OBJC_IVAR____TtC5UIKit24_UISharedTextureViewport__connection] = (*(v4 + 8))(*&v0[OBJC_IVAR____TtC5UIKit24_UISharedTextureViewport__portal], *&v0[OBJC_IVAR____TtC5UIKit24_UISharedTextureViewport__texture], *&v0[OBJC_IVAR____TtC5UIKit24_UISharedTextureViewport__texture + 8], *&v0[OBJC_IVAR____TtC5UIKit24_UISharedTextureViewport__texture + 16], v3, v4);
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_0Tm(v24);
    }
  }

  else
  {
    v23 = 0;
    v21 = 0u;
    v22 = 0u;
  }

  sub_188A3F5FC(&v21, &unk_1EA936E78, &qword_18A6517B0);
  v6 = [v0 window];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 windowScene];

    if (v8)
    {
      v9 = *&v1[OBJC_IVAR____TtC5UIKit24_UISharedTextureViewport__portal];
      v10 = *&v1[OBJC_IVAR____TtC5UIKit24_UISharedTextureViewport__texture];
      v11 = *&v1[OBJC_IVAR____TtC5UIKit24_UISharedTextureViewport__texture + 8];
      v12 = *&v1[OBJC_IVAR____TtC5UIKit24_UISharedTextureViewport__texture + 16];
      if (([v8 _hasInvalidated] & 1) == 0)
      {
        if (qword_1EA92FEE0 != -1)
        {
          swift_once();
        }

        v13 = qword_1EA92FEF0;
        if ([v8 _sceneComponentForKey_])
        {
          _s17TextureControllerCMa();
          v14 = swift_dynamicCastClass();
          if (v14)
          {
LABEL_15:
            v19 = sub_188DD0418(v9, v10, v11, v12);

            *&v1[OBJC_IVAR____TtC5UIKit24_UISharedTextureViewport__connection] = v19;
            swift_unknownObjectRelease();
            return result;
          }

          swift_unknownObjectRelease();
        }

        _s17TextureControllerCMa();
        v16 = objc_allocWithZone(v15);
        v17 = v8;
        v14 = sub_188F167B8(v17);

        [v17 _registerSceneComponent_forKey_];
        goto LABEL_15;
      }
    }
  }

  sub_188DCF74C();
  return result;
}

id sub_188DD0418(void *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v5 = v4;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    objc_opt_self();
    v11 = swift_dynamicCastObjCClass();
    if (v11)
    {
      v12 = v11;
      v10 = v10;
      v13 = [a1 window];
      if (v13)
      {
        v5 = v13;
        v14 = [v13 windowScene];

        if (v14)
        {
          if (v14 == v12)
          {
            v5 = sub_188DD0E2C(a1, a2, a3);

            return v5;
          }
        }
      }

      sub_188F1558C();
      swift_allocError();
      *v15 = 1;
      swift_willThrow();
    }

    else
    {
      sub_188F1558C();
      swift_allocError();
      *v17 = 2;
      swift_willThrow();
    }
  }

  else
  {
    sub_188F1558C();
    swift_allocError();
    *v16 = 0;
    swift_willThrow();
  }

  return v5;
}

uint64_t (*sub_188DD062C(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  *a1 = v8;
  v8[4] = sub_188DD0730(v8, a2, a3, a4);
  return sub_188DD0990;
}

void sub_188DD06BC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t (*sub_188DD0730(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x50uLL);
  }

  v9 = v8;
  *a1 = v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9[8] = sub_188DD0960(v9);
  v9[9] = sub_188DD07EC(v9 + 4, a2, a3, a4, isUniquelyReferenced_nonNull_native);
  return sub_188DD0988;
}

void (*sub_188DD07EC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5))(uint64_t **a1, char a2)
{
  v6 = v5;
  if (MEMORY[0x1E69E7D08])
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(0x40uLL);
  }

  v13 = v12;
  *a1 = v12;
  v12[4] = a4;
  v12[5] = v5;
  v12[2] = a2;
  v12[3] = a3;
  v14 = *v5;
  v15 = sub_188DD0D94(a2, a3, a4);
  *(v13 + 56) = v16 & 1;
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_16;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a5 & 1) == 0)
  {
    if (v22 >= v20 && (a5 & 1) == 0)
    {
      v23 = v15;
      sub_188FA5D64();
      v15 = v23;
      goto LABEL_11;
    }

    sub_188DEE1F8(v20, a5 & 1);
    v15 = sub_188DD0D94(a2, a3, a4);
    if ((v21 & 1) == (v24 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_18A4A87A8();
    __break(1u);
    return result;
  }

LABEL_11:
  v13[6] = v15;
  if (v21)
  {
    v25 = (*(*v6 + 56) + 16 * v15);
    v26 = *v25;
    v27 = v25[1];
  }

  else
  {
    v26 = 0;
    v27 = 0;
  }

  *v13 = v26;
  v13[1] = v27;
  return sub_188DD09F4;
}

uint64_t (*sub_188DD0960(void *a1))()
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_188DD0B60;
}

void sub_188DD0994(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void sub_188DD09F4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  LOBYTE(v5) = *(*a1 + 56);
  if (a2)
  {
    if (!v4)
    {
      goto LABEL_10;
    }

    v6 = v2[6];
    v7 = *v2[5];
    if ((*a1)[7])
    {
      goto LABEL_9;
    }

    v8 = v2[4];
    v9 = *(v2 + 1);
    v7[(v6 >> 6) + 8] |= 1 << v6;
    v10 = v7[6] + 24 * v6;
    *v10 = v9;
    *(v10 + 16) = v8;
    v5 = v7[7];
    v11 = (v5 + 16 * v6);
    *v11 = v3;
    v11[1] = v4;
    v12 = v7[2];
    v13 = __OFADD__(v12, 1);
    v3 = v12 + 1;
    if (!v13)
    {
LABEL_13:
      v7[2] = v3;

      goto LABEL_14;
    }

    __break(1u);
  }

  if (!v4)
  {
LABEL_10:
    if (v5)
    {
      v15 = v2[6];
      v16 = *v2[5];
      sub_188F1664C(*(v16 + 48) + 24 * v15);
      sub_188DD1DC4(v15, v16);
    }

    goto LABEL_14;
  }

  v6 = v2[6];
  v7 = *v2[5];
  if ((v5 & 1) == 0)
  {
    v17 = v2[4];
    v18 = *(v2 + 1);
    v7[(v6 >> 6) + 8] |= 1 << v6;
    v19 = v7[6] + 24 * v6;
    *v19 = v18;
    *(v19 + 16) = v17;
    v20 = (v7[7] + 16 * v6);
    *v20 = v3;
    v20[1] = v4;
    v21 = v7[2];
    v13 = __OFADD__(v21, 1);
    v3 = v21 + 1;
    if (v13)
    {
      __break(1u);
      return;
    }

    goto LABEL_13;
  }

LABEL_9:
  v14 = (v7[7] + 16 * v6);
  *v14 = v3;
  v14[1] = v4;
LABEL_14:

  free(v2);
}

void sub_188DD0B70(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_188B85570(a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_188FA3710();
      v11 = v19;
      goto LABEL_8;
    }

    sub_188DEE7D0(v16, a4 & 1);
    v11 = sub_188B85570(a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      sub_18A4A87A8();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 16 * v11);
    v23 = v22[1];
    *v22 = a1;
    v22[1] = a2;
  }

  else
  {

    sub_188AC540C(v11, a3, a1, a2, v21);
  }
}

uint64_t sub_188DD0CCC()
{
  swift_beginAccess();
  v1 = 0;
  result = 0;
  v3 = *(v0 + 40);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;
  while (v6)
  {
    v8 = v1;
LABEL_10:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = *(*(v3 + 56) + ((v8 << 10) | (16 * v9)));
    v11 = __OFADD__(result, v10);
    result += v10;
    if (v11)
    {
      __break(1u);
      return result;
    }
  }

  while (1)
  {
    v8 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    if (v8 >= v7)
    {
      return result;
    }

    v6 = *(v3 + 64 + 8 * v8);
    ++v1;
    if (v6)
    {
      v1 = v8;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_188DD0D9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_18A4A8888();
  MEMORY[0x18CFE37E0](a1);
  sub_18A4A7348();
  v6 = sub_18A4A88E8();
  return sub_188A82C74(a1, a2, a3, v6);
}

id sub_188DD0E2C(void *a1, uint64_t ObjectType, uint64_t (*a3)(uint64_t))
{
  v4 = v3;
  v8 = v3 + OBJC_IVAR____TtC5UIKitP33_FDF62CE22547DB2BF49759240B89F9C126_UISharedTextureController_delegate;
  if (!swift_unknownObjectWeakLoadStrong())
  {
    sub_188F1558C();
    swift_allocError();
    *v19 = 2;
    swift_willThrow();
    return ObjectType;
  }

  v31 = a1;
  v9 = *(v8 + 8);
  v10 = OBJC_IVAR____TtC5UIKitP33_FDF62CE22547DB2BF49759240B89F9C126_UISharedTextureController_sharingContexts;
  swift_beginAccess();
  v11 = *(v4 + v10);
  v30 = ObjectType;
  if (*(v11 + 16))
  {
    v12 = sub_188B85570(ObjectType);
    if (v13)
    {
      v14 = (*(v11 + 56) + 16 * v12);
      v15 = *v14;
      v16 = v14[1];
      swift_endAccess();
      v17 = v16;
      goto LABEL_9;
    }
  }

  swift_endAccess();
  ObjectType = swift_getObjectType();
  v29 = *(v9 + 8);
  v18 = v29(v4, ObjectType, v9);
  v17 = a3(v18);
  (*(v9 + 16))(v17, v4, ObjectType, v9);
  if (v32)
  {

    swift_unknownObjectRelease();
    return ObjectType;
  }

  [v17 setAutoresizingMask_];
  v29(v4, ObjectType, v9);
  [v17 setFrame_];
  [v17 setAlpha_];
  v15 = 0;
LABEL_9:
  v20 = v17;
  [v31 setSourceView_];
  [v31 setUserInteractionEnabled_];
  [v31 setMatchesPosition_];
  [v31 setMatchesAlpha_];
  result = [v31 setHidesSourceView_];
  if (v15 != -1)
  {
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38 = *(v4 + v10);
    *(v4 + v10) = 0x8000000000000000;
    sub_188DD0B70(v15 + 1, v20, v30, isUniquelyReferenced_nonNull_native);
    *(v4 + v10) = v38;
    swift_endAccess();
    sub_18A4A80E8();

    strcpy(&aBlock, "SharedTexture-");
    v38 = v30;
    v23 = sub_18A4A8618();
    MEMORY[0x18CFE22D0](v23);

    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v25 = swift_allocObject();
    *(v25 + 16) = v24;
    *(v25 + 24) = v30;
    v26 = objc_allocWithZone(_UIDeallocInvalidatable);

    v27 = sub_18A4A7258();

    v36 = sub_188DD1830;
    v37 = v25;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v34 = sub_188BFF280;
    v35 = &block_descriptor_25;
    v28 = _Block_copy(&aBlock);
    ObjectType = [(_UIDeallocInvalidatable *)v26 initWithIdentifier:v27 faultForDeallocInvalidation:0 invalidationBlock:v28];

    swift_unknownObjectRelease();
    _Block_release(v28);

    return ObjectType;
  }

  __break(1u);
  return result;
}

uint64_t sub_188DD1298()
{
  MEMORY[0x18CFEA6E0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188DD12D0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void sub_188DD1380(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  v6 = sub_188DD05DC(v23);
  v8 = sub_188DD062C(v22, v3, v4, v5);
  if (v7[1])
  {
    if (__OFSUB__(*v7, 1))
    {
LABEL_24:
      __break(1u);
      return;
    }

    --*v7;
    (v8)(v22, 0);
    (v6)(v23, 0);
  }

  else
  {
    (v8)(v22, 0);
    (v6)(v23, 0);
  }

  swift_beginAccess();
  v9 = *(a1 + 40);
  if (*(v9 + 16))
  {

    v10 = sub_188DD0D94(v3, v4, v5);
    if (v11)
    {
      v12 = *(*(v9 + 56) + 16 * v10);

      if (v12 > 0)
      {
        return;
      }
    }

    else
    {
    }
  }

  swift_beginAccess();
  sub_188DD1CB0(v3, v4, v5);
  v14 = v13;
  swift_endAccess();
  if (v14)
  {
    v15 = 1 << *(v14 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v14 + 64);
    v18 = (v15 + 63) >> 6;

    v19 = 0;
    while (v17)
    {
      v20 = v19;
LABEL_19:
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      [*(*(v14 + 56) + ((v20 << 9) | (8 * v21))) removeFromSuperview];
    }

    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v20 >= v18)
      {

        return;
      }

      v17 = *(v14 + 64 + 8 * v20);
      ++v19;
      if (v17)
      {
        v19 = v20;
        goto LABEL_19;
      }
    }

    __break(1u);
    goto LABEL_24;
  }
}

void sub_188DD1654(void *a1)
{
  v2 = [a1 subviews];
  sub_188A34624(0, &qword_1ED48F680, off_1E70EAD78);
  v3 = sub_18A4A7548();

  if (v3 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_18A4A7F68())
  {
    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = sub_188E49300(v5, v3);
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      [v6 removeFromSuperview];

      ++v5;
      if (v8 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:

  [a1 setCompositingMode_];
  v9 = [a1 layer];
  [v9 setWantsExtendedDynamicRangeContent_];

  v10 = [a1 layer];
  [v10 setAllowsLimitedHeadroom_];

  v11 = [a1 layer];
  [v11 setContentsMaximumDesiredEDR_];
}

void sub_188DD1838(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v5 = sub_188DD20A0(aBlock, a1);
  if (v4[1])
  {
    if (!*v4)
    {
      __break(1u);
      goto LABEL_8;
    }

    --*v4;
    (v5)(aBlock, 0);
  }

  else
  {
    (v5)(aBlock, 0);
  }

  swift_endAccess();
  v6 = UIApp;
  if (UIApp)
  {
    v7 = swift_allocObject();
    v7[2] = v1;
    aBlock[4] = sub_188DED0C4;
    aBlock[5] = v7;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_188A4A8F0;
    aBlock[3] = &block_descriptor_38_0;
    v8 = _Block_copy(aBlock);
    v9 = v6;
    v10 = v2;

    [v9 _performAfterCATransactionCommitsWithLegacyRunloopObserverBasedTiming_block_];
    _Block_release(v8);

    return;
  }

LABEL_8:
  __break(1u);
}

uint64_t sub_188DD19C0()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t (*sub_188DD19F8(uint64_t *a1, uint64_t a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[8] = sub_188DD1A9C(v5);
  v5[9] = sub_188DD2118(v5 + 4, a2, isUniquelyReferenced_nonNull_native);
  return sub_188DD098C;
}

uint64_t (*sub_188DD1A9C(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_188DD0B64;
}

void sub_188DD1AC4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  LOBYTE(v5) = *(*a1 + 40);
  if (a2)
  {
    if (!v4)
    {
      goto LABEL_10;
    }

    v6 = v2[4];
    v7 = *v2[3];
    if ((*a1)[5])
    {
      goto LABEL_9;
    }

    v8 = v2[2];
    v7[(v6 >> 6) + 8] |= 1 << v6;
    *(v7[6] + 8 * v6) = v8;
    v5 = v7[7] + 16 * v6;
    *v5 = v3;
    *(v5 + 8) = v4;
    v9 = v7[2];
    v10 = __OFADD__(v9, 1);
    v3 = v9 + 1;
    if (!v10)
    {
LABEL_13:
      v7[2] = v3;
      goto LABEL_14;
    }

    __break(1u);
  }

  if (!v4)
  {
LABEL_10:
    if (v5)
    {
      sub_188DED478(v2[4], *v2[3]);
    }

    goto LABEL_14;
  }

  v6 = v2[4];
  v7 = *v2[3];
  if ((v5 & 1) == 0)
  {
    v12 = v2[2];
    v7[(v6 >> 6) + 8] |= 1 << v6;
    *(v7[6] + 8 * v6) = v12;
    v13 = (v7[7] + 16 * v6);
    *v13 = v3;
    v13[1] = v4;
    v14 = v7[2];
    v10 = __OFADD__(v14, 1);
    v3 = v14 + 1;
    if (v10)
    {
      __break(1u);
      return;
    }

    goto LABEL_13;
  }

LABEL_9:
  v11 = (v7[7] + 16 * v6);
  *v11 = v3;
  v11[1] = v4;
LABEL_14:
  v15 = v2[1];
  v16 = v4;

  free(v2);
}

double sub_188DD1BE8(void *a1)
{
  v3 = *(v1 + 32);
  v4 = sub_188DD0CCC();
  sub_188DD1380(v1, a1);
  v5 = *(v1 + 32);
  v6 = sub_188DD0CCC();
  if (v4 >= 1 && !v6 || !v4 && !v6 && v3 != v5)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      v8 = *(v1 + 24);
      ObjectType = swift_getObjectType();
      (*(v8 + 16))(v1, v5, ObjectType, v8);

      swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_188DD1CB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = sub_188DD0D94(a1, a2, a3);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v3;
  v12 = *v4;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_188FA5D64();
    v9 = v12;
  }

  v10 = *(*(v9 + 56) + 16 * v7);
  sub_188DD1DC4(v7, v9);
  *v4 = v9;
  return v10;
}

double sub_188DD1D60(uint64_t a1, void *a2)
{
  if (swift_weakLoadStrong())
  {
    swift_weakAssign();
    sub_188DD1BE8(a2);
  }

  return result;
}

void sub_188DD1DC4(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_18A4A7ED8() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 24 * v6);
      sub_18A4A8888();
      MEMORY[0x18CFE37E0](v9);

      sub_18A4A7348();
      v10 = sub_18A4A88E8();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = v12 + 24 * v3;
        v14 = (v12 + 24 * v6);
        if (v3 != v6 || v13 >= v14 + 24)
        {
          v15 = *v14;
          *(v13 + 16) = *(v14 + 2);
          *v13 = v15;
        }

        v16 = *(a2 + 56);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }
}

void sub_188DD2044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_188DD1838(a3);
  }
}

void (*sub_188DD20A0(uint64_t **a1, uint64_t a2))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_188DD19F8(v4, a2);
  return sub_188DD0708;
}

void (*sub_188DD2118(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1, char a2)
{
  v4 = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x30uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 16) = a2;
  *(v8 + 24) = v3;
  v10 = *v3;
  v11 = sub_188B85570(a2);
  *(v9 + 40) = v12 & 1;
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = v11;
      sub_188FA3710();
      v11 = v19;
      goto LABEL_11;
    }

    sub_188DEE7D0(v16, a3 & 1);
    v11 = sub_188B85570(a2);
    if ((v17 & 1) == (v20 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_18A4A87A8();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v9 + 32) = v11;
  if (v17)
  {
    v21 = (*(*v4 + 56) + 16 * v11);
    v22 = *v21;
    v23 = v21[1];
  }

  else
  {
    v22 = 0;
    v23 = 0;
  }

  *v9 = v22;
  *(v9 + 8) = v23;
  return sub_188DD1AC4;
}

void ClearSpecialViews(void *a1, CFMutableDictionaryRef *a2)
{
  v3 = a1;
  if (*a2)
  {
    v5 = v3;
    CFDictionaryRemoveValue(*a2, v3);
    Count = CFDictionaryGetCount(*a2);
    v3 = v5;
    if (!Count)
    {
      CFRelease(*a2);
      v3 = v5;
      *a2 = 0;
    }
  }
}

__CFString *_PhaseDescription(uint64_t a1)
{
  if (a1 > 7)
  {
    v2 = @"Unknown";
  }

  else
  {
    v2 = _PhaseDescription_touchPhases[a1];
  }

  return v2;
}

CATransform3D *_UIRenderingSurfaceTransform@<X0>(double *a1@<X0>, CATransform3D *a2@<X8>)
{
  v9 = *MEMORY[0x1E69E9840];
  CATransform3DMakeTranslation(&v7, -*a1, -a1[1], 0.0);
  CATransform3DMakeScale(&v8, a1[4], a1[4], 1.0);
  a = v7;
  v5 = v8;
  return CATransform3DConcat(a2, &a, &v5);
}

double _UIRectAnchorPointForEdges(char a1, double a2, double a3, double a4, double a5)
{
  if ((~a1 & 0xA) != 0)
  {
    if ((a1 & 8) != 0)
    {
      MaxX = CGRectGetMaxX(*&a2);
    }

    else
    {
      MaxX = CGRectGetMinX(*&a2);
    }

    v10 = MaxX;
  }

  else
  {
    v10 = a2 + a4 * 0.5;
  }

  if ((~a1 & 5) != 0)
  {
    v12 = a2;
    v13 = a3;
    v14 = a4;
    v15 = a5;
    if ((a1 & 4) != 0)
    {
      CGRectGetMaxY(*&v12);
    }

    else
    {
      CGRectGetMinY(*&v12);
    }
  }

  return v10;
}

double _UIUnitAnchorPointForEdges(unint64_t a1)
{
  v1 = vdupq_n_s64(a1);
  __asm
  {
    FMOV            V3.2D, #0.5
    FMOV            V4.2D, #1.0
  }

  *&result = vbslq_s8(vceqzq_s64(vandq_s8(v1, xmmword_18A678BD0)), vbslq_s8(vceqzq_s64(vandq_s8(v1, xmmword_18A678BE0)), _Q3, _Q4), vandq_s8(_Q3, vceqq_s64(vandq_s8(v1, xmmword_18A678BF0), xmmword_18A678BF0))).u64[0];
  return result;
}

uint64_t _UIFocusItemIsFocusableInFocusSystem(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL _UIFocusItemIsFocusableInFocusSystem(__strong id<UIFocusItem> _Nonnull, UIFocusSystem *__strong _Nonnull)"}];
    [v8 handleFailureInFunction:v9 file:@"UIFocusItem.m" lineNumber:81 description:{@"Invalid parameter not satisfying: %@", @"item"}];

    if (v5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL _UIFocusItemIsFocusableInFocusSystem(__strong id<UIFocusItem> _Nonnull, UIFocusSystem *__strong _Nonnull)"}];
    [v10 handleFailureInFunction:v11 file:@"UIFocusItem.m" lineNumber:82 description:{@"Invalid parameter not satisfying: %@", @"focusSystem"}];

    goto LABEL_3;
  }

  if (!v4)
  {
    goto LABEL_5;
  }

LABEL_3:
  IsFocusedOrFocusableInFocusSystem = __UIFocusItemIsFocusedOrFocusableInFocusSystem(v3, v5, 1, 0);

  return IsFocusedOrFocusableInFocusSystem;
}

id _applicationLifecycleMemoryMetricLogHandle()
{
  if (qword_1EA993248 != -1)
  {
    dispatch_once(&qword_1EA993248, &__block_literal_global_3848);
  }

  v1 = qword_1EA993240;

  return v1;
}

_UIReplicantView *_UISnapshotViewRectAfterCommit(void *a1, int a2, double a3, double a4, double a5, double a6)
{
  v59 = *MEMORY[0x1E69E9840];
  v11 = a1;
  v12 = v11;
  if (v11)
  {
    v13 = [v11 layer];
    v14 = v13;
    if (a2)
    {
      v15 = [v13 context];

      v16 = &__block_literal_global_84_2;
      if (v15)
      {
        v17 = 0;
      }

      else
      {
        v51 = &__block_literal_global_84_2;
        v17 = _moveViewToTemporaryWindow(v12, 0, &v51);
        v16 = v51;
        if (!v17)
        {
          v41 = *(__UILogGetCategoryCachedImpl("Snapshotting", &qword_1ED4A0650) + 8);
          if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            v42 = v41;
            v43 = objc_opt_class();
            *buf = 134218242;
            *&buf[4] = v12;
            *&buf[12] = 2112;
            *&buf[14] = v43;
            _os_log_impl(&dword_188A29000, v42, OS_LOG_TYPE_ERROR, "Snapshotting a window (%p, %@) requires it to be in a foreground scene.", buf, 0x16u);
          }

          v19 = 0;
          goto LABEL_26;
        }
      }

LABEL_16:
      v24 = v12;
      v25 = [v24 _screen];
      [v25 _scale];
      v53[4] = v26;

      v53[0] = a3;
      v53[1] = a4;
      v53[2] = a5;
      v53[3] = a6;
      _UIRenderingSurfaceTransform(v53, &v52);
      v27 = [[_UIReplicantView alloc] initWithSurface:v53];
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = ___UISnapshotViewRectBlock_block_invoke;
      v55 = &unk_1E711EFE0;
      v56 = v24;
      v28 = v27;
      v57 = v28;
      v58 = v52;
      v29 = _Block_copy(buf);
      v30 = v29;
      v31 = v57;
      v32 = v28;

      v33 = v29;
      v45 = MEMORY[0x1E69E9820];
      v46 = 3221225472;
      v47 = ___UISnapshotViewRectAfterCommit_block_invoke_86;
      v48 = &unk_1E70F77D0;
      v49 = v33;
      v16 = v16;
      v50 = v16;
      v34 = _Block_copy(&v45);
      v35 = v34;
      if (a2)
      {
        if (!v17)
        {
          goto LABEL_23;
        }

        if (qword_1ED4A06C8 != -1)
        {
          dispatch_once(&qword_1ED4A06C8, &__block_literal_global_169_2);
        }

        if (_MergedGlobals_1262 == 1)
        {
          v36 = [v14 context];
          v37 = v36 == 0;
        }

        else
        {
LABEL_23:
          v36 = 0;
          v37 = 1;
        }

        _performAfterContextCommitUnderCoverAllowDefer(v36, v37, 1, v35);
      }

      else
      {
        (*(v34 + 2))(v34);
      }

      v38 = v50;
      v19 = v32;

LABEL_26:
LABEL_36:

      goto LABEL_37;
    }

    if ([v13 hasBeenCommitted])
    {
      v20 = [v14 context];

      if (v20)
      {
        v17 = 0;
        v16 = &__block_literal_global_84_2;
        goto LABEL_16;
      }

      v39 = *(__UILogGetCategoryCachedImpl("Snapshotting", &qword_1ED4A0648) + 8);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        v40 = v39;
        *buf = 134218242;
        *&buf[4] = v12;
        *&buf[12] = 2112;
        *&buf[14] = objc_opt_class();
        _os_log_impl(&dword_188A29000, v40, OS_LOG_TYPE_ERROR, "Snapshotting a view (%p, %@) that is not in a visible window requires afterScreenUpdates:YES.", buf, 0x16u);
      }

      if (dyld_program_sdk_at_least())
      {
LABEL_30:
        v19 = 0;
        goto LABEL_36;
      }

      v23 = [[_UIReplicantView alloc] initWithFrame:a3, a4, a5, a6];
    }

    else
    {
      v21 = *(__UILogGetCategoryCachedImpl("Snapshotting", &qword_1ED4A0640) + 8);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = v21;
        *buf = 134218242;
        *&buf[4] = v12;
        *&buf[12] = 2112;
        *&buf[14] = objc_opt_class();
        _os_log_impl(&dword_188A29000, v22, OS_LOG_TYPE_ERROR, "Snapshotting a view (%p, %@) that has not been rendered at least once requires afterScreenUpdates:YES.", buf, 0x16u);
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_30;
      }

      v23 = [[_UIReplicantView alloc] initAsCopyOf:v12];
    }

    v19 = v23;
    goto LABEL_36;
  }

  v18 = *(__UILogGetCategoryCachedImpl("Snapshotting", &qword_1ED4A0638) + 8);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_188A29000, v18, OS_LOG_TYPE_ERROR, "View snapshot requires non-nil view.", buf, 2u);
  }

  v19 = 0;
LABEL_37:

  return v19;
}

id getPGPictureInPictureProxyClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPGPictureInPictureProxyClass_softClass;
  v7 = getPGPictureInPictureProxyClass_softClass;
  if (!getPGPictureInPictureProxyClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getPGPictureInPictureProxyClass_block_invoke;
    v3[3] = &unk_1E70F2F20;
    v3[4] = &v4;
    __getPGPictureInPictureProxyClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_188DD6360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id __copy_helper_block_e8_56n9_8_8_s0_s8(uint64_t a1, uint64_t a2)
{
  *(a1 + 56) = *(a2 + 56);
  result = *(a2 + 64);
  *(a1 + 64) = result;
  return result;
}

id _UICollectionViewCellForFocusItem(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__39;
  v15 = __Block_byref_object_dispose__39;
  v16 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = ___UICollectionViewCellForFocusItem_block_invoke;
  v8[3] = &unk_1E70FFB40;
  v5 = v3;
  v9 = v5;
  v10 = &v11;
  _UIFocusEnvironmentEnumerateAncestorEnvironments(v4, v8);
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void sub_188DD6AD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _UIEventDeferringRecreationReasonsForRecreatedRecordOfRecord(void *a1, uint64_t a2)
{
  v4 = [(_UIEventDeferringRecord *)a1 recreationReasons];
  v5 = [v4 count];

  v6 = [(_UIEventDeferringRecord *)a1 recreationReasons];
  v7 = v6;
  if (v5)
  {
    v8 = [v6 mutableCopy];

    [v8 removeObject:@"_UIEventDeferringRecreationReasonNoLongerTopRemoteRecord"];
    [v8 removeObject:@"_UIEventDeferringRecreationReasonBehaviorDelegateSuppressed"];
    if (a2)
    {
      [v8 removeObject:a2];
    }
  }

  else
  {
    v8 = v6;
  }

  return v8;
}

uint64_t stateMachineSpec_block_invoke_4_0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v142 = *MEMORY[0x1E69E9840];
  v6 = a2[2];
  v109 = a4;
  v111 = _NSStringFromUIDeferringAction[a4];
  if (*(a2 + 48) == 1)
  {
    v91 = [MEMORY[0x1E696AAA8] currentHandler];
    v92 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"stateMachineSpec_block_invoke_4"];
    [v91 handleFailureInFunction:v92 file:@"_UIEventDeferringManager.m" lineNumber:1348 description:{@"[%p] [%@] %@: Invalid state. Unexpected value of ownerInitiatedRemoval: %d", *a2, v6, v111, *(a2 + 48)}];
  }

  v112 = v6;
  v7 = [(_UIEventDeferringManager *)*a2 _localRecordForEnvironment:v6];
  v8 = [(_UIEventDeferringManager *)*a2 internalBehavior];
  v9 = [v8 wantsLocalIdealRules];

  v10 = 0;
  v11 = 0;
  if (v9 && v7)
  {
    v12 = *a2;
    v13 = *(v7 + 16);
    v14 = v13;
    if (v13)
    {
      v15 = *(v13 + 8);
    }

    else
    {
      v15 = 0;
    }

    v16 = *(v7 + 16);
    v17 = v16;
    if (v16)
    {
      v18 = *(v16 + 4);
    }

    else
    {
      v18 = 0;
    }

    v19 = v18;
    WeakRetained = objc_loadWeakRetained((v7 + 32));
    v21 = [(_UIEventDeferringManager *)v12 _descriptorForCompatibility:v19 environment:WeakRetained deferringToken:?];

    v22 = [(_UIEventDeferringManager *)*a2 _predicateForDescriptor:v21];
    v23 = [(_UIEventDeferringManager *)*a2 _targetForDescriptor:v21];
    v24 = [MEMORY[0x1E698E3B0] sharedInstance];
    v25 = objc_loadWeakRetained((v7 + 32));
    v26 = v25;
    if (v25)
    {
      v27 = *(v25 + 10);
    }

    else
    {
      v27 = 0;
    }

    v28 = v27;
    v29 = [v24 deferEventsMatchingPredicate:v22 toTarget:v23 withReason:v28];

    v30 = _UIEventDeferringRecreationReasonsForRecreatedRecordOfRecord(v7, a2[4]);
    v31 = [_UIEventDeferringRecord alloc];
    v32 = objc_loadWeakRetained((v7 + 32));
    v33 = [(_UIEventDeferringRecord *)v31 _initWithDescriptor:v21 invalidationToken:v29 deferringToken:v32 recordingManagerPointer:*a2 recreationReasons:v30];

    v34 = *(v7 + 24);
    [v34 invalidate];

    v35 = v33;
    [(_UIEventDeferringManager *)*a2 _removeLocalRecordForEnvironment:v112];
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("EventDeferring", &qword_1ED49CCF0);
    if (*CategoryCachedImpl)
    {
      v95 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
      {
        v96 = *a2;
        *buf = 134349826;
        v131 = v96;
        v132 = 2114;
        v133 = v112;
        v134 = 2114;
        v135 = v111;
        v136 = 2114;
        *v137 = v35;
        _os_log_impl(&dword_188A29000, v95, OS_LOG_TYPE_ERROR, "[%{public}p] [%{public}@] %{public}@: Recreated local record: %{public}@", buf, 0x2Au);
      }
    }

    v11 = v35;
    [(_UIEventDeferringManager *)*a2 _setLocalRecord:v35 forEnvironment:v112];

    v10 = 1;
  }

  v107 = v10;
  v124 = 0;
  v125 = &v124;
  v126 = 0x3032000000;
  v127 = __Block_byref_object_copy__33;
  v128 = __Block_byref_object_dispose__33;
  v129 = 0;
  v37 = [(_UIEventDeferringManager *)*a2 internalBehavior];
  v38 = [v37 wantsLocalCompatibilityRules];

  if (v38)
  {
    if (*(a2 + 50) == 1)
    {
      v39 = a2[7];
    }

    else
    {
      v39 = [(_UIEventDeferringManager *)*a2 _displayHardwareIndentifierAccountingForNotFinalizedChange:?];
    }

    v41 = v39;
    if (v39)
    {
      [MEMORY[0x1E698E3C8] displayWithHardwareIdentifier:v39];
    }

    else
    {
      [MEMORY[0x1E698E3C8] builtinDisplay];
    }
    v42 = ;
    v43 = _eventDeferringCompatibilityQueue();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = stateMachineSpec_block_invoke_5_0;
    block[3] = &unk_1E70FB728;
    v123 = &v124;
    v110 = v42;
    v121 = v110;
    v122 = v112;
    dispatch_sync(v43, block);

    v44 = v125[5];
    if (!v44)
    {
      v40 = 0;
      v38 = 0;
      goto LABEL_61;
    }

    v45 = objc_loadWeakRetained((v44 + 32));
    v38 = v45 == a2[1];

    if (!v38)
    {
      v40 = 0;
LABEL_61:

      goto LABEL_62;
    }

    v46 = *a2;
    v47 = v125[5];
    if (v47)
    {
      v48 = *(v47 + 16);
      v49 = v48;
      if (v48)
      {
        v50 = *(v48 + 8);
        goto LABEL_28;
      }
    }

    else
    {
      v49 = 0;
    }

    v50 = 0;
LABEL_28:
    v51 = v125[5];
    if (v51)
    {
      v52 = *(v51 + 16);
      v53 = v52;
      if (v52)
      {
        v54 = *(v52 + 4);
        goto LABEL_31;
      }
    }

    else
    {
      v53 = 0;
    }

    v54 = 0;
LABEL_31:
    v55 = v54;
    v56 = v125[5];
    if (v56)
    {
      v57 = objc_loadWeakRetained((v56 + 32));
    }

    else
    {
      v57 = 0;
    }

    v106 = [(_UIEventDeferringManager *)v46 _descriptorForCompatibility:v55 environment:v57 deferringToken:?];

    v105 = [(_UIEventDeferringManager *)*a2 _predicateForDescriptor:v106];
    v104 = [(_UIEventDeferringManager *)*a2 _targetForDescriptor:v106];
    v58 = MEMORY[0x1E696AEC0];
    v59 = v125[5];
    if (v59)
    {
      v60 = objc_loadWeakRetained(v59 + 4);
      v61 = v60;
      if (v60)
      {
        v59 = v60[10];
      }

      else
      {
        v59 = 0;
      }
    }

    else
    {
      v61 = 0;
    }

    v62 = v59;
    v103 = [v58 stringWithFormat:@"Compatibility: %@", v62];

    v63 = [MEMORY[0x1E698E3B0] sharedInstance];
    v102 = [v63 deferEventsMatchingPredicate:v105 toTarget:v104 withReason:v103];

    v101 = _UIEventDeferringRecreationReasonsForRecreatedRecordOfRecord(v125[5], a2[4]);
    v64 = [_UIEventDeferringRecord alloc];
    v65 = v125[5];
    if (v65)
    {
      v66 = objc_loadWeakRetained((v65 + 32));
    }

    else
    {
      v66 = 0;
    }

    v67 = [(_UIEventDeferringRecord *)v64 _initWithDescriptor:v106 invalidationToken:v102 deferringToken:v66 recordingManagerPointer:*a2 recreationReasons:v101];

    if (!v11)
    {
LABEL_54:
      v77 = v125[5];
      if (v77)
      {
        v77 = v77[3];
      }

      v78 = v77;
      [v78 invalidate];

      v79 = _eventDeferringCompatibilityQueue();
      v117[0] = MEMORY[0x1E69E9820];
      v117[1] = 3221225472;
      v117[2] = stateMachineSpec_block_invoke_6_0;
      v117[3] = &unk_1E70F35B8;
      v118 = v110;
      v119 = v112;
      dispatch_sync(v79, v117);

      v80 = [(_UIEventDeferringManager *)*a2 _displayHardwareIndentifierAccountingForNotFinalizedChange:?];
      if (v80)
      {
        [MEMORY[0x1E698E3C8] displayWithHardwareIdentifier:v80];
      }

      else
      {
        [MEMORY[0x1E698E3C8] builtinDisplay];
      }
      v81 = ;
      v82 = __UILogGetCategoryCachedImpl("EventDeferring", &qword_1ED49CCF8);
      if (*v82)
      {
        v97 = *(v82 + 8);
        if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
        {
          v98 = *a2;
          *buf = 134349826;
          v131 = v98;
          v132 = 2114;
          v133 = v112;
          v134 = 2114;
          v135 = v111;
          v136 = 2114;
          *v137 = v67;
          _os_log_impl(&dword_188A29000, v97, OS_LOG_TYPE_ERROR, "[%{public}p] [%{public}@] %{public}@: Recreated local compatibility record: %{public}@", buf, 0x2Au);
        }
      }

      v83 = _eventDeferringCompatibilityQueue();
      v113[0] = MEMORY[0x1E69E9820];
      v113[1] = 3221225472;
      v113[2] = stateMachineSpec_block_invoke_7;
      v113[3] = &unk_1E70F6228;
      v114 = v81;
      v115 = v112;
      v40 = v67;
      v116 = v40;
      v84 = v81;
      dispatch_sync(v83, v113);

      v38 = 1;
      goto LABEL_61;
    }

    v68 = v11[2];
    if (v67)
    {
      v69 = v67[2];
    }

    else
    {
      v69 = 0;
    }

    v70 = v69;
    if (v68)
    {
      v71 = v68[9];
      if (v70)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v71 = 0;
      if (v70)
      {
LABEL_43:
        v72 = v70[9];
        if (v68)
        {
          goto LABEL_44;
        }

        goto LABEL_85;
      }
    }

    v72 = 0;
    if (v68)
    {
LABEL_44:
      v73 = *(v68 + 5);
      if (v70)
      {
LABEL_45:
        v74 = *(v70 + 5);
        goto LABEL_46;
      }

LABEL_86:
      v74 = 0;
LABEL_46:
      v76 = v71 == v72 && v73 == v74;

      if (!v76)
      {
        v99 = [MEMORY[0x1E696AAA8] currentHandler];
        v100 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"stateMachineSpec_block_invoke_4"];
        [v99 handleFailureInFunction:v100 file:@"_UIEventDeferringManager.m" lineNumber:1433 description:{@"[%p] [%@] %@: Invalid state. Local record target windows do not match", *a2, v112, v111}];
      }

      goto LABEL_54;
    }

LABEL_85:
    v73 = 0;
    if (v70)
    {
      goto LABEL_45;
    }

    goto LABEL_86;
  }

  v40 = 0;
LABEL_62:
  v85 = [v112 description];
  v86 = v85;
  v87 = [v85 UTF8String];

  v88 = v111;
  v89 = [(__CFString *)v111 UTF8String];
  if (os_variant_has_internal_diagnostics())
  {
    v93 = *(__UILogGetCategoryCachedImpl("EventDeferring", &qword_1ED49CD00) + 8);
    if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
    {
      v94 = *a2;
      *buf = 134350594;
      v131 = v94;
      v132 = 2082;
      v133 = v87;
      v134 = 2082;
      v135 = v89;
      v136 = 1026;
      *v137 = v107;
      *&v137[4] = 2050;
      *&v137[6] = v11;
      v138 = 1026;
      v139 = v38;
      v140 = 2050;
      v141 = v40;
      _os_log_impl(&dword_188A29000, v93, OS_LOG_TYPE_DEFAULT, "[%{public}p] [%{public}s] %{public}s: Removed local record: %{public}d; recreated local record: %{public}p; removed compatibility record: %{public}d; recreated compatibility record: %{public}p", buf, 0x40u);
    }
  }

  if (*__UILogGetCategoryCachedImpl("EventDeferring", &qword_1ED49CD08))
  {
    _emitDebugLogForTransition(a3, v109, &stru_1EFB14550, a2);
  }

  _Block_object_dispose(&v124, 8);

  return 9;
}

void stateMachineSpec_block_invoke_4_1(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 reachedClickDownThreshold])
  {
    handleEvent(stateMachineSpec_0, v2[1], 2, v2, v2 + 1);
  }
}

void stateMachineSpec_block_invoke_4_2(uint64_t a1, id *a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 1)
  {
    v5 = *a2;
    [(_UIPreviewInteractionClickImpl *)v5 _toBeRemoved_CreateHighlighterIfPossible];
    [(_UIPreviewInteractionClickImpl *)v5 _toBeRemoved_CallHighlighterCompletion];
  }
}

void stateMachineSpec_block_invoke_4_4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
    return;
  }

  v53 = v7;
  v54 = v6;
  v55 = v4;
  v56 = v5;
  v9 = *a2;
  if (!*a2)
  {
    return;
  }

  v11 = [*a2 _clickDragDriver];
  v12 = [v9 _clickDriverTouch];
  v13 = v12;
  if (v11)
  {
    v14 = v12 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    goto LABEL_25;
  }

  if (a3 == 3)
  {
    v25 = [v9 activeDriver];
    v26 = [v25 hasExceededAllowableMovement];

    if (v26)
    {
      goto LABEL_22;
    }

    goto LABEL_25;
  }

  if (a3 != 2)
  {
    goto LABEL_25;
  }

  v15 = [v9 activeDriver];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {

    goto LABEL_16;
  }

  v16 = [v9 activeDriver];
  v17 = [v16 behavior];

  if (v17 != 2)
  {
LABEL_16:
    v27 = [v9 associatedDragInteraction];
    [v27 _liftDelay];
    v29 = v28;

    if (v29 != _UIDragInteractionDefaultLiftDelay())
    {
      v30 = [v9 activeDriver];
      [v30 touchDuration];
      v32 = v31;

      if (v32 > v29)
      {
        goto LABEL_22;
      }
    }

LABEL_25:
    if ([v11 isPreparingToDrag])
    {
      [v11 cancel];
    }

    if (a3 > 3)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v18 = [v9 associatedDragInteraction];
  [v18 _pointerLiftDelay];
  v20 = v19;

  if (v20 == _UIDragInteractionDefaultPointerLiftDelay())
  {
    v24 = 1;
  }

  else
  {
    v21 = [v9 activeDriver];
    [v21 touchDuration];
    v23 = v22;

    v24 = v23 > v20;
  }

  v33 = [v9 associatedDragInteraction];
  v34 = [v33 _allowsPointerDragBeforeLiftDelay];

  if (!v24)
  {
    goto LABEL_25;
  }

  if (v34)
  {
    goto LABEL_23;
  }

LABEL_22:
  if ([v11 isLifted])
  {
LABEL_23:
    if ([v9 beginDragIfPossibleWithTouch:v13])
    {
      *(a2 + 16) = 2;
    }
  }

LABEL_28:
  v35 = [v9 exclusionRelationshipGestureRecognizer];
  [v35 _fail];

  v36 = [v9 failureRelationshipGestureRecognizer];
  [v36 _fail];

  [v9[7] _fail];
LABEL_29:
  if (*(a2 + 16) == 2)
  {
    v37 = [v9 associatedDragInteraction];
    [v9 setLatentAssociatedDragInteraction:v37];
  }

  else
  {
    [(_UIClickPresentationInteraction *)v9 _endInteractionEffectIfNeeded];
  }

  [v9 setAssociatedDragInteraction:0];
  v38 = [v9 presentationAssistant];
  [v9 setPresentationAssistant:0];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __83___UIClickPresentationInteraction__handleDidTransitionToPossibleFromState_context___block_invoke;
  aBlock[3] = &unk_1E70F36D0;
  v52 = a2;
  v39 = v38;
  v50 = v39;
  v51 = v9;
  v40 = _Block_copy(aBlock);
  v41 = _Block_copy(*(a2 + 40));
  if (v39)
  {
    [v39 dismissWithReason:*(a2 + 16) alongsideActions:v40 completion:v41];
  }

  else
  {
    if (v40)
    {
      v40[2](v40);
    }

    if (v41)
    {
      v41[2](v41);
    }
  }

  [v9 _cancelAllDrivers];
  v42 = [v9 activeDriver];
  v43 = _UIClickPresentationAllowableMovementForDriver(v42, 0);
  v44 = [v9 activeDriver];
  [v44 setAllowableMovement:v43];

  [v9 setActiveDriver:0];
  _UIClickPresentationStatisticsReportEvent(0, v9[5], *(a2 + 16));
  v45 = +[UIEventSessionActionAnalytics sharedInstance];
  [v9 initialLocation];
  [v45 didShowContextualMenuFromLocation:+[_UIEventSessionAction getUIEventSourceForUITouchType:](_UIEventSessionAction withSource:{"getUIEventSourceForUITouchType:", objc_msgSend(v13, "type")), v46, v47}];

  v9[5] = 0;
  [v9 setInitialLocation:{1.79769313e308, 1.79769313e308, 1.79769313e308}];
  *(v9 + 51) = 0;
  if (*(v9 + 48) == 1)
  {
    v48 = [v9 feedbackGenerator];
    [v48 userInteractionEnded];

    *(v9 + 48) = 0;
  }

  *(v9 + 49) = 0;
}

uint64_t stateMachineSpec_block_invoke_4_7(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 delegate];
  [v3 clickDriver:v2 didPerformEvent:2];

  return 2;
}

void stateMachineSpec_block_invoke_4_8(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 clicksUpAutomaticallyAfterTimeout])
  {
    handleEvent(stateMachineSpec_8, v2[1], 2, v2, v2 + 1);
  }
}

void sub_188DDA254(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    UIHostingViewBase._setNeedsUpdate()();
  }
}

uint64_t stateMachineSpec_block_invoke_19(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a2[2];
  v6 = [(_UIEventDeferringManager *)*a2 _remoteDeferringRecordStackForEnvironment:v5];
  v20 = [v6 count];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = [v6 copy];
  v8 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v24;
    do
    {
      v11 = 0;
      do
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v23 + 1) + 8 * v11);
        if (v12)
        {
          WeakRetained = objc_loadWeakRetained((v12 + 32));
          v14 = WeakRetained;
          if (WeakRetained)
          {
            [WeakRetained[1] removeObject:v5];
            if ((v14[3] & 1) == 0 && ![v14[1] count])
            {
              *(v14 + 24) = 1;
            }
          }

          v15 = *(v12 + 24);
        }

        else
        {
          v15 = 0;
        }

        v16 = v15;
        [v16 invalidate];

        [(_UIEventDeferringManager *)*a2 _removeRemoteRecord:v12 forEnvironment:v5];
        ++v11;
      }

      while (v9 != v11);
      v17 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
      v9 = v17;
    }

    while (v17);
  }

  if (*__UILogGetCategoryCachedImpl("EventDeferring", &stateMachineSpec_block_invoke_19___s_category))
  {
    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"removed remote records: %li", v20];;
    _emitDebugLogForTransition(a3, a4, v19, a2);
  }

  return 10;
}

void sub_188DDC98C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 32));
  _Unwind_Resume(a1);
}

double _UIRectDeparturePointAlongFocusHeading(char a1, double a2, double a3, double a4, double a5)
{
  if ((a1 & 0xC) != 0)
  {
    if ((a1 & 4) != 0)
    {
      MinX = CGRectGetMinX(*&a2);
    }

    else
    {
      MinX = CGRectGetMaxX(*&a2);
    }
  }

  else
  {
    MinX = CGRectGetMidX(*&a2);
  }

  v11 = MinX;
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  if ((a1 & 3) != 0)
  {
    if (a1)
    {
      CGRectGetMinY(*&v12);
    }

    else
    {
      CGRectGetMaxY(*&v12);
    }
  }

  else
  {
    CGRectGetMidY(*&v12);
  }

  return v11;
}

id __viewOrWindowFallbackForRTLProbing(void *a1, void *a2)
{
  v3 = a1;
  v4 = _UIFocusEnvironmentContainingView(a2);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = [v3 _windowScene];
    v8 = [v7 windows];
    v6 = [v8 firstObject];
  }

  return v6;
}

uint64_t _UIEffectiveFocusRegionBoundariesForHeading(uint64_t result, char a2)
{
  if (result)
  {
    if (result == 15)
    {
      return 111;
    }

    else
    {
      v2 = result & 0x10;
      if ((result & 0x24) != 0)
      {
        v3 = result & 0x10 | 0x24;
      }

      else
      {
        v3 = result & 0x10;
      }

      if ((result & 0x41) != 0)
      {
        v3 |= 0x41uLL;
      }

      if (a2)
      {
        v2 = v3;
      }

      if ((result & 0x21) != 0)
      {
        v4 = v2 | 0x21;
      }

      else
      {
        v4 = v2;
      }

      if ((result & 0x44) != 0)
      {
        v4 |= 0x44uLL;
      }

      if ((a2 & 2) != 0)
      {
        v2 = v4;
      }

      if ((result & 0x28) != 0)
      {
        v5 = v2 | 0x28;
      }

      else
      {
        v5 = v2;
      }

      if ((result & 0x42) != 0)
      {
        v5 |= 0x42uLL;
      }

      if ((a2 & 0x24) != 0)
      {
        v2 = v5;
      }

      if ((result & 0x22) != 0)
      {
        v6 = v2 | 0x22;
      }

      else
      {
        v6 = v2;
      }

      if ((result & 0x48) != 0)
      {
        v6 |= 0x48uLL;
      }

      if ((a2 & 0x18) != 0)
      {
        return v6;
      }

      else
      {
        return v2;
      }
    }
  }

  return result;
}

double _UIFocusMapDistanceToRegionBoundary(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, CGFloat a7, CGFloat a8, CGFloat a9, CGFloat a10)
{
  v17 = a2;
  v19 = a3;
  [a6 snapshotFrameForRegion:a1];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = [v19 heading];
  v29 = v28;
  if (a4)
  {
    if (a4 != 1)
    {
      v36 = 1.79769313e308;
      goto LABEL_27;
    }

    v62.origin.x = v21;
    v62.origin.y = v23;
    v62.size.width = v25;
    v62.size.height = v27;
    MidX = CGRectGetMidX(v62);
    v63.origin.x = v21;
    v63.origin.y = v23;
    v63.size.width = v25;
    v63.size.height = v27;
    MidY = CGRectGetMidY(v63);
    if ((v17 & 0x10) != 0)
    {
      goto LABEL_10;
    }

    if ((v17 & 0x20) != 0 && (v29 & 1) != 0 || (v17 & 0x40) != 0 && (v29 & 2) != 0)
    {
      v31 = 2;
    }

    else
    {
      v55 = (v17 & 0x20) == 0;
      if ((v29 & 2) == 0)
      {
        v55 = 1;
      }

      v31 = 1;
      if ((((v17 & 0x40) != 0) & v29) == 0 && v55)
      {
        v56 = v29 & 0x218;
        v57 = (v17 & 0x40) == 0 || v56 == 0;
        v58 = v57;
        v31 = 8;
        if ((((v29 & 0x124) != 0) & (v17 >> 5)) == 0 && v58)
        {
          v59 = (v17 & 0x20) == 0 || v56 == 0;
          v60 = v59;
          v31 = 4;
          if ((((v29 & 0x124) != 0) & (v17 >> 6)) == 0 && v60)
          {
            goto LABEL_10;
          }
        }
      }
    }

    MidX = _UIRectDeparturePointAlongFocusHeading(v31, v21, v23, v25, v27);
    MidY = v32;
LABEL_10:
    v33 = MidY;
    v64.origin.x = a7;
    v64.origin.y = a8;
    v64.size.width = a9;
    v64.size.height = a10;
    v34 = CGRectGetMidX(v64);
    v65.origin.x = a7;
    v65.origin.y = a8;
    v65.size.width = a9;
    v65.size.height = a10;
    v35 = CGRectGetMidY(v65);
    v36 = hypot(MidX - v34, v33 - v35);
    goto LABEL_27;
  }

  v37 = _UIRectDeparturePointAlongFocusHeading(v28, a7, a8, a9, a10);
  v39 = v38;
  v40 = (v29 & 3) != 0;
  if ((v29 & 0xC) == 0)
  {
    v40 = 0;
  }

  v41 = a5 == 2 && v40;
  if ((v17 & 0x10) != 0 || v41)
  {
    v66.origin.x = v21;
    v66.origin.y = v23;
    v66.size.width = v25;
    v66.size.height = v27;
    v47 = CGRectGetMidX(v66);
    v67.origin.x = v21;
    v67.origin.y = v23;
    v67.size.width = v25;
    v67.size.height = v27;
    v23 = CGRectGetMidY(v67);
    v21 = v47;
  }

  else
  {
    if ((v17 & 0x20) != 0)
    {
      v46 = (v29 >> 1) & 0x114 | (2 * v29) & 0x228 | (__rbit32(v29) >> 30);
      v42 = v21;
      v43 = v23;
      v44 = v25;
      v45 = v27;
    }

    else
    {
      if ((v17 & 0x40) == 0)
      {
        goto LABEL_25;
      }

      v42 = v21;
      v43 = v23;
      v44 = v25;
      v45 = v27;
      LOBYTE(v46) = v29;
    }

    v21 = _UIRectDeparturePointAlongFocusHeading(v46, v42, v43, v44, v45);
    v23 = v48;
  }

LABEL_25:
  _UIPointAxisAlignedDistanceAlongFocusHeading(v29, v37, v39, v21, v23);
  v36 = v49;
  if (v41)
  {
    v50 = atan2(v23 - v39, v21 - v37);
    [v19 _velocity];
    v52 = v51;
    [v19 _velocity];
    v36 = v36 * (vabdd_f64(atan2(v52, v53), v50) / 0.785398163 + 1.0);
  }

LABEL_27:

  return round(v36);
}

void _UIPointAxisAlignedDistanceAlongFocusHeading(char a1, double a2, double a3, double a4, double a5)
{
  if ((a1 & 3) != 0 && (a1 & 0xC) != 0)
  {
    hypot(a4 - a2, a5 - a3);
    _UIVectorForFocusHeading(a1);
  }
}

void sub_188DDD830(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

unint64_t _UIRectEdgeFromUIScrollAccessoryEdge(unint64_t a1, void *a2)
{
  v3 = a2;
  if (a1 <= 2)
  {
    if (a1 < 2)
    {
      v4 = _UIScrollAccessoryEffectiveEdge(a1, v3);
      a1 = _UIRectEdgeFromUIScrollAccessoryEdge(v4, v3);
      goto LABEL_12;
    }

    if (a1 == 2)
    {
      a1 = 1;
      goto LABEL_12;
    }

LABEL_11:
    a1 = 0;
    goto LABEL_12;
  }

  if (a1 == 3)
  {
    a1 = 2;
    goto LABEL_12;
  }

  if (a1 != 4)
  {
    if (a1 == 5)
    {
      a1 = 8;
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_12:

  return a1;
}

id _UIParentCoordinateSpaceForFocusItem(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 parentFocusEnvironment];
  v3 = [v2 focusItemContainer];
  v4 = [v3 coordinateSpace];

  if (!v4)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v6 = __UIFaultDebugAssertLog();
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_6;
      }

      v7 = [v1 debugDescription];
      v8 = [v1 parentFocusEnvironment];
      v9 = [v8 debugDescription];
      v10 = [v1 parentFocusEnvironment];
      v11 = [v10 focusItemContainer];
      v12 = [v11 debugDescription];
      v14 = 138412802;
      v15 = v7;
      v16 = 2112;
      v17 = v9;
      v18 = 2112;
      v19 = v12;
      _os_log_fault_impl(&dword_188A29000, v6, OS_LOG_TYPE_FAULT, "UIFocusItem: %@ with parentFocusEnvironment: %@  focusItemContainer: %@ has no coordinate space.", &v14, 0x20u);
    }

    else
    {
      v5 = *(__UILogGetCategoryCachedImpl("Assert", &_UIParentCoordinateSpaceForFocusItem___s_category) + 8);
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

      v6 = v5;
      v7 = [v1 debugDescription];
      v8 = [v1 parentFocusEnvironment];
      v9 = [v8 debugDescription];
      v10 = [v1 parentFocusEnvironment];
      v11 = [v10 focusItemContainer];
      v12 = [v11 debugDescription];
      v14 = 138412802;
      v15 = v7;
      v16 = 2112;
      v17 = v9;
      v18 = 2112;
      v19 = v12;
      _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_ERROR, "UIFocusItem: %@ with parentFocusEnvironment: %@  focusItemContainer: %@ has no coordinate space.", &v14, 0x20u);
    }

LABEL_6:
  }

LABEL_7:

  return v4;
}

uint64_t _UIFocusEnvironmentIsFocusedOrContainsFocus(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"BOOL _UIFocusEnvironmentIsFocusedOrContainsFocus(__strong id<UIFocusEnvironment> _Nonnull)"];
    [v7 handleFailureInFunction:v8 file:@"UIFocusEnvironment.m" lineNumber:137 description:{@"Invalid parameter not satisfying: %@", @"environment"}];
  }

  v2 = [UIFocusSystem focusSystemForEnvironment:v1];
  if (_UIFocusEnvironmentUseLegacyIsFocusedOrContainsFocusLogic())
  {
    v3 = [v2 focusedItem];
    v4 = v3;
    if (v3 == v1)
    {
      IsAncestorOfEnvironment = 1;
    }

    else if (v3)
    {
      IsAncestorOfEnvironment = _UIFocusEnvironmentIsAncestorOfEnvironment(v1, v3);
    }

    else
    {
      IsAncestorOfEnvironment = 0;
    }
  }

  else
  {
    IsAncestorOfEnvironment = [v2 _focusedItemIsContainedInEnvironment:v1 includeSelf:1];
  }

  return IsAncestorOfEnvironment;
}

uint64_t _UIFocusItemScrollableContainerCanScrollX(void *a1)
{
  v1 = a1;
  if (_UIFocusItemScrollableContainerIsScrollViewOrRespondsToSelector(v1, sel__focusCanScrollX))
  {
    v2 = [v1 _focusCanScrollX];
  }

  else
  {
    [v1 contentSize];
    v4 = v3;
    [v1 visibleSize];
    v2 = v4 > v5;
  }

  return v2;
}

double _UIFocusItemScrollableContainerScrollableAreaInsets(void *a1)
{
  v1 = a1;
  v2 = 0.0;
  if (_UIFocusItemScrollableContainerIsScrollViewOrRespondsToSelector(v1, sel__focusScrollableAreaInsets))
  {
    [v1 _focusScrollableAreaInsets];
    v2 = v3;
  }

  return v2;
}

id _UIFocusItemScrollableContainerScrollBoundaryMetricsForItem(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 scrollableContainer];
  if (_UIFocusItemScrollableContainerIsScrollViewOrRespondsToSelector(v5, sel__focusScrollBoundaryMetricsForItem_))
  {
    [v5 _focusScrollBoundaryMetricsForItem:v4];
  }

  else
  {
    _UIFocusItemScrollableContainerDefaultScrollBoundaryMetricsForItem(v3, v4);
  }
  v6 = ;

  return v6;
}

uint64_t _UIFocusItemScrollableContainerScrollOffsetResolverTypeForFocusMovement(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 scrollableContainer];
  if (_UIFocusItemScrollableContainerIsScrollViewOrRespondsToSelector(v5, sel__focusScrollOffsetResolverForFocusMovement_))
  {
    v6 = [v5 _focusScrollOffsetResolverForFocusMovement:v4];
  }

  else
  {
    v6 = _UIFocusItemScrollableContainerDefaultScrollOffsetResolverTypeForFocusMovement(v3, v4);
  }

  v7 = v6;

  return v7;
}

uint64_t _UIFocusItemScrollableContainerIsScrollViewOrRespondsToSelector(void *a1, uint64_t a2)
{
  v2 = a1;
  if ([v2 __isKindOfUIScrollView])
  {
    v3 = 1;
  }

  else
  {
    v3 = objc_opt_respondsToSelector();
  }

  return v3 & 1;
}

uint64_t _UIFocusItemScrollableContainerDefaultScrollOffsetResolverTypeForFocusMovement(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (_UIInternalPreferencesRevisionOnce != -1)
  {
    dispatch_once(&_UIInternalPreferencesRevisionOnce, &__block_literal_global_5_11);
  }

  v5 = _UIInternalPreferencesRevisionVar;
  if (_UIInternalPreferencesRevisionVar < 1 || (v18 = _UIInternalPreference_B519_RotaryScrollCentering, _UIInternalPreferencesRevisionVar == _UIInternalPreference_B519_RotaryScrollCentering))
  {
    v6 = 1;
  }

  else
  {
    do
    {
      v6 = v5 >= v18;
      if (v5 < v18)
      {
        break;
      }

      _UIInternalPreferenceSync(v5, &_UIInternalPreference_B519_RotaryScrollCentering, @"B519_RotaryScrollCentering", _UIInternalPreferenceUpdateBool);
      v18 = _UIInternalPreference_B519_RotaryScrollCentering;
    }

    while (v5 != _UIInternalPreference_B519_RotaryScrollCentering);
  }

  if (byte_1EA95E0EC)
  {
    v7 = 1;
  }

  else
  {
    v7 = v6;
  }

  if (v4 && v7 && [v4 _inputType] == 6)
  {
    v8 = [v3 owningEnvironment];
    v9 = [UIFocusSystem focusSystemForEnvironment:v8];
    v10 = [v9 focusedItem];

    if (v10)
    {
      v19 = 0;
      _UIFocusEnvironmentResolvedRotaryFocusMovementAxis(v10, &v19);
      v11 = v19;
      v12 = [v3 scrollableContainer];
      v13 = [v11 focusItemContainer];

      if (v12 == v13)
      {
        v16 = 3;
        goto LABEL_15;
      }
    }
  }

  v14 = [v3 owningEnvironment];
  v15 = [UIFocusSystem focusSystemForEnvironment:v14];
  v10 = [v15 behavior];

  v16 = [v10 defaultFocusScrollOffsetResolver];
LABEL_15:

  return v16;
}

id _UIFocusScrollOffsetResolverForOffsetResolverType(unint64_t a1)
{
  if (a1 > 3)
  {
    v2 = 0;
  }

  else
  {
    v2 = objc_opt_new();
  }

  return v2;
}

void _UIFocusRectWithMinimumSize(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  if (!CGRectIsNull(*&a1))
  {
    v8.origin.x = a1;
    v8.origin.y = a2;
    v8.size.width = a3;
    v8.size.height = a4;
    CGRectStandardize(v8);
  }
}

uint64_t _UIFocusItemScrollableContainerCanScrollY(void *a1)
{
  v1 = a1;
  if (_UIFocusItemScrollableContainerIsScrollViewOrRespondsToSelector(v1, sel__focusCanScrollY))
  {
    v2 = [v1 _focusCanScrollY];
  }

  else
  {
    [v1 contentSize];
    v4 = v3;
    [v1 visibleSize];
    v2 = v4 > v5;
  }

  return v2;
}

double _UIFocusItemScrollableContainerMinimumContentOffset(void *a1)
{
  v1 = a1;
  if ([v1 __isKindOfUIScrollView])
  {
    [v1 _minimumContentOffset];
    v3 = v2;
    [v1 _maxTopOffset];
  }

  else
  {
    v3 = *MEMORY[0x1E695EFF8];
  }

  return v3;
}

double _UIFocusItemScrollableContainerMaximumContentOffset(void *a1)
{
  v1 = a1;
  if ([v1 __isKindOfUIScrollView])
  {
    [v1 _maximumContentOffset];
    v3 = v2;
  }

  else
  {
    [v1 contentSize];
    v5 = v4;
    [v1 visibleSize];
    v3 = fmax(v5 - v6, 0.0);
  }

  return v3;
}

void _UIIntervalFromCGRect(uint64_t a1, double a2, double a3, double a4, double a5)
{
  if (CGRectIsNull(*&a2))
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"_UIInterval _UIIntervalFromCGRect(CGRect, UIAxis)"}];
    [v6 handleFailureInFunction:v7 file:@"_UIInterval.m" lineNumber:17 description:@"Unable to convert CGRectNull to _UIInterval."];
  }

  if ((a1 - 3) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"_UIInterval _UIIntervalFromCGRect(CGRect, UIAxis)"}];
    [v8 handleFailureInFunction:v9 file:@"_UIInterval.m" lineNumber:18 description:@"Need to specify one and only one axis."];
  }
}

_UIFocusScrollBoundaryMetrics *_UIFocusItemScrollableContainerDefaultScrollBoundaryMetricsForItem(void *a1, void *a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = [_UIFocusScrollBoundaryMetrics alloc];
  v6 = [v3 owningEnvironment];
  v7 = [v3 scrollableContainer];
  v8 = [(_UIFocusScrollBoundaryMetrics *)v5 initWithFocusItem:v4 owningEnvironment:v6 scrollableContainer:v7];

  if ([(_UIFocusScrollBoundaryMetrics *)v8 hasDisprovedAllRelevantAssumptions])
  {
    goto LABEL_35;
  }

  v9 = [v3 scrollableContainer];
  [(_UIFocusScrollBoundaryMetrics *)v8 minContentOffset];
  v11 = v10;
  v13 = v12;
  [v9 visibleSize];
  v15 = v14;
  v17 = v16;
  if ([(_UIFocusScrollBoundaryMetrics *)v8 shouldSearchX])
  {
    if ([(_UIFocusScrollBoundaryMetrics *)v8 isMinX])
    {
      [(_UIFocusScrollBoundaryMetrics *)v8 minContentOffset];
    }

    else
    {
      if (![(_UIFocusScrollBoundaryMetrics *)v8 isMaxX])
      {
LABEL_8:
        if ([(_UIFocusScrollBoundaryMetrics *)v8 isMinX]&& [(_UIFocusScrollBoundaryMetrics *)v8 isMaxX])
        {
          [v9 contentSize];
          v15 = v19;
        }

        goto LABEL_11;
      }

      [(_UIFocusScrollBoundaryMetrics *)v8 maxContentOffset];
    }

    v11 = v18;
    goto LABEL_8;
  }

LABEL_11:
  if ([(_UIFocusScrollBoundaryMetrics *)v8 shouldSearchY])
  {
    if ([(_UIFocusScrollBoundaryMetrics *)v8 isMinY])
    {
      [(_UIFocusScrollBoundaryMetrics *)v8 minContentOffset];
    }

    else
    {
      if (![(_UIFocusScrollBoundaryMetrics *)v8 isMaxY])
      {
LABEL_17:
        if ([(_UIFocusScrollBoundaryMetrics *)v8 isMinY]&& [(_UIFocusScrollBoundaryMetrics *)v8 isMaxY])
        {
          [v9 contentSize];
          v17 = v21;
        }

        goto LABEL_20;
      }

      [(_UIFocusScrollBoundaryMetrics *)v8 maxContentOffset];
    }

    v13 = v20;
    goto LABEL_17;
  }

LABEL_20:
  v22 = [v3 owningEnvironment];
  v23 = v9;
  if (!v23)
  {
    v33 = [MEMORY[0x1E696AAA8] currentHandler];
    v34 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSArray<id<UIFocusItem>> * _Nonnull _UIFocusItemContainerGatherAllExtantChildFocusableItemsInRect(id<UIFocusEnvironment>  _Nonnull __strong, id<UIFocusItemContainer>  _Nonnull __strong, CGRect)"}];
    [v33 handleFailureInFunction:v34 file:@"_UIFocusScrollManagerSupport.m" lineNumber:69 description:{@"Invalid parameter not satisfying: %@", @"container"}];
  }

  v24 = [MEMORY[0x1E695DF70] array];
  _UIFocusItemContainerGatherAllExtantChildFocusableItemsInRectIntoArray(v22, v23, v24, v11, v13, v15, v17);

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v25 = v24;
  v26 = [v25 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v36;
LABEL_24:
    v29 = 0;
    while (1)
    {
      if (*v36 != v28)
      {
        objc_enumerationMutation(v25);
      }

      v30 = *(*(&v35 + 1) + 8 * v29);
      v31 = !v30 || v30 == v4;
      if (!v31 && [(_UIFocusScrollBoundaryMetrics *)v8 checkOtherFocusItem:?])
      {
        break;
      }

      if (v27 == ++v29)
      {
        v27 = [v25 countByEnumeratingWithState:&v35 objects:v39 count:16];
        if (v27)
        {
          goto LABEL_24;
        }

        break;
      }
    }
  }

LABEL_35:

  return v8;
}

void _UIFocusItemContainerGatherAllExtantChildFocusableItemsInRectIntoArray(void *a1, void *a2, void *a3, double a4, double a5, double a6, double a7)
{
  v61 = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = a2;
  v15 = a3;
  v16 = v15;
  v55 = v14;
  if (!v14)
  {
    v50 = [MEMORY[0x1E696AAA8] currentHandler];
    v51 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _UIFocusItemContainerGatherAllExtantChildFocusableItemsInRectIntoArray(id<UIFocusEnvironment>  _Nonnull __strong, id<UIFocusItemContainer>  _Nonnull __strong, CGRect, NSMutableArray * _Nonnull __strong)"}];
    [v50 handleFailureInFunction:v51 file:@"_UIFocusScrollManagerSupport.m" lineNumber:35 description:{@"Invalid parameter not satisfying: %@", @"container"}];

    if (v16)
    {
      goto LABEL_3;
    }

LABEL_21:
    v52 = [MEMORY[0x1E696AAA8] currentHandler];
    v53 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _UIFocusItemContainerGatherAllExtantChildFocusableItemsInRectIntoArray(id<UIFocusEnvironment>  _Nonnull __strong, id<UIFocusItemContainer>  _Nonnull __strong, CGRect, NSMutableArray * _Nonnull __strong)"}];
    [v52 handleFailureInFunction:v53 file:@"_UIFocusScrollManagerSupport.m" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"array"}];

    goto LABEL_3;
  }

  if (!v15)
  {
    goto LABEL_21;
  }

LABEL_3:
  v17 = [_UIFocusSystemSceneComponent sceneComponentForEnvironment:v13];
  if (!_UIFocusItemContainerIsLazy(v14) || ([v17 coordinateSpace], v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "bounds"), v20 = v19, v22 = v21, v24 = v23, v26 = v25, v63.origin.x = _UIFocusEnvironmentContainerFrameInCoordinateSpace(v13, v18), v63.origin.y = v27, v63.size.width = v28, v63.size.height = v29, v62.origin.x = v20, v62.origin.y = v22, v62.size.width = v24, v62.size.height = v26, v30 = CGRectIntersectsRect(v62, v63), v18, v30))
  {
    v54 = v13;
    v31 = _UIFocusItemContainerExtantFocusItemsInRect(v14, a4, a5, a6, a7);
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v32 = [v31 countByEnumeratingWithState:&v56 objects:v60 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v57;
      do
      {
        for (i = 0; i != v33; ++i)
        {
          if (*v57 != v34)
          {
            objc_enumerationMutation(v31);
          }

          v36 = *(*(&v56 + 1) + 8 * i);
          if (_UIFocusEnvironmentIsEligibleForFocusInteraction(v36))
          {
            v37 = [v17 focusSystem];
            CanBecomeFocused = _UIFocusItemCanBecomeFocused(v36, v37);

            if (CanBecomeFocused)
            {
              [v16 addObject:v36];
            }

            else
            {
              v39 = [v36 focusItemContainer];
              if (v39)
              {
                v40 = [v55 coordinateSpace];
                v41 = [v39 coordinateSpace];
                [v40 convertRect:v41 toCoordinateSpace:{a4, a5, a6, a7}];
                v43 = v42;
                v45 = v44;
                v47 = v46;
                v49 = v48;

                _UIFocusItemContainerGatherAllExtantChildFocusableItemsInRectIntoArray(v36, v39, v16, v43, v45, v47, v49);
              }
            }
          }
        }

        v33 = [v31 countByEnumeratingWithState:&v56 objects:v60 count:16];
      }

      while (v33);
    }

    v13 = v54;
  }
}

uint64_t _UIFocusItemContainerIsLazy(void *a1)
{
  v1 = a1;
  if (_UIFocusItemIsViewOrRespondsToSelector(v1, sel__isLazyFocusItemContainer))
  {
    v2 = [v1 _isLazyFocusItemContainer];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id _UIFocusItemContainerExtantFocusItemsInRect(void *a1, double a2, double a3, double a4, double a5)
{
  v9 = a1;
  if (_UIFocusItemIsViewOrRespondsToSelector(v9, sel__extantFocusItemsInRect_))
  {
    [v9 _extantFocusItemsInRect:{a2, a3, a4, a5}];
  }

  else
  {
    [v9 focusItemsInRect:{a2, a3, a4, a5}];
  }
  v10 = ;

  return v10;
}

double _UIFocusItemScrollableContainerAdjustedContentOffsetToShowFocusItem(void *a1, void *a2, double a3, double a4)
{
  v7 = a1;
  v8 = a2;
  if ([v7 __isKindOfUIScrollView])
  {
    [v7 _adjustFocusContentOffset:v8 toShowFocusItemWithInfo:{a3, a4}];
    a3 = v9;
  }

  return a3;
}

void sub_188DE1D68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char a6)
{
  if (a6 == 1)
  {
  }
}

double UIEdgeInsetsRotate(double a1, double a2, double a3, double a4, double a5)
{
  if (fabs(a5 + -1.57079633) >= 0.00000011920929)
  {
    if (fabs(a5 + -3.14159265) >= 0.00000011920929)
    {
      if (fabs(a5 + 1.57079633) >= 0.00000011920929)
      {
        return a1;
      }

      else
      {
        return a4;
      }
    }

    else
    {
      return a3;
    }
  }

  return a2;
}

double static _UISoftOutlineConfiguration.latency.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = [v2 whiteColor];
  v4 = [v3 colorWithAlphaComponent_];

  v5 = [v2 whiteColor];
  *a1 = 2;
  *(a1 + 8) = v4;
  *(a1 + 16) = 0x4000000000000000;
  *(a1 + 24) = v5;
  result = 4.0;
  *(a1 + 32) = xmmword_18A657940;
  *(a1 + 48) = 0x3FA999999999999ALL;
  *(a1 + 56) = 1;
  return result;
}

void eventProfileCollectionCheckEnabled()
{
  v0 = _UIKitUserDefaults();
  v1 = [v0 objectForKey:@"EventTimingProfileCollection"];

  if (_NSIsNSString())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  if (![v3 length])
  {
    goto LABEL_9;
  }

  v4 = v3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v5 = getETPCollectionEnabledSymbolLoc_ptr;
  v12 = getETPCollectionEnabledSymbolLoc_ptr;
  if (!getETPCollectionEnabledSymbolLoc_ptr)
  {
    v6 = EventTimingProfileServiceInterfaceLibrary();
    v10[3] = dlsym(v6, "ETPCollectionEnabled");
    getETPCollectionEnabledSymbolLoc_ptr = v10[3];
    v5 = v10[3];
  }

  _Block_object_dispose(&v9, 8);
  if (v5)
  {
    v5(v4);

LABEL_9:
    return;
  }

  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"BOOL _ETPCollectionEnabled(NSString * _Nullable __strong)"];
  [v7 handleFailureInFunction:v8 file:@"_UIEventProfileCollection.m" lineNumber:26 description:{@"%s", dlerror()}];

  __break(1u);
}

void sub_188DE27B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

unint64_t sub_188DE27D8()
{
  result = qword_1EA930368;
  if (!qword_1EA930368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA930368);
  }

  return result;
}

unint64_t sub_188DE2830()
{
  result = qword_1EA930370;
  if (!qword_1EA930370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA930370);
  }

  return result;
}

unint64_t sub_188DE28B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C210, &qword_18A64E798);
    v3 = sub_18A4A8488();

    for (i = (a1 + 72); ; i += 6)
    {
      v5 = *(i - 5);
      v6 = *(i - 4);
      v7 = *(i - 3);
      v8 = *(i - 2);
      v10 = *(i - 1);
      v9 = *i;

      result = sub_188DCCD6C(v5, v6, v7, v8);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v3[6] + 32 * result);
      *v13 = v5;
      v13[1] = v6;
      v13[2] = v7;
      v13[3] = v8;
      v14 = (v3[7] + 16 * result);
      *v14 = v10;
      v14[1] = v9;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void sub_188DE29D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v8 = v7;
  v16 = *v7;
  v17 = sub_188DCCD6C(a3, a4, a5, a6);
  v19 = v16[2];
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_14;
  }

  v23 = v18;
  v24 = v16[3];
  if (v24 < v22 || (a7 & 1) == 0)
  {
    if (v24 >= v22 && (a7 & 1) == 0)
    {
      v25 = v17;
      sub_188FA8100();
      v17 = v25;
      goto LABEL_8;
    }

    sub_188DE32C0(v22, a7 & 1);
    v17 = sub_188DCCD6C(a3, a4, a5, a6);
    if ((v23 & 1) != (v26 & 1))
    {
LABEL_14:
      sub_18A4A87A8();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v27 = *v8;
  if (v23)
  {
    v28 = (v27[7] + 16 * v17);
    *v28 = a1;
    v28[1] = a2;
  }

  else
  {
    sub_188DE35A4(v17, a3, a4, a5, a6, a1, a2, v27);
  }
}

BOOL _UIGetDebuggingOverlayEnabled()
{
  if (_UIInternalPreferencesRevisionOnce != -1)
  {
    dispatch_once(&_UIInternalPreferencesRevisionOnce, &__block_literal_global_5_11);
  }

  v0 = _UIInternalPreferencesRevisionVar;
  if (_UIInternalPreferencesRevisionVar < 1 || (v3 = _UIInternalPreference_DebuggingOverlayEnabled, _UIInternalPreferencesRevisionVar == _UIInternalPreference_DebuggingOverlayEnabled))
  {
    v1 = 0;
  }

  else
  {
    do
    {
      v1 = v0 < v3;
      if (v0 < v3)
      {
        break;
      }

      _UIInternalPreferenceSync(v0, &_UIInternalPreference_DebuggingOverlayEnabled, @"DebuggingOverlayEnabled", _UIInternalPreferenceUpdateBool);
      v3 = _UIInternalPreference_DebuggingOverlayEnabled;
    }

    while (v0 != _UIInternalPreference_DebuggingOverlayEnabled);
  }

  return byte_1ED48B66C && v1;
}

Class __getCARSessionStatusClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED4A0900)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __CarKitLibraryCore_block_invoke_0;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E711FD28;
    v8 = 0;
    qword_1ED4A0900 = _sl_dlopen();
  }

  if (!qword_1ED4A0900)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *CarKitLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"_UICarPlaySession.m" lineNumber:16 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("CARSessionStatus");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCARSessionStatusClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"_UICarPlaySession.m" lineNumber:17 description:{@"Unable to find class %s", "CARSessionStatus"}];

LABEL_10:
    __break(1u);
  }

  qword_1ED4A08F8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *CarKitLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!CarKitLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __CarKitLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E710CE28;
    v6 = 0;
    CarKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = CarKitLibraryCore_frameworkLibrary;
  if (!CarKitLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *CarKitLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"UIScreen.m" lineNumber:107 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

unint64_t sub_188DE3204()
{
  result = qword_1EA930360;
  if (!qword_1EA930360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA930360);
  }

  return result;
}

unint64_t sub_188DE3268()
{
  type metadata accessor for _UISceneConnectionOptionDefinitionRegistry();
  v0 = swift_allocObject();
  result = sub_188DE28B8(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = result;
  qword_1EA994DD8 = v0;
  return result;
}

void sub_188DE32C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C210, &qword_18A64E798);
  v37 = v4;
  v6 = sub_18A4A8468();
  v7 = v6;
  if (*(v5 + 16))
  {
    v35 = v2;
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 56);
      v22 = (*(v5 + 48) + 32 * v20);
      v23 = *v22;
      v24 = v22[1];
      v25 = v22[3];
      v39 = v22[2];
      v38 = *(v21 + 16 * v20);
      if ((v37 & 1) == 0)
      {
      }

      sub_18A4A8888();
      sub_18A4A7348();
      sub_18A4A7348();
      v26 = sub_18A4A88E8();
      v27 = -1 << *(v7 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 32 * v15);
      *v16 = v23;
      v16[1] = v24;
      v16[2] = v39;
      v16[3] = v25;
      *(*(v7 + 56) + 16 * v15) = v38;
      ++*(v7 + 16);
      v5 = v36;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

unint64_t sub_188DE35A4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  a8[(result >> 6) + 8] |= 1 << result;
  v8 = (a8[6] + 32 * result);
  *v8 = a2;
  v8[1] = a3;
  v8[2] = a4;
  v8[3] = a5;
  v9 = (a8[7] + 16 * result);
  *v9 = a6;
  v9[1] = a7;
  v10 = a8[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a8[2] = v12;
  }

  return result;
}

uint64_t sub_188DE3600(uint64_t a1)
{
  result = sub_188A34624(319, &qword_1EA92EFF8, off_1E70EA590);
  if (v2 <= 0x3F)
  {
    result = swift_getAssociatedTypeWitness();
    if (v3 <= 0x3F)
    {
      result = sub_188A34624(319, &qword_1ED48FD98, 0x1E698E5F0);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void __TIGetKeyboardFollowsEventDeferralTargetValue_block_invoke()
{
  v0 = [MEMORY[0x1E69D9680] sharedPreferencesController];
  [v0 _configureKey:@"KeyboardFollowsEventDeferralTarget" domain:@"com.apple.keyboard" defaultValue:MEMORY[0x1E695E110]];
}

uint64_t sub_188DE397C()
{
  v1 = v0;
  result = [v0 isOpaque];
  if (result)
  {
    v3 = [v0 backgroundColor];
    if (v3)
    {

      v4 = [v0 backgroundColor];
      v5 = [objc_opt_self() clearColor];
      v6 = v5;
      if (v4)
      {
        if (v5)
        {
          sub_188A34624(0, qword_1ED4913C0, off_1E70E96C8);
          v7 = sub_18A4A7C88();

          if (v7)
          {
            goto LABEL_9;
          }
        }

        else
        {
        }

        return 1;
      }

      if (v5)
      {

        return 1;
      }
    }

LABEL_9:
    v8 = [v1 layer];
    v9 = [v8 contents];

    if (!v9)
    {
      memset(v11, 0, sizeof(v11));
      sub_188A3F5FC(v11, &qword_1EA934050, qword_18A64CA10);
      return 0;
    }

    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188A55538(&v10, v11);
    sub_188A3F5FC(v11, &qword_1EA934050, qword_18A64CA10);
    return 1;
  }

  return result;
}

void sub_188DE3BBC(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, CGFloat a10@<D0>, CGFloat a11@<D1>, CGFloat a12@<D2>, CGFloat a13@<D3>, CGFloat a14@<D4>, CGFloat a15@<D5>, uint64_t a16)
{
  v186 = a8;
  v196 = a7;
  v182 = a6;
  v181 = a5;
  v213 = a9;
  v193 = a16;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9340A0, &qword_18A64BD18);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v194 = &v161 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v195 = &v161 - v28;
  v203 = sub_18A4A3EB8();
  v202 = *(v203 - 8);
  MEMORY[0x1EEE9AC00](v203);
  v201 = &v161 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v200 = &v161 - v31;
  v192 = sub_18A4A3CD8();
  v191 = *(v192 - 8);
  MEMORY[0x1EEE9AC00](v192);
  v189 = &v161 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v190 = &v161 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C110, &qword_18A64BD20);
  MEMORY[0x1EEE9AC00](v35 - 8);
  v180 = &v161 - v36;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9340B0, &qword_18A64BD28);
  v177 = *(v174 - 8);
  MEMORY[0x1EEE9AC00](v174);
  v179 = &v161 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = v37;
  MEMORY[0x1EEE9AC00](v38);
  v187 = &v161 - v39;
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C120, &qword_18A64BD30);
  v176 = *(v185 - 8);
  MEMORY[0x1EEE9AC00](v185);
  v184 = &v161 - v40;
  v173 = sub_18A4A3E48();
  v172 = *(v173 - 8);
  MEMORY[0x1EEE9AC00](v173);
  v183 = &v161 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9340C0, &qword_18A64BD38);
  MEMORY[0x1EEE9AC00](v42 - 8);
  v198 = &v161 - v43;
  v205 = sub_18A4A3E68();
  v204 = *(v205 - 8);
  v44 = *(v204 + 64);
  MEMORY[0x1EEE9AC00](v205);
  v175 = &v161 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v188 = &v161 - v46;
  v47 = sub_18A4A3CC8();
  v48 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v206 = &v161 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93EE80, &unk_18A66CB20);
  MEMORY[0x1EEE9AC00](v50 - 8);
  v52 = &v161 - v51;
  v210 = sub_18A4A3BA8();
  v209 = *(v210 - 8);
  MEMORY[0x1EEE9AC00](v210);
  v199 = &v161 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v54);
  v197 = &v161 - v55;
  MEMORY[0x1EEE9AC00](v56);
  v211 = &v161 - v57;
  v208 = sub_18A4A4088();
  v207 = *(v208 - 8);
  MEMORY[0x1EEE9AC00](v208);
  v212 = &v161 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = swift_allocObject();
  *(v59 + 16) = a3;
  *(v59 + 24) = a14;
  *(v59 + 32) = a15;
  v60 = a3;
  v61 = sub_18A4A33E8();
  v62 = [v61 containsObject_];

  if (v62)
  {
    (*(v48 + 56))(v213, 1, 1, v47);

    goto LABEL_10;
  }

  v168 = v44;
  v63 = v213;
  v169 = v59;
  v170 = v48;
  v171 = v47;
  v64 = sub_18A4A33E8();
  [v64 addObject_];

  if (([a2 isHidden] & 1) != 0 || (objc_msgSend(a2, sel_alpha), _UIViewIsFullyTransparentGivenAlpha(v65)) || (v66 = objc_msgSend(a2, sel_layer), v167 = a2, v67 = v66, v68 = objc_msgSend(v66, sel_disableUpdateMask), v67, (v68 & 0x10) != 0))
  {
    (*(v170 + 56))(v63, 1, 1, v171);

LABEL_10:

    goto LABEL_51;
  }

  sub_18A4A3448();
  __swift_project_boxed_opaque_existential_0(&v216, v217);
  v69 = v212;
  sub_18A4A3E88();
  __swift_destroy_boxed_opaque_existential_0Tm(&v216);
  if ((sub_18A4A4028() & 1) != 0 && (v220.origin.x = a10, v220.origin.y = a11, v220.size.width = a12, v220.size.height = a13, CGRectIsEmpty(v220)))
  {
    (*(v207 + 8))(v69, v208);
    (*(v170 + 56))(v213, 1, 1, v171);
  }

  else
  {
    sub_188DE55B8(a1, v52, a10, a11, a12, a13);
    v70 = v209;
    v71 = v210;
    v72 = (*(v209 + 48))(v52, 1, v210);
    v73 = v213;
    v166 = v60;
    if (v72 == 1)
    {
      (*(v207 + 8))(v69, v208);
      sub_188A3F5FC(v52, &unk_1EA93EE80, &unk_18A66CB20);
      (*(v170 + 56))(v73, 1, 1, v171);
    }

    else
    {
      v161 = a1;
      (*(v70 + 32))(v211, v52, v71);
      if (sub_18A4A3FC8())
      {
        v74 = v167;
        [v167 bounds];
        v221.origin.x = [(UIView *)v74 _convertRect:v166 toViewInSameWindow:v75, v76, v77, v78];
        v222 = CGRectOffset(v221, a14, a15);
        x = v222.origin.x;
        y = v222.origin.y;
        width = v222.size.width;
        height = v222.size.height;
      }

      else
      {
        v79 = *(MEMORY[0x1E695F050] + 8);
        x = *MEMORY[0x1E695F050];
        y = v79;
        v80 = *(MEMORY[0x1E695F050] + 24);
        width = *(MEMORY[0x1E695F050] + 16);
        height = v80;
      }

      v81 = v204;
      v82 = v168;
      if (sub_18A4A3FC8())
      {
        v223.origin.x = [(UIView *)v167 _convertRect:v166 toViewInSameWindow:a10, a11, a12, a13];
        *v83.n128_u64 = CGRectOffset(v223, a14, a15);
      }

      v87 = *(v70 + 16);
      v87(v197, v211, v71, v83, v84, v85, v86);
      v88 = MEMORY[0x1E69E7CC0];
      sub_18A4A3738();
      v218 = v88;
      v89 = v198;
      sub_18A4A3E98();
      v90 = v89;
      v91 = v89;
      v92 = v205;
      if ((*(v81 + 48))(v91, 1, v205) == 1)
      {
        sub_188A3F5FC(v90, &unk_1EA9340C0, &qword_18A64BD38);
        v93 = v169;
      }

      else
      {
        v168 = v87;
        v197 = (v70 + 16);
        v94 = v188;
        v198 = *(v81 + 32);
        (v198)(v188, v90, v92);
        v95 = UIView._appIntentsIntelligenceProvider.getter(&v214);
        if (v215)
        {
          *&x = v81 + 32;
          sub_188E4DA48(&v214, &v216);
          __swift_project_boxed_opaque_existential_0(&v216, v217);
          v96 = sub_18A4A41E8();
          v98 = v94;
          if (v97 >> 60 != 15)
          {
            v99 = v96;
            v100 = v97;
            sub_188DBF7D8(v96, v97);
            v101 = v183;
            sub_18A4A3E38();
            if (sub_18A4A3E58())
            {
              __swift_project_boxed_opaque_existential_0(&v216, v217);
              sub_18A4A41F8();
              sub_18A4A3E28();
            }

            v102 = v172;
            v103 = v187;
            v104 = v101;
            v105 = v173;
            (*(v172 + 16))(v187, v104, v173);
            (*(v102 + 56))(v103, 0, 1, v105);
            sub_18A4A3848();
            sub_18A4A3978();
            v106 = sub_188DBF840(v99, v100);
            (*(v102 + 8))(v183, v105, v106);
          }

          __swift_project_boxed_opaque_existential_0(&v216, v217);
          v107 = v98;
          if (sub_18A4A4218())
          {
            v108 = v184;
            sub_18A4A3968();
            v109 = v187;
            v110 = v185;
            sub_18A4A3828();
            (*(v176 + 8))(v108, v110);
            v184 = "Element type\nExpected ";
            v111 = sub_18A4A6E88();
            v112 = v180;
            (*(*(v111 - 8) + 56))(v180, 1, 1, v111);
            sub_188E4DA78(&v216, &v214);
            v113 = v204 + 16;
            v114 = v175;
            v115 = v205;
            (*(v204 + 16))(v175, v107, v205);
            v116 = v109;
            v117 = v179;
            sub_188A3F29C(v116, v179, &unk_1EA9340B0, &qword_18A64BD28);
            v118 = (*(v113 + 64) + 64) & ~*(v113 + 64);
            v119 = (v82 + *(v177 + 80) + v118) & ~*(v177 + 80);
            v120 = swift_allocObject();
            sub_188E4DA48(&v214, (v120 + 16));
            (v198)(v120 + v118, v114, v115);
            sub_188A3F704(v117, v120 + v119, &unk_1EA9340B0, &qword_18A64BD28);
            v121 = sub_18A4A3958();
            sub_18A4A3818();
            sub_188A3F5FC(v112, &unk_1EA93C110, &qword_18A64BD20);
            v121(&v214, 0);
            sub_188A3F5FC(v187, &unk_1EA9340B0, &qword_18A64BD28);
          }

          __swift_project_boxed_opaque_existential_0(&v216, v217);
          v122 = v167;
          [v167 bounds];
          sub_18A4A4108();
          KeyPath = swift_getKeyPath();
          MEMORY[0x1EEE9AC00](KeyPath);
          v93 = v169;
          *(&v161 - 4) = v196;
          *(&v161 - 3) = v93;
          *(&v161 - 2) = v122;
          v124 = sub_18A4A75A8();

          sub_188DFA234(v124);
          (*(v204 + 8))(v107, v205);
          __swift_destroy_boxed_opaque_existential_0Tm(&v216);
          v71 = v210;
          v70 = v209;
        }

        else
        {
          (*(v81 + 8))(v94, v92, v95);
          sub_188A3F5FC(&v214, &qword_1EA934060, &qword_18A64BCD8);
          v93 = v169;
        }

        v87 = v168;
      }

      v125 = v199;
      (v87)(v199, v211, v71);
      v126 = (*(v70 + 88))(v125, v71);
      v127 = v170;
      if (v126 == *MEMORY[0x1E69DBBE0])
      {
        (*(v70 + 96))(v125, v71);
        v128 = v191;
        v129 = v190;
        v130 = v192;
        (*(v191 + 32))(v190, v125, v192);
        (*(v128 + 16))(v189, v129, v130);
        v131 = objc_allocWithZone(sub_18A4A3498());
        v132 = sub_18A4A3488();
        [v167 _intelligenceCollectRemoteContentIn_remoteContextWrapper_];

        (*(v128 + 8))(v129, v130);
      }

      else
      {
        v133 = (*(v70 + 8))(v125, v71);
        MEMORY[0x1EEE9AC00](v133);
        *(&v161 - 8) = v167;
        *(&v161 - 7) = a10;
        *(&v161 - 6) = a11;
        *(&v161 - 5) = a12;
        *(&v161 - 4) = a13;
        v134 = v196;
        *(&v161 - 3) = v161;
        *(&v161 - 2) = v134;
        *(&v161 - 1) = v93;
        v135 = sub_18A4A33D8();
        sub_188DFA234(v135);
      }

      v136 = v213;
      sub_18A4A3798();
      if (sub_18A4A4018())
      {
        v217 = sub_188A34624(0, &qword_1ED48F680, off_1E70EAD78);
        *&v216 = v167;
        v137 = v167;
        [v137 _intelligenceBaseClass];
        ObjCClassMetadata = swift_getObjCClassMetadata();
        sub_188E4D924(&v216, ObjCClassMetadata);
        __swift_destroy_boxed_opaque_existential_0Tm(&v216);
        sub_18A4A3898();
        v139 = [(UIView *)v137 __viewDelegate];
        if (v139)
        {
          v140 = v139;
          v141 = sub_188A34624(0, &qword_1ED48D5A0, off_1E70EAD90);
          v217 = v141;
          *&v216 = v140;
          v142 = v140;
          sub_188E4D924(&v216, v141);
          __swift_destroy_boxed_opaque_existential_0Tm(&v216);
          sub_18A4A3948();
        }
      }

      if (sub_18A4A4048())
      {
        v143 = _UIGetAccessibilityLabelSafe(v167);
        if (v143)
        {
          v144 = v143;
          sub_18A4A7288();
        }

        sub_18A4A38B8();
      }

      v145 = v200;
      sub_18A4A3F88();
      v146 = v202;
      v147 = v201;
      v148 = v203;
      (*(v202 + 104))(v201, *MEMORY[0x1E69DBCB8], v203);
      v149 = sub_18A4A3EA8();
      v150 = *(v146 + 8);
      v150(v147, v148);
      v151 = v206;
      v150(v145, v148);
      v152 = v171;
      if (v149)
      {
        v153 = [(UIView *)v167 __viewDelegate];
        if (v153)
        {
          v154 = v153;
          v155 = [v153 userActivity];
          sub_18A4A3D08();
          sub_18A4A37D8();
        }

        v156 = v194;
        sub_18A4A37C8();
        v157 = sub_18A4A3CF8();
        v158 = (*(*(v157 - 8) + 48))(v156, 1, v157);
        sub_188A3F5FC(v156, &unk_1EA9340A0, &qword_18A64BD18);
        if (v158 == 1)
        {
          v159 = [v167 userActivity];
          sub_18A4A3D08();
          sub_18A4A37D8();
        }
      }

      v160 = v212;
      if (sub_18A4A3FE8())
      {
        sub_18A4A3B88();
        (*(v127 + 8))(v151, v152);
        (*(v209 + 8))(v211, v210);
        (*(v207 + 8))(v160, v208);
      }

      else
      {
        (*(v209 + 8))(v211, v210);
        (*(v207 + 8))(v160, v208);
        (*(v127 + 32))(v136, v151, v152);
        (*(v127 + 56))(v136, 0, 1, v152);
      }
    }
  }

LABEL_51:
}

void sub_188DE549C(void *a1@<X8>)
{
  sub_18A4A3758();
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
}

uint64_t sub_188DE5578()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_188DE55B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v7 = v6;
  v94 = a2;
  v13 = sub_18A4A3BA8();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v87 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9340D0, &qword_18A64BD80);
  MEMORY[0x1EEE9AC00](v16);
  v96 = &v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v80 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93EE80, &unk_18A66CB20);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v84 = &v80 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v83 = &v80 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v86 = &v80 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v93 = &v80 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v95 = &v80 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v80 - v32;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v80 - v35;
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v80 - v38;
  v40 = [(UIView *)v7 __viewDelegate];
  v88 = v7;
  v89 = a1;
  v91 = v16;
  v92 = v40;
  if (!v40)
  {
    v47 = *MEMORY[0x1E69DBBC0];
    goto LABEL_13;
  }

  v82 = v33;
  MEMORY[0x1EEE9AC00](v40);
  *(&v80 - 6) = v41;
  *(&v80 - 5) = a3;
  *(&v80 - 4) = a4;
  *(&v80 - 3) = a5;
  *(&v80 - 2) = a6;
  *(&v80 - 1) = a1;
  v42 = v14;
  v43 = v41;
  sub_18A4A33F8();
  v44 = *(v42 + 104);
  v90 = *MEMORY[0x1E69DBBC0];
  v44(v36);
  (*(v42 + 56))(v36, 0, 1, v13);
  v45 = *(v16 + 48);
  sub_188A3F29C(v39, v20, &unk_1EA93EE80, &unk_18A66CB20);
  sub_188A3F29C(v36, &v20[v45], &unk_1EA93EE80, &unk_18A66CB20);
  v85 = v42;
  v46 = *(v42 + 48);
  if (v46(v20, 1, v13) != 1)
  {
    v48 = v82;
    sub_188A3F29C(v20, v82, &unk_1EA93EE80, &unk_18A66CB20);
    if (v46(&v20[v45], 1, v13) != 1)
    {
      v50 = v85;
      v51 = v87;
      v52 = (*(v85 + 32))(v87, &v20[v45], v13);
      sub_188DF90E0(v52);
      LODWORD(v81) = sub_18A4A7248();

      v53 = *(v50 + 8);
      v53(v51, v13);
      sub_188A3F5FC(v36, &unk_1EA93EE80, &unk_18A66CB20);
      v53(v48, v13);
      sub_188A3F5FC(v20, &unk_1EA93EE80, &unk_18A66CB20);
      if (v81)
      {
        goto LABEL_12;
      }

LABEL_10:
      v49 = v39;
LABEL_21:
      v63 = v94;
      return sub_188A3F704(v49, v63, &unk_1EA93EE80, &unk_18A66CB20);
    }

    sub_188A3F5FC(v36, &unk_1EA93EE80, &unk_18A66CB20);
    (*(v85 + 8))(v48, v13);
LABEL_9:
    sub_188A3F5FC(v20, &unk_1EA9340D0, &qword_18A64BD80);
    goto LABEL_10;
  }

  sub_188A3F5FC(v36, &unk_1EA93EE80, &unk_18A66CB20);

  if (v46(&v20[v45], 1, v13) != 1)
  {

    goto LABEL_9;
  }

  sub_188A3F5FC(v20, &unk_1EA93EE80, &unk_18A66CB20);
LABEL_12:
  v40 = sub_188A3F5FC(v39, &unk_1EA93EE80, &unk_18A66CB20);
  v7 = v88;
  a1 = v89;
  v47 = v90;
  v14 = v85;
LABEL_13:
  MEMORY[0x1EEE9AC00](v40);
  *(&v80 - 6) = v7;
  *(&v80 - 5) = a3;
  *(&v80 - 4) = a4;
  *(&v80 - 3) = a5;
  *(&v80 - 2) = a6;
  *(&v80 - 1) = a1;
  v54 = v95;
  sub_18A4A33F8();
  v55 = *(v14 + 104);
  v56 = v93;
  v90 = v47;
  v85 = v14 + 104;
  v82 = v55;
  (v55)(v93, v47, v13);
  v81 = *(v14 + 56);
  v81(v56, 0, 1, v13);
  v57 = *(v91 + 48);
  v58 = v96;
  sub_188A3F29C(v54, v96, &unk_1EA93EE80, &unk_18A66CB20);
  sub_188A3F29C(v56, v58 + v57, &unk_1EA93EE80, &unk_18A66CB20);
  v59 = *(v14 + 48);
  if (v59(v58, 1, v13) == 1)
  {
    sub_188A3F5FC(v56, &unk_1EA93EE80, &unk_18A66CB20);
    if (v59(v96 + v57, 1, v13) == 1)
    {
      v60 = sub_188A3F5FC(v96, &unk_1EA93EE80, &unk_18A66CB20);
      goto LABEL_24;
    }

    goto LABEL_19;
  }

  v61 = v96;
  v62 = v86;
  sub_188A3F29C(v96, v86, &unk_1EA93EE80, &unk_18A66CB20);
  if (v59(v61 + v57, 1, v13) == 1)
  {

    sub_188A3F5FC(v93, &unk_1EA93EE80, &unk_18A66CB20);
    (*(v14 + 8))(v62, v13);
LABEL_19:
    sub_188A3F5FC(v96, &unk_1EA9340D0, &qword_18A64BD80);
LABEL_20:
    v49 = v95;
    goto LABEL_21;
  }

  v65 = v96;
  v66 = v96 + v57;
  v67 = v87;
  v68 = (*(v14 + 32))(v87, v66, v13);
  sub_188DF90E0(v68);
  v69 = sub_18A4A7248();
  v70 = *(v14 + 8);
  v70(v67, v13);
  sub_188A3F5FC(v93, &unk_1EA93EE80, &unk_18A66CB20);
  v70(v62, v13);
  v60 = sub_188A3F5FC(v65, &unk_1EA93EE80, &unk_18A66CB20);
  if ((v69 & 1) == 0)
  {

    goto LABEL_20;
  }

LABEL_24:
  if (v92)
  {
    MEMORY[0x1EEE9AC00](v60);
    v71 = v89;
    *(&v80 - 2) = v72;
    *(&v80 - 1) = v71;
    v73 = v72;
    v74 = v83;
    sub_18A4A33F8();

    if (v59(v74, 1, v13) != 1)
    {
      sub_188A3F5FC(v95, &unk_1EA93EE80, &unk_18A66CB20);

      v49 = v74;
      v63 = v94;
      return sub_188A3F704(v49, v63, &unk_1EA93EE80, &unk_18A66CB20);
    }

    v60 = sub_188A3F5FC(v74, &unk_1EA93EE80, &unk_18A66CB20);
  }

  MEMORY[0x1EEE9AC00](v60);
  v75 = v89;
  *(&v80 - 2) = v88;
  *(&v80 - 1) = v75;
  v77 = v76;
  v78 = v84;
  sub_18A4A33F8();

  sub_188A3F5FC(v95, &unk_1EA93EE80, &unk_18A66CB20);
  if (v59(v78, 1, v13) != 1)
  {
    v49 = v78;
    goto LABEL_21;
  }

  sub_188A3F5FC(v78, &unk_1EA93EE80, &unk_18A66CB20);
  v79 = v94;
  (v82)(v94, v90, v13);
  return (v81)(v79, 0, 1, v13);
}

BOOL sub_188DE6180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v124 = a4;
  v126 = a3;
  v125 = a2;
  v6 = sub_18A4A3BA8();
  v143 = *(v6 - 8);
  v144 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v142 = &v119[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v129 = sub_18A4A3CB8();
  v128 = *(v129 - 1);
  MEMORY[0x1EEE9AC00](v129);
  v127 = &v119[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_18A4A3ED8();
  v140 = *(v9 - 8);
  v141 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v138 = &v119[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v139 = &v119[-v12];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA940A30, &unk_18A66C220);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v135 = &v119[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v134 = &v119[-v16];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93EEB0, &qword_18A66CB90);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v132 = &v119[-v18];
  v19 = sub_18A4A34D8();
  MEMORY[0x1EEE9AC00](v19 - 8);
  v133 = &v119[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v131 = sub_18A4A3708();
  v130 = *(v131 - 8);
  MEMORY[0x1EEE9AC00](v131);
  v146 = &v119[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v147 = sub_18A4A42B8();
  v150 = *(v147 - 8);
  MEMORY[0x1EEE9AC00](v147);
  v123 = &v119[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v23);
  v136 = &v119[-v24];
  v122 = v25;
  MEMORY[0x1EEE9AC00](v26);
  v145 = &v119[-v27];
  v151 = sub_18A4A4088();
  v28 = *(v151 - 8);
  MEMORY[0x1EEE9AC00](v151);
  v30 = &v119[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93EAC0, &qword_18A66C230);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v33 = &v119[-v32];
  v34 = type metadata accessor for IntelligenceActivityItem(0);
  v35 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v37 = &v119[-((v36 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v119[-v39];
  v148 = a1;
  sub_18A4A3448();
  __swift_project_boxed_opaque_existential_0(&v152, v153);
  sub_18A4A3E88();
  sub_188DE71A0(v30, v33);
  v41 = *(v28 + 8);
  v137 = v30;
  v149 = v28 + 8;
  v41(v30, v151);
  v42 = __swift_destroy_boxed_opaque_existential_0Tm(&v152);
  v43 = (*(v35 + 48))(v33, 1, v34, v42);
  v44 = v43;
  if (v43 != 1)
  {
    v120 = v43;
    sub_189177330(v33, v40);
    v121 = v40;
    sub_189177394(v40, v37);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93EAC8, &qword_18A66C238);
    v47 = (v37 + *(v46 + 64));
    v49 = *v47;
    v48 = v47[1];
    v50 = *(v150 + 32);
    v51 = (v150 + 16);
    v52 = (v150 + 56);
    v53 = v37 + *(v46 + 48);
    if (EnumCaseMultiPayload == 1)
    {
      v54 = v136;
      v55 = v147;
      v50(v136, v53, v147);
      v56 = v48;
      v57 = v132;
      (*v51)(v132, v54, v55);
      (*v52)(v57, 0, 1, v55);
      v58 = sub_18A4A2968();
      v59 = *(*(v58 - 8) + 56);
      v59(v134, 1, 1, v58);
      v59(v135, 1, 1, v58);
      v60 = v133;
      sub_18A4A34C8();
      v61 = v49;
      v62 = v127;
      MEMORY[0x18CFDEBF0](v61, v56, v60);
      sub_18A4A3448();
      __swift_project_boxed_opaque_existential_0(&v152, v153);
      v63 = v137;
      sub_18A4A3E88();
      v64 = v139;
      sub_18A4A3F98();
      v41(v63, v151);
      v66 = v140;
      v65 = v141;
      v67 = v138;
      v68 = (*(v140 + 104))(v138, *MEMORY[0x1E69DBCD8], v141);
      sub_188DE9D14(v68);
      LOBYTE(v60) = sub_18A4A7248();
      v69 = *(v66 + 8);
      v69(v67, v65);
      v69(v64, v65);
      v70 = __swift_destroy_boxed_opaque_existential_0Tm(&v152);
      if (v60)
      {
        v71 = v128;
        v72 = v142;
        v73 = v129;
        (v128[2])(v142, v62, v129, v70);
        v75 = v143;
        v74 = v144;
        (*(v143 + 104))(v72, *MEMORY[0x1E69DBC00], v144);
        sub_18A4A3418();
        (*(v75 + 8))(v72, v74);
        (v71[1])(v62, v73);
        (*(v150 + 8))(v136, v55);
LABEL_8:
        v96 = v121;
LABEL_12:
        sub_1891780AC(v96);
        v44 = v120;
        return v44 != 1;
      }

      v97 = v128;
      v98 = v142;
      v99 = v129;
      (v128[2])(v142, v62, v129, v70);
      v101 = v143;
      v100 = v144;
      (*(v143 + 104))(v98, *MEMORY[0x1E69DBC00], v144);
      v102 = sub_18A4A3408();
      (*(v101 + 8))(v98, v100);

      v103 = v121;
      sub_189175F40(v124, v102);

      (v97[1])(v62, v99);
      (*(v150 + 8))(v136, v55);
    }

    else
    {
      v76 = v145;
      v77 = v147;
      v129 = *(v150 + 32);
      v50(v145, v53, v147);
      v78 = *v51;
      v79 = v132;
      v128 = v51;
      v127 = v78;
      (v78)(v132, v76, v77);
      (*v52)(v79, 0, 1, v77);
      v80 = sub_18A4A2968();
      v81 = *(*(v80 - 8) + 56);
      v81(v134, 1, 1, v80);
      v81(v135, 1, 1, v80);

      sub_18A4A34C8();
      v135 = v49;
      v136 = v48;
      sub_18A4A36E8();
      sub_18A4A3448();
      __swift_project_boxed_opaque_existential_0(&v152, v153);
      v82 = v137;
      sub_18A4A3E88();
      v83 = v139;
      sub_18A4A3FD8();
      v41(v82, v151);
      v85 = v140;
      v84 = v141;
      v86 = v138;
      v87 = (*(v140 + 104))(v138, *MEMORY[0x1E69DBCD8], v141);
      sub_188DE9D14(v87);
      LOBYTE(v81) = sub_18A4A7248();
      v88 = *(v85 + 8);
      v88(v86, v84);
      v88(v83, v84);
      v89 = __swift_destroy_boxed_opaque_existential_0Tm(&v152);
      if (v81)
      {

        v90 = v130;
        v91 = v142;
        v92 = v146;
        v93 = v131;
        (*(v130 + 16))(v142, v146, v131);
        v95 = v143;
        v94 = v144;
        (*(v143 + 104))(v91, *MEMORY[0x1E69DBB98], v144);
        sub_18A4A3418();
        (*(v95 + 8))(v91, v94);
        (*(v90 + 8))(v92, v93);
        (*(v150 + 8))(v145, v147);
        goto LABEL_8;
      }

      v104 = v142;
      (*(v130 + 16))(v142, v146, v131, v89);
      v106 = v143;
      v105 = v144;
      (*(v143 + 104))(v104, *MEMORY[0x1E69DBB98], v144);
      v107 = sub_18A4A3408();
      (*(v106 + 8))(v104, v105);
      sub_18A4A3448();
      __swift_project_boxed_opaque_existential_0(&v152, v153);
      sub_18A4A3E88();
      v108 = sub_18A4A3FF8();
      v41(v82, v151);
      v109 = __swift_destroy_boxed_opaque_existential_0Tm(&v152);
      v110 = v123;
      v111 = v147;
      (v127)(v123, v145, v147, v109);
      v112 = v150;
      v113 = (*(v150 + 80) + 24) & ~*(v150 + 80);
      v114 = (v122 + v113 + 7) & 0xFFFFFFFFFFFFFFF8;
      v115 = swift_allocObject();
      *(v115 + 16) = v107;
      (v129)(v115 + v113, v110, v111);
      *(v115 + v114) = v108;
      v116 = (v115 + ((v114 + 15) & 0xFFFFFFFFFFFFFFF8));
      v117 = v136;
      *v116 = v135;
      v116[1] = v117;

      v103 = v121;
      sub_189175F40(v126, v115);

      (*(v130 + 8))(v146, v131);
      (*(v112 + 8))(v145, v111);
    }

    v96 = v103;
    goto LABEL_12;
  }

  sub_188A3F5FC(v33, &qword_1EA93EAC0, &qword_18A66C230);
  return v44 != 1;
}

uint64_t type metadata accessor for IntelligenceActivityItem(uint64_t a1)
{
  result = qword_1EA9302F8;
  if (!qword_1EA9302F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_188DE71A0(uint64_t a1@<X0>, unint64_t a2@<X8>)
{
  v41 = a1;
  v42 = sub_18A4A42B8();
  v5 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v7 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = v36 - v10;
  v12 = [v3 activityItemsConfiguration];
  if (v12)
  {
    v13 = v12;
    ObjectType = swift_getObjectType();
    v15 = [v13 itemProvidersForActivityItemsConfiguration];
    sub_188A34624(0, &qword_1EA930218, 0x1E696ACA0);
    v16 = sub_18A4A7548();

    if (v16 >> 62)
    {
      goto LABEL_21;
    }

    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      while (1)
      {
        v38 = v13;
        v39 = a2;
        v36[1] = ObjectType;
        if ((v16 & 0xC000000000000001) != 0)
        {
          v17 = sub_188E49898(0, v16);
        }

        else
        {
          if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return;
          }

          v17 = *(v16 + 32);
        }

        v18 = v17;

        v37 = v18;
        v16 = [v18 registeredContentTypes];
        v19 = sub_18A4A7548();

        v20 = *(v19 + 16);
        if (!v20)
        {
LABEL_13:
          swift_unknownObjectRelease();

          v23 = type metadata accessor for IntelligenceActivityItem(0);
          (*(*(v23 - 8) + 56))(v39, 1, 1, v23);
          return;
        }

        a2 = 0;
        v40 = v5 + 16;
        ObjectType = v5 + 8;
        while (a2 < *(v19 + 16))
        {
          v21 = v42;
          (*(v5 + 16))(v11, v19 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * a2, v42);
          sub_18A4A4298();
          v22 = sub_18A4A42A8();
          v13 = *(v5 + 8);
          (v13)(v7, v21);
          if (v22)
          {

            v24 = v37;
            v25 = sub_189176AD4(v37);
            if (!v26)
            {
              v25 = sub_18A4A3DE8();
            }

            goto LABEL_19;
          }

          v16 = v41;
          if (sub_18A4A4068())
          {

            v24 = v37;
            v25 = sub_189176AD4(v37);
            if (!v26)
            {
              v25 = sub_18A4A3DF8();
            }

LABEL_19:
            v27 = v25;
            v28 = v26;
            swift_unknownObjectRelease();
            v29 = v39;
            v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93EAC8, &qword_18A66C238);
            v31 = *(v30 + 48);
            v32 = &v29[*(v30 + 64)];
            *v29 = v24;
            (*(v5 + 32))(&v29[v31], v11, v42);
            *v32 = v27;
            v32[1] = v28;
            v33 = type metadata accessor for IntelligenceActivityItem(0);
            swift_storeEnumTagMultiPayload();
            (*(*(v33 - 8) + 56))(v29, 0, 1, v33);
            return;
          }

          ++a2;
          (v13)(v11, v42);
          if (v20 == a2)
          {
            goto LABEL_13;
          }
        }

        __break(1u);
LABEL_21:
        if (sub_18A4A7F68() != 1)
        {
          break;
        }

        if (!sub_18A4A7F68())
        {

          swift_unknownObjectRelease();
          goto LABEL_25;
        }
      }
    }

    swift_unknownObjectRelease();

LABEL_25:
    v12 = 0;
  }

  v34 = type metadata accessor for IntelligenceActivityItem(v12);
  v35 = *(*(v34 - 8) + 56);

  v35(a2, 1, 1, v34);
}

void sub_188DE7708(id *a1, uint64_t isEscapingClosureAtFileLocation, id *a3, void *a4, double a5, double a6, double a7, double a8)
{
  v15 = a1;
  v16 = [(UIView *)a1 __viewDelegate];
  if (v16)
  {
    v17 = v16;
    v15 = swift_allocObject();
    v15[2] = a3;
    v15[3] = a4;
    v25 = sub_188DFA228;
    v26 = v15;
    v21 = MEMORY[0x1E69E9820];
    v22 = 1107296256;
    v23 = sub_188DFA16C;
    v24 = &block_descriptor_18_0;
    a4 = _Block_copy(&v21);
    a3 = v26;

    [v17 _intelligenceCollectSubelementsIn_using_transformToRoot_];

    _Block_release(a4);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  *(v18 + 24) = a4;
  v25 = sub_188DFA1F8;
  v26 = v18;
  v21 = MEMORY[0x1E69E9820];
  v22 = 1107296256;
  v23 = sub_188DFA16C;
  v24 = &block_descriptor_2;
  v19 = _Block_copy(&v21);

  [v15 _intelligenceCollectSubelementsIn_using_transformToRoot_];
  _Block_release(v19);
  v20 = swift_isEscapingClosureAtFileLocation();

  if (v20)
  {
    __break(1u);
  }
}

void sub_188DE7A3C(void *a1, uint64_t a2, double *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *a3;
  v12 = a3[1];
  v13 = a3[2];
  v14 = a3[3];
  v15 = swift_allocObject();
  *(v15 + 16) = a5;
  *(v15 + 24) = a6;
  v17[4] = sub_188DFA228;
  v17[5] = v15;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = sub_188DFA16C;
  v17[3] = &block_descriptor_63;
  v16 = _Block_copy(v17);

  [a1 _intelligenceCollectElementFor_in_using_transformToRoot_];
  _Block_release(v16);
  LOBYTE(a4) = swift_isEscapingClosureAtFileLocation();

  if (a4)
  {
    __break(1u);
  }
}

double sub_188DE7D7C(uint64_t a1, void *a2, double a3, double a4, double a5, double a6, CGFloat a7, CGFloat a8)
{
  v10 = [(UIView *)a1 _convertRect:a2 toViewInSameWindow:a3, a4, a5, a6];

  *&result = CGRectOffset(*&v10, a7, a8);
  return result;
}

void UIViewController._intelligenceCollectSubelements(in:using:transformToRoot:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  v15 = [v7 view];
  if (v15)
  {
    v16 = v15;
    v17 = swift_allocObject();
    *(v17 + 16) = a2;
    *(v17 + 24) = a3;
    v20[4] = sub_188DFA200;
    v20[5] = v17;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 1107296256;
    v20[2] = sub_188DFA16C;
    v20[3] = &block_descriptor_113;
    v18 = _Block_copy(v20);

    [v16 _intelligenceCollectSubelementsIn_using_transformToRoot_];

    _Block_release(v18);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  __break(1u);
}

CGFloat sub_188DE8030(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v11 = [a1 _presentationControllerToNotifyOnLayoutSubviews];
  if (!v11)
  {
    return a2;
  }

  v12 = v11;
  [v11 _occludedFrameOfPresentedViewInContainerView];
  v17 = [(UIView *)a1 _convertRect:v5 toViewInSameWindow:v13, v14, v15, v16];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v84.origin.x = a2;
  v84.origin.y = a3;
  v84.size.width = a4;
  v84.size.height = a5;
  v114.origin.x = v17;
  v114.origin.y = v19;
  v114.size.width = v21;
  v114.size.height = v23;
  if (!CGRectIntersectsRect(v84, v114))
  {

    return a2;
  }

  [v5 _currentScreenScale];
  v85.size.height = v23;
  v24 = a5;
  v26 = 1.0 / v25;
  v85.origin.x = v17;
  v85.origin.y = v19;
  v85.size.width = v21;
  rect = v85.size.height;
  v79 = v26;
  v27 = CGRectGetMaxY(v85) + v26;
  v82 = a2;
  v86.origin.x = a2;
  v86.origin.y = a3;
  v80 = a4;
  v86.size.width = a4;
  v86.size.height = v24;
  v71 = v27;
  MaxY = CGRectGetMaxY(v86);
  v28 = MaxY > v27;
  v78 = 0.0;
  v29 = 0.0;
  v30 = 0.0;
  v31 = 0.0;
  if (MaxY <= v27)
  {
    v87.origin.x = v17;
    v87.origin.y = v19;
    v87.size.width = v21;
    v87.size.height = rect;
    MinY = CGRectGetMinY(v87);
    v88.origin.x = v82;
    v88.origin.y = a3;
    v30 = v80;
    v88.size.width = v80;
    v88.size.height = v24;
    v33 = MinY - CGRectGetMinY(v88);
    if (v33 < 0.0)
    {
      v33 = 0.0;
    }

    v78 = v82;
    v31 = v33;
    v29 = a3;
  }

  v75 = v30;
  v76 = v29;
  v89.origin.x = v17;
  v89.origin.y = v19;
  v89.size.width = v21;
  v89.size.height = rect;
  v34 = CGRectGetMinY(v89);
  v90.size.width = v80;
  v35 = v34 - v79;
  v90.origin.x = v82;
  v90.origin.y = a3;
  v90.size.height = v24;
  v69 = v19;
  v70 = v17;
  v74 = v24;
  if (v35 > CGRectGetMinY(v90))
  {
    v72 = v76;
    v77 = v31;
    v37 = v80;
    v36 = rect;
LABEL_9:
    v38 = v82;
    goto LABEL_20;
  }

  v91.origin.x = v82;
  v91.origin.y = a3;
  v91.size.width = v80;
  v91.size.height = v24;
  v40 = CGRectGetMaxY(v91);
  v92.origin.x = v17;
  v92.origin.y = v19;
  v92.size.width = v21;
  v92.size.height = rect;
  v41 = v40 - CGRectGetMaxY(v92);
  if (v41 < 0.0)
  {
    v42 = 0.0;
  }

  else
  {
    v42 = v41;
  }

  v93.origin.x = v82;
  v93.origin.y = a3;
  v93.size.width = v80;
  v93.size.height = v24;
  v43 = CGRectGetMaxY(v93) - v42;
  if (MaxY <= v71)
  {
    v94.origin.x = v82;
    v94.origin.y = v43;
    v37 = v80;
    v94.size.width = v80;
    v94.size.height = v42;
    Width = CGRectGetWidth(v94);
    v95.origin.x = v82;
    v95.origin.y = v43;
    v95.size.width = v80;
    v95.size.height = v42;
    v73 = Width * CGRectGetHeight(v95);
    v96.origin.x = v78;
    v96.origin.y = v76;
    v96.size.width = v75;
    v96.size.height = v31;
    v45 = CGRectGetWidth(v96);
    v97.origin.x = v78;
    v97.origin.y = v76;
    v97.size.width = v75;
    v97.size.height = v31;
    if (v79 + v45 * CGRectGetHeight(v97) >= v73)
    {
      v28 = 0;
      v72 = v76;
      v77 = v31;
      v19 = v69;
      v17 = v70;
      v36 = rect;
      goto LABEL_9;
    }

    v72 = v43;
    v77 = v42;
    v28 = 0;
    v38 = v82;
    v78 = v82;
  }

  else
  {
    v72 = v43;
    v77 = v42;
    v28 = 0;
    v38 = v82;
    v78 = v82;
    v37 = v80;
  }

  v75 = v37;
  v19 = v69;
  v17 = v70;
  v36 = rect;
LABEL_20:
  v98.origin.x = v17;
  v98.origin.y = v19;
  v98.size.width = v21;
  v98.size.height = v36;
  v46 = v79 + CGRectGetMaxX(v98);
  v99.origin.x = v38;
  v99.origin.y = a3;
  v99.size.width = v37;
  v99.size.height = v74;
  if (CGRectGetMaxX(v99) > v46)
  {
    v47 = v36;
LABEL_22:
    v48 = v82;
    goto LABEL_29;
  }

  v100.origin.x = v17;
  v100.origin.y = v19;
  v100.size.width = v21;
  v100.size.height = v36;
  MinX = CGRectGetMinX(v100);
  v101.origin.x = v82;
  v101.origin.y = a3;
  v101.size.width = v37;
  v101.size.height = v74;
  v50 = MinX - CGRectGetMinX(v101);
  if (v50 < 0.0)
  {
    v51 = 0.0;
  }

  else
  {
    v51 = v50;
  }

  if (!v28)
  {
    v102.origin.x = v82;
    v102.origin.y = a3;
    v102.size.width = v51;
    v102.size.height = v74;
    v52 = CGRectGetWidth(v102);
    v103.origin.x = v82;
    v103.origin.y = a3;
    v103.size.width = v51;
    v103.size.height = v74;
    v68 = v52 * CGRectGetHeight(v103);
    v104.origin.x = v78;
    v104.origin.y = v72;
    v104.size.width = v75;
    v104.size.height = v77;
    v53 = CGRectGetWidth(v104);
    v105.origin.x = v78;
    v105.origin.y = v72;
    v105.size.width = v75;
    v105.size.height = v77;
    if (v79 + v53 * CGRectGetHeight(v105) >= v68)
    {
      v28 = 0;
      v19 = v69;
      v17 = v70;
      v47 = rect;
      goto LABEL_22;
    }
  }

  v75 = v51;
  v28 = 0;
  v48 = v82;
  v77 = v74;
  v78 = v82;
  v72 = a3;
  v19 = v69;
  v17 = v70;
  v47 = rect;
LABEL_29:
  v54 = v17;
  v55 = v19;
  v56 = v21;
  v57 = CGRectGetMinX(*(&v47 - 3)) - v79;
  v106.origin.x = v48;
  v106.origin.y = a3;
  v106.size.width = v80;
  v106.size.height = v74;
  if (v57 <= CGRectGetMinX(v106))
  {
    v107.origin.x = v48;
    v107.origin.y = a3;
    v107.size.width = v80;
    v107.size.height = v74;
    MaxX = CGRectGetMaxX(v107);
    v108.origin.x = v17;
    v108.origin.y = v19;
    v108.size.width = v21;
    v108.size.height = rect;
    v59 = MaxX - CGRectGetMaxX(v108);
    if (v59 < 0.0)
    {
      v60 = 0.0;
    }

    else
    {
      v60 = v59;
    }

    v109.origin.x = v48;
    v109.origin.y = a3;
    v109.size.width = v80;
    v109.size.height = v74;
    v61 = CGRectGetMaxX(v109);
    v62 = v60;
    v63 = v61 - v60;
    if (v28)
    {

      return v63;
    }

    else
    {
      v110.origin.x = v61 - v60;
      v110.origin.y = a3;
      v110.size.width = v60;
      v110.size.height = v74;
      v64 = CGRectGetWidth(v110);
      v111.origin.x = v63;
      v111.origin.y = a3;
      v111.size.width = v62;
      v111.size.height = v74;
      v83 = v64 * CGRectGetHeight(v111);
      v112.origin.x = v78;
      v112.origin.y = v72;
      v112.size.width = v75;
      v112.size.height = v77;
      v65 = CGRectGetWidth(v112);
      v113.origin.x = v78;
      v113.origin.y = v72;
      v113.size.width = v75;
      v113.size.height = v77;
      Height = CGRectGetHeight(v113);

      a2 = v63;
      if (v79 + v65 * Height >= v83)
      {
        return v78;
      }
    }
  }

  else
  {

    a2 = v48;
    if (!v28)
    {
      return v78;
    }
  }

  return a2;
}

id _UIGetAccessibilityLabelSafe(void *a1)
{
  v1 = a1;
  v2 = [v1 accessibilityLabel];
  if (v2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = v2;
LABEL_4:
      v4 = v3;
      goto LABEL_11;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = [v2 string];
      goto LABEL_4;
    }
  }

  else
  {
    v5 = [MEMORY[0x1E69E58C0] instanceMethodForSelector:sel_accessibilityAttributedLabel];
    if (v5 != [v1 methodForSelector:sel_accessibilityAttributedLabel])
    {
      v6 = [v1 accessibilityAttributedLabel];
      if (v6)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v4 = [v6 string];

          goto LABEL_11;
        }
      }
    }
  }

  v4 = 0;
LABEL_11:

  return v4;
}

void sub_188DE8798(uint64_t a1, void *a2, void *a3)
{
  if (a2)
  {
    __swift_project_boxed_opaque_existential_0(a3, a3[3]);
    v4 = a2;
    sub_18A4A37F8();
  }

  else
  {
    __swift_project_boxed_opaque_existential_0(a3, a3[3]);
    sub_18A4A3808();
  }
}

void sub_188DE8878(uint64_t a1, uint64_t a2, double a3)
{
  v4 = v3;
  v7 = sub_18A4A4088();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  if (sub_18A4A4078())
  {
    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    if (v10)
    {
      v11 = v10;
      v21 = v4;
      v12 = [v11 screenshotService];
      if (v12)
      {
        v13 = v12;
        v14 = swift_allocObject();
        *(v14 + 16) = 0u;
        *(v14 + 32) = 0u;
        *(v14 + 48) = 0;
        (*(v8 + 16))(&v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v7);
        v15 = (*(v8 + 80) + 32) & ~*(v8 + 80);
        v16 = swift_allocObject();
        *(v16 + 16) = v14;
        *(v16 + 24) = a1;
        (*(v8 + 32))(v16 + v15, &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
        v17 = swift_allocObject();
        *(v17 + 16) = sub_1891801C4;
        *(v17 + 24) = v16;
        v26 = sub_188A4B574;
        v27 = v17;
        aBlock = MEMORY[0x1E69E9820];
        v23 = 1107296256;
        v24 = sub_188A4A968;
        v25 = &block_descriptor_136;
        v18 = _Block_copy(&aBlock);

        v26 = sub_189180228;
        v27 = v14;
        aBlock = MEMORY[0x1E69E9820];
        v23 = 1107296256;
        v24 = sub_18917E660;
        v25 = &block_descriptor_14_9;
        v19 = _Block_copy(&aBlock);

        _UIIntelligenceScreenshotServiceGeneratePDF(v13, v18, v19);

        _Block_release(v19);
        _Block_release(v18);
        LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

        if (v13)
        {
          __break(1u);
        }
      }

      else
      {
      }
    }
  }
}

uint64_t sub_188DE8BEC()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  }

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_188DE8C2C(double a1)
{
  v2 = sub_18A4A4088();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(v3 + 64);

  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x1EEE6BDD0](v1, v5 + v6, v4 | 7);
}

id sub_188DE8D00(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v9 = sub_188DE8E80(a2);
  v11 = v7[2];
  v12 = (v8 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v8;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_188FA7D14(v10);
      goto LABEL_7;
    }

    sub_188DE8ED0(v13, a3 & 1, v10);
    v24 = sub_188DE8E80(a2);
    if ((v14 & 1) == (v25 & 1))
    {
      v9 = v24;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    sub_188A34624(0, &qword_1ED48EE70, off_1E70EA5C0);
    result = sub_18A4A87A8();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = sub_18A4A3CC8();
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v9;

    return v20(v22, a1, v21);
  }

LABEL_13:
  sub_188DF9194(v9, a2, a1, v16, v10);

  return a2;
}

void sub_188DE8ED0(uint64_t a1, uint64_t a2, double a3)
{
  v4 = v3;
  v5 = a2;
  v42 = sub_18A4A3CC8();
  v6 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v41 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C1C0, &qword_18A64E738);
  v40 = v5;
  v9 = sub_18A4A8468();
  v10 = v9;
  if (*(v8 + 16))
  {
    v37 = v3;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v38 = (v6 + 16);
    v39 = v6;
    v17 = (v6 + 32);
    v18 = v9 + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v23 = v20 | (v11 << 6);
      v24 = *(*(v8 + 48) + 8 * v23);
      v25 = *(v6 + 72);
      v26 = *(v8 + 56) + v25 * v23;
      if (v40)
      {
        (*v17)(v41, v26, v42);
      }

      else
      {
        (*v38)(v41, v26, v42);
        v27 = v24;
      }

      v28 = sub_18A4A7C78();
      v29 = -1 << *(v10 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v18 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v18 + 8 * v31);
          if (v35 != -1)
          {
            v19 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v30) & ~*(v18 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(*(v10 + 48) + 8 * v19) = v24;
      (*v17)((*(v10 + 56) + v25 * v19), v41, v42);
      ++*(v10 + 16);
      v6 = v39;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v4 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v8 + 32);
    v4 = v37;
    if (v36 >= 64)
    {
      bzero((v8 + 64), ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v36;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v4 = v10;
}