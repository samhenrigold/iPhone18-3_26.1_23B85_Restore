@interface DALocalNetworkScanner
- (DALocalNetworkScanner)initWithConfiguration:(id)configuration error:(id *)error;
- (void)_browserResultChangedFromOldResult:(id)result newResult:(id)newResult batchComplete:(BOOL)complete;
- (void)_browserStateChanged:(int)changed error:(id)error;
- (void)_handleBrowseResults:(id)results;
- (void)discoverEndpointWithCompletion:(id)completion;
@end

@implementation DALocalNetworkScanner

- (DALocalNetworkScanner)initWithConfiguration:(id)configuration error:(id *)error
{
  configurationCopy = configuration;
  bonjourServiceTypes = [configurationCopy bonjourServiceTypes];
  v8 = [bonjourServiceTypes count];

  if (v8 <= 1)
  {
    if (error)
    {
      DAErrorF(350004, "Bonjour service type missing");
      *error = selfCopy = 0;
      goto LABEL_7;
    }

LABEL_6:
    selfCopy = 0;
    goto LABEL_7;
  }

  v13.receiver = self;
  v13.super_class = DALocalNetworkScanner;
  self = [(DALocalNetworkScanner *)&v13 init];
  if (!self)
  {
    goto LABEL_6;
  }

  v9 = [configurationCopy copy];
  discoveryConfiguration = self->_discoveryConfiguration;
  self->_discoveryConfiguration = v9;

  objc_storeStrong(&self->_dispatchQueue, &_dispatch_main_q);
  self = self;
  selfCopy = self;
LABEL_7:

  return selfCopy;
}

- (void)discoverEndpointWithCompletion:(id)completion
{
  completionCopy = completion;
  discoveryConfiguration = [(DALocalNetworkScanner *)self discoveryConfiguration];
  bonjourServiceTypes = [discoveryConfiguration bonjourServiceTypes];
  firstObject = [bonjourServiceTypes firstObject];

  v8 = nw_parameters_create();
  nw_parameters_set_include_peer_to_peer(v8, 1);
  bonjour_service = nw_browse_descriptor_create_bonjour_service([firstObject utf8ValueSafe], "local");
  nw_browse_descriptor_set_include_txt_record(bonjour_service, 1);
  v10 = nw_browser_create(bonjour_service, v8);
  browser = self->_browser;
  self->_browser = v10;

  if (self->_browser)
  {
    objc_initWeak(&location, self);
    v12 = self->_browser;
    state_changed_handler[0] = _NSConcreteStackBlock;
    state_changed_handler[1] = 3221225472;
    state_changed_handler[2] = sub_100001D08;
    state_changed_handler[3] = &unk_100058A90;
    objc_copyWeak(&v18, &location);
    nw_browser_set_state_changed_handler(v12, state_changed_handler);
    v13 = self->_browser;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100001D74;
    handler[3] = &unk_100058AB8;
    objc_copyWeak(&v16, &location);
    nw_browser_set_browse_results_changed_handler(v13, handler);
    [(DALocalNetworkScanner *)self setCompletionHandler:completionCopy];
    nw_browser_set_queue(self->_browser, self->_dispatchQueue);
    nw_browser_start(self->_browser);
    objc_destroyWeak(&v16);
    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  else
  {
    if (dword_100060190 <= 90 && (dword_100060190 != -1 || _LogCategory_Initialize()))
    {
      sub_10002EA78();
    }

    v14 = DAErrorF(350004, "Unable to start network browser");
    completionCopy[2](completionCopy, 0, v14);
  }
}

- (void)_browserStateChanged:(int)changed error:(id)error
{
  v4 = *&changed;
  errorCopy = error;
  if (dword_100060190 <= 50 && (dword_100060190 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_100060190, "[DALocalNetworkScanner _browserStateChanged:error:]", 50, "Browser state changed: %u error: %@", v4, errorCopy);
  }

  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_100002094;
  v17 = sub_1000020A4;
  v18 = 0;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000020AC;
  v12[3] = &unk_100058AE0;
  v12[4] = self;
  v12[5] = &v13;
  v7 = objc_retainBlock(v12);
  if ((v4 - 2) < 2)
  {
    nw_browser_cancel(self->_browser);
    if (dword_100060190 <= 90 && (dword_100060190 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_100060190, "[DALocalNetworkScanner _browserStateChanged:error:]", 90, "Browser failed with error, stopping.");
    }

    v11 = DAErrorF(350004, "Browser failed with error: %@", errorCopy);
    discoveryConfiguration = v14[5];
    v14[5] = v11;
    goto LABEL_15;
  }

  if (v4 == 1 && dword_100060190 <= 50 && (dword_100060190 != -1 || _LogCategory_Initialize()))
  {
    discoveryConfiguration = [(DALocalNetworkScanner *)self discoveryConfiguration];
    bonjourServiceTypes = [discoveryConfiguration bonjourServiceTypes];
    firstObject = [bonjourServiceTypes firstObject];
    LogPrintF(&dword_100060190, "[DALocalNetworkScanner _browserStateChanged:error:]", 50, "Browser for Bonjour Service Type, %@, ready.", firstObject);

LABEL_15:
  }

  (v7[2])(v7);

  _Block_object_dispose(&v13, 8);
}

- (void)_handleBrowseResults:(id)results
{
  resultsCopy = results;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [resultsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(resultsCopy);
        }

        v9 = *(*(&v14 + 1) + 8 * v8);
        if (([v9 change] & 2) != 0)
        {
          freshResult = [v9 freshResult];
          v11 = nw_browse_result_copy_endpoint(freshResult);

          if (dword_100060190 <= 50 && (dword_100060190 != -1 || _LogCategory_Initialize()))
          {
            sub_10002EA98(v11);
          }

          completionHandler = [(DALocalNetworkScanner *)self completionHandler];
          (completionHandler)[2](completionHandler, v11, 0);

          nw_browser_cancel(self->_browser);
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v13 = [resultsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
      v6 = v13;
    }

    while (v13);
  }
}

- (void)_browserResultChangedFromOldResult:(id)result newResult:(id)newResult batchComplete:(BOOL)complete
{
  completeCopy = complete;
  old_result = result;
  newResultCopy = newResult;
  changes = nw_browse_result_get_changes(old_result, newResultCopy);
  if (changes <= 1)
  {
    v10 = [[DABonjourBrowserResultChanges alloc] initWithOldResult:old_result freshResult:newResultCopy change:changes];
    resultChanges = [(DALocalNetworkScanner *)self resultChanges];
    [resultChanges addObject:v10];

    if (completeCopy)
    {
      resultChanges2 = [(DALocalNetworkScanner *)self resultChanges];
      v13 = [resultChanges2 copy];

      resultChanges3 = [(DALocalNetworkScanner *)self resultChanges];
      [resultChanges3 removeAllObjects];

      [(DALocalNetworkScanner *)self _handleBrowseResults:v13];
    }
  }
}

@end