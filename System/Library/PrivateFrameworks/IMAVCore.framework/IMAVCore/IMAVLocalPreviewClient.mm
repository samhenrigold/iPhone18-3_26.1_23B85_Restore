@interface IMAVLocalPreviewClient
+ (CGSize)localPortraitAspectRatio;
+ (id)sharedInstance;
- (BOOL)_shouldPreviewBeRunning;
- (BOOL)isPreviewRunning;
- (IMAVLocalPreviewClient)init;
- (id)localScreenAttributesForVideoAttributes:(id)attributes;
- (unsigned)cameraOrientation;
- (unsigned)cameraType;
- (void)_avDaemonConnected;
- (void)_updatePreviewState;
- (void)avChat:(id)chat setLocalPortraitRatio:(CGSize)ratio localLandscapeRatio:(CGSize)landscapeRatio;
- (void)beginAnimationToPIP;
- (void)beginAnimationToPreview;
- (void)cameraDidBecomeAvailableForUniqueID:(id)d;
- (void)dealloc;
- (void)didChangeLocalScreenAttributes:(id)attributes;
- (void)didChangeLocalVideoAttributes:(id)attributes;
- (void)didPausePreview;
- (void)didReceiveErrorFromCameraUniqueID:(id)d error:(id)error;
- (void)didReceiveFirstPreviewFrameFromCameraUniqueID:(id)d;
- (void)didStartPreview;
- (void)didStopPreview;
- (void)endAnimationToPIP;
- (void)endAnimationToPreview;
- (void)localVideoBackLayer;
- (void)localVideoLayer;
- (void)pausePreview;
- (void)setCameraOrientation:(unsigned int)orientation;
- (void)setCameraType:(unsigned int)type;
- (void)setLocalScreenAttributes:(id)attributes;
- (void)setLocalVideoBackLayer:(void *)layer;
- (void)setLocalVideoLayer:(void *)layer;
- (void)startPreview;
- (void)stopPreview;
- (void)systemApplicationDidEnterBackground;
- (void)systemApplicationWillEnterForeground;
- (void)systemScreenDidPowerDown;
- (void)systemScreenDidPowerUp;
- (void)unpausePreview;
- (void)updateLocalScreenAtrributes;
@end

@implementation IMAVLocalPreviewClient

+ (id)sharedInstance
{
  if (qword_28134A420 != -1)
  {
    sub_25477F990();
  }

  v3 = qword_28134A3F0;

  return v3;
}

- (IMAVLocalPreviewClient)init
{
  v48 = *MEMORY[0x277D85DE8];
  v43.receiver = self;
  v43.super_class = IMAVLocalPreviewClient;
  v2 = [(IMAVLocalPreviewClient *)&v43 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x259C18990](@"AVConferencePreview", @"AVConference"));
    conferencePreview = v2->_conferencePreview;
    v2->_conferencePreview = v3;

    v8 = objc_msgSend_setDelegate_(v2->_conferencePreview, v5, v2, v6, v7);
    v9 = sub_254761764(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v2->_conferencePreview;
      *buf = 138412546;
      v45 = v2;
      v46 = 2112;
      v47 = v10;
      _os_log_impl(&dword_254743000, v9, OS_LOG_TYPE_DEFAULT, "Setting %@ as delegate of local preview %@", buf, 0x16u);
    }

    v15 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v11, v12, v13, v14);
    objc_msgSend_addObserver_selector_name_object_(v15, v16, v2, sel__avDaemonConnected, @"__kIMAVDaemonDidConnectNotification", 0);

    v21 = objc_msgSend_sharedInstance(MEMORY[0x277D192A8], v17, v18, v19, v20);
    objc_msgSend_addListener_(v21, v22, v2, v23, v24);

    v29 = objc_msgSend_sharedInstance(MEMORY[0x277D192A8], v25, v26, v27, v28);
    objc_msgSend_setActive_(v29, v30, 1, v31, v32);

    v37 = objc_msgSend_sharedInstance(MEMORY[0x277D192A8], v33, v34, v35, v36);
    objc_msgSend_setWatchesScreenLightState_(v37, v38, 1, v39, v40);

    v41 = v2;
  }

  return v2;
}

- (void)dealloc
{
  v6 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], a2, v2, v3, v4);
  objc_msgSend_removeObserver_name_object_(v6, v7, self, 0, 0);

  v12 = objc_msgSend_sharedInstance(MEMORY[0x277D192A8], v8, v9, v10, v11);
  objc_msgSend_removeListener_(v12, v13, self, v14, v15);

  v20 = objc_msgSend_conferencePreview(self, v16, v17, v18, v19);
  objc_msgSend_setDelegate_(v20, v21, 0, v22, v23);

  v24.receiver = self;
  v24.super_class = IMAVLocalPreviewClient;
  [(IMAVLocalPreviewClient *)&v24 dealloc];
}

- (unsigned)cameraType
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = sub_254761764(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_msgSend_conferencePreview(self, v4, v5, v6, v7);
    v35 = 138412290;
    v36 = v8;
    _os_log_impl(&dword_254743000, v3, OS_LOG_TYPE_DEFAULT, "Querying camera type from AVConferencePreview: %@", &v35, 0xCu);
  }

  v13 = objc_msgSend_sharedInstance(IMAVInterface, v9, v10, v11, v12);
  v18 = objc_msgSend_systemSupportsBackFacingCamera(v13, v14, v15, v16, v17);

  if (!v18)
  {
    return 0;
  }

  v23 = objc_msgSend_conferencePreview(self, v19, v20, v21, v22);
  v28 = objc_msgSend_localVideoAttributes(v23, v24, v25, v26, v27);

  sub_254772244(v28);
  v33 = objc_msgSend_camera(v28, v29, v30, v31, v32);

  return v33;
}

- (void)setCameraType:(unsigned int)type
{
  v3 = *&type;
  v28 = *MEMORY[0x277D85DE8];
  v5 = sub_254761764(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v27[0] = 67109120;
    v27[1] = v3;
    _os_log_impl(&dword_254743000, v5, OS_LOG_TYPE_DEFAULT, "Setting camera type to %d", v27, 8u);
  }

  v10 = objc_msgSend_conferencePreview(self, v6, v7, v8, v9);
  v15 = objc_msgSend_localVideoAttributes(v10, v11, v12, v13, v14);

  objc_msgSend_setCamera_(v15, v16, v3, v17, v18);
  sub_254772244(v15);
  v23 = objc_msgSend_conferencePreview(self, v19, v20, v21, v22);
  objc_msgSend_setLocalVideoAttributes_(v23, v24, v15, v25, v26);
}

- (unsigned)cameraOrientation
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = sub_254761764(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_msgSend_conferencePreview(self, v4, v5, v6, v7);
    v24 = 138412290;
    v25 = v8;
    _os_log_impl(&dword_254743000, v3, OS_LOG_TYPE_DEFAULT, "Querying camera orientation from AVConferencePreview: %@", &v24, 0xCu);
  }

  v13 = objc_msgSend_conferencePreview(self, v9, v10, v11, v12);
  v18 = objc_msgSend_localVideoAttributes(v13, v14, v15, v16, v17);

  sub_254772244(v18);
  LODWORD(v13) = objc_msgSend_orientation(v18, v19, v20, v21, v22);

  return v13;
}

- (void)setCameraOrientation:(unsigned int)orientation
{
  v3 = *&orientation;
  v28 = *MEMORY[0x277D85DE8];
  v5 = sub_254761764(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v27[0] = 67109120;
    v27[1] = v3;
    _os_log_impl(&dword_254743000, v5, OS_LOG_TYPE_DEFAULT, "Setting camera orientation to %d", v27, 8u);
  }

  v10 = objc_msgSend_conferencePreview(self, v6, v7, v8, v9);
  v15 = objc_msgSend_localVideoAttributes(v10, v11, v12, v13, v14);

  objc_msgSend_setOrientation_(v15, v16, v3, v17, v18);
  sub_254772244(v15);
  v23 = objc_msgSend_conferencePreview(self, v19, v20, v21, v22);
  objc_msgSend_setLocalVideoAttributes_(v23, v24, v15, v25, v26);
}

- (void)localVideoLayer
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = sub_254761764(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_msgSend_conferencePreview(self, v4, v5, v6, v7);
    v19 = 138412290;
    v20 = v8;
    _os_log_impl(&dword_254743000, v3, OS_LOG_TYPE_DEFAULT, "Querying local video layer from AVConferencePreview: %@", &v19, 0xCu);
  }

  v13 = objc_msgSend_conferencePreview(self, v9, v10, v11, v12);
  v17 = objc_msgSend_localVideoLayer_(v13, v14, 1, v15, v16);

  return v17;
}

- (void)setLocalVideoLayer:(void *)layer
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = objc_msgSend_conferencePreview(self, a2, layer, v3, v4);
  objc_msgSend_setLocalVideoLayer_front_(v7, v8, layer, 1, v9);

  v11 = sub_254761764(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v16 = objc_msgSend_conferencePreview(self, v12, v13, v14, v15);
    v17 = 134218242;
    layerCopy = layer;
    v19 = 2112;
    v20 = v16;
    _os_log_impl(&dword_254743000, v11, OS_LOG_TYPE_DEFAULT, "Setting local video layer: %p on preview: %@", &v17, 0x16u);
  }
}

- (void)localVideoBackLayer
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = sub_254761764(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_msgSend_conferencePreview(self, v4, v5, v6, v7);
    v19 = 138412290;
    v20 = v8;
    _os_log_impl(&dword_254743000, v3, OS_LOG_TYPE_DEFAULT, "Querying local video back layer from AVConferencePreview: %@", &v19, 0xCu);
  }

  v13 = objc_msgSend_conferencePreview(self, v9, v10, v11, v12);
  v17 = objc_msgSend_localVideoLayer_(v13, v14, 0, v15, v16);

  return v17;
}

- (void)setLocalVideoBackLayer:(void *)layer
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = objc_msgSend_conferencePreview(self, a2, layer, v3, v4);
  objc_msgSend_setLocalVideoLayer_front_(v7, v8, layer, 0, v9);

  v11 = sub_254761764(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v16 = objc_msgSend_conferencePreview(self, v12, v13, v14, v15);
    v17 = 134218242;
    layerCopy = layer;
    v19 = 2112;
    v20 = v16;
    _os_log_impl(&dword_254743000, v11, OS_LOG_TYPE_DEFAULT, "Setting local video back-layer: %p on preview: %@", &v17, 0x16u);
  }
}

- (id)localScreenAttributesForVideoAttributes:(id)attributes
{
  v23 = *MEMORY[0x277D85DE8];
  attributesCopy = attributes;
  v5 = sub_254761764(attributesCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_msgSend_conferencePreview(self, v6, v7, v8, v9);
    v21 = 138412290;
    v22 = v10;
    _os_log_impl(&dword_254743000, v5, OS_LOG_TYPE_DEFAULT, "Querying local screen attributes from AVConferencePreview: %@", &v21, 0xCu);
  }

  v15 = objc_msgSend_conferencePreview(self, v11, v12, v13, v14);
  v19 = objc_msgSend_localScreenAttributesForVideoAttributes_(v15, v16, attributesCopy, v17, v18);

  return v19;
}

- (void)setLocalScreenAttributes:(id)attributes
{
  v24 = *MEMORY[0x277D85DE8];
  attributesCopy = attributes;
  v9 = objc_msgSend_conferencePreview(self, v5, v6, v7, v8);
  objc_msgSend_setLocalScreenAttributes_(v9, v10, attributesCopy, v11, v12);

  v14 = sub_254761764(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v19 = objc_msgSend_conferencePreview(self, v15, v16, v17, v18);
    v20 = 138412546;
    v21 = attributesCopy;
    v22 = 2112;
    v23 = v19;
    _os_log_impl(&dword_254743000, v14, OS_LOG_TYPE_DEFAULT, "Setting local screen attributes: %@ on preview: %@", &v20, 0x16u);
  }
}

- (void)avChat:(id)chat setLocalPortraitRatio:(CGSize)ratio localLandscapeRatio:(CGSize)landscapeRatio
{
  height = landscapeRatio.height;
  width = landscapeRatio.width;
  v7 = ratio.height;
  v8 = ratio.width;
  v81 = *MEMORY[0x277D85DE8];
  chatCopy = chat;
  v11 = MEMORY[0x259C18990](@"VideoAttributes", @"AVConference");
  v12 = sub_254761764(v11);
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (v11)
  {
    if (v13)
    {
      v82.width = v8;
      v82.height = v7;
      v14 = NSStringFromSize(v82);
      v79 = 138412290;
      v80 = v14;
      _os_log_impl(&dword_254743000, v12, OS_LOG_TYPE_DEFAULT, "Got portrait aspect ratio: %@", &v79, 0xCu);
    }

    v16 = sub_254761764(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v83.width = width;
      v83.height = height;
      v17 = NSStringFromSize(v83);
      v79 = 138412290;
      v80 = v17;
      _os_log_impl(&dword_254743000, v16, OS_LOG_TYPE_DEFAULT, "Got landscape aspect ratio: %@", &v79, 0xCu);
    }

    v12 = objc_alloc_init(v11);
    v18 = objc_alloc_init(v11);
    objc_msgSend_setOrientation_(v12, v19, 0, v20, v21);
    objc_msgSend_setOrientation_(v18, v22, 3, v23, v24);
    v28 = objc_msgSend_localScreenAttributesForVideoAttributes_(self, v25, v12, v26, v27);
    objc_msgSend_setRatio_(v28, v29, v30, v31, v32, v8, v7);
    v37 = objc_msgSend__timings(chatCopy, v33, v34, v35, v36);
    objc_msgSend_startTimingForKey_(v37, v38, @"setting-local-screen-attributes", v39, v40);

    objc_msgSend_setLocalScreenAttributes_(self, v41, v28, v42, v43);
    v48 = objc_msgSend__timings(chatCopy, v44, v45, v46, v47);
    objc_msgSend_stopTimingForKey_(v48, v49, @"setting-local-screen-attributes", v50, v51);

    v55 = objc_msgSend_localScreenAttributesForVideoAttributes_(self, v52, v18, v53, v54);

    objc_msgSend_setRatio_(v55, v56, v57, v58, v59, width, height);
    v64 = objc_msgSend__timings(chatCopy, v60, v61, v62, v63);
    objc_msgSend_startTimingForKey_(v64, v65, @"setting-local-screen-attributes", v66, v67);

    objc_msgSend_setLocalScreenAttributes_(self, v68, v55, v69, v70);
    v75 = objc_msgSend__timings(chatCopy, v71, v72, v73, v74);
    objc_msgSend_stopTimingForKey_(v75, v76, @"setting-local-screen-attributes", v77, v78);
  }

  else if (v13)
  {
    LOWORD(v79) = 0;
    _os_log_impl(&dword_254743000, v12, OS_LOG_TYPE_DEFAULT, "Unable to find VideoAttributes class, possibly failed to weak link AVConference.", &v79, 2u);
  }
}

+ (CGSize)localPortraitAspectRatio
{
  v2 = MEMORY[0x259C18990](@"CADisplay", @"QuartzCore");
  if (v2)
  {
    v7 = objc_msgSend_mainDisplay(v2, v3, v4, v5, v6);
    objc_msgSend_bounds(v7, v8, v9, v10, v11);
    v13 = v12;
    v15 = v14;

    if (v13 <= v15)
    {
      v16 = v13;
    }

    else
    {
      v16 = v15;
    }

    if (v13 <= v15)
    {
      v13 = v15;
    }

    v17 = sub_25475B094(v16, v13);
    v18 = v16 / v17;
    v19 = v13 / v17;
  }

  else
  {
    v20 = sub_254761764(0);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *v21 = 0;
      _os_log_impl(&dword_254743000, v20, OS_LOG_TYPE_DEFAULT, "Unable to find CADisplay class, possibly failed to weak link QuartzCore or CADisplay doesn't exist on this device.", v21, 2u);
    }

    v18 = *MEMORY[0x277CCA870];
    v19 = *(MEMORY[0x277CCA870] + 8);
  }

  result.height = v19;
  result.width = v18;
  return result;
}

- (void)updateLocalScreenAtrributes
{
  v3 = sub_254761764(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_254743000, v3, OS_LOG_TYPE_DEFAULT, "updateLocalScreenAtrributes was called", v14, 2u);
  }

  v4 = objc_opt_class();
  objc_msgSend_localPortraitAspectRatio(v4, v5, v6, v7, v8);
  objc_msgSend_avChat_setLocalPortraitRatio_localLandscapeRatio_(self, v9, 0, v10, v11, v12, v13, v13, v12);
}

- (BOOL)_shouldPreviewBeRunning
{
  v6 = objc_msgSend_sharedInstance(MEMORY[0x277D192A8], a2, v2, v3, v4);
  if (objc_msgSend_isInBackground(v6, v7, v8, v9, v10))
  {
    wantsPreview = 0;
  }

  else
  {
    v16 = objc_msgSend_sharedInstance(MEMORY[0x277D192A8], v11, v12, v13, v14);
    if (objc_msgSend_isScreenLit(v16, v17, v18, v19, v20))
    {
      wantsPreview = self->_wantsPreview;
    }

    else
    {
      wantsPreview = 0;
    }
  }

  return wantsPreview;
}

- (void)_updatePreviewState
{
  v124 = *MEMORY[0x277D85DE8];
  v3 = sub_254761764(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v122) = 0;
    _os_log_impl(&dword_254743000, v3, OS_LOG_TYPE_DEFAULT, &unk_2547876A3, &v122, 2u);
  }

  v5 = sub_254761764(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_msgSend_sharedInstance(IMAVDaemonController, v6, v7, v8, v9);
    if (objc_msgSend_isConnected(v10, v11, v12, v13, v14))
    {
      v15 = @"YES";
    }

    else
    {
      v15 = @"NO";
    }

    v122 = 138412290;
    v123 = v15;
    _os_log_impl(&dword_254743000, v5, OS_LOG_TYPE_DEFAULT, "         Connected to daemon: %@", &v122, 0xCu);
  }

  v17 = sub_254761764(v16);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v22 = objc_msgSend_sharedInstance(MEMORY[0x277D192A8], v18, v19, v20, v21);
    if (objc_msgSend_isInBackground(v22, v23, v24, v25, v26))
    {
      v27 = @"YES";
    }

    else
    {
      v27 = @"NO";
    }

    v122 = 138412290;
    v123 = v27;
    _os_log_impl(&dword_254743000, v17, OS_LOG_TYPE_DEFAULT, "    App is in the background: %@", &v122, 0xCu);
  }

  v29 = sub_254761764(v28);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v34 = objc_msgSend_sharedInstance(MEMORY[0x277D192A8], v30, v31, v32, v33);
    if (objc_msgSend_isScreenLit(v34, v35, v36, v37, v38))
    {
      v39 = @"YES";
    }

    else
    {
      v39 = @"NO";
    }

    v122 = 138412290;
    v123 = v39;
    _os_log_impl(&dword_254743000, v29, OS_LOG_TYPE_DEFAULT, "               Screen is lit: %@", &v122, 0xCu);
  }

  v41 = sub_254761764(v40);
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    if (self->_shouldAlterPreviewState)
    {
      v42 = @"YES";
    }

    else
    {
      v42 = @"NO";
    }

    v122 = 138412290;
    v123 = v42;
    _os_log_impl(&dword_254743000, v41, OS_LOG_TYPE_DEFAULT, "Should we alter preview state ?: %@", &v122, 0xCu);
  }

  v44 = sub_254761764(v43);
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
  {
    if (self->_wantsPreview)
    {
      v45 = @"YES";
    }

    else
    {
      v45 = @"NO";
    }

    v122 = 138412290;
    v123 = v45;
    _os_log_impl(&dword_254743000, v44, OS_LOG_TYPE_DEFAULT, "           Do we want preview ?: %@", &v122, 0xCu);
  }

  v47 = sub_254761764(v46);
  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
  {
    if (objc_msgSend__shouldPreviewBeRunning(self, v48, v49, v50, v51))
    {
      v52 = @"YES";
    }

    else
    {
      v52 = @"NO";
    }

    v122 = 138412290;
    v123 = v52;
    _os_log_impl(&dword_254743000, v47, OS_LOG_TYPE_DEFAULT, "    Should preview be running ?: %@", &v122, 0xCu);
  }

  v54 = sub_254761764(v53);
  if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
  {
    if (self->_wantsPausedPreview)
    {
      v55 = @"YES";
    }

    else
    {
      v55 = @"NO";
    }

    v122 = 138412290;
    v123 = v55;
    _os_log_impl(&dword_254743000, v54, OS_LOG_TYPE_DEFAULT, "     Should preview be paused ?: %@", &v122, 0xCu);
  }

  v57 = sub_254761764(v56);
  if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
  {
    if (self->_wantsUnpausedPreview)
    {
      v58 = @"YES";
    }

    else
    {
      v58 = @"NO";
    }

    v122 = 138412290;
    v123 = v58;
    _os_log_impl(&dword_254743000, v57, OS_LOG_TYPE_DEFAULT, "   Should preview be unpaused ?: %@", &v122, 0xCu);
  }

  if (self->_shouldAlterPreviewState)
  {
    shouldPreviewBeRunning = objc_msgSend__shouldPreviewBeRunning(self, v59, v60, v61, v62);
    v64 = shouldPreviewBeRunning;
    v65 = sub_254761764(shouldPreviewBeRunning);
    v66 = os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT);
    if (v64)
    {
      if (v66)
      {
        LOWORD(v122) = 0;
        _os_log_impl(&dword_254743000, v65, OS_LOG_TYPE_DEFAULT, "Asking daemon to start preview", &v122, 2u);
      }

      v71 = objc_msgSend_sharedInstance(IMAVDaemonController, v67, v68, v69, v70);
      objc_msgSend_addListenerID_(v71, v72, @"IMAVLocalPreview", v73, v74);

      v79 = objc_msgSend_sharedInstance(IMAVDaemonController, v75, v76, v77, v78);
      isConnected = objc_msgSend_isConnected(v79, v80, v81, v82, v83);

      if (isConnected)
      {
        v90 = objc_msgSend_sharedInstance(IMAVDaemonController, v86, v87, v88, v89);
        objc_msgSend_startPreview(v90, v91, v92, v93, v94);
      }

      else
      {
        v90 = sub_254761764(v85);
        if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v122) = 0;
          _os_log_impl(&dword_254743000, v90, OS_LOG_TYPE_DEFAULT, "*** Not connected to daemon, can't startPreview just yet ***", &v122, 2u);
        }
      }
    }

    else
    {
      if (v66)
      {
        LOWORD(v122) = 0;
        _os_log_impl(&dword_254743000, v65, OS_LOG_TYPE_DEFAULT, "Asking daemon to stop preview", &v122, 2u);
      }

      v99 = objc_msgSend_sharedInstance(IMAVDaemonController, v95, v96, v97, v98);
      v104 = objc_msgSend_isConnected(v99, v100, v101, v102, v103);

      if (v104)
      {
        v110 = objc_msgSend_sharedInstance(IMAVDaemonController, v106, v107, v108, v109);
        objc_msgSend_stopPreview(v110, v111, v112, v113, v114);
      }

      else
      {
        v110 = sub_254761764(v105);
        if (os_log_type_enabled(v110, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v122) = 0;
          _os_log_impl(&dword_254743000, v110, OS_LOG_TYPE_DEFAULT, "*** Not connected to daemon, don't need to stopPreview ***", &v122, 2u);
        }
      }

      v90 = objc_msgSend_sharedInstance(IMAVDaemonController, v115, v116, v117, v118);
      objc_msgSend_removeListenerID_(v90, v119, @"IMAVLocalPreview", v120, v121);
    }
  }
}

- (void)_avDaemonConnected
{
  v3 = sub_254761764(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_254743000, v3, OS_LOG_TYPE_DEFAULT, "*** Connected to daemon ! ***", v8, 2u);
  }

  objc_msgSend__updatePreviewState(self, v4, v5, v6, v7);
}

- (void)startPreview
{
  *&self->_shouldAlterPreviewState = 257;
  v3 = sub_254761764(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_254743000, v3, OS_LOG_TYPE_DEFAULT, "** Requesting START preview", v8, 2u);
  }

  objc_msgSend__updatePreviewState(self, v4, v5, v6, v7);
}

- (void)stopPreview
{
  *&self->_shouldAlterPreviewState = 1;
  v3 = sub_254761764(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_254743000, v3, OS_LOG_TYPE_DEFAULT, "** Requesting STOP preview", v8, 2u);
  }

  objc_msgSend__updatePreviewState(self, v4, v5, v6, v7);
}

- (void)pausePreview
{
  *&self->_shouldAlterPreviewState = 65537;
  v3 = sub_254761764(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_254743000, v3, OS_LOG_TYPE_DEFAULT, "** Requesting PAUSE preview", v8, 2u);
  }

  objc_msgSend__updatePreviewState(self, v4, v5, v6, v7);
}

- (void)unpausePreview
{
  *&self->_shouldAlterPreviewState = 16777473;
  v3 = sub_254761764(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_254743000, v3, OS_LOG_TYPE_DEFAULT, "** Requesting UN-PAUSE preview", v8, 2u);
  }

  objc_msgSend__updatePreviewState(self, v4, v5, v6, v7);
}

- (BOOL)isPreviewRunning
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = sub_254761764(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_msgSend_conferencePreview(self, v4, v5, v6, v7);
    v20 = 138412290;
    v21 = v8;
    _os_log_impl(&dword_254743000, v3, OS_LOG_TYPE_DEFAULT, "Querying is preview running from AVConferencePreview: %@", &v20, 0xCu);
  }

  v13 = objc_msgSend_conferencePreview(self, v9, v10, v11, v12);
  isPreviewRunning = objc_msgSend_isPreviewRunning(v13, v14, v15, v16, v17);

  return isPreviewRunning;
}

- (void)beginAnimationToPIP
{
  v3 = sub_254761764(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v19 = 0;
    _os_log_impl(&dword_254743000, v3, OS_LOG_TYPE_DEFAULT, "Begin animation to PIP", v19, 2u);
  }

  v8 = objc_msgSend_conferencePreview(self, v4, v5, v6, v7);
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v14 = objc_msgSend_conferencePreview(self, v10, v11, v12, v13);
    objc_msgSend_beginPreviewToPIPAnimation(v14, v15, v16, v17, v18);
  }
}

- (void)endAnimationToPIP
{
  v3 = sub_254761764(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v19 = 0;
    _os_log_impl(&dword_254743000, v3, OS_LOG_TYPE_DEFAULT, "End animation to PIP", v19, 2u);
  }

  v8 = objc_msgSend_conferencePreview(self, v4, v5, v6, v7);
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v14 = objc_msgSend_conferencePreview(self, v10, v11, v12, v13);
    objc_msgSend_endPreviewToPIPAnimation(v14, v15, v16, v17, v18);
  }
}

- (void)beginAnimationToPreview
{
  v3 = sub_254761764(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v19 = 0;
    _os_log_impl(&dword_254743000, v3, OS_LOG_TYPE_DEFAULT, "Begin animation to preview", v19, 2u);
  }

  v8 = objc_msgSend_conferencePreview(self, v4, v5, v6, v7);
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v14 = objc_msgSend_conferencePreview(self, v10, v11, v12, v13);
    objc_msgSend_beginPIPToPreviewAnimation(v14, v15, v16, v17, v18);
  }
}

- (void)endAnimationToPreview
{
  v3 = sub_254761764(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v19 = 0;
    _os_log_impl(&dword_254743000, v3, OS_LOG_TYPE_DEFAULT, "End animation to preview", v19, 2u);
  }

  v8 = objc_msgSend_conferencePreview(self, v4, v5, v6, v7);
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v14 = objc_msgSend_conferencePreview(self, v10, v11, v12, v13);
    objc_msgSend_endPIPToPreviewAnimation(v14, v15, v16, v17, v18);
  }
}

- (void)systemApplicationDidEnterBackground
{
  v3 = sub_254761764(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_254743000, v3, OS_LOG_TYPE_DEFAULT, "App is in the background, refresh preview state", v8, 2u);
  }

  objc_msgSend__updatePreviewState(self, v4, v5, v6, v7);
}

- (void)systemApplicationWillEnterForeground
{
  v3 = sub_254761764(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_254743000, v3, OS_LOG_TYPE_DEFAULT, "App will enter the foreground, refresh preview state", v8, 2u);
  }

  objc_msgSend__updatePreviewState(self, v4, v5, v6, v7);
}

- (void)systemScreenDidPowerUp
{
  v3 = sub_254761764(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_254743000, v3, OS_LOG_TYPE_DEFAULT, "Screen turned on, refreshing preview state", v8, 2u);
  }

  objc_msgSend__updatePreviewState(self, v4, v5, v6, v7);
}

- (void)systemScreenDidPowerDown
{
  v3 = sub_254761764(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_254743000, v3, OS_LOG_TYPE_DEFAULT, "Screen shut off, refreshing preview state", v8, 2u);
  }

  objc_msgSend__updatePreviewState(self, v4, v5, v6, v7);
}

- (void)didStartPreview
{
  v2 = sub_254761764(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_254743000, v2, OS_LOG_TYPE_DEFAULT, &unk_2547876A3, v3, 2u);
  }
}

- (void)didStopPreview
{
  v2 = sub_254761764(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_254743000, v2, OS_LOG_TYPE_DEFAULT, &unk_2547876A3, buf, 2u);
  }

  im_dispatch_after();
}

- (void)didPausePreview
{
  v2 = sub_254761764(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_254743000, v2, OS_LOG_TYPE_DEFAULT, &unk_2547876A3, v3, 2u);
  }
}

- (void)didReceiveFirstPreviewFrameFromCameraUniqueID:(id)d
{
  v7 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v4 = sub_254761764(dCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = dCopy;
    _os_log_impl(&dword_254743000, v4, OS_LOG_TYPE_DEFAULT, "cameraUID: %@", &v5, 0xCu);
  }
}

- (void)didChangeLocalVideoAttributes:(id)attributes
{
  v7 = *MEMORY[0x277D85DE8];
  attributesCopy = attributes;
  v4 = sub_254761764(attributesCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = attributesCopy;
    _os_log_impl(&dword_254743000, v4, OS_LOG_TYPE_DEFAULT, "videoAttributes: %@", &v5, 0xCu);
  }
}

- (void)didChangeLocalScreenAttributes:(id)attributes
{
  v7 = *MEMORY[0x277D85DE8];
  attributesCopy = attributes;
  v4 = sub_254761764(attributesCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = attributesCopy;
    _os_log_impl(&dword_254743000, v4, OS_LOG_TYPE_DEFAULT, "videoAttributes: %@", &v5, 0xCu);
  }
}

- (void)didReceiveErrorFromCameraUniqueID:(id)d error:(id)error
{
  v12 = *MEMORY[0x277D85DE8];
  dCopy = d;
  errorCopy = error;
  v7 = sub_254761764(errorCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = dCopy;
    v10 = 2112;
    v11 = errorCopy;
    _os_log_impl(&dword_254743000, v7, OS_LOG_TYPE_DEFAULT, "cameraUID: %@ error: %@", &v8, 0x16u);
  }
}

- (void)cameraDidBecomeAvailableForUniqueID:(id)d
{
  v12 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = sub_254761764(dCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = dCopy;
    _os_log_impl(&dword_254743000, v5, OS_LOG_TYPE_DEFAULT, "cameraUID: %@", &v10, 0xCu);
  }

  objc_msgSend__updatePreviewState(self, v6, v7, v8, v9);
}

@end