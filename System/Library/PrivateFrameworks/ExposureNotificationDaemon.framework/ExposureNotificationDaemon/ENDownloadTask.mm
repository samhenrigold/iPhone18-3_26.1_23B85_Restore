@interface ENDownloadTask
+ (id)taskWithEndpointState:(id)state date:(id)date group:(id)group scheduler:(id)scheduler;
- (BOOL)shouldDefer;
- (void)finishDeferred:(BOOL)deferred error:(id)error;
@end

@implementation ENDownloadTask

+ (id)taskWithEndpointState:(id)state date:(id)date group:(id)group scheduler:(id)scheduler
{
  stateCopy = state;
  dateCopy = date;
  groupCopy = group;
  schedulerCopy = scheduler;
  v15 = objc_alloc_init(self);
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(v15 + 4, state);
    v17 = [dateCopy copy];
    v18 = v16[5];
    v16[5] = v17;

    objc_storeStrong(v16 + 1, group);
    objc_storeStrong(v16 + 2, scheduler);
  }

  return v16;
}

- (BOOL)shouldDefer
{
  scheduler = self->_scheduler;
  if (scheduler)
  {
    LOBYTE(scheduler) = [(NSBackgroundActivityScheduler *)scheduler shouldDefer];
  }

  return scheduler;
}

- (void)finishDeferred:(BOOL)deferred error:(id)error
{
  deferredCopy = deferred;
  errorCopy = error;
  if (!self->_finished)
  {
    v12 = errorCopy;
    [(NSDate *)self->_date timeIntervalSinceNow];
    v8 = -v7;
    if (v12)
    {
      if (gLogCategory_ENDownloadManager > 90 || gLogCategory_ENDownloadManager == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_14;
      }

      [(ENDownloadTask *)self finishDeferred:v12 error:&v13, v8];
      v9 = v13;
    }

    else
    {
      if (gLogCategory_ENDownloadManager > 50 || gLogCategory_ENDownloadManager == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_14;
      }

      shortIdentifier = [(ENDownloadTask *)self shortIdentifier];
      v9 = shortIdentifier;
      v11 = "";
      if (deferredCopy)
      {
        v11 = " deferred";
      }

      LogPrintF_safe(&gLogCategory_ENDownloadManager, "[ENDownloadTask finishDeferred:error:]", 50, "Finished download task for endpoint %@%s with count %lu after %.2lf s", shortIdentifier, v11, self->_downloadCount, *&v8);
    }

LABEL_14:
    self->_finished = 1;
    self->_didDefer = deferredCopy;
    dispatch_group_leave(self->_group);
    errorCopy = v12;
  }
}

- (void)finishDeferred:(uint64_t *)a3 error:(double)a4 .cold.1(void *a1, uint64_t a2, uint64_t *a3, double a4)
{
  v7 = [a1 shortIdentifier];
  *a3 = v7;
  v8 = a1[6];
  v9 = CUPrintNSError();
  LogPrintF_safe(&gLogCategory_ENDownloadManager, "[ENDownloadTask finishDeferred:error:]", 90, "Finished download task for endpoint %@ with count %lu after %.2lf s: %@", v7, v8, *&a4, v9);
}

@end