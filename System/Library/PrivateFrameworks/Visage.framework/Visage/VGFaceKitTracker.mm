@interface VGFaceKitTracker
- (BOOL)processWithCaptureData:(id)data callback:(id)callback;
- (VGFaceKitTracker)initWithOptions:(const VGFaceKitTrackerOptions *)options;
- (id)buildInputDictionaryWithCaptureData:(id)data callback:(id)callback;
- (void)dealloc;
@end

@implementation VGFaceKitTracker

- (VGFaceKitTracker)initWithOptions:(const VGFaceKitTrackerOptions *)options
{
  v15 = *MEMORY[0x277D85DE8];
  v12.receiver = self;
  v12.super_class = VGFaceKitTracker;
  v4 = [(VGFaceKitTracker *)&v12 init];
  v5 = v4;
  if (v4)
  {
    v4->_options = *options;
    v6 = objc_opt_new();
    [v6 setObject:&unk_2880F5EC0 forKeyedSubscript:*MEMORY[0x277CECEA0]];
    [v6 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277CECF00]];
    if (v5->_options.useInternalFaceDetector)
    {
      [v6 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277CECEF8]];
    }

    if (v5->_options.forceCPU)
    {
      [v6 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277CECE70]];
    }

    v7 = CVAFaceTrackingCreate();
    v8 = v7;
    if (v7)
    {
      v9 = __VGLogSharedInstance(v7);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v14 = v8;
        _os_log_impl(&dword_270F06000, v9, OS_LOG_TYPE_ERROR, " Error initializing FaceKit: %d ", buf, 8u);
      }
    }

    else if ([(VGFaceKitTracker *)v5 loadFaceKitSemantics]&& [(VGFaceKitTracker *)v5 loadQuadFaceKitSemantics])
    {
      v10 = v5;
LABEL_15:

      goto LABEL_16;
    }

    v10 = 0;
    goto LABEL_15;
  }

  v10 = 0;
LABEL_16:

  return v10;
}

- (void)dealloc
{
  faceKit = self->_faceKit;
  if (faceKit)
  {
    CFRelease(faceKit);
    self->_faceKit = 0;
  }

  semantics = self->_semantics;
  if (semantics)
  {
    CFRelease(semantics);
    self->_semantics = 0;
  }

  quadSemantics = self->_quadSemantics;
  if (quadSemantics)
  {
    CFRelease(quadSemantics);
    self->_quadSemantics = 0;
  }

  v6.receiver = self;
  v6.super_class = VGFaceKitTracker;
  [(VGFaceKitTracker *)&v6 dealloc];
}

- (id)buildInputDictionaryWithCaptureData:(id)data callback:(id)callback
{
  v58[2] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  callbackCopy = callback;
  v57[0] = *MEMORY[0x277CECEA8];
  v7 = [MEMORY[0x277CBEA60] vg_arrayWithRowMajorNumbersFromFloat3x3:{*MEMORY[0x277D860B0], *(MEMORY[0x277D860B0] + 16), *(MEMORY[0x277D860B0] + 32)}];
  v57[1] = *MEMORY[0x277CECEE8];
  v58[0] = v7;
  v58[1] = &unk_2880F5D58;
  v45 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v58 forKeys:v57 count:2];

  v54 = *MEMORY[0x277CECE88];
  v8 = v54;
  v9 = MEMORY[0x277CBEA60];
  [dataCopy videoIntrinsics];
  v10 = [v9 vg_arrayWithRowMajorNumbersFromFloat3x3:?];
  v55 = *MEMORY[0x277CECE58];
  v11 = v55;
  v56[0] = v10;
  v56[1] = v45;
  v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:&v54 count:2];

  v52[0] = v8;
  v12 = MEMORY[0x277CBEA60];
  [dataCopy depthIntrinsics];
  v13 = [v12 vg_arrayWithRowMajorNumbersFromFloat3x3:?];
  v52[1] = v11;
  v53[0] = v13;
  v53[1] = v45;
  v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:v52 count:2];

  if (self->_options.useInternalFaceDetector)
  {
    faceID = 0;
    v15 = 0.0;
    v16 = 0.0;
    v17 = 0.0;
    v18 = 0.0;
  }

  else
  {
    face = [dataCopy face];
    [face bounds];
    v18 = v20;
    v17 = v21;
    v15 = v22;
    v16 = v23;

    face2 = [dataCopy face];
    faceID = [face2 faceID];
  }

  v60.origin.x = v18;
  v60.origin.y = v17;
  v60.size.width = v15;
  v60.size.height = v16;
  DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v60);
  v50[0] = *MEMORY[0x277CECEC8];
  if (dataCopy)
  {
    objc_msgSend_timestamp(dataCopy);
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  v26 = CMTimeCopyAsDictionary(&time, 0);
  v27 = *MEMORY[0x277CECDC0];
  v51[0] = v26;
  v51[1] = v43;
  v28 = *MEMORY[0x277CECDD0];
  v50[1] = v27;
  v50[2] = v28;
  yuvRectified = [dataCopy yuvRectified];
  v30 = *MEMORY[0x277CECDC8];
  v51[2] = yuvRectified;
  v51[3] = v42;
  v31 = *MEMORY[0x277CECDE8];
  v50[3] = v30;
  v50[4] = v31;
  depth = [dataCopy depth];
  v33 = *MEMORY[0x277CECE08];
  v51[4] = depth;
  v51[5] = &unk_2880F5CC8;
  v34 = *MEMORY[0x277CECE68];
  v35 = MEMORY[0x277CBEC38];
  v50[5] = v33;
  v50[6] = v34;
  v51[6] = MEMORY[0x277CBEC38];
  v50[7] = *MEMORY[0x277CECDB8];
  v36 = MEMORY[0x2743B9AA0](callbackCopy);
  v51[7] = v36;
  v50[8] = *MEMORY[0x277CECE30];
  v47[0] = *MEMORY[0x277CECE18];
  v37 = [MEMORY[0x277CCABB0] numberWithInteger:faceID];
  v47[1] = *MEMORY[0x277CECE28];
  v48[0] = v37;
  v48[1] = DictionaryRepresentation;
  v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:v47 count:2];
  v49 = v38;
  v39 = [MEMORY[0x277CBEA60] arrayWithObjects:&v49 count:1];
  v50[9] = *MEMORY[0x277CECD98];
  v51[8] = v39;
  v51[9] = v35;
  v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v51 forKeys:v50 count:10];

  return v40;
}

- (BOOL)processWithCaptureData:(id)data callback:(id)callback
{
  v19 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  callbackCopy = callback;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __52__VGFaceKitTracker_processWithCaptureData_callback___block_invoke;
  v15[3] = &unk_279E28E58;
  v8 = callbackCopy;
  v16 = v8;
  v9 = MEMORY[0x2743B9AA0](v15);
  v10 = [(VGFaceKitTracker *)self buildInputDictionaryWithCaptureData:dataCopy callback:v9];
  v11 = CVAFaceTrackingProcess();
  v12 = v11;
  if (v11)
  {
    v13 = __VGLogSharedInstance(v11);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v18 = v12;
      _os_log_impl(&dword_270F06000, v13, OS_LOG_TYPE_ERROR, " Error running face kit: %d ", buf, 8u);
    }
  }

  return v12 == 0;
}

@end