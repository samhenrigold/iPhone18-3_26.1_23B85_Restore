@interface SPSampledProcess
+ (BOOL)receivedHidEventForPid:(int)pid eventTimeMachAbs:(unint64_t)abs startTime:(id)time endTime:(id)endTime;
+ (id)copySampledProcessForPid:(int)pid isWSBased:(BOOL)based createIfUnsampled:(BOOL)unsampled cancelExistingProcesses:(BOOL)processes wasSampled:(BOOL *)sampled;
- (BOOL)startSampling;
- (SPSampledProcess)initWithPid:(int)pid isWSBased:(BOOL)based;
- (void)_performSamplePrinterWork:(id)work;
- (void)_samplingHasCompletedWithEndSnapshot:(id)snapshot withReason:(unsigned __int8)reason;
- (void)_saveReportToStream:(__sFILE *)stream;
- (void)createHIDExitSource;
- (void)deleteHIDExitSource;
- (void)removeSelfFromPidCache;
- (void)requireHIDEvent:(BOOL)event;
- (void)setCancelOnMemoryPressure:(BOOL)pressure;
- (void)setOccasionalDataIntervalSec:(unsigned int)sec;
- (void)setSamplingCompletionHandlerQueue:(id)queue andBlock:(id)block;
- (void)setSamplingIntervalUs:(unsigned int)us;
- (void)setSamplingMode:(unsigned __int8)mode withAdditionalSampledProcesses:(id)processes;
- (void)setSamplingTimeoutAtTime:(double)time;
- (void)setStopWhenProcessExits:(BOOL)exits;
- (void)stopSamplingWithReason:(unsigned __int8)reason;
@end

@implementation SPSampledProcess

- (SPSampledProcess)initWithPid:(int)pid isWSBased:(BOOL)based
{
  v12.receiver = self;
  v12.super_class = SPSampledProcess;
  v6 = [(SPMonitoredProcess *)&v12 initWithPid:?];
  if (v6)
  {
    snprintf(__str, 0x40uLL, "com.apple.spindump.sampled_process_%d", pid);
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create(__str, v7);
    processingQueue = v6->super.super._processingQueue;
    v6->super.super._processingQueue = v8;

    v6->super.super._isWSBased = based;
    v6->_samplingMode = 3;
    sampledProcesses = v6->_sampledProcesses;
    v6->_sampledProcesses = 0;

    v6->_cancelOnMemoryPressure = 0;
  }

  return v6;
}

- (void)setCancelOnMemoryPressure:(BOOL)pressure
{
  self->_cancelOnMemoryPressure = pressure;
  if (pressure)
  {
    +[SPSampledProcess startMemoryPressureTimer];
  }
}

+ (id)copySampledProcessForPid:(int)pid isWSBased:(BOOL)based createIfUnsampled:(BOOL)unsampled cancelExistingProcesses:(BOOL)processes wasSampled:(BOOL *)sampled
{
  v11 = *&pid;
  if (qword_100127E58 != -1)
  {
    sub_1000BF390();
  }

  v12 = [[NSNumber alloc] initWithInt:v11];
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_100083F84;
  v29 = sub_100083F94;
  v30 = 0;
  v13 = qword_100127E50;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100083F9C;
  v17[3] = &unk_100115B00;
  v18 = v12;
  v19 = &v25;
  unsampledCopy = unsampled;
  sampledCopy = sampled;
  processesCopy = processes;
  v21 = v11;
  basedCopy = based;
  v14 = v12;
  dispatch_sync(v13, v17);
  v15 = v26[5];

  _Block_object_dispose(&v25, 8);
  return v15;
}

- (void)removeSelfFromPidCache
{
  if (self->super.super._isSelfInPidCache)
  {
    v7 = v2;
    v8 = v3;
    self->super.super._isSelfInPidCache = 0;
    targetProcessId = self->super.super._targetProcessId;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100084638;
    v5[3] = &unk_100115B28;
    v6 = targetProcessId;
    v5[4] = self;
    dispatch_async(qword_100127E50, v5);
  }
}

- (void)createHIDExitSource
{
  if (self->_exitHIDSource)
  {
    return;
  }

  p_targetProcessId = &self->super.super._targetProcessId;
  targetProcessId = self->super.super._targetProcessId;
  v5 = dispatch_get_global_queue(25, 2uLL);
  v6 = dispatch_source_create(&_dispatch_source_type_proc, targetProcessId, 0xA0000000uLL, v5);
  exitHIDSource = self->_exitHIDSource;
  self->_exitHIDSource = v6;

  v8 = self->_exitHIDSource;
  if (v8)
  {
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100084ADC;
    handler[3] = &unk_100115850;
    handler[4] = self;
    dispatch_source_set_event_handler(v8, handler);
    dispatch_resume(self->_exitHIDSource);
    return;
  }

  if ((*p_targetProcessId & 0x80000000) == 0)
  {
    if (byte_100127EC8)
    {
      v9 = __error();
      v10 = *v9;
      v12 = sub_10003E080(v9, v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1000BF414();
      }

      *__error() = v10;
    }

    if (byte_100127EC9 != 1 || dword_100127558 > 3)
    {
      return;
    }

    v14 = *__error();
    v15 = sub_10003E020(*p_targetProcessId);
    v16 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Unable to allocate proc exit HID dispatch source", v15, *p_targetProcessId);
    if (v16)
    {
      v18 = v16;
      CStringPtr = CFStringGetCStringPtr(v16, 0x8000100u);
      if (CStringPtr)
      {
        v20 = CStringPtr;
        v21 = 0;
      }

      else
      {
        v20 = malloc_type_calloc(0x400uLL, 1uLL, 0x953C691EuLL);
        CFStringGetCString(v18, v20, 1024, 0x8000100u);
        v21 = v20;
      }

      if (qword_100127ED0)
      {
        v34 = qword_100127ED0;
      }

      else
      {
        v34 = __stderrp;
      }

      fprintf(v34, "%s\n", v20);
      if (v21)
      {
        free(v21);
      }

      v35 = v18;
LABEL_53:
      CFRelease(v35);
LABEL_54:
      *__error() = v14;
      return;
    }

    v33 = sub_10003E080(0, v17);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
    {
      sub_1000BF494();
    }

    goto LABEL_42;
  }

  if (byte_100127EC8)
  {
    v22 = __error();
    v23 = *v22;
    v25 = sub_10003E080(v22, v24);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_1000BF3A4();
    }

    *__error() = v23;
  }

  if (byte_100127EC9 == 1 && dword_100127558 <= 3)
  {
    v14 = *__error();
    v27 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Unable to allocate proc exit HID dispatch source");
    if (v27)
    {
      v29 = v27;
      v30 = CFStringGetCStringPtr(v27, 0x8000100u);
      if (v30)
      {
        v31 = v30;
        v32 = 0;
      }

      else
      {
        v31 = malloc_type_calloc(0x400uLL, 1uLL, 0x953C691EuLL);
        CFStringGetCString(v29, v31, 1024, 0x8000100u);
        v32 = v31;
      }

      if (qword_100127ED0)
      {
        v38 = qword_100127ED0;
      }

      else
      {
        v38 = __stderrp;
      }

      fprintf(v38, "%s\n", v31);
      if (v32)
      {
        free(v32);
      }

      v35 = v29;
      goto LABEL_53;
    }

    v36 = sub_10003E080(0, v28);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
    {
      sub_1000BF3E0();
    }

LABEL_42:
    if (qword_100127ED0)
    {
      v37 = qword_100127ED0;
    }

    else
    {
      v37 = __stderrp;
    }

    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v37);
    goto LABEL_54;
  }
}

- (void)deleteHIDExitSource
{
  if (self->_exitHIDSource)
  {
    self->_exitHIDSource = 0;
    _objc_release_x1();
  }
}

- (void)requireHIDEvent:(BOOL)event
{
  processingQueue = self->super.super._processingQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000855F0;
  v4[3] = &unk_100115BA0;
  v4[4] = self;
  eventCopy = event;
  dispatch_async(processingQueue, v4);
}

+ (BOOL)receivedHidEventForPid:(int)pid eventTimeMachAbs:(unint64_t)abs startTime:(id)time endTime:(id)endTime
{
  timeCopy = time;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000870C4;
  v13[3] = &unk_100115BC8;
  pidCopy = pid;
  endTimeCopy = endTime;
  v15 = timeCopy;
  v16 = &v19;
  absCopy = abs;
  v10 = timeCopy;
  v11 = endTimeCopy;
  sub_100084E6C(v13);
  LOBYTE(pid) = *(v20 + 24);

  _Block_object_dispose(&v19, 8);
  return pid;
}

- (void)setSamplingMode:(unsigned __int8)mode withAdditionalSampledProcesses:(id)processes
{
  modeCopy = mode;
  processesCopy = processes;
  v7 = processesCopy;
  if (modeCopy == 3 && processesCopy)
  {
    p_targetProcessId = &self->super.super._targetProcessId;
    if (self->super.super._targetProcessId < 0)
    {
      if (byte_100127EC8)
      {
        v22 = __error();
        v23 = *v22;
        v25 = sub_10003E080(v22, v24);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          sub_1000C083C();
        }

        *__error() = v23;
      }

      if (byte_100127EC9 != 1 || dword_100127558 > 3)
      {
        goto LABEL_54;
      }

      v14 = *__error();
      v27 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Pids is ignored when sampling all processes");
      if (v27)
      {
        v29 = v27;
        CStringPtr = CFStringGetCStringPtr(v27, 0x8000100u);
        if (CStringPtr)
        {
          v31 = CStringPtr;
          v32 = 0;
        }

        else
        {
          v31 = malloc_type_calloc(0x400uLL, 1uLL, 0x79CE7D21uLL);
          CFStringGetCString(v29, v31, 1024, 0x8000100u);
          v32 = v31;
        }

        if (qword_100127ED0)
        {
          v38 = qword_100127ED0;
        }

        else
        {
          v38 = __stderrp;
        }

        fprintf(v38, "%s\n", v31);
        if (v32)
        {
          free(v32);
        }

        v35 = v29;
        goto LABEL_52;
      }

      v36 = sub_10003E080(0, v28);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
      {
        sub_1000C0878();
      }
    }

    else
    {
      if (byte_100127EC8)
      {
        v9 = __error();
        v10 = *v9;
        v12 = sub_10003E080(v9, v11);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          sub_1000C08AC();
        }

        *__error() = v10;
      }

      if (byte_100127EC9 != 1 || dword_100127558 > 3)
      {
        goto LABEL_54;
      }

      v14 = *__error();
      v15 = sub_10003E020(*p_targetProcessId);
      v16 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Pids is ignored when sampling all processes", v15, *p_targetProcessId);
      if (v16)
      {
        v18 = v16;
        v19 = CFStringGetCStringPtr(v16, 0x8000100u);
        if (v19)
        {
          v20 = v19;
          v21 = 0;
        }

        else
        {
          v20 = malloc_type_calloc(0x400uLL, 1uLL, 0x79CE7D21uLL);
          CFStringGetCString(v18, v20, 1024, 0x8000100u);
          v21 = v20;
        }

        if (qword_100127ED0)
        {
          v34 = qword_100127ED0;
        }

        else
        {
          v34 = __stderrp;
        }

        fprintf(v34, "%s\n", v20);
        if (v21)
        {
          free(v21);
        }

        v35 = v18;
LABEL_52:
        CFRelease(v35);
LABEL_53:
        *__error() = v14;
LABEL_54:

        v7 = 0;
        goto LABEL_55;
      }

      v33 = sub_10003E080(0, v17);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
      {
        sub_1000C092C();
      }
    }

    if (qword_100127ED0)
    {
      v37 = qword_100127ED0;
    }

    else
    {
      v37 = __stderrp;
    }

    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v37);
    goto LABEL_53;
  }

LABEL_55:
  if (!self->super.super._hasSampled || self->super.super._isSampling)
  {
    if (self->_samplingMode != modeCopy || v7 && (!self->_sampledProcesses || ([v7 isSubsetOfSet:?] & 1) == 0))
    {
      self->_samplingMode = modeCopy;
      sampledProcesses = self->_sampledProcesses;
      if (modeCopy == 3)
      {
        self->_sampledProcesses = 0;
      }

      else
      {
        if (!sampledProcesses)
        {
          v40 = objc_alloc_init(NSMutableSet);
          v41 = self->_sampledProcesses;
          self->_sampledProcesses = v40;

          if ((self->super.super._targetProcessId & 0x80000000) == 0)
          {
            v42 = self->_sampledProcesses;
            v43 = [NSNumber numberWithInt:?];
            [(NSMutableSet *)v42 addObject:v43];
          }
        }

        if (v7)
        {
          [(NSMutableSet *)self->_sampledProcesses unionSet:v7];
        }
      }

      if (self->super.super._isSampling)
      {
        [(SPStackshotProvider *)self->super.super._sampleProvider sampleProcesses:self->_sampledProcesses onlyMainThreads:self->_samplingMode == 1];
      }
    }

    goto LABEL_121;
  }

  targetProcessId = self->super.super._targetProcessId;
  v44 = &self->super.super._targetProcessId;
  if ((targetProcessId & 0x80000000) == 0)
  {
    if (byte_100127EC8)
    {
      v46 = __error();
      v47 = *v46;
      v49 = sub_10003E080(v46, v48);
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        sub_1000C0A1C();
      }

      *__error() = v47;
    }

    if (byte_100127EC9 != 1 || dword_100127558 > 3)
    {
      goto LABEL_121;
    }

    v51 = *__error();
    v52 = sub_10003E020(*v44);
    v53 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Attempted to change sampling target after done sampling", v52, *v44);
    if (v53)
    {
      v55 = v53;
      v56 = CFStringGetCStringPtr(v53, 0x8000100u);
      if (v56)
      {
        v57 = v56;
        v58 = 0;
      }

      else
      {
        v57 = malloc_type_calloc(0x400uLL, 1uLL, 0x695CA4C5uLL);
        CFStringGetCString(v55, v57, 1024, 0x8000100u);
        v58 = v57;
      }

      if (qword_100127ED0)
      {
        v71 = qword_100127ED0;
      }

      else
      {
        v71 = __stderrp;
      }

      fprintf(v71, "%s\n", v57);
      if (v58)
      {
        free(v58);
      }

      v72 = v55;
LABEL_119:
      CFRelease(v72);
LABEL_120:
      *__error() = v51;
      goto LABEL_121;
    }

    v70 = sub_10003E080(0, v54);
    if (os_log_type_enabled(v70, OS_LOG_TYPE_FAULT))
    {
      sub_1000C0A9C();
    }

    goto LABEL_108;
  }

  if (byte_100127EC8)
  {
    v59 = __error();
    v60 = *v59;
    v62 = sub_10003E080(v59, v61);
    if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
    {
      sub_1000C09AC();
    }

    *__error() = v60;
  }

  if (byte_100127EC9 == 1 && dword_100127558 <= 3)
  {
    v51 = *__error();
    v64 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Attempted to change sampling target after done sampling");
    if (v64)
    {
      v66 = v64;
      v67 = CFStringGetCStringPtr(v64, 0x8000100u);
      if (v67)
      {
        v68 = v67;
        v69 = 0;
      }

      else
      {
        v68 = malloc_type_calloc(0x400uLL, 1uLL, 0x695CA4C5uLL);
        CFStringGetCString(v66, v68, 1024, 0x8000100u);
        v69 = v68;
      }

      if (qword_100127ED0)
      {
        v75 = qword_100127ED0;
      }

      else
      {
        v75 = __stderrp;
      }

      fprintf(v75, "%s\n", v68);
      if (v69)
      {
        free(v69);
      }

      v72 = v66;
      goto LABEL_119;
    }

    v73 = sub_10003E080(0, v65);
    if (os_log_type_enabled(v73, OS_LOG_TYPE_FAULT))
    {
      sub_1000C09E8();
    }

LABEL_108:
    if (qword_100127ED0)
    {
      v74 = qword_100127ED0;
    }

    else
    {
      v74 = __stderrp;
    }

    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v74);
    goto LABEL_120;
  }

LABEL_121:
}

- (void)setSamplingIntervalUs:(unsigned int)us
{
  v3 = *&us;
  if (!self->super.super._hasSampled)
  {
    self->_samplingIntervalUs = us;
    return;
  }

  if ((self->super.super._targetProcessId & 0x80000000) == 0)
  {
    if (byte_100127EC8)
    {
      v5 = __error();
      v6 = *v5;
      v8 = sub_10003E080(v5, v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v30 = sub_10003E020(self->super.super._targetProcessId);
        samplingIntervalUs = self->_samplingIntervalUs;
        targetProcessId = self->super.super._targetProcessId;
        *buf = 136446978;
        v34 = v30;
        v35 = 1024;
        v36 = targetProcessId;
        v37 = 1024;
        v38 = v3;
        v39 = 1024;
        v40 = samplingIntervalUs;
        _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}s [%d]: Attempted to change sampling interval to %uus while already sampling/sampled at %uus", buf, 0x1Eu);
      }

      *__error() = v6;
    }

    if (byte_100127EC9 != 1 || dword_100127558 > 3)
    {
      return;
    }

    v10 = *__error();
    v11 = sub_10003E020(self->super.super._targetProcessId);
    v12 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Attempted to change sampling interval to %uus while already sampling/sampled at %uus", v11, self->super.super._targetProcessId, v3, self->_samplingIntervalUs);
    if (!v12)
    {
      v14 = sub_10003E080(0, v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        v15 = sub_10003E020(self->super.super._targetProcessId);
        v16 = self->_samplingIntervalUs;
        v17 = self->super.super._targetProcessId;
        *buf = 136315906;
        v34 = v15;
        v35 = 1024;
        v36 = v17;
        v37 = 1024;
        v38 = v3;
        v39 = 1024;
        v40 = v16;
        _os_log_fault_impl(&_mh_execute_header, v14, OS_LOG_TYPE_FAULT, "Unable to format: %s [%d]: Attempted to change sampling interval to %uus while already sampling/sampled at %uus", buf, 0x1Eu);
      }

LABEL_37:

      if (qword_100127ED0)
      {
        v29 = qword_100127ED0;
      }

      else
      {
        v29 = __stderrp;
      }

      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v29);
LABEL_41:
      *__error() = v10;
      return;
    }

    goto LABEL_26;
  }

  if (byte_100127EC8)
  {
    v18 = __error();
    v19 = *v18;
    v21 = sub_10003E080(v18, v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_1000C0B1C();
    }

    *__error() = v19;
  }

  if (byte_100127EC9 == 1 && dword_100127558 <= 3)
  {
    v10 = *__error();
    v12 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Attempted to change sampling interval to %uus while already sampling/sampled at %uus", v3, self->_samplingIntervalUs);
    if (!v12)
    {
      v14 = sub_10003E080(0, v23);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        sub_1000C0B98();
      }

      goto LABEL_37;
    }

LABEL_26:
    v24 = v12;
    CStringPtr = CFStringGetCStringPtr(v12, 0x8000100u);
    if (CStringPtr)
    {
      v26 = CStringPtr;
      v27 = 0;
    }

    else
    {
      v26 = malloc_type_calloc(0x400uLL, 1uLL, 0x7FC64DAuLL);
      CFStringGetCString(v24, v26, 1024, 0x8000100u);
      v27 = v26;
    }

    if (qword_100127ED0)
    {
      v28 = qword_100127ED0;
    }

    else
    {
      v28 = __stderrp;
    }

    fprintf(v28, "%s\n", v26);
    if (v27)
    {
      free(v27);
    }

    CFRelease(v24);
    goto LABEL_41;
  }
}

- (void)setOccasionalDataIntervalSec:(unsigned int)sec
{
  v3 = *&sec;
  if (!self->super.super._hasSampled)
  {
    self->_occasionalDataIntervalSec = sec;
    return;
  }

  if ((self->super.super._targetProcessId & 0x80000000) == 0)
  {
    if (byte_100127EC8)
    {
      v5 = __error();
      v6 = *v5;
      v8 = sub_10003E080(v5, v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v30 = sub_10003E020(self->super.super._targetProcessId);
        occasionalDataIntervalSec = self->_occasionalDataIntervalSec;
        targetProcessId = self->super.super._targetProcessId;
        *buf = 136446978;
        v34 = v30;
        v35 = 1024;
        v36 = targetProcessId;
        v37 = 1024;
        v38 = v3;
        v39 = 1024;
        v40 = occasionalDataIntervalSec;
        _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}s [%d]: Attempted to change occasional data interval to %uus while already sampling/sampled at %uus", buf, 0x1Eu);
      }

      *__error() = v6;
    }

    if (byte_100127EC9 != 1 || dword_100127558 > 3)
    {
      return;
    }

    v10 = *__error();
    v11 = sub_10003E020(self->super.super._targetProcessId);
    v12 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Attempted to change occasional data interval to %uus while already sampling/sampled at %uus", v11, self->super.super._targetProcessId, v3, self->_occasionalDataIntervalSec);
    if (!v12)
    {
      v14 = sub_10003E080(0, v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        v15 = sub_10003E020(self->super.super._targetProcessId);
        v16 = self->_occasionalDataIntervalSec;
        v17 = self->super.super._targetProcessId;
        *buf = 136315906;
        v34 = v15;
        v35 = 1024;
        v36 = v17;
        v37 = 1024;
        v38 = v3;
        v39 = 1024;
        v40 = v16;
        _os_log_fault_impl(&_mh_execute_header, v14, OS_LOG_TYPE_FAULT, "Unable to format: %s [%d]: Attempted to change occasional data interval to %uus while already sampling/sampled at %uus", buf, 0x1Eu);
      }

LABEL_37:

      if (qword_100127ED0)
      {
        v29 = qword_100127ED0;
      }

      else
      {
        v29 = __stderrp;
      }

      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v29);
LABEL_41:
      *__error() = v10;
      return;
    }

    goto LABEL_26;
  }

  if (byte_100127EC8)
  {
    v18 = __error();
    v19 = *v18;
    v21 = sub_10003E080(v18, v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_1000C0C04();
    }

    *__error() = v19;
  }

  if (byte_100127EC9 == 1 && dword_100127558 <= 3)
  {
    v10 = *__error();
    v12 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Attempted to change occasional data interval to %uus while already sampling/sampled at %uus", v3, self->_occasionalDataIntervalSec);
    if (!v12)
    {
      v14 = sub_10003E080(0, v23);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        sub_1000C0C80();
      }

      goto LABEL_37;
    }

LABEL_26:
    v24 = v12;
    CStringPtr = CFStringGetCStringPtr(v12, 0x8000100u);
    if (CStringPtr)
    {
      v26 = CStringPtr;
      v27 = 0;
    }

    else
    {
      v26 = malloc_type_calloc(0x400uLL, 1uLL, 0x40242429uLL);
      CFStringGetCString(v24, v26, 1024, 0x8000100u);
      v27 = v26;
    }

    if (qword_100127ED0)
    {
      v28 = qword_100127ED0;
    }

    else
    {
      v28 = __stderrp;
    }

    fprintf(v28, "%s\n", v26);
    if (v27)
    {
      free(v27);
    }

    CFRelease(v24);
    goto LABEL_41;
  }
}

- (void)setSamplingTimeoutAtTime:(double)time
{
  if (self->super.super._timeoutTime <= time)
  {
    SAMachAbsTimeSecondsGetCurrent();
    v20 = v19;
    if (v19 < time)
    {
      timeCopy = time;
    }

    else
    {
      timeCopy = v19;
    }

    p_targetProcessId = &self->super.super._targetProcessId;
    targetProcessId = self->super.super._targetProcessId;
    self->super.super._timeoutTime = timeCopy;
    if (targetProcessId < 0)
    {
      if (byte_100127EC8)
      {
        v48 = __error();
        v49 = *v48;
        v51 = sub_10003E080(v48, v50);
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134217984;
          v76 = timeCopy - v20;
          _os_log_debug_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEBUG, "Setting sampling timeout for %.2f seconds from now", buf, 0xCu);
        }

        *__error() = v49;
      }

      if (byte_100127EC9 != 1 || dword_100127558 > 0)
      {
        goto LABEL_107;
      }

      v29 = *__error();
      v53 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Setting sampling timeout for %.2f seconds from now", timeCopy - v20);
      if (v53)
      {
        v55 = v53;
        CStringPtr = CFStringGetCStringPtr(v53, 0x8000100u);
        if (CStringPtr)
        {
          v57 = CStringPtr;
          v58 = 0;
        }

        else
        {
          v57 = malloc_type_calloc(0x400uLL, 1uLL, 0x10A222CEuLL);
          CFStringGetCString(v55, v57, 1024, 0x8000100u);
          v58 = v57;
        }

        if (qword_100127ED0)
        {
          v70 = qword_100127ED0;
        }

        else
        {
          v70 = __stderrp;
        }

        fprintf(v70, "%s\n", v57);
        if (v58)
        {
          free(v58);
        }

        v64 = v55;
        goto LABEL_105;
      }

      v67 = sub_10003E080(0, v54);
      if (os_log_type_enabled(v67, OS_LOG_TYPE_FAULT))
      {
        sub_1000C0CEC();
      }
    }

    else
    {
      if (byte_100127EC8)
      {
        v24 = __error();
        v25 = *v24;
        v27 = sub_10003E080(v24, v26);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          v72 = sub_10003E020(*p_targetProcessId);
          v73 = *p_targetProcessId;
          *buf = 136446722;
          v76 = *&v72;
          v77 = 1024;
          v78 = v73;
          v79 = 2048;
          v80 = timeCopy - v20;
          _os_log_debug_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "%{public}s [%d]: Setting sampling timeout for %.2f seconds from now", buf, 0x1Cu);
        }

        *__error() = v25;
      }

      if (byte_100127EC9 != 1 || dword_100127558 > 0)
      {
        goto LABEL_107;
      }

      v29 = *__error();
      v30 = sub_10003E020(*p_targetProcessId);
      v31 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Setting sampling timeout for %.2f seconds from now", v30, *p_targetProcessId, timeCopy - v20);
      if (v31)
      {
        v33 = v31;
        v34 = CFStringGetCStringPtr(v31, 0x8000100u);
        if (v34)
        {
          v35 = v34;
          v36 = 0;
        }

        else
        {
          v35 = malloc_type_calloc(0x400uLL, 1uLL, 0x10A222CEuLL);
          CFStringGetCString(v33, v35, 1024, 0x8000100u);
          v36 = v35;
        }

        if (qword_100127ED0)
        {
          v63 = qword_100127ED0;
        }

        else
        {
          v63 = __stderrp;
        }

        fprintf(v63, "%s\n", v35);
        if (v36)
        {
          free(v36);
        }

        v64 = v33;
LABEL_105:
        CFRelease(v64);
LABEL_106:
        *__error() = v29;
LABEL_107:
        processingQueue = self->super.super._processingQueue;
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10008926C;
        block[3] = &unk_1001151F0;
        block[4] = self;
        *&block[5] = timeCopy;
        *&block[6] = v20;
        dispatch_async(processingQueue, block);
        return;
      }

      v60 = sub_10003E080(0, v32);
      if (os_log_type_enabled(v60, OS_LOG_TYPE_FAULT))
      {
        sub_1000C0D64(&self->super.super._targetProcessId);
      }
    }

    if (qword_100127ED0)
    {
      v68 = qword_100127ED0;
    }

    else
    {
      v68 = __stderrp;
    }

    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v68);
    goto LABEL_106;
  }

  v5 = &self->super.super._targetProcessId;
  if ((self->super.super._targetProcessId & 0x80000000) == 0)
  {
    if (byte_100127EC8)
    {
      v6 = __error();
      v7 = *v6;
      v9 = sub_10003E080(v6, v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        sub_1000C0E70();
      }

      *__error() = v7;
    }

    if (byte_100127EC9 != 1 || dword_100127558 > 0)
    {
      return;
    }

    v11 = *__error();
    v12 = sub_10003E020(*v5);
    v13 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Asked to stop sooner than the existing timeout", v12, *v5);
    if (v13)
    {
      v15 = v13;
      v16 = CFStringGetCStringPtr(v13, 0x8000100u);
      if (v16)
      {
        v17 = v16;
        v18 = 0;
      }

      else
      {
        v17 = malloc_type_calloc(0x400uLL, 1uLL, 0xE00F3974uLL);
        CFStringGetCString(v15, v17, 1024, 0x8000100u);
        v18 = v17;
      }

      if (qword_100127ED0)
      {
        v61 = qword_100127ED0;
      }

      else
      {
        v61 = __stderrp;
      }

      fprintf(v61, "%s\n", v17);
      if (v18)
      {
        free(v18);
      }

      v62 = v15;
LABEL_96:
      CFRelease(v62);
LABEL_97:
      *__error() = v11;
      return;
    }

    v59 = sub_10003E080(0, v14);
    if (os_log_type_enabled(v59, OS_LOG_TYPE_FAULT))
    {
      sub_1000C0EF0();
    }

    goto LABEL_78;
  }

  if (byte_100127EC8)
  {
    v37 = __error();
    v38 = *v37;
    v40 = sub_10003E080(v37, v39);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
    {
      sub_1000C0E08();
    }

    *__error() = v38;
  }

  if (byte_100127EC9 == 1 && dword_100127558 <= 0)
  {
    v11 = *__error();
    v42 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Asked to stop sooner than the existing timeout");
    if (v42)
    {
      v44 = v42;
      v45 = CFStringGetCStringPtr(v42, 0x8000100u);
      if (v45)
      {
        v46 = v45;
        v47 = 0;
      }

      else
      {
        v46 = malloc_type_calloc(0x400uLL, 1uLL, 0xE00F3974uLL);
        CFStringGetCString(v44, v46, 1024, 0x8000100u);
        v47 = v46;
      }

      if (qword_100127ED0)
      {
        v69 = qword_100127ED0;
      }

      else
      {
        v69 = __stderrp;
      }

      fprintf(v69, "%s\n", v46);
      if (v47)
      {
        free(v47);
      }

      v62 = v44;
      goto LABEL_96;
    }

    v65 = sub_10003E080(0, v43);
    if (os_log_type_enabled(v65, OS_LOG_TYPE_FAULT))
    {
      sub_1000C0E3C();
    }

LABEL_78:
    if (qword_100127ED0)
    {
      v66 = qword_100127ED0;
    }

    else
    {
      v66 = __stderrp;
    }

    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v66);
    goto LABEL_97;
  }
}

- (void)setSamplingCompletionHandlerQueue:(id)queue andBlock:(id)block
{
  queueCopy = queue;
  blockCopy = block;
  if (!queueCopy || !blockCopy)
  {
    targetProcessId = self->super.super._targetProcessId;
    p_targetProcessId = &self->super.super._targetProcessId;
    if (targetProcessId < 0)
    {
      if (byte_100127EC8)
      {
        v28 = __error();
        v29 = *v28;
        v31 = sub_10003E080(v28, v30);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          sub_1000C13A8();
        }

        *__error() = v29;
      }

      if (byte_100127EC9 == 1 && dword_100127558 <= 3)
      {
        v33 = *__error();
        v34 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s: Must provide both queue and block", "queue && block");
        if (v34)
        {
          v42 = v34;
          CStringPtr = CFStringGetCStringPtr(v34, 0x8000100u);
          if (CStringPtr)
          {
            v44 = CStringPtr;
            v45 = 0;
          }

          else
          {
            v44 = malloc_type_calloc(0x400uLL, 1uLL, 0x5CC31AE3uLL);
            CFStringGetCString(v42, v44, 1024, 0x8000100u);
            v45 = v44;
          }

          if (qword_100127ED0)
          {
            v52 = qword_100127ED0;
          }

          else
          {
            v52 = __stderrp;
          }

          fprintf(v52, "%s\n", v44);
          if (v45)
          {
            free(v45);
          }

          CFRelease(v42);
        }

        else
        {
          v36 = sub_10003E080(0, v35);
          if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
          {
            sub_1000C1428();
          }

          if (qword_100127ED0)
          {
            v37 = qword_100127ED0;
          }

          else
          {
            v37 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v37);
        }

        *__error() = v33;
      }

      sub_10003DF54("[SPSampledProcess setSamplingCompletionHandlerQueue:andBlock:]", "SPProcessEvent.m", 1065, "%s: Must provide both queue and block", v8, v9, v10, v11, "queue && block");
    }

    else
    {
      if (byte_100127EC8)
      {
        v17 = __error();
        v18 = *v17;
        v20 = sub_10003E080(v17, v19);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          sub_1000C14A8();
        }

        *__error() = v18;
      }

      if (byte_100127EC9 == 1 && dword_100127558 <= 3)
      {
        v22 = *__error();
        v23 = sub_10003E020(*p_targetProcessId);
        v24 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: %s: Must provide both queue and block", v23, *p_targetProcessId, "queue && block");
        if (v24)
        {
          v38 = v24;
          v39 = CFStringGetCStringPtr(v24, 0x8000100u);
          if (v39)
          {
            v40 = v39;
            v41 = 0;
          }

          else
          {
            v40 = malloc_type_calloc(0x400uLL, 1uLL, 0x5CC31AE3uLL);
            CFStringGetCString(v38, v40, 1024, 0x8000100u);
            v41 = v40;
          }

          if (qword_100127ED0)
          {
            v46 = qword_100127ED0;
          }

          else
          {
            v46 = __stderrp;
          }

          fprintf(v46, "%s\n", v40);
          if (v41)
          {
            free(v41);
          }

          CFRelease(v38);
        }

        else
        {
          v26 = sub_10003E080(0, v25);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
          {
            sub_1000C1538();
          }

          if (qword_100127ED0)
          {
            v27 = qword_100127ED0;
          }

          else
          {
            v27 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v27);
        }

        *__error() = v22;
      }

      v47 = sub_10003E020(*p_targetProcessId);
      sub_10003DF54("[SPSampledProcess setSamplingCompletionHandlerQueue:andBlock:]", "SPProcessEvent.m", 1065, "%s [%d]: %s: Must provide both queue and block", v48, v49, v50, v51, v47, *p_targetProcessId, "queue && block");
    }

    abort();
  }

  processingQueue = self->super.super._processingQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10008A124;
  block[3] = &unk_100115BF0;
  block[4] = self;
  v54 = queueCopy;
  v55 = blockCopy;
  v13 = blockCopy;
  v14 = queueCopy;
  dispatch_async(processingQueue, block);
}

- (void)setStopWhenProcessExits:(BOOL)exits
{
  processingQueue = self->super.super._processingQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10008A1EC;
  v4[3] = &unk_100115BA0;
  exitsCopy = exits;
  v4[4] = self;
  dispatch_async(processingQueue, v4);
}

- (BOOL)startSampling
{
  if (self->super.super._hasSampled || !self->_samplingIntervalUs)
  {
    return 0;
  }

  [(SPProcessEvent *)self takeTransaction];
  v3 = [SPStackshotProvider snapshotWithSamplingIntervalUs:self->_samplingIntervalUs andOccasionalDataIntervalSec:self->_occasionalDataIntervalSec andOnlySampleProcesses:self->_sampledProcesses andOnlySampleMainThreads:self->_samplingMode == 1 andOmitSensitiveStrings:self->super.super._omitSensitiveStrings];
  v4 = v3;
  v5 = v3 != 0;
  if (v3)
  {
    self->super.super._numSamplesAvoidedDueToAudioAtStart = [v3 numSamplesAvoidedDueToAudio];
    self->super.super._numSamplesAtStart = [v4 numSamples];
    timestamp = [v4 timestamp];
    startedMonitoringTimestamp = self->_startedMonitoringTimestamp;
    self->_startedMonitoringTimestamp = timestamp;

    stackshotProvider = [v4 stackshotProvider];
    sampleProvider = self->super.super._sampleProvider;
    self->super.super._sampleProvider = stackshotProvider;

    *&self->super.super._isSampling = 257;
  }

  else
  {
    [(SPProcessEvent *)self dropTransaction];
  }

  return v5;
}

- (void)stopSamplingWithReason:(unsigned __int8)reason
{
  reasonCopy = reason;
  if (self->super.super._isSampling)
  {
    processingQueue = self->super.super._processingQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10008B194;
    block[3] = &unk_100115BA0;
    block[4] = self;
    reasonCopy2 = reason;
    dispatch_async(processingQueue, block);
    return;
  }

  p_targetProcessId = &self->super.super._targetProcessId;
  if ((self->super.super._targetProcessId & 0x80000000) == 0)
  {
    if (byte_100127EC8)
    {
      v7 = __error();
      v8 = *v7;
      v10 = sub_10003E080(v7, v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        sub_1000C1AAC(p_targetProcessId);
      }

      *__error() = v8;
    }

    if (byte_100127EC9 != 1 || dword_100127558 > 0)
    {
      return;
    }

    v12 = *__error();
    v13 = sub_10003E020(*p_targetProcessId);
    v14 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Already not sampling when stopped with reason %d", v13, *p_targetProcessId, reasonCopy);
    if (v14)
    {
      v16 = v14;
      CStringPtr = CFStringGetCStringPtr(v14, 0x8000100u);
      if (CStringPtr)
      {
        v18 = CStringPtr;
        v19 = 0;
      }

      else
      {
        v18 = malloc_type_calloc(0x400uLL, 1uLL, 0x7209598DuLL);
        CFStringGetCString(v16, v18, 1024, 0x8000100u);
        v19 = v18;
      }

      if (qword_100127ED0)
      {
        v32 = qword_100127ED0;
      }

      else
      {
        v32 = __stderrp;
      }

      fprintf(v32, "%s\n", v18);
      if (v19)
      {
        free(v19);
      }

      v33 = v16;
LABEL_52:
      CFRelease(v33);
LABEL_53:
      *__error() = v12;
      return;
    }

    v31 = sub_10003E080(0, v15);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
    {
      sub_1000C1B54(p_targetProcessId);
    }

    goto LABEL_41;
  }

  if (byte_100127EC8)
  {
    v20 = __error();
    v21 = *v20;
    v23 = sub_10003E080(v20, v22);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      sub_1000C19BC(reasonCopy, v23);
    }

    *__error() = v21;
  }

  if (byte_100127EC9 == 1 && dword_100127558 <= 0)
  {
    v12 = *__error();
    v25 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Already not sampling when stopped with reason %d", reasonCopy);
    if (v25)
    {
      v27 = v25;
      v28 = CFStringGetCStringPtr(v25, 0x8000100u);
      if (v28)
      {
        v29 = v28;
        v30 = 0;
      }

      else
      {
        v29 = malloc_type_calloc(0x400uLL, 1uLL, 0x7209598DuLL);
        CFStringGetCString(v27, v29, 1024, 0x8000100u);
        v30 = v29;
      }

      if (qword_100127ED0)
      {
        v36 = qword_100127ED0;
      }

      else
      {
        v36 = __stderrp;
      }

      fprintf(v36, "%s\n", v29);
      if (v30)
      {
        free(v30);
      }

      v33 = v27;
      goto LABEL_52;
    }

    v34 = sub_10003E080(0, v26);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
    {
      sub_1000C1A38();
    }

LABEL_41:
    if (qword_100127ED0)
    {
      v35 = qword_100127ED0;
    }

    else
    {
      v35 = __stderrp;
    }

    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v35);
    goto LABEL_53;
  }
}

- (void)_samplingHasCompletedWithEndSnapshot:(id)snapshot withReason:(unsigned __int8)reason
{
  reasonCopy = reason;
  snapshotCopy = snapshot;
  if (!self->super.super._isUrgent)
  {
    [(SPStackshotProvider *)self->super.super._sampleProvider waitForSamplingToComplete];
  }

  v7 = reasonCopy - 6;
  if (!snapshotCopy || v7 < 0xFFFFFFFC || !self->_hidEventSem)
  {
    p_targetProcessId = &self->super.super._targetProcessId;
    if (self->super.super._targetProcessId < 0)
    {
      if (byte_100127EC8)
      {
        v36 = __error();
        v37 = *v36;
        v39 = sub_10003E080(v36, v38);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
        {
          sub_1000C2024();
        }

        *__error() = v37;
      }

      if (byte_100127EC9 != 1 || dword_100127558 > 0)
      {
LABEL_90:
        if (v7 <= 0xFFFFFFFB)
        {
          goto LABEL_213;
        }

LABEL_91:
        sampleProvider = self->super.super._sampleProvider;
        v165[0] = _NSConcreteStackBlock;
        v165[1] = 3221225472;
        v165[2] = sub_10008C924;
        v165[3] = &unk_100115C68;
        v165[4] = self;
        v167 = reasonCopy;
        v166 = snapshotCopy;
        [(SPStackshotProvider *)sampleProvider performSampleStoreWork:v165];
        v65 = v166;
LABEL_216:

        goto LABEL_217;
      }

      v28 = *__error();
      v41 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"No HID event required");
      if (v41)
      {
        v43 = v41;
        CStringPtr = CFStringGetCStringPtr(v41, 0x8000100u);
        if (CStringPtr)
        {
          v45 = CStringPtr;
          v46 = 0;
        }

        else
        {
          v45 = malloc_type_calloc(0x400uLL, 1uLL, 0x7C11D412uLL);
          CFStringGetCString(v43, v45, 1024, 0x8000100u);
          v46 = v45;
        }

        if (qword_100127ED0)
        {
          v63 = qword_100127ED0;
        }

        else
        {
          v63 = __stderrp;
        }

        fprintf(v63, "%s\n", v45);
        if (v46)
        {
          free(v46);
        }

        v59 = v43;
        goto LABEL_88;
      }

      v60 = sub_10003E080(0, v42);
      if (os_log_type_enabled(v60, OS_LOG_TYPE_FAULT))
      {
        sub_1000C2058();
      }
    }

    else
    {
      if (byte_100127EC8)
      {
        v23 = __error();
        v24 = *v23;
        v26 = sub_10003E080(v23, v25);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          sub_1000C208C();
        }

        *__error() = v24;
      }

      if (byte_100127EC9 != 1 || dword_100127558 > 0)
      {
        goto LABEL_90;
      }

      v28 = *__error();
      v29 = sub_10003E020(*p_targetProcessId);
      v30 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: No HID event required", v29, *p_targetProcessId);
      if (v30)
      {
        v32 = v30;
        v33 = CFStringGetCStringPtr(v30, 0x8000100u);
        if (v33)
        {
          v34 = v33;
          v35 = 0;
        }

        else
        {
          v34 = malloc_type_calloc(0x400uLL, 1uLL, 0x7C11D412uLL);
          CFStringGetCString(v32, v34, 1024, 0x8000100u);
          v35 = v34;
        }

        if (qword_100127ED0)
        {
          v58 = qword_100127ED0;
        }

        else
        {
          v58 = __stderrp;
        }

        fprintf(v58, "%s\n", v34);
        if (v35)
        {
          free(v35);
        }

        v59 = v32;
LABEL_88:
        CFRelease(v59);
LABEL_89:
        *__error() = v28;
        goto LABEL_90;
      }

      v57 = sub_10003E080(0, v31);
      if (os_log_type_enabled(v57, OS_LOG_TYPE_FAULT))
      {
        sub_1000C210C();
      }
    }

    if (qword_100127ED0)
    {
      v61 = qword_100127ED0;
    }

    else
    {
      v61 = __stderrp;
    }

    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v61);
    goto LABEL_89;
  }

  v8 = &self->super.super._targetProcessId;
  if ((self->super.super._targetProcessId & 0x80000000) == 0)
  {
    if (byte_100127EC8)
    {
      v9 = __error();
      v10 = *v9;
      v12 = sub_10003E080(v9, v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = sub_10003E020(*v8);
        v14 = *v8;
        *buf = 136446466;
        v172 = v13;
        v173 = 1024;
        v174 = v14;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%{public}s [%d]: Waiting for HID event...", buf, 0x12u);
      }

      *__error() = v10;
    }

    if (byte_100127EC9 != 1 || dword_100127558 > 1)
    {
      goto LABEL_99;
    }

    v16 = snapshotCopy;
    v17 = *__error();
    v18 = sub_10003E020(*v8);
    v19 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Waiting for HID event...", v18, *v8);
    if (!v19)
    {
      v21 = sub_10003E080(0, v20);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
      {
        sub_1000C1C20();
      }

LABEL_94:

      if (qword_100127ED0)
      {
        v66 = qword_100127ED0;
      }

      else
      {
        v66 = __stderrp;
      }

      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v66);
LABEL_98:
      *__error() = v17;
      snapshotCopy = v16;
      goto LABEL_99;
    }

    goto LABEL_55;
  }

  if (byte_100127EC8)
  {
    v47 = __error();
    v48 = *v47;
    v50 = sub_10003E080(v47, v49);
    if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_INFO, "Waiting for HID event...", buf, 2u);
    }

    *__error() = v48;
  }

  if (byte_100127EC9 == 1 && dword_100127558 <= 1)
  {
    v16 = snapshotCopy;
    v17 = *__error();
    v19 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Waiting for HID event...");
    if (!v19)
    {
      v21 = sub_10003E080(0, v52);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
      {
        sub_1000C1BEC();
      }

      goto LABEL_94;
    }

LABEL_55:
    v53 = v19;
    v54 = CFStringGetCStringPtr(v19, 0x8000100u);
    if (v54)
    {
      v55 = v54;
      v56 = 0;
    }

    else
    {
      v55 = malloc_type_calloc(0x400uLL, 1uLL, 0xFABB794DuLL);
      CFStringGetCString(v53, v55, 1024, 0x8000100u);
      v56 = v55;
    }

    if (qword_100127ED0)
    {
      v62 = qword_100127ED0;
    }

    else
    {
      v62 = __stderrp;
    }

    fprintf(v62, "%s\n", v55);
    if (v56)
    {
      free(v56);
    }

    CFRelease(v53);
    goto LABEL_98;
  }

LABEL_99:
  hidEventSem = self->_hidEventSem;
  v68 = dispatch_time(0, 60000000000);
  if (dispatch_semaphore_wait(hidEventSem, v68))
  {
    if ((*v8 & 0x80000000) != 0)
    {
      if (byte_100127EC8)
      {
        v84 = __error();
        v85 = *v84;
        v87 = sub_10003E080(v84, v86);
        if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_DEFAULT, "Timed out waiting for HID event, canceling spin", buf, 2u);
        }

        *__error() = v85;
      }

      if (byte_100127EC9 != 1 || dword_100127558 > 2)
      {
        goto LABEL_185;
      }

      v75 = *__error();
      v77 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Timed out waiting for HID event, canceling spin");
      if (!v77)
      {
        v79 = sub_10003E080(0, v88);
        if (os_log_type_enabled(v79, OS_LOG_TYPE_FAULT))
        {
          sub_1000C1CA0();
        }

        goto LABEL_180;
      }
    }

    else
    {
      if (byte_100127EC8)
      {
        v69 = __error();
        v70 = *v69;
        v72 = sub_10003E080(v69, v71);
        if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
        {
          v73 = sub_10003E020(*v8);
          v74 = *v8;
          *buf = 136446466;
          v172 = v73;
          v173 = 1024;
          v174 = v74;
          _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEFAULT, "%{public}s [%d]: Timed out waiting for HID event, canceling spin", buf, 0x12u);
        }

        *__error() = v70;
      }

      if (byte_100127EC9 != 1 || dword_100127558 > 2)
      {
        goto LABEL_185;
      }

      v75 = *__error();
      v76 = sub_10003E020(*v8);
      v77 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Timed out waiting for HID event, canceling spin", v76, *v8);
      if (!v77)
      {
        v79 = sub_10003E080(0, v78);
        if (os_log_type_enabled(v79, OS_LOG_TYPE_FAULT))
        {
          sub_1000C1CD4();
        }

LABEL_180:

        if (qword_100127ED0)
        {
          v144 = qword_100127ED0;
        }

        else
        {
          v144 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v144);
LABEL_184:
        *__error() = v75;
LABEL_185:
        v170[0] = _NSConcreteStackBlock;
        v170[1] = 3221225472;
        v170[2] = sub_10008C59C;
        v170[3] = &unk_100115B50;
        v170[4] = self;
        sub_100084E6C(v170);
LABEL_212:
        LOBYTE(reasonCopy) = 8;
        goto LABEL_213;
      }
    }

    v89 = v77;
    v90 = CFStringGetCStringPtr(v77, 0x8000100u);
    if (v90)
    {
      v91 = v90;
      v92 = 0;
    }

    else
    {
      v91 = malloc_type_calloc(0x400uLL, 1uLL, 0x3C3A8052uLL);
      CFStringGetCString(v89, v91, 1024, 0x8000100u);
      v92 = v91;
    }

    if (qword_100127ED0)
    {
      v128 = qword_100127ED0;
    }

    else
    {
      v128 = __stderrp;
    }

    fprintf(v128, "%s\n", v91);
    if (v92)
    {
      free(v92);
    }

    CFRelease(v89);
    goto LABEL_184;
  }

  eventTimeRange = [(SPProcessEvent *)self eventTimeRange];

  if (!eventTimeRange)
  {
    if ((*v8 & 0x80000000) != 0)
    {
      if (byte_100127EC8)
      {
        v137 = __error();
        v138 = *v137;
        v140 = sub_10003E080(v137, v139);
        if (os_log_type_enabled(v140, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v140, OS_LOG_TYPE_DEFAULT, "Canceling spin with no HID event where process exited", buf, 2u);
        }

        *__error() = v138;
      }

      LOBYTE(reasonCopy) = 8;
      if (byte_100127EC9 != 1 || dword_100127558 > 2)
      {
        goto LABEL_213;
      }

      v99 = *__error();
      v101 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Canceling spin with no HID event where process exited");
      if (!v101)
      {
        v103 = sub_10003E080(0, v141);
        if (os_log_type_enabled(v103, OS_LOG_TYPE_FAULT))
        {
          sub_1000C1F70();
        }

        goto LABEL_207;
      }
    }

    else
    {
      if (byte_100127EC8)
      {
        v93 = __error();
        v94 = *v93;
        v96 = sub_10003E080(v93, v95);
        if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
        {
          v97 = sub_10003E020(*v8);
          v98 = *v8;
          *buf = 136446466;
          v172 = v97;
          v173 = 1024;
          v174 = v98;
          _os_log_impl(&_mh_execute_header, v96, OS_LOG_TYPE_DEFAULT, "%{public}s [%d]: Canceling spin with no HID event where process exited", buf, 0x12u);
        }

        *__error() = v94;
      }

      LOBYTE(reasonCopy) = 8;
      if (byte_100127EC9 != 1 || dword_100127558 > 2)
      {
        goto LABEL_213;
      }

      v99 = *__error();
      v100 = sub_10003E020(*v8);
      v101 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Canceling spin with no HID event where process exited", v100, *v8);
      if (!v101)
      {
        v103 = sub_10003E080(0, v102);
        if (os_log_type_enabled(v103, OS_LOG_TYPE_FAULT))
        {
          sub_1000C1FA4();
        }

        goto LABEL_207;
      }
    }

    v134 = v101;
    v135 = CFStringGetCStringPtr(v101, 0x8000100u);
    if (!v135)
    {
      v136 = 1508746754;
      goto LABEL_196;
    }

LABEL_177:
    v142 = v135;
    v143 = 0;
LABEL_197:
    if (qword_100127ED0)
    {
      v155 = qword_100127ED0;
    }

    else
    {
      v155 = __stderrp;
    }

    fprintf(v155, "%s\n", v142);
    if (v143)
    {
      free(v143);
    }

    CFRelease(v134);
    goto LABEL_211;
  }

  eventTimeRange2 = [(SPProcessEvent *)self eventTimeRange];
  startTime = [eventTimeRange2 startTime];
  timestamp = [snapshotCopy timestamp];
  if ([startTime compare:timestamp] != -1)
  {

    goto LABEL_143;
  }

  eventTimeRange3 = [(SPProcessEvent *)self eventTimeRange];
  [eventTimeRange3 endTime];
  v106 = v105 = snapshotCopy;
  v164 = [v106 compare:self->_startedMonitoringTimestamp];

  snapshotCopy = v105;
  if (v164 == 1)
  {
    if ((*v8 & 0x80000000) != 0)
    {
      if (byte_100127EC8)
      {
        v145 = __error();
        v146 = *v145;
        v148 = sub_10003E080(v145, v147);
        if (os_log_type_enabled(v148, OS_LOG_TYPE_DEBUG))
        {
          sub_1000C1E08();
        }

        *__error() = v146;
      }

      if (byte_100127EC9 != 1 || dword_100127558 > 0)
      {
        goto LABEL_244;
      }

      v111 = *__error();
      v149 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Received HID event, reporting spin");
      if (v149)
      {
        v151 = v149;
        v152 = CFStringGetCStringPtr(v149, 0x8000100u);
        if (v152)
        {
          v153 = v152;
          v154 = 0;
        }

        else
        {
          v153 = malloc_type_calloc(0x400uLL, 1uLL, 0xB1A79E27uLL);
          CFStringGetCString(v151, v153, 1024, 0x8000100u);
          v154 = v153;
        }

        if (qword_100127ED0)
        {
          v163 = qword_100127ED0;
        }

        else
        {
          v163 = __stderrp;
        }

        fprintf(v163, "%s\n", v153);
        if (v154)
        {
          free(v154);
        }

        v160 = v151;
        goto LABEL_242;
      }

      v161 = sub_10003E080(0, v150);
      if (os_log_type_enabled(v161, OS_LOG_TYPE_FAULT))
      {
        sub_1000C1E3C();
      }
    }

    else
    {
      if (byte_100127EC8)
      {
        v107 = __error();
        v108 = *v107;
        v110 = sub_10003E080(v107, v109);
        if (os_log_type_enabled(v110, OS_LOG_TYPE_DEBUG))
        {
          sub_1000C1E70();
        }

        *__error() = v108;
      }

      if (byte_100127EC9 != 1 || dword_100127558 > 0)
      {
        goto LABEL_244;
      }

      v111 = *__error();
      v112 = sub_10003E020(*v8);
      v113 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Received HID event, reporting spin", v112, *v8);
      if (v113)
      {
        v115 = v113;
        v116 = CFStringGetCStringPtr(v113, 0x8000100u);
        if (v116)
        {
          v117 = v116;
          v118 = 0;
        }

        else
        {
          v117 = malloc_type_calloc(0x400uLL, 1uLL, 0xB1A79E27uLL);
          CFStringGetCString(v115, v117, 1024, 0x8000100u);
          v118 = v117;
        }

        if (qword_100127ED0)
        {
          v159 = qword_100127ED0;
        }

        else
        {
          v159 = __stderrp;
        }

        fprintf(v159, "%s\n", v117);
        if (v118)
        {
          free(v118);
        }

        v160 = v115;
LABEL_242:
        CFRelease(v160);
LABEL_243:
        *__error() = v111;
LABEL_244:
        if (reasonCopy == 3)
        {
          LOBYTE(reasonCopy) = 4;
        }

        goto LABEL_91;
      }

      v158 = sub_10003E080(0, v114);
      if (os_log_type_enabled(v158, OS_LOG_TYPE_FAULT))
      {
        sub_1000C1EF0();
      }
    }

    if (qword_100127ED0)
    {
      v162 = qword_100127ED0;
    }

    else
    {
      v162 = __stderrp;
    }

    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v162);
    goto LABEL_243;
  }

LABEL_143:
  if ((*v8 & 0x80000000) != 0)
  {
    if (byte_100127EC8)
    {
      v129 = __error();
      v130 = *v129;
      v132 = sub_10003E080(v129, v131);
      if (os_log_type_enabled(v132, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v132, OS_LOG_TYPE_DEFAULT, "Canceling spin with no HID event in its time range", buf, 2u);
      }

      *__error() = v130;
    }

    LOBYTE(reasonCopy) = 8;
    if (byte_100127EC9 == 1 && dword_100127558 <= 2)
    {
      v99 = *__error();
      v126 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Canceling spin with no HID event in its time range");
      if (!v126)
      {
        v103 = sub_10003E080(0, v133);
        if (os_log_type_enabled(v103, OS_LOG_TYPE_FAULT))
        {
          sub_1000C1D54();
        }

        goto LABEL_207;
      }

LABEL_167:
      v134 = v126;
      v135 = CFStringGetCStringPtr(v126, 0x8000100u);
      if (!v135)
      {
        v136 = 3544228920;
LABEL_196:
        v142 = malloc_type_calloc(0x400uLL, 1uLL, v136);
        CFStringGetCString(v134, v142, 1024, 0x8000100u);
        v143 = v142;
        goto LABEL_197;
      }

      goto LABEL_177;
    }
  }

  else
  {
    if (byte_100127EC8)
    {
      v119 = __error();
      v120 = *v119;
      v122 = sub_10003E080(v119, v121);
      if (os_log_type_enabled(v122, OS_LOG_TYPE_DEFAULT))
      {
        v123 = sub_10003E020(*v8);
        v124 = *v8;
        *buf = 136446466;
        v172 = v123;
        v173 = 1024;
        v174 = v124;
        _os_log_impl(&_mh_execute_header, v122, OS_LOG_TYPE_DEFAULT, "%{public}s [%d]: Canceling spin with no HID event in its time range", buf, 0x12u);
      }

      *__error() = v120;
    }

    LOBYTE(reasonCopy) = 8;
    if (byte_100127EC9 == 1 && dword_100127558 <= 2)
    {
      v99 = *__error();
      v125 = sub_10003E020(*v8);
      v126 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Canceling spin with no HID event in its time range", v125, *v8);
      if (!v126)
      {
        v103 = sub_10003E080(0, v127);
        if (os_log_type_enabled(v103, OS_LOG_TYPE_FAULT))
        {
          sub_1000C1D88();
        }

LABEL_207:

        if (qword_100127ED0)
        {
          v156 = qword_100127ED0;
        }

        else
        {
          v156 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v156);
LABEL_211:
        *__error() = v99;
        goto LABEL_212;
      }

      goto LABEL_167;
    }
  }

LABEL_213:
  completionCallbackQueue = self->super.super._completionCallbackQueue;
  if (completionCallbackQueue && self->super.super._completionCallbackBlock)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10008C8D0;
    block[3] = &unk_100115BA0;
    block[4] = self;
    v169 = reasonCopy;
    dispatch_async(completionCallbackQueue, block);
    v65 = self->super.super._completionCallbackQueue;
    self->super.super._completionCallbackQueue = 0;
    goto LABEL_216;
  }

LABEL_217:
}

- (void)_saveReportToStream:(__sFILE *)stream
{
  if (!stream || self->super.super._isSampling || !self->super.super._hasSampled)
  {
    if (self->super.super._targetProcessId < 0)
    {
      if (byte_100127EC8)
      {
        v53 = __error();
        v54 = *v53;
        v56 = sub_10003E080(v53, v55);
        if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
        {
          sub_1000C25E4();
        }

        *__error() = v54;
      }

      if (byte_100127EC9 == 1 && dword_100127558 < 4)
      {
        v58 = stream != 0;
        v69 = *__error();
        v70 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s: save report fail %d %d %d", "stream && !_isSampling && _hasSampled", v58, self->super.super._isSampling, self->super.super._hasSampled);
        if (v70)
        {
          v80 = v70;
          v91 = v69;
          CStringPtr = CFStringGetCStringPtr(v70, 0x8000100u);
          if (CStringPtr)
          {
            v82 = CStringPtr;
            v83 = 0;
          }

          else
          {
            v82 = malloc_type_calloc(0x400uLL, 1uLL, 0x1248844CuLL);
            CFStringGetCString(v80, v82, 1024, 0x8000100u);
            v83 = v82;
          }

          if (qword_100127ED0)
          {
            v90 = qword_100127ED0;
          }

          else
          {
            v90 = __stderrp;
          }

          fprintf(v90, "%s\n", v82);
          if (v83)
          {
            free(v83);
          }

          CFRelease(v80);
          v69 = v91;
        }

        else
        {
          v72 = sub_10003E080(0, v71);
          if (os_log_type_enabled(v72, OS_LOG_TYPE_FAULT))
          {
            isSampling = self->super.super._isSampling;
            hasSampled = self->super.super._hasSampled;
            *buf = 136315906;
            v94 = "stream && !_isSampling && _hasSampled";
            v95 = 1024;
            v96 = v58;
            v97 = 1024;
            *v98 = isSampling;
            *&v98[4] = 1024;
            *&v98[6] = hasSampled;
            _os_log_fault_impl(&_mh_execute_header, v72, OS_LOG_TYPE_FAULT, "Unable to format: %s: save report fail %d %d %d", buf, 0x1Eu);
          }

          if (qword_100127ED0)
          {
            v75 = qword_100127ED0;
          }

          else
          {
            v75 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v75);
        }

        *__error() = v69;
      }

      else
      {
        v58 = stream != 0;
      }

      sub_10003DF54("[SPSampledProcess _saveReportToStream:]", "SPProcessEvent.m", 1338, "%s: save report fail %d %d %d", v3, v4, v5, v6, "stream && !_isSampling && _hasSampled", v58, self->super.super._isSampling, self->super.super._hasSampled);
    }

    else
    {
      if (byte_100127EC8)
      {
        v43 = __error();
        v44 = *v43;
        v46 = sub_10003E080(v43, v45);
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          v47 = sub_10003E020(self->super.super._targetProcessId);
          targetProcessId = self->super.super._targetProcessId;
          v49 = self->super.super._isSampling;
          v50 = self->super.super._hasSampled;
          *buf = 136316418;
          v94 = v47;
          v95 = 1024;
          v96 = targetProcessId;
          v97 = 2080;
          *v98 = "stream && !_isSampling && _hasSampled";
          *&v98[8] = 1024;
          v99 = stream != 0;
          v100 = 1024;
          v101 = v49;
          v102 = 1024;
          v103 = v50;
          _os_log_error_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "%s [%d]: %s: save report fail %d %d %d", buf, 0x2Eu);
        }

        *__error() = v44;
      }

      if (byte_100127EC9 == 1 && dword_100127558 < 4)
      {
        v52 = stream != 0;
        v59 = *__error();
        v60 = sub_10003E020(self->super.super._targetProcessId);
        v61 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: %s: save report fail %d %d %d", v60, self->super.super._targetProcessId, "stream && !_isSampling && _hasSampled", v52, self->super.super._isSampling, self->super.super._hasSampled);
        if (v61)
        {
          v76 = v61;
          v77 = CFStringGetCStringPtr(v61, 0x8000100u);
          if (v77)
          {
            v78 = v77;
            v79 = 0;
          }

          else
          {
            v78 = malloc_type_calloc(0x400uLL, 1uLL, 0x1248844CuLL);
            CFStringGetCString(v76, v78, 1024, 0x8000100u);
            v79 = v78;
          }

          if (qword_100127ED0)
          {
            v84 = qword_100127ED0;
          }

          else
          {
            v84 = __stderrp;
          }

          fprintf(v84, "%s\n", v78);
          if (v79)
          {
            free(v79);
          }

          CFRelease(v76);
        }

        else
        {
          v63 = sub_10003E080(0, v62);
          if (os_log_type_enabled(v63, OS_LOG_TYPE_FAULT))
          {
            v64 = sub_10003E020(self->super.super._targetProcessId);
            v65 = self->super.super._targetProcessId;
            v66 = self->super.super._isSampling;
            v67 = self->super.super._hasSampled;
            *buf = 136316418;
            v94 = v64;
            v95 = 1024;
            v96 = v65;
            v97 = 2080;
            *v98 = "stream && !_isSampling && _hasSampled";
            *&v98[8] = 1024;
            v99 = v52;
            v100 = 1024;
            v101 = v66;
            v102 = 1024;
            v103 = v67;
            _os_log_fault_impl(&_mh_execute_header, v63, OS_LOG_TYPE_FAULT, "Unable to format: %s [%d]: %s: save report fail %d %d %d", buf, 0x2Eu);
          }

          if (qword_100127ED0)
          {
            v68 = qword_100127ED0;
          }

          else
          {
            v68 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v68);
        }

        *__error() = v59;
      }

      else
      {
        v52 = stream != 0;
      }

      v85 = sub_10003E020(self->super.super._targetProcessId);
      sub_10003DF54("[SPSampledProcess _saveReportToStream:]", "SPProcessEvent.m", 1338, "%s [%d]: %s: save report fail %d %d %d", v86, v87, v88, v89, v85, self->super.super._targetProcessId, "stream && !_isSampling && _hasSampled", v52, self->super.super._isSampling, self->super.super._hasSampled);
    }

    abort();
  }

  if (!self->super.super._isUrgent)
  {
    p_targetProcessId = &self->super.super._targetProcessId;
    if (self->super.super._targetProcessId < 0)
    {
      if (byte_100127EC8)
      {
        v25 = __error();
        v26 = *v25;
        v28 = sub_10003E080(v25, v27);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "Waiting for sampling to complete", buf, 2u);
        }

        *__error() = v26;
      }

      if (byte_100127EC9 != 1 || dword_100127558 > 1)
      {
        goto LABEL_56;
      }

      v17 = *__error();
      v30 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Waiting for sampling to complete");
      if (v30)
      {
        v32 = v30;
        v33 = CFStringGetCStringPtr(v30, 0x8000100u);
        if (v33)
        {
          v34 = v33;
          v35 = 0;
        }

        else
        {
          v34 = malloc_type_calloc(0x400uLL, 1uLL, 0x10D3A410uLL);
          CFStringGetCString(v32, v34, 1024, 0x8000100u);
          v35 = v34;
        }

        if (qword_100127ED0)
        {
          v41 = qword_100127ED0;
        }

        else
        {
          v41 = __stderrp;
        }

        fprintf(v41, "%s\n", v34);
        if (v35)
        {
          free(v35);
        }

        v38 = v32;
        goto LABEL_54;
      }

      v39 = sub_10003E080(0, v31);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_FAULT))
      {
        sub_1000C2530();
      }
    }

    else
    {
      if (byte_100127EC8)
      {
        v10 = __error();
        v11 = *v10;
        v13 = sub_10003E080(v10, v12);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v14 = sub_10003E020(*p_targetProcessId);
          v15 = *p_targetProcessId;
          *buf = 136446466;
          v94 = v14;
          v95 = 1024;
          v96 = v15;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%{public}s [%d]: Waiting for sampling to complete", buf, 0x12u);
        }

        *__error() = v11;
      }

      if (byte_100127EC9 != 1 || dword_100127558 > 1)
      {
        goto LABEL_56;
      }

      v17 = *__error();
      v18 = sub_10003E020(*p_targetProcessId);
      v19 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Waiting for sampling to complete", v18, *p_targetProcessId);
      if (v19)
      {
        v21 = v19;
        v22 = CFStringGetCStringPtr(v19, 0x8000100u);
        if (v22)
        {
          v23 = v22;
          v24 = 0;
        }

        else
        {
          v23 = malloc_type_calloc(0x400uLL, 1uLL, 0x10D3A410uLL);
          CFStringGetCString(v21, v23, 1024, 0x8000100u);
          v24 = v23;
        }

        if (qword_100127ED0)
        {
          v37 = qword_100127ED0;
        }

        else
        {
          v37 = __stderrp;
        }

        fprintf(v37, "%s\n", v23);
        if (v24)
        {
          free(v24);
        }

        v38 = v21;
LABEL_54:
        CFRelease(v38);
LABEL_55:
        *__error() = v17;
LABEL_56:
        [(SPStackshotProvider *)self->super.super._sampleProvider waitForSamplingToComplete];
        goto LABEL_57;
      }

      v36 = sub_10003E080(0, v20);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
      {
        sub_1000C2564();
      }
    }

    if (qword_100127ED0)
    {
      v40 = qword_100127ED0;
    }

    else
    {
      v40 = __stderrp;
    }

    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v40);
    goto LABEL_55;
  }

LABEL_57:
  sampleProvider = self->super.super._sampleProvider;
  v92[0] = _NSConcreteStackBlock;
  v92[1] = 3221225472;
  v92[2] = sub_10008DD38;
  v92[3] = &unk_100115C90;
  v92[4] = self;
  v92[5] = stream;
  [(SPStackshotProvider *)sampleProvider performSampleStoreWork:v92];
}

- (void)_performSamplePrinterWork:(id)work
{
  workCopy = work;
  if (!workCopy || self->super.super._isSampling || !self->super.super._hasSampled)
  {
    if (self->super.super._targetProcessId < 0)
    {
      if (byte_100127EC8)
      {
        v54 = __error();
        v55 = *v54;
        v57 = sub_10003E080(v54, v56);
        if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          sub_1000C2694();
        }

        *__error() = v55;
      }

      if (byte_100127EC9 == 1 && dword_100127558 < 4)
      {
        v59 = workCopy != 0;
        v70 = *__error();
        v71 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s: save report fail %d %d %d", "callback && !_isSampling && _hasSampled", v59, self->super.super._isSampling, self->super.super._hasSampled);
        if (v71)
        {
          v81 = v71;
          v92 = v70;
          CStringPtr = CFStringGetCStringPtr(v71, 0x8000100u);
          if (CStringPtr)
          {
            v83 = CStringPtr;
            v84 = 0;
          }

          else
          {
            v83 = malloc_type_calloc(0x400uLL, 1uLL, 0x1AEC2614uLL);
            CFStringGetCString(v81, v83, 1024, 0x8000100u);
            v84 = v83;
          }

          if (qword_100127ED0)
          {
            v91 = qword_100127ED0;
          }

          else
          {
            v91 = __stderrp;
          }

          fprintf(v91, "%s\n", v83);
          if (v84)
          {
            free(v84);
          }

          CFRelease(v81);
          v70 = v92;
        }

        else
        {
          v73 = sub_10003E080(0, v72);
          if (os_log_type_enabled(v73, OS_LOG_TYPE_FAULT))
          {
            isSampling = self->super.super._isSampling;
            hasSampled = self->super.super._hasSampled;
            *buf = 136315906;
            v96 = "callback && !_isSampling && _hasSampled";
            v97 = 1024;
            v98 = v59;
            v99 = 1024;
            *v100 = isSampling;
            *&v100[4] = 1024;
            *&v100[6] = hasSampled;
            _os_log_fault_impl(&_mh_execute_header, v73, OS_LOG_TYPE_FAULT, "Unable to format: %s: save report fail %d %d %d", buf, 0x1Eu);
          }

          if (qword_100127ED0)
          {
            v76 = qword_100127ED0;
          }

          else
          {
            v76 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v76);
        }

        *__error() = v70;
      }

      else
      {
        v59 = workCopy != 0;
      }

      sub_10003DF54("[SPSampledProcess _performSamplePrinterWork:]", "SPProcessEvent.m", 1354, "%s: save report fail %d %d %d", v4, v5, v6, v7, "callback && !_isSampling && _hasSampled", v59, self->super.super._isSampling, self->super.super._hasSampled);
    }

    else
    {
      if (byte_100127EC8)
      {
        v44 = __error();
        v45 = *v44;
        v47 = sub_10003E080(v44, v46);
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          v48 = sub_10003E020(self->super.super._targetProcessId);
          targetProcessId = self->super.super._targetProcessId;
          v50 = self->super.super._isSampling;
          v51 = self->super.super._hasSampled;
          *buf = 136316418;
          v96 = v48;
          v97 = 1024;
          v98 = targetProcessId;
          v99 = 2080;
          *v100 = "callback && !_isSampling && _hasSampled";
          *&v100[8] = 1024;
          v101 = workCopy != 0;
          v102 = 1024;
          v103 = v50;
          v104 = 1024;
          v105 = v51;
          _os_log_error_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "%s [%d]: %s: save report fail %d %d %d", buf, 0x2Eu);
        }

        *__error() = v45;
      }

      if (byte_100127EC9 == 1 && dword_100127558 < 4)
      {
        v53 = workCopy != 0;
        v60 = *__error();
        v61 = sub_10003E020(self->super.super._targetProcessId);
        v62 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: %s: save report fail %d %d %d", v61, self->super.super._targetProcessId, "callback && !_isSampling && _hasSampled", v53, self->super.super._isSampling, self->super.super._hasSampled);
        if (v62)
        {
          v77 = v62;
          v78 = CFStringGetCStringPtr(v62, 0x8000100u);
          if (v78)
          {
            v79 = v78;
            v80 = 0;
          }

          else
          {
            v79 = malloc_type_calloc(0x400uLL, 1uLL, 0x1AEC2614uLL);
            CFStringGetCString(v77, v79, 1024, 0x8000100u);
            v80 = v79;
          }

          if (qword_100127ED0)
          {
            v85 = qword_100127ED0;
          }

          else
          {
            v85 = __stderrp;
          }

          fprintf(v85, "%s\n", v79);
          if (v80)
          {
            free(v80);
          }

          CFRelease(v77);
        }

        else
        {
          v64 = sub_10003E080(0, v63);
          if (os_log_type_enabled(v64, OS_LOG_TYPE_FAULT))
          {
            v65 = sub_10003E020(self->super.super._targetProcessId);
            v66 = self->super.super._targetProcessId;
            v67 = self->super.super._isSampling;
            v68 = self->super.super._hasSampled;
            *buf = 136316418;
            v96 = v65;
            v97 = 1024;
            v98 = v66;
            v99 = 2080;
            *v100 = "callback && !_isSampling && _hasSampled";
            *&v100[8] = 1024;
            v101 = v53;
            v102 = 1024;
            v103 = v67;
            v104 = 1024;
            v105 = v68;
            _os_log_fault_impl(&_mh_execute_header, v64, OS_LOG_TYPE_FAULT, "Unable to format: %s [%d]: %s: save report fail %d %d %d", buf, 0x2Eu);
          }

          if (qword_100127ED0)
          {
            v69 = qword_100127ED0;
          }

          else
          {
            v69 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v69);
        }

        *__error() = v60;
      }

      else
      {
        v53 = workCopy != 0;
      }

      v86 = sub_10003E020(self->super.super._targetProcessId);
      sub_10003DF54("[SPSampledProcess _performSamplePrinterWork:]", "SPProcessEvent.m", 1354, "%s [%d]: %s: save report fail %d %d %d", v87, v88, v89, v90, v86, self->super.super._targetProcessId, "callback && !_isSampling && _hasSampled", v53, self->super.super._isSampling, self->super.super._hasSampled);
    }

    abort();
  }

  if (!self->super.super._isUrgent)
  {
    p_targetProcessId = &self->super.super._targetProcessId;
    if (self->super.super._targetProcessId < 0)
    {
      if (byte_100127EC8)
      {
        v25 = __error();
        v26 = *v25;
        v28 = sub_10003E080(v25, v27);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "Waiting for sampling to complete", buf, 2u);
        }

        *__error() = v26;
      }

      if (byte_100127EC9 != 1 || dword_100127558 > 1)
      {
        goto LABEL_56;
      }

      v17 = *__error();
      v30 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Waiting for sampling to complete");
      if (v30)
      {
        v32 = v30;
        v33 = CFStringGetCStringPtr(v30, 0x8000100u);
        if (v33)
        {
          v34 = v33;
          v35 = 0;
        }

        else
        {
          v34 = malloc_type_calloc(0x400uLL, 1uLL, 0x4D4E8C43uLL);
          CFStringGetCString(v32, v34, 1024, 0x8000100u);
          v35 = v34;
        }

        if (qword_100127ED0)
        {
          v41 = qword_100127ED0;
        }

        else
        {
          v41 = __stderrp;
        }

        fprintf(v41, "%s\n", v34);
        if (v35)
        {
          free(v35);
        }

        v38 = v32;
        goto LABEL_54;
      }

      v39 = sub_10003E080(0, v31);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_FAULT))
      {
        sub_1000C2660();
      }
    }

    else
    {
      if (byte_100127EC8)
      {
        v10 = __error();
        v11 = *v10;
        v13 = sub_10003E080(v10, v12);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v14 = sub_10003E020(*p_targetProcessId);
          v15 = *p_targetProcessId;
          *buf = 136446466;
          v96 = v14;
          v97 = 1024;
          v98 = v15;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%{public}s [%d]: Waiting for sampling to complete", buf, 0x12u);
        }

        *__error() = v11;
      }

      if (byte_100127EC9 != 1 || dword_100127558 > 1)
      {
        goto LABEL_56;
      }

      v17 = *__error();
      v18 = sub_10003E020(*p_targetProcessId);
      v19 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Waiting for sampling to complete", v18, *p_targetProcessId);
      if (v19)
      {
        v21 = v19;
        v22 = CFStringGetCStringPtr(v19, 0x8000100u);
        if (v22)
        {
          v23 = v22;
          v24 = 0;
        }

        else
        {
          v23 = malloc_type_calloc(0x400uLL, 1uLL, 0x4D4E8C43uLL);
          CFStringGetCString(v21, v23, 1024, 0x8000100u);
          v24 = v23;
        }

        if (qword_100127ED0)
        {
          v37 = qword_100127ED0;
        }

        else
        {
          v37 = __stderrp;
        }

        fprintf(v37, "%s\n", v23);
        if (v24)
        {
          free(v24);
        }

        v38 = v21;
LABEL_54:
        CFRelease(v38);
LABEL_55:
        *__error() = v17;
LABEL_56:
        [(SPStackshotProvider *)self->super.super._sampleProvider waitForSamplingToComplete];
        goto LABEL_57;
      }

      v36 = sub_10003E080(0, v20);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
      {
        sub_1000C2564();
      }
    }

    if (qword_100127ED0)
    {
      v40 = qword_100127ED0;
    }

    else
    {
      v40 = __stderrp;
    }

    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v40);
    goto LABEL_55;
  }

LABEL_57:
  sampleProvider = self->super.super._sampleProvider;
  v93[0] = _NSConcreteStackBlock;
  v93[1] = 3221225472;
  v93[2] = sub_10008E770;
  v93[3] = &unk_100115CB8;
  v93[4] = self;
  v94 = workCopy;
  v43 = workCopy;
  [(SPStackshotProvider *)sampleProvider performSampleStoreWork:v93];
}

@end