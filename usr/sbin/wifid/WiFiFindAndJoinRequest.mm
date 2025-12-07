@interface WiFiFindAndJoinRequest
- (BOOL)_canPerformRetry:(id)retry;
- (BOOL)_checkAndRequestChipResetIfNeeded;
- (BOOL)_runFindAndJoinOnInterface:(id)interface outError:(id *)error;
- (BOOL)runAsynchronouslyOnQueue:(id)queue onInterface:(id)interface withReply:(id)reply;
- (BOOL)runSynchronouslyOnQueue:(id)queue onInterface:(id)interface outError:(id *)error;
- (WiFiFindAndJoinRequest)initWithNetworkName:(id)name;
- (id)_printSupportedChannels;
- (id)description;
- (void)_chipResetDidComplete:(id)complete;
- (void)_populateSupportedChannels;
- (void)dealloc;
- (void)submitMetric;
@end

@implementation WiFiFindAndJoinRequest

- (WiFiFindAndJoinRequest)initWithNetworkName:(id)name
{
  v18.receiver = self;
  v18.super_class = WiFiFindAndJoinRequest;
  nameCopy = name;
  v4 = [(WiFiFindAndJoinRequest *)&v18 init];
  [(WiFiFindAndJoinRequest *)v4 setNetworkName:nameCopy, v18.receiver, v18.super_class];

  [(WiFiFindAndJoinRequest *)v4 setChannelNumber:0];
  [(WiFiFindAndJoinRequest *)v4 setChannelBand:0];
  [(WiFiFindAndJoinRequest *)v4 setStartedAt:0];
  [(WiFiFindAndJoinRequest *)v4 setTotalScanTime:0.0];
  [(WiFiFindAndJoinRequest *)v4 setTotalJoinTime:0.0];
  [(WiFiFindAndJoinRequest *)v4 setTimeout:60.0];
  [(WiFiFindAndJoinRequest *)v4 setChipResetWaiter:0];
  v5 = +[NSMutableArray array];
  [(WiFiFindAndJoinRequest *)v4 setScanFailureList:v5];

  v6 = +[NSMutableArray array];
  [(WiFiFindAndJoinRequest *)v4 setJoinFailureList:v6];

  v7 = +[NSMutableSet set];
  [(WiFiFindAndJoinRequest *)v4 setSupported2GHzChannels:v7];

  v8 = +[NSMutableSet set];
  [(WiFiFindAndJoinRequest *)v4 setSupported5GHzChannels:v8];

  v9 = +[NSMutableSet set];
  [(WiFiFindAndJoinRequest *)v4 setSupported6GHzChannels:v9];

  v10 = +[NSMutableSet set];
  [(WiFiFindAndJoinRequest *)v4 setScannedChannels:v10];

  v11 = +[NSMutableSet set];
  [(WiFiFindAndJoinRequest *)v4 setJoinCandidates:v11];

  v12 = +[NSNotificationCenter defaultCenter];
  [v12 addObserver:v4 selector:"_chipResetDidComplete:" name:@"WiFiChipResetCompleted" object:0];

  v13 = [[CWFInterface alloc] initWithServiceType:1];
  [(WiFiFindAndJoinRequest *)v4 setInterface:v13];

  interface = [(WiFiFindAndJoinRequest *)v4 interface];

  if (interface)
  {
    interface2 = [(WiFiFindAndJoinRequest *)v4 interface];
    [interface2 activate];
  }

  else
  {
    sub_10015703C(v15);
    interface2 = v4;
    v4 = 0;
  }

  return v4;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [NSMutableString stringWithFormat:@"< %@:%p ", v4, self];

  networkName = [(WiFiFindAndJoinRequest *)self networkName];
  [v5 appendFormat:@"SSID='%@' ", networkName];

  [v5 appendFormat:@"Channel=%d ", -[WiFiFindAndJoinRequest channelNumber](self, "channelNumber")];
  [v5 appendFormat:@"Band=%d ", -[WiFiFindAndJoinRequest channelBand](self, "channelBand")];
  [(WiFiFindAndJoinRequest *)self timeout];
  [v5 appendFormat:@"Timeout=%d ", v7];
  [v5 appendString:@">"];

  return v5;
}

- (void)dealloc
{
  [(WiFiFindAndJoinRequest *)self setInterface:0];
  v3.receiver = self;
  v3.super_class = WiFiFindAndJoinRequest;
  [(WiFiFindAndJoinRequest *)&v3 dealloc];
}

- (BOOL)_canPerformRetry:(id)retry
{
  retryCopy = retry;
  v5 = retryCopy;
  if (retryCopy && [retryCopy code] == 82)
  {
    v6 = 0;
  }

  else
  {
    startedAt = [(WiFiFindAndJoinRequest *)self startedAt];
    if (startedAt)
    {
      v8 = +[NSDate date];
      startedAt2 = [(WiFiFindAndJoinRequest *)self startedAt];
      [v8 timeIntervalSinceDate:startedAt2];
      v11 = v10;
      [(WiFiFindAndJoinRequest *)self timeout];
      v13 = v11 > v12;
    }

    else
    {
      v13 = 0;
    }

    scanFailureList = [(WiFiFindAndJoinRequest *)self scanFailureList];
    v15 = [scanFailureList count];
    joinFailureList = [(WiFiFindAndJoinRequest *)self joinFailureList];
    v17 = [joinFailureList count];

    v18 = CWFGetOSLog();
    if (v18)
    {
      v19 = CWFGetOSLog();
    }

    else
    {
      v19 = &_os_log_default;
      v20 = &_os_log_default;
    }

    v21 = v15 + v17;

    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v22 = "NO";
      v26 = "[WiFiFindAndJoinRequest _canPerformRetry:]";
      v27 = 2112;
      if (v13)
      {
        v23 = "YES";
      }

      else
      {
        v23 = "NO";
      }

      v25 = 136315906;
      v28 = v5;
      if (v21 >= 0xB)
      {
        v22 = "YES";
      }

      v29 = 2080;
      v30 = v23;
      v31 = 2080;
      v32 = v22;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v19, 16, "[corewifi] %s: last error (%@), retry expired=%s exceeded=%s", COERCE_DOUBLE(136315906), &v25, 42);
    }

    v6 = (v21 < 0xB) & ~v13;
  }

  return v6;
}

- (BOOL)_checkAndRequestChipResetIfNeeded
{
  [(WiFiFindAndJoinRequest *)self timeout];
  v4 = v3;
  v5 = +[NSDate date];
  startedAt = [(WiFiFindAndJoinRequest *)self startedAt];
  [v5 timeIntervalSinceDate:startedAt];
  v8 = v7;

  chipResetWaiter = [(WiFiFindAndJoinRequest *)self chipResetWaiter];
  if (chipResetWaiter || (v10 = v4 - v8, v10 < 0.0))
  {

    return 1;
  }

  scanFailureList = [(WiFiFindAndJoinRequest *)self scanFailureList];
  v12 = [scanFailureList count];
  joinFailureList = [(WiFiFindAndJoinRequest *)self joinFailureList];
  v14 = &v12[[joinFailureList count]];

  if (v14 < 3)
  {
    return 1;
  }

  v15 = CWFGetOSLog();
  if (v15)
  {
    v16 = CWFGetOSLog();
  }

  else
  {
    v16 = &_os_log_default;
    v18 = &_os_log_default;
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    scanFailureList2 = [(WiFiFindAndJoinRequest *)self scanFailureList];
    v20 = [scanFailureList2 count];
    joinFailureList2 = [(WiFiFindAndJoinRequest *)self joinFailureList];
    v33 = 136315650;
    v34 = "[WiFiFindAndJoinRequest _checkAndRequestChipResetIfNeeded]";
    v35 = 1024;
    v36 = [joinFailureList2 count] + v20;
    v37 = 1024;
    v38 = v10;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v16, 16, "[corewifi] %s: encountered multiple (%d) failures, performing chip reset before retrying (remaining time %ds)...", &v33, 24);
  }

  v22 = +[NSNotificationCenter defaultCenter];
  [v22 postNotificationName:@"WiFiChipResetRequested" object:0 userInfo:0];

  v23 = dispatch_semaphore_create(0);
  [(WiFiFindAndJoinRequest *)self setChipResetWaiter:v23];

  chipResetWaiter2 = [(WiFiFindAndJoinRequest *)self chipResetWaiter];
  v25 = dispatch_time(0, (v10 * 1000000000.0));
  v26 = dispatch_semaphore_wait(chipResetWaiter2, v25);

  v27 = CWFGetOSLog();
  v28 = v27;
  if (!v26)
  {
    if (v27)
    {
      v30 = CWFGetOSLog();
    }

    else
    {
      v30 = &_os_log_default;
      v32 = &_os_log_default;
    }

    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v33 = 136315138;
      v34 = "[WiFiFindAndJoinRequest _checkAndRequestChipResetIfNeeded]";
      _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v30, 16, "[corewifi] %s: chip reset completed", &v33);
    }

    return 1;
  }

  if (v27)
  {
    v29 = CWFGetOSLog();
  }

  else
  {
    v29 = &_os_log_default;
    v31 = &_os_log_default;
  }

  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    v33 = 136315138;
    v34 = "[WiFiFindAndJoinRequest _checkAndRequestChipResetIfNeeded]";
    _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v29, 16, "[corewifi] %s: timed out waiting for chip reset to complete", &v33);
  }

  return 0;
}

- (void)_chipResetDidComplete:(id)complete
{
  chipResetWaiter = [(WiFiFindAndJoinRequest *)self chipResetWaiter];

  if (chipResetWaiter)
  {
    chipResetWaiter2 = [(WiFiFindAndJoinRequest *)self chipResetWaiter];
    dispatch_semaphore_signal(chipResetWaiter2);
  }
}

- (void)_populateSupportedChannels
{
  interface = [(WiFiFindAndJoinRequest *)self interface];
  v4 = [interface supportedChannelsWithCountryCode:0];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    v18 = 136315650;
    do
    {
      v9 = 0;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v19 + 1) + 8 * v9);
        if ([v10 width] == 20)
        {
          if ([v10 band] == 1)
          {
            supported2GHzChannels = [(WiFiFindAndJoinRequest *)self supported2GHzChannels];
            goto LABEL_13;
          }

          if ([v10 band] == 2)
          {
            supported2GHzChannels = [(WiFiFindAndJoinRequest *)self supported5GHzChannels];
            goto LABEL_13;
          }

          if ([v10 band] == 3)
          {
            supported2GHzChannels = [(WiFiFindAndJoinRequest *)self supported6GHzChannels];
LABEL_13:
            v12 = supported2GHzChannels;
            [supported2GHzChannels addObject:v10];
          }

          else
          {
            v13 = CWFGetOSLog();
            if (v13)
            {
              v12 = CWFGetOSLog();
            }

            else
            {
              v14 = &_os_log_default;
              v12 = &_os_log_default;
            }

            if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
            {
              band = [v10 band];
              channel = [v10 channel];
              v23 = v18;
              v24 = "[WiFiFindAndJoinRequest _populateSupportedChannels]";
              v25 = 1024;
              v26 = band;
              v27 = 1024;
              v28 = channel;
              _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v12, 16, "[corewifi] %s: unknown band %d for supported channel %d", &v23, 24, v18);
            }
          }
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v17 = [v5 countByEnumeratingWithState:&v19 objects:v29 count:16];
      v7 = v17;
    }

    while (v17);
  }
}

- (id)_printSupportedChannels
{
  v3 = +[NSMutableString string];
  objc_msgSend(v3, "appendFormat:", @"6GHz:(");
  supported6GHzChannels = [(WiFiFindAndJoinRequest *)self supported6GHzChannels];
  allObjects = [supported6GHzChannels allObjects];
  v6 = [allObjects valueForKey:@"description"];
  v7 = [v6 componentsJoinedByString:{@", "}];
  [v3 appendFormat:@"%@, ", v7];

  [v3 appendFormat:@", "]);
  objc_msgSend(v3, "appendFormat:", @"5GHz:(");
  supported5GHzChannels = [(WiFiFindAndJoinRequest *)self supported5GHzChannels];
  allObjects2 = [supported5GHzChannels allObjects];
  v10 = [allObjects2 valueForKey:@"description"];
  v11 = [v10 componentsJoinedByString:{@", "}];
  [v3 appendFormat:@"%@, ", v11];

  [v3 appendFormat:@", "]);
  objc_msgSend(v3, "appendFormat:", @"2.4GHz:(");
  supported2GHzChannels = [(WiFiFindAndJoinRequest *)self supported2GHzChannels];
  allObjects3 = [supported2GHzChannels allObjects];
  v14 = [allObjects3 valueForKey:@"description"];
  v15 = [v14 componentsJoinedByString:{@", "}];
  [v3 appendFormat:@"%@, ", v15];

  [v3 appendFormat:@""]);

  return v3;
}

- (BOOL)_runFindAndJoinOnInterface:(id)interface outError:(id *)error
{
  interfaceCopy = interface;
  v6 = +[NSMutableArray array];
  v7 = +[NSMutableSet set];
  networkName = [(WiFiFindAndJoinRequest *)self networkName];

  if (!networkName)
  {
    v111 = CWFGetOSLog();
    if (v111)
    {
      v95 = CWFGetOSLog();
    }

    else
    {
      v95 = &_os_log_default;
      v112 = &_os_log_default;
    }

    if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
    {
      v129 = 136315138;
      v130 = "[WiFiFindAndJoinRequest _runFindAndJoinOnInterface:outError:]";
      _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v95, 16, "[corewifi] %s: null network name", &v129);
    }

    v116 = 0;
    v117 = 0;
    v122 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    goto LABEL_90;
  }

  [(WiFiFindAndJoinRequest *)self _populateSupportedChannels];
  v9 = CWFGetOSLog();
  if (v9)
  {
    v10 = CWFGetOSLog();
  }

  else
  {
    v10 = &_os_log_default;
    v11 = &_os_log_default;
  }

  errorCopy = error;

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    _printSupportedChannels = [(WiFiFindAndJoinRequest *)self _printSupportedChannels];
    v129 = 136315650;
    v130 = "[WiFiFindAndJoinRequest _runFindAndJoinOnInterface:outError:]";
    v131 = 2112;
    selfCopy = self;
    v133 = 2112;
    *v134 = _printSupportedChannels;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v10, 0, "[corewifi] %s: request %@, supported channels:%@", &v129, 32);
  }

  if (![(WiFiFindAndJoinRequest *)self channelNumber])
  {
    goto LABEL_24;
  }

  if (![(WiFiFindAndJoinRequest *)self channelBand]&& [(WiFiFindAndJoinRequest *)self channelNumber]<= 0xE)
  {
    [(WiFiFindAndJoinRequest *)self setChannelBand:2];
  }

  channelBand = [(WiFiFindAndJoinRequest *)self channelBand];
  if (channelBand == 2)
  {
    goto LABEL_22;
  }

  if (channelBand == 6)
  {
    v14 = 3;
    goto LABEL_23;
  }

  if (channelBand != 5)
  {
    v15 = CWFGetOSLog();
    if (v15)
    {
      v16 = CWFGetOSLog();
    }

    else
    {
      v16 = &_os_log_default;
      v17 = &_os_log_default;
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      channelBand2 = [(WiFiFindAndJoinRequest *)self channelBand];
      v129 = 136315394;
      v130 = "[WiFiFindAndJoinRequest _runFindAndJoinOnInterface:outError:]";
      v131 = 1024;
      LODWORD(selfCopy) = channelBand2;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v16, 16, "[corewifi] %s: invalid band specified (%d), forcing to 2.4GHz", &v129, 18);
    }

LABEL_22:
    v14 = 1;
    goto LABEL_23;
  }

  v14 = 2;
LABEL_23:
  v19 = [CWFChannel channelWithNumber:[(WiFiFindAndJoinRequest *)self channelNumber] band:v14 width:20];
  [v6 addObject:v19];

LABEL_24:
  v116 = 0;
  v117 = 0;
  v122 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  for (i = v6; ; [i removeAllObjects])
  {
    v23 = v21;
    v24 = v122;
    v25 = objc_alloc_init(CWFScanParameters);

    networkName2 = [(WiFiFindAndJoinRequest *)self networkName];
    [v25 setSSID:networkName2];

    [v25 setBSSType:3];
    [v25 setPHYMode:1];
    [v25 setNumberOfScans:1];
    [v25 setIncludeHiddenNetworks:1];
    if ([v6 count])
    {
      v27 = v6;
    }

    else
    {
      v27 = 0;
    }

    [v25 setChannels:v27];
    [v25 setScanFlags:2592];
    [v25 setScanType:1];
    v122 = +[NSDate date];

    interface = [(WiFiFindAndJoinRequest *)self interface];
    v128 = 0;
    v29 = [interface performScanWithParameters:v25 error:&v128];
    v30 = v128;

    if (v30)
    {
      scanFailureList = [(WiFiFindAndJoinRequest *)self scanFailureList];
      [scanFailureList addObject:v30];
LABEL_33:

      goto LABEL_34;
    }

    if (!v29 || ![v29 count])
    {
      scanFailureList = [(WiFiFindAndJoinRequest *)self scanFailureList];
      v32 = [NSError errorWithDomain:NSPOSIXErrorDomain code:2 userInfo:0];
      [scanFailureList addObject:v32];

      goto LABEL_33;
    }

LABEL_34:
    v119 = v25;
    v120 = v30;
    v33 = +[NSDate date];
    [v33 timeIntervalSinceDate:v122];
    v35 = v34;
    [(WiFiFindAndJoinRequest *)self totalScanTime];
    [(WiFiFindAndJoinRequest *)self setTotalScanTime:v35 + v36];

    v126 = 0u;
    v127 = 0u;
    v124 = 0u;
    v125 = 0u;
    v20 = v29;
    v37 = [v20 countByEnumeratingWithState:&v124 objects:v137 count:16];
    if (v37)
    {
      v38 = v37;
      v39 = *v125;
      do
      {
        for (j = 0; j != v38; j = j + 1)
        {
          if (*v125 != v39)
          {
            objc_enumerationMutation(v20);
          }

          v41 = *(*(&v124 + 1) + 8 * j);
          networkName3 = [v41 networkName];
          networkName4 = [(WiFiFindAndJoinRequest *)self networkName];
          v44 = [networkName3 isEqualToString:networkName4];

          if (v44)
          {
            [v7 addObject:v41];
          }
        }

        v38 = [v20 countByEnumeratingWithState:&v124 objects:v137 count:16];
      }

      while (v38);
    }

    v45 = CWFGetOSLog();
    if (v45)
    {
      v46 = CWFGetOSLog();
    }

    else
    {
      v46 = &_os_log_default;
      v47 = &_os_log_default;
    }

    v6 = i;
    v22 = v120;

    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      v48 = [i valueForKey:@"description"];
      v49 = [v48 componentsJoinedByString:{@", "}];
      v50 = [v20 count];
      v51 = [v7 count];
      v129 = 136316162;
      v130 = "[WiFiFindAndJoinRequest _runFindAndJoinOnInterface:outError:]";
      v131 = 2112;
      selfCopy = v49;
      v133 = 1024;
      *v134 = v50;
      v22 = v120;
      *&v134[4] = 1024;
      *&v134[6] = v51;
      v135 = 2112;
      v136 = v120;
      LODWORD(v113) = 44;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v46, 16, "[corewifi] %s: scan completed, requested channels=%@, result count=%d, matches=%d, error=%@", &v129, v113);
    }

    v21 = v119;
    if (![v7 count])
    {
      break;
    }

    if ([i count])
    {
      scannedChannels = [(WiFiFindAndJoinRequest *)self scannedChannels];
      [scannedChannels addObjectsFromArray:i];
    }

    joinCandidates = [(WiFiFindAndJoinRequest *)self joinCandidates];
    allObjects = [v7 allObjects];
    [joinCandidates addObjectsFromArray:allObjects];

    while (1)
    {
      joinCandidates2 = [(WiFiFindAndJoinRequest *)self joinCandidates];
      v62 = [joinCandidates2 count];

      if (!v62)
      {
        break;
      }

      v121 = v22;
      v63 = v116;
      v64 = objc_alloc_init(CWFAssocParameters);

      joinCandidates3 = [(WiFiFindAndJoinRequest *)self joinCandidates];
      allObjects2 = [joinCandidates3 allObjects];
      firstObject = [allObjects2 firstObject];
      [v64 setScanResult:firstObject];

      [v64 setForceBSSID:1];
      password = [(WiFiFindAndJoinRequest *)self password];
      [v64 setPassword:password];

      [v64 setRememberUponSuccessfulAssociation:1];
      [v64 setKnownNetworkProfile:0];
      v116 = +[NSDate date];

      interface2 = [(WiFiFindAndJoinRequest *)self interface];
      v123 = 0;
      v117 = v64;
      v70 = [interface2 associateWithParameters:v64 error:&v123];
      v22 = v123;

      if (v22)
      {
        joinFailureList = [(WiFiFindAndJoinRequest *)self joinFailureList];
        [joinFailureList addObject:v22];
      }

      else
      {
        if (v70)
        {
          goto LABEL_65;
        }

        joinFailureList = [(WiFiFindAndJoinRequest *)self joinFailureList];
        v72 = [NSError errorWithDomain:NSPOSIXErrorDomain code:97 userInfo:0];
        [joinFailureList addObject:v72];
      }

LABEL_65:
      v73 = +[NSDate date];
      [v73 timeIntervalSinceDate:v116];
      v75 = v74;
      [(WiFiFindAndJoinRequest *)self totalJoinTime];
      [(WiFiFindAndJoinRequest *)self setTotalJoinTime:v75 + v76];

      v77 = CWFGetOSLog();
      if (v77)
      {
        v78 = CWFGetOSLog();
      }

      else
      {
        v78 = &_os_log_default;
        v79 = &_os_log_default;
      }

      if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
      {
        scanResult = [v117 scanResult];
        v129 = 136315650;
        v130 = "[WiFiFindAndJoinRequest _runFindAndJoinOnInterface:outError:]";
        v131 = 2112;
        selfCopy = scanResult;
        v133 = 2112;
        *v134 = v22;
        LODWORD(v113) = 32;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v78, 16, "[corewifi] %s: join completed, candidate=%@, error=%@", &v129, v113);
      }

      joinCandidates4 = [(WiFiFindAndJoinRequest *)self joinCandidates];
      scanResult2 = [v117 scanResult];
      [joinCandidates4 removeObject:scanResult2];

      if (v70)
      {
        v104 = CWFGetOSLog();
        if (v104)
        {
          v105 = CWFGetOSLog();
        }

        else
        {
          v105 = &_os_log_default;
          v107 = &_os_log_default;
        }

        if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
        {
          networkName5 = [(WiFiFindAndJoinRequest *)self networkName];
          v129 = 136315650;
          v130 = "[WiFiFindAndJoinRequest _runFindAndJoinOnInterface:outError:]";
          v131 = 2112;
          selfCopy = networkName5;
          v133 = 2112;
          *v134 = v22;
          LODWORD(v113) = 32;
          _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v105, 0, "[corewifi] %s: join %@ succeeded (error=%@)", &v129, v113);
        }

        scanResult3 = [v117 scanResult];
        [(WiFiFindAndJoinRequest *)self setJoinedNetwork:scanResult3];

        v102 = 1;
        goto LABEL_98;
      }

      joinFailureList2 = [(WiFiFindAndJoinRequest *)self joinFailureList];
      lastObject = [joinFailureList2 lastObject];
      v85 = [(WiFiFindAndJoinRequest *)self _canPerformRetry:lastObject];

      if (!v85)
      {
        error = errorCopy;
        goto LABEL_91;
      }

      v86 = CWFGetOSLog();
      if (v86)
      {
        v87 = CWFGetOSLog();
      }

      else
      {
        v87 = &_os_log_default;
        v88 = &_os_log_default;
      }

      if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
      {
        v129 = 136315394;
        v130 = "[WiFiFindAndJoinRequest _runFindAndJoinOnInterface:outError:]";
        v131 = 2112;
        selfCopy = v22;
        LODWORD(v113) = 22;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v87, 16, "[corewifi] %s: encountered join error %@, performing join retry...", &v129, v113);
      }
    }

    joinFailureList3 = [(WiFiFindAndJoinRequest *)self joinFailureList];
    lastObject2 = [joinFailureList3 lastObject];
    v91 = [(WiFiFindAndJoinRequest *)self _canPerformRetry:lastObject2];

    if (!v91)
    {
      v106 = CWFGetOSLog();
      error = errorCopy;
      if (v106)
      {
        v95 = CWFGetOSLog();
      }

      else
      {
        v95 = &_os_log_default;
        v110 = &_os_log_default;
      }

      if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
      {
        v129 = 136315138;
        v130 = "[WiFiFindAndJoinRequest _runFindAndJoinOnInterface:outError:]";
        _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v95, 16, "[corewifi] %s: retry exhausted, exiting join phase...", &v129);
      }

      goto LABEL_90;
    }

    [(WiFiFindAndJoinRequest *)self _checkAndRequestChipResetIfNeeded];
    v92 = CWFGetOSLog();
    if (v92)
    {
      v56 = CWFGetOSLog();
    }

    else
    {
      v56 = &_os_log_default;
      v93 = &_os_log_default;
    }

    if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
    {
      v129 = 136315138;
      v130 = "[WiFiFindAndJoinRequest _runFindAndJoinOnInterface:outError:]";
      _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v56, 16, "[corewifi] %s: no join candidate, performing scan retry...", &v129);
    }

LABEL_55:
  }

  scanFailureList2 = [(WiFiFindAndJoinRequest *)self scanFailureList];
  lastObject3 = [scanFailureList2 lastObject];
  v54 = [(WiFiFindAndJoinRequest *)self _canPerformRetry:lastObject3];

  if (v54)
  {
    [(WiFiFindAndJoinRequest *)self _checkAndRequestChipResetIfNeeded];
    v55 = CWFGetOSLog();
    if (v55)
    {
      v56 = CWFGetOSLog();
    }

    else
    {
      v56 = &_os_log_default;
      v57 = &_os_log_default;
    }

    if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
    {
      v129 = 136315138;
      v130 = "[WiFiFindAndJoinRequest _runFindAndJoinOnInterface:outError:]";
      _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v56, 16, "[corewifi] %s: no match in scan results, performing scan retry...", &v129);
    }

    goto LABEL_55;
  }

  v94 = CWFGetOSLog();
  error = errorCopy;
  if (v94)
  {
    v95 = CWFGetOSLog();
  }

  else
  {
    v95 = &_os_log_default;
    v96 = &_os_log_default;
  }

  if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
  {
    v129 = 136315138;
    v130 = "[WiFiFindAndJoinRequest _runFindAndJoinOnInterface:outError:]";
    _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v95, 16, "[corewifi] %s: retry exhausted, exiting scan phase...", &v129);
  }

LABEL_90:

LABEL_91:
  v97 = CWFGetOSLog();
  if (v97)
  {
    v98 = CWFGetOSLog();
  }

  else
  {
    v98 = &_os_log_default;
    v99 = &_os_log_default;
  }

  if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
  {
    [(WiFiFindAndJoinRequest *)self networkName];
    v101 = v100 = error;
    v129 = 136315650;
    v130 = "[WiFiFindAndJoinRequest _runFindAndJoinOnInterface:outError:]";
    v131 = 2112;
    selfCopy = v101;
    v133 = 2112;
    *v134 = v22;
    LODWORD(v113) = 32;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v98, 0, "[corewifi] %s: find and join %@ failed with error %@", &v129, v113);

    error = v100;
  }

  v102 = 0;
  if (error)
  {
    *error = [(WiFiFindAndJoinRequest *)v22 copy];
  }

LABEL_98:
  [(WiFiFindAndJoinRequest *)self submitMetric];

  return v102;
}

- (void)submitMetric
{
  if (&_AnalyticsSendEventLazy)
  {
    v3 = +[NSMutableDictionary dictionary];
    joinedNetwork = [(WiFiFindAndJoinRequest *)self joinedNetwork];
    if (joinedNetwork)
    {
      v5 = @"Success";
    }

    else
    {
      v5 = @"Fail";
    }

    [v3 setObject:v5 forKeyedSubscript:@"Status"];

    chipResetWaiter = [(WiFiFindAndJoinRequest *)self chipResetWaiter];
    if (chipResetWaiter)
    {
      v7 = @"YES";
    }

    else
    {
      v7 = @"NO";
    }

    [v3 setObject:v7 forKeyedSubscript:@"DidPerformChipReset"];

    v8 = +[NSDate date];
    startedAt = [(WiFiFindAndJoinRequest *)self startedAt];
    [v8 timeIntervalSinceDate:startedAt];
    v11 = [NSNumber numberWithUnsignedLong:(v10 * 1000.0)];
    [v3 setObject:v11 forKeyedSubscript:@"CompletionTimeMillisecs"];

    [(WiFiFindAndJoinRequest *)self totalScanTime];
    v13 = [NSNumber numberWithUnsignedLong:(v12 * 1000.0)];
    [v3 setObject:v13 forKeyedSubscript:@"ScanTimeMillisecs"];

    [(WiFiFindAndJoinRequest *)self totalJoinTime];
    v15 = [NSNumber numberWithUnsignedLong:(v14 * 1000.0)];
    [v3 setObject:v15 forKeyedSubscript:@"JoinTimeMillisecs"];

    supported2GHzChannels = [(WiFiFindAndJoinRequest *)self supported2GHzChannels];
    v17 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [supported2GHzChannels count]);
    [v3 setObject:v17 forKeyedSubscript:@"Supported2GHzChannelCount"];

    supported5GHzChannels = [(WiFiFindAndJoinRequest *)self supported5GHzChannels];
    v19 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [supported5GHzChannels count]);
    [v3 setObject:v19 forKeyedSubscript:@"Supported5GHzChannelCount"];

    supported6GHzChannels = [(WiFiFindAndJoinRequest *)self supported6GHzChannels];
    v21 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [supported6GHzChannels count]);
    [v3 setObject:v21 forKeyedSubscript:@"Supported6GHzChannelCount"];

    scannedChannels = [(WiFiFindAndJoinRequest *)self scannedChannels];
    v23 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [scannedChannels count]);
    [v3 setObject:v23 forKeyedSubscript:@"ScannedChannelCount"];

    scanFailureList = [(WiFiFindAndJoinRequest *)self scanFailureList];
    v25 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [scanFailureList count]);
    [v3 setObject:v25 forKeyedSubscript:@"ScanFailureCount"];

    joinFailureList = [(WiFiFindAndJoinRequest *)self joinFailureList];
    v27 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [joinFailureList count]);
    [v3 setObject:v27 forKeyedSubscript:@"JoinFailureCount"];

    v28 = [NSNumber numberWithUnsignedInteger:[(WiFiFindAndJoinRequest *)self channelNumber]];
    [v3 setObject:v28 forKeyedSubscript:@"RequestedChannel"];

    v29 = [NSNumber numberWithUnsignedInteger:[(WiFiFindAndJoinRequest *)self channelBand]];
    [v3 setObject:v29 forKeyedSubscript:@"RequestedBand"];

    joinedNetwork2 = [(WiFiFindAndJoinRequest *)self joinedNetwork];
    if (joinedNetwork2)
    {
      joinedNetwork3 = [(WiFiFindAndJoinRequest *)self joinedNetwork];
      channel = [joinedNetwork3 channel];
      v33 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [channel channel]);
      [v3 setObject:v33 forKeyedSubscript:@"JoinedChannel"];
    }

    else
    {
      [v3 setObject:0 forKeyedSubscript:@"JoinedChannel"];
    }

    joinedNetwork4 = [(WiFiFindAndJoinRequest *)self joinedNetwork];
    if (joinedNetwork4)
    {
      joinedNetwork5 = [(WiFiFindAndJoinRequest *)self joinedNetwork];
      channel2 = [joinedNetwork5 channel];
      v37 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [channel2 band]);
      [v3 setObject:v37 forKeyedSubscript:@"JoinedBand"];
    }

    else
    {
      [v3 setObject:0 forKeyedSubscript:@"JoinedBand"];
    }

    scanFailureList2 = [(WiFiFindAndJoinRequest *)self scanFailureList];
    if ([scanFailureList2 count])
    {
      scanFailureList3 = [(WiFiFindAndJoinRequest *)self scanFailureList];
      v40 = [scanFailureList3 valueForKey:@"description"];
      v41 = [v40 componentsJoinedByString:{@", "}];
      [v3 setObject:v41 forKeyedSubscript:@"ScanFailures"];
    }

    else
    {
      [v3 setObject:0 forKeyedSubscript:@"ScanFailures"];
    }

    joinFailureList2 = [(WiFiFindAndJoinRequest *)self joinFailureList];
    if ([joinFailureList2 count])
    {
      joinFailureList3 = [(WiFiFindAndJoinRequest *)self joinFailureList];
      v44 = [joinFailureList3 valueForKey:@"description"];
      v45 = [v44 componentsJoinedByString:{@", "}];
      [v3 setObject:v45 forKeyedSubscript:@"JoinFailures"];
    }

    else
    {
      [v3 setObject:0 forKeyedSubscript:@"JoinFailures"];
    }

    v46 = CWFGetOSLog();
    if (v46)
    {
      v47 = CWFGetOSLog();
    }

    else
    {
      v47 = &_os_log_default;
      v48 = &_os_log_default;
    }

    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      v51 = 136315394;
      v52 = "[WiFiFindAndJoinRequest submitMetric]";
      v53 = 2112;
      v54 = v3;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v47, 0, "[corewifi] %s: %@", &v51, 22);
    }

    v50 = v3;
    v49 = v3;
    AnalyticsSendEventLazy();
  }
}

- (BOOL)runSynchronouslyOnQueue:(id)queue onInterface:(id)interface outError:(id *)error
{
  queueCopy = queue;
  interfaceCopy = interface;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3032000000;
  v18[3] = sub_100002B30;
  v18[4] = sub_100006750;
  v19 = 0;
  v10 = +[NSDate date];
  [(WiFiFindAndJoinRequest *)self setStartedAt:v10];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006E358;
  block[3] = &unk_100260610;
  block[4] = self;
  v14 = interfaceCopy;
  v15 = &v20;
  v16 = v18;
  errorCopy = error;
  v11 = interfaceCopy;
  dispatch_sync(queueCopy, block);
  LOBYTE(self) = *(v21 + 24);

  _Block_object_dispose(v18, 8);
  _Block_object_dispose(&v20, 8);

  return self;
}

- (BOOL)runAsynchronouslyOnQueue:(id)queue onInterface:(id)interface withReply:(id)reply
{
  queueCopy = queue;
  interfaceCopy = interface;
  replyCopy = reply;
  v11 = +[NSDate date];
  [(WiFiFindAndJoinRequest *)self setStartedAt:v11];

  v12 = dispatch_get_global_queue(0, 0);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10006E514;
  v17[3] = &unk_100260660;
  v17[4] = self;
  v18 = interfaceCopy;
  v19 = queueCopy;
  v20 = replyCopy;
  v13 = queueCopy;
  v14 = replyCopy;
  v15 = interfaceCopy;
  dispatch_async(v12, v17);

  return 1;
}

@end