@interface SBSystemPointerInteractionManager
- (BOOL)isViewRegistered:(id)registered;
- (SBSystemPointerInteractionManager)initWithMultiDisplayUserInteractionCoordinator:(id)coordinator;
- (id)pointerInteraction:(id)interaction window:(id)window regionForRequest:(id)request defaultRegion:(id)region;
- (id)pointerInteraction:(id)interaction window:(id)window styleForRegion:(id)region;
- (void)addObserver:(id)observer;
- (void)dealloc;
- (void)pointerDidMoveToFromWindowScene:(id)scene toWindowScene:(id)windowScene;
- (void)pointerInteraction:(id)interaction window:(id)window willEnterRegion:(id)region animator:(id)animator;
- (void)pointerInteraction:(id)interaction window:(id)window willExitRegion:(id)region animator:(id)animator;
- (void)registerView:(id)view delegate:(id)delegate;
@end

@implementation SBSystemPointerInteractionManager

- (SBSystemPointerInteractionManager)initWithMultiDisplayUserInteractionCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  if (!coordinatorCopy)
  {
    [(SBSystemPointerInteractionManager *)a2 initWithMultiDisplayUserInteractionCoordinator:?];
  }

  v11.receiver = self;
  v11.super_class = SBSystemPointerInteractionManager;
  v7 = [(SBSystemPointerInteractionManager *)&v11 init];
  if (v7)
  {
    weakToWeakObjectsMapTable = [MEMORY[0x277CCAB00] weakToWeakObjectsMapTable];
    registeredViewsToDelegates = v7->_registeredViewsToDelegates;
    v7->_registeredViewsToDelegates = weakToWeakObjectsMapTable;

    objc_storeStrong(&v7->_multiDisplayUserInteractionCoordinator, coordinator);
    [coordinatorCopy addPointerInteractionObserver:v7];
  }

  return v7;
}

- (void)registerView:(id)view delegate:(id)delegate
{
  viewCopy = view;
  delegateCopy = delegate;
  v8 = [(NSMapTable *)self->_registeredViewsToDelegates objectForKey:viewCopy];

  if (v8)
  {
    [(SBSystemPointerInteractionManager *)a2 registerView:viewCopy delegate:?];
  }

  [(NSMapTable *)self->_registeredViewsToDelegates setObject:delegateCopy forKey:viewCopy];
}

- (BOOL)isViewRegistered:(id)registered
{
  v3 = [(NSMapTable *)self->_registeredViewsToDelegates objectForKey:registered];
  v4 = v3 != 0;

  return v4;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  observers = self->_observers;
  v8 = observerCopy;
  if (!observers)
  {
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v7 = self->_observers;
    self->_observers = weakObjectsHashTable;

    observerCopy = v8;
    observers = self->_observers;
  }

  [(NSHashTable *)observers addObject:observerCopy];
}

- (void)dealloc
{
  [(SBMultiDisplayUserInteractionCoordinator *)self->_multiDisplayUserInteractionCoordinator removePointerInteractionObserver:self];
  v3.receiver = self;
  v3.super_class = SBSystemPointerInteractionManager;
  [(SBSystemPointerInteractionManager *)&v3 dealloc];
}

- (void)pointerDidMoveToFromWindowScene:(id)scene toWindowScene:(id)windowScene
{
  v18 = *MEMORY[0x277D85DE8];
  sceneCopy = scene;
  windowSceneCopy = windowScene;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [(NSHashTable *)self->_observers copy];
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v13 + 1) + 8 * v12++) pointerDidMoveToFromWindowScene:sceneCopy toWindowScene:windowSceneCopy];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (id)pointerInteraction:(id)interaction window:(id)window regionForRequest:(id)request defaultRegion:(id)region
{
  v61 = *MEMORY[0x277D85DE8];
  windowCopy = window;
  requestCopy = request;
  v10 = requestCopy;
  if (windowCopy)
  {
    screen = [windowCopy screen];
    fixedCoordinateSpace = [screen fixedCoordinateSpace];

    [v10 location];
    [windowCopy convertPoint:fixedCoordinateSpace toCoordinateSpace:?];
    v54 = v14;
    v55 = v13;
    v15 = self->_registeredViewsToDelegates;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v16 = v15;
    v17 = [(NSMapTable *)v16 countByEnumeratingWithState:&v56 objects:v60 count:16];
    if (v17)
    {
      v51 = windowCopy;
      v18 = *v57;
      v52 = *(MEMORY[0x277D768C8] + 8);
      v53 = *MEMORY[0x277D768C8];
      v19 = *(MEMORY[0x277D768C8] + 16);
      v20 = *(MEMORY[0x277D768C8] + 24);
      v21 = &selRef_performKeyboardShortcut;
      while (2)
      {
        v22 = 0;
        v23 = v21;
        do
        {
          if (*v57 != v18)
          {
            objc_enumerationMutation(v16);
          }

          v24 = *(*(&v56 + 1) + 8 * v22);
          v25 = [(NSMapTable *)v16 objectForKey:v24];
          [v24 convertPoint:fixedCoordinateSpace fromCoordinateSpace:{v55, v54}];
          v27 = v26;
          v29 = v28;
          v30 = v20;
          v31 = v19;
          v33 = v52;
          v32 = v53;
          if (objc_opt_respondsToSelector())
          {
            [v25 pointerInteractionHitTestInsetsForView:v24];
            v32 = v34;
            v33 = v35;
            v31 = v36;
            v30 = v37;
          }

          [v24 bounds];
          v64.origin.x = v33 + v38;
          v64.origin.y = v32 + v39;
          v40 = v30 + v33;
          v64.size.width = v41 - v40;
          v42 = v31 + v32;
          v64.size.height = v43 - v42;
          v63.x = v27;
          v63.y = v29;
          if (CGRectContainsPoint(v64, v63) && [v25 shouldBeginPointerInteractionRequest:v10 atLocation:v24 forView:{v27, v29}])
          {
            if (objc_opt_respondsToSelector())
            {
              v17 = [v25 regionAtLocation:v24 forView:{v27, v29}];
            }

            else
            {
              v44 = [MEMORY[0x277CCACA8] stringWithFormat:@"%p", v24];
              v45 = MEMORY[0x277D75880];
              [v24 bounds];
              v17 = [v45 regionWithRect:v44 identifier:{v33 + v46, v32 + v47, v48 - v40, v49 - v42}];
            }

            windowCopy = v51;
            [v17 setReferenceView:v24];

            goto LABEL_21;
          }

          v22 = v22 + 1;
        }

        while (v17 != v22);
        v17 = [(NSMapTable *)v16 countByEnumeratingWithState:&v56 objects:v60 count:16];
        v21 = v23;
        if (v17)
        {
          continue;
        }

        break;
      }

      windowCopy = v51;
    }

LABEL_21:
  }

  else
  {
    fixedCoordinateSpace = SBLogSystemGesture(requestCopy);
    if (os_log_type_enabled(fixedCoordinateSpace, OS_LOG_TYPE_FAULT))
    {
      [SBSystemPointerInteractionManager pointerInteraction:fixedCoordinateSpace window:? regionForRequest:? defaultRegion:?];
    }

    v17 = 0;
  }

  return v17;
}

- (id)pointerInteraction:(id)interaction window:(id)window styleForRegion:(id)region
{
  regionCopy = region;
  referenceView = [regionCopy referenceView];
  v8 = [(NSMapTable *)self->_registeredViewsToDelegates objectForKey:referenceView];
  if (objc_opt_respondsToSelector())
  {
    v9 = [v8 styleForRegion:regionCopy forView:referenceView];
  }

  else
  {
    v10 = [objc_alloc(MEMORY[0x277D75B90]) initWithView:referenceView];
    v11 = [MEMORY[0x277D75858] effectWithPreview:v10];
    v9 = [MEMORY[0x277D75890] styleWithEffect:v11 shape:0];
  }

  return v9;
}

- (void)pointerInteraction:(id)interaction window:(id)window willEnterRegion:(id)region animator:(id)animator
{
  referenceView = [region referenceView];
  activePointerRegionView = self->_activePointerRegionView;
  self->_activePointerRegionView = referenceView;
}

- (void)pointerInteraction:(id)interaction window:(id)window willExitRegion:(id)region animator:(id)animator
{
  activePointerRegionView = self->_activePointerRegionView;
  self->_activePointerRegionView = 0;
  regionCopy = region;

  referenceView = [regionCopy referenceView];

  v9 = [(NSMapTable *)self->_registeredViewsToDelegates objectForKey:referenceView];
  if (objc_opt_respondsToSelector())
  {
    [v9 pointerWillExitRegion];
  }
}

- (void)initWithMultiDisplayUserInteractionCoordinator:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSystemPointerInteractionManager.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"userInteractionCoordinator"}];
}

- (void)registerView:(uint64_t)a3 delegate:.cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"SBSystemPointerInteractionManager.m" lineNumber:36 description:{@"The view (%@) had already been registered previously.", a3}];
}

@end