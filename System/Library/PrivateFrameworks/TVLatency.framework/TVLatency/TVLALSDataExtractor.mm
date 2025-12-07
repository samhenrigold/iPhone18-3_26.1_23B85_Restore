@interface TVLALSDataExtractor
+ (id)extractALSCalibrationData;
+ (unsigned)_displayID;
+ (void)extract:(unint64_t)extract ALSReadings:(id)readings;
+ (void)extractALSCalibrationData;
+ (void)extractALSData:(id)data;
- (TVLALSDataExtractor)init;
- (void)dealloc;
@end

@implementation TVLALSDataExtractor

- (TVLALSDataExtractor)init
{
  v6.receiver = self;
  v6.super_class = TVLALSDataExtractor;
  v2 = [(TVLALSDataExtractor *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    results = v2->_results;
    v2->_results = v3;
  }

  return v2;
}

- (void)dealloc
{
  _UnregisterHIDSystemClient(self);
  v3.receiver = self;
  v3.super_class = TVLALSDataExtractor;
  [(TVLALSDataExtractor *)&v3 dealloc];
}

+ (id)extractALSCalibrationData
{
  v108 = *MEMORY[0x277D85DE8];
  v3 = AMFDRSealingMapCopyLocalDataForClass();
  Length = CFDataGetLength(v3);
  if (Length == 10440)
  {
    if (_TVLLogDefault_onceToken_2 != -1)
    {
      _ALSIOHIDEventCallback_cold_2();
    }

    v5 = _TVLLogDefault_log_2;
    if (os_log_type_enabled(_TVLLogDefault_log_2, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_26CD78000, v5, OS_LOG_TYPE_INFO, "Found HmClData_VD6287", buf, 2u);
    }

    CFDataGetBytePtr(v3);
    v6 = convertNighthawkHmClv1Tov3();
    if (v6)
    {
      v7 = v6;
      CFRelease(v3);
      v8 = CFDataGetLength(v7);
      if (_TVLLogDefault_onceToken_2 != -1)
      {
        _ALSIOHIDEventCallback_cold_2();
      }

      v9 = _TVLLogDefault_log_2;
      if (os_log_type_enabled(_TVLLogDefault_log_2, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v107 = v8;
        _os_log_impl(&dword_26CD78000, v9, OS_LOG_TYPE_INFO, "FDR calibration data converted from v1 to v3. New size = %ld\n", buf, 0xCu);
      }

      v3 = v7;
    }

    else
    {
      v8 = 10440;
    }
  }

  else
  {
    v8 = Length;
  }

  v10 = objc_alloc_init(TVLALSCalibrationData);
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(self, "_displayID")}];
  [(TVLALSCalibrationData *)v10 setDisplayID:v11];

  if (v8 > 10235)
  {
    if (v8 == 10348)
    {
      if (_TVLLogDefault_onceToken_2 != -1)
      {
        _ALSIOHIDEventCallback_cold_2();
      }

      v79 = _TVLLogDefault_log_2;
      if (os_log_type_enabled(_TVLLogDefault_log_2, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_26CD78000, v79, OS_LOG_TYPE_INFO, "Found HmClData_VD6287_v3", buf, 2u);
      }

      BytePtr = CFDataGetBytePtr(v3);
      v81 = BytePtr;
      if (isInternalBuild_onceToken != -1)
      {
        +[TVLALSDataExtractor extractALSCalibrationData];
      }

      if (isInternalBuild_internalBuild == 1)
      {
        if (_TVLLogDefault_onceToken_2 != -1)
        {
          _ALSIOHIDEventCallback_cold_2();
        }

        print_HmCl_VD6287_v3(v81, _TVLLogDefault_log_2);
      }

      if (*(v81 + 10) != 2)
      {
        if (_TVLLogDefault_onceToken_2 != -1)
        {
          _ALSIOHIDEventCallback_cold_2();
        }

        if (os_log_type_enabled(_TVLLogDefault_log_2, OS_LOG_TYPE_ERROR))
        {
          +[TVLALSDataExtractor extractALSCalibrationData];
        }

        goto LABEL_130;
      }

      v82 = v81 + 4096;
      if (*(v81 + 5214) != 1)
      {
        if (_TVLLogDefault_onceToken_2 != -1)
        {
          _ALSIOHIDEventCallback_cold_2();
        }

        if (os_log_type_enabled(_TVLLogDefault_log_2, OS_LOG_TYPE_ERROR))
        {
          +[TVLALSDataExtractor extractALSCalibrationData];
        }

        goto LABEL_130;
      }

      if (*(v81 + 5218) == 5)
      {
        [(TVLALSCalibrationData *)v10 setVersion:&unk_287E0E9B8];
        v83 = [MEMORY[0x277CCABB0] numberWithInt:*(v81 + 5218)];
        [(TVLALSCalibrationData *)v10 setChannels:v83];

        v84 = [MEMORY[0x277CCABB0] numberWithInt:*(v81 + 5443)];
        [(TVLALSCalibrationData *)v10 setWavelengthStartVisible:v84];

        v85 = [MEMORY[0x277CCABB0] numberWithInt:*(v81 + 5445)];
        [(TVLALSCalibrationData *)v10 setWavelengthStartNIR:v85];

        v86 = [MEMORY[0x277CCABB0] numberWithInt:*(v81 + 5447)];
        [(TVLALSCalibrationData *)v10 setWavelengthEnd:v86];

        v87 = [MEMORY[0x277CCABB0] numberWithInt:*(v81 + 5449)];
        [(TVLALSCalibrationData *)v10 setWavelengthStep:v87];

        v88 = [MEMORY[0x277CCABB0] numberWithInt:*(v81 + 5415)];
        [(TVLALSCalibrationData *)v10 setNormalizationFactor:v88];

        v89 = *(v81 + 5447);
        v90 = *(v81 + 5443);
        v91 = *(v81 + 5449);
        v105 = objc_alloc_init(MEMORY[0x277CBEB18]);
        if (!*(v81 + 5218))
        {
          goto LABEL_50;
        }

        v103 = v3;
        v104 = v10;
        v92 = 0;
        v93 = (~v90 + v89 + v91) / v91;
        v94 = (v81 + 5452);
        do
        {
          v95 = objc_alloc_init(MEMORY[0x277CBEB18]);
          v96 = v94;
          v97 = (v93 & ~(v93 >> 31)) + 1;
          if ((v93 & 0x80000000) == 0)
          {
            do
            {
              v98 = *v96++;
              v99 = [MEMORY[0x277CCABB0] numberWithInt:{v98, v103, v104}];
              [v95 addObject:v99];

              --v97;
            }

            while (v97);
          }

          v100 = [MEMORY[0x277CBEA60] arrayWithArray:{v95, v103, v104}];
          [v105 addObject:v100];

          ++v92;
          v94 += 401;
        }

        while (v92 < *(v82 + 1122));
        goto LABEL_49;
      }

      v101 = _TVLLogDefault(BytePtr);
      if (os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
      {
        +[TVLALSDataExtractor extractALSCalibrationData];
      }

      goto LABEL_129;
    }

    if (v8 == 10236)
    {
      if (_TVLLogDefault_onceToken_2 != -1)
      {
        _ALSIOHIDEventCallback_cold_2();
      }

      v34 = _TVLLogDefault_log_2;
      if (os_log_type_enabled(_TVLLogDefault_log_2, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_26CD78000, v34, OS_LOG_TYPE_INFO, "Found HmClData", buf, 2u);
      }

      v35 = CFDataGetBytePtr(v3);
      if (isInternalBuild_onceToken != -1)
      {
        +[TVLALSDataExtractor extractALSCalibrationData];
      }

      if (isInternalBuild_internalBuild == 1)
      {
        if (_TVLLogDefault_onceToken_2 != -1)
        {
          _ALSIOHIDEventCallback_cold_2();
        }

        print_HmClData(v35, _TVLLogDefault_log_2);
      }

      [(TVLALSCalibrationData *)v10 setVersion:&unk_287E0E9A0];
      v36 = [MEMORY[0x277CCABB0] numberWithInt:v35[80]];
      [(TVLALSCalibrationData *)v10 setChannels:v36];

      v37 = [MEMORY[0x277CCABB0] numberWithInt:*(v35 + 168)];
      [(TVLALSCalibrationData *)v10 setWavelengthStartVisible:v37];

      v38 = [MEMORY[0x277CCABB0] numberWithInt:*(v35 + 169)];
      [(TVLALSCalibrationData *)v10 setWavelengthStartNIR:v38];

      v39 = [MEMORY[0x277CCABB0] numberWithInt:*(v35 + 170)];
      [(TVLALSCalibrationData *)v10 setWavelengthEnd:v39];

      v40 = [MEMORY[0x277CCABB0] numberWithInt:v35[342]];
      [(TVLALSCalibrationData *)v10 setWavelengthStep:v40];

      v41 = [MEMORY[0x277CCABB0] numberWithInt:*(v35 + 74)];
      [(TVLALSCalibrationData *)v10 setNormalizationFactor:v41];

      v42 = *(v35 + 170);
      v43 = *(v35 + 168);
      v44 = v35[342];
      v105 = objc_alloc_init(MEMORY[0x277CBEB18]);
      if (!v35[80])
      {
        goto LABEL_50;
      }

      v103 = v3;
      v104 = v10;
      v45 = 0;
      v46 = (~v43 + v42 + v44) / v44;
      v47 = v35 + 344;
      do
      {
        v48 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v49 = v47;
        v50 = (v46 & ~(v46 >> 31)) + 1;
        if ((v46 & 0x80000000) == 0)
        {
          do
          {
            v51 = *v49;
            v49 += 2;
            v52 = [MEMORY[0x277CCABB0] numberWithInt:{v51, v103, v104}];
            [v48 addObject:v52];

            --v50;
          }

          while (v50);
        }

        v53 = [MEMORY[0x277CBEA60] arrayWithArray:{v48, v103, v104}];
        [v105 addObject:v53];

        ++v45;
        v47 += 802;
      }

      while (v45 < v35[80]);
      goto LABEL_49;
    }

    goto LABEL_53;
  }

  if (v8 == 8672)
  {
    if (_TVLLogDefault_onceToken_2 != -1)
    {
      _ALSIOHIDEventCallback_cold_2();
    }

    v57 = _TVLLogDefault_log_2;
    if (os_log_type_enabled(_TVLLogDefault_log_2, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_26CD78000, v57, OS_LOG_TYPE_INFO, "Found HmClData_VD6287_v4", buf, 2u);
    }

    v58 = CFDataGetBytePtr(v3);
    v59 = strncmp(v58, "lCmH", 5uLL);
    if (v59)
    {
      if (v58[4] == 4)
      {
        if (v58[10] == 2)
        {
          v60 = v58 + 4096;
          if (v58[4376] == 1)
          {
            if (v58[4380] == 5)
            {
              [(TVLALSCalibrationData *)v10 setVersion:&unk_287E0E9B8];
              v61 = [MEMORY[0x277CCABB0] numberWithInt:v58[4380]];
              [(TVLALSCalibrationData *)v10 setChannels:v61];

              v62 = [MEMORY[0x277CCABB0] numberWithInt:*(v58 + 4571)];
              [(TVLALSCalibrationData *)v10 setWavelengthStartVisible:v62];

              v63 = [MEMORY[0x277CCABB0] numberWithInt:*(v58 + 4573)];
              [(TVLALSCalibrationData *)v10 setWavelengthStartNIR:v63];

              v64 = [MEMORY[0x277CCABB0] numberWithInt:*(v58 + 4575)];
              [(TVLALSCalibrationData *)v10 setWavelengthEnd:v64];

              v65 = [MEMORY[0x277CCABB0] numberWithInt:v58[4577]];
              [(TVLALSCalibrationData *)v10 setWavelengthStep:v65];

              v66 = [MEMORY[0x277CCABB0] numberWithInt:*(v58 + 4547)];
              [(TVLALSCalibrationData *)v10 setNormalizationFactor:v66];

              v67 = *(v58 + 4575);
              v68 = *(v58 + 4571);
              v69 = v58[4577];
              v105 = objc_alloc_init(MEMORY[0x277CBEB18]);
              if (!v58[4380])
              {
                goto LABEL_50;
              }

              v103 = v3;
              v104 = v10;
              v70 = 0;
              v71 = (~v68 + v67 + v69) / v69;
              v72 = v58 + 4578;
              do
              {
                v73 = objc_alloc_init(MEMORY[0x277CBEB18]);
                v74 = v72;
                v75 = (v71 & ~(v71 >> 31)) + 1;
                if ((v71 & 0x80000000) == 0)
                {
                  do
                  {
                    v76 = *v74;
                    v74 += 2;
                    v77 = [MEMORY[0x277CCABB0] numberWithInt:{v76, v103, v104}];
                    [v73 addObject:v77];

                    --v75;
                  }

                  while (v75);
                }

                v78 = [MEMORY[0x277CBEA60] arrayWithArray:{v73, v103, v104}];
                [v105 addObject:v78];

                ++v70;
                v72 += 802;
              }

              while (v70 < v60[284]);
              goto LABEL_49;
            }

            v101 = _TVLLogDefault(v59);
            if (!os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_129;
            }

            goto LABEL_128;
          }

          v101 = _TVLLogDefault(v59);
          if (!os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
          {
LABEL_129:

            goto LABEL_130;
          }

LABEL_122:
          +[TVLALSDataExtractor extractALSCalibrationData];
          goto LABEL_129;
        }

        v101 = _TVLLogDefault(v59);
        if (!os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_129;
        }

LABEL_116:
        +[TVLALSDataExtractor extractALSCalibrationData];
        goto LABEL_129;
      }

      if (_TVLLogDefault_onceToken_2 != -1)
      {
        _ALSIOHIDEventCallback_cold_2();
      }

      if (!os_log_type_enabled(_TVLLogDefault_log_2, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_130;
      }

      goto LABEL_106;
    }

    if (_TVLLogDefault_onceToken_2 != -1)
    {
      _ALSIOHIDEventCallback_cold_2();
    }

    if (!os_log_type_enabled(_TVLLogDefault_log_2, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_130;
    }

LABEL_98:
    +[TVLALSDataExtractor extractALSCalibrationData];
LABEL_130:
    v55 = 0;
    goto LABEL_131;
  }

  if (v8 != 8760)
  {
LABEL_53:
    if (_TVLLogDefault_onceToken_2 != -1)
    {
      _ALSIOHIDEventCallback_cold_2();
    }

    v56 = _TVLLogDefault_log_2;
    if (os_log_type_enabled(_TVLLogDefault_log_2, OS_LOG_TYPE_FAULT))
    {
      +[(TVLALSDataExtractor *)v8];
    }

    goto LABEL_130;
  }

  if (_TVLLogDefault_onceToken_2 != -1)
  {
    _ALSIOHIDEventCallback_cold_2();
  }

  v12 = _TVLLogDefault_log_2;
  if (os_log_type_enabled(_TVLLogDefault_log_2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_26CD78000, v12, OS_LOG_TYPE_INFO, "Found HmClData_VD6287_v4_od", buf, 2u);
  }

  v13 = CFDataGetBytePtr(v3);
  v14 = strncmp(v13, "lCmH", 5uLL);
  if (!v14)
  {
    if (_TVLLogDefault_onceToken_2 != -1)
    {
      _ALSIOHIDEventCallback_cold_2();
    }

    if (!os_log_type_enabled(_TVLLogDefault_log_2, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_130;
    }

    goto LABEL_98;
  }

  if (v13[4] != 4)
  {
    if (_TVLLogDefault_onceToken_2 != -1)
    {
      _ALSIOHIDEventCallback_cold_2();
    }

    if (!os_log_type_enabled(_TVLLogDefault_log_2, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_130;
    }

LABEL_106:
    +[TVLALSDataExtractor extractALSCalibrationData];
    goto LABEL_130;
  }

  if (v13[10] != 2)
  {
    v101 = _TVLLogDefault(v14);
    if (!os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_129;
    }

    goto LABEL_116;
  }

  v15 = v13 + 4096;
  if (v13[4420] != 1)
  {
    v101 = _TVLLogDefault(v14);
    if (!os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_129;
    }

    goto LABEL_122;
  }

  if (v13[4424] != 5)
  {
    v101 = _TVLLogDefault(v14);
    if (os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
    {
LABEL_128:
      +[TVLALSDataExtractor extractALSCalibrationData];
      goto LABEL_129;
    }

    goto LABEL_129;
  }

  [(TVLALSCalibrationData *)v10 setVersion:&unk_287E0E9B8];
  v16 = [MEMORY[0x277CCABB0] numberWithInt:v13[4424]];
  [(TVLALSCalibrationData *)v10 setChannels:v16];

  v17 = [MEMORY[0x277CCABB0] numberWithInt:*(v13 + 4657)];
  [(TVLALSCalibrationData *)v10 setWavelengthStartVisible:v17];

  v18 = [MEMORY[0x277CCABB0] numberWithInt:*(v13 + 4659)];
  [(TVLALSCalibrationData *)v10 setWavelengthStartNIR:v18];

  v19 = [MEMORY[0x277CCABB0] numberWithInt:*(v13 + 4661)];
  [(TVLALSCalibrationData *)v10 setWavelengthEnd:v19];

  v20 = [MEMORY[0x277CCABB0] numberWithInt:v13[4663]];
  [(TVLALSCalibrationData *)v10 setWavelengthStep:v20];

  v21 = [MEMORY[0x277CCABB0] numberWithInt:*(v13 + 4591)];
  [(TVLALSCalibrationData *)v10 setNormalizationFactor:v21];

  v22 = *(v13 + 4661);
  v23 = *(v13 + 4657);
  v24 = v13[4663];
  v105 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (v13[4424])
  {
    v103 = v3;
    v104 = v10;
    v25 = 0;
    v26 = (~v23 + v22 + v24) / v24;
    v27 = v13 + 4664;
    do
    {
      v28 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v29 = v27;
      v30 = (v26 & ~(v26 >> 31)) + 1;
      if ((v26 & 0x80000000) == 0)
      {
        do
        {
          v31 = *v29;
          v29 += 2;
          v32 = [MEMORY[0x277CCABB0] numberWithInt:{v31, v103, v104}];
          [v28 addObject:v32];

          --v30;
        }

        while (v30);
      }

      v33 = [MEMORY[0x277CBEA60] arrayWithArray:{v28, v103, v104}];
      [v105 addObject:v33];

      ++v25;
      v27 += 802;
    }

    while (v25 < v15[328]);
LABEL_49:
    v3 = v103;
    v10 = v104;
  }

LABEL_50:
  v54 = [MEMORY[0x277CBEA60] arrayWithArray:v105];
  [(TVLALSCalibrationData *)v10 setSpectrumNom:v54];

  if (v3)
  {
    CFRelease(v3);
  }

  v55 = v10;
LABEL_131:

  return v55;
}

+ (unsigned)_displayID
{
  *mainPort = 0;
  if (!IOMasterPort(0, mainPort))
  {
    v2 = IORegistryEntryFromPath(mainPort[0], "IODeviceTree:/arm-io/disp0");
    if (v2)
    {
      v3 = v2;
      v4 = IORegistryEntrySearchCFProperty(v2, "IODeviceTree", @"color-accuracy-index", *MEMORY[0x277CBECE8], 1u);
      if (v4)
      {
        v5 = v4;
        v8.location = 0;
        v8.length = 4;
        CFDataGetBytes(v4, v8, &mainPort[1]);
        CFRelease(v5);
      }

      IOObjectRelease(v3);
    }

    if (mainPort[0])
    {
      mach_port_deallocate(*MEMORY[0x277D85F48], mainPort[0]);
    }
  }

  return mainPort[1];
}

+ (void)extractALSData:(id)data
{
  dataCopy = data;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __38__TVLALSDataExtractor_extractALSData___block_invoke;
  v6[3] = &unk_279D6BE18;
  v7 = dataCopy;
  v5 = dataCopy;
  [self extract:1 ALSReadings:v6];
}

void __38__TVLALSDataExtractor_extractALSData___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 firstObject];
  (*(v2 + 16))(v2, v3);
}

+ (void)extract:(unint64_t)extract ALSReadings:(id)readings
{
  readingsCopy = readings;
  v6 = objc_alloc_init(TVLALSDataExtractor);
  [(NSTimer *)v6->_timer invalidate];
  v6->_readCount = extract;
  objc_initWeak(&location, v6);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __43__TVLALSDataExtractor_extract_ALSReadings___block_invoke;
  v25[3] = &unk_279D6BE68;
  objc_copyWeak(&v27, &location);
  v7 = readingsCopy;
  v26 = v7;
  v8 = MEMORY[0x26D6AEC20](v25);
  completion = v6->_completion;
  v6->_completion = v8;

  v10 = v6;
  v11 = MEMORY[0x277CBEBB8];
  v12 = v6->_readCount * 1.5;
  v20 = MEMORY[0x277D85DD0];
  v21 = 3221225472;
  v22 = __43__TVLALSDataExtractor_extract_ALSReadings___block_invoke_3;
  v23 = &unk_279D6BE90;
  v13 = v10;
  v24 = v13;
  v14 = [v11 timerWithTimeInterval:0 repeats:&v20 block:v12];
  timer = v6->_timer;
  v6->_timer = v14;

  mainRunLoop = [MEMORY[0x277CBEB88] mainRunLoop];
  [mainRunLoop addTimer:v6->_timer forMode:*MEMORY[0x277CBE738]];

  v17 = v13;
  if (!v17->_ioHIDSystemClient)
  {
    if (_TVLLogDefault_onceToken_2 != -1)
    {
      _ALSIOHIDEventCallback_cold_2();
    }

    v18 = _TVLLogDefault_log_2;
    if (os_log_type_enabled(_TVLLogDefault_log_2, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_26CD78000, v18, OS_LOG_TYPE_INFO, "ScheduleHIDEventSystemClient", buf, 2u);
    }

    v19 = IOHIDEventSystemClientCreateWithType();
    IOHIDEventSystemClientRegisterEventCallback();
    CFRunLoopGetMain();
    IOHIDEventSystemClientScheduleWithRunLoop();
    v17->_ioHIDSystemClient = v19;
  }

  objc_destroyWeak(&v27);
  objc_destroyWeak(&location);
}

void __43__TVLALSDataExtractor_extract_ALSReadings___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    _UnregisterHIDSystemClient(WeakRetained);
    [v5[5] invalidate];
    v6 = v5[5];
    v5[5] = 0;
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __43__TVLALSDataExtractor_extract_ALSReadings___block_invoke_2;
  v9[3] = &unk_279D6BE40;
  v7 = *(a1 + 32);
  v10 = v3;
  v11 = v7;
  v8 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v9);
}

void __43__TVLALSDataExtractor_extract_ALSReadings___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (_TVLLogDefault_onceToken_2 != -1)
  {
    _UnregisterHIDSystemClient_cold_1();
  }

  if (os_log_type_enabled(_TVLLogDefault_log_2, OS_LOG_TYPE_ERROR))
  {
    __43__TVLALSDataExtractor_extract_ALSReadings___block_invoke_3_cold_2();
  }

  (*(*(*(a1 + 32) + 16) + 16))();
}

+ (void)extractALSCalibrationData
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  selfCopy = self;
  _os_log_fault_impl(&dword_26CD78000, a2, OS_LOG_TYPE_FAULT, "Unsupported HmCl format, size %ld", &v2, 0xCu);
}

void __43__TVLALSDataExtractor_extract_ALSReadings___block_invoke_3_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end