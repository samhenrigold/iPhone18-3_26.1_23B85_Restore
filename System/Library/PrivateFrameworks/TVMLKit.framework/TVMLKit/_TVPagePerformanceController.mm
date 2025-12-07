@interface _TVPagePerformanceController
+ (BOOL)isPerformanceUIEnabled;
+ (void)postNotificationForImageProxy:(id)proxy withLoadingStatus:(BOOL)status;
- (BOOL)_isMetricsReady;
- (NSDictionary)metrics;
- (_TVPagePerformanceController)init;
- (_TVPagePerformanceDelegate)delegate;
- (id)buildPagePerformanceView;
- (id)getEntryForTemplate:(id)template;
- (unint64_t)templateDidComplete;
- (void)_calculatePageDurations;
- (void)_maybeDeliverMetrics;
- (void)markViewDidAppear;
- (void)markViewDidDisappear;
- (void)markViewDidLoad;
- (void)markViewWillAppear;
- (void)markViewWillDisappear;
- (void)markViewWillLoad;
@end

@implementation _TVPagePerformanceController

+ (BOOL)isPerformanceUIEnabled
{
  if (isPerformanceUIEnabled_onceToken != -1)
  {
    +[_TVPagePerformanceController isPerformanceUIEnabled];
  }

  if (isPerformanceUIEnabled_internalBuild == 1)
  {
    v2 = CFPreferencesGetAppBooleanValue(@"PagePerformanceUIEnabled", @"com.apple.TVMLKit", 0) != 0;
  }

  else
  {
    v2 = isPerformanceUIEnabled_uiEnabled;
  }

  return v2 & 1;
}

+ (void)postNotificationForImageProxy:(id)proxy withLoadingStatus:(BOOL)status
{
  statusCopy = status;
  v22[1] = *MEMORY[0x277D85DE8];
  proxyCopy = proxy;
  v21 = @"_TVPagePerformanceImageProxyNotificationTimestamp";
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:mach_absolute_time()];
  v22[0] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];

  v8 = @"_TVPagePerformanceImageProxyDidLoadNotification";
  if (statusCopy)
  {
    v8 = @"_TVPagePerformanceImageProxyWillLoadNotification";
  }

  v9 = v8;
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __80___TVPagePerformanceController_postNotificationForImageProxy_withLoadingStatus___block_invoke;
  v17 = &unk_279D6F5D0;
  v10 = v9;
  v18 = v10;
  v11 = proxyCopy;
  v19 = v11;
  v12 = v7;
  v20 = v12;
  v13 = MEMORY[0x26D6AFBB0](&v14);
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v13[2](v13);
  }

  else
  {
    dispatch_async(MEMORY[0x277D85CD0], v13);
  }
}

- (_TVPagePerformanceController)init
{
  v7.receiver = self;
  v7.super_class = _TVPagePerformanceController;
  v2 = [(_TVPagePerformanceController *)&v7 init];
  v3 = v2;
  if (v2)
  {
    gettimeofday(&v2->_baseTimeval, 0);
    v3->_baseAbsoluteTime = mach_absolute_time();
    array = [MEMORY[0x277CBEB18] array];
    templateEntries = v3->_templateEntries;
    v3->_templateEntries = array;
  }

  return v3;
}

- (void)markViewWillLoad
{
  v7 = *MEMORY[0x277D85DE8];
  if (![(_TVPagePerformanceController *)self viewWillLoad])
  {
    if (IsPerformanceLoggingEnabled(0, v3))
    {
      v4 = TVMLKitPerformanceLogObject;
      if (os_log_type_enabled(TVMLKitPerformanceLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v5 = 134217984;
        selfCopy = self;
        _os_log_impl(&dword_26CD9A000, v4, OS_LOG_TYPE_DEFAULT, "[DEBUG] %p markViewWillLoad", &v5, 0xCu);
      }
    }

    [(_TVPagePerformanceController *)self setViewWillLoad:mach_absolute_time()];
  }
}

- (void)markViewDidLoad
{
  v7 = *MEMORY[0x277D85DE8];
  if (![(_TVPagePerformanceController *)self viewDidLoad])
  {
    if (IsPerformanceLoggingEnabled(0, v3))
    {
      v4 = TVMLKitPerformanceLogObject;
      if (os_log_type_enabled(TVMLKitPerformanceLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v5 = 134217984;
        selfCopy = self;
        _os_log_impl(&dword_26CD9A000, v4, OS_LOG_TYPE_DEFAULT, "[DEBUG] %p markViewDidLoad", &v5, 0xCu);
      }
    }

    [(_TVPagePerformanceController *)self setViewDidLoad:mach_absolute_time()];
  }
}

- (void)markViewWillAppear
{
  v7 = *MEMORY[0x277D85DE8];
  if (![(_TVPagePerformanceController *)self viewWillAppear])
  {
    if (IsPerformanceLoggingEnabled(0, v3))
    {
      v4 = TVMLKitPerformanceLogObject;
      if (os_log_type_enabled(TVMLKitPerformanceLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v5 = 134217984;
        selfCopy = self;
        _os_log_impl(&dword_26CD9A000, v4, OS_LOG_TYPE_DEFAULT, "[DEBUG] %p markViewWillAppear", &v5, 0xCu);
      }
    }

    [(_TVPagePerformanceController *)self setViewWillAppear:mach_absolute_time()];
  }
}

- (void)markViewDidAppear
{
  v7 = *MEMORY[0x277D85DE8];
  if (![(_TVPagePerformanceController *)self viewDidAppear])
  {
    if (IsPerformanceLoggingEnabled(0, v3))
    {
      v4 = TVMLKitPerformanceLogObject;
      if (os_log_type_enabled(TVMLKitPerformanceLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v5 = 134217984;
        selfCopy = self;
        _os_log_impl(&dword_26CD9A000, v4, OS_LOG_TYPE_DEFAULT, "[DEBUG] %p markViewDidAppear", &v5, 0xCu);
      }
    }

    [(_TVPagePerformanceController *)self setViewDidAppear:mach_absolute_time()];
    [(NSMutableArray *)self->_templateEntries makeObjectsPerformSelector:sel__maybeStopListeningForInitialImageProxyLoadNotifications];
  }
}

- (void)markViewWillDisappear
{
  v7 = *MEMORY[0x277D85DE8];
  if (![(_TVPagePerformanceController *)self viewWillDisappear])
  {
    if (IsPerformanceLoggingEnabled(0, v3))
    {
      v4 = TVMLKitPerformanceLogObject;
      if (os_log_type_enabled(TVMLKitPerformanceLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v5 = 134217984;
        selfCopy = self;
        _os_log_impl(&dword_26CD9A000, v4, OS_LOG_TYPE_DEFAULT, "[DEBUG] %p markViewWillDisappear", &v5, 0xCu);
      }
    }

    [(_TVPagePerformanceController *)self setViewWillDisappear:mach_absolute_time()];
    [(NSMutableArray *)self->_templateEntries makeObjectsPerformSelector:sel__stopListeningForInitialImageProxyLoadNotifications];
  }
}

- (void)markViewDidDisappear
{
  v8 = *MEMORY[0x277D85DE8];
  if (![(_TVPagePerformanceController *)self viewDidDisappear])
  {
    templateDidComplete = [(_TVPagePerformanceController *)self templateDidComplete];
    if (!templateDidComplete)
    {
      templateDidComplete = [(_TVPagePerformanceController *)self setPageWasInterrupted:1];
    }

    if (IsPerformanceLoggingEnabled(templateDidComplete, v4))
    {
      v5 = TVMLKitPerformanceLogObject;
      if (os_log_type_enabled(TVMLKitPerformanceLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v6 = 134217984;
        selfCopy = self;
        _os_log_impl(&dword_26CD9A000, v5, OS_LOG_TYPE_DEFAULT, "[DEBUG] %p markViewDidDisappear", &v6, 0xCu);
      }
    }

    [(_TVPagePerformanceController *)self setViewDidDisappear:mach_absolute_time()];
    [(_TVPagePerformanceController *)self _maybeDeliverMetrics];
  }
}

- (id)getEntryForTemplate:(id)template
{
  v28 = *MEMORY[0x277D85DE8];
  templateCopy = template;
  lastObject = [(NSMutableArray *)self->_templateEntries lastObject];
  templateElement = [lastObject templateElement];

  if (templateElement == templateCopy)
  {
    templateDidTransition = [lastObject templateDidTransition];
    v16 = IsPerformanceLoggingEnabled(templateDidTransition, v15);
    if (templateDidTransition)
    {
      if (v16)
      {
        v17 = TVMLKitPerformanceLogObject;
        if (os_log_type_enabled(TVMLKitPerformanceLogObject, OS_LOG_TYPE_DEFAULT))
        {
          v18 = v17;
          elementName = [templateCopy elementName];
          v24 = 134218242;
          selfCopy3 = self;
          v26 = 2112;
          v27 = elementName;
          _os_log_impl(&dword_26CD9A000, v18, OS_LOG_TYPE_DEFAULT, "[DEBUG] %p %@ reuseEntryForTemplate", &v24, 0x16u);
        }
      }

      [lastObject setTemplateUpdateCount:{objc_msgSend(lastObject, "templateUpdateCount") + 1}];
      [(_TVPagePerformanceController *)self setPageWasUpdated:1];
      v12 = lastObject;
    }

    else
    {
      if (v16)
      {
        v20 = TVMLKitPerformanceLogObject;
        if (os_log_type_enabled(TVMLKitPerformanceLogObject, OS_LOG_TYPE_DEFAULT))
        {
          v21 = v20;
          elementName2 = [templateCopy elementName];
          v24 = 134218242;
          selfCopy3 = self;
          v26 = 2112;
          v27 = elementName2;
          _os_log_impl(&dword_26CD9A000, v21, OS_LOG_TYPE_DEFAULT, "[DEBUG] %p %@ ignoreEntryForTemplate", &v24, 0x16u);
        }
      }

      v12 = 0;
    }
  }

  else
  {
    _stopListeningForInitialImageProxyLoadNotifications = [lastObject _stopListeningForInitialImageProxyLoadNotifications];
    if (IsPerformanceLoggingEnabled(_stopListeningForInitialImageProxyLoadNotifications, v8))
    {
      v9 = TVMLKitPerformanceLogObject;
      if (os_log_type_enabled(TVMLKitPerformanceLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v10 = v9;
        elementName3 = [templateCopy elementName];
        v24 = 134218242;
        selfCopy3 = self;
        v26 = 2112;
        v27 = elementName3;
        _os_log_impl(&dword_26CD9A000, v10, OS_LOG_TYPE_DEFAULT, "[DEBUG] %p %@ createEntryForTemplate", &v24, 0x16u);
      }
    }

    v12 = [[_TVPagePerformanceTemplateEntry alloc] initWithPagePerformanceController:self forTemplateElement:templateCopy];
    [(NSMutableArray *)self->_templateEntries addObject:v12];
    elementName4 = [templateCopy elementName];
    -[_TVPagePerformanceController setPageIsLoading:](self, "setPageIsLoading:", [@"loadingTemplate" isEqualToString:elementName4]);
    -[_TVPagePerformanceController setPageHasSubpages:](self, "setPageHasSubpages:", [@"menuBarTemplate" isEqualToString:elementName4]);
    [(_TVPagePerformanceController *)self setPageWasUpdated:0];
  }

  return v12;
}

- (unint64_t)templateDidComplete
{
  if ([(_TVPagePerformanceController *)self viewDidDisappear])
  {
    return 0;
  }

  lastObject = [(NSMutableArray *)self->_templateEntries lastObject];
  viewDidAppear = [(_TVPagePerformanceController *)self viewDidAppear];
  if (viewDidAppear <= [lastObject templateDidTransition])
  {
    templateDidTransition = [lastObject templateDidTransition];
  }

  else
  {
    templateDidTransition = [(_TVPagePerformanceController *)self viewDidAppear];
  }

  templateDidLoadResources = templateDidTransition;
  if ([lastObject templateDidLoadResources] > templateDidTransition)
  {
    templateDidLoadResources = [lastObject templateDidLoadResources];
  }

  return templateDidLoadResources;
}

- (NSDictionary)metrics
{
  v18[8] = *MEMORY[0x277D85DE8];
  v3 = self->_baseTimeval.tv_usec + 1000000 * self->_baseTimeval.tv_sec;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __39___TVPagePerformanceController_metrics__block_invoke;
  v16[3] = &unk_279D6F740;
  v16[4] = self;
  v16[5] = v3;
  v4 = MEMORY[0x26D6AFBB0](v16, a2);
  lastObject = [(NSMutableArray *)self->_templateEntries lastObject];
  v17[0] = @"pageAppearTime";
  v15 = v4[2](v4, [(_TVPagePerformanceController *)self viewDidAppear]);
  v18[0] = v15;
  v17[1] = @"pageUserInteractiveTime";
  v6 = v4[2](v4, [lastObject templateDidTransition]);
  v18[1] = v6;
  v17[2] = @"pageEndTime";
  v7 = v4[2](v4, [(_TVPagePerformanceController *)self templateDidComplete]);
  v18[2] = v7;
  v17[3] = @"pageInterruptTime";
  v8 = v4[2](v4, [(_TVPagePerformanceController *)self viewDidDisappear]);
  v18[3] = v8;
  v17[4] = @"modelRenderStartTime";
  v9 = v4[2](v4, [lastObject templateWillRender]);
  v18[4] = v9;
  v17[5] = @"modelRenderEndTime";
  v10 = v4[2](v4, [lastObject templateDidRender]);
  v18[5] = v10;
  v17[6] = @"resourceRequestStartTime";
  v11 = v4[2](v4, [lastObject templateWillLoadResources]);
  v18[6] = v11;
  v17[7] = @"resourceRequestEndTime";
  v12 = v4[2](v4, [lastObject templateDidLoadResources]);
  v18[7] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:8];

  return v13;
}

- (id)buildPagePerformanceView
{
  v23[5] = *MEMORY[0x277D85DE8];
  [(_TVPagePerformanceController *)self _calculatePageDurations];
  v3 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{0.0, 0.0, 500.0, 0.0}];
  v4 = [MEMORY[0x277D75348] colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.8];
  [v3 setBackgroundColor:v4];

  v16 = 0;
  v17 = &v16;
  v18 = 0x4010000000;
  v19 = &unk_26CE937F5;
  v20 = xmmword_26CE87DD0;
  v21 = xmmword_26CE87DE0;
  v22[0] = @"Complete Duration: ";
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[_TVPagePerformanceController pageCompleteDuration](self, "pageCompleteDuration")}];
  v23[0] = v5;
  v22[1] = @"Setup Duration: ";
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[_TVPagePerformanceController pageSetupDuration](self, "pageSetupDuration")}];
  v23[1] = v6;
  v22[2] = @"Render Duration: ";
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[_TVPagePerformanceController pageRenderDuration](self, "pageRenderDuration")}];
  v23[2] = v7;
  v22[3] = @"Resource Duration: ";
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[_TVPagePerformanceController pageResourceDuration](self, "pageResourceDuration")}];
  v23[3] = v8;
  v22[4] = @"Transition Duration: ";
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[_TVPagePerformanceController pageTransitionDuration](self, "pageTransitionDuration")}];
  v23[4] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:5];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __56___TVPagePerformanceController_buildPagePerformanceView__block_invoke;
  v13[3] = &unk_279D6F768;
  v15 = &v16;
  v11 = v3;
  v14 = v11;
  [v10 enumerateKeysAndObjectsUsingBlock:v13];
  [v11 setFrame:{0.0, 0.0, 500.0, v17[5]}];

  _Block_object_dispose(&v16, 8);

  return v11;
}

- (void)_calculatePageDurations
{
  v29 = *MEMORY[0x277D85DE8];
  lastObject = [(NSMutableArray *)self->_templateEntries lastObject];
  -[_TVPagePerformanceController setPageRenderDuration:](self, "setPageRenderDuration:", [lastObject templateRenderDuration]);
  pageWasUpdated = [(_TVPagePerformanceController *)self pageWasUpdated];
  if (pageWasUpdated)
  {
    [(_TVPagePerformanceController *)self setPageCompleteDuration:0];
    [(_TVPagePerformanceController *)self setPageSetupDuration:0];
    [(_TVPagePerformanceController *)self setPageResourceDuration:0];
    selfCopy3 = self;
    v7 = 0;
  }

  else
  {
    if (IsPerformanceLoggingEnabled(pageWasUpdated, v5))
    {
      v8 = TVMLKitPerformanceLogObject;
      if (os_log_type_enabled(TVMLKitPerformanceLogObject, OS_LOG_TYPE_DEFAULT))
      {
        templateEntries = self->_templateEntries;
        *buf = 134218242;
        selfCopy2 = self;
        v27 = 2112;
        v28 = templateEntries;
        _os_log_impl(&dword_26CD9A000, v8, OS_LOG_TYPE_DEFAULT, "[DEBUG] %p calculatePageDurations %@", buf, 0x16u);
      }
    }

    if ([(_TVPagePerformanceController *)self pageWasInterrupted])
    {
      viewDidDisappear = [(_TVPagePerformanceController *)self viewDidDisappear];
    }

    else
    {
      viewDidDisappear = [(_TVPagePerformanceController *)self templateDidComplete];
    }

    [(_TVPagePerformanceController *)self setPageCompleteDuration:_TVPagePerformanceConvertMachAbsoluteTimeToMicroseconds(self->_baseAbsoluteTime, viewDidDisappear)];
    -[_TVPagePerformanceController setPageSetupDuration:](self, "setPageSetupDuration:", _TVPagePerformanceConvertMachAbsoluteTimeToMicroseconds(self->_baseAbsoluteTime, [lastObject templateWillRender]));
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v11 = self->_templateEntries;
    v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = 0;
      v15 = 0;
      v16 = *v21;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v21 != v16)
          {
            objc_enumerationMutation(v11);
          }

          v18 = *(*(&v20 + 1) + 8 * i);
          templateTransitionDuration = [v18 templateTransitionDuration];
          if (templateTransitionDuration > v14)
          {
            v14 = templateTransitionDuration;
          }

          v15 += [v18 templateResourcesDuration];
        }

        v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v13);
    }

    else
    {
      v14 = 0;
      v15 = 0;
    }

    [(_TVPagePerformanceController *)self setPageResourceDuration:v15];
    selfCopy3 = self;
    v7 = v14;
  }

  [(_TVPagePerformanceController *)selfCopy3 setPageTransitionDuration:v7, v20];
}

- (BOOL)_isMetricsReady
{
  lastObject = [(NSMutableArray *)self->_templateEntries lastObject];
  if ([(_TVPagePerformanceController *)self viewDidDisappear])
  {
    templateDidLoadResources = [lastObject templateDidLoadResources];
    if (templateDidLoadResources)
    {
      if (!IsPerformanceLoggingEnabled(templateDidLoadResources, v5))
      {
        goto LABEL_17;
      }

      v6 = TVMLKitPerformanceLogObject;
      if (!os_log_type_enabled(TVMLKitPerformanceLogObject, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_17;
      }

      v14 = 0;
      v7 = "[DEBUG] shouldDeliverMetrics -- Too late; page has already been dismissed/finished loading";
      v8 = &v14;
LABEL_16:
      _os_log_impl(&dword_26CD9A000, v6, OS_LOG_TYPE_DEFAULT, v7, v8, 2u);
LABEL_17:
      v12 = 0;
      goto LABEL_18;
    }
  }

  else
  {
    if (![(_TVPagePerformanceController *)self viewDidAppear])
    {
      if (!IsPerformanceLoggingEnabled(0, v9))
      {
        goto LABEL_17;
      }

      v6 = TVMLKitPerformanceLogObject;
      if (!os_log_type_enabled(TVMLKitPerformanceLogObject, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_17;
      }

      *buf = 0;
      v7 = "[DEBUG] shouldDeliverMetrics -- Too early; page is not yet interactive";
      v8 = buf;
      goto LABEL_16;
    }

    templateDidLoadResources2 = [lastObject templateDidLoadResources];
    if (!templateDidLoadResources2 || (templateDidLoadResources2 = [lastObject templateDidTransition]) == 0)
    {
      if (!IsPerformanceLoggingEnabled(templateDidLoadResources2, v11))
      {
        goto LABEL_17;
      }

      v6 = TVMLKitPerformanceLogObject;
      if (!os_log_type_enabled(TVMLKitPerformanceLogObject, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_17;
      }

      v15 = 0;
      v7 = "[DEBUG] shouldDeliverMetrics -- Too early; page is not finished loading";
      v8 = &v15;
      goto LABEL_16;
    }
  }

  v12 = 1;
LABEL_18:

  return v12;
}

- (void)_maybeDeliverMetrics
{
  v11 = *MEMORY[0x277D85DE8];
  if (IsPerformanceLoggingEnabled(self, a2))
  {
    v3 = TVMLKitPerformanceLogObject;
    if (os_log_type_enabled(TVMLKitPerformanceLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 134217984;
      selfCopy2 = self;
      _os_log_impl(&dword_26CD9A000, v3, OS_LOG_TYPE_DEFAULT, "[DEBUG] %p maybeDeliverMetrics", &v9, 0xCu);
    }
  }

  _isMetricsReady = [(_TVPagePerformanceController *)self _isMetricsReady];
  if (_isMetricsReady)
  {
    if (IsPerformanceLoggingEnabled(_isMetricsReady, v5))
    {
      v6 = TVMLKitPerformanceLogObject;
      if (os_log_type_enabled(TVMLKitPerformanceLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 134217984;
        selfCopy2 = self;
        _os_log_impl(&dword_26CD9A000, v6, OS_LOG_TYPE_DEFAULT, "[DEBUG] %p actuallyDeliverMetrics", &v9, 0xCu);
      }
    }

    delegate = [(_TVPagePerformanceController *)self delegate];
    metrics = [(_TVPagePerformanceController *)self metrics];
    [delegate pagePerformanceController:self didUpdateMetrics:metrics];
  }
}

- (_TVPagePerformanceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end