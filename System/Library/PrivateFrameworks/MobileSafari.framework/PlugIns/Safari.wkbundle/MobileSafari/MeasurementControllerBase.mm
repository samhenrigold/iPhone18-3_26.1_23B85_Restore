@interface MeasurementControllerBase
- (BOOL)_shouldConsiderPageLoadEnded;
- (MeasurementControllerBase)initWithPluginPageContextController:(id)controller;
- (id).cxx_construct;
- (void)_clearPageLoadState;
- (void)_maybeEndPageLoadSoon;
- (void)_postPageLoadEnd;
- (void)_resourceLoadCompleted:(unint64_t)completed;
- (void)_sendPageLoadFinishedEvent;
- (void)_waitforLoadEndTimerFired:(id)fired;
- (void)webProcessPlugInBrowserContextController:(id)controller didFailLoadWithErrorForFrame:(id)frame error:(id)error;
- (void)webProcessPlugInBrowserContextController:(id)controller didFinishDocumentLoadForFrame:(id)frame;
- (void)webProcessPlugInBrowserContextController:(id)controller didFinishLoadForFrame:(id)frame;
- (void)webProcessPlugInBrowserContextController:(id)controller didFirstVisuallyNonEmptyLayoutForFrame:(id)frame;
- (void)webProcessPlugInBrowserContextController:(id)controller didHandleOnloadEventsForFrame:(id)frame;
- (void)webProcessPlugInBrowserContextController:(id)controller didStartProvisionalLoadForFrame:(id)frame;
- (void)webProcessPlugInBrowserContextController:(id)controller frame:(id)frame didFailLoadForResource:(unint64_t)resource error:(id)error;
- (void)webProcessPlugInBrowserContextController:(id)controller frame:(id)frame didFinishLoadForResource:(unint64_t)resource;
- (void)webProcessPlugInBrowserContextController:(id)controller frame:(id)frame didInitiateLoadForResource:(unint64_t)resource request:(id)request;
- (void)webProcessPlugInBrowserContextController:(id)controller renderingProgressDidChange:(unint64_t)change;
@end

@implementation MeasurementControllerBase

- (MeasurementControllerBase)initWithPluginPageContextController:(id)controller
{
  controllerCopy = controller;
  v13.receiver = self;
  v13.super_class = MeasurementControllerBase;
  v5 = [(MeasurementControllerBase *)&v13 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_contextController, controllerCopy);
    v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
    loadingFrames = v6->_loadingFrames;
    v6->_loadingFrames = v7;

    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    loadData = v6->_loadData;
    v6->_loadData = v9;

    v6->_version = 4;
    v6->_allSubresourcesFinishedLoadingDelay = 1.0;
    v11 = v6;
  }

  return v6;
}

- (void)_clearPageLoadState
{
  selfCopy = self;
  self->_currentPageLoadFinished = 0;
  [(NSMutableSet *)self->_loadingFrames removeAllObjects];
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  loadData = selfCopy->_loadData;
  selfCopy->_loadData = v3;

  left = selfCopy->_loadingSubresources.__tree_.__end_node_.__left_;
  selfCopy = (selfCopy + 40);
  sub_259B4B184(&selfCopy[-1]._allSubresourcesFinishedLoadingDelay, left);
  selfCopy->super.isa = 0;
  selfCopy->_waitForLoadToReallyEnd = 0;
  *&selfCopy[-1]._allSubresourcesFinishedLoadingDelay = selfCopy;
  contextController = selfCopy[-1]._contextController;

  MEMORY[0x2821F9670](contextController, sel_invalidate);
}

- (BOOL)_shouldConsiderPageLoadEnded
{
  if (self->_version <= 4)
  {
    if (self->_currentPageLoadFinished && !self->_loadingSubresources.__tree_.__size_)
    {
      return [(NSMutableSet *)self->_loadingFrames count]== 0;
    }

    return 0;
  }

  if (self->_loadingSubresources.__tree_.__size_)
  {
    return 0;
  }

  v4 = [(NSMutableDictionary *)self->_loadData objectForKeyedSubscript:@"PageLoadDOMContentLoadedTime"];
  if (v4)
  {
    v5 = [(NSMutableDictionary *)self->_loadData objectForKeyedSubscript:@"PageLoadFirstMeaningfulPaintTime"];
    v3 = v5 != 0;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_waitforLoadEndTimerFired:(id)fired
{
  if ([(MeasurementControllerBase *)self _shouldConsiderPageLoadEnded])
  {

    MEMORY[0x2821F9670](self, sel__postPageLoadEnd);
  }
}

- (void)_postPageLoadEnd
{
  [(MeasurementControllerBase *)self _sendPageLoadFinishedEvent];

  [(MeasurementControllerBase *)self _clearPageLoadState];
}

- (void)_maybeEndPageLoadSoon
{
  if ([(MeasurementControllerBase *)self _shouldConsiderPageLoadEnded])
  {
    [(MeasurementControllerBase *)self _doAfterPageLoad];
    if ([(NSTimer *)self->_waitForLoadToReallyEnd isValid])
    {
      waitForLoadToReallyEnd = self->_waitForLoadToReallyEnd;
      v7 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:self->_allSubresourcesFinishedLoadingDelay];
      [(NSTimer *)waitForLoadToReallyEnd setFireDate:?];
    }

    else
    {
      v4 = objc_alloc(MEMORY[0x277CBEBB8]);
      v7 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:self->_allSubresourcesFinishedLoadingDelay];
      v5 = [v4 initWithFireDate:0.0 interval:? target:? selector:? userInfo:? repeats:?];
      v6 = self->_waitForLoadToReallyEnd;
      self->_waitForLoadToReallyEnd = v5;
    }

    currentRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
    [currentRunLoop addTimer:self->_waitForLoadToReallyEnd forMode:*MEMORY[0x277CBE640]];
  }
}

- (void)_sendPageLoadFinishedEvent
{
  kdebug_trace();
  pageLoadTestEventsProxy = self->_pageLoadTestEventsProxy;
  if (!pageLoadTestEventsProxy)
  {
    WeakRetained = objc_loadWeakRetained(&self->_contextController);
    _remoteObjectRegistry = [WeakRetained _remoteObjectRegistry];

    v6 = [MEMORY[0x277CE3898] remoteObjectInterfaceWithProtocol:&unk_286ADABD8];
    v7 = [_remoteObjectRegistry remoteObjectProxyWithInterface:v6];
    v8 = self->_pageLoadTestEventsProxy;
    self->_pageLoadTestEventsProxy = v7;

    pageLoadTestEventsProxy = self->_pageLoadTestEventsProxy;
  }

  MEMORY[0x2821F9670](pageLoadTestEventsProxy, sel_didFinishPageLoadWithLoadData_);
}

- (void)_resourceLoadCompleted:(unint64_t)completed
{
  p_end_node = &self->_loadingSubresources.__tree_.__end_node_;
  left = self->_loadingSubresources.__tree_.__end_node_.__left_;
  if (left)
  {
    p_loadingSubresources = &self->_loadingSubresources;
    v7 = p_end_node;
    do
    {
      v8 = left[4];
      v9 = v8 >= completed;
      v10 = v8 < completed;
      if (v9)
      {
        v7 = left;
      }

      left = left[v10];
    }

    while (left);
    if (v7 != p_end_node && v7[4] <= completed)
    {
      sub_259B4B1D8(p_loadingSubresources, v7);
      operator delete(v7);
      if (!self->_loadingSubresources.__tree_.__size_)
      {
        v11 = MEMORY[0x277CCABB0];
        date = [MEMORY[0x277CBEAA8] date];
        [date timeIntervalSinceReferenceDate];
        v13 = [v11 numberWithDouble:?];

        [(NSMutableDictionary *)self->_loadData setValue:v13 forKey:@"PageLoadAllSubresourcesLoadedTime"];
      }

      [(MeasurementControllerBase *)self _maybeEndPageLoadSoon];
    }
  }
}

- (void)webProcessPlugInBrowserContextController:(id)controller didStartProvisionalLoadForFrame:(id)frame
{
  controllerCopy = controller;
  frameCopy = frame;
  mainFrame = [controllerCopy mainFrame];

  if (mainFrame == frameCopy)
  {
    [(MeasurementControllerBase *)self _clearPageLoadState];
    [(MeasurementControllerBase *)self _doBeforePageLoad];
  }
}

- (void)webProcessPlugInBrowserContextController:(id)controller didFinishLoadForFrame:(id)frame
{
  controllerCopy = controller;
  frameCopy = frame;
  mainFrame = [controllerCopy mainFrame];

  if (mainFrame == frameCopy)
  {
    self->_currentPageLoadFinished = 1;
    [(MeasurementControllerBase *)self _maybeEndPageLoadSoon];
  }
}

- (void)webProcessPlugInBrowserContextController:(id)controller didHandleOnloadEventsForFrame:(id)frame
{
  frameCopy = frame;
  [(NSMutableSet *)self->_loadingFrames removeObject:?];
  [(MeasurementControllerBase *)self _maybeEndPageLoadSoon];
}

- (void)webProcessPlugInBrowserContextController:(id)controller didFailLoadWithErrorForFrame:(id)frame error:(id)error
{
  frameCopy = frame;
  [(NSMutableSet *)self->_loadingFrames removeObject:?];
  [(MeasurementControllerBase *)self _maybeEndPageLoadSoon];
}

- (void)webProcessPlugInBrowserContextController:(id)controller frame:(id)frame didInitiateLoadForResource:(unint64_t)resource request:(id)request
{
  controllerCopy = controller;
  frameCopy = frame;
  resourceCopy = resource;
  requestCopy = request;
  v13 = requestCopy;
  if (!resource)
  {
    WTFLogAlways();
    goto LABEL_8;
  }

  [requestCopy _CFURLRequest];
  v14 = _CFURLRequestCopyProtocolPropertyForKey();
  v15 = v14;
  if (!v14)
  {
LABEL_7:
    sub_259B4B5CC(&self->_loadingSubresources, &resourceCopy, &resourceCopy);
    goto LABEL_8;
  }

  if (!CFBooleanGetValue(v14))
  {
    CFRelease(v15);
    goto LABEL_7;
  }

  CFRelease(v15);
LABEL_8:
}

- (void)webProcessPlugInBrowserContextController:(id)controller frame:(id)frame didFinishLoadForResource:(unint64_t)resource
{
  if (resource)
  {
    MEMORY[0x2821F9670](self, sel__resourceLoadCompleted_);
  }

  else
  {
    WTFLogAlways();
  }
}

- (void)webProcessPlugInBrowserContextController:(id)controller frame:(id)frame didFailLoadForResource:(unint64_t)resource error:(id)error
{
  if (resource)
  {
    MEMORY[0x2821F9670](self, sel__resourceLoadCompleted_);
  }

  else
  {
    WTFLogAlways();
  }
}

- (void)webProcessPlugInBrowserContextController:(id)controller didFirstVisuallyNonEmptyLayoutForFrame:(id)frame
{
  v5 = MEMORY[0x277CCABB0];
  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSinceReferenceDate];
  v7 = [v5 numberWithDouble:?];

  [(NSMutableDictionary *)self->_loadData setValue:v7 forKey:@"PageLoadFirstVisuallyNonEmptyLayoutTime"];
}

- (void)webProcessPlugInBrowserContextController:(id)controller renderingProgressDidChange:(unint64_t)change
{
  changeCopy = change;
  controllerCopy = controller;
  if ((changeCopy & 0x100) != 0 && self->_version >= 5)
  {
    v11 = controllerCopy;
    v7 = [(NSMutableDictionary *)self->_loadData objectForKeyedSubscript:@"PageLoadFirstMeaningfulPaintTime"];

    controllerCopy = v11;
    if (!v7)
    {
      v8 = MEMORY[0x277CCABB0];
      date = [MEMORY[0x277CBEAA8] date];
      [date timeIntervalSinceReferenceDate];
      v10 = [v8 numberWithDouble:?];

      [(NSMutableDictionary *)self->_loadData setValue:v10 forKey:@"PageLoadFirstMeaningfulPaintTime"];
      [(MeasurementControllerBase *)self _maybeEndPageLoadSoon];

      controllerCopy = v11;
    }
  }
}

- (void)webProcessPlugInBrowserContextController:(id)controller didFinishDocumentLoadForFrame:(id)frame
{
  controllerCopy = controller;
  frameCopy = frame;
  if (self->_version >= 5)
  {
    mainFrame = [controllerCopy mainFrame];

    if (mainFrame == frameCopy)
    {
      v8 = MEMORY[0x277CCABB0];
      date = [MEMORY[0x277CBEAA8] date];
      [date timeIntervalSinceReferenceDate];
      v10 = [v8 numberWithDouble:?];

      [(NSMutableDictionary *)self->_loadData setValue:v10 forKey:@"PageLoadDOMContentLoadedTime"];
      [(MeasurementControllerBase *)self _maybeEndPageLoadSoon];
    }
  }
}

- (id).cxx_construct
{
  *(self + 6) = 0;
  *(self + 5) = 0;
  *(self + 4) = self + 40;
  return self;
}

@end