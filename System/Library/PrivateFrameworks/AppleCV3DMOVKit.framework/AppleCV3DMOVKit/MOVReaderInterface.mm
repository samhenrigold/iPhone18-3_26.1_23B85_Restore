@interface MOVReaderInterface
+ (BOOL)grabSWToWExtrinsics:(id *)extrinsics summary:(id)summary backExtrinsics:(id)backExtrinsics;
+ (BOOL)isSuperWideStream:(id)stream;
+ (id)grabCMSessionID:(id)d;
+ (id)grabJasperExtrinsics:(id)extrinsics backExtrinsics:(id)backExtrinsics;
- (BOOL)grabSWToWExtrinsics:(id *)extrinsics;
- (BOOL)resetReaderTo:(id *)to error:(id *)error;
- (MOVReaderInterface)initWithFileURL:(id)l delegate:(id)delegate error:(id *)error;
- (MOVReaderInterface)initWithFileURL:(id)l enforcedVideoTrackFormat:(id)format error:(id *)error;
- (NSNumber)depthSourceFrameRate;
- (NSNumber)depthSourceMaxPoints;
- (__CVBuffer)copyNextFrameForStream:(id)stream timestamp:(id *)timestamp error:(id *)error;
- (id)applyFlip:(id)flip f:(id)f;
- (id)deviceStringFromPlatformID:(id)d;
- (id)grabCalibration:(int64_t *)calibration;
- (id)grabJasperExtrinsics;
- (id)grabMovieMetadataForKey:(id)key;
- (id)grabMovieMetadataItem:(id)item;
- (id)grabMovieMetadataRawForKey:(id)key;
- (id)grabNextBarometerData:(id *)data;
- (id)grabNextCLLocation:(id *)location location:(int64_t *)a4 timestamps:(id *)timestamps;
- (id)grabNextCMData:(id *)data;
- (id)grabNextCMDeviceMotion:(id *)motion;
- (id)grabNextCVACameraCalibrationData:(id *)data;
- (id)grabNextClass:(id)class class:(Class)a4 timeRange:(id *)range;
- (id)grabNextDepthIR:(id)r timeRange:(id *)range;
- (id)grabNextDepthTOF:(id *)f sampleDropped:(BOOL *)dropped;
- (id)grabNextDeviceMotionData:(id *)data location:(int64_t *)location;
- (id)grabNextDictionary:(id)dictionary timeRange:(id *)range;
- (id)grabNextFastPathMUData:(int64_t *)data;
- (id)grabNextFastPathMUData:(int64_t *)data metadataID:(id)d;
- (id)grabNextFeatureBuffer;
- (id)grabNextFeatureBuffer:(id *)buffer streamName:(id)name;
- (id)grabNextMotionData:(id *)data location:(int64_t *)location;
- (id)grabNextNSCoderObject:(id)object class:(Class)class;
- (id)grabNextNSCoderObject:(id)object class:(Class)class timeRange:(id *)range;
- (id)grabNextNSCoderObject:(id)object classes:(id)classes timeRange:(id *)range;
- (id)grabNextPRDevice:(id *)device;
- (id)grabNextRawALSData:(id *)data location:(int64_t *)location;
- (id)grabNextRawAccelData:(id *)data location:(int64_t *)location;
- (id)grabNextRawBLEData:(id *)data location:(int64_t *)location;
- (id)grabNextRawCompassData:(id *)data location:(int64_t *)location;
- (id)grabNextRawGyroData:(id *)data location:(int64_t *)location;
- (id)grabNextRawUWBData:(id *)data location:(int64_t *)location;
- (id)grabNextRawWiFiData:(id *)data location:(int64_t *)location;
- (id)grabNextSpuIMUData:(id *)data location:(int64_t *)location;
- (id)grabNextStreamData:(id)data timeRange:(id *)range;
- (id)grabNextTimedValue:(id *)value;
- (id)grabNextUserEvent:(id *)event;
- (id)grabSummary;
- (id)resolvedAccelStreamName:(int64_t *)name;
- (id)resolvedCalibration:(int64_t *)calibration;
- (id)resolvedCompassStreamName:(int64_t *)name;
- (id)resolvedDeviceMotionStreamName:(int64_t *)name;
- (id)resolvedGyroStreamName:(int64_t *)name;
- (id)resolvedLocationStreamName:(int64_t *)name;
- (id)resolvedMotionStreamName:(int64_t *)name;
- (unsigned)reader:(id)reader pixelFormatForStream:(id)stream suggestedFormat:(unsigned int)format;
- (void)addStreamFilter:(id)filter obj:(id)obj;
- (void)addStreamFilters:(id)filters;
- (void)setDepthOutputFrameRate:(id)rate;
@end

@implementation MOVReaderInterface

- (id)deviceStringFromPlatformID:(id)d
{
  intValue = [d intValue];
  v4 = @"J420";
  v5 = @"ST2";
  if (intValue != 178)
  {
    v5 = 0;
  }

  if ((intValue - 82) >= 2)
  {
    v4 = v5;
  }

  if ((intValue - 80) >= 2)
  {
    v6 = v4;
  }

  else
  {
    v6 = @"J417";
  }

  v7 = @"D93";
  v8 = @"D94";
  if (intValue != 70)
  {
    v8 = 0;
  }

  if (intValue != 69)
  {
    v7 = v8;
  }

  v9 = @"D84";
  if (intValue != 67)
  {
    v9 = 0;
  }

  if (intValue == 66)
  {
    v9 = @"D83";
  }

  if (intValue <= 68)
  {
    v7 = v9;
  }

  if (intValue <= 79)
  {
    return v7;
  }

  else
  {
    return v6;
  }
}

- (BOOL)resetReaderTo:(id *)to error:(id *)error
{
  self->_lastDepthTOFTimestamp = 0.0;
  v6.receiver = self;
  v6.super_class = MOVReaderInterface;
  v5 = *to;
  return [(MOVStreamReader *)&v6 resetReaderTo:&v5 error:error];
}

- (MOVReaderInterface)initWithFileURL:(id)l delegate:(id)delegate error:(id *)error
{
  v181[20] = *MEMORY[0x277D85DE8];
  v176.receiver = self;
  v176.super_class = MOVReaderInterface;
  v5 = [(MOVStreamReader *)&v176 initWithURL:l delegate:delegate error:error];
  v6 = v5;
  if (!v5)
  {
    return v6;
  }

  lastError = v5->_lastError;
  v5->_lastError = 0;

  v8 = objc_opt_new();
  streamFilters = v6->_streamFilters;
  v6->_streamFilters = v8;

  grabSummary = [(MOVReaderInterface *)v6 grabSummary];
  v11 = [grabSummary objectForKeyedSubscript:@"deviceName"];
  deviceName = v6->_deviceName;
  v6->_deviceName = v11;

  v13 = [grabSummary objectForKeyedSubscript:@"CFBundleIdentifier"];
  bundleID = v6->_bundleID;
  v6->_bundleID = v13;

  v15 = [grabSummary objectForKeyedSubscript:@"version"];
  version = v6->_version;
  v6->_version = v15;

  v17 = [grabSummary objectForKeyedSubscript:@"SerialNumber"];
  serialNumber = v6->_serialNumber;
  v6->_serialNumber = v17;

  v19 = [grabSummary objectForKeyedSubscript:@"ProductConfig"];
  productConfig = v6->_productConfig;
  v6->_productConfig = v19;

  v21 = [grabSummary objectForKeyedSubscript:@"ProductVersion"];
  productVersion = v6->_productVersion;
  v6->_productVersion = v21;

  v23 = [grabSummary objectForKeyedSubscript:@"OSBuildVersion"];
  osVersion = v6->_osVersion;
  v6->_osVersion = v23;

  if (!v6->_osVersion)
  {
    v25 = [grabSummary objectForKeyedSubscript:@"mdta/com.apple.arkit.osversion"];
    v26 = v6->_osVersion;
    v6->_osVersion = v25;
  }

  v151 = grabSummary;
  v27 = [grabSummary objectForKeyedSubscript:@"machTimeSince1970"];
  [v27 doubleValue];
  v6->_machTimeSince1970 = v28;

  v154 = objc_opt_new();
  v181[0] = @"com.apple.reality.kind.data.imu800";
  v181[1] = @"com.apple.reality.kind.data.accelerometer";
  v181[2] = @"com.apple.reality.kind.data.gyroscope";
  v181[3] = @"com.apple.reality.kind.data.compass";
  v181[4] = @"com.apple.reality.kind.data.als";
  v181[5] = @"com.apple.reality.kind.data.wifi";
  v181[6] = @"com.apple.reality.kind.data.uwb";
  v181[7] = @"com.apple.reality.kind.data.ble";
  v181[8] = @"com.apple.reality.kind.data.zcam_tof_pc";
  v181[9] = @"com.apple.reality.kind.camera.xcam.pointcloud";
  v181[10] = @"RawAccelerometer";
  v181[11] = @"RawGyroscope";
  v181[12] = @"Compass";
  v181[13] = @"ALS";
  v181[14] = @"CVADepthTOF";
  v181[15] = @"CVAUserEvent";
  v181[16] = @"com.apple.reality.kind.data.user_event";
  v181[17] = @"CVAPRDevice";
  v181[18] = @"com.apple.reality.kind.data.devicemotion";
  v181[19] = @"Motion";
  v157 = [MEMORY[0x277CBEA60] arrayWithObjects:v181 count:20];
  [(MOVStreamReader *)v6 getAllMetadataStreams];
  v172 = 0u;
  v173 = 0u;
  v174 = 0u;
  obj = v175 = 0u;
  v29 = [obj countByEnumeratingWithState:&v172 objects:v180 count:16];
  v158 = v6;
  if (v29)
  {
    v30 = v29;
    v155 = *v173;
    do
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v173 != v155)
        {
          objc_enumerationMutation(obj);
        }

        v33 = *(*(&v172 + 1) + 8 * i);
        v34 = [(MOVStreamReader *)v6 metadataTrackForStream:v33];
        totalSampleDataLength = [v34 totalSampleDataLength];
        v168 = 0u;
        v169 = 0u;
        v170 = 0u;
        v171 = 0u;
        v36 = v157;
        v37 = [v36 countByEnumeratingWithState:&v168 objects:v179 count:16];
        if (v37)
        {
          v38 = v37;
          v39 = *v169;
          do
          {
            for (j = 0; j != v38; ++j)
            {
              if (*v169 != v39)
              {
                objc_enumerationMutation(v36);
              }

              v41 = *(*(&v168 + 1) + 8 * j);
              if ([v33 hasPrefix:v41])
              {
                v32 = [MEMORY[0x277CCABB0] numberWithBool:totalSampleDataLength > 0];
                [v154 setObject:v32 forKeyedSubscript:v41];

                goto LABEL_9;
              }
            }

            v38 = [v36 countByEnumeratingWithState:&v168 objects:v179 count:16];
          }

          while (v38);
        }

LABEL_9:

        v6 = v158;
      }

      v30 = [obj countByEnumeratingWithState:&v172 objects:v180 count:16];
    }

    while (v30);
  }

  spuIMUTrackName = v6->_spuIMUTrackName;
  v6->_spuIMUTrackName = 0;

  v43 = [v154 objectForKeyedSubscript:@"com.apple.reality.kind.data.imu800"];
  bOOLValue = [v43 BOOLValue];

  if (bOOLValue)
  {
    objc_storeStrong(&v6->_spuIMUTrackName, @"com.apple.reality.kind.data.imu800");
  }

  v150 = [CVAMetadataWrapperTracks imuTrackName:0 prefix:v6->_spuIMUTrackName];
  v6->_imuLocationNil = [obj containsObject:?];
  v149 = [CVAMetadataWrapperTracks motionTrackName:&unk_27E3C8650 prefix:v6->_spuIMUTrackName];
  v6->_imuLocation0 = [obj containsObject:?];
  v45 = objc_opt_new();
  spuVersions = v6->_spuVersions;
  v6->_spuVersions = v45;

  if (v6->_spuIMUTrackName)
  {
    v166 = 0u;
    v167 = 0u;
    v164 = 0u;
    v165 = 0u;
    v47 = obj;
    v48 = [v47 countByEnumeratingWithState:&v164 objects:v178 count:16];
    if (v48)
    {
      v49 = v48;
      v50 = *v165;
      do
      {
        for (k = 0; k != v49; ++k)
        {
          if (*v165 == v50)
          {
            v52 = *(*(&v164 + 1) + 8 * k);
            if (![v52 hasPrefix:@"com.apple.reality.kind.data.imu800"])
            {
              continue;
            }
          }

          else
          {
            objc_enumerationMutation(v47);
            v52 = *(*(&v164 + 1) + 8 * k);
            if (![v52 hasPrefix:@"com.apple.reality.kind.data.imu800"])
            {
              continue;
            }
          }

          v163 = 0;
          [CVAMetadataWrapperTracks locationFromTrackName:v52 location:&v163];
          v53 = [(MOVStreamReader *)v158 trackMetadataForMetadataStream:v52];
          v54 = [v53 objectForKeyedSubscript:@"com.apple.AppleCV3DMOVKit.fastPathIMUVersion"];
          v55 = v54;
          if (v54)
          {
            v56 = v54;
          }

          else
          {
            v56 = &unk_2852252A8;
          }

          v57 = v158->_spuVersions;
          v58 = [MEMORY[0x277CCABB0] numberWithInteger:v163];
          [(NSMutableDictionary *)v57 setObject:v56 forKeyedSubscript:v58];
        }

        v49 = [v47 countByEnumeratingWithState:&v164 objects:v178 count:16];
      }

      while (v49);
    }

    v6 = v158;
  }

  accelTrackName = v6->_accelTrackName;
  v6->_accelTrackName = 0;

  v60 = @"com.apple.reality.kind.data.accelerometer";
  v61 = [v154 objectForKeyedSubscript:@"com.apple.reality.kind.data.accelerometer"];
  bOOLValue2 = [v61 BOOLValue];

  if ((bOOLValue2 & 1) != 0 || (v60 = @"RawAccelerometer", [v154 objectForKeyedSubscript:@"RawAccelerometer"], v63 = objc_claimAutoreleasedReturnValue(), v64 = objc_msgSend(v63, "BOOLValue"), v63, v64))
  {
    objc_storeStrong(&v6->_accelTrackName, v60);
  }

  v156 = [CVAMetadataWrapperTracks accelerometerTrackName:0 prefix:v6->_accelTrackName];
  v6->_accelLocationNil = [obj containsObject:?];
  v152 = [CVAMetadataWrapperTracks accelerometerTrackName:&unk_27E3C8650 prefix:v6->_accelTrackName];
  v6->_accelLocation0 = [obj containsObject:?];
  gyroTrackName = v6->_gyroTrackName;
  v6->_gyroTrackName = 0;

  v66 = @"com.apple.reality.kind.data.gyroscope";
  v67 = [v154 objectForKeyedSubscript:@"com.apple.reality.kind.data.gyroscope"];
  bOOLValue3 = [v67 BOOLValue];

  if ((bOOLValue3 & 1) != 0 || (v66 = @"RawGyroscope", [v154 objectForKeyedSubscript:@"RawGyroscope"], v69 = objc_claimAutoreleasedReturnValue(), v70 = objc_msgSend(v69, "BOOLValue"), v69, v70))
  {
    objc_storeStrong(&v6->_gyroTrackName, v66);
  }

  v148 = [CVAMetadataWrapperTracks gyroTrackName:0 prefix:v6->_gyroTrackName];
  v6->_gyroLocationNil = [obj containsObject:?];
  v147 = [CVAMetadataWrapperTracks gyroTrackName:&unk_27E3C8650 prefix:v6->_gyroTrackName];
  v6->_gyroLocation0 = [obj containsObject:?];
  motionTrackName = v6->_motionTrackName;
  v6->_motionTrackName = 0;

  v72 = [v154 objectForKeyedSubscript:@"com.apple.reality.kind.data.motion"];
  bOOLValue4 = [v72 BOOLValue];

  v74 = @"com.apple.reality.kind.data.als";
  if (bOOLValue4)
  {
    objc_storeStrong(&v6->_motionTrackName, @"com.apple.reality.kind.data.motion");
  }

  v145 = [CVAMetadataWrapperTracks motionTrackName:0 prefix:v6->_motionTrackName];
  v6->_motionLocationNil = [obj containsObject:?];
  v144 = [CVAMetadataWrapperTracks motionTrackName:&unk_27E3C8650 prefix:v6->_motionTrackName];
  v6->_motionLocation0 = [obj containsObject:?];
  deviceMotionTrackName = v6->_deviceMotionTrackName;
  v6->_deviceMotionTrackName = 0;

  v76 = @"com.apple.reality.kind.data.devicemotion";
  v77 = [v154 objectForKeyedSubscript:@"com.apple.reality.kind.data.devicemotion"];
  bOOLValue5 = [v77 BOOLValue];

  if ((bOOLValue5 & 1) != 0 || (v76 = @"Motion", [v154 objectForKeyedSubscript:@"Motion"], v79 = objc_claimAutoreleasedReturnValue(), v80 = objc_msgSend(v79, "BOOLValue"), v79, v80))
  {
    objc_storeStrong(&v6->_deviceMotionTrackName, v76);
  }

  v143 = [CVAMetadataWrapperTracks deviceMotionTrackName:0 prefix:v6->_deviceMotionTrackName];
  v6->_deviceMotionLocationNil = [obj containsObject:?];
  v142 = [CVAMetadataWrapperTracks deviceMotionTrackName:&unk_27E3C8650 prefix:v6->_deviceMotionTrackName];
  v6->_deviceMotionLocation0 = [obj containsObject:?];
  locationTrackName = v6->_locationTrackName;
  v6->_locationTrackName = 0;

  v82 = [v154 objectForKeyedSubscript:@"Location"];
  bOOLValue6 = [v82 BOOLValue];

  if (bOOLValue6)
  {
    objc_storeStrong(&v6->_locationTrackName, @"Location");
  }

  v141 = [CVAMetadataWrapperTracks locationTrackName:0 prefix:v6->_locationTrackName];
  v6->_locationLocationNil = [obj containsObject:?];
  v140 = [CVAMetadataWrapperTracks locationTrackName:&unk_27E3C8650 prefix:v6->_locationTrackName];
  v6->_locationLocation0 = [obj containsObject:?];
  objc_storeStrong(&v6->_barometerTrackName, @"com.apple.reality.kind.data.barometer");
  compassTrackName = v6->_compassTrackName;
  v6->_compassTrackName = 0;

  v85 = @"com.apple.reality.kind.data.compass";
  v86 = [v154 objectForKeyedSubscript:@"com.apple.reality.kind.data.compass"];
  bOOLValue7 = [v86 BOOLValue];

  if ((bOOLValue7 & 1) != 0 || (v85 = @"Compass", [v154 objectForKeyedSubscript:@"Compass"], v88 = objc_claimAutoreleasedReturnValue(), v89 = objc_msgSend(v88, "BOOLValue"), v88, v89))
  {
    objc_storeStrong(&v6->_compassTrackName, v85);
  }

  v146 = [CVAMetadataWrapperTracks compassTrackName:0 prefix:v6->_compassTrackName];
  v6->_compassLocationNil = [obj containsObject:?];
  v90 = [CVAMetadataWrapperTracks compassTrackName:&unk_27E3C8650 prefix:v6->_compassTrackName];
  v6->_compassLocation0 = [obj containsObject:v90];
  alsTrackName = v6->_alsTrackName;
  v6->_alsTrackName = 0;

  v92 = [v154 objectForKeyedSubscript:@"com.apple.reality.kind.data.als"];
  bOOLValue8 = [v92 BOOLValue];

  v94 = @"com.apple.reality.kind.camera.xcam.pointcloud";
  if ((bOOLValue8 & 1) != 0 || (v74 = @"ALS", [v154 objectForKeyedSubscript:@"ALS"], v95 = objc_claimAutoreleasedReturnValue(), v96 = objc_msgSend(v95, "BOOLValue"), v95, v96))
  {
    objc_storeStrong(&v6->_alsTrackName, v74);
  }

  wifiTrackName = v6->_wifiTrackName;
  v6->_wifiTrackName = 0;

  v98 = [v154 objectForKeyedSubscript:@"com.apple.reality.kind.data.wifi"];
  bOOLValue9 = [v98 BOOLValue];

  if (bOOLValue9)
  {
    objc_storeStrong(&v6->_wifiTrackName, @"com.apple.reality.kind.data.wifi");
  }

  uwbTrackName = v6->_uwbTrackName;
  v6->_uwbTrackName = 0;

  v101 = [v154 objectForKeyedSubscript:@"com.apple.reality.kind.data.uwb"];
  bOOLValue10 = [v101 BOOLValue];

  if (bOOLValue10)
  {
    objc_storeStrong(&v6->_uwbTrackName, @"com.apple.reality.kind.data.uwb");
  }

  bleTrackName = v6->_bleTrackName;
  v6->_bleTrackName = 0;

  v104 = [v154 objectForKeyedSubscript:@"com.apple.reality.kind.data.ble"];
  bOOLValue11 = [v104 BOOLValue];

  if (bOOLValue11)
  {
    objc_storeStrong(&v6->_bleTrackName, @"com.apple.reality.kind.data.ble");
  }

  depthTOFTrackName = v6->_depthTOFTrackName;
  v6->_depthTOFTrackName = 0;

  v107 = [v154 objectForKeyedSubscript:@"com.apple.reality.kind.camera.xcam.pointcloud"];
  bOOLValue12 = [v107 BOOLValue];

  if (bOOLValue12 & 1) != 0 || (v94 = @"com.apple.reality.kind.data.zcam_tof_pc", [v154 objectForKeyedSubscript:@"com.apple.reality.kind.data.zcam_tof_pc"], v109 = objc_claimAutoreleasedReturnValue(), v110 = objc_msgSend(v109, "BOOLValue"), v109, (v110) || (v94 = @"CVADepthTOF", objc_msgSend(v154, "objectForKeyedSubscript:", @"CVADepthTOF"), v111 = objc_claimAutoreleasedReturnValue(), v112 = objc_msgSend(v111, "BOOLValue"), v111, v112))
  {
    objc_storeStrong(&v6->_depthTOFTrackName, v94);
  }

  v6->_lastDepthTOFTimestamp = 0.0;
  v113 = [v154 objectForKeyedSubscript:@"CVAUserEvent"];
  if ([v113 BOOLValue])
  {
    v114 = @"CVAUserEvent";
  }

  else
  {
    v114 = 0;
  }

  objc_storeStrong(&v6->_userEventTrackName, v114);

  v115 = [v154 objectForKeyedSubscript:@"com.apple.reality.kind.data.user_event"];
  if ([v115 BOOLValue])
  {
    v116 = @"com.apple.reality.kind.data.user_event";
  }

  else
  {
    v116 = 0;
  }

  objc_storeStrong(&v6->_ryfTimedValueTrackName, v116);

  v117 = [v154 objectForKeyedSubscript:@"CVAPRDevice"];
  if ([v117 BOOLValue])
  {
    v118 = @"CVAPRDevice";
  }

  else
  {
    v118 = 0;
  }

  objc_storeStrong(&v6->_prDeviceTrackName, v118);

  tofDepthPCStreamID = v6->_tofDepthPCStreamID;
  v6->_tofDepthPCStreamID = 0;

  v161 = 0u;
  v162 = 0u;
  v159 = 0u;
  v160 = 0u;
  getAllStreams = [(MOVStreamReader *)v6 getAllStreams];
  v121 = [getAllStreams countByEnumeratingWithState:&v159 objects:v177 count:16];
  if (!v121)
  {
    goto LABEL_99;
  }

  v122 = v121;
  v123 = *v160;
  v124 = *MEMORY[0x277CF3CE0];
  while (2)
  {
    for (m = 0; m != v122; ++m)
    {
      if (*v160 != v123)
      {
        objc_enumerationMutation(getAllStreams);
      }

      v126 = *(*(&v159 + 1) + 8 * m);
      if (([v126 isEqualToString:v124] & 1) != 0 || (objc_msgSend(v126, "isEqualToString:", @"JasperCamera") & 1) != 0 || objc_msgSend(v126, "isEqualToString:", @"com.apple.reality.kind.camera.backsparsetimeofflight.raw"))
      {
        v127 = v126;
        v6 = v158;
        objc_storeStrong(&v158->_tofDepthPCStreamID, v127);
        v128 = [(MOVReaderInterface *)v158 grabMovieMetadataForKey:@"mdta/com.apple.jasperl.calibdata"];
        if (v128)
        {
          v129 = v128;
        }

        else
        {
          v129 = [(MOVReaderInterface *)v158 grabMovieMetadataForKey:@"mdta/com.apple.assetCapture.calibration.Back.ToF"];
          if (!v129)
          {
            v134 = MEMORY[0x277CCA9B8];
            v135 = @"Failed to read TOF calibration";
            v136 = 6;
            goto LABEL_97;
          }
        }

        v130 = [[CVAPeridotDepthFrameProcessor alloc] initWithCalibrationDict:v129];
        pdfp = v158->_pdfp;
        v158->_pdfp = v130;

        if (v158->_pdfp)
        {
          if (v158->_jdfp)
          {
            goto LABEL_98;
          }
        }

        else
        {
          v132 = [[CVAJasperDepthFrameProcessor alloc] initWithCalibrationDict:v129];
          jdfp = v158->_jdfp;
          v158->_jdfp = v132;

          if (v158->_jdfp)
          {
            goto LABEL_98;
          }
        }

        if (!v158->_pdfp)
        {
          v134 = MEMORY[0x277CCA9B8];
          v135 = @"Failed to initialize TOF frame processor";
          v136 = 15;
LABEL_97:
          v137 = [v134 movReaderInterfaceErrorWithMessage:v135 code:v136];
          v138 = v158->_lastError;
          v158->_lastError = v137;
        }

LABEL_98:

        goto LABEL_99;
      }
    }

    v122 = [getAllStreams countByEnumeratingWithState:&v159 objects:v177 count:16];
    v6 = v158;
    if (v122)
    {
      continue;
    }

    break;
  }

LABEL_99:

  v6->_jasperCounter = 0;
  *v6->_jasperEnabled = 0x101010101010101;
  *&v6->_jasperEnabled[8] = 0x101010101010101;

  return v6;
}

- (NSNumber)depthSourceFrameRate
{
  if (self->_depthTOFTrackName)
  {
    v3 = [(MOVStreamReader *)self trackMetadataForMetadataStream:?];
    v4 = [v3 objectForKeyedSubscript:@"Framerate"];
    if (!v4)
    {
      if ([(NSString *)self->_deviceString hasPrefix:@"D83"]|| [(NSString *)self->_deviceString hasPrefix:@"D84"]|| [(NSString *)self->_deviceString hasPrefix:@"D93"]|| [(NSString *)self->_deviceString hasPrefix:@"D94"])
      {
        v4 = &unk_2852252D8;
      }

      else
      {
        v4 = &unk_2852252C0;
      }
    }

    v5 = v4;
  }

  else
  {
    v5 = &unk_2852252A8;
  }

  return v5;
}

- (NSNumber)depthSourceMaxPoints
{
  if (self->_depthTOFTrackName)
  {
    v3 = [(MOVStreamReader *)self trackMetadataForMetadataStream:?];
    v4 = [v3 objectForKeyedSubscript:@"MaxPoints"];
    if (!v4)
    {
      if ([(NSString *)self->_deviceString hasPrefix:@"D83"]|| [(NSString *)self->_deviceString hasPrefix:@"D84"]|| [(NSString *)self->_deviceString hasPrefix:@"D93"]|| [(NSString *)self->_deviceString hasPrefix:@"D94"])
      {
        v4 = &unk_285225308;
      }

      else
      {
        v4 = &unk_2852252F0;
      }
    }

    v5 = v4;
  }

  else
  {
    v5 = &unk_2852252A8;
  }

  return v5;
}

- (void)setDepthOutputFrameRate:(id)rate
{
  rateCopy = rate;
  lastError = self->_lastError;
  self->_lastError = 0;

  objc_storeStrong(&self->_depthOutputFrameRate, rate);
  depthSourceMaxPoints = [(MOVReaderInterface *)self depthSourceMaxPoints];
  v7 = [depthSourceMaxPoints isEqualToNumber:&unk_2852252F0];

  if (v7)
  {
    depthSourceFrameRate = [(MOVReaderInterface *)self depthSourceFrameRate];
    if ([depthSourceFrameRate compare:self->_depthOutputFrameRate] == 1)
    {
      if ([depthSourceFrameRate isEqualToNumber:&unk_2852252C0] && -[NSNumber isEqualToNumber:](self->_depthOutputFrameRate, "isEqualToNumber:", &unk_2852252D8) || objc_msgSend(depthSourceFrameRate, "isEqualToNumber:", &unk_2852252D8) && -[NSNumber isEqualToNumber:](self->_depthOutputFrameRate, "isEqualToNumber:", &unk_285225320))
      {
        *&self->_jasperEnabled[1] = 0;
        *&self->_jasperEnabled[7] = 0;
        self->_jasperEnabled[0] = 1;
        self->_jasperEnabled[2] = 1;
        self->_jasperEnabled[5] = 1;
        *&self->_jasperEnabled[7] = 257;
        self->_jasperEnabled[10] = 1;
        self->_jasperEnabled[13] = 1;
        self->_jasperEnabled[15] = 1;
LABEL_14:

        goto LABEL_15;
      }

      if ([depthSourceFrameRate isEqualToNumber:&unk_2852252C0] && -[NSNumber isEqualToNumber:](self->_depthOutputFrameRate, "isEqualToNumber:", &unk_285225320))
      {
        *&self->_jasperEnabled[1] = 0;
        *&self->_jasperEnabled[7] = 0;
        self->_jasperEnabled[0] = 1;
        self->_jasperEnabled[5] = 1;
        self->_jasperEnabled[10] = 1;
        self->_jasperEnabled[15] = 1;
        goto LABEL_14;
      }

      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Requested depth rate %ld is invalid", -[NSNumber longValue](self->_depthOutputFrameRate, "longValue")];
      v10 = [MEMORY[0x277CCA9B8] movReaderInterfaceErrorWithMessage:v9 code:7];
    }

    else
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Requested depth rate %ld >= source rate %ld", -[NSNumber longValue](self->_depthOutputFrameRate, "longValue"), objc_msgSend(depthSourceFrameRate, "longValue")];
      v10 = [MEMORY[0x277CCA9B8] movReaderInterfaceWarningWithMessage:v9 code:0];
    }

    v11 = self->_lastError;
    self->_lastError = v10;

    goto LABEL_14;
  }

LABEL_15:
}

- (MOVReaderInterface)initWithFileURL:(id)l enforcedVideoTrackFormat:(id)format error:(id *)error
{
  objc_storeStrong(&self->_enforcedVideoTrackFormat, format);
  lCopy = l;
  v9 = [(MOVReaderInterface *)self initWithFileURL:lCopy delegate:self error:error];

  return v9;
}

- (id)grabMovieMetadataForKey:(id)key
{
  v36 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  lastError = self->_lastError;
  self->_lastError = 0;

  [(MOVStreamReader *)self metadataForMovie];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v6 = v34 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v7)
  {
    v8 = v7;
    v27 = 432;
    selfCopy = self;
    v9 = *v32;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v32 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v31 + 1) + 8 * i);
        identifier = [v11 identifier];
        v13 = [keyCopy isEqualToString:identifier];

        if (v13)
        {
          value = [v11 value];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          value2 = [v11 value];
          if (isKindOfClass)
          {
            goto LABEL_17;
          }

          objc_opt_class();
          v17 = objc_opt_isKindOfClass();

          if (v17)
          {
            value3 = [v11 value];
            v29 = 0;
            v30 = 0;
            v19 = [MEMORY[0x277CCAC58] propertyListWithData:value3 options:0 format:&v30 error:&v29];
            v20 = v19;
            if (v29)
            {
              v21 = MEMORY[0x277CCA9B8];
              v22 = v29;
              v23 = [v22 description];
              v24 = [v21 movReaderInterfaceErrorWithMessage:v23 code:8];
              v25 = *(&selfCopy->super.super.isa + v27);
              *(&selfCopy->super.super.isa + v27) = v24;

              value2 = 0;
            }

            else
            {
              value2 = v19;
            }

            goto LABEL_17;
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  value2 = 0;
LABEL_17:

  return value2;
}

- (id)grabMovieMetadataRawForKey:(id)key
{
  v29 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  lastError = self->_lastError;
  self->_lastError = 0;

  [(MOVStreamReader *)self metadataForMovie];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = v27 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v25;
    v10 = *MEMORY[0x277CC05B0];
LABEL_4:
    v11 = 0;
    v23 = v8;
    while (1)
    {
      if (*v25 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v12 = *(*(&v24 + 1) + 8 * v11);
      identifier = [v12 identifier];
      if (![keyCopy isEqualToString:identifier])
      {
        goto LABEL_6;
      }

      dataType = [v12 dataType];
      if (([dataType isEqual:v10] & 1) == 0)
      {
        break;
      }

      [v12 value];
      v15 = v9;
      v16 = keyCopy;
      v17 = v10;
      v19 = v18 = v6;
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      v6 = v18;
      v10 = v17;
      keyCopy = v16;
      v9 = v15;
      v8 = v23;

      if (isKindOfClass)
      {
        value = [v12 value];
        goto LABEL_15;
      }

LABEL_7:
      if (v8 == ++v11)
      {
        v8 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (!v8)
        {
          goto LABEL_14;
        }

        goto LABEL_4;
      }
    }

LABEL_6:
    goto LABEL_7;
  }

LABEL_14:
  value = 0;
LABEL_15:

  return value;
}

- (id)grabMovieMetadataItem:(id)item
{
  v19 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  lastError = self->_lastError;
  self->_lastError = 0;

  [(MOVStreamReader *)self metadataForMovie];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v17 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        identifier = [v10 identifier];
        v12 = [itemCopy isEqualToString:identifier];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (id)grabSummary
{
  lastError = self->_lastError;
  self->_lastError = 0;

  v4 = [(MOVReaderInterface *)self grabMovieMetadataForKey:@"mdta/com.apple.framework.state.MOVKit"];
  if (!v4)
  {
    v4 = [(MOVReaderInterface *)self grabMovieMetadataForKey:@"mdta/com.apple.assetCapture.deviceInfo"];
    if (!v4)
    {
      v4 = [(MOVReaderInterface *)self grabMovieMetadataForKey:@"mdta/com.apple.recordingEnvironment"];
      if (!v4)
      {
        v4 = [(MOVReaderInterface *)self grabMovieMetadataForKey:@"mdta/com.apple.movieSummary"];
      }
    }
  }

  v5 = v4;
  v6 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v4];
  v7 = [v6 objectForKeyedSubscript:@"hw.model"];
  deviceString = self->_deviceString;
  self->_deviceString = v7;

  v9 = [v6 objectForKeyedSubscript:@"movKitVersion"];
  v10 = v9;
  if (!v9 || [v9 isEqualToString:@"1.0.0"])
  {
    v11 = [v6 objectForKeyedSubscript:@"CFBundleIdentifier"];
    if (v11)
    {
    }

    else
    {
      v12 = [v6 objectForKeyedSubscript:@"bundleID"];

      if (v12)
      {
        v13 = [v6 objectForKeyedSubscript:@"bundleID"];
        [v6 setObject:v13 forKeyedSubscript:@"CFBundleIdentifier"];

        [v6 removeObjectForKey:@"bundleID"];
      }
    }

    v14 = [v6 objectForKeyedSubscript:@"hw.model"];
    if (v14)
    {
    }

    else
    {
      v15 = [v6 objectForKeyedSubscript:@"deviceString"];

      if (v15)
      {
        v16 = [v6 objectForKeyedSubscript:@"deviceString"];
        [v6 setObject:v16 forKeyedSubscript:@"hw.model"];

        v17 = [v6 objectForKeyedSubscript:@"hw.model"];
        v18 = self->_deviceString;
        self->_deviceString = v17;

        [v6 removeObjectForKey:@"deviceString"];
      }
    }
  }

  v19 = [(MOVReaderInterface *)self grabMovieMetadataForKey:@"mdta/com.apple.isp.UnitInfo"];
  if (v19 || ([(MOVReaderInterface *)self grabMovieMetadataForKey:@"mdta/com.apple.assetCapture.UnitInfo"], (v19 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v20 = v19;
    v21 = [v19 objectForKey:@"PlatformID"];
    v22 = [(MOVReaderInterface *)self deviceStringFromPlatformID:v21];
    if (v22)
    {
      objc_storeStrong(&self->_deviceString, v22);
    }
  }

  v23 = [(MOVReaderInterface *)self grabMovieMetadataForKey:@"mdta/com.apple.isp.FirmwareVersion"];
  v24 = [v23 objectForKey:@"PlatformType"];

  if (![v24 isEqualToString:@"SpearTooth3"])
  {
    if (![v24 isEqualToString:@"SpearTooth2"])
    {
      goto LABEL_22;
    }

LABEL_25:
    v29 = [MEMORY[0x277CCA9B8] movReaderInterfaceWarningWithMessage:@"platformType is SpearTooth2 assuming device is ST2" code:1];;
    v30 = self->_lastError;
    self->_lastError = v29;

    v31 = self->_deviceString;
    self->_deviceString = @"ST2";

    v25 = self->_deviceString;
    if (v25)
    {
      goto LABEL_31;
    }

    goto LABEL_26;
  }

  v26 = [MEMORY[0x277CCA9B8] movReaderInterfaceWarningWithMessage:@"platformType is SpearTooth3 assuming device is ST3" code:1];;
  v27 = self->_lastError;
  self->_lastError = v26;

  v28 = self->_deviceString;
  self->_deviceString = @"ST3";

  if ([v24 isEqualToString:@"SpearTooth2"])
  {
    goto LABEL_25;
  }

LABEL_22:
  v25 = self->_deviceString;
  if (v25)
  {
    goto LABEL_31;
  }

LABEL_26:
  v32 = [v6 objectForKeyedSubscript:@"ProductType"];
  v33 = [(MOVReaderInterface *)self mapProductToDevice:v32];
  v34 = self->_deviceString;
  self->_deviceString = v33;

  v25 = self->_deviceString;
  if (!v25)
  {
    v35 = [(MOVReaderInterface *)self grabMovieMetadataForKey:@"mdta/com.apple.jasperl.calibdata"];
    v36 = [v35 objectForKey:@"PlatformId"];
    v37 = [(MOVReaderInterface *)self deviceStringFromPlatformID:v36];
    v38 = self->_deviceString;
    self->_deviceString = v37;

    v25 = self->_deviceString;
    if (!v25)
    {
      v39 = [(MOVReaderInterface *)self grabMovieMetadataForKey:@"mdta/com.apple.strecorder.summary"];
      v40 = [v39 objectForKey:@"STRecorder Version"];
      if (v40)
      {
        v41 = [MEMORY[0x277CCA9B8] movReaderInterfaceWarningWithMessage:@"Metadata is missing assuming device is ST2" code:1];;
        v42 = self->_lastError;
        self->_lastError = v41;

        v43 = self->_deviceString;
        self->_deviceString = @"ST2";
      }

      v25 = self->_deviceString;
    }
  }

LABEL_31:
  [v6 setObject:v25 forKeyedSubscript:@"hw.model"];

  return v6;
}

- (void)addStreamFilter:(id)filter obj:(id)obj
{
  filterCopy = filter;
  streamFilters = self->_streamFilters;
  objCopy = obj;
  v8 = [(NSMutableDictionary *)streamFilters objectForKeyedSubscript:filterCopy];
  v9 = v8;
  if (v8)
  {
    [v8 addObject:objCopy];
  }

  else
  {
    v10 = [MEMORY[0x277CBEB18] arrayWithObject:objCopy];

    [(NSMutableDictionary *)self->_streamFilters setObject:v10 forKeyedSubscript:filterCopy];
    objCopy = v10;
  }
}

- (id)applyFlip:(id)flip f:(id)f
{
  flipCopy = flip;
  v6 = [f objectForKeyedSubscript:@"flip"];
  v7 = flipCopy;
  if ([v6 containsString:@"H"])
  {
    v7 = [flipCopy imageByApplyingCGOrientation:2];
  }

  if ([v6 containsString:@"V"])
  {
    v8 = [v7 imageByApplyingCGOrientation:4];

    v7 = v8;
  }

  return v7;
}

- (void)addStreamFilters:(id)filters
{
  v134 = *MEMORY[0x277D85DE8];
  filtersCopy = filters;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [defaultManager fileExistsAtPath:filtersCopy];

  if (v4)
  {
    v91 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:filtersCopy];
    v129 = 0;
    v89 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v91 options:1 error:&v129];
    v5 = v129;
    v88 = v5;
    if (v5)
    {
      v6 = MEMORY[0x277CCA9B8];
      v7 = MEMORY[0x277CCACA8];
      obj = [v5 localizedDescription];
      v8 = [v7 stringWithFormat:@"Filter file can't be parsed: %@", obj];
      v9 = [v6 movReaderInterfaceErrorWithMessage:v8 code:13];
      lastError = self->_lastError;
      self->_lastError = v9;

      goto LABEL_4;
    }

    v11 = v89;
    if (v89)
    {
      v127 = 0u;
      v128 = 0u;
      v125 = 0u;
      v126 = 0u;
      obj = v89;
      v86 = [obj countByEnumeratingWithState:&v125 objects:v133 count:16];
      if (!v86)
      {
        goto LABEL_4;
      }

      v85 = *v126;
      v107 = *MEMORY[0x277CBF988];
      v106 = *MEMORY[0x277CBF980];
      v104 = *MEMORY[0x277CBFB18];
      v105 = *MEMORY[0x277CBFAF0];
      v103 = *MEMORY[0x277CBFAB0];
      while (1)
      {
        for (i = 0; i != v86; ++i)
        {
          if (*v126 != v85)
          {
            objc_enumerationMutation(obj);
          }

          v108 = *(*(&v125 + 1) + 8 * i);
          v14 = [obj objectForKeyedSubscript:?];
          v123 = 0u;
          v124 = 0u;
          v121 = 0u;
          v122 = 0u;
          v93 = v14;
          v95 = [v93 countByEnumeratingWithState:&v121 objects:v132 count:16];
          if (v95)
          {
            v94 = *v122;
            do
            {
              for (j = 0; j != v95; ++j)
              {
                if (*v122 != v94)
                {
                  objc_enumerationMutation(v93);
                }

                v102 = *(*(&v121 + 1) + 8 * j);
                v101 = [v102 objectForKeyedSubscript:@"filterName"];
                if (v101)
                {
                  v15 = [MEMORY[0x277CBF750] filterWithName:v101];
                  if (!v15)
                  {
                    v57 = MEMORY[0x277CCA9B8];
                    v101 = [MEMORY[0x277CCACA8] stringWithFormat:@"Filter name not found: %@", v101];
                    v59 = [v57 movReaderInterfaceErrorWithMessage:v101 code:13];
                    v60 = self->_lastError;
                    self->_lastError = v59;

                    v61 = MEMORY[0x277CBEAD8];
                    localizedDescription = [(NSError *)self->_lastError localizedDescription];
                    v63 = [v61 exceptionWithName:@"AppleCV3DMOVKitErrorFilterFileFailed" reason:localizedDescription userInfo:0];

                    v64 = v63;
                    objc_exception_throw(v63);
                  }

                  v16 = [v102 objectForKeyedSubscript:@"params"];
                  v119 = 0u;
                  v120 = 0u;
                  v117 = 0u;
                  v118 = 0u;
                  v17 = [v16 countByEnumeratingWithState:&v117 objects:v131 count:16];
                  if (v17)
                  {
                    v18 = *v118;
                    do
                    {
                      for (k = 0; k != v17; ++k)
                      {
                        if (*v118 != v18)
                        {
                          objc_enumerationMutation(v16);
                        }

                        v20 = *(*(&v117 + 1) + 8 * k);
                        v21 = [v16 objectForKeyedSubscript:v20];
                        [v15 setValue:v21 forKey:v20];
                      }

                      v17 = [v16 countByEnumeratingWithState:&v117 objects:v131 count:16];
                    }

                    while (v17);
                  }

                  [v102 setObject:v15 forKeyedSubscript:@"filter"];
                  [(MOVReaderInterface *)self addStreamFilter:v108 obj:v102];
                }

                v100 = [v102 objectForKeyedSubscript:@"filterImage"];
                if (v100)
                {
                  v22 = [MEMORY[0x277CBEBC0] fileURLWithPath:v100];
                  v23 = [MEMORY[0x277CBF758] imageWithContentsOfURL:v22];
                  if (!v23)
                  {
                    v77 = MEMORY[0x277CCA9B8];
                    v100 = [MEMORY[0x277CCACA8] stringWithFormat:@"Filter image not found: %@", v100];
                    v79 = [v77 movReaderInterfaceErrorWithMessage:v100 code:13];
                    v80 = self->_lastError;
                    self->_lastError = v79;

                    v81 = MEMORY[0x277CBEAD8];
                    localizedDescription2 = [(NSError *)self->_lastError localizedDescription];
                    v83 = [v81 exceptionWithName:@"AppleCV3DMOVKitErrorFilterFileFailed" reason:localizedDescription2 userInfo:0];

                    v84 = v83;
                    objc_exception_throw(v83);
                  }

                  v24 = [v102 objectForKeyedSubscript:@"selector"];
                  v25 = NSSelectorFromString(v24);

                  v26 = [MEMORY[0x277CBF728] performSelector:v25];
                  [v102 setObject:v26 forKeyedSubscript:@"filter"];
                  v27 = [(MOVReaderInterface *)self applyFlip:v23 f:v102];
                  [v102 setObject:v27 forKeyedSubscript:@"background_img"];

                  [(MOVReaderInterface *)self addStreamFilter:v108 obj:v102];
                }

                v28 = [v102 objectForKeyedSubscript:@"filterKernel"];
                v99 = v28;
                if (v28)
                {
                  v29 = MEMORY[0x277CBEA90];
                  v30 = [v28 objectForKeyedSubscript:@"path"];
                  v96 = [v29 dataWithContentsOfFile:v30];

                  v31 = MEMORY[0x277CBF760];
                  v32 = [v99 objectForKeyedSubscript:@"name"];
                  v116 = 0;
                  v97 = [v31 kernelWithFunctionName:v32 fromMetalLibraryData:v96 error:&v116];
                  v33 = v116;

                  if (!v97 || v33)
                  {
                    v65 = MEMORY[0x277CCA9B8];
                    v66 = MEMORY[0x277CCACA8];
                    v67 = [v99 objectForKeyedSubscript:@"path"];
                    v68 = [v99 objectForKeyedSubscript:@"name"];
                    localizedDescription3 = [v33 localizedDescription];
                    v70 = [v66 stringWithFormat:@"Filter Kernel failed: %@, %@, %@", v67, v68, localizedDescription3];
                    v71 = [v65 movReaderInterfaceErrorWithMessage:v70 code:13];
                    v72 = self->_lastError;
                    self->_lastError = v71;

                    v73 = MEMORY[0x277CBEAD8];
                    localizedDescription4 = [(NSError *)self->_lastError localizedDescription];
                    v75 = [v73 exceptionWithName:@"AppleCV3DMOVKitErrorFilterFileFailed" reason:localizedDescription4 userInfo:0];

                    v76 = v75;
                    objc_exception_throw(v75);
                  }

                  [v102 setObject:v97 forKeyedSubscript:@"filter"];
                  v34 = MEMORY[0x277CBEA60];
                  v35 = [v102 objectForKeyedSubscript:@"params"];
                  v36 = [v34 arrayWithArray:v35];

                  v111 = objc_opt_new();
                  v114 = 0u;
                  v115 = 0u;
                  v112 = 0u;
                  v113 = 0u;
                  v110 = v36;
                  v37 = [v110 countByEnumeratingWithState:&v112 objects:v130 count:16];
                  if (v37)
                  {
                    v38 = *v113;
                    do
                    {
                      for (m = 0; m != v37; ++m)
                      {
                        if (*v113 != v38)
                        {
                          objc_enumerationMutation(v110);
                        }

                        v40 = *(*(&v112 + 1) + 8 * m);
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v41 = [v40 objectForKeyedSubscript:@"path"];
                          if (v41)
                          {
                            v42 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v41];
                            if (v42)
                            {
                              v43 = [v40 objectForKeyedSubscript:@"dim"];
                              longValue = [v43 longValue];

                              if ([v41 hasSuffix:@"png"])
                              {
                                v45 = [MEMORY[0x277CBF758] imageWithData:v42];
                              }

                              else
                              {
                                v45 = 0;
                              }

                              if ([v41 hasSuffix:@"sraw"])
                              {
                                v46 = [v40 objectForKeyedSubscript:@"bpp"];
                                v47 = [v46 intValue] == 16;

                                if (v47)
                                {
                                  v48 = v106;
                                }

                                else
                                {
                                  v48 = v107;
                                }

                                v49 = [MEMORY[0x277CBF758] imageWithBitmapData:v42 bytesPerRow:longValue << v47 size:v48 format:0 colorSpace:{longValue, longValue}];

                                v45 = v49;
                              }

                              if (v45)
                              {
                                v50 = [(MOVReaderInterface *)self applyFlip:v45 f:v40];

                                [(MOVStreamReader *)self getOutputSizeForStream:v108];
                                v52 = v51;
                                if (longValue != v51)
                                {
                                  v53 = [MEMORY[0x277CBF750] filterWithName:@"CILanczosScaleTransform"];
                                  [v53 setValue:v50 forKey:v105];
                                  *&v54 = v52 / longValue;
                                  v55 = [MEMORY[0x277CCABB0] numberWithFloat:v54];
                                  [v53 setValue:v55 forKey:v104];

                                  [v53 setValue:&unk_285225380 forKey:v103];
                                  outputImage = [v53 outputImage];

                                  v50 = outputImage;
                                }

                                if (v50)
                                {
                                  [v40 setObject:v50 forKeyedSubscript:@"img"];
                                }

                                goto LABEL_58;
                              }
                            }
                          }

                          else
                          {
                            v42 = 0;
                          }

                          v50 = 0;
LABEL_58:
                        }

                        [v111 addObject:v40];
                      }

                      v37 = [v110 countByEnumeratingWithState:&v112 objects:v130 count:16];
                    }

                    while (v37);
                  }

                  [v102 setObject:v111 forKeyedSubscript:@"params"];
                  [(MOVReaderInterface *)self addStreamFilter:v108 obj:v102];

                  v28 = v99;
                }
              }

              v95 = [v93 countByEnumeratingWithState:&v121 objects:v132 count:16];
            }

            while (v95);
          }
        }

        v86 = [obj countByEnumeratingWithState:&v125 objects:v133 count:16];
        if (!v86)
        {
LABEL_4:

          v11 = v89;
          break;
        }
      }
    }
  }

  else
  {
    v12 = [MEMORY[0x277CCA9B8] movReaderInterfaceErrorWithMessage:@"Filter file is missing" code:13];
    v13 = self->_lastError;
    self->_lastError = v12;
  }
}

- (__CVBuffer)copyNextFrameForStream:(id)stream timestamp:(id *)timestamp error:(id *)error
{
  v86 = *MEMORY[0x277D85DE8];
  streamCopy = stream;
  lastError = self->_lastError;
  self->_lastError = 0;

  v83.receiver = self;
  v83.super_class = MOVReaderInterface;
  v10 = [(MOVStreamReader *)&v83 copyNextFrameForStream:streamCopy timestamp:timestamp error:error];
  v11 = [(NSMutableDictionary *)self->_streamFilters objectForKeyedSubscript:streamCopy];
  v12 = v11;
  if (v10)
  {
    v13 = v11 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    v61 = streamCopy;
    filterContext = [(MOVReaderInterface *)self filterContext];

    if (!filterContext)
    {
      context = [MEMORY[0x277CBF740] context];
      filterContext = self->_filterContext;
      self->_filterContext = context;
    }

    v17 = objc_opt_new();
    v60 = v10;
    [MEMORY[0x277CBF758] imageWithCVImageBuffer:v10];
    v58 = v71 = v17;
    [v17 addObject:?];
    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v59 = v12;
    v18 = v12;
    v19 = [v18 countByEnumeratingWithState:&v79 objects:v85 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = @"src";
      v66 = *MEMORY[0x277CBFAF0];
      v67 = *v80;
      v22 = @"mult";
      v62 = v18;
      selfCopy = self;
      do
      {
        v23 = 0;
        v64 = v20;
        do
        {
          if (*v80 != v67)
          {
            objc_enumerationMutation(v18);
          }

          v29 = *(*(&v79 + 1) + 8 * v23);
          v30 = [v29 objectForKeyedSubscript:v21];
          if (v30)
          {
            v31 = [v29 objectForKeyedSubscript:v21];

            v28 = v31;
            if ([v31 isEqual:&unk_285225338])
            {
              goto LABEL_19;
            }
          }

          else
          {

            v28 = &unk_285225338;
            if ([&unk_285225338 isEqual:&unk_285225338])
            {
LABEL_19:
              lastObject = [v71 lastObject];
              goto LABEL_22;
            }
          }

          lastObject = [v71 objectAtIndexedSubscript:{objc_msgSend(v28, "intValue")}];
LABEL_22:
          v70 = lastObject;
          v33 = [v29 objectForKeyedSubscript:@"filter"];
          objc_opt_class();
          v72 = v33;
          if (objc_opt_isKindOfClass())
          {
            v68 = v28;
            v69 = v23;
            v24 = v33;
            v25 = [(MOVReaderInterface *)self applyFlip:v70 f:v29];
            [v24 setValue:v25 forKey:v66];
            outputImage = [v24 outputImage];
LABEL_12:
            v27 = outputImage;

            [v71 addObject:v27];
LABEL_13:

            v28 = v68;
            v23 = v69;
            goto LABEL_14;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v68 = v28;
            v69 = v23;
            v24 = v33;
            v25 = [v29 objectForKeyedSubscript:@"background_img"];
            outputImage = [v24 applyWithForeground:v70 background:v25];
            goto LABEL_12;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v68 = v28;
            v69 = v23;
            v34 = [MEMORY[0x277CBEB18] arrayWithObject:v70];
            v35 = [v29 objectForKeyedSubscript:v22];
            if (v35)
            {
              v36 = [v29 objectForKeyedSubscript:v22];
            }

            else
            {
              v36 = &unk_285225380;
            }

            v37 = v33;

            v74 = v34;
            v65 = v36;
            [v34 addObject:v36];
            v38 = [v29 objectForKeyedSubscript:@"params"];
            v75 = 0u;
            v76 = 0u;
            v77 = 0u;
            v78 = 0u;
            obj = v38;
            v39 = [v38 countByEnumeratingWithState:&v75 objects:v84 count:16];
            if (v39)
            {
              v40 = v39;
              v41 = *v76;
              do
              {
                for (i = 0; i != v40; ++i)
                {
                  while (1)
                  {
                    if (*v76 != v41)
                    {
                      objc_enumerationMutation(obj);
                    }

                    v43 = *(*(&v75 + 1) + 8 * i);
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      break;
                    }

                    [v74 addObject:v43];
                    if (v40 == ++i)
                    {
                      goto LABEL_31;
                    }
                  }

                  v44 = [v43 objectForKeyedSubscript:v22];
                  if (v44)
                  {
                    v45 = [v43 objectForKeyedSubscript:v22];
                  }

                  else
                  {
                    v45 = &unk_285225380;
                  }

                  v46 = [v43 objectForKeyedSubscript:v21];

                  if (v46)
                  {
                    v47 = v22;
                    v48 = v21;
                    v49 = [v43 objectForKeyedSubscript:v21];
                    if ([v49 isEqual:&unk_285225338])
                    {
                      [v71 lastObject];
                    }

                    else
                    {
                      [v71 objectAtIndexedSubscript:{objc_msgSend(v49, "intValue")}];
                    }
                    v50 = ;
                    [v74 addObject:v50];
                    [v74 addObject:v45];

                    v21 = v48;
                    v22 = v47;
                  }

                  v51 = [v43 objectForKeyedSubscript:@"img"];

                  if (v51)
                  {
                    v52 = [v43 objectForKeyedSubscript:@"img"];
                    [v74 addObject:v52];

                    [v74 addObject:v45];
                  }

                  v37 = v72;
                }

LABEL_31:
                v40 = [obj countByEnumeratingWithState:&v75 objects:v84 count:16];
              }

              while (v40);
            }

            v53 = v37;
            [v70 extent];
            v25 = v74;
            v54 = [v53 applyWithExtent:&unk_28521AB88 roiCallback:v74 arguments:?];

            [v71 addObject:v54];
            v18 = v62;
            self = selfCopy;
            v20 = v64;
            v27 = v65;
            goto LABEL_13;
          }

LABEL_14:

          ++v23;
        }

        while (v23 != v20);
        v20 = [v18 countByEnumeratingWithState:&v79 objects:v85 count:16];
      }

      while (v20);
    }

    v55 = self->_filterContext;
    lastObject2 = [v71 lastObject];
    v10 = v60;
    [(CIContext *)v55 render:lastObject2 toCVPixelBuffer:v60];

    streamCopy = v61;
    v12 = v59;
  }

  return v10;
}

- (id)resolvedCalibration:(int64_t *)calibration
{
  v33 = *MEMORY[0x277D85DE8];
  lastError = self->_lastError;
  self->_lastError = 0;

  v6 = @"mdta/com.apple.calibration";
  v7 = 0x277CCA000uLL;
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.0", v6];
  [(MOVStreamReader *)self metadataForMovie];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v31 = 0u;
  v9 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (!v9)
  {
    if (!calibration)
    {
      goto LABEL_19;
    }

    v21 = *calibration;
    if (!*calibration)
    {
      goto LABEL_19;
    }

    goto LABEL_15;
  }

  v10 = v9;
  selfCopy = self;
  calibrationCopy = calibration;
  v11 = 0;
  v12 = 0;
  v13 = *v29;
  do
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v29 != v13)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(*(&v28 + 1) + 8 * i);
      identifier = [v15 identifier];
      v17 = [(__CFString *)v6 isEqualToString:identifier];

      v11 |= v17;
      identifier2 = [v15 identifier];
      LODWORD(identifier) = [v8 isEqualToString:identifier2];

      v12 |= identifier;
    }

    v10 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  }

  while (v10);
  if (v11 & v12)
  {
    v19 = [MEMORY[0x277CCA9B8] movReaderInterfaceWarningWithMessage:@"Location nil and 0 are both present. This is unexpected!!" code:2];
    v20 = selfCopy->_lastError;
    selfCopy->_lastError = v19;
  }

  if (!calibrationCopy)
  {
    if (v11)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  v21 = *calibrationCopy;
  v7 = 0x277CCA000;
  if (*calibrationCopy)
  {
LABEL_15:
    v22 = [*(v7 + 3240) stringWithFormat:@"%@.%ld", v6, v21];
    goto LABEL_20;
  }

LABEL_17:
  if (v12)
  {
    v22 = v8;
    goto LABEL_20;
  }

LABEL_19:
  v22 = v6;
LABEL_20:
  v23 = v22;

  return v23;
}

- (id)grabCalibration:(int64_t *)calibration
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = [(MOVReaderInterface *)self resolvedCalibration:calibration];
  [(MOVStreamReader *)self metadataForMovie];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v17 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        identifier = [v9 identifier];
        v11 = [v4 isEqualToString:identifier];

        if (v11)
        {
          value = [v9 value];
          v6 = [CVACalibration withData:value];

          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

+ (BOOL)grabSWToWExtrinsics:(id *)extrinsics summary:(id)summary backExtrinsics:(id)backExtrinsics
{
  backExtrinsicsCopy = backExtrinsics;
  v8 = [summary objectForKeyedSubscript:@"extrinsicsSWToW"];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 objectAtIndexedSubscript:0];
    [v10 floatValue];
    *extrinsics = v11;

    v12 = [v9 objectAtIndexedSubscript:1];
    [v12 floatValue];
    *(extrinsics + 4) = v13;

    v14 = [v9 objectAtIndexedSubscript:2];
    [v14 floatValue];
    *(extrinsics + 8) = v15;

    v16 = [v9 objectAtIndexedSubscript:3];
    [v16 floatValue];
    *(extrinsics + 12) = v17;

    v18 = [v9 objectAtIndexedSubscript:4];
    [v18 floatValue];
    *(extrinsics + 1) = v19;

    v20 = [v9 objectAtIndexedSubscript:5];
    [v20 floatValue];
    *(extrinsics + 5) = v21;

    v22 = [v9 objectAtIndexedSubscript:6];
    [v22 floatValue];
    *(extrinsics + 9) = v23;

    v24 = [v9 objectAtIndexedSubscript:7];
    [v24 floatValue];
    *(extrinsics + 13) = v25;

    v26 = [v9 objectAtIndexedSubscript:8];
    [v26 floatValue];
    *(extrinsics + 2) = v27;

    v28 = [v9 objectAtIndexedSubscript:9];
    [v28 floatValue];
    *(extrinsics + 6) = v29;

    v30 = [v9 objectAtIndexedSubscript:10];
    [v30 floatValue];
    *(extrinsics + 10) = v31;

    v32 = [v9 objectAtIndexedSubscript:11];
    [v32 floatValue];
    *(extrinsics + 14) = v33;
  }

  else
  {
    if (!backExtrinsicsCopy || ([backExtrinsicsCopy objectForKeyedSubscript:*MEMORY[0x277CF3CF0]], v35 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v35, "objectForKeyedSubscript:", *MEMORY[0x277CF3CD0]), v32 = objc_claimAutoreleasedReturnValue(), v35, !v32))
    {
      v34 = 0;
      goto LABEL_8;
    }

    bytes = [v32 bytes];
    v37 = *bytes[2].f32;
    v38 = *bytes[4].f32;
    v39 = *(MEMORY[0x277D860B8] + 32);
    v40 = *(MEMORY[0x277D860B8] + 48);
    v41 = *(MEMORY[0x277D860B8] + 16);
    v41.i32[1] = -1.0;
    v42 = *MEMORY[0x277D860B8];
    v42.i32[0] = -1.0;
    v43 = vmlaq_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v42, COERCE_FLOAT(*bytes->f32)), v41, v37.f32[0]), v39, v38.f32[0]), 0, v40);
    v44 = vmlaq_f32(vmlaq_lane_f32(vmlaq_lane_f32(vmulq_lane_f32(v42, *bytes, 1), v41, *v37.f32, 1), v39, *v38.f32, 1), 0, v40);
    v45 = vmlaq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v42, *bytes->f32, 2), v41, v37, 2), v39, v38, 2), 0, v40);
    v46 = vaddq_f32(v40, vmlaq_laneq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v42, *bytes->f32, 3), v41, v37, 3), v39, v38, 3));
    v53.columns[0] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vnegq_f32(v43), v44, *MEMORY[0x277D860B8], 1), v45, *MEMORY[0x277D860B8], 2), v46, *MEMORY[0x277D860B8], 3);
    __asm { FMOV            V2.4S, #-1.0 }

    v53.columns[1] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_f32(vmulq_n_f32(v43, COERCE_FLOAT(*(MEMORY[0x277D860B8] + 16))), _Q2, v44), v45, *(MEMORY[0x277D860B8] + 16), 2), v46, *(MEMORY[0x277D860B8] + 16), 3);
    v53.columns[2] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v43, v39.f32[0]), v44, *v39.f32, 1), v45, v39, 2), v46, v39, 3);
    v53.columns[3] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v43, v40.f32[0]), v44, *v40.f32, 1), v45, v40, 2), v46, v40, 3);
    v54 = __invert_f4(v53);
    *(extrinsics + 2) = v54.columns[0].i32[2];
    *extrinsics = v54.columns[0].i64[0];
    *(extrinsics + 6) = v54.columns[1].i32[2];
    *(extrinsics + 10) = v54.columns[2].i32[2];
    *(extrinsics + 2) = v54.columns[1].i64[0];
    *(extrinsics + 4) = v54.columns[2].i64[0];
    *(extrinsics + 14) = v54.columns[3].i32[2];
    *(extrinsics + 6) = v54.columns[3].i64[0];
  }

  v34 = 1;
LABEL_8:

  return v34;
}

- (BOOL)grabSWToWExtrinsics:(id *)extrinsics
{
  grabSummary = [(MOVReaderInterface *)self grabSummary];
  v6 = [(MOVReaderInterface *)self grabMovieMetadataForKey:@"mdta/com.apple.isp.BackExtrinsics"];
  LOBYTE(extrinsics) = [MOVReaderInterface grabSWToWExtrinsics:extrinsics summary:grabSummary backExtrinsics:v6];

  return extrinsics;
}

+ (id)grabJasperExtrinsics:(id)extrinsics backExtrinsics:(id)backExtrinsics
{
  v94 = *MEMORY[0x277D85DE8];
  backExtrinsicsCopy = backExtrinsics;
  v6 = [extrinsics objectForKeyedSubscript:@"extrinsicsToJasper"];
  if (v6)
  {
    v7 = objc_opt_new();
    v89 = 0u;
    v90 = 0u;
    v91 = 0u;
    v92 = 0u;
    allKeys = [v6 allKeys];
    v9 = [allKeys countByEnumeratingWithState:&v89 objects:v93 count:16];
    if (v9)
    {
      v10 = v9;
      v82 = backExtrinsicsCopy;
      v11 = *v90;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v90 != v11)
          {
            objc_enumerationMutation(allKeys);
          }

          v13 = *(*(&v89 + 1) + 8 * i);
          v14 = [v6 objectForKeyedSubscript:v13];
          v87 = 0u;
          v88 = 0u;
          v85 = 0u;
          v86 = 0u;
          v15 = [v14 objectAtIndexedSubscript:0];
          [v15 floatValue];
          LODWORD(v85) = v16;

          v17 = [v14 objectAtIndexedSubscript:1];
          [v17 floatValue];
          LODWORD(v86) = v18;

          v19 = [v14 objectAtIndexedSubscript:2];
          [v19 floatValue];
          LODWORD(v87) = v20;

          v21 = [v14 objectAtIndexedSubscript:3];
          [v21 floatValue];
          LODWORD(v88) = v22;

          v23 = [v14 objectAtIndexedSubscript:4];
          [v23 floatValue];
          DWORD1(v85) = v24;

          v25 = [v14 objectAtIndexedSubscript:5];
          [v25 floatValue];
          DWORD1(v86) = v26;

          v27 = [v14 objectAtIndexedSubscript:6];
          [v27 floatValue];
          DWORD1(v87) = v28;

          v29 = [v14 objectAtIndexedSubscript:7];
          [v29 floatValue];
          DWORD1(v88) = v30;

          v31 = [v14 objectAtIndexedSubscript:8];
          [v31 floatValue];
          DWORD2(v85) = v32;

          v33 = [v14 objectAtIndexedSubscript:9];
          [v33 floatValue];
          DWORD2(v86) = v34;

          v35 = [v14 objectAtIndexedSubscript:10];
          [v35 floatValue];
          DWORD2(v87) = v36;

          v37 = [v14 objectAtIndexedSubscript:11];
          [v37 floatValue];
          DWORD2(v88) = v38;

          v39 = [MEMORY[0x277CBEA90] dataWithBytes:&v85 length:64];
          [v7 setObject:v39 forKeyedSubscript:v13];
        }

        v10 = [allKeys countByEnumeratingWithState:&v89 objects:v93 count:16];
      }

      while (v10);
      backExtrinsicsCopy = v82;
    }
  }

  else
  {
    if (!backExtrinsicsCopy)
    {
      v7 = 0;
      goto LABEL_20;
    }

    v40 = [backExtrinsicsCopy objectForKeyedSubscript:*MEMORY[0x277CF3CE0]];
    v41 = *MEMORY[0x277CF3CD0];
    allKeys = [v40 objectForKeyedSubscript:*MEMORY[0x277CF3CD0]];

    v42 = *MEMORY[0x277CF3CF0];
    v43 = [backExtrinsicsCopy objectForKeyedSubscript:*MEMORY[0x277CF3CF0]];
    v44 = [v43 objectForKeyedSubscript:v41];

    if (allKeys)
    {
      _ZF = v44 == 0;
    }

    else
    {
      _ZF = 1;
    }

    if (_ZF)
    {
      v7 = 0;
    }

    else
    {
      v7 = objc_opt_new();
      bytes = [allKeys bytes];
      v47 = *bytes[2].f32;
      v48 = *bytes[4].f32;
      v50 = *(MEMORY[0x277D860B8] + 32);
      v49 = *(MEMORY[0x277D860B8] + 48);
      v51 = *(MEMORY[0x277D860B8] + 16);
      v51.i32[1] = -1.0;
      v52 = *MEMORY[0x277D860B8];
      v52.i32[0] = -1.0;
      v74 = v52;
      v75 = v51;
      v53 = vmlaq_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v52, COERCE_FLOAT(*bytes->f32)), v51, v47.f32[0]), v50, v48.f32[0]), 0, v49);
      v54 = vmlaq_f32(vmlaq_lane_f32(vmlaq_lane_f32(vmulq_lane_f32(v52, *bytes, 1), v51, *v47.f32, 1), v50, *v48.f32, 1), 0, v49);
      v55 = vmlaq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v52, *bytes->f32, 2), v51, v47, 2), v50, v48, 2), 0, v49);
      v56 = vaddq_f32(v49, vmlaq_laneq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v52, *bytes->f32, 3), v51, v47, 3), v50, v48, 3));
      v81 = *MEMORY[0x277D860B8];
      v78 = *(MEMORY[0x277D860B8] + 16);
      __asm { FMOV            V2.4S, #-1.0 }

      v83 = _Q2;
      v72 = v49;
      v73 = v50;
      v79 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vnegq_f32(v53), v54, *MEMORY[0x277D860B8], 1), v55, *MEMORY[0x277D860B8], 2), v56, *MEMORY[0x277D860B8], 3);
      v80 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_f32(vmulq_n_f32(v53, v78.f32[0]), _Q2, v54), v55, v78, 2), v56, v78, 3);
      *(&v85 + 1) = v79.u32[2];
      *(&v86 + 1) = v80.u32[2];
      *&v85 = v79.i64[0];
      *&v86 = v80.i64[0];
      v76 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v53, v50.f32[0]), v54, *v50.f32, 1), v55, v50, 2), v56, v50, 3);
      v77 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v53, v49.f32[0]), v54, *v49.f32, 1), v55, v49, 2), v56, v49, 3);
      *(&v87 + 1) = v76.u32[2];
      *(&v88 + 1) = v77.u32[2];
      *&v87 = v76.i64[0];
      *&v88 = v77.i64[0];
      v61 = [MEMORY[0x277CBEA90] dataWithBytes:&v85 length:64];
      [v7 setObject:v61 forKeyedSubscript:v41];
      [v7 setObject:v61 forKeyedSubscript:@"AVCaptureDeviceTypeBuiltInWideAngleCamera.1"];
      bytes2 = [v44 bytes];
      v63 = *bytes2[2].f32;
      v64 = *bytes2[4].f32;
      v65 = vmlaq_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v74, COERCE_FLOAT(*bytes2->f32)), v75, v63.f32[0]), v73, v64.f32[0]), 0, v72);
      v66 = vmlaq_f32(vmlaq_lane_f32(vmlaq_lane_f32(vmulq_lane_f32(v74, *bytes2, 1), v75, *v63.f32, 1), v73, *v64.f32, 1), 0, v72);
      v67 = vmlaq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v74, *bytes2->f32, 2), v75, v63, 2), v73, v64, 2), 0, v72);
      v68 = vaddq_f32(v72, vmlaq_laneq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v74, *bytes2->f32, 3), v75, v63, 3), v73, v64, 3));
      v96.columns[0] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vnegq_f32(v65), v66, *v81.f32, 1), v67, v81, 2), v68, v81, 3);
      v96.columns[1] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_f32(vmulq_n_f32(v65, v78.f32[0]), v83, v66), v67, v78, 2), v68, v78, 3);
      v96.columns[2] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v65, v73.f32[0]), v66, *v73.f32, 1), v67, v73, 2), v68, v73, 3);
      v96.columns[3] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v65, v72.f32[0]), v66, *v72.f32, 1), v67, v72, 2), v68, v72, 3);
      v97 = __invert_f4(v96);
      v69 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v79, v97.columns[0].f32[0]), v80, *v97.columns[0].f32, 1), v76, v97.columns[0], 2), v77, v97.columns[0], 3);
      v97.columns[0] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v79, v97.columns[1].f32[0]), v80, *v97.columns[1].f32, 1), v76, v97.columns[1], 2), v77, v97.columns[1], 3);
      v97.columns[1] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v79, v97.columns[2].f32[0]), v80, *v97.columns[2].f32, 1), v76, v97.columns[2], 2), v77, v97.columns[2], 3);
      v84[1] = v69.u32[2];
      v84[3] = v97.columns[0].u32[2];
      v97.columns[2] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v79, v97.columns[3].f32[0]), v80, *v97.columns[3].f32, 1), v76, v97.columns[3], 2), v77, v97.columns[3], 3);
      v84[0] = v69.i64[0];
      v84[2] = v97.columns[0].i64[0];
      v84[5] = v97.columns[1].u32[2];
      v84[7] = v97.columns[2].u32[2];
      v84[4] = v97.columns[1].i64[0];
      v84[6] = v97.columns[2].i64[0];
      v70 = [MEMORY[0x277CBEA90] dataWithBytes:v84 length:64];
      [v7 setObject:v70 forKeyedSubscript:v42];
      [v7 setObject:v70 forKeyedSubscript:@"AVCaptureDeviceTypeBuiltInUltraWideCamera.1"];
    }
  }

LABEL_20:

  return v7;
}

- (id)grabJasperExtrinsics
{
  grabSummary = [(MOVReaderInterface *)self grabSummary];
  v4 = [(MOVReaderInterface *)self grabMovieMetadataForKey:@"mdta/com.apple.isp.BackExtrinsics"];
  v5 = [MOVReaderInterface grabJasperExtrinsics:grabSummary backExtrinsics:v4];

  return v5;
}

- (id)grabNextStreamData:(id)data timeRange:(id *)range
{
  dataCopy = data;
  lastError = self->_lastError;
  self->_lastError = 0;

  v18 = 0;
  v8 = [(MOVStreamReader *)self grabNextMetadataOfStream:dataCopy timeRange:range error:&v18];
  v9 = v18;
  v10 = v9;
  if (v9)
  {
    v11 = MEMORY[0x277CCACA8];
    v12 = [v9 description];
    v13 = [v11 stringWithFormat:@"%@: %@", dataCopy, v12];

    v14 = [MEMORY[0x277CCA9B8] movReaderInterfaceErrorWithMessage:v13 code:9];
    v15 = self->_lastError;
    self->_lastError = v14;

    v16 = 0;
  }

  else
  {
    v16 = v8;
  }

  return v16;
}

- (id)grabNextFastPathMUData:(int64_t *)data metadataID:(id)d
{
  v5 = [(MOVReaderInterface *)self resolvedIMUStreamName:data metadataID:d];
  v6 = [(MOVReaderInterface *)self grabNextStreamData:v5 timeRange:0];

  return v6;
}

- (id)grabNextFastPathMUData:(int64_t *)data
{
  v4 = [(MOVReaderInterface *)self resolvedSpuIMUStreamName:data];
  v5 = [(MOVReaderInterface *)self grabNextStreamData:v4 timeRange:0];

  return v5;
}

- (id)grabNextSpuIMUData:(id *)data location:(int64_t *)location
{
  v30 = *MEMORY[0x277D85DE8];
  v7 = [(MOVReaderInterface *)self resolvedSpuIMUStreamName:location];
  v8 = [(MOVReaderInterface *)self grabNextStreamData:v7 timeRange:data];
  v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v8, "count")}];
  if (location)
  {
    v10 = *location;
  }

  else
  {
    v10 = 0;
  }

  v11 = [MEMORY[0x277CCABB0] numberWithInteger:v10];
  v12 = [(NSMutableDictionary *)self->_spuVersions objectForKeyedSubscript:v11];
  unsignedIntValue = [v12 unsignedIntValue];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v14 = v8;
  v15 = [v14 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v26;
    if (unsignedIntValue)
    {
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v26 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v25 + 1) + 8 * i);
          v20 = [CVASpuFastPathComboAxisData alloc];
          v21 = [(CVASpuFastPathComboAxisData *)v20 initWithFastPathIMUData:v19, v25];
          if (v21)
          {
            [v9 addObject:v21];
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v16);
    }

    else
    {
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v26 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v23 = [CVASpuFastPathComboAxisData withData:*(*(&v25 + 1) + 8 * j), v25];
          if (v23)
          {
            [v9 addObject:v23];
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v16);
    }
  }

  return v9;
}

- (id)resolvedAccelStreamName:(int64_t *)name
{
  if (name)
  {
    if (!*name && self->_accelLocationNil)
    {
      name = 0;
    }
  }

  else if (self->_accelLocation0)
  {
    name = &unk_27E3C8650;
  }

  return [CVAMetadataWrapperTracks accelerometerTrackName:name prefix:self->_accelTrackName];
}

- (id)grabNextRawAccelData:(id *)data location:(int64_t *)location
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = [(MOVReaderInterface *)self resolvedAccelStreamName:location];
  v7 = [(MOVReaderInterface *)self grabNextStreamData:v6 timeRange:data];
  v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v7, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [CVACMAccelerometerData withData:*(*(&v16 + 1) + 8 * i), v16];
        if (v14)
        {
          [v8 addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  return v8;
}

- (id)resolvedGyroStreamName:(int64_t *)name
{
  if (name)
  {
    if (!*name && self->_gyroLocationNil)
    {
      name = 0;
    }
  }

  else if (self->_gyroLocation0)
  {
    name = &unk_27E3C8650;
  }

  return [CVAMetadataWrapperTracks gyroTrackName:name prefix:self->_gyroTrackName];
}

- (id)grabNextRawGyroData:(id *)data location:(int64_t *)location
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = [(MOVReaderInterface *)self resolvedGyroStreamName:location];
  v7 = [(MOVReaderInterface *)self grabNextStreamData:v6 timeRange:data];
  v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v7, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [CVACMGyroData withData:*(*(&v16 + 1) + 8 * i), v16];
        if (v14)
        {
          [v8 addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  return v8;
}

- (id)resolvedMotionStreamName:(int64_t *)name
{
  if (name)
  {
    if (!*name && self->_motionLocationNil)
    {
      name = 0;
    }
  }

  else if (self->_motionLocation0)
  {
    name = &unk_27E3C8650;
  }

  return [CVAMetadataWrapperTracks motionTrackName:name prefix:self->_motionTrackName];
}

- (id)grabNextMotionData:(id *)data location:(int64_t *)location
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = [(MOVReaderInterface *)self resolvedMotionStreamName:location];
  v7 = [(MOVReaderInterface *)self grabNextStreamData:v6 timeRange:data];
  v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v7, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [CVACMMotionData withData:*(*(&v16 + 1) + 8 * i), v16];
        if (v14)
        {
          [v8 addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  return v8;
}

- (id)grabNextBarometerData:(id *)data
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = self->_barometerTrackName;
  v6 = [(MOVReaderInterface *)self grabNextStreamData:v5 timeRange:data];
  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v6, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [CVACMBarometerData withData:*(*(&v15 + 1) + 8 * i), v15];
        if (v13)
        {
          [v7 addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  return v7;
}

- (id)resolvedCompassStreamName:(int64_t *)name
{
  if (name)
  {
    if (!*name && self->_compassLocationNil)
    {
      name = 0;
    }
  }

  else if (self->_compassLocation0)
  {
    name = &unk_27E3C8650;
  }

  return [CVAMetadataWrapperTracks compassTrackName:name prefix:self->_compassTrackName];
}

- (id)grabNextRawCompassData:(id *)data location:(int64_t *)location
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = [(MOVReaderInterface *)self resolvedCompassStreamName:location];
  v7 = [(MOVReaderInterface *)self grabNextStreamData:v6 timeRange:data];
  v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v7, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [CVACMCompassData withData:*(*(&v16 + 1) + 8 * i), v16];
        if (v14)
        {
          [v8 addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  return v8;
}

- (id)grabNextRawALSData:(id *)data location:(int64_t *)location
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = [CVAMetadataWrapperTracks alsTrackName:location prefix:self->_alsTrackName];
  v7 = [(MOVReaderInterface *)self grabNextStreamData:v6 timeRange:data];
  v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v7, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [CVACMALSData withData:*(*(&v16 + 1) + 8 * i), v16];
        if (v14)
        {
          [v8 addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  return v8;
}

- (id)grabNextRawWiFiData:(id *)data location:(int64_t *)location
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = [CVAMetadataWrapperTracks wifiTrackName:location prefix:self->_wifiTrackName];
  v7 = [(MOVReaderInterface *)self grabNextStreamData:v6 timeRange:data];
  v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v7, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [CVACMWiFiData withData:*(*(&v16 + 1) + 8 * i), v16];
        if (v14)
        {
          [v8 addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  return v8;
}

- (id)grabNextRawUWBData:(id *)data location:(int64_t *)location
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = [CVAMetadataWrapperTracks uwbTrackName:location prefix:self->_uwbTrackName];
  v7 = [(MOVReaderInterface *)self grabNextStreamData:v6 timeRange:data];
  v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v7, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [CVACMUWBData withData:*(*(&v16 + 1) + 8 * i), v16];
        if (v14)
        {
          [v8 addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  return v8;
}

- (id)grabNextRawBLEData:(id *)data location:(int64_t *)location
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = [CVAMetadataWrapperTracks bleTrackName:location prefix:self->_bleTrackName];
  v7 = [(MOVReaderInterface *)self grabNextStreamData:v6 timeRange:data];
  v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v7, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [CVACMBLEData withData:*(*(&v16 + 1) + 8 * i), v16];
        if (v14)
        {
          [v8 addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  return v8;
}

- (id)resolvedDeviceMotionStreamName:(int64_t *)name
{
  if (name)
  {
    if (!*name && self->_deviceMotionLocationNil)
    {
      name = 0;
    }
  }

  else if (self->_deviceMotionLocation0)
  {
    name = &unk_27E3C8650;
  }

  return [CVAMetadataWrapperTracks deviceMotionTrackName:name prefix:self->_deviceMotionTrackName];
}

- (id)grabNextDeviceMotionData:(id *)data location:(int64_t *)location
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = [(MOVReaderInterface *)self resolvedDeviceMotionStreamName:location];
  v7 = [(MOVReaderInterface *)self grabNextStreamData:v6 timeRange:data];
  v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v7, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [CVACMDeviceMotionData withData:*(*(&v16 + 1) + 8 * i), v16];
        if (v14)
        {
          [v8 addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  return v8;
}

- (id)resolvedLocationStreamName:(int64_t *)name
{
  if (name)
  {
    if (!*name && self->_locationLocationNil)
    {
      name = 0;
    }
  }

  else if (self->_locationLocation0)
  {
    name = &unk_27E3C8650;
  }

  return [CVAMetadataWrapperTracks locationTrackName:name prefix:self->_locationTrackName];
}

- (id)grabNextCLLocation:(id *)location location:(int64_t *)a4 timestamps:(id *)timestamps
{
  v40 = *MEMORY[0x277D85DE8];
  v8 = [(MOVReaderInterface *)self resolvedLocationStreamName:a4];
  v9 = [(MOVReaderInterface *)self grabNextStreamData:v8 timeRange:location];
  v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v9, "count")}];
  if (timestamps)
  {
    timestampsCopy = timestamps;
    v28 = v8;
    v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v9, "count")}];
    v37 = 0.0;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v27 = v9;
    v12 = v9;
    v13 = [v12 countByEnumeratingWithState:&v33 objects:v39 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v34;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v34 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [CVAMetadataWrapper decodeCLLocation:*(*(&v33 + 1) + 8 * i) timestamp:&v37];
          if (v17)
          {
            [v10 addObject:v17];
            v18 = [MEMORY[0x277CCABB0] numberWithDouble:v37];
            [v11 addObject:v18];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v33 objects:v39 count:16];
      }

      while (v14);
    }

    v19 = v11;
    v9 = v27;
    *timestampsCopy = v11;
    v8 = v28;
  }

  else
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v11 = v9;
    v21 = [v11 countByEnumeratingWithState:&v29 objects:v38 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v30;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v30 != v23)
          {
            objc_enumerationMutation(v11);
          }

          v25 = [CVAMetadataWrapper decodeCLLocation:*(*(&v29 + 1) + 8 * j)];
          if (v25)
          {
            [v10 addObject:v25];
          }
        }

        v22 = [v11 countByEnumeratingWithState:&v29 objects:v38 count:16];
      }

      while (v22);
    }
  }

  return v10;
}

- (id)grabNextCMDeviceMotion:(id *)motion
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = [(MOVReaderInterface *)self resolvedDeviceMotionStreamName:0];
  v6 = [(MOVReaderInterface *)self grabNextStreamData:v5 timeRange:motion];
  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v6, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [CVAMetadataWrapper decodeCMDeviceMotion:*(*(&v15 + 1) + 8 * i), v15];
        if (v13)
        {
          [v7 addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  return v7;
}

- (id)grabNextCMData:(id *)data
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [(MOVReaderInterface *)self grabNextStreamData:@"CMData" timeRange:data];
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [CMData withData:*(*(&v12 + 1) + 8 * i), v12];
        if (v10)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)grabNextUserEvent:(id *)event
{
  v19 = *MEMORY[0x277D85DE8];
  userEventTrackName = self->_userEventTrackName;
  if (userEventTrackName)
  {
    v5 = [(MOVReaderInterface *)self grabNextStreamData:userEventTrackName timeRange:event];
    v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v5, "count")}];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [CVAUserEvent withData:*(*(&v14 + 1) + 8 * i), v14];
          if (v12)
          {
            [v6 addObject:v12];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)grabNextTimedValue:(id *)value
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [(MOVReaderInterface *)self grabNextStreamData:@"CVATimedValue" timeRange:value];
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [CVATimedValue withData:*(*(&v12 + 1) + 8 * i), v12];
        if (v10)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)grabNextPRDevice:(id *)device
{
  v19 = *MEMORY[0x277D85DE8];
  prDeviceTrackName = self->_prDeviceTrackName;
  if (prDeviceTrackName)
  {
    v5 = [(MOVReaderInterface *)self grabNextStreamData:prDeviceTrackName timeRange:device];
    v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v5, "count")}];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [CVAPRDevice withData:*(*(&v14 + 1) + 8 * i), v14];
          if (v12)
          {
            [v6 addObject:v12];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)grabNextFeatureBuffer
{
  v3 = [CVAFeatureBuffer streamName:0];
  v4 = [(MOVReaderInterface *)self grabNextFeatureBuffer:0 streamName:v3];

  return v4;
}

- (id)grabNextFeatureBuffer:(id *)buffer streamName:(id)name
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = [(MOVReaderInterface *)self grabNextStreamData:name timeRange:buffer];
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [CVAFeatureBuffer withData:*(*(&v13 + 1) + 8 * i), v13];
        if (v11)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)grabNextDepthTOF:(id *)f sampleDropped:(BOOL *)dropped
{
  v114 = *MEMORY[0x277D85DE8];
  v6 = objc_opt_new();
  if (dropped)
  {
    *dropped = 0;
  }

  lastError = self->_lastError;
  self->_lastError = 0;

  if (!self->_tofDepthPCStreamID)
  {
    depthTOFTrackName = self->_depthTOFTrackName;
    if (!depthTOFTrackName)
    {
      depthTOFTrackName = @"com.apple.reality.kind.camera.xcam.pointcloud";
    }

    v92 = depthTOFTrackName;
    [MOVReaderInterface grabNextStreamData:"grabNextStreamData:timeRange:" timeRange:?];
    v102 = 0u;
    v103 = 0u;
    v104 = 0u;
    obj = v105 = 0u;
    v16 = [obj countByEnumeratingWithState:&v102 objects:v113 count:16];
    if (v16)
    {
      v17 = v16;
      droppedCopy = dropped;
      v18 = 0;
      v19 = *v103;
      do
      {
        v20 = 0;
        v21 = v18;
        do
        {
          while (1)
          {
            if (*v103 != v19)
            {
              objc_enumerationMutation(obj);
            }

            v22 = *(*(&v102 + 1) + 8 * v20);
            v101 = v21;
            v23 = [v22 decompressedDataUsingAlgorithm:1 error:&v101];
            v18 = v101;

            if (!v18)
            {
              break;
            }

            v24 = MEMORY[0x277CCA9B8];
            v25 = [v18 description];
            v26 = [v24 movReaderInterfaceErrorWithMessage:v25 code:11];
            v27 = self->_lastError;
            self->_lastError = v26;

            ++v20;
            v21 = v18;
            if (v17 == v20)
            {
              goto LABEL_11;
            }
          }

          v28 = [CVADepthTOF withData:v23];
          v29 = v28;
          if (self->_jasperEnabled[self->_jasperCounter])
          {
            objc_msgSend_timestamp(v28);
            if (v30 <= self->_lastDepthTOFTimestamp)
            {
              v32 = MEMORY[0x277CCACA8];
              objc_msgSend_timestamp(v29);
              v34 = [v32 stringWithFormat:@"TOF timestamp is old %lf : %lf", v33, *&self->_lastDepthTOFTimestamp];
              v35 = [MEMORY[0x277CCA9B8] movReaderInterfaceErrorWithMessage:v34 code:0];
              v36 = self->_lastError;
              self->_lastError = v35;
            }

            else
            {
              [v6 addObject:v29];
              objc_msgSend_timestamp(v29);
              self->_lastDepthTOFTimestamp = v31;
            }
          }

          else if (droppedCopy)
          {
            *droppedCopy = 1;
          }

          v37 = self->_jasperCounter + 1;
          v38 = v37 & 0xF;
          v40 = -v37;
          v39 = v40 < 0;
          v41 = v40 & 0xF;
          if (v39)
          {
            v42 = v38;
          }

          else
          {
            v42 = -v41;
          }

          self->_jasperCounter = v42;

          ++v20;
          v21 = 0;
        }

        while (v17 != v20);
LABEL_11:
        v17 = [obj countByEnumeratingWithState:&v102 objects:v113 count:16];
      }

      while (v17);
    }

    else
    {
      v18 = 0;
    }

    goto LABEL_52;
  }

  if (self->_jdfp)
  {
    v109 = 0;
    v110 = 0;
    v111 = 0;
    v108 = 0;
    v8 = [MOVReaderInterface copyNextFrameForStream:"copyNextFrameForStream:timestamp:error:" timestamp:? error:?];
    v9 = 0;
    if (v9)
    {
      v10 = v9;
      CVPixelBufferRelease(v8);
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %@", self->_tofDepthPCStreamID, v10];
      v12 = [MEMORY[0x277CCA9B8] movReaderInterfaceErrorWithMessage:v11 code:10];
      v13 = self->_lastError;
      self->_lastError = v12;

      v14 = v6;
      goto LABEL_71;
    }

    v43 = CVBufferGetAttachments(v8, kCVAttachmentMode_ShouldPropagate);
    if (!v43)
    {
      goto LABEL_74;
    }

    v44 = v43;
    v45 = [v43 objectForKeyedSubscript:*MEMORY[0x277D256F0]];
    if (!v45)
    {
      v52 = v6;

      goto LABEL_71;
    }

    v46 = v45;
    droppedCopy2 = dropped;
    CMTimeMakeFromDictionary(&time, v45);
    Seconds = CMTimeGetSeconds(&time);
    v48 = [(CVAJasperDepthFrameProcessor *)self->_jdfp process:v8];
    v49 = *MEMORY[0x277CF52D8];
    v50 = [v44 objectForKeyedSubscript:*MEMORY[0x277CF52D8]];
    if (v50)
    {
      v51 = v50;
    }

    else
    {
      v53 = v48;
      v54 = [v44 objectForKeyedSubscript:*MEMORY[0x277CF3F78]];
      v51 = [v54 objectForKeyedSubscript:v49];

      if (!v51)
      {
        integerValue = 0;
        v48 = v53;
        goto LABEL_38;
      }

      v48 = v53;
    }

    integerValue = [v51 integerValue];

LABEL_38:
    v56 = [[CVADepthTOF alloc] initWithJasperDepth:v48 timestamp:integerValue projectorMode:Seconds];
    CVPixelBufferRelease(v8);
    jasperCounter = self->_jasperCounter;
    if (self->_jasperEnabled[jasperCounter])
    {
      [v6 addObject:v56];
      LODWORD(jasperCounter) = self->_jasperCounter;
    }

    else if (droppedCopy2)
    {
      *droppedCopy2 = 1;
    }

    v58 = jasperCounter + 1;
    v39 = -v58 < 0;
    v59 = -v58 & 0xF;
    v60 = v58 & 0xF;
    if (!v39)
    {
      v60 = -v59;
    }

    self->_jasperCounter = v60;
  }

  if (self->_pdfp)
  {
    v109 = 0;
    v110 = 0;
    v111 = 0;
    tofDepthPCStreamID = self->_tofDepthPCStreamID;
    v106 = 0;
    v62 = [(MOVReaderInterface *)self copyNextFrameForStream:tofDepthPCStreamID timestamp:&v109 error:&v106];
    v63 = v106;
    if (v63)
    {
      v64 = v63;
      CVPixelBufferRelease(v62);
      v65 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %@", self->_tofDepthPCStreamID, v64];
      v66 = [MEMORY[0x277CCA9B8] movReaderInterfaceErrorWithMessage:v65 code:10];
      v67 = self->_lastError;
      self->_lastError = v66;

      v68 = v6;
      goto LABEL_71;
    }

    v69 = CVBufferGetAttachments(v62, kCVAttachmentMode_ShouldPropagate);
    if (v69)
    {
      v70 = v69;
      v71 = [v69 objectForKeyedSubscript:*MEMORY[0x277D256F0]];
      if (!v71)
      {
        v91 = v6;

        goto LABEL_71;
      }

      v72 = v71;
      CMTimeMakeFromDictionary(&time, v71);
      v73 = CMTimeGetSeconds(&time);
      v74 = [(CVAPeridotDepthFrameProcessor *)self->_pdfp process:v62];
      v75 = [[CVADepthTOF alloc] initWithADJasperPointCloud:v74 timestamp:v73];
      [(CVADepthTOF *)v75 setProjectorMode:1];
      [v6 addObject:v75];
      CVPixelBufferRelease(v62);

      goto LABEL_51;
    }

LABEL_74:
    v90 = v6;
    goto LABEL_71;
  }

LABEL_51:
  v18 = 0;
LABEL_52:
  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  v93 = v6;
  v76 = v6;
  v77 = [v76 countByEnumeratingWithState:&v97 objects:v112 count:16];
  if (v77)
  {
    v78 = v77;
    v79 = *v98;
    do
    {
      for (i = 0; i != v78; ++i)
      {
        if (*v98 != v79)
        {
          objc_enumerationMutation(v76);
        }

        v81 = *(*(&v97 + 1) + 8 * i);
        if (![v81 projectorMode])
        {
          pointCloud = [v81 pointCloud];

          if (pointCloud)
          {
            pointCloud2 = [v81 pointCloud];
            v84 = *[pointCloud2 bankIds];

            if (self->_jdfp)
            {
              v85 = &unk_2401A3E58 + 8 * v84;
            }

            else
            {
              osVersion = self->_osVersion;
              if (osVersion)
              {
                v87 = [(NSString *)osVersion compare:@"18A253"];
                v85 = &unk_2401A3E78 + 8 * v84;
                if (v87 == -1)
                {
                  v85 = &unk_2401A3E58 + 8 * v84;
                }
              }

              else
              {
                v85 = &unk_2401A3E78 + 8 * v84;
                if (self->_machTimeSince1970 < 1584430000.0)
                {
                  v85 = &unk_2401A3E58 + 8 * v84;
                }
              }
            }

            [v81 setProjectorMode:*v85];
          }
        }
      }

      v78 = [v76 countByEnumeratingWithState:&v97 objects:v112 count:16];
    }

    while (v78);
  }

  v88 = v76;
  v6 = v93;
LABEL_71:

  return v6;
}

- (id)grabNextDepthIR:(id)r timeRange:(id *)range
{
  rCopy = r;
  v6 = objc_opt_new();
  lastError = self->_lastError;
  self->_lastError = 0;

  memset(v24, 0, sizeof(v24));
  v23 = 0;
  v8 = [(MOVReaderInterface *)self copyNextFrameForStream:rCopy timestamp:v24 error:&v23];
  v9 = v23;
  if (v9)
  {
    CVPixelBufferRelease(v8);
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %@", rCopy, v9];
    v11 = [MEMORY[0x277CCA9B8] movReaderInterfaceErrorWithMessage:v10 code:10];
    v12 = self->_lastError;
    self->_lastError = v11;

    v13 = v6;
  }

  else
  {
    v14 = CVBufferGetAttachments(v8, kCVAttachmentMode_ShouldPropagate);
    v10 = v14;
    if (v14)
    {
      v15 = [v14 objectForKeyedSubscript:*MEMORY[0x277D256F0]];
      v16 = v15;
      if (v15)
      {
        CMTimeMakeFromDictionary(&time, v15);
        v17 = [[CVADepthIR alloc] initWithPixelBufferRef:v8 timestamp:CMTimeGetSeconds(&time)];
        CVPixelBufferRelease(v8);
        [v6 addObject:v17];
        v18 = v6;
      }

      else
      {
        CVPixelBufferRelease(v8);
        v20 = v6;
      }
    }

    else
    {
      CVPixelBufferRelease(v8);
      v19 = v6;
    }
  }

  return v6;
}

- (id)grabNextCVACameraCalibrationData:(id *)data
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [(MOVReaderInterface *)self grabNextStreamData:@"CVACameraCalibration" timeRange:data];
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [CVACameraCalibrationData withData:*(*(&v12 + 1) + 8 * i), v12];
        if (v10)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)grabNextDictionary:(id)dictionary timeRange:(id *)range
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = [(MOVReaderInterface *)self grabNextStreamData:dictionary timeRange:range];
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v25;
    v10 = 0x278C9A000uLL;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = [*(v10 + 3568) decodeDictionary:*(*(&v24 + 1) + 8 * i)];
        if (v12)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v5 addObject:v12];
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = v6;
              v22 = 0u;
              v23 = 0u;
              v20 = 0u;
              v21 = 0u;
              v14 = v12;
              v15 = [v14 countByEnumeratingWithState:&v20 objects:v28 count:16];
              if (v15)
              {
                v16 = v15;
                v17 = *v21;
                do
                {
                  for (j = 0; j != v16; ++j)
                  {
                    if (*v21 != v17)
                    {
                      objc_enumerationMutation(v14);
                    }

                    [v5 addObject:*(*(&v20 + 1) + 8 * j)];
                  }

                  v16 = [v14 countByEnumeratingWithState:&v20 objects:v28 count:16];
                }

                while (v16);
              }

              v6 = v13;
              v10 = 0x278C9A000;
            }
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)grabNextClass:(id)class class:(Class)a4 timeRange:(id *)range
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = [(MOVReaderInterface *)self grabNextStreamData:class timeRange:range];
  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v6, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [CVAMetadataWrapper decodeClass:*(*(&v15 + 1) + 8 * i) class:a4, v15];
        if (v13)
        {
          [v7 addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  return v7;
}

- (id)grabNextNSCoderObject:(id)object class:(Class)class
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CBEB98];
  classCopy = class;
  v6 = MEMORY[0x277CBEA60];
  objectCopy = object;
  v8 = [v6 arrayWithObjects:&classCopy count:1];
  v9 = [v5 setWithArray:{v8, classCopy, v13}];
  v10 = [(MOVReaderInterface *)self grabNextNSCoderObject:objectCopy classes:v9 timeRange:0];

  return v10;
}

- (id)grabNextNSCoderObject:(id)object class:(Class)class timeRange:(id *)range
{
  v15 = *MEMORY[0x277D85DE8];
  v7 = MEMORY[0x277CBEB98];
  classCopy = class;
  v8 = MEMORY[0x277CBEA60];
  objectCopy = object;
  v10 = [v8 arrayWithObjects:&classCopy count:1];
  v11 = [v7 setWithArray:{v10, classCopy, v15}];
  v12 = [(MOVReaderInterface *)self grabNextNSCoderObject:objectCopy classes:v11 timeRange:range];

  return v12;
}

- (id)grabNextNSCoderObject:(id)object classes:(id)classes timeRange:(id *)range
{
  v23 = *MEMORY[0x277D85DE8];
  classesCopy = classes;
  v9 = [(MOVReaderInterface *)self grabNextStreamData:object timeRange:range];
  v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v9, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [CVAMetadataWrapper decodeNSCoderObject:*(*(&v18 + 1) + 8 * i) classes:classesCopy, v18];
        if (v16)
        {
          [v10 addObject:v16];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v13);
  }

  return v10;
}

+ (BOOL)isSuperWideStream:(id)stream
{
  v3 = *MEMORY[0x277CE5870];
  v4 = [stream componentsSeparatedByString:@"."];
  v5 = [v4 objectAtIndexedSubscript:0];

  if ([v5 isEqualToString:v3] & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"AVCaptureDeviceTypeBuiltInSuperWideAngleCamera") & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"BackColorSuperWide"))
  {

    return 1;
  }

  else
  {
    v7 = [v5 isEqualToString:*MEMORY[0x277CF3CF0]];

    return v7;
  }
}

- (unsigned)reader:(id)reader pixelFormatForStream:(id)stream suggestedFormat:(unsigned int)format
{
  enforcedVideoTrackFormat = self->_enforcedVideoTrackFormat;
  if (enforcedVideoTrackFormat)
  {
    v7 = [(NSDictionary *)enforcedVideoTrackFormat objectForKeyedSubscript:stream];
    v8 = v7;
    if (v7)
    {
      format = [v7 unsignedIntValue];
    }
  }

  return format;
}

+ (id)grabCMSessionID:(id)d
{
  v28 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v4 = objc_autoreleasePoolPush();
  v26 = 0;
  v5 = [[MOVReaderInterface alloc] initWithFileURL:dCopy delegate:0 error:&v26];
  v6 = v26;
  v7 = v6;
  if (v6)
  {
    v8 = MEMORY[0x277CCA9B8];
    grabNextUserEvent2 = [v6 description];
    v10 = [v8 movReaderInterfaceErrorWithMessage:grabNextUserEvent2 code:12];
    v11 = 0;
LABEL_3:

    goto LABEL_4;
  }

  grabNextUserEvent = [(MOVReaderInterface *)v5 grabNextUserEvent];
  if (grabNextUserEvent)
  {
    grabNextUserEvent2 = grabNextUserEvent;
    v11 = 0;
    do
    {
      if (![grabNextUserEvent2 count])
      {
        break;
      }

      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v16 = grabNextUserEvent2;
      v17 = [v16 countByEnumeratingWithState:&v22 objects:v27 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v23;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v23 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v22 + 1) + 8 * i);
            if ([v21 eventType] == 7)
            {
              sessionID = [v21 sessionID];
              v15 = [sessionID copy];

              v11 = v15;
              goto LABEL_10;
            }
          }

          v18 = [v16 countByEnumeratingWithState:&v22 objects:v27 count:16];
        }

        while (v18);
      }

LABEL_10:

      grabNextUserEvent2 = [(MOVReaderInterface *)v5 grabNextUserEvent];
    }

    while (grabNextUserEvent2);
    goto LABEL_3;
  }

  v11 = 0;
LABEL_4:

  objc_autoreleasePoolPop(v4);

  return v11;
}

@end