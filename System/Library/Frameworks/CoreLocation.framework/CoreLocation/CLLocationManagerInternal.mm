@interface CLLocationManagerInternal
- (CLLocationManagerInternal)initWithInfo:(id)info bundleIdentifier:(id)identifier bundlePath:(id)path websiteIdentifier:(id)websiteIdentifier delegate:(id)delegate silo:(id)silo;
- (void)cancelLocationRequest;
- (void)dealloc;
- (void)invalidate;
- (void)performCourtesyPromptIfNeeded;
- (void)setAllowsBackgroundLocationUpdates:(BOOL)updates;
- (void)setPausesLocationUpdatesAutomatically:(int)automatically;
- (void)setShowsBackgroundLocationIndicator:(BOOL)indicator;
- (void)stopUpdatingLocationAutoPaused;
@end

@implementation CLLocationManagerInternal

- (void)performCourtesyPromptIfNeeded
{
  if (objc_msgSend_courtesyPromptNeeded(self->fState, a2, v2, v3))
  {
    fClient = self->fClient;

    CLClientRequestAuthorization(fClient, 3);
  }
}

- (void)dealloc
{
  objc_msgSend_setClientKeyForIdentityValidation_(self, a2, 0, v2);
  objc_msgSend_setMonitorLedgerAccessKey_(self, v4, 0, v5);

  self->fPlaceInferenceTimer = 0;
  fRangedRegions = self->fRangedRegions;
  if (fRangedRegions)
  {
    self->fRangedRegions = 0;
    fClient = self->fClient;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = sub_19B898460;
    v18[3] = &unk_1E753CCE0;
    v18[4] = fRangedRegions;
    if (fClient)
    {
      v11 = *(fClient + 29);
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = sub_19B88071C;
      v19[3] = &unk_1E753CCE0;
      v19[4] = v18;
      objc_msgSend_async_(v11, v6, v19, v8);
    }
  }

  objc_msgSend_invalidate(self->fPlaceInferenceHandler, v6, v7, v8);

  self->fPlaceInferenceHandler = 0;
  v15 = *&self->fLocation.fromSimulationController;
  if (v15)
  {
    objc_msgSend_invalidate(*&self->fLocation.fromSimulationController, v12, v13, v14);

    *&self->fLocation.fromSimulationController = 0;
  }

  v16 = self->fClient;
  if (v16)
  {
    CLClientInvalidate(v16);
    CFRelease(self->fClient);
    self->fClient = 0;
  }

  *&self->fIsMasquerading = 0;
  self->fState = 0;
  v17.receiver = self;
  v17.super_class = CLLocationManagerInternal;
  [(CLLocationManagerInternal *)&v17 dealloc];
}

- (void)cancelLocationRequest
{
  objc_msgSend_setRequestingLocation_(self->fState, a2, 0, v2);
  v7 = *&self->fLocation.fromSimulationController;
  if (v7)
  {
    objc_msgSend_invalidate(*&self->fLocation.fromSimulationController, v4, v5, v6);

    *&self->fLocation.fromSimulationController = 0;
  }
}

- (void)invalidate
{
  fClient = self->fClient;
  if (fClient)
  {
    CLClientInvalidate(fClient);
  }
}

- (CLLocationManagerInternal)initWithInfo:(id)info bundleIdentifier:(id)identifier bundlePath:(id)path websiteIdentifier:(id)websiteIdentifier delegate:(id)delegate silo:(id)silo
{
  v27.receiver = self;
  v27.super_class = CLLocationManagerInternal;
  v14 = [(CLLocationManagerInternal *)&v27 init];
  if (v14)
  {
    v15 = [CLLocationManagerStateTracker alloc];
    *(v14 + 4) = objc_msgSend_initWithQueue_identifier_state_(v15, v16, MEMORY[0x1E69E96A0], info, &unk_1F0E6B680);
    *(v14 + 36) = silo;
    objc_storeWeak(v14 + 2, delegate);
    objc_storeWeak(v14 + 3, info);
    *&v23 = 0;
    *(&v23 + 1) = v14;
    v24 = sub_19B875164;
    v25 = j__objc_release;
    v26 = 0;
    v17 = CLClientCreateWithBundleIdentifierAndPathWithWebsiteOnSilo(*MEMORY[0x1E695E480], sub_19B875BBC, &v23, identifier, path, websiteIdentifier, *(v14 + 36));
    *(v14 + 1) = v17;
    v14[272] = *(v17 + 17) != 0;
    *(v14 + 60) = 0xBFF0000000000000;
    *(v14 + 26) = 0;
    *(v14 + 27) = 0x4024000000000000;
    *(v14 + 56) = 1;
    *(v14 + 29) = objc_alloc_init(MEMORY[0x1E695DFA8]);
    *(v14 + 30) = objc_alloc_init(MEMORY[0x1E695DFA8]);
    objc_msgSend_setClientKeyForIdentityValidation_(v14, v18, 0, v19);
    objc_msgSend_setMonitorLedgerAccessKey_(v14, v20, 0, v21);
    *(v14 + 35) = objc_alloc_init(MEMORY[0x1E695DFA8]);
  }

  return v14;
}

- (void)setPausesLocationUpdatesAutomatically:(int)automatically
{
  objc_msgSend_setPausesLocationUpdatesAutomatically_(self->fState, a2, *&automatically, v3);
  fClient = self->fClient;
  v9 = objc_msgSend_pausesLocationUpdatesAutomatically(self->fState, v6, v7, v8);

  sub_19B87BF98(fClient, v9);
}

- (void)setAllowsBackgroundLocationUpdates:(BOOL)updates
{
  updatesCopy = updates;
  objc_msgSend_setAllowsBackgroundLocationUpdates_(self->fState, a2, updates, v3);
  fClient = self->fClient;

  sub_19B88EB50(fClient, updatesCopy);
}

- (void)setShowsBackgroundLocationIndicator:(BOOL)indicator
{
  indicatorCopy = indicator;
  objc_msgSend_setShowsBackgroundLocationIndicator_(self->fState, a2, indicator, v3);
  fClient = self->fClient;

  sub_19B88EC08(fClient, indicatorCopy);
}

- (void)stopUpdatingLocationAutoPaused
{
  objc_msgSend_setUpdatingLocation_(self->fState, a2, 0, v2);
  objc_msgSend_setPaused_(self->fState, v4, 1, v5);
  fClient = self->fClient;

  CLClientStopLocationUpdates_0(fClient);
}

@end