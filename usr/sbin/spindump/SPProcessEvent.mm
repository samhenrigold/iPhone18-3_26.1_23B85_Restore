@interface SPProcessEvent
- (BOOL)targetProcessIsThirdParty;
- (SPProcessEvent)init;
- (double)dataDuration;
- (double)eventDuration;
- (double)overlapDuration;
- (id)_samplePrinterForSampleStore:(id)store;
- (int)numSamples;
- (int)numSamplesAvoidedDueToAudio;
- (void)_performSamplePrinterWork:(id)work;
- (void)_saveReportToStream:(__sFILE *)stream;
- (void)_saveReportToStream:(__sFILE *)stream withSampleStore:(id)store;
- (void)_setupSampleStore:(id)store;
- (void)filterToStartTime:(id)time endTime:(id)endTime;
- (void)performSamplePrinterWork:(id)work;
- (void)saveReportToStream:(__sFILE *)stream;
- (void)takeTransaction;
@end

@implementation SPProcessEvent

- (void)takeTransaction
{
  if (!self->_transaction)
  {
    self->_transaction = sub_1000359B8("Process Event [%d]", self->_targetProcessId);

    _objc_release_x1();
  }
}

- (SPProcessEvent)init
{
  v8.receiver = self;
  v8.super_class = SPProcessEvent;
  v2 = [(SPProcessEvent *)&v8 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_useDsymForUUIDForEverything = 0;
    v2->_includeTextualFormatInReport = 1;
    v2->_headerOnly = 0;
    v4 = objc_alloc_init(SASamplePrintOptions);
    printOptions = v3->_printOptions;
    v3->_printOptions = v4;

    v6 = byte_100117E94;
    v3->_shouldSymbolicate = (byte_100117E94 & 8) != 0;
    v3->_shouldUseBulkSymbolication = ((v6 >> 4) & 1) == 0;
  }

  return v3;
}

- (int)numSamples
{
  if (self->_isSampling)
  {
    numSamplesAtEnd = [(SPStackshotProvider *)self->_sampleProvider numSamples];
  }

  else
  {
    numSamplesAtEnd = self->_numSamplesAtEnd;
  }

  return numSamplesAtEnd - self->_numSamplesAtStart;
}

- (int)numSamplesAvoidedDueToAudio
{
  if (self->_isSampling)
  {
    numSamplesAvoidedDueToAudioAtEnd = [(SPStackshotProvider *)self->_sampleProvider numSamplesAvoidedDueToAudio];
  }

  else
  {
    numSamplesAvoidedDueToAudioAtEnd = self->_numSamplesAvoidedDueToAudioAtEnd;
  }

  return numSamplesAvoidedDueToAudioAtEnd - self->_numSamplesAvoidedDueToAudioAtStart;
}

- (double)dataDuration
{
  dataTimeRange = self->_dataTimeRange;
  if (!dataTimeRange)
  {
    return 0.0;
  }

  startTime = [(SATimeRange *)dataTimeRange startTime];
  endTime = [(SATimeRange *)self->_dataTimeRange endTime];
  v6 = sub_100078EB4(startTime, endTime);

  return v6;
}

- (double)eventDuration
{
  eventTimeRange = self->_eventTimeRange;
  if (!eventTimeRange)
  {
    return 0.0;
  }

  startTime = [(SATimeRange *)eventTimeRange startTime];
  endTime = [(SATimeRange *)self->_eventTimeRange endTime];
  v6 = sub_100078EB4(startTime, endTime);

  return v6;
}

- (double)overlapDuration
{
  p_eventTimeRange = &self->_eventTimeRange;
  dataTimeRange = self->_dataTimeRange;
  eventTimeRange = self->_eventTimeRange;
  if (dataTimeRange)
  {
    p_dataTimeRange = &self->_dataTimeRange;
    startTime = [(SATimeRange *)dataTimeRange startTime];
    if (eventTimeRange)
    {
      startTime2 = [(SATimeRange *)*p_eventTimeRange startTime];
      if ([startTime compare:startTime2] == -1)
      {
        v9 = p_eventTimeRange;
      }

      else
      {
        v9 = p_dataTimeRange;
      }

      startTime3 = [*v9 startTime];

      endTime = [(SATimeRange *)*p_dataTimeRange endTime];
      endTime2 = [(SATimeRange *)*p_eventTimeRange endTime];
      if ([endTime compare:endTime2] == 1)
      {
        v13 = p_eventTimeRange;
      }

      else
      {
        v13 = p_dataTimeRange;
      }

      endTime3 = [*v13 endTime];

      startTime = startTime3;
      goto LABEL_14;
    }

    v15 = *p_dataTimeRange;
LABEL_13:
    endTime3 = [(SATimeRange *)v15 endTime];
LABEL_14:
    v16 = sub_100078EB4(startTime, endTime3);

    return v16;
  }

  if (eventTimeRange)
  {
    startTime = [(SATimeRange *)self->_eventTimeRange startTime];
    v15 = *p_eventTimeRange;
    goto LABEL_13;
  }

  return 0.0;
}

- (void)filterToStartTime:(id)time endTime:(id)endTime
{
  timeCopy = time;
  endTimeCopy = endTime;
  reportTimeStart = self->_reportTimeStart;
  self->_reportTimeStart = timeCopy;
  v10 = timeCopy;

  reportTimeEnd = self->_reportTimeEnd;
  self->_reportTimeEnd = endTimeCopy;
}

- (void)_setupSampleStore:(id)store
{
  storeCopy = store;
  p_targetProcessId = &self->_targetProcessId;
  targetProcessId = self->_targetProcessId;
  if (!storeCopy)
  {
    if (targetProcessId < 0)
    {
      if (byte_100117E80)
      {
        v105 = __error();
        v106 = *v105;
        v108 = sub_100035B80(v105, v107);
        if (os_log_type_enabled(v108, OS_LOG_TYPE_ERROR))
        {
          sub_1000B6104();
        }

        *__error() = v106;
      }

      if (byte_100117E81 == 1 && dword_100117510 <= 3)
      {
        v110 = *__error();
        v111 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s: nil sampleStore", "sampleStore");
        if (v111)
        {
          v119 = v111;
          CStringPtr = CFStringGetCStringPtr(v111, 0x8000100u);
          if (CStringPtr)
          {
            v121 = CStringPtr;
            v122 = 0;
          }

          else
          {
            v121 = malloc_type_calloc(0x400uLL, 1uLL, 0xE0211047uLL);
            CFStringGetCString(v119, v121, 1024, 0x8000100u);
            v122 = v121;
          }

          if (qword_100117E88)
          {
            v129 = qword_100117E88;
          }

          else
          {
            v129 = __stderrp;
          }

          fprintf(v129, "%s\n", v121);
          if (v122)
          {
            free(v122);
          }

          CFRelease(v119);
        }

        else
        {
          v113 = sub_100035B80(0, v112);
          if (os_log_type_enabled(v113, OS_LOG_TYPE_FAULT))
          {
            sub_1000B6184();
          }

          if (qword_100117E88)
          {
            v114 = qword_100117E88;
          }

          else
          {
            v114 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v114);
        }

        *__error() = v110;
      }

      sub_100035A54("[SPProcessEvent _setupSampleStore:]", "SPProcessEvent.m", 205, "%s: nil sampleStore", v5, v6, v7, v8, "sampleStore");
    }

    else
    {
      if (byte_100117E80)
      {
        v94 = __error();
        v95 = *v94;
        v97 = sub_100035B80(v94, v96);
        if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
        {
          sub_1000B6204();
        }

        *__error() = v95;
      }

      if (byte_100117E81 == 1 && dword_100117510 <= 3)
      {
        v99 = *__error();
        v100 = sub_100035B20(*p_targetProcessId);
        v101 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: %s: nil sampleStore", v100, *p_targetProcessId, "sampleStore");
        if (v101)
        {
          v115 = v101;
          v116 = CFStringGetCStringPtr(v101, 0x8000100u);
          if (v116)
          {
            v117 = v116;
            v118 = 0;
          }

          else
          {
            v117 = malloc_type_calloc(0x400uLL, 1uLL, 0xE0211047uLL);
            CFStringGetCString(v115, v117, 1024, 0x8000100u);
            v118 = v117;
          }

          if (qword_100117E88)
          {
            v123 = qword_100117E88;
          }

          else
          {
            v123 = __stderrp;
          }

          fprintf(v123, "%s\n", v117);
          if (v118)
          {
            free(v118);
          }

          CFRelease(v115);
        }

        else
        {
          v103 = sub_100035B80(0, v102);
          if (os_log_type_enabled(v103, OS_LOG_TYPE_FAULT))
          {
            sub_1000B6294();
          }

          if (qword_100117E88)
          {
            v104 = qword_100117E88;
          }

          else
          {
            v104 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v104);
        }

        *__error() = v99;
      }

      v124 = sub_100035B20(*p_targetProcessId);
      sub_100035A54("[SPProcessEvent _setupSampleStore:]", "SPProcessEvent.m", 205, "%s [%d]: %s: nil sampleStore", v125, v126, v127, v128, v124, *p_targetProcessId, "sampleStore");
    }

    abort();
  }

  v11 = storeCopy;
  if ((targetProcessId & 0x80000000) == 0)
  {
    if (byte_100117E80)
    {
      v12 = __error();
      v13 = *v12;
      v15 = sub_100035B80(v12, v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = sub_100035B20(*p_targetProcessId);
        v17 = *p_targetProcessId;
        *buf = 136446466;
        v137 = v16;
        v138 = 1024;
        v139 = v17;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%{public}s [%d]: Generating report", buf, 0x12u);
      }

      *__error() = v13;
    }

    if (byte_100117E81 != 1 || dword_100117510 > 1)
    {
      goto LABEL_47;
    }

    v19 = *__error();
    v20 = sub_100035B20(*p_targetProcessId);
    v21 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Generating report", v20, *p_targetProcessId);
    if (v21)
    {
      v23 = v21;
      v24 = CFStringGetCStringPtr(v21, 0x8000100u);
      if (v24)
      {
        v25 = v24;
        v26 = 0;
      }

      else
      {
        v25 = malloc_type_calloc(0x400uLL, 1uLL, 0x76633229uLL);
        CFStringGetCString(v23, v25, 1024, 0x8000100u);
        v26 = v25;
      }

      v36 = qword_100117E88;
      v37 = __stderrp;
LABEL_40:
      if (v36)
      {
        v39 = v36;
      }

      else
      {
        v39 = v37;
      }

      fprintf(v39, "%s\n", v25);
      if (v26)
      {
        free(v26);
      }

      CFRelease(v23);
      goto LABEL_46;
    }

    v35 = sub_100035B80(0, v22);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
    {
      sub_1000B6084();
    }

    goto LABEL_34;
  }

  if (byte_100117E80)
  {
    v27 = __error();
    v28 = *v27;
    v30 = sub_100035B80(v27, v29);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "Generating report", buf, 2u);
    }

    *__error() = v28;
  }

  if (byte_100117E81 == 1 && dword_100117510 <= 1)
  {
    v19 = *__error();
    v32 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Generating report");
    if (v32)
    {
      v23 = v32;
      v34 = CFStringGetCStringPtr(v32, 0x8000100u);
      if (v34)
      {
        v25 = v34;
        v26 = 0;
      }

      else
      {
        v25 = malloc_type_calloc(0x400uLL, 1uLL, 0x76633229uLL);
        CFStringGetCString(v23, v25, 1024, 0x8000100u);
        v26 = v25;
      }

      v36 = qword_100117E88;
      v37 = __stderrp;
      goto LABEL_40;
    }

    v35 = sub_100035B80(0, v33);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
    {
      sub_1000B6050();
    }

LABEL_34:

    if (qword_100117E88)
    {
      v38 = qword_100117E88;
    }

    else
    {
      v38 = __stderrp;
    }

    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v38);
LABEL_46:
    *__error() = v19;
  }

LABEL_47:
  if (self->_reason)
  {
    [v11 setReason:?];
  }

  sub_100077DF8(v11, self->_shouldSymbolicate, self->_useDsymForUUIDForEverything, self->_shouldUseBulkSymbolication);
  v40 = self->_stepsNote;
  numSamplesAvoidedDueToAudioAtStart = self->_numSamplesAvoidedDueToAudioAtStart;
  v42 = (self->_numSamplesAvoidedDueToAudioAtEnd - numSamplesAvoidedDueToAudioAtStart);
  if (v42 >= 1)
  {
    if (self->_stepsNote)
    {
      [NSString stringWithFormat:@"%@, %d samples avoided due to audio", self->_stepsNote, v42];
    }

    else
    {
      [NSString stringWithFormat:@"%d samples avoided due to audio", (self->_numSamplesAvoidedDueToAudioAtEnd - numSamplesAvoidedDueToAudioAtStart), v130];
    }
    v43 = ;

    v40 = v43;
  }

  [v11 setTargetThreadId:0];
  if ((*p_targetProcessId & 0x80000000) == 0)
  {
    [v11 setTargetProcessId:?];
  }

  if (self->_targetThreadId)
  {
    [v11 setTargetThreadId:?];
  }

  if (self->_targetProcessAbsolutePath)
  {
    targetProcess = [v11 targetProcess];
    mainBinaryPath = [targetProcess mainBinaryPath];
    isAbsolutePath = [mainBinaryPath isAbsolutePath];

    if ((isAbsolutePath & 1) == 0)
    {
      targetProcess2 = [v11 targetProcess];
      v48 = targetProcess2;
      if (targetProcess2)
      {
        [targetProcess2 setMainBinaryPath:self->_targetProcessAbsolutePath];
      }
    }
  }

  [v11 setTargetHIDEventMachAbs:self->_targetHIDEventMachAbs];
  [v11 setTargetHIDEventEndMachAbs:self->_targetHIDEventEndMachAbs];
  if (self->_isLiveSampling)
  {
    [v11 setShouldGatherKextStat:!self->_headerOnly];
  }

  if (self->_dsymPaths)
  {
    [SABinary addDsymPaths:?];
  }

  v133 = 0u;
  v134 = 0u;
  v131 = 0u;
  v132 = 0u;
  v49 = self->_findDsymsForIDs;
  v50 = [(NSMutableArray *)v49 countByEnumeratingWithState:&v131 objects:v135 count:16];
  if (v50)
  {
    v51 = v50;
    v52 = *v132;
    do
    {
      for (i = 0; i != v51; i = i + 1)
      {
        if (*v132 != v52)
        {
          objc_enumerationMutation(v49);
        }

        [v11 useDsymForUUIDFor:*(*(&v131 + 1) + 8 * i)];
      }

      v51 = [(NSMutableArray *)v49 countByEnumeratingWithState:&v131 objects:v135 count:16];
    }

    while (v51);
  }

  [v11 postprocess];
  targetProcess3 = [v11 targetProcess];
  bundleName = [targetProcess3 bundleName];
  targetProcessBundleName = self->_targetProcessBundleName;
  self->_targetProcessBundleName = bundleName;

  targetProcess4 = [v11 targetProcess];
  bundleIdentifier = [targetProcess4 bundleIdentifier];
  targetProcessBundleId = self->_targetProcessBundleId;
  self->_targetProcessBundleId = bundleIdentifier;

  targetProcess5 = [v11 targetProcess];
  bundleShortVersion = [targetProcess5 bundleShortVersion];
  v62 = bundleShortVersion;
  if (bundleShortVersion)
  {
    v63 = bundleShortVersion;
  }

  else
  {
    v63 = @"???";
  }

  v64 = v63;

  targetProcess6 = [v11 targetProcess];
  bundleVersion = [targetProcess6 bundleVersion];
  v67 = bundleVersion;
  if (bundleVersion)
  {
    v68 = bundleVersion;
  }

  else
  {
    v68 = @"???";
  }

  v69 = v68;

  v70 = [[NSString alloc] initWithFormat:@"%@ (%@)", v64, v69];
  targetProcessVersion = self->_targetProcessVersion;
  self->_targetProcessVersion = v70;

  v72 = [NSString alloc];
  targetProcess7 = [v11 targetProcess];
  v74 = [v72 initWithFormat:@"%llu", objc_msgSend(targetProcess7, "adamID")];
  targetProcessAdamId = self->_targetProcessAdamId;
  self->_targetProcessAdamId = v74;

  targetProcess8 = [v11 targetProcess];
  name = [targetProcess8 name];
  targetProcessName = self->_targetProcessName;
  self->_targetProcessName = name;

  targetProcess9 = [v11 targetProcess];
  mainBinary = [targetProcess9 mainBinary];
  uuid = [mainBinary uuid];
  targetProcessMainBinaryUUID = self->_targetProcessMainBinaryUUID;
  self->_targetProcessMainBinaryUUID = uuid;

  targetProcess10 = [v11 targetProcess];
  mainBinaryPath2 = [targetProcess10 mainBinaryPath];
  if ([mainBinaryPath2 isAbsolutePath])
  {
    targetProcess11 = [v11 targetProcess];
    mainBinaryPath3 = [targetProcess11 mainBinaryPath];
    targetProcessAbsolutePath = self->_targetProcessAbsolutePath;
    self->_targetProcessAbsolutePath = mainBinaryPath3;
  }

  else
  {
    targetProcess11 = self->_targetProcessAbsolutePath;
    self->_targetProcessAbsolutePath = 0;
  }

  targetProcess12 = [v11 targetProcess];
  isUnresponsive = [targetProcess12 isUnresponsive];

  if (isUnresponsive)
  {
    targetProcess13 = [v11 targetProcess];
    [targetProcess13 timeOfLastResponse];
    self->_targetProcessTimeOfLastResponse = v91;
  }

  else
  {
    self->_targetProcessTimeOfLastResponse = 0.0;
  }

  hardwareModel = [v11 hardwareModel];
  hardwareModel = self->_hardwareModel;
  self->_hardwareModel = hardwareModel;

  [v11 setEvent:self->_event];
  [v11 setEventNote:self->_eventNote];
  [v11 setEventTimeRange:self->_eventTimeRange];
  [v11 setSignature:self->_signature];
  [v11 setExtraDuration:self->_extraDuration];
  [v11 setDurationNote:self->_durationNote];
  [v11 setStepsNote:v40];
  [v11 setSanitizePaths:self->_sanitizePaths];
  [v11 setCustomOutput:self->_customOutput];
}

- (id)_samplePrinterForSampleStore:(id)store
{
  storeCopy = store;
  [(SPProcessEvent *)self _setupSampleStore:storeCopy];
  v5 = [[SASamplePrinter alloc] initWithSampleStore:storeCopy];

  if (v5)
  {
    [v5 setOptions:self->_printOptions];
    if (self->_includeBinaryFormatInReport)
    {
      goto LABEL_3;
    }

    if (self->_headerOnly)
    {
      goto LABEL_19;
    }

    if (![(SASamplePrintOptions *)self->_printOptions printHeavyStacks])
    {
LABEL_3:
      v6 = 1;
    }

    else
    {
      if (self->_headerOnly)
      {
        goto LABEL_19;
      }

      v6 = 0;
    }

    v7 = sub_10006288C([(SASamplePrintOptions *)self->_printOptions printHeavyStacks], v6);
    [v5 setHeaderNote:v7];

LABEL_19:
    headerOnly = self->_headerOnly;
    options = [v5 options];
    [options setPrintTargetThreadOnly:headerOnly];

    LOBYTE(options) = self->_headerOnly;
    options2 = [v5 options];
    [options2 setDisplayFooter:(options & 1) == 0];

    [v5 setShareWithAppDevs:AppAnalyticsEnabled()];
    if (*&self->_startTimeIndex == 0)
    {
      if (*&self->_reportTimeStart != 0)
      {
        [v5 filterToTimestampRangeStart:? end:?];
      }
    }

    else
    {
      [v5 filterToDisplayTimeIndexStart:? end:?];
    }

    forceOneBasedTimeIndexes = self->_forceOneBasedTimeIndexes;
    options3 = [v5 options];
    [options3 setForceOneBasedTimeIndexes:forceOneBasedTimeIndexes];

    if (self->_incidentUUID)
    {
      [v5 setIncidentUUID:?];
    }

    v28 = v5;
    goto LABEL_67;
  }

  targetProcessId = self->_targetProcessId;
  p_targetProcessId = &self->_targetProcessId;
  if ((targetProcessId & 0x80000000) == 0)
  {
    if (byte_100117E80)
    {
      v10 = __error();
      v11 = *v10;
      v13 = sub_100035B80(v10, v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_1000B6394();
      }

      *__error() = v11;
    }

    if (byte_100117E81 != 1 || dword_100117510 > 3)
    {
      goto LABEL_67;
    }

    v15 = *__error();
    v16 = sub_100035B20(*p_targetProcessId);
    v17 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Unable to create sample printer", v16, *p_targetProcessId);
    if (v17)
    {
      v19 = v17;
      CStringPtr = CFStringGetCStringPtr(v17, 0x8000100u);
      if (CStringPtr)
      {
        v21 = CStringPtr;
        v22 = 0;
      }

      else
      {
        v21 = malloc_type_calloc(0x400uLL, 1uLL, 0xBABDE9AFuLL);
        CFStringGetCString(v19, v21, 1024, 0x8000100u);
        v22 = v21;
      }

      if (qword_100117E88)
      {
        v41 = qword_100117E88;
      }

      else
      {
        v41 = __stderrp;
      }

      fprintf(v41, "%s\n", v21);
      if (v22)
      {
        free(v22);
      }

      v42 = v19;
LABEL_65:
      CFRelease(v42);
LABEL_66:
      *__error() = v15;
      goto LABEL_67;
    }

    v40 = sub_100035B80(0, v18);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
    {
      sub_1000B6414();
    }

    goto LABEL_54;
  }

  if (byte_100117E80)
  {
    v29 = __error();
    v30 = *v29;
    v32 = sub_100035B80(v29, v31);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      sub_1000B6324();
    }

    *__error() = v30;
  }

  if (byte_100117E81 == 1 && dword_100117510 <= 3)
  {
    v15 = *__error();
    v34 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Unable to create sample printer");
    if (v34)
    {
      v36 = v34;
      v37 = CFStringGetCStringPtr(v34, 0x8000100u);
      if (v37)
      {
        v38 = v37;
        v39 = 0;
      }

      else
      {
        v38 = malloc_type_calloc(0x400uLL, 1uLL, 0xBABDE9AFuLL);
        CFStringGetCString(v36, v38, 1024, 0x8000100u);
        v39 = v38;
      }

      if (qword_100117E88)
      {
        v45 = qword_100117E88;
      }

      else
      {
        v45 = __stderrp;
      }

      fprintf(v45, "%s\n", v38);
      if (v39)
      {
        free(v39);
      }

      v42 = v36;
      goto LABEL_65;
    }

    v43 = sub_100035B80(0, v35);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_FAULT))
    {
      sub_1000B6360();
    }

LABEL_54:
    if (qword_100117E88)
    {
      v44 = qword_100117E88;
    }

    else
    {
      v44 = __stderrp;
    }

    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v44);
    goto LABEL_66;
  }

LABEL_67:

  return v5;
}

- (void)_saveReportToStream:(__sFILE *)stream withSampleStore:(id)store
{
  storeCopy = store;
  v7 = objc_autoreleasePoolPush();
  [(SPProcessEvent *)self _setupSampleStore:storeCopy];
  if (self->_includeTextualFormatInReport)
  {
    v8 = [(SPProcessEvent *)self _samplePrinterForSampleStore:storeCopy];
    [v8 printToStream:stream];
  }

  if (self->_includeBinaryFormatInReport)
  {
    if (self->_includeTextualFormatInReport)
    {
      v9 = "\n\n";
      v10 = 2;
    }

    else
    {
      v9 = "Use spindump -i to generate textual report\n";
      v10 = 43;
    }

    fwrite(v9, v10, 1uLL, stream);
    if (([storeCopy saveBinaryFormatToStream:stream] & 1) == 0)
    {
      p_targetProcessId = &self->_targetProcessId;
      if (self->_targetProcessId < 0)
      {
        if (byte_100117E80)
        {
          v24 = __error();
          v25 = *v24;
          v27 = sub_100035B80(v24, v26);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            sub_1000B6494();
          }

          *__error() = v25;
        }

        if (byte_100117E81 == 1 && dword_100117510 <= 3)
        {
          v16 = *__error();
          v28 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Unable to save spindump binary format");
          if (v28)
          {
            v30 = v28;
            CStringPtr = CFStringGetCStringPtr(v28, 0x8000100u);
            if (CStringPtr)
            {
              v32 = CStringPtr;
              v33 = 0;
            }

            else
            {
              v32 = malloc_type_calloc(0x400uLL, 1uLL, 0x996F797BuLL);
              CFStringGetCString(v30, v32, 1024, 0x8000100u);
              v33 = v32;
            }

            if (qword_100117E88)
            {
              v39 = qword_100117E88;
            }

            else
            {
              v39 = __stderrp;
            }

            fprintf(v39, "%s\n", v32);
            if (v33)
            {
              free(v33);
            }

            v36 = v30;
            goto LABEL_51;
          }

          v37 = sub_100035B80(0, v29);
          if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
          {
            sub_1000B64D0();
          }

LABEL_40:
          if (qword_100117E88)
          {
            v38 = qword_100117E88;
          }

          else
          {
            v38 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v38);
          goto LABEL_52;
        }
      }

      else
      {
        if (byte_100117E80)
        {
          v12 = __error();
          v13 = *v12;
          v15 = sub_100035B80(v12, v14);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            sub_1000B6504();
          }

          *__error() = v13;
        }

        if (byte_100117E81 == 1 && dword_100117510 <= 3)
        {
          v16 = *__error();
          v17 = sub_100035B20(*p_targetProcessId);
          v18 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Unable to save spindump binary format", v17, *p_targetProcessId);
          if (v18)
          {
            v20 = v18;
            v21 = CFStringGetCStringPtr(v18, 0x8000100u);
            if (v21)
            {
              v22 = v21;
              v23 = 0;
            }

            else
            {
              v22 = malloc_type_calloc(0x400uLL, 1uLL, 0x996F797BuLL);
              CFStringGetCString(v20, v22, 1024, 0x8000100u);
              v23 = v22;
            }

            if (qword_100117E88)
            {
              v35 = qword_100117E88;
            }

            else
            {
              v35 = __stderrp;
            }

            fprintf(v35, "%s\n", v22);
            if (v23)
            {
              free(v23);
            }

            v36 = v20;
LABEL_51:
            CFRelease(v36);
LABEL_52:
            *__error() = v16;
            goto LABEL_53;
          }

          v34 = sub_100035B80(0, v19);
          if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
          {
            sub_1000B6584();
          }

          goto LABEL_40;
        }
      }
    }
  }

LABEL_53:
  +[SABinary clearCoreSymbolicationCaches];
  targetProcessId = self->_targetProcessId;
  v40 = &self->_targetProcessId;
  if ((targetProcessId & 0x80000000) == 0)
  {
    if (byte_100117E80)
    {
      v42 = __error();
      v43 = *v42;
      v45 = sub_100035B80(v42, v44);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
      {
        v46 = sub_100035B20(*v40);
        v47 = *v40;
        *buf = 136446466;
        v75 = v46;
        v76 = 1024;
        v77 = v47;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_INFO, "%{public}s [%d]: Done generating report", buf, 0x12u);
      }

      *__error() = v43;
    }

    if (byte_100117E81 != 1 || dword_100117510 > 1)
    {
      goto LABEL_104;
    }

    v49 = *__error();
    v50 = sub_100035B20(*v40);
    v51 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Done generating report", v50, *v40);
    if (v51)
    {
      v53 = v51;
      v54 = CFStringGetCStringPtr(v51, 0x8000100u);
      if (v54)
      {
        v55 = v54;
        v56 = 0;
      }

      else
      {
        v55 = malloc_type_calloc(0x400uLL, 1uLL, 0x2B4FA002uLL);
        CFStringGetCString(v53, v55, 1024, 0x8000100u);
        v56 = v55;
      }

      if (qword_100117E88)
      {
        v69 = qword_100117E88;
      }

      else
      {
        v69 = __stderrp;
      }

      fprintf(v69, "%s\n", v55);
      if (v56)
      {
        free(v56);
      }

      v70 = v53;
LABEL_102:
      CFRelease(v70);
LABEL_103:
      *__error() = v49;
      goto LABEL_104;
    }

    v68 = sub_100035B80(0, v52);
    if (os_log_type_enabled(v68, OS_LOG_TYPE_FAULT))
    {
      sub_1000B6638();
    }

    goto LABEL_91;
  }

  if (byte_100117E80)
  {
    v57 = __error();
    v58 = *v57;
    v60 = sub_100035B80(v57, v59);
    if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_INFO, "Done generating report", buf, 2u);
    }

    *__error() = v58;
  }

  if (byte_100117E81 == 1 && dword_100117510 <= 1)
  {
    v49 = *__error();
    v62 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Done generating report");
    if (v62)
    {
      v64 = v62;
      v65 = CFStringGetCStringPtr(v62, 0x8000100u);
      if (v65)
      {
        v66 = v65;
        v67 = 0;
      }

      else
      {
        v66 = malloc_type_calloc(0x400uLL, 1uLL, 0x2B4FA002uLL);
        CFStringGetCString(v64, v66, 1024, 0x8000100u);
        v67 = v66;
      }

      if (qword_100117E88)
      {
        v73 = qword_100117E88;
      }

      else
      {
        v73 = __stderrp;
      }

      fprintf(v73, "%s\n", v66);
      if (v67)
      {
        free(v67);
      }

      v70 = v64;
      goto LABEL_102;
    }

    v71 = sub_100035B80(0, v63);
    if (os_log_type_enabled(v71, OS_LOG_TYPE_FAULT))
    {
      sub_1000B6604();
    }

LABEL_91:
    if (qword_100117E88)
    {
      v72 = qword_100117E88;
    }

    else
    {
      v72 = __stderrp;
    }

    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v72);
    goto LABEL_103;
  }

LABEL_104:
  objc_autoreleasePoolPop(v7);
}

- (void)_saveReportToStream:(__sFILE *)stream
{
  v3 = [NSException exceptionWithName:@"_saveReportToStream needs to be subclassed" reason:0 userInfo:0];
  objc_exception_throw(v3);
}

- (void)saveReportToStream:(__sFILE *)stream
{
  [(SPProcessEvent *)self _saveReportToStream:stream];

  [(SPProcessEvent *)self dropTransaction];
}

- (void)performSamplePrinterWork:(id)work
{
  workCopy = work;
  v4 = objc_autoreleasePoolPush();
  [(SPProcessEvent *)self _performSamplePrinterWork:workCopy];
  [(SPProcessEvent *)self dropTransaction];
  objc_autoreleasePoolPop(v4);
}

- (void)_performSamplePrinterWork:(id)work
{
  workCopy = work;
  v4 = [NSException exceptionWithName:@"_performSamplePrinterWork needs to be subclassed" reason:0 userInfo:0];
  objc_exception_throw(v4);
}

- (BOOL)targetProcessIsThirdParty
{
  targetProcessBundleId = self->_targetProcessBundleId;
  if (targetProcessBundleId && [(NSString *)targetProcessBundleId hasPrefix:@"com.apple."])
  {
    return 0;
  }

  if (!self->_targetProcessAbsolutePath)
  {
    return 1;
  }

  if ([(NSString *)self->_targetProcessAbsolutePath hasPrefix:@"/bin/", @"/bin/", @"/sbin/", @"/usr/bin/", @"/usr/sbin/", @"/usr/libexec/", @"/System/"])
  {
    v4 = 0;
  }

  else
  {
    v5 = 0;
    do
    {
      v6 = v5;
      if (v5 == 5)
      {
        break;
      }

      v7 = [(NSString *)self->_targetProcessAbsolutePath hasPrefix:*(&v10 + v5 + 1)];
      v5 = v6 + 1;
    }

    while (!v7);
    v4 = v6 > 4;
  }

  for (i = 40; i != -8; i -= 8)
  {
  }

  return v4;
}

@end