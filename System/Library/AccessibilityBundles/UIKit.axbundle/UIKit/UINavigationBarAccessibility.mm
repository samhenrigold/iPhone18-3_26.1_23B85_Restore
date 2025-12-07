@interface UINavigationBarAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityAllowOutOfBoundsHitTestAtPoint:(CGPoint)point withEvent:(id)event;
- (BOOL)_accessibilityHasLeftRightButtonCountChanged;
- (BOOL)_accessibilityHasStaticNavBarButtonChanged;
- (BOOL)_accessibilityHasSubviewsCountChanged;
- (BOOL)_accessibilityIsGroupedParent;
- (BOOL)accessibilityPerformEscape;
- (BOOL)shouldGroupAccessibilityChildren;
- (id)_accessibilityFetchCachedNavBarElements;
- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event;
- (id)_accessibilityLeftButtonElements;
- (id)_accessibilityRightButtonElements;
- (id)_accessibilityStaticBarButtonItem;
- (id)_accessibilityStaticBarButtonItemWithContents:(uint64_t)contents;
- (id)_axGetCachedStaticNavBarButton;
- (id)_axSubtitleLabel;
- (id)accessibilityElements;
- (id)accessibilityIdentifier;
- (int64_t)_accessibilitySortPriority;
- (uint64_t)_accessibilityHasSubtitleViewChanged;
- (uint64_t)_accessibilityHasTitleAccessoryViewChanged;
- (uint64_t)_accessibilityHasTitleViewChanged;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_accessibilitySetFauxBackButton:(uint64_t)button;
- (void)_accessibilitySetNavBarElements:(id)elements;
- (void)_accessibility_navigationBarContentsDidChange;
- (void)_axSetCachedStaticNavBarButton:(uint64_t)button;
- (void)addSubview:(id)subview;
- (void)insertSubview:(id)subview aboveSubview:(id)aboveSubview;
- (void)insertSubview:(id)subview atIndex:(int64_t)index;
- (void)insertSubview:(id)subview belowSubview:(id)belowSubview;
- (void)willRemoveSubview:(id)subview;
@end

@implementation UINavigationBarAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v11 = location;
  v10 = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  v7 = @"UINavigationBar";
  v6 = "v";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  v4 = @"UINavigationItem";
  v9 = "@";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [location[0] validateClass:v4 hasInstanceMethod:@"_wantsBackButtonIndicator" withFullSignature:{"B", 0}];
  [location[0] validateClass:v7 hasInstanceMethod:@"layoutSubviews" withFullSignature:{v6, 0}];
  v3 = @"_UINavigationBarVisualProviderLegacyIOS";
  [location[0] validateClass:"{CGPoint=dd}" hasInstanceMethod:0 withFullSignature:?];
  [location[0] validateClass:v3 hasInstanceVariable:@"_backIndicatorView" withType:"UIImageView"];
  [location[0] validateClass:v3 isKindOfClass:@"_UINavigationBarVisualProvider"];
  [location[0] validateClass:v7 hasInstanceMethod:@"_backgroundView" withFullSignature:{v9, 0}];
  [location[0] validateClass:v4 hasProperty:@"backAction" withType:v9];
  v5 = @"_UINavigationBarTitleControl";
  [location[0] validateClass:?];
  [location[0] validateClass:v5 hasInstanceMethod:@"titleLabel" withFullSignature:{v9, 0}];
  [location[0] validateClass:v5 hasInstanceMethod:@"titleView" withFullSignature:{v9, 0}];
  [location[0] validateClass:@"UISearchBar" hasInstanceMethod:@"_performCancelAction" withFullSignature:{v6, 0}];
  [location[0] validateClass:v7 hasInstanceVariable:@"_visualProvider" withType:"_UINavigationBarVisualProvider"];
  v8 = @"largeTitleView";
  [location[0] validateClass:@"UIKit._UINavigationBarVisualProviderModernIOSSwift" hasSwiftField:? withSwiftType:?];
  [location[0] validateClass:@"UIKit.NavigationBarLargeTitleView" hasSwiftField:v8 withSwiftType:"_UINavigationBarLargeTitleView"];
  [location[0] validateClass:@"_UINavigationBarLargeTitleView" hasInstanceMethod:@"layout" withFullSignature:{v9, 0}];
  [location[0] validateClass:@"_UINavigationBarLargeTitleViewLayout" hasInstanceVariable:@"_subtitleLabel" withType:"UILabel"];
  objc_storeStrong(v11, v10);
}

- (void)_accessibilitySetNavBarElements:(id)elements
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, elements);
  __UIAccessibilitySetAssociatedObject();
  objc_storeStrong(location, 0);
}

- (void)_accessibilitySetFauxBackButton:(uint64_t)button
{
  buttonCopy = button;
  location = 0;
  objc_storeStrong(&location, a2);
  if (buttonCopy)
  {
    __UIAccessibilitySetAssociatedObject();
  }

  objc_storeStrong(&location, 0);
}

- (BOOL)_accessibilityAllowOutOfBoundsHitTestAtPoint:(CGPoint)point withEvent:(id)event
{
  pointCopy = point;
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, event);
  v13.receiver = selfCopy;
  v13.super_class = UINavigationBarAccessibility;
  v14 = [(UINavigationBarAccessibility *)&v13 _accessibilityAllowOutOfBoundsHitTestAtPoint:location[0] withEvent:pointCopy.x, pointCopy.y];
  if (v14 & 1) == 0 && (AXDeviceHasHomeButton() & 1) == 0 && (AXDeviceIsPhone())
  {
    v11 = 0;
    objc_opt_class();
    v8 = [(UINavigationBarAccessibility *)selfCopy safeValueForKey:@"_backgroundView"];
    v10 = __UIAccessibilityCastAsClass();
    MEMORY[0x29EDC9740](v8);
    v9 = MEMORY[0x29EDC9748](v10);
    objc_storeStrong(&v10, 0);
    v12 = v9;
    [(UINavigationBarAccessibility *)selfCopy convertPoint:v9 toView:pointCopy.x, pointCopy.y];
    if (pointCopy.y < 0.0 && ([v12 pointInside:location[0] withEvent:{v4, v5}] & 1) != 0)
    {
      v14 = 1;
    }

    objc_storeStrong(&v12, 0);
  }

  v7 = v14;
  objc_storeStrong(location, 0);
  return v7 & 1;
}

- (BOOL)shouldGroupAccessibilityChildren
{
  bOOLValue = 1;
  accessibilityUserDefinedShouldGroupChildren = [(UINavigationBarAccessibility *)self accessibilityUserDefinedShouldGroupChildren];
  *&v2 = MEMORY[0x29EDC9740](accessibilityUserDefinedShouldGroupChildren).n128_u64[0];
  if (accessibilityUserDefinedShouldGroupChildren)
  {
    accessibilityUserDefinedShouldGroupChildren2 = [(UINavigationBarAccessibility *)self accessibilityUserDefinedShouldGroupChildren];
    bOOLValue = [accessibilityUserDefinedShouldGroupChildren2 BOOLValue];
    MEMORY[0x29EDC9740](accessibilityUserDefinedShouldGroupChildren2);
  }

  return bOOLValue & 1;
}

- (BOOL)_accessibilityIsGroupedParent
{
  selfCopy = self;
  v7 = a2;
  accessibilityElements = [(UINavigationBarAccessibility *)self accessibilityElements];
  v5 = [accessibilityElements count];
  *&v2 = MEMORY[0x29EDC9740](accessibilityElements).n128_u64[0];
  if (v5 <= 2)
  {
    return 0;
  }

  v6.receiver = selfCopy;
  v6.super_class = UINavigationBarAccessibility;
  return [(UINavigationBarAccessibility *)&v6 _accessibilityIsGroupedParent];
}

- (int64_t)_accessibilitySortPriority
{
  selfCopy = self;
  v14 = a2;
  v12 = 0;
  objc_opt_class();
  v11 = __UIAccessibilityCastAsClass();
  v10 = MEMORY[0x29EDC9748](v11);
  objc_storeStrong(&v11, 0);
  window = [v10 window];
  windowScene = [window windowScene];
  interfaceOrientation = [windowScene interfaceOrientation];
  MEMORY[0x29EDC9740](windowScene);
  MEMORY[0x29EDC9740](window);
  MEMORY[0x29EDC9740](v10);
  v13 = interfaceOrientation;
  IsLandscape = 0;
  if (AXDeviceIsPhone())
  {
    IsLandscape = UIInterfaceOrientationIsLandscape(v13);
  }

  v9 = IsLandscape;
  if (IsLandscape)
  {
    return 0x7FFFFFFFLL;
  }

  v8.receiver = selfCopy;
  v8.super_class = UINavigationBarAccessibility;
  return [(UINavigationBarAccessibility *)&v8 _accessibilitySortPriority];
}

- (id)accessibilityIdentifier
{
  v65 = *MEMORY[0x29EDCA608];
  selfCopy = self;
  v53[1] = a2;
  v52.receiver = self;
  v52.super_class = UINavigationBarAccessibility;
  v53[0] = [(UINavigationBarAccessibility *)&v52 accessibilityIdentifier];
  location = AXLogUIA();
  type = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(location, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_2_8_64_8_64(v64, v53[0], selfCopy);
    _os_log_debug_impl(&dword_29C4D6000, location, type, "NavBar: set identifier %@ %@", v64, 0x16u);
  }

  objc_storeStrong(&location, 0);
  if (v53[0])
  {
    accessibilityIdentifier3 = MEMORY[0x29EDC9748](v53[0]);
    v49 = 1;
  }

  else
  {
    objc_opt_class();
    topItem = [(UINavigationBarAccessibility *)selfCopy topItem];
    v48 = __UIAccessibilityCastAsClass();
    MEMORY[0x29EDC9740](topItem);
    v47 = AXLogUIA();
    v46 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_3_2_8_69_8_64(v63, v48, selfCopy);
      _os_log_debug_impl(&dword_29C4D6000, v47, v46, "NavBar: top most item %{sensitive}@ %@", v63, 0x16u);
    }

    objc_storeStrong(&v47, 0);
    accessibilityIdentifier = [v48 accessibilityIdentifier];
    v3 = v53[0];
    v53[0] = accessibilityIdentifier;
    if ([accessibilityIdentifier length])
    {
      v45 = AXLogUIA();
      v44 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_2_8_64_8_64(v62, v53[0], selfCopy);
        _os_log_debug_impl(&dword_29C4D6000, v45, v44, "NavBar: top most nav item identifier %@ %@", v62, 0x16u);
      }

      objc_storeStrong(&v45, 0);
      accessibilityIdentifier3 = MEMORY[0x29EDC9748](v53[0]);
      v49 = 1;
    }

    else
    {
      title = [v48 title];
      v5 = v53[0];
      v53[0] = title;
      if ([title length])
      {
        oslog = AXLogUIA();
        v42 = OS_LOG_TYPE_DEBUG;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
        {
          __os_log_helper_16_3_2_8_69_8_64(v61, v53[0], selfCopy);
          _os_log_debug_impl(&dword_29C4D6000, oslog, v42, "NavBar: top most nav item title %{sensitive}@ %@", v61, 0x16u);
        }

        objc_storeStrong(&oslog, 0);
        accessibilityIdentifier3 = MEMORY[0x29EDC9748](v53[0]);
        v49 = 1;
      }

      else
      {
        titleView = [v48 titleView];
        accessibilityLabel = [titleView accessibilityLabel];
        v7 = v53[0];
        v53[0] = accessibilityLabel;
        MEMORY[0x29EDC9740](v7);
        if ([v53[0] length])
        {
          v41 = AXLogUIA();
          v40 = OS_LOG_TYPE_DEBUG;
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
          {
            __os_log_helper_16_2_2_8_64_8_64(v60, v53[0], selfCopy);
            _os_log_debug_impl(&dword_29C4D6000, v41, v40, "NavBar: top most titleView %@ %@", v60, 0x16u);
          }

          objc_storeStrong(&v41, 0);
          accessibilityIdentifier3 = MEMORY[0x29EDC9748](v53[0]);
          v49 = 1;
        }

        else
        {
          objc_opt_class();
          delegate = [(UINavigationBarAccessibility *)selfCopy delegate];
          v39 = __UIAccessibilityCastAsClass();
          *&v8 = MEMORY[0x29EDC9740](delegate).n128_u64[0];
          if (!v39)
          {
            goto LABEL_42;
          }

          delegate2 = [v39 delegate];
          accessibilityIdentifier2 = [delegate2 accessibilityIdentifier];
          v24 = [accessibilityIdentifier2 length];
          *&v9 = MEMORY[0x29EDC9740](accessibilityIdentifier2).n128_u64[0];
          if (v24)
          {
            v37 = AXLogUIA();
            v36 = OS_LOG_TYPE_DEBUG;
            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
            {
              __os_log_helper_16_2_2_8_64_8_64(v59, delegate2, selfCopy);
              _os_log_debug_impl(&dword_29C4D6000, v37, v36, "NavBar: navDelegate %@ %@", v59, 0x16u);
            }

            objc_storeStrong(&v37, 0);
            accessibilityIdentifier3 = [delegate2 accessibilityIdentifier];
            v49 = 1;
          }

          else
          {
            navigationItem = [v39 navigationItem];
            accessibilityIdentifier4 = [v48 accessibilityIdentifier];
            v22 = [accessibilityIdentifier4 length];
            *&v10 = MEMORY[0x29EDC9740](accessibilityIdentifier4).n128_u64[0];
            if (v22)
            {
              v34 = AXLogUIA();
              v33 = OS_LOG_TYPE_DEBUG;
              if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
              {
                accessibilityIdentifier5 = [v48 accessibilityIdentifier];
                __os_log_helper_16_2_2_8_64_8_64(v58, navigationItem, accessibilityIdentifier5);
                _os_log_debug_impl(&dword_29C4D6000, v34, v33, "NavBar: using identifier from navController:item %@ %@", v58, 0x16u);
                MEMORY[0x29EDC9740](accessibilityIdentifier5);
              }

              objc_storeStrong(&v34, 0);
              accessibilityIdentifier3 = [v48 accessibilityIdentifier];
              v49 = 1;
            }

            else
            {
              obj = [navigationItem title];
              if (obj)
              {
                v31 = AXLogUIA();
                v30 = OS_LOG_TYPE_DEBUG;
                if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
                {
                  __os_log_helper_16_2_2_8_64_8_64(v57, navigationItem, obj);
                  _os_log_debug_impl(&dword_29C4D6000, v31, v30, "NavBar: using title from navController:item %@ %@", v57, 0x16u);
                }

                objc_storeStrong(&v31, 0);
                objc_storeStrong(v53, obj);
              }

              else
              {
                visibleViewController = [v39 visibleViewController];
                if (!visibleViewController)
                {
                  visibleViewController = [v39 topViewController];
                  MEMORY[0x29EDC9740](0);
                }

                accessibilityIdentifier6 = [v48 accessibilityIdentifier];
                v12 = v53[0];
                v53[0] = accessibilityIdentifier6;
                if (![accessibilityIdentifier6 length])
                {
                  v13 = objc_opt_class();
                  v19 = NSStringFromClass(v13);
                  v18 = [(NSString *)v19 componentsSeparatedByString:@"Controller"];
                  firstObject = [(NSArray *)v18 firstObject];
                  v15 = v53[0];
                  v53[0] = firstObject;
                  MEMORY[0x29EDC9740](v15);
                  MEMORY[0x29EDC9740](v18);
                  MEMORY[0x29EDC9740](v19);
                }

                v28 = AXLogUIA();
                if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
                {
                  __os_log_helper_16_2_2_8_64_8_64(v56, visibleViewController, v53[0]);
                  _os_log_debug_impl(&dword_29C4D6000, v28, OS_LOG_TYPE_DEBUG, "NavBar: viewController %@ %@", v56, 0x16u);
                }

                objc_storeStrong(&v28, 0);
                objc_storeStrong(&visibleViewController, 0);
              }

              objc_storeStrong(&obj, 0);
              v49 = 0;
            }

            objc_storeStrong(&navigationItem, 0);
          }

          objc_storeStrong(&delegate2, 0);
          if (!v49)
          {
LABEL_42:
            accessibilityIdentifier3 = MEMORY[0x29EDC9748](v53[0]);
            v49 = 1;
          }

          objc_storeStrong(&v39, 0);
        }
      }
    }

    objc_storeStrong(&v48, 0);
  }

  objc_storeStrong(v53, 0);
  v16 = accessibilityIdentifier3;

  return v16;
}

- (BOOL)accessibilityPerformEscape
{
  v61 = *MEMORY[0x29EDCA608];
  selfCopy = self;
  v56[1] = a2;
  v56[0] = MEMORY[0x29EDC9748](self);
  _accessibility_contentsOfNavigationBar = [v56[0] _accessibility_contentsOfNavigationBar];
  topItem = [_accessibility_contentsOfNavigationBar topItem];
  searchController = [topItem searchController];
  if ([searchController isActive])
  {
    v48 = MEMORY[0x29EDCA5F8];
    v49 = -1073741824;
    v50 = 0;
    v51 = __58__UINavigationBarAccessibility_accessibilityPerformEscape__block_invoke;
    v52 = &unk_29F30C7C8;
    v53 = MEMORY[0x29EDC9748](searchController);
    AXPerformSafeBlock();
    accessibilityPerformEscape = 1;
    v47 = 1;
    objc_storeStrong(&v53, 0);
  }

  else
  {
    viewsRepresentingBackButton = [_accessibility_contentsOfNavigationBar viewsRepresentingBackButton];
    v45 = 0;
    v43 = 0;
    v41 = 0;
    v39 = 0;
    v31 = 1;
    if (![viewsRepresentingBackButton count])
    {
      backBarButtonItem = [_accessibility_contentsOfNavigationBar backBarButtonItem];
      v45 = 1;
      v29 = 0;
      if (backBarButtonItem)
      {
        backBarButtonItem2 = [_accessibility_contentsOfNavigationBar backBarButtonItem];
        v43 = 1;
        v29 = 0;
        if (([backBarButtonItem2 isHidden] & 1) == 0)
        {
          topItem2 = [v56[0] topItem];
          v41 = 1;
          LOBYTE(v28) = 1;
          if (topItem2)
          {
            topItem3 = [v56[0] topItem];
            v39 = 1;
            v28 = [topItem3 hidesBackButton] ^ 1;
          }

          v29 = v28;
        }
      }

      v31 = v29;
    }

    if (v39)
    {
      MEMORY[0x29EDC9740](topItem3);
    }

    if (v41)
    {
      MEMORY[0x29EDC9740](topItem2);
    }

    if (v43)
    {
      MEMORY[0x29EDC9740](backBarButtonItem2);
    }

    if (v45)
    {
      MEMORY[0x29EDC9740](backBarButtonItem);
    }

    *&v2 = MEMORY[0x29EDC9740](viewsRepresentingBackButton).n128_u64[0];
    if (v31)
    {
      [v56[0] _accessibility_triggerBackButton];
      UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
      accessibilityPerformEscape = 1;
      v47 = 1;
    }

    else
    {
      cancelBarButtonItems = [_accessibility_contentsOfNavigationBar cancelBarButtonItems];
      v27 = [cancelBarButtonItems count];
      *&v3 = MEMORY[0x29EDC9740](cancelBarButtonItems).n128_u64[0];
      if (v27)
      {
        cancelBarButtonItems2 = [_accessibility_contentsOfNavigationBar cancelBarButtonItems];
        firstObject = [cancelBarButtonItems2 firstObject];
        [v56[0] _accessibility_triggerBarButtonItem:?];
        MEMORY[0x29EDC9740](firstObject);
        MEMORY[0x29EDC9740](cancelBarButtonItems2);
        accessibilityPerformEscape = 1;
        v47 = 1;
      }

      else
      {
        memset(__b, 0, sizeof(__b));
        topItem4 = [_accessibility_contentsOfNavigationBar topItem];
        obj = [topItem4 leftBarButtonItems];
        v23 = [obj countByEnumeratingWithState:__b objects:v60 count:{16, MEMORY[0x29EDC9740](topItem4).n128_f64[0]}];
        if (v23)
        {
          v18 = *__b[2];
          v19 = 0;
          v20 = v23;
          while (1)
          {
            v17 = v19;
            if (*__b[2] != v18)
            {
              objc_enumerationMutation(obj);
            }

            v38 = *(__b[1] + 8 * v19);
            view = [v38 view];
            accessibilityTraits = [view accessibilityTraits];
            v16 = accessibilityTraits & *MEMORY[0x29EDC7500];
            *&v5 = MEMORY[0x29EDC9740](view).n128_u64[0];
            if (v16)
            {
              break;
            }

            ++v19;
            if (v17 + 1 >= v20)
            {
              v19 = 0;
              v20 = [obj countByEnumeratingWithState:__b objects:v60 count:{16, v5}];
              if (!v20)
              {
                goto LABEL_30;
              }
            }
          }

          [v56[0] _accessibility_triggerBarButtonItem:{v38, v5}];
          accessibilityPerformEscape = 1;
          v47 = 1;
        }

        else
        {
LABEL_30:
          v47 = 0;
        }

        MEMORY[0x29EDC9740](obj);
        if (!v47)
        {
          v36 = [(UINavigationBarAccessibility *)selfCopy _accessibilityStaticBarButtonItemWithContents:_accessibility_contentsOfNavigationBar];
          accessibilityTraits2 = [v36 accessibilityTraits];
          if ((accessibilityTraits2 & *MEMORY[0x29EDC7500]) != 0)
          {
            [v56[0] _accessibility_triggerBarButtonItem:v36];
            accessibilityPerformEscape = 1;
            v47 = 1;
          }

          else
          {
            memset(v34, 0, sizeof(v34));
            items = [v56[0] items];
            v14 = [items countByEnumeratingWithState:v34 objects:v59 count:16];
            if (v14)
            {
              v10 = *v34[2];
              v11 = 0;
              v12 = v14;
              while (1)
              {
                v9 = v11;
                if (*v34[2] != v10)
                {
                  objc_enumerationMutation(items);
                }

                v35 = *(v34[1] + 8 * v11);
                if ([v35 accessibilityPerformEscape])
                {
                  break;
                }

                ++v11;
                if (v9 + 1 >= v12)
                {
                  v11 = 0;
                  v12 = [items countByEnumeratingWithState:v34 objects:v59 count:16];
                  if (!v12)
                  {
                    goto LABEL_42;
                  }
                }
              }

              accessibilityPerformEscape = 1;
              v47 = 1;
            }

            else
            {
LABEL_42:
              v47 = 0;
            }

            *&v7 = MEMORY[0x29EDC9740](items).n128_u64[0];
            if (!v47)
            {
              v33.receiver = selfCopy;
              v33.super_class = UINavigationBarAccessibility;
              accessibilityPerformEscape = [(UINavigationBarAccessibility *)&v33 accessibilityPerformEscape];
              v47 = 1;
            }
          }

          objc_storeStrong(&v36, 0);
        }
      }
    }
  }

  objc_storeStrong(&searchController, 0);
  objc_storeStrong(&_accessibility_contentsOfNavigationBar, 0);
  objc_storeStrong(v56, 0);
  return accessibilityPerformEscape & 1;
}

double __58__UINavigationBarAccessibility_accessibilityPerformEscape__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) searchBar];
  [v2 _performCancelAction];
  *&result = MEMORY[0x29EDC9740](v2).n128_u64[0];
  return result;
}

- (id)_accessibilityStaticBarButtonItemWithContents:(uint64_t)contents
{
  contentsCopy = contents;
  location = 0;
  objc_storeStrong(&location, a2);
  if (contentsCopy)
  {
    staticBarButtonItem = [location staticBarButtonItem];
    if ([staticBarButtonItem isHidden])
    {
      objc_storeStrong(&staticBarButtonItem, 0);
    }

    v8 = MEMORY[0x29EDC9748](staticBarButtonItem);
    v5 = 1;
    objc_storeStrong(&staticBarButtonItem, 0);
  }

  else
  {
    v8 = 0;
    v5 = 1;
  }

  objc_storeStrong(&location, 0);
  v2 = v8;

  return v2;
}

- (id)accessibilityElements
{
  v7[2] = self;
  v7[1] = a2;
  v7[0] = [(UINavigationBarAccessibility *)self _accessibilityFetchCachedNavBarElements];
  v2 = [v7[0] axFilterObjectsUsingBlock:&__block_literal_global_27];
  v3 = v7[0];
  v7[0] = v2;
  *&v4 = MEMORY[0x29EDC9740](v3).n128_u64[0];
  v6 = [v7[0] sortedArrayUsingSelector:{sel_accessibilityCompareGeometry_, v4}];
  objc_storeStrong(v7, 0);

  return v6;
}

- (id)_accessibilityFetchCachedNavBarElements
{
  v217 = *MEMORY[0x29EDCA608];
  val = self;
  if (self)
  {
    v204.receiver = val;
    v204.super_class = UINavigationBarAccessibility;
    v205 = objc_msgSendSuper2(&v204, sel_accessibilityElements);
    if (v205)
    {
      v207 = MEMORY[0x29EDC9748](v205);
      v203 = 1;
    }

    else
    {
      if ([(UINavigationBarAccessibility *)val _accessibilityHasLeftRightButtonCountChanged]|| ([(UINavigationBarAccessibility *)val _accessibilityHasTitleViewChanged]& 1) != 0 || ([(UINavigationBarAccessibility *)val _accessibilityHasSubtitleViewChanged]& 1) != 0 || [(UINavigationBarAccessibility *)val _accessibilityHasStaticNavBarButtonChanged]|| ([(UINavigationBarAccessibility *)val _accessibilityHasTitleAccessoryViewChanged]& 1) != 0 || [(UINavigationBarAccessibility *)val _accessibilityHasSubviewsCountChanged])
      {
        oslog = AXLogUIA();
        type = OS_LOG_TYPE_INFO;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
        {
          __os_log_helper_16_2_1_8_64(v216, val);
          _os_log_impl(&dword_29C4D6000, oslog, type, "Left/Right button count change for %@, resetting", v216, 0xCu);
        }

        objc_storeStrong(&oslog, 0);
        [val _accessibilityRemoveValueForKey:*MEMORY[0x29EDC7620]];
      }

      v200 = [val _accessibilityValueForKey:*MEMORY[0x29EDC7620]];
      if ([v200 count] && objc_msgSend(v200, "indexOfObjectPassingTest:", &__block_literal_global_475) == 0x7FFFFFFFFFFFFFFFLL)
      {
        v207 = MEMORY[0x29EDC9748](v200);
        v203 = 1;
      }

      else
      {
        [val _accessibilityRemoveValueForKey:*MEMORY[0x29EDC7620]];
        array = [MEMORY[0x29EDB8DE8] array];
        v3 = v200;
        v200 = array;
        MEMORY[0x29EDC9740](v3);
        v199 = MEMORY[0x29EDC9748](val);
        _accessibility_contentsOfNavigationBar = [v199 _accessibility_contentsOfNavigationBar];
        viewsRepresentingBackButton = [_accessibility_contentsOfNavigationBar viewsRepresentingBackButton];
        v196 = ([val _accessibilityViewIsVisible] & 1) != 0;
        v195 = 0;
        topItem = [_accessibility_contentsOfNavigationBar topItem];
        searchController = [topItem searchController];
        v193 = 0;
        v191 = 0;
        hidesNavigationBarDuringPresentation = 0;
        if ([searchController isActive])
        {
          topItem2 = [_accessibility_contentsOfNavigationBar topItem];
          v193 = 1;
          searchController2 = [topItem2 searchController];
          v191 = 1;
          hidesNavigationBarDuringPresentation = [searchController2 hidesNavigationBarDuringPresentation];
        }

        v195 = hidesNavigationBarDuringPresentation & 1;
        if (v191)
        {
          MEMORY[0x29EDC9740](searchController2);
        }

        if (v193)
        {
          MEMORY[0x29EDC9740](topItem2);
        }

        MEMORY[0x29EDC9740](searchController);
        *&v4 = MEMORY[0x29EDC9740](topItem).n128_u64[0];
        if ((v195 & 1) == 0)
        {
          if ([viewsRepresentingBackButton indexOfObjectPassingTest:{&__block_literal_global_478_0, v4}] != 0x7FFFFFFFFFFFFFFFLL)
          {
            v188 = 0;
            objc_opt_class();
            topItem3 = [_accessibility_contentsOfNavigationBar topItem];
            v107 = [topItem3 safeValueForKey:@"backAction"];
            v187 = __UIAccessibilityCastAsClass();
            MEMORY[0x29EDC9740](v107);
            MEMORY[0x29EDC9740](topItem3);
            v186 = MEMORY[0x29EDC9748](v187);
            objc_storeStrong(&v187, 0);
            v189 = v186;
            backBarButtonItem = [_accessibility_contentsOfNavigationBar backBarButtonItem];
            _accessibilityAXAttributedLabel = [backBarButtonItem _accessibilityAXAttributedLabel];
            v185 = trimWhitespaceToNil(_accessibilityAXAttributedLabel);
            MEMORY[0x29EDC9740](_accessibilityAXAttributedLabel);
            *&v5 = MEMORY[0x29EDC9740](backBarButtonItem).n128_u64[0];
            v183 = 0;
            v181 = 0;
            v179 = 0;
            if (v185)
            {
              objc_storeStrong(&v185, v185);
            }

            else
            {
              backItem = [_accessibility_contentsOfNavigationBar backItem];
              v183 = 1;
              backButtonTitle = [backItem backButtonTitle];
              v181 = 1;
              v180 = trimWhitespaceToNil(backButtonTitle);
              v179 = 1;
              objc_storeStrong(&v185, v180);
            }

            if (v179)
            {
              MEMORY[0x29EDC9740](v180);
            }

            if (v181)
            {
              MEMORY[0x29EDC9740](backButtonTitle);
            }

            if (v183)
            {
              MEMORY[0x29EDC9740](backItem);
            }

            v177 = 0;
            v175 = 0;
            v173 = 0;
            if (v185)
            {
              objc_storeStrong(&v185, v185);
            }

            else
            {
              backItem2 = [_accessibility_contentsOfNavigationBar backItem];
              v177 = 1;
              _accessibilityAXAttributedLabel2 = [backItem2 _accessibilityAXAttributedLabel];
              v175 = 1;
              v174 = trimWhitespaceToNil(_accessibilityAXAttributedLabel2);
              v173 = 1;
              objc_storeStrong(&v185, v174);
            }

            if (v173)
            {
              MEMORY[0x29EDC9740](v174);
            }

            if (v175)
            {
              MEMORY[0x29EDC9740](_accessibilityAXAttributedLabel2);
            }

            if (v177)
            {
              MEMORY[0x29EDC9740](backItem2);
            }

            v171 = 0;
            v169 = 0;
            v167 = 0;
            if (v185)
            {
              objc_storeStrong(&v185, v185);
            }

            else
            {
              backItem3 = [_accessibility_contentsOfNavigationBar backItem];
              v171 = 1;
              title = [backItem3 title];
              v169 = 1;
              v168 = trimWhitespaceToNil(title);
              v167 = 1;
              objc_storeStrong(&v185, v168);
            }

            if (v167)
            {
              MEMORY[0x29EDC9740](v168);
            }

            if (v169)
            {
              MEMORY[0x29EDC9740](title);
            }

            if (v171)
            {
              MEMORY[0x29EDC9740](backItem3);
            }

            memset(__b, 0, sizeof(__b));
            _accessibility_contentsOfNavigationBar2 = [v199 _accessibility_contentsOfNavigationBar];
            viewsRepresentingBackButton2 = [_accessibility_contentsOfNavigationBar2 viewsRepresentingBackButton];
            v102 = [viewsRepresentingBackButton2 countByEnumeratingWithState:__b objects:v215 count:{16, MEMORY[0x29EDC9740](_accessibility_contentsOfNavigationBar2).n128_f64[0]}];
            if (v102)
            {
              v99 = *__b[2];
              v100 = 0;
              v101 = v102;
              while (1)
              {
                v98 = v100;
                if (*__b[2] != v99)
                {
                  objc_enumerationMutation(viewsRepresentingBackButton2);
                }

                v166 = *(__b[1] + 8 * v100);
                v163 = 0;
                v161 = 0;
                if (v185)
                {
                  objc_storeStrong(&v185, v185);
                }

                else
                {
                  _accessibilityAXAttributedLabel3 = [v166 _accessibilityAXAttributedLabel];
                  v163 = 1;
                  v162 = trimWhitespaceToNil(_accessibilityAXAttributedLabel3);
                  v161 = 1;
                  objc_storeStrong(&v185, v162);
                }

                if (v161)
                {
                  MEMORY[0x29EDC9740](v162);
                }

                if (v163)
                {
                  MEMORY[0x29EDC9740](_accessibilityAXAttributedLabel3);
                }

                ++v100;
                if (v98 + 1 >= v101)
                {
                  v100 = 0;
                  v101 = [viewsRepresentingBackButton2 countByEnumeratingWithState:__b objects:v215 count:16];
                  if (!v101)
                  {
                    break;
                  }
                }
              }
            }

            *&v6 = MEMORY[0x29EDC9740](viewsRepresentingBackButton2).n128_u64[0];
            v159 = 0;
            v157 = 0;
            if (v185)
            {
              objc_storeStrong(&v185, v185);
            }

            else
            {
              accessibilityLabel = [v189 accessibilityLabel];
              v159 = 1;
              v158 = trimWhitespaceToNil(accessibilityLabel);
              v157 = 1;
              objc_storeStrong(&v185, v158);
            }

            if (v157)
            {
              MEMORY[0x29EDC9740](v158);
            }

            if (v159)
            {
              MEMORY[0x29EDC9740](accessibilityLabel);
            }

            v155 = 0;
            if (v185)
            {
              objc_storeStrong(&v185, v185);
            }

            else
            {
              v156 = accessibilityLocalizedString(@"uibutton.navbar.back.button.title");
              v155 = 1;
              objc_storeStrong(&v185, v156);
            }

            if (v155)
            {
              MEMORY[0x29EDC9740](v156);
            }

            _accessibilityFauxBackButton = [val _accessibilityFauxBackButton];
            v152 = 0;
            if (_accessibilityFauxBackButton)
            {
              v7 = MEMORY[0x29EDC9748](_accessibilityFauxBackButton);
            }

            else
            {
              v96 = [UIAccessibilityBackButtonElement alloc];
              v153 = [(UIAccessibilityBackButtonElement *)v96 initWithAccessibilityContainer:v199];
              v152 = 1;
              v7 = MEMORY[0x29EDC9748](v153);
            }

            v154 = v7;
            if (v152)
            {
              MEMORY[0x29EDC9740](v153);
            }

            *&v8 = MEMORY[0x29EDC9740](_accessibilityFauxBackButton).n128_u64[0];
            [v154 setAccessibilityContainer:{val, v8}];
            [(UINavigationBarAccessibility *)val _accessibilitySetFauxBackButton:v154];
            [v154 setAssociatedViews:viewsRepresentingBackButton];
            objc_initWeak(&from, val);
            v95 = v154;
            v145 = MEMORY[0x29EDCA5F8];
            v146 = -1073741824;
            v147 = 0;
            v148 = __71__UINavigationBarAccessibility__accessibilityFetchCachedNavBarElements__block_invoke_3;
            v149 = &unk_29F30CAE8;
            objc_copyWeak(&v150, &from);
            [v95 _setAccessibilityFrameBlock:&v145];
            backBarButtonItem2 = [_accessibility_contentsOfNavigationBar backBarButtonItem];
            accessibilityUserInputLabels = [backBarButtonItem2 accessibilityUserInputLabels];
            if (![accessibilityUserInputLabels count])
            {
              v143 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
              [v143 axSafelyAddObject:v185];
              backItem4 = [_accessibility_contentsOfNavigationBar backItem];
              _abbreviatedBackButtonTitles = [backItem4 _abbreviatedBackButtonTitles];
              v91 = [_abbreviatedBackButtonTitles ax_filteredArrayUsingBlock:&__block_literal_global_486];
              [v143 axSafelyAddObjectsFromArray:?];
              MEMORY[0x29EDC9740](v91);
              MEMORY[0x29EDC9740](_abbreviatedBackButtonTitles);
              MEMORY[0x29EDC9740](backItem4);
              v90 = UIKitAccessibilityLocalizedString();
              [v143 axSafelyAddObject:?];
              MEMORY[0x29EDC9740](v90);
              objc_storeStrong(&accessibilityUserInputLabels, v143);
              objc_storeStrong(&v143, 0);
            }

            [v154 setAccessibilityUserInputLabels:accessibilityUserInputLabels];
            [v154 _accessibilitySetSortPriority:1];
            [v154 setAccessibilityLabel:v185];
            accessibilityIdentifier = [v189 accessibilityIdentifier];
            [v154 setAccessibilityIdentifier:?];
            *&v9 = MEMORY[0x29EDC9740](accessibilityIdentifier).n128_u64[0];
            [v154 setAccessibilityTraits:{*MEMORY[0x29EDC7F70] | *MEMORY[0x29EDC7500], v9}];
            backItem5 = [_accessibility_contentsOfNavigationBar backItem];
            accessibilityLanguage = [backItem5 accessibilityLanguage];
            [v154 setAccessibilityLanguage:?];
            MEMORY[0x29EDC9740](accessibilityLanguage);
            *&v10 = MEMORY[0x29EDC9740](backItem5).n128_u64[0];
            [v200 addObject:{v154, v10}];
            objc_storeStrong(&accessibilityUserInputLabels, 0);
            objc_destroyWeak(&v150);
            objc_destroyWeak(&from);
            objc_storeStrong(&v154, 0);
            objc_storeStrong(&v185, 0);
            objc_storeStrong(&v189, 0);
          }

          _accessibilityRightButtonElements = [(UINavigationBarAccessibility *)val _accessibilityRightButtonElements];
          _accessibilityLeftButtonElements = [(UINavigationBarAccessibility *)val _accessibilityLeftButtonElements];
          memset(v139, 0, sizeof(v139));
          v86 = MEMORY[0x29EDB8D80];
          largeTitleView = [_accessibility_contentsOfNavigationBar largeTitleView];
          titleView = [_accessibility_contentsOfNavigationBar titleView];
          topItem4 = [_accessibility_contentsOfNavigationBar topItem];
          _largeSubtitleView = [topItem4 _largeSubtitleView];
          v81 = [v86 axArrayByIgnoringNilElementsWithCount:{3, largeTitleView, titleView, _largeSubtitleView}];
          MEMORY[0x29EDC9740](_largeSubtitleView);
          MEMORY[0x29EDC9740](topItem4);
          MEMORY[0x29EDC9740](titleView);
          v80 = [v81 countByEnumeratingWithState:v139 objects:v214 count:{16, MEMORY[0x29EDC9740](largeTitleView).n128_f64[0]}];
          if (v80)
          {
            v77 = *v139[2];
            v78 = 0;
            v79 = v80;
            while (1)
            {
              v76 = v78;
              if (*v139[2] != v77)
              {
                objc_enumerationMutation(v81);
              }

              v140 = *(v139[1] + 8 * v78);
              v138 = MEMORY[0x29EDC9748](v140);
              NSClassFromString(&cfstr_Uinavigationba_8.isa);
              if (objc_opt_isKindOfClass())
              {
                v75 = [v140 safeValueForKey:@"titleLabel"];
                *&v11 = MEMORY[0x29EDC9740](v75).n128_u64[0];
                if (v75)
                {
                  [v140 _accessibilityLoadAccessibilityInformation];
                  v12 = [v140 safeValueForKey:@"titleLabel"];
                }

                else
                {
                  v12 = [v140 safeValueForKey:{@"titleView", v11}];
                }

                v13 = v138;
                v138 = v12;
                MEMORY[0x29EDC9740](v13);
              }

              if ([v138 _accessibilityViewIsVisible])
              {
                v137 = objc_opt_new();
                [(_UIAccessibilityNavigationViewInfo *)v137 setNavigationBar:?];
                topItem5 = [_accessibility_contentsOfNavigationBar topItem];
                [(_UIAccessibilityNavigationViewInfo *)v137 setNavigationItem:topItem5];
                MEMORY[0x29EDC9740](topItem5);
                objc_opt_class();
                v73 = __UIAccessibilityCastAsSafeCategory();
                [v73 _accessibilitySetNavigationViewInfo:v137];
                *&v14 = MEMORY[0x29EDC9740](v73).n128_u64[0];
                [v200 addObject:{v138, v14}];
                [val _accessibilitySetRetainedValue:v138 forKey:@"AXTitleView"];
                objc_storeStrong(&v137, 0);
                v203 = 0;
              }

              else
              {
                v203 = 5;
              }

              objc_storeStrong(&v138, 0);
              ++v78;
              if (v76 + 1 >= v79)
              {
                v78 = 0;
                v79 = [v81 countByEnumeratingWithState:v139 objects:v214 count:16];
                if (!v79)
                {
                  break;
                }
              }
            }
          }

          MEMORY[0x29EDC9740](v81);
          _axSubtitleLabel = [(UINavigationBarAccessibility *)val _axSubtitleLabel];
          if (_axSubtitleLabel && ([_axSubtitleLabel _accessibilityViewIsVisible] & 1) != 0)
          {
            [v200 addObject:_axSubtitleLabel];
            [val _accessibilitySetRetainedValue:_axSubtitleLabel forKey:@"AXSubtitleView"];
          }

          topItem6 = [_accessibility_contentsOfNavigationBar topItem];
          _largeTitleAccessoryView = [topItem6 _largeTitleAccessoryView];
          *&v15 = MEMORY[0x29EDC9740](topItem6).n128_u64[0];
          if (_largeTitleAccessoryView && ([_largeTitleAccessoryView _accessibilityViewIsVisible] & 1) != 0)
          {
            [v200 addObject:_largeTitleAccessoryView];
            [val _accessibilitySetRetainedValue:_largeTitleAccessoryView forKey:@"AXTitleAccessoryView"];
          }

          v71 = val;
          v70 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:{objc_msgSend(_accessibilityLeftButtonElements, "count", v15)}];
          [v71 _accessibilitySetRetainedValue:? forKey:?];
          *&v16 = MEMORY[0x29EDC9740](v70).n128_u64[0];
          v69 = val;
          v68 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:{objc_msgSend(_accessibilityRightButtonElements, "count", v16)}];
          [v69 _accessibilitySetRetainedValue:? forKey:?];
          *&v17 = MEMORY[0x29EDC9740](v68).n128_u64[0];
          cancelBarButtonItems = [_accessibility_contentsOfNavigationBar cancelBarButtonItems];
          otherBarButtonItems = [_accessibility_contentsOfNavigationBar otherBarButtonItems];
          v132 = [(UINavigationBarAccessibility *)val _accessibilityStaticBarButtonItemWithContents:_accessibility_contentsOfNavigationBar];
          v131 = [MEMORY[0x29EDB8D80] axArrayByIgnoringNilElementsWithCount:{1, v132}];
          v130 = [MEMORY[0x29EDB8E20] set];
          memset(v128, 0, sizeof(v128));
          v66 = [MEMORY[0x29EDB8D80] axArrayByIgnoringNilElementsWithCount:{5, _accessibilityRightButtonElements, _accessibilityLeftButtonElements, cancelBarButtonItems, otherBarButtonItems, v131}];
          v67 = [v66 countByEnumeratingWithState:v128 objects:v213 count:16];
          if (v67)
          {
            v63 = *v128[2];
            v64 = 0;
            v65 = v67;
            while (1)
            {
              v62 = v64;
              if (*v128[2] != v63)
              {
                objc_enumerationMutation(v66);
              }

              v129 = *(v128[1] + 8 * v64);
              memset(v126, 0, sizeof(v126));
              v60 = MEMORY[0x29EDC9748](v129);
              v61 = [v60 countByEnumeratingWithState:v126 objects:v212 count:16];
              if (v61)
              {
                v57 = *v126[2];
                v58 = 0;
                v59 = v61;
                while (1)
                {
                  v56 = v58;
                  if (*v126[2] != v57)
                  {
                    objc_enumerationMutation(v60);
                  }

                  v127 = *(v126[1] + 8 * v58);
                  view = [v127 view];
                  isAccessibilityElement = [view isAccessibilityElement];
                  v122 = 0;
                  v120 = 0;
                  if (isAccessibilityElement & 1) != 0 || ([view _accessibilityHasOrderedChildren])
                  {
                    v211 = view;
                    v123 = [MEMORY[0x29EDB8D80] arrayWithObjects:&v211 count:1];
                    v122 = 1;
                    v18 = MEMORY[0x29EDC9748](v123);
                  }

                  else
                  {
                    v121 = [view _accessibleSubviews:1];
                    v120 = 1;
                    v18 = MEMORY[0x29EDC9748](v121);
                  }

                  v124 = v18;
                  if (v120)
                  {
                    MEMORY[0x29EDC9740](v121);
                  }

                  if (v122)
                  {
                    MEMORY[0x29EDC9740](v123);
                  }

                  if (view && ![v124 count] && AXDoesRequestingClientDeserveAutomation())
                  {
                    v210 = view;
                    v19 = [MEMORY[0x29EDB8D80] arrayWithObjects:&v210 count:1];
                    v20 = v124;
                    v124 = v19;
                    MEMORY[0x29EDC9740](v20);
                  }

                  if (![v124 count] && (objc_msgSend(v130, "containsObject:", v127) & 1) == 0)
                  {
                    if ([_accessibilityRightButtonElements containsObject:v127])
                    {
                      v54 = val;
                      v53 = [MEMORY[0x29EDBA070] numberWithInteger:{objc_msgSend(val, "_accessibilityIntegerValueForKey:", @"AXRightCount"}];
                      [v54 _accessibilitySetRetainedValue:? forKey:?];
                      v21 = MEMORY[0x29EDC9740](v53).n128_u64[0];
                    }

                    else if ([_accessibilityLeftButtonElements containsObject:v127])
                    {
                      v52 = val;
                      v51 = [MEMORY[0x29EDBA070] numberWithInteger:{objc_msgSend(val, "_accessibilityIntegerValueForKey:", @"AXLeftCount"}];
                      [v52 _accessibilitySetRetainedValue:? forKey:?];
                      v21 = MEMORY[0x29EDC9740](v51).n128_u64[0];
                    }

                    [v130 addObject:{v127, *&v21}];
                  }

                  memset(v118, 0, sizeof(v118));
                  v49 = MEMORY[0x29EDC9748](v124);
                  v50 = [v49 countByEnumeratingWithState:v118 objects:v209 count:16];
                  if (v50)
                  {
                    v46 = *v118[2];
                    v47 = 0;
                    v48 = v50;
                    while (1)
                    {
                      v45 = v47;
                      if (*v118[2] != v46)
                      {
                        objc_enumerationMutation(v49);
                      }

                      v119 = *(v118[1] + 8 * v47);
                      if (([v200 containsObject:v119] & 1) == 0)
                      {
                        customView = [v127 customView];
                        *&v22 = MEMORY[0x29EDC9740](customView).n128_u64[0];
                        if (!customView)
                        {
                          v117 = objc_opt_new();
                          [(_UIAccessibilityNavigationViewInfo *)v117 setBarButtonItem:v127];
                          topItem7 = [_accessibility_contentsOfNavigationBar topItem];
                          [(_UIAccessibilityNavigationViewInfo *)v117 setNavigationItem:topItem7];
                          MEMORY[0x29EDC9740](topItem7);
                          [(_UIAccessibilityNavigationViewInfo *)v117 setIsCancelItem:?];
                          [(_UIAccessibilityNavigationViewInfo *)v117 setNavigationBar:?];
                          v42 = [_accessibilityRightButtonElements containsObject:v127];
                          [(_UIAccessibilityNavigationViewInfo *)v117 setIsRightItem:v42];
                          objc_opt_class();
                          v41 = __UIAccessibilityCastAsSafeCategory();
                          [v41 _accessibilitySetNavigationViewInfo:v117];
                          MEMORY[0x29EDC9740](v41);
                          objc_storeStrong(&v117, 0);
                        }

                        [v200 addObject:{v119, v22}];
                      }

                      ++v47;
                      if (v45 + 1 >= v48)
                      {
                        v47 = 0;
                        v48 = [v49 countByEnumeratingWithState:v118 objects:v209 count:16];
                        if (!v48)
                        {
                          break;
                        }
                      }
                    }
                  }

                  MEMORY[0x29EDC9740](v49);
                  objc_storeStrong(&v124, 0);
                  objc_storeStrong(&view, 0);
                  ++v58;
                  if (v56 + 1 >= v59)
                  {
                    v58 = 0;
                    v59 = [v60 countByEnumeratingWithState:v126 objects:v212 count:16];
                    if (!v59)
                    {
                      break;
                    }
                  }
                }
              }

              *&v23 = MEMORY[0x29EDC9740](v60).n128_u64[0];
              ++v64;
              if (v62 + 1 >= v65)
              {
                v64 = 0;
                v65 = [v66 countByEnumeratingWithState:v128 objects:v213 count:{16, v23}];
                if (!v65)
                {
                  break;
                }
              }
            }
          }

          *&v24 = MEMORY[0x29EDC9740](v66).n128_u64[0];
          v40 = val;
          view2 = [v132 view];
          [(UINavigationBarAccessibility *)v40 _axSetCachedStaticNavBarButton:view2];
          MEMORY[0x29EDC9740](view2);
          objc_storeStrong(&v130, 0);
          objc_storeStrong(&v131, 0);
          objc_storeStrong(&v132, 0);
          objc_storeStrong(&otherBarButtonItems, 0);
          objc_storeStrong(&cancelBarButtonItems, 0);
          objc_storeStrong(&_largeTitleAccessoryView, 0);
          objc_storeStrong(&_axSubtitleLabel, 0);
          objc_storeStrong(&_accessibilityLeftButtonElements, 0);
          objc_storeStrong(&_accessibilityRightButtonElements, 0);
        }

        v116 = [v199 _accessibleSubviews:{1, v4}];
        v38 = val;
        v37 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:{objc_msgSend(v116, "count")}];
        [v38 _accessibilitySetRetainedValue:? forKey:?];
        MEMORY[0x29EDC9740](v37);
        memset(v114, 0, sizeof(v114));
        v35 = MEMORY[0x29EDC9748](v116);
        v36 = [v35 countByEnumeratingWithState:v114 objects:v208 count:16];
        if (v36)
        {
          v32 = *v114[2];
          v33 = 0;
          v34 = v36;
          while (1)
          {
            v31 = v33;
            if (*v114[2] != v32)
            {
              objc_enumerationMutation(v35);
            }

            v115 = *(v114[1] + 8 * v33);
            v113 = 0;
            v112 = MEMORY[0x29EDC9748](v115);
            while (1)
            {
              v30 = 0;
              if (v112 != val)
              {
                v30 = v112 != 0;
              }

              if (!v30)
              {
                break;
              }

              if ([v200 containsObject:v112] & 1) != 0 || (objc_msgSend(viewsRepresentingBackButton, "containsObject:", v112))
              {
                objc_storeStrong(&v113, v112);
                break;
              }

              accessibilityContainer = [v112 accessibilityContainer];
              v26 = v112;
              v112 = accessibilityContainer;
              MEMORY[0x29EDC9740](v26);
            }

            if (!v113)
            {
              [v200 addObject:v115];
            }

            objc_storeStrong(&v112, 0);
            objc_storeStrong(&v113, 0);
            ++v33;
            if (v31 + 1 >= v34)
            {
              v33 = 0;
              v34 = [v35 countByEnumeratingWithState:v114 objects:v208 count:16];
              if (!v34)
              {
                break;
              }
            }
          }
        }

        *&v27 = MEMORY[0x29EDC9740](v35).n128_u64[0];
        [val _accessibilitySortElementsUsingGeometry:{v200, v27}];
        if (v196)
        {
          [val _accessibilitySetNavBarElements:v200];
          [val _accessibilitySetRetainedValue:v200 forKey:*MEMORY[0x29EDC7620]];
        }

        v207 = MEMORY[0x29EDC9748](v200);
        v203 = 1;
        objc_storeStrong(&v116, 0);
        objc_storeStrong(&viewsRepresentingBackButton, 0);
        objc_storeStrong(&_accessibility_contentsOfNavigationBar, 0);
        objc_storeStrong(&v199, 0);
      }

      objc_storeStrong(&v200, 0);
    }

    objc_storeStrong(&v205, 0);
  }

  else
  {
    v207 = 0;
  }

  v28 = v207;

  return v28;
}

uint64_t __53__UINavigationBarAccessibility_accessibilityElements__block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [location[0] _accessibilityViewIsVisible] & 1;
  }

  else
  {
    v4 = 1;
  }

  objc_storeStrong(location, 0);
  return v4 & 1;
}

- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event
{
  testCopy = test;
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, event);
  v18 = 0;
  objc_opt_class();
  v17 = __UIAccessibilityCastAsClass();
  v16 = MEMORY[0x29EDC9748](v17);
  objc_storeStrong(&v17, 0);
  v19 = v16;
  v15 = [v16 pointInside:location[0] withEvent:{testCopy.x, testCopy.y}];
  if ((v15 & 1) == 0 || ((objc_opt_class(), v8 = -[UINavigationBarAccessibility topItem](selfCopy, "topItem"), v14 = __UIAccessibilityCastAsClass(), v13 = [v14 _bottomPalette], objc_msgSend(v19, "convertPoint:toView:", v13, testCopy.x, testCopy.y), v11 = v4, v12 = v5, (objc_msgSend(v13, "pointInside:withEvent:", location[0], v4, v5) & 1) == 0) ? (v10 = 0) : (v23 = objc_msgSend(v13, "_accessibilityHitTest:withEvent:", location[0], v11, v12), v10 = 1), objc_storeStrong(&v13, 0), objc_storeStrong(&v14, 0), !v10))
  {
    v9.receiver = selfCopy;
    v9.super_class = UINavigationBarAccessibility;
    v23 = [(UINavigationBarAccessibility *)&v9 _accessibilityHitTest:location[0] withEvent:testCopy.x, testCopy.y];
    v10 = 1;
  }

  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
  v6 = v23;

  return v6;
}

- (BOOL)_accessibilityHasLeftRightButtonCountChanged
{
  v28 = *MEMORY[0x29EDCA608];
  selfCopy = self;
  if (self)
  {
    v24 = [selfCopy _accessibilityIntegerValueForKey:@"AXLeftCount"];
    v23 = [selfCopy _accessibilityIntegerValueForKey:@"AXRightCount"];
    _accessibilityLeftButtonElements = [(UINavigationBarAccessibility *)selfCopy _accessibilityLeftButtonElements];
    location = [(UINavigationBarAccessibility *)selfCopy _accessibilityRightButtonElements];
    v20 = [_accessibilityLeftButtonElements count];
    v19 = [location count];
    memset(__b, 0, sizeof(__b));
    v10 = MEMORY[0x29EDB8D80];
    allObjects = [_accessibilityLeftButtonElements allObjects];
    allObjects2 = [location allObjects];
    obj = [v10 axArrayWithPossiblyNilArrays:{2, allObjects, allObjects2}];
    MEMORY[0x29EDC9740](allObjects2);
    v14 = [obj countByEnumeratingWithState:__b objects:v27 count:{16, MEMORY[0x29EDC9740](allObjects).n128_f64[0]}];
    if (v14)
    {
      v7 = *__b[2];
      v8 = 0;
      v9 = v14;
      while (1)
      {
        v6 = v8;
        if (*__b[2] != v7)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(__b[1] + 8 * v8);
        view = [v18 view];
        v15 = 0;
        v5 = 0;
        if (!view)
        {
          customView = [v18 customView];
          v15 = 1;
          v5 = customView == 0;
        }

        if (v15)
        {
          MEMORY[0x29EDC9740](customView);
        }

        *&v1 = MEMORY[0x29EDC9740](view).n128_u64[0];
        if (v5)
        {
          if ([location containsObject:{v18, v1}])
          {
            --v19;
          }

          else if ([_accessibilityLeftButtonElements containsObject:v18])
          {
            --v20;
          }
        }

        ++v8;
        if (v6 + 1 >= v9)
        {
          v8 = 0;
          v9 = [obj countByEnumeratingWithState:__b objects:v27 count:{16, v1}];
          if (!v9)
          {
            break;
          }
        }
      }
    }

    MEMORY[0x29EDC9740](obj);
    v3 = 1;
    if (v24 == v20)
    {
      v3 = v23 != v19;
    }

    v26 = v3;
    objc_storeStrong(&location, 0);
    objc_storeStrong(&_accessibilityLeftButtonElements, 0);
  }

  else
  {
    return 0;
  }

  return v26;
}

- (id)_accessibilityLeftButtonElements
{
  selfCopy = self;
  if (self)
  {
    v12 = MEMORY[0x29EDC9748](selfCopy);
    _accessibility_contentsOfNavigationBar = [v12 _accessibility_contentsOfNavigationBar];
    v10 = [MEMORY[0x29EDB8E20] set];
    v4 = v10;
    topItem = [_accessibility_contentsOfNavigationBar topItem];
    leftBarButtonItem = [topItem leftBarButtonItem];
    [v4 axSafelyAddObject:?];
    MEMORY[0x29EDC9740](leftBarButtonItem);
    *&v1 = MEMORY[0x29EDC9740](topItem).n128_u64[0];
    v7 = v10;
    topItem2 = [_accessibility_contentsOfNavigationBar topItem];
    leftBarButtonItems = [topItem2 leftBarButtonItems];
    [v7 axSafelyAddObjectsFromArray:?];
    MEMORY[0x29EDC9740](leftBarButtonItems);
    MEMORY[0x29EDC9740](topItem2);
    v14 = MEMORY[0x29EDC9748](v10);
    objc_storeStrong(&v10, 0);
    objc_storeStrong(&_accessibility_contentsOfNavigationBar, 0);
    objc_storeStrong(&v12, 0);
  }

  else
  {
    v14 = 0;
  }

  v2 = v14;

  return v2;
}

- (id)_accessibilityRightButtonElements
{
  selfCopy = self;
  if (self)
  {
    v12 = MEMORY[0x29EDC9748](selfCopy);
    _accessibility_contentsOfNavigationBar = [v12 _accessibility_contentsOfNavigationBar];
    v10 = [MEMORY[0x29EDB8E20] set];
    v4 = v10;
    topItem = [_accessibility_contentsOfNavigationBar topItem];
    rightBarButtonItem = [topItem rightBarButtonItem];
    [v4 axSafelyAddObject:?];
    MEMORY[0x29EDC9740](rightBarButtonItem);
    *&v1 = MEMORY[0x29EDC9740](topItem).n128_u64[0];
    v7 = v10;
    topItem2 = [_accessibility_contentsOfNavigationBar topItem];
    rightBarButtonItems = [topItem2 rightBarButtonItems];
    [v7 axSafelyAddObjectsFromArray:?];
    MEMORY[0x29EDC9740](rightBarButtonItems);
    MEMORY[0x29EDC9740](topItem2);
    v14 = MEMORY[0x29EDC9748](v10);
    objc_storeStrong(&v10, 0);
    objc_storeStrong(&_accessibility_contentsOfNavigationBar, 0);
    objc_storeStrong(&v12, 0);
  }

  else
  {
    v14 = 0;
  }

  v2 = v14;

  return v2;
}

- (uint64_t)_accessibilityHasTitleViewChanged
{
  v25 = *MEMORY[0x29EDCA608];
  selfCopy = self;
  if (self)
  {
    v21 = 0;
    v20 = MEMORY[0x29EDC9748](selfCopy);
    _accessibility_contentsOfNavigationBar = [v20 _accessibility_contentsOfNavigationBar];
    v18 = [selfCopy _accessibilityValueForKey:@"AXTitleView"];
    v9 = MEMORY[0x29EDB8D80];
    largeTitleView = [_accessibility_contentsOfNavigationBar largeTitleView];
    titleView = [_accessibility_contentsOfNavigationBar titleView];
    topItem = [_accessibility_contentsOfNavigationBar topItem];
    _largeSubtitleView = [topItem _largeSubtitleView];
    location = [v9 axArrayByIgnoringNilElementsWithCount:{3, largeTitleView, titleView, _largeSubtitleView}];
    MEMORY[0x29EDC9740](_largeSubtitleView);
    MEMORY[0x29EDC9740](topItem);
    MEMORY[0x29EDC9740](titleView);
    *&v1 = MEMORY[0x29EDC9740](largeTitleView).n128_u64[0];
    if (!v18 || [location count])
    {
      memset(__b, 0, sizeof(__b));
      obj = MEMORY[0x29EDC9748](location);
      v8 = [obj countByEnumeratingWithState:__b objects:v24 count:16];
      if (v8)
      {
        v4 = *__b[2];
        v5 = 0;
        v6 = v8;
        while (1)
        {
          v3 = v5;
          if (*__b[2] != v4)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(__b[1] + 8 * v5);
          if ([v15 _accessibilityViewIsVisible])
          {
            v21 = v15 != v18;
          }

          ++v5;
          if (v3 + 1 >= v6)
          {
            v5 = 0;
            v6 = [obj countByEnumeratingWithState:__b objects:v24 count:16];
            if (!v6)
            {
              break;
            }
          }
        }
      }

      MEMORY[0x29EDC9740](obj);
      v23 = v21;
      v16 = 1;
    }

    else
    {
      v23 = 1;
      v16 = 1;
    }

    objc_storeStrong(&location, 0);
    objc_storeStrong(&v18, 0);
    objc_storeStrong(&_accessibility_contentsOfNavigationBar, 0);
    objc_storeStrong(&v20, 0);
  }

  else
  {
    v23 = 0;
  }

  return v23 & 1;
}

- (uint64_t)_accessibilityHasSubtitleViewChanged
{
  selfCopy = self;
  if (self)
  {
    _axSubtitleLabel = [(UINavigationBarAccessibility *)selfCopy _axSubtitleLabel];
    location = [selfCopy _accessibilityValueForKey:@"AXSubtitleView"];
    if (!location || (v4 = 1, ([location _accessibilityViewIsVisible] & 1) != 0))
    {
      _accessibilityViewIsVisible = 0;
      if (!location)
      {
        _accessibilityViewIsVisible = [_axSubtitleLabel _accessibilityViewIsVisible];
      }

      v4 = _accessibilityViewIsVisible;
    }

    v8 = v4 & 1;
    objc_storeStrong(&location, 0);
    objc_storeStrong(&_axSubtitleLabel, 0);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

- (id)_axSubtitleLabel
{
  selfCopy = self;
  if (self)
  {
    v16 = 0;
    v14 = 0;
    objc_opt_class();
    v7 = [selfCopy safeValueForKey:@"_visualProvider"];
    v13 = __UIAccessibilityCastAsClass();
    MEMORY[0x29EDC9740](v7);
    v12 = MEMORY[0x29EDC9748](v13);
    objc_storeStrong(&v13, 0);
    v15 = v12;
    if ([v12 wantsLargeTitleDisplayed])
    {
      v6 = [v15 safeSwiftValueForKey:?];
      v5 = [v6 safeSwiftValueForKey:@"largeTitleView"];
      v11 = [v5 safeValueForKey:@"layout"];
      MEMORY[0x29EDC9740](v5);
      MEMORY[0x29EDC9740](v6);
      NSClassFromString(&cfstr_Uinavigationba_12.isa);
      if (objc_opt_isKindOfClass())
      {
        v10 = 0;
        objc_opt_class();
        v4 = [v11 safeValueForKey:@"_subtitleLabel"];
        v9 = __UIAccessibilityCastAsClass();
        MEMORY[0x29EDC9740](v4);
        v8 = MEMORY[0x29EDC9748](v9);
        objc_storeStrong(&v9, 0);
        v1 = v16;
        v16 = v8;
        MEMORY[0x29EDC9740](v1);
      }

      objc_storeStrong(&v11, 0);
    }

    v18 = MEMORY[0x29EDC9748](v16);
    objc_storeStrong(&v15, 0);
    objc_storeStrong(&v16, 0);
  }

  else
  {
    v18 = 0;
  }

  v2 = v18;

  return v2;
}

- (uint64_t)_accessibilityHasTitleAccessoryViewChanged
{
  selfCopy = self;
  if (self)
  {
    v9 = MEMORY[0x29EDC9748](selfCopy);
    _accessibility_contentsOfNavigationBar = [v9 _accessibility_contentsOfNavigationBar];
    v7 = [selfCopy _accessibilityValueForKey:@"AXTitleAccessoryView"];
    topItem = [_accessibility_contentsOfNavigationBar topItem];
    location = [topItem _largeTitleAccessoryView];
    *&v1 = MEMORY[0x29EDC9740](topItem).n128_u64[0];
    if (!v7 || (v4 = 1, ([location _accessibilityViewIsVisible] & 1) != 0))
    {
      _accessibilityViewIsVisible = 0;
      if (!v7)
      {
        _accessibilityViewIsVisible = [location _accessibilityViewIsVisible];
      }

      v4 = _accessibilityViewIsVisible;
    }

    v11 = v4 & 1;
    objc_storeStrong(&location, 0);
    objc_storeStrong(&v7, 0);
    objc_storeStrong(&_accessibility_contentsOfNavigationBar, 0);
    objc_storeStrong(&v9, 0);
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

- (BOOL)_accessibilityHasSubviewsCountChanged
{
  selfCopy = self;
  if (self)
  {
    v8 = [selfCopy _accessibilityIntegerValueForKey:@"kAXSubviewCount"];
    v6 = 0;
    objc_opt_class();
    v5 = __UIAccessibilityCastAsClass();
    v4 = MEMORY[0x29EDC9748](v5);
    objc_storeStrong(&v5, 0);
    v7 = [v4 _accessibleSubviews:?];
    *&v1 = MEMORY[0x29EDC9740](v4).n128_u64[0];
    v3 = [v7 count];
    v10 = v8 != v3;
    objc_storeStrong(&v7, 0);
  }

  else
  {
    return 0;
  }

  return v10;
}

- (id)_axGetCachedStaticNavBarButton
{
  if (self)
  {
    v2 = __UIAccessibilityGetAssociatedNonRetainedObject();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)_axSetCachedStaticNavBarButton:(uint64_t)button
{
  buttonCopy = button;
  location = 0;
  objc_storeStrong(&location, a2);
  if (buttonCopy)
  {
    __UIAccessibilitySetAssociatedNonRetainedObject();
  }

  objc_storeStrong(&location, 0);
}

- (BOOL)_accessibilityHasStaticNavBarButtonChanged
{
  if (self)
  {
    _axGetCachedStaticNavBarButton = [(UINavigationBarAccessibility *)self _axGetCachedStaticNavBarButton];
    _accessibilityStaticBarButtonItem = [(UINavigationBarAccessibility *)self _accessibilityStaticBarButtonItem];
    view = [_accessibilityStaticBarButtonItem view];
    v6 = _axGetCachedStaticNavBarButton != view;
    MEMORY[0x29EDC9740](view);
    MEMORY[0x29EDC9740](_accessibilityStaticBarButtonItem);
    MEMORY[0x29EDC9740](_axGetCachedStaticNavBarButton);
  }

  else
  {
    return 0;
  }

  return v6;
}

- (id)_accessibilityStaticBarButtonItem
{
  selfCopy = self;
  if (self)
  {
    v4 = MEMORY[0x29EDC9748](selfCopy);
    _accessibility_contentsOfNavigationBar = [v4 _accessibility_contentsOfNavigationBar];
    v6 = [(UINavigationBarAccessibility *)selfCopy _accessibilityStaticBarButtonItemWithContents:_accessibility_contentsOfNavigationBar];
    objc_storeStrong(&_accessibility_contentsOfNavigationBar, 0);
    objc_storeStrong(&v4, 0);
  }

  else
  {
    v6 = 0;
  }

  v1 = v6;

  return v1;
}

uint64_t __71__UINavigationBarAccessibility__accessibilityFetchCachedNavBarElements__block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v6 = [location[0] _accessibilityWindow];
  MEMORY[0x29EDC9740](v6);
  if (v6)
  {
    v8 = 0;
  }

  else
  {
    *a4 = 1;
    v8 = 1;
  }

  objc_storeStrong(location, 0);
  return v8 & 1;
}

uint64_t __71__UINavigationBarAccessibility__accessibilityFetchCachedNavBarElements__block_invoke_2(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3 = [location[0] _accessibilityViewIsVisible];
  objc_storeStrong(location, 0);
  return v3;
}

CGFloat __71__UINavigationBarAccessibility__accessibilityFetchCachedNavBarElements__block_invoke_3(uint64_t a1)
{
  v33 = *MEMORY[0x29EDCA608];
  v30 = a1;
  v29 = a1;
  memset(&v31, 0, sizeof(v31));
  v31 = **&MEMORY[0x29EDB90D8];
  memset(__b, 0, sizeof(__b));
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v18 = [WeakRetained _accessibility_contentsOfNavigationBar];
  obj = [v18 viewsRepresentingBackButton];
  MEMORY[0x29EDC9740](v18);
  v21 = [obj countByEnumeratingWithState:__b objects:v32 count:{16, MEMORY[0x29EDC9740](WeakRetained).n128_f64[0]}];
  if (v21)
  {
    v14 = *__b[2];
    v15 = 0;
    v16 = v21;
    while (1)
    {
      v13 = v15;
      if (*__b[2] != v14)
      {
        objc_enumerationMutation(obj);
      }

      v28 = *(__b[1] + 8 * v15);
      v11 = v28;
      [v28 bounds];
      v22 = v1;
      v23 = v2;
      v24 = v3;
      v25 = v4;
      v12 = objc_loadWeakRetained((a1 + 32));
      [v11 convertRect:v22 toView:{v23, v24, v25}];
      r2.origin.x = v5;
      r2.origin.y = v6;
      r2.size.width = v7;
      r2.size.height = v8;
      MEMORY[0x29EDC9740](v12);
      v31 = CGRectUnion(v31, r2);
      ++v15;
      if (v13 + 1 >= v16)
      {
        v15 = 0;
        v16 = [obj countByEnumeratingWithState:__b objects:v32 count:16];
        if (!v16)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x29EDC9740](obj);
  v10 = objc_loadWeakRetained((a1 + 32));
  v31 = UIAccessibilityConvertFrameToScreenCoordinates(v31, v10);
  MEMORY[0x29EDC9740](v10);
  return v31.origin.x;
}

BOOL __71__UINavigationBarAccessibility__accessibilityFetchCachedNavBarElements__block_invoke_4(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v14 = a3;
  v13 = a4;
  v12 = a1;
  v11 = 0;
  objc_opt_class();
  v10 = __UIAccessibilityCastAsClass();
  v9 = MEMORY[0x29EDC9748](v10);
  objc_storeStrong(&v10, 0);
  v5 = [v9 length] != 0;
  MEMORY[0x29EDC9740](v9);
  objc_storeStrong(location, 0);
  return v5;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v18 = *MEMORY[0x29EDCA608];
  selfCopy = self;
  v15 = a2;
  v14.receiver = self;
  v14.super_class = UINavigationBarAccessibility;
  [(UINavigationBarAccessibility *)&v14 _accessibilityLoadAccessibilityInformation];
  [(UINavigationBarAccessibility *)selfCopy _accessibilityRemoveValueForKey:*MEMORY[0x29EDC7620]];
  _accessibility_contentsOfNavigationBar = [(UINavigationBarAccessibility *)selfCopy _accessibility_contentsOfNavigationBar];
  promptView = [_accessibility_contentsOfNavigationBar promptView];
  accessibilityLanguage = [(UINavigationBarAccessibility *)selfCopy accessibilityLanguage];
  [promptView setAccessibilityLanguage:?];
  MEMORY[0x29EDC9740](accessibilityLanguage);
  MEMORY[0x29EDC9740](promptView);
  MEMORY[0x29EDC9740](_accessibility_contentsOfNavigationBar);
  memset(__b, 0, sizeof(__b));
  obj = [(UINavigationBarAccessibility *)selfCopy items];
  v11 = [obj countByEnumeratingWithState:__b objects:v17 count:16];
  if (v11)
  {
    v4 = *__b[2];
    v5 = 0;
    v6 = v11;
    while (1)
    {
      v3 = v5;
      if (*__b[2] != v4)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(__b[1] + 8 * v5);
      [v13 _accessibilityLoadAccessibilityInformation];
      ++v5;
      v6 = v2;
      if (v3 + 1 >= v2)
      {
        v5 = 0;
        v6 = [obj countByEnumeratingWithState:__b objects:v17 count:16];
        if (!v6)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x29EDC9740](obj);
}

- (void)addSubview:(id)subview
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, subview);
  v3.receiver = selfCopy;
  v3.super_class = UINavigationBarAccessibility;
  [(UINavigationBarAccessibility *)&v3 addSubview:location[0]];
  [(UINavigationBarAccessibility *)selfCopy _accessibilityRemoveValueForKey:*MEMORY[0x29EDC7620]];
  objc_storeStrong(location, 0);
}

- (void)willRemoveSubview:(id)subview
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, subview);
  v3.receiver = selfCopy;
  v3.super_class = UINavigationBarAccessibility;
  [(UINavigationBarAccessibility *)&v3 willRemoveSubview:location[0]];
  [(UINavigationBarAccessibility *)selfCopy _accessibilityRemoveValueForKey:*MEMORY[0x29EDC7620]];
  objc_storeStrong(location, 0);
}

- (void)insertSubview:(id)subview belowSubview:(id)belowSubview
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, subview);
  v6 = 0;
  objc_storeStrong(&v6, belowSubview);
  v5.receiver = selfCopy;
  v5.super_class = UINavigationBarAccessibility;
  [(UINavigationBarAccessibility *)&v5 insertSubview:location[0] belowSubview:v6];
  [(UINavigationBarAccessibility *)selfCopy _accessibilityRemoveValueForKey:*MEMORY[0x29EDC7620]];
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)insertSubview:(id)subview aboveSubview:(id)aboveSubview
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, subview);
  v6 = 0;
  objc_storeStrong(&v6, aboveSubview);
  v5.receiver = selfCopy;
  v5.super_class = UINavigationBarAccessibility;
  [(UINavigationBarAccessibility *)&v5 insertSubview:location[0] aboveSubview:v6];
  [(UINavigationBarAccessibility *)selfCopy _accessibilityRemoveValueForKey:*MEMORY[0x29EDC7620]];
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)insertSubview:(id)subview atIndex:(int64_t)index
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, subview);
  indexCopy = index;
  v5.receiver = selfCopy;
  v5.super_class = UINavigationBarAccessibility;
  [(UINavigationBarAccessibility *)&v5 insertSubview:location[0] atIndex:index];
  [(UINavigationBarAccessibility *)selfCopy _accessibilityRemoveValueForKey:*MEMORY[0x29EDC7620]];
  objc_storeStrong(location, 0);
}

- (void)_accessibility_navigationBarContentsDidChange
{
  v21 = *MEMORY[0x29EDCA608];
  selfCopy = self;
  v16 = a2;
  v15.receiver = self;
  v15.super_class = UINavigationBarAccessibility;
  [(UINavigationBarAccessibility *)&v15 _accessibility_navigationBarContentsDidChange];
  _accessibility_contentsOfNavigationBar = [(UINavigationBarAccessibility *)selfCopy _accessibility_contentsOfNavigationBar];
  promptView = [_accessibility_contentsOfNavigationBar promptView];
  accessibilityLanguage = [(UINavigationBarAccessibility *)selfCopy accessibilityLanguage];
  [promptView setAccessibilityLanguage:?];
  MEMORY[0x29EDC9740](accessibilityLanguage);
  MEMORY[0x29EDC9740](promptView);
  MEMORY[0x29EDC9740](_accessibility_contentsOfNavigationBar);
  memset(__b, 0, 0x40uLL);
  obj = [(UINavigationBarAccessibility *)selfCopy _accessibilityNavBarElements];
  v13 = [(NSArray *)obj countByEnumeratingWithState:__b objects:v20 count:16];
  if (v13)
  {
    v6 = *__b[2];
    v7 = 0;
    v8 = v13;
    while (1)
    {
      v5 = v7;
      if (*__b[2] != v6)
      {
        objc_enumerationMutation(obj);
      }

      __b[8] = *(__b[1] + 8 * v7);
      objc_opt_class();
      v4 = __UIAccessibilityCastAsSafeCategory();
      [v4 _accessibilitySetNavigationViewInfo:0];
      *&v2 = MEMORY[0x29EDC9740](v4).n128_u64[0];
      ++v7;
      if (v5 + 1 >= v8)
      {
        v7 = 0;
        v8 = [(NSArray *)obj countByEnumeratingWithState:__b objects:v20 count:16, v2];
        if (!v8)
        {
          break;
        }
      }
    }
  }

  *&v3 = MEMORY[0x29EDC9740](obj).n128_u64[0];
  [(UINavigationBarAccessibility *)selfCopy _accessibilitySetNavBarElements:0, v3];
  [(UINavigationBarAccessibility *)selfCopy _accessibilityRemoveValueForKey:*MEMORY[0x29EDC7620]];
  v19 = &_accessibility_navigationBarContentsDidChange_onceToken;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_506);
  if (*v19 != -1)
  {
    dispatch_once(v19, location);
  }

  objc_storeStrong(&location, 0);
  [_accessibility_navigationBarContentsDidChange_coalescer performCoalescedAsynchronously];
}

double __77__UINavigationBarAccessibility__accessibility_navigationBarContentsDidChange__block_invoke(uint64_t a1)
{
  v1 = [MEMORY[0x29EDBDF30] mainQueueCoalescerWithBlock:{&__block_literal_global_509, a1, a1}];
  v2 = _accessibility_navigationBarContentsDidChange_coalescer;
  _accessibility_navigationBarContentsDidChange_coalescer = v1;
  *&result = MEMORY[0x29EDC9740](v2).n128_u64[0];
  return result;
}

Method __98__UINavigationBarAccessibility_UIViewAccessibilityAdditions___accessibilitySupportsActivateAction__block_invoke()
{
  v0 = objc_opt_class();
  result = class_getInstanceMethod(v0, sel_accessibilityActivate);
  __accessibilitySupportsActivateAction_categoryMethod = result;
  return result;
}

@end