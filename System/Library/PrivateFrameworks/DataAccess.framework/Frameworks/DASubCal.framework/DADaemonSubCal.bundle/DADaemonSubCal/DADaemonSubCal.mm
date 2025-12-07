void sub_20DC(uint64_t a1, int *a2, int a3)
{
  v6 = DALoggingwithCategory();
  v7 = _CPLog_to_os_log_type[6];
  v8 = os_log_type_enabled(v6, v7);
  if (a3)
  {
    if (v8)
    {
      v9 = objc_opt_class();
      v10 = *(a1 + 32);
      v11 = v9;
      v12 = [v10 subscriptionURL];
      v28 = 138412802;
      v29 = v9;
      v30 = 2112;
      v31 = v12;
      v32 = 2048;
      v33 = a2;
      _os_log_impl(&dword_0, v6, v7, "%@ (%@) got my lock for dataclasses 0x%lx", &v28, 0x20u);
    }

    [*(a1 + 32) setWaitingForGateKeeper:0];
    [*(a1 + 32) setHoldingGateKeeperLock:1];
    if (a2 == &dword_4)
    {
      if (![*(a1 + 32) finished])
      {
        [*(a1 + 32) _lockedPrepareToPerformBlock:*(a1 + 48)];
        return;
      }

      v13 = DALoggingwithCategory();
      v14 = _CPLog_to_os_log_type[4];
      if (os_log_type_enabled(v13, v14))
      {
        v15 = *(a1 + 32);
        v28 = 138412290;
        v29 = v15;
        _os_log_impl(&dword_0, v13, v14, "%@ Aborting processing subcal data because this task is already finished", &v28, 0xCu);
      }

      v16 = [NSError errorWithDomain:DAErrorDomain code:-1 userInfo:0];
    }

    else
    {
      v23 = DALoggingwithCategory();
      v24 = _CPLog_to_os_log_type[3];
      if (os_log_type_enabled(v23, v24))
      {
        v28 = 134217984;
        v29 = a2;
        _os_log_impl(&dword_0, v23, v24, "Got lock for %ld something other than events?!", &v28, 0xCu);
      }

      v16 = 0;
      v14 = _CPLog_to_os_log_type[4];
    }

    v25 = DALoggingwithCategory();
    if (os_log_type_enabled(v25, v14))
    {
      LOWORD(v28) = 0;
      _os_log_impl(&dword_0, v25, v14, "Relinquishing locks now", &v28, 2u);
    }

    [*(a1 + 32) setHoldingGateKeeperLock:0];
    v26 = +[DABabysitter sharedBabysitter];
    [v26 unregisterAccount:*(a1 + 32) forOperationWithName:@"SubCalRefresh"];

    v27 = +[DALocalDBGateKeeper sharedGateKeeper];
    [v27 relinquishLocksForWaiter:*(a1 + 32) dataclasses:a2 moreComing:0];

    if (!v16)
    {
      v16 = [NSError errorWithDomain:DAErrorDomain code:10 userInfo:0];
    }

    [*(a1 + 32) finishWithError:v16];
  }

  else
  {
    if (v8)
    {
      v28 = 138412546;
      v29 = objc_opt_class();
      v30 = 2048;
      v31 = a2;
      v17 = v29;
      _os_log_impl(&dword_0, v6, v7, "%@ aborted locks for dataclasses 0x%lx", &v28, 0x16u);
    }

    [*(a1 + 32) setWaitingForGateKeeper:0];
    v18 = *(a1 + 32);
    v19 = kSubCalRefreshTaskErrorDomain;
    v20 = NSStringFromSubCalRefreshTaskError();
    v21 = [NSDictionary dictionaryWithObject:v20 forKey:@"Error Code"];
    v22 = [NSError errorWithDomain:v19 code:2 userInfo:v21];
    [v18 finishWithError:v22];
  }
}

void sub_2688(uint64_t a1)
{
  [*(a1 + 32) _makeBackgroundActor];
  v2 = [*(a1 + 32) backgroundActor];
  [v2 processICSDataAtPath:*(a1 + 40) removeFileWhenDone:1];
}

void sub_2CCC(uint64_t a1)
{
  v2 = [*(a1 + 32) changeTrackingId];
  v3 = [SubCalLocalDBHelper eventStoreWithClientId:v2];

  v4 = [*(a1 + 32) sourceExternalId];
  v5 = [v3 sourceWithExternalID:v4];

  v6 = [*(a1 + 32) calendarExternalId];
  v7 = [v5 calendarWithExternalIdentifier:v6];

  if (v7)
  {
    v8 = +[NSDate date];
    [v7 setRefreshDate:v8];

    v15 = 0;
    v9 = [v3 saveCalendar:v7 commit:1 error:&v15];
    v10 = v15;
    if ((v9 & 1) == 0)
    {
      v11 = DALoggingwithCategory();
      v12 = _CPLog_to_os_log_type[4];
      if (os_log_type_enabled(v11, v12))
      {
        *buf = 138412290;
        v17 = v10;
        _os_log_impl(&dword_0, v11, v12, "Failed to save refresh date for calendar: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v10 = DALoggingwithCategory();
    v13 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v10, v13))
    {
      v14 = [*(a1 + 32) accountId];
      *buf = 138543362;
      v17 = v14;
      _os_log_impl(&dword_0, v10, v13, "Couldn't find calendar for account %{public}@ to save refresh date", buf, 0xCu);
    }
  }

  [*(a1 + 32) _finishWithErrorAfterLoadingURL:0];
}

void sub_3300(uint64_t a1)
{
  [*(a1 + 32) _syncStarted];
  v2 = [*(a1 + 32) tmpICSData];

  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [v3 tmpICSData];
    [v3 _updateSubscribedCalendarWithTmpICSData:v4];
  }

  else
  {

    [v3 _dropGateKeeperAndUpdateSubscribedCalendarWithDataFromNetwork];
  }
}

void sub_487C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_489C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_5EB4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = 0;
    v4 = 0;
  }

  else
  {
    v6 = [*(a1 + 32) username];
    v5 = [*(a1 + 32) password];
    v3 = v6;
    v4 = v5;
  }

  v7 = v3;
  (*(*(a1 + 40) + 16))();
}

void sub_61F0(id *a1)
{
  v4 = a1[4];
  if ([a1[5] shouldCancel])
  {
    v2 = [NSError errorWithDomain:DAErrorDomain code:-1 userInfo:0];

    v3 = v2;
  }

  else
  {
    v3 = v4;
  }

  v5 = v3;
  [a1[6] subCalICSDataActor:a1[5] completedWithError:v3];
}

void sub_8814(uint64_t a1)
{
  v2 = [*(a1 + 32) _internalProcessICSData:*(a1 + 40)];
  [*(a1 + 32) _sendResultToCallbackActor:v2];
}

void sub_892C(uint64_t a1)
{
  v2 = DALoggingwithCategory();
  v3 = _CPLog_to_os_log_type[7];
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(a1 + 32);
    *buf = 138412290;
    v18 = v4;
    _os_log_impl(&dword_0, v2, v3, "Processing mmapped file %@", buf, 0xCu);
  }

  v5 = [[NSData alloc] initWithContentsOfMappedFile:*(a1 + 32)];
  if (v5)
  {
    v6 = [*(a1 + 40) _internalProcessICSData:v5];
  }

  else
  {
    v7 = kSubCalICSDataActorErrorDomain;
    v8 = NSStringFromSubCalRefreshTaskError();
    v9 = [NSDictionary dictionaryWithObject:v8 forKey:v7];
    v6 = [NSError errorWithDomain:v7 code:6 userInfo:v9];
  }

  if (*(a1 + 48) == 1)
  {
    v10 = +[NSFileManager defaultManager];
    v11 = *(a1 + 32);
    v16 = 0;
    [v10 removeItemAtPath:v11 error:&v16];
    v12 = v16;

    if (v12)
    {
      v13 = DALoggingwithCategory();
      v14 = _CPLog_to_os_log_type[3];
      if (os_log_type_enabled(v13, v14))
      {
        v15 = *(a1 + 32);
        *buf = 138412290;
        v18 = v15;
        _os_log_impl(&dword_0, v13, v14, "Error cleaning up file at %@", buf, 0xCu);
      }
    }
  }

  [*(a1 + 40) _sendResultToCallbackActor:v6];
}

void sub_8BB0(id a1)
{
  v1 = DALoggingwithCategory();
  v2 = _CPLog_to_os_log_type[7];
  if (os_log_type_enabled(v1, v2))
  {
    *v3 = 0;
    _os_log_impl(&dword_0, v1, v2, "Actor queue is clear", v3, 2u);
  }
}

void sub_8DFC(id a1)
{
  qword_23338 = objc_opt_new();

  _objc_release_x1();
}

void sub_9A80(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    if ((a2 & 4) != 0)
    {
      [*(a1 + 32) _createCalendar];
    }

    else
    {
      v5 = DALoggingwithCategory();
      v6 = _CPLog_to_os_log_type[3];
      if (os_log_type_enabled(v5, v6))
      {
        v9 = 134217984;
        v10 = a2;
        _os_log_impl(&dword_0, v5, v6, "Why was SubCalWebcalHandler given locks for 0x%lx ?", &v9, 0xCu);
      }

      [*(a1 + 32) _tellConsumerWereFinished];
    }

    v8 = +[DALocalDBGateKeeper sharedGateKeeper];
    [v8 relinquishLocksForWaiter:*(a1 + 32) dataclasses:a2 moreComing:0];
  }

  else
  {
    v7 = *(a1 + 32);

    [v7 _tellConsumerWereFinished];
  }
}

void sub_A93C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_A968(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_A980(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_B7B8(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    [*(a1 + 32) _reallyRemoveHolidaySubscribedCalendar];
    v7 = +[DALocalDBGateKeeper sharedGateKeeper];
    [v7 relinquishLocksForWaiter:*(a1 + 32) dataclasses:a2 moreComing:0];
  }

  else
  {
    v5 = DALoggingwithCategory();
    v6 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v5, v6))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v5, v6, "Couldn't get a gatekeeper lock in order to remove the holiday subscribed calendar.", buf, 2u);
    }
  }
}

id sub_C15C(uint64_t a1)
{
  v2.receiver = *(a1 + 32);
  v2.super_class = HolidayCalDaemonAccount;
  return objc_msgSendSuper2(&v2, "_refresh:", 0);
}

void sub_C418(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, id a17)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a17);
  _Unwind_Resume(a1);
}

void sub_C450(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained error];

  if (v4)
  {
    v5 = DALoggingwithCategory();
    v6 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v5, v6))
    {
      v7 = objc_loadWeakRetained((a1 + 32));
      v8 = [v7 error];
      v9 = 138412290;
      v10 = v8;
      _os_log_impl(&dword_0, v5, v6, "Error fetching subscribed holiday calendars. Giving up for now. %@", &v9, 0xCu);
    }
  }

  else
  {
    v5 = [WeakRetained urlsToResults];
    [v3 _handleCalendarSearchResults:v5];
  }

  [v3 setSearchTask:0];
}

void sub_C94C(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    [*(a1 + 32) _reallyRefresh:*(a1 + 48)];
    v7 = +[DALocalDBGateKeeper sharedGateKeeper];
    [v7 relinquishLocksForWaiter:*(a1 + 32) dataclasses:a2 moreComing:0];
  }

  else
  {
    v5 = DALoggingwithCategory();
    v6 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v5, v6))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v5, v6, "Couldn't get a gatekeeper lock in order to refresh the holiday subscribed calendar.", buf, 2u);
    }
  }
}

void sub_CFA4(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v5 = [*(a1 + 32) changeTrackingID];
    v6 = [SubCalLocalDBHelper eventStoreWithClientId:v5];

    v7 = [*(a1 + 32) _holidayCalendarInEventStore:v6];
    if (v7)
    {
      v8 = +[NSDate date];
      [*(a1 + 32) _setLastRefreshDate:v8 inCalendar:v7];
      [*(a1 + 32) _setCurrentLanguageAndLocaleInCalendar:v7];
      v16 = 0;
      v9 = [v6 saveCalendar:v7 commit:1 error:&v16];
      v10 = v16;
      if ((v9 & 1) == 0)
      {
        v11 = DALoggingwithCategory();
        v12 = _CPLog_to_os_log_type[3];
        if (os_log_type_enabled(v11, v12))
        {
          *buf = 138412290;
          v18 = v10;
          _os_log_impl(&dword_0, v11, v12, "Event Store commit failed with error: %@", buf, 0xCu);
        }
      }
    }

    else
    {
      v8 = DALoggingwithCategory();
      v14 = _CPLog_to_os_log_type[3];
      if (os_log_type_enabled(v8, v14))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v8, v14, "Holiday Calendar not found in _saveHolidayCalMetadata:", buf, 2u);
      }
    }

    v15 = +[DALocalDBGateKeeper sharedGateKeeper];
    [v15 relinquishLocksForWaiter:*(a1 + 32) dataclasses:a2 moreComing:0];
  }

  else
  {
    v6 = DALoggingwithCategory();
    v13 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v6, v13))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v6, v13, "Couldn't get a gatekeeper lock in order to save the last holiday calendar refresh date.", buf, 2u);
    }
  }
}

void sub_D6B8(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SubCalRefreshTask.m" lineNumber:67 description:@"We should never process ICS Data while waiting on a previous processICSData call"];
}

void sub_D72C(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SubCalRefreshTask.m" lineNumber:321 description:@"WTF? don't try and make a new request before cleaning up the old one"];
}