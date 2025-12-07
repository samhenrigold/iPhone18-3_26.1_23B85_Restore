@interface TSDClockStatistics
- (TSDClockStatistics)initWithClockIdentifier:(unint64_t)identifier;
- (void)dealloc;
- (void)didBeginClockGrandmasterChangeWithGrandmasterID:(unint64_t)d localPort:(unsigned __int16)port forClock:(id)clock;
- (void)didChangeClockMasterForClock:(id)clock;
- (void)didChangeLockStateTo:(int)to forClock:(id)clock;
- (void)didEndClockGrandmasterChangeWithGrandmasterID:(unint64_t)d localPort:(unsigned __int16)port forClock:(id)clock;
- (void)didGetStatsOfLocalPortNumber:(unint64_t)number mean:(unint64_t)mean median:(unint64_t)median stddev:(unint64_t)stddev min:(unint64_t)min max:(unint64_t)max numberOfSamples:(unsigned int)samples forClock:(id)self0;
- (void)didProcessSync:(id)sync;
- (void)didResetClock:(id)clock;
- (void)finalizeClock;
- (void)logStatistics;
@end

@implementation TSDClockStatistics

- (void)logStatistics
{
  v3 = mach_absolute_time();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = self->_clock;
    v5 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      clockIdentifier = [(TSDKernelClock *)self->_clock clockIdentifier];
      *buf = 134217984;
      *&buf[4] = clockIdentifier;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "PTP Clock Statistics for 0x%016llx\n", buf, 0xCu);
    }

    v7 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      grandmasterIdentity = [(TSDKernelClock *)v4 grandmasterIdentity];
      *buf = 134217984;
      *&buf[4] = grandmasterIdentity;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "    Grandmaster Identity: 0x%016llx\n", buf, 0xCu);
    }

    lockState = [(TSDKernelClock *)v4 lockState];
    if (lockState > 2)
    {
      v10 = @"Unknown";
    }

    else
    {
      v10 = off_10004CAF8[lockState];
    }

    v14 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      uTF8String = [(__CFString *)v10 UTF8String];
      *buf = 136315138;
      *&buf[4] = uTF8String;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "    Clock lock state: %s\n", buf, 0xCu);
    }

    v383 = 0;
    v382 = 0;
    v381 = 0;
    v380 = 0;
    v379 = 0;
    v378 = 0;
    v377 = 0;
    v376 = 0;
    v16 = [(TSDKernelClock *)v4 getMachAbsoluteRateRatioNumerator:&v383 denominator:&v382 machAnchor:&v381 andDomainAnchor:&v379 forGrandmasterIdentity:&v378 portNumber:&v377 withError:&v376];
    v17 = v376;
    v18 = &_os_log_default;
    v19 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
    if (v16)
    {
      if (v19)
      {
        *buf = 134218496;
        *&buf[4] = v383;
        *&buf[12] = 2048;
        v387 = v382;
        v388 = 2048;
        v389 = v383 / v382;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "    Mach Rate Ratio: %llu/%llu (%0.12f)\n", buf, 0x20u);
      }

      v20 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        *&buf[4] = v381;
        *&buf[12] = 2048;
        v387 = v379;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "    Mach Anchors: %llu, %llu\n", buf, 0x16u);
      }

      v21 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        *&buf[4] = v378;
        *&buf[12] = 1024;
        LODWORD(v387) = v377;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "    Mach Sync Identity: 0x%016llx.%hu\n", buf, 0x12u);
      }
    }

    else if (v19)
    {
      localizedDescription = [v17 localizedDescription];
      uTF8String2 = [localizedDescription UTF8String];
      *buf = 136315138;
      *&buf[4] = uTF8String2;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "    Mach Sync Info: failed to get rate ratio and anchors with error %s\n", buf, 0xCu);
    }

    v375 = v17;
    v29 = [(TSDKernelClock *)v4 getTimeSyncTimeRateRatioNumerator:&v383 denominator:&v382 timeSyncAnchor:&v380 andDomainAnchor:&v379 forGrandmasterIdentity:&v378 portNumber:&v377 withError:&v375];
    v284 = v375;

    v30 = &_os_log_default;
    v31 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
    v285 = v3;
    if (v29)
    {
      if (v31)
      {
        *buf = 134218496;
        *&buf[4] = v383;
        *&buf[12] = 2048;
        v387 = v382;
        v388 = 2048;
        v389 = v383 / v382;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "    TimeSync Rate Ratio: %llu/%llu (%0.12f)\n", buf, 0x20u);
      }

      selfCopy2 = self;

      v33 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        *&buf[4] = v380;
        *&buf[12] = 2048;
        v387 = v379;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "    TimeSync Anchors: %llu, %llu\n", buf, 0x16u);
      }

      v34 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        *&buf[4] = v378;
        *&buf[12] = 1024;
        LODWORD(v387) = v377;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "    TimeSync Sync Identity: 0x%016llx.%hu\n", buf, 0x12u);
      }
    }

    else
    {
      selfCopy2 = self;
      if (v31)
      {
        localizedDescription2 = [v284 localizedDescription];
        uTF8String3 = [localizedDescription2 UTF8String];
        *buf = 136315138;
        *&buf[4] = uTF8String3;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "    TimeSync Sync Info: failed to get rate ratio and anchors with error %s\n", buf, 0xCu);
      }
    }

    ports = [(TSDKernelClock *)v4 ports];
    v294 = +[NSMutableDictionary dictionary];
    v346 = +[NSMutableDictionary dictionary];
    v371 = 0u;
    v372 = 0u;
    v373 = 0u;
    v374 = 0u;
    obj = ports;
    v44 = [obj countByEnumeratingWithState:&v371 objects:v385 count:16];
    if (v44)
    {
      v45 = v44;
      v46 = *v372;
      do
      {
        for (i = 0; i != v45; i = i + 1)
        {
          if (*v372 != v46)
          {
            objc_enumerationMutation(obj);
          }

          v48 = *(*(&v371 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              continue;
            }
          }

          statistics = [v48 statistics];
          if (statistics)
          {
            v50 = statistics;
            portIdentifier = [statistics portIdentifier];
            [v294 setObject:v50 forKeyedSubscript:portIdentifier];

            portIdentifier2 = [v50 portIdentifier];
            [v346 setObject:v48 forKeyedSubscript:portIdentifier2];
          }
        }

        v45 = [obj countByEnumeratingWithState:&v371 objects:v385 count:16];
      }

      while (v45);
    }

    v53 = selfCopy2;
    if (!selfCopy2->_firstStatistics)
    {
      v54 = +[TSDClockManager sharedClockManager];
      v339 = [v54 machAbsoluteTicksToNanoseconds:v285 - selfCopy2->_lastStatisticsTime];

      v369 = 0u;
      v370 = 0u;
      v367 = 0u;
      v368 = 0u;
      v55 = v294;
      v296 = [v55 countByEnumeratingWithState:&v367 objects:v384 count:16];
      if (!v296)
      {
        goto LABEL_493;
      }

      v295 = *v368;
      v286 = v55;
      v287 = selfCopy2;
      while (1)
      {
        for (j = 0; j != v296; j = j + 1)
        {
          if (*v368 != v295)
          {
            objc_enumerationMutation(v55);
          }

          v57 = *(*(&v367 + 1) + 8 * j);
          v58 = [v346 objectForKeyedSubscript:v57];
          v59 = [v55 objectForKeyedSubscript:v57];
          v60 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "    Port:\n", buf, 2u);
          }

          portType = [v59 portType];
          if (portType <= 3)
          {
            if (portType > 1)
            {
              if (portType == 2)
              {
                v68 = &_os_log_default;
                if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  v63 = "        Port Type: Unicast Link Layer PtP\n";
                  goto LABEL_95;
                }
              }

              else
              {
                v65 = &_os_log_default;
                if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  v63 = "        Port Type: Unicast UDPv4 PtP\n";
                  goto LABEL_95;
                }
              }
            }

            else if (portType)
            {
              if (portType != 1)
              {
                goto LABEL_97;
              }

              v64 = &_os_log_default;
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                v63 = "        Port Type: Ethernet\n";
LABEL_95:
                _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v63, buf, 2u);
              }
            }

            else
            {
              v67 = &_os_log_default;
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                v63 = "        Port Type: Unknown\n";
                goto LABEL_95;
              }
            }
          }

          else if (portType <= 5)
          {
            if (portType == 4)
            {
              v70 = &_os_log_default;
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                v63 = "        Port Type: Unicast UDPv6 PtP\n";
                goto LABEL_95;
              }
            }

            else
            {
              v66 = &_os_log_default;
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                v63 = "        Port Type: Unicast Link Layer EtE\n";
                goto LABEL_95;
              }
            }
          }

          else
          {
            switch(portType)
            {
              case 6:
                v69 = &_os_log_default;
                if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  v63 = "        Port Type: Unicast UDPv4 EtE\n";
                  goto LABEL_95;
                }

                break;
              case 7:
                v71 = &_os_log_default;
                if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  v63 = "        Port Type: Unicast UDPv6 EtE\n";
                  goto LABEL_95;
                }

                break;
              case 8:
                v62 = &_os_log_default;
                if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                {
                  break;
                }

                *buf = 0;
                v63 = "        Port Type: Local Clock\n";
                goto LABEL_95;
              default:
                goto LABEL_97;
            }
          }

LABEL_97:
          v72 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            interfaceName = [v58 interfaceName];
            uTF8String4 = [interfaceName UTF8String];
            *buf = 136315138;
            *&buf[4] = uTF8String4;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "        Interface: %s\n", buf, 0xCu);
          }

          v75 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            destinationAddressString = [v58 destinationAddressString];
            uTF8String5 = [destinationAddressString UTF8String];
            *buf = 136315138;
            *&buf[4] = uTF8String5;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "        Destination Address: %s\n", buf, 0xCu);
          }

          v78 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            propagationDelay = [v58 propagationDelay];
            *buf = 67109120;
            *&buf[4] = propagationDelay;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "        Propgation Delay: %u\n", buf, 8u);
          }

          v80 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            minimumPropagationDelay = [v58 minimumPropagationDelay];
            *buf = 67109120;
            *&buf[4] = minimumPropagationDelay;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "        Minimum Propagation Delay: %u\n", buf, 8u);
          }

          v82 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            maximumPropagationDelay = [v58 maximumPropagationDelay];
            *buf = 67109120;
            *&buf[4] = maximumPropagationDelay;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "        Maximum Propagation Delay: %u\n", buf, 8u);
          }

          v84 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            minimumRawDelay = [v58 minimumRawDelay];
            *buf = 67109120;
            *&buf[4] = minimumRawDelay;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "        Minimum Raw Delay: %u\n", buf, 8u);
          }

          v86 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            maximumRawDelay = [v58 maximumRawDelay];
            *buf = 67109120;
            *&buf[4] = maximumRawDelay;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "        Maximum Raw Delay: %u\n", buf, 8u);
          }

          v88 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            portNumber = [v58 portNumber];
            *buf = 67109120;
            *&buf[4] = portNumber;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "        Local Clock Port Number: %hu\n", buf, 8u);
          }

          v90 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            remoteClockIdentity = [v58 remoteClockIdentity];
            *buf = 134217984;
            *&buf[4] = remoteClockIdentity;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "        Remote Clock Identity: 0x%016llx\n", buf, 0xCu);
          }

          v92 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            remotePortNumber = [v58 remotePortNumber];
            *buf = 67109120;
            *&buf[4] = remotePortNumber;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "        Remote Clock Port Number: %hu\n", buf, 8u);
          }

          portRole = [v58 portRole];
          if (portRole <= 1)
          {
            if (portRole)
            {
              if (portRole != 1)
              {
                goto LABEL_135;
              }

              v97 = &_os_log_default;
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                v96 = "        Port Role: Disabled\n";
LABEL_133:
                _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v96, buf, 2u);
              }
            }

            else
            {
              v100 = &_os_log_default;
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                v96 = "        Port Role: Unknown\n";
                goto LABEL_133;
              }
            }
          }

          else
          {
            switch(portRole)
            {
              case 2:
                v98 = &_os_log_default;
                if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  v96 = "        Port Role: Passive\n";
                  goto LABEL_133;
                }

                break;
              case 3:
                v99 = &_os_log_default;
                if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  v96 = "        Port Role: Slave\n";
                  goto LABEL_133;
                }

                break;
              case 4:
                v95 = &_os_log_default;
                if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                {
                  break;
                }

                *buf = 0;
                v96 = "        Port Role: Master\n";
                goto LABEL_133;
              default:
                goto LABEL_135;
            }
          }

LABEL_135:
          v101 = [(NSDictionary *)v53->_lastStatistics objectForKeyedSubscript:v57];

          if (!v101)
          {
            goto LABEL_491;
          }

          v338 = j;
          v102 = [(NSDictionary *)v53->_lastStatistics objectForKeyedSubscript:v57];
          portRole2 = [v102 portRole];
          if (portRole2 != [v59 portRole])
          {
            v104 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "        Port Role changed since last statistics log. Ignore expected counts.\n", buf, 2u);
            }
          }

          if ([v59 portRole] == 3 || objc_msgSend(v59, "portRole") == 2)
          {
            v105 = v339 / sub_100017D7C([v58 remoteSyncLogMeanInterval]);
            v106 = v339 / sub_100017D7C([v58 remoteAnnounceLogMeanInterval]);
          }

          else
          {
            LODWORD(v106) = 0;
            LODWORD(v105) = 0;
          }

          v344 = v58;
          if ([v59 portRole] == 4)
          {
            v353 = v339 / sub_100017D7C([v58 localSyncLogMeanInterval]);
            v362 = v339 / sub_100017D7C([v58 localAnnounceLogMeanInterval]);
          }

          else
          {
            LODWORD(v362) = 0;
            LODWORD(v353) = 0;
          }

          receivedSyncCounter = [v59 receivedSyncCounter];
          receivedSyncCounter2 = [v102 receivedSyncCounter];
          v107 = receivedSyncCounter - receivedSyncCounter2;
          receivedFollowUpCounter = [v59 receivedFollowUpCounter];
          receivedFollowUpCounter2 = [v102 receivedFollowUpCounter];
          receivedAnnounceCounter = [v59 receivedAnnounceCounter];
          receivedAnnounceCounter2 = [v102 receivedAnnounceCounter];
          receivedSignalCounter = [v59 receivedSignalCounter];
          receivedSignalCounter2 = [v102 receivedSignalCounter];
          receivedPacketDiscardCounter = [v59 receivedPacketDiscardCounter];
          receivedPacketDiscardCounter2 = [v102 receivedPacketDiscardCounter];
          syncReceiptTimeoutCounter = [v59 syncReceiptTimeoutCounter];
          syncReceiptTimeoutCounter2 = [v102 syncReceiptTimeoutCounter];
          announceReceiptTimeoutCounter = [v59 announceReceiptTimeoutCounter];
          announceReceiptTimeoutCounter2 = [v102 announceReceiptTimeoutCounter];
          allowedLostResponsesExceededCounter = [v59 allowedLostResponsesExceededCounter];
          allowedLostResponsesExceededCounter2 = [v102 allowedLostResponsesExceededCounter];
          transmittedSyncCounter = [v59 transmittedSyncCounter];
          transmittedSyncCounter2 = [v102 transmittedSyncCounter];
          transmittedFollowUpCounter = [v59 transmittedFollowUpCounter];
          transmittedFollowUpCounter2 = [v102 transmittedFollowUpCounter];
          transmittedAnnounceCounter = [v59 transmittedAnnounceCounter];
          transmittedAnnounceCounter2 = [v102 transmittedAnnounceCounter];
          transmittedSignalCounter = [v59 transmittedSignalCounter];
          transmittedSignalCounter2 = [v102 transmittedSignalCounter];
          transmittedPacketDiscardCounter = [v59 transmittedPacketDiscardCounter];
          transmittedPacketDiscardCounter2 = [v102 transmittedPacketDiscardCounter];
          attemptedSyncCounter = [v59 attemptedSyncCounter];
          attemptedSyncCounter2 = [v102 attemptedSyncCounter];
          attemptedFollowUpCounter = [v59 attemptedFollowUpCounter];
          attemptedFollowUpCounter2 = [v102 attemptedFollowUpCounter];
          attemptedAnnounceCounter = [v59 attemptedAnnounceCounter];
          attemptedAnnounceCounter2 = [v102 attemptedAnnounceCounter];
          attemptedSignalCounter = [v59 attemptedSignalCounter];
          attemptedSignalCounter2 = [v102 attemptedSignalCounter];
          rawDelayExceededCounter = [v59 rawDelayExceededCounter];
          rawDelayExceededCounter2 = [v102 rawDelayExceededCounter];
          rawDelayMeasurementCounter = [v59 rawDelayMeasurementCounter];
          rawDelayMeasurementCounter2 = [v102 rawDelayMeasurementCounter];
          v110 = (v105 + 9) / 0xAu;
          v111 = &_os_log_default;
          v112 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
          v113 = receivedSyncCounter - receivedSyncCounter2 < v105 - v110 && v105 >= v110;
          if (v113 || v107 > v110 + v105)
          {
            if (!v112)
            {
              goto LABEL_157;
            }

            *buf = 67109632;
            *&buf[4] = receivedSyncCounter - receivedSyncCounter2;
            *&buf[8] = 1024;
            *&buf[10] = v105;
            LOWORD(v387) = 1024;
            *(&v387 + 2) = (v105 + 9) / 0xAu;
            v114 = "        Received Sync Counter: %u out of expected bounds (%u ± %u)\n";
            v115 = 20;
          }

          else
          {
            if (!v112)
            {
              goto LABEL_157;
            }

            *buf = 67109376;
            *&buf[4] = receivedSyncCounter - receivedSyncCounter2;
            *&buf[8] = 1024;
            *&buf[10] = v105;
            v114 = "        Received Sync Counter: %u expected %u\n";
            v115 = 14;
          }

          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v114, buf, v115);
LABEL_157:
          v116 = receivedFollowUpCounter - receivedFollowUpCounter2;

          v117 = &_os_log_default;
          v118 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
          v119 = v116 >= v107 - 1 || receivedSyncCounter == receivedSyncCounter2;
          v288 = v107 + 1;
          v289 = v107 - 1;
          if (v119 && v116 <= v107 + 1)
          {
            v120 = receivedAnnounceCounter;
            if (!v118)
            {
              goto LABEL_168;
            }

            *buf = 67109376;
            *&buf[4] = v116;
            *&buf[8] = 1024;
            *&buf[10] = receivedSyncCounter - receivedSyncCounter2;
            v121 = "        Received FollowUp Counter: %u expected %u\n";
          }

          else
          {
            v120 = receivedAnnounceCounter;
            if (!v118)
            {
              goto LABEL_168;
            }

            *buf = 67109376;
            *&buf[4] = v116;
            *&buf[8] = 1024;
            *&buf[10] = receivedSyncCounter - receivedSyncCounter2;
            v121 = "        Received FollowUp Counter: %u out of expected bounds (%u ± 1)\n";
          }

          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v121, buf, 0xEu);
LABEL_168:
          v122 = v120 - receivedAnnounceCounter2;

          v123 = (v106 + 9) / 0xAu;
          v124 = &_os_log_default;
          v125 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
          v126 = v120 - receivedAnnounceCounter2 < v106 - v123 && v106 >= v123;
          if (v126 || v122 > v123 + v106)
          {
            if (!v125)
            {
              goto LABEL_178;
            }

            *buf = 67109632;
            *&buf[4] = v120 - receivedAnnounceCounter2;
            *&buf[8] = 1024;
            *&buf[10] = v106;
            LOWORD(v387) = 1024;
            *(&v387 + 2) = (v106 + 9) / 0xAu;
            v127 = "        Received Announce Counter: %u out of expected bounds (%u ± %u)\n";
            v128 = 20;
          }

          else
          {
            if (!v125)
            {
              goto LABEL_178;
            }

            *buf = 67109376;
            *&buf[4] = v120 - receivedAnnounceCounter2;
            *&buf[8] = 1024;
            *&buf[10] = v106;
            v127 = "        Received Announce Counter: %u expected %u\n";
            v128 = 14;
          }

          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v127, buf, v128);
LABEL_178:

          v129 = &_os_log_default;
          v130 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
          v131 = receivedSignalCounter - receivedSignalCounter2 >= v122 - 1 || v120 == receivedAnnounceCounter2;
          if (v131 && receivedSignalCounter - receivedSignalCounter2 <= v122 + 1)
          {
            if (!v130)
            {
              goto LABEL_189;
            }

            *buf = 67109376;
            *&buf[4] = receivedSignalCounter - receivedSignalCounter2;
            *&buf[8] = 1024;
            *&buf[10] = v120 - receivedAnnounceCounter2;
            v132 = "        Received Signal Counter: %u expected %u\n";
          }

          else
          {
            if (!v130)
            {
              goto LABEL_189;
            }

            *buf = 67109376;
            *&buf[4] = receivedSignalCounter - receivedSignalCounter2;
            *&buf[8] = 1024;
            *&buf[10] = v120 - receivedAnnounceCounter2;
            v132 = "        Received Signal Counter: %u out of expected bounds (%u ± 1)\n";
          }

          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v132, buf, 0xEu);
LABEL_189:

          v133 = &_os_log_default;
          v134 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
          if (receivedPacketDiscardCounter == receivedPacketDiscardCounter2)
          {
            if (!v134)
            {
              goto LABEL_195;
            }

            *buf = 67109120;
            v135 = "        Received Packet Discard Counter: %u\n";
          }

          else
          {
            if (!v134)
            {
              goto LABEL_195;
            }

            *buf = 67109120;
            *&buf[4] = receivedPacketDiscardCounter - receivedPacketDiscardCounter2;
            v135 = "        Received Packet Discard Counter: %u greater than 0\n";
          }

          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v135, buf, 8u);
LABEL_195:

          v136 = &_os_log_default;
          v137 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
          if (syncReceiptTimeoutCounter == syncReceiptTimeoutCounter2)
          {
            if (!v137)
            {
              goto LABEL_201;
            }

            *buf = 67109120;
            v138 = "        Received Sync Receipt Timeout Counter: %u\n";
          }

          else
          {
            if (!v137)
            {
              goto LABEL_201;
            }

            *buf = 67109120;
            *&buf[4] = syncReceiptTimeoutCounter - syncReceiptTimeoutCounter2;
            v138 = "        Received Sync Receipt Timeout Counter: %u greater than 0\n";
          }

          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v138, buf, 8u);
LABEL_201:

          v139 = &_os_log_default;
          v140 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
          if (announceReceiptTimeoutCounter == announceReceiptTimeoutCounter2)
          {
            if (!v140)
            {
              goto LABEL_207;
            }

            *buf = 67109120;
            v141 = "        Received Announce Receipt Timeout Counter: %u\n";
          }

          else
          {
            if (!v140)
            {
              goto LABEL_207;
            }

            *buf = 67109120;
            *&buf[4] = announceReceiptTimeoutCounter - announceReceiptTimeoutCounter2;
            v141 = "        Received Announce Receipt Timeout Counter: %u greater than 0\n";
          }

          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v141, buf, 8u);
LABEL_207:

          v142 = &_os_log_default;
          v143 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
          if (allowedLostResponsesExceededCounter == allowedLostResponsesExceededCounter2)
          {
            if (!v143)
            {
              goto LABEL_213;
            }

            *buf = 67109120;
            v144 = "        Received Allowed Lost Responses Exceeded Counter: %u\n";
          }

          else
          {
            if (!v143)
            {
              goto LABEL_213;
            }

            *buf = 67109120;
            *&buf[4] = allowedLostResponsesExceededCounter - allowedLostResponsesExceededCounter2;
            v144 = "        Received Allowed Lost Responses Exceeded Counter: %u greater than 0\n";
          }

          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v144, buf, 8u);
LABEL_213:
          v145 = transmittedSyncCounter - transmittedSyncCounter2;

          v146 = (v353 + 9) / 0xAu;
          v147 = &_os_log_default;
          v148 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
          v149 = transmittedSyncCounter - transmittedSyncCounter2 < v353 - v146 && v353 >= v146;
          if (v149 || v145 > v146 + v353)
          {
            if (!v148)
            {
              goto LABEL_223;
            }

            *buf = 67109632;
            *&buf[4] = transmittedSyncCounter - transmittedSyncCounter2;
            *&buf[8] = 1024;
            *&buf[10] = v353;
            LOWORD(v387) = 1024;
            *(&v387 + 2) = (v353 + 9) / 0xAu;
            v150 = "        Transmitted Sync Counter: %u out of expected bounds (%u ± %u)\n";
            v151 = 20;
          }

          else
          {
            if (!v148)
            {
              goto LABEL_223;
            }

            *buf = 67109376;
            *&buf[4] = transmittedSyncCounter - transmittedSyncCounter2;
            *&buf[8] = 1024;
            *&buf[10] = v353;
            v150 = "        Transmitted Sync Counter: %u expected %u\n";
            v151 = 14;
          }

          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v150, buf, v151);
LABEL_223:

          v152 = &_os_log_default;
          v153 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
          v154 = transmittedFollowUpCounter - transmittedFollowUpCounter2 >= v145 - 1 || transmittedSyncCounter == transmittedSyncCounter2;
          if (v154 && transmittedFollowUpCounter - transmittedFollowUpCounter2 <= v145 + 1)
          {
            if (!v153)
            {
              goto LABEL_234;
            }

            *buf = 67109376;
            *&buf[4] = transmittedFollowUpCounter - transmittedFollowUpCounter2;
            *&buf[8] = 1024;
            *&buf[10] = transmittedSyncCounter - transmittedSyncCounter2;
            v155 = "        Transmitted FollowUp Counter: %u expected %u\n";
          }

          else
          {
            if (!v153)
            {
              goto LABEL_234;
            }

            *buf = 67109376;
            *&buf[4] = transmittedFollowUpCounter - transmittedFollowUpCounter2;
            *&buf[8] = 1024;
            *&buf[10] = transmittedSyncCounter - transmittedSyncCounter2;
            v155 = "        Transmitted FollowUp Counter: %u out of expected bounds (%u ± 1)\n";
          }

          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v155, buf, 0xEu);
LABEL_234:
          v156 = transmittedAnnounceCounter - transmittedAnnounceCounter2;

          v157 = transmittedAnnounceCounter - transmittedAnnounceCounter2 < v362 - 1 && v362 != 0;
          v158 = &_os_log_default;
          v159 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
          if (v157 || v156 > v362 + 1)
          {
            if (!v159)
            {
              goto LABEL_244;
            }

            *buf = 67109376;
            *&buf[4] = transmittedAnnounceCounter - transmittedAnnounceCounter2;
            *&buf[8] = 1024;
            *&buf[10] = v362;
            v160 = "        Transmitted Announce Counter: %u out of expected bounds (%u ± 1)\n";
          }

          else
          {
            if (!v159)
            {
              goto LABEL_244;
            }

            *buf = 67109376;
            *&buf[4] = transmittedAnnounceCounter - transmittedAnnounceCounter2;
            *&buf[8] = 1024;
            *&buf[10] = v362;
            v160 = "        Transmitted Announce Counter: %u expected %u\n";
          }

          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v160, buf, 0xEu);
LABEL_244:

          v161 = &_os_log_default;
          v162 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
          v163 = transmittedSignalCounter - transmittedSignalCounter2 >= v156 - 1 || transmittedAnnounceCounter == transmittedAnnounceCounter2;
          if (v163 && transmittedSignalCounter - transmittedSignalCounter2 <= v156 + 1)
          {
            if (!v162)
            {
              goto LABEL_255;
            }

            *buf = 67109376;
            *&buf[4] = transmittedSignalCounter - transmittedSignalCounter2;
            *&buf[8] = 1024;
            *&buf[10] = transmittedAnnounceCounter - transmittedAnnounceCounter2;
            v164 = "        Transmitted Signal Counter: %u expected %u\n";
          }

          else
          {
            if (!v162)
            {
              goto LABEL_255;
            }

            *buf = 67109376;
            *&buf[4] = transmittedSignalCounter - transmittedSignalCounter2;
            *&buf[8] = 1024;
            *&buf[10] = transmittedAnnounceCounter - transmittedAnnounceCounter2;
            v164 = "        Transmitted Signal Counter: %u out of expected bounds (%u ± 1)\n";
          }

          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v164, buf, 0xEu);
LABEL_255:

          v165 = &_os_log_default;
          v166 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
          if (transmittedPacketDiscardCounter == transmittedPacketDiscardCounter2)
          {
            if (!v166)
            {
              goto LABEL_261;
            }

            *buf = 67109120;
            v167 = "        Transmitted Packet Discard Counter: %u\n";
          }

          else
          {
            if (!v166)
            {
              goto LABEL_261;
            }

            *buf = 67109120;
            *&buf[4] = transmittedPacketDiscardCounter - transmittedPacketDiscardCounter2;
            v167 = "        Transmitted Packet Discard Counter: %u greater than 0\n";
          }

          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v167, buf, 8u);
LABEL_261:

          v168 = &_os_log_default;
          v169 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
          v170 = attemptedSyncCounter - attemptedSyncCounter2 < v353 - v146 && v353 >= v146;
          if (v170 || attemptedSyncCounter - attemptedSyncCounter2 > v146 + v353)
          {
            if (!v169)
            {
              goto LABEL_271;
            }

            *buf = 67109632;
            *&buf[4] = attemptedSyncCounter - attemptedSyncCounter2;
            *&buf[8] = 1024;
            *&buf[10] = v353;
            LOWORD(v387) = 1024;
            *(&v387 + 2) = (v353 + 9) / 0xAu;
            v171 = "        Attempted Sync Counter: %u out of expected bounds (%u ± %u)\n";
            v172 = 20;
          }

          else
          {
            if (!v169)
            {
              goto LABEL_271;
            }

            *buf = 67109376;
            *&buf[4] = attemptedSyncCounter - attemptedSyncCounter2;
            *&buf[8] = 1024;
            *&buf[10] = v353;
            v171 = "        Attempted Sync Counter: %u expected %u\n";
            v172 = 14;
          }

          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v171, buf, v172);
LABEL_271:

          v173 = &_os_log_default;
          v174 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
          v175 = attemptedFollowUpCounter - attemptedFollowUpCounter2 >= v145 - 1 || transmittedSyncCounter == transmittedSyncCounter2;
          if (v175 && attemptedFollowUpCounter - attemptedFollowUpCounter2 <= v145 + 1)
          {
            v58 = v344;
            v176 = v362 + 1;
            if (!v174)
            {
              goto LABEL_282;
            }

            *buf = 67109376;
            *&buf[4] = attemptedFollowUpCounter - attemptedFollowUpCounter2;
            *&buf[8] = 1024;
            *&buf[10] = transmittedSyncCounter - transmittedSyncCounter2;
            v177 = "        Attempted FollowUp Counter: %u expected %u\n";
          }

          else
          {
            v58 = v344;
            v176 = v362 + 1;
            if (!v174)
            {
              goto LABEL_282;
            }

            *buf = 67109376;
            *&buf[4] = attemptedFollowUpCounter - attemptedFollowUpCounter2;
            *&buf[8] = 1024;
            *&buf[10] = transmittedSyncCounter - transmittedSyncCounter2;
            v177 = "        Attempted FollowUp Counter: %u out of expected bounds (%u ± 1)\n";
          }

          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v177, buf, 0xEu);
LABEL_282:

          v178 = &_os_log_default;
          v179 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
          v180 = attemptedAnnounceCounter - attemptedAnnounceCounter2 >= v362 - 1 || v362 == 0;
          if (v180 && attemptedAnnounceCounter - attemptedAnnounceCounter2 <= v176)
          {
            if (!v179)
            {
              goto LABEL_293;
            }

            *buf = 67109376;
            *&buf[4] = attemptedAnnounceCounter - attemptedAnnounceCounter2;
            *&buf[8] = 1024;
            *&buf[10] = v362;
            v181 = "        Attempted Announce Counter: %u expected %u\n";
          }

          else
          {
            if (!v179)
            {
              goto LABEL_293;
            }

            *buf = 67109376;
            *&buf[4] = attemptedAnnounceCounter - attemptedAnnounceCounter2;
            *&buf[8] = 1024;
            *&buf[10] = v362;
            v181 = "        Attempted Announce Counter: %u out of expected bounds (%u ± 1)\n";
          }

          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v181, buf, 0xEu);
LABEL_293:

          v182 = &_os_log_default;
          v183 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
          v184 = attemptedSignalCounter - attemptedSignalCounter2 >= v156 - 1 || transmittedAnnounceCounter == transmittedAnnounceCounter2;
          if (v184 && attemptedSignalCounter - attemptedSignalCounter2 <= v156 + 1)
          {
            if (!v183)
            {
              goto LABEL_304;
            }

            *buf = 67109376;
            *&buf[4] = attemptedSignalCounter - attemptedSignalCounter2;
            *&buf[8] = 1024;
            *&buf[10] = transmittedAnnounceCounter - transmittedAnnounceCounter2;
            v185 = "        Attempted Signal Counter: %u expected %u\n";
          }

          else
          {
            if (!v183)
            {
              goto LABEL_304;
            }

            *buf = 67109376;
            *&buf[4] = attemptedSignalCounter - attemptedSignalCounter2;
            *&buf[8] = 1024;
            *&buf[10] = transmittedAnnounceCounter - transmittedAnnounceCounter2;
            v185 = "        Attempted Signal Counter: %u out of expected bounds (%u ± 1)\n";
          }

          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v185, buf, 0xEu);
LABEL_304:

          v186 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            *&buf[4] = rawDelayExceededCounter - rawDelayExceededCounter2;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "        Raw Delay Exceeded Counter: %u\n", buf, 8u);
          }

          v187 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            *&buf[4] = rawDelayMeasurementCounter - rawDelayMeasurementCounter2;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "        Raw Delay Measurements Counter: %u\n", buf, 8u);
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v343 = sub_100017D7C([v58 localPDelayLogMeanInterval]);
            v188 = v339 / sub_100017D7C([v58 remotePDelayLogMeanInterval]);
            receivedPDelayRequestCounter = [v59 receivedPDelayRequestCounter];
            receivedPDelayRequestCounter2 = [v102 receivedPDelayRequestCounter];
            v191 = receivedPDelayRequestCounter - receivedPDelayRequestCounter2;
            transmittedPDelayResponseCounter = [v59 transmittedPDelayResponseCounter];
            transmittedPDelayResponseCounter2 = [v102 transmittedPDelayResponseCounter];
            transmittedPDelayResponseFollowUpCounter = [v59 transmittedPDelayResponseFollowUpCounter];
            transmittedPDelayResponseFollowUpCounter2 = [v102 transmittedPDelayResponseFollowUpCounter];
            attemptedPDelayResponseCounter = [v59 attemptedPDelayResponseCounter];
            attemptedPDelayResponseCounter2 = [v102 attemptedPDelayResponseCounter];
            attemptedPDelayResponseFollowUpCounter = [v59 attemptedPDelayResponseFollowUpCounter];
            attemptedPDelayResponseFollowUpCounter2 = [v102 attemptedPDelayResponseFollowUpCounter];
            transmittedPDelayRequestCounter = [v59 transmittedPDelayRequestCounter];
            transmittedPDelayRequestCounter2 = [v102 transmittedPDelayRequestCounter];
            attemptedPDelayRequestCounter = [v59 attemptedPDelayRequestCounter];
            attemptedPDelayRequestCounter2 = [v102 attemptedPDelayRequestCounter];
            receivedPDelayResponseCounter = [v59 receivedPDelayResponseCounter];
            receivedPDelayResponseCounter2 = [v102 receivedPDelayResponseCounter];
            receivedPDelayResponseFollowUpCounter = [v59 receivedPDelayResponseFollowUpCounter];
            receivedPDelayResponseFollowUpCounter2 = [v102 receivedPDelayResponseFollowUpCounter];
            v193 = (v188 + 9) / 0xAu;
            v194 = &_os_log_default;
            v195 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
            v196 = receivedPDelayRequestCounter - receivedPDelayRequestCounter2 < v188 - v193 && v188 >= v193;
            if (v196 || v191 > v193 + v188)
            {
              if (v195)
              {
                *buf = 67109632;
                *&buf[4] = receivedPDelayRequestCounter - receivedPDelayRequestCounter2;
                *&buf[8] = 1024;
                *&buf[10] = v188;
                LOWORD(v387) = 1024;
                *(&v387 + 2) = (v188 + 9) / 0xAu;
                v197 = "        Received PDelay Request Counter: %u out of expected bounds (%u ± %u)\n";
                v198 = 20;
LABEL_332:
                _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v197, buf, v198);
              }
            }

            else if (v195)
            {
              *buf = 67109376;
              *&buf[4] = receivedPDelayRequestCounter - receivedPDelayRequestCounter2;
              *&buf[8] = 1024;
              *&buf[10] = v188;
              v197 = "        Received PDelay Request Counter: %u expected %u\n";
              v198 = 14;
              goto LABEL_332;
            }

            v210 = transmittedPDelayResponseCounter - transmittedPDelayResponseCounter2;

            v211 = v191 - 1;
            v212 = &_os_log_default;
            v213 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
            v214 = transmittedPDelayResponseCounter - transmittedPDelayResponseCounter2 >= v191 - 1 || receivedPDelayRequestCounter == receivedPDelayRequestCounter2;
            v215 = v191 + 1;
            if (v214 && v210 <= v215)
            {
              if (v213)
              {
                *buf = 67109376;
                *&buf[4] = v210;
                *&buf[8] = 1024;
                *&buf[10] = receivedPDelayRequestCounter - receivedPDelayRequestCounter2;
                v216 = "        Transmitted PDelay Response Counter: %u expected %u\n";
                goto LABEL_343;
              }
            }

            else if (v213)
            {
              *buf = 67109376;
              *&buf[4] = v210;
              *&buf[8] = 1024;
              *&buf[10] = receivedPDelayRequestCounter - receivedPDelayRequestCounter2;
              v216 = "        Transmitted PDelay Response Counter: %u out of expected bounds (%u ± 1)\n";
LABEL_343:
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v216, buf, 0xEu);
            }

            v217 = &_os_log_default;
            v218 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
            v219 = transmittedPDelayResponseFollowUpCounter - transmittedPDelayResponseFollowUpCounter2 >= v211 || receivedPDelayRequestCounter == receivedPDelayRequestCounter2;
            if (v219 && transmittedPDelayResponseFollowUpCounter - transmittedPDelayResponseFollowUpCounter2 <= v215)
            {
              if (v218)
              {
                *buf = 67109376;
                *&buf[4] = transmittedPDelayResponseFollowUpCounter - transmittedPDelayResponseFollowUpCounter2;
                *&buf[8] = 1024;
                *&buf[10] = receivedPDelayRequestCounter - receivedPDelayRequestCounter2;
                v220 = "        Transmitted PDelay Response FollowUp Counter: %u expected %u\n";
                goto LABEL_354;
              }
            }

            else if (v218)
            {
              *buf = 67109376;
              *&buf[4] = transmittedPDelayResponseFollowUpCounter - transmittedPDelayResponseFollowUpCounter2;
              *&buf[8] = 1024;
              *&buf[10] = receivedPDelayRequestCounter - receivedPDelayRequestCounter2;
              v220 = "        Transmitted PDelay Response FollowUp Counter: %u out of expected bounds (%u ± 1)\n";
LABEL_354:
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v220, buf, 0xEu);
            }

            v221 = &_os_log_default;
            v222 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
            v223 = attemptedPDelayResponseCounter - attemptedPDelayResponseCounter2 >= v211 || receivedPDelayRequestCounter == receivedPDelayRequestCounter2;
            if (v223 && attemptedPDelayResponseCounter - attemptedPDelayResponseCounter2 <= v215)
            {
              if (v222)
              {
                *buf = 67109376;
                *&buf[4] = attemptedPDelayResponseCounter - attemptedPDelayResponseCounter2;
                *&buf[8] = 1024;
                *&buf[10] = receivedPDelayRequestCounter - receivedPDelayRequestCounter2;
                v224 = "        Attempted PDelay Response Counter: %u expected %u\n";
                goto LABEL_365;
              }
            }

            else if (v222)
            {
              *buf = 67109376;
              *&buf[4] = attemptedPDelayResponseCounter - attemptedPDelayResponseCounter2;
              *&buf[8] = 1024;
              *&buf[10] = receivedPDelayRequestCounter - receivedPDelayRequestCounter2;
              v224 = "        Attempted PDelay Response Counter: %u out of expected bounds (%u ± 1)\n";
LABEL_365:
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v224, buf, 0xEu);
            }

            v225 = &_os_log_default;
            v226 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
            v227 = attemptedPDelayResponseFollowUpCounter - attemptedPDelayResponseFollowUpCounter2 >= v211 || receivedPDelayRequestCounter == receivedPDelayRequestCounter2;
            if (v227 && attemptedPDelayResponseFollowUpCounter - attemptedPDelayResponseFollowUpCounter2 <= v215)
            {
              if (v226)
              {
                *buf = 67109376;
                *&buf[4] = attemptedPDelayResponseFollowUpCounter - attemptedPDelayResponseFollowUpCounter2;
                *&buf[8] = 1024;
                *&buf[10] = receivedPDelayRequestCounter - receivedPDelayRequestCounter2;
                v228 = "        Attempted PDelay Response FollowUp Counter: %u expected %u\n";
                goto LABEL_376;
              }
            }

            else if (v226)
            {
              *buf = 67109376;
              *&buf[4] = attemptedPDelayResponseFollowUpCounter - attemptedPDelayResponseFollowUpCounter2;
              *&buf[8] = 1024;
              *&buf[10] = receivedPDelayRequestCounter - receivedPDelayRequestCounter2;
              v228 = "        Attempted PDelay Response FollowUp Counter: %u out of expected bounds (%u ± 1)\n";
LABEL_376:
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v228, buf, 0xEu);
            }

            v229 = transmittedPDelayRequestCounter - transmittedPDelayRequestCounter2;
            v230 = v339 / v343;

            v231 = ((v339 / v343) + 9) / 0xA;
            v232 = v339 / v343 - v231;
            v233 = &_os_log_default;
            v234 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
            v235 = transmittedPDelayRequestCounter - transmittedPDelayRequestCounter2 < v232 && v230 >= v231;
            v236 = v231 + v230;
            if (v235 || v229 > v236)
            {
              if (v234)
              {
                *buf = 67109632;
                *&buf[4] = transmittedPDelayRequestCounter - transmittedPDelayRequestCounter2;
                *&buf[8] = 1024;
                *&buf[10] = v339 / v343;
                LOWORD(v387) = 1024;
                *(&v387 + 2) = (*&buf[10] + 9) / 0xAu;
                v237 = "        Transmitted PDelay Request Counter: %u out of expected bounds (%u ± %u)\n";
                v238 = 20;
LABEL_386:
                _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v237, buf, v238);
              }
            }

            else if (v234)
            {
              *buf = 67109376;
              *&buf[4] = transmittedPDelayRequestCounter - transmittedPDelayRequestCounter2;
              *&buf[8] = 1024;
              *&buf[10] = v339 / v343;
              v237 = "        Transmitted PDelay Request Counter: %u expected %u\n";
              v238 = 14;
              goto LABEL_386;
            }

            v239 = &_os_log_default;
            v240 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
            v241 = attemptedPDelayRequestCounter - attemptedPDelayRequestCounter2 < v232 && v230 >= v231;
            if (v241 || attemptedPDelayRequestCounter - attemptedPDelayRequestCounter2 > v236)
            {
              if (v240)
              {
                *buf = 67109632;
                *&buf[4] = attemptedPDelayRequestCounter - attemptedPDelayRequestCounter2;
                *&buf[8] = 1024;
                *&buf[10] = v339 / v343;
                LOWORD(v387) = 1024;
                *(&v387 + 2) = (*&buf[10] + 9) / 0xAu;
                v242 = "        Attempted PDelay Request Counter: %u out of expected bounds (%u ± %u)\n";
                v243 = 20;
LABEL_396:
                _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v242, buf, v243);
              }
            }

            else if (v240)
            {
              *buf = 67109376;
              *&buf[4] = attemptedPDelayRequestCounter - attemptedPDelayRequestCounter2;
              *&buf[8] = 1024;
              *&buf[10] = v339 / v343;
              v242 = "        Attempted PDelay Request Counter: %u expected %u\n";
              v243 = 14;
              goto LABEL_396;
            }

            v244 = &_os_log_default;
            v245 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
            v246 = receivedPDelayResponseCounter - receivedPDelayResponseCounter2 >= v229 - 1 || transmittedPDelayRequestCounter == transmittedPDelayRequestCounter2;
            v247 = v229 + 1;
            if (v246 && receivedPDelayResponseCounter - receivedPDelayResponseCounter2 <= v247)
            {
              v58 = v344;
              if (v245)
              {
                *buf = 67109376;
                *&buf[4] = receivedPDelayResponseCounter - receivedPDelayResponseCounter2;
                *&buf[8] = 1024;
                *&buf[10] = transmittedPDelayRequestCounter - transmittedPDelayRequestCounter2;
                v248 = "        Received PDelay Response Counter: %u expected %u\n";
                goto LABEL_407;
              }
            }

            else
            {
              v58 = v344;
              if (v245)
              {
                *buf = 67109376;
                *&buf[4] = receivedPDelayResponseCounter - receivedPDelayResponseCounter2;
                *&buf[8] = 1024;
                *&buf[10] = transmittedPDelayRequestCounter - transmittedPDelayRequestCounter2;
                v248 = "        Received PDelay Response Counter: %u out of expected bounds (%u ± 1)\n";
LABEL_407:
                _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v248, buf, 0xEu);
              }
            }

            v249 = &_os_log_default;
            v250 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
            v251 = receivedPDelayResponseFollowUpCounter - receivedPDelayResponseFollowUpCounter2 >= v229 - 1 || transmittedPDelayRequestCounter == transmittedPDelayRequestCounter2;
            if (v251 && receivedPDelayResponseFollowUpCounter - receivedPDelayResponseFollowUpCounter2 <= v247)
            {
              if (v250)
              {
                *buf = 67109376;
                *&buf[4] = receivedPDelayResponseFollowUpCounter - receivedPDelayResponseFollowUpCounter2;
                *&buf[8] = 1024;
                *&buf[10] = transmittedPDelayRequestCounter - transmittedPDelayRequestCounter2;
                v252 = "        Received PDelay Response FollowUp Counter: %u expected %u\n";
                goto LABEL_418;
              }

LABEL_489:

              goto LABEL_490;
            }

            if (!v250)
            {
              goto LABEL_489;
            }

            *buf = 67109376;
            *&buf[4] = receivedPDelayResponseFollowUpCounter - receivedPDelayResponseFollowUpCounter2;
            *&buf[8] = 1024;
            *&buf[10] = transmittedPDelayRequestCounter - transmittedPDelayRequestCounter2;
            v252 = "        Received PDelay Response FollowUp Counter: %u out of expected bounds (%u ± 1)\n";
LABEL_418:
            v253 = 14;
LABEL_488:
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v252, buf, v253);
            goto LABEL_489;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if ([v59 portRole] == 4)
            {
              v199 = transmittedSyncCounter - transmittedSyncCounter2;
            }

            else
            {
              v199 = 0;
            }

            if ([v59 portRole] == 3)
            {
              v200 = receivedSyncCounter - receivedSyncCounter2;
            }

            else
            {
              v200 = 0;
            }

            v358 = v200;
            receivedDelayRequestCounter = [v59 receivedDelayRequestCounter];
            receivedDelayRequestCounter2 = [v102 receivedDelayRequestCounter];
            v203 = receivedDelayRequestCounter - receivedDelayRequestCounter2;
            transmittedDelayResponseCounter = [v59 transmittedDelayResponseCounter];
            transmittedDelayResponseCounter2 = [v102 transmittedDelayResponseCounter];
            attemptedDelayResponseCounter = [v59 attemptedDelayResponseCounter];
            attemptedDelayResponseCounter2 = [v102 attemptedDelayResponseCounter];
            transmittedDelayRequestCounter = [v59 transmittedDelayRequestCounter];
            transmittedDelayRequestCounter2 = [v102 transmittedDelayRequestCounter];
            attemptedDelayRequestCounter = [v59 attemptedDelayRequestCounter];
            attemptedDelayRequestCounter2 = [v102 attemptedDelayRequestCounter];
            receivedDelayResponseCounter = [v59 receivedDelayResponseCounter];
            receivedDelayResponseCounter2 = [v102 receivedDelayResponseCounter];
            supersededSyncCounter = [v59 supersededSyncCounter];
            supersededSyncCounter2 = [v102 supersededSyncCounter];
            supersededDelayCounter = [v59 supersededDelayCounter];
            supersededDelayCounter2 = [v102 supersededDelayCounter];
            v206 = receivedDelayRequestCounter - receivedDelayRequestCounter2 < v199 - 1 && v199 != 0;
            v207 = &_os_log_default;
            v208 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
            if (v206 || v203 > v199 + 1)
            {
              if (v208)
              {
                *buf = 67109376;
                *&buf[4] = receivedDelayRequestCounter - receivedDelayRequestCounter2;
                *&buf[8] = 1024;
                *&buf[10] = v199;
                v209 = "        Received Delay Request Counter: %u out of expected bounds (%u ± 1)\n";
LABEL_421:
                _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v209, buf, 0xEu);
              }
            }

            else if (v208)
            {
              *buf = 67109376;
              *&buf[4] = receivedDelayRequestCounter - receivedDelayRequestCounter2;
              *&buf[8] = 1024;
              *&buf[10] = v199;
              v209 = "        Received Delay Request Counter: %u expected %u\n";
              goto LABEL_421;
            }

            v254 = transmittedDelayResponseCounter - transmittedDelayResponseCounter2;

            v255 = &_os_log_default;
            v256 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
            v257 = transmittedDelayResponseCounter - transmittedDelayResponseCounter2 >= v203 - 1 || receivedDelayRequestCounter == receivedDelayRequestCounter2;
            v258 = v203 + 1;
            if (v257 && v254 <= v258)
            {
              if (v256)
              {
                *buf = 67109376;
                *&buf[4] = v254;
                *&buf[8] = 1024;
                *&buf[10] = receivedDelayRequestCounter - receivedDelayRequestCounter2;
                v259 = "        Transmitted Delay Response Counter: %u expected %u\n";
                goto LABEL_432;
              }
            }

            else if (v256)
            {
              *buf = 67109376;
              *&buf[4] = v254;
              *&buf[8] = 1024;
              *&buf[10] = receivedDelayRequestCounter - receivedDelayRequestCounter2;
              v259 = "        Transmitted Delay Response Counter: %u out of expected bounds (%u ± 1)\n";
LABEL_432:
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v259, buf, 0xEu);
            }

            v260 = &_os_log_default;
            v261 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
            v262 = attemptedDelayResponseCounter - attemptedDelayResponseCounter2 >= v203 - 1 || receivedDelayRequestCounter == receivedDelayRequestCounter2;
            if (v262 && attemptedDelayResponseCounter - attemptedDelayResponseCounter2 <= v258)
            {
              v58 = v344;
              v263 = v289;
              if (v261)
              {
                *buf = 67109376;
                *&buf[4] = attemptedDelayResponseCounter - attemptedDelayResponseCounter2;
                *&buf[8] = 1024;
                *&buf[10] = v203;
                v264 = "        Attempted Delay Response Counter: %u expected %u\n";
                goto LABEL_443;
              }
            }

            else
            {
              v58 = v344;
              v263 = v289;
              if (v261)
              {
                *buf = 67109376;
                *&buf[4] = attemptedDelayResponseCounter - attemptedDelayResponseCounter2;
                *&buf[8] = 1024;
                *&buf[10] = v203;
                v264 = "        Attempted Delay Response Counter: %u out of expected bounds (%u ± 1)\n";
LABEL_443:
                _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v264, buf, 0xEu);
              }
            }

            v265 = &_os_log_default;
            v266 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
            v267 = transmittedDelayRequestCounter - transmittedDelayRequestCounter2 >= v263 || receivedSyncCounter == receivedSyncCounter2;
            if (v267 && transmittedDelayRequestCounter - transmittedDelayRequestCounter2 <= v288)
            {
              if (v266)
              {
                *buf = 67109376;
                *&buf[4] = transmittedDelayRequestCounter - transmittedDelayRequestCounter2;
                *&buf[8] = 1024;
                *&buf[10] = receivedSyncCounter - receivedSyncCounter2;
                v268 = "        Transmitted Delay Request Counter: %u expected %u\n";
                goto LABEL_454;
              }
            }

            else if (v266)
            {
              *buf = 67109376;
              *&buf[4] = transmittedDelayRequestCounter - transmittedDelayRequestCounter2;
              *&buf[8] = 1024;
              *&buf[10] = receivedSyncCounter - receivedSyncCounter2;
              v268 = "        Transmitted Delay Request Counter: %u out of expected bounds (%u ± 1)\n";
LABEL_454:
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v268, buf, 0xEu);
            }

            v269 = &_os_log_default;
            v270 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
            v271 = attemptedDelayRequestCounter - attemptedDelayRequestCounter2 >= v263 || receivedSyncCounter == receivedSyncCounter2;
            if (v271 && attemptedDelayRequestCounter - attemptedDelayRequestCounter2 <= v288)
            {
              if (v270)
              {
                *buf = 67109376;
                *&buf[4] = attemptedDelayRequestCounter - attemptedDelayRequestCounter2;
                *&buf[8] = 1024;
                *&buf[10] = receivedSyncCounter - receivedSyncCounter2;
                v272 = "        Attempted Delay Request Counter: %u expected %u\n";
                goto LABEL_465;
              }
            }

            else if (v270)
            {
              *buf = 67109376;
              *&buf[4] = attemptedDelayRequestCounter - attemptedDelayRequestCounter2;
              *&buf[8] = 1024;
              *&buf[10] = receivedSyncCounter - receivedSyncCounter2;
              v272 = "        Attempted Delay Request Counter: %u out of expected bounds (%u ± 1)\n";
LABEL_465:
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v272, buf, 0xEu);
            }

            v273 = receivedDelayResponseCounter - receivedDelayResponseCounter2 < v358 - 1 && v358 != 0;
            v274 = &_os_log_default;
            v275 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
            if (v273 || receivedDelayResponseCounter - receivedDelayResponseCounter2 > v358 + 1)
            {
              if (v275)
              {
                *buf = 67109376;
                *&buf[4] = receivedDelayResponseCounter - receivedDelayResponseCounter2;
                *&buf[8] = 1024;
                *&buf[10] = v358;
                v276 = "        Received Delay Response Counter: %u out of expected bounds (%u ± 1)\n";
LABEL_475:
                _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v276, buf, 0xEu);
              }
            }

            else if (v275)
            {
              *buf = 67109376;
              *&buf[4] = receivedDelayResponseCounter - receivedDelayResponseCounter2;
              *&buf[8] = 1024;
              *&buf[10] = v358;
              v276 = "        Received Delay Response Counter: %u expected %u\n";
              goto LABEL_475;
            }

            v277 = &_os_log_default;
            v278 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
            if (supersededSyncCounter == supersededSyncCounter2)
            {
              if (v278)
              {
                *buf = 67109120;
                v279 = "        Superseded Sync Counter: %u expected 0\n";
                goto LABEL_481;
              }
            }

            else if (v278)
            {
              *buf = 67109120;
              *&buf[4] = supersededSyncCounter - supersededSyncCounter2;
              v279 = "        Superseded Sync Counter: %u out of expected bounds (0)\n";
LABEL_481:
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v279, buf, 8u);
            }

            v280 = &_os_log_default;
            v281 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
            if (supersededDelayCounter == supersededDelayCounter2)
            {
              if (!v281)
              {
                goto LABEL_489;
              }

              *buf = 67109120;
              v252 = "        Superseded Delay Counter: %u expected 0\n";
            }

            else
            {
              if (!v281)
              {
                goto LABEL_489;
              }

              *buf = 67109120;
              *&buf[4] = supersededDelayCounter - supersededDelayCounter2;
              v252 = "        Superseded Delay Counter: %u out of expected bounds (0)\n";
            }

            v253 = 8;
            goto LABEL_488;
          }

LABEL_490:

          v55 = v286;
          v53 = v287;
          j = v338;
LABEL_491:
        }

        v296 = [v55 countByEnumeratingWithState:&v367 objects:v384 count:16];
        if (!v296)
        {
LABEL_493:

          break;
        }
      }
    }

    v53->_firstStatistics = 0;
    v53->_lastStatisticsTime = v285;
    objc_storeStrong(&v53->_lastStatistics, v294);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      clockIdentifier2 = [(TSDKernelClock *)self->_clock clockIdentifier];
      *buf = 134217984;
      *&buf[4] = clockIdentifier2;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Clock Statistics for 0x%016llx\n", buf, 0xCu);
    }

    lockState2 = [(TSDKernelClock *)self->_clock lockState];
    if (lockState2 > 2)
    {
      v13 = @"Unknown";
    }

    else
    {
      v13 = off_10004CAF8[lockState2];
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      uTF8String6 = [(__CFString *)v13 UTF8String];
      *buf = 136315138;
      *&buf[4] = uTF8String6;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "    Clock lock state: %s\n", buf, 0xCu);
    }

    v383 = 0;
    v382 = 0;
    v381 = 0;
    v380 = 0;
    v379 = 0;
    clock = self->_clock;
    v366 = 0;
    v24 = [(TSDKernelClock *)clock getMachAbsoluteRateRatioNumerator:&v383 denominator:&v382 machAnchor:&v381 andDomainAnchor:&v379 withError:&v366];
    v25 = v366;
    v26 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
    if (v24)
    {
      if (v26)
      {
        *buf = 134218496;
        *&buf[4] = v383;
        *&buf[12] = 2048;
        v387 = v382;
        v388 = 2048;
        v389 = v383 / v382;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "    Mach Rate Ratio: %llu/%llu (%0.12f)\n", buf, 0x20u);
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        *&buf[4] = v381;
        *&buf[12] = 2048;
        v387 = v379;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "    Mach Anchors: %llu, %llu\n", buf, 0x16u);
      }
    }

    else if (v26)
    {
      localizedDescription3 = [v25 localizedDescription];
      uTF8String7 = [localizedDescription3 UTF8String];
      *buf = 136315138;
      *&buf[4] = uTF8String7;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "    Mach Sync Info: failed to get rate ratio and anchors with error %s\n", buf, 0xCu);
    }

    v37 = self->_clock;
    v365 = v25;
    v38 = [(TSDKernelClock *)v37 getTimeSyncTimeRateRatioNumerator:&v383 denominator:&v382 timeSyncAnchor:&v380 andDomainAnchor:&v379 withError:&v365];
    v39 = v365;

    v40 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
    if (v38)
    {
      if (v40)
      {
        *buf = 134218496;
        *&buf[4] = v383;
        *&buf[12] = 2048;
        v387 = v382;
        v388 = 2048;
        v389 = v383 / v382;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "    TimeSync Rate Ratio: %llu/%llu (%0.12f)\n", buf, 0x20u);
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        *&buf[4] = v380;
        *&buf[12] = 2048;
        v387 = v379;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "    TimeSync Anchors: %llu, %llu\n", buf, 0x16u);
      }
    }

    else if (v40)
    {
      localizedDescription4 = [v39 localizedDescription];
      uTF8String8 = [localizedDescription4 UTF8String];
      *buf = 136315138;
      *&buf[4] = uTF8String8;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "    TimeSync Sync Info: failed to get rate ratio and anchors with error %s\n", buf, 0xCu);
    }
  }
}

- (TSDClockStatistics)initWithClockIdentifier:(unint64_t)identifier
{
  v11.receiver = self;
  v11.super_class = TSDClockStatistics;
  v4 = [(TSDClockStatistics *)&v11 init];
  v5 = v4;
  if (v4)
  {
    if (identifier == -1)
    {
      sub_10002B904(v4);
      return 0;
    }

    else
    {
      v4->_clockIdentifier = identifier;
      v4->_firstStatistics = 1;
      v6 = +[TSDClockManager sharedClockManager];
      v7 = [v6 clockWithClockIdentifier:{-[TSDClockStatistics clockIdentifier](v5, "clockIdentifier")}];

      if (v7)
      {
        objc_storeStrong(&v5->_clock, v7);
        v8 = dispatch_get_global_queue(0, 0);
        v10 = v7;
        v5->_stateDumpHandler = os_state_add_handler();

        [(TSDKernelClock *)v5->_clock addClient:v5, _NSConcreteStackBlock, 3221225472, sub_100017C24, &unk_10004CAD8];
      }

      else
      {
        sub_10002B838(v5);
        v5 = 0;
      }
    }
  }

  return v5;
}

- (void)finalizeClock
{
  [(TSDKernelClock *)self->_clock removeClient:self];
  [(TSDKernelClock *)self->_clock finalizeNotifications];
  clock = self->_clock;
  self->_clock = 0;
}

- (void)didResetClock:(id)clock
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 134217984;
    clockIdentifier = [(TSDClockStatistics *)self clockIdentifier];
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "0x%016llx: reset clock\n", &v4, 0xCu);
  }
}

- (void)didChangeClockMasterForClock:(id)clock
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 134217984;
    clockIdentifier = [(TSDClockStatistics *)self clockIdentifier];
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "0x%016llx: master clock changed\n", &v4, 0xCu);
  }
}

- (void)didChangeLockStateTo:(int)to forClock:(id)clock
{
  clockCopy = clock;
  if (to > 2)
  {
    v7 = @"Unknown";
  }

  else
  {
    v7 = off_10004CAF8[to];
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134218498;
    clockIdentifier = [(TSDClockStatistics *)self clockIdentifier];
    v10 = 1024;
    toCopy = to;
    v12 = 2080;
    uTF8String = [(__CFString *)v7 UTF8String];
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "0x%016llx: set lock state to %u (%s)\n", &v8, 0x1Cu);
  }

  if (to == 2)
  {
    self->_hasSyncedSinceLocked = 0;
  }
}

- (void)didBeginClockGrandmasterChangeWithGrandmasterID:(unint64_t)d localPort:(unsigned __int16)port forClock:(id)clock
{
  portCopy = port;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134218496;
    clockIdentifier = [(TSDClockStatistics *)self clockIdentifier];
    v10 = 2048;
    dCopy = d;
    v12 = 1024;
    v13 = portCopy;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "0x%016llx: begin grandmaster change GMID 0x%016llx local port %hu\n", &v8, 0x1Cu);
  }
}

- (void)didEndClockGrandmasterChangeWithGrandmasterID:(unint64_t)d localPort:(unsigned __int16)port forClock:(id)clock
{
  portCopy = port;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134218496;
    clockIdentifier = [(TSDClockStatistics *)self clockIdentifier];
    v10 = 2048;
    dCopy = d;
    v12 = 1024;
    v13 = portCopy;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "0x%016llx: end grandmaster change GMID 0x%016llx local port %hu\n", &v8, 0x1Cu);
  }
}

- (void)didProcessSync:(id)sync
{
  syncCopy = sync;
  v5 = syncCopy;
  if (!self->_hasSyncedSinceLocked)
  {
    v27 = 0;
    v28 = 0;
    v25 = 0;
    v26 = 0;
    v23 = 0;
    v24 = 0;
    v22 = 0;
    v21 = 0;
    v6 = [syncCopy getMachAbsoluteRateRatioNumerator:&v28 denominator:&v27 machAnchor:&v26 andDomainAnchor:&v24 forGrandmasterIdentity:&v23 portNumber:&v22 withError:&v21];
    v7 = v21;
    v8 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (v8)
      {
        clockIdentifier = [(TSDClockStatistics *)self clockIdentifier];
        *buf = 134219520;
        v30 = clockIdentifier;
        v31 = 2048;
        v32 = v28;
        v33 = 2048;
        v34 = v27;
        v35 = 2048;
        v36 = v26;
        v37 = 2048;
        v38 = v24;
        v39 = 2048;
        v40 = v23;
        v41 = 1024;
        v42 = v22;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "0x%016llx: First MachSync %llu,%llu,%llu,%llu,0x%016llx,%hu\n", buf, 0x44u);
      }
    }

    else if (v8)
    {
      clockIdentifier2 = [(TSDClockStatistics *)self clockIdentifier];
      localizedDescription = [v7 localizedDescription];
      uTF8String = [localizedDescription UTF8String];
      *buf = 134218242;
      v30 = clockIdentifier2;
      v31 = 2080;
      v32 = uTF8String;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "0x%016llx: failed to get mach rate ratio and anchors with error %s\n", buf, 0x16u);
    }

    v20 = v7;
    v13 = [v5 getTimeSyncTimeRateRatioNumerator:&v28 denominator:&v27 timeSyncAnchor:&v25 andDomainAnchor:&v24 forGrandmasterIdentity:&v23 portNumber:&v22 withError:&v20];
    v14 = v20;

    v15 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
    if (v13)
    {
      if (v15)
      {
        clockIdentifier3 = [(TSDClockStatistics *)self clockIdentifier];
        *buf = 134219520;
        v30 = clockIdentifier3;
        v31 = 2048;
        v32 = v28;
        v33 = 2048;
        v34 = v27;
        v35 = 2048;
        v36 = v25;
        v37 = 2048;
        v38 = v24;
        v39 = 2048;
        v40 = v23;
        v41 = 1024;
        v42 = v22;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "0x%016llx: First TimeSync %llu,%llu,%llu,%llu,0x%016llx,%hu\n", buf, 0x44u);
      }
    }

    else if (v15)
    {
      clockIdentifier4 = [(TSDClockStatistics *)self clockIdentifier];
      localizedDescription2 = [v14 localizedDescription];
      uTF8String2 = [localizedDescription2 UTF8String];
      *buf = 134218242;
      v30 = clockIdentifier4;
      v31 = 2080;
      v32 = uTF8String2;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "0x%016llx: failed to get timesync rate ratio and anchors with error %s\n", buf, 0x16u);
    }

    self->_hasSyncedSinceLocked = 1;
  }
}

- (void)didGetStatsOfLocalPortNumber:(unint64_t)number mean:(unint64_t)mean median:(unint64_t)median stddev:(unint64_t)stddev min:(unint64_t)min max:(unint64_t)max numberOfSamples:(unsigned int)samples forClock:(id)self0
{
  v14 = [clock portWithPortNumber:number];
  remoteClockIdentity = [v14 remoteClockIdentity];
  v16 = BYTE5(remoteClockIdentity);
  v17 = remoteClockIdentity >> 40;
  v32[0] = @"LocalLinkType";
  v31 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [v14 localLinkType]);
  v33[0] = v31;
  v32[1] = @"RemoteLinkType";
  v30 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [v14 remoteLinkType]);
  v33[1] = v30;
  v32[2] = @"LocalTimestampingMode";
  v29 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [v14 localTimestampingMode]);
  v33[2] = v29;
  v32[3] = @"RemoteTimestampingMode";
  v28 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [v14 remoteTimestampingMode]);
  v33[3] = v28;
  v32[4] = @"PortType";
  v18 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [v14 portType]);
  v33[4] = v18;
  v32[5] = @"MinimumDelay";
  v19 = [NSNumber numberWithDouble:min / 1000.0];
  v33[5] = v19;
  v32[6] = @"MaximumDelay";
  v20 = [NSNumber numberWithDouble:max / 1000.0];
  v33[6] = v20;
  v32[7] = @"MeanDelay";
  v21 = [NSNumber numberWithDouble:mean / 1000.0];
  v33[7] = v21;
  v32[8] = @"MedianDelay";
  v22 = [NSNumber numberWithDouble:median / 1000.0];
  v33[8] = v22;
  v32[9] = @"StandardDeviation";
  v23 = [NSNumber numberWithDouble:stddev / 1000.0];
  v33[9] = v23;
  v32[10] = @"NumberOfSamples";
  v24 = [NSNumber numberWithUnsignedInt:samples];
  v33[10] = v24;
  v32[11] = @"RemoteOUI";
  v25 = [NSString stringWithFormat:@"%02x-%02x-%02x", WORD1(v17), BYTE1(v17), v16];
  v33[11] = v25;
  v26 = [NSDictionary dictionaryWithObjects:v33 forKeys:v32 count:12];

  AnalyticsSendEvent();
}

- (void)dealloc
{
  if (self->_stateDumpHandler)
  {
    os_state_remove_handler();
  }

  v3.receiver = self;
  v3.super_class = TSDClockStatistics;
  [(TSDClockStatistics *)&v3 dealloc];
}

@end