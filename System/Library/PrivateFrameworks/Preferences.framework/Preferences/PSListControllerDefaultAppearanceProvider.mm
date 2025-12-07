@interface PSListControllerDefaultAppearanceProvider
- (double)estimatedHeightOfRowForCellWithIndexPath:(id)path inController:(id)controller;
- (id)cellForSpecifier:(id)specifier inController:(id)controller;
- (int64_t)tableViewStyleForListController:(id)controller;
- (void)customizeTableView:(id)view inContainerView:(id)containerView hostedInSetupController:(BOOL)controller forListController:(id)listController;
- (void)listController:(id)controller updateSectionContentInsetAnimated:(BOOL)animated isRegularWidth:(BOOL)width contentInsetInitialized:(BOOL)initialized contentInsetInitializedApplicator:(id)applicator;
@end

@implementation PSListControllerDefaultAppearanceProvider

- (int64_t)tableViewStyleForListController:(id)controller
{
  if (PSIsRunningInAssistant(self, a2))
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (void)customizeTableView:(id)view inContainerView:(id)containerView hostedInSetupController:(BOOL)controller forListController:(id)listController
{
  viewCopy = view;
  containerViewCopy = containerView;
  listControllerCopy = listController;
  [viewCopy setCellLayoutMarginsFollowReadableWidth:1];
  v12 = [viewCopy setAutoresizingMask:18];
  [viewCopy setLayoutMarginsFollowReadableWidth:{PSIsRunningInAssistant(v12, v13) ^ 1}];
  [viewCopy setEstimatedSectionHeaderHeight:0.0];
  v14 = [viewCopy setEstimatedSectionFooterHeight:0.0];
  if (PSIsRunningInAssistant(v14, v15))
  {
    [viewCopy setBackgroundView:0];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [viewCopy setBackgroundColor:clearColor];
  }

  else
  {
    v17 = +[PSListController appearance];
    backgroundColor = [v17 backgroundColor];

    if (!backgroundColor)
    {
      goto LABEL_6;
    }

    clearColor = +[PSListController appearance];
    backgroundColor2 = [clearColor backgroundColor];
    [viewCopy setBackgroundColor:backgroundColor2];
  }

LABEL_6:
  v20 = +[PSListController appearance];
  separatorColor = [v20 separatorColor];

  if (separatorColor)
  {
    v22 = +[PSListController appearance];
    separatorColor2 = [v22 separatorColor];
    [viewCopy setSeparatorColor:separatorColor2];
  }

  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  sf_isiPad = [currentDevice sf_isiPad];
  if (!sf_isiPad)
  {

    goto LABEL_15;
  }

  v27 = PSIsRunningInAssistant(sf_isiPad, v26);

  if (!v27)
  {
LABEL_15:
    [containerViewCopy setAutoresizingMask:{objc_msgSend(viewCopy, "autoresizingMask")}];
    groupTableViewBackgroundColor = [MEMORY[0x1E69DC888] groupTableViewBackgroundColor];
    [containerViewCopy setBackgroundColor:groupTableViewBackgroundColor];

    v36 = +[PSListController appearance];
    usesDarkTheme = [v36 usesDarkTheme];

    if (usesDarkTheme)
    {
      backgroundColor4 = +[PSListController appearance];
      backgroundColor3 = [backgroundColor4 backgroundColor];
      [viewCopy setBackgroundColor:backgroundColor3];
    }

    else
    {
      backgroundColor4 = [containerViewCopy backgroundColor];
      [viewCopy setBackgroundColor:backgroundColor4];
    }

    goto LABEL_19;
  }

  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  [containerViewCopy setBackgroundColor:whiteColor];

  panGestureRecognizer = [viewCopy panGestureRecognizer];
  [containerViewCopy addGestureRecognizer:panGestureRecognizer];

  if (!controller)
  {
    v41 = 0;
    v42 = &v41;
    v43 = 0x2050000000;
    v30 = getBFFStyleClass_softClass_0;
    v44 = getBFFStyleClass_softClass_0;
    if (!getBFFStyleClass_softClass_0)
    {
      v40[0] = MEMORY[0x1E69E9820];
      v40[1] = 3221225472;
      v40[2] = __getBFFStyleClass_block_invoke_0;
      v40[3] = &unk_1E71DBC78;
      v40[4] = &v41;
      __getBFFStyleClass_block_invoke_0(v40);
      v30 = v42[3];
    }

    v31 = v30;
    _Block_object_dispose(&v41, 8);
    sharedStyle = [v30 sharedStyle];
    [sharedStyle edgeInsetsForTable:viewCopy];
    v34 = v33;

    [viewCopy setScrollIndicatorInsets:{0.0, 0.0, 0.0, -v34}];
  }

LABEL_19:
  [containerViewCopy setLayoutMarginsFollowReadableWidth:1];
  [viewCopy setClipsToBounds:0];
}

- (id)cellForSpecifier:(id)specifier inController:(id)controller
{
  specifierCopy = specifier;
  v5 = [PSTableCell cellClassForSpecifier:specifierCopy];
  v6 = [(objc_class *)v5 isSubclassOfClass:objc_opt_class()];
  v7 = [v5 alloc];
  cellStyle = [(objc_class *)v5 cellStyle];
  if (v6)
  {
    v9 = [PSTableCell reuseIdentifierForSpecifier:specifierCopy];
    v10 = [v7 initWithStyle:cellStyle reuseIdentifier:v9 specifier:specifierCopy];
  }

  else
  {
    v10 = [v7 initWithStyle:cellStyle reuseIdentifier:0];
  }

  return v10;
}

- (double)estimatedHeightOfRowForCellWithIndexPath:(id)path inController:(id)controller
{
  controllerCopy = controller;
  v6 = [controllerCopy indexForIndexPath:path];
  unprotectedSpecifiers = [controllerCopy unprotectedSpecifiers];
  v8 = [unprotectedSpecifiers objectAtIndex:v6];

  if ((v8[7] & 0xFFFFFFFFFFFFFFFELL) == 0xA)
  {
    integerValue = 66.0;
  }

  else
  {
    table = [controllerCopy table];
    v11 = [v8 propertyForKey:@"height"];
    v12 = v11;
    if (v11)
    {
      integerValue = [v11 integerValue];
    }

    else
    {
      [table estimatedRowHeight];
      if (v13 <= 0.0)
      {
        integerValue = *MEMORY[0x1E69DE3D0];
      }

      else
      {
        [table estimatedRowHeight];
        integerValue = v14;
      }
    }
  }

  return integerValue;
}

- (void)listController:(id)controller updateSectionContentInsetAnimated:(BOOL)animated isRegularWidth:(BOOL)width contentInsetInitialized:(BOOL)initialized contentInsetInitializedApplicator:(id)applicator
{
  initializedCopy = initialized;
  animatedCopy = animated;
  controllerCopy = controller;
  applicatorCopy = applicator;
  if ((PSIsRunningInAssistant(applicatorCopy, v12) & 1) == 0)
  {
    applicatorCopy[2](applicatorCopy);
    goto LABEL_16;
  }

  view = [controllerCopy view];
  v14 = PSShouldInsetListView(view);
  v15 = MEMORY[0x1E69DE3D0];
  if (v14 && (v16 = [controllerCopy edgeToEdgeCells], (v16 & 1) == 0))
  {
    v26 = PSIsRunningInAssistant(v16, v17);

    if ((v26 & 1) == 0)
    {
      view2 = [controllerCopy view];
      [view2 safeAreaInsets];
      v29 = v28;

      v18 = 0.0;
      v30 = v29 <= 0.0;
      v19 = 0.0;
      if (v30)
      {
        view3 = [controllerCopy view];
        [view3 layoutMargins];
        v19 = v32;
      }

      view4 = [controllerCopy view];
      [view4 safeAreaInsets];
      v35 = v34;

      if (v35 <= 0.0)
      {
        view5 = [controllerCopy view];
        [view5 layoutMargins];
        v18 = v37;
      }

      goto LABEL_6;
    }
  }

  else
  {
  }

  v18 = *v15;
  v19 = *v15;
LABEL_6:
  table = [controllerCopy table];
  [table _sectionContentInset];
  if (v19 != v22 || v18 != v21)
  {
    v24 = *v15;
    if (animatedCopy && initializedCopy)
    {
      [table _setSectionContentInset:{*v15, v19, *v15, v18}];
    }

    else
    {
      v25 = MEMORY[0x1E69DD250];
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __167__PSListControllerDefaultAppearanceProvider_listController_updateSectionContentInsetAnimated_isRegularWidth_contentInsetInitialized_contentInsetInitializedApplicator___block_invoke;
      v38[3] = &unk_1E71DC788;
      v39 = table;
      v40 = v24;
      v41 = v19;
      v42 = v24;
      v43 = v18;
      [v25 performWithoutAnimation:v38];
      applicatorCopy[2](applicatorCopy);
    }
  }

LABEL_16:
}

@end