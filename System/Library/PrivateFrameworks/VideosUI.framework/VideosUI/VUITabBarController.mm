@interface VUITabBarController
+ (BOOL)_hasSeenTVPlusTabForCurrentUser;
+ (BOOL)shouldIgnoreLastSelectedTabIndex;
+ (id)_tabBarImageForResource:(id)resource;
+ (void)_setHasSeenTVPlusTabForCurrentUser:(BOOL)user;
- (UINavigationController)currentNavigationController;
- (UIViewController)currentViewController;
- (VUIMetricsReportPageOverrideDelegate)reportPageOverrideDelegate;
- (VUITabBarController)init;
- (VUITabBarControllerUpdatingDelegate)updatingDelegate;
- (id)_tabBarChildViewControllerWithIdentifier:(id)identifier documentRef:(id)ref isNonServerTab:(BOOL)tab title:(id)title isSelectedTab:(BOOL)selectedTab appContext:(id)context iconResource:(id)resource contextData:(id)self0 uiConfigDict:(id)self1;
- (unint64_t)indexForTabBarItemIdentifier:(id)identifier;
- (unint64_t)tabBarControllerSupportedInterfaceOrientations:(id)orientations;
- (void)_addAndPresentBubbleTipIfAny:(id)any;
- (void)_handleSelectedViewControllerDidChange;
- (void)_saveLastSelectedAndScrollToTop:(id)top selectedIndex:(unint64_t)index previousSelectedIndex:(unint64_t)selectedIndex;
- (void)_updateLastSelectedTabId:(id)id tabInfo:(id)info;
- (void)_updateTabBarChildViewController:(id)controller withTitle:(id)title;
- (void)_updateTabbarChildViewController:(id)controller withTitle:(id)title iconResource:(id)resource;
- (void)dealloc;
- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion;
- (void)messageViewController:(id)controller didSelectActionWithDialogResult:(id)result;
- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)setSelectedIndexForTabBarItemIdentifier:(id)identifier clearStack:(BOOL)stack;
- (void)setVuiSelectedIndex:(unint64_t)index;
- (void)tabBarController:(id)controller didSelectTab:(id)tab previousTab:(id)previousTab;
- (void)tabBarController:(id)controller didSelectViewController:(id)viewController;
- (void)updateWithTabBarItems:(id)items setSelectedIdentifierFromDefaults:(BOOL)defaults appContext:(id)context;
- (void)viewDidLoad;
@end

@implementation VUITabBarController

- (VUITabBarController)init
{
  v6.receiver = self;
  v6.super_class = VUITabBarController;
  v2 = [(VUITabBarController *)&v6 init];
  v3 = v2;
  if (v2)
  {
    tabBar = [(VUITabBarController *)v2 tabBar];
    [tabBar setUserInteractionEnabled:1];

    [(VUITabBarController *)v3 setVuiDelegate:v3];
    v3->_previousSelectedIndex = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v3;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = VUITabBarController;
  [(VUITabBarController *)&v5 viewDidLoad];
  vui_primaryDynamicBackgroundColor = [MEMORY[0x1E69DC888] vui_primaryDynamicBackgroundColor];
  view = [(VUITabBarController *)self view];
  [view setVuiBackgroundColor:vui_primaryDynamicBackgroundColor];
}

- (void)dealloc
{
  [(VUITabBarController *)self setVuiDelegate:0];
  v3.receiver = self;
  v3.super_class = VUITabBarController;
  [(VUITabBarController *)&v3 dealloc];
}

- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  reportPageOverrideDelegate = [(VUITabBarController *)self reportPageOverrideDelegate];
  [reportPageOverrideDelegate reportPageEvent];

  v8.receiver = self;
  v8.super_class = VUITabBarController;
  [(VUITabBarController *)&v8 dismissViewControllerAnimated:animatedCopy completion:completionCopy];
}

- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  controllerCopy = controller;
  completionCopy = completion;
  selectedViewController = [(VUITabBarController *)self selectedViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    selectedViewController2 = [(VUITabBarController *)self selectedViewController];
    topViewController = [selectedViewController2 topViewController];
    v14 = [topViewController conformsToProtocol:&unk_1F5F33660];

    if (v14)
    {
      topViewController2 = [selectedViewController2 topViewController];
      [(VUITabBarController *)self setReportPageOverrideDelegate:topViewController2];
    }
  }

  v16.receiver = self;
  v16.super_class = VUITabBarController;
  [(VUITabBarController *)&v16 presentViewController:controllerCopy animated:animatedCopy completion:completionCopy];
}

- (void)updateWithTabBarItems:(id)items setSelectedIdentifierFromDefaults:(BOOL)defaults appContext:(id)context
{
  defaultsCopy = defaults;
  v140 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  contextCopy = context;
  v9 = VUISignpostLogObject(contextCopy);
  if (os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1E323F000, v9, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "TabBarUpdateItems", "", buf, 2u);
  }

  tabBarItems = [(VUITabBarController *)self tabBarItems];
  if (!defaultsCopy)
  {
    goto LABEL_11;
  }

  if ([objc_opt_class() shouldIgnoreLastSelectedTabIndex])
  {
    v11 = 0;
  }

  else
  {
    v11 = +[_TtC8VideosUI26VUIBarItemSelectionManager lastSelectedIdentifier];
  }

  if (([v11 isEqualToString:@"library"] & 1) == 0)
  {
    v12 = +[VUIMetricsController sharedInstance];
    [v12 setShouldPostAppLaunchData:1];
  }

  lowercaseString = [v11 lowercaseString];
  v14 = [lowercaseString hasPrefix:@"ppt"];

  if (v14)
  {

LABEL_11:
    v11 = 0;
  }

  vuiSelectedIndex = [(VUITabBarController *)self vuiSelectedIndex];
  v86 = itemsCopy;
  v94 = v11;
  selfCopy = self;
  if (!v11 || (v16 = vuiSelectedIndex, vuiSelectedIndex == 0x7FFFFFFFFFFFFFFFLL) || vuiSelectedIndex >= [itemsCopy count])
  {
    v17 = +[VUIFeaturesConfiguration sharedInstance];
    dropOnTabConfig = [v17 dropOnTabConfig];
    dropOnTabIdentifier = [dropOnTabConfig dropOnTabIdentifier];

    v126 = 0u;
    v127 = 0u;
    v124 = 0u;
    v125 = 0u;
    v20 = itemsCopy;
    v21 = [v20 countByEnumeratingWithState:&v124 objects:v139 count:16];
    if (v21)
    {
      v22 = v21;
      v106 = tabBarItems;
      v23 = 0;
      v24 = *v125;
LABEL_17:
      v25 = 0;
      v16 = v23;
      v23 += v22;
      while (1)
      {
        if (*v125 != v24)
        {
          objc_enumerationMutation(v20);
        }

        v26 = [*(*(&v124 + 1) + 8 * v25) vui_stringForKey:@"identifier"];
        v27 = [v26 isEqualToString:dropOnTabIdentifier];

        if (v27)
        {
          break;
        }

        ++v16;
        if (v22 == ++v25)
        {
          v22 = [v20 countByEnumeratingWithState:&v124 objects:v139 count:16];
          if (v22)
          {
            goto LABEL_17;
          }

          v16 = 0;
          break;
        }
      }

      itemsCopy = v86;
      self = selfCopy;
      tabBarItems = v106;
    }

    else
    {
      v16 = 0;
    }
  }

  v96 = v16;
  v104 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v120 = 0u;
  v121 = 0u;
  v122 = 0u;
  v123 = 0u;
  obj = tabBarItems;
  v28 = [obj countByEnumeratingWithState:&v120 objects:v138 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v121;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v121 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v32 = *(*(&v120 + 1) + 8 * i);
        v33 = [v32 vui_stringForKey:@"identifier"];
        [v104 setObject:v32 forKey:v33];
      }

      v29 = [obj countByEnumeratingWithState:&v120 objects:v138 count:16];
    }

    while (v29);
  }

  v34 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v116 = 0u;
  v117 = 0u;
  v118 = 0u;
  v119 = 0u;
  vuiViewControllers = [(VUITabBarController *)self vuiViewControllers];
  v36 = [vuiViewControllers countByEnumeratingWithState:&v116 objects:v137 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v117;
    do
    {
      for (j = 0; j != v37; ++j)
      {
        if (*v117 != v38)
        {
          objc_enumerationMutation(vuiViewControllers);
        }

        v40 = *(*(&v116 + 1) + 8 * j);
        vuiViewControllerIdentifier = [v40 vuiViewControllerIdentifier];

        if (vuiViewControllerIdentifier)
        {
          vuiViewControllerIdentifier2 = [v40 vuiViewControllerIdentifier];
          [v34 setObject:v40 forKey:vuiViewControllerIdentifier2];
        }
      }

      v37 = [vuiViewControllers countByEnumeratingWithState:&v116 objects:v137 count:16];
    }

    while (v37);
  }

  v93 = v34;

  v91 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v88 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v90 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v89 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v43 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:itemsCopy];
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  if (![mEMORY[0x1E69DC668] launchedToTest])
  {
    v47 = v94;
    goto LABEL_47;
  }

  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v46 = [standardUserDefaults BOOLForKey:@"DoNotAddPPTTabs"];

  v47 = v94;
  if ((v46 & 1) == 0)
  {
    v135[0] = @"identifier";
    v135[1] = @"documentRef";
    v136[0] = @"pptstack";
    v136[1] = @"PPTStackScroll";
    v135[2] = @"title";
    v136[2] = @"pptstack";
    v48 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v136 forKeys:v135 count:3];
    [v43 addObject:v48];

    v133[0] = @"identifier";
    v133[1] = @"documentRef";
    v134[0] = @"pptsports";
    v134[1] = @"PPTSportsScroll";
    v133[2] = @"title";
    v134[2] = @"pptsports";
    v49 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v134 forKeys:v133 count:3];
    [v43 addObject:v49];

    v131[0] = @"identifier";
    v131[1] = @"documentRef";
    v132[0] = @"pptshowproduct";
    v132[1] = @"PPTShowScrollController";
    v131[2] = @"title";
    v47 = v94;
    v132[2] = @"pptshowproduct";
    mEMORY[0x1E69DC668] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v132 forKeys:v131 count:3];
    [v43 addObject:mEMORY[0x1E69DC668]];
LABEL_47:
  }

  v114 = 0u;
  v115 = 0u;
  v112 = 0u;
  v113 = 0u;
  v99 = v43;
  v103 = [v99 countByEnumeratingWithState:&v112 objects:v130 count:16];
  if (!v103)
  {
    v98 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_87;
  }

  v101 = 0;
  v102 = *v113;
  v98 = 0x7FFFFFFFFFFFFFFFLL;
  do
  {
    for (k = 0; k != v103; ++k)
    {
      if (*v113 != v102)
      {
        objc_enumerationMutation(v99);
      }

      v51 = *(*(&v112 + 1) + 8 * k);
      v52 = [v51 vui_stringForKey:@"identifier"];
      v53 = [v51 vui_stringForKey:@"documentRef"];
      v54 = [v51 vui_BOOLForKey:@"isNonServerTab" defaultValue:0];
      v107 = [v51 vui_dictionaryForKey:@"contextData"];
      v55 = [v51 vui_stringForKey:@"title"];
      v56 = [v51 vui_stringForKey:@"iconResource"];
      v105 = [v51 vui_dictionaryForKey:@"uiConfiguration"];
      v57 = VUIDefaultLogObject(v105);
      if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v129 = v52;
        _os_log_impl(&dword_1E323F000, v57, OS_LOG_TYPE_INFO, "VUITabBarController - Making tab: %@", buf, 0xCu);
      }

      v58 = [v52 length];
      if (!v58 || (v58 = [v53 length]) == 0 || (v58 = objc_msgSend(v55, "length")) == 0)
      {
        v62 = VUIDefaultLogObject(v58);
        if (!os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
        {
          goto LABEL_83;
        }

        *buf = 138412290;
        v129 = v51;
        v63 = v62;
        v64 = "VUITabBarController - Tab bar item has a zero length identifier, documentRef or title. Will ignore. TabBarItem: %@";
        goto LABEL_64;
      }

      mEMORY[0x1E69DC668]2 = [MEMORY[0x1E69DC668] sharedApplication];
      isRunningTest = [mEMORY[0x1E69DC668]2 isRunningTest];

      if (isRunningTest)
      {
        v61 = [v51 vui_BOOLForKey:@"isSideBarItem" defaultValue:0];
        if (v61)
        {
          v62 = VUIDefaultLogObject(v61);
          if (!os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
          {
            goto LABEL_83;
          }

          *buf = 138412290;
          v129 = v51;
          v63 = v62;
          v64 = "VUITabBarController - Tab bar item is a sidebar item. Will ignore when running PPT. TabBarItem: %@";
LABEL_64:
          _os_log_impl(&dword_1E323F000, v63, OS_LOG_TYPE_INFO, v64, buf, 0xCu);
          goto LABEL_83;
        }
      }

      v97 = v53;
      v65 = [v47 isEqualToString:v52];
      v66 = v96;
      if (v65)
      {
        v66 = v101;
      }

      v96 = v66;
      v67 = v98;
      if (v65)
      {
        v67 = v101;
      }

      v98 = v67;
      v68 = [v104 objectForKey:v52];
      v62 = [v68 mutableCopy];

      if (!v62)
      {
        v62 = [v51 mutableCopy];
      }

      v69 = [objc_opt_class() _tabBarImageForResource:v56];
      v70 = [v93 objectForKey:v52];
      if (v70)
      {
        v71 = v70;
        v72 = v56;
        [v62 setObject:v55 forKey:@"title"];
        v73 = [v71 tab];
        [v73 setImage:v69];
        [v73 setTitle:v55];
        v74 = v69;
        v47 = v94;
      }

      else
      {
        v92 = v69;
        v75 = [(VUITabBarController *)selfCopy _tabBarChildViewControllerWithIdentifier:v52 documentRef:v53 isNonServerTab:v54 title:v55 isSelectedTab:v98 == v101 appContext:contextCopy iconResource:v56 contextData:v107 uiConfigDict:v105];
        if (!v75)
        {
          v72 = v56;
          v73 = VUIDefaultLogObject(0);
          v47 = v94;
          if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v129 = v51;
            _os_log_impl(&dword_1E323F000, v73, OS_LOG_TYPE_INFO, "VUITabBarController - Unable to create view controller for tab bar item. Will ignore: TabBarItem: %@", buf, 0xCu);
          }

          v74 = v92;
          goto LABEL_82;
        }

        v71 = v75;
        v47 = v94;
        v72 = v56;
        if ([v52 isEqualToString:@"search"])
        {
          v76 = objc_alloc(MEMORY[0x1E69DCF20]);
          v110[0] = MEMORY[0x1E69E9820];
          v110[1] = 3221225472;
          v110[2] = __90__VUITabBarController_updateWithTabBarItems_setSelectedIdentifierFromDefaults_appContext___block_invoke;
          v110[3] = &unk_1E87348F0;
          v111 = v71;
          v73 = [v76 initWithTitle:v55 image:v92 identifier:v52 viewControllerProvider:v110];
          v77 = &v111;
        }

        else
        {
          v78 = objc_alloc(MEMORY[0x1E69DCFE0]);
          v108[0] = MEMORY[0x1E69E9820];
          v108[1] = 3221225472;
          v108[2] = __90__VUITabBarController_updateWithTabBarItems_setSelectedIdentifierFromDefaults_appContext___block_invoke_2;
          v108[3] = &unk_1E87348F0;
          v109 = v71;
          v73 = [v78 initWithTitle:v55 image:v92 identifier:v52 viewControllerProvider:v108];
          v77 = &v109;
        }

        v79 = [@"UIA.TV.Tab." stringByAppendingString:v52];
        [v73 setAccessibilityIdentifier:v79];

        v74 = v92;
      }

      [v91 addObject:v62];
      [v88 addObject:v71];
      [v90 addObject:v71];
      [v89 addObject:v73];
      ++v101;

LABEL_82:
      v56 = v72;
      v53 = v97;
LABEL_83:
    }

    v103 = [v99 countByEnumeratingWithState:&v112 objects:v130 count:16];
  }

  while (v103);
LABEL_87:

  v80 = [v91 copy];
  [(VUITabBarController *)selfCopy setTabBarItems:v80];

  v81 = [v90 copy];
  [(VUITabBarController *)selfCopy setStoredViewControllers:v81];

  v82 = [v89 copy];
  [(VUITabBarController *)selfCopy setTabs:v82];

  [(VUITabBarController *)selfCopy setPreviousSelectedIndex:v98];
  [(VUITabBarController *)selfCopy setVuiSelectedIndex:v96];
  tabBar = [(VUITabBarController *)selfCopy tabBar];
  [tabBar setNeedsLayout];

  updatingDelegate = [(VUITabBarController *)selfCopy updatingDelegate];
  [updatingDelegate tabBarControllerDidUpdateTabBarItems:selfCopy];

  v85 = VUISignpostLogObject([(VUITabBarController *)selfCopy _addAndPresentBubbleTipIfAny:v86]);
  if (os_signpost_enabled(v85))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1E323F000, v85, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "TabBarUpdateItems", "", buf, 2u);
  }
}

- (void)setSelectedIndexForTabBarItemIdentifier:(id)identifier clearStack:(BOOL)stack
{
  stack = [(VUITabBarController *)self indexForTabBarItemIdentifier:identifier, stack];
  if ((stack & 0x8000000000000000) == 0)
  {

    [(VUITabBarController *)self setVuiSelectedIndex:stack];
  }
}

- (unint64_t)indexForTabBarItemIdentifier:(id)identifier
{
  identifierCopy = identifier;
  tabBarItems = [(VUITabBarController *)self tabBarItems];
  v6 = [tabBarItems count];

  if (v6)
  {
    v7 = 0;
    while (1)
    {
      tabBarItems2 = [(VUITabBarController *)self tabBarItems];
      v9 = [tabBarItems2 objectAtIndexedSubscript:v7];

      v10 = [v9 objectForKeyedSubscript:@"identifier"];
      v11 = [v10 isEqualToString:identifierCopy];

      if (v11)
      {
        break;
      }

      ++v7;
      tabBarItems3 = [(VUITabBarController *)self tabBarItems];
      v13 = [tabBarItems3 count];

      if (v7 >= v13)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v7 = -1;
  }

  return v7;
}

- (void)_addAndPresentBubbleTipIfAny:(id)any
{
  v42 = *MEMORY[0x1E69E9840];
  anyCopy = any;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v5 = [anyCopy countByEnumeratingWithState:&v35 objects:v41 count:16];
  if (v5)
  {
    v6 = v5;
    selfCopy = self;
    v7 = 0;
    v8 = 0;
    v9 = *v36;
    v10 = -1;
    do
    {
      v11 = 0;
      v34 = v7;
      do
      {
        if (*v36 != v9)
        {
          objc_enumerationMutation(anyCopy);
        }

        v12 = [*(*(&v35 + 1) + 8 * v11) vui_stringForKey:{@"tipPlacementId", selfCopy}];
        v13 = v12;
        if (v12 && [v12 length])
        {
          v14 = v13;

          v10 = v7;
          v8 = v14;
        }

        ++v7;

        ++v11;
      }

      while (v6 != v11);
      v7 = v34 + v6;
      v6 = [anyCopy countByEnumeratingWithState:&v35 objects:v41 count:16];
    }

    while (v6);
    if (v10 != -1)
    {
      v15 = [_TtC8VideosUI8VideosUI getTipViewControllerIfAny:v8];
      if (v15)
      {
        tabBar = [(VUITabBarController *)selfCopy tabBar];
        [tabBar bounds];
        v18 = v17;
        v20 = v19;
        v22 = v21;
        v24 = v23;

        v25 = [anyCopy count];
        if (v25 <= 1)
        {
          v26 = 1;
        }

        else
        {
          v26 = v25;
        }

        v27 = v22 / v26;
        [v15 setModalPresentationStyle:7];
        popoverPresentationController = [v15 popoverPresentationController];
        tabBar2 = [(VUITabBarController *)selfCopy tabBar];
        [popoverPresentationController setSourceView:tabBar2];

        popoverPresentationController2 = [v15 popoverPresentationController];
        [popoverPresentationController2 setSourceRect:{v18 + (v10 * v27), v20, v27, v24}];

        [v15 setDelegate:selfCopy];
        popoverPresentationController3 = [v15 popoverPresentationController];
        [popoverPresentationController3 setDelegate:selfCopy];

        [(VUITabBarController *)selfCopy presentViewController:v15 animated:1 completion:0];
      }

      else
      {
        v32 = VUIDefaultLogObject(0);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v40 = v8;
          _os_log_impl(&dword_1E323F000, v32, OS_LOG_TYPE_INFO, "VUITabBarController - UnifiedMessaging::No TipViewController found for %@", buf, 0xCu);
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }
}

- (void)messageViewController:(id)controller didSelectActionWithDialogResult:(id)result
{
  v21 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  resultCopy = result;
  v8 = VUIDefaultLogObject(resultCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    originalRequest = [resultCopy originalRequest];
    v17 = 138412546;
    v18 = resultCopy;
    v19 = 2112;
    v20 = originalRequest;
    _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_INFO, "VUITabBarController - UnifiedMessaging::Action dialogResult: %@, request: %@", &v17, 0x16u);
  }

  [(VUITabBarController *)self dismissViewControllerAnimated:1 completion:0];
  originalRequest2 = [resultCopy originalRequest];
  selectedActionIdentifier = [resultCopy selectedActionIdentifier];
  v12 = [originalRequest2 locateActionWithIdentifier:selectedActionIdentifier];

  if (v12)
  {
    deepLink = [v12 deepLink];
    if (deepLink)
    {
      [_TtC8VideosUI8VideosUI processDeeplink:deepLink];
    }

    else
    {
      v16 = VUIDefaultLogObject(0);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        LOWORD(v17) = 0;
        _os_log_impl(&dword_1E323F000, v16, OS_LOG_TYPE_INFO, "VUITabBarController - UnifiedMessaging::Action Deeplink does not exist", &v17, 2u);
      }
    }

    [_TtC8VideosUI8VideosUI messageViewController:controllerCopy didSelectActionWith:resultCopy];
  }

  else
  {
    deepLink = VUIDefaultLogObject(v13);
    if (os_log_type_enabled(deepLink, OS_LOG_TYPE_INFO))
    {
      selectedActionIdentifier2 = [resultCopy selectedActionIdentifier];
      v17 = 138412290;
      v18 = selectedActionIdentifier2;
      _os_log_impl(&dword_1E323F000, deepLink, OS_LOG_TYPE_INFO, "VUITabBarController - UnifiedMessaging::Action Could not find action for %@", &v17, 0xCu);
    }
  }
}

- (UINavigationController)currentNavigationController
{
  vuiViewControllers = [(VUITabBarController *)self vuiViewControllers];
  vuiSelectedIndex = [(VUITabBarController *)self vuiSelectedIndex];
  if (vuiSelectedIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v5 = [vuiViewControllers objectAtIndex:vuiSelectedIndex];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (UIViewController)currentViewController
{
  vuiViewControllers = [(VUITabBarController *)self vuiViewControllers];
  vuiSelectedIndex = [(VUITabBarController *)self vuiSelectedIndex];
  if (vuiSelectedIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v5 = [vuiViewControllers objectAtIndex:vuiSelectedIndex];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentViewController = v5;
    goto LABEL_8;
  }

  if ([v5 conformsToProtocol:&unk_1F5E7E650])
  {
    currentViewController = [v5 currentViewController];
LABEL_8:
    lastObject = currentViewController;
    goto LABEL_10;
  }

  viewControllers = [v5 viewControllers];
  lastObject = [viewControllers lastObject];

LABEL_10:

  return lastObject;
}

- (void)setVuiSelectedIndex:(unint64_t)index
{
  v5.receiver = self;
  v5.super_class = VUITabBarController;
  [(VUITabBarController *)&v5 setVuiSelectedIndex:index];
  updatingDelegate = [(VUITabBarController *)self updatingDelegate];
  [updatingDelegate tabBarControllerDidUpdateSelectedIndex:self];
}

- (void)tabBarController:(id)controller didSelectTab:(id)tab previousTab:(id)previousTab
{
  previousTabCopy = previousTab;
  tabCopy = tab;
  tabs = [(VUITabBarController *)self tabs];
  v10 = [tabs indexOfObject:tabCopy];

  tabs2 = [(VUITabBarController *)self tabs];
  v12 = [tabs2 indexOfObject:previousTabCopy];

  viewController = [tabCopy viewController];

  [(VUITabBarController *)self _saveLastSelectedAndScrollToTop:viewController selectedIndex:v10 previousSelectedIndex:v12];
}

- (unint64_t)tabBarControllerSupportedInterfaceOrientations:(id)orientations
{
  orientationsCopy = orientations;
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom)
  {
    v6 = 30;
  }

  else
  {
    presentedViewController = [orientationsCopy presentedViewController];
    v8 = presentedViewController;
    if (presentedViewController && [presentedViewController conformsToProtocol:&unk_1F5F1B7C8] && (objc_msgSend(v8, "isBeingPresented") & 1) == 0)
    {
      presentedViewController2 = [orientationsCopy presentedViewController];
      if ([presentedViewController2 overridesOrientationLock])
      {
        if ([v8 isBeingDismissed])
        {
          v6 = 2;
        }

        else
        {
          v6 = 26;
        }
      }

      else
      {
        v6 = 2;
      }
    }

    else
    {
      v6 = 2;
    }
  }

  return v6;
}

- (void)tabBarController:(id)controller didSelectViewController:(id)viewController
{
  viewControllerCopy = viewController;
  vuiViewControllers = [(VUITabBarController *)self vuiViewControllers];
  -[VUITabBarController _saveLastSelectedAndScrollToTop:selectedIndex:previousSelectedIndex:](self, "_saveLastSelectedAndScrollToTop:selectedIndex:previousSelectedIndex:", viewControllerCopy, [vuiViewControllers indexOfObjectIdenticalTo:viewControllerCopy], -[VUITabBarController previousSelectedIndex](self, "previousSelectedIndex"));
}

- (void)_handleSelectedViewControllerDidChange
{
  v15[1] = *MEMORY[0x1E69E9840];
  vuiSelectedIndex = [(VUITabBarController *)self vuiSelectedIndex];
  tabBarItems = [(VUITabBarController *)self tabBarItems];
  if ([tabBarItems count])
  {
    if (vuiSelectedIndex >= [tabBarItems count])
    {
      v5 = 0;
    }

    else
    {
      v5 = vuiSelectedIndex;
    }

    v6 = [tabBarItems objectAtIndex:v5];
    v7 = [v6 vui_stringForKey:@"identifier"];
    v8 = [v6 vui_stringForKey:@"pageContext"];
    v9 = v8;
    v10 = &stru_1F5DB25C0;
    if (v7)
    {
      v10 = v7;
    }

    if (v8)
    {
      v10 = v8;
    }

    v11 = v10;

    v14 = @"VUIMetricsTabBarItemNotificationKey";
    v15[0] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    [(VUITabBarController *)self _updateLastSelectedTabId:v7 tabInfo:v6];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];

    [defaultCenter postNotificationName:@"TVAppRootViewControllerCurrentNavigationControllerDidChangeNotification" object:self userInfo:v12];
  }
}

- (void)_updateLastSelectedTabId:(id)id tabInfo:(id)info
{
  idCopy = id;
  infoCopy = info;
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  isRunningTest = [mEMORY[0x1E69DC668] isRunningTest];

  if ((isRunningTest & 1) == 0)
  {
    [_TtC8VideosUI26VUIBarItemSelectionManager updateLastSelectedIdentifier:idCopy tabItemInfo:infoCopy];
  }
}

- (id)_tabBarChildViewControllerWithIdentifier:(id)identifier documentRef:(id)ref isNonServerTab:(BOOL)tab title:(id)title isSelectedTab:(BOOL)selectedTab appContext:(id)context iconResource:(id)resource contextData:(id)self0 uiConfigDict:(id)self1
{
  selectedTabCopy = selectedTab;
  v39 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  refCopy = ref;
  titleCopy = title;
  dataCopy = data;
  dictCopy = dict;
  contextCopy = context;
  v21 = VUISignpostLogObject(contextCopy);
  if (os_signpost_enabled(v21))
  {
    *buf = 138412290;
    v38 = identifierCopy;
    _os_signpost_emit_with_name_impl(&dword_1E323F000, v21, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "TabBarChildViewCreate", "id:%@", buf, 0xCu);
  }

  v22 = [[VUIDocumentDataSource alloc] initWithDocumentRef:refCopy];
  v23 = objc_alloc_init(VUIDocumentUIConfiguration);
  if (dictCopy)
  {
    v24 = [VUIDocumentUIConfiguration uiConfigurationWithDict:dictCopy];

    v23 = v24;
  }

  [(VUIDocumentDataSource *)v22 setUiConfiguration:v23];
  [(VUIDocumentDataSource *)v22 setShouldLoadPageImmediately:selectedTabCopy];
  if ([identifierCopy length])
  {
    v35 = @"tabIdentifier";
    v36 = identifierCopy;
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
    if (tab)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v25 = 0;
    if (tab)
    {
      goto LABEL_11;
    }
  }

  [(VUIDocumentDataSource *)v22 setDocumentType:@"default"];
  [(VUIDocumentDataSource *)v22 setControllerRef:refCopy];
  [(VUIDocumentDataSource *)v22 setTitle:titleCopy];
  if (dataCopy)
  {
    v26 = [[VUIDocumentContextData alloc] initWithDictionary:dataCopy];
    [(VUIDocumentDataSource *)v22 setContextData:v26];
  }

LABEL_11:
  uiConfiguration = [(VUIDocumentDataSource *)v22 uiConfiguration];
  [uiConfiguration setViewControllerDocumentIdentifier:identifierCopy];

  uiConfiguration2 = [(VUIDocumentDataSource *)v22 uiConfiguration];
  [uiConfiguration2 setIsRootViewController:1];

  v29 = +[VUIInterfaceFactory sharedInstance];
  v30 = [v29 viewControllerWithDocumentDataSource:v22 appContext:contextCopy documentOptions:v25];

  v31 = [[VUIAppNavigationController alloc] initWithRootViewController:v30];
  [(_VUITVAppNavigationController *)v31 setMaxNavControllerStackDepth:6];
  v32 = VUISignpostLogObject([(VUIAppNavigationController *)v31 setVuiViewControllerIdentifier:identifierCopy]);
  if (os_signpost_enabled(v32))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1E323F000, v32, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "TabBarChildViewCreate", "", buf, 2u);
  }

  return v31;
}

- (void)_updateTabbarChildViewController:(id)controller withTitle:(id)title iconResource:(id)resource
{
  resourceCopy = resource;
  titleCopy = title;
  controllerCopy = controller;
  v12 = [objc_opt_class() _tabBarImageForResource:resourceCopy];

  tabBarItem = [controllerCopy tabBarItem];
  [tabBarItem setImage:v12];

  [(VUITabBarController *)self _updateTabBarChildViewController:controllerCopy withTitle:titleCopy];
}

- (void)_updateTabBarChildViewController:(id)controller withTitle:(id)title
{
  titleCopy = title;
  controllerCopy = controller;
  [controllerCopy setTitle:titleCopy];
  tabBarItem = [controllerCopy tabBarItem];

  [tabBarItem setTitle:titleCopy];
}

+ (id)_tabBarImageForResource:(id)resource
{
  resourceCopy = resource;
  if ([resourceCopy hasPrefix:@"symbol://"])
  {
    v4 = [resourceCopy stringByReplacingOccurrencesOfString:@"symbol://" withString:&stru_1F5DB25C0];
    v5 = MEMORY[0x1E69DCAB8];
    configurationPreferringMonochrome = [MEMORY[0x1E69DCAD8] configurationPreferringMonochrome];
    v7 = [v5 _systemImageNamed:v4 withConfiguration:configurationPreferringMonochrome];
    _imageThatSuppressesAccessibilityHairlineThickening = [v7 _imageThatSuppressesAccessibilityHairlineThickening];

LABEL_6:
    goto LABEL_7;
  }

  v9 = @"resource://";
  if ([resourceCopy hasPrefix:@"resource://"] || (v9 = @"resource-symbol://", objc_msgSend(resourceCopy, "hasPrefix:", @"resource-symbol://")))
  {
    v4 = [resourceCopy stringByReplacingOccurrencesOfString:v9 withString:&stru_1F5DB25C0];
    configurationPreferringMonochrome = [MEMORY[0x1E69DCAB8] vuiImageNamed:v4];
    _imageThatSuppressesAccessibilityHairlineThickening = [configurationPreferringMonochrome _imageThatSuppressesAccessibilityHairlineThickening];
    goto LABEL_6;
  }

  _imageThatSuppressesAccessibilityHairlineThickening = 0;
LABEL_7:

  return _imageThatSuppressesAccessibilityHairlineThickening;
}

- (void)_saveLastSelectedAndScrollToTop:(id)top selectedIndex:(unint64_t)index previousSelectedIndex:(unint64_t)selectedIndex
{
  topCopy = top;
  v9 = topCopy;
  if (!topCopy || selectedIndex == index)
  {
    if (!topCopy)
    {
      goto LABEL_17;
    }

    if (selectedIndex == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_17;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_17;
    }

    v12 = v9;
    viewControllers = [v12 viewControllers];
    if ([viewControllers count] == 1)
    {
      visibleViewController = [v12 visibleViewController];
      view = [visibleViewController view];
      window = [view window];

      if (!window)
      {
LABEL_12:

        goto LABEL_17;
      }

      viewControllers = [v12 visibleViewController];
      v17 = +[VUIInterfaceFactory sharedInstance];
      documentCreator = [v17 documentCreator];
      [documentCreator scrollViewControllerToTop:viewControllers animated:1 needsFocusUpdate:1];

      [_TtC8VideosUI8VideosUI notifyAppearingViewControllerOfTabSelection:v12];
    }

    goto LABEL_12;
  }

  tabBarItems = [(VUITabBarController *)self tabBarItems];
  v11 = [tabBarItems count];
  if (v11 <= index)
  {
    v19 = VUIDefaultLogObject(v11);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [VUITabBarController _saveLastSelectedAndScrollToTop:index selectedIndex:v19 previousSelectedIndex:?];
    }
  }

  else
  {
    [(VUITabBarController *)self _handleSelectedViewControllerDidChange];
  }

LABEL_17:
}

+ (BOOL)shouldIgnoreLastSelectedTabIndex
{
  v38 = *MEMORY[0x1E69E9840];
  v2 = +[VUIUtilities isStoreOrPressDemoMode];
  if (v2)
  {
    v3 = VUIDefaultLogObject(v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v3, OS_LOG_TYPE_DEFAULT, "DropOnTab: shouldIgnoreLastSelectedTabIndex isTest isStore NO", buf, 2u);
    }

    v4 = 0;
    return v4 & 1;
  }

  _hasSeenTVPlusTabForCurrentUser = [objc_opt_class() _hasSeenTVPlusTabForCurrentUser];
  if (_hasSeenTVPlusTabForCurrentUser)
  {
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v7 = [standardUserDefaults objectForKey:@"lastActiveDate"];

    standardUserDefaults2 = [MEMORY[0x1E695E000] standardUserDefaults];
    v9 = [standardUserDefaults2 objectForKey:@"lastPlaybackDate"];

    date = [MEMORY[0x1E695DF00] date];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __55__VUITabBarController_shouldIgnoreLastSelectedTabIndex__block_invoke;
    aBlock[3] = &unk_1E8734918;
    v11 = date;
    v33 = v11;
    v12 = _Block_copy(aBlock);
    v13 = +[VUIFeaturesConfiguration sharedInstance];
    dropOnTabConfig = [v13 dropOnTabConfig];

    daysWithoutPlaybackThreshold = [dropOnTabConfig daysWithoutPlaybackThreshold];
    daysWithoutOpeningThreshold = [dropOnTabConfig daysWithoutOpeningThreshold];
    v31 = v9;
    v17 = v12[2](v12, v9, daysWithoutPlaybackThreshold);
    v18 = v17;
    v19 = VUIDefaultLogObject(v17);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109634;
      *v35 = v18;
      *&v35[4] = 2112;
      *&v35[6] = daysWithoutPlaybackThreshold;
      v36 = 2112;
      v37 = v9;
      _os_log_impl(&dword_1E323F000, v19, OS_LOG_TYPE_DEFAULT, "DropOnTab: isPastPlaybackThreshold = %i for %@ days since date of %@ ", buf, 0x1Cu);
    }

    v20 = v12[2](v12, v7, daysWithoutOpeningThreshold);
    v21 = v20;
    v22 = VUIDefaultLogObject(v20);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109634;
      *v35 = v21;
      *&v35[4] = 2112;
      *&v35[6] = daysWithoutOpeningThreshold;
      v36 = 2112;
      v37 = v7;
      _os_log_impl(&dword_1E323F000, v22, OS_LOG_TYPE_DEFAULT, "DropOnTab: isPastAppOpeningThreshold = %i for %@ days since date of %@ ", buf, 0x1Cu);
    }

    v23 = v18 | v21;
    v4 = (v7 == 0) | v18 | v21;
    standardUserDefaults3 = [MEMORY[0x1E695E000] standardUserDefaults];
    [standardUserDefaults3 setObject:v11 forKey:@"lastActiveDate"];

    standardUserDefaults4 = VUIDefaultLogObject(v25);
    v27 = os_log_type_enabled(standardUserDefaults4, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if ((v23 & 1) == 0)
      {
        if (v27)
        {
          *buf = 138412290;
          *v35 = v11;
          _os_log_impl(&dword_1E323F000, standardUserDefaults4, OS_LOG_TYPE_DEFAULT, "DropOnTab: shouldIgnoreLastSelectedTabIndex=NO. Updating lastActiveDate to %@", buf, 0xCu);
        }

        goto LABEL_21;
      }

      if (v27)
      {
        *buf = 138412290;
        *v35 = v11;
        v28 = "DropOnTab: shouldIgnoreLastSelectedTabIndex=YES. Updating lastActiveDate and lastPlaybackDate to %@";
LABEL_19:
        _os_log_impl(&dword_1E323F000, standardUserDefaults4, OS_LOG_TYPE_DEFAULT, v28, buf, 0xCu);
      }
    }

    else if (v27)
    {
      *buf = 138412290;
      *v35 = v11;
      v28 = "DropOnTab: shouldIgnoreLastSelectedTabIndex=YES. no lastActiveDate, setting lastActiveDate and lastPlaybackDate to %@";
      goto LABEL_19;
    }

    standardUserDefaults4 = [MEMORY[0x1E695E000] standardUserDefaults];
    [standardUserDefaults4 setObject:v11 forKey:@"lastPlaybackDate"];
LABEL_21:

    return v4 & 1;
  }

  v29 = VUIDefaultLogObject(_hasSeenTVPlusTabForCurrentUser);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1E323F000, v29, OS_LOG_TYPE_DEFAULT, "DropOnTab: shouldIgnoreLastSelectedTabIndex first TV app entry for this user", buf, 2u);
  }

  v4 = 1;
  [objc_opt_class() _setHasSeenTVPlusTabForCurrentUser:1];
  return v4 & 1;
}

BOOL __55__VUITabBarController_shouldIgnoreLastSelectedTabIndex__block_invoke(uint64_t a1, void *a2, void *a3)
{
  if (!a2)
  {
    return 0;
  }

  v5 = a2;
  v6 = [a3 intValue];
  v7 = [MEMORY[0x1E695DF00] dateWithTimeInterval:v5 sinceDate:(86400 * v6)];

  [*(a1 + 32) timeIntervalSinceDate:v7];
  v9 = v8 > 0.0;

  return v9;
}

+ (BOOL)_hasSeenTVPlusTabForCurrentUser
{
  activeAccount = [MEMORY[0x1E69D5920] activeAccount];
  ams_DSID = [activeAccount ams_DSID];
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v5 = [standardUserDefaults dictionaryForKey:@"hasSeenTVPlusTab"];

  if (ams_DSID)
  {
    stringValue = [ams_DSID stringValue];
  }

  else
  {
    stringValue = @"noDSID";
  }

  v7 = [v5 objectForKeyedSubscript:stringValue];
  bOOLValue = [v7 BOOLValue];

  return bOOLValue;
}

+ (void)_setHasSeenTVPlusTabForCurrentUser:(BOOL)user
{
  userCopy = user;
  v21 = *MEMORY[0x1E69E9840];
  activeAccount = [MEMORY[0x1E69D5920] activeAccount];
  ams_DSID = [activeAccount ams_DSID];
  v6 = ams_DSID;
  if (ams_DSID)
  {
    stringValue = [ams_DSID stringValue];
  }

  else
  {
    stringValue = @"noDSID";
  }

  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v9 = [standardUserDefaults dictionaryForKey:@"hasSeenTVPlusTab"];
  v10 = [v9 mutableCopy];

  if (!v10)
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v11 = [MEMORY[0x1E696AD98] numberWithBool:userCopy];
  [v10 setObject:v11 forKey:stringValue];

  standardUserDefaults2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v13 = [v10 copy];
  [standardUserDefaults2 setObject:v13 forKey:@"hasSeenTVPlusTab"];

  v15 = VUIDefaultLogObject(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = @"NO";
    if (userCopy)
    {
      v16 = @"YES";
    }

    v17 = 138412546;
    v18 = v16;
    v19 = 2112;
    v20 = stringValue;
    _os_log_impl(&dword_1E323F000, v15, OS_LOG_TYPE_DEFAULT, "DropOnTab: Setting hasSeenTVPlusTab to %@ for account key: %@", &v17, 0x16u);
  }
}

- (VUITabBarControllerUpdatingDelegate)updatingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_updatingDelegate);

  return WeakRetained;
}

- (VUIMetricsReportPageOverrideDelegate)reportPageOverrideDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_reportPageOverrideDelegate);

  return WeakRetained;
}

- (void)_saveLastSelectedAndScrollToTop:(uint64_t)a1 selectedIndex:(NSObject *)a2 previousSelectedIndex:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&dword_1E323F000, a2, OS_LOG_TYPE_ERROR, "VUITabBarController:: saveLastSelectedAndScrollToTop: Invalid selectedIndex: %lu", &v2, 0xCu);
}

@end