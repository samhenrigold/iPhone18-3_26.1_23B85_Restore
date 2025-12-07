void sub_1000014C0(void *a1, uint64_t *a2)
{
  if (a2[1] == a1[5] && *a2 >= a1[6] && *a2 <= a1[7])
  {
    v3 = *(a2 + 12) == 621346816 && a2[3] != 0;
    v4 = a1[4];
    v5 = [[MakeRunnableEvent alloc] initWithMadeRunnableByThreadID:a2[5] atTime:*a2 inInterrupt:v3];
    [v4 addObject:v5];

    v7 = sub_100001684(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = *(a2 + 12);
      if (v8 == 6)
      {
        v9 = 0;
        v10 = @"MACH_MAKE_RUNNABLE";
      }

      else if (v8 == 621346816)
      {
        v9 = 0;
        v10 = @"PERF_LZ_MKRUNNABLE";
      }

      else
      {
        v10 = [NSNumber numberWithUnsignedInt:?];
        v9 = 1;
      }

      v11 = a2[5];
      v12 = *a2;
      v13 = a2[1];
      v14 = 138413314;
      v15 = v10;
      v16 = 2048;
      v17 = v12;
      v18 = 2048;
      v19 = v11;
      v20 = 2048;
      v21 = v13;
      v22 = 1024;
      v23 = v3;
      _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%@: %llu - thread %llx mkrunnable thread %llx inInterrupt %x", &v14, 0x30u);
      if (v9)
      {
      }
    }
  }
}

id sub_100001684(uint64_t a1)
{
  if (qword_100090438 != -1)
  {
    sub_1000401E4();
  }

  v2 = qword_100090430;

  return v2;
}

intptr_t sub_1000016C8(uint64_t a1)
{
  ktrace_session_destroy();
  v2 = *(a1 + 32);

  return dispatch_semaphore_signal(v2);
}

id sub_10000170C(void *a1, void *a2, void *a3, int a4)
{
  v6 = a1;
  v317 = a2;
  v7 = a3;
  v310 = v6;
  v290 = [v6 cStringUsingEncoding:4];
  v318 = v7;
  v306 = [v7 objectForKeyedSubscript:@"ServiceName"];
  v8 = [v7 objectForKeyedSubscript:@"PID"];
  v293 = [v8 unsignedIntValue];

  v9 = [v318 objectForKeyedSubscript:@"HangType"];
  v10 = [v9 intValue];

  v300 = [v318 objectForKeyedSubscript:@"EnablementType"];
  v11 = [v318 objectForKeyedSubscript:@"StartTime"];
  v319 = [v11 unsignedLongLongValue];

  v315 = sub_1000185A8(v310, v318);
  v307 = [v318 objectForKeyedSubscript:off_10008FD90];
  v309 = [v318 objectForKeyedSubscript:@"ProcessPath"];
  v298 = [v309 lastPathComponent];
  v12 = [v318 objectForKeyedSubscript:@"IsThirdPartyDevSupportModeHang"];
  v303 = [v12 BOOLValue];

  v301 = [v318 objectForKeyedSubscript:@"IPSMetaDictionary"];
  v13 = [v318 objectForKeyedSubscript:@"isFirstPartyApp"];
  LODWORD(a2) = [v13 BOOLValue];

  v15 = sub_10000B548(v315 - v319, v14);
  v291 = a2;
  v295 = sub_10000B09C(a2, v303, v15);
  v16 = [v318 objectForKeyedSubscript:@"Reason"];
  [v317 setReason:v16];

  v312 = [v318 objectForKeyedSubscript:@"UserAction"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v312 = 0;
  }

  v308 = [v318 objectForKeyedSubscript:@"StateInfo"];
  v305 = sub_100007894(v308, v319, v315);
  v17 = sub_100001684(v305);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    sub_10003EA8C();
  }

  v314 = [SATimestamp timestampWithMachAbsTime:v319 machContTime:0 wallTime:sub_1000046E4(v18 machTimebase:v19), 0.0];
  v313 = [SATimestamp timestampWithMachAbsTime:v315 machContTime:0 wallTime:sub_1000046E4(v314 machTimebase:v20), 0.0];
  v21 = [v317 indexOfFirstSampleOnOrAfterTimestamp:v314];
  v22 = [v317 indexOfLastSampleOnOrBeforeTimestamp:v313];
  if (v21 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v23 = [v317 endTime];
    v24 = v23 == 0;

    if (v24)
    {
      goto LABEL_10;
    }

    v25 = [v317 endTime];
    [v314 guessMissingTimesBasedOnTimestamp:v25];
  }

  else
  {
    v25 = [v317 sampleTimestamps];
    v26 = [v25 objectAtIndexedSubscript:v21];
    [v314 guessMissingTimesBasedOnTimestamp:v26];
  }

LABEL_10:
  if (v22 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v27 = [v317 startTime];
    v28 = v27 == 0;

    if (v28)
    {
      goto LABEL_15;
    }

    v30 = [v317 startTime];
    [v313 guessMissingTimesBasedOnTimestamp:v30];
  }

  else
  {
    v30 = [v317 sampleTimestamps];
    v31 = [v30 objectAtIndexedSubscript:v22];
    [v313 guessMissingTimesBasedOnTimestamp:v31];
  }

LABEL_15:
  v32 = sub_100001684(v29);
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
  {
    sub_10003EB08();
  }

  v311 = objc_alloc_init(NSMutableDictionary);
  v342 = 0;
  v343 = &v342;
  v344 = 0x3032000000;
  v345 = sub_100011518;
  v346 = sub_100011528;
  v347 = 0;
  v33 = [HTProcessLaunchExitRecord getProcessExitsAndLaunchesDuringHang:v319 endTime:v315];
  if (v33)
  {
    [v311 setObject:v33 forKeyedSubscript:@"processExits"];
  }

  v297 = v33;
  v34 = [v307 isEqualToString:off_10008FDA0];
  v296 = v10;
  if (v34)
  {
    if (v21 != 0x7FFFFFFFFFFFFFFFLL && v22 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v36 = sub_10000B548(v315 - v319, v35);
      [v317 setTargetProcessId:v293];
      [v317 setSanitizePaths:1];
      v37 = [v318 objectForKeyedSubscript:off_10008FD88];
      [v317 setEvent:v37];

      v302 = [v317 targetProcess];
      v38 = [[SASamplePrinter alloc] initWithSampleStore:v317];
      [v38 filterToMachAbsTimeRangeStart:v319 end:v315];
      v39 = [v38 options];
      [v39 setPrintSpinSignatureStack:1];

      v40 = +[HTPrefs sharedPrefs];
      v41 = [v40 isInternal];

      if ((v41 & 1) == 0)
      {
        v42 = [v38 options];
        [v42 setDisplayKernelFrames:0];
      }

      if (!(v291 & 1 | ((v303 & 1) == 0)))
      {
        v43 = [v38 options];
        [v43 setDisplayTrialInformation:0];
      }

      v44 = [NSUUID alloc];
      v45 = [v318 objectForKeyedSubscript:off_10008FDA8];
      v46 = [v44 initWithUUIDString:v45];
      [v38 setIncidentUUID:v46];

      v47 = [v38 options];
      [v47 setForceOneBasedTimeIndexes:1];

      v48 = objc_alloc_init(NSMutableDictionary);
      v49 = [NSString stringWithFormat:@"%0.0f", *&v36];
      [v48 setObject:v49 forKey:@"duration_ms"];

      v50 = [v317 hardwareModel];
      if (v50)
      {
        [v317 hardwareModel];
      }

      else
      {
        [NSString stringWithUTF8String:"UNKNOWN"];
      }
      v73 = ;

      [v48 setObject:v73 forKey:@"machine_config"];
      v74 = [v318 objectForKeyedSubscript:@"Reason"];
      if (v74)
      {
        [v318 objectForKeyedSubscript:@"Reason"];
      }

      else
      {
        [v318 objectForKeyedSubscript:off_10008FD88];
      }
      v75 = ;

      [v48 setObject:v75 forKey:@"reason"];
      v353 = @"HangUUID";
      v76 = [v38 incidentUUID];
      v354 = v76;
      v316 = [NSDictionary dictionaryWithObjects:&v354 forKeys:&v353 count:1];

      v77 = [v302 name];
      v78 = [v302 mainBinaryPath];
      v320 = sub_100009F50(v77, 0, v78, v316);

      [v48 addEntriesFromDictionary:v320];
      v79 = [SATimeRange timeRangeStart:v314 end:v313];
      [v317 setEventTimeRange:v79];

      [MXSampleAnalysisParser sendDiagnosticReport:v38 forType:3 forSourceID:3];
      v80 = [NSNumber numberWithInt:v293];
      v81 = [NSMutableSet setWithObject:v80];
      v82 = [v38 options];
      [v82 setPidsToPrint:v81];

      v83 = [v38 options];
      [v83 setPrintHeavyStacks:1];

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      *&buf[24] = sub_100011518;
      *&v358 = sub_100011528;
      *(&v358 + 1) = 0;
      v84 = [v302 name];
      v85 = [NSString stringWithFormat:@"Applaunch-%@", v84];

      if ([v75 isEqualToString:off_10008FD98])
      {
        v86 = 248;
      }

      else
      {
        v86 = 238;
      }

      v87 = [NSString stringWithFormat:@"%ld", v86];
      v331 = _NSConcreteStackBlock;
      v332 = 3221225472;
      v333 = sub_100011530;
      v334 = &unk_100085330;
      v337 = buf;
      v338 = &v342;
      v335 = v311;
      v88 = v38;
      v341 = a4;
      v336 = v88;
      v339 = v296;
      v340 = v295;
      v89 = OSAWriteLogForSubmission();
      if (v89)
      {
        v90 = sub_100001684(v89);
        if (os_log_type_enabled(v90, OS_LOG_TYPE_INFO))
        {
          v91 = *(*&buf[8] + 40);
          *v350 = 138412290;
          *&v350[4] = v91;
          _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_INFO, "IPS file for MetricKit App launch diagnostics written successfully at %@", v350, 0xCu);
        }

        v92 = arc4random_uniform(0x64u);
        v93 = v92;
        if (v92 > 0x18)
        {
          v95 = sub_100001684(v92);
          if (os_log_type_enabled(v95, OS_LOG_TYPE_INFO))
          {
            *v350 = 134217984;
            *&v350[4] = v93;
            _os_log_impl(&_mh_execute_header, v95, OS_LOG_TYPE_INFO, "randomFlagValue is %f, rejecting submission to DP", v350, 0xCu);
          }
        }

        else
        {
          v94 = sub_100001684(v92);
          if (os_log_type_enabled(v94, OS_LOG_TYPE_INFO))
          {
            *v350 = 134217984;
            *&v350[4] = v93;
            _os_log_impl(&_mh_execute_header, v94, OS_LOG_TYPE_INFO, "randomFlagValue is %f will be submitting the tailspin to DP", v350, 0xCu);
          }

          v95 = objc_alloc_init(NSMutableDictionary);
          v96 = [v48 valueForKey:@"duration_ms"];
          [v95 setObject:v96 forKeyedSubscript:@"observedLatencyInMs"];

          v97 = [v88 incidentUUID];

          if (v97)
          {
            v98 = [v88 incidentUUID];
            v99 = [v98 UUIDString];
            [v95 setObject:v99 forKeyedSubscript:@"UUID"];
          }

          [v95 setObject:v75 forKeyedSubscript:@"reason"];
          v100 = [NSNumber numberWithInteger:v86];
          [v95 setObject:v100 forKeyedSubscript:@"bugtype"];

          v101 = [v48 valueForKey:@"app_version"];
          [v95 setObject:v101 forKeyedSubscript:@"appVersion"];

          v102 = [v302 name];
          [v95 setObject:v102 forKeyedSubscript:@"appName"];

          v103 = [v302 bundleIdentifier];

          if (v103)
          {
            v105 = [v302 bundleIdentifier];
            [v95 setObject:v105 forKeyedSubscript:@"bundleID"];
          }

          else
          {
            v105 = sub_100001684(v104);
            if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
            {
              *v350 = 0;
              _os_log_impl(&_mh_execute_header, v105, OS_LOG_TYPE_DEFAULT, "bundleIdentifier field was nil in SATask object", v350, 2u);
            }
          }

          v128 = [v320 objectForKeyedSubscript:@"is_first_party"];
          if (v128)
          {
            v129 = [v320 objectForKeyedSubscript:@"is_first_party"];
            v130 = [v129 BOOLValue];
          }

          else
          {
            v130 = 1;
          }

          sub_100011728(v130, 0, 0, v310, v95);
        }
      }

      else if (a4)
      {
        sub_10000DA84(0, 9uLL, v296, v295);
      }

      _Block_object_dispose(buf, 8);
LABEL_112:
      v131 = 0;
      goto LABEL_113;
    }

    v70 = sub_100001684(v34);
    if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "Sample store contains no samples for the tailspin interval, ignoring!", buf, 2u);
    }

    if (a4)
    {
      sub_10000DA84(0, 6uLL, v10, v295);
    }

LABEL_139:
    v131 = 0;
    goto LABEL_140;
  }

  v51 = [v306 containsString:@"Fence-hang"];
  if (v51)
  {
    v52 = sub_100001684(v51);
    if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_INFO, "Analyzing a Fence-hang, going to find process slowest at fence handling", buf, 2u);
    }

    v53 = [v318 objectForKeyedSubscript:@"FenceInfoUpdated"];
    v54 = v53;
    if (v53)
    {
      v55 = [v53 BOOLValue];
      if (v55)
      {
        v56 = sub_100001684(v55);
        if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
        {
          v57 = [v317 reason];
          *buf = 138412546;
          *&buf[4] = v309;
          *&buf[12] = 2112;
          *&buf[14] = v57;
          _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "Found slowest fence client: %@ reason: %@", buf, 0x16u);
        }

        if (v293 == -1)
        {
          v59 = sub_100001684(v58);
          if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
          {
            sub_10003EB78();
          }
        }

        goto LABEL_40;
      }

      v72 = sub_100001684(v55);
      v302 = v54;
      if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEFAULT, "Unable to find slowest fence client from ktrace signposts in tailspin", buf, 2u);
      }
    }

    else
    {
      v72 = sub_100001684(0);
      v302 = 0;
      if (os_log_type_enabled(v72, OS_LOG_TYPE_FAULT))
      {
        sub_10003EDD8();
      }
    }

    if (v21 == 0x7FFFFFFFFFFFFFFFLL || v22 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v108 = sub_100001684(v107);
      if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v108, OS_LOG_TYPE_DEFAULT, "Unable to find slowest fence client: no ktrace data during time period", buf, 2u);
      }
    }

    else
    {
      v108 = sub_100001684(v107);
      if (os_log_type_enabled(v108, OS_LOG_TYPE_FAULT))
      {
        sub_10003EE14();
      }
    }

    if (a4)
    {
      sub_10000DA84(0, 5uLL, v296, v295);
    }

    goto LABEL_112;
  }

LABEL_40:
  if (v21 == 0x7FFFFFFFFFFFFFFFLL || v22 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (a4)
    {
      sub_10000DA84(0, 6uLL, v10, v295);
    }

    v71 = sub_100001684(v51);
    v302 = v71;
    if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, "Sample store contains no samples for the hang interval, ignoring!", buf, 2u);
    }

    goto LABEL_112;
  }

  if ([v306 containsString:@"Fence-hang"])
  {
    sub_1000208CC(v290, @"hangtracer.process_path", v309);
    v60 = [v301 objectForKeyedSubscript:kCRProblemReportBundleIDKey];
    sub_1000208CC(v290, @"hangtracer.bundle_id", v60);

    v61 = [NSString stringWithFormat:@"%f", *&v15];
    sub_1000208CC(v290, @"hangtracer.duration", v61);
  }

  if (v291)
  {
    v62 = +[HTPrefs sharedPrefs];
    v63 = v15 < [v62 runloopLongHangDurationThresholdMSec];

    if (v63)
    {
      v64 = +[HTPrefs sharedPrefs];
      v65 = v15 < [v64 runloopHangDurationThresholdMSec];

      if (v65)
      {
        v67 = sub_100001684(v66);
        v68 = 0.25;
        if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
        {
          v69 = [v310 lastPathComponent];
          *buf = 138413058;
          *&buf[4] = v69;
          *&buf[12] = 2048;
          *&buf[14] = v15;
          *&buf[22] = 2048;
          *&buf[24] = v295;
          LOWORD(v358) = 2048;
          *(&v358 + 2) = 0x3FD0000000000000;
          _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "Post-Processing %@: hangDuration=%fms -> categorized as Micro Hang and bug_type=%lu and reportThreshold=%f", buf, 0x2Au);
        }
      }

      else
      {
        v134 = +[HTPrefs sharedPrefs];
        v135 = [v134 runloopHangDurationThresholdMSec];

        v67 = sub_100001684(v136);
        v68 = v135 / 1000.0;
        if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
        {
          v137 = [v310 lastPathComponent];
          *buf = 138413058;
          *&buf[4] = v137;
          *&buf[12] = 2048;
          *&buf[14] = v15;
          *&buf[22] = 2048;
          *&buf[24] = v295;
          LOWORD(v358) = 2048;
          *(&v358 + 2) = v68;
          _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "Post-Processing %@: hangDuration=%fms -> categorized as Short Hang and bug_type=%lu and reportThreshold=%f", buf, 0x2Au);
        }
      }
    }

    else
    {
      v124 = +[HTPrefs sharedPrefs];
      v125 = [v124 runloopLongHangDurationThresholdMSec];

      v67 = sub_100001684(v126);
      v68 = v125 / 1000.0;
      if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
      {
        v127 = [v310 lastPathComponent];
        *buf = 138413058;
        *&buf[4] = v127;
        *&buf[12] = 2048;
        *&buf[14] = v15;
        *&buf[22] = 2048;
        *&buf[24] = v295;
        LOWORD(v358) = 2048;
        *(&v358 + 2) = v68;
        _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "Post-Processing %@: hangDuration=%fms -> categorized as Long Hang and bug_type=%lu and reportThreshold=%f", buf, 0x2Au);
      }
    }

    goto LABEL_121;
  }

  if (DiagnosticLogSubmissionEnabled())
  {
    v106 = AppAnalyticsEnabled();
  }

  else
  {
    v106 = 0;
  }

  if (((+[MXSourceUtilities anyClientsAvailable]| v106) & 1) == 0)
  {
    v109 = +[HTPrefs sharedPrefs];
    v110 = [v109 thirdPartyDevHangHUDEnabled];

    if ((v110 & 1) == 0)
    {
      v132 = sub_100001684(v111);
      if (os_log_type_enabled(v132, OS_LOG_TYPE_DEFAULT))
      {
        v133 = [v310 lastPathComponent];
        *buf = 138412290;
        *&buf[4] = v133;
        _os_log_impl(&_mh_execute_header, v132, OS_LOG_TYPE_DEFAULT, "Post-Processing %@: Hang in Third Party App, but Sharing with App Developers is not enabled -> will not generate log and will delete tailspin", buf, 0xCu);
      }

      if ((a4 & 1) == 0)
      {
        goto LABEL_139;
      }

      v119 = 7;
LABEL_118:
      sub_10000DA84(0, v119, v296, v295);
      goto LABEL_139;
    }
  }

  if ([v306 containsString:@"Fence-hang"])
  {
    v112 = +[HTPrefs sharedPrefs];
    v113 = v15 < [v112 runloopHangThirdPartyDurationThresholdMSec];

    if (v113)
    {
      v115 = sub_100001684(v114);
      if (os_log_type_enabled(v115, OS_LOG_TYPE_DEFAULT))
      {
        v116 = [v310 lastPathComponent];
        v117 = +[HTPrefs sharedPrefs];
        v118 = [v117 runloopHangThirdPartyDurationThresholdMSec];
        *buf = 138412802;
        *&buf[4] = v116;
        *&buf[12] = 2048;
        *&buf[14] = v15;
        *&buf[22] = 2048;
        *&buf[24] = v118;
        _os_log_impl(&_mh_execute_header, v115, OS_LOG_TYPE_DEFAULT, "Post-Processing %@: Hang in Third Party App, but hang duration blamed on app (%f ms) is below the 3rd party hang log threshold (%llu ms) -> will not generate log and will delete tailspin", buf, 0x20u);
      }

      if (!a4)
      {
        goto LABEL_139;
      }

      v119 = 8;
      goto LABEL_118;
    }
  }

  v120 = +[HTPrefs sharedPrefs];
  v121 = [v120 runloopHangThirdPartyDurationThresholdMSec];

  v67 = sub_100001684(v122);
  v68 = v121 / 1000.0;
  if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
  {
    v123 = [v310 lastPathComponent];
    *buf = 138413058;
    *&buf[4] = v123;
    *&buf[12] = 2048;
    *&buf[14] = v15;
    *&buf[22] = 2048;
    *&buf[24] = v295;
    LOWORD(v358) = 2048;
    *(&v358 + 2) = v68;
    _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "Post-Processing %@: hangDuration=%fms -> categorized as Third Party Hang and bug_type=%lu and reportThreshold=%f", buf, 0x2Au);
  }

LABEL_121:

  [v317 setTargetProcessId:v293];
  [v317 setSanitizePaths:1];
  [v317 setReportTimeThreshold:v68];
  v138 = sub_10000B024(v296);
  [v317 setEvent:v138];

  v139 = [SATimeRange timeRangeStart:v314 end:v313];
  [v317 setEventTimeRange:v139];

  v329 = 0u;
  v330 = 0u;
  v327 = 0u;
  v328 = 0u;
  v140 = [v317 tasksByPid];
  v141 = [NSNumber numberWithInt:v293];
  v142 = [v140 objectForKeyedSubscript:v141];

  v143 = [v142 countByEnumeratingWithState:&v327 objects:v352 count:16];
  if (!v143)
  {

LABEL_135:
    v159 = sub_100001684(v150);
    if (os_log_type_enabled(v159, OS_LOG_TYPE_ERROR))
    {
      sub_10003ED9C();
    }

    if (a4)
    {
      sub_10000DA84(0, 0xCuLL, v296, v295);
    }

    goto LABEL_139;
  }

  v144 = 0;
  v145 = *v328;
  do
  {
    for (i = 0; i != v143; i = i + 1)
    {
      if (*v328 != v145)
      {
        objc_enumerationMutation(v142);
      }

      v147 = *(*(&v327 + 1) + 8 * i);
      v148 = [v147 mainThread];

      if (v148)
      {
        v149 = [v147 mainThread];

        v144 = v149;
      }
    }

    v143 = [v142 countByEnumeratingWithState:&v327 objects:v352 count:16];
  }

  while (v143);

  if (!v144)
  {
    goto LABEL_135;
  }

  v151 = [v144 lastThreadStateOnOrBeforeTime:v313 sampleIndex:0x7FFFFFFFFFFFFFFFLL];
  v152 = [v151 cpuTimeNs];
  v153 = [v144 firstThreadStateOnOrAfterTime:v314 sampleIndex:0x7FFFFFFFFFFFFFFFLL];
  v154 = [v153 cpuTimeNs];

  v156 = v15;
  if (((v152 - v154) / (v156 * 1000000.0)) >= 0.5)
  {
    v157 = 0;
    v158 = 1;
  }

  else
  {
    v157 = objc_alloc_init(HRMakeRunnableData);
    v155 = [(HRMakeRunnableData *)v157 findBlockingThreadForTailspin:v310 sampleStore:v317 mainThread:v144 hangStartTime:v319 hangEndTime:v315 hangDuration:v15];
    if (v155 != 5)
    {
      v155 = [(HRMakeRunnableData *)v157 findBlockingThreadFromSampleStore:v317 mainThread:v144 hangStartTime:v319 hangEndTime:v315];
      v289 = v155;
      goto LABEL_146;
    }

    v158 = 5;
  }

  v289 = v158;
LABEL_146:
  v161 = sub_100001684(v155);
  v302 = v157;
  if (os_log_type_enabled(v161, OS_LOG_TYPE_DEFAULT))
  {
    v162 = sub_10000471C(v289);
    if (v289 == 5)
    {
      v163 = [(HRMakeRunnableData *)v157 blockingThreadInfo];
    }

    else
    {
      v163 = &stru_100085FF8;
    }

    *buf = 138412546;
    *&buf[4] = v162;
    *&buf[12] = 2112;
    *&buf[14] = v163;
    _os_log_impl(&_mh_execute_header, v161, OS_LOG_TYPE_DEFAULT, "Blocking Thread Search Status: %@ %@", buf, 0x16u);
    if (v289 == 5)
    {
    }
  }

  v325 = 0u;
  v326 = 0u;
  v323 = 0u;
  v324 = 0u;
  v164 = [v317 hidEvents];
  v165 = [v164 countByEnumeratingWithState:&v323 objects:v351 count:16];
  if (!v165)
  {

    goto LABEL_167;
  }

  v166 = 0;
  v167 = *v324;
  do
  {
    for (j = 0; j != v165; j = j + 1)
    {
      if (*v324 != v167)
      {
        objc_enumerationMutation(v164);
      }

      v169 = *(*(&v323 + 1) + 8 * j);
      v170 = [v169 hidEventTimestamp];
      if ([v170 machAbsTime] <= v319)
      {
        v171 = [v169 hidEventTimestamp];
        v172 = [v171 machAbsTime] > v166;

        if (!v172)
        {
          continue;
        }

        v170 = [v169 hidEventTimestamp];
        v166 = [v170 machAbsTime];
      }
    }

    v165 = [v164 countByEnumeratingWithState:&v323 objects:v351 count:16];
  }

  while (v165);

  if (v166)
  {
    [v317 setTargetHIDEventMachAbs:v166];
  }

LABEL_167:
  v173 = [[SASamplePrinter alloc] initWithSampleStore:v317];
  [v173 filterToMachAbsTimeRangeStart:v319 end:v315];
  v174 = [v173 options];
  [v174 setPrintHeavyStacks:1];

  v175 = [v173 options];
  [v175 setPrintSpinSignatureStack:1];

  v176 = [NSUUID alloc];
  v177 = [v301 objectForKeyedSubscript:kOSAIPSHeaderIncidentIDKey];
  v178 = [v176 initWithUUIDString:v177];
  [v173 setIncidentUUID:v178];

  v179 = [v173 options];
  [v179 setForceOneBasedTimeIndexes:1];

  if (!(v291 & 1 | ((v303 & 1) == 0)))
  {
    v180 = [v173 options];
    [v180 setDisplayTrialInformation:0];
  }

  v304 = objc_alloc_init(NSMutableDictionary);
  v181 = [NSString stringWithFormat:@"%0.0f", *&v15];
  [v304 setObject:v181 forKey:@"duration_ms"];

  v182 = +[HTPrefs sharedPrefs];
  [v182 runloopHangPercentHeavyLogs];
  v184 = v183;
  v185 = +[HTPrefs sharedPrefs];
  v187 = v15 >= [v185 runloopHangTimeoutDurationMSec] || v296 == 2;

  if (v187)
  {
    v189 = sub_100001684(v188);
    if (os_log_type_enabled(v189, OS_LOG_TYPE_DEBUG))
    {
      v190 = +[HTPrefs sharedPrefs];
      v191 = [v190 runloopHangTimeoutDurationMSec];
      v192 = sub_10000B024(v296);
      *buf = 134218498;
      *&buf[4] = v15;
      *&buf[12] = 2048;
      *&buf[14] = v191;
      *&buf[22] = 2112;
      *&buf[24] = v192;
      _os_log_debug_impl(&_mh_execute_header, v189, OS_LOG_TYPE_DEBUG, "Should capture heavy log due to hang duration of %.4f (pref is %llu), type %@", buf, 0x20u);
    }

    goto LABEL_181;
  }

  if (v296 == 10)
  {
    v189 = sub_100001684(v188);
    if (os_log_type_enabled(v189, OS_LOG_TYPE_DEBUG))
    {
      sub_10003EBB4();
    }

    goto LABEL_181;
  }

  if (v184 >= 100.0)
  {
    v193 = @"heavy";
  }

  else
  {
    if (v184 <= 0.0)
    {
      goto LABEL_210;
    }

    v217 = arc4random_uniform(0x7FFFFFFFu);
    v218 = v217;
    v189 = sub_100001684(v217);
    v219 = os_log_type_enabled(v189, OS_LOG_TYPE_INFO);
    if (v218 * 100.0 / 2147483650.0 <= v184)
    {
      if (v219)
      {
        *buf = 134218240;
        *&buf[4] = v218 * 100.0 / 2147483650.0;
        *&buf[12] = 2048;
        *&buf[14] = v184;
        _os_log_impl(&_mh_execute_header, v189, OS_LOG_TYPE_INFO, "Should capture heavy log due to roll of %.4f (pref is %.4f)", buf, 0x16u);
      }

LABEL_181:
      v193 = @"heavy";
LABEL_182:
    }

    else
    {
      if (v219)
      {
        *buf = 134218240;
        *&buf[4] = v218 * 100.0 / 2147483650.0;
        *&buf[12] = 2048;
        *&buf[14] = v184;
        _os_log_impl(&_mh_execute_header, v189, OS_LOG_TYPE_INFO, "Should capture lite log due to roll of %.4f (pref is %.4f)", buf, 0x16u);
      }

LABEL_210:
      if (v289 == 5)
      {
        v220 = [NSNumber numberWithInt:v293];
        v182 = [NSMutableSet setWithObject:v220];

        v221 = [v302 topBlockingPid];
        [v182 addObject:v221];

        v222 = [v173 options];
        [v222 setPidsToPrint:v182];

        +[NSMutableArray array];
        v189 = [objc_claimAutoreleasedReturnValue() init];
        v223 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v144 threadId]);
        [v189 addObject:v223];

        v224 = [v302 allBlockingThreadsArray];
        [v189 addObjectsFromArray:v224];

        v225 = [NSSet setWithArray:v189];
        v226 = [v173 options];
        [v226 setTidsToPrint:v225];

        v193 = @"light";
        goto LABEL_182;
      }

      v182 = [v173 options];
      [v182 setPrintTargetThreadOnly:1];
      v193 = @"light";
    }
  }

  [v304 setObject:v193 forKey:@"bug_subtype"];
  if (v300)
  {
    [v304 setObject:v300 forKey:@"ht_enablement_prefix"];
  }

  v194 = objc_alloc_init(NSMutableData);
  [v173 printToMutableData:v194];
  [MXSampleAnalysisParser sendDiagnosticReport:v173 forType:2 forSourceID:3];
  v292 = v194;
  v195 = [v317 startTime];
  [v195 wallTime];
  v197 = v196;

  v198 = [v317 targetProcess];
  v199 = [v198 bundleIdentifier];
  v200 = v199;
  if (v199)
  {
    v294 = v199;
  }

  else
  {
    v294 = sub_10000AA30(v309);
  }

  if (v300)
  {
    [v311 setObject:v300 forKeyedSubscript:@"htEnablementPrefix"];
  }

  v201 = [v318 objectForKeyedSubscript:@"HangUUID"];
  v202 = v201 == 0;

  if (v202)
  {
    v204 = sub_100001684(v203);
    if (os_log_type_enabled(v204, OS_LOG_TYPE_ERROR))
    {
      sub_10003EBF0();
    }

    [v311 setObject:&__kCFBooleanTrue forKeyedSubscript:@"HangUUIDMissing"];
  }

  v205 = +[HTPrefs sharedPrefs];
  v206 = [v205 shouldIncludeDisplayData];

  if (v206)
  {
    v208 = sub_100001684(v207);
    if (os_log_type_enabled(v208, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v208, OS_LOG_TYPE_INFO, "Adding display info to spindump", buf, 2u);
    }

    v209 = [HTDisplayParser displayInfoForSpindump:v318 startAbsoluteTime:v319 endAbsoluteTime:v315];
    [v311 addEntriesFromDictionary:v209];
  }

  v210 = +[HTPrefs sharedPrefs];
  v211 = [v210 shouldIncludeNetworkState];

  if (v211)
  {
    v212 = [v318 objectForKeyedSubscript:@"NetworkState"];
    v213 = v212;
    if (v212 && (+[NSNull null](NSNull, "null"), v214 = objc_claimAutoreleasedReturnValue(), v215 = [v213 isEqual:v214], v214, (v215 & 1) == 0))
    {
      v227 = sub_100001684(v212);
      if (os_log_type_enabled(v227, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v227, OS_LOG_TYPE_INFO, "Adding network state to spindump", buf, 2u);
      }

      [v311 addEntriesFromDictionary:v213];
    }

    else
    {
      v216 = sub_100001684(v212);
      if (os_log_type_enabled(v216, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v216, OS_LOG_TYPE_INFO, "No network state for spindump", buf, 2u);
      }
    }
  }

  v228 = +[HTPrefs sharedPrefs];
  v229 = [v228 shouldIncludeDiskInfo];

  if (v229)
  {
    existing = 0;
    v230 = +[NSMutableDictionary dictionary];
    v231 = IOServiceMatching("AppleAPFSVolume");
    if (v231)
    {
      IOServiceGetMatchingServices(kIOMainPortDefault, v231, &existing);
      for (k = IOIteratorNext(existing); k; k = IOIteratorNext(existing))
      {
        v363 = 0u;
        v362 = 0u;
        v361 = 0u;
        v360 = 0u;
        v359 = 0u;
        v358 = 0u;
        memset(buf, 0, sizeof(buf));
        Name = IORegistryEntryGetName(k, buf);
        v234 = Name;
        if (Name)
        {
          v235 = sub_100001684(Name);
          if (os_log_type_enabled(v235, OS_LOG_TYPE_DEFAULT))
          {
            *v350 = 67109376;
            *&v350[4] = v234;
            *&v350[8] = 1024;
            *&v350[10] = k;
            _os_log_impl(&_mh_execute_header, v235, OS_LOG_TYPE_DEFAULT, "Warn: 0x%08x: Could not get name for io_registry_entry_t 0x%x\n", v350, 0xEu);
          }

          strcpy(buf, "UNKNOWN");
        }

        properties = 0;
        v236 = IORegistryEntryCreateCFProperties(k, &properties, kCFAllocatorDefault, 0);
        v237 = v236;
        if (v236)
        {
          v238 = sub_100001684(v236);
          if (os_log_type_enabled(v238, OS_LOG_TYPE_ERROR))
          {
            *v350 = 67109378;
            *&v350[4] = v237;
            *&v350[8] = 2080;
            *&v350[10] = buf;
            _os_log_error_impl(&_mh_execute_header, v238, OS_LOG_TYPE_ERROR, "Error: 0x%08x: Could not get properties for io_registry_entry_t %s\n", v350, 0x12u);
          }
        }

        else
        {
          v239 = [(__CFDictionary *)properties objectForKey:@"BSD Name"];
          v240 = v239;
          snprintf(buf, 0x80uLL, "%s_%s", buf, [v239 UTF8String]);

          v355[0] = @"BSD Name";
          v241 = [(__CFDictionary *)properties objectForKey:@"BSD Name"];
          v356[0] = v241;
          v355[1] = @"FormattedBy";
          v242 = [(__CFDictionary *)properties objectForKey:@"FormattedBy"];
          v356[1] = v242;
          v238 = [NSDictionary dictionaryWithObjects:v356 forKeys:v355 count:2];

          v243 = [NSString stringWithUTF8String:buf];
          [v230 objectForKeyedSubscript:v243];
          if (objc_claimAutoreleasedReturnValue())
          {
            __assert_rtn("APFSVolumeInfo", "hangreporter.m", 278, "!apfsVolumesInfo[@(registryEntryName)]");
          }

          v244 = [NSString stringWithUTF8String:buf];
          [v230 setObject:v238 forKeyedSubscript:v244];

          CFRelease(properties);
        }
      }

      IOObjectRelease(existing);
    }

    else
    {
      v245 = sub_100001684(0);
      if (os_log_type_enabled(v245, OS_LOG_TYPE_ERROR))
      {
        sub_10003EC2C();
      }
    }

    *v350 = @"AppleAPFSVolume";
    *buf = v230;
    v246 = [NSDictionary dictionaryWithObjects:buf forKeys:v350 count:1];
    v247 = sub_100001684(v246);
    if (os_log_type_enabled(v247, OS_LOG_TYPE_DEBUG))
    {
      sub_10003ECAC();
    }

    [v311 addEntriesFromDictionary:v246];
  }

  v248 = +[HTPrefs sharedPrefs];
  v249 = [v248 shouldIncludeDiskInfo];

  if (v249)
  {
    v250 = sub_100018ED8();
    [v311 addEntriesFromDictionary:v250];

    v251 = sub_100018F00();
    [v311 addEntriesFromDictionary:v251];
  }

  v252 = sub_10000471C(v289);
  [v311 setObject:v252 forKeyedSubscript:@"blockingThreadStatus"];

  if (v289 == 5)
  {
    v253 = [v302 blockingThreadInfo];
    v254 = sub_100011E70(v253);
    [v311 setObject:v254 forKeyedSubscript:@"blockingThreadInfo"];
  }

  v255 = +[HTPrefs sharedPrefs];
  if (v15 < [v255 springBoardHangIORegGPUDumpTimeoutMSec])
  {
LABEL_248:
  }

  else
  {
    v256 = [v298 isEqualToString:@"SpringBoard"];

    if (v256)
    {
      v258 = sub_100001684(v257);
      if (os_log_type_enabled(v258, OS_LOG_TYPE_INFO))
      {
        v259 = +[HTPrefs sharedPrefs];
        v260 = [v259 springBoardHangIORegGPUDumpTimeoutMSec];
        *buf = 138543874;
        *&buf[4] = v298;
        *&buf[12] = 2048;
        *&buf[14] = v15;
        *&buf[22] = 2048;
        *&buf[24] = v260;
        _os_log_impl(&_mh_execute_header, v258, OS_LOG_TYPE_INFO, "Process:%{public}@ hang duration %0.0fms is greater than %llums, fetching IOReg GPU AGX SchedulerState info", buf, 0x20u);
      }

      v261 = sub_100020F90(v310);
      v255 = v261;
      if (v261)
      {
        v262 = sub_100001684(v261);
        if (os_log_type_enabled(v262, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v262, OS_LOG_TYPE_INFO, "Adding IOReg GPU AGX SchedulerState info to spindump", buf, 2u);
        }

        [v311 addEntriesFromDictionary:v255];
      }

      goto LABEL_248;
    }
  }

  [v311 setObject:v312 forKeyedSubscript:@"UserAction"];
  [v311 setObject:v305 forKeyedSubscript:@"StateInfo"];
  v263 = sub_10001F8F8(v319, v315);
  v264 = v263;
  if (v263)
  {
    v265 = [v263 objectForKeyedSubscript:@"hangHistoryCount"];
    v266 = [v265 intValue] > 1;

    if (v266)
    {
      [v311 setObject:v264 forKeyedSubscript:@"hangHistoryData"];
    }
  }

  v267 = [NSJSONSerialization dataWithJSONObject:v311 options:1 error:0];
  v268 = v343[5];
  v343[5] = v267;

  v269 = [NSString stringWithFormat:@"%@-%@", v306, v298];
  [v304 addEntriesFromDictionary:v301];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  *&buf[24] = sub_100011518;
  *&v358 = sub_100011528;
  *(&v358 + 1) = 0;
  v270 = [NSString stringWithFormat:@"%lu", v295];
  v271 = v292;
  v272 = v310;
  v322 = v272;
  v273 = v269;
  v274 = OSAWriteLogForSubmission();

  if (v274)
  {
    v321 = v294;
    AnalyticsSendEventLazy();
    v276 = objc_alloc_init(NSMutableDictionary);
    v277 = [v318 objectForKeyedSubscript:@"DisplayedInHUD"];

    if (v277)
    {
      v278 = [v318 objectForKeyedSubscript:@"DisplayedInHUD"];
      [v276 setObject:v278 forKeyedSubscript:@"displayedInHUD"];
    }

    v279 = [v318 objectForKeyedSubscript:@"HangNotificationUUID"];

    if (v279)
    {
      v280 = [v318 objectForKeyedSubscript:@"HangNotificationUUID"];
      [v276 setObject:v280 forKeyedSubscript:@"hangUUID"];
    }

    if (v309)
    {
      [v276 setObject:v309 forKeyedSubscript:@"processPath"];
    }

    if (v295)
    {
      v281 = [NSNumber numberWithInteger:?];
      [v276 setObject:v281 forKeyedSubscript:@"htBugType"];
    }

    if (v306)
    {
      v282 = [NSNumber numberWithInteger:sub_10000B13C(v306)];
      [v276 setObject:v282 forKeyedSubscript:@"hangEventType"];
    }

    if (v272 || *(*&buf[8] + 40))
    {
      v283 = objc_alloc_init(NSMutableArray);
      v284 = v283;
      if (v272)
      {
        [v283 addObject:v272];
      }

      if (*(*&buf[8] + 40))
      {
        [v284 addObject:?];
      }

      [v276 setObject:v284 forKeyedSubscript:@"logFilePaths"];
    }

    v285 = [NSNumber numberWithDouble:v197];
    [v276 setObject:v285 forKeyedSubscript:@"startWallTime"];

    v286 = [NSNumber numberWithDouble:v15];
    [v276 setObject:v286 forKeyedSubscript:@"durationMS"];

    HTReportHangLogsProcessed();
  }

  else
  {
    v287 = sub_100001684(v275);
    if (os_log_type_enabled(v287, OS_LOG_TYPE_ERROR))
    {
      v288 = [v272 lastPathComponent];
      sub_10003ED1C(v288, v273, v350, v287);
    }

    if (a4)
    {
      sub_10000DA84(0, 9uLL, v296, v295);
    }
  }

  v131 = *(*&buf[8] + 40);

  _Block_object_dispose(buf, 8);
  v317 = 0;
LABEL_113:

LABEL_140:
  _Block_object_dispose(&v342, 8);

  return v131;
}

uint64_t sub_1000046E4(uint64_t a1, uint64_t a2)
{
  if (qword_1000903D8 != -1)
  {
    sub_10003D92C();
  }

  return qword_1000903E0;
}

const __CFString *sub_10000471C(uint64_t a1)
{
  if ((a1 - 1) > 4)
  {
    return @"Search Status Unknown";
  }

  else
  {
    return off_1000856D8[a1 - 1];
  }
}

id sub_10000739C()
{
  if (qword_100090388 != -1)
  {
    sub_10003CE94();
  }

  v0 = objc_retainBlock(qword_100090390);

  return v0;
}

void sub_1000073E4(id a1)
{
  if (!qword_100090390)
  {
    qword_100090390 = &stru_100084A88;
  }
}

int64_t sub_100007404(id a1, id a2, id a3)
{
  v4 = a2;
  v5 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass & 1) != 0 && (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), (isKindOfClass))
  {
    v7 = v5;
    v8 = [v4 objectForKeyedSubscript:@"timestamp"];
    v9 = [v7 objectForKeyedSubscript:@"timestamp"];
    objc_opt_class();
    v10 = objc_opt_isKindOfClass();
    if (v10 & 1) != 0 && (objc_opt_class(), v10 = objc_opt_isKindOfClass(), (v10))
    {
      v11 = [v8 unsignedLongLongValue];
      v12 = [v9 unsignedLongLongValue];
      if (v11 < v12)
      {
        v13 = -1;
      }

      else
      {
        v13 = v11 > v12;
      }
    }

    else
    {
      v14 = sub_100001684(v10);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10003CF54(v8, v9);
      }

      v13 = 0;
    }
  }

  else
  {
    v7 = sub_100001684(isKindOfClass);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10003CEA8(v4, v5);
    }

    v13 = 0;
  }

  return v13;
}

uint64_t sub_100007588(void *a1)
{
  v1 = a1;
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (objc_opt_respondsToSelector() & 1) != 0)
  {
    if ([v1 count])
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v2 = v1;
      v3 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v3)
      {
        v4 = v3;
        v5 = 0;
        v6 = *v17;
        while (2)
        {
          v7 = 0;
          v8 = v5;
          do
          {
            if (*v17 != v6)
            {
              objc_enumerationMutation(v2);
            }

            v9 = *(*(&v16 + 1) + 8 * v7);
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();
            if ((isKindOfClass & 1) == 0)
            {
              v11 = sub_100001684(isKindOfClass);
              if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
              {
                sub_10003D000(v9);
              }

              goto LABEL_32;
            }

            if ((objc_opt_respondsToSelector() & 1) == 0)
            {
              goto LABEL_33;
            }

            v11 = v9;
            v12 = [v11 objectForKey:@"cpuRoleEnum"];

            if (!v12)
            {
              goto LABEL_32;
            }

            v5 = [v11 objectForKey:@"timestamp"];
            if (!v5)
            {
              goto LABEL_31;
            }

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_respondsToSelector() & 1) == 0)
            {
              goto LABEL_31;
            }

            v5 = v5;
            if (v8)
            {
              v13 = [v8 unsignedLongLongValue];
              if (v13 >= [v5 unsignedLongLongValue])
              {

LABEL_31:
LABEL_32:

LABEL_33:
                v14 = 0;
                goto LABEL_34;
              }
            }

            v7 = v7 + 1;
            v8 = v5;
          }

          while (v4 != v7);
          v4 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
          if (v4)
          {
            continue;
          }

          break;
        }

        v14 = 1;
        v8 = v5;
LABEL_34:
      }

      else
      {
        v14 = 1;
      }
    }

    else
    {
      v2 = sub_100001684(0);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
      {
        sub_10003D08C(v2);
      }

      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

id sub_100007894(void *a1, unint64_t a2, unint64_t a3)
{
  v5 = a1;
  v6 = v5;
  if (a3 >= a2 && sub_100007588(v5))
  {
    v97 = a3 - a2;
    v7 = [v6 mutableCopy];
    v119 = @"timestamp";
    v8 = [NSNumber numberWithUnsignedLongLong:a2];
    v120 = v8;
    v9 = &MGGetBoolAnswer_ptr;
    v10 = [NSDictionary dictionaryWithObjects:&v120 forKeys:&v119 count:1];
    v11 = [(__CFString *)v7 count];
    sub_10000739C();
    v12 = v100 = a2;
    v13 = [(__CFString *)v7 indexOfObject:v10 inSortedRange:0 options:v11 usingComparator:1024, v12];

    if (!v13)
    {
      v117[1] = @"timestamp";
      v118[0] = &off_10008AA08;
      v117[0] = @"cpuRoleEnum";
      v14 = [NSNumber numberWithUnsignedLongLong:v100];
      v118[1] = v14;
      v15 = [NSDictionary dictionaryWithObjects:v118 forKeys:v117 count:2];

      [(__CFString *)v7 insertObject:v15 atIndex:0];
      v13 = 1;
    }

    v16 = [(__CFString *)v7 objectAtIndexedSubscript:v13 - 1];
    v17 = [v16 objectForKeyedSubscript:@"cpuRoleEnum"];
    v96 = [v17 unsignedCharValue];

    v99 = v16;
    v18 = [v16 objectForKeyedSubscript:@"timestamp"];
    v19 = [v18 unsignedLongLongValue];

    v21 = sub_10000B590(v100 - v19, v20);
    v98 = [NSNumber numberWithDouble:sub_10000B48C(3u, v21)];
    v115 = @"timestamp";
    v91 = a3;
    v22 = [NSNumber numberWithUnsignedLongLong:a3];
    v116 = v22;
    v23 = [NSDictionary dictionaryWithObjects:&v116 forKeys:&v115 count:1];
    v24 = [(__CFString *)v7 count];
    v25 = sub_10000739C();
    v26 = [(__CFString *)v7 indexOfObject:v23 inSortedRange:0 options:v24 usingComparator:1024, v25];

    if (v26)
    {
      v95 = v6;
      v94 = [(__CFString *)v7 objectAtIndexedSubscript:v26 - 1];
      v28 = [v94 objectForKeyedSubscript:@"cpuRoleEnum"];
      v93 = [v28 unsignedCharValue];

      v29 = +[NSMutableDictionary dictionary];
      v30 = v29;
      v31 = &MGGetBoolAnswer_ptr;
      if (v13 - 1 <= (v26 - 1))
      {
        v42 = 0;
        v86 = &v26[-v13];
        v43 = &v26[-v13 + 1];
        v101 = v29;
        v90 = v13;
        do
        {
          v44 = [(__CFString *)v7 objectAtIndexedSubscript:&v42[v13 - 1]];
          v45 = v44;
          if (v44 && (objc_opt_class(), v44 = objc_opt_isKindOfClass(), (v44 & 1) != 0))
          {
            v46 = [v45 objectForKeyedSubscript:@"cpuRoleEnum"];
            v47 = v46;
            if (v46 && (objc_opt_class(), v46 = objc_opt_isKindOfClass(), (v46 & 1) != 0))
            {
              isKindOfClass = [v45 objectForKeyedSubscript:@"timestamp"];
              v49 = isKindOfClass;
              if (isKindOfClass && (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), (isKindOfClass & 1) != 0))
              {
                if (v42)
                {
                  v50 = [(__CFString *)v7 objectAtIndexedSubscript:&v42[v13 - 2]];
                  v87 = [v50 objectForKeyedSubscript:@"cpuRoleEnum"];

                  v51 = [v87 stringValue];
                  v52 = [v101 objectForKey:v51];
                  v53 = [v52 objectForKey:@"intervalsInCPURole"];
                  v92 = [v53 lastObject];

                  v31 = &MGGetBoolAnswer_ptr;
                  v89 = v49;
                }

                else
                {
                  v92 = [v31[265] numberWithUnsignedInt:0];
                  v89 = [v31[265] numberWithUnsignedLong:v100];
                }

                if (v86 == v42)
                {
                  v61 = [v31[265] numberWithUnsignedLongLong:v91];
                }

                else
                {
                  v62 = [(__CFString *)v7 objectAtIndexedSubscript:&v42[v13]];
                  v61 = [v62 objectForKeyedSubscript:@"timestamp"];
                }

                v63 = v31[265];
                v85 = v61;
                v64 = [v61 unsignedLongLongValue];
                v65 = v31;
                v66 = v64;
                v67 = [v89 unsignedLongLongValue];
                v88 = [v63 numberWithUnsignedInt:{sub_10000B548(v66 - v67, v68)}];
                v69 = [v65[265] numberWithUnsignedInt:{-[NSObject unsignedIntValue](v92, "unsignedIntValue") + objc_msgSend(v88, "unsignedIntValue")}];
                v70 = [v47 stringValue];
                v71 = [v101 objectForKey:v70];

                v83 = v71;
                v84 = v69;
                if (v71)
                {
                  v72 = [v71 objectForKeyedSubscript:@"intervalsInCPURole"];
                  [v72 addObject:v92];
                  v82 = v72;
                  [v72 addObject:v69];
                  v73 = [v71 objectForKeyedSubscript:@"timeInCPURole"];
                  v74 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v88 unsignedIntValue] + objc_msgSend(v73, "unsignedIntValue"));
                  v75 = v71;
                  v76 = v73;
                  [v75 setObject:v74 forKeyedSubscript:@"timeInCPURole"];
                }

                else
                {
                  v77 = +[NSMutableArray array];
                  [v77 addObject:v92];
                  [v77 addObject:v69];
                  v107[0] = @"cpuRoleName";
                  [v47 unsignedCharValue];
                  v78 = NSStringFromRBSRole();
                  v108[0] = v78;
                  v108[1] = v47;
                  v107[1] = @"cpuRoleEnum";
                  v107[2] = @"intervalsInCPURole";
                  v82 = v77;
                  v108[2] = v77;
                  v108[3] = &off_10008AA98;
                  v107[3] = @"percentInCPURole";
                  v107[4] = @"timeInCPURole";
                  v108[4] = v88;
                  v79 = [NSDictionary dictionaryWithObjects:v108 forKeys:v107 count:5];
                  v76 = [NSMutableDictionary dictionaryWithDictionary:v79];

                  v74 = [v47 stringValue];
                  [v101 setValue:v76 forKey:v74];
                }

                v9 = &MGGetBoolAnswer_ptr;
                v31 = &MGGetBoolAnswer_ptr;
                v60 = v92;
              }

              else
              {
                v58 = v43;
                v59 = sub_100001684(isKindOfClass);
                if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
                {
                  v80 = objc_opt_class();
                  *buf = 138412802;
                  v110 = @"timestamp";
                  v111 = 2112;
                  v112 = v7;
                  v113 = 2112;
                  v114 = v80;
                  v81 = v80;
                  v60 = v59;
                  _os_log_error_impl(&_mh_execute_header, v59, OS_LOG_TYPE_ERROR, "Failed to parse State info dictionary object of key '%@' from sorted array '%@', object is type of class '%@'", buf, 0x20u);

                  v31 = &MGGetBoolAnswer_ptr;
                }

                else
                {
                  v60 = v59;
                }

                v43 = v58;
                v13 = v90;
              }
            }

            else
            {
              v49 = sub_100001684(v46);
              if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
              {
                v56 = objc_opt_class();
                *buf = 138412802;
                v110 = @"cpuRoleEnum";
                v111 = 2112;
                v112 = v7;
                v113 = 2112;
                v114 = v56;
                v57 = v56;
                _os_log_error_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, "Failed to parse State info dictionary object of key '%@' from sorted array '%@', object is type of class '%@'", buf, 0x20u);

                v31 = &MGGetBoolAnswer_ptr;
              }
            }

            v30 = v101;
          }

          else
          {
            v47 = sub_100001684(v44);
            if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
            {
              v54 = objc_opt_class();
              *buf = 138412546;
              v110 = v7;
              v111 = 2112;
              v112 = v54;
              v55 = v54;
              _os_log_error_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "Failed to parse State info dictionary object from sorted array '%@', object is type of class '%@'", buf, 0x16u);

              v31 = &MGGetBoolAnswer_ptr;
            }
          }

          ++v42;
        }

        while (v43 != v42);
      }

      +[NSMutableArray array];
      v32 = v9;
      v102[0] = _NSConcreteStackBlock;
      v102[1] = 3221225472;
      v102[2] = sub_100008360;
      v103 = v102[3] = &unk_100084AB0;
      v104 = sub_10000B548(v97, v33);
      v34 = v103;
      [v30 enumerateKeysAndObjectsUsingBlock:v102];
      v105[0] = @"startCPURole";
      v35 = [v31[265] numberWithUnsignedChar:v96];
      v106[0] = v35;
      v105[1] = @"endCPURole";
      v36 = [v31[265] numberWithUnsignedChar:v93];
      v37 = v98;
      v106[1] = v36;
      v106[2] = v98;
      v105[2] = @"secondsSinceCPURoleTransitionBeforeHangStart";
      v105[3] = @"cpuRoleBreakdown";
      v106[3] = v34;
      v38 = [v32[298] dictionaryWithObjects:v106 forKeys:v105 count:4];

      v39 = v94;
      v6 = v95;
      v40 = v99;
    }

    else
    {
      v39 = sub_100001684(v27);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_FAULT))
      {
        sub_10003D0D0();
      }

      v38 = 0;
      v37 = v98;
      v40 = v99;
    }
  }

  else
  {
    v38 = 0;
  }

  return v38;
}

void sub_100008360(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  v4 = [v8 objectForKeyedSubscript:@"timeInCPURole"];
  [v4 floatValue];
  v6 = v5 / *(a1 + 40);

  v7 = [NSNumber numberWithDouble:sub_10000B48C(3u, v6)];
  [v8 setObject:v7 forKeyedSubscript:@"percentInCPURole"];

  [*(a1 + 32) addObject:v8];
}

id sub_100008438(id a1)
{

  return a1;
}

id sub_100008468(uint64_t a1)
{
  if (qword_1000903A0 != -1)
  {
    sub_10003D154();
  }

  v2 = qword_100090398;

  return v2;
}

void sub_1000084AC(id a1)
{
  if (!qword_100090398)
  {
    qword_100090398 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.hangtracer"];

    _objc_release_x1();
  }
}

id sub_100009274(uint64_t a1)
{
  v10[0] = @"successfulTailspinSaves";
  v2 = [NSNumber numberWithUnsignedInt:*(a1 + 40)];
  v11[0] = v2;
  v10[1] = @"tailspinsProcessed";
  v3 = [NSNumber numberWithUnsignedInt:*(a1 + 44)];
  v11[1] = v3;
  v10[2] = @"tailspinsUnprocessed";
  v4 = [NSNumber numberWithUnsignedInt:*(a1 + 48)];
  v11[2] = v4;
  v10[3] = @"tailspinsInSpool";
  v5 = [NSNumber numberWithUnsignedInt:*(a1 + 52)];
  v11[3] = v5;
  v10[4] = @"tailspinsOverReportingThresholds";
  v6 = [NSNumber numberWithUnsignedInt:*(a1 + 56)];
  v11[4] = v6;
  v10[5] = @"oldestTailspinCreationSeconds";
  v7 = [NSNumber numberWithDouble:*(a1 + 32)];
  v11[5] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:6];

  return v8;
}

void sub_100009ED0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

id sub_100009EF0(id a1)
{

  return a1;
}

void sub_100009F30(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_fault_impl(a1, v8, OS_LOG_TYPE_FAULT, a4, va, 0x2Au);
}

id sub_100009F50(void *a1, const __CFUUID *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a3;
  v9 = a4;
  if (a2)
  {
    v10 = CFUUIDCreateString(0, a2);
  }

  else
  {
    v10 = 0;
  }

  v66 = v8;
  if (!v8)
  {
    v59 = 0;
    v60 = 0;
    v61 = 0;
    v62 = 0;
    v64 = 0;
    v29 = 0;
    v30 = 0;
    v65 = 0;
    v11 = 1;
    goto LABEL_43;
  }

  v11 = 1;
  v12 = CFURLCreateWithFileSystemPath(0, v8, kCFURLPOSIXPathStyle, 1u);
  if (!v12)
  {
    goto LABEL_21;
  }

  v13 = v12;
  v14 = _CFBundleCreateWithExecutableURLIfLooksLikeBundle();
  if (!v14)
  {
    CFRelease(v13);
LABEL_21:
    v59 = 0;
    v60 = 0;
    v61 = 0;
    v62 = 0;
    v64 = 0;
    v29 = 0;
    v30 = 0;
    v65 = 0;
    goto LABEL_43;
  }

  v15 = v14;
  Identifier = CFBundleGetIdentifier(v14);
  cf = CFBundleGetValueForInfoDictionaryKey(v15, kCFBundleVersionKey);
  ValueForInfoDictionaryKey = CFBundleGetValueForInfoDictionaryKey(v15, _kCFBundleShortVersionStringKey);
  v17 = CFBundleCopyBundleURL(v15);
  if (Identifier)
  {
    CFRetain(Identifier);
  }

  v65 = Identifier;
  if (cf)
  {
    CFRetain(cf);
  }

  if (ValueForInfoDictionaryKey)
  {
    CFRetain(ValueForInfoDictionaryKey);
  }

  CFRelease(v15);
  CFRelease(v13);
  if (v17)
  {
    v58 = v10;
    v18 = v17;
    v19 = [(__CFURL *)v18 pathExtension];
    v20 = [v19 isEqualToString:@"appex"];

    if (v20)
    {
      v72 = 0;
      v21 = [[LSApplicationExtensionRecord alloc] initWithURL:v18 error:&v72];
      v22 = v72;
      v23 = v22;
      if (v21)
      {
        v24 = [v21 containingBundleRecord];
        v25 = v24;
        if (v24)
        {
          v26 = [v24 URL];
          v27 = v26;
          if (v26)
          {
            v27 = v26;

            v28 = v27;
          }

          else
          {
            v63 = v9;
            v31 = sub_100001684(0);
            if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
            {
              sub_10003D5FC(v18, v31);
            }

            v28 = v18;
            v9 = v63;
          }
        }

        else
        {
          v27 = sub_100001684(0);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
          {
            sub_10003D674(v18, v27);
          }

          v28 = v18;
        }
      }

      else
      {
        v25 = sub_100001684(v22);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          sub_10003D6EC(v18, v23, v25);
        }

        v28 = v18;
      }
    }

    else
    {
      v23 = 0;
      v28 = v18;
    }

    v71 = v23;
    v11 = 1;
    v32 = [[LSApplicationRecord alloc] initWithURL:v28 allowPlaceholder:1 error:&v71];
    v33 = v71;

    v64 = v18;
    if (v32)
    {
      v34 = v28;
      v35 = [v32 iTunesMetadata];
      v62 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v35 storeItemIdentifier]);

      v36 = [v32 iTunesMetadata];
      v37 = [v36 distributorInfo];
      v61 = [v37 distributorID];

      v38 = [v32 iTunesMetadata];
      v60 = [v38 storeCohortWithError:0];

      v11 = [v32 developerType] == 1;
      v39 = [v32 entitlements];
      [v39 objectForKey:@"beta-reports-active" ofClass:objc_opt_class()];
      v41 = v40 = v9;

      v28 = v34;
      v42 = v41 == 0;
      v9 = v40;
      v43 = !v42;
      v59 = v43;
    }

    else
    {
      v59 = 0;
      v60 = 0;
      v61 = 0;
      v62 = 0;
    }

    v10 = v58;
  }

  else
  {
    v59 = 0;
    v60 = 0;
    v61 = 0;
    v62 = 0;
    v64 = 0;
    v11 = 1;
  }

  v30 = cf;
  v29 = ValueForInfoDictionaryKey;
LABEL_43:
  v44 = @"Unknown";
  v45 = v7;
  if (v7)
  {
    v44 = v7;
  }

  v73[0] = kCRProblemReportAppNameKey;
  v73[1] = kOSAIPSHeaderAppNameKey;
  v74[0] = v44;
  v74[1] = v44;
  v46 = &stru_100085FF8;
  v47 = v10;
  if (v10)
  {
    v48 = v10;
  }

  else
  {
    v48 = &stru_100085FF8;
  }

  v73[2] = @"slice_uuid";
  v73[3] = @"build_version";
  cfa = v30;
  v70 = v29;
  if (v30)
  {
    v49 = v30;
  }

  else
  {
    v49 = &stru_100085FF8;
  }

  v74[2] = v48;
  v74[3] = v49;
  if (v29)
  {
    v46 = v29;
  }

  v74[4] = v46;
  v73[4] = @"app_version";
  v73[5] = @"is_first_party";
  v50 = [NSNumber numberWithBool:v11, v58];
  v74[5] = v50;
  v73[6] = @"share_with_app_devs";
  v51 = [NSNumber numberWithBool:AppAnalyticsEnabled()];
  v74[6] = v51;
  v73[7] = kOSAIPSHeaderIncidentIDKey;
  v52 = v9;
  v53 = [v9 objectForKeyedSubscript:@"HangUUID"];
  v54 = v53;
  if (!v53)
  {
    v7 = +[NSUUID UUID];
    v54 = [(__CFString *)v7 UUIDString];
  }

  v74[7] = v54;
  v55 = [NSDictionary dictionaryWithObjects:v74 forKeys:v73 count:8];
  v56 = [v55 mutableCopy];

  if (!v53)
  {
  }

  if (v65)
  {
    [v56 setObject:v65 forKeyedSubscript:kCRProblemReportBundleIDKey];
  }

  if (v59)
  {
    [v56 setObject:&__kCFBooleanTrue forKeyedSubscript:@"is_beta"];
    if (v60)
    {
      [v56 setObject:v60 forKeyedSubscript:@"app_cohort"];
    }
  }

  if (v62)
  {
    [v56 setObject:v62 forKeyedSubscript:@"adam_id"];
  }

  if (v61)
  {
    [v56 setObject:v61 forKeyedSubscript:@"distributor_id"];
  }

  if (v47)
  {
    CFRelease(v47);
  }

  if (v65)
  {
    CFRelease(v65);
  }

  if (cfa)
  {
    CFRelease(cfa);
  }

  if (v70)
  {
    CFRelease(v70);
  }

  return v56;
}

id sub_10000A62C()
{
  v0 = __chkstk_darwin();
  bzero(buffer, 0x1000uLL);
  if (proc_pidpath(v0, buffer, 0x1000u))
  {
    v1 = [NSString stringWithUTF8String:buffer];
    if (!v1)
    {
      v1 = [NSString stringWithCString:buffer encoding:1];
      v2 = sub_100001684(v1);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
      {
        sub_10003D774(v1, v2);
      }
    }
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

uint64_t sub_10000A740(const char *a1, void *a2)
{
  v4 = proc_listpids(1u, 0, 0, 0);
  if (v4 <= 0)
  {
    v14 = __error();
    v15 = [NSString stringWithFormat:@"Unable to list all pids with error: %s", strerror(*v14)];
    v16 = sub_100001684(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10003D7EC();
    }

    if (!a2)
    {
      goto LABEL_19;
    }

    v17 = NSPOSIXErrorDomain;
    v18 = *__error();
    v33 = NSLocalizedDescriptionKey;
    v34 = v15;
    v19 = &v34;
    v20 = &v33;
    goto LABEL_18;
  }

  v5 = (v4 + 80);
  v6 = malloc_type_malloc(v5, 0x3D27CE9EuLL);
  if (!v6)
  {
    v21 = __error();
    v15 = [NSString stringWithFormat:@"Unable to allocate pids buffer of size %d with error: %s", v5, strerror(*v21)];
    v22 = sub_100001684(v15);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_10003D7EC();
    }

    if (!a2)
    {
      goto LABEL_19;
    }

    v17 = NSPOSIXErrorDomain;
    v18 = *__error();
    v31 = NSLocalizedDescriptionKey;
    v32 = v15;
    v19 = &v32;
    v20 = &v31;
LABEL_18:
    v23 = [NSDictionary dictionaryWithObjects:v19 forKeys:v20 count:1];
    *a2 = [NSError errorWithDomain:v17 code:v18 userInfo:v23];

LABEL_19:
    return 0xFFFFFFFFLL;
  }

  v7 = v6;
  v8 = proc_listpids(1u, 0, v6, v5);
  if (v8 < 4)
  {
LABEL_8:
    v11 = 0xFFFFFFFFLL;
  }

  else
  {
    v9 = v8 >> 2;
    v10 = v7;
    while (1)
    {
      memset(buffer, 0, sizeof(buffer));
      v12 = *v10++;
      v11 = v12;
      if (proc_name(v12, buffer, 0x20u) >= 1)
      {
        v13 = strcmp(buffer, a1);
        if (!v13)
        {
          break;
        }
      }

      if (!--v9)
      {
        goto LABEL_8;
      }
    }

    v25 = sub_100001684(v13);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      v27 = v11;
      v28 = 2080;
      v29 = a1;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Found matching pid:%d for processName:%s", buf, 0x12u);
    }
  }

  free(v7);
  return v11;
}

__CFString *sub_10000AA30(void *a1)
{
  v1 = a1;
  if (v1 && (v2 = CFURLCreateWithFileSystemPath(0, v1, kCFURLPOSIXPathStyle, 1u)) != 0)
  {
    v3 = v2;
    v4 = _CFBundleCreateWithExecutableURLIfLooksLikeBundle();
    if (v4)
    {
      v5 = v4;
      v6 = CFBundleGetIdentifier(v4);
      CFRelease(v5);
    }

    else
    {
      v6 = &stru_100085FF8;
    }

    CFRelease(v3);
  }

  else
  {
    v6 = &stru_100085FF8;
  }

  return v6;
}

id sub_10000AAE4(uint64_t a1, uint64_t a2)
{
  v3 = [NSDictionary dictionaryWithObject:a2 forKey:NSLocalizedDescriptionKey];
  v4 = [NSError errorWithDomain:@"SentryTailspinError" code:a1 userInfo:v3];

  return v4;
}

uint64_t sub_10000AB70(void *a1, int a2)
{
  v3 = a1;
  v4 = +[NSFileManager defaultManager];
  v17 = 0;
  v5 = [v4 fileExistsAtPath:v3 isDirectory:&v17];
  if (v5)
  {
    v6 = v17 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = sub_100001684(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v21 = v3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Directory doesn't exist -> trying to create directory at path: %@", buf, 0xCu);
    }

    if (a2)
    {
      v18 = NSFileOwnerAccountName;
      v19 = @"mobile";
      v8 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    }

    else
    {
      v8 = 0;
    }

    v16 = 0;
    [v4 createDirectoryAtPath:v3 withIntermediateDirectories:1 attributes:v8 error:&v16];
    v10 = v16;
    v11 = +[NSFileManager defaultManager];
    v12 = [v11 fileExistsAtPath:v3 isDirectory:&v17];

    if (v12 && v17 == 1)
    {
      v14 = sub_100001684(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v21 = v3;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Successfully created directory at path %@", buf, 0xCu);
      }

      v9 = 1;
    }

    else
    {
      v14 = sub_100001684(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10003D868(v3, v10, v14);
      }

      v9 = 0;
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

id sub_10000ADAC(uint64_t a1)
{
  if (qword_1000903B0 != -1)
  {
    sub_10003D8F0();
  }

  v2 = qword_1000903A8;

  return v2;
}

void sub_10000ADF0(id a1)
{
  qword_1000903A8 = os_log_create("com.apple.hangtracer", "signpost_hang");

  _objc_release_x1();
}

id sub_10000AE34(uint64_t a1)
{
  if (qword_1000903C0 != -1)
  {
    sub_10003D904();
  }

  v2 = qword_1000903B8;

  return v2;
}

void sub_10000AE78(id a1)
{
  qword_1000903B8 = os_log_create("com.apple.hangtracer", "hangreporter_tailspin_conversion");

  _objc_release_x1();
}

void sub_10000AEBC(void *a1, void *a2, os_signpost_id_t a3, uint64_t a4, void *a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a5;
  *buf = 0;
  mach_get_times();
  if (os_signpost_enabled(v11))
  {
    v12 = v11;
    v13 = v12;
    if (a3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      v14 = @"Unknown";
      *buf = 134349826;
      *&buf[4] = a3;
      if (v10)
      {
        v15 = v10;
      }

      else
      {
        v15 = @"Unknown";
      }

      v17 = 2050;
      v18 = a4;
      v19 = 2114;
      if (v9)
      {
        v14 = v9;
      }

      v20 = v15;
      v21 = 2114;
      v22 = v14;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_EVENT, a3, "HangInterval", "%{public, signpost.description:begin_time}llu, %{public, signpost.description:end_time}llu, BundleIdOverride=%{public, signpost.description:attribute}@ type=%{public, signpost.telemetry:string2}@ enableTelemetry=YES ", buf, 0x2Au);
    }
  }
}

__CFString *sub_10000B024(unint64_t a1)
{
  if (a1 <= 0xA)
  {
    a1 = *off_100084B50[a1];
  }

  return a1;
}

const __CFString *sub_10000B078(unint64_t a1)
{
  if (a1 > 0xB)
  {
    return @"failed due to unknown reason";
  }

  else
  {
    return *(&off_100084BA8 + a1);
  }
}

uint64_t sub_10000B09C(int a1, int a2, double a3)
{
  if (a1)
  {
    v4 = +[HTPrefs sharedPrefs];
    v5 = [v4 runloopLongHangDurationThresholdMSec];

    if (v5 <= a3)
    {
      return 222;
    }

    else
    {
      v6 = +[HTPrefs sharedPrefs];
      v7 = [v6 runloopHangDurationThresholdMSec];

      if (v7 <= a3)
      {
        return 223;
      }

      else
      {
        return 310;
      }
    }
  }

  else if (a2)
  {
    return 328;
  }

  else
  {
    return 228;
  }
}

uint64_t sub_10000B13C(void *a1)
{
  v1 = a1;
  if ([v1 containsString:@"UIKit-runloop"])
  {
    v2 = 0;
  }

  else if ([v1 containsString:@"Fence-hang"])
  {
    v2 = 1;
  }

  else if ([v1 containsString:@"Slow-Launch"])
  {
    v2 = 2;
  }

  else if ([v1 containsString:@"Sentry"])
  {
    v2 = 3;
  }

  else if ([v1 containsString:@"Force-Quit"])
  {
    v2 = 4;
  }

  else
  {
    v2 = 5;
  }

  return v2;
}

double sub_10000B204(unint64_t a1)
{
  mach_get_times();
  v3 = sub_10000B548(0, v2) / 1000.0;
  return 0 - kCFAbsoluteTimeIntervalSince1970 + 0 / 1000000000.0 + sub_10000B548(a1, v4) / 1000.0 - v3;
}

id sub_10000B2A8(void *a1)
{
  v1 = a1;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v5 = *v15;
    v6 = -1;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v1);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v9 = [v8 objectForKeyedSubscript:@"StartTime"];
        v10 = [v9 longLongValue];

        if (v6 > v10)
        {
          v11 = [v8 objectForKeyedSubscript:@"StartTime"];
          v6 = [v11 longLongValue];

          v12 = v8;
          v4 = v12;
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

NSDate *sub_10000B420(uint64_t a1, void *a2, unint64_t a3)
{
  [a2 timeIntervalSinceReferenceDate];
  v7 = sub_10000B5E4((v5 * 1000.0), v6);
  v9 = sub_10000B590((v7 - a3) + a1, v8);

  return [NSDate dateWithTimeIntervalSinceReferenceDate:v9];
}

double sub_10000B4C0(uint64_t a1, uint64_t a2)
{
  if (qword_1000903D0 != -1)
  {
    sub_10003D918();
  }

  return *&qword_1000903C8;
}

void sub_10000B4F8(id a1)
{
  info = 0;
  mach_timebase_info(&info);
  *&qword_1000903C8 = ((info.numer * 0.000001) / info.denom);
}

double sub_10000B548(unint64_t a1, uint64_t a2)
{
  if (qword_1000903D0 != -1)
  {
    sub_10003D918();
  }

  return *&qword_1000903C8 * a1;
}

double sub_10000B590(unint64_t a1, uint64_t a2)
{
  if (qword_1000903D0 != -1)
  {
    sub_10003D918();
  }

  return *&qword_1000903C8 * a1 / 1000.0;
}

double sub_10000B5E4(unint64_t a1, uint64_t a2)
{
  if (qword_1000903D0 != -1)
  {
    sub_10003D918();
  }

  return a1 / *&qword_1000903C8;
}

HRFenceInfo *sub_10000BA70(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  v8 = [NSNumber numberWithLongLong:a2];
  v9 = [v7 objectForKey:v8];

  if (!v9)
  {
    v9 = [[HRFenceInfo alloc] initWithFenceName:a2 traceStart:a3 traceEnd:a4];
    v10 = [NSNumber numberWithLongLong:a2];
    [v7 setObject:v9 forKey:v10];
  }

  return v9;
}

HRHandleInfo *sub_10000BB4C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = a1;
  v12 = [NSNumber numberWithLongLong:a4];
  v13 = [v11 objectForKey:v12];

  if (!v13)
  {
    v13 = objc_alloc_init(NSMutableDictionary);
    v14 = [NSNumber numberWithLongLong:a4];
    [v11 setObject:v13 forKey:v14];
  }

  v15 = [NSNumber numberWithLongLong:a2];
  v16 = [v13 objectForKey:v15];

  if (!v16)
  {
    v16 = objc_alloc_init(NSMutableDictionary);
    v17 = [NSNumber numberWithLongLong:a2];
    [v13 setObject:v16 forKey:v17];
  }

  v18 = [NSNumber numberWithLongLong:a3];
  v19 = [v16 objectForKey:v18];

  if (!v19)
  {
    v19 = [[HRHandleInfo alloc] initWithHandleName:a3 fenceName:a2 traceStart:a5 traceEnd:a6];
    v20 = [NSNumber numberWithLongLong:a3];
    [v16 setObject:v19 forKey:v20];
  }

  return v19;
}

uint64_t sub_10000BD14(void *a1, void *a2, NSObject **a3)
{
  v5 = a1;
  v6 = a2;
  v7 = +[HTPrefs sharedPrefs];
  v8 = [v7 shouldSaveTailspins];

  if (v8)
  {
    v61[0] = _NSConcreteStackBlock;
    v61[1] = 3221225472;
    v61[2] = sub_10000C5A0;
    v61[3] = &unk_100085258;
    v62 = v6;
    v10 = v5;
    v63 = v10;
    v11 = objc_retainBlock(v61);
    v12 = (v11[2])();
    v13 = @"/var/root/Library/Logs/CrashReporter/DiagnosticLogs/HangTracer/";
    v14 = @"/var/mobile/Library/Logs/CrashReporter/DiagnosticLogs/HangTracer/";
    v15 = sub_10000AB70(v13, 0);
    if (!v15 || (v15 = sub_10000AB70(v14, 1), (v15 & 1) == 0))
    {
      v20 = sub_100001684(v15);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_10003D940();
      }

      v34 = 0;
      goto LABEL_59;
    }

    v58 = v14;
    v16 = +[HTPrefs sharedPrefs];
    v17 = [v16 shouldCompressSavedTailspins];

    v18 = [(__CFString *)v13 stringByAppendingPathComponent:v12];
    v19 = v18;
    v59 = v12;
    if (!v17)
    {
      v20 = [v18 stringByAppendingPathExtension:@"processing"];

      v35 = link([v10 UTF8String], [v20 UTF8String]);
      v36 = v35;
      v37 = sub_100001684(v35);
      v38 = v37;
      if (v36)
      {
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          sub_10003D9B0();
        }

        v34 = 0;
        v14 = v58;
        goto LABEL_58;
      }

      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        errnum = 138412546;
        v65 = v10;
        v66 = 2112;
        v67 = v20;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Successfully hard-linked tailspin file: %@ -> %@", &errnum, 0x16u);
      }

LABEL_35:
      v38 = [(__CFString *)v58 stringByAppendingPathComponent:v59];
      v40 = [v20 containsString:@".gz"];
      if (v40)
      {
        v41 = [v38 stringByAppendingPathExtension:@"gz"];

        v38 = v41;
      }

      v42 = sub_100001684(v40);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
      {
        errnum = 138412546;
        v65 = v20;
        v66 = 2112;
        v67 = v38;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_INFO, "Moving '%@' -> '%@'", &errnum, 0x16u);
      }

      v43 = chmod([v20 UTF8String], 0x1B6u);
      if (v43)
      {
        v44 = sub_100001684(v43);
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          sub_10003DABC();
        }
      }

      v45 = +[NSFileManager defaultManager];
      v60 = 0;
      v34 = [v45 moveItemAtPath:v20 toPath:v38 error:&v60];
      filea = v60;

      if (v34)
      {
        v14 = v58;
        if (a3)
        {
          v46 = v38;
          *a3 = v38;
        }

        v47 = sub_100001684(v46);
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          errnum = 138412546;
          v65 = v20;
          v66 = 2112;
          v67 = v38;
          _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Successful move of tailspin file: %@ -> %@", &errnum, 0x16u);
        }

        v48 = +[HTPrefs sharedPrefs];
        sub_10000C6E0(v58, [v48 savedTailspinMaxMB]);
      }

      else
      {
        v48 = sub_100001684(v46);
        v14 = v58;
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          errnum = 138412802;
          v65 = v20;
          v66 = 2112;
          v67 = v38;
          v68 = 2112;
          v49 = filea;
          v69 = filea;
          _os_log_error_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "Error failed move of tailspin file: %@ -> %@ error: %@", &errnum, 0x20u);
          goto LABEL_57;
        }
      }

      v49 = filea;
LABEL_57:

LABEL_58:
      v12 = v59;
LABEL_59:

      v32 = v62;
      goto LABEL_60;
    }

    v20 = [v18 stringByAppendingPathExtension:@"gz.processing"];

    v21 = [v20 UTF8String];
    v22 = [v10 UTF8String];
    if (MKBDeviceUnlockedSinceBoot())
    {
      v23 = 3;
    }

    else
    {
      v23 = 2;
    }

    v24 = open_dprotected_np(v21, 514, v23, 0, 416);
    if ((v24 & 0x80000000) != 0)
    {
      v39 = sub_100001684(v24);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        sub_10003DC7C();
      }
    }

    else
    {
      file = gzdopen(v24, "wb");
      if (file)
      {
        __stream = fopen(v22, "rb");
        if (__stream)
        {
          v25 = malloc_type_malloc(0x4000uLL, 0x100004077774924uLL);
          if (v25)
          {
            v26 = v25;
            while (1)
            {
              v27 = fread(v26, 1uLL, 0x4000uLL, __stream);
              if (!v27)
              {
                break;
              }

              if (gzwrite(file, v26, v27) != v27)
              {
                errnum = 0;
                v28 = gzerror(file, &errnum);
                if (errnum == -1)
                {
                  v29 = __error();
                  v28 = strerror(*v29);
                }

                v30 = sub_100001684(v28);
                if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
                {
                  sub_10003DA40();
                }

                gzclose(file);
                fclose(__stream);
                free(v26);
                goto LABEL_52;
              }
            }

            gzclose(file);
            fclose(__stream);
            free(v26);
            v54 = sub_100001684(v53);
            if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
            {
              errnum = 138412546;
              v65 = v10;
              v66 = 2112;
              v67 = v20;
              _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "Successfully compressed tailspin file: %@ -> %@", &errnum, 0x16u);
            }

            sub_100020444([v10 UTF8String], [v20 UTF8String]);
            goto LABEL_35;
          }

          v52 = sub_100001684(0);
          if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
          {
            sub_10003DB2C();
          }

          gzclose(file);
          v31 = fclose(__stream);
        }

        else
        {
          v51 = sub_100001684(0);
          if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
          {
            sub_10003DB9C();
          }

          v31 = gzclose(file);
        }

LABEL_52:
        v38 = sub_100001684(v31);
        v14 = v58;
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          sub_10003DCEC();
        }

        v34 = 0;
        goto LABEL_58;
      }

      v39 = sub_100001684(0);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        sub_10003DC0C();
      }
    }

    goto LABEL_52;
  }

  v32 = sub_100001684(v9);
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    v33 = +[HTPrefs sharedPrefs];
    errnum = 67109120;
    LODWORD(v65) = [v33 shouldSaveTailspins];
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Not attempting to save a tailspin. HTPrefs: shouldSaveTailspins = %d", &errnum, 8u);
  }

  v34 = 1;
LABEL_60:

  return v34;
}

id sub_10000C5A0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = sub_10000C644(v2);
  }

  else
  {
    v4 = [*(a1 + 40) lastPathComponent];
    v5 = [v4 rangeOfString:@"processing.tailspin" options:12];
    v3 = [v4 stringByReplacingOccurrencesOfString:@"processing.tailspin" withString:@"tailspin" options:12 range:{v5, v6}];
  }

  return v3;
}

id sub_10000C644(void *a1)
{
  v1 = [a1 lastPathComponent];
  if ([v1 characterAtIndex:0] == 46)
  {
    v2 = [v1 substringFromIndex:1];

    v1 = v2;
  }

  v3 = [v1 stringByDeletingPathExtension];
  v4 = [v3 stringByAppendingPathExtension:@"tailspin"];

  return v4;
}

void sub_10000C6E0(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = +[NSFileManager defaultManager];
  v5 = [NSURL URLWithString:v3];
  v6 = [NSArray arrayWithObjects:NSURLPathKey, NSURLCreationDateKey, NSURLTotalFileSizeKey, 0];
  v58[0] = _NSConcreteStackBlock;
  v58[1] = 3221225472;
  v58[2] = sub_100011424;
  v58[3] = &unk_1000852E8;
  v7 = v3;
  v59 = v7;
  v42 = v4;
  v8 = [v4 enumeratorAtURL:v5 includingPropertiesForKeys:v6 options:4 errorHandler:v58];

  v44 = objc_alloc_init(NSMutableDictionary);
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v54 objects:v65 count:16];
  obj = v9;
  if (!v10)
  {
    goto LABEL_36;
  }

  v11 = v10;
  v40 = v7;
  v12 = 0;
  v43 = a2 << 20;
  v13 = *v55;
  while (2)
  {
    for (i = 0; i != v11; i = i + 1)
    {
      if (*v55 != v13)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(*(&v54 + 1) + 8 * i);
      v16 = [v44 objectForKey:v15];

      if (!v16)
      {
        v52 = 0;
        v53 = 0;
        v17 = [v15 getResourceValue:&v53 forKey:NSURLCreationDateKey error:&v52];
        v18 = v53;
        v19 = v52;
        v20 = v19;
        if (v17)
        {
          v50 = 0;
          v51 = 0;
          v21 = [v15 getResourceValue:&v51 forKey:NSURLTotalFileSizeKey error:&v50];
          v22 = v51;
          v23 = v50;

          if (v21)
          {
            v12 += [v22 unsignedLongValue];
            v25 = [NSDictionary dictionaryWithObjectsAndKeys:v15, @"url", v18, @"date", v22, @"size", 0];
            [v44 setObject:v25 forKey:v15];

            continue;
          }

          v26 = sub_100001684(v24);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            sub_10003DE04(v15, v23);
          }

          v20 = v23;
        }

        else
        {
          v26 = sub_100001684(v19);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            sub_10003DD5C(v15, v20);
          }

          v22 = 0;
        }

        goto LABEL_20;
      }
    }

    v11 = [obj countByEnumeratingWithState:&v54 objects:v65 count:16];
    if (v11)
    {
      continue;
    }

    break;
  }

LABEL_20:

  v7 = v40;
  if (v12 > v43)
  {
    v9 = [v44 keysSortedByValueUsingComparator:&stru_100085308];
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v27 = [v9 countByEnumeratingWithState:&v46 objects:v64 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = 0;
      v30 = *v47;
      do
      {
        for (j = 0; j != v28; j = j + 1)
        {
          if (*v47 != v30)
          {
            objc_enumerationMutation(v9);
          }

          v32 = *(*(&v46 + 1) + 8 * j);
          v33 = [v44 objectForKey:v32];
          v34 = [v33 objectForKey:@"size"];
          v29 += [v34 unsignedLongValue];

          if (v29 > v43)
          {
            v45 = 0;
            v35 = [v42 removeItemAtURL:v32 error:&v45];
            v36 = v45;
            v37 = sub_100001684(v36);
            v38 = v37;
            if (v35)
            {
              if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v61 = v32;
                _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, "Successful removal of tailspin file to reduce disk space: %@", buf, 0xCu);
              }
            }

            else if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
            {
              v39 = [v36 localizedDescription];
              *buf = 138412546;
              v61 = v32;
              v62 = 2112;
              v63 = v39;
              _os_log_error_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "Error: failed removal of tailspin file to reduce disk space: %@ error: %@", buf, 0x16u);
            }
          }
        }

        v28 = [v9 countByEnumeratingWithState:&v46 objects:v64 count:16];
      }

      while (v28);
      v7 = v40;
    }

LABEL_36:
  }
}

void sub_10000CC84(void *a1)
{
  v1 = a1;
  v2 = sub_100001684(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_10003DEAC();
  }

  v3 = [v1 UTF8String];
  v48 = 0;
  v4 = sub_1000174B4(v3, &v48);
  v5 = v48;
  v6 = v5;
  if (v4)
  {
    v7 = [v4 count];
    if (v7 == 1)
    {
      v8 = [v4 objectAtIndex:0];
      v9 = [v8 objectForKeyedSubscript:off_10008FD90];
      v10 = v9;
      if (!v9)
      {
        v30 = sub_100001684(0);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          sub_10003E094();
        }

        v31 = sub_10000AAE4(5, @"Report type field is missing, failed to process request");

        sub_10000D260(0, 0, v31);
        unlink(v3);
        v29 = 0;
        v6 = v31;
        goto LABEL_47;
      }

      if ([v9 isEqualToString:off_10008FDA0])
      {
        v40 = v10;
        v41 = v6;
        v42 = v4;
        v43 = v1;
        v11 = v1;
        v39 = v8;
        v12 = +[NSMutableArray array];
        v13 = [[SASampleStore alloc] initForFileParsing];
        [v13 setShouldGatherKextStat:0];
        [v13 setDataGatheringOptions:7];
        v14 = [v11 UTF8String];
        v53 = 0;
        v45 = v13;
        [v13 parseKTraceFile:v14 warningsOut:v12 errorOut:&v53];
        v44 = v53;
        v49 = 0u;
        v50 = 0u;
        v51 = 0u;
        v52 = 0u;
        v15 = v12;
        v16 = [v15 countByEnumeratingWithState:&v49 objects:v58 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v50;
          do
          {
            v19 = 0;
            do
            {
              if (*v50 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v20 = *(*(&v49 + 1) + 8 * v19);
              v21 = sub_100001684(v16);
              if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v55 = v11;
                v56 = 2112;
                v57 = v20;
                _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "WARNING trying to create sample store from %@: %@\n", buf, 0x16u);
              }

              v19 = v19 + 1;
            }

            while (v17 != v19);
            v16 = [v15 countByEnumeratingWithState:&v49 objects:v58 count:16];
            v17 = v16;
          }

          while (v16);
        }

        v23 = v45;
        if (v45)
        {
          v24 = v39;
          v46 = sub_10000170C(v11, v45, v39, 0);
          v4 = v42;
          v1 = v43;
          v6 = v41;
          v10 = v40;
        }

        else
        {
          v32 = sub_100001684(v22);
          v4 = v42;
          v24 = v39;
          v10 = v40;
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            sub_10003DF24();
          }

          v46 = 0;
          v1 = v43;
          v6 = v41;
          v23 = 0;
        }
      }

      v33 = [v8 objectForKeyedSubscript:off_10008FD80];
      v34 = sub_100001684(v33);
      v35 = v34;
      if (v33)
      {
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
        {
          sub_10003DFAC();
        }

        v47 = 0;
        sub_10000BD14(v1, 0, &v47);
        v29 = v47;
        v36 = sub_100001684(v29);
        v37 = v36;
        if (v29)
        {
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            *v58 = 0;
            _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Successfully parsed and moved tailspin file. Posting filePath to Sentry", v58, 2u);
          }

          sub_10000D260(v29, v33, 0);
          goto LABEL_46;
        }

        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          sub_10003DFE8();
        }

        v38 = sub_10000AAE4(5, @"Failed to move Sentry tailspin from spool directory");

        sub_10000D260(0, v33, v38);
      }

      else
      {
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          sub_10003E058();
        }

        v38 = sub_10000AAE4(5, @"Failed to get reference number from reason dictionary. Reference number won't be included");

        sub_10000D260(0, 0, v38);
        v29 = 0;
      }

      v6 = v38;
LABEL_46:
      unlink(v3);

LABEL_47:
      v28 = v6;
      goto LABEL_48;
    }

    v27 = sub_100001684(v7);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_10003DEE8();
    }

    v26 = @"Error, tailspin unexpectledly contains more than one hang. Reference number won't be included";
  }

  else
  {
    v25 = sub_100001684(v5);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_10003E0D0();
    }

    v26 = @"Failed to parse reasonString into a dictionary. Reference number won't be included";
  }

  v28 = sub_10000AAE4(5, v26);

  sub_10000D260(0, 0, v28);
  unlink(v3);
  v29 = 0;
LABEL_48:
}

void sub_10000D260(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (v7)
  {
    if (!v6)
    {
      v18 = off_10008FDB8;
      v19 = v7;
      v9 = &v19;
      v10 = &v18;
      v11 = 1;
      goto LABEL_9;
    }

    v16[0] = off_10008FD80;
    v16[1] = off_10008FDB8;
    v17[0] = v6;
    v17[1] = v7;
    v9 = v17;
    v10 = v16;
  }

  else
  {
    if (!v6)
    {
      sub_10003E138();
    }

    if (!v5)
    {
      sub_10003E10C();
    }

    v14[0] = off_10008FD80;
    v14[1] = off_10008FDB0;
    v15[0] = v6;
    v15[1] = v5;
    v9 = v15;
    v10 = v14;
  }

  v11 = 2;
LABEL_9:
  v12 = [NSDictionary dictionaryWithObjects:v9 forKeys:v10 count:v11];
  DistributedCenter = CFNotificationCenterGetDistributedCenter();
  CFNotificationCenterPostNotification(DistributedCenter, off_10008FD78, 0, v12, 1u);
}

uint64_t sub_10000D3BC(const char *a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  if ((*(a2 + 4) & 0xF000) == 0x8000)
  {
    v5 = [NSString stringWithUTF8String:a1];
    v6 = [v5 pathExtension];
    v7 = [v6 isEqualToString:@"tailspin"];
    v8 = [v5 rangeOfString:@"processing.tailspin"];
    if (!v7)
    {
      v13 = sub_100001684(v8);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v50 = v5;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Ignoring non tailspin file: %@", buf, 0xCu);
      }

      v16 = 0;
      goto LABEL_12;
    }

    v9 = v8;
    sub_100018550();
    if (v9 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v26 = sub_100001684(v10);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v50 = v5;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Found aborted file, deleting: %@", buf, 0xCu);
      }

      v27 = +[NSFileManager defaultManager];
      v44[0] = 0;
      v28 = [v27 removeItemAtPath:v5 error:v44];
      v16 = v44[0];

      sub_10000DA84(0, 1uLL, 0, 1);
      if (v28)
      {
        goto LABEL_13;
      }

      v13 = sub_100001684(v29);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_10003E164();
      }

LABEL_12:

LABEL_13:
      goto LABEL_14;
    }

    ++dword_1000903E8;
    +[HTHangreporterKickstartTelemetry incrementHangreporterTailspinsProcessed];
    v11 = [v5 rangeOfString:v6 options:12];
    v13 = [v5 stringByReplacingOccurrencesOfString:v6 withString:@"processing.tailspin" options:12 range:{v11, v12}];
    v14 = +[NSFileManager defaultManager];
    v46 = 0;
    v15 = [v14 moveItemAtPath:v5 toPath:v13 error:&v46];
    v16 = v46;

    if ((v15 & 1) == 0)
    {
      sub_10000DA84(0, 2uLL, 0, 1);
      v31 = sub_100001684(v30);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v50 = v5;
        v51 = 2112;
        v52 = v13;
        v53 = 2112;
        v54 = v16;
        _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "Failed to move %@ -> %@: %@", buf, 0x20u);
      }

      v32 = +[NSFileManager defaultManager];
      v33 = [v32 removeItemAtPath:v5 error:0];

      if ((v33 & 1) == 0)
      {
        v35 = sub_100001684(v34);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          sub_10003E164();
        }

        v36 = unlink(a1);
        if ((v36 & 0x80000000) != 0)
        {
          v37 = sub_100001684(v36);
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            sub_10003E1D4();
          }
        }
      }

      goto LABEL_12;
    }

    v17 = CFPreferencesCopyValue(@"PDSEPrefHTTimeoutTimestampSec", @"com.apple.da", @"mobile", kCFPreferencesAnyHost);

    if ([v13 containsString:@"Sentry"])
    {
      v18 = +[HTPrefs sharedPrefs];
      v19 = [v18 shouldAugmentSentryTailspinWithSignposts];

      if (v19)
      {
        v21 = open([v13 UTF8String], 2);
        if (v21 == -1)
        {
          v24 = sub_100001684(v21);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            sub_10003E270();
          }
        }

        else
        {
          v47 = UnsafePointer;
          v22 = +[HTPrefs sharedPrefs];
          v23 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v22 shouldAugmentSentryTailspinWithSignposts]);
          v48 = v23;
          v24 = [NSDictionary dictionaryWithObjects:&v48 forKeys:&v47 count:1];

          v44[1] = _NSConcreteStackBlock;
          v44[2] = 3221225472;
          v44[3] = sub_10000DC80;
          v44[4] = &unk_100085280;
          v45 = v13;
          tailspin_augment_output();
          dispatch_semaphore_wait(qword_100090568, 0xFFFFFFFFFFFFFFFFLL);
        }
      }

      else
      {
        v24 = sub_100001684(v20);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "OS Signposts augmentation is disabled", buf, 2u);
        }
      }

      sub_10000CC84(v13);
      goto LABEL_12;
    }

    v38 = [v13 containsString:@"Slow-Launch"];
    if ((v38 & 1) != 0 || (v38 = [v13 containsString:@"Slow-Resume"], v38))
    {
      v39 = sub_100001684(v38);
      if (!os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
LABEL_34:

        sub_10000BD14(v13, 0, 0);
        unlink([v13 UTF8String]);
        goto LABEL_12;
      }

      *buf = 0;
      v40 = "Slow-launch or Slow-resume tailspin detected. Not saving a spindump";
    }

    else
    {
      v41 = +[HTPrefs sharedPrefs];
      v42 = [v41 eplEnabled];

      if (!v42 || v17)
      {
        sub_10000DD64(v13);
        goto LABEL_12;
      }

      v39 = sub_100001684(v43);
      if (!os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_34;
      }

      *buf = 0;
      v40 = "EPL is enabled, and HTSE is disabled. Not saving a spindump";
    }

    _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, v40, buf, 2u);
    goto LABEL_34;
  }

LABEL_14:
  objc_autoreleasePoolPop(v4);
  return 0;
}

void sub_10000DA84(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = +[HTPrefs sharedPrefs];
  v9 = [v8 enablementPrefix];

  if (!v9)
  {
    v10 = &stru_100085FF8;
    v9 = v10;
  }

  v11 = sub_100001684(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = [NSNumber numberWithBool:a1];
    v13 = sub_10000B078(a2);
    v14 = sub_10000B024(a3);
    *buf = 138413570;
    v17 = @"EnablementType";
    v18 = 2112;
    v19 = v9;
    v20 = 2112;
    v21 = v12;
    v22 = 2112;
    v23 = v13;
    v24 = 2112;
    v25 = v14;
    v26 = 2048;
    v27 = a4;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "com.apple.hangtracer.hang_capture_tailspin_v3 %@: %@, spindump_successful: %@, failure_reason: %@, HangSubType: %@, HTBugType: %ld", buf, 0x3Eu);
  }

  v15 = v9;
  AnalyticsSendEventLazy();
}

intptr_t sub_10000DC80(uint64_t a1, int a2)
{
  v4 = sub_100001684(a1);
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 32);
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Successfully augmented tailspin at %@ with os signposts", &v8, 0xCu);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_10003E2E0();
  }

  return dispatch_semaphore_signal(qword_100090568);
}

void sub_10000DD64(void *a1)
{
  v238 = a1;
  v1 = sub_100001684(v238);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    *&buf[4] = v238;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "Post-Processing Tailspin file: %@\n", buf, 0xCu);
  }

  v2 = v238;
  v3 = sub_1000174B4([v238 UTF8String], 0);
  if (!v3)
  {
    v12 = v238;
    unlink([v238 UTF8String]);
    sub_10000DA84(0, 3uLL, 0, 1);
    goto LABEL_223;
  }

  v264 = 0u;
  v265 = 0u;
  v262 = 0u;
  v263 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v262 objects:v301 count:16];
  if (v4)
  {
    v5 = *v263;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v263 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v262 + 1) + 8 * i);
        v8 = [v7 objectForKeyedSubscript:@"IsThirdPartyDevSupportModeHang"];
        if (v8)
        {
          v9 = [v7 objectForKeyedSubscript:@"IsThirdPartyDevSupportModeHang"];
          v10 = [v9 BOOLValue];

          if (v10)
          {
            v11 = 1;
            goto LABEL_16;
          }
        }
      }

      v4 = [obj countByEnumeratingWithState:&v262 objects:v301 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_16:

  v14 = sub_10000AE34(v13);
  v15 = +[NSFileManager defaultManager];
  v16 = [v15 attributesOfItemAtPath:v238 error:0];
  v17 = [v16 fileSize];

  v18 = v14;
  if (os_signpost_enabled(v18))
  {
    v19 = "NO";
    *buf = 138412802;
    *&buf[4] = v238;
    if (v11)
    {
      v19 = "YES";
    }

    *&buf[12] = 2048;
    *&buf[14] = v17;
    *&buf[22] = 2080;
    *&buf[24] = v19;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v18, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "TailspinConversionInterval", "File=%@, Bytes=%{signpost.telemetry:number1}llu, Symbolicate=%{signpost.telemetry:string1}s enableTelemetry=YES ", buf, 0x20u);
  }

  v213 = v18;

  if (v11)
  {
    v20 = v238;
    v21 = v20;
    v22 = [v20 cStringUsingEncoding:4];
    v23 = mach_absolute_time();
    v24 = open(v22, 2);
    if (v24 == -1)
    {
      v25 = sub_100001684(v24);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_10003E3C8();
      }
    }

    else
    {
      block = UnsafePointer;
      *v310 = &__kCFBooleanFalse;
      v25 = [NSDictionary dictionaryWithObjects:v310 forKeys:&block count:1];
      v26 = sub_100001684(v25);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        sub_10003E358();
      }

      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_10001246C;
      *&buf[24] = &unk_100085280;
      *&buf[32] = v20;
      tailspin_augment_output();
      dispatch_semaphore_wait(qword_100090568, 0xFFFFFFFFFFFFFFFFLL);
    }

    v27 = mach_absolute_time();
    v29 = sub_10000B590(v27 - v23, v28);
    *&v292 = _NSConcreteStackBlock;
    *(&v292 + 1) = 3221225472;
    *&v293 = sub_100012550;
    *(&v293 + 1) = &unk_1000853C8;
    *&v294 = v29;
    AnalyticsSendEventLazy();
  }

  v30 = +[NSMutableArray array];
  v214 = [[SASampleStore alloc] initForFileParsing];
  [v214 setShouldGatherKextStat:0];
  [v214 setDataGatheringOptions:7];
  v31 = v238;
  v261 = 0;
  [v214 parseKTraceFile:objc_msgSend(v238 warningsOut:"UTF8String") errorOut:{v30, &v261}];
  v212 = v261;
  v257 = 0u;
  v258 = 0u;
  v259 = 0u;
  v260 = 0u;
  v239 = v30;
  v32 = [v239 countByEnumeratingWithState:&v257 objects:v300 count:16];
  v33 = v32;
  if (v32)
  {
    v34 = *v258;
    do
    {
      v35 = 0;
      do
      {
        if (*v258 != v34)
        {
          objc_enumerationMutation(v239);
        }

        v36 = *(*(&v257 + 1) + 8 * v35);
        v37 = sub_100001684(v32);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          *&buf[4] = v238;
          *&buf[12] = 2112;
          *&buf[14] = v36;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "WARNING trying to create sample store from %@: %@\n", buf, 0x16u);
        }

        v35 = v35 + 1;
      }

      while (v33 != v35);
      v32 = [v239 countByEnumeratingWithState:&v257 objects:v300 count:16];
      v33 = v32;
    }

    while (v32);
  }

  if (!v214)
  {
    sub_10000DA84(0, 4uLL, 0, 1);
    v62 = sub_100001684(v61);
    if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
    {
      sub_10003DF24();
    }

    v63 = v238;
    unlink([v238 UTF8String]);
    goto LABEL_222;
  }

  v247 = v238;
  v240 = v214;
  v38 = obj;
  obja = objc_alloc_init(NSMutableArray);
  v294 = 0u;
  v295 = 0u;
  v292 = 0u;
  v293 = 0u;
  v242 = v38;
  v39 = 0;
  v40 = 0;
  v41 = [v242 countByEnumeratingWithState:&v292 objects:buf count:16];
  if (v41)
  {
    v42 = *v293;
    do
    {
      for (j = 0; j != v41; j = j + 1)
      {
        if (*v293 != v42)
        {
          objc_enumerationMutation(v242);
        }

        v44 = *(*(&v292 + 1) + 8 * j);
        v45 = [v44 objectForKeyedSubscript:@"HangType"];
        v46 = [v45 intValue];

        if (v46 == 5)
        {
          v47 = [v44 objectForKeyedSubscript:@"FenceInfoUpdated"];
          v48 = v47 == 0;

          if (v48)
          {
            [v44 setObject:&__kCFBooleanFalse forKeyedSubscript:@"FenceInfoUpdated"];
            [obja addObject:v44];
            ++v40;
          }

          else
          {
            ++v39;
          }
        }

        else
        {
          v49 = sub_10000B068(v46);
          if (v49)
          {
            v50 = sub_100001684(v49);
            if (os_log_type_enabled(v50, OS_LOG_TYPE_FAULT))
            {
              v51 = sub_10000B024(v46);
              *v310 = 138543618;
              *&v310[4] = v51;
              *&v310[12] = 2048;
              *&v310[14] = v46;
              _os_log_fault_impl(&_mh_execute_header, v50, OS_LOG_TYPE_FAULT, "Unsupported fence hang %{public}@ (%ld)", v310, 0x16u);
            }
          }
        }
      }

      v41 = [v242 countByEnumeratingWithState:&v292 objects:buf count:16];
    }

    while (v41);
  }

  v52 = [obja count];
  v53 = v52 == 0;
  v54 = sub_100001684(v52);
  v55 = os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG);
  if (v53)
  {
    if (v55)
    {
      sub_10003E7D0();
    }
  }

  else
  {
    if (v55)
    {
      sub_10003E438();
    }

    v290[0] = _NSConcreteStackBlock;
    v290[1] = 3221225472;
    v290[2] = sub_100012604;
    v290[3] = &unk_1000853F0;
    v291 = obja;
    v56 = objc_retainBlock(v290);
    v286 = 0;
    v287 = &v286;
    v288 = 0x2020000000;
    v57 = ktrace_session_create();
    v289 = v57;
    if (v287[3])
    {
      v58 = v247;
      [v247 cStringUsingEncoding:4];
      if (ktrace_set_file())
      {
        v59 = ktrace_session_destroy();
        v60 = sub_100001684(v59);
        if (os_log_type_enabled(v60, OS_LOG_TYPE_FAULT))
        {
          sub_10003E4A8();
        }
      }

      else
      {
        v64 = objc_alloc_init(NSMutableDictionary);
        v65 = objc_alloc_init(NSMutableDictionary);
        v280 = _NSConcreteStackBlock;
        v281 = 3221225472;
        v282 = sub_1000127BC;
        v283 = &unk_100085440;
        v66 = v56;
        v285 = v66;
        v60 = v64;
        v284 = v60;
        v67 = ktrace_events_single();
        if (v67)
        {
          v68 = sub_100001684(v67);
          if (os_log_type_enabled(v68, OS_LOG_TYPE_FAULT))
          {
            sub_10003E518();
          }

          ktrace_session_destroy();
        }

        else
        {
          v274 = _NSConcreteStackBlock;
          v275 = 3221225472;
          v276 = sub_100012988;
          v277 = &unk_100085440;
          v69 = v66;
          v279 = v69;
          v70 = v60;
          v278 = v70;
          v71 = ktrace_events_single();
          if (v71)
          {
            v72 = sub_100001684(v71);
            if (os_log_type_enabled(v72, OS_LOG_TYPE_FAULT))
            {
              sub_10003E588();
            }

            ktrace_session_destroy();
          }

          else
          {
            *v310 = _NSConcreteStackBlock;
            *&v310[8] = 3221225472;
            *&v310[16] = sub_100012AF4;
            v311 = &unk_100085490;
            v73 = v69;
            v315 = v73;
            v74 = v240;
            v312 = v74;
            v75 = v70;
            v313 = v75;
            v76 = v65;
            v314 = v76;
            v77 = ktrace_events_single();
            if (v77)
            {
              v78 = sub_100001684(v77);
              if (os_log_type_enabled(v78, OS_LOG_TYPE_FAULT))
              {
                sub_10003E5F8();
              }

              ktrace_session_destroy();
            }

            else
            {
              v79 = dispatch_semaphore_create(0);
              v268 = _NSConcreteStackBlock;
              v269 = 3221225472;
              v270 = sub_100012FDC;
              v271 = &unk_1000854B8;
              v273 = &v286;
              dsema = v79;
              v272 = dsema;
              ktrace_set_completion_handler();
              v80 = dispatch_get_global_queue(0, 0);
              v81 = ktrace_start();

              if (v81)
              {
                v83 = sub_100001684(v82);
                if (os_log_type_enabled(v83, OS_LOG_TYPE_FAULT))
                {
                  sub_10003E668();
                }

                ktrace_session_destroy();
              }

              else
              {
                v84 = dispatch_time(0, 100000000000);
                v85 = dispatch_semaphore_wait(dsema, v84);
                if (v85)
                {
                  v86 = sub_100001684(v85);
                  if (os_log_type_enabled(v86, OS_LOG_TYPE_FAULT))
                  {
                    sub_10003E6D8();
                  }

                  block = _NSConcreteStackBlock;
                  v303 = 3221225472;
                  v304 = sub_10001302C;
                  v305 = &unk_1000854E0;
                  v306 = &v286;
                  dispatch_async(v80, &block);
                }

                else
                {
                  v266[0] = 0;
                  v266[1] = v266;
                  v266[2] = 0x2020000000;
                  v267 = 0;
                  block = _NSConcreteStackBlock;
                  v303 = 3221225472;
                  v304 = sub_100013048;
                  v305 = &unk_100085570;
                  v306 = v76;
                  v307 = v74;
                  v308 = v75;
                  v309 = v266;
                  (v73[2])(v73, &block);

                  _Block_object_dispose(v266, 8);
                }
              }
            }
          }
        }
      }
    }

    else
    {
      v60 = sub_100001684(v57);
      if (os_log_type_enabled(v60, OS_LOG_TYPE_FAULT))
      {
        sub_10003E75C();
      }
    }

    _Block_object_dispose(&v286, 8);
    v54 = v291;
  }

  v253 = 0u;
  v254 = 0u;
  v255 = 0u;
  v256 = 0u;
  objb = v242;
  v87 = [objb countByEnumeratingWithState:&v253 objects:v299 count:16];
  if (v87)
  {
    v243 = *v254;
    do
    {
      for (k = 0; k != v87; k = k + 1)
      {
        if (*v254 != v243)
        {
          objc_enumerationMutation(objb);
        }

        v89 = *(*(&v253 + 1) + 8 * k);
        v90 = [v89 objectForKeyedSubscript:@"ProcessPath"];
        v91 = [v90 lastPathComponent];
        v92 = sub_100009F50(v91, 0, v90, v89);
        v93 = [v92 objectForKeyedSubscript:@"is_first_party"];
        if (v93)
        {
          v94 = [v92 objectForKeyedSubscript:@"is_first_party"];
        }

        else
        {
          v94 = &__kCFBooleanTrue;
        }

        [v89 setObject:v94 forKeyedSubscript:@"isFirstPartyApp"];
        [v89 setObject:v92 forKeyedSubscript:@"IPSMetaDictionary"];
      }

      v87 = [objb countByEnumeratingWithState:&v253 objects:v299 count:16];
    }

    while (v87);
  }

  if ([objb count] < 2)
  {
    v149 = objb;
    goto LABEL_161;
  }

  v95 = [objb mutableCopy];
  if (![v95 count])
  {
    goto LABEL_160;
  }

  v96 = 0;
  do
  {
    v224 = v96;
    queue = [v95 objectAtIndexedSubscript:?];
    v97 = [queue objectForKeyedSubscript:@"PID"];
    v98 = [v97 intValue];

    v99 = [queue objectForKeyedSubscript:@"StartTime"];
    v244 = [v99 unsignedLongLongValue];

    v100 = [queue objectForKeyedSubscript:@"EndTime"];
    dsemaa = [v100 unsignedLongLongValue];

    v102 = sub_10000B548(dsemaa - v244, v101);
    v103 = [queue objectForKeyedSubscript:@"HangType"];
    v104 = sub_10000B068([v103 intValue]);

    v105 = [queue objectForKeyedSubscript:@"IsThirdPartyDevSupportModeHang"];
    if (v105)
    {
      v106 = [queue objectForKeyedSubscript:@"IsThirdPartyDevSupportModeHang"];
      v107 = [v106 BOOLValue];

      v108 = v107 ^ 1;
    }

    else
    {
      v108 = 1;
    }

    v109 = [queue objectForKeyedSubscript:@"isFirstPartyApp"];
    v110 = [v109 BOOLValue];

    v228 = +[NSMutableIndexSet indexSet];
    v226 = v102;
    if (v224 + 1 >= [v95 count])
    {
LABEL_130:
      v127 = [v228 count];
      v128 = v127 == 0;
      v129 = sub_100001684(v127);
      v130 = v129;
      if (v128)
      {
        if (os_log_type_enabled(v129, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67109888;
          *&buf[4] = v98;
          *&buf[8] = 2048;
          *&buf[10] = v244;
          *&buf[18] = 2048;
          *&buf[20] = dsemaa;
          *&buf[28] = 2048;
          *&buf[30] = v226;
          _os_log_debug_impl(&_mh_execute_header, v130, OS_LOG_TYPE_DEBUG, "[%d] %llu-%llu (%llums) does not overlap any other hangs", buf, 0x26u);
        }
      }

      else
      {
        if (os_log_type_enabled(v129, OS_LOG_TYPE_DEFAULT))
        {
          v131 = [v228 count];
          *buf = 134219008;
          *&buf[4] = v131;
          *&buf[12] = 1024;
          *&buf[14] = v98;
          *&buf[18] = 2048;
          *&buf[20] = v244;
          *&buf[28] = 2048;
          *&buf[30] = dsemaa;
          *&buf[38] = 2048;
          *v317 = v226;
          _os_log_impl(&_mh_execute_header, v130, OS_LOG_TYPE_DEFAULT, "Removing %lu hangs in favor of overlapping [%d] %llu-%llu (%llums)", buf, 0x30u);
        }

        [v95 removeObjectsAtIndexes:v228];
      }

      ++v224;
      goto LABEL_138;
    }

    v222 = v110 & v104 ^ 1;
    v218 = v110 & !v104;
    v216 = v108 | v104;
    v215 = v108 | !v104;
    v111 = v224 + 1;
    while (1)
    {
      v112 = [v95 objectAtIndexedSubscript:v111];
      v113 = [v112 objectForKeyedSubscript:@"PID"];
      v114 = [v113 intValue];

      v115 = [v112 objectForKeyedSubscript:@"StartTime"];
      v116 = [v115 unsignedLongLongValue];

      v117 = [v112 objectForKeyedSubscript:@"EndTime"];
      v118 = [v117 unsignedLongLongValue];

      v120 = sub_10000B548(v118 - v116, v119);
      v121 = [v112 objectForKeyedSubscript:@"HangType"];
      v122 = sub_10000B068([v121 intValue]);

      if (v98 != v114 || v244 >= v118 || dsemaa <= v116)
      {
        goto LABEL_129;
      }

      v123 = v120;
      if (((v222 | v122) & 1) == 0 && v226 + 1000 > v123)
      {
        v124 = sub_100001684([v228 addIndex:v111]);
        if (os_log_type_enabled(v124, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67110912;
          *&buf[4] = v98;
          *&buf[8] = 2048;
          *&buf[10] = v116;
          *&buf[18] = 2048;
          *&buf[20] = v118;
          *&buf[28] = 2048;
          *&buf[30] = v120;
          *&buf[38] = 1024;
          *v317 = v98;
          *&v317[4] = 2048;
          *&v317[6] = v244;
          v318 = 2048;
          v319 = dsemaa;
          v320 = 2048;
          v321 = v226;
          v125 = v124;
          v126 = "Adding hang [%d] %llu-%llu (%llums) to removal list in favor of overlapping [%d] %llu-%llu (%llums) (1p prefer fence if other is <1s longer)";
LABEL_127:
          _os_log_impl(&_mh_execute_header, v125, OS_LOG_TYPE_DEFAULT, v126, buf, 0x4Au);
          goto LABEL_128;
        }

        goto LABEL_128;
      }

      if ((v218 & v122) == 1 && v123 + 1000 > v226)
      {
        break;
      }

      if (v216 & 1 | !v122)
      {
        if (((v215 | v122) & 1) == 0)
        {
          v140 = [v228 count];
          v141 = v140 == 0;
          v135 = sub_100001684(v140);
          v142 = os_log_type_enabled(v135, OS_LOG_TYPE_DEFAULT);
          if (!v141)
          {
            if (!v142)
            {
              goto LABEL_158;
            }

            v143 = [v228 count];
            *buf = 67111168;
            *&buf[4] = v98;
            *&buf[8] = 2048;
            *&buf[10] = v244;
            *&buf[18] = 2048;
            *&buf[20] = dsemaa;
            *&buf[28] = 2048;
            *&buf[30] = v226;
            *&buf[38] = 1024;
            *v317 = v98;
            *&v317[4] = 2048;
            *&v317[6] = v116;
            v318 = 2048;
            v319 = v118;
            v320 = 2048;
            v321 = v120;
            v322 = 2048;
            v323 = v143;
            v138 = v135;
            v139 = "Removing hang [%d] %llu-%llu (%llums) in favor of overlapping [%d] %llu-%llu (%llums) (3p prefer fence) (not removing %lu on removal list)";
            goto LABEL_149;
          }

          if (!v142)
          {
            goto LABEL_158;
          }

          *buf = 67110912;
          *&buf[4] = v98;
          *&buf[8] = 2048;
          *&buf[10] = v244;
          *&buf[18] = 2048;
          *&buf[20] = dsemaa;
          *&buf[28] = 2048;
          *&buf[30] = v226;
          *&buf[38] = 1024;
          *v317 = v98;
          *&v317[4] = 2048;
          *&v317[6] = v116;
          v318 = 2048;
          v319 = v118;
          v320 = 2048;
          v321 = v120;
          v138 = v135;
          v139 = "Removing hang [%d] %llu-%llu (%llums) in favor of overlapping [%d] %llu-%llu (%llums) (3p prefer fence)";
          goto LABEL_156;
        }

        if (dsemaa - v244 < (v118 - v116))
        {
          v144 = [v228 count];
          v145 = v144 == 0;
          v135 = sub_100001684(v144);
          v146 = os_log_type_enabled(v135, OS_LOG_TYPE_DEFAULT);
          if (!v145)
          {
            if (!v146)
            {
              goto LABEL_158;
            }

            v147 = [v228 count];
            *buf = 67111168;
            *&buf[4] = v98;
            *&buf[8] = 2048;
            *&buf[10] = v244;
            *&buf[18] = 2048;
            *&buf[20] = dsemaa;
            *&buf[28] = 2048;
            *&buf[30] = v226;
            *&buf[38] = 1024;
            *v317 = v98;
            *&v317[4] = 2048;
            *&v317[6] = v116;
            v318 = 2048;
            v319 = v118;
            v320 = 2048;
            v321 = v120;
            v322 = 2048;
            v323 = v147;
            v138 = v135;
            v139 = "Removing hang [%d] %llu-%llu (%llums) in favor of overlapping [%d] %llu-%llu (%llums) (prefer longer hangs) (not removing %lu on removal list)";
            goto LABEL_149;
          }

          if (!v146)
          {
            goto LABEL_158;
          }

          *buf = 67110912;
          *&buf[4] = v98;
          *&buf[8] = 2048;
          *&buf[10] = v244;
          *&buf[18] = 2048;
          *&buf[20] = dsemaa;
          *&buf[28] = 2048;
          *&buf[30] = v226;
          *&buf[38] = 1024;
          *v317 = v98;
          *&v317[4] = 2048;
          *&v317[6] = v116;
          v318 = 2048;
          v319 = v118;
          v320 = 2048;
          v321 = v120;
          v138 = v135;
          v139 = "Removing hang [%d] %llu-%llu (%llums) in favor of overlapping [%d] %llu-%llu (%llums) (prefer longer hangs)";
          goto LABEL_156;
        }

        v124 = sub_100001684([v228 addIndex:v111]);
        if (!os_log_type_enabled(v124, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_128;
        }

        *buf = 67110912;
        *&buf[4] = v98;
        *&buf[8] = 2048;
        *&buf[10] = v116;
        *&buf[18] = 2048;
        *&buf[20] = v118;
        *&buf[28] = 2048;
        *&buf[30] = v120;
        *&buf[38] = 1024;
        *v317 = v98;
        *&v317[4] = 2048;
        *&v317[6] = v244;
        v318 = 2048;
        v319 = dsemaa;
        v320 = 2048;
        v321 = v226;
        v125 = v124;
        v126 = "Adding hang [%d] %llu-%llu (%llums) to removal list in favor of overlapping [%d] %llu-%llu (%llums) (prefer longer hangs)";
        goto LABEL_127;
      }

      v124 = sub_100001684([v228 addIndex:v111]);
      if (os_log_type_enabled(v124, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67110912;
        *&buf[4] = v98;
        *&buf[8] = 2048;
        *&buf[10] = v116;
        *&buf[18] = 2048;
        *&buf[20] = v118;
        *&buf[28] = 2048;
        *&buf[30] = v120;
        *&buf[38] = 1024;
        *v317 = v98;
        *&v317[4] = 2048;
        *&v317[6] = v244;
        v318 = 2048;
        v319 = dsemaa;
        v320 = 2048;
        v321 = v226;
        v125 = v124;
        v126 = "Adding hang [%d] %llu-%llu (%llums) to removal list in favor of overlapping [%d] %llu-%llu (%llums) (3p prefer fence)";
        goto LABEL_127;
      }

LABEL_128:

LABEL_129:
      if (++v111 >= [v95 count])
      {
        goto LABEL_130;
      }
    }

    v133 = [v228 count];
    v134 = v133 == 0;
    v135 = sub_100001684(v133);
    v136 = os_log_type_enabled(v135, OS_LOG_TYPE_DEFAULT);
    if (!v134)
    {
      if (!v136)
      {
        goto LABEL_158;
      }

      v137 = [v228 count];
      *buf = 67111168;
      *&buf[4] = v98;
      *&buf[8] = 2048;
      *&buf[10] = v244;
      *&buf[18] = 2048;
      *&buf[20] = dsemaa;
      *&buf[28] = 2048;
      *&buf[30] = v226;
      *&buf[38] = 1024;
      *v317 = v98;
      *&v317[4] = 2048;
      *&v317[6] = v116;
      v318 = 2048;
      v319 = v118;
      v320 = 2048;
      v321 = v120;
      v322 = 2048;
      v323 = v137;
      v138 = v135;
      v139 = "Removing hang [%d] %llu-%llu (%llums) in favor of overlapping [%d] %llu-%llu (%llums) (1p prefer fence if other is <1s longer) (not removing %lu on removal list)";
LABEL_149:
      v148 = 84;
      goto LABEL_157;
    }

    if (!v136)
    {
      goto LABEL_158;
    }

    *buf = 67110912;
    *&buf[4] = v98;
    *&buf[8] = 2048;
    *&buf[10] = v244;
    *&buf[18] = 2048;
    *&buf[20] = dsemaa;
    *&buf[28] = 2048;
    *&buf[30] = v226;
    *&buf[38] = 1024;
    *v317 = v98;
    *&v317[4] = 2048;
    *&v317[6] = v116;
    v318 = 2048;
    v319 = v118;
    v320 = 2048;
    v321 = v120;
    v138 = v135;
    v139 = "Removing hang [%d] %llu-%llu (%llums) in favor of overlapping [%d] %llu-%llu (%llums) (1p prefer fence if other is <1s longer)";
LABEL_156:
    v148 = 74;
LABEL_157:
    _os_log_impl(&_mh_execute_header, v138, OS_LOG_TYPE_DEFAULT, v139, buf, v148);
LABEL_158:

    [v95 removeObjectAtIndex:v224];
LABEL_138:

    v132 = [v95 count];
    v96 = v224;
  }

  while (v224 < v132);
LABEL_160:
  v149 = [v95 copy];

LABEL_161:
  v251 = 0u;
  v252 = 0u;
  v249 = 0u;
  v250 = 0u;
  obj = v149;
  v150 = 0;
  v151 = 0;
  v152 = [obj countByEnumeratingWithState:&v249 objects:v298 count:16];
  if (v152)
  {
    v245 = *v250;
    do
    {
      for (m = 0; m != v152; m = m + 1)
      {
        if (*v250 != v245)
        {
          objc_enumerationMutation(obj);
        }

        v154 = *(*(&v249 + 1) + 8 * m);
        v155 = v247;
        sub_100020AC0([v247 UTF8String], v154);
        v156 = sub_10000170C(v247, v240, v154, 1);
        v157 = v156;
        if (v156)
        {
          ++v150;
          if (v151)
          {
            v158 = v156;
            v151 = v151;
            v159 = +[HTPrefs sharedPrefs];
            v160 = [v159 shouldSaveTailspins];

            if (v160)
            {
              v162 = sub_10000C644(v158);
              v163 = [v151 pathExtension];
              v164 = [v163 containsString:@"gz"];

              if (v164)
              {
                v165 = [v162 stringByAppendingPathExtension:@"gz"];

                v162 = v165;
              }

              v166 = [@"/var/mobile/Library/Logs/CrashReporter/DiagnosticLogs/HangTracer/" stringByAppendingPathComponent:v162];
            }

            else
            {
              v162 = sub_100001684(v161);
              if (os_log_type_enabled(v162, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v162, OS_LOG_TYPE_DEFAULT, "shouldSaveTailspins says NO, not saving tailspin files", buf, 2u);
              }

              v166 = 0;
            }

            if (v166)
            {
              v167 = v151;
              v168 = [v151 UTF8String];
              v169 = v166;
              v170 = clonefile(v168, [v166 UTF8String], 0);
              LODWORD(v168) = v170 == 0;
              v171 = sub_100001684(v170);
              v172 = v171;
              if (v168)
              {
                if (os_log_type_enabled(v171, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412546;
                  *&buf[4] = v151;
                  *&buf[12] = 2112;
                  *&buf[14] = v166;
                  _os_log_impl(&_mh_execute_header, v172, OS_LOG_TYPE_DEFAULT, "successfully cloned %@ to %@", buf, 0x16u);
                }

                v173 = v247;
                v174 = [v247 UTF8String];
                v175 = v166;
                sub_100020444(v174, [v166 UTF8String]);
              }

              else
              {
                if (os_log_type_enabled(v171, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  *&buf[4] = v166;
                  _os_log_error_impl(&_mh_execute_header, v172, OS_LOG_TYPE_ERROR, "failed to archive tailspin file %@", buf, 0xCu);
                }
              }
            }
          }

          else
          {
            v248 = 0;
            sub_10000BD14(v247, v156, &v248);
            v151 = v248;
          }
        }
      }

      v152 = [obj countByEnumeratingWithState:&v249 objects:v298 count:16];
    }

    while (v152);
  }

  v176 = v213;
  if (os_signpost_enabled(v176))
  {
    *buf = 67109120;
    *&buf[4] = v150;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v176, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "TailspinConversionInterval", "NumSuccessfulReports=%{signpost.telemetry:number2}d enableTelemetry=YES ", buf, 8u);
  }

  v178 = sub_100001684(v177);
  if (os_log_type_enabled(v178, OS_LOG_TYPE_INFO))
  {
    v179 = [v247 lastPathComponent];
    v180 = +[HTPrefs sharedPrefs];
    v181 = [v180 shouldUploadToDiagPipe];
    *buf = 138412546;
    *&buf[4] = v179;
    *&buf[12] = 1024;
    *&buf[14] = v181;
    _os_log_impl(&_mh_execute_header, v178, OS_LOG_TYPE_INFO, "Post Processing %@: Should Try to Upload to Diagnostic Pipeline: %{BOOL}i", buf, 0x12u);
  }

  v182 = +[HTPrefs sharedPrefs];
  v183 = [v182 shouldUploadToDiagPipe];

  if (v183)
  {
    v184 = sub_10000B2A8(obj);
    v185 = v184;
    if (v184)
    {
      v186 = [v184 objectForKeyedSubscript:@"StartTime"];
      v187 = sub_10000B204([v186 longLongValue]);

      v188 = [v185 objectForKeyedSubscript:@"StartTime"];
      v189 = [v188 longLongValue];

      v190 = [v185 objectForKeyedSubscript:@"EndTime"];
      v191 = [v190 longLongValue];

      v193 = sub_10000B548(v191 - v189, v192);
      v194 = [v185 objectForKeyedSubscript:@"ProcessPath"];
      if (v194)
      {
        v241 = [v185 objectForKeyedSubscript:@"ProcessPath"];
      }

      else
      {
        v241 = 0;
      }

      queuea = [v241 lastPathComponent];
      v246 = sub_100009F50(queuea, 0, v241, v185);
      v197 = [v246 objectForKeyedSubscript:@"is_first_party"];
      if (v197)
      {
        v198 = [v246 objectForKeyedSubscript:@"is_first_party"];
        v229 = [v198 BOOLValue];
      }

      else
      {
        v229 = 1;
      }

      v199 = [v185 objectForKeyedSubscript:@"IsThirdPartyDevSupportModeHang"];
      if (v199)
      {
        v200 = [v185 objectForKeyedSubscript:@"IsThirdPartyDevSupportModeHang"];
        v201 = [v200 BOOLValue];
      }

      else
      {
        v201 = 0;
      }

      v202 = sub_10000B09C(v229, v201, v193);
      v296[0] = @"bundleid";
      v227 = sub_10000AA30(v241);
      v297[0] = v227;
      v296[1] = @"durationms";
      v225 = [NSNumber numberWithDouble:v193];
      v297[1] = v225;
      v296[2] = @"pid";
      dsemab = [v185 objectForKeyedSubscript:@"PID"];
      if (dsemab)
      {
        v203 = [v185 objectForKeyedSubscript:@"PID"];
      }

      else
      {
        v203 = &stru_100085FF8;
      }

      v217 = v203;
      v297[2] = v203;
      v296[3] = @"starttime";
      v223 = [NSNumber numberWithUnsignedLongLong:v189];
      v297[3] = v223;
      v296[4] = @"endtime";
      v221 = [NSNumber numberWithUnsignedLongLong:v191];
      v297[4] = v221;
      v296[5] = @"walltime";
      v220 = [NSNumber numberWithDouble:v187];
      v297[5] = v220;
      v296[6] = @"bugtype";
      v219 = [NSString stringWithFormat:@"%lu", v202];
      v297[6] = v219;
      v296[7] = @"sharewithdevs";
      v204 = [NSNumber numberWithBool:AppAnalyticsEnabled()];
      v297[7] = v204;
      v296[8] = @"adamid";
      v205 = [v246 objectForKeyedSubscript:@"adam_id"];
      if (v205)
      {
        v206 = [v246 objectForKeyedSubscript:@"adam_id"];
      }

      else
      {
        v206 = &stru_100085FF8;
      }

      v297[8] = v206;
      v296[9] = @"appversion";
      v207 = [v246 objectForKeyedSubscript:@"app_version"];
      if (v207)
      {
        v208 = [v246 objectForKeyedSubscript:@"app_version"];
      }

      else
      {
        v208 = &stru_100085FF8;
      }

      v297[9] = v208;
      v296[10] = @"HangUUID";
      v209 = [v185 objectForKeyedSubscript:?];
      v297[10] = v209;
      v210 = [NSDictionary dictionaryWithObjects:v297 forKeys:v296 count:11];

      if (v207)
      {
      }

      if (v205)
      {
      }

      if (dsemab)
      {
      }

      sub_100011728(v229, 1, v185, v247, v210);
      v196 = v241;
    }

    else
    {
      v195 = sub_100001684(0);
      v196 = v195;
      if (os_log_type_enabled(v195, OS_LOG_TYPE_FAULT))
      {
        sub_10003E844(v247, obj, v195);
        v196 = v195;
      }
    }
  }

  v211 = v247;
  unlink([v247 UTF8String]);

LABEL_222:
LABEL_223:
}

void sub_1000101B8(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x248], 8);
  _Block_object_dispose(&STACK[0x2F8], 8);
  _Unwind_Resume(a1);
}

void sub_100010214()
{
  v0 = 0;
  do
  {
    dword_1000903E8 = 0;
    v1 = nftw("/var/root/Library/Caches/hangtracerd/spool", sub_10000D3BC, 1, 3);
    if (v1)
    {
      v2 = sub_100001684(v1);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        sub_10003E8F8(&v110, v111, v2);
      }
    }

    if (v0 > 3)
    {
      break;
    }

    ++v0;
  }

  while (dword_1000903E8 > 0);
  v3 = &MGGetBoolAnswer_ptr;
  v4 = +[NSFileManager defaultManager];
  v115 = 0;
  v5 = [v4 contentsOfDirectoryAtPath:@"/var/mobile/Library/Caches/com.apple.backboardd/spool" error:&v115];
  v6 = v115;

  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    context = v6;
    v14 = objc_alloc_init(NSMutableArray);
    *v125 = 0u;
    v126 = 0u;
    v127 = 0u;
    v128 = 0u;
    v107 = v5;
    v15 = v5;
    v16 = [v15 countByEnumeratingWithState:v125 objects:buf count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v126;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v126 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = [@"/var/mobile/Library/Caches/com.apple.backboardd/spool" stringByAppendingPathComponent:*(*&v125[8] + 8 * i)];
          v21 = [[FileWithAttributes alloc] initWithFile:v20];
          if (v21)
          {
            [v14 addObject:v21];
          }

          else
          {
            v22 = sub_100001684(0);
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              *v116 = 138412290;
              *&v116[4] = v20;
              _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Unable to obtain file attributes for %@, skipping...", v116, 0xCu);
            }
          }
        }

        v17 = [v15 countByEnumeratingWithState:v125 objects:buf count:16];
      }

      while (v17);
    }

    [v14 sortUsingComparator:&stru_1000855D8];
    v13 = objc_alloc_init(NSMutableArray);
    memset(v120, 0, sizeof(v120));
    v121 = 0u;
    v122 = 0u;
    v9 = v14;
    v23 = [v9 countByEnumeratingWithState:v120 objects:v116 count:16];
    v3 = &MGGetBoolAnswer_ptr;
    if (v23)
    {
      v24 = v23;
      v25 = **&v120[16];
      do
      {
        for (j = 0; j != v24; j = j + 1)
        {
          if (**&v120[16] != v25)
          {
            objc_enumerationMutation(v9);
          }

          v27 = [*(*&v120[8] + 8 * j) filePath];
          [v13 addObject:v27];
        }

        v24 = [v9 countByEnumeratingWithState:v120 objects:v116 count:16];
      }

      while (v24);
    }

    v6 = context;
    v5 = v107;
  }

  else
  {
    v9 = sub_100001684(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [v6 localizedDescription];
      v11 = v10;
      v12 = @"Unknown";
      if (v10)
      {
        v12 = v10;
      }

      *buf = 138412290;
      v124 = v12;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Could not list files in CA stalls directory due to error: %@", buf, 0xCu);
    }

    v13 = 0;
  }

  *v116 = 0u;
  v117 = 0u;
  v118 = 0u;
  v119 = 0u;
  v28 = v13;
  v29 = [v28 countByEnumeratingWithState:v116 objects:buf count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v117;
    v104 = v28;
    do
    {
      v32 = 0;
      do
      {
        if (*v117 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = *(*&v116[8] + 8 * v32);
        v34 = [v33 pathExtension];
        v35 = [v34 isEqualToString:@"tailspin"];

        if ((v35 & 1) == 0)
        {
          v63 = sub_100001684(v36);
          if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
          {
            *v125 = 138543362;
            *&v125[4] = v33;
            v64 = v63;
            v65 = "Skipping non-tailspin file: %{public}@";
LABEL_78:
            _os_log_debug_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEBUG, v65, v125, 0xCu);
          }

LABEL_62:

          goto LABEL_63;
        }

        v37 = [v33 lastPathComponent];
        v38 = [v37 hasPrefix:@"processing_"];

        if (v38)
        {
          goto LABEL_63;
        }

        v112 = 0;
        v39 = [v3[261] defaultManager];
        v40 = [v39 fileExistsAtPath:v33 isDirectory:&v112];
        v41 = v112;

        if (!v40 || (v41 & 1) != 0)
        {
          v63 = sub_100001684(v42);
          if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
          {
            *v125 = 138412290;
            *&v125[4] = v33;
            v64 = v63;
            v65 = "Skipping directory with .tailspin extension: %@";
            goto LABEL_78;
          }

          goto LABEL_62;
        }

        v108 = objc_autoreleasePoolPush();
        v43 = v33;
        contexta = objc_autoreleasePoolPush();
        v44 = sub_100001684(contexta);
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
        {
          *v120 = 138412290;
          *&v120[4] = v43;
          _os_log_debug_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEBUG, "Started processing %@", v120, 0xCu);
        }

        v45 = [v43 lastPathComponent];
        v46 = [@"processing_" stringByAppendingString:v45];
        v109 = [@"/var/mobile/Library/Caches/com.apple.backboardd/spool" stringByAppendingPathComponent:v46];
        v47 = [v3[261] defaultManager];
        v115 = 0;
        v48 = [v47 attributesOfItemAtPath:v43 error:&v115];
        v49 = v115;

        if (!v48 || v49)
        {
          v66 = sub_100001684(v50);
          if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
          {
            v83 = [v49 localizedDescription];
            v103 = v83;
            *v120 = 138412546;
            v84 = @"Unknown";
            if (v83)
            {
              v84 = v83;
            }

            *&v120[4] = v43;
            *&v120[12] = 2112;
            *&v120[14] = v84;
            _os_log_error_impl(&_mh_execute_header, v66, OS_LOG_TYPE_ERROR, "Could not get attributes of '%@' due to error %@. Attempting to remove the file.", v120, 0x16u);
          }

          v67 = +[NSFileManager defaultManager];
          [v67 removeItemAtPath:v43 error:0];

          v68 = v48;
          goto LABEL_72;
        }

        v51 = [v48 fileSize];
        if (v51 >= 0x1400001)
        {
          v69 = v51;
          v70 = sub_100001684(v51);
          if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
          {
            *v120 = 138412802;
            *&v120[4] = v43;
            *&v120[12] = 2048;
            *&v120[14] = v69;
            *&v120[22] = 2048;
            *&v120[24] = 20971520;
            _os_log_error_impl(&_mh_execute_header, v70, OS_LOG_TYPE_ERROR, "Encountered tailspin file '%@' of size %lluB (> cap of %lluB). Attempting to remove the file.", v120, 0x20u);
          }

          v68 = +[NSFileManager defaultManager];
          [v68 removeItemAtPath:v43 error:0];
          v49 = v48;
LABEL_72:

          objc_autoreleasePoolPop(contexta);
          v72 = v108;
LABEL_73:
          v73 = sub_100001684(v71);
          if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
          {
            *v125 = 138412290;
            *&v125[4] = v43;
            _os_log_error_impl(&_mh_execute_header, v73, OS_LOG_TYPE_ERROR, "Encountered error trying to procesxs %@", v125, 0xCu);
          }

          goto LABEL_76;
        }

        v52 = +[NSFileManager defaultManager];
        v114 = 0;
        v53 = [v52 moveItemAtPath:v43 toPath:v109 error:&v114];
        v54 = v114;

        v102 = v54;
        if (v53 && !v54)
        {
          v55 = [NSFileHandle fileHandleForReadingAtPath:v109];
          log = v55;
          if (!v55)
          {
            v77 = +[NSFileManager defaultManager];
            [v77 removeItemAtPath:v109 error:0];

            v79 = sub_100001684(v78);
            v100 = v79;
            if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
            {
              *v120 = 138412290;
              *&v120[4] = v109;
              _os_log_error_impl(&_mh_execute_header, v79, OS_LOG_TYPE_ERROR, "Could not open %@ for reading. Attempting to remove the file.", v120, 0xCu);
            }

            v60 = 0;
            goto LABEL_96;
          }

          v56 = v55;
          v57 = [NSString stringWithFormat:@"%ld", 302];
          *v125 = _NSConcreteStackBlock;
          *&v125[8] = 3221225472;
          *&v126 = sub_1000140F0;
          *(&v126 + 1) = &unk_100085600;
          *&v127 = v56;
          if (OSAWriteLogForSubmission())
          {

            if (sub_10000AB70(@"/var/mobile/Library/Logs/CrashReporter/DiagnosticLogs/CoreAnimation/", 1))
            {
              v58 = [@"/var/mobile/Library/Logs/CrashReporter/DiagnosticLogs/CoreAnimation/" stringByAppendingPathComponent:v45];
              v59 = +[NSFileManager defaultManager];
              v113 = 0;
              v100 = v58;
              v60 = [v59 moveItemAtPath:v109 toPath:v58 error:&v113];
              v99 = v113;
              if (v99)
              {
                v60 = 0;
              }

              if (v60)
              {
                v62 = sub_100001684(v61);
                if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
                {
                  *v120 = 138412546;
                  *&v120[4] = v43;
                  *&v120[12] = 2112;
                  *&v120[14] = v100;
                  _os_log_debug_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEBUG, "Finished processing successfully %@. Final destination for file is %@", v120, 0x16u);
                }

LABEL_94:
                v90 = v99;
              }

              else
              {
                v88 = +[NSFileManager defaultManager];
                [v88 removeItemAtPath:v109 error:0];

                v62 = sub_100001684(v89);
                if (!os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_94;
                }

                v90 = v99;
                v94 = [v99 localizedDescription];
                v98 = v94;
                *v120 = 138543874;
                v95 = @"Unknown";
                if (v94)
                {
                  v95 = v94;
                }

                *&v120[4] = v109;
                *&v120[12] = 2114;
                *&v120[14] = v100;
                *&v120[22] = 2112;
                *&v120[24] = v95;
                _os_log_error_impl(&_mh_execute_header, v62, OS_LOG_TYPE_ERROR, "Could not rename %{public}@ to %{public}@ due to error %@. Attempting to remove the file", v120, 0x20u);
              }

LABEL_96:
              v72 = v108;
LABEL_97:
              v76 = contexta;

              goto LABEL_98;
            }

            v85 = +[NSFileManager defaultManager];
            [v85 removeItemAtPath:v109 error:0];

            v87 = sub_100001684(v86);
            v72 = v108;
            v100 = v87;
            if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
            {
              *v120 = 138412546;
              *&v120[4] = @"/var/mobile/Library/Logs/CrashReporter/DiagnosticLogs/CoreAnimation/";
              *&v120[12] = 2112;
              *&v120[14] = v109;
              _os_log_error_impl(&_mh_execute_header, v87, OS_LOG_TYPE_ERROR, "Could not create %@. Removing %@ rather than letting it persist.", v120, 0x16u);
            }
          }

          else
          {
            v100 = v57;
            v80 = +[NSFileManager defaultManager];
            [v80 removeItemAtPath:v109 error:0];

            v82 = sub_100001684(v81);
            v72 = v108;
            if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
            {
              *v120 = 138412290;
              *&v120[4] = v109;
              _os_log_error_impl(&_mh_execute_header, v82, OS_LOG_TYPE_ERROR, "Failed to write binary data for IPS file creation. Removing %@", v120, 0xCu);
            }
          }

          v60 = 0;
          goto LABEL_97;
        }

        v74 = +[NSFileManager defaultManager];
        [v74 removeItemAtPath:v43 error:0];

        log = sub_100001684(v75);
        if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
        {
          v91 = [v54 localizedDescription];
          v92 = v91;
          *v120 = 138543874;
          v93 = @"Unknown";
          if (v91)
          {
            v93 = v91;
          }

          *&v120[4] = v43;
          *&v120[12] = 2114;
          *&v120[14] = v109;
          *&v120[22] = 2112;
          *&v120[24] = v93;
          _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Could not rename %{public}@ to %{public}@ due to error %@. Attempting to remove the file.", v120, 0x20u);
        }

        v60 = 0;
        v76 = contexta;
        v72 = v108;
LABEL_98:

        objc_autoreleasePoolPop(v76);
        if ((v60 & 1) == 0)
        {
          goto LABEL_73;
        }

LABEL_76:
        objc_autoreleasePoolPop(v72);
        v3 = &MGGetBoolAnswer_ptr;
        v28 = v104;
LABEL_63:
        v32 = v32 + 1;
      }

      while (v30 != v32);
      v96 = [v28 countByEnumeratingWithState:v116 objects:buf count:16];
      v30 = v96;
    }

    while (v96);
  }

  v97 = +[HTPrefs sharedPrefs];
  sub_10000C6E0(@"/var/mobile/Library/Logs/CrashReporter/DiagnosticLogs/CoreAnimation/", [v97 savedTailspinMaxMB]);
}

void start()
{
  v0 = +[HTPrefs sharedPrefs];
  [v0 setupPrefsWithQueue:&_dispatch_main_q];

  out_token = -1;
  v1 = notify_register_check("com.apple.hangreporter.processing", &out_token);
  v2 = v1;
  if (v1 || out_token == -1)
  {
    v3 = sub_100001684(v1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 67109376;
      v13 = v2;
      v14 = 1024;
      v15 = out_token;
      _os_log_fault_impl(&_mh_execute_header, v3, OS_LOG_TYPE_FAULT, "Unable to checkin with notifitation: %d (token %d)", buf, 0xEu);
    }

    out_token = -1;
  }

  sub_1000180F8(v1);
  v4 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, -15);
  v5 = dispatch_queue_create("com.apple.hangreporter.tailspin.augmentation_queue", v4);
  v6 = qword_100090560;
  qword_100090560 = v5;

  v7 = dispatch_semaphore_create(0);
  v8 = qword_100090568;
  qword_100090568 = v7;

  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100011214;
  handler[3] = &unk_1000852A0;
  v11 = out_token;
  xpc_set_event_stream_handler("com.apple.fsevents.matching", &_dispatch_main_q, handler);

  v9 = dispatch_time(0, 10000000000);
  dispatch_after(v9, &_dispatch_main_q, &stru_1000852C0);

  dispatch_main();
}

void sub_100011214(uint64_t a1, xpc_object_t xdict)
{
  string = xpc_dictionary_get_string(xdict, _xpc_event_key_name);
  v4 = sub_100001684(string);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315138;
    v12 = string;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Received event: %s", &v11, 0xCu);
  }

  v5 = strncmp(string, "com.apple.hangreporter.spool.modified", 0x25uLL);
  if (v5)
  {
    v6 = sub_100001684(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10003E938();
    }
  }

  else
  {
    notify_set_state(*(a1 + 32), 1uLL);
    sub_100010214();
    v8 = notify_set_state(*(a1 + 32), 0);
    v9 = sub_100001684(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_10003E9A8();
    }

    v7 = notify_post("com.apple.hangreporter.processing");
  }

  v10 = sub_100001684(v7);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v11) = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Done...", &v11, 2u);
  }
}

void sub_1000113B8(id a1)
{
  v1 = sub_100001684(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Calling xpc_transaction_exit_clean() now", v2, 2u);
  }

  xpc_transaction_exit_clean();
}

BOOL sub_100011424(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = sub_100001684(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10003E9E4(a1, v5);
    }
  }

  return v5 == 0;
}

int64_t sub_100011498(id a1, id a2, id a3)
{
  v4 = a2;
  v5 = [a3 objectForKey:@"date"];
  v6 = [v4 objectForKey:@"date"];

  v7 = [v5 compare:v6];
  return v7;
}

uint64_t sub_100011518(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100011530(uint64_t a1, void *a2)
{
  v3 = a2;
  if (fcntl([v3 fileDescriptor], 50, v15) != -1)
  {
    v4 = [NSString stringWithUTF8String:v15];
    v5 = *(*(a1 + 48) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    v7 = [NSJSONSerialization dataWithJSONObject:*(a1 + 32) options:1 error:0];
    v8 = *(*(a1 + 56) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  v10 = dup([v3 fileDescriptor]);
  if (v10 == -1)
  {
    if (*(a1 + 80) == 1)
    {
      sub_10000DA84(0, 0xBuLL, *(a1 + 64), *(a1 + 72));
    }

    v14 = sub_100001684(v10);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10003EE8C();
    }

    goto LABEL_15;
  }

  v11 = fdopen(v10, "a");
  if (!v11)
  {
    if (*(a1 + 80) == 1)
    {
      sub_10000DA84(0, 0xAuLL, *(a1 + 64), *(a1 + 72));
    }

    v14 = sub_100001684(v11);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10003EE50();
    }

LABEL_15:

    goto LABEL_16;
  }

  v12 = v11;
  [*(a1 + 40) printToStream:v11];
  fclose(v12);
  v13 = [@"\n" dataUsingEncoding:4];
  [v3 writeData:v13];

  [v3 writeData:*(*(*(a1 + 56) + 8) + 40)];
  if (*(a1 + 80) == 1)
  {
    sub_10000DA84(1, 0, *(a1 + 64), *(a1 + 72));
  }

LABEL_16:
}

void sub_100011728(int a1, int a2, void *a3, void *a4, void *a5)
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = sub_100001684(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Starting submission of tailspin to diagnostic pipeline", buf, 2u);
  }

  if (a2 == 1)
  {
    v13 = [v9 objectForKeyedSubscript:@"HangType"];
    if (v13)
    {
      v14 = [v9 objectForKeyedSubscript:@"HangType"];
      v15 = [v14 intValue];
    }

    else
    {
      v15 = 0;
    }

    v19 = [v11 objectForKeyedSubscript:@"durationms"];
    if (v19)
    {
      v20 = v19;
      [v19 doubleValue];
      v22 = v21;
      v23 = +[HTPrefs sharedPrefs];
      v24 = [v23 runloopHangDurationThresholdMSec];

      if (v22 >= v24)
      {
        [v20 doubleValue];
        v28 = v27;
        v29 = +[HTPrefs sharedPrefs];
        v30 = [v29 runloopLongHangDurationThresholdMSec];

        v25 = @"Long Hang";
        if (v28 < v30)
        {
          v25 = @"Normal Hang";
        }
      }

      else
      {
        v25 = @"Micro Hang";
      }

      v31 = @"Third Party App";
      if (a1)
      {
        v31 = @"First Party App";
      }

      v18 = [NSString stringWithFormat:@"%@ Hang (%@)", v31, v25];
      v17 = sub_10000B024(v15);

LABEL_22:
      v64[1] = 0;
      v32 = DRShouldGatherLog();
      v33 = 0;
      v34 = sub_100001684(v33);
      v35 = os_log_type_enabled(v34, OS_LOG_TYPE_INFO);
      if (!v32)
      {
        if (v35)
        {
          v59 = [v10 lastPathComponent];
          *buf = 138412546;
          v68 = v59;
          v69 = 2112;
          v70 = v33;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "Post Processing %@: Should NOT submit to Diagnostic Pipeline, error (%@)", buf, 0x16u);
        }

        goto LABEL_41;
      }

      v62 = v9;
      if (v35)
      {
        v36 = [v10 lastPathComponent];
        *buf = 138412290;
        v68 = v36;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "Post Processing %@: Should submit to Diagnostic Pipeline", buf, 0xCu);
      }

      v61 = v17;

      v37 = sub_10000AB70(@"/tmp/HangTracer/", 1);
      v38 = sub_100001684(v37);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        v39 = [v10 lastPathComponent];
        v40 = [v10 lastPathComponent];
        *buf = 138412802;
        v68 = v39;
        v69 = 2112;
        v70 = v40;
        v71 = 2112;
        v72 = @"/tmp/HangTracer/";
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Post Processing %@: Copy tailspin %@ to directory accesible by mobile %@", buf, 0x20u);
      }

      v41 = [v10 lastPathComponent];
      v34 = [@"/tmp/HangTracer/" stringByAppendingPathComponent:v41];

      v42 = +[NSFileManager defaultManager];
      v64[0] = v33;
      v43 = [v42 copyItemAtPath:v10 toPath:v34 error:v64];
      v44 = v64[0];

      if (v43)
      {
        v46 = +[NSFileManager defaultManager];
        v65[0] = NSFileOwnerAccountName;
        v65[1] = NSFileGroupOwnerAccountName;
        v66[0] = @"mobile";
        v66[1] = @"mobile";
        v47 = [NSDictionary dictionaryWithObjects:v66 forKeys:v65 count:2];
        v63 = v44;
        v48 = [v46 setAttributes:v47 ofItemAtPath:v34 error:&v63];
        v49 = v63;

        if (v48)
        {
          v17 = v61;
          v51 = DRSubmitLog();
          v44 = v49;

          v53 = sub_100001684(v52);
          v54 = os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT);
          v9 = v62;
          if (v51)
          {
            if (v54)
            {
              v55 = [v10 lastPathComponent];
              *buf = 138412290;
              v68 = v55;
              v56 = "Post Processing %@: Submitted to Diagnostic Pipeline Successfully";
              v57 = v53;
              v58 = 12;
LABEL_45:
              _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, v56, buf, v58);
            }
          }

          else if (v54)
          {
            v55 = [v10 lastPathComponent];
            *buf = 138412546;
            v68 = v55;
            v69 = 2112;
            v70 = v44;
            v56 = "Post Processing %@: Failed submission to Diagnostic Pipeline due to Error (%@)";
            v57 = v53;
            v58 = 22;
            goto LABEL_45;
          }

LABEL_40:

          v33 = v44;
LABEL_41:

          goto LABEL_42;
        }

        v53 = sub_100001684(v50);
        v9 = v62;
        if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
        {
          sub_10003EF04(v34);
        }

        v44 = v49;
      }

      else
      {
        v53 = sub_100001684(v45);
        if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
        {
          v60 = [v10 lastPathComponent];
          *buf = 138412802;
          v68 = v60;
          v69 = 2112;
          v70 = @"/tmp/HangTracer/";
          v71 = 2112;
          v72 = v44;
          _os_log_error_impl(&_mh_execute_header, v53, OS_LOG_TYPE_ERROR, "Post Processing %@: Failed to copy tailspin to %@, error (%@)", buf, 0x20u);
        }
      }

      v17 = v61;
      goto LABEL_40;
    }

    v18 = sub_100001684(0);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_10003EFAC();
    }
  }

  else
  {
    v16 = [v11 objectForKeyedSubscript:@"reason"];
    if (v16)
    {
      v17 = v16;
      v18 = @"ApplicationLaunch";
      goto LABEL_22;
    }

    v26 = sub_100001684(0);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      sub_10003EEC8();
    }

    v18 = @"ApplicationLaunch";
  }

LABEL_42:
}

HTOrderedNSDict *sub_100011E70(void *a1)
{
  v1 = a1;
  v2 = [NSArray arrayWithObjects:@"topBlockingProcess", @"topBlockingThreadId", @"topBlockingPid", @"topBlockingTimeMS", @"otherBlockingThreads", @"nextTopBlockingThreadInfo", 0];
  v3 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v1 objectForKeyedSubscript:v9];
        if (v10)
        {
          if ([v9 isEqual:@"nextTopBlockingThreadInfo"])
          {
            v11 = sub_100011E70(v10);
            [v3 setObject:v11 forKey:v9];
          }

          else
          {
            [v3 setObject:v10 forKey:v9];
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return v3;
}

void sub_100012054(uint64_t a1, void *a2)
{
  v3 = a2;
  if (fcntl([v3 fileDescriptor], 50, v17) != -1)
  {
    v4 = [NSString stringWithUTF8String:v17];
    v5 = *(*(a1 + 56) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  [v3 writeData:*(a1 + 32)];
  v7 = [@"\n" dataUsingEncoding:4];
  [v3 writeData:v7];

  [v3 writeData:*(*(*(a1 + 64) + 8) + 40)];
  [v3 fileDescriptor];

  sub_100020198();
  v9 = sub_100001684(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [*(a1 + 40) lastPathComponent];
    v11 = v10;
    v12 = *(*(*(a1 + 56) + 8) + 40);
    if (!v12)
    {
      v12 = *(a1 + 48);
    }

    *buf = 138412546;
    v14 = v10;
    v15 = 2112;
    v16 = v12;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Post-Processing %@: Wrote %@ successfully! (\n", buf, 0x16u);
  }

  if (*(a1 + 96) == 1)
  {
    sub_10000DA84(1, 0, *(a1 + 80), *(a1 + 88));
  }
}

id sub_10001220C(uint64_t a1)
{
  v8[0] = off_10008FDD8;
  v7[0] = off_10008FDC8;
  v7[1] = off_10008FDE0;
  v2 = sub_10000B024(*(a1 + 40));
  v3 = *(a1 + 32);
  v8[1] = v2;
  v8[2] = v3;
  v7[2] = off_10008FDF0;
  v7[3] = off_10008FDE8;
  v4 = [NSNumber numberWithDouble:*(a1 + 48)];
  v8[3] = v4;
  v5 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:4];

  return v5;
}

id sub_100012320(uint64_t a1)
{
  v9[0] = *(a1 + 32);
  v8[0] = @"EnablementType";
  v8[1] = @"SpindumpSuccessful";
  v2 = [NSNumber numberWithBool:*(a1 + 64)];
  v9[1] = v2;
  v8[2] = @"SpindumpFailureReason";
  v3 = [NSNumber numberWithInteger:*(a1 + 40)];
  v9[2] = v3;
  v8[3] = @"HangSubType";
  v4 = [NSNumber numberWithInteger:*(a1 + 48)];
  v9[3] = v4;
  v8[4] = @"HTBugType";
  v5 = [NSNumber numberWithInteger:*(a1 + 56)];
  v9[4] = v5;
  v6 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:5];

  return v6;
}

intptr_t sub_10001246C(uint64_t a1, int a2)
{
  v4 = sub_100001684(a1);
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 32);
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Successfully augmented tailspin at %@ with symbols", &v8, 0xCu);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_10003EFE8();
  }

  return dispatch_semaphore_signal(qword_100090568);
}

id sub_100012550(uint64_t a1)
{
  v4 = @"DurationSec";
  v1 = [NSNumber numberWithDouble:*(a1 + 32)];
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

void sub_100012604(uint64_t a1, void *a2)
{
  v3 = a2;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = *(a1 + 32);
  v4 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v17 + 1) + 8 * i);
        v9 = [v8 objectForKeyedSubscript:@"StartTime"];
        v10 = [v9 unsignedLongLongValue];

        v11 = [v8 objectForKeyedSubscript:@"EndTime"];
        v12 = [v11 unsignedLongLongValue];

        v13 = [v8 objectForKeyedSubscript:@"CAFenceId"];
        v14 = [v13 unsignedLongLongValue];

        v15 = [v8 objectForKeyedSubscript:@"RecentAppsDict"];
        v3[2](v3, v8, v10, v12, v14, v15);
      }

      v5 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v5);
  }
}

void sub_1000127BC(uint64_t a1, uint64_t a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100012850;
  v3[3] = &unk_100085418;
  v5 = a2;
  v2 = *(a1 + 40);
  v4 = *(a1 + 32);
  (*(v2 + 16))(v2, v3);
}

void sub_100012850(uint64_t a1, void *a2, unint64_t a3, unint64_t a4, uint64_t a5, void *a6)
{
  v11 = a2;
  v12 = a6;
  v13 = *(a1 + 40);
  if (*(v13 + 8) == a5 && *v13 >= a3 && *v13 <= a4)
  {
    v15 = *(v13 + 48);
    if (v15)
    {
      v16 = sub_10000BA70(*(a1 + 32), a5, a3, a4);
      v17 = sub_100001684([v16 setFenceStartTime:**(a1 + 40)]);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        sub_10003F060();
      }

      goto LABEL_12;
    }

    if ((v15 & 2) != 0)
    {
      v16 = sub_10000BA70(*(a1 + 32), a5, a3, a4);
      v17 = sub_100001684([v16 setFenceEndTime:**(a1 + 40)]);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        sub_10003F0D0();
      }

LABEL_12:
    }
  }
}

void sub_100012988(uint64_t a1, uint64_t a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100012A1C;
  v3[3] = &unk_100085418;
  v5 = a2;
  v2 = *(a1 + 40);
  v4 = *(a1 + 32);
  (*(v2 + 16))(v2, v3);
}

void sub_100012A1C(uint64_t a1, void *a2, unint64_t a3, unint64_t a4, uint64_t a5, void *a6)
{
  v11 = a2;
  v12 = a6;
  v13 = *(a1 + 40);
  if (v13[1] == a5)
  {
    v14 = *v13;
    if (v14 >= a3 && v14 <= a4)
    {
      v16 = sub_10000BA70(*(a1 + 32), a5, a3, a4);
      v17 = sub_100001684([v16 setResolution:2]);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        sub_10003F140();
      }
    }
  }
}

void sub_100012AF4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 56);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100012BB8;
  v4[3] = &unk_100085468;
  v8 = a2;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  (*(v3 + 16))(v3, v4);
}

void sub_100012BB8(uint64_t a1, void *a2, unint64_t a3, unint64_t a4, uint64_t a5, void *a6)
{
  v11 = a2;
  v12 = a6;
  v13 = *(a1 + 56);
  if (*(v13 + 16) == a5 && *v13 >= a3 && *v13 <= a4)
  {
    v15 = *(v13 + 88);
    if (v15 == -1)
    {
      v16 = *(v13 + 40);
      v43 = *(a1 + 32);
      v17 = qword_1000903F0;
      if (!qword_1000903F0)
      {
        v18 = objc_alloc_init(NSMutableDictionary);
        v19 = qword_1000903F0;
        qword_1000903F0 = v18;

        v17 = qword_1000903F0;
      }

      v45 = 0;
      v46 = &v45;
      v47 = 0x2020000000;
      v48 = -1;
      v20 = [NSNumber numberWithUnsignedLongLong:v16];
      v21 = [v17 objectForKeyedSubscript:v20];
      v22 = v21 == 0;

      if (v22)
      {
        v44[0] = _NSConcreteStackBlock;
        v44[1] = 3221225472;
        v44[2] = sub_100013FA0;
        v44[3] = &unk_100085598;
        v44[4] = &v45;
        v44[5] = v16;
        v29 = [v43 enumerateTasks:v44];
        v30 = *(v46 + 6);
        if (v30 == -1)
        {
          v31 = sub_100001684(v29);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
          {
            *buf = 134217984;
            v50 = v16;
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "Null pid in ktrace data: iterated SA threads and did NOT find threadid %llu (or its pid)", buf, 0xCu);
          }

          v30 = *(v46 + 6);
        }

        v28 = [NSNumber numberWithInt:v30];
        v32 = qword_1000903F0;
        v33 = [NSNumber numberWithUnsignedLongLong:v16];
        [v32 setObject:v28 forKeyedSubscript:v33];
      }

      else
      {
        v23 = qword_1000903F0;
        v24 = [NSNumber numberWithUnsignedLongLong:v16];
        v25 = [v23 objectForKeyedSubscript:v24];
        v26 = [v25 intValue];
        *(v46 + 6) = v26;

        v28 = sub_100001684(v27);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          sub_10003F1B0();
        }
      }

      v15 = *(v46 + 6);
      _Block_object_dispose(&v45, 8);

      v13 = *(a1 + 56);
    }

    v34 = *(v13 + 48);
    if (v34)
    {
      v40 = sub_10000BA70(*(a1 + 40), *(v13 + 16), a3, a4);
      v42 = *(a1 + 56);
      v41 = (a1 + 56);
      v38 = sub_10000BB4C(*(v41 - 1), *(v42 + 16), *(v42 + 8), v15, a3, a4);
      v39 = sub_100001684([v38 setHandleStartTime:**v41]);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
      {
        sub_10003F234();
      }

      goto LABEL_24;
    }

    if ((v34 & 2) != 0)
    {
      v35 = sub_10000BA70(*(a1 + 40), *(v13 + 16), a3, a4);
      v37 = *(a1 + 56);
      v36 = (a1 + 56);
      v38 = sub_10000BB4C(*(v36 - 1), *(v37 + 16), *(v37 + 8), v15, a3, a4);
      v39 = sub_100001684([v38 setHandleEndTime:**v36]);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
      {
        sub_10003F2A8();
      }

LABEL_24:
    }
  }
}

void sub_100012FB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

intptr_t sub_100012FDC(uint64_t a1)
{
  ktrace_session_destroy();
  *(*(*(a1 + 40) + 8) + 24) = 0;
  v2 = *(a1 + 32);

  return dispatch_semaphore_signal(v2);
}

uint64_t sub_10001302C(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 8) + 24);
  if (result)
  {
    return ktrace_end();
  }

  return result;
}

void sub_100013048(id *a1, void *a2, _BYTE *a3, _BYTE *a4, uint64_t a5, void *a6)
{
  v8 = a2;
  v108 = a6;
  v9 = sub_100001684(v108);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_10003F31C();
  }

  v147 = 0u;
  v148 = 0u;
  v145 = 0u;
  v146 = 0u;
  v10 = a1[4];
  v112 = [v10 countByEnumeratingWithState:&v145 objects:v168 count:16];
  if (v112)
  {
    v117 = 0;
    v114 = 0;
    v120 = 0;
    v109 = *v146;
    v11 = &selRef_setValue_forKey_;
    v110 = v10;
    v111 = v8;
    v116 = a1;
    do
    {
      v12 = 0;
      do
      {
        if (*v146 != v109)
        {
          objc_enumerationMutation(v10);
        }

        v113 = v12;
        v13 = *(*(&v145 + 1) + 8 * v12);
        v141 = 0u;
        v142 = 0u;
        v143 = 0u;
        v144 = 0u;
        v126 = v13;
        obj = [a1[4] objectForKey:?];
        v119 = [obj countByEnumeratingWithState:&v141 objects:v167 count:16];
        if (v119)
        {
          v118 = *v142;
          do
          {
            v14 = 0;
            do
            {
              if (*v142 != v118)
              {
                objc_enumerationMutation(obj);
              }

              v122 = v14;
              v15 = *(*(&v141 + 1) + 8 * v14);
              v16 = [a1[4] objectForKey:v126];
              v121 = v15;
              v17 = [v16 objectForKey:v15];

              v18 = objc_alloc_init(NSMutableArray);
              v137 = 0u;
              v138 = 0u;
              v139 = 0u;
              v140 = 0u;
              v19 = v17;
              v20 = [v19 countByEnumeratingWithState:&v137 objects:v166 count:16];
              if (v20)
              {
                v21 = v20;
                v22 = *v138;
                do
                {
                  for (i = 0; i != v21; i = i + 1)
                  {
                    if (*v138 != v22)
                    {
                      objc_enumerationMutation(v19);
                    }

                    v24 = *(*(&v137 + 1) + 8 * i);
                    v25 = [v19 objectForKey:v24];
                    v26 = [v25 handleEndTime];
                    if (v26 >= [v25 handleStartTime])
                    {
                      v27 = [objc_alloc((v11 + 326)) initWithType:0 andTimestamp:objc_msgSend(v25 andName:{"handleStartTime"), objc_msgSend(v24, "unsignedLongLongValue")}];
                      [v18 addObject:v27];

                      v28 = [objc_alloc((v11 + 326)) initWithType:1 andTimestamp:objc_msgSend(v25 andName:{"handleEndTime"), objc_msgSend(v24, "unsignedLongLongValue")}];
                      [v18 addObject:v28];
                    }
                  }

                  v21 = [v19 countByEnumeratingWithState:&v137 objects:v166 count:16];
                }

                while (v21);
              }

              v29 = [v18 sortedArrayUsingComparator:&stru_100085520];
              v133 = 0u;
              v134 = 0u;
              v135 = 0u;
              v136 = 0u;
              v30 = [v29 countByEnumeratingWithState:&v133 objects:v165 count:16];
              v123 = v18;
              if (v30)
              {
                v31 = v30;
                v131 = 0;
                v32 = 0;
                v33 = 0;
                v34 = *v134;
                v124 = v29;
                do
                {
                  for (j = 0; j != v31; j = j + 1)
                  {
                    if (*v134 != v34)
                    {
                      objc_enumerationMutation(v29);
                    }

                    v36 = *(*(&v133 + 1) + 8 * j);
                    v37 = [v36 type];
                    if (!v37)
                    {
                      if (!v32)
                      {
                        v37 = [v36 timestamp];
                        v131 = v37;
                      }

                      ++v32;
                      v38 = sub_100001684(v37);
                      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
                      {
                        v128 = v33;
                        v47 = [v126 intValue];
                        v48 = [v36 timestamp];
                        v49 = [v36 name];
                        *buf = 67109888;
                        *v150 = v47;
                        v33 = v128;
                        *&v150[4] = 2048;
                        *&v150[6] = v48;
                        v29 = v124;
                        *&v150[14] = 1024;
                        *&v150[16] = v32;
                        *&v150[20] = 2048;
                        *&v150[22] = v49;
                        _os_log_debug_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEBUG, "pid(%i): Grab handle time=%llu count=>%i handle=%llu", buf, 0x22u);
                      }
                    }

                    v39 = [v36 type];
                    if (v39 == 1)
                    {
                      if (!--v32)
                      {
                        v40 = [v36 timestamp];
                        v33 += v40 - v131;
                        v41 = sub_100001684(v40);
                        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
                        {
                          v129 = v33;
                          v50 = [v126 intValue];
                          v51 = ([v36 timestamp] - v131);
                          v52 = [v36 name];
                          *buf = 67109888;
                          *v150 = v50;
                          v33 = v129;
                          *&v150[4] = 2048;
                          *&v150[6] = v51;
                          v29 = v124;
                          *&v150[14] = 2048;
                          *&v150[16] = v129;
                          *&v150[24] = 2048;
                          *&v150[26] = v52;
                          _os_log_debug_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEBUG, "pid(%i): Dropping last handle! Save time holding handle += %llu (total for pid now = %llu handle=%llu", buf, 0x26u);
                        }
                      }

                      v42 = sub_100001684(v39);
                      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
                      {
                        v43 = v33;
                        v44 = [v126 intValue];
                        v45 = [v36 timestamp];
                        v46 = [v36 name];
                        *buf = 67109888;
                        *v150 = v44;
                        v33 = v43;
                        *&v150[4] = 2048;
                        *&v150[6] = v45;
                        v18 = v123;
                        v29 = v124;
                        *&v150[14] = 1024;
                        *&v150[16] = v32;
                        *&v150[20] = 2048;
                        *&v150[22] = v46;
                        _os_log_debug_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEBUG, "pid(%i): Drop handle time=%llu count=>%i handle=%llu", buf, 0x22u);
                      }
                    }
                  }

                  v31 = [v29 countByEnumeratingWithState:&v133 objects:v165 count:16];
                }

                while (v31);
              }

              else
              {
                v33 = 0;
              }

              v53 = sub_100001684(0);
              if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
              {
                v57 = v33;
                v58 = [v121 longLongValue];
                v59 = [v126 intValue];
                *buf = 134218496;
                *v150 = v58;
                v33 = v57;
                v18 = v123;
                *&v150[8] = 1024;
                *&v150[10] = v59;
                *&v150[14] = 2048;
                *&v150[16] = v33;
                _os_log_debug_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEBUG, "fence=%lli pid=%i total_time=%lli", buf, 0x1Cu);
              }

              v11 = &selRef_setValue_forKey_;
              if (v33 >= v120)
              {
                v114 = [v126 intValue];
                v54 = v121;

                v56 = sub_100001684(v55);
                if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
                {
                  v60 = v33;
                  v61 = [v54 longLongValue];
                  v62 = [v126 intValue];
                  *buf = 134218240;
                  *v150 = v61;
                  v33 = v60;
                  v18 = v123;
                  *&v150[8] = 1024;
                  *&v150[10] = v62;
                  _os_log_debug_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEBUG, "fence=%lli pid=%i is the new slowest fence pid", buf, 0x12u);
                }

                v117 = v54;
                v120 = v33;
              }

              a1 = v116;

              v14 = v122 + 1;
            }

            while ((v122 + 1) != v119);
            v119 = [obj countByEnumeratingWithState:&v141 objects:v167 count:16];
          }

          while (v119);
        }

        v12 = v113 + 1;
        v10 = v110;
        v8 = v111;
      }

      while ((v113 + 1) != v112);
      v112 = [v110 countByEnumeratingWithState:&v145 objects:v168 count:16];
    }

    while (v112);

    if (v117)
    {
      v64 = [NSString stringWithFormat:@"%i", v114];
      v65 = [v108 objectForKeyedSubscript:v64];

      if (!v65)
      {
        v67 = sub_100001684(v66);
        if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "Targent Fence PID not found in recentAppsPaths Dict, trying pathForPid", buf, 2u);
        }

        v66 = sub_10000A62C();
        if (v66)
        {
          v65 = v66;
        }

        else
        {
          v69 = [a1[5] tasksByPid];
          v70 = [NSNumber numberWithInt:v114];
          v71 = [v69 objectForKeyedSubscript:v70];
          v72 = [v71 lastObject];
          v65 = [v72 mainBinaryPath];
        }
      }

      v73 = sub_100001684(v66);
      if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        *v150 = v65;
        *&v150[8] = 1024;
        *&v150[10] = v114;
        _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_INFO, "Target Process Path: %@ (pid: %i)", buf, 0x12u);
      }

      v74 = [a1[6] objectForKey:v117];
      v130 = [v74 fenceStartTime];

      v75 = [a1[6] objectForKey:v117];
      v76 = [v75 fenceResolutionTime];

      v132 = v76;
      v77 = v76 - v130;
      v78 = [a1[6] objectForKey:v117];
      v79 = [v78 resolution];

      if (v79 == 2)
      {
        v80 = @"blown-fence";
      }

      else
      {
        v80 = @"long-fence";
      }

      v81 = [a1[6] objectForKey:v117];
      if ([v81 fenceResolutionTime] == a4)
      {
      }

      else
      {
        v82 = [a1[6] objectForKey:v117];
        v83 = [v82 fenceStartTime];

        if (v83 != a3)
        {
          v84 = &stru_100085FF8;
          goto LABEL_75;
        }
      }

      v84 = @"~";
LABEL_75:
      v85 = [v65 lastPathComponent];
      v87 = sub_10000B548(v120, v86);
      v127 = [NSString stringWithFormat:@"Fence-hang-%@: %ims handling fence, %@ (fence duration=%@%ims)", v85, v87, v80, v84, sub_10000B548(v77, v88)];

      v89 = sub_10000AA30(v65);
      v90 = AnalyticsSendEventLazy();
      v91 = sub_10000ADAC(v90);
      v92 = v130;
      v93 = v132;
      sub_10000AEBC(@"Blown CA Fence Hang", v89, v130, v132, v91);

      v95 = sub_100001684(v94);
      if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
      {
        v125 = [v111 objectForKeyedSubscript:@"PID"];
        v96 = [v125 intValue];
        v97 = [v111 objectForKeyedSubscript:@"ProcessPath"];
        v99 = sub_10000B548(a4 - a3, v98);
        v101 = sub_10000B548(v77, v100);
        v102 = [v111 objectForKeyedSubscript:@"Reason"];
        *buf = 67111938;
        *v150 = v96;
        *&v150[4] = 1024;
        *&v150[6] = v114;
        *&v150[10] = 2112;
        *&v150[12] = v97;
        *&v150[20] = 2112;
        *&v150[22] = v65;
        *&v150[30] = 2048;
        *&v150[32] = a3;
        v151 = 2048;
        v152 = v130;
        v153 = 2048;
        v154 = a4;
        v155 = 2048;
        v92 = v130;
        v156 = v132;
        v157 = 1024;
        v158 = v99;
        v159 = 1024;
        v160 = v101;
        v161 = 2112;
        v162 = v102;
        v163 = 2112;
        v164 = v127;
        _os_log_impl(&_mh_execute_header, v95, OS_LOG_TYPE_DEFAULT, "Updated fence hang info: pid=%i->%i path=%@->%@ target_start=%llu->%llu, target_end=%llu->%llu (duration=%i->%i ms); %@->%@", buf, 0x6Au);

        v93 = v132;
      }

      v103 = [NSNumber numberWithInt:v114];
      v8 = v111;
      [v111 setObject:v103 forKeyedSubscript:@"PID"];

      v104 = [NSNumber numberWithUnsignedLongLong:v92];
      [v111 setObject:v104 forKeyedSubscript:@"StartTime"];

      v105 = [NSNumber numberWithUnsignedLongLong:v93];
      [v111 setObject:v105 forKeyedSubscript:@"EndTime"];

      [v111 setObject:v127 forKeyedSubscript:@"Reason"];
      [v111 setObject:v65 forKeyedSubscript:@"ProcessPath"];
      [v111 setObject:&__kCFBooleanTrue forKeyedSubscript:@"FenceInfoUpdated"];
      ++*(*(v116[7] + 1) + 24);

      v68 = v117;
      goto LABEL_78;
    }
  }

  else
  {
  }

  v68 = sub_100001684(v63);
  if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
  {
    sub_10003F38C();
  }

LABEL_78:
}

int64_t sub_100013E18(id a1, HRHandleStateChange *a2, HRHandleStateChange *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [(HRHandleStateChange *)v4 timestamp];
  if (v6 <= [(HRHandleStateChange *)v5 timestamp])
  {
    v8 = [(HRHandleStateChange *)v4 timestamp];
    if (v8 >= [(HRHandleStateChange *)v5 timestamp])
    {
      v7 = 0;
    }

    else
    {
      v7 = -1;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

id sub_100013E9C(uint64_t a1, uint64_t a2)
{
  v7[0] = off_10008FDC8;
  v7[1] = off_10008FDE0;
  v8[0] = off_10008FDD0;
  v8[1] = @"Blown CA Fence Hang";
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v8[2] = v3;
  v7[2] = off_10008FDF0;
  v7[3] = off_10008FDE8;
  v4 = [NSNumber numberWithDouble:sub_10000B548(v2, a2)];
  v8[3] = v4;
  v5 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:4];

  return v5;
}

void sub_100013FA0(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = [v5 threads];
  v7 = [NSNumber numberWithUnsignedLongLong:*(a1 + 40)];
  v8 = [v6 objectForKeyedSubscript:v7];

  if (v8)
  {
    v9 = [v5 pid];
    *(*(*(a1 + 32) + 8) + 24) = v9;
    v10 = sub_100001684(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_10003F3C8();
    }

    *a3 = 1;
  }
}

int64_t sub_100014080(id a1, FileWithAttributes *a2, FileWithAttributes *a3)
{
  v4 = a3;
  v5 = [(FileWithAttributes *)a2 creationDate];
  v6 = [(FileWithAttributes *)v4 creationDate];

  v7 = [v5 compare:v6];
  return v7;
}

void sub_1000140F0(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) readDataOfLength:0x4000];
  if ([v3 length])
  {
    do
    {
      [v5 writeData:v3];
      v4 = [*(a1 + 32) readDataOfLength:0x4000];

      v3 = v4;
    }

    while ([v4 length]);
  }

  else
  {
    v4 = v3;
  }

  [*(a1 + 32) closeFile];
}

void sub_1000142A8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0x16u);
}

void sub_1000147A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000147B8(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  if ([v6 unsignedLongLongValue] < *(a1 + 40))
  {
    *(*(*(a1 + 32) + 8) + 32) = [v6 unsignedLongLongValue];
    *a4 = 1;
  }
}

__CFString *sub_1000153B0(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = [v3 tasksByPid];
  v6 = [v5 objectForKeyedSubscript:v4];

  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (!v7)
  {

LABEL_13:
    v9 = @"unknown";
    goto LABEL_14;
  }

  v8 = v7;
  v17 = v3;
  v9 = 0;
  v10 = *v19;
  do
  {
    for (i = 0; i != v8; i = i + 1)
    {
      if (*v19 != v10)
      {
        objc_enumerationMutation(v6);
      }

      v12 = *(*(&v18 + 1) + 8 * i);
      v13 = [v12 name];
      v14 = [v13 isEqualToString:@"xpcproxy"];

      if ((v14 & 1) == 0)
      {
        v15 = [v12 name];

        v9 = v15;
      }
    }

    v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  }

  while (v8);

  v3 = v17;
  if (!v9)
  {
    goto LABEL_13;
  }

LABEL_14:

  return v9;
}

id sub_100016D78(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2;
  v7 = [NSNumber numberWithUnsignedLongLong:a3];
  v8 = [v6 objectForKeyedSubscript:v7];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v9 = [v5 tasksByPid];
  v10 = [v9 objectForKeyedSubscript:v8];

  v11 = [v10 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v11)
  {
    v12 = v11;
    v23 = v8;
    v24 = v6;
    v25 = v5;
    v13 = *v27;
    while (2)
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v27 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v26 + 1) + 8 * i);
        v16 = [v15 threads];
        v17 = [NSNumber numberWithUnsignedLongLong:a3];
        v18 = [v16 objectForKeyedSubscript:v17];

        if (v18)
        {
          v20 = [v15 threads];
          v21 = [NSNumber numberWithUnsignedLongLong:a3];
          v19 = [v20 objectForKeyedSubscript:v21];

          goto LABEL_11;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }

    v19 = 0;
LABEL_11:
    v6 = v24;
    v5 = v25;
    v8 = v23;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

void sub_100017494(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x12u);
}

id sub_1000174B4(uint64_t a1, void *a2)
{
  v22 = 0;
  v23[0] = &v22;
  v23[1] = 0x3032000000;
  v23[2] = sub_1000178B0;
  v23[3] = sub_1000178C0;
  v24 = &stru_100085FF8;
  if (ktrace_file_open())
  {
    v21[1] = _NSConcreteStackBlock;
    v21[2] = 3221225472;
    v21[3] = sub_1000178C8;
    v21[4] = &unk_100085708;
    v21[5] = &v22;
    v4 = ktrace_file_iterate();
    v5 = ktrace_file_close();
    if (v4)
    {
      v6 = sub_100001684(v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = strerror(v4);
        sub_10003F758(v7, buf, v6);
      }

      if (a2)
      {
        v8 = [NSString stringWithFormat:@"Error iterating over tailspin file: %s", strerror(v4)];
        *a2 = sub_10000AAE4(5, v8);
      }

      goto LABEL_11;
    }

    v13 = [*(v23[0] + 40) dataUsingEncoding:4];
    if (v13)
    {
      v21[0] = 0;
      v14 = [NSJSONSerialization JSONObjectWithData:v13 options:1 error:v21];
      v15 = v21[0];
      v16 = v15;
      if (!v14 || v15)
      {
        v19 = sub_100001684(v15);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          sub_10003F7A0();
        }

        if (a2)
        {
          sub_10000AAE4(5, @"Error deserializing JSON from tailspin reason string");
          *a2 = v12 = 0;
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v17 = v14;
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v17 = objc_alloc_init(NSMutableArray);
            [v17 addObject:v14];
          }

          else
          {
            v17 = 0;
          }
        }

        v12 = v17;
      }
    }

    else
    {
      v18 = sub_100001684(0);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_10003F814(v23, v18);
      }

      if (a2)
      {
        sub_10000AAE4(5, @"Error creating JSON data from reason string");
        *a2 = v12 = 0;
      }

      else
      {
        v12 = 0;
      }
    }
  }

  else
  {
    if (!a2)
    {
LABEL_11:
      v12 = 0;
      goto LABEL_33;
    }

    v9 = sub_100001684(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = __error();
      v11 = strerror(*v10);
      sub_10003F894(v11, buf, a1, v9);
    }

    sub_10000AAE4(5, @"Could not open tailspin file for parsing reason string");
    *a2 = v12 = 0;
  }

LABEL_33:
  _Block_object_dispose(&v22, 8);

  return v12;
}

void sub_10001786C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000178B0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000178C8(uint64_t a1, uint64_t a2)
{
  v3 = ktrace_chunk_tag();
  v4 = ktrace_chunk_version_major();
  if (ktrace_config_create())
  {
    reason = ktrace_config_get_reason();
    if (reason)
    {
      v6 = [NSString stringWithUTF8String:reason];
      v7 = *(*(a1 + 32) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;

      ktrace_config_destroy();
      return 0;
    }

    ktrace_config_destroy();
  }

  result = 1;
  if (v3 == 36867 && v4 <= 1)
  {
    v10 = ktrace_chunk_size();
    v11 = [[NSData alloc] initWithBytesNoCopy:ktrace_chunk_map_data() length:v10 freeWhenDone:0];
    v12 = [NSPropertyListSerialization propertyListWithData:v11 options:0 format:0 error:0];
    v13 = [v12 objectForKeyedSubscript:UnsafePointer];
    v14 = *(*(a1 + 32) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;

    ktrace_chunk_unmap_data();
    return 0;
  }

  return result;
}

id sub_100017A28(void *a1, void *a2)
{
  v3 = a1;
  v47 = a2;
  v4 = sub_100001684(v47);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Getting processing hangs", buf, 2u);
  }

  if (v47)
  {
    v5 = v47;
  }

  else
  {
    v5 = @"/var/root/Library/Caches/hangtracerd/spool";
  }

  v6 = [NSURL fileURLWithPath:v5 isDirectory:1];
  v7 = +[NSFileManager defaultManager];
  v64 = 0;
  v45 = v6;
  v8 = [v7 contentsOfDirectoryAtURL:v6 includingPropertiesForKeys:0 options:0 error:&v64];
  v44 = v64;

  v9 = [v8 sortedArrayUsingComparator:&stru_100085800];

  v46 = v3;
  if (v3)
  {
    reply = xpc_dictionary_create_reply(v3);
  }

  else
  {
    reply = xpc_dictionary_create_empty();
  }

  xdict = reply;
  xarray = xpc_array_create_empty();
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  obj = v9;
  v11 = [obj countByEnumeratingWithState:&v60 objects:v76 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v61;
    v48 = *v61;
    do
    {
      v14 = 0;
      v49 = v12;
      do
      {
        if (*v61 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v60 + 1) + 8 * v14);
        v16 = [v15 lastPathComponent];
        v17 = [v16 hasSuffix:@"tailspin"];

        if (v17)
        {
          v18 = [v15 path];
          v19 = sub_1000174B4([v18 UTF8String], 0);

          if (v19)
          {
            v51 = v19;
            v52 = v14;
            v58 = 0u;
            v59 = 0u;
            v56 = 0u;
            v57 = 0u;
            v55 = v19;
            v20 = [v55 countByEnumeratingWithState:&v56 objects:v75 count:16];
            if (v20)
            {
              v21 = v20;
              v22 = *v57;
              v54 = *v57;
              do
              {
                for (i = 0; i != v21; i = i + 1)
                {
                  if (*v57 != v22)
                  {
                    objc_enumerationMutation(v55);
                  }

                  v24 = *(*(&v56 + 1) + 8 * i);
                  empty = xpc_dictionary_create_empty();
                  v26 = [v24 objectForKeyedSubscript:@"HangNotificationUUID"];

                  if (v26)
                  {
                    v27 = [v24 objectForKeyedSubscript:@"HangNotificationUUID"];
                    xpc_dictionary_set_string(empty, [@"hangtracer.hangid" UTF8String], objc_msgSend(v27, "UTF8String"));
                    v28 = [v24 objectForKeyedSubscript:@"ProcessPath"];

                    if (v28)
                    {
                      v29 = [v24 objectForKeyedSubscript:@"ProcessPath"];
                      xpc_dictionary_set_string(empty, [@"hangtracer.process_path" UTF8String], objc_msgSend(v29, "UTF8String"));
                      v30 = sub_10000AA30(v29);
                      xpc_dictionary_set_string(empty, [@"hangtracer.bundle_id" UTF8String], objc_msgSend(v30, "UTF8String"));
                      v31 = [v24 objectForKeyedSubscript:@"StartTime"];
                      if (v31)
                      {
                        v32 = [v24 objectForKeyedSubscript:@"EndTime"];

                        if (v32)
                        {
                          v33 = [v24 objectForKeyedSubscript:@"StartTime"];
                          v34 = [v33 unsignedLongLongValue];

                          v35 = [v24 objectForKeyedSubscript:@"EndTime"];
                          v36 = [v35 unsignedLongLongValue];

                          v31 = [NSString stringWithFormat:@"%.0f", sub_10000B548(v36 - v34, v37)];
                          xpc_dictionary_set_string(empty, [@"hangtracer.duration" UTF8String], objc_msgSend(v31, "UTF8String"));
                        }

                        else
                        {
                          v31 = 0;
                        }
                      }

                      v38 = [v24 objectForKeyedSubscript:@"CreatedAt"];

                      if (v38)
                      {
                        v40 = [v24 objectForKeyedSubscript:@"CreatedAt"];
                        xpc_dictionary_set_string(empty, [@"hangtracer.created_at" UTF8String], objc_msgSend(v40, "UTF8String"));
                      }

                      else
                      {
                        v40 = 0;
                      }

                      v41 = sub_100001684(v39);
                      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 138413314;
                        v66 = v29;
                        v67 = 2112;
                        v68 = v30;
                        v69 = 2112;
                        v70 = v27;
                        v71 = 2112;
                        v72 = v31;
                        v73 = 2112;
                        v74 = v40;
                        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "createProcessingHangsReply: adding hang info - processPath %@, bundleID %@, hangUUID %@, duration %@, createdAt %@", buf, 0x34u);
                      }

                      xpc_array_append_value(xarray, empty);
                      v22 = v54;
                    }
                  }

                  else
                  {
                    v27 = 0;
                  }
                }

                v21 = [v55 countByEnumeratingWithState:&v56 objects:v75 count:16];
              }

              while (v21);
            }

            v13 = v48;
            v12 = v49;
            v19 = v51;
            v14 = v52;
          }
        }

        v14 = v14 + 1;
      }

      while (v14 != v12);
      v12 = [obj countByEnumeratingWithState:&v60 objects:v76 count:16];
    }

    while (v12);
  }

  xpc_dictionary_set_value(xdict, off_10008FE00, xarray);

  return xdict;
}

void sub_1000180F8(uint64_t a1)
{
  v1 = sub_100001684(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Starting hangreporter service", v5, 2u);
  }

  if (qword_1000903F8)
  {
    sub_10003F8EC();
  }

  if (qword_100090408 != -1)
  {
    sub_10003F918();
  }

  v2 = qword_100090400;
  mach_service = xpc_connection_create_mach_service("com.apple.hangreporter", v2, 1uLL);
  v4 = qword_1000903F8;
  qword_1000903F8 = mach_service;

  xpc_connection_set_event_handler(qword_1000903F8, &stru_100085748);
  xpc_connection_resume(qword_1000903F8);
}

void sub_1000181D4(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  type = xpc_get_type(v2);
  if (type == &_xpc_type_connection)
  {
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000183B4;
    handler[3] = &unk_100085770;
    v6 = v2;
    v10 = v6;
    xpc_connection_set_event_handler(v6, handler);
    xpc_connection_resume(v6);
  }

  else
  {
    if (type == &_xpc_type_rich_error)
    {
      v4 = xpc_rich_error_copy_description(v2);
      v5 = sub_100001684(v4);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        sub_10003F9A8();
      }
    }

    else
    {
      v4 = xpc_copy_description(v2);
      v5 = sub_100001684(v4);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        sub_10003F940();
      }
    }

    free(v4);
    if (v2 == &_xpc_error_connection_invalid)
    {
      v7 = xpc_connection_copy_invalidation_reason();
      v8 = sub_100001684(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v12 = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "invalidation reason: %s", buf, 0xCu);
      }

      free(v7);
    }
  }
}

void sub_1000183B4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (xpc_get_type(v3) == &_xpc_type_dictionary)
  {
    v6 = *(a1 + 32);
    v7 = v3;
    string = xpc_dictionary_get_string(v7, off_10008FDF8);
    if (string && !strcmp(string, off_10008FE08))
    {
      v11 = sub_100017A28(v7, 0);
      if (v11)
      {
        v12 = v11;
        xpc_connection_send_message(v6, v11);
      }
    }

    else
    {
      v9 = xpc_copy_description(v7);
      v10 = sub_100001684(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        sub_10003FA10();
      }

      free(v9);
    }
  }

  else
  {
    v4 = xpc_copy_description(v3);
    v5 = sub_100001684(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v13 = 136315138;
      v14 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Encountered non-dictionary event: %s", &v13, 0xCu);
    }

    free(v4);
  }
}

void sub_100018550()
{
  v0 = +[NSDistributedNotificationCenter defaultCenter];
  [v0 postNotificationName:@"com.apple.hangreporter.didSaveTailspin" object:0];
}

id sub_1000185A8(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v4 objectForKeyedSubscript:@"EndTime"];
  v6 = [v5 unsignedLongLongValue];

  v7 = [v4 objectForKeyedSubscript:@"HangType"];
  v8 = [v7 intValue];

  if ((v8 | 8) == 0xA)
  {
    v9 = [v4 objectForKeyedSubscript:@"PID"];
    [v9 unsignedIntValue];

    v10 = [v4 objectForKeyedSubscript:@"StartTime"];
    [v10 unsignedLongLongValue];

    [v3 UTF8String];
    if (ktrace_file_open())
    {
      v32 = 0;
      v11 = ktrace_file_latest_timestamp();
      if (v11)
      {
        v12 = sub_100001684(v11);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
        {
          sub_10003FA78();
        }

LABEL_6:

        ktrace_file_close();
        goto LABEL_39;
      }

      v14 = ktrace_file_earliest_timestamp();
      if (v14)
      {
        v12 = sub_100001684(v14);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
        {
          sub_10003FAE0();
        }

        goto LABEL_6;
      }

      if (v6)
      {
        ktrace_session_create();
        ktrace_session_set_event_names_enabled();
        ktrace_set_execnames_enabled();
        ktrace_set_uuid_map_enabled();
        ktrace_set_walltimes_enabled();
        ktrace_set_vnode_paths_enabled();
        ktrace_set_thread_groups_enabled();
        ktrace_set_thread_cputime_enabled();
        ktrace_set_jetsam_coalitions_enabled();
        ktrace_set_coprocessor_tracing_enabled();
        ktrace_set_remotetime_conversion_enabled();
        ktrace_session_set_event_names_enabled();
        v15 = ktrace_set_ktrace_file();
        if (v15)
        {
          v16 = sub_100001684(v15);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
          {
            sub_10003FB48();
          }

          ktrace_file_close();
          ktrace_session_destroy();
        }

        else
        {
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x2020000000;
          v40 = 0;
          ktrace_events_single();
          v18 = dispatch_semaphore_create(0);
          ktrace_set_completion_handler();
          v19 = dispatch_get_global_queue(0, 0);
          v20 = ktrace_start();

          if (v20)
          {
            v22 = sub_100001684(v21);
            if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
            {
              sub_10003FBB0();
            }

            ktrace_session_destroy();
          }

          else
          {
            v23 = dispatch_time(0, 100000000000);
            v24 = dispatch_semaphore_wait(v18, v23);
            if (v24)
            {
              v25 = sub_100001684(v24);
              if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
              {
                sub_10003FC18(v25);
              }

              ktrace_end();
            }

            v26 = ktrace_session_destroy();
            if (*(*&buf[8] + 24))
            {
              v27 = sub_100001684(v26);
              if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
              {
                v28 = *(*&buf[8] + 24);
                *v33 = 134218496;
                v34 = v6;
                v35 = 2048;
                v36 = v32;
                v37 = 2048;
                v38 = v28;
                _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "Hang timed out at %llu completed before tailspin was saved at %llu, using hang completion time %llu", v33, 0x20u);
              }

              v29 = (*&buf[8] + 24);
            }

            else
            {
              v30 = sub_100001684(v26);
              if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
              {
                *v33 = 134218240;
                v34 = v6;
                v35 = 2048;
                v36 = v32;
                _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "Hang timed out at %llu did not complete before tailspin was saved at %llu, using tailspin end time", v33, 0x16u);
              }

              v29 = &v32;
            }

            v6 = *v29;
          }

          _Block_object_dispose(buf, 8);
        }
      }

      else
      {
        v17 = sub_100001684(v14);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          *buf = 134218240;
          *&buf[4] = v6;
          *&buf[12] = 2048;
          *&buf[14] = 0;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Hang ending at %llu does not overlap tailspin data starting at %llu, using hang completion time", buf, 0x16u);
        }

        ktrace_file_close();
      }
    }

    else
    {
      v13 = sub_100001684(0);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        sub_10003FC5C(v3, v13);
      }
    }
  }

LABEL_39:

  return v6;
}

void sub_100018BF0(uint64_t a1, uint64_t a2)
{
  pid_for_thread = *(a2 + 88);
  if (pid_for_thread == -1)
  {
    pid_for_thread = ktrace_get_pid_for_thread();
  }

  if (pid_for_thread == *(a1 + 64))
  {
    v5 = *(a2 + 8);
    if (v5 < *(a1 + 48))
    {
      v6 = *(a2 + 16);
      v7 = *(a1 + 56);
      if (v6 > v7)
      {
        if (v5 == v7)
        {
          v8 = *(*(a1 + 32) + 8);
          if (!*(v8 + 24))
          {
            *(v8 + 24) = v6;
            return;
          }

          v9 = sub_100001684(pid_for_thread);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
          {
            v10 = *(*(*(a1 + 32) + 8) + 24);
            v12 = *(a1 + 48);
            v11 = *(a1 + 56);
            v15 = 134218752;
            v16 = v11;
            v17 = 2048;
            v18 = v10;
            v19 = 2048;
            v20 = v6;
            v21 = 2048;
            v22 = v12;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Two overlapping hangs: start:%llu end1:%llu end2:%llu metadataEnd:%llu", &v15, 0x2Au);
          }
        }

        else
        {
          v9 = sub_100001684(pid_for_thread);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
          {
            v14 = *(a1 + 48);
            v13 = *(a1 + 56);
            v15 = 134218752;
            v16 = v5;
            v17 = 2048;
            v18 = v6;
            v19 = 2048;
            v20 = v13;
            v21 = 2048;
            v22 = v14;
            _os_log_fault_impl(&_mh_execute_header, v9, OS_LOG_TYPE_FAULT, "Overlapping hang has mismatched start time: event:%llu-%llu vs metadata:%llu-%llu", &v15, 0x2Au);
          }
        }
      }
    }
  }
}

int64_t sub_100018DAC(id a1, NSURL *a2, NSURL *a3)
{
  v4 = a3;
  v5 = [(NSURL *)a2 lastPathComponent];
  v6 = [(NSURL *)v4 lastPathComponent];

  v7 = [v5 compare:v6];
  return v7;
}

void sub_100018E1C(id a1)
{
  v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v1 = dispatch_queue_create("com.apple.hangreporter.service", v3);
  v2 = qword_100090400;
  qword_100090400 = v1;
}

void sub_100018E9C(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_fault_impl(a1, log, OS_LOG_TYPE_FAULT, a4, va, 0x12u);
}

void sub_100018EBC(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, va, 0xCu);
}

CFDictionaryRef sub_100018ED8()
{
  IndirectionTableStatistics = ASP_GetIndirectionTableStatistics();

  return IndirectionTableStatistics;
}

id sub_100018F00()
{
  v0 = 40 * vm_page_size;
  v7 = 40 * vm_page_size;
  v1 = malloc_type_valloc(40 * vm_page_size, 0x2E1DB155uLL);
  if (v1 || (v0 = 4 * vm_page_size, v7 = 4 * vm_page_size, (v1 = malloc_type_valloc(4 * vm_page_size, 0x6D1B22FAuLL)) != 0))
  {
    v2 = v1;
    snapshot = nand_get_snapshot(0, v1, v0, &v7);
    if (snapshot)
    {
      NSLog(@"Failed to get snapshot buffer, status 0x%x\n", snapshot);
      v4 = 0;
    }

    else
    {
      v8 = @"NANDSnapshot";
      v5 = [NSString stringWithCString:v2 encoding:1];
      v9 = v5;
      v4 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
    }

    free(v2);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id sub_100019534(uint64_t a1)
{
  if (a1 >= 0x2B)
  {
    v2 = [NSString stringWithFormat:@"%d", a1];
  }

  else
  {
    v2 = *(&off_100085840 + a1);
  }

  return v2;
}

id sub_1000195A4(uint64_t a1)
{
  if ((a1 - 1) >= 0x1F)
  {
    v2 = [NSString stringWithFormat:@"SIG%d", a1];
  }

  else
  {
    v2 = *(&off_100085998 + (a1 - 1));
  }

  return v2;
}

__CFString *sub_100019618(uint64_t a1)
{
  v3 = a1;
  v4 = @"invalid reason";
  switch(v3)
  {
    case 0:
      goto LABEL_19;
    case 1:
      v4 = @"generic";

      break;
    case 2:
      v4 = @"memory highwater";

      break;
    case 3:
      v4 = @"vnode shortage";

      break;
    case 4:
      v4 = @"vm page shortage";

      break;
    case 5:
      v4 = @"process thrashing";

      break;
    case 6:
      v4 = @"filecache thrashing";

      break;
    case 7:
      v4 = @"per-process limit reached";

      break;
    case 8:
      v4 = @"disk space shortage";

      break;
    case 9:
      v4 = @"idle exit";

      break;
    case 10:
      v4 = @"zone map exhaustion";

      break;
    case 11:
      v4 = @"vm compressor thrashing";

      break;
    case 12:
      v4 = @"vm compressor space shortage";

      break;
    case 13:
      v4 = @"swap space shortage";

      break;
    case 14:
      v4 = @"sustained memory pressure";

      break;
    case 15:
      v4 = @"vm pageout starvation";

      break;
    case 16:
      v4 = @"conclave limit";

      break;
    case 17:
      v4 = @"long idle exit";

      break;
    default:
      if (a1 == 100)
      {
        v4 = @"cpu limit";
      }

      else
      {
        v4 = [NSString stringWithFormat:@"%d", a1];
LABEL_19:
      }

      break;
  }

  return v4;
}

__CFString *sub_100019850(uint64_t a1)
{
  if (a1 > 3221229822)
  {
    if (a1 <= 3306925314)
    {
      switch(a1)
      {
        case 3221229823:
          v2 = @"thermal pressure";

          return v2;
        case 3306925313:
          v2 = @"cpu violation";

          return v2;
        case 3306925314:
          v2 = @"walltime violation";

          return v2;
      }
    }

    else if (a1 > 3735943696)
    {
      if (a1 == 3735943697)
      {
        v2 = @"user quit";

        return v2;
      }

      if (a1 == 4227595259)
      {
        v2 = @"force quit";

        return v2;
      }
    }

    else
    {
      if (a1 == 3306925315)
      {
        v2 = @"system busy";

        return v2;
      }

      if (a1 == 3735883980)
      {
        v2 = @"resource exclusion";

        return v2;
      }
    }

LABEL_62:
    v2 = [NSString stringWithFormat:@"%#llx", a1];

    return v2;
  }

  if (a1 <= 1539435072)
  {
    switch(a1)
    {
      case 95805101:
        v2 = @"application assertion";

        return v2;
      case 439025681:
        v2 = @"input ui scene";

        return v2;
      case 732775916:
        v2 = @"secure draw violation";

        return v2;
    }

    goto LABEL_62;
  }

  if (a1 > 1539435076)
  {
    if (a1 == 1539435077)
    {
      v2 = @"legacy clear the board";

      return v2;
    }

    if (a1 == 2343432205)
    {
      v2 = @"watchdog";

      return v2;
    }

    goto LABEL_62;
  }

  if (a1 != 1539435073)
  {
    if (a1 == 1539435076)
    {
      v2 = @"clear the board";

      return v2;
    }

    goto LABEL_62;
  }

  v2 = @"languages changed";

  return v2;
}

id sub_100019B18(uint64_t a1)
{
  if ((a1 - 1) >= 4)
  {
    v2 = [NSString stringWithFormat:@"%d", a1];
  }

  else
  {
    v2 = *(&off_100085A90 + (a1 - 1));
  }

  return v2;
}

id sub_100019B8C(uint64_t a1)
{
  if ((a1 - 1) >= 0x13)
  {
    v2 = [NSString stringWithFormat:@"%d", a1];
  }

  else
  {
    v2 = *(&off_100085AB0 + (a1 - 1));
  }

  return v2;
}

id sub_100019C00(uint64_t a1)
{
  if ((a1 - 1) >= 5)
  {
    v2 = [NSString stringWithFormat:@"%d", a1];
  }

  else
  {
    v2 = *(&off_100085B48 + (a1 - 1));
  }

  return v2;
}

id sub_100019C74(uint64_t a1)
{
  if ((a1 - 1) >= 9)
  {
    v2 = [NSString stringWithFormat:@"%u", a1];
  }

  else
  {
    v2 = *(&off_100085B70 + (a1 - 1));
  }

  return v2;
}

id sub_100019CE8(uint64_t a1)
{
  v2 = a1 - 1;
  if (a1 - 1) < 9 && ((0x17Fu >> v2))
  {
    v3 = *(&off_100085BB8 + v2);
  }

  else
  {
    v3 = [NSString stringWithFormat:@"%llu", a1];
  }

  return v3;
}

__CFString *sub_100019D68(uint64_t a1)
{
  if (a1 <= 2343432204)
  {
    if (a1 <= 562215633)
    {
      switch(a1)
      {
        case 0:
          v2 = @"none";

          return v2;
        case 97132013:
          v2 = @"conditions changed";

          return v2;
        case 562215597:
          v2 = @"assertion timeout";

          return v2;
      }
    }

    else
    {
      if (a1 <= 562215635)
      {
        if (a1 == 562215634)
        {
          v2 = @"background task assertion timeout";
        }

        else
        {
          v2 = @"background url session completion timeout";
        }

        return v2;
      }

      if (a1 == 562215636)
      {
        v2 = @"background fetch completion timeout";

        return v2;
      }

      if (a1 == 732775916)
      {
        v2 = @"security violation";

        return v2;
      }
    }

LABEL_63:
    v2 = [NSString stringWithFormat:@"%#llx", a1];

    return v2;
  }

  if (a1 > 3490524076)
  {
    if (a1 > 3735905537)
    {
      if (a1 == 3735905538)
      {
        v2 = @"termination assertion";

        return v2;
      }

      if (a1 == 3735943697)
      {
        v2 = @"user initiated quit";

        return v2;
      }
    }

    else
    {
      if (a1 == 3490524077)
      {
        v2 = @"max assertions violation";

        return v2;
      }

      if (a1 == 3735883980)
      {
        v2 = @"resource exclusion";

        return v2;
      }
    }

    goto LABEL_63;
  }

  if (a1 > 2970726672)
  {
    if (a1 == 2970726673)
    {
      v2 = @"process exited";

      return v2;
    }

    if (a1 == 3221229823)
    {
      v2 = @"thermal pressure";

      return v2;
    }

    goto LABEL_63;
  }

  if (a1 != 2343432205)
  {
    if (a1 == 2970405393)
    {
      v2 = @"max states violation";

      return v2;
    }

    goto LABEL_63;
  }

  v2 = @"watchdog violation";

  return v2;
}

id sub_10001A060(uint64_t a1)
{
  if ((a1 - 1) >= 5)
  {
    v2 = [NSString stringWithFormat:@"%llu", a1];
  }

  else
  {
    v2 = *(&off_100085C00 + a1 - 1);
  }

  return v2;
}

id sub_10001A0D4(uint64_t a1)
{
  v1 = a1 - 1;
  if (a1 - 1) < 5 && ((0x1Du >> v1))
  {
    v2 = *(&off_100085C28 + v1);
  }

  else
  {
    v3 = sub_10001A060(a1);
    v2 = [v3 capitalizedString];
  }

  return v2;
}

id sub_10001A148(uint64_t a1)
{
  if ((a1 - 1) >= 3)
  {
    v2 = [NSString stringWithFormat:@"%llu", a1];
  }

  else
  {
    v2 = *(&off_100085C50 + a1 - 1);
  }

  return v2;
}

__CFString *sub_10001A1BC(uint64_t a1)
{
  if (a1 <= 2)
  {
    if (a1 == 1)
    {
      v2 = @"service timeout";
    }

    else
    {
      if (a1 != 2)
      {
LABEL_22:
        v2 = [NSString stringWithFormat:@"%llu", a1];

        return v2;
      }

      v2 = @"timeout no diags";
    }
  }

  else
  {
    switch(a1)
    {
      case 3:
        v2 = @"unblock deadlock";

        break;
      case 4:
        v2 = @"unblock thread limit";

        break;
      case 1001:
        v2 = @"chronokit";

        return v2;
      default:
        goto LABEL_22;
    }
  }

  return v2;
}

__CFString *sub_10001A2B0(uint64_t a1)
{
  if (a1 == 1)
  {
    v2 = @"api violation";
  }

  else if (a1 == 2)
  {
    v2 = @"internal error";
  }

  else
  {
    v2 = [NSString stringWithFormat:@"%llu", a1];
  }

  return v2;
}

id sub_10001A33C(uint64_t a1)
{
  v2 = a1 - 1;
  if (a1 - 1) < 0x15 && ((0x183FFFu >> v2))
  {
    v3 = *(&off_100085C68 + v2);
  }

  else
  {
    v3 = [NSString stringWithFormat:@"%llu", a1];
  }

  return v3;
}

id sub_10001A3C0(int a1, uint64_t a2)
{
  switch(a1)
  {
    case 1:
      v2 = sub_100019618(a2);
      break;
    case 2:
      v2 = sub_1000195A4(a2);
      break;
    case 3:
      v2 = sub_100019B18(a2);
      break;
    case 6:
      v2 = sub_100019CE8(a2);
      break;
    case 7:
      v2 = sub_100019C74(a2);
      break;
    case 9:
      v2 = sub_100019B8C(a2);
      break;
    case 10:
      v2 = sub_100019850(a2);
      break;
    case 15:
      v2 = sub_100019D68(a2);
      break;
    case 18:
      v2 = sub_10001A0D4(a2);
      break;
    case 20:
      v2 = sub_10001A1BC(a2);
      break;
    case 22:
      v2 = sub_10001A2B0(a2);
      break;
    case 23:
      v2 = sub_100019C00(a2);
      break;
    case 27:
      v2 = sub_10001A148(a2);
      break;
    case 32:
      v2 = sub_10001A33C(a2);
      break;
    default:
      v2 = [NSString stringWithFormat:@"%llu", a2];
      break;
  }

  return v2;
}

void sub_10001A558(id a1)
{
  v3[0] = @"HTProfile";
  v3[1] = @"HTEPL";
  v3[2] = @"HTThirdPartyDevSupport";
  v3[3] = @"PLTasking";
  v3[4] = &stru_100085FF8;
  v3[5] = @"PDSEHangTracer";
  v3[6] = @"PDSEHTBadDay";
  v3[7] = @"PDSEHTThirdParty";
  v3[8] = @"PDSEWorkflowResponsiveness";
  v3[9] = @"PDSEHTRateOnly";
  v3[10] = @"PDSESentry";
  v3[11] = @"PDSEAppLaunch";
  v1 = [NSArray arrayWithObjects:v3 count:12];
  v2 = qword_100090418;
  qword_100090418 = v1;
}

void sub_10001C26C(id a1)
{
  qword_100090420 = objc_alloc_init(HTPrefs);

  _objc_release_x1();
}

void sub_10001E6B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  objc_destroyWeak((v32 + 80));
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v33 - 208), 8);
  _Block_object_dispose((v33 - 176), 8);
  _Block_object_dispose((v33 - 144), 8);
  objc_destroyWeak((v33 - 104));
  _Unwind_Resume(a1);
}

void sub_10001E71C(uint64_t a1, int a2)
{
  if (*(*(*(a1 + 40) + 8) + 24) == a2)
  {
    v3 = sub_100001684(a1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v4 = "HTPrefs: Tasking Changed";
LABEL_16:
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, v4, buf, 2u);
    }
  }

  else if (*(*(*(a1 + 48) + 8) + 24) == a2)
  {
    v3 = sub_100001684(a1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v4 = "HTPrefs: Telemetry Changed";
      goto LABEL_16;
    }
  }

  else if (*(*(*(a1 + 56) + 8) + 24) == a2)
  {
    v3 = sub_100001684(a1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v4 = "HTPrefs: Profile List Changed";
      goto LABEL_16;
    }
  }

  else if (*(*(*(a1 + 64) + 8) + 24) == a2)
  {
    v3 = sub_100001684(a1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v4 = "HTPrefs: EPL State Changed";
      goto LABEL_16;
    }
  }

  else
  {
    if (*(*(*(a1 + 72) + 8) + 24) != a2)
    {
      goto LABEL_18;
    }

    v3 = sub_100001684(a1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v4 = "HTPrefs: HT Self-Enablement State Changed Triggered Refresh";
      goto LABEL_16;
    }
  }

LABEL_18:
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v6 = [WeakRetained hangtracerDaemonEnabled];

  [*(a1 + 32) refreshHTPrefs];
  v7 = objc_loadWeakRetained((a1 + 80));
  v8 = [v7 hangtracerDaemonEnabled];

  if (v6 != v8)
  {
    v10 = sub_100001684(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      if (v6)
      {
        v11 = @"ON";
      }

      else
      {
        v11 = @"OFF";
      }

      v12 = objc_loadWeakRetained((a1 + 80));
      if ([v12 hangtracerDaemonEnabled])
      {
        v13 = @"ON";
      }

      else
      {
        v13 = @"OFF";
      }

      *buf = 138412546;
      v22 = v11;
      v23 = 2112;
      v24 = v13;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "HTPrefs: HangTracer Enabled State Changed: %@ -> %@", buf, 0x16u);
    }

    v14 = objc_loadWeakRetained((a1 + 80));
    v15 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v14 hangtracerDaemonEnabled]);
    v20 = v15;
    v16 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];

    v17 = +[NSNotificationCenter defaultCenter];
    v18 = objc_loadWeakRetained((a1 + 80));
    [v17 postNotificationName:@"com.apple.hangtracer.daemonstate" object:v18 userInfo:v16];
  }
}