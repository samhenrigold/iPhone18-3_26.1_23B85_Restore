@interface PRSharingChoice
- (PRSharingChoice)init;
- (PRSharingChoice)initWithQueue:(id)queue;
- (id).cxx_construct;
- (void)addBluetoothProximityEstimate:(NeighborMeasurements *)estimate currentMachContTime:;
- (void)addRoseSolutions:(id)solutions currentMachContTime:(double)time;
- (void)createEstimators;
- (void)heartbeatTimeout:(double)timeout currentMachContTime:(double)time useUpdatedScores:(BOOL)scores;
- (void)reportScoresToClientAlways:(BOOL)always useUpdatedScoreList:(BOOL)list currentMachContTime:(double)time;
- (void)updateScoresForTime:(double)time;
- (void)updateScoresWithNewMeasurement:(const void *)measurement;
@end

@implementation PRSharingChoice

- (PRSharingChoice)init
{
  [(PRSharingChoice *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PRSharingChoice)initWithQueue:(id)queue
{
  queueCopy = queue;
  v19.receiver = self;
  v19.super_class = PRSharingChoice;
  v6 = [(PRSharingChoice *)&v19 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
    *&v7->_useRegionBasedEstimator = 0;
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    scores = v7->_scores;
    v7->_scores = v8;

    __asm { FMOV            V0.2D, #-1.0 }

    *&v7->_lastScoreReportMachContinuousTime = _Q0;
    lastBigHeadMacAddress = v7->_lastBigHeadMacAddress;
    v7->_lastBigHeadMacAddress = 0;

    v16 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"score" ascending:0];
    scoreSortDescriptor = v7->_scoreSortDescriptor;
    v7->_scoreSortDescriptor = v16;
  }

  return v7;
}

- (void)createEstimators
{
  if (!self->_estimatorRangeOnly.__ptr_)
  {
    logger = self->_logger;
    if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&dword_230EB5000, logger, OS_LOG_TYPE_DEFAULT, "Initializing SharingImportanceManager", v3, 2u);
    }

    operator new();
  }
}

- (void)addRoseSolutions:(id)solutions currentMachContTime:(double)time
{
  timeCopy = time;
  v103 = *MEMORY[0x277D85DE8];
  solutionsCopy = solutions;
  selfCopy = self;
  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf.__r_.__value_.__l.__data_) = 134217984;
    *(buf.__r_.__value_.__r.__words + 4) = timeCopy;
    _os_log_impl(&dword_230EB5000, logger, OS_LOG_TYPE_DEFAULT, "addRoseSolutions: current mach continuous time %lf", &buf, 0xCu);
  }

  v78[0] = 0;
  v78[1] = 0;
  v77 = v78;
  v6 = selfCopy->_logger;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [solutionsCopy count];
    LODWORD(buf.__r_.__value_.__l.__data_) = 134217984;
    *(buf.__r_.__value_.__r.__words + 4) = v7;
    _os_log_impl(&dword_230EB5000, v6, OS_LOG_TYPE_DEFAULT, "PRSharingSession: Got %lu solutions", &buf, 0xCu);
  }

  v76 = 0u;
  v74 = 0u;
  v75 = 0u;
  v73 = 0u;
  v8 = solutionsCopy;
  v9 = [v8 countByEnumeratingWithState:&v73 objects:v102 count:16];
  if (v9)
  {
    v10 = *v74;
    do
    {
      v11 = 0;
      do
      {
        if (*v74 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v73 + 1) + 8 * v11);
        mac_addr = [v12 mac_addr];
        __str.__r_.__value_.__r.__words[0] = mac_addr;
        v14 = v78[0];
        if (!v78[0])
        {
          goto LABEL_18;
        }

        v15 = v78;
        do
        {
          v16 = v14[4];
          v17 = v16 >= mac_addr;
          v18 = v16 < mac_addr;
          if (v17)
          {
            v15 = v14;
          }

          v14 = v14[v18];
        }

        while (v14);
        if (v15 != v78 && mac_addr >= v15[4])
        {
          if ([v12 variant] == 1)
          {
            buf.__r_.__value_.__r.__words[0] = &__str;
            *(std::__tree<std::__value_type<unsigned long long,BOOL>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,BOOL>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,BOOL>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&v77, &__str, &std::piecewise_construct, &buf) + 40) = 1;
          }
        }

        else
        {
LABEL_18:
          variant = [v12 variant];
          buf.__r_.__value_.__r.__words[0] = &__str;
          *(std::__tree<std::__value_type<unsigned long long,BOOL>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,BOOL>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,BOOL>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&v77, &__str, &std::piecewise_construct, &buf) + 40) = variant == 1;
        }

        ++v11;
      }

      while (v11 != v9);
      v20 = [v8 countByEnumeratingWithState:&v73 objects:v102 count:16];
      v9 = v20;
    }

    while (v20);
  }

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  obj = v8;
  v21 = [obj countByEnumeratingWithState:&v69 objects:v101 count:16];
  if (v21)
  {
    v22 = *v70;
    v66 = vdupq_n_s64(0x7FF4000000000000uLL);
    do
    {
      v23 = 0;
      v63 = v21;
      do
      {
        if (*v70 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v69 + 1) + 8 * v23);
        if ([v24 variant] == 1 || (__str.__r_.__value_.__r.__words[0] = objc_msgSend(v24, "mac_addr"), buf.__r_.__value_.__r.__words[0] = &__str, (std::__tree<std::__value_type<unsigned long long,BOOL>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,BOOL>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,BOOL>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&v77, &__str, &std::piecewise_construct, &buf)[5] & 1) == 0))
        {
          __str.__r_.__value_.__r.__words[0] = [v24 mac_addr];
          buf.__r_.__value_.__r.__words[0] = &__str;
          if ((std::__tree<std::__value_type<unsigned long long,BOOL>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,BOOL>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,BOOL>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&v77, &__str, &std::piecewise_construct, &buf)[5] & 1) == 0)
          {
            v25 = selfCopy->_logger;
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              mac_addr2 = [v24 mac_addr];
              LODWORD(buf.__r_.__value_.__l.__data_) = 134217984;
              *(buf.__r_.__value_.__r.__words + 4) = mac_addr2;
              _os_log_impl(&dword_230EB5000, v25, OS_LOG_TYPE_DEFAULT, "PRSharingSession: Using raw measurement solution for MAC: 0x%016llx", &buf, 0xCu);
            }
          }

          if ([v24 variant] == 1)
          {
            v27 = selfCopy->_logger;
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              mac_addr3 = [v24 mac_addr];
              LODWORD(buf.__r_.__value_.__l.__data_) = 134217984;
              *(buf.__r_.__value_.__r.__words + 4) = mac_addr3;
              _os_log_impl(&dword_230EB5000, v27, OS_LOG_TYPE_DEFAULT, "PRSharingSession: Using sensor-fused measurement solution for MAC: 0x%016llx", &buf, 0xCu);
            }
          }

          v29 = selfCopy->_logger;
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            mac_addr4 = [v24 mac_addr];
            [v24 mach_absolute_time_sec];
            v65 = v31;
            if ([v24 mach_continuous_time_valid])
            {
              v32 = "true";
            }

            else
            {
              v32 = "false";
            }

            [v24 mach_continuous_time_sec];
            v34 = v33;
            [v24 range_m];
            v36 = v35;
            [v24 range_unc_m];
            v38 = v37;
            if ([v24 az_valid])
            {
              v39 = "true";
            }

            else
            {
              v39 = "false";
            }

            [v24 az_deg];
            v41 = v40;
            [v24 az_unc_deg];
            v43 = v42;
            if ([v24 el_valid])
            {
              v44 = "true";
            }

            else
            {
              v44 = "false";
            }

            [v24 el_deg];
            v46 = v45;
            [v24 el_unc_deg];
            v48 = v47;
            [v24 fov_confidence];
            v50 = v49;
            antenna_type = [v24 antenna_type];
            v52 = v22;
            v53 = @"InvalidEnumValue";
            if (antenna_type <= 4)
            {
              v53 = off_2788F40D8[antenna_type];
            }

            uTF8String = [(__CFString *)v53 UTF8String];
            soi_rssi_valid = [v24 soi_rssi_valid];
            [v24 soi_rssi_dbm];
            LODWORD(buf.__r_.__value_.__l.__data_) = 134221826;
            v57 = "false";
            if (soi_rssi_valid)
            {
              v57 = "true";
            }

            *(buf.__r_.__value_.__r.__words + 4) = mac_addr4;
            WORD2(buf.__r_.__value_.__r.__words[1]) = 2048;
            *(&buf.__r_.__value_.__r.__words[1] + 6) = v65;
            HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
            v80 = v32;
            v81 = 2048;
            *v82 = v34;
            *&v82[8] = 2048;
            *&v82[10] = v36;
            *&v82[18] = 2048;
            *&v82[20] = v38;
            *&v82[28] = 2080;
            v83 = v39;
            *v84 = 2048;
            *&v84[2] = v41;
            v85 = 2048;
            v86 = v43;
            v87 = 2080;
            v88 = v44;
            v89 = 2048;
            v90 = v46;
            v91 = 2048;
            v92 = v48;
            v93 = 2048;
            v94 = v50;
            v95 = 2080;
            v96 = uTF8String;
            v97 = 2080;
            v98 = v57;
            v99 = 2048;
            v100 = v56;
            _os_log_impl(&dword_230EB5000, v29, OS_LOG_TYPE_DEFAULT, "PRSharingSession: new PRRoseSolution sent to estimator:\n MAC: 0x%016llx\n MAT: %f\n MCT_valid: %s\n MCT: %f\n range: %f\n range_unc: %f\n az_valid: %s\n az_deg: %f\n az_deg_unc: %f\n el_valid: %s\n el_deg: %f\n el_deg_unc: %f\n fov_confidence: %f\n antenna_type: %s\n soi_rssi_valid: %s\n soi_rssi_dbm: %f", &buf, 0xA2u);
            v22 = v52;
            v21 = v63;
          }

          [v24 mac_addr];
          objc_msgSend_UIntToHexString_len_(PRSharingSessionHelper);
          memset(&buf, 0, sizeof(buf));
          v80 = 0x7FF4000000000000;
          v81 = 0;
          *&v82[6] = v66;
          v82[22] = 0;
          *&v82[26] = 3;
          LOBYTE(v83) = 0;
          *v84 = 0x7FF4000000000000;
          *&v84[8] = 0;
          std::string::operator=(&buf, &__str);
          [v24 mach_absolute_time_sec];
          v80 = v58;
          LOBYTE(v81) = 1;
          [v24 range_m];
          *&v82[6] = v59;
          LOBYTE(v83) = [v24 soi_rssi_valid];
          [v24 soi_rssi_dbm];
          *v84 = v60;
          HIBYTE(v81) = 0;
          *&v82[14] = 0xC00921FB54442D18;
          v82[22] = 0;
          *&v82[26] = 3;
          *&v84[8] = 0;
          [(PRSharingChoice *)selfCopy updateScoresWithNewMeasurement:&buf];
          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }
        }

        ++v23;
      }

      while (v21 != v23);
      v21 = [obj countByEnumeratingWithState:&v69 objects:v101 count:16];
    }

    while (v21);
  }

  [(PRSharingChoice *)selfCopy reportScoresToClientAlways:0 useUpdatedScoreList:1 currentMachContTime:timeCopy];
  std::__tree<Region>::destroy(&v77, v78[0]);
}

- (void)addBluetoothProximityEstimate:(NeighborMeasurements *)estimate currentMachContTime:
{
  v4 = v3;
  v10 = *MEMORY[0x277D85DE8];
  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134217984;
    v9 = v4;
    _os_log_impl(&dword_230EB5000, logger, OS_LOG_TYPE_DEFAULT, "addBluetoothProximityEstimate: current mach continuous time %lf", &v8, 0xCu);
  }

  [(PRSharingChoice *)self updateScoresWithNewMeasurement:estimate];
  [(PRSharingChoice *)self reportScoresToClientAlways:0 useUpdatedScoreList:1 currentMachContTime:v4];
}

- (void)heartbeatTimeout:(double)timeout currentMachContTime:(double)time useUpdatedScores:(BOOL)scores
{
  scoresCopy = scores;
  v12 = *MEMORY[0x277D85DE8];
  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134217984;
    timeCopy = time;
    _os_log_impl(&dword_230EB5000, logger, OS_LOG_TYPE_DEFAULT, "heartbeatTimeout: current mach continuous time %lf", &v10, 0xCu);
  }

  if (scoresCopy)
  {
    [(PRSharingChoice *)self updateScoresForTime:timeout];
  }

  [(PRSharingChoice *)self reportScoresToClientAlways:1 useUpdatedScoreList:scoresCopy currentMachContTime:time];
}

- (void)reportScoresToClientAlways:(BOOL)always useUpdatedScoreList:(BOOL)list currentMachContTime:(double)time
{
  v80[1] = *MEMORY[0x277D85DE8];
  alwaysCopy = always;
  if (!always && !list)
  {
    return;
  }

  if (always && !list && self->_newScoresHandler && [(NSArray *)self->_lastReportedScores count])
  {
    v7 = *(self->_newScoresHandler + 2);

    v7();
    return;
  }

  if (self->_lastScoreReportMachContinuousTime + 0.05 <= time || alwaysCopy)
  {
    allValues = [(NSMutableDictionary *)self->_scores allValues];
    v80[0] = self->_scoreSortDescriptor;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v80 count:1];
    v11 = [allValues sortedArrayUsingDescriptors:v10];
    v12 = [v11 mutableCopy];

    v13 = 0;
    v14 = 0;
    while ([v12 count] > v13)
    {
      v15 = [v12 objectAtIndex:v13];
      angle = [v15 angle];
      v17 = angle != 0;

      v14 += v17;
      ++v13;
    }

    if (v14)
    {
      v18 = 0;
      v19 = -1;
      v20 = -1.0;
      while ([v12 count] > v18)
      {
        v21 = [v12 objectAtIndex:v18];
        angle2 = [v21 angle];
        v23 = angle2 == 0;

        if (!v23)
        {
          [v21 score];
          if (v20 >= v24)
          {
            [v21 score];
            if (v20 == v26)
            {
              v27 = self->_logger;
              if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
              {
                [v21 score];
                *buf = 134217984;
                v75 = v28;
                _os_log_impl(&dword_230EB5000, v27, OS_LOG_TYPE_DEFAULT, "Big Head Selection: multiple candidates with same score %f!", buf, 0xCu);
              }

              v19 = -1;
            }
          }

          else
          {
            [v21 score];
            v20 = v25;
            v19 = v18;
          }
        }

        ++v18;
      }

      v29 = (v19 & 0x80000000) == 0;
      if (v14 != 1 && (v19 & 0x80000000) == 0)
      {
        v30 = [v12 objectAtIndex:v19];
        v31 = self->_logger;
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          btAddress = [v30 btAddress];
          [v30 score];
          *buf = 138412546;
          v75 = btAddress;
          v76 = 2048;
          v77 = v33;
          _os_log_impl(&dword_230EB5000, v31, OS_LOG_TYPE_DEFAULT, "Big Head Selection: selected big head device %@ with score %f", buf, 0x16u);
        }

        v29 = 1;
      }

      v71 = v29;
    }

    else
    {
      v71 = 0;
      v19 = -1;
    }

    v34 = 0;
    v35 = v19;
    while ([v12 count] > v34)
    {
      v36 = [v12 objectAtIndex:v34];
      angle3 = [v36 angle];
      if (angle3)
      {
        v38 = v35 == v34;
      }

      else
      {
        v38 = 1;
      }

      v39 = !v38;

      if (v39)
      {
        v40 = self->_logger;
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          angle4 = [v36 angle];
          [angle4 measurement];
          v43 = v42;
          btAddress2 = [v36 btAddress];
          [v36 score];
          *buf = 134218498;
          v75 = v43;
          v76 = 2112;
          v77 = btAddress2;
          v78 = 2048;
          v79 = v45;
          _os_log_impl(&dword_230EB5000, v40, OS_LOG_TYPE_DEFAULT, "Big Head Selection: nil out angle %f for device %@ with score %f (II)", buf, 0x20u);
        }

        v46 = [PRDeviceScore alloc];
        btAddress3 = [v36 btAddress];
        proximity = [v36 proximity];
        range = [v36 range];
        [v36 score];
        v51 = v50;
        [v36 scoreUncertainty];
        v53 = [(PRDeviceScore *)v46 initWithValues:btAddress3 proximity:proximity range:range angle:0 score:v51 scoreUncertainty:v52];

        [v36 timestamp];
        [(PRDeviceScore *)v53 setTimestamp:?];
        [v12 replaceObjectAtIndex:v34 withObject:v53];
      }

      ++v34;
    }

    if (v71)
    {
      v54 = [v12 objectAtIndex:v35];
      [v54 btAddress];
      obj = p_lastBigHeadMacAddress = &self->_lastBigHeadMacAddress;
      if (([obj isEqual:self->_lastBigHeadMacAddress] & 1) == 0)
      {
        if (self->_lastBigHeadFirstReportTime + 0.5 > time)
        {
          if (alwaysCopy && self->_newScoresHandler)
          {
            logger = self->_logger;
            if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
            {
              v57 = *p_lastBigHeadMacAddress;
              *buf = 138412802;
              v75 = v57;
              v76 = 2048;
              v77 = 0x3FE0000000000000;
              v78 = 2112;
              v79 = obj;
              _os_log_impl(&dword_230EB5000, logger, OS_LOG_TYPE_DEFAULT, "Big Head Selection: last big head %@ less than %f second(s), reporting previously reported big head %@", buf, 0x20u);
            }

            (*(self->_newScoresHandler + 2))();
          }

          else
          {
            v69 = self->_logger;
            if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
            {
              v70 = *p_lastBigHeadMacAddress;
              *buf = 138412802;
              v75 = v70;
              v76 = 2048;
              v77 = 0x3FE0000000000000;
              v78 = 2112;
              v79 = obj;
              _os_log_impl(&dword_230EB5000, v69, OS_LOG_TYPE_DEFAULT, "Big Head Selection: last big head %@ less than %f second(s), skip reporting current big head %@", buf, 0x20u);
            }
          }

LABEL_73:
          return;
        }

        self->_lastBigHeadFirstReportTime = time;
        objc_storeStrong(&self->_lastBigHeadMacAddress, obj);
      }
    }

    else
    {
      obj = 0;
    }

    v58 = [v12 count];
    if (v58 == [(NSArray *)self->_lastReportedScores count])
    {
      v59 = 0;
      while ([v12 count] > v59)
      {
        v60 = [v12 objectAtIndex:v59];
        v61 = [(NSArray *)self->_lastReportedScores objectAtIndex:v59];
        btAddress4 = [v60 btAddress];
        btAddress5 = [v61 btAddress];
        v64 = [btAddress4 isEqual:btAddress5];

        if ((v64 & 1) == 0)
        {

          goto LABEL_68;
        }

        angle5 = [v60 angle];
        angle6 = [v61 angle];
        v67 = angle6 != 0;

        ++v59;
        if ((((angle5 == 0) ^ v67) & 1) == 0)
        {
          goto LABEL_68;
        }
      }

      if (alwaysCopy)
      {
        goto LABEL_68;
      }
    }

    else
    {
LABEL_68:
      self->_lastScoreReportMachContinuousTime = time;
      objc_storeStrong(&self->_lastReportedScores, v12);
      newScoresHandler = self->_newScoresHandler;
      if (newScoresHandler)
      {
        newScoresHandler[2](newScoresHandler, v12);
      }
    }

    goto LABEL_73;
  }
}

- (void)updateScoresForTime:(double)time
{
  v21[0] = 0;
  v21[1] = 0;
  v20 = v21;
  SharingImportanceManager::getImportanceEstimates(self->_estimatorRangeOnly.__ptr_, &v20, time);
  v5 = objc_alloc(MEMORY[0x277CBEB18]);
  allKeys = [(NSMutableDictionary *)self->_scores allKeys];
  v7 = [v5 initWithArray:allKeys];

  v8 = v20;
  if (v20 != v21)
  {
    do
    {
      v9 = [PRSharingSessionHelper convertMacStringToNSData:v8 + 4];
      v10 = [PRSharingSessionHelper reverseNSData:v9];

      if (v8[9])
      {
        v11 = *(v8 + 7);
        v12 = *(v8 + 8);
        v13 = *(v8 + 26);
        if (v8[11])
        {
          v14 = [PRRangeMeasurement measurementWithRange:*(v8 + 12) uncertainty:0.0];
        }

        else
        {
          v14 = 0;
        }

        v15 = [[PRDeviceScore alloc] initWithValues:v10 proximity:[PRSharingSessionHelper CoarseRangeToProx:?]score:v14 scoreUncertainty:0, v11, v12];
        [(NSMutableDictionary *)self->_scores setObject:v15 forKeyedSubscript:v10];

        v16 = [(NSMutableDictionary *)self->_scores objectForKeyedSubscript:v10];
        [v16 setTimestamp:time];

        [v7 removeObject:v10];
      }

      v17 = v8[1];
      if (v17)
      {
        do
        {
          v18 = v17;
          v17 = *v17;
        }

        while (v17);
      }

      else
      {
        do
        {
          v18 = v8[2];
          v19 = *v18 == v8;
          v8 = v18;
        }

        while (!v19);
      }

      v8 = v18;
    }

    while (v18 != v21);
  }

  [(NSMutableDictionary *)self->_scores removeObjectsForKeys:v7];

  std::__tree<std::__value_type<std::string,NeighborImportanceEstimate>,std::__map_value_compare<std::string,std::__value_type<std::string,NeighborImportanceEstimate>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,NeighborImportanceEstimate>>>::destroy(&v20, v21[0]);
}

- (void)updateScoresWithNewMeasurement:(const void *)measurement
{
  v9 = *MEMORY[0x277D85DE8];
  kdebug_trace();
  std::vector<NeighborMeasurements>::push_back[abi:ne200100](&self->_measurements, measurement);
  SharingImportanceManager::handleMeasurements(self->_estimatorRangeOnly.__ptr_, &self->_measurements);
  std::vector<NeighborMeasurements>::clear[abi:ne200100](&self->_measurements);
  [(PRSharingChoice *)self updateScoresForTime:*(measurement + 3)];
  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(measurement + 3);
    v7 = 134217984;
    v8 = v6;
    _os_log_impl(&dword_230EB5000, logger, OS_LOG_TYPE_DEFAULT, "measurement time %lf", &v7, 0xCu);
  }

  kdebug_trace();
}

- (id).cxx_construct
{
  *(self + 7) = 0;
  *(self + 8) = 0;
  *(self + 9) = 0;
  *(self + 11) = 0;
  return self;
}

@end