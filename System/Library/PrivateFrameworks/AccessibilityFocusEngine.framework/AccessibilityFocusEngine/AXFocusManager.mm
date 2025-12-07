@interface AXFocusManager
- (AXElement)currentApplication;
- (AXFocusManager)init;
- (BOOL)_focusOnFocusContainer:(id)container;
- (BOOL)_moveFocusInFocusContainer:(id)container withHeading:(unint64_t)heading queryString:(id)string;
- (BOOL)_moveFocusInRemoteElement:(id)element withHeading:(unint64_t)heading byGroup:(BOOL)group;
- (BOOL)_moveFocusWithHeading:(unint64_t)heading byGroup:(BOOL)group shouldWrap:(BOOL)wrap;
- (BOOL)_recursiveMoveFocusInFocusContainer:(id)container withHeading:(unint64_t)heading byGroup:(BOOL)group;
- (BOOL)_recursiveMoveFocusInFocusContainer:(id)container withHeading:(unint64_t)heading queryString:(id)string;
- (id)_currentFocusContainers;
- (id)_moveFocusContainerFocusInDirection:(int64_t)direction;
- (id)currentElement;
- (id)currentFocusContainer;
- (unint64_t)_indexOfTypeaheadPIDInFocusContainers:(id)containers;
- (void)_currentFocusContainers;
- (void)_enumerateObservers:(id)observers;
- (void)_handleFailedFocusMovementWithHeading:(unint64_t)heading byGroup:(BOOL)group;
- (void)_moveFocusWithHeading:(unint64_t)heading byGroup:(BOOL)group queryString:(id)string shouldWrap:(BOOL)wrap;
- (void)_moveToElementWithHeading:(unint64_t)heading queryString:(id)string;
- (void)_verifyPIDForTypeahead;
- (void)addObserver:(id)observer;
- (void)focusOnSceneForTypeahead;
- (void)moveFocusInsideForward:(BOOL)forward shouldWrap:(BOOL)wrap;
- (void)moveFocusWithHeading:(unint64_t)heading byGroup:(BOOL)group;
- (void)removeObserver:(id)observer;
@end

@implementation AXFocusManager

- (AXFocusManager)init
{
  v8.receiver = self;
  v8.super_class = AXFocusManager;
  v2 = [(AXFocusManager *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v4 = dispatch_queue_create("AXFocusMovementQueue", v3);
    [(AXFocusManager *)v2 setMovementQueue:v4];

    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    [(AXFocusManager *)v2 setObservers:weakObjectsHashTable];

    [(AXFocusManager *)v2 setObserversLock:0];
    v6 = dispatch_queue_create("com.apple.AXFocusManager.ObserversQueue", v3);
    [(AXFocusManager *)v2 setObserversQueue:v6];
  }

  return v2;
}

- (id)_moveFocusContainerFocusInDirection:(int64_t)direction
{
  v22 = *MEMORY[0x277D85DE8];
  currentFocusContainer = [(AXFocusManager *)self currentFocusContainer];
  _currentFocusContainers = [(AXFocusManager *)self _currentFocusContainers];
  v7 = AXLogFocusEngine();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [(AXFocusManager *)direction _moveFocusContainerFocusInDirection:_currentFocusContainers, v7];
  }

  if ([_currentFocusContainers count]< 2)
  {
    v9 = AXLogFocusEngine();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v21 = _currentFocusContainers;
      _os_log_impl(&dword_23D73A000, v9, OS_LOG_TYPE_INFO, "Not able to switch native focused container because we didn't have more than 1: %@", buf, 0xCu);
    }

    goto LABEL_9;
  }

  v8 = [_currentFocusContainers indexOfObject:currentFocusContainer];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = AXLogFocusEngine();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [AXFocusManager _moveFocusContainerFocusInDirection:];
    }

LABEL_9:
    v10 = currentFocusContainer;
    goto LABEL_34;
  }

  v11 = v8;
  v12 = v8;
  while (1)
  {
    v13 = _currentFocusContainers;
    v14 = v13;
    if (direction == 1)
    {
      if ([v13 count]- 1 == v12)
      {
        v12 = 0;
      }

      else
      {
        ++v12;
      }
    }

    else if (v12)
    {
      --v12;
    }

    else
    {
      v12 = [v13 count]- 1;
    }

    v9 = [v14 objectAtIndexedSubscript:v12];
    if ([(AXFocusManager *)self _focusOnFocusContainer:v9])
    {
      break;
    }

    v15 = AXLogFocusEngine();
    v16 = v15;
    if (v12 == v11)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23D73A000, v16, OS_LOG_TYPE_DEFAULT, "Giving up on switching focus containers, because we wrapped around to our original.", buf, 2u);
      }

      v10 = currentFocusContainer;
      goto LABEL_33;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v21 = v9;
      _os_log_debug_impl(&dword_23D73A000, v16, OS_LOG_TYPE_DEBUG, "Skipping empty focus container: %@", buf, 0xCu);
    }
  }

  if (([currentFocusContainer isEqual:v9]& 1) == 0)
  {
    v17 = AXLogFocusEngine();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      [AXFocusManager _moveFocusContainerFocusInDirection:];
    }

    [currentFocusContainer disableFocus];
  }

  v18 = AXLogFocusEngine();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    [AXFocusManager _moveFocusContainerFocusInDirection:];
  }

  v10 = v9;
  v16 = currentFocusContainer;
LABEL_33:

LABEL_34:

  return v10;
}

- (void)moveFocusWithHeading:(unint64_t)heading byGroup:(BOOL)group
{
  movementQueue = [(AXFocusManager *)self movementQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__AXFocusManager_moveFocusWithHeading_byGroup___block_invoke;
  block[3] = &unk_278BE5830;
  block[4] = self;
  block[5] = heading;
  groupCopy = group;
  dispatch_async(movementQueue, block);
}

uint64_t __47__AXFocusManager_moveFocusWithHeading_byGroup___block_invoke(uint64_t a1)
{
  _AXShouldDispatchNonMainThreadCallbacksOnMainThreadPushReason();
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = [v2 typeaheadString];
  [v2 _moveFocusWithHeading:v3 byGroup:v4 queryString:v5 shouldWrap:1];

  return MEMORY[0x2821390A0]();
}

- (void)moveFocusInsideForward:(BOOL)forward shouldWrap:(BOOL)wrap
{
  if (forward)
  {
    v6 = 16;
  }

  else
  {
    v6 = 32;
  }

  movementQueue = [(AXFocusManager *)self movementQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__AXFocusManager_moveFocusInsideForward_shouldWrap___block_invoke;
  block[3] = &unk_278BE5830;
  block[4] = self;
  block[5] = v6;
  wrapCopy = wrap;
  dispatch_async(movementQueue, block);
}

uint64_t __52__AXFocusManager_moveFocusInsideForward_shouldWrap___block_invoke(uint64_t a1)
{
  _AXShouldDispatchNonMainThreadCallbacksOnMainThreadPushReason();
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [v2 typeaheadString];
  [v2 _moveFocusWithHeading:v3 byGroup:0 queryString:v4 shouldWrap:*(a1 + 48)];

  return MEMORY[0x2821390A0]();
}

- (void)_moveFocusWithHeading:(unint64_t)heading byGroup:(BOOL)group queryString:(id)string shouldWrap:(BOOL)wrap
{
  wrapCopy = wrap;
  groupCopy = group;
  stringCopy = string;
  currentElement = [(AXFocusManager *)self currentElement];
  if ([currentElement hasRemoteFocusSystem])
  {
    [currentElement elementForRemoteFocusSystem];
  }

  else
  {
    [(AXFocusManager *)self currentFocusContainer];
  }
  v12 = ;
  if ([stringCopy length])
  {
    [(AXFocusManager *)self setTypeaheadString:stringCopy];
    if ((heading & 0x100) != 0)
    {
      [(AXFocusManager *)self setFocusContainerForSuccessfulTypeaheadMovement:0];
    }

    [(AXFocusManager *)self _moveToElementWithHeading:heading queryString:stringCopy];
  }

  else
  {
    [(AXFocusManager *)self _moveFocusWithHeading:heading byGroup:groupCopy shouldWrap:wrapCopy];
  }

  currentElement2 = [(AXFocusManager *)self currentElement];
  if ([currentElement2 hasRemoteFocusSystem])
  {
    [currentElement2 elementForRemoteFocusSystem];
  }

  else
  {
    [(AXFocusManager *)self currentFocusContainer];
  }
  v14 = ;
  if ([currentElement hasRemoteFocusSystem] && (objc_msgSend(currentElement, "isEqual:", currentElement2) & 1) == 0 && (objc_msgSend(v12, "isEqual:", v14) & 1) == 0)
  {
    v15 = AXLogFocusEngine();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [AXFocusManager _moveFocusWithHeading:byGroup:queryString:shouldWrap:];
    }

    [v12 disableFocus];
  }

  if ([currentElement isEqual:currentElement2])
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __71__AXFocusManager__moveFocusWithHeading_byGroup_queryString_shouldWrap___block_invoke;
    v18[3] = &unk_278BE5858;
    v18[4] = self;
    v18[5] = heading;
    [(AXFocusManager *)self _enumerateObservers:v18];
  }

  else
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __71__AXFocusManager__moveFocusWithHeading_byGroup_queryString_shouldWrap___block_invoke_2;
    v16[3] = &unk_278BE5880;
    v16[4] = self;
    v17 = currentElement2;
    [(AXFocusManager *)self _enumerateObservers:v16];
  }
}

void __71__AXFocusManager__moveFocusWithHeading_byGroup_queryString_shouldWrap___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 focusManager:*(a1 + 32) didHitBoundaryWithHeading:*(a1 + 40)];
  }
}

void __71__AXFocusManager__moveFocusWithHeading_byGroup_queryString_shouldWrap___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 focusManager:*(a1 + 32) didMoveToElement:*(a1 + 40)];
  }
}

- (void)focusOnSceneForTypeahead
{
  [(AXFocusManager *)self setTypeaheadString:0];
  [(AXFocusManager *)self _verifyPIDForTypeahead];
  focusContainerForSuccessfulTypeaheadMovement = [(AXFocusManager *)self focusContainerForSuccessfulTypeaheadMovement];

  if (focusContainerForSuccessfulTypeaheadMovement)
  {
    focusContainerForSuccessfulTypeaheadMovement2 = [(AXFocusManager *)self focusContainerForSuccessfulTypeaheadMovement];
    [(AXFocusManager *)self _focusOnFocusContainer:focusContainerForSuccessfulTypeaheadMovement2];
  }
}

- (BOOL)_focusOnFocusContainer:(id)container
{
  containerCopy = container;
  if ([containerCopy hasNativeFocusElements] && (objc_msgSend(MEMORY[0x277CE6BA0], "systemWideElement"), v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "systemApplication"), v5 = objc_claimAutoreleasedReturnValue(), v6 = MEMORY[0x277CBEA60], objc_msgSend(MEMORY[0x277CCABB0], "numberWithInt:", objc_msgSend(containerCopy, "pid")), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(containerCopy, "fbSceneIdentifier"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "axArrayByIgnoringNilElementsWithCount:", 2, v7, v8), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v5, "performAction:withValue:", 5303, v9), v9, v8, v7, v5, v4, v10))
  {
    currentFocusElement = [containerCopy currentFocusElement];
    if ([currentFocusElement hasRemoteFocusSystem])
    {
      elementForRemoteFocusSystem = [currentFocusElement elementForRemoteFocusSystem];
      hasNativeFocusElements = [elementForRemoteFocusSystem hasNativeFocusElements];
      if (hasNativeFocusElements)
      {
        [currentFocusElement focusOnApplication];
      }
    }

    else
    {
      [containerCopy didFocus];
      LOBYTE(hasNativeFocusElements) = 1;
    }
  }

  else
  {
    LOBYTE(hasNativeFocusElements) = 0;
  }

  return hasNativeFocusElements;
}

- (unint64_t)_indexOfTypeaheadPIDInFocusContainers:(id)containers
{
  containersCopy = containers;
  focusContainerForSuccessfulTypeaheadMovement = [(AXFocusManager *)self focusContainerForSuccessfulTypeaheadMovement];

  if (focusContainerForSuccessfulTypeaheadMovement)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __56__AXFocusManager__indexOfTypeaheadPIDInFocusContainers___block_invoke;
    v8[3] = &unk_278BE58A8;
    v8[4] = self;
    v6 = [containersCopy indexOfObjectPassingTest:v8];
  }

  else
  {
    v6 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v6;
}

uint64_t __56__AXFocusManager__indexOfTypeaheadPIDInFocusContainers___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 focusContainerForSuccessfulTypeaheadMovement];
  v5 = [v4 isEqual:v3];

  return v5;
}

- (void)_verifyPIDForTypeahead
{
  _currentFocusContainers = [(AXFocusManager *)self _currentFocusContainers];
  focusContainerForSuccessfulTypeaheadMovement = [(AXFocusManager *)self focusContainerForSuccessfulTypeaheadMovement];
  v5 = [_currentFocusContainers containsObject:focusContainerForSuccessfulTypeaheadMovement];

  if ((v5 & 1) == 0)
  {

    [(AXFocusManager *)self setFocusContainerForSuccessfulTypeaheadMovement:0];
  }
}

- (id)_currentFocusContainers
{
  v47 = *MEMORY[0x277D85DE8];
  systemWideElement = [MEMORY[0x277CE6BA0] systemWideElement];
  systemApplication = [systemWideElement systemApplication];
  currentApplications = [systemApplication currentApplications];

  systemWideElement2 = [MEMORY[0x277CE6BA0] systemWideElement];
  v7 = [systemWideElement2 elementForAttribute:1006 shouldFetchAttributes:0];

  if (v7 && [v7 pid])
  {
    v8 = [currentApplications arrayByAddingObject:v7];

    currentApplications = v8;
  }

  systemWideElement3 = [MEMORY[0x277CE6BA0] systemWideElement];
  v10 = [systemWideElement3 elementForAttribute:1010 shouldFetchAttributes:0];

  if (v10 && [v10 pid])
  {
    v11 = [currentApplications arrayByAddingObject:v10];

    currentApplications = v11;
  }

  systemWideElement4 = [MEMORY[0x277CE6BA0] systemWideElement];
  v13 = [systemWideElement4 elementForAttribute:1005 shouldFetchAttributes:0];

  if (v13 && [v13 pid])
  {
    v14 = [currentApplications arrayByAddingObject:v13];

    currentApplications = v14;
  }

  systemWideElement5 = [MEMORY[0x277CE6BA0] systemWideElement];
  v16 = [systemWideElement5 elementForAttribute:1000 shouldFetchAttributes:0];

  v36 = v10;
  v37 = v7;
  v33 = v16;
  v35 = v13;
  if (([currentApplications containsObject:v16] & 1) == 0)
  {
    server = [MEMORY[0x277CE7E40] server];
    isPIPWindowVisible = [server isPIPWindowVisible];

    if (isPIPWindowVisible)
    {
      v19 = [currentApplications arrayByAddingObject:v16];

      currentApplications = v19;
    }
  }

  currentFocusContainer = [(AXFocusManager *)self currentFocusContainer];
  windowSceneIdentifier = [currentFocusContainer windowSceneIdentifier];

  v22 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v23 = currentApplications;
  v24 = [v23 countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v43;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v43 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = [*(*(&v42 + 1) + 8 * i) focusContainersForCurrentSceneIdentifier:windowSceneIdentifier];
        v40[0] = MEMORY[0x277D85DD0];
        v40[1] = 3221225472;
        v40[2] = __41__AXFocusManager__currentFocusContainers__block_invoke;
        v40[3] = &unk_278BE58D0;
        v41 = v22;
        [v28 enumerateKeysAndObjectsUsingBlock:v40];
      }

      v25 = [v23 countByEnumeratingWithState:&v42 objects:v46 count:16];
    }

    while (v25);
  }

  v29 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __41__AXFocusManager__currentFocusContainers__block_invoke_2;
  v38[3] = &unk_278BE58F8;
  v30 = v29;
  v39 = v30;
  [v22 enumerateKeysAndObjectsUsingBlock:v38];
  v31 = AXLogFocusEngine();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
  {
    [AXFocusManager _currentFocusContainers];
  }

  return v30;
}

void __41__AXFocusManager__currentFocusContainers__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKeyedSubscript:v8];

  if (v6)
  {
    v7 = [*(a1 + 32) objectForKeyedSubscript:v8];
    [v7 axSafelyAddObjectsFromArray:v5];
  }

  else
  {
    v7 = [MEMORY[0x277CBEB18] arrayWithArray:v5];
    [*(a1 + 32) setObject:v7 forKeyedSubscript:v8];
  }
}

- (void)_moveToElementWithHeading:(unint64_t)heading queryString:(id)string
{
  stringCopy = string;
  [(AXFocusManager *)self _verifyPIDForTypeahead];
  _currentFocusContainers = [(AXFocusManager *)self _currentFocusContainers];
  v7 = _currentFocusContainers;
  if ((heading & 0x110) == 0)
  {
    reverseObjectEnumerator = [_currentFocusContainers reverseObjectEnumerator];
    allObjects = [reverseObjectEnumerator allObjects];

    v7 = allObjects;
  }

  v10 = [(AXFocusManager *)self _indexOfTypeaheadPIDInFocusContainers:v7];
  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10;
  }

  focusContainerForSuccessfulTypeaheadMovement = [(AXFocusManager *)self focusContainerForSuccessfulTypeaheadMovement];
  [(AXFocusManager *)self setFocusContainerForSuccessfulTypeaheadMovement:0];
  if (v11 < [v7 count])
  {
    if ((heading & 0x110) != 0)
    {
      v13 = 256;
    }

    else
    {
      v13 = 512;
    }

    if ((heading & 0x300) != 0)
    {
      headingCopy = v13;
    }

    else
    {
      headingCopy = heading;
    }

    v15 = v11;
    while (1)
    {
      v16 = [v7 objectAtIndex:v15];
      currentFocusElement = [v16 currentFocusElement];
      v18 = [(AXFocusManager *)self _moveFocusInFocusContainer:v16 withHeading:headingCopy queryString:stringCopy];
      currentFocusElement2 = [v16 currentFocusElement];
      if (v18 && (![currentFocusElement isEqual:currentFocusElement2] || objc_msgSend(currentFocusElement2, "hasRemoteFocusSystem")))
      {
        break;
      }

      ++v15;
      headingCopy = v13;
      if (v15 >= [v7 count])
      {
        goto LABEL_20;
      }
    }

    [(AXFocusManager *)self setFocusContainerForSuccessfulTypeaheadMovement:v16];
  }

LABEL_20:
  focusContainerForSuccessfulTypeaheadMovement2 = [(AXFocusManager *)self focusContainerForSuccessfulTypeaheadMovement];
  v21 = focusContainerForSuccessfulTypeaheadMovement2;
  if (focusContainerForSuccessfulTypeaheadMovement2)
  {
    v22 = focusContainerForSuccessfulTypeaheadMovement2;
  }

  else
  {
    v22 = focusContainerForSuccessfulTypeaheadMovement;
  }

  [(AXFocusManager *)self setFocusContainerForSuccessfulTypeaheadMovement:v22];

  while (v11 < [v7 count])
  {
    v23 = [v7 objectAtIndex:v11];
    v24 = [v23 pid];
    focusContainerForSuccessfulTypeaheadMovement3 = [(AXFocusManager *)self focusContainerForSuccessfulTypeaheadMovement];
    v26 = [focusContainerForSuccessfulTypeaheadMovement3 pid];

    if (v24 != v26)
    {
      [v23 disableFocus];
    }

    ++v11;
  }
}

- (BOOL)_moveFocusInFocusContainer:(id)container withHeading:(unint64_t)heading queryString:(id)string
{
  containerCopy = container;
  stringCopy = string;
  currentFocusElement = [containerCopy currentFocusElement];
  if (![currentFocusElement hasRemoteFocusSystem])
  {
    goto LABEL_5;
  }

  [currentFocusElement focusOnRemoteSceneID];
  elementForRemoteFocusSystem = [currentFocusElement elementForRemoteFocusSystem];
  if (![(AXFocusManager *)self _recursiveMoveFocusInFocusContainer:elementForRemoteFocusSystem withHeading:heading queryString:stringCopy])
  {

LABEL_5:
    v12 = [(AXFocusManager *)self _recursiveMoveFocusInFocusContainer:containerCopy withHeading:heading queryString:stringCopy];
    goto LABEL_6;
  }

  [currentFocusElement focusOnApplication];

  v12 = 1;
LABEL_6:

  return v12;
}

- (BOOL)_recursiveMoveFocusInFocusContainer:(id)container withHeading:(unint64_t)heading queryString:(id)string
{
  containerCopy = container;
  stringCopy = string;
  currentFocusElement = [containerCopy currentFocusElement];
  v11 = [containerCopy moveFocusWithHeading:heading withQueryString:stringCopy];
  currentFocusElement2 = [containerCopy currentFocusElement];
  if (v11)
  {
    if (([currentFocusElement isEqual:currentFocusElement2] & 1) != 0 || !objc_msgSend(currentFocusElement2, "hasRemoteFocusSystem"))
    {
      v16 = 1;
    }

    else
    {
      v13 = heading & 0x220;
      if ((heading & 0x220) != 0)
      {
        v14 = 512;
      }

      else
      {
        v14 = 256;
      }

      elementForRemoteFocusSystem = [currentFocusElement2 elementForRemoteFocusSystem];
      [currentFocusElement2 focusOnRemoteSceneID];
      if ([elementForRemoteFocusSystem moveFocusWithHeading:v14 withQueryString:stringCopy])
      {
        v16 = 1;
      }

      else
      {
        currentFocusElement3 = [elementForRemoteFocusSystem currentFocusElement];

        if (currentFocusElement3)
        {
          v16 = 0;
        }

        else
        {
          if (v13)
          {
            v18 = 32;
          }

          else
          {
            v18 = 16;
          }

          v16 = [(AXFocusManager *)self _recursiveMoveFocusInFocusContainer:containerCopy withHeading:v18 queryString:stringCopy];
        }
      }
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (BOOL)_moveFocusInRemoteElement:(id)element withHeading:(unint64_t)heading byGroup:(BOOL)group
{
  groupCopy = group;
  elementCopy = element;
  v9 = AXLogFocusEngine();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [AXFocusManager _moveFocusInRemoteElement:withHeading:byGroup:];
  }

  elementForRemoteFocusSystem = [elementCopy elementForRemoteFocusSystem];
  currentFocusElement = [elementForRemoteFocusSystem currentFocusElement];
  v12 = [(AXFocusManager *)self _recursiveMoveFocusInFocusContainer:elementForRemoteFocusSystem withHeading:heading byGroup:groupCopy];
  currentFocusElement2 = [elementForRemoteFocusSystem currentFocusElement];
  currentElement = [(AXFocusManager *)self currentElement];
  if (currentFocusElement | currentFocusElement2)
  {
    v15 = [currentFocusElement isEqual:currentFocusElement2] ^ 1;
  }

  else
  {
    v15 = 0;
  }

  v16 = elementCopy | currentElement;
  if (elementCopy | currentElement)
  {
    v16 = [elementCopy isEqual:currentElement] ^ 1;
  }

  v17 = v12 & (v15 | v16);
  if (v17 == 1)
  {
    v18 = AXLogFocusEngine();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      [AXFocusManager _moveFocusInRemoteElement:withHeading:byGroup:];
    }

    [elementCopy focusOnApplication];
  }

  return v17;
}

- (BOOL)_moveFocusWithHeading:(unint64_t)heading byGroup:(BOOL)group shouldWrap:(BOOL)wrap
{
  wrapCopy = wrap;
  groupCopy = group;
  v37 = *MEMORY[0x277D85DE8];
  v9 = AXLogFocusEngine();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:heading];
    v22 = [MEMORY[0x277CCABB0] numberWithBool:groupCopy];
    v23 = [MEMORY[0x277CCABB0] numberWithBool:wrapCopy];
    *buf = 138412802;
    *&buf[4] = v21;
    *&buf[12] = 2112;
    *&buf[14] = v22;
    *&buf[22] = 2112;
    v34 = v23;
    _os_log_debug_impl(&dword_23D73A000, v9, OS_LOG_TYPE_DEBUG, "Attempting to move focus with heading: %@, grouped: %@, shouldWrap: %@", buf, 0x20u);
  }

  currentElement = [(AXFocusManager *)self currentElement];
  if ([currentElement hasRemoteFocusSystem] && -[AXFocusManager _moveFocusInRemoteElement:withHeading:byGroup:](self, "_moveFocusInRemoteElement:withHeading:byGroup:", currentElement, heading, groupCopy))
  {
    LOBYTE(v11) = 1;
  }

  else
  {
    currentElement2 = [(AXFocusManager *)self currentElement];

    currentFocusContainer = [(AXFocusManager *)self currentFocusContainer];
    if (heading == 512 || heading == 256)
    {
      _currentFocusContainers = [(AXFocusManager *)self _currentFocusContainers];
      if ([_currentFocusContainers count] >= 2)
      {
        v15 = AXLogFocusEngine();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          [AXFocusManager _moveFocusWithHeading:? byGroup:? shouldWrap:?];
        }

        v16 = [_currentFocusContainers indexOfObject:currentFocusContainer];
        v17 = AXLogFocusEngine();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          [AXFocusManager _moveFocusWithHeading:currentFocusContainer byGroup:v16 shouldWrap:v17];
        }

        if (heading == 256)
        {
          v18 = 0;
        }

        else
        {
          v18 = [_currentFocusContainers count] - 1;
        }

        if (v16 != v18)
        {
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3032000000;
          v34 = __Block_byref_object_copy_;
          v35 = __Block_byref_object_dispose_;
          v36 = 0;
          v30[0] = MEMORY[0x277D85DD0];
          v30[1] = 3221225472;
          v30[2] = __59__AXFocusManager__moveFocusWithHeading_byGroup_shouldWrap___block_invoke;
          v30[3] = &unk_278BE5920;
          v30[4] = self;
          v30[5] = buf;
          [_currentFocusContainers enumerateObjectsWithOptions:2 * (heading == 512) usingBlock:v30];
          if (*(*&buf[8] + 40))
          {
            if (([currentFocusContainer isEqual:?]& 1) == 0)
            {
              v19 = AXLogFocusEngine();
              if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
              {
                [AXFocusManager _moveFocusWithHeading:byGroup:shouldWrap:];
              }

              [currentFocusContainer disableFocus];
            }

            v20 = currentFocusContainer;
            currentFocusContainer = *(*&buf[8] + 40);
          }

          else
          {
            v20 = AXLogFocusEngine();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              v24 = @"last";
              if (heading == 256)
              {
                v24 = @"first";
              }

              *v31 = 138412290;
              v32 = v24;
              _os_log_impl(&dword_23D73A000, v20, OS_LOG_TYPE_DEFAULT, "Unable to move to %@ focus container.", v31, 0xCu);
            }
          }

          _Block_object_dispose(buf, 8);
        }
      }
    }

    v11 = [(AXFocusManager *)self _recursiveMoveFocusInFocusContainer:currentFocusContainer withHeading:heading byGroup:groupCopy];
    currentElement3 = [(AXFocusManager *)self currentElement];
    v26 = [currentElement2 isEqual:currentElement3];
    if ((v26 & v11) == 1)
    {
      hasRemoteFocusSystem = [currentElement2 hasRemoteFocusSystem];
    }

    else
    {
      hasRemoteFocusSystem = v26 ^ 1;
    }

    if (!(hasRemoteFocusSystem | !wrapCopy))
    {
      v28 = AXLogFocusEngine();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        [AXFocusManager _moveFocusWithHeading:byGroup:shouldWrap:];
      }

      [(AXFocusManager *)self _handleFailedFocusMovementWithHeading:heading byGroup:groupCopy];
      LOBYTE(v11) = 1;
    }

    currentElement = currentElement2;
  }

  return v11;
}

void __59__AXFocusManager__moveFocusWithHeading_byGroup_shouldWrap___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ([*(a1 + 32) _focusOnFocusContainer:v7])
  {
    v8 = AXLogFocusEngine();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __59__AXFocusManager__moveFocusWithHeading_byGroup_shouldWrap___block_invoke_cold_1();
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }

  v9 = AXLogFocusEngine();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    __59__AXFocusManager__moveFocusWithHeading_byGroup_shouldWrap___block_invoke_cold_2();
  }
}

- (void)_handleFailedFocusMovementWithHeading:(unint64_t)heading byGroup:(BOOL)group
{
  groupCopy = group;
  currentFocusContainer = [(AXFocusManager *)self currentFocusContainer];
  application = [currentFocusContainer application];
  applicationIsExtension = [application applicationIsExtension];

  if (!applicationIsExtension)
  {
    goto LABEL_4;
  }

  currentElement = [(AXFocusManager *)self currentElement];
  applicationForHostFocusSystem = [currentElement applicationForHostFocusSystem];
  [applicationForHostFocusSystem currentFocusElement];

  currentFocusContainer2 = [(AXFocusManager *)self currentFocusContainer];
  LODWORD(applicationForHostFocusSystem) = [currentFocusContainer2 isEqual:currentFocusContainer];

  if (applicationForHostFocusSystem)
  {
    currentElement2 = [(AXFocusManager *)self currentElement];
    applicationForHostFocusSystem2 = [currentElement2 applicationForHostFocusSystem];
    currentFocusElement = [applicationForHostFocusSystem2 currentFocusElement];

    if (!currentFocusElement)
    {
      currentElement3 = [(AXFocusManager *)self currentElement];
      v26 = [currentElement3 elementForAttribute:2310];

      [v26 performAction:5308 withValue:MEMORY[0x277CBEC28]];
      currentElement4 = [(AXFocusManager *)self currentElement];
      applicationForHostFocusSystem3 = [currentElement4 applicationForHostFocusSystem];
      [applicationForHostFocusSystem3 currentFocusElement];

      currentFocusContainer3 = [(AXFocusManager *)self currentFocusContainer];

      [(AXFocusManager *)self _recursiveMoveFocusInFocusContainer:currentFocusContainer3 withHeading:heading byGroup:groupCopy];
      currentFocusContainer = currentFocusContainer3;
      goto LABEL_15;
    }

LABEL_4:
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __64__AXFocusManager__handleFailedFocusMovementWithHeading_byGroup___block_invoke;
    v30[3] = &unk_278BE5948;
    v30[4] = self;
    v16 = MEMORY[0x23EEEA710](v30);
    v17 = v16;
    if ((heading & 0x10) != 0)
    {
      v22 = 256;
      if ((*(v16 + 16))(v16))
      {
        v23 = 1;
LABEL_12:
        v24 = [(AXFocusManager *)self _moveFocusContainerFocusInDirection:v23];

        currentFocusContainer = v24;
      }
    }

    else
    {
      if ((heading & 0x20) == 0)
      {
        currentElement5 = [(AXFocusManager *)self currentElement];
        hasRemoteFocusSystem = [currentElement5 hasRemoteFocusSystem];

        if (hasRemoteFocusSystem)
        {
          currentElement6 = [(AXFocusManager *)self currentElement];
          elementForRemoteFocusSystem = [currentElement6 elementForRemoteFocusSystem];

          [elementForRemoteFocusSystem focusOnApplication];
        }

        goto LABEL_14;
      }

      v22 = 512;
      if ((*(v16 + 16))(v16))
      {
        v23 = 2;
        goto LABEL_12;
      }
    }

    [(AXFocusManager *)self _recursiveMoveFocusInFocusContainer:currentFocusContainer withHeading:v22 byGroup:groupCopy];
LABEL_14:
  }

LABEL_15:
}

BOOL __64__AXFocusManager__handleFailedFocusMovementWithHeading_byGroup___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _currentFocusContainers];
  v2 = [v1 count] > 1;

  return v2;
}

- (BOOL)_recursiveMoveFocusInFocusContainer:(id)container withHeading:(unint64_t)heading byGroup:(BOOL)group
{
  groupCopy = group;
  containerCopy = container;
  v9 = AXLogFocusEngine();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [AXFocusManager _recursiveMoveFocusInFocusContainer:withHeading:byGroup:];
  }

  currentFocusElement = [containerCopy currentFocusElement];
  v11 = [containerCopy moveFocusWithHeading:heading byGroup:groupCopy];
  currentFocusElement2 = [containerCopy currentFocusElement];
  if (v11)
  {
    if (([currentFocusElement isEqual:currentFocusElement2] & 1) != 0 || !objc_msgSend(currentFocusElement2, "hasRemoteFocusSystem"))
    {
      v16 = 1;
    }

    else
    {
      v13 = AXLogFocusEngine();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [AXFocusManager _recursiveMoveFocusInFocusContainer:withHeading:byGroup:];
      }

      if ((heading & 0x220) != 0)
      {
        v14 = 512;
      }

      else
      {
        v14 = 256;
      }

      [currentFocusElement2 focusOnRemoteSceneID];
      elementForRemoteFocusSystem = [currentFocusElement2 elementForRemoteFocusSystem];
      v16 = [elementForRemoteFocusSystem moveFocusWithHeading:v14 byGroup:groupCopy];
      if ((v16 & 1) != 0 || ([elementForRemoteFocusSystem currentFocusElement], v17 = objc_claimAutoreleasedReturnValue(), v17, v17))
      {
        [currentFocusElement2 focusOnApplication];
      }

      else
      {
        v19 = AXLogFocusEngine();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          [AXFocusManager _recursiveMoveFocusInFocusContainer:withHeading:byGroup:];
        }

        v16 = [(AXFocusManager *)self _recursiveMoveFocusInFocusContainer:containerCopy withHeading:heading byGroup:groupCopy];
      }
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)currentElement
{
  currentApplication = [(AXFocusManager *)self currentApplication];
  currentFocusElement = [currentApplication currentFocusElement];

  return currentFocusElement;
}

- (AXElement)currentApplication
{
  v44 = *MEMORY[0x277D85DE8];
  systemWideElement = [MEMORY[0x277CE6BA0] systemWideElement];
  v3 = [systemWideElement elementForAttribute:1007 shouldFetchAttributes:0];
  systemApplication = [systemWideElement systemApplication];
  uiElement = [systemApplication uiElement];

  server = [MEMORY[0x277CE7E40] server];
  isContinuitySessionActive = [server isContinuitySessionActive];

  if (isContinuitySessionActive)
  {
    v8 = MEMORY[0x277CBEB18];
    v9 = [uiElement arrayWithAXAttribute:1109];
    v10 = [v8 arrayWithArray:v9];

    firstObject2 = [uiElement arrayWithAXAttribute:1111];
    if (([v10 isEqualToArray:firstObject2] & 1) == 0)
    {
      [v10 removeObjectsInArray:firstObject2];
    }

    firstObject = [v10 firstObject];
    [firstObject intValue];
    AppElementWithPid = _AXUIElementCreateAppElementWithPid();
    v14 = [MEMORY[0x277CE6BA0] elementWithAXUIElement:AppElementWithPid];
    if (AppElementWithPid)
    {
      CFRelease(AppElementWithPid);
    }

LABEL_15:

    goto LABEL_16;
  }

  uiElement2 = [systemWideElement uiElement];
  v10 = [uiElement2 numberWithAXAttribute:1110];

  v16 = [uiElement arrayWithAXAttribute:1108];
  firstObject2 = [v16 firstObject];

  if (([firstObject2 isEqualToString:*MEMORY[0x277CE6818]] & 1) != 0 || (v17 = objc_msgSend(v3, "pid"), v17 == objc_msgSend(v10, "intValue")) && v10)
  {
LABEL_9:
    v18 = [uiElement arrayWithAXAttribute:1109];
    firstObject = [v18 firstObject];

    [firstObject intValue];
    v19 = _AXUIElementCreateAppElementWithPid();
    v20 = [MEMORY[0x277CE6BA0] elementWithAXUIElement:v19];
    if (v19)
    {
      CFRelease(v19);
    }

    [v20 enableFocus];
    if (v20)
    {
      v21 = v20;
    }

    else
    {
      v21 = v3;
    }

    v14 = v21;

    goto LABEL_15;
  }

  bundleId = [v3 bundleId];
  v24 = *MEMORY[0x277CE7C70];
  if ([bundleId isEqualToString:*MEMORY[0x277CE7C70]])
  {
    v25 = [firstObject2 isEqualToString:v24];

    if ((v25 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
  }

  bundleId2 = [v3 bundleId];
  v27 = [bundleId2 isEqualToString:@"com.apple.AccessibilityUIServer"];

  if (v27)
  {
    v37 = v10;
    v42 = 0;
    objc_opt_class();
    v28 = [v3 safeValueForKey:@"pid"];
    v29 = __UIAccessibilityCastAsClass();

    [uiElement arrayWithAXAttribute:1109];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v30 = v41 = 0u;
    v31 = [v30 countByEnumeratingWithState:&v38 objects:v43 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v39;
      while (2)
      {
        for (i = 0; i != v32; ++i)
        {
          if (*v39 != v33)
          {
            objc_enumerationMutation(v30);
          }

          v35 = *(*(&v38 + 1) + 8 * i);
          if (([v35 isEqual:v29] & 1) == 0)
          {
            [v35 intValue];
            v36 = _AXUIElementCreateAppElementWithPid();
            v14 = [MEMORY[0x277CE6BA0] elementWithAXUIElement:v36];
            if (v36)
            {
              CFRelease(v36);
            }

            v10 = v37;
            goto LABEL_16;
          }
        }

        v32 = [v30 countByEnumeratingWithState:&v38 objects:v43 count:16];
        if (v32)
        {
          continue;
        }

        break;
      }
    }

    v10 = v37;
  }

  v14 = v3;
LABEL_16:

  return v14;
}

- (id)currentFocusContainer
{
  currentApplication = [(AXFocusManager *)self currentApplication];
  currentFocusContainer = [currentApplication currentFocusContainer];

  return currentFocusContainer;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_observersLock);
  [(NSHashTable *)self->_observers addObject:observerCopy];

  os_unfair_lock_unlock(&self->_observersLock);
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_observersLock);
  [(NSHashTable *)self->_observers removeObject:observerCopy];

  os_unfair_lock_unlock(&self->_observersLock);
}

- (void)_enumerateObservers:(id)observers
{
  observersCopy = observers;
  if (observersCopy)
  {
    observersQueue = [(AXFocusManager *)self observersQueue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __38__AXFocusManager__enumerateObservers___block_invoke;
    v6[3] = &unk_278BE5970;
    v6[4] = self;
    v7 = observersCopy;
    dispatch_async(observersQueue, v6);
  }
}

void __38__AXFocusManager__enumerateObservers___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock((*(a1 + 32) + 8));
  v2 = [*(a1 + 32) observers];
  v3 = [v2 allObjects];

  os_unfair_lock_unlock((*(a1 + 32) + 8));
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        (*(*(a1 + 40) + 16))(*(a1 + 40));
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)_moveFocusContainerFocusInDirection:(NSObject *)a3 .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CCABB0] numberWithLong:a1];
  OUTLINED_FUNCTION_1();
  v7 = 2112;
  v8 = a2;
  _os_log_debug_impl(&dword_23D73A000, a3, OS_LOG_TYPE_DEBUG, "Moving to focus container in direction %@ in focus containers: %@", v6, 0x16u);
}

- (void)_moveFocusContainerFocusInDirection:.cold.4()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(&dword_23D73A000, v0, OS_LOG_TYPE_ERROR, "Could not find currently focus container %@ in list %@", v1, 0x16u);
}

- (void)_currentFocusContainers
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2(&dword_23D73A000, v0, v1, "Current apps: %@\nCurrent focus containers: %@");
}

- (void)_moveFocusWithHeading:(char)a1 byGroup:shouldWrap:.cold.1(char a1)
{
  v1 = @"first";
  if ((a1 & 1) == 0)
  {
    v1 = @"last";
  }

  LODWORD(v4) = 138412546;
  *(&v4 + 4) = v1;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2(&dword_23D73A000, v2, v3, "Moving to %@ element with multiple focusContainers: %@", v4, DWORD2(v4));
}

- (void)_moveFocusWithHeading:(uint64_t)a1 byGroup:(uint64_t)a2 shouldWrap:(NSObject *)a3 .cold.2(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 134218242;
  *&v3[4] = a2;
  *&v3[12] = 2112;
  *&v3[14] = a1;
  OUTLINED_FUNCTION_2(&dword_23D73A000, a2, a3, "Current focusContainer at %lu: %@", *v3, *&v3[8], *&v3[16], *MEMORY[0x277D85DE8]);
}

@end