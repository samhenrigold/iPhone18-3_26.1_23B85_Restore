@interface TryReconnect
@end

@implementation TryReconnect

void __fbf_TryReconnect_block_invoke(uint64_t a1, int a2, NSObject *a3)
{
  if (a2 == 5)
  {
    if (*(a1 + 32))
    {
      v3 = *(a1 + 32);

      CFRelease(v3);
    }
  }

  else
  {
    FigRetainProxyLockMutex();
    if (!FigRetainProxyIsInvalidated())
    {
      FigRetainProxyGetOwner();
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      if (*(DerivedStorage + 488))
      {
        v14 = DerivedStorage;
        if (a2 == 4)
        {
          if (a3)
          {
            v15 = nw_error_copy_cf_error(a3);
            error_domain = nw_error_get_error_domain(a3);
            error_code = nw_error_get_error_code(a3);
            if (error_domain - 1 > 2)
            {
              v18 = kCoreMediaErrorDomain;
            }

            else
            {
              v18 = qword_1E74833D8[error_domain - 1];
            }

            CFError = FigCreateCFError(*v18, error_code, @"Reconnect failure", 0, 0, *(v14 + 168), v15);
            if (v15)
            {
              CFRelease(v15);
            }
          }

          else
          {
            CFError = FigCreateCFError(@"CoreMediaErrorDomain", -12935, @"Reconnect failure", 0, 0, *(DerivedStorage + 168), 0);
          }

          fbf_CancelReconnect(v14);
          ++*(v14 + 496);
          if (CFError)
          {
            fbf_ReleaseAndRetainLastErrorFromCFError(v14, CFError);
          }

          if (*(v14 + 520) <= FigGetUpTimeNanoseconds())
          {
            *(v14 + 512) = 0;
            fbf_postConnectionToHostLostNotification(v14);
          }

          else
          {
            *(v14 + 512) = FigGetUpTimeNanoseconds() + 30000000000;
            FigHTTPRescheduleTimer(30.0, *(v14 + 48), *(v14 + 456));
          }
        }

        else if (a2 == 3)
        {
          *(DerivedStorage + 17) = 0;
          fbf_CancelReconnect(DerivedStorage);
          if (FigByteFlumePostHostAvailableNotification(v14))
          {
            fbf_ReportingAgentResetErrorStats(v14);
          }
        }
      }

      else
      {
        __fbf_TryReconnect_block_invoke_cold_1(DerivedStorage, v7, v8, v9, v10, v11, v12, v13, v20, v21, SHIDWORD(v21), v22);
      }
    }

    FigRetainProxyUnlockMutex();
  }
}

@end