@interface VGHRTFPostProcessor
- (VGHRTFPostProcessor)initWithConfig:(id)config error:(id *)error;
- (id)processCaptureUpdateData:(id)data error:(id *)error;
@end

@implementation VGHRTFPostProcessor

- (VGHRTFPostProcessor)initWithConfig:(id)config error:(id *)error
{
  v45[2] = *MEMORY[0x277D85DE8];
  configCopy = config;
  v42.receiver = self;
  v42.super_class = VGHRTFPostProcessor;
  v7 = [(VGHRTFPostProcessor *)&v42 init];
  if (v7)
  {
    version = [configCopy version];
    version = v7->_version;
    v7->_version = version;

    debugDataRootPath = [configCopy debugDataRootPath];
    debugPath = v7->_debugPath;
    v7->_debugPath = debugDataRootPath;

    v12 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.visage"];
    v13 = [v12 BOOLForKey:@"useLocalHRTFModels"];
    if (v13)
    {
      v14 = __VGLogSharedInstance(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_270F06000, v14, OS_LOG_TYPE_INFO, " Using hrtf models from the Visage framework ", buf, 2u);
      }

      vg_bundle = [MEMORY[0x277CCA8D8] vg_bundle];
      resourcePath = [vg_bundle resourcePath];
      modelsRootPath = v7->_modelsRootPath;
      v7->_modelsRootPath = resourcePath;
    }

    else
    {
      modelsRootPath = [configCopy modelsRootPath];
      v20 = modelsRootPath == 0;

      if (v20)
      {
        v31 = __VGLogSharedInstance(v21);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_270F06000, v31, OS_LOG_TYPE_ERROR, " No hrtf models root path received! ", buf, 2u);
        }

        vg::hrtf::setError(error, @"Failed to initialize VGHRTFPostProcessor with nil models path");
        goto LABEL_22;
      }

      v22 = MEMORY[0x277CCACA8];
      vg_bundle = [configCopy modelsRootPath];
      v45[0] = vg_bundle;
      v45[1] = @"HRTFModels";
      modelsRootPath = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:2];
      v23 = [v22 pathWithComponents:modelsRootPath];
      v24 = v7->_modelsRootPath;
      v7->_modelsRootPath = v23;
    }

    v26 = __VGLogSharedInstance(v25);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = v7->_modelsRootPath;
      *buf = 138412290;
      v44 = v27;
      _os_log_impl(&dword_270F06000, v26, OS_LOG_TYPE_INFO, " Using HRTFModels at path: %@ ", buf, 0xCu);
    }

    writeDebugData = [configCopy writeDebugData];
    if (!writeDebugData)
    {
      goto LABEL_16;
    }

    if (v7->_debugPath)
    {
LABEL_13:
      v29 = __VGLogSharedInstance(writeDebugData);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        v30 = v7->_debugPath;
        *buf = 138412290;
        v44 = v30;
        _os_log_impl(&dword_270F06000, v29, OS_LOG_TYPE_DEBUG, " Using dump path for HRTF post processor data: %@ ", buf, 0xCu);
      }

LABEL_16:
      v7->_finished = 0;
      v18 = v7;
LABEL_23:

      goto LABEL_24;
    }

    v32 = objc_opt_new();
    [v32 setDateFormat:@"yyyyMMdd_HHmmss_SSS"];
    date = [MEMORY[0x277CBEAA8] date];
    v34 = [v32 stringFromDate:date];

    v35 = [@"/private/var/mobile/Library/Caches/VisageTestApp/HRTF/" stringByAppendingPathComponent:v34];
    v36 = v7->_debugPath;
    v7->_debugPath = v35;

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v38 = v7->_debugPath;
    v41 = 0;
    [defaultManager createDirectoryAtPath:v38 withIntermediateDirectories:1 attributes:0 error:&v41];
    v39 = v41;

    if (!v39)
    {

      goto LABEL_13;
    }

    vg::hrtf::setError(error, @"Failed to create debug path.");

LABEL_22:
    v18 = 0;
    goto LABEL_23;
  }

  vg::hrtf::setError(error, @"Failed to initialize VGHRTFPostProcessor.");
  v18 = 0;
LABEL_24:

  return v18;
}

- (id)processCaptureUpdateData:(id)data error:(id *)error
{
  v94 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v4 = __VGLogSharedInstance(dataCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_270F06000, v4, OS_LOG_TYPE_DEBUG, " Started HRTF model processing... ", buf, 2u);
  }

  initEmpty = [[VGHRTFPostProcessUpdateData alloc] initEmpty];
  [initEmpty setState:0];
  std::string::basic_string[abi:ne200100]<0>(buf, -[NSString UTF8String](self->_modelsRootPath, "UTF8String"));
  vg::hrtf::HRTFModel::create(buf, &v85);
  if (SBYTE7(v81[0]) < 0)
  {
    operator delete(*buf);
  }

  if (!v85)
  {
    v39 = @"Failed to create HRTFModel.";
LABEL_33:
    vg::hrtf::setError(error, v39);
    v66 = 0;
    goto LABEL_34;
  }

  faceCaptureUpdateData = [dataCopy faceCaptureUpdateData];
  if (!faceCaptureUpdateData)
  {
    v39 = @"Face capture update data unavailable.";
    goto LABEL_33;
  }

  v71 = initEmpty;
  faceCaptureUpdateData2 = [dataCopy faceCaptureUpdateData];
  result = [faceCaptureUpdateData2 result];
  v9 = result == 0;

  if (v9)
  {
    v39 = @"Face capture update data unavailable.";
LABEL_32:
    initEmpty = v71;
    goto LABEL_33;
  }

  initEmpty = v71;
  earCaptureUpdateData = [dataCopy earCaptureUpdateData];
  if (!earCaptureUpdateData)
  {
    v39 = @"Ear capture update data unavailable.";
    goto LABEL_33;
  }

  earCaptureUpdateData2 = [dataCopy earCaptureUpdateData];
  result2 = [earCaptureUpdateData2 result];
  v13 = result2 == 0;

  if (v13)
  {
    v39 = @"Ear capture update data unavailable.";
    goto LABEL_32;
  }

  *__p = 0u;
  v84 = 0u;
  v82 = 0u;
  *buf = 0u;
  memset(v81, 0, sizeof(v81));
  faceCaptureUpdateData3 = [dataCopy faceCaptureUpdateData];
  result3 = [faceCaptureUpdateData3 result];

  for (i = 0; i < [result3 count]; ++i)
  {
    v79 = [result3 objectAtIndexedSubscript:i];
    *&v87 = [v79 rgbImage];
    v16 = [result3 objectAtIndexedSubscript:i];
    *(&v87 + 1) = [v16 depthImage];
    v17 = [result3 objectAtIndexedSubscript:i];
    [v17 depthIntrinsics];
    v19 = v18;
    HIDWORD(v19) = v78;
    HIDWORD(v20) = v77;
    HIDWORD(v21) = v76;
    v88 = v19;
    v89 = v20;
    v90 = v21;
    v22 = [result3 objectAtIndexedSubscript:i];
    landmarks = [v22 landmarks];
    v24 = [landmarks count];
    v25 = (((4 * v24) & 0x3FFFFFFF8) + 31) & 0x7FFFFFFE0;
    v91 = 0;
    v92 = v25 >> 2;
    memptr[0] = 0;
    malloc_type_posix_memalign(memptr, 0x20uLL, v25, 0xE1AC2527uLL);
    v26 = memptr[0];
    v91 = memptr[0];
    v93 = v24 >> 1;
    if (v93)
    {
      v27 = 0;
      v28 = v24 & 0x1FFFFFFFELL;
      do
      {
        v29 = [landmarks objectAtIndexedSubscript:v27];
        [v29 floatValue];
        v26[v27] = v30;

        v31 = [landmarks objectAtIndexedSubscript:(v27 + 1)];
        [v31 floatValue];
        v26[(v27 + 1)] = v32;

        v27 += 2;
      }

      while (v28 != v27);
    }

    v33 = *&buf[8];
    if (*&buf[8] >= *&v81[0])
    {
      v38 = std::vector<vg::hrtf::FaceFrameData>::__emplace_back_slow_path<vg::hrtf::FaceFrameData>(buf, &v87);
      v34 = v91;
    }

    else
    {
      v34 = 0;
      v35 = v87;
      v87 = 0u;
      **&buf[8] = v35;
      v36 = v89;
      v37 = v90;
      *(v33 + 16) = v88;
      *(v33 + 32) = v36;
      *(v33 + 48) = v37;
      *(v33 + 64) = 0u;
      *(v33 + 64) = v91;
      *(v33 + 72) = v92;
      *(v33 + 80) = v93;
      v91 = 0;
      v92 = 0;
      v93 = 0;
      v38 = v33 + 96;
    }

    *&buf[8] = v38;
    free(v34);
  }

  earCaptureUpdateData3 = [dataCopy earCaptureUpdateData];
  result4 = [earCaptureUpdateData3 result];
  leftEarFrames = [result4 leftEarFrames];

  earCaptureUpdateData4 = [dataCopy earCaptureUpdateData];
  result5 = [earCaptureUpdateData4 result];
  rightEarFrames = [result5 rightEarFrames];

  for (j = 0; j < [leftEarFrames count]; ++j)
  {
    v47 = [leftEarFrames objectAtIndexedSubscript:j];
    *&v87 = [v47 rgbImage];
    v48 = [leftEarFrames objectAtIndexedSubscript:j];
    *(&v87 + 1) = [v48 depthImage];
    v49 = [leftEarFrames objectAtIndexedSubscript:j];
    [v49 earBox];
    v88 = v50;
    std::vector<vg::hrtf::EarFrameData>::push_back[abi:ne200100](v81 + 8, &v87, v51, v52, v53, v54);
  }

  for (k = 0; k < [rightEarFrames count]; ++k)
  {
    v56 = [rightEarFrames objectAtIndexedSubscript:k];
    *&v87 = [v56 rgbImage];
    v57 = [rightEarFrames objectAtIndexedSubscript:k];
    *(&v87 + 1) = [v57 depthImage];
    v58 = [rightEarFrames objectAtIndexedSubscript:k];
    [v58 earBox];
    v88 = v59;
    std::vector<vg::hrtf::EarFrameData>::push_back[abi:ne200100](&v82, &v87, v60, v61, v62, v63);
  }

  version = self->_version;
  if (version)
  {
    uTF8String = [(NSString *)version UTF8String];
  }

  else
  {
    uTF8String = "";
  }

  std::string::__assign_external(&__p[1], uTF8String);
  LOBYTE(v87) = 0;
  BYTE8(v88) = 0;
  debugPath = self->_debugPath;
  if (debugPath)
  {
    memptr[0] = [(NSString *)debugPath UTF8String];
    std::optional<std::string>::operator=[abi:ne200100]<char const*,void>(&v87, memptr);
  }

  v69 = vg::hrtf::HRTFModel::predict(v85, buf, &v87);
  if (v69)
  {
    [v71 setState:1];
    v70 = __VGLogSharedInstance([v71 setResult:v69]);
    if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(memptr[0]) = 0;
      _os_log_impl(&dword_270F06000, v70, OS_LOG_TYPE_DEBUG, " Successfully finished HRTF model processing ", memptr, 2u);
    }

    self->_finished = 1;
    v66 = v71;
  }

  else
  {
    vg::hrtf::setError(error, @"Failed to predict HRTF results.");
    v66 = 0;
  }

  if (BYTE8(v88) == 1 && SBYTE7(v88) < 0)
  {
    operator delete(v87);
  }

  if (SHIBYTE(v84) < 0)
  {
    operator delete(__p[1]);
  }

  *&v87 = &v82;
  std::vector<vg::hrtf::EarFrameData>::__destroy_vector::operator()[abi:ne200100](&v87);
  *&v87 = v81 + 8;
  std::vector<vg::hrtf::EarFrameData>::__destroy_vector::operator()[abi:ne200100](&v87);
  *&v87 = buf;
  std::vector<vg::hrtf::FaceFrameData>::__destroy_vector::operator()[abi:ne200100](&v87);
  initEmpty = v71;
LABEL_34:
  std::unique_ptr<vg::hrtf::HRTFModel>::~unique_ptr[abi:ne200100](&v85);

  return v66;
}

@end