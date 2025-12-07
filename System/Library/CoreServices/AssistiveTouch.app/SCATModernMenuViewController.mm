@interface SCATModernMenuViewController
- (BOOL)_menuFrameIsValid:(CGRect)valid;
- (BOOL)isElementTopLevelInMenu:(id)menu;
- (BOOL)isVisible;
- (BOOL)showsFooter;
- (CGPoint)_positionForMenuDockPosition:(int64_t)position size:(CGSize)size;
- (CGPoint)_positionForMenuPopoverPosition:(int64_t)position size:(CGSize)size;
- (CGRect)_rectToClearIfNeededForSheet:(id)sheet;
- (CGRect)frame;
- (SCATMenu)menu;
- (SCATModernMenuViewController)initWithMenu:(id)menu;
- (SCATPointPicker)pointPicker;
- (id)contentViewContainer;
- (id)currentSheet;
- (id)currentSheetViewController;
- (id)exitActionElement;
- (id)extraProviderElements;
- (id)showMoreItemsPageControl;
- (void)_determineMenuOrigin:(CGPoint *)origin anchorPosition:(double *)position anchorDirection:(BOOL *)direction shouldUseTip:(BOOL *)tip sheet:(id)sheet;
- (void)_handleShowMoreItems:(id)items;
- (void)_updateContentSizeForSheet:(id)sheet;
- (void)_updateMenuLayoutForSheet:(id)sheet sheetViewController:(id)controller animated:(BOOL)animated;
- (void)didFocusOnContext:(id)context oldContext:(id)oldContext;
- (void)didReloadSheet:(id)sheet;
- (void)flashModernMenuItem:(id)item;
- (void)hide;
- (void)loadView;
- (void)reloadMenuVisuals;
- (void)setShowsFooter:(BOOL)footer numberOfPagesRequired:(unint64_t)required;
- (void)setTipObject:(int64_t)object;
- (void)systemApertureLayoutDidChange:(id)change;
- (void)transitionToMenuSheet:(id)sheet fromSheet:(id)fromSheet;
- (void)updateForGeometryChange;
- (void)updateMenuLayout;
- (void)updateMenuSheetContentSize;
- (void)updateMenuSheetForOrientationChange;
- (void)updateModernMenuItem:(id)item;
- (void)updateViewControllerStackForSheet:(id)sheet previousSheet:(id)previousSheet;
- (void)willBePresentedWithElement:(id)element pointPicker:(id)picker sheetToShow:(id)show;
- (void)willUnfocusFromContext:(id)context;
@end

@implementation SCATModernMenuViewController

- (SCATModernMenuViewController)initWithMenu:(id)menu
{
  menuCopy = menu;
  v11.receiver = self;
  v11.super_class = SCATModernMenuViewController;
  v5 = [(SCATModernMenuViewController *)&v11 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    [(SCATModernMenuViewController *)v5 setMenu:menuCopy];
    v7 = objc_alloc_init(NSMutableArray);
    [(SCATModernMenuViewController *)v6 setSheetViewControllerStack:v7];

    [(SCATModernMenuViewController *)v6 setOverrideUserInterfaceStyle:2];
    v8 = objc_alloc_init(SBSSystemApertureLayoutMonitor);
    layoutMonitor = v6->_layoutMonitor;
    v6->_layoutMonitor = v8;

    [(SBSSystemApertureLayoutMonitor *)v6->_layoutMonitor addObserver:v6];
    v6->_foreheadRect.origin = 0u;
    v6->_foreheadRect.size = 0u;
  }

  return v6;
}

- (void)loadView
{
  v3 = [[SCATModernMenuView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(SCATModernMenuViewController *)self setView:v3];
}

- (id)currentSheet
{
  menu = [(SCATModernMenuViewController *)self menu];
  currentSheet = [menu currentSheet];

  return currentSheet;
}

- (void)setTipObject:(int64_t)object
{
  if (self->_tipObject != object)
  {
    self->_tipObject = object;
    menu = [(SCATModernMenuViewController *)self menu];
    [menu menuTipObjectDidChange];
  }
}

- (BOOL)showsFooter
{
  menuView = [(SCATModernMenuViewController *)self menuView];
  backgroundView = [menuView backgroundView];
  containerView = [backgroundView containerView];
  isShowingFooterView = [containerView isShowingFooterView];

  return isShowingFooterView;
}

- (void)setShowsFooter:(BOOL)footer numberOfPagesRequired:(unint64_t)required
{
  footerCopy = footer;
  menuView = [(SCATModernMenuViewController *)self menuView];
  backgroundView = [menuView backgroundView];
  containerView = [backgroundView containerView];
  [containerView setShowingFooterView:footerCopy];

  showMoreItemsPageControl = [(SCATModernMenuViewController *)self showMoreItemsPageControl];
  [showMoreItemsPageControl setNumberOfPages:required];
  currentSheetViewController = [(SCATModernMenuViewController *)self currentSheetViewController];
  [showMoreItemsPageControl setCurrentPage:{objc_msgSend(currentSheetViewController, "currentPage")}];

  [showMoreItemsPageControl setHidesForSinglePage:0];
  if (footerCopy)
  {
    [showMoreItemsPageControl addTarget:self action:"_handleShowMoreItems:" forControlEvents:64];
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    allTargets = [showMoreItemsPageControl allTargets];
    v13 = [allTargets countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v18;
      do
      {
        v16 = 0;
        do
        {
          if (*v18 != v15)
          {
            objc_enumerationMutation(allTargets);
          }

          [showMoreItemsPageControl removeTarget:*(*(&v17 + 1) + 8 * v16) action:0 forControlEvents:64];
          v16 = v16 + 1;
        }

        while (v14 != v16);
        v14 = [allTargets countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v14);
    }
  }
}

- (id)showMoreItemsPageControl
{
  menuView = [(SCATModernMenuViewController *)self menuView];
  backgroundView = [menuView backgroundView];
  containerView = [backgroundView containerView];
  footerView = [containerView footerView];
  moreItemsPageControl = [footerView moreItemsPageControl];

  return moreItemsPageControl;
}

- (id)contentViewContainer
{
  menuView = [(SCATModernMenuViewController *)self menuView];
  backgroundView = [menuView backgroundView];
  containerView = [backgroundView containerView];
  contentViewContainer = [containerView contentViewContainer];

  return contentViewContainer;
}

- (void)willBePresentedWithElement:(id)element pointPicker:(id)picker sheetToShow:(id)show
{
  [(SCATModernMenuViewController *)self setPointPicker:picker];
  menuView = [(SCATModernMenuViewController *)self menuView];
  v6 = +[SCATScannerManager sharedManager];
  menu = [(SCATModernMenuViewController *)self menu];
  v8 = [v6 scatUIContextForDisplayID:{objc_msgSend(menu, "currentDisplayID")}];

  [v8 addSubview:menuView];
}

- (void)didFocusOnContext:(id)context oldContext:(id)oldContext
{
  contextCopy = context;
  element = [contextCopy element];
  showMoreItemsPageControl = [(SCATModernMenuViewController *)self showMoreItemsPageControl];

  if (element == showMoreItemsPageControl)
  {
    showMoreItemsPageControl2 = [(SCATModernMenuViewController *)self showMoreItemsPageControl];
    [showMoreItemsPageControl2 setScatMenuItemStyle:2];
  }

  shouldBeTrackedByZoom = [contextCopy shouldBeTrackedByZoom];
  v9 = contextCopy;
  if (shouldBeTrackedByZoom)
  {
    element2 = [contextCopy element];
    [element2 scatFrame];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;

    element3 = [contextCopy element];
    isGroup = [element3 isGroup];

    if (isGroup)
    {
      showMoreItemsPageControl3 = [(SCATModernMenuViewController *)self showMoreItemsPageControl];
      [showMoreItemsPageControl3 convertRect:0 toView:{v12, v14, v16, v18}];
      v12 = v22;
      v14 = v23;
      v16 = v24;
      v18 = v25;
    }

    v26 = fabs(v14) != INFINITY;
    if (fabs(v12) == INFINITY || !v26)
    {
      menuView = [(SCATModernMenuViewController *)self menuView];
      [menuView frame];
      v12 = v28;
      v14 = v29;
    }

    v30 = +[ZoomServices sharedInstance];
    menuView2 = [(SCATModernMenuViewController *)self menuView];
    window = [menuView2 window];
    screen = [window screen];
    displayIdentity = [screen displayIdentity];
    [v30 notifyZoomFocusDidChangeWithType:3 rect:0 contextId:objc_msgSend(displayIdentity displayId:{"displayID"), v12, v14, v16, v18}];

    v9 = contextCopy;
  }

  _objc_release_x1(shouldBeTrackedByZoom, v9);
}

- (void)willUnfocusFromContext:(id)context
{
  element = [context element];
  showMoreItemsPageControl = [(SCATModernMenuViewController *)self showMoreItemsPageControl];

  if (element == showMoreItemsPageControl)
  {
    showMoreItemsPageControl2 = [(SCATModernMenuViewController *)self showMoreItemsPageControl];
    [showMoreItemsPageControl2 setScatMenuItemStyle:0];
  }
}

- (id)exitActionElement
{
  tipObject = [(SCATModernMenuViewController *)self tipObject];
  menu = [(SCATModernMenuViewController *)self menu];
  menuView = menu;
  if (tipObject == 1)
  {
    delegate = [menu delegate];
    menu2 = [(SCATModernMenuViewController *)self menu];
    backgroundView = [delegate exitActionElementForFingersInMenu:menu2];
  }

  else
  {
    element = [menu element];

    if (element)
    {
      backgroundView = 0;
      goto LABEL_7;
    }

    menuView = [(SCATModernMenuViewController *)self menuView];
    backgroundView = [menuView backgroundView];
  }

LABEL_7:

  return backgroundView;
}

- (id)extraProviderElements
{
  if ([(SCATModernMenuViewController *)self showsFooter]&& ([(SCATModernMenuViewController *)self showMoreItemsPageControl], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    showMoreItemsPageControl = [(SCATModernMenuViewController *)self showMoreItemsPageControl];
    v7 = showMoreItemsPageControl;
    v5 = [NSArray arrayWithObjects:&v7 count:1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)updateForGeometryChange
{
  [(SCATModernMenuViewController *)self updateMenuSheetContentSize];

  [(SCATModernMenuViewController *)self updateMenuLayout];
}

- (void)hide
{
  view = [(SCATModernMenuViewController *)self view];
  [view removeFromSuperview];
}

- (CGRect)frame
{
  view = [(SCATModernMenuViewController *)self view];
  [view frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)updateMenuLayout
{
  currentSheet = [(SCATModernMenuViewController *)self currentSheet];
  currentSheetViewController = [(SCATModernMenuViewController *)self currentSheetViewController];
  [(SCATModernMenuViewController *)self _updateMenuLayoutForSheet:currentSheet sheetViewController:currentSheetViewController animated:1];
}

- (void)updateMenuSheetForOrientationChange
{
  menuView = [(SCATModernMenuViewController *)self menuView];
  backgroundView = [menuView backgroundView];
  containerView = [backgroundView containerView];
  [containerView orientationDidChange];
}

- (void)updateMenuSheetContentSize
{
  currentSheet = [(SCATModernMenuViewController *)self currentSheet];
  [(SCATModernMenuViewController *)self _updateContentSizeForSheet:currentSheet];
}

- (void)_handleShowMoreItems:(id)items
{
  currentSheet = [(SCATModernMenuViewController *)self currentSheet];
  menu = [(SCATModernMenuViewController *)self menu];
  [menu willTransitionToSheet:currentSheet];

  currentSheetViewController = [(SCATModernMenuViewController *)self currentSheetViewController];
  collectionViewController = [currentSheetViewController collectionViewController];
  [collectionViewController showMoreItemsButtonWasActivated];

  [(SCATModernMenuViewController *)self _updateContentSizeForSheet:currentSheet];
  currentSheetViewController2 = [(SCATModernMenuViewController *)self currentSheetViewController];
  [(SCATModernMenuViewController *)self _updateMenuLayoutForSheet:currentSheet sheetViewController:currentSheetViewController2 animated:0];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  menuItems = [currentSheet menuItems];
  v10 = [menuItems countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(menuItems);
        }

        [*(*(&v18 + 1) + 8 * i) setStyle:0];
      }

      v11 = [menuItems countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  currentSheetViewController3 = [(SCATModernMenuViewController *)self currentSheetViewController];
  currentPage = [currentSheetViewController3 currentPage];
  showMoreItemsPageControl = [(SCATModernMenuViewController *)self showMoreItemsPageControl];
  [showMoreItemsPageControl setCurrentPage:currentPage];

  v17 = currentSheet;
  AXPerformBlockOnMainThreadAfterDelay();
}

- (id)currentSheetViewController
{
  sheetViewControllerStack = [(SCATModernMenuViewController *)self sheetViewControllerStack];
  lastObject = [sheetViewControllerStack lastObject];

  return lastObject;
}

- (void)updateViewControllerStackForSheet:(id)sheet previousSheet:(id)previousSheet
{
  sheetCopy = sheet;
  previousSheetCopy = previousSheet;
  if (previousSheetCopy)
  {
    currentSheetViewController = [(SCATModernMenuViewController *)self currentSheetViewController];
    [currentSheetViewController willMoveToParentViewController:0];
    [currentSheetViewController removeFromParentViewController];
  }

  else
  {
    sheetViewControllerStack = [(SCATModernMenuViewController *)self sheetViewControllerStack];
    [sheetViewControllerStack enumerateObjectsUsingBlock:&stru_1001D5A38];

    currentSheetViewController = [(SCATModernMenuViewController *)self sheetViewControllerStack];
    [currentSheetViewController removeAllObjects];
  }

  sheetViewControllerStack2 = [(SCATModernMenuViewController *)self sheetViewControllerStack];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10007A984;
  v20[3] = &unk_1001D5A60;
  v11 = sheetCopy;
  v21 = v11;
  v12 = [sheetViewControllerStack2 axFilterObjectsUsingBlock:v20];
  firstObject = [v12 firstObject];

  sheetViewControllerStack3 = [(SCATModernMenuViewController *)self sheetViewControllerStack];
  sheetViewControllerStack5 = sheetViewControllerStack3;
  if (!firstObject)
  {
    sheetViewControllerStack6 = [[SCATMenuSheetViewController alloc] initWithSheet:v11];
    [sheetViewControllerStack5 addObject:sheetViewControllerStack6];
    goto LABEL_8;
  }

  lastObject = [sheetViewControllerStack3 lastObject];

  if (firstObject != lastObject)
  {
    sheetViewControllerStack4 = [(SCATModernMenuViewController *)self sheetViewControllerStack];
    v18 = [sheetViewControllerStack4 indexOfObject:firstObject];

    sheetViewControllerStack5 = [(SCATModernMenuViewController *)self sheetViewControllerStack];
    sheetViewControllerStack6 = [(SCATModernMenuViewController *)self sheetViewControllerStack];
    [sheetViewControllerStack5 removeObjectsInRange:{v18 + 1, -[SCATMenuSheetViewController count](sheetViewControllerStack6, "count") - (v18 + 1)}];
LABEL_8:
  }
}

- (BOOL)isVisible
{
  view = [(SCATModernMenuViewController *)self view];
  window = [view window];
  if (window && ([view alpha], v4 > 0.0))
  {
    v5 = [view isHidden] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)didReloadSheet:(id)sheet
{
  sheetCopy = sheet;
  sheetViewControllerStack = [(SCATModernMenuViewController *)self sheetViewControllerStack];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10007AB08;
  v9[3] = &unk_1001D5A60;
  v10 = sheetCopy;
  v6 = sheetCopy;
  v7 = [sheetViewControllerStack axFilterObjectsUsingBlock:v9];
  firstObject = [v7 firstObject];
  [firstObject reload];
}

- (void)reloadMenuVisuals
{
  currentSheetViewController = [(SCATModernMenuViewController *)self currentSheetViewController];
  collectionViewController = [currentSheetViewController collectionViewController];
  collectionView = [collectionViewController collectionView];
  [collectionView reloadData];
}

- (BOOL)isElementTopLevelInMenu:(id)menu
{
  menuCopy = menu;
  showMoreItemsPageControl = [(SCATModernMenuViewController *)self showMoreItemsPageControl];

  return showMoreItemsPageControl == menuCopy;
}

- (void)updateModernMenuItem:(id)item
{
  itemCopy = item;
  currentSheetViewController = [(SCATModernMenuViewController *)self currentSheetViewController];
  [currentSheetViewController updateCellForMenuItem:itemCopy];
}

- (void)flashModernMenuItem:(id)item
{
  itemCopy = item;
  currentSheetViewController = [(SCATModernMenuViewController *)self currentSheetViewController];
  [currentSheetViewController flashCellForMenuItem:itemCopy];
}

- (void)transitionToMenuSheet:(id)sheet fromSheet:(id)fromSheet
{
  sheetCopy = sheet;
  fromSheetCopy = fromSheet;
  menu = [(SCATModernMenuViewController *)self menu];
  [menu willTransitionToSheet:sheetCopy];

  [(SCATModernMenuViewController *)self _updateContentSizeForSheet:sheetCopy];
  [(SCATModernMenuViewController *)self updateViewControllerStackForSheet:sheetCopy previousSheet:fromSheetCopy];

  currentSheetViewController = [(SCATModernMenuViewController *)self currentSheetViewController];
  [(SCATModernMenuViewController *)self addChildViewController:currentSheetViewController];

  currentSheetViewController2 = [(SCATModernMenuViewController *)self currentSheetViewController];
  [currentSheetViewController2 didMoveToParentViewController:self];

  contentViewContainer = [(SCATModernMenuViewController *)self contentViewContainer];
  currentSheetViewController3 = [(SCATModernMenuViewController *)self currentSheetViewController];
  collectionViewController = [currentSheetViewController3 collectionViewController];
  view = [collectionViewController view];
  [contentViewContainer setContentView:view];

  menu2 = [(SCATModernMenuViewController *)self menu];
  -[SCATModernMenuViewController setTipObject:](self, "setTipObject:", [menu2 tipObjectForPresentingSheet:sheetCopy]);

  currentSheetViewController4 = [(SCATModernMenuViewController *)self currentSheetViewController];
  [(SCATModernMenuViewController *)self _updateMenuLayoutForSheet:sheetCopy sheetViewController:currentSheetViewController4 animated:0];

  v17 = sheetCopy;
  AXPerformBlockOnMainThreadAfterDelay();
}

- (void)_updateContentSizeForSheet:(id)sheet
{
  currentSheetViewController = [(SCATModernMenuViewController *)self currentSheetViewController];
  collectionViewController = [currentSheetViewController collectionViewController];
  view = [collectionViewController view];
  superview = [view superview];
  [superview invalidateIntrinsicContentSize];
}

- (void)_updateMenuLayoutForSheet:(id)sheet sheetViewController:(id)controller animated:(BOOL)animated
{
  sheetCopy = sheet;
  controllerCopy = controller;
  menuView = [(SCATModernMenuViewController *)self menuView];
  if ([sheetCopy presentationMode])
  {
    if ([sheetCopy presentationMode] == 1)
    {
      menuView2 = [(SCATModernMenuViewController *)self menuView];
      backgroundView = [menuView2 backgroundView];
      [backgroundView setShouldRoundMenuCorners:0];

      [(SCATModernMenuViewController *)self setShowsFooter:0 numberOfPagesRequired:1];
      menuView3 = [(SCATModernMenuViewController *)self menuView];
      backgroundView2 = [menuView3 backgroundView];
      containerView = [backgroundView2 containerView];
      [containerView setShouldUseDockContentPadding:1];

      menu = [(SCATModernMenuViewController *)self menu];
      dockPosition = [menu dockPosition];
      menuView4 = [(SCATModernMenuViewController *)self menuView];
      backgroundView3 = [menuView4 backgroundView];
      containerView2 = [backgroundView3 containerView];
      [containerView2 setDockPosition:dockPosition];

      menuView5 = [(SCATModernMenuViewController *)self menuView];
      backgroundView4 = [menuView5 backgroundView];
      [backgroundView4 setTip:0];

      [menuView sizeToFit];
      [menuView bounds];
      v23 = v22;
      v24 = +[SCATScannerManager sharedManager];
      menu2 = [(SCATModernMenuViewController *)self menu];
      v26 = [v24 scatUIContextForDisplayID:{objc_msgSend(menu2, "currentDisplayID")}];

      [v26 bounds];
      v28 = v27;
      menu3 = [(SCATModernMenuViewController *)self menu];
      -[SCATModernMenuViewController _positionForMenuDockPosition:size:](self, "_positionForMenuDockPosition:size:", [menu3 dockPosition], v28, v23);
      v31 = v30;
      v33 = v32;

      [menuView setFrame:{v31, v33, v28, v23}];
    }
  }

  else
  {
    menuView6 = [(SCATModernMenuViewController *)self menuView];
    backgroundView5 = [menuView6 backgroundView];
    [backgroundView5 setShouldRoundMenuCorners:1];

    numberOfPagesRequired = [controllerCopy numberOfPagesRequired];
    [(SCATModernMenuViewController *)self setShowsFooter:numberOfPagesRequired > 1 numberOfPagesRequired:numberOfPagesRequired];
    menuView7 = [(SCATModernMenuViewController *)self menuView];
    backgroundView6 = [menuView7 backgroundView];
    containerView3 = [backgroundView6 containerView];
    [containerView3 setShouldUseDockContentPadding:0];

    v54 = 0.0;
    v55 = 0.0;
    v53 = 0.0;
    v52 = 0;
    [(SCATModernMenuViewController *)self _determineMenuOrigin:&v54 anchorPosition:&v53 anchorDirection:&v52 + 1 shouldUseTip:&v52 sheet:sheetCopy];
    if (v52)
    {
      v40 = HIBYTE(v52);
      backgroundView7 = [menuView backgroundView];
      v42 = backgroundView7;
      if (v40 == 1)
      {
        v43 = 1;
      }

      else
      {
        v43 = 2;
      }
    }

    else
    {
      backgroundView7 = [menuView backgroundView];
      v42 = backgroundView7;
      v43 = 0;
    }

    [backgroundView7 setTip:v43];

    [menuView sizeToFit];
    v44 = v53 - v54;
    [menuView frame];
    v46 = v44 / v45;
    backgroundView8 = [menuView backgroundView];
    [backgroundView8 setNormalizedHorizontalTipCenter:v46];

    p_foreheadRect = &self->_foreheadRect;
    v49 = p_foreheadRect->origin.y + p_foreheadRect->size.height;
    v50 = v55;
    [menuView frame];
    [menuView frame];
    if (v49 > v50 && AXDeviceHasJindo())
    {
      [menuView frame];
      v51 = v55 + p_foreheadRect->origin.y + p_foreheadRect->size.height + 5.0;
    }

    else
    {
      [menuView frame];
      v51 = v55;
    }

    [menuView setFrame:{v54, v51}];
  }
}

- (CGRect)_rectToClearIfNeededForSheet:(id)sheet
{
  sheetCopy = sheet;
  if (!sheetCopy)
  {
    _AXAssert();
  }

  [sheetCopy rectToClear];
  x = v20.origin.x;
  y = v20.origin.y;
  width = v20.size.width;
  height = v20.size.height;
  if (CGRectIsNull(v20) && [(SCATModernMenuViewController *)self tipObject]== 1)
  {
    menu = [(SCATModernMenuViewController *)self menu];
    delegate = [menu delegate];
    menu2 = [(SCATModernMenuViewController *)self menu];
    [delegate menu:menu2 rectToClearForFingersWithGestureSheet:1];
    x = v12;
    y = v13;
    width = v14;
    height = v15;
  }

  v16 = x;
  v17 = y;
  v18 = width;
  v19 = height;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (void)_determineMenuOrigin:(CGPoint *)origin anchorPosition:(double *)position anchorDirection:(BOOL *)direction shouldUseTip:(BOOL *)tip sheet:(id)sheet
{
  sheetCopy = sheet;
  menuView = [(SCATModernMenuViewController *)self menuView];
  currentSheet = sheetCopy;
  if (!sheetCopy)
  {
    currentSheet = [(SCATModernMenuViewController *)self currentSheet];
  }

  v116 = currentSheet;
  height = CGSizeZero.height;
  [menuView sizeThatFits:1 includeTip:{CGSizeZero.width, height}];
  v16 = v15;
  v18 = v17;
  [menuView sizeThatFits:0 includeTip:{CGSizeZero.width, height}];
  v20 = v19;
  v22 = v21;
  if (![v116 presentationMode])
  {
    menu = [(SCATModernMenuViewController *)self menu];
    popoverPosition = [menu popoverPosition];

    if (popoverPosition)
    {
      menu2 = [(SCATModernMenuViewController *)self menu];
      -[SCATModernMenuViewController _positionForMenuPopoverPosition:size:](self, "_positionForMenuPopoverPosition:size:", [menu2 popoverPosition], v20, v22);
      goto LABEL_12;
    }
  }

  if ([v116 presentationMode] == 1)
  {
    menu2 = [(SCATModernMenuViewController *)self menu];
    -[SCATModernMenuViewController _positionForMenuDockPosition:size:](self, "_positionForMenuDockPosition:size:", [menu2 dockPosition], v20, v22);
LABEL_12:
    v40 = v24;
    v41 = v25;
    v32 = 0;
    v42 = 0.0;
    LOBYTE(v43) = 1;
    goto LABEL_81;
  }

  [(SCATModernMenuViewController *)self _rectToClearIfNeededForSheet:v116];
  v27 = v26;
  v29 = v28;
  v113 = v30;
  v114 = v31;
  tipObject = [(SCATModernMenuViewController *)self tipObject];
  v32 = tipObject != 0;
  menu3 = [(SCATModernMenuViewController *)self menu];
  menu2 = [menu3 element];

  pointPicker = [(SCATModernMenuViewController *)self pointPicker];
  tipCopy = tip;
  if (pointPicker)
  {
    v35 = pointPicker;
    if ([menu2 scatIsAXElement])
    {
      uiElement = [menu2 uiElement];
      v37 = [uiElement BOOLWithAXAttribute:2150];

      if (v37)
      {
        goto LABEL_15;
      }
    }

    else
    {
    }

    menu2 = 0;
  }

LABEL_15:
  v106 = v29;
  v107 = v27;
  v108 = v18;
  positionCopy = position;
  if (-[SCATModernMenuViewController tipObject](self, "tipObject") == 2 && ([v116 alternateTipElement], v44 = objc_claimAutoreleasedReturnValue(), v44, v44))
  {
    directionCopy2 = direction;
    alternateTipElement = [v116 alternateTipElement];

    menu2 = alternateTipElement;
  }

  else
  {
    directionCopy2 = direction;
  }

  menu4 = [(SCATModernMenuViewController *)self menu];
  screenPoint = [menu4 screenPoint];

  v49 = +[SCATScannerManager sharedManager];
  menu5 = [(SCATModernMenuViewController *)self menu];
  v51 = [v49 scatUIContextForDisplayID:{objc_msgSend(menu5, "currentDisplayID")}];

  v111 = v51;
  v52 = v51;
  v53 = screenPoint;
  [v52 bounds];
  v58 = v54;
  v59 = v55;
  v60 = v56;
  v61 = v57;
  v102 = v22;
  v103 = v16;
  if (tipObject)
  {
    v62 = v108;
  }

  else
  {
    v62 = v22;
  }

  if (tipObject)
  {
    v63 = v16;
  }

  else
  {
    v63 = v20;
  }

  MidX = CGRectGetMidX(*&v54);
  v118.origin.x = v58;
  v118.origin.y = v59;
  v118.size.width = v60;
  v118.size.height = v61;
  rect2 = v63;
  v65 = v63 * 0.5;
  v40 = MidX - v63 * 0.5;
  v112 = CGRectGetMidY(v118) - v62 * 0.5;
  v66 = (menu2 | screenPoint) != 0;
  if (menu2 && (v67 = [menu2 scatFrame], v119.origin.x = sub_1000427AC(v67, v68, v69, v70, v71, v72), !CGRectIsEmpty(v119)))
  {
    scatFrame = [menu2 scatFrame];
    [HNDScreen convertRect:v111 toView:sub_1000427AC(scatFrame, v78, v79, v80, v81, v82)];
    v75 = v73 + v83;
    v76 = v74 + v84;
  }

  else if (screenPoint)
  {
    [screenPoint pointValue];
    [HNDScreen convertPoint:v111 toView:?];
    v75 = v73;
    v76 = v74;
  }

  else
  {
    v75 = v40 + v60;
    v74 = v112;
    v76 = v61 + v112;
    v73 = MidX - v63 * 0.5;
  }

  tip = tipCopy;
  direction = directionCopy2;
  position = positionCopy;
  if (!v66)
  {
    v43 = 1;
    v42 = MidX - v63 * 0.5;
    goto LABEL_51;
  }

  v85 = v62 + v76;
  v86 = (v74 + v76) * 0.5;
  if (v62 + v86 > v61)
  {
    v86 = 0.0;
  }

  v87 = v74 <= v62;
  if (v74 > v62)
  {
    v88 = v74 - v62;
  }

  else
  {
    v88 = v86;
  }

  v43 = v85 <= v61 || v87;
  if (v85 <= v61)
  {
    v88 = v76;
  }

  v112 = v88;
  v42 = (v73 + v75) * 0.5;
  if (v42 - v65 >= 0.0 && v65 + v42 <= v60)
  {
    v40 = v42 - v65;
LABEL_51:
    v90 = v107;
    v91 = v113;
    goto LABEL_52;
  }

  v90 = v107;
  v91 = v113;
  if (v63 + v73 <= v60)
  {
    v40 = v73;
  }

  else if (v75 > v63)
  {
    v40 = v60 - (v60 - v75) - v63;
  }

LABEL_52:
  v120.origin.x = v90;
  v120.origin.y = v106;
  v120.size.width = v91;
  v92 = v114;
  v120.size.height = v114;
  if (!CGRectIsNull(v120))
  {
    v121.origin.x = v90;
    v121.origin.y = v106;
    v121.size.width = v91;
    v121.size.height = v114;
    v123.origin.x = v40;
    v123.origin.y = v112;
    v123.size.width = rect2;
    v123.size.height = v62;
    if (CGRectIntersectsRect(v121, v123))
    {
      if (tipObject)
      {
        v93 = v43;
      }

      else
      {
        v93 = 0;
      }

      if (v93)
      {
        v94 = v106 + v114;
        if ([(SCATModernMenuViewController *)self _menuFrameIsValid:v40, v106 + v114, v103, v108])
        {
LABEL_59:
          v32 = 1;
LABEL_69:
          v96 = v40;
          tip = tipCopy;
LABEL_79:
          v41 = v94;
          v40 = v96;
          goto LABEL_80;
        }

        v94 = v106 - v108;
        v108 = [(SCATModernMenuViewController *)self _menuFrameIsValid:v40, v106 - v108, v103, v108];
        v92 = v114;
        if ((v43 || tipObject == 0) | v108 & 1)
        {
          if (v108)
          {
            goto LABEL_59;
          }

LABEL_70:
          v97 = 0;
          v96 = v40;
          do
          {
            if (v97)
            {
              [(SCATModernMenuViewController *)self _positionForMenuPopoverPosition:v97 size:v20, v102];
              v96 = v98;
              v94 = v99;
              v122.origin.x = v90;
              v122.origin.y = v106;
              v122.size.width = v113;
              v122.size.height = v114;
              v124.origin.x = v96;
              v124.origin.y = v94;
              v124.size.width = v20;
              v124.size.height = v102;
              v100 = CGRectIntersectsRect(v122, v124);
              v101 = !v100;
              v32 &= v100;
            }

            else
            {
              v101 = 0;
            }

            if (v97 > 7)
            {
              break;
            }

            ++v97;
          }

          while (!v101);
          if (!v101)
          {
            v94 = v112;
          }

          v41 = v94;
          tip = tipCopy;
          if (!v101)
          {
            goto LABEL_80;
          }

          goto LABEL_79;
        }
      }

      else
      {
        v94 = v112;
        if (v43 || tipObject == 0)
        {
          goto LABEL_70;
        }
      }

      v94 = v106 - v108;
      if ([(SCATModernMenuViewController *)self _menuFrameIsValid:v40, v106 - v108, v103, v108])
      {
        goto LABEL_69;
      }

      v94 = v106 + v92;
      if ([(SCATModernMenuViewController *)self _menuFrameIsValid:v40, v106 + v92, v103, v108])
      {
        goto LABEL_69;
      }

      goto LABEL_70;
    }
  }

  v41 = v112;
LABEL_80:

LABEL_81:
  if (origin)
  {
    origin->x = floor(v40);
    origin->y = floor(v41);
  }

  if (position)
  {
    *position = floor(v42);
  }

  if (direction)
  {
    *direction = v43;
  }

  if (tip)
  {
    *tip = v32 & 1;
  }
}

- (BOOL)_menuFrameIsValid:(CGRect)valid
{
  height = valid.size.height;
  width = valid.size.width;
  y = valid.origin.y;
  x = valid.origin.x;
  v8 = +[SCATScannerManager sharedManager];
  menu = [(SCATModernMenuViewController *)self menu];
  v10 = [v8 scatUIContextForDisplayID:{objc_msgSend(menu, "currentDisplayID")}];

  [v10 bounds];
  v13.origin.x = x;
  v13.origin.y = y;
  v13.size.width = width;
  v13.size.height = height;
  LOBYTE(menu) = CGRectContainsRect(v12, v13);

  return menu;
}

- (CGPoint)_positionForMenuPopoverPosition:(int64_t)position size:(CGSize)size
{
  height = size.height;
  width = size.width;
  v8 = +[SCATScannerManager sharedManager];
  menu = [(SCATModernMenuViewController *)self menu];
  v10 = [v8 scatUIContextForDisplayID:{objc_msgSend(menu, "currentDisplayID")}];

  [v10 bounds];
  x = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [v10 safeAreaInsets];
  y = v14 + v19;
  v22 = v18 - v21;
  if (position > 4)
  {
    if (position > 6)
    {
      if (position != 7)
      {
        if (position == 8)
        {
          v29.origin.x = x;
          v29.origin.y = y;
          v29.size.width = v16;
          v29.size.height = v22;
          y = floor(CGRectGetMidY(v29) + height * -0.5);
          goto LABEL_19;
        }

        goto LABEL_18;
      }
    }

    else if (position == 5)
    {
      x = v16 - width;
    }

    else
    {
      v27.origin.x = x;
      v27.origin.y = y;
      v27.size.width = v16;
      v27.size.height = v22;
      x = floor(CGRectGetMidX(v27) + width * -0.5);
    }

    y = v22 - height;
    goto LABEL_19;
  }

  if (position > 2)
  {
    if (position != 3)
    {
      v28.origin.x = x;
      v28.origin.y = y;
      v28.size.width = v16;
      v28.size.height = v22;
      y = floor(CGRectGetMidY(v28) + height * -0.5);
    }

    x = v16 - width;
  }

  else if (position != 1)
  {
    if (position == 2)
    {
      v26.origin.x = x;
      v26.origin.y = y;
      v26.size.width = v16;
      v26.size.height = v22;
      x = floor(CGRectGetMidX(v26) + width * -0.5);
      goto LABEL_19;
    }

LABEL_18:
    x = CGPointZero.x;
    y = CGPointZero.y;
    _AXAssert();
  }

LABEL_19:

  v23 = x;
  v24 = y;
  result.y = v24;
  result.x = v23;
  return result;
}

- (CGPoint)_positionForMenuDockPosition:(int64_t)position size:(CGSize)size
{
  height = size.height;
  if (size.width == CGSizeZero.width && size.height == CGSizeZero.height)
  {
    view = [(SCATModernMenuViewController *)self view];
    [view frame];
    height = v9;
  }

  v10 = +[SCATScannerManager sharedManager];
  menu = [(SCATModernMenuViewController *)self menu];
  v12 = [v10 scatUIContextForDisplayID:{objc_msgSend(menu, "currentDisplayID")}];

  [v12 bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  view2 = [(SCATModernMenuViewController *)self view];
  [view2 frame];

  if (position == 1)
  {
    v20 = v16;
  }

  else
  {
    v20 = v18 - height;
  }

  v21 = v14;
  v22 = v20;
  result.y = v22;
  result.x = v21;
  return result;
}

- (void)systemApertureLayoutDidChange:(id)change
{
  changeCopy = change;
  if ([changeCopy count] == 1)
  {
    p_foreheadRect = &self->_foreheadRect;
    v5 = [changeCopy objectAtIndexedSubscript:0];
    [v5 CGRectValue];
    p_foreheadRect->origin.x = v6;
    p_foreheadRect->origin.y = v7;
    p_foreheadRect->size.width = v8;
    p_foreheadRect->size.height = v9;
  }

  else
  {
    if ([changeCopy count] != 2)
    {
      goto LABEL_6;
    }

    v10 = &self->_foreheadRect;
    v5 = [changeCopy objectAtIndexedSubscript:0];
    [v5 CGRectValue];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v19 = [changeCopy objectAtIndexedSubscript:1];
    [v19 CGRectValue];
    v27.origin.x = v20;
    v27.origin.y = v21;
    v27.size.width = v22;
    v27.size.height = v23;
    v26.origin.x = v12;
    v26.origin.y = v14;
    v26.size.width = v16;
    v26.size.height = v18;
    *v10 = CGRectUnion(v26, v27);
  }

LABEL_6:
}

- (SCATMenu)menu
{
  WeakRetained = objc_loadWeakRetained(&self->_menu);

  return WeakRetained;
}

- (SCATPointPicker)pointPicker
{
  WeakRetained = objc_loadWeakRetained(&self->_pointPicker);

  return WeakRetained;
}

@end