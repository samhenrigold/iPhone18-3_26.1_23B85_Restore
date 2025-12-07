@interface _TVPagePerformanceTemplateEntry
- (IKViewElement)templateElement;
- (_TVPagePerformanceController)performanceController;
- (_TVPagePerformanceTemplateEntry)initWithPagePerformanceController:(id)controller forTemplateElement:(id)element;
- (unint64_t)templateRenderDuration;
- (unint64_t)templateResourcesDuration;
- (unint64_t)templateTransitionDuration;
- (void)_beginListeningForInitialImageProxyLoadNotifications;
- (void)_maybeStopListeningForInitialImageProxyLoadNotifications;
- (void)_receivedImageProxyDidLoadNotification:(id)notification;
- (void)_receivedImageProxyWillLoadNotification:(id)notification;
- (void)_stopListeningForInitialImageProxyLoadNotifications;
- (void)dealloc;
- (void)markTemplateDidRender;
- (void)markTemplateDidTransition;
- (void)markTemplateWillRender;
- (void)markTemplateWillTransition;
@end

@implementation _TVPagePerformanceTemplateEntry

- (_TVPagePerformanceTemplateEntry)initWithPagePerformanceController:(id)controller forTemplateElement:(id)element
{
  controllerCopy = controller;
  elementCopy = element;
  v12.receiver = self;
  v12.super_class = _TVPagePerformanceTemplateEntry;
  v8 = [(_TVPagePerformanceTemplateEntry *)&v12 init];
  v9 = v8;
  if (v8)
  {
    [(_TVPagePerformanceTemplateEntry *)v8 setPerformanceController:controllerCopy];
    [(_TVPagePerformanceTemplateEntry *)v9 setTemplateElement:elementCopy];
    elementName = [elementCopy elementName];
    [(_TVPagePerformanceTemplateEntry *)v9 setTemplateElementName:elementName];
  }

  return v9;
}

- (void)dealloc
{
  [(_TVPagePerformanceTemplateEntry *)self _stopListeningForInitialImageProxyLoadNotifications];
  v3.receiver = self;
  v3.super_class = _TVPagePerformanceTemplateEntry;
  [(_TVPagePerformanceTemplateEntry *)&v3 dealloc];
}

- (void)markTemplateWillRender
{
  v8 = *MEMORY[0x277D85DE8];
  if (IsPerformanceLoggingEnabled(self, a2))
  {
    v3 = TVMLKitPerformanceLogObject;
    if (os_log_type_enabled(TVMLKitPerformanceLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v3;
      templateElementName = [(_TVPagePerformanceTemplateEntry *)self templateElementName];
      v6 = 138412290;
      v7 = templateElementName;
      _os_log_impl(&dword_26CD9A000, v4, OS_LOG_TYPE_DEFAULT, "[DEBUG] %@ markTemplateWillRender", &v6, 0xCu);
    }
  }

  [(_TVPagePerformanceTemplateEntry *)self setTemplateWillRender:mach_absolute_time()];
  [(_TVPagePerformanceTemplateEntry *)self _beginListeningForInitialImageProxyLoadNotifications];
}

- (void)markTemplateDidRender
{
  v8 = *MEMORY[0x277D85DE8];
  if (IsPerformanceLoggingEnabled(self, a2))
  {
    v3 = TVMLKitPerformanceLogObject;
    if (os_log_type_enabled(TVMLKitPerformanceLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v3;
      templateElementName = [(_TVPagePerformanceTemplateEntry *)self templateElementName];
      v6 = 138412290;
      v7 = templateElementName;
      _os_log_impl(&dword_26CD9A000, v4, OS_LOG_TYPE_DEFAULT, "[DEBUG] %@ markTemplateDidRender", &v6, 0xCu);
    }
  }

  [(_TVPagePerformanceTemplateEntry *)self setTemplateDidRender:mach_absolute_time()];
}

- (void)markTemplateWillTransition
{
  v9 = *MEMORY[0x277D85DE8];
  if (![(_TVPagePerformanceTemplateEntry *)self templateWillTransition])
  {
    if (IsPerformanceLoggingEnabled(0, v3))
    {
      v4 = TVMLKitPerformanceLogObject;
      if (os_log_type_enabled(TVMLKitPerformanceLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v5 = v4;
        templateElementName = [(_TVPagePerformanceTemplateEntry *)self templateElementName];
        v7 = 138412290;
        v8 = templateElementName;
        _os_log_impl(&dword_26CD9A000, v5, OS_LOG_TYPE_DEFAULT, "[DEBUG] %@ markTemplateWillTransition", &v7, 0xCu);
      }
    }

    [(_TVPagePerformanceTemplateEntry *)self setTemplateWillTransition:mach_absolute_time()];
  }
}

- (void)markTemplateDidTransition
{
  v9 = *MEMORY[0x277D85DE8];
  if (![(_TVPagePerformanceTemplateEntry *)self templateDidTransition])
  {
    if (IsPerformanceLoggingEnabled(0, v3))
    {
      v4 = TVMLKitPerformanceLogObject;
      if (os_log_type_enabled(TVMLKitPerformanceLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v5 = v4;
        templateElementName = [(_TVPagePerformanceTemplateEntry *)self templateElementName];
        v7 = 138412290;
        v8 = templateElementName;
        _os_log_impl(&dword_26CD9A000, v5, OS_LOG_TYPE_DEFAULT, "[DEBUG] %@ markTemplateDidTransition", &v7, 0xCu);
      }
    }

    [(_TVPagePerformanceTemplateEntry *)self setTemplateDidTransition:mach_absolute_time()];
  }

  [(_TVPagePerformanceTemplateEntry *)self _maybeStopListeningForInitialImageProxyLoadNotifications];
}

- (unint64_t)templateRenderDuration
{
  templateWillRender = [(_TVPagePerformanceTemplateEntry *)self templateWillRender];
  templateDidRender = [(_TVPagePerformanceTemplateEntry *)self templateDidRender];

  return _TVPagePerformanceConvertMachAbsoluteTimeToMicroseconds(templateWillRender, templateDidRender);
}

- (unint64_t)templateResourcesDuration
{
  templateWillLoadResources = [(_TVPagePerformanceTemplateEntry *)self templateWillLoadResources];
  templateDidLoadResources = [(_TVPagePerformanceTemplateEntry *)self templateDidLoadResources];

  return _TVPagePerformanceConvertMachAbsoluteTimeToMicroseconds(templateWillLoadResources, templateDidLoadResources);
}

- (unint64_t)templateTransitionDuration
{
  templateWillTransition = [(_TVPagePerformanceTemplateEntry *)self templateWillTransition];
  templateDidTransition = [(_TVPagePerformanceTemplateEntry *)self templateDidTransition];

  return _TVPagePerformanceConvertMachAbsoluteTimeToMicroseconds(templateWillTransition, templateDidTransition);
}

- (void)_beginListeningForInitialImageProxyLoadNotifications
{
  v13 = *MEMORY[0x277D85DE8];
  if (![(_TVPagePerformanceTemplateEntry *)self templateDidLoadResources])
  {
    if (IsPerformanceLoggingEnabled(0, v3))
    {
      v4 = TVMLKitPerformanceLogObject;
      if (os_log_type_enabled(TVMLKitPerformanceLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v5 = v4;
        templateElementName = [(_TVPagePerformanceTemplateEntry *)self templateElementName];
        v11 = 138412290;
        v12 = templateElementName;
        _os_log_impl(&dword_26CD9A000, v5, OS_LOG_TYPE_DEFAULT, "[DEBUG] %@ beginListeningForImageProxyLoadNotifications", &v11, 0xCu);
      }
    }

    [(_TVPagePerformanceTemplateEntry *)self setTemplateWillLoadResources:mach_absolute_time()];
    v7 = [MEMORY[0x277CCAA50] hashTableWithOptions:512];
    initialOnScreenImageProxies = self->_initialOnScreenImageProxies;
    self->_initialOnScreenImageProxies = v7;

    *&self->_listeningForImageProxyWillLoad = 257;
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:self selector:sel__receivedImageProxyWillLoadNotification_ name:@"_TVPagePerformanceImageProxyWillLoadNotification" object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:self selector:sel__receivedImageProxyDidLoadNotification_ name:@"_TVPagePerformanceImageProxyDidLoadNotification" object:0];
  }
}

- (void)_stopListeningForInitialImageProxyLoadNotifications
{
  v10 = *MEMORY[0x277D85DE8];
  if (self->_listeningForImageProxyWillLoad || self->_listeningForImageProxyDidLoad)
  {
    if (IsPerformanceLoggingEnabled(self, a2))
    {
      v3 = TVMLKitPerformanceLogObject;
      if (os_log_type_enabled(TVMLKitPerformanceLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v4 = v3;
        templateElementName = [(_TVPagePerformanceTemplateEntry *)self templateElementName];
        v8 = 138412290;
        v9 = templateElementName;
        _os_log_impl(&dword_26CD9A000, v4, OS_LOG_TYPE_DEFAULT, "[DEBUG] %@ stopListeningForInitialImageProxyLoadNotifications", &v8, 0xCu);
      }
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter removeObserver:self name:@"_TVPagePerformanceImageProxyWillLoadNotification" object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 removeObserver:self name:@"_TVPagePerformanceImageProxyDidLoadNotification" object:0];

    [(NSHashTable *)self->_initialOnScreenImageProxies removeAllObjects];
    *&self->_listeningForImageProxyWillLoad = 0;
  }
}

- (void)_maybeStopListeningForInitialImageProxyLoadNotifications
{
  v20 = *MEMORY[0x277D85DE8];
  performanceController = [(_TVPagePerformanceTemplateEntry *)self performanceController];
  if ([performanceController viewDidAppear] && -[_TVPagePerformanceTemplateEntry templateDidTransition](self, "templateDidTransition"))
  {
    templateWillLoadResources = [(_TVPagePerformanceTemplateEntry *)self templateWillLoadResources];

    if (!templateWillLoadResources)
    {
      return;
    }

    if (self->_listeningForImageProxyWillLoad || self->_listeningForImageProxyDidLoad)
    {
      if (IsPerformanceLoggingEnabled(v4, v5))
      {
        v6 = TVMLKitPerformanceLogObject;
        if (os_log_type_enabled(TVMLKitPerformanceLogObject, OS_LOG_TYPE_DEFAULT))
        {
          v7 = v6;
          templateElementName = [(_TVPagePerformanceTemplateEntry *)self templateElementName];
          *buf = 138412290;
          v19 = templateElementName;
          _os_log_impl(&dword_26CD9A000, v7, OS_LOG_TYPE_DEFAULT, "[DEBUG] %@ maybeStopListeningForInitialImageProxyLoadNotifications", buf, 0xCu);
        }
      }

      v9 = [(NSHashTable *)self->_initialOnScreenImageProxies count];
      if (v9)
      {
        if (IsPerformanceLoggingEnabled(v9, v10))
        {
          v11 = TVMLKitPerformanceLogObject;
          if (os_log_type_enabled(TVMLKitPerformanceLogObject, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_26CD9A000, v11, OS_LOG_TYPE_DEFAULT, "[DEBUG] Stop listening for TVImageProxyWillLoadNotification", buf, 2u);
          }
        }

        defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
        [defaultCenter removeObserver:self name:@"_TVPagePerformanceImageProxyWillLoadNotification" object:0];

        self->_listeningForImageProxyWillLoad = 0;
      }

      else
      {
        if (![(_TVPagePerformanceTemplateEntry *)self templateDidLoadResources])
        {
          if (IsPerformanceLoggingEnabled(0, v13))
          {
            v14 = TVMLKitPerformanceLogObject;
            if (os_log_type_enabled(TVMLKitPerformanceLogObject, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_26CD9A000, v14, OS_LOG_TYPE_DEFAULT, "[DEBUG] No initial on-screen resources left to load.", buf, 2u);
            }
          }

          if ([(_TVPagePerformanceTemplateEntry *)self templateDidLoadLastImageProxy])
          {
            templateDidLoadLastImageProxy = [(_TVPagePerformanceTemplateEntry *)self templateDidLoadLastImageProxy];
          }

          else
          {
            templateDidLoadLastImageProxy = [(_TVPagePerformanceTemplateEntry *)self templateWillLoadResources];
          }

          [(_TVPagePerformanceTemplateEntry *)self setTemplateDidLoadResources:templateDidLoadLastImageProxy];
          [(_TVPagePerformanceTemplateEntry *)self _stopListeningForInitialImageProxyLoadNotifications];
        }

        performanceController2 = [(_TVPagePerformanceTemplateEntry *)self performanceController];
        [performanceController2 _maybeDeliverMetrics];
      }

      return;
    }

    if (![(_TVPagePerformanceTemplateEntry *)self templateUpdateCount])
    {
      return;
    }

    performanceController = [(_TVPagePerformanceTemplateEntry *)self performanceController];
    [performanceController _maybeDeliverMetrics];
  }
}

- (void)_receivedImageProxyWillLoadNotification:(id)notification
{
  v18 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  object = [notificationCopy object];
  userInfo = [notificationCopy userInfo];

  v7 = [userInfo objectForKey:@"_TVPagePerformanceImageProxyNotificationTimestamp"];
  unsignedLongLongValue = [v7 unsignedLongLongValue];

  if (IsPerformanceLoggingEnabled(v9, v10))
  {
    v11 = TVMLKitPerformanceLogObject;
    if (os_log_type_enabled(TVMLKitPerformanceLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      templateElementName = [(_TVPagePerformanceTemplateEntry *)self templateElementName];
      v14 = 138412546;
      v15 = templateElementName;
      v16 = 2112;
      v17 = object;
      _os_log_impl(&dword_26CD9A000, v12, OS_LOG_TYPE_DEFAULT, "[DEBUG] %@ receivedImageProxyWillLoadNotification: %@", &v14, 0x16u);
    }
  }

  if (![(_TVPagePerformanceTemplateEntry *)self templateWillLoadFirstImageProxy]|| unsignedLongLongValue < [(_TVPagePerformanceTemplateEntry *)self templateWillLoadFirstImageProxy])
  {
    [(_TVPagePerformanceTemplateEntry *)self setTemplateWillLoadFirstImageProxy:unsignedLongLongValue];
  }

  [(NSHashTable *)self->_initialOnScreenImageProxies addObject:object];
}

- (void)_receivedImageProxyDidLoadNotification:(id)notification
{
  v21 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  object = [notificationCopy object];
  userInfo = [notificationCopy userInfo];

  v7 = [userInfo objectForKey:@"_TVPagePerformanceImageProxyNotificationTimestamp"];
  unsignedLongLongValue = [v7 unsignedLongLongValue];

  if (IsPerformanceLoggingEnabled(v9, v10))
  {
    v11 = TVMLKitPerformanceLogObject;
    if (os_log_type_enabled(TVMLKitPerformanceLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      templateElementName = [(_TVPagePerformanceTemplateEntry *)self templateElementName];
      v17 = 138412546;
      v18 = templateElementName;
      v19 = 2112;
      v20 = object;
      _os_log_impl(&dword_26CD9A000, v12, OS_LOG_TYPE_DEFAULT, "[DEBUG] %@ receivedImageProxyDidLoadNotification %@", &v17, 0x16u);
    }
  }

  if ([(NSHashTable *)self->_initialOnScreenImageProxies containsObject:object])
  {
    if (![(_TVPagePerformanceTemplateEntry *)self templateDidLoadLastImageProxy]|| unsignedLongLongValue > [(_TVPagePerformanceTemplateEntry *)self templateDidLoadLastImageProxy])
    {
      [(_TVPagePerformanceTemplateEntry *)self setTemplateDidLoadLastImageProxy:unsignedLongLongValue];
    }

    [(NSHashTable *)self->_initialOnScreenImageProxies removeObject:object];
    if (!self->_listeningForImageProxyWillLoad && ![(NSHashTable *)self->_initialOnScreenImageProxies count])
    {
      if (IsPerformanceLoggingEnabled(0, v14))
      {
        v15 = TVMLKitPerformanceLogObject;
        if (os_log_type_enabled(TVMLKitPerformanceLogObject, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v17) = 0;
          _os_log_impl(&dword_26CD9A000, v15, OS_LOG_TYPE_DEFAULT, "[DEBUG] All initial on-screen resources have finished loading.", &v17, 2u);
        }
      }

      [(_TVPagePerformanceTemplateEntry *)self setTemplateDidLoadResources:[(_TVPagePerformanceTemplateEntry *)self templateDidLoadLastImageProxy]];
      [(_TVPagePerformanceTemplateEntry *)self _stopListeningForInitialImageProxyLoadNotifications];
      performanceController = [(_TVPagePerformanceTemplateEntry *)self performanceController];
      [performanceController _maybeDeliverMetrics];
    }
  }
}

- (IKViewElement)templateElement
{
  WeakRetained = objc_loadWeakRetained(&self->_templateElement);

  return WeakRetained;
}

- (_TVPagePerformanceController)performanceController
{
  WeakRetained = objc_loadWeakRetained(&self->_performanceController);

  return WeakRetained;
}

@end