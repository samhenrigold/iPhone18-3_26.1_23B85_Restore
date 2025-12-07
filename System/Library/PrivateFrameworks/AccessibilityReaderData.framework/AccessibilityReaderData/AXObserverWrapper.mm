@interface AXObserverWrapper
- (AXObserverWrapper)initWithSystemElement:(id)element runloop:(id)runloop notifications:(id)notifications handler:(id)handler error:(id *)error;
- (void)dealloc;
@end

@implementation AXObserverWrapper

- (AXObserverWrapper)initWithSystemElement:(id)element runloop:(id)runloop notifications:(id)notifications handler:(id)handler error:(id *)error
{
  v42 = *MEMORY[0x277D85DE8];
  elementCopy = element;
  runloopCopy = runloop;
  notificationsCopy = notifications;
  handlerCopy = handler;
  v40.receiver = self;
  v40.super_class = AXObserverWrapper;
  v16 = [(AXObserverWrapper *)&v40 init];
  v17 = v16;
  if (!v16)
  {
LABEL_15:
    v19 = v17;
    goto LABEL_16;
  }

  [(AXObserverWrapper *)v16 setRunloop:runloopCopy];
  [(AXObserverWrapper *)v17 setNotifications:notificationsCopy];
  outObserver = 0;
  [(AXObserverWrapper *)v17 setHandler:handlerCopy];
  [(AXObserverWrapper *)v17 setSystemElement:elementCopy];
  v18 = AXObserverCreate([elementCopy pid], _axEventHandler, &outObserver);
  if (v18 == kAXErrorSuccess)
  {
    [(AXObserverWrapper *)v17 setObserver:outObserver];
    CFRelease(outObserver);
    getCFRunLoop = [runloopCopy getCFRunLoop];
    RunLoopSource = AXObserverGetRunLoopSource([(AXObserverWrapper *)v17 observer]);
    CFRunLoopAddSource(getCFRunLoop, RunLoopSource, *MEMORY[0x277CBF058]);
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v22 = notificationsCopy;
    v23 = [v22 countByEnumeratingWithState:&v35 objects:v41 count:16];
    if (v23)
    {
      v24 = v23;
      v32 = handlerCopy;
      v33 = notificationsCopy;
      v34 = runloopCopy;
      v25 = *v36;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v36 != v25)
          {
            objc_enumerationMutation(v22);
          }

          intValue = [*(*(&v35 + 1) + 8 * i) intValue];
          observer = [(AXObserverWrapper *)v17 observer];
          systemElement = [(AXObserverWrapper *)v17 systemElement];
          uiElement = [systemElement uiElement];
          AXObserverAddNotification(observer, [uiElement axElement], intValue, v17);
        }

        v24 = [v22 countByEnumeratingWithState:&v35 objects:v41 count:16];
      }

      while (v24);

      notificationsCopy = v33;
      runloopCopy = v34;
      handlerCopy = v32;
    }

    else
    {
    }

    goto LABEL_15;
  }

  if (error)
  {
    *error = [MEMORY[0x277CCA9B8] ax_errorWithDomain:@"AccessibilityReader" description:{@"Could not make observer. error: %ld", v18}];
  }

  v19 = 0;
LABEL_16:

  return v19;
}

- (void)dealloc
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  notifications = [(AXObserverWrapper *)self notifications];
  v4 = [notifications countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      v7 = 0;
      do
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(notifications);
        }

        intValue = [*(*(&v16 + 1) + 8 * v7) intValue];
        observer = [(AXObserverWrapper *)self observer];
        systemElement = [(AXObserverWrapper *)self systemElement];
        uiElement = [systemElement uiElement];
        AXObserverRemoveNotification(observer, [uiElement axElement], intValue);

        ++v7;
      }

      while (v5 != v7);
      v5 = [notifications countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  runloop = [(AXObserverWrapper *)self runloop];
  getCFRunLoop = [runloop getCFRunLoop];
  RunLoopSource = AXObserverGetRunLoopSource([(AXObserverWrapper *)self observer]);
  CFRunLoopRemoveSource(getCFRunLoop, RunLoopSource, *MEMORY[0x277CBF058]);

  v15.receiver = self;
  v15.super_class = AXObserverWrapper;
  [(AXObserverWrapper *)&v15 dealloc];
}

@end