@interface SSActiveInterfaceOrientationObserver
- (SSActiveInterfaceOrientationObserverDelegate)delegate;
- (id)_sbUIUserAgent;
- (void)_observeActiveInterfaceOrientationChangeToOrientation:(int64_t)orientation withDuration:(double)duration;
- (void)_registerForActiveInterfaceOrientationChanges;
- (void)_unregisterForActiveInterfaceOrientationChanges;
- (void)beginObserving;
@end

@implementation SSActiveInterfaceOrientationObserver

- (void)beginObserving
{
  [(SSActiveInterfaceOrientationObserver *)self _registerForActiveInterfaceOrientationChanges];
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  activeInterfaceOrientation = [mEMORY[0x1E69DC668] activeInterfaceOrientation];

  [(SSActiveInterfaceOrientationObserver *)self _observeActiveInterfaceOrientationChangeToOrientation:activeInterfaceOrientation withDuration:0.0];
}

- (void)_observeActiveInterfaceOrientationChangeToOrientation:(int64_t)orientation withDuration:(double)duration
{
  delegate = [(SSActiveInterfaceOrientationObserver *)self delegate];
  [delegate activeInterfaceOrientationObserver:self observedChangeToInterfaceOrientation:orientation withDuration:duration];
}

- (id)_sbUIUserAgent
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v2 = getSBUIGetUserAgentSymbolLoc_ptr;
  v11 = getSBUIGetUserAgentSymbolLoc_ptr;
  if (!getSBUIGetUserAgentSymbolLoc_ptr)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __getSBUIGetUserAgentSymbolLoc_block_invoke;
    v7[3] = &unk_1E8590188;
    v7[4] = &v8;
    __getSBUIGetUserAgentSymbolLoc_block_invoke(v7);
    v2 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (!v2)
  {
    [SSScreenshotAssetManagerPhotoLibraryBackend saveImageDataToTemporaryLocation:withName:imageDescription:completionHandler:];
    v6 = v5;
    _Block_object_dispose(&v8, 8);
    _Unwind_Resume(v6);
  }

  v3 = v2();

  return v3;
}

- (void)_registerForActiveInterfaceOrientationChanges
{
  _sbUIUserAgent = [(SSActiveInterfaceOrientationObserver *)self _sbUIUserAgent];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    _sbUIUserAgent2 = [(SSActiveInterfaceOrientationObserver *)self _sbUIUserAgent];
    [_sbUIUserAgent2 addActiveInterfaceOrientationObserver:self];
  }
}

- (void)_unregisterForActiveInterfaceOrientationChanges
{
  _sbUIUserAgent = [(SSActiveInterfaceOrientationObserver *)self _sbUIUserAgent];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    _sbUIUserAgent2 = [(SSActiveInterfaceOrientationObserver *)self _sbUIUserAgent];
    [_sbUIUserAgent2 removeActiveInterfaceOrientationObserver:self];
  }
}

- (SSActiveInterfaceOrientationObserverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end