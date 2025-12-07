@interface MIOWriterInterface
+ (BOOL)getSWToWExtrinsics:(id *)extrinsics;
- (BOOL)preProcessPixelBuffer:(__CVBuffer *)buffer streamID:(id)d;
- (BOOL)processCVADepthIR:(id)r;
- (BOOL)processPixelBuffer:(__CVBuffer *)buffer withTimeStamp:(id *)stamp beforeAppend:(id)append streamID:(id)d;
- (BOOL)processPixelBuffer:(__CVBuffer *)buffer withTimeStamp:(id *)stamp intrinsics:(id *)intrinsics exposureTime:(double)time streamID:(id)d;
- (BOOL)receivedAllFramesForStreams:(id)streams;
- (BOOL)setTrackMetadata:(id)metadata forMetadataStream:(id)stream;
- (MIOWriterInterface)initWithFileURL:(id)l expectedFrameRate:(double)rate fileSummary:(id)summary;
- (MIOWriterInterface)initWithFileURL:(id)l expectedFrameRate:(double)rate fileSummary:(id)summary callbackQueue:(id)queue;
- (MIOWriterInterfaceDelegate)interface_delegate;
- (__CVBuffer)getFirstBufferForStream:(id)stream withTimestamp:(id *)timestamp;
- (id)addCVADepthIRTrackWithDimensions:(id)dimensions;
- (id)addDefaultSummary;
- (id)addVideoTrack:(opaqueCMFormatDescription *)track streamID:(id)d encoding:(id)encoding;
- (id)arrayFrom3x3Matrix:(id *)matrix;
- (id)createFileMetadata;
- (id)getSuggestedEncodingOptionsForFormat:(opaqueCMFormatDescription *)format streamID:(id)d;
- (id)registerALS:(int64_t *)s;
- (id)registerAccelerometer:(int64_t *)accelerometer;
- (id)registerBLE:(int64_t *)e;
- (id)registerCVAFeatureBuffer;
- (id)registerCVAFeatureBuffer:(id)buffer compress:(BOOL)compress;
- (id)registerCompass:(int64_t *)compass;
- (id)registerDeviceMotion:(int64_t *)motion;
- (id)registerGyro:(int64_t *)gyro;
- (id)registerLocation:(int64_t *)location;
- (id)registerMetadataID:(id)d;
- (id)registerMetadataID:(id)d maxBufferSize:(unint64_t)size;
- (id)registerMotion:(int64_t *)motion;
- (id)registerSpuIMU:(int64_t *)u version:(int64_t)version;
- (id)registerUWB:(int64_t *)b;
- (id)registerWiFi:(int64_t *)fi;
- (void)addFirstBufferForStream:(id)stream buffer:(__CVBuffer *)buffer withTimestamp:(id *)timestamp;
- (void)addFrameMetadata:(id)metadata streamID:(id)d;
- (void)addFrameMetadata:(id)metadata value:(id)value streamID:(id)d;
- (void)addJasperExtrinsics:(id)extrinsics;
- (void)addMovieMetadataData:(id)data rawValue:(id)value;
- (void)addMovieMetadataDictionary:(id)dictionary value:(id)value;
- (void)addMovieMetadataItem:(id)item;
- (void)addSWToWExtrinsics:(id)extrinsics;
- (void)appendAllMetadataWithTimeStamp:(id *)stamp;
- (void)appendMetadata:(id)metadata metadataID:(id)d timestamp:(double)timestamp enforceMonotonicity:(BOOL)monotonicity;
- (void)clearAllMetadataBuffers;
- (void)clearFirstBufferForStream:(id)stream;
- (void)finishWriting;
- (void)intelligentlyAppendBuffersForStreams:(id)streams;
- (void)prepareWriter;
- (void)processALSData:(id)data location:(int64_t *)location;
- (void)processAccelerometerData:(id)data andAdditionalData:(id)additionalData location:(int64_t *)location;
- (void)processBLEData:(id)data location:(int64_t *)location;
- (void)processBarometerData:(id)data;
- (void)processCMData:(id)data;
- (void)processCVACameraCalibrationData:(id)data;
- (void)processCVADepthTOF:(id)f;
- (void)processCVAFeatureBuffer:(__CVBuffer *)buffer timestamp:(double)timestamp syncTimestamp:(unint64_t)syncTimestamp frameId:(unint64_t)id streamName:(id)name;
- (void)processCVAFeatureBuffer:(id)buffer;
- (void)processCVAPRDevice:(id)device;
- (void)processCVATimedValue:(id)value;
- (void)processCVAUserEvent:(id)event;
- (void)processClass:(id)class andAdditionalData:(id)data metadataID:(id)d;
- (void)processClass:(id)class andAdditionalData:(id)data metadataID:(id)d timestamp:(double)timestamp;
- (void)processCompassData:(id)data location:(int64_t *)location;
- (void)processCoreLocationData:(id)data timestamp:(double)timestamp andAdditionalData:(id)additionalData location:(int64_t *)location;
- (void)processDeviceMotionData:(id)data andAdditionalData:(id)additionalData location:(int64_t *)location;
- (void)processDeviceMotionData:(id)data location:(int64_t *)location;
- (void)processFastPathIMUData:(id)data location:(int64_t *)location;
- (void)processFastPathIMUData:(id)data location:(int64_t *)location metadataID:(id)d;
- (void)processGyroscopeData:(id)data andAdditionalData:(id)additionalData location:(int64_t *)location;
- (void)processMotionData:(id)data location:(int64_t *)location;
- (void)processNSCoderObject:(id)object metadataID:(id)d;
- (void)processNSCoderObject:(id)object metadataID:(id)d timestamp:(double)timestamp;
- (void)processSpuIMUData:(id)data location:(int64_t *)location;
- (void)processUWBData:(id)data location:(int64_t *)location;
- (void)processWiFiData:(id)data location:(int64_t *)location;
- (void)registerCVADepthIR;
- (void)registerStreamID:(id)d withConfigObject:(id)object;
- (void)setMetadataAttachmentTo:(__CVBuffer *)to streamID:(id)d;
- (void)writerDidFailWithError:(id)error;
- (void)writerEncounteredAnError:(id)error;
@end

@implementation MIOWriterInterface

- (MIOWriterInterface)initWithFileURL:(id)l expectedFrameRate:(double)rate fileSummary:(id)summary callbackQueue:(id)queue
{
  v67 = *MEMORY[0x277D85DE8];
  lCopy = l;
  summaryCopy = summary;
  queueCopy = queue;
  if (+[AppleCV3DMOVKitLog debugEnabled])
  {
    v13 = +[AppleCV3DMOVKitLog defaultLog];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *buf.sysname = 0;
      _os_log_impl(&dword_24016D000, v13, OS_LOG_TYPE_DEBUG, "[MIOWriterInterface] initWithFileURL", &buf, 2u);
    }
  }

  path = [lCopy path];
  v64.receiver = self;
  v64.super_class = MIOWriterInterface;
  v65 = 0;
  v15 = [(MIOWriter *)&v64 initWithFilePath:path error:&v65];
  v16 = v65;

  if (v15)
  {
    v15[248] = 0;
    v17 = objc_opt_new();
    v18 = *(v15 + 29);
    *(v15 + 29) = v17;

    v19 = *(v15 + 30);
    *(v15 + 30) = 0;

    v20 = objc_opt_new();
    v21 = *(v15 + 39);
    *(v15 + 39) = v20;

    v22 = objc_opt_new();
    v23 = *(v15 + 33);
    *(v15 + 33) = v22;

    v24 = objc_opt_new();
    v25 = *(v15 + 34);
    *(v15 + 34) = v24;

    v26 = objc_opt_new();
    v27 = *(v15 + 35);
    *(v15 + 35) = v26;

    v28 = objc_opt_new();
    v29 = *(v15 + 36);
    *(v15 + 36) = v28;

    v30 = objc_opt_new();
    v31 = *(v15 + 68);
    *(v15 + 68) = v30;

    v32 = objc_opt_new();
    v33 = *(v15 + 32);
    *(v15 + 32) = v32;

    v34 = objc_opt_new();
    v35 = *(v15 + 38);
    *(v15 + 38) = v34;

    v36 = objc_opt_new();
    v37 = *(v15 + 37);
    *(v15 + 37) = v36;

    v38 = MEMORY[0x277CC0898];
    *(v15 + 328) = *MEMORY[0x277CC0898];
    *(v15 + 43) = *(v38 + 16);
    *(v15 + 70) = 0;
    objc_storeStrong(v15 + 55, @"com.apple.reality.kind.data.imu800");
    objc_storeStrong(v15 + 56, @"com.apple.reality.kind.data.accelerometer");
    objc_storeStrong(v15 + 57, @"com.apple.reality.kind.data.gyroscope");
    objc_storeStrong(v15 + 58, @"com.apple.reality.kind.data.motion");
    objc_storeStrong(v15 + 59, @"com.apple.reality.kind.data.devicemotion");
    objc_storeStrong(v15 + 60, @"Location");
    objc_storeStrong(v15 + 61, @"com.apple.reality.kind.data.als");
    objc_storeStrong(v15 + 62, @"com.apple.reality.kind.data.wifi");
    objc_storeStrong(v15 + 63, @"com.apple.reality.kind.data.uwb");
    objc_storeStrong(v15 + 64, @"com.apple.reality.kind.data.ble");
    objc_storeStrong(v15 + 65, @"com.apple.reality.kind.data.barometer");
    objc_storeStrong(v15 + 66, @"com.apple.reality.kind.data.compass");
    objc_storeStrong(v15 + 67, @"com.apple.reality.kind.data.zcam_tof_pc");
    memset(&buf, 0, 512);
    uname(&buf);
    v39 = [MEMORY[0x277CCACA8] stringWithUTF8String:buf.machine];
    v40 = *(v15 + 50);
    *(v15 + 50) = v39;

    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    infoDictionary = [mainBundle infoDictionary];
    v43 = [infoDictionary objectForKey:@"CFBundleVersion"];
    v44 = *(v15 + 48);
    *(v15 + 48) = v43;

    mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier = [mainBundle2 bundleIdentifier];
    v47 = *(v15 + 47);
    *(v15 + 47) = bundleIdentifier;

    v62 = 0uLL;
    v63 = 0;
    processInfo = [MEMORY[0x277CCAC38] processInfo];
    v49 = processInfo;
    if (processInfo)
    {
      objc_msgSend_operatingSystemVersion(processInfo);
    }

    else
    {
      v62 = 0uLL;
      v63 = 0;
    }

    v50 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu.%lu.%lu", v62, v63];
    v51 = *(v15 + 53);
    *(v15 + 53) = v50;

    v52 = MEMORY[0x277CBEAC0];
    v53 = [MEMORY[0x277CBEBC0] fileURLWithPath:@"/System/Library/CoreServices/SystemVersion.plist"];
    v54 = [v52 dictionaryWithContentsOfURL:v53 error:0];

    if (v54)
    {
      v55 = [v54 objectForKeyedSubscript:@"ProductBuildVersion"];
      v56 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ (%@)", *(v15 + 53), v55];
      v57 = *(v15 + 53);
      *(v15 + 53) = v56;
    }

    objc_storeStrong(v15 + 40, summary);
    [v15 setWarningHandler:&unk_28521AB68];
    objc_initWeak(&location, v15);
    v59[0] = MEMORY[0x277D85DD0];
    v59[1] = 3221225472;
    v59[2] = sub_240182B20;
    v59[3] = &unk_278C9B130;
    objc_copyWeak(&v60, &location);
    [v15 setFailHandler:v59];
    [v15 setRealTime:1];
    [v15 setDefaultFrameRate:rate];
    [v15 setBufferCacheMode:256];
    objc_destroyWeak(&v60);
    objc_destroyWeak(&location);
  }

  return v15;
}

- (MIOWriterInterface)initWithFileURL:(id)l expectedFrameRate:(double)rate fileSummary:(id)summary
{
  summaryCopy = summary;
  lCopy = l;
  v10 = dispatch_queue_create("com.apple.applecv3dmovkit.miowriterinterface.recordercallback", 0);
  v11 = [(MIOWriterInterface *)self initWithFileURL:lCopy expectedFrameRate:summaryCopy fileSummary:v10 callbackQueue:rate];

  return v11;
}

- (BOOL)setTrackMetadata:(id)metadata forMetadataStream:(id)stream
{
  metadataCopy = metadata;
  v7 = [(NSMutableDictionary *)self->_streamInputs objectForKeyedSubscript:stream];
  v8 = v7;
  if (v7)
  {
    [v7 setCustomMetadata:metadataCopy];
  }

  return v8 != 0;
}

- (id)registerSpuIMU:(int64_t *)u version:(int64_t)version
{
  v12[1] = *MEMORY[0x277D85DE8];
  v6 = [CVAMetadataWrapperTracks imuTrackName:u prefix:self->_spuIMUTrackName];
  v7 = [(MIOWriterInterface *)self registerMetadataID:v6];
  v11 = @"com.apple.AppleCV3DMOVKit.fastPathIMUVersion";
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:version];
  v12[0] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  [(MIOWriterInterface *)self setTrackMetadata:v9 forMetadataStream:v6];

  return v7;
}

- (id)registerAccelerometer:(int64_t *)accelerometer
{
  v4 = [CVAMetadataWrapperTracks accelerometerTrackName:accelerometer prefix:self->_accelTrackName];
  v5 = [(MIOWriterInterface *)self registerMetadataID:v4];

  return v5;
}

- (id)registerGyro:(int64_t *)gyro
{
  v4 = [CVAMetadataWrapperTracks gyroTrackName:gyro prefix:self->_gyroTrackName];
  v5 = [(MIOWriterInterface *)self registerMetadataID:v4];

  return v5;
}

- (id)registerMotion:(int64_t *)motion
{
  v4 = [CVAMetadataWrapperTracks motionTrackName:motion prefix:self->_motionTrackName];
  v5 = [(MIOWriterInterface *)self registerMetadataID:v4];

  return v5;
}

- (id)registerDeviceMotion:(int64_t *)motion
{
  v4 = [CVAMetadataWrapperTracks deviceMotionTrackName:motion prefix:self->_deviceMotionTrackName];
  v5 = [(MIOWriterInterface *)self registerMetadataID:v4];

  return v5;
}

- (id)registerLocation:(int64_t *)location
{
  v4 = [CVAMetadataWrapperTracks locationTrackName:location prefix:self->_locationTrackName];
  v5 = [(MIOWriterInterface *)self registerMetadataID:v4];

  return v5;
}

- (id)registerALS:(int64_t *)s
{
  v4 = [CVAMetadataWrapperTracks alsTrackName:s prefix:self->_alsTrackName];
  v5 = [(MIOWriterInterface *)self registerMetadataID:v4];

  return v5;
}

- (id)registerWiFi:(int64_t *)fi
{
  v4 = [CVAMetadataWrapperTracks wifiTrackName:fi prefix:self->_wifiTrackName];
  v5 = [(MIOWriterInterface *)self registerMetadataID:v4];

  return v5;
}

- (id)registerUWB:(int64_t *)b
{
  v4 = [CVAMetadataWrapperTracks uwbTrackName:b prefix:self->_uwbTrackName];
  v5 = [(MIOWriterInterface *)self registerMetadataID:v4];

  return v5;
}

- (id)registerBLE:(int64_t *)e
{
  v4 = [CVAMetadataWrapperTracks bleTrackName:e prefix:self->_bleTrackName];
  v5 = [(MIOWriterInterface *)self registerMetadataID:v4];

  return v5;
}

- (id)registerCompass:(int64_t *)compass
{
  v4 = [CVAMetadataWrapperTracks compassTrackName:compass prefix:self->_compassTrackName];
  v5 = [(MIOWriterInterface *)self registerMetadataID:v4];

  return v5;
}

- (id)registerCVAFeatureBuffer
{
  v3 = [CVAFeatureBuffer streamName:0];
  v4 = [(MIOWriterInterface *)self registerMetadataID:v3];

  return v4;
}

- (id)registerCVAFeatureBuffer:(id)buffer compress:(BOOL)compress
{
  compressCopy = compress;
  v6 = MEMORY[0x277CCABB0];
  bufferCopy = buffer;
  v8 = [v6 numberWithBool:compressCopy];
  [(NSMutableDictionary *)self->_cvaFeatureBufferCompression setObject:v8 forKeyedSubscript:bufferCopy];

  v9 = [(MIOWriterInterface *)self registerMetadataID:bufferCopy];

  return v9;
}

- (void)registerCVADepthIR
{
  v3 = objc_opt_new();
  [v3 setLossless:1];
  [(MIOWriterInterface *)self registerStreamID:@"com.apple.reality.kind.data.pcam_avdepth" withConfigObject:v3];
}

- (id)registerMetadataID:(id)d
{
  dCopy = d;
  v5 = [(NSMutableDictionary *)self->_streamInputs objectForKeyedSubscript:dCopy];

  if (v5)
  {
    v6 = MEMORY[0x277CCA9B8];
    dCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Metadata track already registered: %@", dCopy];
    v8 = [v6 mioWriterInterfaceErrorWithMessage:dCopy code:2];
    lastError = self->_lastError;
    self->_lastError = v8;

    v10 = 0;
  }

  else
  {
    v11 = objc_opt_new();
    [(NSMutableDictionary *)self->_metadataAttachmentArrays setObject:v11 forKeyedSubscript:dCopy];

    v12 = [objc_alloc(MEMORY[0x277D256A8]) initWithStreamId:dCopy];
    v23 = 0;
    [(MIOWriter *)self addInput:v12 error:&v23];
    v13 = v23;
    v14 = v13;
    if (v13)
    {
      v15 = MEMORY[0x277CCA9B8];
      v16 = MEMORY[0x277CCACA8];
      v17 = [v13 description];
      v18 = [v16 stringWithFormat:@"Cannot add metadata track: %@ %@", dCopy, v17];
      v19 = [v15 mioWriterInterfaceErrorWithMessage:v18 code:2];
      v20 = self->_lastError;
      self->_lastError = v19;

      v10 = 0;
    }

    else
    {
      [(NSMutableDictionary *)self->_streamInputs setObject:v12 forKeyedSubscript:dCopy];
      v21 = self->_lastError;
      self->_lastError = 0;

      v10 = v12;
    }
  }

  return v10;
}

- (id)registerMetadataID:(id)d maxBufferSize:(unint64_t)size
{
  v6 = MEMORY[0x277CCABB0];
  dCopy = d;
  v8 = [v6 numberWithUnsignedInteger:size];
  [(NSMutableDictionary *)self->_metadataMaxBufferSize setObject:v8 forKeyedSubscript:dCopy];

  v9 = [(MIOWriterInterface *)self registerMetadataID:dCopy];

  return v9;
}

- (void)addMovieMetadataDictionary:(id)dictionary value:(id)value
{
  v18 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  valueCopy = value;
  lastError = self->_lastError;
  self->_lastError = 0;

  if ([dictionaryCopy hasPrefix:@"mdta/"])
  {
    v9 = objc_opt_new();
    [v9 setIdentifier:dictionaryCopy];
    [v9 setDataType:*MEMORY[0x277CC0598]];
    [v9 setValue:valueCopy];
    [(NSMutableArray *)self->_movMetadataArray addObject:v9];
    if (+[AppleCV3DMOVKitLog debugEnabled])
    {
      v10 = +[AppleCV3DMOVKitLog defaultLog];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        identifier = [v9 identifier];
        *buf = 138412290;
        v17 = identifier;
        _os_log_impl(&dword_24016D000, v10, OS_LOG_TYPE_DEBUG, "[MIOWriterInterface] Added metadata item with NSDictionary %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v12 = MEMORY[0x277CCA9B8];
    dictionaryCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid identifer %@", dictionaryCopy];
    v14 = [v12 mioWriterInterfaceErrorWithMessage:dictionaryCopy code:14];
    v15 = self->_lastError;
    self->_lastError = v14;
  }
}

- (void)addMovieMetadataData:(id)data rawValue:(id)value
{
  v18 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  valueCopy = value;
  lastError = self->_lastError;
  self->_lastError = 0;

  if ([dataCopy hasPrefix:@"mdta/"])
  {
    v9 = objc_opt_new();
    [v9 setIdentifier:dataCopy];
    [v9 setDataType:*MEMORY[0x277CC05B0]];
    [v9 setValue:valueCopy];
    [(NSMutableArray *)self->_movMetadataArray addObject:v9];
    if (+[AppleCV3DMOVKitLog debugEnabled])
    {
      v10 = +[AppleCV3DMOVKitLog defaultLog];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        identifier = [v9 identifier];
        *buf = 138412290;
        v17 = identifier;
        _os_log_impl(&dword_24016D000, v10, OS_LOG_TYPE_DEBUG, "[MIOWriterInterface] Added metadata item with NSData %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v12 = MEMORY[0x277CCA9B8];
    dataCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid identifer %@", dataCopy];
    v14 = [v12 mioWriterInterfaceErrorWithMessage:dataCopy code:14];
    v15 = self->_lastError;
    self->_lastError = v14;
  }
}

- (void)addMovieMetadataItem:(id)item
{
  v9 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  [(NSMutableArray *)self->_movMetadataArray addObject:itemCopy];
  if (+[AppleCV3DMOVKitLog debugEnabled])
  {
    v5 = +[AppleCV3DMOVKitLog defaultLog];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      identifier = [itemCopy identifier];
      v7 = 138412290;
      v8 = identifier;
      _os_log_impl(&dword_24016D000, v5, OS_LOG_TYPE_DEBUG, "[MIOWriterInterface] Added metadata item %@", &v7, 0xCu);
    }
  }
}

- (id)addDefaultSummary
{
  v3 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:self->_fileSummary];
  v4 = v3;
  deviceName = self->_deviceName;
  if (deviceName)
  {
    [v3 setObject:deviceName forKeyedSubscript:@"deviceName"];
  }

  deviceString = self->_deviceString;
  if (deviceString)
  {
    [v4 setObject:deviceString forKeyedSubscript:@"hw.model"];
  }

  bundleID = self->_bundleID;
  if (bundleID)
  {
    [v4 setObject:bundleID forKeyedSubscript:@"CFBundleIdentifier"];
  }

  version = self->_version;
  if (version)
  {
    [v4 setObject:version forKeyedSubscript:@"version"];
  }

  serialNumber = self->_serialNumber;
  if (serialNumber)
  {
    [v4 setObject:serialNumber forKeyedSubscript:@"SerialNumber"];
  }

  osBuildVersion = self->_osBuildVersion;
  if (osBuildVersion)
  {
    [v4 setObject:osBuildVersion forKeyedSubscript:@"OSBuildVersion"];
  }

  productType = self->_productType;
  if (productType)
  {
    [v4 setObject:productType forKeyedSubscript:@"ProductType"];
  }

  productConfig = self->_productConfig;
  if (productConfig)
  {
    [v4 setObject:productConfig forKeyedSubscript:@"ProductConfig"];
  }

  productVersion = self->_productVersion;
  if (productVersion)
  {
    [v4 setObject:productVersion forKeyedSubscript:@"ProductVersion"];
  }

  v14 = +[CVAMetadataWrapper version];
  [v4 setObject:v14 forKeyedSubscript:@"movKitVersion"];

  [(MIOWriterInterface *)self addSWToWExtrinsics:v4];
  [(MIOWriterInterface *)self addJasperExtrinsics:v4];
  [v4 setObject:&unk_285225278 forKeyedSubscript:@"iOS"];

  return v4;
}

+ (BOOL)getSWToWExtrinsics:(id *)extrinsics
{
  v4 = *MEMORY[0x277CE5EA8];
  v5 = [MEMORY[0x277CE5AC8] defaultDeviceWithDeviceType:*MEMORY[0x277CE5870] mediaType:*MEMORY[0x277CE5EA8] position:1];
  if (v5)
  {
    v6 = [MEMORY[0x277CE5AC8] defaultDeviceWithDeviceType:*MEMORY[0x277CE5878] mediaType:v4 position:1];
    v7 = [MEMORY[0x277CE5AC8] extrinsicMatrixFromDevice:v5 toDevice:v6];
    v8 = v7 != 0;
    if (v7)
    {
      v9 = v7;
      [v7 getBytes:extrinsics length:64];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)addSWToWExtrinsics:(id)extrinsics
{
  v33[12] = *MEMORY[0x277D85DE8];
  extrinsicsCopy = extrinsics;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  if ([MIOWriterInterface getSWToWExtrinsics:&v29])
  {
    LODWORD(v4) = v29;
    v28 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
    v33[0] = v28;
    LODWORD(v5) = v30;
    v27 = [MEMORY[0x277CCABB0] numberWithFloat:v5];
    v33[1] = v27;
    LODWORD(v6) = v31;
    v26 = [MEMORY[0x277CCABB0] numberWithFloat:v6];
    v33[2] = v26;
    LODWORD(v7) = v32;
    v25 = [MEMORY[0x277CCABB0] numberWithFloat:v7];
    v33[3] = v25;
    LODWORD(v8) = DWORD1(v29);
    v9 = [MEMORY[0x277CCABB0] numberWithFloat:v8];
    v33[4] = v9;
    LODWORD(v10) = DWORD1(v30);
    v11 = [MEMORY[0x277CCABB0] numberWithFloat:v10];
    v33[5] = v11;
    LODWORD(v12) = DWORD1(v31);
    v13 = [MEMORY[0x277CCABB0] numberWithFloat:v12];
    v33[6] = v13;
    LODWORD(v14) = DWORD1(v32);
    v15 = [MEMORY[0x277CCABB0] numberWithFloat:v14];
    v33[7] = v15;
    LODWORD(v16) = DWORD2(v29);
    v17 = [MEMORY[0x277CCABB0] numberWithFloat:v16];
    v33[8] = v17;
    LODWORD(v18) = DWORD2(v30);
    v19 = [MEMORY[0x277CCABB0] numberWithFloat:v18];
    v33[9] = v19;
    LODWORD(v20) = DWORD2(v31);
    v21 = [MEMORY[0x277CCABB0] numberWithFloat:v20];
    v33[10] = v21;
    LODWORD(v22) = DWORD2(v32);
    v23 = [MEMORY[0x277CCABB0] numberWithFloat:v22];
    v33[11] = v23;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:12];

    [extrinsicsCopy setObject:v24 forKeyedSubscript:@"extrinsicsSWToW"];
  }
}

- (void)addJasperExtrinsics:(id)extrinsics
{
  v58 = *MEMORY[0x277D85DE8];
  extrinsicsCopy = extrinsics;
  v36 = [MEMORY[0x277CE5AC8] defaultDeviceWithDeviceType:*MEMORY[0x277CE5858] mediaType:0 position:1];
  if (v36)
  {
    v31 = extrinsicsCopy;
    v4 = objc_opt_new();
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v32 = *MEMORY[0x277CE5870];
    v5 = *MEMORY[0x277CE5870];
    v33 = *MEMORY[0x277CE5878];
    v56[0] = *MEMORY[0x277CE5878];
    v56[1] = v5;
    obj = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:2];
    v39 = [obj countByEnumeratingWithState:&v51 objects:v57 count:16];
    if (v39)
    {
      v37 = *MEMORY[0x277CE5EA8];
      v38 = *v52;
      v35 = v4;
      do
      {
        for (i = 0; i != v39; ++i)
        {
          if (*v52 != v38)
          {
            objc_enumerationMutation(obj);
          }

          v29 = *(*(&v51 + 1) + 8 * i);
          v28 = [MEMORY[0x277CE5AC8] defaultDeviceWithDeviceType:v29 mediaType:v37 position:1];
          if (v28)
          {
            v49 = 0u;
            v50 = 0u;
            v47 = 0u;
            v48 = 0u;
            v46 = v28;
            v30 = [MEMORY[0x277CE5AC8] extrinsicMatrixFromDevice:v28 toDevice:v36];
            v45 = v30;
            if (v30)
            {
              [v30 getBytes:&v47 length:64];
            }

            else if (v29 == v33)
            {
              DWORD2(v47) = 987939115;
              *&v47 = 0x3F7FFC11BC281DC1;
              DWORD2(v48) = 965922039;
              *&v48 = 0xBC28198FBF7FFC87;
              DWORD2(v49) = 1065353048;
              *&v49 = 0xBAE1719F399BB6AALL;
              DWORD2(v50) = 1039292160;
              *&v50 = 0x406CDA9041468A09;
              if (v29 == v32)
              {
                goto LABEL_17;
              }
            }

            else if (v29 == v32)
            {
LABEL_17:
              DWORD2(v47) = -1150855277;
              *&v47 = 0x3F7FFE3BBBCEC41ELL;
              DWORD2(v48) = 991362741;
              *&v48 = 0xBBCEC41EBF7FFE09;
              DWORD2(v49) = 1065353065;
              *&v49 = 0x3B6842743B157CD4;
              DWORD2(v50) = 1035551109;
              *&v50 = 0xC1044D6041478794;
            }

            v44 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%ld", v29, 1];
            LODWORD(v7) = v47;
            v43 = [MEMORY[0x277CCABB0] numberWithFloat:v7];
            v55[0] = v43;
            LODWORD(v8) = v48;
            v42 = [MEMORY[0x277CCABB0] numberWithFloat:v8];
            v55[1] = v42;
            LODWORD(v9) = v49;
            v41 = [MEMORY[0x277CCABB0] numberWithFloat:v9];
            v55[2] = v41;
            LODWORD(v10) = v50;
            v40 = [MEMORY[0x277CCABB0] numberWithFloat:v10];
            v55[3] = v40;
            LODWORD(v11) = DWORD1(v47);
            v12 = [MEMORY[0x277CCABB0] numberWithFloat:v11];
            v55[4] = v12;
            LODWORD(v13) = DWORD1(v48);
            v14 = [MEMORY[0x277CCABB0] numberWithFloat:v13];
            v55[5] = v14;
            LODWORD(v15) = DWORD1(v49);
            v16 = [MEMORY[0x277CCABB0] numberWithFloat:v15];
            v55[6] = v16;
            LODWORD(v17) = DWORD1(v50);
            v18 = [MEMORY[0x277CCABB0] numberWithFloat:v17];
            v55[7] = v18;
            LODWORD(v19) = DWORD2(v47);
            v20 = [MEMORY[0x277CCABB0] numberWithFloat:v19];
            v55[8] = v20;
            LODWORD(v21) = DWORD2(v48);
            v22 = [MEMORY[0x277CCABB0] numberWithFloat:v21];
            v55[9] = v22;
            LODWORD(v23) = DWORD2(v49);
            v24 = [MEMORY[0x277CCABB0] numberWithFloat:v23];
            v55[10] = v24;
            LODWORD(v25) = DWORD2(v50);
            v26 = [MEMORY[0x277CCABB0] numberWithFloat:v25];
            v55[11] = v26;
            v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:12];

            v4 = v35;
            [v35 setObject:v27 forKeyedSubscript:v44];

            v28 = v46;
          }
        }

        v39 = [obj countByEnumeratingWithState:&v51 objects:v57 count:16];
      }

      while (v39);
    }

    extrinsicsCopy = v31;
    if ([v4 count])
    {
      [v31 setObject:v4 forKeyedSubscript:@"extrinsicsToJasper"];
    }
  }
}

- (id)createFileMetadata
{
  v3 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:self->_movMetadataArray];
  v4 = objc_opt_new();
  [v4 setIdentifier:@"mdta/com.apple.framework.state.MOVKit"];
  [v4 setDataType:*MEMORY[0x277CC0598]];
  addDefaultSummary = [(MIOWriterInterface *)self addDefaultSummary];
  [v4 setValue:addDefaultSummary];

  [v3 addObject:v4];
  if (self->_calibration)
  {
    v6 = objc_opt_new();
    [v6 setIdentifier:@"mdta/com.apple.calibration"];
    [v6 setDataType:*MEMORY[0x277CC05B0]];
    toData = [(CVACalibration *)self->_calibration toData];
    [v6 setValue:toData];

    [v3 addObject:v6];
  }

  return v3;
}

- (void)registerStreamID:(id)d withConfigObject:(id)object
{
  dCopy = d;
  objectCopy = object;
  v7 = objectCopy;
  if (objectCopy)
  {
    v8 = objectCopy;
  }

  else
  {
    v8 = objc_opt_new();
  }

  v9 = v8;
  v10 = objc_opt_new();
  [v10 setObject:&unk_285225290 forKeyedSubscript:@"received"];
  v11 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v9, "lossless")}];
  [v10 setObject:v11 forKeyedSubscript:@"lossless"];

  v12 = MEMORY[0x277CCABB0];
  [v9 bitrate];
  v13 = [v12 numberWithFloat:?];
  [v10 setObject:v13 forKeyedSubscript:@"bitrate"];

  v14 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v9, "forceH264")}];
  [v10 setObject:v14 forKeyedSubscript:@"forceH264"];

  v15 = MEMORY[0x277CCABB0];
  [v9 expectedFPS];
  v16 = [v15 numberWithFloat:?];
  [v10 setObject:v16 forKeyedSubscript:@"expectedFPS"];

  extraConfigs = [v9 extraConfigs];
  [v10 setObject:extraConfigs forKeyedSubscript:@"extraConfigs"];

  [(NSMutableDictionary *)self->_trackAddedByStream setObject:v10 forKeyedSubscript:dCopy];
  v18 = objc_opt_new();
  [(NSMutableDictionary *)self->_frameMetadataDictionary setObject:v18 forKeyedSubscript:dCopy];

  if (!self->_firstSteamID)
  {
    v19 = [MEMORY[0x277CCACA8] stringWithString:dCopy];
    firstSteamID = self->_firstSteamID;
    self->_firstSteamID = v19;
  }
}

- (id)addCVADepthIRTrackWithDimensions:(id)dimensions
{
  formatDescriptionOut = 0;
  if (CMVideoFormatDescriptionCreate(*MEMORY[0x277CBECE8], 0x31332E33u, dimensions.var0, dimensions.var1, 0, &formatDescriptionOut))
  {
    v4 = [MEMORY[0x277CCA9B8] mioWriterInterfaceErrorWithMessage:@"Failed to create video format description for the depth IR data track" code:2];
    lastError = self->_lastError;
    self->_lastError = v4;

    v6 = 0;
  }

  else
  {
    v8 = [(MIOWriterInterface *)self addVideoTrack:formatDescriptionOut streamID:@"com.apple.reality.kind.data.pcam_avdepth" encoding:0];
    if (v8)
    {
      v9 = [(NSMutableDictionary *)self->_trackAddedByStream objectForKeyedSubscript:@"com.apple.reality.kind.data.pcam_avdepth"];
      [v9 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"received"];
    }

    CFRelease(formatDescriptionOut);
    v6 = v8;
  }

  return v6;
}

- (void)addFirstBufferForStream:(id)stream buffer:(__CVBuffer *)buffer withTimestamp:(id *)timestamp
{
  streamCopy = stream;
  CVPixelBufferRetain(buffer);
  v9 = [MIOWriterTimedBuffer alloc];
  v11 = *timestamp;
  v10 = [(MIOWriterTimedBuffer *)v9 initWithBuffer:buffer atTimestamp:&v11];
  [(MIOWriterInterface *)self clearFirstBufferForStream:streamCopy];
  [(NSMutableDictionary *)self->_firstFrameContainer setObject:v10 forKeyedSubscript:streamCopy];
}

- (__CVBuffer)getFirstBufferForStream:(id)stream withTimestamp:(id *)timestamp
{
  streamCopy = stream;
  buffer = [(NSMutableDictionary *)self->_firstFrameContainer objectForKeyedSubscript:streamCopy];

  if (buffer)
  {
    v8 = [(NSMutableDictionary *)self->_firstFrameContainer objectForKeyedSubscript:streamCopy];
    buffer = [v8 buffer];

    v9 = [(NSMutableDictionary *)self->_firstFrameContainer objectForKeyedSubscript:streamCopy];
    v10 = v9;
    if (v9)
    {
      objc_msgSend_timestamp(v9);
    }

    else
    {
      v12 = 0uLL;
      v13 = 0;
    }

    *&timestamp->var0 = v12;
    timestamp->var3 = v13;
  }

  return buffer;
}

- (BOOL)receivedAllFramesForStreams:(id)streams
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  streamsCopy = streams;
  v5 = [streamsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(streamsCopy);
        }

        v9 = [(NSMutableDictionary *)self->_firstFrameContainer objectForKeyedSubscript:*(*(&v12 + 1) + 8 * i), v12];

        if (!v9)
        {
          v10 = 0;
          goto LABEL_11;
        }
      }

      v6 = [streamsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 1;
LABEL_11:

  return v10;
}

- (void)intelligentlyAppendBuffersForStreams:(id)streams
{
  v42 = *MEMORY[0x277D85DE8];
  streamsCopy = streams;
  [(NSMutableDictionary *)self->_firstFrameContainer keysSortedByValueUsingComparator:&unk_28521AE30];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v39 = 0u;
  v4 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v37;
    v7 = 0x278C9A000uLL;
    v8 = 0x27E3C7000uLL;
    selfCopy = self;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v37 == v6)
        {
          v10 = *(*(&v36 + 1) + 8 * i);
          if ([streamsCopy containsObject:v10])
          {
            goto LABEL_12;
          }
        }

        else
        {
          objc_enumerationMutation(obj);
          v10 = *(*(&v36 + 1) + 8 * i);
          if ([streamsCopy containsObject:v10])
          {
LABEL_12:
            v11 = [(NSMutableDictionary *)self->_firstFrameContainer objectForKeyedSubscript:v10];
            buffer = [v11 buffer];

            memset(&v35, 0, sizeof(v35));
            v13 = [(NSMutableDictionary *)self->_firstFrameContainer objectForKeyedSubscript:v10];
            v14 = v13;
            if (v13)
            {
              objc_msgSend_timestamp(v13);

              if (![*(v7 + 3328) debugEnabled])
              {
                goto LABEL_19;
              }
            }

            else
            {
              memset(&v35, 0, sizeof(v35));

              if (![*(v7 + 3328) debugEnabled])
              {
                goto LABEL_19;
              }
            }

            defaultLog = [*(v7 + 3328) defaultLog];
            if (os_log_type_enabled(defaultLog, OS_LOG_TYPE_DEBUG))
            {
              time = v35;
              Seconds = CMTimeGetSeconds(&time);
              LODWORD(time.value) = 138412546;
              *(&time.value + 4) = v10;
              LOWORD(time.flags) = 2048;
              *(&time.flags + 2) = Seconds;
              _os_log_impl(&dword_24016D000, defaultLog, OS_LOG_TYPE_DEBUG, "[MIOWriterInterface] Adding first frame for stream: %@ for ts: %f", &time, 0x16u);
            }

LABEL_19:
            v17 = [*(&self->super.super.isa + *(v8 + 3988)) objectForKeyedSubscript:v10];
            if ([v17 canAppend])
            {
              v34 = 0;
              time = v35;
              [v17 appendPixelBuffer:buffer pts:&time error:&v34];
              v18 = v34;
              defaultLog2 = v18;
              if (v18)
              {
                v20 = v5;
                v21 = v7;
                v22 = v6;
                v23 = MEMORY[0x277CCA9B8];
                v24 = MEMORY[0x277CCACA8];
                v25 = [v18 description];
                v26 = [v24 stringWithFormat:@"Failed to write pixel buffer: %@", v25];
                v27 = v23;
                v6 = v22;
                v7 = v21;
                v5 = v20;
                self = selfCopy;
                v28 = [v27 mioWriterInterfaceErrorWithMessage:v26 code:4];
                lastError = selfCopy->_lastError;
                selfCopy->_lastError = v28;

                v8 = 0x27E3C7000;
              }

              goto LABEL_5;
            }

            if ([*(v7 + 3328) debugEnabled])
            {
              defaultLog2 = [*(v7 + 3328) defaultLog];
              if (os_log_type_enabled(defaultLog2, OS_LOG_TYPE_DEBUG))
              {
                LODWORD(time.value) = 138412290;
                *(&time.value + 4) = v10;
                _os_log_impl(&dword_24016D000, defaultLog2, OS_LOG_TYPE_DEBUG, "[MIOWriterInterface] Input not ready: %@", &time, 0xCu);
              }

LABEL_5:
            }
          }
        }

        [(MIOWriterInterface *)self clearFirstBufferForStream:v10];
      }

      v5 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v5);
  }

  firstFrameContainer = self->_firstFrameContainer;
  self->_firstFrameContainer = 0;
}

- (void)clearFirstBufferForStream:(id)stream
{
  streamCopy = stream;
  v4 = [(NSMutableDictionary *)self->_firstFrameContainer objectForKeyedSubscript:?];

  if (v4)
  {
    v5 = [(NSMutableDictionary *)self->_firstFrameContainer objectForKeyedSubscript:streamCopy];
    buffer = [v5 buffer];

    [(NSMutableDictionary *)self->_firstFrameContainer setObject:0 forKeyedSubscript:streamCopy];
    CVPixelBufferRelease(buffer);
  }
}

- (id)getSuggestedEncodingOptionsForFormat:(opaqueCMFormatDescription *)format streamID:(id)d
{
  dCopy = d;
  v7 = [(NSMutableDictionary *)self->_trackAddedByStream objectForKeyedSubscript:dCopy];
  v8 = [v7 objectForKeyedSubscript:@"lossless"];
  bOOLValue = [v8 BOOLValue];

  v10 = [v7 objectForKeyedSubscript:@"bitrate"];
  integerValue = [v10 integerValue];

  MediaSubType = CMFormatDescriptionGetMediaSubType(format);
  if (MediaSubType != 825437747)
  {
    if (MediaSubType == 1278226488)
    {
      if (bOOLValue)
      {
        monochrome8bitHEVCLosslessEncoderConfig = [MEMORY[0x277D256B8] monochrome8bitHEVCLosslessEncoderConfig];
        goto LABEL_22;
      }

      if (integerValue)
      {
        [MEMORY[0x277D256B8] monochrome8bitHEVCEncoderConfigWithBitrate:integerValue];
      }

      else
      {
        [MEMORY[0x277D256B8] monochrome8bitHEVCEncoderConfig];
      }
    }

    else
    {
      v14 = [v7 objectForKeyedSubscript:@"forceH264"];
      if ([v14 BOOLValue])
      {
      }

      else
      {
        v15 = [MEMORY[0x277D256B8] isEncoderAvailableForEncoderType:9];

        if (v15)
        {
          if (bOOLValue)
          {
            monochrome8bitHEVCLosslessEncoderConfig = [MEMORY[0x277D256B8] colorHEVCLosslessEncoderConfig];
            goto LABEL_22;
          }

          if (integerValue)
          {
            [MEMORY[0x277D256B8] colorHEVCEncoderConfigWithBitrate:integerValue];
          }

          else
          {
            [MEMORY[0x277D256B8] colorHEVCEncoderConfig];
          }

          goto LABEL_20;
        }
      }

      if (integerValue)
      {
        [MEMORY[0x277D256B8] colorH264EncoderConfigWithBitrate:integerValue];
      }

      else
      {
        [MEMORY[0x277D256B8] colorH264EncoderConfig];
      }
    }

    monochrome8bitHEVCLosslessEncoderConfig = LABEL_20:;
    goto LABEL_22;
  }

  if ((bOOLValue & 1) == 0)
  {
    v24 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"Streams with 13.3 format requires lossless encoding" userInfo:0];
    objc_exception_throw(v24);
  }

  monochrome8bitHEVCLosslessEncoderConfig = [MEMORY[0x277D256B8] slimEncoderConfig];
LABEL_22:
  v16 = monochrome8bitHEVCLosslessEncoderConfig;
  v17 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:monochrome8bitHEVCLosslessEncoderConfig];
  [v17 setObject:&unk_285225290 forKeyedSubscript:*MEMORY[0x277D256D8]];
  v18 = [v7 objectForKeyedSubscript:@"expectedFPS"];
  [v18 floatValue];
  v20 = v19;

  if (v20 > 0.0)
  {
    v21 = [v7 objectForKeyedSubscript:@"expectedFPS"];
    [v17 setObject:v21 forKeyedSubscript:*MEMORY[0x277D256D0]];
  }

  v22 = [v7 objectForKeyedSubscript:@"extraConfigs"];
  [v17 addEntriesFromDictionary:v22];

  return v17;
}

- (id)addVideoTrack:(opaqueCMFormatDescription *)track streamID:(id)d encoding:(id)encoding
{
  v28 = *MEMORY[0x277D85DE8];
  dCopy = d;
  encodingCopy = encoding;
  lastError = self->_lastError;
  self->_lastError = 0;

  if (!encodingCopy)
  {
    encodingCopy = [(MIOWriterInterface *)self getSuggestedEncodingOptionsForFormat:track streamID:dCopy];
  }

  v11 = [objc_alloc(MEMORY[0x277D256B0]) initWithStreamId:dCopy format:track recordingConfig:encodingCopy];
  v23 = 0;
  [(MIOWriter *)self addInput:v11 error:&v23];
  v12 = v23;
  v13 = v12;
  if (v12)
  {
    v14 = MEMORY[0x277CCA9B8];
    v15 = MEMORY[0x277CCACA8];
    v16 = [v12 description];
    v17 = [v15 stringWithFormat:@"Cannot add track: %@ %@", dCopy, v16];
    v18 = [v14 mioWriterInterfaceErrorWithMessage:v17 code:2];
    v19 = self->_lastError;
    self->_lastError = v18;

    v20 = 0;
  }

  else
  {
    if (+[AppleCV3DMOVKitLog debugEnabled])
    {
      v21 = +[AppleCV3DMOVKitLog defaultLog];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        v25 = dCopy;
        v26 = 2112;
        trackCopy = track;
        _os_log_impl(&dword_24016D000, v21, OS_LOG_TYPE_DEBUG, "[MIOWriterInterface] Added track %@ : %@", buf, 0x16u);
      }
    }

    [(NSMutableDictionary *)self->_streamInputs setObject:v11 forKeyedSubscript:dCopy];
    v20 = v11;
  }

  return v20;
}

- (void)prepareWriter
{
  v10 = *MEMORY[0x277D85DE8];
  createFileMetadata = [(MIOWriterInterface *)self createFileMetadata];
  [(MIOWriter *)self setCustomMOVMetadata:createFileMetadata];
  if (+[AppleCV3DMOVKitLog debugEnabled])
  {
    v4 = +[AppleCV3DMOVKitLog defaultLog];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      status = [(MIOWriter *)self status];
      *buf = HIBYTE(status);
      *&buf[2] = BYTE2(status);
      LOWORD(v9) = BYTE1(status);
      WORD1(v9) = status;
      v6 = [MEMORY[0x277CCACA8] stringWithCharacters:buf length:4];
      *buf = 138412290;
      v9 = v6;
      _os_log_impl(&dword_24016D000, v4, OS_LOG_TYPE_DEBUG, "[MIOWriterInterface] Calling preparation status: %@", buf, 0xCu);
    }
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2401857D4;
  v7[3] = &unk_278C9B178;
  v7[4] = self;
  [(MIOWriter *)self prepareWriterWithCompletionHandler:v7];
}

- (BOOL)preProcessPixelBuffer:(__CVBuffer *)buffer streamID:(id)d
{
  v38 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (!self->_isReady)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    lastError = selfCopy->_lastError;
    selfCopy->_lastError = 0;

    obj = selfCopy;
    v9 = [(NSMutableDictionary *)selfCopy->_trackAddedByStream valueForKey:selfCopy->_firstSteamID];

    if (v9)
    {
      v10 = [(NSMutableDictionary *)selfCopy->_trackAddedByStream objectForKeyedSubscript:selfCopy->_firstSteamID];
      v11 = [v10 objectForKeyedSubscript:@"received"];
      bOOLValue = [v11 BOOLValue];
    }

    else
    {
      bOOLValue = 0;
    }

    v30 = dCopy;
    v31 = [dCopy isEqualToString:selfCopy->_firstSteamID] | bOOLValue;
    if (v31)
    {
      v13 = [(NSMutableDictionary *)selfCopy->_trackAddedByStream valueForKey:dCopy];

      if (!v13 || (-[NSMutableDictionary objectForKeyedSubscript:](selfCopy->_trackAddedByStream, "objectForKeyedSubscript:", dCopy), v14 = objc_claimAutoreleasedReturnValue(), [v14 objectForKeyedSubscript:@"received"], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "BOOLValue"), v15, v14, (v16 & 1) == 0))
      {
        v17 = [MEMORY[0x277D256B8] formatForPixelBuffer:buffer];
        v18 = [(MIOWriterInterface *)selfCopy addVideoTrack:v17 streamID:dCopy encoding:0];

        if (v18)
        {
          v19 = [(NSMutableDictionary *)selfCopy->_trackAddedByStream objectForKeyedSubscript:dCopy];
          [v19 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"received"];
        }

        CFRelease(v17);
      }

      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      allKeys = [(NSMutableDictionary *)selfCopy->_trackAddedByStream allKeys];
      v21 = [allKeys countByEnumeratingWithState:&v33 objects:v37 count:16];
      if (v21)
      {
        v22 = *v34;
        v23 = 1;
        do
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v34 != v22)
            {
              objc_enumerationMutation(allKeys);
            }

            v25 = [(NSMutableDictionary *)obj->_trackAddedByStream objectForKeyedSubscript:*(*(&v33 + 1) + 8 * i)];
            v26 = [v25 objectForKeyedSubscript:@"received"];
            bOOLValue2 = [v26 BOOLValue];

            v23 &= bOOLValue2;
          }

          v21 = [allKeys countByEnumeratingWithState:&v33 objects:v37 count:16];
        }

        while (v21);

        if ((v23 & 1) == 0)
        {
          goto LABEL_26;
        }
      }

      else
      {
      }

      if (!obj->_prepareCalled)
      {
        if ([(NSMutableDictionary *)obj->_trackAddedByStream count]== 1)
        {
          firstFrameContainer = obj->_firstFrameContainer;
          obj->_firstFrameContainer = 0;
        }

        obj->_prepareCalled = 1;
        [(MIOWriterInterface *)obj prepareWriter];
      }
    }

LABEL_26:
    objc_sync_exit(obj);

    dCopy = v30;
    goto LABEL_27;
  }

  LOBYTE(v31) = 1;
LABEL_27:

  return v31 & 1;
}

- (BOOL)processPixelBuffer:(__CVBuffer *)buffer withTimeStamp:(id *)stamp beforeAppend:(id)append streamID:(id)d
{
  v25 = *MEMORY[0x277D85DE8];
  appendCopy = append;
  dCopy = d;
  if (![(MIOWriterInterface *)self preProcessPixelBuffer:buffer streamID:dCopy]|| !self->_isReady)
  {
    goto LABEL_21;
  }

  if (appendCopy)
  {
    appendCopy[2](appendCopy, buffer);
  }

  [(MIOWriterInterface *)self setMetadataAttachmentTo:buffer streamID:dCopy];
  if (self->_firstFrameContainer)
  {
    if (+[AppleCV3DMOVKitLog debugEnabled])
    {
      v12 = +[AppleCV3DMOVKitLog defaultLog];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        time = *stamp;
        Seconds = CMTimeGetSeconds(&time);
        *buf = 138412546;
        v22 = dCopy;
        v23 = 2048;
        v24 = Seconds;
        _os_log_impl(&dword_24016D000, v12, OS_LOG_TYPE_DEBUG, "[MIOWriterInterface] First frame received for: %@ at ts: %f", buf, 0x16u);
      }
    }

    time = *stamp;
    [(MIOWriterInterface *)self addFirstBufferForStream:dCopy buffer:buffer withTimestamp:&time];
    allKeys = [(NSMutableDictionary *)self->_trackAddedByStream allKeys];
    v15 = [(MIOWriterInterface *)self receivedAllFramesForStreams:allKeys];

    if (v15)
    {
      if (+[AppleCV3DMOVKitLog debugEnabled])
      {
        v16 = +[AppleCV3DMOVKitLog defaultLog];
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(time.value) = 0;
          _os_log_impl(&dword_24016D000, v16, OS_LOG_TYPE_DEBUG, "[MIOWriterInterface] All first being written", &time, 2u);
        }
      }

      allKeys2 = [(NSMutableDictionary *)self->_trackAddedByStream allKeys];
      [(MIOWriterInterface *)self intelligentlyAppendBuffersForStreams:allKeys2];
      goto LABEL_17;
    }

LABEL_21:
    v18 = 0;
    goto LABEL_22;
  }

  allKeys2 = [(NSMutableDictionary *)self->_streamInputs objectForKeyedSubscript:dCopy];
  time = *stamp;
  [allKeys2 appendPixelBuffer:buffer pts:&time error:0];
LABEL_17:

  if ([(NSString *)self->_firstSteamID isEqualToString:dCopy]&& self->_writeMetadataTimeInterval <= 0.0)
  {
    time = *stamp;
    [(MIOWriterInterface *)self appendAllMetadataWithTimeStamp:&time];
  }

  v18 = 1;
LABEL_22:

  return v18;
}

- (BOOL)processPixelBuffer:(__CVBuffer *)buffer withTimeStamp:(id *)stamp intrinsics:(id *)intrinsics exposureTime:(double)time streamID:(id)d
{
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_240186140;
  v9[3] = &unk_278C9B1A0;
  v9[4] = self;
  v9[5] = intrinsics;
  *&v9[6] = time;
  v8 = *stamp;
  return [(MIOWriterInterface *)self processPixelBuffer:buffer withTimeStamp:&v8 beforeAppend:v9 streamID:d];
}

- (BOOL)processCVADepthIR:(id)r
{
  rCopy = r;
  PixelFormatType = CVPixelBufferGetPixelFormatType([rCopy dataBuffer]);
  if (PixelFormatType == 825437747)
  {
    dataBuffer = [rCopy dataBuffer];
    objc_msgSend_timestamp(rCopy);
    objc_msgSend_cmTimeFromTimestamp_(MIOWriterInterface);
    v6 = [(MIOWriterInterface *)self processPixelBuffer:dataBuffer withTimeStamp:v13 beforeAppend:0 streamID:@"com.apple.reality.kind.data.pcam_avdepth"];
  }

  else
  {
    v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytesNoCopy:&PixelFormatType length:4 encoding:1 freeWhenDone:0];
    v8 = MEMORY[0x277CCA9B8];
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Pixel format type for depth IR data should be kCVPixelFormatType_FixedPointUnsigned13_3, but received pixel buffer with format '%@'", v7];
    v10 = [v8 mioWriterInterfaceErrorWithMessage:v9 code:4];
    lastError = self->_lastError;
    self->_lastError = v10;

    v6 = 0;
  }

  return v6;
}

- (id)arrayFrom3x3Matrix:(id *)matrix
{
  if (matrix)
  {
    v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:9];
    LODWORD(v5) = *matrix;
    v6 = [MEMORY[0x277CCABB0] numberWithFloat:v5];
    [v4 addObject:v6];

    LODWORD(v7) = *(matrix + 1);
    v8 = [MEMORY[0x277CCABB0] numberWithFloat:v7];
    [v4 addObject:v8];

    LODWORD(v9) = *(matrix + 2);
    v10 = [MEMORY[0x277CCABB0] numberWithFloat:v9];
    [v4 addObject:v10];

    LODWORD(v11) = *(matrix + 4);
    v12 = [MEMORY[0x277CCABB0] numberWithFloat:v11];
    [v4 addObject:v12];

    LODWORD(v13) = *(matrix + 5);
    v14 = [MEMORY[0x277CCABB0] numberWithFloat:v13];
    [v4 addObject:v14];

    LODWORD(v15) = *(matrix + 6);
    v16 = [MEMORY[0x277CCABB0] numberWithFloat:v15];
    [v4 addObject:v16];

    LODWORD(v17) = *(matrix + 8);
    v18 = [MEMORY[0x277CCABB0] numberWithFloat:v17];
    [v4 addObject:v18];

    LODWORD(v19) = *(matrix + 9);
    v20 = [MEMORY[0x277CCABB0] numberWithFloat:v19];
    [v4 addObject:v20];

    LODWORD(v21) = *(matrix + 10);
    v22 = [MEMORY[0x277CCABB0] numberWithFloat:v21];
    [v4 addObject:v22];

    v23 = v4;
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (void)setMetadataAttachmentTo:(__CVBuffer *)to streamID:(id)d
{
  v19 = *MEMORY[0x277D85DE8];
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v8 = [(NSMutableDictionary *)selfCopy->_frameMetadataDictionary objectForKeyedSubscript:dCopy];
  v9 = v8;
  if (v8)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v11)
    {
      v12 = *v15;
      do
      {
        v13 = 0;
        do
        {
          if (*v15 != v12)
          {
            objc_enumerationMutation(v10);
          }

          CVBufferSetAttachment(to, *(*(&v14 + 1) + 8 * v13), [v10 objectForKey:{*(*(&v14 + 1) + 8 * v13), v14}], kCVAttachmentMode_ShouldPropagate);
          ++v13;
        }

        while (v11 != v13);
        v11 = [v10 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v11);
    }

    [v10 removeAllObjects];
  }

  objc_sync_exit(selfCopy);
}

- (void)finishWriting
{
  if (+[AppleCV3DMOVKitLog debugEnabled])
  {
    v3 = +[AppleCV3DMOVKitLog defaultLog];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_24016D000, v3, OS_LOG_TYPE_DEBUG, "[MIOWriterInterface] FinishWriting", buf, 2u);
    }
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  selfCopy->_isReady = 0;
  objc_sync_exit(selfCopy);

  memset(buf, 0, sizeof(buf));
  v11 = 0;
  v5 = CACurrentMediaTime();
  objc_msgSend_cmTimeFromTimestamp_(MIOWriterInterface, v5);
  v8 = *buf;
  v9 = v11;
  [(MIOWriterInterface *)selfCopy appendAllMetadataWithTimeStamp:&v8];
  lastError = selfCopy->_lastError;
  selfCopy->_lastError = 0;

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2401867FC;
  v7[3] = &unk_278C9B178;
  v7[4] = selfCopy;
  [(MIOWriter *)selfCopy finishWithCompletionHandler:v7];
}

- (void)writerDidFailWithError:(id)error
{
  errorCopy = error;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = MEMORY[0x277CCA9B8];
  v6 = MEMORY[0x277CCACA8];
  v7 = [errorCopy description];
  v8 = [v6 stringWithFormat:@"Writer failure: %@", v7];
  v9 = [v5 mioWriterInterfaceErrorWithMessage:v8 code:5];
  lastError = selfCopy->_lastError;
  selfCopy->_lastError = v9;

  selfCopy->_isReady = 0;
  objc_sync_exit(selfCopy);

  WeakRetained = objc_loadWeakRetained(&selfCopy->_interface_delegate);
  LOBYTE(v5) = objc_opt_respondsToSelector();

  if (v5)
  {
    v12 = objc_loadWeakRetained(&selfCopy->_interface_delegate);
    [v12 didFailWithError:errorCopy];
  }
}

- (void)writerEncounteredAnError:(id)error
{
  errorCopy = error;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = MEMORY[0x277CCA9B8];
  v6 = MEMORY[0x277CCACA8];
  v7 = [errorCopy description];
  v8 = [v6 stringWithFormat:@"Writer error: %@", v7];
  v9 = [v5 mioWriterInterfaceErrorWithMessage:v8 code:5];
  lastError = selfCopy->_lastError;
  selfCopy->_lastError = v9;

  objc_sync_exit(selfCopy);
  WeakRetained = objc_loadWeakRetained(&selfCopy->_interface_delegate);
  LOBYTE(v5) = objc_opt_respondsToSelector();

  if (v5)
  {
    v12 = objc_loadWeakRetained(&selfCopy->_interface_delegate);
    [v12 didEncounterError:errorCopy];
  }
}

- (void)addFrameMetadata:(id)metadata value:(id)value streamID:(id)d
{
  metadataCopy = metadata;
  valueCopy = value;
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v11 = [(NSMutableDictionary *)selfCopy->_frameMetadataDictionary objectForKeyedSubscript:dCopy];
  v12 = v11;
  if (v11)
  {
    [v11 setObject:valueCopy forKeyedSubscript:metadataCopy];
  }

  objc_sync_exit(selfCopy);
}

- (void)addFrameMetadata:(id)metadata streamID:(id)d
{
  metadataCopy = metadata;
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v8 = [(NSMutableDictionary *)selfCopy->_frameMetadataDictionary objectForKeyedSubscript:dCopy];
  v9 = v8;
  if (v8)
  {
    [v8 addEntriesFromDictionary:metadataCopy];
  }

  objc_sync_exit(selfCopy);
}

- (void)processFastPathIMUData:(id)data location:(int64_t *)location
{
  if (data)
  {
    dataCopy = data;
    dataCopy2 = data;
    v9 = *([dataCopy2 bytes] + 8);
    v10 = [CVAMetadataWrapperTracks imuTrackName:location prefix:self->_spuIMUTrackName];
    [(MIOWriterInterface *)self appendMetadata:dataCopy2 metadataID:v10 timestamp:v9];
  }
}

- (void)processFastPathIMUData:(id)data location:(int64_t *)location metadataID:(id)d
{
  if (data)
  {
    dCopy = d;
    dataCopy = data;
    [CVASpuFastPathComboAxisData getTimestamp:dataCopy];
    v11 = v10;
    v12 = [CVAMetadataWrapperTracks imuTrackName:location prefix:dCopy];

    [(MIOWriterInterface *)self appendMetadata:dataCopy metadataID:v12 timestamp:v11];
  }
}

- (void)processSpuIMUData:(id)data location:(int64_t *)location
{
  dataCopy = data;
  toData = [dataCopy toData];
  if (toData)
  {
    v7 = [CVAMetadataWrapperTracks imuTrackName:location prefix:self->_spuIMUTrackName];
    objc_msgSend_timestamp(dataCopy);
    [(MIOWriterInterface *)self appendMetadata:toData metadataID:v7 timestamp:?];
  }
}

- (void)processAccelerometerData:(id)data andAdditionalData:(id)additionalData location:(int64_t *)location
{
  dataCopy = data;
  v8 = [dataCopy toData:additionalData];
  if (v8)
  {
    v9 = [CVAMetadataWrapperTracks accelerometerTrackName:location prefix:self->_accelTrackName];
    objc_msgSend_timestamp(dataCopy);
    [(MIOWriterInterface *)self appendMetadata:v8 metadataID:v9 timestamp:?];
  }
}

- (void)processGyroscopeData:(id)data andAdditionalData:(id)additionalData location:(int64_t *)location
{
  dataCopy = data;
  v8 = [dataCopy toData:additionalData];
  if (v8)
  {
    v9 = [CVAMetadataWrapperTracks gyroTrackName:location prefix:self->_gyroTrackName];
    objc_msgSend_timestamp(dataCopy);
    [(MIOWriterInterface *)self appendMetadata:v8 metadataID:v9 timestamp:?];
  }
}

- (void)processMotionData:(id)data location:(int64_t *)location
{
  dataCopy = data;
  toData = [dataCopy toData];
  if (toData)
  {
    v7 = [CVAMetadataWrapperTracks motionTrackName:location prefix:self->_motionTrackName];
    objc_msgSend_timestamp(dataCopy);
    [(MIOWriterInterface *)self appendMetadata:toData metadataID:v7 timestamp:?];
  }
}

- (void)processALSData:(id)data location:(int64_t *)location
{
  dataCopy = data;
  toData = [dataCopy toData];
  if (toData)
  {
    v7 = [CVAMetadataWrapperTracks alsTrackName:location prefix:self->_alsTrackName];
    objc_msgSend_timestamp(dataCopy);
    [(MIOWriterInterface *)self appendMetadata:toData metadataID:v7 timestamp:?];
  }
}

- (void)processWiFiData:(id)data location:(int64_t *)location
{
  dataCopy = data;
  toData = [dataCopy toData];
  if (toData)
  {
    v7 = [CVAMetadataWrapperTracks wifiTrackName:location prefix:self->_wifiTrackName];
    objc_msgSend_timestamp(dataCopy);
    [(MIOWriterInterface *)self appendMetadata:toData metadataID:v7 timestamp:?];
  }
}

- (void)processUWBData:(id)data location:(int64_t *)location
{
  dataCopy = data;
  toData = [dataCopy toData];
  if (toData)
  {
    v7 = [CVAMetadataWrapperTracks uwbTrackName:location prefix:self->_uwbTrackName];
    objc_msgSend_timestamp(dataCopy);
    [(MIOWriterInterface *)self appendMetadata:toData metadataID:v7 timestamp:?];
  }
}

- (void)processBLEData:(id)data location:(int64_t *)location
{
  dataCopy = data;
  toData = [dataCopy toData];
  if (toData)
  {
    v7 = [CVAMetadataWrapperTracks bleTrackName:location prefix:self->_bleTrackName];
    objc_msgSend_timestamp(dataCopy);
    [(MIOWriterInterface *)self appendMetadata:toData metadataID:v7 timestamp:?];
  }
}

- (void)processBarometerData:(id)data
{
  dataCopy = data;
  toData = [dataCopy toData];
  if (toData)
  {
    barometerTrackName = self->_barometerTrackName;
    objc_msgSend_timestamp(dataCopy);
    [(MIOWriterInterface *)self appendMetadata:toData metadataID:barometerTrackName timestamp:?];
  }
}

- (void)processCompassData:(id)data location:(int64_t *)location
{
  dataCopy = data;
  toData = [dataCopy toData];
  if (toData)
  {
    v7 = [CVAMetadataWrapperTracks compassTrackName:location prefix:self->_compassTrackName];
    objc_msgSend_timestamp(dataCopy);
    [(MIOWriterInterface *)self appendMetadata:toData metadataID:v7 timestamp:?];
  }
}

- (void)processDeviceMotionData:(id)data andAdditionalData:(id)additionalData location:(int64_t *)location
{
  dataCopy = data;
  v7 = [CVAMetadataWrapper encodeDeviceMotionData:"encodeDeviceMotionData:andAdditionalData:" andAdditionalData:?];
  if (v7)
  {
    v8 = [CVAMetadataWrapperTracks deviceMotionTrackName:location prefix:self->_deviceMotionTrackName];
    objc_msgSend_timestamp(dataCopy);
    [(MIOWriterInterface *)self appendMetadata:v7 metadataID:v8 timestamp:?];
  }
}

- (void)processDeviceMotionData:(id)data location:(int64_t *)location
{
  dataCopy = data;
  toData = [dataCopy toData];
  if (toData)
  {
    v7 = [CVAMetadataWrapperTracks deviceMotionTrackName:location prefix:self->_deviceMotionTrackName];
    objc_msgSend_timestamp(dataCopy);
    [(MIOWriterInterface *)self appendMetadata:toData metadataID:v7 timestamp:?];
  }
}

- (void)processCoreLocationData:(id)data timestamp:(double)timestamp andAdditionalData:(id)additionalData location:(int64_t *)location
{
  v9 = [CVAMetadataWrapper encodeCoreLocationData:data timestamp:additionalData andAdditionalData:?];
  if (v9)
  {
    v11 = v9;
    v10 = [CVAMetadataWrapperTracks locationTrackName:location prefix:self->_locationTrackName];
    [(MIOWriterInterface *)self appendMetadata:v11 metadataID:v10 timestamp:timestamp];

    v9 = v11;
  }
}

- (void)processCMData:(id)data
{
  dataCopy = data;
  toData = [dataCopy toData];
  if (toData)
  {
    objc_msgSend_timestamp(dataCopy);
    [(MIOWriterInterface *)self appendMetadata:toData metadataID:@"CMData" timestamp:?];
  }
}

- (void)processCVAUserEvent:(id)event
{
  eventCopy = event;
  toData = [eventCopy toData];
  if (toData)
  {
    objc_msgSend_timestamp(eventCopy);
    [(MIOWriterInterface *)self appendMetadata:toData metadataID:@"CVAUserEvent" timestamp:?];
  }
}

- (void)processCVATimedValue:(id)value
{
  valueCopy = value;
  toData = [valueCopy toData];
  if (toData)
  {
    objc_msgSend_timestamp(valueCopy);
    [(MIOWriterInterface *)self appendMetadata:toData metadataID:@"CVATimedValue" timestamp:?];
  }
}

- (void)processCVAPRDevice:(id)device
{
  deviceCopy = device;
  toData = [deviceCopy toData];
  if (toData)
  {
    objc_msgSend_timestamp(deviceCopy);
    [(MIOWriterInterface *)self appendMetadata:toData metadataID:@"CVAPRDevice" timestamp:?];
  }
}

- (void)processCVAFeatureBuffer:(__CVBuffer *)buffer timestamp:(double)timestamp syncTimestamp:(unint64_t)syncTimestamp frameId:(unint64_t)id streamName:(id)name
{
  nameCopy = name;
  v12 = [(NSMutableDictionary *)self->_cvaFeatureBufferCompression objectForKeyedSubscript:?];
  bOOLValue = [v12 BOOLValue];

  v14 = [[CVAFeatureBuffer alloc] initWithPixelBufferRef:buffer timestamp:0 streamID:0 reduce:bOOLValue compress:timestamp];
  [(CVAFeatureBuffer *)v14 setSyncTimestamp:syncTimestamp];
  [(CVAFeatureBuffer *)v14 setFrameId:id];
  toData = [(CVAFeatureBuffer *)v14 toData];
  if (toData)
  {
    [(MIOWriterInterface *)self appendMetadata:toData metadataID:nameCopy timestamp:timestamp];
  }
}

- (void)processCVAFeatureBuffer:(id)buffer
{
  bufferCopy = buffer;
  toData = [bufferCopy toData];
  if (toData)
  {
    v5 = [CVAFeatureBuffer streamName:0];
    objc_msgSend_timestamp(bufferCopy);
    [(MIOWriterInterface *)self appendMetadata:toData metadataID:v5 timestamp:?];
  }
}

- (void)processCVADepthTOF:(id)f
{
  fCopy = f;
  toData = [fCopy toData];
  lastError = self->_lastError;
  self->_lastError = 0;

  if (toData)
  {
    v15 = 0;
    v7 = [toData compressedDataUsingAlgorithm:1 error:&v15];
    v8 = v15;
    v9 = v8;
    if (v8)
    {
      v10 = MEMORY[0x277CCA9B8];
      v11 = [v8 description];
      v12 = [v10 mioWriterInterfaceErrorWithMessage:v11 code:1];
      v13 = self->_lastError;
      self->_lastError = v12;

      v9 = v11;
    }

    else
    {
      depthTOFTrackName = self->_depthTOFTrackName;
      objc_msgSend_timestamp(fCopy);
      [(MIOWriterInterface *)self appendMetadata:v7 metadataID:depthTOFTrackName timestamp:?];
    }
  }
}

- (void)processCVACameraCalibrationData:(id)data
{
  dataCopy = data;
  toData = [dataCopy toData];
  if (toData)
  {
    objc_msgSend_timestamp(dataCopy);
    [(MIOWriterInterface *)self appendMetadata:toData metadataID:@"CVACameraCalibration" timestamp:0 enforceMonotonicity:?];
  }
}

- (void)processClass:(id)class andAdditionalData:(id)data metadataID:(id)d
{
  dCopy = d;
  v8 = [CVAMetadataWrapper encodeClass:class andAdditionalData:data];
  if (v8)
  {
    [(MIOWriterInterface *)self appendMetadata:v8 metadataID:dCopy];
  }
}

- (void)processClass:(id)class andAdditionalData:(id)data metadataID:(id)d timestamp:(double)timestamp
{
  dCopy = d;
  v10 = [CVAMetadataWrapper encodeClass:class andAdditionalData:data];
  if (v10)
  {
    [(MIOWriterInterface *)self appendMetadata:v10 metadataID:dCopy timestamp:timestamp];
  }
}

- (void)processNSCoderObject:(id)object metadataID:(id)d
{
  dCopy = d;
  v6 = [CVAMetadataWrapper encodeNSCoderObject:object];
  if (v6)
  {
    [(MIOWriterInterface *)self appendMetadata:v6 metadataID:dCopy];
  }
}

- (void)processNSCoderObject:(id)object metadataID:(id)d timestamp:(double)timestamp
{
  dCopy = d;
  v8 = [CVAMetadataWrapper encodeNSCoderObject:object];
  if (v8)
  {
    [(MIOWriterInterface *)self appendMetadata:v8 metadataID:dCopy timestamp:timestamp];
  }
}

- (void)appendMetadata:(id)metadata metadataID:(id)d timestamp:(double)timestamp enforceMonotonicity:(BOOL)monotonicity
{
  monotonicityCopy = monotonicity;
  v44 = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_isReady)
  {
    if (!monotonicityCopy)
    {
      goto LABEL_6;
    }

    lastError = selfCopy->_lastError;
    selfCopy->_lastError = 0;

    v14 = [(NSMutableDictionary *)selfCopy->_metadataLastTimestamp objectForKeyedSubscript:dCopy];
    v15 = v14;
    if (!v14 || ([v14 doubleValue], v16 <= timestamp))
    {
      v17 = [MEMORY[0x277CCABB0] numberWithDouble:timestamp];
      [(NSMutableDictionary *)selfCopy->_metadataLastTimestamp setObject:v17 forKeyedSubscript:dCopy];

LABEL_6:
      v18 = [(NSMutableDictionary *)selfCopy->_metadataAttachmentArrays objectForKeyedSubscript:dCopy];
      [v18 addObject:metadataCopy];
      if (timestamp < 0.0)
      {
LABEL_29:

        goto LABEL_30;
      }

      v19 = [(NSMutableDictionary *)selfCopy->_metadataMaxBufferSize objectForKeyedSubscript:dCopy];
      v20 = v19;
      if (!v19 || (v21 = [v19 unsignedIntValue], objc_msgSend(v18, "count") <= v21) || (selfCopy->_lastAppendMetadata.flags & 1) == 0)
      {
LABEL_21:
        if (selfCopy->_writeMetadataTimeInterval > 0.0)
        {
          v36 = [(NSMutableDictionary *)selfCopy->_metadataAttachmentArraysTimestamp objectForKeyedSubscript:dCopy];
          if (!v36)
          {
            v37 = [MEMORY[0x277CCABB0] numberWithDouble:timestamp];
            [(NSMutableDictionary *)selfCopy->_metadataAttachmentArraysTimestamp setObject:v37 forKeyedSubscript:dCopy];
          }

          memset(&buf, 0, sizeof(buf));
          objc_msgSend_cmTimeFromTimestamp_(MIOWriterInterface, timestamp - selfCopy->_writeMetadataTimeInterval);
          if ((selfCopy->_lastAppendMetadata.flags & 1) == 0 || (time1 = buf, v38 = *&selfCopy->_lastAppendMetadata.value, time2.epoch = selfCopy->_lastAppendMetadata.epoch, *&time2.value = v38, CMTimeCompare(&time1, &time2) >= 1))
          {
            objc_msgSend_cmTimeFromTimestamp_(MIOWriterInterface, timestamp);
            [(MIOWriterInterface *)selfCopy appendAllMetadataWithTimeStamp:&time1];
          }
        }

        goto LABEL_29;
      }

      v22 = [(NSMutableDictionary *)selfCopy->_streamInputs objectForKeyedSubscript:dCopy];
      if ([v22 canAppend])
      {
        v39 = [MEMORY[0x277CBEA60] arrayWithArray:v18];
        memset(&buf, 0, sizeof(buf));
        objc_msgSend_cmTimeFromTimestamp_(MIOWriterInterface, timestamp);
        time1 = buf;
        v42 = 0;
        [v22 appendMetadata:v39 withTimeStamp:&time1 error:&v42];
        v23 = v42;
        v24 = v23;
        if (v23)
        {
          v25 = MEMORY[0x277CCA9B8];
          v26 = MEMORY[0x277CCACA8];
          v27 = [v23 description];
          v28 = [v26 stringWithFormat:@"Failed to write metadata buffer: %@", v27];
          v29 = [v25 mioWriterInterfaceErrorWithMessage:v28 code:5];
          v30 = selfCopy->_lastError;
          selfCopy->_lastError = v29;
        }

        else
        {
          [v18 removeAllObjects];
          v35 = *&buf.value;
          selfCopy->_lastAppendMetadata.epoch = buf.epoch;
          *&selfCopy->_lastAppendMetadata.value = v35;
        }
      }

      else
      {
        if (!+[AppleCV3DMOVKitLog debugEnabled])
        {
LABEL_20:

          goto LABEL_21;
        }

        v24 = +[AppleCV3DMOVKitLog defaultLog];
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          LODWORD(buf.value) = 138412290;
          *(&buf.value + 4) = dCopy;
          _os_log_impl(&dword_24016D000, v24, OS_LOG_TYPE_DEBUG, "[MIOWriterInterface] Input not ready: %@", &buf, 0xCu);
        }
      }

      goto LABEL_20;
    }

    v31 = MEMORY[0x277CCA9B8];
    v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ timestamp %.6f is older than %.6f", dCopy, *&timestamp, *&v16];
    v33 = [v31 mioWriterInterfaceErrorWithMessage:v32 code:0];
    v34 = selfCopy->_lastError;
    selfCopy->_lastError = v33;
  }

LABEL_30:
  objc_sync_exit(selfCopy);
}

- (void)clearAllMetadataBuffers
{
  v13 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = selfCopy->_metadataAttachmentArrays;
  v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = [(NSMutableDictionary *)selfCopy->_metadataAttachmentArrays objectForKeyedSubscript:*(*(&v8 + 1) + 8 * v6), v8];
        [v7 removeAllObjects];

        ++v6;
      }

      while (v4 != v6);
      v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  objc_sync_exit(selfCopy);
}

- (void)appendAllMetadataWithTimeStamp:(id *)stamp
{
  v32 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  allKeys = [(NSMutableDictionary *)selfCopy->_metadataAttachmentArrays allKeys];
  if (selfCopy->_writeMetadataTimeInterval > 0.0)
  {
    allKeys2 = [(NSMutableDictionary *)selfCopy->_metadataAttachmentArrays allKeys];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = sub_24018896C;
    v30[3] = &unk_278C9B1C8;
    v30[4] = selfCopy;
    v6 = [allKeys2 sortedArrayUsingComparator:v30];

    allKeys = v6;
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = allKeys;
  v7 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v7)
  {
    v19 = *v27;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v27 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v26 + 1) + 8 * i);
        v10 = [(NSMutableDictionary *)selfCopy->_metadataAttachmentArrays objectForKeyedSubscript:v9];
        v11 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
        [v10 removeAllObjects];
        if ([v11 count])
        {
          v12 = [(NSMutableDictionary *)selfCopy->_metadataAttachmentArraysTimestamp objectForKeyedSubscript:v9];
          v13 = [(NSMutableDictionary *)selfCopy->_streamInputs objectForKeyedSubscript:v9];
          v14 = v13;
          if (v12)
          {
            v24 = 0uLL;
            var3 = 0;
            [v12 doubleValue];
            objc_msgSend_cmTimeFromTimestamp_(MIOWriterInterface);
            v21 = v24;
            v22 = var3;
            v23 = 0;
            [v14 appendMetadata:v11 withTimeStamp:&v21 error:&v23];
            v15 = v23;
            [(NSMutableDictionary *)selfCopy->_metadataAttachmentArraysTimestamp setObject:0 forKeyedSubscript:v9];
          }

          else
          {
            v20 = 0;
            v24 = *&stamp->var0;
            var3 = stamp->var3;
            [v13 appendMetadata:v11 withTimeStamp:&v24 error:&v20];
            v15 = v20;
          }
        }
      }

      v7 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v7);
  }

  v16 = stamp->var3;
  *&selfCopy->_lastAppendMetadata.value = *&stamp->var0;
  selfCopy->_lastAppendMetadata.epoch = v16;

  objc_sync_exit(selfCopy);
}

- (MIOWriterInterfaceDelegate)interface_delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_interface_delegate);

  return WeakRetained;
}

@end