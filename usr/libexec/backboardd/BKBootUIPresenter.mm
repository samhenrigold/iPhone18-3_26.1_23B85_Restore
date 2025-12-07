@interface BKBootUIPresenter
+ (id)sharedInstance;
- (BKBootUIPresenter)initWithSystemAppSentinel:(id)sentinel alternateSystemAppManager:(id)manager firstBootDetector:(id)detector bootUIOverlayVendor:(id)vendor renderOverlayManager:(id)overlayManager;
- (BOOL)isShowingBootUI;
- (BOOL)sustainOverlayForReason:(id)reason;
- (NSString)description;
- (void)_queue_acquireActivityAssertionForReason:(id)reason generation:(unint64_t)generation continuation:(id)continuation;
- (void)_queue_addOverlayForReason:(id)reason;
- (void)_queue_addUnderlay;
- (void)_queue_continueAddingOverlayForReason:(id)reason generation:(unint64_t)generation;
- (void)_queue_removeOverlayWithAnimationSettings:(id)settings;
- (void)_queue_removeUnderlay;
- (void)_queue_setScreenOwnerPID:(int)d;
- (void)_queue_updateOverlayForReason:(id)reason;
- (void)dealloc;
- (void)dismissOverlayWithAnimationSettings:(id)settings requstedByPID:(int)d;
- (void)firstBootDetectorDidFinishFirstBoot:(id)boot;
- (void)systemShellChangedWithPrimary:(id)primary;
- (void)systemShellDidFinishLaunching:(id)launching;
- (void)unsustainOverlayForReason:(id)reason;
@end

@implementation BKBootUIPresenter

- (void)_queue_removeUnderlay
{
  BSDispatchQueueAssert();
  if (self->_underlay)
  {
    v3 = sub_1000524BC();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "_queue_removeUnderlay: Removing the underlay", v5, 2u);
    }

    [(BKDisplayRenderOverlayManager *)self->_renderOverlayManager removeOverlay:self->_underlay withAnimationSettings:0];
    underlay = self->_underlay;
    self->_underlay = 0;
  }
}

- (void)_queue_addUnderlay
{
  BSDispatchQueueAssert();
  v3 = +[BKSDefaults localDefaults];
  hideAppleLogoOnLaunch = [v3 hideAppleLogoOnLaunch];

  if (hideAppleLogoOnLaunch)
  {
    v5 = sub_1000524BC();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "addUnderlay: Not showing the boot UI underlay because we were told to hide it", buf, 2u);
    }
  }

  else
  {
    underlay = self->_underlay;
    v7 = sub_1000524BC();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (underlay)
    {
      if (v8)
      {
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "addUnderlay: Underlay already in place", v12, 2u);
      }
    }

    else
    {
      if (v8)
      {
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "addUnderlay:  Adding the underlay", v13, 2u);
      }

      LODWORD(v9) = -1.0;
      v10 = [(BKBootUIOverlayVendor *)self->_bootUIOverlayVendor currentOverlayWithLevel:v9];
      v11 = self->_underlay;
      self->_underlay = v10;

      [(BKDisplayRenderOverlayManager *)self->_renderOverlayManager applyOverlay:self->_underlay withAnimationSettings:0];
    }
  }
}

- (void)_queue_addOverlayForReason:(id)reason
{
  reasonCopy = reason;
  BSDispatchQueueAssert();
  addOverlayGeneration = self->_addOverlayGeneration;
  if (addOverlayGeneration + 1 > 1)
  {
    v7 = addOverlayGeneration + 1;
  }

  else
  {
    v7 = 1;
  }

  self->_addOverlayGeneration = v7;
  v8 = +[BKSDefaults localDefaults];
  hideAppleLogoOnLaunch = [v8 hideAppleLogoOnLaunch];

  if (hideAppleLogoOnLaunch)
  {
    v10 = sub_1000524BC();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109378;
      *v20 = v7;
      *&v20[4] = 2114;
      *&v20[6] = reasonCopy;
      v11 = "addOverlay(%d-%{public}@): Not showing the boot UI overlay because we were told to hide it";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v11, buf, 0x12u);
      goto LABEL_11;
    }

    goto LABEL_11;
  }

  if (self->_systemActivityAssertion)
  {
    v10 = sub_1000524BC();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109378;
      *v20 = v7;
      *&v20[4] = 2114;
      *&v20[6] = reasonCopy;
      v11 = "addOverlay(%d-%{public}@): Overlay pending or already in place";
      goto LABEL_10;
    }

LABEL_11:

    goto LABEL_12;
  }

  if (self->_overlay)
  {
    v12 = [NSString stringWithFormat:@"overlay should have been removed"];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v13 = NSStringFromSelector(a2);
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      *buf = 138544642;
      *v20 = v13;
      *&v20[8] = 2114;
      *&v20[10] = v15;
      v21 = 2048;
      selfCopy = self;
      v23 = 2114;
      v24 = @"BKBootUIPresenter.m";
      v25 = 1024;
      v26 = 373;
      v27 = 2114;
      v28 = v12;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v12 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x10009C7FCLL);
  }

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10009C804;
  v16[3] = &unk_1000FD260;
  v16[4] = self;
  v17 = reasonCopy;
  v18 = v7;
  [(BKBootUIPresenter *)self _queue_acquireActivityAssertionForReason:v17 generation:v7 continuation:v16];

LABEL_12:
}

- (void)_queue_acquireActivityAssertionForReason:(id)reason generation:(unint64_t)generation continuation:(id)continuation
{
  reasonCopy = reason;
  continuationCopy = continuation;
  BSDispatchQueueAssert();
  v11 = [[SWSystemActivityAssertion alloc] initWithIdentifier:@"BKBootUIPresenter"];
  if (!v11)
  {
    v20 = [NSString stringWithFormat:@"nil activity assertion"];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v21 = NSStringFromSelector(a2);
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      *buf = 138544642;
      *v31 = v21;
      *&v31[8] = 2114;
      *&v31[10] = v23;
      v32 = 2048;
      selfCopy = self;
      v34 = 2114;
      v35 = @"BKBootUIPresenter.m";
      v36 = 1024;
      v37 = 339;
      v38 = 2114;
      v39 = v20;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v20 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x10009CC70);
  }

  v12 = v11;
  v13 = sub_1000524BC();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    *v31 = generation;
    *&v31[4] = 2114;
    *&v31[6] = reasonCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "addOverlay(%d-%{public}@): waiting for activity assertion", buf, 0x12u);
  }

  BSContinuousMachTimeNow();
  v15 = v14;
  objc_storeStrong(&self->_systemActivityAssertion, v12);
  systemActivityAssertion = self->_systemActivityAssertion;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10009CC78;
  v24[3] = &unk_1000FD210;
  v29 = v15;
  v27 = continuationCopy;
  generationCopy = generation;
  v25 = reasonCopy;
  v26 = v12;
  v17 = v12;
  v18 = continuationCopy;
  v19 = reasonCopy;
  [(SWSystemActivityAssertion *)systemActivityAssertion acquireWithTimeout:v24 handler:16.0];
}

- (void)_queue_continueAddingOverlayForReason:(id)reason generation:(unint64_t)generation
{
  generationCopy = generation;
  reasonCopy = reason;
  BSDispatchQueueAssert();
  systemActivityAssertion = self->_systemActivityAssertion;
  v8 = sub_1000524BC();
  v9 = v8;
  if (systemActivityAssertion)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 67109378;
      v15 = generationCopy;
      v16 = 2114;
      v17 = reasonCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "addOverlay(%d-%{public}@): Adding the overlay", &v14, 0x12u);
    }

    LODWORD(v10) = 1161523200;
    v11 = [(BKBootUIOverlayVendor *)self->_bootUIOverlayVendor currentOverlayWithLevel:v10];
    overlay = self->_overlay;
    self->_overlay = v11;

    [(BKDisplayRenderOverlay *)self->_overlay setAnimates:1];
    descriptor = [(BKDisplayRenderOverlay *)self->_overlay descriptor];
    [descriptor _setInterstitial:1];

    [(BKDisplayRenderOverlayManager *)self->_renderOverlayManager applyOverlay:self->_overlay withAnimationSettings:0];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v14 = 67109378;
      v15 = generationCopy;
      v16 = 2114;
      v17 = reasonCopy;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "addOverlay(%d-%{public}@): canceled adding overlay", &v14, 0x12u);
    }
  }
}

- (void)_queue_removeOverlayWithAnimationSettings:(id)settings
{
  settingsCopy = settings;
  BSDispatchQueueAssert();
  if (self->_systemActivityAssertion)
  {
    v5 = sub_1000524BC();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "removeOverlayWithAnimationSettings: Removing the overlay", v9, 2u);
    }

    overlay = self->_overlay;
    if (overlay)
    {
      [(BKDisplayRenderOverlayManager *)self->_renderOverlayManager removeOverlay:overlay withAnimationSettings:settingsCopy];
      v7 = self->_overlay;
      self->_overlay = 0;
    }

    [(SWSystemActivityAssertion *)self->_systemActivityAssertion invalidate];
    systemActivityAssertion = self->_systemActivityAssertion;
    self->_systemActivityAssertion = 0;
  }
}

- (void)_queue_updateOverlayForReason:(id)reason
{
  reasonCopy = reason;
  BSDispatchQueueAssert();
  systemShellState = [(BKSystemShellSentinel *)self->_systemAppSentinel systemShellState];
  v6 = systemShellState;
  if (!systemShellState)
  {
    v47 = 0;
    v7 = 0;
    p_screenOwnerPID = &self->_screenOwnerPID;
    if (self->_screenOwnerPID > 0)
    {
      v13 = 0;
      goto LABEL_7;
    }

LABEL_31:
    v8 = sub_1000524BC();
    v6 = v47;
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_34;
    }

    *buf = 0;
    v9 = "updateOverlay: No explicit screen owner";
    v10 = v8;
    v11 = 2;
    goto LABEL_33;
  }

  v7 = *(systemShellState + 16);
  if (*(v6 + 8) == 1)
  {
    v8 = sub_1000524BC();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_34;
    }

    *buf = 138543362;
    *v53 = v7;
    v9 = "updateOverlay: Waiting for alternate shells -- (%{public}@) is temporary screen owner";
    v10 = v8;
    v11 = 12;
LABEL_33:
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v9, buf, v11);
    goto LABEL_34;
  }

  v47 = v6;
  p_screenOwnerPID = &self->_screenOwnerPID;
  if (self->_screenOwnerPID <= 0)
  {
    goto LABEL_31;
  }

  v13 = *(v47 + 24);
LABEL_7:
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v8 = v13;
  v14 = [v8 countByEnumeratingWithState:&v48 objects:v54 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v49;
    v46 = reasonCopy;
    while (2)
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v49 != v16)
        {
          objc_enumerationMutation(v8);
        }

        v18 = *(*(&v48 + 1) + 8 * i);
        v19 = *p_screenOwnerPID;
        if (v19 == [v18 pid])
        {
          v27 = sub_1000524BC();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            v28 = *p_screenOwnerPID;
            *buf = 67109378;
            *v53 = v28;
            *&v53[4] = 2114;
            *&v53[6] = v18;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "updateOverlay: pid:%d still exists (%{public}@)", buf, 0x12u);
          }

          v29 = v18;
          v7 = v29;
          reasonCopy = v46;
          goto LABEL_24;
        }

        screenOwnerBundleIdentifier = self->_screenOwnerBundleIdentifier;
        if (screenOwnerBundleIdentifier)
        {
          bundleIdentifier = [v18 bundleIdentifier];
          v22 = [(NSString *)screenOwnerBundleIdentifier isEqual:bundleIdentifier];

          if (v22)
          {
            v23 = sub_1000524BC();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              *v53 = v18;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "updateOverlay: New instance of owner shell (%{public}@)", buf, 0xCu);
            }

            v24 = v18;
            self->_screenOwnerPID = [v24 pid];
            bundleIdentifier2 = [v24 bundleIdentifier];
            v26 = self->_screenOwnerBundleIdentifier;
            self->_screenOwnerBundleIdentifier = bundleIdentifier2;

            v7 = v24;
          }
        }
      }

      v15 = [v8 countByEnumeratingWithState:&v48 objects:v54 count:16];
      reasonCopy = v46;
      if (v15)
      {
        continue;
      }

      break;
    }
  }

LABEL_24:

  v30 = self->_screenOwnerBundleIdentifier;
  bundleIdentifier3 = [v7 bundleIdentifier];
  LOBYTE(v30) = [(NSString *)v30 isEqual:bundleIdentifier3];

  if (v30)
  {
    v6 = v47;
  }

  else
  {
    v32 = sub_1000524BC();
    v6 = v47;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v33 = self->_screenOwnerBundleIdentifier;
      bundleIdentifier4 = [v7 bundleIdentifier];
      *buf = 138543618;
      *v53 = v33;
      *&v53[8] = 2114;
      *&v53[10] = bundleIdentifier4;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "updateOverlay: Screen owner missing (expected:%{public}@) got:%{public}@", buf, 0x16u);
    }

    self->_screenOwnerPID = -1;
    v35 = self->_screenOwnerBundleIdentifier;
    self->_screenOwnerBundleIdentifier = 0;
  }

LABEL_34:

  screenOwnerPID = self->_screenOwnerPID;
  v37 = [v7 pid];
  if (v7)
  {
    if (v6)
    {
      v38 = *(v6 + 32);
    }

    else
    {
      v38 = 0;
    }

    v39 = v38;
    v40 = [v39 containsObject:v7];
  }

  else
  {
    v40 = 0;
  }

  if (screenOwnerPID == v37 || v40)
  {
    v41 = sub_1000524BC();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      v42 = [v7 pid];
      *buf = 67109632;
      *v53 = v42;
      *&v53[4] = 1024;
      *&v53[6] = screenOwnerPID == v37;
      *&v53[10] = 1024;
      *&v53[12] = v40;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "updateOverlay: pid:%d explicitlyDismissed:%{BOOL}u finishedStartup:%{BOOL}u", buf, 0x14u);
    }

    if (self->_isOverlaySustained)
    {
      v43 = v6;
      self->_dismissSustainedOverlayIfUnsustained = 1;
      v44 = sub_1000524BC();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        *v53 = reasonCopy;
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "updateOverlay: Not dismissing because overlay has been sustained by the system app: %{public}@ ", buf, 0xCu);
      }

      v6 = v43;
    }

    else
    {
      v45 = sub_1000524BC();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        *v53 = reasonCopy;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "updateOverlay: Dismissing overlay: %{public}@ ", buf, 0xCu);
      }

      [(BKBootUIPresenter *)self _queue_removeOverlayWithAnimationSettings:0];
    }
  }

  else
  {
    [(BKBootUIPresenter *)self _queue_addOverlayForReason:reasonCopy];
  }
}

- (void)_queue_setScreenOwnerPID:(int)d
{
  self->_screenOwnerPID = d;
  [(BKSystemShellSentinel *)self->_systemAppSentinel systemShells];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = v21 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        if ([v10 pid] == d)
        {
          bundleIdentifier = [v10 bundleIdentifier];
          v14 = [bundleIdentifier copy];
          screenOwnerBundleIdentifier = self->_screenOwnerBundleIdentifier;
          self->_screenOwnerBundleIdentifier = v14;

          v12 = v5;
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v26 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = BSBundleIDForPID();
  v12 = self->_screenOwnerBundleIdentifier;
  self->_screenOwnerBundleIdentifier = v11;
LABEL_11:

  v16 = sub_1000524BC();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = self->_screenOwnerBundleIdentifier;
    *buf = 67109378;
    dCopy = d;
    v24 = 2114;
    v25 = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "screen owner is now pid:%d (%{public}@)", buf, 0x12u);
  }
}

- (void)systemShellChangedWithPrimary:(id)primary
{
  primaryCopy = primary;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10009D86C;
  v7[3] = &unk_1000FD128;
  v8 = primaryCopy;
  selfCopy = self;
  v6 = primaryCopy;
  dispatch_async(queue, v7);
}

- (void)systemShellDidFinishLaunching:(id)launching
{
  launchingCopy = launching;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10009D9E0;
  v7[3] = &unk_1000FD128;
  v8 = launchingCopy;
  selfCopy = self;
  v6 = launchingCopy;
  dispatch_async(queue, v7);
}

- (void)firstBootDetectorDidFinishFirstBoot:(id)boot
{
  bootCopy = boot;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10009DB54;
  v7[3] = &unk_1000FD128;
  v8 = bootCopy;
  selfCopy = self;
  v6 = bootCopy;
  dispatch_async(queue, v7);
}

- (void)unsustainOverlayForReason:(id)reason
{
  reasonCopy = reason;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10009DD04;
  v7[3] = &unk_1000FD128;
  v7[4] = self;
  v8 = reasonCopy;
  v6 = reasonCopy;
  dispatch_sync(queue, v7);
}

- (BOOL)sustainOverlayForReason:(id)reason
{
  reasonCopy = reason;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009DEFC;
  block[3] = &unk_1000FD1C8;
  block[4] = self;
  v9 = reasonCopy;
  v10 = &v11;
  v6 = reasonCopy;
  dispatch_sync(queue, block);
  LOBYTE(queue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return queue;
}

- (void)dismissOverlayWithAnimationSettings:(id)settings requstedByPID:(int)d
{
  settingsCopy = settings;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009E0C4;
  block[3] = &unk_1000FD1A0;
  dCopy = d;
  block[4] = self;
  v10 = settingsCopy;
  v8 = settingsCopy;
  dispatch_sync(queue, block);
}

- (BOOL)isShowingBootUI
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10009E294;
  v5[3] = &unk_1000FD178;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (NSString)description
{
  v3 = [BSDescriptionBuilder builderWithObject:self];
  succinctDescription = [(BKDisplayRenderOverlay *)self->_overlay succinctDescription];
  v5 = [v3 appendObject:succinctDescription withName:@"_overlay" skipIfNil:1];

  succinctDescription2 = [(BKDisplayRenderOverlay *)self->_underlay succinctDescription];
  v7 = [v3 appendObject:succinctDescription2 withName:@"_underlay" skipIfNil:1];

  build = [v3 build];

  return build;
}

- (void)dealloc
{
  if (self->_systemActivityAssertion)
  {
    v5 = [NSString stringWithFormat:@"Must dismiss overlay before releasing"];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v6 = NSStringFromSelector(a2);
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      *buf = 138544642;
      v19 = v6;
      v20 = 2114;
      v21 = v8;
      v22 = 2048;
      selfCopy3 = self;
      v24 = 2114;
      v25 = @"BKBootUIPresenter.m";
      v26 = 1024;
      v27 = 105;
      v28 = 2114;
      v29 = v5;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v5 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x10009E518);
  }

  if (self->_overlay)
  {
    v9 = [NSString stringWithFormat:@"Must dismiss overlay before releasing"];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v10 = NSStringFromSelector(a2);
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      *buf = 138544642;
      v19 = v10;
      v20 = 2114;
      v21 = v12;
      v22 = 2048;
      selfCopy3 = self;
      v24 = 2114;
      v25 = @"BKBootUIPresenter.m";
      v26 = 1024;
      v27 = 106;
      v28 = 2114;
      v29 = v9;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v9 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x10009E604);
  }

  if (self->_underlay)
  {
    v13 = [NSString stringWithFormat:@"Must dismiss underlay before releasing"];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v14 = NSStringFromSelector(a2);
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      *buf = 138544642;
      v19 = v14;
      v20 = 2114;
      v21 = v16;
      v22 = 2048;
      selfCopy3 = self;
      v24 = 2114;
      v25 = @"BKBootUIPresenter.m";
      v26 = 1024;
      v27 = 107;
      v28 = 2114;
      v29 = v13;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v13 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x10009E6F0);
  }

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self];

  v17.receiver = self;
  v17.super_class = BKBootUIPresenter;
  [(BKBootUIPresenter *)&v17 dealloc];
}

- (BKBootUIPresenter)initWithSystemAppSentinel:(id)sentinel alternateSystemAppManager:(id)manager firstBootDetector:(id)detector bootUIOverlayVendor:(id)vendor renderOverlayManager:(id)overlayManager
{
  sentinelCopy = sentinel;
  detectorCopy = detector;
  vendorCopy = vendor;
  overlayManagerCopy = overlayManager;
  v37.receiver = self;
  v37.super_class = BKBootUIPresenter;
  v16 = [(BKBootUIPresenter *)&v37 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_systemAppSentinel, sentinel);
    objc_storeStrong(&v17->_bootUIOverlayVendor, vendor);
    objc_storeStrong(&v17->_renderOverlayManager, overlayManager);
    objc_storeStrong(&v17->_firstBootDetector, detector);
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    SerialWithQoS = BSDispatchQueueCreateSerialWithQoS();
    queue = v17->_queue;
    v17->_queue = SerialWithQoS;

    v17->_screenOwnerPID = -1;
    [(BKFirstBootDetector *)v17->_firstBootDetector addObserver:v17];
    v22 = [(BKSystemShellSentinel *)v17->_systemAppSentinel addSystemShellObserver:v17 reason:@"BootUIPresenter"];
    systemShellObserving = v17->_systemShellObserving;
    v17->_systemShellObserving = v22;

    v24 = +[BKSDefaults localDefaults];
    v25 = [NSString stringWithUTF8String:"hideAppleLogoOnLaunch"];
    v26 = v17->_queue;
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_10009E960;
    v34[3] = &unk_1000FD128;
    v35 = v24;
    v27 = v17;
    v36 = v27;
    v28 = v24;
    v29 = [v28 observeDefault:v25 onQueue:v26 withBlock:v34];

    v30 = v17->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10009E9BC;
    block[3] = &unk_1000FD150;
    v33 = v27;
    dispatch_sync(v30, block);
  }

  return v17;
}

+ (id)sharedInstance
{
  if (qword_100126148 != -1)
  {
    dispatch_once(&qword_100126148, &stru_1000FD100);
  }

  v3 = qword_100126140;

  return v3;
}

@end