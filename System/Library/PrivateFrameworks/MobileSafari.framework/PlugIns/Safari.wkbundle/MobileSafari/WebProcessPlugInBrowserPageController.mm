@interface WebProcessPlugInBrowserPageController
- (WebProcessPlugInBrowserPageController)initWithPlugIn:(id)in contextController:(id)controller;
- (id)_touchIconFetcherObserverProxy;
- (void)_readPageLoadTestParameters;
- (void)_setupPageLoadTestController;
- (void)_setupTouchIconFetcherController;
- (void)dealloc;
- (void)enablePageMemoryMeasurementCollection:(id)collection;
- (void)fetchTouchIconURLs;
- (void)webProcessPlugInBrowserContextController:(id)controller didCommitLoadForFrame:(id)frame;
- (void)webProcessPlugInBrowserContextController:(id)controller didFailLoadWithErrorForFrame:(id)frame error:(id)error;
- (void)webProcessPlugInBrowserContextController:(id)controller didFailProvisionalLoadWithErrorForFrame:(id)frame error:(id)error;
- (void)webProcessPlugInBrowserContextController:(id)controller didFinishDocumentLoadForFrame:(id)frame;
- (void)webProcessPlugInBrowserContextController:(id)controller didFinishLoadForFrame:(id)frame;
- (void)webProcessPlugInBrowserContextController:(id)controller didStartProvisionalLoadForFrame:(id)frame;
- (void)webProcessPlugInBrowserContextController:(id)controller renderingProgressDidChange:(unint64_t)change;
- (void)willDestroyBrowserContextController:(id)controller;
@end

@implementation WebProcessPlugInBrowserPageController

- (WebProcessPlugInBrowserPageController)initWithPlugIn:(id)in contextController:(id)controller
{
  inCopy = in;
  controllerCopy = controller;
  v13.receiver = self;
  v13.super_class = WebProcessPlugInBrowserPageController;
  v8 = [(_SFWebProcessPlugInReaderEnabledPageController *)&v13 initWithPlugIn:inCopy contextController:controllerCopy];
  v9 = v8;
  if (v8)
  {
    [(WebProcessPlugInBrowserPageController *)v8 _setupPageLoadTestController];
    [(WebProcessPlugInBrowserPageController *)v9 _readPageLoadTestParameters];
    v9->_haveCheckedIfPageLoadTestIsEnabled = 0;
    [(WebProcessPlugInBrowserPageController *)v9 _setupTouchIconFetcherController];
    v10 = [(_SFFormMetadataController *)[SafariFormMetadataController alloc] initWithPageController:v9];
    [(_SFWebProcessPlugInAutoFillPageController *)v9 setFormMetadataController:v10];
    v11 = v9;
  }

  return v9;
}

- (void)dealloc
{
  browserContextController = [(WBSWebProcessPlugInPageController *)self browserContextController];
  [browserContextController setLoadDelegate:0];

  v4.receiver = self;
  v4.super_class = WebProcessPlugInBrowserPageController;
  [(WebProcessPlugInBrowserPageController *)&v4 dealloc];
}

- (void)willDestroyBrowserContextController:(id)controller
{
  controllerCopy = controller;
  _remoteObjectRegistry = [controllerCopy _remoteObjectRegistry];
  [_remoteObjectRegistry unregisterExportedObject:self interface:self->_pageLoadTestControllerInterface];
  pageLoadTestControllerInterface = self->_pageLoadTestControllerInterface;
  self->_pageLoadTestControllerInterface = 0;

  [_remoteObjectRegistry unregisterExportedObject:self interface:self->_touchIconFetcherControllerInterface];
  touchIconFetcherControllerInterface = self->_touchIconFetcherControllerInterface;
  self->_touchIconFetcherControllerInterface = 0;

  v8.receiver = self;
  v8.super_class = WebProcessPlugInBrowserPageController;
  [(_SFWebProcessPlugInReaderEnabledPageController *)&v8 willDestroyBrowserContextController:controllerCopy];
}

- (void)_setupTouchIconFetcherController
{
  v3 = [MEMORY[0x277CE3898] remoteObjectInterfaceWithProtocol:&unk_286AD5910];
  touchIconFetcherControllerInterface = self->_touchIconFetcherControllerInterface;
  self->_touchIconFetcherControllerInterface = v3;

  browserContextController = [(WBSWebProcessPlugInPageController *)self browserContextController];
  _remoteObjectRegistry = [browserContextController _remoteObjectRegistry];
  [_remoteObjectRegistry registerExportedObject:self interface:self->_touchIconFetcherControllerInterface];
}

- (void)fetchTouchIconURLs
{
  mainFrame = [(WBSWebProcessPlugInPageController *)self mainFrame];
  v3 = [objc_alloc(MEMORY[0x277D4A7A8]) initWithWebProcessPlugInFrame:mainFrame];
  v4 = [mainFrame URL];
  appleTouchIconURLs = [v3 appleTouchIconURLs];
  v6 = [appleTouchIconURLs mutableCopy];

  v7 = [MEMORY[0x277CBEBC0] URLWithString:@"/apple-touch-icon-precomposed.png" relativeToURL:v4];
  [v6 addObject:v7];

  v8 = [MEMORY[0x277CBEBC0] URLWithString:@"/apple-touch-icon.png" relativeToURL:v4];
  [v6 addObject:v8];

  faviconURLs = [v3 faviconURLs];
  [v6 addObjectsFromArray:faviconURLs];

  _touchIconFetcherObserverProxy = [(WebProcessPlugInBrowserPageController *)self _touchIconFetcherObserverProxy];
  [_touchIconFetcherObserverProxy didFetchTouchIconURLs:v6 forURL:v4];
}

- (id)_touchIconFetcherObserverProxy
{
  touchIconFetcherObserverProxy = self->_touchIconFetcherObserverProxy;
  if (touchIconFetcherObserverProxy)
  {
    v3 = touchIconFetcherObserverProxy;
  }

  else
  {
    v5 = [MEMORY[0x277CE3898] remoteObjectInterfaceWithProtocol:&unk_286ADAC90];
    browserContextController = [(WBSWebProcessPlugInPageController *)self browserContextController];
    _remoteObjectRegistry = [browserContextController _remoteObjectRegistry];
    v8 = [_remoteObjectRegistry remoteObjectProxyWithInterface:v5];
    v9 = self->_touchIconFetcherObserverProxy;
    self->_touchIconFetcherObserverProxy = v8;

    v3 = self->_touchIconFetcherObserverProxy;
  }

  return v3;
}

- (void)enablePageMemoryMeasurementCollection:(id)collection
{
  collectionCopy = collection;
  v4 = [PageMemoryMeasurementController alloc];
  browserContextController = [(WBSWebProcessPlugInPageController *)self browserContextController];
  v6 = [(PageMemoryMeasurementController *)v4 initWithPluginPageContextController:browserContextController pagesNeedingMemoryWarningSent:collectionCopy];
  pageLoadTestMeasurementController = self->_pageLoadTestMeasurementController;
  self->_pageLoadTestMeasurementController = v6;
}

- (void)_setupPageLoadTestController
{
  v3 = [MEMORY[0x277CE3898] remoteObjectInterfaceWithProtocol:&unk_286AD5838];
  pageLoadTestControllerInterface = self->_pageLoadTestControllerInterface;
  self->_pageLoadTestControllerInterface = v3;

  browserContextController = [(WBSWebProcessPlugInPageController *)self browserContextController];
  _remoteObjectRegistry = [browserContextController _remoteObjectRegistry];
  [_remoteObjectRegistry registerExportedObject:self interface:self->_pageLoadTestControllerInterface];
}

- (void)_readPageLoadTestParameters
{
  webProcessPlugIn = [(WBSWebProcessPlugInPageController *)self webProcessPlugIn];
  plugInController = [webProcessPlugIn plugInController];
  parameters = [plugInController parameters];
  v5 = [parameters valueForKey:@"enablePageLoadMeasurementCollection"];
  if (v5)
  {
    pageLoadTestMeasurementController = self->_pageLoadTestMeasurementController;

    if (pageLoadTestMeasurementController)
    {
      return;
    }

    v7 = [PageLoadTestMeasurementController alloc];
    browserContextController = [(WBSWebProcessPlugInPageController *)self browserContextController];
    v8 = [(MeasurementControllerBase *)v7 initWithPluginPageContextController:?];
    v9 = self->_pageLoadTestMeasurementController;
    self->_pageLoadTestMeasurementController = v8;

    webProcessPlugIn2 = [(WBSWebProcessPlugInPageController *)self webProcessPlugIn];
    plugInController2 = [webProcessPlugIn2 plugInController];
    parameters2 = [plugInController2 parameters];
    v12 = [parameters2 valueForKey:@"pageLoadMeasurementVersionNumber"];
    -[MeasurementControllerBase setVersion:](self->_pageLoadTestMeasurementController, "setVersion:", [v12 intValue]);

    webProcessPlugIn = [(WBSWebProcessPlugInPageController *)self webProcessPlugIn];
    plugInController = [webProcessPlugIn plugInController];
    parameters = [plugInController parameters];
    v13 = [parameters valueForKey:@"pageLoadMeasurementAllSubresourcesFinishedLoadingDelay"];
    [v13 doubleValue];
    [(MeasurementControllerBase *)self->_pageLoadTestMeasurementController setAllSubresourcesFinishedLoadingDelay:?];
  }
}

- (void)webProcessPlugInBrowserContextController:(id)controller didStartProvisionalLoadForFrame:(id)frame
{
  controllerCopy = controller;
  frameCopy = frame;
  v9.receiver = self;
  v9.super_class = WebProcessPlugInBrowserPageController;
  [(_SFWebProcessPlugInReaderEnabledPageController *)&v9 webProcessPlugInBrowserContextController:controllerCopy didStartProvisionalLoadForFrame:frameCopy];
  mainFrame = [controllerCopy mainFrame];

  if (mainFrame == frameCopy)
  {
    [(WebProcessPlugInBrowserPageController *)self _logPageLoadStarted:frameCopy];
    if (!self->_haveCheckedIfPageLoadTestIsEnabled)
    {
      [(WebProcessPlugInBrowserPageController *)self _readPageLoadTestParameters];
    }

    self->_haveCheckedIfPageLoadTestIsEnabled = 1;
    [(MeasurementControllerBase *)self->_pageLoadTestMeasurementController webProcessPlugInBrowserContextController:controllerCopy didStartProvisionalLoadForFrame:frameCopy];
  }
}

- (void)webProcessPlugInBrowserContextController:(id)controller didCommitLoadForFrame:(id)frame
{
  controllerCopy = controller;
  frameCopy = frame;
  v8.receiver = self;
  v8.super_class = WebProcessPlugInBrowserPageController;
  [(_SFWebProcessPlugInReaderEnabledPageController *)&v8 webProcessPlugInBrowserContextController:controllerCopy didCommitLoadForFrame:frameCopy];
  [(MeasurementControllerBase *)self->_pageLoadTestMeasurementController webProcessPlugInBrowserContextController:controllerCopy didCommitLoadForFrame:frameCopy];
}

- (void)webProcessPlugInBrowserContextController:(id)controller didFinishDocumentLoadForFrame:(id)frame
{
  controllerCopy = controller;
  frameCopy = frame;
  v8.receiver = self;
  v8.super_class = WebProcessPlugInBrowserPageController;
  [(_SFWebProcessPlugInReaderEnabledPageController *)&v8 webProcessPlugInBrowserContextController:controllerCopy didFinishDocumentLoadForFrame:frameCopy];
  [(MeasurementControllerBase *)self->_pageLoadTestMeasurementController webProcessPlugInBrowserContextController:controllerCopy didFinishDocumentLoadForFrame:frameCopy];
}

- (void)webProcessPlugInBrowserContextController:(id)controller didFinishLoadForFrame:(id)frame
{
  controllerCopy = controller;
  frameCopy = frame;
  v9.receiver = self;
  v9.super_class = WebProcessPlugInBrowserPageController;
  [(_SFWebProcessPlugInReaderEnabledPageController *)&v9 webProcessPlugInBrowserContextController:controllerCopy didFinishLoadForFrame:frameCopy];
  mainFrame = [controllerCopy mainFrame];

  if (mainFrame == frameCopy)
  {
    [(WebProcessPlugInBrowserPageController *)self _logPageLoadCompleted:frameCopy withErrorCode:0];
    [(MeasurementControllerBase *)self->_pageLoadTestMeasurementController webProcessPlugInBrowserContextController:controllerCopy didFinishLoadForFrame:frameCopy];
  }
}

- (void)webProcessPlugInBrowserContextController:(id)controller renderingProgressDidChange:(unint64_t)change
{
  controllerCopy = controller;
  v7.receiver = self;
  v7.super_class = WebProcessPlugInBrowserPageController;
  [(_SFWebProcessPlugInReaderEnabledPageController *)&v7 webProcessPlugInBrowserContextController:controllerCopy renderingProgressDidChange:change];
  [(MeasurementControllerBase *)self->_pageLoadTestMeasurementController webProcessPlugInBrowserContextController:controllerCopy renderingProgressDidChange:change];
}

- (void)webProcessPlugInBrowserContextController:(id)controller didFailProvisionalLoadWithErrorForFrame:(id)frame error:(id)error
{
  controllerCopy = controller;
  frameCopy = frame;
  errorCopy = error;
  mainFrame = [controllerCopy mainFrame];
  v11 = mainFrame;
  if (mainFrame == frameCopy)
  {
    code = [errorCopy code];

    if (code != -999)
    {
      -[WebProcessPlugInBrowserPageController _logPageLoadCompleted:withErrorCode:](self, "_logPageLoadCompleted:withErrorCode:", frameCopy, [errorCopy code]);
    }
  }

  else
  {
  }
}

- (void)webProcessPlugInBrowserContextController:(id)controller didFailLoadWithErrorForFrame:(id)frame error:(id)error
{
  controllerCopy = controller;
  frameCopy = frame;
  errorCopy = error;
  mainFrame = [controllerCopy mainFrame];
  v11 = mainFrame;
  if (mainFrame == frameCopy)
  {
    code = [errorCopy code];

    if (code != -999)
    {
      -[WebProcessPlugInBrowserPageController _logPageLoadCompleted:withErrorCode:](self, "_logPageLoadCompleted:withErrorCode:", frameCopy, [errorCopy code]);
    }
  }

  else
  {
  }

  [(MeasurementControllerBase *)self->_pageLoadTestMeasurementController webProcessPlugInBrowserContextController:controllerCopy didFailLoadWithErrorForFrame:frameCopy error:errorCopy];
}

@end