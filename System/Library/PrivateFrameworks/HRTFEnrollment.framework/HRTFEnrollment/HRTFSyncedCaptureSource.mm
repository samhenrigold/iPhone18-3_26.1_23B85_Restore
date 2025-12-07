@interface HRTFSyncedCaptureSource
- (BOOL)_configureVideoOutputsForDevice:(id)device inSession:(id)session;
- (BOOL)_initialize;
- (BOOL)_verifyCaptureDevice:(id)device;
- (HRTFSyncedCaptureSource)initWithQueue:(id)queue options:(id *)options;
- (HRTFSyncedCaptureSourceDelegate)delegate;
- (void)_handleCaptureSessionNotification:(id)notification;
- (void)dataOutputSynchronizer:(id)synchronizer didOutputSynchronizedDataCollection:(id)collection;
- (void)startCaptureSession;
- (void)stopCaptureSession;
@end

@implementation HRTFSyncedCaptureSource

- (BOOL)_verifyCaptureDevice:(id)device
{
  v64 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  formats = [deviceCopy formats];
  v6 = [formats countByEnumeratingWithState:&v56 objects:v63 count:16];
  if (v6)
  {
    v7 = v6;
    v49 = deviceCopy;
    v50 = 0;
    v8 = 0;
    v9 = *v57;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v57 != v9)
        {
          objc_enumerationMutation(formats);
        }

        v11 = *(*(&v56 + 1) + 8 * i);
        supportedDepthDataFormats = [v11 supportedDepthDataFormats];
        v13 = [supportedDepthDataFormats count];

        if (v13)
        {
          formatDescription = [v11 formatDescription];
          if (CMFormatDescriptionGetMediaSubType(formatDescription) == self->_preferredPixelFormat)
          {
            Dimensions = CMVideoFormatDescriptionGetDimensions(formatDescription);
            v16 = Dimensions;
            if (self->_preferredColorResolutionX >= Dimensions)
            {
              v17 = HIDWORD(Dimensions);
              if (self->_preferredColorResolutionY >= HIDWORD(Dimensions) && Dimensions * HIDWORD(Dimensions) > v8)
              {
                v19 = v11;

                if (self->_preferredColorResolutionX == v16.width)
                {
                  v8 = v16.width * v16.height;
                  v50 = v19;
                  if (self->_preferredColorResolutionY == v17)
                  {
                    goto LABEL_20;
                  }
                }

                else
                {
                  v8 = v16.width * v16.height;
                  v50 = v19;
                }
              }
            }
          }
        }
      }

      v7 = [formats countByEnumeratingWithState:&v56 objects:v63 count:16];
      v19 = v50;
    }

    while (v7);
LABEL_20:

    deviceCopy = v49;
    if (v19)
    {
      v48 = v19;
      objc_storeStrong(&self->_finalColorFormat, v19);
      if (onceTokenHRTFSyncedCaptureSource != -1)
      {
        [HRTFSyncedCaptureSource _verifyCaptureDevice:];
      }

      v20 = logObjHRTFSyncedCaptureSource;
      if (os_log_type_enabled(logObjHRTFSyncedCaptureSource, OS_LOG_TYPE_INFO))
      {
        finalColorFormat = self->_finalColorFormat;
        v22 = v20;
        v23 = [(AVCaptureDeviceFormat *)finalColorFormat description];
        uTF8String = [v23 UTF8String];
        *buf = 136315138;
        v62 = uTF8String;
        _os_log_impl(&dword_250984000, v22, OS_LOG_TYPE_INFO, "capture device color format: %s", buf, 0xCu);
      }

      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      supportedDepthDataFormats2 = [v19 supportedDepthDataFormats];
      v26 = [supportedDepthDataFormats2 countByEnumeratingWithState:&v52 objects:v60 count:16];
      if (v26)
      {
        v27 = v26;
        v51 = 0;
        v28 = 0;
        v29 = *v53;
        do
        {
          for (j = 0; j != v27; ++j)
          {
            if (*v53 != v29)
            {
              objc_enumerationMutation(supportedDepthDataFormats2);
            }

            v31 = *(*(&v52 + 1) + 8 * j);
            formatDescription2 = [v31 formatDescription];
            if (CMFormatDescriptionGetMediaSubType(formatDescription2) == self->_preferredDepthFormat)
            {
              v33 = CMVideoFormatDescriptionGetDimensions(formatDescription2);
              v34 = v33;
              if (self->_preferredDepthResolutionX >= v33)
              {
                v35 = HIDWORD(v33);
                if (self->_preferredDepthResolutionY >= HIDWORD(v33) && v33 * HIDWORD(v33) > v28)
                {
                  v37 = v31;

                  if (self->_preferredDepthResolutionX == v34.width)
                  {
                    v28 = v34.width * v34.height;
                    v51 = v37;
                    if (self->_preferredDepthResolutionY == v35)
                    {
                      goto LABEL_43;
                    }
                  }

                  else
                  {
                    v28 = v34.width * v34.height;
                    v51 = v37;
                  }
                }
              }
            }
          }

          v27 = [supportedDepthDataFormats2 countByEnumeratingWithState:&v52 objects:v60 count:16];
          v37 = v51;
        }

        while (v27);
LABEL_43:

        deviceCopy = v49;
        if (v37)
        {
          objc_storeStrong(&self->_finalDepthFormat, v37);
          if (onceTokenHRTFSyncedCaptureSource != -1)
          {
            [HRTFSyncedCaptureSource _verifyCaptureDevice:];
          }

          v38 = v48;
          v39 = logObjHRTFSyncedCaptureSource;
          if (os_log_type_enabled(logObjHRTFSyncedCaptureSource, OS_LOG_TYPE_INFO))
          {
            finalDepthFormat = self->_finalDepthFormat;
            v41 = v39;
            v42 = [(AVCaptureDeviceFormat *)finalDepthFormat description];
            uTF8String2 = [v42 UTF8String];
            *buf = 136315138;
            v62 = uTF8String2;
            _os_log_impl(&dword_250984000, v41, OS_LOG_TYPE_INFO, "capture device depth format: %s", buf, 0xCu);
          }

          v44 = 1;
LABEL_61:

          goto LABEL_62;
        }
      }

      else
      {
      }

      if (onceTokenHRTFSyncedCaptureSource != -1)
      {
        [HRTFSyncedCaptureSource _verifyCaptureDevice:];
      }

      v38 = v48;
      v46 = logObjHRTFSyncedCaptureSource;
      if (os_log_type_enabled(logObjHRTFSyncedCaptureSource, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_250984000, v46, OS_LOG_TYPE_ERROR, "failed to verify depth format for capture device", buf, 2u);
      }

      v44 = 0;
      goto LABEL_61;
    }
  }

  else
  {
  }

  if (onceTokenHRTFSyncedCaptureSource != -1)
  {
    [HRTFSyncedCaptureSource _verifyCaptureDevice:];
  }

  v45 = logObjHRTFSyncedCaptureSource;
  if (os_log_type_enabled(logObjHRTFSyncedCaptureSource, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_250984000, v45, OS_LOG_TYPE_ERROR, "failed to verify color format for capture device", buf, 2u);
  }

  v44 = 0;
LABEL_62:

  return v44;
}

- (BOOL)_configureVideoOutputsForDevice:(id)device inSession:(id)session
{
  v24[1] = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  [sessionCopy beginConfiguration];
  v6 = objc_alloc_init(MEMORY[0x277CE5B60]);
  [v6 setAlwaysDiscardsLateVideoFrames:1];
  if ([sessionCopy canAddOutput:v6])
  {
    [sessionCopy addOutput:v6];
    v7 = [v6 connectionWithMediaType:*MEMORY[0x277CE5EA8]];
    v8 = v7;
    if (v7)
    {
      [v7 setCameraIntrinsicMatrixDeliveryEnabled:{objc_msgSend(v7, "isCameraIntrinsicMatrixDeliverySupported")}];
      if ([v8 isVideoOrientationSupported])
      {
        [v8 setVideoOrientation:1];
      }

      [v8 setEnabled:1];
    }
  }

  objc_storeStrong(&self->_colorDataOutput, v6);
  v9 = objc_alloc_init(MEMORY[0x277CE5AC0]);
  [v9 setFilteringEnabled:0];
  [v9 setAlwaysDiscardsLateDepthData:1];
  if ([sessionCopy canAddOutput:v9])
  {
    [sessionCopy addOutput:v9];
    v10 = [v9 connectionWithMediaType:*MEMORY[0x277CE5E60]];
    v11 = v10;
    if (v10)
    {
      if ([v10 isVideoOrientationSupported])
      {
        [v11 setVideoOrientation:1];
      }

      [v11 setEnabled:1];
    }
  }

  objc_storeStrong(&self->_depthDataOutput, v9);
  v12 = objc_alloc_init(MEMORY[0x277CE5B00]);
  if ([sessionCopy canAddOutput:v12])
  {
    [sessionCopy addOutput:v12];
    availableMetadataObjectTypes = [(AVCaptureMetadataOutput *)v12 availableMetadataObjectTypes];
    v14 = *MEMORY[0x277CE5A50];
    v15 = [availableMetadataObjectTypes containsObject:*MEMORY[0x277CE5A50]];

    if (v15)
    {
      v24[0] = v14;
      v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
      [(AVCaptureMetadataOutput *)v12 setMetadataObjectTypes:v16];
    }
  }

  metadataOutput = self->_metadataOutput;
  self->_metadataOutput = v12;
  v18 = v12;

  [sessionCopy commitConfiguration];
  v19 = objc_alloc(MEMORY[0x277CE5AB8]);
  outputs = [sessionCopy outputs];
  v21 = [v19 initWithDataOutputs:outputs];

  [(AVCaptureDataOutputSynchronizer *)v21 setDelegate:self queue:self->_queue];
  outputSynchronizer = self->_outputSynchronizer;
  self->_outputSynchronizer = v21;

  return 1;
}

- (BOOL)_initialize
{
  v49[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CE5AD0];
  v49[0] = *MEMORY[0x277CE5868];
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:1];
  v5 = [v3 discoverySessionWithDeviceTypes:v4 mediaType:*MEMORY[0x277CE5EA8] position:2];

  devices = [v5 devices];
  v7 = devices;
  if (!devices || ![devices count])
  {
    if (onceTokenHRTFSyncedCaptureSource != -1)
    {
      [HRTFSyncedCaptureSource _verifyCaptureDevice:];
    }

    v14 = logObjHRTFSyncedCaptureSource;
    if (os_log_type_enabled(logObjHRTFSyncedCaptureSource, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_250984000, v14, OS_LOG_TYPE_ERROR, "no available device found", buf, 2u);
    }

    goto LABEL_26;
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v42 objects:v48 count:16];
  if (!v9)
  {
    goto LABEL_11;
  }

  v10 = v9;
  v11 = *v43;
  while (2)
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v43 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v42 + 1) + 8 * i);
      if ([(HRTFSyncedCaptureSource *)self _verifyCaptureDevice:v13])
      {
        v15 = v13;

        if (!v15)
        {
          goto LABEL_26;
        }

        v41 = 0;
        v16 = [MEMORY[0x277CE5AD8] deviceInputWithDevice:v15 error:&v41];
        v17 = v41;
        if (v16)
        {
          v18 = v17 == 0;
        }

        else
        {
          v18 = 0;
        }

        if (!v18)
        {
          v19 = v17;
          if (onceTokenHRTFSyncedCaptureSource != -1)
          {
            [HRTFSyncedCaptureSource _verifyCaptureDevice:];
          }

          v20 = logObjHRTFSyncedCaptureSource;
          if (os_log_type_enabled(logObjHRTFSyncedCaptureSource, OS_LOG_TYPE_ERROR))
          {
            v21 = v20;
            v22 = [v19 description];
            uTF8String = [v22 UTF8String];
            *buf = 136315138;
            v47 = uTF8String;
            _os_log_impl(&dword_250984000, v21, OS_LOG_TYPE_ERROR, "failed to create input device: %s", buf, 0xCu);
          }

          v24 = 0;
          goto LABEL_48;
        }

        v26 = objc_alloc_init(MEMORY[0x277CE5B38]);
        [v26 beginConfiguration];
        if ([v26 canAddInput:v16])
        {
          [v26 addInput:v16];
          v40 = 0;
          [v15 lockForConfiguration:&v40];
          v27 = v40;
          if (v27)
          {
            v19 = v27;
            if (onceTokenHRTFSyncedCaptureSource != -1)
            {
              [HRTFSyncedCaptureSource _verifyCaptureDevice:];
            }

            v28 = logObjHRTFSyncedCaptureSource;
            if (os_log_type_enabled(logObjHRTFSyncedCaptureSource, OS_LOG_TYPE_ERROR))
            {
              v29 = v28;
              v30 = [v19 description];
              uTF8String2 = [v30 UTF8String];
              *buf = 136315138;
              v47 = uTF8String2;
              _os_log_impl(&dword_250984000, v29, OS_LOG_TYPE_ERROR, "failed to lock device for configuration: %s", buf, 0xCu);
            }

            goto LABEL_46;
          }

          [v15 setActiveFormat:self->_finalColorFormat];
          [v15 setActiveDepthDataFormat:self->_finalDepthFormat];
          [v15 unlockForConfiguration];
          v33 = [(HRTFSyncedCaptureSource *)self _configureVideoOutputsForDevice:v15 inSession:v26];
          commitConfiguration = [v26 commitConfiguration];
          if (v33)
          {
            v35 = [objc_alloc(MEMORY[0x277CE5B68]) initWithSession:v26];
            previewLayer = self->_previewLayer;
            self->_previewLayer = v35;

            objc_storeStrong(&self->_captureSession, v26);
            v38 = HRTFLogObjectForCategory_HRTFSyncedCaptureSource(v37);
            if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_250984000, v38, OS_LOG_TYPE_INFO, "successfully configured capture session", buf, 2u);
            }

            v19 = 0;
            v24 = 1;
            goto LABEL_47;
          }

          v39 = HRTFLogObjectForCategory_HRTFSyncedCaptureSource(commitConfiguration);
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_250984000, v39, OS_LOG_TYPE_ERROR, "failed to config outputs", buf, 2u);
          }
        }

        else
        {
          [v26 commitConfiguration];
          if (onceTokenHRTFSyncedCaptureSource != -1)
          {
            [HRTFSyncedCaptureSource _verifyCaptureDevice:];
          }

          v32 = logObjHRTFSyncedCaptureSource;
          if (os_log_type_enabled(logObjHRTFSyncedCaptureSource, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_250984000, v32, OS_LOG_TYPE_ERROR, "input device not usable", buf, 2u);
          }
        }

        v19 = 0;
LABEL_46:
        v24 = 0;
LABEL_47:

LABEL_48:
        goto LABEL_27;
      }
    }

    v10 = [v8 countByEnumeratingWithState:&v42 objects:v48 count:16];
    if (v10)
    {
      continue;
    }

    break;
  }

LABEL_11:

LABEL_26:
  v24 = 0;
LABEL_27:

  return v24;
}

- (HRTFSyncedCaptureSource)initWithQueue:(id)queue options:(id *)options
{
  queueCopy = queue;
  v11.receiver = self;
  v11.super_class = HRTFSyncedCaptureSource;
  v8 = [(HRTFSyncedCaptureSource *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_queue, queue);
    v9->_preferredPixelFormat = options->var0;
    v9->_preferredDepthFormat = options->var1;
    v9->_preferredColorResolutionX = options->var2;
    v9->_preferredColorResolutionY = options->var3;
    v9->_preferredDepthResolutionX = options->var4;
    v9->_preferredDepthResolutionY = options->var5;
    if (![(HRTFSyncedCaptureSource *)v9 _initialize])
    {

      v9 = 0;
    }
  }

  return v9;
}

- (void)dataOutputSynchronizer:(id)synchronizer didOutputSynchronizedDataCollection:(id)collection
{
  v35 = *MEMORY[0x277D85DE8];
  collectionCopy = collection;
  v6 = [collectionCopy objectForKeyedSubscript:self->_colorDataOutput];
  v7 = [collectionCopy objectForKeyedSubscript:self->_depthDataOutput];
  v8 = [collectionCopy objectForKeyedSubscript:self->_metadataOutput];
  v9 = v8;
  if (v6)
  {
    v10 = v7 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    if (v8 && ([v8 metadataObjects], (v11 = objc_claimAutoreleasedReturnValue()) != 0) && (v12 = v11, objc_msgSend(v9, "metadataObjects"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "count"), v13, v12, v14))
    {
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      metadataObjects = [v9 metadataObjects];
      v16 = [metadataObjects countByEnumeratingWithState:&v28 objects:v34 count:16];
      if (v16)
      {
        v27 = v6;
        v17 = *v29;
        while (2)
        {
          for (i = 0; i != v16; i = i + 1)
          {
            if (*v29 != v17)
            {
              objc_enumerationMutation(metadataObjects);
            }

            v19 = *(*(&v28 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              colorDataOutput = self->_colorDataOutput;
              v21 = *MEMORY[0x277CE5EA8];
              v22 = v19;
              v23 = [(AVCaptureVideoDataOutput *)colorDataOutput connectionWithMediaType:v21];
              v16 = [(AVCaptureVideoDataOutput *)self->_colorDataOutput transformedMetadataObjectForMetadataObject:v22 connection:v23];

              goto LABEL_19;
            }
          }

          v16 = [metadataObjects countByEnumeratingWithState:&v28 objects:v34 count:16];
          if (v16)
          {
            continue;
          }

          break;
        }

LABEL_19:
        v6 = v27;
      }
    }

    else
    {
      v16 = 0;
    }

    if (onceTokenHRTFSyncedCaptureSource != -1)
    {
      [HRTFSyncedCaptureSource _verifyCaptureDevice:];
    }

    v24 = logObjHRTFSyncedCaptureSource;
    if (os_log_type_enabled(logObjHRTFSyncedCaptureSource, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      v33 = v16 != 0;
      _os_log_impl(&dword_250984000, v24, OS_LOG_TYPE_DEBUG, "received synced output frame, has face object: %u", buf, 8u);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);

    if (WeakRetained)
    {
      v26 = objc_loadWeakRetained(&self->_delegate);
      [v26 didReceiveVideoData:self->_previewLayer colorData:v6 depthData:v7 faceObject:v16];
    }
  }
}

- (void)_handleCaptureSessionNotification:(id)notification
{
  v18 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  name = [notificationCopy name];
  v6 = [name isEqualToString:*MEMORY[0x277CE5930]];

  if (v6)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);

    if (WeakRetained)
    {
      v8 = objc_loadWeakRetained(&self->_delegate);
      [v8 didStartCaptureSessionWithError:0];
    }
  }

  else
  {
    name2 = [notificationCopy name];
    v10 = [name2 isEqualToString:*MEMORY[0x277CE59C0]];

    if (v10)
    {
      userInfo = [notificationCopy userInfo];
      v12 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CE5940]];

      if (onceTokenHRTFSyncedCaptureSource != -1)
      {
        HRTFLogObjectForCategory_HRTFSyncedCaptureSource_cold_1();
      }

      v13 = logObjHRTFSyncedCaptureSource;
      if (os_log_type_enabled(logObjHRTFSyncedCaptureSource, OS_LOG_TYPE_INFO))
      {
        v16 = 138412290;
        v17 = v12;
        _os_log_impl(&dword_250984000, v13, OS_LOG_TYPE_INFO, "received AVCaptureSessionRuntimeErrorNotification: %@", &v16, 0xCu);
      }

      if (v12)
      {
        v14 = objc_loadWeakRetained(&self->_delegate);

        if (v14)
        {
          v15 = objc_loadWeakRetained(&self->_delegate);
          [v15 didStartCaptureSessionWithError:v12];
        }
      }
    }
  }
}

- (void)startCaptureSession
{
  if (onceTokenHRTFSyncedCaptureSource != -1)
  {
    HRTFLogObjectForCategory_HRTFSyncedCaptureSource_cold_1();
  }

  v3 = logObjHRTFSyncedCaptureSource;
  if (os_log_type_enabled(logObjHRTFSyncedCaptureSource, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_250984000, v3, OS_LOG_TYPE_INFO, "starting capture session\n", v6, 2u);
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__handleCaptureSessionNotification_ name:*MEMORY[0x277CE5930] object:self->_captureSession];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel__handleCaptureSessionNotification_ name:*MEMORY[0x277CE59C0] object:self->_captureSession];

  [(AVCaptureSession *)self->_captureSession startRunning];
}

- (void)stopCaptureSession
{
  if ([(AVCaptureSession *)self->_captureSession isRunning])
  {
    if (onceTokenHRTFSyncedCaptureSource != -1)
    {
      HRTFLogObjectForCategory_HRTFSyncedCaptureSource_cold_1();
    }

    v3 = logObjHRTFSyncedCaptureSource;
    if (os_log_type_enabled(logObjHRTFSyncedCaptureSource, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_250984000, v3, OS_LOG_TYPE_INFO, "stopping capture session\n", v6, 2u);
    }

    [(AVCaptureSession *)self->_captureSession stopRunning];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter removeObserver:self name:*MEMORY[0x277CE5930] object:self->_captureSession];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 removeObserver:self name:*MEMORY[0x277CE59C0] object:self->_captureSession];
  }
}

- (HRTFSyncedCaptureSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end