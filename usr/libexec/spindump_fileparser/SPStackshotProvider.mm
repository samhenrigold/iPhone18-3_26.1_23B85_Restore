@interface SPStackshotProvider
+ (id)sharedInstanceLock;
+ (id)snapshotWithSamplingIntervalUs:(unsigned int)us andOccasionalDataIntervalSec:(unsigned int)sec andOnlySampleProcesses:(id)processes andOnlySampleMainThreads:(BOOL)threads andOmitSensitiveStrings:(BOOL)strings;
- (BOOL)startWithSamplingIntervalUs:(unsigned int)us andOccasionalDataIntervalSec:(unsigned int)sec andOnlySampleProcesses:(id)processes andOnlySampleMainThreads:(BOOL)threads andOmitSensitiveStrings:(BOOL)strings;
- (SPStackshotProvider)init;
- (void)dealloc;
- (void)gatherLoadInfoForPid:(int)pid;
- (void)performSampleStoreWork:(id)work;
- (void)sampleProcesses:(id)processes onlyMainThreads:(BOOL)threads;
- (void)startSamplingThread;
- (void)stopAndWaitForAllSamplingToComplete:(BOOL)complete withCompletionCallbackOnQueue:(id)queue withBlock:(id)block;
- (void)stopSamplingThread;
@end

@implementation SPStackshotProvider

- (SPStackshotProvider)init
{
  v49.receiver = self;
  v49.super_class = SPStackshotProvider;
  v2 = [(SPStackshotProvider *)&v49 init];
  v3 = v2;
  if (v2)
  {
    v2->_numClientsSampling = 0;
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_attr_make_with_qos_class(v4, QOS_CLASS_BACKGROUND, 0);
    v6 = dispatch_queue_create("com.apple.spindump.sample_store", v5);
    storeReportingQueue = v3->_storeReportingQueue;
    v3->_storeReportingQueue = v6;

    v8 = dispatch_queue_attr_make_with_qos_class(v4, QOS_CLASS_USER_INITIATED, 0);

    v9 = dispatch_queue_create("com.apple.spindump.stackshot_parsing", v8);
    stackshotParsingQueue = v3->_stackshotParsingQueue;
    v3->_stackshotParsingQueue = v9;

    v11 = objc_alloc_init(NSMutableArray);
    pidsToGatherLoadInfo = v3->_pidsToGatherLoadInfo;
    v3->_pidsToGatherLoadInfo = v11;

    v13 = dispatch_group_create();
    samplingGroup = v3->_samplingGroup;
    v3->_samplingGroup = v13;

    v15 = dispatch_semaphore_create(1);
    pidsSem = v3->_pidsSem;
    v3->_pidsSem = v15;

    initForLiveSampling = [[SASampleStore alloc] initForLiveSampling];
    sampleStore = v3->_sampleStore;
    v3->_sampleStore = initForLiveSampling;

    sub_1000791AC(v3->_sampleStore, (byte_100127EDC >> 3) & 1, (byte_100127EDC >> 2) & 1, (byte_100127EDC & 0x10) == 0);
    if ((byte_100127EDC & 2) != 0 && sub_1000338E4())
    {
      if (byte_100127EC8 == 1)
      {
        v19 = __error();
        v20 = *v19;
        v22 = sub_10003E080(v19, v21);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Avoiding inspecting live processes for stackshot report due to audio running", buf, 2u);
        }

        *__error() = v20;
      }

      if (byte_100127EC9 == 1 && dword_100127558 <= 2)
      {
        v23 = *__error();
        v24 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Avoiding inspecting live processes for stackshot report due to audio running");
        if (v24)
        {
          v26 = v24;
          CStringPtr = CFStringGetCStringPtr(v24, 0x8000100u);
          if (CStringPtr)
          {
            v28 = CStringPtr;
            v29 = 0;
          }

          else
          {
            v28 = malloc_type_calloc(0x400uLL, 1uLL, 0xCC42BEA3uLL);
            CFStringGetCString(v26, v28, 1024, 0x8000100u);
            v29 = v28;
          }

          if (qword_100127ED0)
          {
            v32 = qword_100127ED0;
          }

          else
          {
            v32 = __stderrp;
          }

          fprintf(v32, "%s\n", v28);
          if (v29)
          {
            free(v29);
          }

          CFRelease(v26);
        }

        else
        {
          v30 = sub_10003E080(0, v25);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
          {
            sub_1000C3754();
          }

          if (qword_100127ED0)
          {
            v31 = qword_100127ED0;
          }

          else
          {
            v31 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v31);
        }

        *__error() = v23;
      }

      [(SASampleStore *)v3->_sampleStore setDataGatheringOptions:[(SASampleStore *)v3->_sampleStore dataGatheringOptions]& 0xFFFFFFFFFFFFFFFDLL];
    }

    [(SASampleStore *)v3->_sampleStore gatherMachineArchitecture];
    if (byte_100127EC8 == 1)
    {
      v33 = __error();
      v34 = *v33;
      v36 = sub_10003E080(v33, v35);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
      {
        sub_1000C3788();
      }

      *__error() = v34;
    }

    if (byte_100127EC9 == 1 && dword_100127558 <= 0)
    {
      v37 = *__error();
      v38 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Created shared SPStackshotProvider");
      if (v38)
      {
        v40 = v38;
        v41 = CFStringGetCStringPtr(v38, 0x8000100u);
        if (v41)
        {
          v42 = v41;
          v43 = 0;
        }

        else
        {
          v42 = malloc_type_calloc(0x400uLL, 1uLL, 0x4B4E1BB3uLL);
          CFStringGetCString(v40, v42, 1024, 0x8000100u);
          v43 = v42;
        }

        if (qword_100127ED0)
        {
          v46 = qword_100127ED0;
        }

        else
        {
          v46 = __stderrp;
        }

        fprintf(v46, "%s\n", v42);
        if (v43)
        {
          free(v43);
        }

        CFRelease(v40);
      }

      else
      {
        v44 = sub_10003E080(0, v39);
        if (os_log_type_enabled(v44, OS_LOG_TYPE_FAULT))
        {
          sub_1000C37BC();
        }

        if (qword_100127ED0)
        {
          v45 = qword_100127ED0;
        }

        else
        {
          v45 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v45);
      }

      *__error() = v37;
    }
  }

  return v3;
}

- (void)dealloc
{
  numClientsSampling = self->_numClientsSampling;
  p_numClientsSampling = &self->_numClientsSampling;
  if (numClientsSampling)
  {
    sub_1000C37F0(p_numClientsSampling, a2, v2, v3, v4, v5, v6, v7);
  }

  [(SPStackshotProvider *)self stopSamplingThread];
  v11.receiver = self;
  v11.super_class = SPStackshotProvider;
  [(SPStackshotProvider *)&v11 dealloc];
}

- (void)startSamplingThread
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_samplingThread)
  {
    if (byte_100127EC8 == 1)
    {
      v3 = __error();
      v4 = *v3;
      v6 = sub_10003E080(v3, v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        sub_1000C3A3C();
      }

      *__error() = v4;
    }

    if (byte_100127EC9 == 1 && dword_100127558 <= 0)
    {
      v8 = *__error();
      v9 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Already have a sampling thread");
      v11 = v9;
      if (v9)
      {
        CStringPtr = CFStringGetCStringPtr(v9, 0x8000100u);
        if (CStringPtr)
        {
          v13 = 0;
        }

        else
        {
          CStringPtr = malloc_type_calloc(0x400uLL, 1uLL, 0xCDBDCB85uLL);
          CFStringGetCString(v11, CStringPtr, 1024, 0x8000100u);
          v13 = CStringPtr;
        }

        if (qword_100127ED0)
        {
          v29 = qword_100127ED0;
        }

        else
        {
          v29 = __stderrp;
        }

        fprintf(v29, "%s\n", CStringPtr);
        if (v13)
        {
          free(v13);
        }

        CFRelease(v11);
      }

      else
      {
        v27 = sub_10003E080(0, v10);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
        {
          sub_1000C3A70();
        }

        if (qword_100127ED0)
        {
          v28 = qword_100127ED0;
        }

        else
        {
          v28 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v28);
      }

      *__error() = v8;
    }
  }

  else
  {
    v14 = dispatch_semaphore_create(0);
    samplingStoppedSem = selfCopy->_samplingStoppedSem;
    selfCopy->_samplingStoppedSem = v14;

    if (byte_100127EC8 == 1)
    {
      v16 = __error();
      v17 = *v16;
      v19 = sub_10003E080(v16, v18);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Starting sampling thread", buf, 2u);
      }

      *__error() = v17;
    }

    if (byte_100127EC9 == 1 && dword_100127558 <= 1)
    {
      v21 = *__error();
      v22 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Starting sampling thread");
      v24 = v22;
      if (v22)
      {
        v25 = CFStringGetCStringPtr(v22, 0x8000100u);
        if (v25)
        {
          v26 = 0;
        }

        else
        {
          v25 = malloc_type_calloc(0x400uLL, 1uLL, 0x803DE8C6uLL);
          CFStringGetCString(v24, v25, 1024, 0x8000100u);
          v26 = v25;
        }

        if (qword_100127ED0)
        {
          v32 = qword_100127ED0;
        }

        else
        {
          v32 = __stderrp;
        }

        fprintf(v32, "%s\n", v25);
        if (v26)
        {
          free(v26);
        }

        CFRelease(v24);
      }

      else
      {
        v30 = sub_10003E080(0, v23);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
        {
          sub_1000C3AA4();
        }

        if (qword_100127ED0)
        {
          v31 = qword_100127ED0;
        }

        else
        {
          v31 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v31);
      }

      *__error() = v21;
    }

    v33 = pthread_create(&selfCopy->_samplingThread, 0, sub_100092620, selfCopy);
    if (v33)
    {
      *__errnum = v33;
      if (byte_100127EC8 == 1)
      {
        v34 = __error();
        v35 = *v34;
        v37 = sub_10003E080(v34, v36);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          v38 = strerror(__errnum[0]);
          sub_1000C3AD8(v38, buf, __errnum[0]);
        }

        *__error() = v35;
      }

      if (byte_100127EC9 == 1 && dword_100127558 <= 3)
      {
        v39 = *__error();
        v40 = strerror(__errnum[0]);
        v41 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s: Unable to create sampling thread: %d (%s)", "ret == 0", *__errnum, v40);
        v43 = v41;
        if (v41)
        {
          v47 = CFStringGetCStringPtr(v41, 0x8000100u);
          if (v47)
          {
            v48 = 0;
          }

          else
          {
            v47 = malloc_type_calloc(0x400uLL, 1uLL, 0xC76F9A91uLL);
            CFStringGetCString(v43, v47, 1024, 0x8000100u);
            v48 = v47;
          }

          if (qword_100127ED0)
          {
            v49 = qword_100127ED0;
          }

          else
          {
            v49 = __stderrp;
          }

          fprintf(v49, "%s\n", v47);
          if (v48)
          {
            free(v48);
          }

          CFRelease(v43);
        }

        else
        {
          v44 = sub_10003E080(0, v42);
          if (os_log_type_enabled(v44, OS_LOG_TYPE_FAULT))
          {
            v45 = strerror(__errnum[0]);
            sub_1000C3B2C(v45, v56, __errnum[0]);
          }

          if (qword_100127ED0)
          {
            v46 = qword_100127ED0;
          }

          else
          {
            v46 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v46);
        }

        *__error() = v39;
      }

      v50 = strerror(__errnum[0]);
      sub_10003DF54("[SPStackshotProvider startSamplingThread]", "SPSampleProvider.m", 490, "%s: Unable to create sampling thread: %d (%s)", v51, v52, v53, v54, "ret == 0", *__errnum, v50);
      abort();
    }
  }

  objc_sync_exit(selfCopy);
}

- (void)stopSamplingThread
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_samplingThread)
  {
    dispatch_semaphore_signal(selfCopy->_samplingStoppedSem);
    if (byte_100127EC9 == 1)
    {
      if (qword_100127F18 && dispatch_group_wait(qword_100127F18, 0))
      {
        if (byte_100127F11)
        {
          goto LABEL_112;
        }

        if (byte_100127EC8 == 1)
        {
          v3 = __error();
          v4 = *v3;
          v6 = sub_10003E080(v3, v5);
          if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Sampling completed, waiting for SIGINFO...", buf, 2u);
          }

          *__error() = v4;
        }

        if (byte_100127EC9 != 1 || dword_100127558 > 2)
        {
          goto LABEL_112;
        }

        v8 = *__error();
        v9 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Sampling completed, waiting for SIGINFO...");
        v11 = v9;
        if (v9)
        {
          CStringPtr = CFStringGetCStringPtr(v9, 0x8000100u);
          if (CStringPtr)
          {
            v13 = 0;
          }

          else
          {
            CStringPtr = malloc_type_calloc(0x400uLL, 1uLL, 0x206902CAuLL);
            CFStringGetCString(v11, CStringPtr, 1024, 0x8000100u);
            v13 = CStringPtr;
          }

          if (qword_100127ED0)
          {
            v57 = qword_100127ED0;
          }

          else
          {
            v57 = __stderrp;
          }

          fprintf(v57, "%s\n", CStringPtr);
          if (v13)
          {
            free(v13);
          }

          CFRelease(v11);
        }

        else
        {
          v52 = sub_10003E080(0, v10);
          if (os_log_type_enabled(v52, OS_LOG_TYPE_FAULT))
          {
            sub_1000C402C();
          }

          if (qword_100127ED0)
          {
            v53 = qword_100127ED0;
          }

          else
          {
            v53 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v53);
        }

        v55 = __error();
      }

      else if ((byte_100127EDC & 0x18) == 0x10)
      {
        if (byte_100127EC8)
        {
          v25 = __error();
          v26 = *v25;
          v28 = sub_10003E080(v25, v27);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            *v72 = 0;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Sampling completed, generating report...", v72, 2u);
          }

          *__error() = v26;
        }

        if (byte_100127EC9 != 1 || dword_100127558 > 2)
        {
          goto LABEL_112;
        }

        v8 = *__error();
        v30 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Sampling completed, generating report...");
        v32 = v30;
        if (v30)
        {
          v33 = CFStringGetCStringPtr(v30, 0x8000100u);
          if (v33)
          {
            v34 = 0;
          }

          else
          {
            v33 = malloc_type_calloc(0x400uLL, 1uLL, 0x1EBAC01AuLL);
            CFStringGetCString(v32, v33, 1024, 0x8000100u);
            v34 = v33;
          }

          if (qword_100127ED0)
          {
            v54 = qword_100127ED0;
          }

          else
          {
            v54 = __stderrp;
          }

          fprintf(v54, "%s\n", v33);
          if (v34)
          {
            free(v34);
          }

          CFRelease(v32);
        }

        else
        {
          v48 = sub_10003E080(0, v31);
          if (os_log_type_enabled(v48, OS_LOG_TYPE_FAULT))
          {
            sub_1000C4094();
          }

          if (qword_100127ED0)
          {
            v49 = qword_100127ED0;
          }

          else
          {
            v49 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v49);
        }

        v55 = __error();
      }

      else
      {
        if (byte_100127EC8)
        {
          v35 = __error();
          v36 = *v35;
          v38 = sub_10003E080(v35, v37);
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            *v73 = 0;
            _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Sampling completed, processing symbols...", v73, 2u);
          }

          *__error() = v36;
        }

        if (byte_100127EC9 != 1 || dword_100127558 > 2)
        {
          goto LABEL_112;
        }

        v8 = *__error();
        v40 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Sampling completed, processing symbols...");
        v42 = v40;
        if (v40)
        {
          v43 = CFStringGetCStringPtr(v40, 0x8000100u);
          if (v43)
          {
            v44 = 0;
          }

          else
          {
            v43 = malloc_type_calloc(0x400uLL, 1uLL, 0x926C3742uLL);
            CFStringGetCString(v42, v43, 1024, 0x8000100u);
            v44 = v43;
          }

          if (qword_100127ED0)
          {
            v56 = qword_100127ED0;
          }

          else
          {
            v56 = __stderrp;
          }

          fprintf(v56, "%s\n", v43);
          if (v44)
          {
            free(v44);
          }

          CFRelease(v42);
        }

        else
        {
          v50 = sub_10003E080(0, v41);
          if (os_log_type_enabled(v50, OS_LOG_TYPE_FAULT))
          {
            sub_1000C4060();
          }

          if (qword_100127ED0)
          {
            v51 = qword_100127ED0;
          }

          else
          {
            v51 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v51);
        }

        v55 = __error();
      }

      *v55 = v8;
    }

LABEL_112:
    if (byte_100127EC8 == 1)
    {
      v58 = __error();
      v59 = *v58;
      v61 = sub_10003E080(v58, v60);
      if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
      {
        *v71 = 0;
        _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_INFO, "Stopping sampling thread", v71, 2u);
      }

      *__error() = v59;
      if (byte_100127EC9 == 1 && dword_100127558 <= 1)
      {
        v62 = *__error();
        v63 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Stopping sampling thread");
        v65 = v63;
        if (v63)
        {
          v66 = CFStringGetCStringPtr(v63, 0x8000100u);
          if (v66)
          {
            v67 = 0;
          }

          else
          {
            v66 = malloc_type_calloc(0x400uLL, 1uLL, 0xEC9D0954uLL);
            CFStringGetCString(v65, v66, 1024, 0x8000100u);
            v67 = v66;
          }

          if (qword_100127ED0)
          {
            v70 = qword_100127ED0;
          }

          else
          {
            v70 = __stderrp;
          }

          fprintf(v70, "%s\n", v66);
          if (v67)
          {
            free(v67);
          }

          CFRelease(v65);
        }

        else
        {
          v68 = sub_10003E080(0, v64);
          if (os_log_type_enabled(v68, OS_LOG_TYPE_FAULT))
          {
            sub_1000C40C8();
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

        *__error() = v62;
      }
    }

    pthread_join(selfCopy->_samplingThread, 0);
    selfCopy->_samplingThread = 0;
    goto LABEL_135;
  }

  if (byte_100127EC8 == 1)
  {
    v14 = __error();
    v15 = *v14;
    v17 = sub_10003E080(v14, v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      sub_1000C40FC();
    }

    *__error() = v15;
  }

  if (byte_100127EC9 == 1 && dword_100127558 <= 0)
  {
    v19 = *__error();
    v20 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"No sampling thread to stop");
    v22 = v20;
    if (v20)
    {
      v23 = CFStringGetCStringPtr(v20, 0x8000100u);
      if (v23)
      {
        v24 = 0;
      }

      else
      {
        v23 = malloc_type_calloc(0x400uLL, 1uLL, 0x25EC8AEBuLL);
        CFStringGetCString(v22, v23, 1024, 0x8000100u);
        v24 = v23;
      }

      if (qword_100127ED0)
      {
        v47 = qword_100127ED0;
      }

      else
      {
        v47 = __stderrp;
      }

      fprintf(v47, "%s\n", v23);
      if (v24)
      {
        free(v24);
      }

      CFRelease(v22);
    }

    else
    {
      v45 = sub_10003E080(0, v21);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_FAULT))
      {
        sub_1000C4130();
      }

      if (qword_100127ED0)
      {
        v46 = qword_100127ED0;
      }

      else
      {
        v46 = __stderrp;
      }

      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v46);
    }

    *__error() = v19;
  }

LABEL_135:
  objc_sync_exit(selfCopy);
}

+ (id)sharedInstanceLock
{
  if (qword_100127E88 != -1)
  {
    sub_1000C4164();
  }

  v3 = qword_100127E90;

  return v3;
}

+ (id)snapshotWithSamplingIntervalUs:(unsigned int)us andOccasionalDataIntervalSec:(unsigned int)sec andOnlySampleProcesses:(id)processes andOnlySampleMainThreads:(BOOL)threads andOmitSensitiveStrings:(BOOL)strings
{
  processesCopy = processes;
  if (us)
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = sub_100094360;
    v26 = sub_100094370;
    v27 = 0;
    v12 = +[SPStackshotProvider sharedInstanceLock];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100094378;
    v15[3] = &unk_100115DC0;
    usCopy = us;
    secCopy = sec;
    threadsCopy = threads;
    stringsCopy = strings;
    v16 = processesCopy;
    v17 = &v22;
    dispatch_sync(v12, v15);

    v13 = v23[5];
    _Block_object_dispose(&v22, 8);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)sampleProcesses:(id)processes onlyMainThreads:(BOOL)threads
{
  threadsCopy = threads;
  processesCopy = processes;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_numClientsSampling)
  {
    sampleOnlyPids = selfCopy->_sampleOnlyPids;
    if (processesCopy)
    {
      if (sampleOnlyPids)
      {
        v9 = [processesCopy mutableCopy];
        [v9 minusSet:selfCopy->_sampleOnlyPids];
        if ([v9 count])
        {
          dispatch_semaphore_wait(selfCopy->_pidsSem, 0xFFFFFFFFFFFFFFFFLL);
          selfCopy->_sampleOnlyPidsHasUpdate = 1;
          [(NSMutableSet *)selfCopy->_sampleOnlyPids unionSet:v9];
          if (byte_100127EC8 == 1)
          {
            v10 = __error();
            v11 = *v10;
            v13 = sub_10003E080(v10, v12);
            if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
            {
              v14 = [v9 description];
              *buf = 136315138;
              uTF8String = [v14 UTF8String];
              _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Changing to sampling %s also", buf, 0xCu);
            }

            *__error() = v11;
          }

          if (byte_100127EC9 == 1 && dword_100127558 <= 1)
          {
            v15 = *__error();
            v16 = [v9 description];
            v17 = v16;
            v18 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Changing to sampling %s also", [v16 UTF8String]);

            if (v18)
            {
              CStringPtr = CFStringGetCStringPtr(v18, 0x8000100u);
              if (CStringPtr)
              {
                v22 = 0;
              }

              else
              {
                CStringPtr = malloc_type_calloc(0x400uLL, 1uLL, 0xC3E277uLL);
                CFStringGetCString(v18, CStringPtr, 1024, 0x8000100u);
                v22 = CStringPtr;
              }

              if (qword_100127ED0)
              {
                v55 = qword_100127ED0;
              }

              else
              {
                v55 = __stderrp;
              }

              fprintf(v55, "%s\n", CStringPtr);
              if (v22)
              {
                free(v22);
              }

              CFRelease(v18);
            }

            else
            {
              v51 = sub_10003E080(v19, v20);
              if (os_log_type_enabled(v51, OS_LOG_TYPE_FAULT))
              {
                v70 = [v9 description];
                v71 = v70;
                uTF8String2 = [v70 UTF8String];
                *buf = 136315138;
                uTF8String = uTF8String2;
                _os_log_fault_impl(&_mh_execute_header, v51, OS_LOG_TYPE_FAULT, "Unable to format: Changing to sampling %s also", buf, 0xCu);
              }

              if (qword_100127ED0)
              {
                v52 = qword_100127ED0;
              }

              else
              {
                v52 = __stderrp;
              }

              fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v52);
            }

            *__error() = v15;
          }

          dispatch_semaphore_signal(selfCopy->_pidsSem);
        }
      }

      if (!threadsCopy && [(SASampleStore *)selfCopy->_sampleStore sampleOnlyMainThreads])
      {
        if (byte_100127EC8 == 1)
        {
          v56 = __error();
          v57 = *v56;
          v59 = sub_10003E080(v56, v58);
          if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_INFO, "Upping sampling to include non-main threads", buf, 2u);
          }

          *__error() = v57;
        }

        if (byte_100127EC9 == 1 && dword_100127558 <= 1)
        {
          v60 = *__error();
          v61 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Upping sampling to include non-main threads");
          v63 = v61;
          if (v61)
          {
            v64 = CFStringGetCStringPtr(v61, 0x8000100u);
            if (v64)
            {
              v65 = 0;
            }

            else
            {
              v64 = malloc_type_calloc(0x400uLL, 1uLL, 0xF63BC5BuLL);
              CFStringGetCString(v63, v64, 1024, 0x8000100u);
              v65 = v64;
            }

            if (qword_100127ED0)
            {
              v69 = qword_100127ED0;
            }

            else
            {
              v69 = __stderrp;
            }

            fprintf(v69, "%s\n", v64);
            if (v65)
            {
              free(v65);
            }

            CFRelease(v63);
          }

          else
          {
            v66 = sub_10003E080(0, v62);
            if (os_log_type_enabled(v66, OS_LOG_TYPE_FAULT))
            {
              sub_1000C4318();
            }

            if (qword_100127ED0)
            {
              v67 = qword_100127ED0;
            }

            else
            {
              v67 = __stderrp;
            }

            fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v67);
          }

          *__error() = v60;
        }

        [(SASampleStore *)selfCopy->_sampleStore setSampleOnlyMainThreads:0];
      }

      goto LABEL_111;
    }

    if (sampleOnlyPids)
    {
      dispatch_semaphore_wait(selfCopy->_pidsSem, 0xFFFFFFFFFFFFFFFFLL);
      selfCopy->_sampleOnlyPidsHasUpdate = 1;
      v36 = selfCopy->_sampleOnlyPids;
      selfCopy->_sampleOnlyPids = 0;

      dispatch_semaphore_signal(selfCopy->_pidsSem);
      if ([(SASampleStore *)selfCopy->_sampleStore sampleOnlyMainThreads])
      {
        [(SASampleStore *)selfCopy->_sampleStore setSampleOnlyMainThreads:0];
      }

      [(SASampleStore *)selfCopy->_sampleStore setStackshotsOnlyIncludeSpecificProcesses:0];
      if (byte_100127EC8 == 1)
      {
        v37 = __error();
        v38 = *v37;
        v40 = sub_10003E080(v37, v39);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "Changing to sampling everything", buf, 2u);
        }

        *__error() = v38;
      }

      if (byte_100127EC9 == 1 && dword_100127558 <= 1)
      {
        v29 = *__error();
        v41 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Changing to sampling everything");
        v43 = v41;
        if (v41)
        {
          v44 = CFStringGetCStringPtr(v41, 0x8000100u);
          if (v44)
          {
            v45 = 0;
          }

          else
          {
            v44 = malloc_type_calloc(0x400uLL, 1uLL, 0xBE46AB29uLL);
            CFStringGetCString(v43, v44, 1024, 0x8000100u);
            v45 = v44;
          }

          if (qword_100127ED0)
          {
            v68 = qword_100127ED0;
          }

          else
          {
            v68 = __stderrp;
          }

          fprintf(v68, "%s\n", v44);
          if (v45)
          {
            free(v45);
          }

          CFRelease(v43);
        }

        else
        {
          v53 = sub_10003E080(0, v42);
          if (os_log_type_enabled(v53, OS_LOG_TYPE_FAULT))
          {
            sub_1000C434C();
          }

          if (qword_100127ED0)
          {
            v54 = qword_100127ED0;
          }

          else
          {
            v54 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v54);
        }

        v50 = __error();
LABEL_101:
        *v50 = v29;
      }
    }
  }

  else
  {
    if (processesCopy)
    {
      [(SASampleStore *)selfCopy->_sampleStore setStackshotsOnlyIncludeSpecificProcesses:1];
    }

    if (byte_100127EC8 == 1)
    {
      v23 = __error();
      v24 = *v23;
      v26 = sub_10003E080(v23, v25);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = [processesCopy description];
        sub_1000C4380(v27, threadsCopy, buf, v26);
      }

      *__error() = v24;
    }

    if (byte_100127EC9 == 1 && dword_100127558 <= 3)
    {
      v29 = *__error();
      v30 = [processesCopy description];
      v31 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"No one's sampling when requested to adjust sampling target to %@ %d", v30, threadsCopy);

      if (v31)
      {
        v34 = CFStringGetCStringPtr(v31, 0x8000100u);
        if (v34)
        {
          v35 = 0;
        }

        else
        {
          v34 = malloc_type_calloc(0x400uLL, 1uLL, 0x6B13FDCCuLL);
          CFStringGetCString(v31, v34, 1024, 0x8000100u);
          v35 = v34;
        }

        if (qword_100127ED0)
        {
          v49 = qword_100127ED0;
        }

        else
        {
          v49 = __stderrp;
        }

        fprintf(v49, "%s\n", v34);
        if (v35)
        {
          free(v35);
        }

        CFRelease(v31);
      }

      else
      {
        v46 = sub_10003E080(v32, v33);
        if (os_log_type_enabled(v46, OS_LOG_TYPE_FAULT))
        {
          v47 = [processesCopy description];
          sub_1000C43EC(v47, v73, threadsCopy, v46);
        }

        if (qword_100127ED0)
        {
          v48 = qword_100127ED0;
        }

        else
        {
          v48 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v48);
      }

      v50 = __error();
      goto LABEL_101;
    }
  }

LABEL_111:
  objc_sync_exit(selfCopy);
}

- (BOOL)startWithSamplingIntervalUs:(unsigned int)us andOccasionalDataIntervalSec:(unsigned int)sec andOnlySampleProcesses:(id)processes andOnlySampleMainThreads:(BOOL)threads andOmitSensitiveStrings:(BOOL)strings
{
  stringsCopy = strings;
  threadsCopy = threads;
  v9 = *&sec;
  v10 = *&us;
  processesCopy = processes;
  if (v10)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    numClientsSampling = selfCopy->_numClientsSampling;
    if (numClientsSampling)
    {
      if (selfCopy->_samplingIntervalUs != v10 || v9 && (v15 = selfCopy->_occasionalDataIntervalSec) != 0 && v15 != v9)
      {
        if (byte_100127EC8 == 1)
        {
          v16 = __error();
          v17 = *v16;
          v19 = sub_10003E080(v16, v18);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            samplingIntervalUs = selfCopy->_samplingIntervalUs;
            occasionalDataIntervalSec = selfCopy->_occasionalDataIntervalSec;
            *buf = 67109888;
            *v152 = samplingIntervalUs;
            *&v152[4] = 1024;
            *&v152[6] = occasionalDataIntervalSec;
            v153 = 1024;
            LODWORD(v154[0]) = v10;
            WORD2(v154[0]) = 1024;
            *(v154 + 6) = v9;
            _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Already sampling with %uus-interval stackshots and %uus-interval occasional data, so can't start sampling with %uus-interval stackshots and %us-interval occasional data", buf, 0x1Au);
          }

          *__error() = v17;
        }

        if (byte_100127EC9 != 1 || dword_100127558 > 3)
        {
LABEL_29:
          v27 = 0;
LABEL_209:
          objc_sync_exit(selfCopy);

          goto LABEL_210;
        }

        v21 = *__error();
        v22 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Already sampling with %uus-interval stackshots and %uus-interval occasional data, so can't start sampling with %uus-interval stackshots and %us-interval occasional data", selfCopy->_samplingIntervalUs, selfCopy->_occasionalDataIntervalSec, v10, v9);
        v24 = v22;
        if (v22)
        {
          CStringPtr = CFStringGetCStringPtr(v22, 0x8000100u);
          if (CStringPtr)
          {
            v26 = 0;
          }

          else
          {
            CStringPtr = malloc_type_calloc(0x400uLL, 1uLL, 0xBECB560AuLL);
            CFStringGetCString(v24, CStringPtr, 1024, 0x8000100u);
            v26 = CStringPtr;
          }

          if (qword_100127ED0)
          {
            v85 = qword_100127ED0;
          }

          else
          {
            v85 = __stderrp;
          }

          fprintf(v85, "%s\n", CStringPtr);
          if (v26)
          {
            free(v26);
          }

          CFRelease(v24);
        }

        else
        {
          v64 = sub_10003E080(0, v23);
          if (os_log_type_enabled(v64, OS_LOG_TYPE_FAULT))
          {
            v142 = selfCopy->_samplingIntervalUs;
            v143 = selfCopy->_occasionalDataIntervalSec;
            *buf = 67109888;
            *v152 = v142;
            *&v152[4] = 1024;
            *&v152[6] = v143;
            v153 = 1024;
            LODWORD(v154[0]) = v10;
            WORD2(v154[0]) = 1024;
            *(v154 + 6) = v9;
            _os_log_fault_impl(&_mh_execute_header, v64, OS_LOG_TYPE_FAULT, "Unable to format: Already sampling with %uus-interval stackshots and %uus-interval occasional data, so can't start sampling with %uus-interval stackshots and %us-interval occasional data", buf, 0x1Au);
          }

          if (qword_100127ED0)
          {
            v65 = qword_100127ED0;
          }

          else
          {
            v65 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v65);
        }

        v86 = __error();
LABEL_208:
        v27 = 0;
        *v86 = v21;
        goto LABEL_209;
      }

      if (!stringsCopy || selfCopy->_omitSensitiveStrings)
      {
        selfCopy->_numClientsSampling = numClientsSampling + 1;
        if (byte_100127EC8 == 1)
        {
          v33 = __error();
          v34 = *v33;
          v36 = sub_10003E080(v33, v35);
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
          {
            sub_1000C44C4();
          }

          *__error() = v34;
        }

        if (byte_100127EC9 == 1 && dword_100127558 <= 0)
        {
          v38 = *__error();
          v39 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Already sampling with %uus-interval stackshots and %us-interval occasional data", selfCopy->_samplingIntervalUs, selfCopy->_occasionalDataIntervalSec);
          v41 = v39;
          if (v39)
          {
            v42 = CFStringGetCStringPtr(v39, 0x8000100u);
            if (v42)
            {
              v43 = 0;
            }

            else
            {
              v42 = malloc_type_calloc(0x400uLL, 1uLL, 0xC7A73A72uLL);
              CFStringGetCString(v41, v42, 1024, 0x8000100u);
              v43 = v42;
            }

            if (qword_100127ED0)
            {
              v94 = qword_100127ED0;
            }

            else
            {
              v94 = __stderrp;
            }

            fprintf(v94, "%s\n", v42);
            if (v43)
            {
              free(v43);
            }

            CFRelease(v41);
          }

          else
          {
            v89 = sub_10003E080(0, v40);
            if (os_log_type_enabled(v89, OS_LOG_TYPE_FAULT))
            {
              sub_1000C4550();
            }

            if (qword_100127ED0)
            {
              v90 = qword_100127ED0;
            }

            else
            {
              v90 = __stderrp;
            }

            fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v90);
          }

          *__error() = v38;
        }

        [(SPStackshotProvider *)selfCopy sampleProcesses:processesCopy onlyMainThreads:threadsCopy];
        p_occasionalDataIntervalSec = &selfCopy->_occasionalDataIntervalSec;
        if (!selfCopy->_occasionalDataIntervalSec)
        {
          *p_occasionalDataIntervalSec = v9;
          if (byte_100127EC8 == 1)
          {
            v96 = __error();
            v97 = *v96;
            v99 = sub_10003E080(v96, v98);
            if (os_log_type_enabled(v99, OS_LOG_TYPE_INFO))
            {
              v100 = *p_occasionalDataIntervalSec;
              *buf = 67109120;
              *v152 = v100;
              _os_log_impl(&_mh_execute_header, v99, OS_LOG_TYPE_INFO, "Turned on occasional data gathering at %us-intervals for additional client", buf, 8u);
            }

            *__error() = v97;
          }

          if (byte_100127EC9 == 1 && dword_100127558 <= 1)
          {
            v101 = *__error();
            v102 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Turned on occasional data gathering at %us-intervals for additional client", *p_occasionalDataIntervalSec);
            v104 = v102;
            if (v102)
            {
              v105 = CFStringGetCStringPtr(v102, 0x8000100u);
              if (v105)
              {
                v106 = 0;
              }

              else
              {
                v105 = malloc_type_calloc(0x400uLL, 1uLL, 0x4CF668D2uLL);
                CFStringGetCString(v104, v105, 1024, 0x8000100u);
                v106 = v105;
              }

              if (qword_100127ED0)
              {
                v132 = qword_100127ED0;
              }

              else
              {
                v132 = __stderrp;
              }

              fprintf(v132, "%s\n", v105);
              if (v106)
              {
                free(v106);
              }

              CFRelease(v104);
            }

            else
            {
              v112 = sub_10003E080(0, v103);
              if (os_log_type_enabled(v112, OS_LOG_TYPE_FAULT))
              {
                sub_1000C45DC();
              }

              if (qword_100127ED0)
              {
                v113 = qword_100127ED0;
              }

              else
              {
                v113 = __stderrp;
              }

              fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v113);
            }

            *__error() = v101;
          }
        }

        SAMachAbsTimeSecondsGetCurrent();
        if (v9)
        {
          v134 = v133;
          v135 = dispatch_get_global_queue(25, 0);
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_1000960E8;
          block[3] = &unk_100114EC0;
          block[5] = v134;
          block[4] = selfCopy;
          dispatch_async(v135, block);
        }

LABEL_199:
        v27 = 1;
        goto LABEL_209;
      }

      if (byte_100127EC8 == 1)
      {
        v77 = __error();
        v78 = *v77;
        v80 = sub_10003E080(v77, v79);
        if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
        {
          sub_1000C4454();
        }

        *__error() = v78;
      }

      v27 = 0;
      if (byte_100127EC9 != 1 || dword_100127558 > 3)
      {
        goto LABEL_209;
      }

      v21 = *__error();
      v81 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Already sampling with sensitive strings, so can't start monitoring since we don't want sensitive strings");
      v61 = v81;
      if (v81)
      {
        v83 = CFStringGetCStringPtr(v81, 0x8000100u);
        if (v83)
        {
          v84 = 0;
        }

        else
        {
          v83 = malloc_type_calloc(0x400uLL, 1uLL, 0x6751AC59uLL);
          CFStringGetCString(v61, v83, 1024, 0x8000100u);
          v84 = v83;
        }

        if (qword_100127ED0)
        {
          v136 = qword_100127ED0;
        }

        else
        {
          v136 = __stderrp;
        }

        fprintf(v136, "%s\n", v83);
        if (v84)
        {
          free(v84);
        }

LABEL_206:
        CFRelease(v61);
        goto LABEL_207;
      }

      v114 = sub_10003E080(0, v82);
      if (os_log_type_enabled(v114, OS_LOG_TYPE_FAULT))
      {
        sub_1000C4490();
      }

      if (qword_100127ED0)
      {
        v88 = qword_100127ED0;
      }

      else
      {
        v88 = __stderrp;
      }
    }

    else
    {
      if (!selfCopy->_hasSampled)
      {
        dispatch_group_enter(selfCopy->_samplingGroup);
        selfCopy->_hasSampled = 1;
        ++selfCopy->_numClientsSampling;
        selfCopy->_samplingIntervalUs = v10;
        selfCopy->_occasionalDataIntervalSec = v9;
        selfCopy->_previousTimeOccasionalDataWasGathered = 0.0;
        selfCopy->_omitSensitiveStrings = stringsCopy;
        [(SASampleStore *)selfCopy->_sampleStore setOmitSensitiveStrings:stringsCopy];
        dispatch_semaphore_wait(selfCopy->_pidsSem, 0xFFFFFFFFFFFFFFFFLL);
        selfCopy->_sampleOnlyPidsHasUpdate = 1;
        if (processesCopy)
        {
          v44 = [processesCopy mutableCopy];
          sampleOnlyPids = selfCopy->_sampleOnlyPids;
          selfCopy->_sampleOnlyPids = v44;

          if (byte_100127EC8 == 1)
          {
            v46 = __error();
            v47 = *v46;
            v49 = sub_10003E080(v46, v48);
            if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
            {
              v50 = [processesCopy description];
              *buf = 136315138;
              *v152 = [v50 UTF8String];
              _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_INFO, "Sampling only %s", buf, 0xCu);
            }

            *__error() = v47;
          }

          if (byte_100127EC9 == 1 && dword_100127558 <= 1)
          {
            v51 = *__error();
            v52 = [processesCopy description];
            v53 = v52;
            v54 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Sampling only %s", [v52 UTF8String]);

            if (v54)
            {
              v57 = CFStringGetCStringPtr(v54, 0x8000100u);
              if (v57)
              {
                v58 = 0;
              }

              else
              {
                v57 = malloc_type_calloc(0x400uLL, 1uLL, 0x6B6052F8uLL);
                CFStringGetCString(v54, v57, 1024, 0x8000100u);
                v58 = v57;
              }

              if (qword_100127ED0)
              {
                v107 = qword_100127ED0;
              }

              else
              {
                v107 = __stderrp;
              }

              fprintf(v107, "%s\n", v57);
              if (v58)
              {
                free(v58);
              }

              CFRelease(v54);
            }

            else
            {
              v92 = sub_10003E080(v55, v56);
              if (os_log_type_enabled(v92, OS_LOG_TYPE_FAULT))
              {
                v147 = [processesCopy description];
                v148 = v147;
                uTF8String = [v147 UTF8String];
                *buf = 136315138;
                *v152 = uTF8String;
                _os_log_fault_impl(&_mh_execute_header, v92, OS_LOG_TYPE_FAULT, "Unable to format: Sampling only %s", buf, 0xCu);
              }

              if (qword_100127ED0)
              {
                v93 = qword_100127ED0;
              }

              else
              {
                v93 = __stderrp;
              }

              fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v93);
            }

            *__error() = v51;
          }
        }

        else
        {
          v66 = selfCopy->_sampleOnlyPids;
          selfCopy->_sampleOnlyPids = 0;

          if (byte_100127EC8 == 1)
          {
            v67 = __error();
            v68 = *v67;
            v70 = sub_10003E080(v67, v69);
            if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
            {
              sub_1000C4650();
            }

            *__error() = v68;
          }

          threadsCopy = 0;
          if (byte_100127EC9 == 1 && dword_100127558 <= 0)
          {
            v71 = *__error();
            v72 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Sampling everything");
            v74 = v72;
            if (v72)
            {
              v75 = CFStringGetCStringPtr(v72, 0x8000100u);
              if (v75)
              {
                v76 = 0;
              }

              else
              {
                v75 = malloc_type_calloc(0x400uLL, 1uLL, 0xAEAD2E88uLL);
                CFStringGetCString(v74, v75, 1024, 0x8000100u);
                v76 = v75;
              }

              if (qword_100127ED0)
              {
                v115 = qword_100127ED0;
              }

              else
              {
                v115 = __stderrp;
              }

              fprintf(v115, "%s\n", v75);
              if (v76)
              {
                free(v76);
              }

              CFRelease(v74);
            }

            else
            {
              v108 = sub_10003E080(0, v73);
              if (os_log_type_enabled(v108, OS_LOG_TYPE_FAULT))
              {
                sub_1000C4684();
              }

              if (qword_100127ED0)
              {
                v109 = qword_100127ED0;
              }

              else
              {
                v109 = __stderrp;
              }

              fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v109);
            }

            threadsCopy = 0;
            *__error() = v71;
          }
        }

        [(SASampleStore *)selfCopy->_sampleStore setSampleOnlyMainThreads:threadsCopy];
        dispatch_semaphore_signal(selfCopy->_pidsSem);
        [(SPStackshotProvider *)selfCopy startSamplingThread];
        if (byte_100127EC8 == 1)
        {
          v116 = __error();
          v117 = *v116;
          v119 = sub_10003E080(v116, v118);
          if (os_log_type_enabled(v119, OS_LOG_TYPE_DEBUG))
          {
            v139 = selfCopy->_samplingIntervalUs;
            v138 = selfCopy->_occasionalDataIntervalSec;
            sampleOnlyMainThreads = [(SASampleStore *)selfCopy->_sampleStore sampleOnlyMainThreads];
            v141 = "";
            *buf = 67109634;
            *v152 = v139;
            if (sampleOnlyMainThreads)
            {
              v141 = ", sampling only main threads";
            }

            *&v152[4] = 1024;
            *&v152[6] = v138;
            v153 = 2080;
            v154[0] = v141;
            _os_log_debug_impl(&_mh_execute_header, v119, OS_LOG_TYPE_DEBUG, "Started sampling with %uus-interval stackshots and %us-interval occasional data%s", buf, 0x18u);
          }

          *__error() = v117;
        }

        v27 = 1;
        if (byte_100127EC9 != 1 || dword_100127558 > 0)
        {
          goto LABEL_209;
        }

        v120 = *__error();
        v121 = selfCopy->_samplingIntervalUs;
        v122 = selfCopy->_occasionalDataIntervalSec;
        if ([(SASampleStore *)selfCopy->_sampleStore sampleOnlyMainThreads])
        {
          v123 = ", sampling only main threads";
        }

        else
        {
          v123 = "";
        }

        v124 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Started sampling with %uus-interval stackshots and %us-interval occasional data%s", v121, v122, v123);
        v126 = v124;
        if (v124)
        {
          v127 = CFStringGetCStringPtr(v124, 0x8000100u);
          if (v127)
          {
            v128 = 0;
          }

          else
          {
            v127 = malloc_type_calloc(0x400uLL, 1uLL, 0x13382720uLL);
            CFStringGetCString(v126, v127, 1024, 0x8000100u);
            v128 = v127;
          }

          if (qword_100127ED0)
          {
            v131 = qword_100127ED0;
          }

          else
          {
            v131 = __stderrp;
          }

          fprintf(v131, "%s\n", v127);
          if (v128)
          {
            free(v128);
          }

          CFRelease(v126);
        }

        else
        {
          v129 = sub_10003E080(0, v125);
          if (os_log_type_enabled(v129, OS_LOG_TYPE_FAULT))
          {
            v145 = selfCopy->_samplingIntervalUs;
            v144 = selfCopy->_occasionalDataIntervalSec;
            if ([(SASampleStore *)selfCopy->_sampleStore sampleOnlyMainThreads])
            {
              v146 = ", sampling only main threads";
            }

            else
            {
              v146 = "";
            }

            *buf = 67109634;
            *v152 = v145;
            *&v152[4] = 1024;
            *&v152[6] = v144;
            v153 = 2080;
            v154[0] = v146;
            _os_log_fault_impl(&_mh_execute_header, v129, OS_LOG_TYPE_FAULT, "Unable to format: Started sampling with %uus-interval stackshots and %us-interval occasional data%s", buf, 0x18u);
          }

          if (qword_100127ED0)
          {
            v130 = qword_100127ED0;
          }

          else
          {
            v130 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v130);
        }

        *__error() = v120;
        goto LABEL_199;
      }

      if (byte_100127EC8 == 1)
      {
        v28 = __error();
        v29 = *v28;
        v31 = sub_10003E080(v28, v30);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          sub_1000C46B8();
        }

        *__error() = v29;
      }

      if (byte_100127EC9 != 1 || dword_100127558 > 3)
      {
        goto LABEL_29;
      }

      v21 = *__error();
      v59 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Caught a sampling provider that isn't sampling, but has already sampled");
      v61 = v59;
      if (v59)
      {
        v62 = CFStringGetCStringPtr(v59, 0x8000100u);
        if (v62)
        {
          v63 = 0;
        }

        else
        {
          v62 = malloc_type_calloc(0x400uLL, 1uLL, 0xE36DE49FuLL);
          CFStringGetCString(v61, v62, 1024, 0x8000100u);
          v63 = v62;
        }

        if (qword_100127ED0)
        {
          v91 = qword_100127ED0;
        }

        else
        {
          v91 = __stderrp;
        }

        fprintf(v91, "%s\n", v62);
        if (v63)
        {
          free(v63);
        }

        goto LABEL_206;
      }

      v87 = sub_10003E080(0, v60);
      if (os_log_type_enabled(v87, OS_LOG_TYPE_FAULT))
      {
        sub_1000C46F4();
      }

      if (qword_100127ED0)
      {
        v88 = qword_100127ED0;
      }

      else
      {
        v88 = __stderrp;
      }
    }

    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v88);
LABEL_207:
    v86 = __error();
    goto LABEL_208;
  }

  v27 = 0;
LABEL_210:

  return v27;
}

- (void)stopAndWaitForAllSamplingToComplete:(BOOL)complete withCompletionCallbackOnQueue:(id)queue withBlock:(id)block
{
  queueCopy = queue;
  blockCopy = block;
  v10 = +[SPStackshotProvider sharedInstanceLock];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100096440;
  block[3] = &unk_100115850;
  block[4] = self;
  dispatch_sync(v10, block);

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_numClientsSampling)
  {
    v12 = +[SATimestamp timestamp];
    v13 = *&selfCopy->_numSamples;
    v14 = selfCopy->_numClientsSampling - 1;
    selfCopy->_numClientsSampling = v14;
    if (!v14)
    {
      [(SPStackshotProvider *)selfCopy stopSamplingThread];
      dispatch_group_leave(selfCopy->_samplingGroup);
      dispatch_semaphore_wait(selfCopy->_pidsSem, 0xFFFFFFFFFFFFFFFFLL);
      selfCopy->_sampleOnlyPidsHasUpdate = 1;
      sampleOnlyPids = selfCopy->_sampleOnlyPids;
      selfCopy->_sampleOnlyPids = 0;

      dispatch_semaphore_signal(selfCopy->_pidsSem);
    }

    v16 = dispatch_get_global_queue(25, 0);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100096740;
    v18[3] = &unk_100115E38;
    v19 = v12;
    v20 = selfCopy;
    v21 = queueCopy;
    v22 = blockCopy;
    v23 = v13;
    completeCopy = complete;
    v17 = v12;
    dispatch_async(v16, v18);

    goto LABEL_8;
  }

  if (queueCopy && blockCopy)
  {
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_10009672C;
    v25[3] = &unk_100115D28;
    v26 = blockCopy;
    dispatch_async(queueCopy, v25);
    v17 = v26;
LABEL_8:
  }

  objc_sync_exit(selfCopy);
}

- (void)performSampleStoreWork:(id)work
{
  workCopy = work;
  storeReportingQueue = self->_storeReportingQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100096A10;
  v7[3] = &unk_1001159C8;
  v7[4] = self;
  v8 = workCopy;
  v6 = workCopy;
  dispatch_sync(storeReportingQueue, v7);
}

- (void)gatherLoadInfoForPid:(int)pid
{
  stackshotParsingQueue = self->_stackshotParsingQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100096AA0;
  v4[3] = &unk_100115B28;
  v4[4] = self;
  pidCopy = pid;
  dispatch_async(stackshotParsingQueue, v4);
}

@end