@interface SBGridSwitcherViewController
- (id)targetItemForSpringLoadingInteractionInView:(id)view atLocation:(CGPoint)location forDropSession:(id)session;
- (id)targetViewForSpringLoadingEffectForView:(id)view;
- (void)_setupSpringLoadingSupport;
- (void)viewDidLoad;
@end

@implementation SBGridSwitcherViewController

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = SBGridSwitcherViewController;
  [(SBFluidSwitcherViewController *)&v3 viewDidLoad];
  [(SBGridSwitcherViewController *)self _setupSpringLoadingSupport];
}

- (void)_setupSpringLoadingSupport
{
  v3 = objc_alloc_init(MEMORY[0x277D65F40]);
  v4 = objc_alloc_init(MEMORY[0x277D65F48]);
  [v3 setDelegate:self];
  [v4 setDelegate:self];
  objc_initWeak(&location, self);
  v5 = objc_alloc(MEMORY[0x277D75A58]);
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __58__SBGridSwitcherViewController__setupSpringLoadingSupport__block_invoke;
  v11 = &unk_2783C2870;
  objc_copyWeak(&v12, &location);
  v6 = [v5 initWithInteractionBehavior:v3 interactionEffect:v4 activationHandler:&v8];
  v7 = [(SBFluidSwitcherViewController *)self contentView:v8];
  [v7 addInteraction:v6];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __58__SBGridSwitcherViewController__setupSpringLoadingSupport__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [v4 targetItem];

  v6 = objc_opt_class();
  v7 = v5;
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

  [WeakRetained didSelectContainer:v9 modifierFlags:0];
}

- (id)targetItemForSpringLoadingInteractionInView:(id)view atLocation:(CGPoint)location forDropSession:(id)session
{
  y = location.y;
  x = location.x;
  v84 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  layoutContext = [(SBFluidSwitcherViewController *)self layoutContext];
  activeGesture = [layoutContext activeGesture];

  gestureEvent = [activeGesture gestureEvent];
  v12 = objc_opt_class();
  v13 = gestureEvent;
  if (v12)
  {
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  isSwitcherDrag = [v15 isSwitcherDrag];
  if (isSwitcherDrag)
  {
    v18 = SBLogAppSwitcherDrag(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v80 = activeGesture;
      _os_log_impl(&dword_21ED4E000, v18, OS_LOG_TYPE_INFO, "Not spring-loading because of active gesture: %@", buf, 0xCu);
    }

LABEL_27:

    v27 = 0;
  }

  else
  {

    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    activeGesture = [sessionCopy items];
    v19 = [activeGesture countByEnumeratingWithState:&v73 objects:v83 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v74;
      while (2)
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v74 != v21)
          {
            objc_enumerationMutation(activeGesture);
          }

          localObject = [*(*(&v73 + 1) + 8 * i) localObject];
          v24 = objc_opt_class();
          v25 = localObject;
          if (v24)
          {
            if (objc_opt_isKindOfClass())
            {
              v26 = v25;
            }

            else
            {
              v26 = 0;
            }
          }

          else
          {
            v26 = 0;
          }

          v18 = v26;

          if (v18 && [v18 startLocation]== 11)
          {
            v28 = SBLogAppSwitcherDrag(11);
            if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v80 = v18;
              _os_log_impl(&dword_21ED4E000, v28, OS_LOG_TYPE_INFO, "Not spring-loading because dragged items came from switcher: %@", buf, 0xCu);
            }

            goto LABEL_27;
          }
        }

        v20 = [activeGesture countByEnumeratingWithState:&v73 objects:v83 count:16];
        v27 = 1;
        if (v20)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v27 = 1;
    }
  }

  _windowManagementContext = [(SBFluidSwitcherViewController *)self _windowManagementContext];
  isChamoisOrFlexibleWindowing = [_windowManagementContext isChamoisOrFlexibleWindowing];

  layoutContext2 = [(SBFluidSwitcherViewController *)self layoutContext];
  layoutState = [layoutContext2 layoutState];

  unlockedEnvironmentMode = [layoutState unlockedEnvironmentMode];
  v34 = unlockedEnvironmentMode;
  if (!v27)
  {
    goto LABEL_36;
  }

  v35 = unlockedEnvironmentMode & 0xFFFFFFFFFFFFFFFELL;
  if (!isChamoisOrFlexibleWindowing)
  {
    v35 = unlockedEnvironmentMode;
  }

  if (v35 != 2)
  {
    v37 = SBLogAppSwitcherDrag(unlockedEnvironmentMode);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      v38 = SBStringForUnlockedEnvironmentMode(v34);
      _windowManagementContext2 = [(SBFluidSwitcherViewController *)self _windowManagementContext];
      v40 = NSStringFromSwitcherWindowManagementContext(_windowManagementContext2);
      *buf = 138412546;
      v80 = v38;
      v81 = 2112;
      v82 = v40;
      _os_log_impl(&dword_21ED4E000, v37, OS_LOG_TYPE_INFO, "Not spring-loading for unlockedEnvironmentMode: %@, with windowManagementContext: %@", buf, 0x16u);
    }

LABEL_36:
    v36 = 0;
    goto LABEL_37;
  }

  v36 = 1;
LABEL_37:
  v41 = [(SBFluidSwitcherViewController *)self _itemContainerAtLocation:0 environment:x, y];
  appLayout = [v41 appLayout];
  v43 = appLayout;
  v44 = 0;
  if (v41 && appLayout)
  {
    [v41 killingProgress];
    if (!BSFloatIsZero() || [v43 type])
    {
      v44 = 0;
      goto LABEL_42;
    }

    v47 = [MEMORY[0x277D663F0] draggedItemBundleIdentifiersInDrag:sessionCopy];
    v48 = [v47 count];
    if (v48 != 1)
    {
      if (!v48 && ([v41 isEligibleForContentDragSpringLoading] & 1) != 0)
      {
        goto LABEL_47;
      }

LABEL_64:
      v44 = 0;
      goto LABEL_65;
    }

    v71 = v47;
    firstObject = [v47 firstObject];
    v53 = firstObject;
    if (!v36)
    {
      v44 = 0;
      sharedInstance = firstObject;
      v47 = v71;
      goto LABEL_55;
    }

    v54 = firstObject;
    if ([v43 containsItemWithBundleIdentifier:firstObject])
    {
      v55 = +[SBApplicationController sharedInstance];
      v56 = [v55 applicationWithBundleIdentifier:v53];

      v70 = v54;
      v57 = v56;
      info = [v56 info];
      LODWORD(v56) = [info supportsMultiwindow];

      v59 = v56 & isChamoisOrFlexibleWindowing;
      v60 = v56;
      v54 = v70;
      v47 = v71;
      if (v59 != 1 || v34 != 3)
      {

        if (!v60)
        {
          goto LABEL_64;
        }

LABEL_47:
        v44 = v41;

        v77 = *MEMORY[0x277D674E0];
        v78 = &unk_2833722F0;
        v49 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v78 forKeys:&v77 count:1];
        v50 = MEMORY[0x277D65DD0];
        v47 = v49;
        sharedInstance = [v50 sharedInstance];
        [sharedInstance emitEvent:31 withPayload:v47];

LABEL_55:
LABEL_65:

        goto LABEL_42;
      }
    }

    else
    {
      if (v34 == 3)
      {
        v61 = isChamoisOrFlexibleWindowing;
      }

      else
      {
        v61 = 0;
      }

      v47 = v71;
      if ((v61 & 1) == 0)
      {

        goto LABEL_47;
      }
    }

    dataSource = [(SBFluidSwitcherViewController *)self dataSource];
    displayItemLayoutAttributesProvider = [dataSource displayItemLayoutAttributesProvider];
    appLayout2 = [layoutState appLayout];
    interfaceOrientation = [layoutState interfaceOrientation];
    if ((interfaceOrientation - 1) < 2)
    {
      v65 = 1;
    }

    else
    {
      v65 = 2 * ((interfaceOrientation - 3) < 2);
    }

    v66 = [displayItemLayoutAttributesProvider zOrderedItemsInAppLayout:appLayout2 orientation:v65];
    firstObject2 = [v66 firstObject];

    v68 = [v43 itemForLayoutRole:1];
    v69 = [(SBDisplayItem *)firstObject2 isEqualToItem:v68];

    if ((v69 & 1) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_64;
  }

LABEL_42:
  v45 = v44;

  return v44;
}

- (id)targetViewForSpringLoadingEffectForView:(id)view
{
  viewCopy = view;
  v4 = objc_opt_class();
  v5 = viewCopy;
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

  _springLoadingEffectTargetView = [v7 _springLoadingEffectTargetView];

  return _springLoadingEffectTargetView;
}

@end