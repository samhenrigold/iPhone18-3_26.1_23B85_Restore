void sub_10019BBDC(uint64_t a1)
{
  v1 = sub_1000037CC(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    sub_1000187A4();
    sub_1000187BC(&_mh_execute_header, v2, v3, "Invalid sync obligation change token for %@: %@", v4, v5, v6, v7);
  }
}

void sub_10019BC78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (_CPLSilentLogging != 1)
  {
    v6 = sub_1000037CC(a1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10002B064(&_mh_execute_header, v7, v8, "Missing transport scope for partner scope %@", v9, v10, v11, v12, v15, v16);
    }
  }

  v13 = +[NSAssertionHandler currentHandler];
  v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCloudKitDownloadBatchTask.m"];
  [v13 handleFailureInMethod:a1 object:a2 file:v14 lineNumber:94 description:{@"Missing transport scope for partner scope %@", a3}];

  abort();
}

void sub_10019BD68(uint64_t *a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v2 = sub_1000037CC(a1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *a1;
      v4 = 138412290;
      v5 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Forcing update of library state for %@", &v4, 0xCu);
    }
  }
}

void sub_10019BE24(id obj, void *a2, uint64_t a3)
{
  if (obj)
  {
    objc_storeStrong((*(*(a3 + 96) + 8) + 40), obj);
  }
}

void sub_10019BE68(uint64_t a1)
{
  v1 = sub_1000037CC(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    sub_1000187A4();
    sub_1000187BC(&_mh_execute_header, v2, v3, "Failed to get record %@ when fetching changes: %@", v4, v5, v6, v7);
  }
}

void sub_10019BF08(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  if (v4[36])
  {
    v5 = [v4 currentFetchRecordZoneChangesOperation];
    v6 = [v5 recordZoneIDsWithSyncObligations];
  }

  else
  {
    v6 = 0;
  }

  v7 = objc_autoreleasePoolPush();
  v8 = v7;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v9 = sub_1000037CC(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = *(*(*(a1 + 48) + 8) + 24);
      v20 = 134218240;
      v21 = v10;
      v22 = 2048;
      v23 = [v6 count];
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Fetch operation got a batch and counted %lu change events (%lu sync obligations)", &v20, 0x16u);
    }
  }

  objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
  [*(a1 + 32) sendProgressBatch:*(*(*(a1 + 64) + 8) + 40) updatedScopeChange:*(*(*(a1 + 72) + 8) + 40) updatedFlags:*(*(*(a1 + 80) + 8) + 40) updatedSyncAnchor:*(*(*(a1 + 56) + 8) + 40) zoneIDsWithSyncObligations:v6];
  v11 = objc_alloc_init(CPLChangeBatch);
  v12 = *(*(a1 + 64) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  v14 = *(*(a1 + 72) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = 0;

  v16 = *(*(a1 + 80) + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = 0;

  *(*(*(a1 + 48) + 8) + 24) = 0;
  if (_CPLSilentLogging != 1)
  {
    v19 = sub_1000037CC(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v20 = 138412290;
      v21 = a2;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "Updated sync anchor: %@", &v20, 0xCu);
    }
  }

  objc_autoreleasePoolPop(v8);
}

void sub_10019C13C(uint64_t a1)
{
  if (_CPLSilentLogging != 1)
  {
    v2 = sub_1000037CC(a1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Should not have any more changes coming", v7, 2u);
    }
  }

  v3 = +[NSAssertionHandler currentHandler];
  v4 = *(a1 + 80);
  v5 = *(a1 + 40);
  v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCloudKitDownloadBatchTask.m"];
  [v3 handleFailureInMethod:v4 object:v5 file:v6 lineNumber:470 description:@"Should not have any more changes coming"];

  abort();
}

void sub_10019C214(uint64_t a1, void *a2)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = sub_1000037CC(a1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v11 = 138412546;
      *&v11[4] = a1;
      *&v11[12] = 2112;
      *&v11[14] = *a2;
      sub_1000187BC(&_mh_execute_header, v5, v6, "Received zoneID %@ expected zoneID %@", v7, v8, v9, v10, *v11, *&v11[8], *&v11[16]);
    }
  }
}

uint64_t sub_10019C2D4(uint64_t a1, void ***a2)
{
  v3 = *(a1 + 40);
  *a2 = _NSConcreteStackBlock;
  a2[1] = 3221225472;
  a2[2] = sub_10005132C;
  a2[3] = &unk_100271F40;
  a2[4] = v3;
  [v3 dispatchAsync:a2];
  return (*(*(a1 + 48) + 16))();
}

void sub_10019C6B4(uint64_t a1, uint64_t a2)
{
  if (_CPLSilentLogging != 1)
  {
    v4 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Push notification center can only be set once on CloudKit coordinator", v7, 2u);
    }
  }

  v5 = +[NSAssertionHandler currentHandler];
  v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCloudKitCoordinator.m"];
  [v5 handleFailureInMethod:a1 object:a2 file:v6 lineNumber:112 description:@"Push notification center can only be set once on CloudKit coordinator"];

  abort();
}

id sub_10019C7B0(id *a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v2 = sub_10005189C(a1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "No CloudKit clients registered - unregistering coordinator from system", v4, 2u);
    }
  }

  return [*a1 _coordinatorWontBeUsed];
}

void sub_10019CD0C(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCloudKitCoordinator.m"];
  [v4 handleFailureInMethod:a1 object:a2 file:v5 lineNumber:536 description:@"Should not try to determine database for a container operation type"];

  abort();
}

void sub_10019CD84(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCloudKitCoordinator.m"];
  [v4 handleFailureInMethod:a1 object:a2 file:v5 lineNumber:548 description:@"Should not try to determine database for a container operation type"];

  abort();
}

void sub_10019CF28(uint64_t a1, void *a2)
{
  if (_CPLSilentLogging != 1)
  {
    v5 = __CPLGenericOSLogDomain();
    if (sub_1000033C0(v5))
    {
      v6 = NSStringFromSelector(*(a1 + 72));
      v7 = *(a1 + 40);
      v8 = *a2;
      *buf = 138412802;
      v13 = v6;
      v14 = 2112;
      v15 = v7;
      v16 = 2112;
      v17 = v8;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%@ has been called for %@ but %@ has not been started yet", buf, 0x20u);
    }
  }

  v9 = +[NSAssertionHandler currentHandler];
  v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCloudKitOperationsTracker.m"];
  v11 = NSStringFromSelector(*(a1 + 72));
  [sub_1000034C0() handleFailureInMethod:v11 object:*(a1 + 40) file:*a2 lineNumber:? description:?];

  abort();
}

void sub_10019D060(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (_CPLSilentLogging != 1)
  {
    v7 = __CPLGenericOSLogDomain();
    if (sub_10002B0A8(v7))
    {
      *buf = 138412290;
      v11 = a3;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%@ has no associated task", buf, 0xCu);
    }
  }

  v8 = +[NSAssertionHandler currentHandler];
  v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCloudKitOperationsTracker.m"];
  [v8 handleFailureInMethod:a1 object:a2 file:v9 lineNumber:205 description:{@"%@ has no associated task", a3}];

  abort();
}

void sub_10019D468(uint64_t a1, void *a2)
{
  if (_CPLSilentLogging != 1)
  {
    v5 = __CPLGenericOSLogDomain();
    if (sub_1000033C0(v5))
    {
      v6 = *a2;
      *buf = 138412290;
      v13 = v6;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%@ should have an associated context here", buf, 0xCu);
    }
  }

  v7 = +[NSAssertionHandler currentHandler];
  v10 = a1 + 40;
  v8 = *(a1 + 40);
  v9 = *(v10 + 8);
  v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCloudKitOperationsTracker.m"];
  [v7 handleFailureInMethod:v9 object:v8 file:v11 lineNumber:251 description:{@"%@ should have an associated context here", *a2}];

  abort();
}

id sub_10019DA60(id *a1, uint64_t a2, uint64_t a3)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = sub_100004B38(a1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*(*a1 + 2) count];
      v8 = [*a1 _pendingTaskStatus];
      v16 = 134218242;
      v17 = v7;
      v18 = 2112;
      v19 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Cancelling all operations for %lu tasks:\n%@", &v16, 0x16u);
    }
  }

  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v9 = *(*a1 + 2);
  v10 = [v9 countByEnumeratingWithState:a2 objects:a3 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = **(a2 + 16);
    do
    {
      v13 = 0;
      do
      {
        if (**(a2 + 16) != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(a2 + 8) + 8 * v13) trackingContext];
        [v14 cancelAllOperations];

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:a2 objects:a3 count:16];
    }

    while (v11);
  }

  return [*a1 _emitLogForCurrentTasks];
}

void sub_10019E1A4(id *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [a1[4] objectAtIndexedSubscript:a3];
  v7 = [v6 recordID];

  v8 = [v7 recordName];
  v9 = [a1[5] recordName];
  v10 = [v8 isEqualToString:v9];

  if (v10)
  {
    v11 = v5;
  }

  else
  {
    v12 = [NSString alloc];
    v13 = [v7 recordName];
    v11 = [v12 initWithFormat:@"%@#%@", v5, v13];
  }

  v14 = [a1[6] objectAtIndexedSubscript:a3];
  v15 = [[CKServerChangeToken alloc] initWithData:v14];
  if (v15)
  {
    v16 = [NSKeyedArchiver cpl_archivedDataWithRootObject:v15];
    [a1[7] setObject:v16 forKeyedSubscript:v11];
  }

  else if ((_CPLSilentLogging & 1) == 0)
  {
    v17 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v19 = v11;
      v20 = 2112;
      v21 = v14;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Failed to interpret server change token for %@: %@", buf, 0x16u);
    }
  }
}

void sub_10019E3A4(void *a1, uint64_t a2)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = [a1 zoneID];
      v6 = [v5 cpl_zoneName];
      sub_100059FB8();
      v8 = a2;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Invalid rewind tokens in %@:\n%@", v7, 0x16u);
    }
  }
}

void sub_10019E4A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (_CPLSilentLogging != 1)
  {
    v6 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v10 = a3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Found %@ in private database but with an explicit user identifier", buf, 0xCu);
    }
  }

  v7 = +[NSAssertionHandler currentHandler];
  v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCloudKitScope.m"];
  [v7 handleFailureInMethod:a1 object:a2 file:v8 lineNumber:74 description:{@"Found %@ in private database but with an explicit user identifier", a3}];

  abort();
}

void sub_10019E58C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = +[NSAssertionHandler currentHandler];
  v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCloudKitScope.m"];
  [v6 handleFailureInMethod:a1 object:a2 file:v7 lineNumber:71 description:{@"Found %@ in the non-supported public database", a3}];

  abort();
}

void sub_10019E614(uint64_t a1, uint64_t a2)
{
  if (_CPLSilentLogging != 1)
  {
    v5 = __CPLGenericOSLogDomain();
    if (sub_1000033C0(v5))
    {
      v14 = 0;
      sub_10000AF60(&_mh_execute_header, v6, v7, "Trying to create a CPLCloudKitScope with no zone", v8, v9, v10, v11, v14);
    }
  }

  v12 = +[NSAssertionHandler currentHandler];
  v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCloudKitScope.m"];
  [v12 handleFailureInMethod:a1 object:a2 file:v13 lineNumber:66 description:@"Trying to create a CPLCloudKitScope with no zone"];

  abort();
}

void sub_10019E6D0(uint64_t a1, uint64_t a2)
{
  if (_CPLSilentLogging != 1)
  {
    v5 = __CPLGenericOSLogDomain();
    if (sub_1000033C0(v5))
    {
      v14 = 0;
      sub_10000AF60(&_mh_execute_header, v6, v7, "Trying to create a CPLCloudKitScope with no zone ID", v8, v9, v10, v11, v14);
    }
  }

  v12 = +[NSAssertionHandler currentHandler];
  v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCloudKitScope.m"];
  [v12 handleFailureInMethod:a1 object:a2 file:v13 lineNumber:87 description:@"Trying to create a CPLCloudKitScope with no zone ID"];

  abort();
}

void sub_10019E78C(void *a1, void *a2)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = __CPLGenericOSLogDomain();
    if (sub_1000033C0(v5))
    {
      v8 = 138412546;
      v9 = a1;
      v10 = 2112;
      v11 = CKCurrentUserDefaultName;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Found zoneID %@ with current user identifier as owner instead of %@", &v8, 0x16u);
    }
  }

  v6 = [CKRecordZoneID alloc];
  v7 = [a1 zoneName];
  *a2 = [v6 initWithZoneName:v7 ownerName:CKCurrentUserDefaultName databaseScope:2];
}

void sub_10019E8A4(uint64_t a1, uint64_t a2)
{
  if (_CPLSilentLogging != 1)
  {
    v5 = __CPLGenericOSLogDomain();
    if (sub_1000033C0(v5))
    {
      v14 = 0;
      sub_10000AF60(&_mh_execute_header, v6, v7, "Trying to create a CPLCloudKitScope with no zone ID", v8, v9, v10, v11, v14);
    }
  }

  v12 = +[NSAssertionHandler currentHandler];
  v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCloudKitScope.m"];
  [v12 handleFailureInMethod:a1 object:a2 file:v13 lineNumber:114 description:@"Trying to create a CPLCloudKitScope with no zone ID"];

  abort();
}

void sub_10019E974(uint64_t a1)
{
  v2 = __CPLGenericOSLogDomain();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = 138543362;
    v4 = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "CKRecordZone without a zone ID: %{public}@", &v3, 0xCu);
  }
}

void sub_10019EA18(id a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v1 = sub_100003810(a1);
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Server is disabling DDC", v3, 2u);
    }
  }

  _CPLCloudKitUseGateKeeper = 0;
  _CPLCloudKitGateKeeperDisabledByServer = 1;
  v2 = +[NSUserDefaults standardUserDefaults];
  [v2 setObject:&__kCFBooleanTrue forKey:@"_CPLCloudKitAutoDisableGateKeeper"];
  [v2 synchronize];
}

void sub_10019EAD8(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = v4;
  if (a1)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v6 = sub_100003810(v4);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v24 = a1;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Launching %@", buf, 0xCu);
      }
    }

    objc_storeStrong((a1 + 216), a2);
    [*(a1 + 224) resetTrackingCounts];
    if (v5)
    {
      [v5 createCloudKitReschedulerIfNecessary];
      v7 = [v5 rescheduler];
      if (v7)
      {
      }

      else
      {
        v8 = [v5 detachedActivity];

        if (!v8)
        {
          *(a1 + 73) = 1;
        }
      }
    }

    v9 = [*(a1 + 200) operationTracker];
    [v9 taskWillStart:a1];

    v10 = +[NSProgress currentProgress];
    if (v10)
    {
      *(a1 + 74) = 1;
      v11 = CPLCopyDefaultSerialQueueAttributes();
      v12 = dispatch_queue_create("com.apple.cpl.cloudkit.task.progress", v11);
      v13 = *(a1 + 88);
      *(a1 + 88) = v12;

      v14 = [NSProgress progressWithTotalUnitCount:1];
      v15 = *(a1 + 80);
      *(a1 + 80) = v14;
    }

    sub_1000034D4();
    v19 = 3221225472;
    v20 = sub_10019ED0C;
    v21 = &unk_100271F40;
    v22 = a1;
    [a1 dispatchAsync:v18];
    if (*(a1 + 74) == 1)
    {
      sub_100021D24();
      v17[1] = 3221225472;
      v17[2] = sub_10005B6E4;
      v17[3] = &unk_100271F40;
      v17[4] = a1;
      dispatch_sync(v16, v17);
    }
  }
}

void sub_10019ED0C(uint64_t a1)
{
  if (__CPLShouldLogQOS() && (_CPLSilentLogging & 1) == 0)
  {
    v3 = __CPLQOSOSLogDomain();
    if (sub_10000FABC(v3))
    {
      v4 = objc_opt_class();
      v5 = v4;
      CPLCurrentQOS();
      *v17 = 138412546;
      *&v17[4] = v4;
      *&v17[14] = *&v17[12] = 2112;
      sub_1000033F8();
      _os_log_impl(v6, v7, v8, v9, v10, 0x16u);
    }
  }

  v11 = [*(*(a1 + 32) + 216) cloudKitRescheduler];
  v12 = *(a1 + 32);
  if (v11)
  {
    v16 = sub_10000489C(v12);
    v12 = *(a1 + 32);
    if (v16)
    {
      [v12 _acquireActivityAndLaunchOperation];
      goto LABEL_11;
    }
  }

  else if (!*(v12 + 120))
  {
    v13 = [*(v12 + 216) detachedActivity];
    v14 = *(a1 + 32);
    v15 = *(v14 + 120);
    *(v14 + 120) = v13;

    v12 = *(a1 + 32);
    if (*(v12 + 120))
    {
      [v12 setHasBackgroundActivity:1];
      v12 = *(a1 + 32);
    }
  }

  [v12 _reallyStartOperation];
LABEL_11:
}

id *sub_10019EE84(id *result)
{
  if (!result)
  {
    return result;
  }

  v2 = result;
  *(result + 128) = 1;
  if (!result[27])
  {
    v3 = [result[1] count];
    if (!v3)
    {
      if (!v2[18] || (_CPLSilentLogging & 1) != 0)
      {
        goto LABEL_12;
      }

      v7 = sub_100003810(0);
      if (sub_10000FABC(v7))
      {
        v8 = [v2 idleDescription];
        sub_10005FE88(v8, 5.778e-34);
        sub_10005FED0(&_mh_execute_header, v9, v10, "Cancelling '%@' for %@");
      }

      goto LABEL_11;
    }

    if ((_CPLSilentLogging & 1) == 0)
    {
      v4 = sub_100003810(v3);
      if (sub_10000FABC(v4))
      {
        sub_10005FE88([v2[1] count], 3.8521e-34);
        sub_10005FED0(&_mh_execute_header, v5, v6, "Cancelling %lu operations for %@");
      }

LABEL_11:
    }
  }

LABEL_12:
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = v2[1];
  v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v18 + 1) + 8 * i);
        v17 = [v2[25] operationTracker];
        [v17 operationHasBeenCancelled:v16];

        [v16 cancel];
      }

      v13 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v13);
  }

  return [v2 _cancelCallbackProgress];
}

id sub_10019F22C(uint64_t a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = sub_100003810(a1);
    if (sub_100021E38(v3))
    {
      v6 = *(a1 + 32);
      v9 = 138412290;
      v10 = v6;
      sub_10005FE5C(&_mh_execute_header, v4, v5, "Cancelling operations for %@ it not blocked", &v9);
    }
  }

  v7 = *(a1 + 32);
  if (v7[13])
  {
    return [v7 _cancelActivityRequest];
  }

  else
  {
    return [v7 _cancelAllOperationsIfBlocked];
  }
}

void sub_10019F8C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10019F8E0(uint64_t a1)
{
  if (a1 && !*(a1 + 48))
  {
    v4 = CPLCopyDefaultSerialQueueAttributes();
    v2 = dispatch_queue_create("com.apple.cpl.cloudkit.task.synchronouswork", v4);
    v3 = *(a1 + 48);
    *(a1 + 48) = v2;
  }
}

void sub_10019FA98(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (a1)
  {
    v16 = [v12 nextObject];
    if (v16)
    {
      sub_1000033D8();
      v18 = 3221225472;
      v19 = sub_10005D0C0;
      v20 = &unk_100274D60;
      v21 = v14;
      v22 = v13;
      v23 = a1;
      v26 = v11;
      v24 = v16;
      v25 = v12;
      v27 = v15;
      [a1 dispatchSynchronousWork:v17];
    }

    else
    {
      (*(v15 + 2))(v15, 0);
    }
  }
}

void CPLTaskLogCKCodeRequestAndResponse()
{
  sub_10005FEF0();
  v33 = v0;
  v34 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = v7;
  v11 = v5;
  v12 = [v3 componentsJoinedByString:{@", "}];
  v13 = v12;
  v14 = @"unknown";
  if (v12)
  {
    v14 = v12;
  }

  v15 = v14;

  if (v11)
  {
    if (v10)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v17 = sub_10005FD40(v16);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          sub_10005FE48();
          v28 = v10;
          v29 = v18;
          v30 = v11;
          v31 = 2114;
          v32 = v15;
          sub_10005FE78();
          v24 = 42;
LABEL_19:
          _os_log_impl(v19, v20, v21, v22, v23, v24);
        }

LABEL_20:

        goto LABEL_21;
      }

      goto LABEL_21;
    }

    if (_CPLSilentLogging)
    {
      goto LABEL_21;
    }

    v17 = sub_10005FD40(v16);
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    sub_10005FE48();
    v28 = v11;
    v29 = 2114;
    v30 = v15;
    sub_10005FE78();
LABEL_15:
    v24 = 32;
    goto LABEL_19;
  }

  if (v10)
  {
    if (_CPLSilentLogging)
    {
      goto LABEL_21;
    }

    v17 = sub_10005FD40(v16);
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }

    sub_10005FE48();
    v28 = v10;
    v29 = 2114;
    v30 = v15;
    v19 = &_mh_execute_header;
    v22 = "Success for %@\nresponse: %@\n\nrequest UUIDs: (%{public}@)";
    v23 = &v25;
    v20 = v17;
    v21 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_15;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v17 = sub_10005FD40(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v25 = 138412546;
      v26 = v9;
      v27 = 2114;
      v28 = v15;
      sub_10005FE78();
      v24 = 22;
      goto LABEL_19;
    }

    goto LABEL_20;
  }

LABEL_21:
}

void sub_1001A00F8(id a1)
{
  v1 = CPLCopyDefaultSerialQueueAttributes();
  v2 = dispatch_queue_create("com.apple.cpl.gatekeepercheck", v1);
  v3 = qword_1002C5238;
  qword_1002C5238 = v2;

  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [v4 objectForKey:@"CPLCloudKitUseGateKeeper"];

  if (v5 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    _CPLCloudKitUseGateKeeper = [v5 BOOLValue];
    v6 = +[NSUserDefaults standardUserDefaults];
    v7 = [v6 BOOLForKey:@"_CPLCloudKitAutoDisableGateKeeper"];

    if (v7 && (_CPLSilentLogging & 1) == 0)
    {
      v9 = sub_100003810(v8);
      if (sub_10000FABC(v9))
      {
        LOWORD(v32) = 0;
        sub_1000033F8();
        _os_log_impl(v10, v11, v12, v13, v14, 2u);
      }
    }
  }

  else
  {
    v15 = +[NSUserDefaults standardUserDefaults];
    v16 = [v15 BOOLForKey:@"_CPLCloudKitAutoDisableGateKeeper"];

    if (v16)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v18 = sub_100003810(v17);
        if (sub_10000FABC(v18))
        {
          LOWORD(v32) = 0;
          sub_1000033F8();
          _os_log_impl(v19, v20, v21, v22, v23, 2u);
        }
      }

      v24 = 0;
      _CPLCloudKitGateKeeperDisabledByServer = 1;
    }

    else
    {
      v24 = 1;
    }

    _CPLCloudKitUseGateKeeper = v24;
  }

  if (_CPLCloudKitUseGateKeeper == 1)
  {
    v25 = +[NSUserDefaults standardUserDefaults];
    v26 = [v25 stringForKey:@"CPLCloudKitGateKeeperTranscodeType"];
    v27 = [v26 lowercaseString];

    if (v27)
    {
      if ([v27 isEqualToString:@"mmcs"])
      {
        v28 = &unk_1002D2000;
        v29 = 1;
      }

      else
      {
        v30 = [v27 isEqualToString:@"transcode"];
        if (!v30)
        {
          if ((_CPLSilentLogging & 1) == 0)
          {
            v31 = sub_100003810(v30);
            if (sub_1000033C0(v31))
            {
              v32 = 138412290;
              v33 = v27;
              _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Invalid value for transcode type: '%@'", &v32, 0xCu);
            }
          }

          goto LABEL_27;
        }

        v28 = &unk_1002D2000;
        v29 = 2;
      }

      v28[414] = v29;
    }

LABEL_27:
  }
}

void sub_1001A03B0(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  v5 = [NSString stringWithUTF8String:"CPLCloudKitOperationType CPLCloudKitOperationTypeForScope(CPLCloudKitScope *__strong _Nonnull)"];
  v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCloudKitTransportTask.m"];
  [v4 handleFailureInFunction:v5 file:v6 lineNumber:62 description:{@"Invalid database scope for %@: %ld", a1, a2}];

  abort();
}

void sub_1001A044C()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"CKDatabaseScope CPLCKDatabaseScopeForCPLCloudKitOperationType(CPLCloudKitOperationType)"];
  v2 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCloudKitTransportTask.m"];
  [v0 handleFailureInFunction:v1 file:v2 lineNumber:71 description:@"Invalid source type for record copy"];

  abort();
}

void sub_1001A04FC(void *a1)
{
  if (_CPLSilentLogging != 1)
  {
    v2 = sub_100003810(a1);
    if (sub_10002B0A8(v2))
    {
      *buf = 138412290;
      v8 = objc_opt_class();
      v3 = v8;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Unexpected current user ID (%@)", buf, 0xCu);
    }
  }

  v4 = +[NSAssertionHandler currentHandler];
  v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCloudKitTransportTask.m"];
  v6 = objc_opt_class();
  [sub_10002B108() handleFailureInMethod:v6 object:? file:? lineNumber:? description:?];

  abort();
}

void sub_1001A05F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (_CPLSilentLogging != 1)
  {
    v6 = sub_100003810(a1);
    if (sub_10002B0A8(v6))
    {
      sub_10002B0D4(&_mh_execute_header, v7, v8, "%@ is an invalid transport group for %@", v9, v10, v11, v12, v15, v16);
    }
  }

  v13 = +[NSAssertionHandler currentHandler];
  v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCloudKitTransportTask.m"];
  [sub_10002B108() handleFailureInMethod:a3 object:a2 file:? lineNumber:? description:?];

  abort();
}

id sub_1001A06D4(void *a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = sub_100003810(a1);
    if (sub_10000FABC(v3))
    {
      LODWORD(v10) = 138412290;
      *(&v10 + 4) = a1;
      sub_1000033F8();
      _os_log_impl(v4, v5, v6, v7, v8, 0xCu);
    }
  }

  return [a1 cancel];
}

void sub_1001A0780(uint64_t a1, uint64_t a2)
{
  if (_CPLSilentLogging != 1)
  {
    v5 = sub_100003810(a1);
    if (sub_1000033C0(v5))
    {
      v6 = objc_opt_class();
      sub_10000348C(&_mh_execute_header, v7, v8, "%@ should not have any outstanding operations while waiting for an activity", v9, v10, v11, v12, v15, v16);
    }
  }

  v13 = +[NSAssertionHandler currentHandler];
  v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCloudKitTransportTask.m"];
  [v13 handleFailureInMethod:a2 object:a1 file:v14 lineNumber:515 description:{@"%@ should not have any outstanding operations while waiting for an activity", objc_opt_class()}];

  abort();
}

id *sub_1001A0868(void *a1, void *a2)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = sub_100003810(a1);
    if (sub_100021E38(v4))
    {
      v7 = *a1;
      v9 = 138412290;
      v10 = v7;
      sub_10005FE5C(&_mh_execute_header, v5, v6, "Cancelling operations for %@", &v9);
    }

    a2 = *a1;
  }

  if (a2[13])
  {
    return [a2 _cancelActivityRequest];
  }

  else
  {
    return sub_10019EE84(a2);
  }
}

id sub_1001A092C(void *a1, void **a2, void ***a3)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = sub_100003810(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = a2;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Delaying cancelling %@, giving it a chance to complete", &v8, 0xCu);
    }
  }

  *a3 = _NSConcreteStackBlock;
  a3[1] = 3221225472;
  a3[2] = sub_10005BA4C;
  a3[3] = &unk_100271F40;
  a3[4] = a2;
  return [a2 dispatchAfter:a3 block:5.0];
}

void sub_1001A0F30(void *a1, uint64_t a2, uint64_t a3)
{
  if (_CPLSilentLogging != 1)
  {
    v6 = sub_100003810(a1);
    if (sub_10002B0A8(v6))
    {
      v7 = [a1 idleDescription];
      sub_10002B0D4(&_mh_execute_header, v8, v9, "Trying to launch %@ while %@", v10, v11, v12, v13, v19, v20);
    }
  }

  v14 = +[NSAssertionHandler currentHandler];
  v15 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCloudKitTransportTask.m"];
  v16 = [a1 idleDescription];
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = @"running some other operation";
  }

  [sub_10002B108() handleFailureInMethod:a3 object:v18 file:? lineNumber:? description:?];

  abort();
}

id sub_1001A1064(id *a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = sub_100003810(a1);
    if (sub_10000FABC(v3))
    {
      v4 = *a1;
      v5 = [*a1 idleDescription];
      v6 = v5;
      v7 = @"running some operation";
      if (v5)
      {
        v7 = v5;
      }

      *v14 = 138412546;
      *&v14[4] = v4;
      *&v14[12] = 2112;
      *&v14[14] = v7;
      sub_1000033F8();
      _os_log_impl(v8, v9, v10, v11, v12, 0x16u);
    }
  }

  return [*a1 _cancelCallbackProgress];
}

void sub_1001A114C(const char *a1, uint64_t a2)
{
  if (_CPLSilentLogging != 1)
  {
    v5 = sub_100003810(a1);
    if (sub_1000033C0(v5))
    {
      v17 = NSStringFromSelector(a1);
      sub_10000348C(&_mh_execute_header, v6, v7, "Calling %@ while there is no running callback operation", v8, v9, v10, v11, v15, v16);
    }
  }

  v12 = +[NSAssertionHandler currentHandler];
  v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCloudKitTransportTask.m"];
  v14 = NSStringFromSelector(a1);
  [v12 handleFailureInMethod:a1 object:a2 file:v13 lineNumber:805 description:{@"Calling %@ while there is no running callback operation", v14}];

  abort();
}

void sub_1001A1244(const char *a1, void *a2)
{
  if (_CPLSilentLogging != 1)
  {
    v5 = sub_100003810(a1);
    if (sub_10002B0A8(v5))
    {
      v6 = NSStringFromSelector(a1);
      v19 = [a2 cplOperationClassDescription];
      sub_10002B0D4(&_mh_execute_header, v7, v8, "%@ for %@ called while it has not started yet", v9, v10, v11, v12, v17, v18);
    }
  }

  v13 = +[NSAssertionHandler currentHandler];
  v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCloudKitTransportTask.m"];
  v15 = NSStringFromSelector(a1);
  v16 = [a2 cplOperationClassDescription];
  [sub_10002B108() handleFailureInMethod:v15 object:v16 file:? lineNumber:? description:?];

  abort();
}

void sub_1001A1370(const char *a1, void *a2)
{
  if (_CPLSilentLogging != 1)
  {
    v5 = sub_100003810(a1);
    if (sub_10002B0A8(v5))
    {
      v6 = NSStringFromSelector(a1);
      v19 = [a2 cplOperationClassDescription];
      sub_10002B0D4(&_mh_execute_header, v7, v8, "%@ for %@ called while it has not started yet", v9, v10, v11, v12, v17, v18);
    }
  }

  v13 = +[NSAssertionHandler currentHandler];
  v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCloudKitTransportTask.m"];
  v15 = NSStringFromSelector(a1);
  v16 = [a2 cplOperationClassDescription];
  [sub_10002B108() handleFailureInMethod:v15 object:v16 file:? lineNumber:? description:?];

  abort();
}

void sub_1001A149C(const char *a1, void *a2)
{
  if (_CPLSilentLogging != 1)
  {
    v5 = sub_100003810(a1);
    if (sub_10002B0A8(v5))
    {
      v6 = NSStringFromSelector(a1);
      v19 = [a2 cplOperationClassDescription];
      sub_10002B0D4(&_mh_execute_header, v7, v8, "%@ for %@ called while it has not started yet", v9, v10, v11, v12, v17, v18);
    }
  }

  v13 = +[NSAssertionHandler currentHandler];
  v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCloudKitTransportTask.m"];
  v15 = NSStringFromSelector(a1);
  v16 = [a2 cplOperationClassDescription];
  [sub_10002B108() handleFailureInMethod:v15 object:v16 file:? lineNumber:? description:?];

  abort();
}

void sub_1001A16C4(uint64_t a1, uint64_t a2)
{
  if (_CPLSilentLogging != 1)
  {
    v5 = sub_100003810(a1);
    if (sub_1000033C0(v5))
    {
      sub_10000348C(&_mh_execute_header, v6, v7, "%@ while the task is not running", v8, v9, v10, v11, v14, v15);
    }
  }

  v12 = +[NSAssertionHandler currentHandler];
  v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCloudKitTransportTask.m"];
  [v12 handleFailureInMethod:a1 object:a2 file:v13 lineNumber:1104 description:{@"%@ while the task is not running", a2}];

  abort();
}

void sub_1001A1790(id *a1, uint64_t a2)
{
  v4 = sub_100003810(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = [*a1 path];
    v6 = 138412546;
    v7 = v5;
    v8 = 2112;
    v9 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Failed to delete temporary folder at %@: %@", &v6, 0x16u);
  }
}

void sub_1001A1860(void *a1, uint64_t a2, void *a3)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = sub_100003810(a1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = objc_opt_class();
      v7 = v9;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Will fetch user identifier as it has not been set on %@", &v8, 0xCu);
    }
  }

  *a2 = _NSConcreteStackBlock;
  *(a2 + 8) = 3221225472;
  *(a2 + 16) = sub_10005E8F8;
  *(a2 + 24) = &unk_100274E50;
  *(a2 + 32) = a1;
  *(a2 + 40) = a3;
  [a1 fetchUserRecordIDFetchWithCompletionHandler:a2];
}

uint64_t sub_1001A19A0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if ((a1 & 1) == 0)
  {
    v6 = sub_100003810(a1);
    if (sub_1000033C0(v6))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "No active Apple Account", v8, 2u);
    }
  }

  *a3 = [CPLErrors cplErrorWithCode:28 description:@"No active Apple Account"];
  return (*(*(a2 + 56) + 16))();
}

void sub_1001A1A74(void *a1, uint64_t a2, uint64_t a3)
{
  if (_CPLSilentLogging != 1)
  {
    v6 = sub_100003854(a1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10002B064(&_mh_execute_header, v7, v8, "Unable to find destination shared record for %@", v9, v10, v11, v12, v15, v16);
    }
  }

  v13 = +[NSAssertionHandler currentHandler];
  v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCloudKitReshareRecordsTask.m"];
  [v13 handleFailureInMethod:a2 object:a3 file:v14 lineNumber:159 description:{@"Unable to find destination shared record for %@", *a1}];

  abort();
}

void sub_1001A1B58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (_CPLSilentLogging != 1)
  {
    v6 = sub_100003854(a1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10002B064(&_mh_execute_header, v7, v8, "Unable to find scoped identifier matching %@", v9, v10, v11, v12, v15, v16);
    }
  }

  v13 = +[NSAssertionHandler currentHandler];
  v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCloudKitReshareRecordsTask.m"];
  [v13 handleFailureInMethod:a1 object:a2 file:v14 lineNumber:157 description:{@"Unable to find scoped identifier matching %@", a3}];

  abort();
}

void sub_1001A1C34(uint64_t a1)
{
  v2 = sub_100003854(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = 138412290;
    v4 = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Error deserializing base CKRecord: %@", &v3, 0xCu);
  }
}

id sub_1001A1CDC(void *a1, uint64_t a2, void *a3)
{
  v6 = [CKRecord alloc];
  v7 = [a1 recordType];
  v8 = [v6 initWithRecordType:v7 recordID:a2];
  *a3 = v8;

  [v8 setKnownToServer:1];
  return [v8 setEtag:@"-gateon"];
}

void sub_1001A1DC8(uint64_t a1, void *a2)
{
  if (_CPLSilentLogging != 1)
  {
    v4 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = [a2 componentsJoinedByString:{@", "}];
      *buf = 138412290;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Trying to add keys %@ not bound to any property", buf, 0xCu);
    }
  }

  v6 = +[NSAssertionHandler currentHandler];
  v7 = *(a1 + 88);
  v8 = *(a1 + 32);
  v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCKRecordPropertyMapping.m"];
  v10 = [a2 componentsJoinedByString:{@", "}];
  [v6 handleFailureInMethod:v7 object:v8 file:v9 lineNumber:254 description:{@"Trying to add keys %@ not bound to any property", v10}];

  abort();
}

void sub_1001A1EF0(void *a1, char a2)
{
  if (_CPLSilentLogging != 1)
  {
    v4 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000233B4(&_mh_execute_header, v5, v6, "%s called too many times on %@", v7, v8, v9, v10, v16, v17);
    }
  }

  v11 = +[NSAssertionHandler currentHandler];
  v12 = a1[11];
  v13 = a1[4];
  v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCKRecordPropertyMapping.m"];
  if (a2)
  {
    v15 = "BEGIN_SHARED_AND_PRIVATE_PROPERTIES";
  }

  else
  {
    v15 = "BEGIN_SHARED_PROPERTIES";
  }

  [v11 handleFailureInMethod:v12 object:v13 file:v14 lineNumber:275 description:{@"%s called too many times on %@", v15, *(*(a1[6] + 8) + 24)}];

  abort();
}

void sub_1001A2018(void *a1)
{
  if (_CPLSilentLogging != 1)
  {
    v2 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = *(*(a1[6] + 8) + 24);
      *buf = 138412290;
      v9 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Trying to add shared properties to non-shareable class %@", buf, 0xCu);
    }
  }

  v4 = +[NSAssertionHandler currentHandler];
  v5 = a1[11];
  v6 = a1[4];
  v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCKRecordPropertyMapping.m"];
  [v4 handleFailureInMethod:v5 object:v6 file:v7 lineNumber:274 description:{@"Trying to add shared properties to non-shareable class %@", *(*(a1[6] + 8) + 24)}];

  abort();
}

void sub_1001A211C(uint64_t a1, char a2)
{
  if (_CPLSilentLogging != 1)
  {
    v4 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000233B4(&_mh_execute_header, v5, v6, "%s called but expected %s", v7, v8, v9, v10, v17, v18);
    }
  }

  v11 = +[NSAssertionHandler currentHandler];
  v12 = *(a1 + 80);
  v13 = *(a1 + 32);
  v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCKRecordPropertyMapping.m"];
  if (a2)
  {
    v15 = "END_SHARED_AND_PRIVATE_PROPERTIES";
  }

  else
  {
    v15 = "END_SHARED_PROPERTIES";
  }

  if (a2)
  {
    v16 = "END_SHARED_PROPERTIES";
  }

  else
  {
    v16 = "END_SHARED_AND_PRIVATE_PROPERTIES";
  }

  [v11 handleFailureInMethod:v12 object:v13 file:v14 lineNumber:286 description:{@"%s called but expected %s", v15, v16}];

  abort();
}

void sub_1001A2234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (_CPLSilentLogging != 1)
  {
    v6 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v10 = a3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Unsupported %@", buf, 0xCu);
    }
  }

  v7 = +[NSAssertionHandler currentHandler];
  v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCKRecordPropertyMapping.m"];
  [v7 handleFailureInMethod:a1 object:a2 file:v8 lineNumber:391 description:{@"Unsupported %@", a3}];

  abort();
}

void sub_1001A2718(uint64_t a1)
{
  if (_CPLSilentLogging != 1)
  {
    v3 = __CPLGenericOSLogDomain();
    if (sub_100003448(v3))
    {
      sub_10006D00C(&_mh_execute_header, v4, v5, "%@ has no associated record type", v6, v7, v8, v9, v13, v14);
    }
  }

  v10 = +[NSAssertionHandler currentHandler];
  v11 = [NSString stringWithUTF8String:"NSString * _Nonnull CKRecordTypeForCPLRecordChangeClass(__unsafe_unretained Class _Nonnull)"];
  v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CKRecord+CPL_base.m"];
  [v10 handleFailureInFunction:v11 file:v12 lineNumber:89 description:{@"%@ has no associated record type", a1}];

  abort();
}

void sub_1001A27F8(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    sub_10000FAAC();
    _os_log_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

void sub_1001A2890(void *a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = __CPLGenericOSLogDomain();
    if (sub_100003448(v3))
    {
      v4 = [a1 recordType];
      sub_100059FB8();
      sub_100021D44();
      _os_log_impl(v5, v6, v7, v8, v9, 0x16u);
    }
  }
}

void sub_1001A295C(void *a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = __CPLGenericOSLogDomain();
    if (sub_100003448(v3))
    {
      v4 = [a1 recordID];
      sub_100059FB8();
      sub_100021D44();
      _os_log_impl(v5, v6, v7, v8, v9, 0x16u);
    }
  }
}

void sub_1001A2A28(uint64_t a1)
{
  if (_CPLSilentLogging != 1)
  {
    v3 = __CPLGenericOSLogDomain();
    if (sub_100003448(v3))
    {
      sub_10006D00C(&_mh_execute_header, v4, v5, "Missing record identifier for %@", v6, v7, v8, v9, v13, v14);
    }
  }

  v10 = +[NSAssertionHandler currentHandler];
  v11 = [NSString stringWithUTF8String:"CKRecord * _Nonnull CPLBaseCKRecordFromCPLRecordChange(CPLRecordChange *__strong _Nonnull, CKRecordZone *__strong _Nonnull, CPLRecordTarget *__strong _Nonnull)"];
  v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CKRecord+CPL_base.m"];
  [v10 handleFailureInFunction:v11 file:v12 lineNumber:112 description:{@"Missing record identifier for %@", a1}];

  abort();
}

void sub_1001A2B1C(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    sub_10000FAAC();
    _os_log_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

void sub_1001A2BB4(void *a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = __CPLGenericOSLogDomain();
    if (sub_100003448(v3))
    {
      v4 = [a1 recordType];
      sub_100059FB8();
      sub_100021D44();
      _os_log_impl(v5, v6, v7, v8, v9, 0x16u);
    }
  }
}

void sub_1001A2C80(void *a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = __CPLGenericOSLogDomain();
    if (sub_100003448(v3))
    {
      v4 = [a1 recordID];
      sub_100059FB8();
      sub_100021D44();
      _os_log_impl(v5, v6, v7, v8, v9, 0x16u);
    }
  }
}

void sub_1001A2D4C(uint64_t a1)
{
  if (_CPLSilentLogging != 1)
  {
    v3 = __CPLGenericOSLogDomain();
    if (sub_100003448(v3))
    {
      sub_10006D00C(&_mh_execute_header, v4, v5, "Missing shared record identifier for %@", v6, v7, v8, v9, v13, v14);
    }
  }

  v10 = +[NSAssertionHandler currentHandler];
  v11 = [NSString stringWithUTF8String:"CKRecord * _Nonnull CPLBaseSharedCKRecordFromCPLRecordChange(CPLRecordChange *__strong _Nonnull, CKRecordZone *__strong _Nonnull, CPLRecordTarget *__strong _Nonnull)"];
  v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CKRecord+CPL_base.m"];
  [v10 handleFailureInFunction:v11 file:v12 lineNumber:178 description:{@"Missing shared record identifier for %@", a1}];

  abort();
}

void sub_1001A2E40(uint64_t a1, void *a2, void *a3)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = __CPLGenericOSLogDomain();
    if (sub_100003448(v6))
    {
      v7 = [a2 recordType];
      sub_1000033B4();
      sub_100021D44();
      _os_log_impl(v8, v9, v10, v11, v12, 0x20u);
    }
  }
}

void sub_1001A2F1C(void *a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v2 = sub_100068094(a1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [a1 recordID];
      sub_100059FB8();
      sub_10006D044(&_mh_execute_header, v4, v5, "%@ record points to unknown zone %@", v6, v7, v8, v9);
    }
  }
}

void sub_1001A2FE0(void *a1, uint64_t a2, void *a3)
{
  v7 = [a1 objectForKey:@"linkedShareRecordName"];
  if (!v7)
  {
    v6 = [a1 recordID];
    v7 = [v6 recordName];
  }

  *a3 = [[CPLScopedIdentifier alloc] initWithScopeIdentifier:a2 identifier:v7];
}

void sub_1001A3094(void *a1)
{
  v2 = sub_100068094(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [a1 recordID];
    sub_100059FB8();
    sub_10006D044(&_mh_execute_header, v4, v5, "%@ record points to unknown zone %@", v6, v7, v8, v9);
  }
}

void sub_1001A3148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (_CPLSilentLogging != 1)
  {
    v5 = __CPLGenericOSLogDomain();
    if (sub_10002B0A8(v5))
    {
      sub_10002B064(&_mh_execute_header, v6, v7, "Unsupported class type: %@", v8, v9, v10, v11, v14, v15);
    }
  }

  v12 = +[NSAssertionHandler currentHandler];
  v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CKRecord+CPL_base.m"];
  [sub_10002B108() handleFailureInMethod:a3 object:? file:? lineNumber:? description:?];

  abort();
}

void sub_1001A322C(void *a1, void *a2)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = sub_100069014(a1);
    if (sub_100003448(v5))
    {
      v6 = [a1 recordType];
      v7 = [a1 recordID];
      v14 = [v7 recordName];
      v8 = objc_opt_class();
      sub_100021D44();
      _os_log_impl(v9, v10, v11, v12, v13, 0x20u);
    }
  }
}

void sub_1001A334C(void *a1, uint64_t a2)
{
  v3 = sub_100069014(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = [a1 recordType];
    v5 = [a1 recordID];
    v12 = [v5 recordName];
    v6 = objc_opt_class();
    sub_10000FAAC();
    _os_log_impl(v7, v8, v9, v10, v11, 0x20u);
  }
}

void sub_1001A3474(uint64_t a1)
{
  if (_CPLSilentLogging != 1)
  {
    v3 = __CPLGenericOSLogDomain();
    if (sub_10002B0A8(v3))
    {
      v4 = objc_opt_class();
      v2 = sub_10006D084(v4);
      sub_10002B064(&_mh_execute_header, v5, v6, "%@ does not support deletion", v7, v8, v9, v10, v12, v14);
    }
  }

  v11 = +[NSAssertionHandler currentHandler];
  [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CKRecord+CPL_base.m"];
  objc_claimAutoreleasedReturnValue();
  v13 = sub_10006D09C();
  [sub_10002B108() handleFailureInMethod:v13 object:? file:? lineNumber:? description:?];

  abort();
}

void sub_1001A3550(uint64_t a1)
{
  if (_CPLSilentLogging != 1)
  {
    v3 = __CPLGenericOSLogDomain();
    if (sub_10002B0A8(v3))
    {
      v4 = objc_opt_class();
      v2 = sub_10006D084(v4);
      sub_10002B064(&_mh_execute_header, v5, v6, "%@ should be directly deleted and not expunged", v7, v8, v9, v10, v12, v14);
    }
  }

  v11 = +[NSAssertionHandler currentHandler];
  [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CKRecord+CPL_base.m"];
  objc_claimAutoreleasedReturnValue();
  v13 = sub_10006D09C();
  [sub_10002B108() handleFailureInMethod:v13 object:? file:? lineNumber:? description:?];

  abort();
}

void sub_1001A362C(uint64_t a1)
{
  if (_CPLSilentLogging != 1)
  {
    v3 = __CPLGenericOSLogDomain();
    if (sub_10002B0A8(v3))
    {
      v4 = objc_opt_class();
      v2 = sub_10006D084(v4);
      sub_10002B064(&_mh_execute_header, v5, v6, "%@ does not support deletion", v7, v8, v9, v10, v12, v14);
    }
  }

  v11 = +[NSAssertionHandler currentHandler];
  [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CKRecord+CPL_base.m"];
  objc_claimAutoreleasedReturnValue();
  v13 = sub_10006D09C();
  [sub_10002B108() handleFailureInMethod:v13 object:? file:? lineNumber:? description:?];

  abort();
}

void sub_1001A3708(uint64_t a1)
{
  if (_CPLSilentLogging != 1)
  {
    v3 = __CPLGenericOSLogDomain();
    if (sub_10002B0A8(v3))
    {
      v4 = objc_opt_class();
      v2 = sub_10006D084(v4);
      sub_10002B064(&_mh_execute_header, v5, v6, "%@ should be directly deleted and not expunged", v7, v8, v9, v10, v12, v14);
    }
  }

  v11 = +[NSAssertionHandler currentHandler];
  [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CKRecord+CPL_base.m"];
  objc_claimAutoreleasedReturnValue();
  v13 = sub_10006D09C();
  [sub_10002B108() handleFailureInMethod:v13 object:? file:? lineNumber:? description:?];

  abort();
}

void sub_1001A37E4(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    sub_1000033B4();
    sub_10000FAAC();
    _os_log_impl(v2, v3, v4, v5, v6, 0x16u);
  }
}

void sub_1001A3890(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = __CPLGenericOSLogDomain();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = [a1 recordID];
    v7 = [CPLResource shortDescriptionForResourceType:a3];
    sub_1000033B4();
    sub_10000FAAC();
    _os_log_impl(v8, v9, v10, v11, v12, 0x20u);
  }
}

void sub_1001A397C(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CKRecord+CPL_base.m"];
  [v4 handleFailureInMethod:a1 object:a2 file:v5 lineNumber:863 description:{@"Don't know how to clean %@", a2}];

  abort();
}

void sub_1001A3A10(uint64_t a1)
{
  v2 = __CPLGenericOSLogDomain();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v8 = [CPLResource shortDescriptionForResourceType:a1];
    sub_10000FAAC();
    _os_log_impl(v3, v4, v5, v6, v7, 0xCu);
  }
}

void sub_1001A3AC8(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = +[NSAssertionHandler currentHandler];
  v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CKRecord+CPL_base.m"];
  v7 = [a1 localizedDescription];
  [sub_10002B108() handleFailureInMethod:a3 object:v7 file:? lineNumber:? description:?];

  abort();
}

void sub_1001A3B60(uint64_t a1, void *a2, uint64_t a3)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      objc_opt_class();
      v10 = 138412802;
      v11 = a1;
      sub_1000033B4();
      v12 = v7;
      v13 = v8;
      v14 = a3;
      v9 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Expected class: %@ but got class %@ for key: %@", &v10, 0x20u);
    }
  }
}

uint64_t sub_1001A3C60(uint64_t a1)
{
  v2 = [*(a1 + 32) isBlocked];
  if (!v2)
  {
    v8 = [*(a1 + 32) _unBlockedReasonStatus];
    v3 = v8;
    if (!v8)
    {
      if (_CPLSilentLogging)
      {
        goto LABEL_12;
      }

      v4 = sub_10006E74C(0);
      if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_11;
      }

      v5 = [*(a1 + 32) _isBlockedKeyPath];
      *v11 = 138543362;
      *&v11[4] = v5;
      v6 = "DAS (%{public}@) is reporting that CPL is not blocked any more";
      v7 = v4;
      v9 = 12;
      goto LABEL_10;
    }

    if ((_CPLSilentLogging & 1) == 0)
    {
      v4 = sub_10006E74C(v8);
      if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
LABEL_11:

        goto LABEL_12;
      }

      v5 = [*(a1 + 32) _isBlockedKeyPath];
      *v11 = 138543618;
      *&v11[4] = v5;
      *&v11[12] = 2114;
      *&v11[14] = v3;
      v6 = "DAS (%{public}@) is reporting that CPL is not blocked any more (reason: %{public}@)";
      v7 = v4;
      goto LABEL_9;
    }

LABEL_12:

    goto LABEL_13;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = sub_10006E74C(v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [*(a1 + 32) _isBlockedKeyPath];
      v5 = [*(a1 + 32) _blockedReasonStatus];
      *v11 = 138543618;
      *&v11[4] = v4;
      *&v11[12] = 2114;
      *&v11[14] = v5;
      v6 = "DAS (%{public}@) is reporting that CPL is blocked by %{public}@";
      v7 = v3;
LABEL_9:
      v9 = 22;
LABEL_10:
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v6, v11, v9);

      goto LABEL_11;
    }

    goto LABEL_12;
  }

LABEL_13:
  [*(*(a1 + 32) + 16) enumerateObjectsUsingBlock:{&stru_100275540, *v11, *&v11[8]}];
  return 1;
}

void sub_1001A40A0(uint64_t a1)
{
  v2 = [*(a1 + 32) operationDidFinishWithError:*(a1 + 40)];
  v3 = v2;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = sub_100003898(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = [*(a1 + 48) componentsJoinedByString:{@", "}];
      *buf = 138412546;
      *&buf[4] = v5;
      *&buf[12] = 2112;
      *&buf[14] = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Finished fetching %@ with error %@", buf, 0x16u);
    }
  }

  if (!v3)
  {
    goto LABEL_14;
  }

  if ((*(a1 + 88) & 1) != 0 || ![CPLCloudKitErrors isPartialFailureError:v3])
  {
    v9 = [*(a1 + 32) lastOperationRequestUUIDs];
    v7 = [CPLCloudKitErrors CPLErrorForCloudKitError:v3 withRequestUUIDs:v9 description:@"Failed to fetch some records"];
  }

  else
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v21 = sub_100004470;
    v22 = sub_10000531C;
    v23 = 0;
    v6 = [CPLCloudKitErrors errorsPerRecordIDForPartialFailureError:v3];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10006F1A4;
    v19[3] = &unk_1002755D0;
    v19[4] = *(a1 + 32);
    v19[5] = buf;
    [v6 enumerateKeysAndObjectsUsingBlock:v19];
    v7 = *(*&buf[8] + 40);
    if (v7)
    {
      v8 = [*(a1 + 32) lastOperationRequestUUIDs];
      v7 = [CPLCloudKitErrors CPLErrorForCloudKitError:v7 withRequestUUIDs:v8 description:@"Failed to fetch some records"];

      v3 = v8;
    }

    _Block_object_dispose(buf, 8);
  }

  if (v7)
  {
    v10 = [*(a1 + 32) lastOperationRequestUUIDs];
    (*(*(a1 + 80) + 16))();
  }

  else
  {
LABEL_14:
    v11 = *(a1 + 56);
    if (v11)
    {
      v12 = *(a1 + 64);
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_10006F320;
      v16[3] = &unk_1002755F8;
      v17 = v11;
      v18 = *(a1 + 72);
      [v12 enumerateKeysAndObjectsUsingBlock:v16];
    }

    v13 = *(a1 + 72);
    v14 = *(a1 + 80);
    if (v13)
    {
      v15 = [v13 copy];
      (*(v14 + 16))(v14, v15, 0, 0);
    }

    else
    {
      (*(v14 + 16))(*(a1 + 80), *(a1 + 64), 0, 0);
    }
  }
}

void sub_1001A4414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001A4434(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = sub_100003898(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 48);
      if (*(a1 + 56))
      {
        v8 = "";
      }

      else
      {
        v8 = " unknown";
      }

      v9 = *(a1 + 32);
      v10 = 134218498;
      v11 = v7;
      v12 = 2080;
      v13 = v8;
      v14 = 2112;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Updated target mapping for %lu %stargets:\n%@", &v10, 0x20u);
    }
  }

  (*(*(a1 + 40) + 16))();
}

void sub_1001A454C(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Will launch %@ to fetch %@", buf, 0x16u);
}

void sub_1001A45B4(uint64_t a1, uint64_t a2)
{
  if (_CPLSilentLogging != 1)
  {
    v4 = sub_100003898(a1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Trying to fetch records using a container operation", v7, 2u);
    }
  }

  v5 = +[NSAssertionHandler currentHandler];
  v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCloudKitSimpleRecordFetchTask.m"];
  [v5 handleFailureInMethod:a1 object:a2 file:v6 lineNumber:75 description:@"Trying to fetch records using a container operation"];

  abort();
}

void sub_1001A469C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (_CPLSilentLogging != 1)
  {
    v6 = sub_100003898(a1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10002B064(&_mh_execute_header, v7, v8, "%@ should not be expunged here", v9, v10, v11, v12, v15, v16);
    }
  }

  v13 = +[NSAssertionHandler currentHandler];
  v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCloudKitSimpleRecordFetchTask.m"];
  [v13 handleFailureInMethod:a1 object:a2 file:v14 lineNumber:525 description:{@"%@ should not be expunged here", a3}];

  abort();
}

void sub_1001A4778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (_CPLSilentLogging != 1)
  {
    v6 = sub_100003898(a1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10002B064(&_mh_execute_header, v7, v8, "Asked to fetch %@ with no proposed target", v9, v10, v11, v12, v15, v16);
    }
  }

  v13 = +[NSAssertionHandler currentHandler];
  v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCloudKitSimpleRecordFetchTask.m"];
  [v13 handleFailureInMethod:a1 object:a2 file:v14 lineNumber:601 description:{@"Asked to fetch %@ with no proposed target", a3}];

  abort();
}

void sub_1001A4854(uint64_t a1, uint64_t a2)
{
  if (_CPLSilentLogging != 1)
  {
    v4 = sub_100003898(a1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v10 = a2;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Impossible to find target for %@", buf, 0xCu);
    }
  }

  v5 = +[NSAssertionHandler currentHandler];
  v6 = *(a1 + 64);
  v7 = *(a1 + 48);
  v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCloudKitSimpleRecordFetchTask.m"];
  [v5 handleFailureInMethod:v6 object:v7 file:v8 lineNumber:726 description:{@"Impossible to find target for %@", a2}];

  abort();
}

void sub_1001A4958(void *a1, uint64_t a2, uint64_t a3)
{
  if (_CPLSilentLogging != 1)
  {
    v6 = sub_1000038DC(a1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [a1 realCloudScopedIdentifier];
      v8 = [a1 privateCloudScopedIdentifier];
      *buf = 138412546;
      v14 = v7;
      v15 = 2112;
      v16 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Unable to find CloudKit scope for %@ (fixing %@)", buf, 0x16u);
    }
  }

  v9 = +[NSAssertionHandler currentHandler];
  v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCloudKitFixUpSparseRecordTask.m"];
  v11 = [a1 realCloudScopedIdentifier];
  v12 = [a1 privateCloudScopedIdentifier];
  [v9 handleFailureInMethod:a2 object:a3 file:v10 lineNumber:66 description:{@"Unable to find CloudKit scope for %@ (fixing %@)", v11, v12}];

  abort();
}

void sub_1001A4AA0(uint64_t a1, uint64_t a2)
{
  if (_CPLSilentLogging != 1)
  {
    v4 = sub_1000038DC(a1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v13 = 0;
      sub_10000AF60(&_mh_execute_header, v5, v6, "We should have a destination CloudKit scope here", v7, v8, v9, v10, v13);
    }
  }

  v11 = +[NSAssertionHandler currentHandler];
  v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCloudKitFixUpSparseRecordTask.m"];
  [v11 handleFailureInMethod:a1 object:a2 file:v12 lineNumber:79 description:@"We should have a destination CloudKit scope here"];

  abort();
}

void sub_1001A4B64(uint64_t a1, uint64_t a2)
{
  if (_CPLSilentLogging != 1)
  {
    v4 = sub_1000038DC(a1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v13 = 0;
      sub_10000AF60(&_mh_execute_header, v5, v6, "We should have a destination scope identifier here", v7, v8, v9, v10, v13);
    }
  }

  v11 = +[NSAssertionHandler currentHandler];
  v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCloudKitFixUpSparseRecordTask.m"];
  [v11 handleFailureInMethod:a1 object:a2 file:v12 lineNumber:77 description:@"We should have a destination scope identifier here"];

  abort();
}

void sub_1001A4C3C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (_CPLSilentLogging != 1)
  {
    v6 = sub_1000038DC(a1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v12 = a3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Failed to transform a CK error to a CPL error: %@", buf, 0xCu);
    }
  }

  v7 = +[NSAssertionHandler currentHandler];
  v8 = *(a1 + 64);
  v9 = *a2;
  v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCloudKitFixUpSparseRecordTask.m"];
  [v7 handleFailureInMethod:v8 object:v9 file:v10 lineNumber:91 description:{@"Failed to transform a CK error to a CPL error: %@", a3}];

  abort();
}

void sub_1001A4D30(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (!v9)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v12 = sub_100003920(0);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [v8 rootRecord];
        *buf = 138412290;
        v22 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Fetched share metadata root record: %@", buf, 0xCu);
      }
    }

    v14 = a1[4];
    v15 = a1[5];
    v20 = 0;
    v16 = [v14 _scopeChangeFromShareMetadata:v8 currentUserID:v15 error:&v20];
    v17 = v20;
    v11 = v20;
    v18 = *(a1[7] + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = v16;

    if (!*(*(a1[7] + 8) + 40))
    {
      objc_storeStrong((*(a1[6] + 8) + 40), v17);
    }

    goto LABEL_11;
  }

  objc_storeStrong((*(a1[6] + 8) + 40), a4);
  if ((_CPLSilentLogging & 1) == 0)
  {
    v11 = sub_100003920(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v22 = v9;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Error fetching metadata: %@", buf, 0xCu);
    }

LABEL_11:
  }
}

uint64_t sub_1001A4F2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a1 & 1) == 0)
  {
    v5 = sub_100003920(a1);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(*(*(a2 + 56) + 8) + 40);
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Fetched shared scope: %@", &v8, 0xCu);
    }
  }

  return (*(*(*a3 + 280) + 16))();
}

void sub_1001A5018(uint64_t a1)
{
  v2 = sub_100003920(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = 138412290;
    v4 = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Scope %@ has no share after identification - ignoring", &v3, 0xCu);
  }
}

void *sub_1001A50BC(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = a1[8];
    if (v4)
    {
      v5 = [v4 groupNameForGroupName:v3];
    }

    else
    {
      v5 = v3;
    }

    a1 = v5;
  }

  return a1;
}

void sub_1001A5128(NSObject *a1)
{
  v2 = a1;
  v3 = [(objc_class *)a1[4].isa opened];
  if (v3)
  {
    isa = v2[4].isa;
    if (isa[19] != 3)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v9 = sub_1000770DC(isa);
        if (sub_10000FABC(v9))
        {
          LOWORD(v17) = 0;
          sub_1000033F8();
          _os_log_impl(v10, v11, v12, v13, v14, 2u);
        }

        isa = v2[4].isa;
      }

      v15 = [isa abstractObject];
      v16 = [v15 engineLibrary];
      v2 = [v16 scheduler];

      [v2 noteQuotaHasChanged];
      goto LABEL_15;
    }

    if (_CPLSilentLogging)
    {
      return;
    }

    v5 = sub_1000770DC(isa);
    if (!sub_10000FAE0(v5))
    {
      goto LABEL_15;
    }

    v18 = 0;
    v6 = "Features have changed but user has logged off iCloud";
    v7 = &v18;
    goto LABEL_9;
  }

  if (_CPLSilentLogging)
  {
    return;
  }

  v8 = sub_1000770DC(v3);
  if (sub_10000FAE0(v8))
  {
    *buf = 0;
    v6 = "Features have changed but engine is closed";
    v7 = buf;
LABEL_9:
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, v6, v7, 2u);
  }

LABEL_15:
}

void sub_1001A5278(uint64_t a1)
{
  v3 = *(*(a1 + 32) + 256);
  if (*(a1 + 48) == 1)
  {
    if (v3)
    {
      if (_CPLSilentLogging)
      {
        return;
      }

      v4 = sub_1000770DC(a1);
      if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_21;
      }

      *v24 = 0;
      v5 = "Attempting to set significant work pending, when we were already marked as pending significant work";
LABEL_20:
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, v5, v24, 2u);
LABEL_21:

      return;
    }

    if ((_CPLSilentLogging & 1) == 0)
    {
      v15 = sub_1000770DC(a1);
      if (sub_10000FABC(v15))
      {
        *v24 = 0;
        sub_1000033F8();
        _os_log_impl(v16, v17, v18, v19, v20, 2u);
      }
    }

    v21 = objc_alloc_init(NSDate);
    v22 = *(a1 + 32);
    v23 = *(v22 + 256);
    *(v22 + 256) = v21;

    [*(a1 + 40) pushSignificantWorkIsPending];
  }

  else
  {
    if (!v3)
    {
      if (_CPLSilentLogging)
      {
        return;
      }

      v4 = sub_1000770DC(a1);
      if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_21;
      }

      *v24 = 0;
      v5 = "Attempting to set not pending significant work when we were already marked as not pending significant work";
      goto LABEL_20;
    }

    if ((_CPLSilentLogging & 1) == 0)
    {
      v6 = sub_1000770DC(a1);
      if (sub_10000FABC(v6))
      {
        [*(*(a1 + 32) + 256) timeIntervalSinceNow];
        *v24 = 134217984;
        *&v24[4] = -v7;
        sub_1000033F8();
        _os_log_impl(v8, v9, v10, v11, v12, 0xCu);
      }
    }

    [*(a1 + 40) popSignificantWorkIsPending];
    v13 = *(a1 + 32);
    v14 = *(v13 + 256);
    *(v13 + 256) = 0;
  }
}

uint64_t sub_1001A5700(uint64_t a1)
{
  v3 = *(a1 + 32);
  if (!v3[14])
  {
    goto LABEL_21;
  }

  if (*(a1 + 64) != v3[15])
  {
    goto LABEL_21;
  }

  v4 = [v3 opened];
  if (!v4)
  {
    goto LABEL_21;
  }

  if (*(a1 + 40))
  {
    if (_CPLSilentLogging)
    {
      goto LABEL_21;
    }

    v5 = sub_1000770DC(v4);
    if (!sub_100003448(v5))
    {
      goto LABEL_20;
    }

    sub_10000343C();
    sub_100021D44();
    v11 = 12;
    goto LABEL_8;
  }

  if (*(a1 + 48))
  {
    if (os_variant_has_internal_content())
    {
      v12 = +[NSUserDefaults standardUserDefaults];
      v1 = [v12 objectForKey:@"CPLWalrusEnabled"];
    }

    else
    {
      v1 = 0;
    }

    [*(a1 + 32) _updateStateWithAccountInfo:*(a1 + 48) walrusEnabledDefault:v1];
    [*(a1 + 32) _updateStateWithAccountStatus:*(a1 + 72)];
    v14 = [*(a1 + 32) abstractObject];
    v15 = [v14 engineLibrary];
    if ([*(a1 + 48) hasValidCredentials])
    {
      v16 = [*(a1 + 48) needsToVerifyTerms];
    }

    else
    {
      v16 = 1;
    }

    [v15 setICloudLibraryClientIsNotAuthenticated:v16];

    v17 = +[NSDate date];
    v18 = *(a1 + 32);
    v19 = *(v18 + 160);
    *(v18 + 160) = v17;

    objc_storeStrong((*(a1 + 32) + 144), *(a1 + 48));
    *(*(a1 + 32) + 152) = *(a1 + 72);
    goto LABEL_20;
  }

  if (_CPLSilentLogging)
  {
    goto LABEL_21;
  }

  v13 = sub_1000770DC(v4);
  if (sub_100003448(v13))
  {
    sub_100021D44();
    v11 = 2;
LABEL_8:
    _os_log_impl(v6, v7, v8, v9, v10, v11);
  }

LABEL_20:

LABEL_21:
  result = *(a1 + 56);
  if (result)
  {
    return (*(result + 16))(result);
  }

  return result;
}

void sub_1001A5D20(void **a1, void *a2)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = sub_1000770DC(a1);
    if (sub_10000FABC(v4))
    {
      LOWORD(v13) = 0;
      sub_1000033F8();
      _os_log_impl(v5, v6, v7, v8, v9, 2u);
    }

    a2 = *a1;
  }

  v10 = [a2 abstractObject];
  v11 = [v10 engineLibrary];
  v12 = [v11 scheduler];
  [v12 noteServerMightBeAvailableNow];
}

void sub_1001A5DF8(void *a1)
{
  v1 = sub_1001A50BC(a1, @"Exit Status Feedback");
  sub_1000034F4(v1);
}

void sub_1001A5E48(void *a1)
{
  v1 = sub_1001A50BC(a1, @"Initial Upload");
  sub_1000034F4(v1);
}

void sub_1001A5E98(void *a1)
{
  v1 = sub_1001A50BC(a1, @"Reset sync");
  sub_1000034F4(v1);
}

void sub_1001A5EE8(void *a1)
{
  v1 = sub_1001A50BC(a1, @"Initial Download");
  sub_1000034F4(v1);
}

void sub_1001A5F38(void *a1)
{
  v1 = sub_1001A50BC(a1, @"Thumbnails Prefetch");
  sub_1000034F4(v1);
}

void sub_1001A5F88(void *a1)
{
  v1 = sub_1001A50BC(a1, @"Setting Up Library");
  sub_1000034F4(v1);
}

void sub_1001A5FD8(void *a1)
{
  v1 = sub_1001A50BC(a1, @"Sending Feedback");
  sub_1000034F4(v1);
}

void sub_1001A6028(void *a1)
{
  v1 = sub_1001A50BC(a1, @"Deleting Zone");
  sub_1000034F4(v1);
}

void sub_1001A6078(void *a1)
{
  v1 = sub_1001A50BC(a1, @"Updating Zone");
  sub_1000034F4(v1);
}

void sub_1001A60C8(void *a1)
{
  v1 = sub_1001A50BC(a1, @"Refreshing Zone");
  sub_1000034F4(v1);
}

void sub_1001A6118(void *a1)
{
  v1 = sub_1001A50BC(a1, @"Checking Library State");
  sub_1000034F4(v1);
}

void sub_1001A6168(void *a1)
{
  v1 = sub_1001A50BC(a1, @"Changes Upload");
  sub_1000034F4(v1);
}

void sub_1001A61B8(void *a1)
{
  v1 = sub_1001A50BC(a1, @"Changes Download");
  sub_1000034F4(v1);
}

void sub_1001A6208(void *a1)
{
  v1 = sub_1001A50BC(a1, @"Compute State Upload");
  sub_1000034F4(v1);
}

void sub_1001A6258(void *a1)
{
  v1 = sub_1001A50BC(a1, @"Compute State Download");
  sub_1000034F4(v1);
}

void sub_1001A62A8(void *a1)
{
  v1 = sub_1001A50BC(a1, @"Compute State Download Prefetch");
  sub_1000034F4(v1);
}

void sub_1001A62F8(void *a1)
{
  v1 = sub_1001A50BC(a1, @"Sparse Records Fix-Up");
  sub_1000034F4(v1);
}

void sub_1001A6348(void *a1)
{
  v1 = sub_1001A50BC(a1, @"Reshare shadowing records");
  sub_1000034F4(v1);
}

void sub_1001A6398(void *a1)
{
  v1 = sub_1001A50BC(a1, @"Clean-up Staged Zone");
  sub_1000034F4(v1);
}

void sub_1001A63E8(void *a1)
{
  v1 = sub_1001A50BC(a1, @"Thumbnails Download");
  sub_1000034F4(v1);
}

void sub_1001A6438(void *a1, void *a2, void *a3)
{
  v4 = sub_1001A50BC(a1, a2);
  [a3 setName:v4];
}

void sub_1001A6474(void *a1)
{
  v1 = sub_1001A50BC(a1, @"Photo Analysis");
  sub_1000034F4(v1);
}

void sub_1001A64C4(void *a1)
{
  v1 = sub_1001A50BC(a1, @"Checking Resources For Pruning");
  sub_1000034F4(v1);
}

void sub_1001A6514(void *a1)
{
  v1 = sub_1001A50BC(a1, @"Publishing Moment Share");
  sub_1000034F4(v1);
}

void sub_1001A6564(void *a1)
{
  v1 = sub_1001A50BC(a1, @"Fetching Moment Share");
  sub_1000034F4(v1);
}

void sub_1001A65B4(void *a1)
{
  v1 = sub_1001A50BC(a1, @"Accepting Moment Share");
  sub_1000034F4(v1);
}

void sub_1001A6604(void *a1)
{
  v1 = sub_1001A50BC(a1, @"Publishing Library Share");
  sub_1000034F4(v1);
}

void sub_1001A6654(void *a1)
{
  v1 = sub_1001A50BC(a1, @"Fetching Library Share");
  sub_1000034F4(v1);
}

void sub_1001A66A4(void *a1)
{
  v1 = sub_1001A50BC(a1, @"Accepting Library Share");
  sub_1000034F4(v1);
}

void sub_1001A66F4(void *a1)
{
  v1 = sub_1001A50BC(a1, @"Looking For Shared Library Zone");
  sub_1000034F4(v1);
}

void sub_1001A6744(void *a1)
{
  v1 = sub_1001A50BC(a1, @"Cleaning Shared Library");
  sub_1000034F4(v1);
}

void sub_1001A6794(void *a1)
{
  v1 = sub_1001A50BC(a1, @"Exit Shared Library");
  sub_1000034F4(v1);
}

void sub_1001A67E4(void *a1)
{
  v1 = sub_1001A50BC(a1, @"Shared Library Ramp Check");
  sub_1000034F4(v1);
}

void sub_1001A6834(void *a1)
{
  v1 = sub_1001A50BC(a1, @"Querying User Identities");
  sub_1000034F4(v1);
}

void sub_1001A6884(void *a1)
{
  v1 = sub_1001A50BC(a1, @"Propagating Changes Between Zones");
  sub_1000034F4(v1);
}

void sub_1001A68FC(const char *a1, uint64_t a2)
{
  if (_CPLSilentLogging != 1)
  {
    v5 = __CPLGenericOSLogDomain();
    if (sub_1000033C0(v5))
    {
      v6 = NSStringFromSelector(a1);
      v11 = 138412290;
      v12 = v6;
      sub_1000139CC(&_mh_execute_header, v2, v7, "%@ was called too many times", &v11);
    }
  }

  v8 = +[NSAssertionHandler currentHandler];
  v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCloudKitTransport.m"];
  v10 = NSStringFromSelector(a1);
  [v8 handleFailureInMethod:a1 object:a2 file:v9 lineNumber:1587 description:{@"%@ was called too many times", v10}];

  abort();
}

id sub_1001A69FC(void **a1, void *a2)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = sub_1000770DC(a1);
    if (sub_10000FABC(v4))
    {
      LOWORD(v11) = 0;
      sub_1000033F8();
      _os_log_impl(v5, v6, v7, v8, v9, 2u);
    }

    a2 = *a1;
  }

  return [a2 _updateAccountInfoWithCompletionHandler:{0, v11}];
}

uint64_t sub_1001A6A78(uint64_t a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v2 = sub_1000770DC(a1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Not updating account info as it has been updated recently", v4, 2u);
    }
  }

  return (*(a1 + 16))(a1);
}

void sub_1001A6B04(uint64_t a1)
{
  v2 = sub_1000770DC(a1);
  if (sub_10000FAE0(v2))
  {
    sub_100080C88();
    _os_log_impl(v3, v4, v5, v6, v7, 0xCu);
  }
}

void sub_1001A6B98(void *a1, void *a2)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = sub_1000770DC(a1);
    if (sub_100003424(v5))
    {
      LOWORD(v15) = 0;
      sub_100013990();
      _os_log_impl(v6, v7, v8, v9, v10, 2u);
    }
  }

  v11 = [a1 abstractObject];
  v12 = [v11 engineLibrary];
  v13 = [v12 scheduler];

  [v13 enableSynchronizationWithReason:*a2];
  v14 = *a2;
  *a2 = 0;
}

id sub_1001A6C5C(uint64_t a1, void *a2)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = sub_1000770DC(a1);
    if (sub_100003424(v5))
    {
      LODWORD(v12) = 138412290;
      *(&v12 + 4) = a1;
      sub_100013990();
      _os_log_impl(v6, v7, v8, v9, v10, 0xCu);
    }
  }

  return [a2 disableSynchronizationWithReason:{a1, v12}];
}

void sub_1001A6D18(uint64_t a1)
{
  v2 = sub_1000770DC(a1);
  if (sub_10000FAE0(v2))
  {
    sub_100003460();
    sub_100080C88();
    _os_log_impl(v3, v4, v5, v6, v7, 0x16u);
  }
}

uint64_t sub_1001A6DBC(void *a1, uint64_t a2, void *a3)
{
  [a1 disableSynchronizationWithReason:a2];
  [a1 enableSynchronizationWithReason:*a3];
  return _CPLSilentLogging;
}

void sub_1001A6E00(uint64_t a1, uint64_t a2)
{
  if (_CPLSilentLogging != 1)
  {
    v5 = __CPLGenericOSLogDomain();
    if (sub_1000033C0(v5))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "expect error", v8, 2u);
    }
  }

  v6 = +[NSAssertionHandler currentHandler];
  v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCloudKitTransport.m"];
  [v6 handleFailureInMethod:a1 object:a2 file:v7 lineNumber:1747 description:@"expect error"];

  abort();
}

uint64_t sub_1001A6EE0(uint64_t a1)
{
  if ((a1 & 1) == 0)
  {
    v2 = sub_1000770DC(a1);
    if (sub_10000FABC(v2))
    {
      sub_100003460();
      sub_1000033F8();
      _os_log_impl(v3, v4, v5, v6, v7, 0x16u);
    }
  }

  sub_100021D84();
  return v8();
}

void sub_1001A6F8C(uint64_t a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v2 = sub_1000770DC(a1);
    if (sub_10000FAE0(v2))
    {
      sub_100003460();
      sub_100080C88();
      _os_log_impl(v3, v4, v5, v6, v7, 0x16u);
    }
  }
}

uint64_t sub_1001A7038(void **a1, id *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_100084A7C(CPLCloudKitResourceKeys, *a1);
  if (!v7)
  {
    return 1;
  }

  v8 = v7;
  v9 = *a2;
  v10 = [*(a3 + 40) zoneID];
  v11 = [v9 scopeIdentifierFromZoneID:v10];

  v12 = [*(a3 + 40) recordName];
  v13 = [[CPLScopedIdentifier alloc] initWithScopeIdentifier:v11 identifier:v12];
  v14 = objc_alloc_init(CPLResourceIdentity);
  v15 = [CKAsset cplFingerPrintForSignature:*(a3 + 72)];
  [v14 setFingerPrint:v15];

  v16 = [*a2 _tempDestinationURLForRecoveredDataWithTempFolderURL:*(a3 + 64)];
  [v14 setFileURL:v16];
  v17 = [[CPLResource alloc] initWithResourceIdentity:v14 itemScopedIdentifier:v13 resourceType:v8];
  v18 = [*a2 engineLibrary];
  sub_100080C6C();
  *(a4 + 8) = 3221225472;
  *(a4 + 16) = sub_10007ED1C;
  *(a4 + 24) = &unk_100275D60;
  *(a4 + 32) = *a2;
  *(a4 + 48) = *(a3 + 80);
  *(a4 + 56) = *(a3 + 88);
  *(a4 + 40) = v16;
  v19 = v16;
  [v18 provideCloudResource:v17 completionHandler:a4];

  return 0;
}

void sub_1001A7218(id *a1, id *a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  v8 = [*a2 zoneID];
  v9 = [v7 scopeIdentifierFromZoneID:v8];

  v10 = [*a1 engineLibrary];
  sub_100080C6C();
  *(a3 + 8) = 3221225472;
  *(a3 + 16) = sub_10007E634;
  *(a3 + 24) = &unk_100275CC0;
  *(a3 + 32) = *a1;
  *(a3 + 56) = *(a4 + 80);
  *(a3 + 40) = *(a4 + 64);
  *(a3 + 48) = v9;
  v11 = v9;
  [v10 provideScopeChangeForScopeWithIdentifier:v11 completionHandler:a3];
}

uint64_t sub_1001A7310(uint64_t a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v2 = sub_1000770DC(a1);
    if (sub_100003448(v2))
    {
      sub_100003460();
      sub_100021D44();
      _os_log_impl(v3, v4, v5, v6, v7, 0x16u);
    }
  }

  sub_100021D84();
  return v8();
}

uint64_t sub_1001A73D8(uint64_t a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v2 = sub_1000770DC(a1);
    if (sub_100003448(v2))
    {
      sub_100021D44();
      _os_log_impl(v3, v4, v5, v6, v7, 0xCu);
    }
  }

  sub_100021D84();
  return v10(v8, v9);
}

uint64_t sub_1001A7498(uint64_t a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v2 = sub_1000770DC(a1);
    if (sub_100003448(v2))
    {
      sub_100003460();
      sub_100021D44();
      _os_log_impl(v3, v4, v5, v6, v7, 0x16u);
    }
  }

  sub_100021D84();
  return v8();
}

uint64_t sub_1001A7560(uint64_t a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v2 = sub_1000770DC(a1);
    if (sub_100003448(v2))
    {
      sub_10000343C();
      sub_100021D44();
      _os_log_impl(v3, v4, v5, v6, v7, 0xCu);
    }
  }

  sub_100021D84();
  return v8();
}

uint64_t sub_1001A7620(uint64_t a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v2 = sub_1000770DC(a1);
    if (sub_100003448(v2))
    {
      sub_100021D44();
      _os_log_impl(v3, v4, v5, v6, v7, 0xCu);
    }
  }

  sub_100021D84();
  return v10(v8, v9);
}

void sub_1001A76E0(uint64_t a1, void *a2)
{
  if (_CPLSilentLogging != 1)
  {
    v5 = __CPLGenericOSLogDomain();
    if (sub_1000033C0(v5))
    {
      v7 = *a2;
      v12 = 138412290;
      v13 = v7;
      sub_1000139CC(&_mh_execute_header, v2, v6, "Engine was unable to set a file URL on recovered resource %@", &v12);
    }
  }

  v8 = +[NSAssertionHandler currentHandler];
  v9 = *(a1 + 72);
  v10 = *(a1 + 40);
  v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCloudKitTransport.m"];
  [v8 handleFailureInMethod:v9 object:v10 file:v11 lineNumber:2180 description:{@"Engine was unable to set a file URL on recovered resource %@", *a2}];

  abort();
}

id sub_1001A77C8(void *a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = sub_1000770DC(a1);
    if (sub_10000FABC(v3))
    {
      [a1 cplOperationClassDescription];
      *(&v10 + 4) = LODWORD(v10) = 138412290;
      sub_1000033F8();
      _os_log_impl(v4, v5, v6, v7, v8, 0xCu);
    }
  }

  return [a1 cancel];
}

void sub_1001A7890(void *a1, void *a2, void *a3)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = sub_1000770DC(a1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "CloudKit has wiped the container (or the encryption keys have been reset) - will fail all future CK operations until engine is totally reset", v10, 2u);
    }
  }

  *a1 = CPLErrorRetryAfterDateKey;
  v7 = [NSDate dateWithTimeIntervalSinceNow:86400.0];
  *a2 = v7;
  v8 = [NSDictionary dictionaryWithObjects:a2 forKeys:a1 count:1];
  v9 = [CPLErrors cplErrorWithCode:1011 underlyingError:0 userInfo:v8 description:@"Container has been reset - engine will need to wiped"];
  [a3 setErrorForAllOperations:v9];
}

id sub_1001A79B8(void *a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = sub_1000770DC(a1);
    if (sub_10000FABC(v3))
    {
      LOWORD(v10) = 0;
      sub_1000033F8();
      _os_log_impl(v4, v5, v6, v7, v8, 2u);
    }
  }

  return [a1 _noteContainerHasBeenWiped];
}

void sub_1001A7A2C(uint64_t a1, void *a2)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = sub_1000770DC(a1);
    if (sub_100003424(v5))
    {
      LOWORD(v14[0]) = 0;
      sub_100013990();
      _os_log_impl(v6, v7, v8, v9, v10, 2u);
    }
  }

  v11 = *(a1 + 8);
  sub_100080C6C();
  a2[1] = 3221225472;
  a2[2] = sub_10007FC08;
  a2[3] = &unk_100271F40;
  a2[4] = a1;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100002AD4;
  v14[3] = &unk_100271E98;
  v15 = a2;
  v12 = v11;
  v13 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v14);
  dispatch_async(v12, v13);
}

void sub_1001A7B60(uint64_t a1, uint64_t *a2, void *a3)
{
  if (_CPLSilentLogging != 1)
  {
    v6 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = *a3;
      v13 = 138412290;
      v14 = v8;
      sub_1000139CC(&_mh_execute_header, v6, v7, "A helper for %@ has already been registered", &v13);
    }
  }

  v9 = +[NSAssertionHandler currentHandler];
  v10 = *(a1 + 56);
  v11 = *a2;
  v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCloudKitTransport.m"];
  [v9 handleFailureInMethod:v10 object:v11 file:v12 lineNumber:2443 description:{@"A helper for %@ has already been registered", *a3}];

  abort();
}

void sub_1001A7C54(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000770DC(a1);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = [*(*a1 + a2) path];
    v8 = 138412546;
    v9 = v7;
    v10 = 2112;
    v11 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Failed to create temp folder %@: %@", &v8, 0x16u);
  }
}

uint64_t sub_1001A7D2C(uint64_t a1, uint64_t a2)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = sub_1000770DC(a1);
    if (sub_1000033C0(v4))
    {
      sub_100003460();
      v8 = a2;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Failed to create temp destination %{public}@: %@", v7, 0x16u);
    }
  }

  sub_100021D84();
  return v5();
}

void sub_1001A7DFC(uint64_t a1, uint64_t a2)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = sub_1000770DC(a1);
    if (sub_100003448(v4))
    {
      sub_10000343C();
      sub_100021D44();
      _os_log_impl(v5, v6, v7, v8, v9, 0xCu);
    }
  }

  v10 = *(a2 + 48);
  v11 = +[CPLErrors unknownError];
  (*(v10 + 16))(v10, 0, v11);
}

void sub_1001A823C(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [v5 cloudResource];
  [*(a1 + 32) addResource:v7];
  v8 = [*(a1 + 40) _recordIDForResourcesWithItemScopedIdentifier:v6];
  [*(a1 + 48) setObject:v6 forKeyedSubscript:v8];

  [*(a1 + 56) setObject:v5 forKeyedSubscript:v8];
  v9 = [v5 cloudRecord];

  if (!v9)
  {
    v11 = *(*(a1 + 40) + 320);
    v12 = [v7 itemScopedIdentifier];
    v13 = [v11 objectForKeyedSubscript:v12];

    if (v13)
    {
      [v5 associateCloudResource:v7 ofRecord:v13];
    }
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v14 = sub_100003964(v10);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v15 = sub_1001A8CE0(*(a1 + 64));
      v16 = [v5 cloudRecord];
      v17 = v16;
      v18 = @"unknown record";
      v19 = 138412802;
      v20 = v7;
      if (v16)
      {
        v18 = v16;
      }

      v21 = 2112;
      v22 = v15;
      v23 = 2112;
      v24 = v18;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "Downloading %@ from %@ (from %@)", &v19, 0x20u);
    }
  }
}

void sub_1001A8428(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:*(a1 + 40)];
  v3 = [*(*(a1 + 48) + 272) cloudResourceForRecordWithScopedIdentifier:v2];
  v4 = v3;
  if (v3)
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000824C4;
    v14[3] = &unk_1002721A0;
    v5 = *(a1 + 48);
    v15 = *(a1 + 56);
    v16 = v4;
    v17 = *(a1 + 64);
    [v5 updateContextWithBlock:v14];
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = sub_100003964(v3);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v8 = *(a1 + 64);
      v7 = *(a1 + 72);
      *buf = 138412546;
      v19 = v7;
      v20 = 2112;
      v21 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Got asset %@ - %@", buf, 0x16u);
    }
  }

  v9 = *(a1 + 64);
  if (v9)
  {
    v10 = [*(a1 + 48) lastOperationRequestUUIDs];
    v11 = [*(*(a1 + 48) + 272) resourceTypeDescription];
    v12 = [CPLCloudKitErrors CPLErrorForCloudKitError:v9 withRequestUUIDs:v10 description:@"Failed to download %@ for %@", v11, v2];

    [*(*(a1 + 48) + 272) resourceWithRecordScopedIdentifier:v2 didFailToDownloadWithError:v12];
  }

  else
  {
    [*(a1 + 80) setDownloadedItemCount:{objc_msgSend(*(a1 + 80), "downloadedItemCount") + 1}];
    [*(a1 + 80) setDownloadedSize:{objc_msgSend(*(a1 + 72), "size") + objc_msgSend(*(a1 + 80), "downloadedSize")}];
    if (*(a1 + 104))
    {
      [*(a1 + 80) setTranscodedItemCount:{objc_msgSend(*(a1 + 80), "transcodedItemCount") + 1}];
      v13 = *(a1 + 104);
    }

    else
    {
      v13 = 0;
    }

    [*(*(a1 + 48) + 272) resourceWithRecordScopedIdentifier:v2 didDownloadCKAsset:*(a1 + 72) withOperationType:*(*(a1 + 48) + 280) transcoderVersion:v13 withFingerPrint:*(a1 + 88) andFileUTI:*(a1 + 96)];
  }
}

void sub_1001A86E4(uint64_t a1, uint64_t a2)
{
  if (_CPLSilentLogging != 1)
  {
    v5 = sub_100003964(a1);
    if (sub_1000033C0(v5))
    {
      v14 = 0;
      sub_10000AF60(&_mh_execute_header, v6, v7, "missing error parameter", v8, v9, v10, v11, v14);
    }
  }

  v12 = +[NSAssertionHandler currentHandler];
  v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCloudKitResourcesDownloadTask.m"];
  [v12 handleFailureInMethod:a1 object:a2 file:v13 lineNumber:150 description:@"missing error parameter"];

  abort();
}

void sub_1001A87A0(uint64_t a1, uint64_t a2)
{
  if (_CPLSilentLogging != 1)
  {
    v5 = sub_100003964(a1);
    if (sub_1000033C0(v5))
    {
      v14 = 0;
      sub_10000AF60(&_mh_execute_header, v6, v7, "We should at least be able to download the first task", v8, v9, v10, v11, v14);
    }
  }

  v12 = +[NSAssertionHandler currentHandler];
  v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCloudKitResourcesDownloadTask.m"];
  [v12 handleFailureInMethod:a1 object:a2 file:v13 lineNumber:381 description:@"We should at least be able to download the first task"];

  abort();
}

void sub_1001A885C(uint64_t a1, uint64_t a2)
{
  if (_CPLSilentLogging != 1)
  {
    v5 = sub_100003964(a1);
    if (sub_1000033C0(v5))
    {
      v14 = 0;
      sub_10000AF60(&_mh_execute_header, v6, v7, "Did not manage to produce a group of tasks to download", v8, v9, v10, v11, v14);
    }
  }

  v12 = +[NSAssertionHandler currentHandler];
  v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCloudKitResourcesDownloadTask.m"];
  [v12 handleFailureInMethod:a1 object:a2 file:v13 lineNumber:406 description:@"Did not manage to produce a group of tasks to download"];

  abort();
}

void sub_1001A8918(uint64_t a1, uint64_t *a2)
{
  if (_CPLSilentLogging != 1)
  {
    v5 = sub_100003964(a1);
    if (sub_1000033C0(v5))
    {
      v16 = 0;
      sub_10000AF60(&_mh_execute_header, v6, v7, "invalid scope", v8, v9, v10, v11, v16);
    }
  }

  v12 = +[NSAssertionHandler currentHandler];
  v13 = *(a1 + 40);
  v14 = *a2;
  v15 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCloudKitResourcesDownloadTask.m"];
  [v12 handleFailureInMethod:v13 object:v14 file:v15 lineNumber:423 description:@"invalid scope"];

  abort();
}

void sub_1001A89DC(void *a1, uint64_t a2, uint64_t a3)
{
  if (_CPLSilentLogging != 1)
  {
    v6 = sub_100003964(a1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v18 = [a1 resource];
      sub_10002B0D4(&_mh_execute_header, v7, v8, "%@ (%@) has no cloud resource to download", v9, v10, v11, v12, v16, v17);
    }
  }

  v13 = +[NSAssertionHandler currentHandler];
  v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCloudKitResourcesDownloadTask.m"];
  v15 = [a1 resource];
  [v13 handleFailureInMethod:a2 object:a3 file:v14 lineNumber:477 description:{@"%@ (%@) has no cloud resource to download", a1, v15}];

  abort();
}

void sub_1001A8AEC(void *a1, uint64_t a2, uint64_t a3)
{
  if (_CPLSilentLogging != 1)
  {
    v6 = sub_100003964(a1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v18 = [a1 resource];
      sub_10002B0D4(&_mh_execute_header, v7, v8, "%@ (%@) has no cloud resource to download", v9, v10, v11, v12, v16, v17);
    }
  }

  v13 = +[NSAssertionHandler currentHandler];
  v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCloudKitResourcesDownloadTask.m"];
  v15 = [a1 resource];
  [v13 handleFailureInMethod:a2 object:a3 file:v14 lineNumber:696 description:{@"%@ (%@) has no cloud resource to download", a1, v15}];

  abort();
}

void *sub_1001A8BFC(void *a1, void *a2)
{
  v2 = a1;
  if (a1)
  {
    v4 = [a1 _allKeys];
    if ([a2 requiresStableHashForResourceType:v2[1]])
    {
      v5 = [v4 arrayByAddingObject:v2[8]];
    }

    else
    {
      v5 = v4;
    }

    v2 = v5;
  }

  return v2;
}

uint64_t sub_1001A8C80(uint64_t result)
{
  if (result)
  {
    return *(result + 32);
  }

  return result;
}

uint64_t sub_1001A8C8C(uint64_t result)
{
  if (result)
  {
    return *(result + 40);
  }

  return result;
}

uint64_t sub_1001A8C98(uint64_t result)
{
  if (result)
  {
    return *(result + 48);
  }

  return result;
}

uint64_t sub_1001A8CA4(uint64_t result)
{
  if (result)
  {
    return *(result + 56);
  }

  return result;
}

uint64_t sub_1001A8CB0(uint64_t result)
{
  if (result)
  {
    return *(result + 64);
  }

  return result;
}

uint64_t sub_1001A8CBC(uint64_t result)
{
  if (result)
  {
    return *(result + 72);
  }

  return result;
}

uint64_t sub_1001A8CC8(uint64_t result)
{
  if (result)
  {
    return *(result + 80);
  }

  return result;
}

uint64_t sub_1001A8CD4(uint64_t result)
{
  if (result)
  {
    return *(result + 88);
  }

  return result;
}

uint64_t sub_1001A8CE0(uint64_t result)
{
  if (result)
  {
    return *(result + 96);
  }

  return result;
}

uint64_t sub_1001A8CEC(uint64_t result)
{
  if (result)
  {
    return *(result + 104);
  }

  return result;
}

void sub_1001A8D0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (_CPLSilentLogging != 1)
  {
    v6 = sub_1000039A8(a1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10002B064(&_mh_execute_header, v7, v8, "Trying to create sparse private records for a non supported record class %@", v9, v10, v11, v12, v15, v16);
    }
  }

  v13 = +[NSAssertionHandler currentHandler];
  v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCloudKitSimpleRecordUpdateTask.m"];
  [v13 handleFailureInMethod:a1 object:a2 file:v14 lineNumber:49 description:{@"Trying to create sparse private records for a non supported record class %@", a3}];

  abort();
}

void sub_1001A8DE8(uint64_t a1, uint64_t a2)
{
  if (_CPLSilentLogging != 1)
  {
    v4 = sub_1000039A8(a1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Missing shared zone identification", v7, 2u);
    }
  }

  v5 = +[NSAssertionHandler currentHandler];
  v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCloudKitSimpleRecordUpdateTask.m"];
  [v5 handleFailureInMethod:a1 object:a2 file:v6 lineNumber:55 description:@"Missing shared zone identification"];

  abort();
}

void sub_1001A8ED0(uint64_t *a1, void *a2)
{
  v4 = sub_1000039A8(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *a1;
    v6 = [a2 recordType];
    v7 = 138412546;
    v8 = v5;
    v9 = 2112;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Unexpected record type for shared record. Expected %@ and got %@", &v7, 0x16u);
  }
}

void sub_1001A8FA4(uint64_t a1, uint64_t a2)
{
  if (_CPLSilentLogging != 1)
  {
    v4 = sub_1000039A8(a1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v10 = a2;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Missing private record ID matching %@", buf, 0xCu);
    }
  }

  v5 = +[NSAssertionHandler currentHandler];
  v6 = *(a1 + 104);
  v7 = *(a1 + 48);
  v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCloudKitSimpleRecordUpdateTask.m"];
  [v5 handleFailureInMethod:v6 object:v7 file:v8 lineNumber:74 description:{@"Missing private record ID matching %@", a2}];

  abort();
}

void sub_1001A9094(NSObject *a1, uint8_t *a2, uint64_t a3, void *a4)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    *a2 = 138412290;
    *a4 = a3;
    _os_log_impl(&_mh_execute_header, a1, OS_LOG_TYPE_ERROR, "Error deserializing base CKRecord: %@", a2, 0xCu);
  }
}

void sub_1001A910C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (_CPLSilentLogging != 1)
  {
    v6 = sub_1000039A8(a1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10002B064(&_mh_execute_header, v7, v8, "Missing target for %@", v9, v10, v11, v12, v15, v16);
    }
  }

  v13 = +[NSAssertionHandler currentHandler];
  v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCloudKitSimpleRecordUpdateTask.m"];
  [v13 handleFailureInMethod:a1 object:a2 file:v14 lineNumber:366 description:{@"Missing target for %@", a3}];

  abort();
}

void sub_1001A9210(uint64_t a1, uint64_t a2)
{
  if (_CPLSilentLogging != 1)
  {
    v5 = __CPLGenericOSLogDomain();
    if (sub_1000033C0(v5))
    {
      sub_10000348C(&_mh_execute_header, v6, v7, "Root record for %@ has not type", v8, v9, v10, v11, v14, v15);
    }
  }

  v12 = +[NSAssertionHandler currentHandler];
  v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCloudKitZoneIdentification.m"];
  [v12 handleFailureInMethod:a2 object:a1 file:v13 lineNumber:154 description:{@"Root record for %@ has not type", *(a1 + 32)}];

  abort();
}

void sub_1001A92E4(uint64_t a1, uint64_t a2)
{
  if (_CPLSilentLogging != 1)
  {
    v5 = __CPLGenericOSLogDomain();
    if (sub_1000033C0(v5))
    {
      sub_10000348C(&_mh_execute_header, v6, v7, "Root record for %@ has not type", v8, v9, v10, v11, v14, v15);
    }
  }

  v12 = +[NSAssertionHandler currentHandler];
  v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCloudKitZoneIdentification.m"];
  [v12 handleFailureInMethod:a2 object:a1 file:v13 lineNumber:191 description:{@"Root record for %@ has not type", *(a1 + 32)}];

  abort();
}

void sub_1001A93B8(uint64_t a1, uint64_t a2)
{
  if (_CPLSilentLogging != 1)
  {
    v5 = __CPLGenericOSLogDomain();
    if (sub_1000033C0(v5))
    {
      sub_10000348C(&_mh_execute_header, v6, v7, "Scope change for %@ should not be nil", v8, v9, v10, v11, v14, v15);
    }
  }

  v12 = +[NSAssertionHandler currentHandler];
  v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCloudKitZoneIdentification.m"];
  [v12 handleFailureInMethod:a2 object:a1 file:v13 lineNumber:163 description:{@"Scope change for %@ should not be nil", *(a1 + 32)}];

  abort();
}

void sub_1001A948C(uint64_t a1, uint64_t a2)
{
  if (_CPLSilentLogging != 1)
  {
    v5 = __CPLGenericOSLogDomain();
    if (sub_1000033C0(v5))
    {
      sub_10000348C(&_mh_execute_header, v6, v7, "Missing share types for %@", v8, v9, v10, v11, v14, v15);
    }
  }

  v12 = +[NSAssertionHandler currentHandler];
  v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCloudKitZoneIdentification.m"];
  [v12 handleFailureInMethod:a2 object:a1 file:v13 lineNumber:210 description:{@"Missing share types for %@", *(a1 + 32)}];

  abort();
}

void sub_1001A9560(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (_CPLSilentLogging != 1)
  {
    v7 = __CPLGenericOSLogDomain();
    if (sub_10002B0A8(v7))
    {
      sub_10002B0D4(&_mh_execute_header, v8, v9, "Invalid scope change %@ for %@", v10, v11, v12, v13, v16, v17);
    }
  }

  v14 = +[NSAssertionHandler currentHandler];
  v15 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCloudKitZoneIdentification.m"];
  [v14 handleFailureInMethod:a1 object:a2 file:v15 lineNumber:830 description:{@"Invalid scope change %@ for %@", a3, a2}];

  abort();
}

void sub_1001A9654(void *a1, uint64_t a2, uint64_t a3)
{
  if (_CPLSilentLogging != 1)
  {
    v6 = __CPLGenericOSLogDomain();
    if (sub_10002B0A8(v6))
    {
      v7 = [a1 engineScope];
      v8 = objc_opt_class();
      v9 = sub_10008F0A4(v8);
      sub_10002B0D4(&_mh_execute_header, v10, v11, "Unexpected class for %@: %@", v12, v13, v14, v15, v19, v20);
    }
  }

  v16 = +[NSAssertionHandler currentHandler];
  v17 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCloudKitZoneIdentification.m"];
  v18 = [a1 engineScope];
  [v16 handleFailureInMethod:a3 object:a1 file:v17 lineNumber:1021 description:{@"Unexpected class for %@: %@", v18, objc_opt_class()}];

  abort();
}

void sub_1001A9764(void *a1, uint64_t a2, uint64_t a3)
{
  if (_CPLSilentLogging != 1)
  {
    v6 = __CPLGenericOSLogDomain();
    if (sub_10002B0A8(v6))
    {
      v7 = [a1 engineScope];
      v8 = objc_opt_class();
      v9 = sub_10008F0A4(v8);
      sub_10002B0D4(&_mh_execute_header, v10, v11, "Unexpected class for %@: %@", v12, v13, v14, v15, v19, v20);
    }
  }

  v16 = +[NSAssertionHandler currentHandler];
  v17 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCloudKitZoneIdentification.m"];
  v18 = [a1 engineScope];
  [v16 handleFailureInMethod:a3 object:a1 file:v17 lineNumber:1054 description:{@"Unexpected class for %@: %@", v18, objc_opt_class()}];

  abort();
}

void sub_1001A9874(void *a1, uint64_t a2, uint64_t a3)
{
  if (_CPLSilentLogging != 1)
  {
    v6 = __CPLGenericOSLogDomain();
    if (sub_10002B0A8(v6))
    {
      v7 = [a1 engineScope];
      v8 = objc_opt_class();
      v9 = sub_10008F0A4(v8);
      sub_10002B0D4(&_mh_execute_header, v10, v11, "Unexpected class for %@: %@", v12, v13, v14, v15, v19, v20);
    }
  }

  v16 = +[NSAssertionHandler currentHandler];
  v17 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCloudKitZoneIdentification.m"];
  v18 = [a1 engineScope];
  [v16 handleFailureInMethod:a3 object:a1 file:v17 lineNumber:1087 description:{@"Unexpected class for %@: %@", v18, objc_opt_class()}];

  abort();
}

void sub_1001A99AC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v13 = 0;
  v8 = [v7 removeItemAtURL:v6 error:&v13];
  v9 = v13;
  if ((v8 & 1) == 0)
  {
    v10 = [*(a1 + 32) cplIsFileDoesNotExistError:v9];
    if ((v10 & 1) == 0 && (_CPLSilentLogging & 1) == 0)
    {
      v11 = sub_100003A30(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = [v6 path];
        *buf = 138412802;
        v15 = v5;
        v16 = 2112;
        v17 = v12;
        v18 = 2112;
        v19 = v9;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "[CCSS] Failed to delete downloaded compute state %@ at %@: %@", buf, 0x20u);
      }
    }
  }
}

void sub_1001A9AF0(uint64_t a1)
{
  v2 = sub_100003A30(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v9) = 138412290;
    *(&v9 + 4) = a1;
    sub_1000119B0(&_mh_execute_header, v3, v4, "[CCSS] Ignoring expunged record %@", v5, v6, v7, v8, v9, DWORD2(v9));
  }
}

uint64_t sub_1001A9B84(uint64_t a1, char *a2)
{
  v3 = [*(a1 + 56) objectForKeyedSubscript:@"isExpunged"];
  v4 = [v3 BOOLValue];

  if (v4)
  {
    v5 = 0;
    result = 0;
    if (_CPLSilentLogging != 1)
    {
      return result;
    }
  }

  else
  {
    v5 = 1;
  }

  *a2 = v5;
  return 1;
}

void sub_1001A9C00(uint64_t a1)
{
  v2 = sub_100003A30(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = 138412546;
    v4 = @"resComputeStateData";
    v5 = 2112;
    v6 = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "[CCSS] %@ for %@ did not provide a file URL", &v3, 0x16u);
  }
}

void sub_1001A9CB8(uint64_t a1, uint64_t a2)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = sub_100003A30(a1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10000348C(&_mh_execute_header, v5, v6, "%@ should have a payload file", v7, v8, v9, v10, v15, v16);
    }
  }

  v11 = +[NSAssertionHandler currentHandler];
  v12 = *(a2 + 104);
  v13 = *(a2 + 48);
  v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCloudKitDownloadComputeStatesTask.m"];
  [v11 handleFailureInMethod:v12 object:v13 file:v14 lineNumber:177 description:{@"%@ should have a payload file", a1}];

  abort();
}

void sub_1001A9D94(uint64_t a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v2 = sub_100003A30(a1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v9) = 138412290;
      HIDWORD(v9) = a1;
      sub_1000119B0(&_mh_execute_header, v3, v4, "[CCSS] %@ has no record compute state", v5, v6, v7, v8, v9, HIDWORD(a1));
    }
  }
}

void sub_1001A9E38(uint64_t a1, void *a2)
{
  if (_CPLSilentLogging != 1)
  {
    v4 = sub_100003A30(a1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10000348C(&_mh_execute_header, v5, v6, "Failed to find scoped identifier for %@", v7, v8, v9, v10, v15, v16);
    }
  }

  v11 = +[NSAssertionHandler currentHandler];
  v12 = *(a1 + 104);
  v13 = *(a1 + 48);
  v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCloudKitDownloadComputeStatesTask.m"];
  [v11 handleFailureInMethod:v12 object:v13 file:v14 lineNumber:144 description:{@"Failed to find scoped identifier for %@", *a2}];

  abort();
}

void sub_1001A9F34(NSObject *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v11 = sub_100003A74(v9);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v24 = v8;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Upload for record %@ completed", buf, 0xCu);
      }
    }

    isa = a1[4].isa;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000930E8;
    v16[3] = &unk_100273DF8;
    v17 = v8;
    v13 = a1[5].isa;
    v14 = a1[4].isa;
    v18 = v13;
    v19 = v14;
    v20 = a1[6].isa;
    v21 = v10;
    v22 = a1[7].isa;
    [(objc_class *)isa dispatchAsync:v16];

    a1 = v17;
LABEL_10:

    goto LABEL_11;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v15 = sub_100003A74(v9);
    if (sub_10002B0A8(v15))
    {
      *buf = 138412546;
      v24 = v7;
      v25 = 2112;
      v26 = v10;
      _os_log_impl(&_mh_execute_header, a1, OS_LOG_TYPE_ERROR, "Failed to save %@: %@", buf, 0x16u);
    }

    goto LABEL_10;
  }

LABEL_11:
}

id sub_1001AA134(uint64_t a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v2 = sub_100003A74(a1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      if ((a1 - 1) > 3)
      {
        v3 = @"none";
      }

      else
      {
        v3 = off_100276638[a1 - 1];
      }

      *buf = 138412290;
      v9 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Simulating over quota for phase: %@", buf, 0xCu);
    }
  }

  if ((a1 - 1) > 3)
  {
    v4 = @"none";
  }

  else
  {
    v4 = off_100276638[a1 - 1];
  }

  v5 = [CPLErrors cplErrorWithCode:30 description:@"Simulated over-quota error for phase %@", v4];
  if ((a1 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v6 = [CPLErrors cplErrorCausedBySharedSyncForError:v5];

    v5 = v6;
  }

  return v5;
}

void sub_1001AA290()
{
  sub_1001AA134(2);
  objc_claimAutoreleasedReturnValue();
  v0 = sub_100095D88();
  v1(v0);
}

void sub_1001AA2E0()
{
  sub_1001AA134(3);
  objc_claimAutoreleasedReturnValue();
  v0 = sub_100095D88();
  v1(v0);
}

void sub_1001AA330()
{
  sub_1001AA134(4);
  objc_claimAutoreleasedReturnValue();
  v0 = sub_100095D88();
  v1(v0);
}

void sub_1001AA3D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (_CPLSilentLogging != 1)
  {
    v7 = sub_100003A74(a1);
    if (sub_10002B0A8(v7))
    {
      sub_10002B064(&_mh_execute_header, v8, v9, "Asked to fetch shared records %@ but we have no shared sync zone to work with", v10, v11, v12, v13, v16, v17);
    }
  }

  v14 = +[NSAssertionHandler currentHandler];
  v15 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCloudKitUploadBatchTask.m"];
  [v14 handleFailureInMethod:a1 object:a2 file:v15 lineNumber:408 description:{@"Asked to fetch shared records %@ but we have no shared sync zone to work with", a3}];

  abort();
}

void sub_1001AA4A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (_CPLSilentLogging != 1)
  {
    v7 = sub_100003A74(a1);
    if (sub_10002B0A8(v7))
    {
      sub_10002B064(&_mh_execute_header, v8, v9, "Asked to fetch shared records %@ but we have no shared sync zone to work with", v10, v11, v12, v13, v16, v17);
    }
  }

  v14 = +[NSAssertionHandler currentHandler];
  v15 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCloudKitUploadBatchTask.m"];
  [v14 handleFailureInMethod:a1 object:a2 file:v15 lineNumber:444 description:{@"Asked to fetch shared records %@ but we have no shared sync zone to work with", a3}];

  abort();
}

void sub_1001AA578(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (_CPLSilentLogging != 1)
  {
    v7 = sub_100003A74(a1);
    if (sub_10002B0A8(v7))
    {
      sub_10002B064(&_mh_execute_header, v8, v9, "Failed to transform a CK error to a CPL error: %@", v10, v11, v12, v13, v18, v19);
    }
  }

  v14 = +[NSAssertionHandler currentHandler];
  v15 = *(a1 + 96);
  v16 = *a2;
  v17 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCloudKitUploadBatchTask.m"];
  [v14 handleFailureInMethod:v15 object:v16 file:v17 lineNumber:560 description:{@"Failed to transform a CK error to a CPL error: %@", a3}];

  abort();
}

void sub_1001AA654(uint64_t a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v1 = sub_100003A74(a1);
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      sub_10000FAAC();
      _os_log_impl(v2, v3, v4, v5, v6, 0x16u);
    }
  }
}

uint64_t sub_1001AA720(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = sub_100003A74(a1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *a1;
      v11 = 138412290;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Trying to update contributors on %@ but transport scope is missing", &v11, 0xCu);
    }
  }

  v8 = *(a2 + 272);
  v9 = [CPLErrors cplErrorWithCode:32 description:@"Missing transport scope"];
  *a3 = v9;
  return (*(v8 + 16))(v8, v9);
}

uint64_t sub_1001AA828(uint64_t a1, uint64_t a2)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = sub_100003A74(a1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 48) count];
      v7 = 134217984;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Updated contributors on %lu records", &v7, 0xCu);
    }
  }

  return (*(*(*a2 + 272) + 16))();
}

void sub_1001AA910(uint64_t a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v1 = sub_100003A74(a1);
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      sub_10000FAAC();
      _os_log_impl(v2, v3, v4, v5, v6, 2u);
    }
  }
}

void sub_1001AA984(void *a1, void *a2)
{
  v3 = objc_begin_catch(a1);
  *a2 = v3;
  v4 = v3;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = sub_100003A74(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10000FAAC();
      _os_log_impl(v6, v7, v8, v9, v10, 0xCu);
    }
  }
}

void sub_1001AAA44(uint64_t a1, uint64_t a2, void *a3)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = sub_100003A74(a1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = a1;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Won't update contributors for %@ as the record is not shared", &v7, 0xCu);
    }
  }

  *a3 = a2;
}

id *sub_1001AAB10(id *a1, void *a2, void *a3, void *a4)
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (a1)
  {
    v15.receiver = a1;
    v15.super_class = CPLCKRecordRequest;
    v11 = objc_msgSendSuper2(&v15, "init");
    a1 = v11;
    if (v11)
    {
      objc_storeStrong(v11 + 1, a2);
      objc_storeStrong(a1 + 2, a3);
      v12 = [v10 copy];
      v13 = a1[3];
      a1[3] = v12;
    }
  }

  return a1;
}

void sub_1001AAD70(void *a1)
{
  v2 = sub_100003AB8(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [a1 recordID];
    v4 = [a1 filename];
    v5 = 138412546;
    v6 = v3;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Requesting encrypted video stream for %@/%@", &v5, 0x16u);
  }
}

uint64_t sub_1001AAE68(void *a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v2 = sub_100003AB8(a1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v13) = 138412290;
      *(&v13 + 4) = *a1;
      sub_1000990E8(&_mh_execute_header, v3, v4, "Tried to publish an unsupported resource type in memory: %@", v5, v6, v7, v8, v13, HIDWORD(*a1));
    }
  }

  v9 = [CPLErrors incorrectParametersErrorForParameter:@"resourceType"];
  v10 = sub_1000990C0(v9);
  return v11(v10);
}

uint64_t sub_1001AAF4C(void *a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v2 = sub_100003AB8(a1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v13) = 138412290;
      *(&v13 + 4) = *a1;
      sub_1000990E8(&_mh_execute_header, v3, v4, "Tried to get a streaming URL for a resource with no item identifier: %@", v5, v6, v7, v8, v13, HIDWORD(*a1));
    }
  }

  v9 = [CPLErrors incorrectParametersErrorForParameter:@"itemScopedIdentifier"];
  v10 = sub_1000990C0(v9);
  return v11(v10);
}

id sub_1001ABA94(void *a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v2 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000187DC();
      sub_1000033F8();
      _os_log_impl(v3, v4, v5, v6, v7, 0xCu);
    }
  }

  return [a1 setChangeType:1024];
}

id sub_1001ABB48(void *a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v2 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      [a1 scopedIdentifier];
      *(&v9 + 4) = LODWORD(v9) = 138412290;
      sub_1000033F8();
      _os_log_impl(v3, v4, v5, v6, v7, 0xCu);
    }
  }

  return [a1 setChangeType:{1024, v9}];
}

id sub_1001ABC1C(void *a1, void *a2)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [a2 objectForKey:@"linkedShareZoneName"];
      v6 = [a2 objectForKey:@"linkedShareZoneOwner"];
      v7 = [v6 recordID];
      v8 = [v7 recordName];
      sub_1000187DC();
      sub_1000033F8();
      _os_log_impl(v9, v10, v11, v12, v13, 0x2Au);
    }
  }

  return [a1 setChangeType:1024];
}

void sub_1001ABD60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 buf, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  sub_10002B0F4();
  a18 = v20;
  a19 = v21;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  if (_CPLSilentLogging != 1)
  {
    v28 = __CPLGenericOSLogDomain();
    if (sub_10002B0A8(v28))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v23;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Unable to find a scoped identifier for %@", &buf, 0xCu);
    }
  }

  v29 = +[NSAssertionHandler currentHandler];
  v30 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCKRecordTranslator.m"];
  [v29 handleFailureInMethod:v27 object:v25 file:v30 lineNumber:62 description:@"Unable to find a scoped identifier for %@"];

  abort();
}

void sub_1001ABE40()
{
  sub_10002B0F4();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  +[CPLFingerprintScheme nonPrivateFingerprintScheme];
  objc_claimAutoreleasedReturnValue();
  sub_1000A1090();
  v8 = [v7 fingerPrintForData:? error:?];
  v9 = *v6;

  if (v8)
  {
    [v2 setObject:v8 forKey:@"resProjectDataFingerprint"];
    v10 = [[CKAsset alloc] initWithAssetContent:v4 itemTypeHint:@"fxd"];
    [v2 setObject:v10 forKey:@"resProjectDataRes"];
LABEL_6:

    goto LABEL_7;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v10 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v18) = 138412290;
      HIDWORD(v18) = v9;
      sub_1000A1064(&_mh_execute_header, v11, v12, "Failed to compute fingerprint for projectData: %@", v13, v14, v15, v16, v18, HIDWORD(v9));
    }

    goto LABEL_6;
  }

LABEL_7:
  v17 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v4 length]);
  [v2 setObject:v17 forKey:@"resProjectDataFileSize"];
}

void sub_1001ABFBC()
{
  sub_10002B0F4();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  +[CPLFingerprintScheme nonPrivateFingerprintScheme];
  objc_claimAutoreleasedReturnValue();
  sub_1000A1090();
  v8 = [v7 fingerPrintForData:? error:?];
  v9 = *v6;

  if (v8)
  {
    [v2 setObject:v8 forKey:@"resProjectPreviewImageDataFingerprint"];
    v10 = [[CKAsset alloc] initWithAssetContent:v4 itemTypeHint:@"fxd"];
    [v2 setObject:v10 forKey:@"resProjectPreviewImageDataRes"];
LABEL_6:

    goto LABEL_7;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v10 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v18) = 138412290;
      HIDWORD(v18) = v9;
      sub_1000A1064(&_mh_execute_header, v11, v12, "Failed to compute fingerprint for projectPreviewImageData: %@", v13, v14, v15, v16, v18, HIDWORD(v9));
    }

    goto LABEL_6;
  }

LABEL_7:
  v17 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v4 length]);
  [v2 setObject:v17 forKey:@"resProjectPreviewImageDataFileSize"];
}

void sub_1001AC138()
{
  sub_10002B0F4();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = +[CPLFingerprintScheme nonPrivateFingerprintScheme];
  *v5 = 0;
  v7 = [v6 fingerPrintForData:v3 error:v5];
  v8 = *v5;

  if (v7)
  {
    [v1 setObject:v7 forKey:@"resFaceCropFingerprint"];
    v9 = [[CKAsset alloc] initWithAssetContent:v3 itemTypeHint:@"fxd"];
    [v1 setObject:v9 forKey:@"resFaceCropRes"];
    v10 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v3 length]);
    [v1 setObject:v10 forKey:@"resFaceCropFileSize"];

LABEL_6:
    goto LABEL_7;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v9 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v17) = 138412290;
      HIDWORD(v17) = v8;
      sub_1000A1064(&_mh_execute_header, v11, v12, "Failed to compute fingerprint for faceCrop: %@", v13, v14, v15, v16, v17, HIDWORD(v8));
    }

    goto LABEL_6;
  }

LABEL_7:
}

void sub_1001AC2C4(uint64_t a1, uint64_t a2)
{
  if (_CPLSilentLogging != 1)
  {
    v5 = __CPLGenericOSLogDomain();
    if (sub_1000033C0(v5))
    {
      sub_10000348C(&_mh_execute_header, v6, v7, "Missing resourceData for %@", v8, v9, v10, v11, v14, v15);
    }
  }

  v12 = +[NSAssertionHandler currentHandler];
  v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CKRecord+CPLFaceCrop.i"];
  [v12 handleFailureInMethod:a1 object:a2 file:v13 lineNumber:25 description:{@"Missing resourceData for %@", a2}];

  abort();
}

void sub_1001AC390(uint64_t a1, uint64_t a2)
{
  if (_CPLSilentLogging != 1)
  {
    v5 = __CPLGenericOSLogDomain();
    if (sub_1000033C0(v5))
    {
      sub_10000348C(&_mh_execute_header, v6, v7, "Cannot have nil personIdentifier for %@", v8, v9, v10, v11, v14, v15);
    }
  }

  v12 = +[NSAssertionHandler currentHandler];
  v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CKRecord+CPLFaceCrop.i"];
  [v12 handleFailureInMethod:a1 object:a2 file:v13 lineNumber:11 description:{@"Cannot have nil personIdentifier for %@", a2}];

  abort();
}

void sub_1001AC45C(uint64_t a1, uint64_t a2)
{
  if (_CPLSilentLogging != 1)
  {
    v5 = __CPLGenericOSLogDomain();
    if (sub_1000033C0(v5))
    {
      sub_10000348C(&_mh_execute_header, v6, v7, "%@ should have a master", v8, v9, v10, v11, v14, v15);
    }
  }

  v12 = +[NSAssertionHandler currentHandler];
  v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CKRecord+CPLAsset.i"];
  [v12 handleFailureInMethod:a1 object:a2 file:v13 lineNumber:87 description:{@"%@ should have a master", a2}];

  abort();
}

void sub_1001AC528(uint64_t a1, uint64_t a2)
{
  if (_CPLSilentLogging != 1)
  {
    v5 = __CPLGenericOSLogDomain();
    if (sub_1000033C0(v5))
    {
      sub_10000348C(&_mh_execute_header, v6, v7, "%@ should have an asset", v8, v9, v10, v11, v14, v15);
    }
  }

  v12 = +[NSAssertionHandler currentHandler];
  v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CKRecord+CPLReact.i"];
  [v12 handleFailureInMethod:a1 object:a2 file:v13 lineNumber:9 description:{@"%@ should have an asset", a2}];

  abort();
}

void sub_1001AC5F4(uint64_t a1, uint64_t a2)
{
  if (_CPLSilentLogging != 1)
  {
    v5 = __CPLGenericOSLogDomain();
    if (sub_1000033C0(v5))
    {
      sub_10000348C(&_mh_execute_header, v6, v7, "%@ should have an asset", v8, v9, v10, v11, v14, v15);
    }
  }

  v12 = +[NSAssertionHandler currentHandler];
  v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CKRecord+CPLTextComment.i"];
  [v12 handleFailureInMethod:a1 object:a2 file:v13 lineNumber:10 description:{@"%@ should have an asset", a2}];

  abort();
}

void sub_1001AC6C0(uint64_t a1, uint64_t a2)
{
  if (_CPLSilentLogging != 1)
  {
    v4 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "expect error", v7, 2u);
    }
  }

  v5 = +[NSAssertionHandler currentHandler];
  v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCloudKitErrors.m"];
  [v5 handleFailureInMethod:a1 object:a2 file:v6 lineNumber:67 description:@"expect error"];

  abort();
}

void sub_1001AC794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (_CPLSilentLogging != 1)
  {
    v6 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10002B064(&_mh_execute_header, v7, v8, "Unexpected error domain for %@", v9, v10, v11, v12, v15, v16);
    }
  }

  v13 = +[NSAssertionHandler currentHandler];
  v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCloudKitErrors.m"];
  [v13 handleFailureInMethod:a1 object:a2 file:v14 lineNumber:217 description:{@"Unexpected error domain for %@", a3}];

  abort();
}

void sub_1001AC870(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (_CPLSilentLogging != 1)
  {
    v6 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10002B064(&_mh_execute_header, v7, v8, "incorrect partial failure error: %@", v9, v10, v11, v12, v15, v16);
    }
  }

  v13 = +[NSAssertionHandler currentHandler];
  v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCloudKitErrors.m"];
  [v13 handleFailureInMethod:a1 object:a2 file:v14 lineNumber:676 description:{@"incorrect partial failure error: %@", a3}];

  abort();
}

void sub_1001AC94C(void *a1, void *a2)
{
  if (_CPLSilentLogging != 1)
  {
    v4 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *a2;
      v6 = a1[4];
      *buf = 138412546;
      v12 = v5;
      v13 = 2112;
      v14 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "incorrect item (not %@) in partial failure error %@", buf, 0x16u);
    }
  }

  v7 = +[NSAssertionHandler currentHandler];
  v8 = a1[7];
  v9 = a1[8];
  v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCloudKitErrors.m"];
  [v7 handleFailureInMethod:v8 object:v9 file:v10 lineNumber:680 description:{@"incorrect item (not %@) in partial failure error %@", *a2, a1[4]}];

  abort();
}

id *sub_1001ACA54(id *a1, void *a2, void *a3, void *a4)
{
  v8 = a2;
  v9 = a4;
  if (a1)
  {
    v12.receiver = a1;
    v12.super_class = CPLCloudKitResourceRecordProperties;
    v10 = objc_msgSendSuper2(&v12, "init");
    a1 = v10;
    if (v10)
    {
      objc_storeStrong(v10 + 1, a2);
      objc_storeStrong(a1 + 2, a3);
      objc_storeStrong(a1 + 3, a4);
    }
  }

  return a1;
}

void sub_1001ACB00(uint64_t a1, void *a2, void *a3, double *a4, void *a5, void *a6)
{
  v11 = a6;
  if (a1)
  {
    v32 = v11;
    v12 = sub_1001A8CBC(*(a1 + 8));
    v13 = [v32 cpl_decryptedObjectForKey:v12 validateClass:objc_opt_class()];

    if (v13)
    {
      v14 = [[CPLCloudKitResourceInfo alloc] initWithData:v13];
      v15 = v14;
      if (v14)
      {
        if ([(CPLCloudKitResourceInfo *)v14 hasStableHash])
        {
          *a2 = [(CPLCloudKitResourceInfo *)v15 stableHash];
          goto LABEL_11;
        }

        v16 = 0;
LABEL_9:
        v17 = sub_1001A8CB0(*(a1 + 8));
        *a2 = [v32 cpl_decryptedObjectForKey:v17 validateClass:objc_opt_class()];

        if (v16)
        {
          v18 = 1;
          goto LABEL_14;
        }

LABEL_11:
        if ([(CPLCloudKitResourceInfo *)v15 hasFileSize])
        {
          *a3 = [(CPLCloudKitResourceInfo *)v15 fileSize];
          goto LABEL_16;
        }

        v18 = 0;
LABEL_14:
        v19 = sub_100194228(*(a1 + 8));
        v20 = [v32 objectForKeyedSubscript:v19];
        *a3 = [v20 unsignedIntegerValue];

        if (v18)
        {
          v21 = 1;
          goto LABEL_19;
        }

LABEL_16:
        if ([(CPLCloudKitResourceInfo *)v15 hasImageDimensions])
        {
          v22 = [(CPLCloudKitResourceInfo *)v15 imageDimensions];
          v23 = [v22 width];
          v24 = [v22 height];
          *a4 = v23;
          a4[1] = v24;

LABEL_20:
          if ([(CPLCloudKitResourceInfo *)v15 hasFileUTI])
          {
            *a5 = [(CPLCloudKitResourceInfo *)v15 fileUTI];
LABEL_23:

            v11 = v32;
            goto LABEL_24;
          }

LABEL_22:
          v31 = sub_1001A8C80(*(a1 + 8));
          *a5 = [v32 objectForKeyedSubscript:v31];

          goto LABEL_23;
        }

        v21 = 0;
LABEL_19:
        v25 = sub_1001A8C8C(*(a1 + 8));
        v26 = [v32 objectForKeyedSubscript:v25];

        v27 = sub_1001A8C98(*(a1 + 8));
        v28 = [v32 objectForKeyedSubscript:v27];

        v29 = [v26 integerValue];
        v30 = [v28 integerValue];
        *a4 = v29;
        a4[1] = v30;

        if (v21)
        {
          goto LABEL_22;
        }

        goto LABEL_20;
      }
    }

    else
    {
      v15 = 0;
    }

    v16 = 1;
    goto LABEL_9;
  }

LABEL_24:
}

void sub_1001ACDC4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a4);
  }

  else if ((_CPLSilentLogging & 1) == 0)
  {
    v10 = sub_100003AFC(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = 138412290;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "FetchedRecord: %@", &v11, 0xCu);
    }
  }
}

void sub_1001ACED0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) operationDidFinishWithError:*(a1 + 48)];
  if (v3)
  {
    v4 = v3;
    v5 = [*(a1 + 40) lastOperationRequestUUIDs];
    v6 = [CPLCloudKitErrors CPLErrorForCloudKitError:v4 withRequestUUIDs:v5 description:@"Error fetching %@ in memory", *(*(a1 + 40) + 280)];

    v7 = [*(a1 + 56) setError:v6];
    if (!v6)
    {
      goto LABEL_13;
    }

LABEL_8:
    if ((_CPLSilentLogging & 1) == 0)
    {
      v11 = sub_100003AFC(v7);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1000A5768();
        *(&v19[2] + 6) = v6;
        sub_10002B0D4(&_mh_execute_header, v12, v13, "Failed to fetch asset %@ : %@", v14, v15, v16, v17, v18, v19[0]);
      }
    }

    goto LABEL_13;
  }

  [*(a1 + 56) setDownloadedSize:{objc_msgSend(*(a1 + 32), "length")}];
  [*(a1 + 56) setDownloadedItemCount:1];
  if (*(a1 + 80) == 1)
  {
    [*(a1 + 56) setTranscodedItemCount:1];
  }

  if (![CPLCloudKitFakeDynamicDerivatives isFakeDerivative:*(*(a1 + 40) + 280)])
  {
    v6 = 0;
    goto LABEL_13;
  }

  v8 = *(a1 + 64);
  v9 = *(*(a1 + 40) + 280);
  v19[0] = 0;
  v10 = [CPLCloudKitFakeDynamicDerivatives transformData:v2 fileType:v8 matchingResource:v9 error:v19];
  v6 = v19[0];

  v2 = v10;
  if (v6)
  {
    goto LABEL_8;
  }

LABEL_13:
  (*(*(*(a1 + 40) + 296) + 16))();
}

uint64_t sub_1001AD0F0(void *a1, void *a2, uint64_t *a3)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = sub_100003AFC(a1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000A5768();
      sub_10002B0D4(&_mh_execute_header, v7, v8, "Fetching %@ for %@ succeeded but did not return the resource", v9, v10, v11, v12, v14, v15);
    }
  }

  result = [CPLErrors cplErrorWithCode:150 description:@"Fetching %@ for %@ succeeded but did not return the resource", *a1, *a2];
  *a3 = result;
  return result;
}

uint64_t sub_1001AD1D8(void *a1, uint64_t *a2)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = sub_100003AFC(a1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *a1;
      *buf = 138412290;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Failed to fetch %@", buf, 0xCu);
    }
  }

  result = [CPLErrors cplErrorWithCode:150 description:@"Failed to fetch %@", *a1];
  *a2 = result;
  return result;
}

uint64_t sub_1001AD2C4(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = sub_100003AFC(a1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *a1;
      v11 = 138412290;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Tried to download an unsupported resource type in memory: %@", &v11, 0xCu);
    }
  }

  v8 = *(a2 + 296);
  v9 = [CPLErrors incorrectParametersErrorForParameter:@"resourceType"];
  *a3 = v9;
  return (*(v8 + 16))(v8, 0, v9);
}

void sub_1001AD3E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (_CPLSilentLogging != 1)
  {
    v6 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v10 = a3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Current session does not have a task of class %@", buf, 0xCu);
    }
  }

  v7 = +[NSAssertionHandler currentHandler];
  v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCloudKitOperationCounter.m"];
  [v7 handleFailureInMethod:a1 object:a2 file:v8 lineNumber:86 description:{@"Current session does not have a task of class %@", a3}];

  abort();
}

void sub_1001AD4F4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8)
  {
    v11 = [[CPLShareParticipant alloc] initWithCKShareParticipant:v8 currentUserID:*(a1 + 32)];
    [*(*(*(a1 + 40) + 8) + 40) addObject:v11];
  }

  else if ((_CPLSilentLogging & 1) == 0)
  {
    v12 = sub_100003B40(v9);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = 138412546;
      v14 = v7;
      v15 = 2112;
      v16 = v10;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to fetch some participant with lookup info %@: %@", &v13, 0x16u);
    }
  }
}

void sub_1001AD640(uint64_t a1, char a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if (a2)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v6 = sub_100003B84(v4);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000AB0AC();
        v7 = "Sent exit feedback for batch ID: %@, operation ID: %@";
        v8 = v6;
        v9 = OS_LOG_TYPE_DEFAULT;
        v10 = 22;
LABEL_8:
        _os_log_impl(&_mh_execute_header, v8, v9, v7, &v11, v10);
        goto LABEL_9;
      }

      goto LABEL_9;
    }
  }

  else if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = sub_100003B84(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412290;
      v12 = v5;
      v7 = "Failed to send exit feedback with error: %@";
      v8 = v6;
      v9 = OS_LOG_TYPE_ERROR;
      v10 = 12;
      goto LABEL_8;
    }

LABEL_9:
  }
}

uint64_t sub_1001ADA54(uint64_t a1, void *a2)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = sub_100003B84(a1);
    if (sub_1000033C0(v5))
    {
      sub_1000AB0AC();
      v9 = v6;
      v10 = a2;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Failed to move %@ to %@: %@", v8, 0x20u);
    }
  }

  if (![a2 isCPLOperationCancelledError])
  {
    [*(a1 + 32) _sendExitFeedbackWithSourceRecordIDs:*(a1 + 40) destinationRecordIDs:*(a1 + 48) moveError:a2 operationID:*(a1 + 56) moveBatchID:*(a1 + 64)];
  }

  return (*(*(*(a1 + 32) + 280) + 16))();
}

id sub_1001ADB54(uint64_t a1, uint64_t a2, id *a3)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = sub_100003B84(a1);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_1000AB0AC();
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Successfully moved %@ back to %@", v7, 0x16u);
    }
  }

  return [*a3 _fetchAndMoveNextBatchWithUserRecordID:*(a2 + 72)];
}

void sub_1001ADC28()
{
  sub_10002B0F4();
  v20 = v0;
  v21 = v1;
  v3 = v2;
  v5 = v4;
  v6 = [*v4 lastOperationRequestUUIDs];
  v7 = [CPLCloudKitErrors CPLErrorForCloudKitError:v3 withRequestUUIDs:v6 description:@"Failed to get next batch to move"];

  if ((_CPLSilentLogging & 1) == 0)
  {
    v9 = sub_100003B84(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v18 = 138412290;
      v19 = v3;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to get next batch to move: %@", &v18, 0xCu);
    }
  }

  v10 = [v7 isCPLErrorWithCode:23];
  if (v10 && _CPLSilentLogging != 1)
  {
    v11 = sub_100003B84(v10);
    if (sub_100003424(v11))
    {
      v12 = [*(*v5 + 36) zoneID];
      v18 = 138412290;
      v19 = v12;
      sub_100013990();
      _os_log_impl(v13, v14, v15, v16, v17, 0xCu);
    }
  }

  (*(*(*v5 + 35) + 16))();
}

id sub_1001ADDC8(void *a1, id *a2, uint64_t a3)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = sub_100003B84(a1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *a1;
      v9 = 138543362;
      v10 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Moving records with names: %{public}@", &v9, 0xCu);
    }
  }

  return [*a2 _moveBatchRecordWithNames:*a1 userRecordID:*(a3 + 56) operationID:*(a3 + 64) moveBatchID:*(a3 + 72) hasMore:*(a3 + 80)];
}

void sub_1001ADEA8(uint64_t a1)
{
  if (_CPLSilentLogging != 1)
  {
    v2 = sub_100003B84(a1);
    if (sub_1000033C0(v2))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Trying to launch auxiliary operation but it is not relevant to begin with", v5, 2u);
    }
  }

  v3 = +[NSAssertionHandler currentHandler];
  v4 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCloudKitCleanupStagedScopeTask.m"];
  [sub_1000034AC() handleFailureInMethod:? object:? file:? lineNumber:? description:?];

  abort();
}

void sub_1001ADF70(uint64_t a1, uint64_t *a2)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = sub_100003B84(a1);
    if (sub_100003424(v5))
    {
      sub_100013990();
      _os_log_impl(v6, v7, v8, v9, v10, 0xCu);
    }
  }

  *a2 = a1;
}

id sub_1001AE024(void *a1, uint64_t a2, void *a3)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = sub_100003B84(a1);
    if (sub_100003424(v6))
    {
      LODWORD(v13) = 138412290;
      *(&v13 + 4) = *(*a1 + a2);
      sub_100013990();
      _os_log_impl(v7, v8, v9, v10, v11, 0xCu);
    }

    a3 = *(*a1 + a2);
  }

  return [a3 cancel];
}

void sub_1001AE0EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 buf, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  sub_10002B0F4();
  a18 = v19;
  a19 = v21;
  v23 = v22;
  v25 = v24;
  v26 = v20;
  if (_CPLSilentLogging != 1)
  {
    v27 = sub_100003B84(v20);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = *v26;
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v28;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "main %@ is already launched", &buf, 0xCu);
    }
  }

  v29 = +[NSAssertionHandler currentHandler];
  v30 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCloudKitCleanupStagedScopeTask.m"];
  [v29 handleFailureInMethod:v25 object:v23 file:v30 lineNumber:256 description:@"main %@ is already launched"];

  abort();
}

void sub_1001AE9FC(uint64_t a1)
{
  v3 = CPLCopyDefaultSerialQueueAttributes();
  v1 = dispatch_queue_create("com.apple.cpl.cloudkit.metrics", v3);
  v2 = qword_1002C5648;
  qword_1002C5648 = v1;
}

void sub_1001AEA6C(uint64_t a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v2 = sub_1000ABB78(a1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [*(a1 + 40) containerIdentifier];
      sub_1000ACA54();
      sub_10006D044(&_mh_execute_header, v4, v5, "%@: submitting to %@", v6, v7, v8, v9);
    }
  }
}

void sub_1001AEB28(uint64_t a1, void *a2)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = sub_1000ABB78(a1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [a2 cplOperationClassDescription];
      sub_1000ACA54();
      sub_10006D044(&_mh_execute_header, v5, v6, "%@: associating %@", v7, v8, v9, v10);
    }
  }
}

void sub_1001AEBE8(uint64_t a1, void *a2)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = sub_1000ABB78(a1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [a2 cplOperationClassDescription];
      sub_1000ACA54();
      sub_10006D044(&_mh_execute_header, v5, v6, "%@: finished %@", v7, v8, v9, v10);
    }
  }
}

void sub_1001AECA8(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v6 = sub_1000ABB78(a1);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *a1;
    v8 = 138412546;
    v9 = a2;
    v10 = 2048;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@: end (%lu)", &v8, 0x16u);
  }

  *a3 = *a1;
}

void sub_1001AED74(const char *a1, uint64_t a2)
{
  if (_CPLSilentLogging != 1)
  {
    v4 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = NSStringFromSelector(a1);
      v6 = *(a2 + 32);
      *buf = 138412546;
      v11 = v5;
      v12 = 2112;
      v13 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%@ called too many times for %@", buf, 0x16u);
    }
  }

  v7 = +[NSAssertionHandler currentHandler];
  v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCloudKitMetric.m"];
  v9 = NSStringFromSelector(a1);
  [v7 handleFailureInMethod:a1 object:a2 file:v8 lineNumber:118 description:{@"%@ called too many times for %@", v9, *(a2 + 32)}];

  abort();
}

void sub_1001AEEAC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (_CPLSilentLogging != 1)
  {
    v6 = sub_100003BC8(a1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v12 = a3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Failed to compute staging scope identifier from staging zone ID %@", buf, 0xCu);
    }
  }

  v7 = +[NSAssertionHandler currentHandler];
  v8 = *(a1 + 56);
  v9 = *a2;
  v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCloudKitExitSharedLibraryTask.m"];
  [v7 handleFailureInMethod:v8 object:v9 file:v10 lineNumber:129 description:{@"Failed to compute staging scope identifier from staging zone ID %@", a3}];

  abort();
}

void sub_1001AEFA0(uint64_t a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = sub_100003BC8(a1);
    if (sub_100003448(v3))
    {
      LOWORD(v11) = 0;
      sub_100021D44();
      _os_log_impl(v4, v5, v6, v7, v8, 2u);
    }
  }

  v9 = *(a1 + 48);
  v10 = +[CPLErrors unknownError];
  (*(v9 + 16))(v9, 0, 0, 0, v10);
}

void sub_1001AF048(uint64_t a1, uint64_t *a2)
{
  if (_CPLSilentLogging != 1)
  {
    v4 = sub_100003BC8(a1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "We should have the current user ID here", v9, 2u);
    }
  }

  v5 = +[NSAssertionHandler currentHandler];
  v6 = *(a1 + 56);
  v7 = *a2;
  v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCloudKitExitSharedLibraryTask.m"];
  [v5 handleFailureInMethod:v6 object:v7 file:v8 lineNumber:93 description:@"We should have the current user ID here"];

  abort();
}

uint64_t sub_1001AF138(uint64_t a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v2 = sub_100003BC8(a1);
    if (sub_100003448(v2))
    {
      sub_10000343C();
      sub_100021D44();
      _os_log_impl(v3, v4, v5, v6, v7, 0xCu);
    }
  }

  v8 = [CPLErrors incorrectParametersErrorForParameter:@"currentUserParticipant"];
  return sub_1000AF008(v8);
}

uint64_t sub_1001AF208(uint64_t a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v2 = sub_100003BC8(a1);
    if (sub_100003448(v2))
    {
      sub_10000343C();
      sub_100021D44();
      _os_log_impl(v3, v4, v5, v6, v7, 0xCu);
    }
  }

  v8 = [CPLErrors incorrectParametersErrorForParameter:@"currentUserParticipant"];
  return sub_1000AF008(v8);
}

uint64_t sub_1001AF2D8(uint64_t a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v2 = sub_100003BC8(a1);
    if (sub_100003448(v2))
    {
      sub_10000343C();
      sub_100021D44();
      _os_log_impl(v3, v4, v5, v6, v7, 0xCu);
    }
  }

  v8 = [CPLErrors incorrectParametersErrorForParameter:@"currentUserParticipant"];
  return sub_1000AF008(v8);
}

void sub_1001AF3A8(id *a1, uint64_t a2)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = sub_100003BC8(a1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *a1;
      *buf = 138412290;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Trying to exit %@ with no known zone ID", buf, 0xCu);
    }
  }

  v6 = *(a2 + 272);
  v7 = [*a1 scopeIdentifier];
  v8 = [CPLErrors cplErrorWithCode:32 description:@"%@ needs a zone ID", v7];
  (*(v6 + 16))(v6, 0, v8);
}

uint64_t sub_1001AF4E4(uint64_t a1, uint64_t a2)
{
  if ((a1 & 1) == 0)
  {
    v3 = sub_100003C0C(a1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [*(*a2 + 304) scopeIdentifier];
      LODWORD(v12) = 138412290;
      HIDWORD(v12) = v4;
      sub_1000B17BC(&_mh_execute_header, v5, v6, "Still unable to determine scope type for %@", v7, v8, v9, v10, v12, HIDWORD(v4));
    }
  }

  return (*(*(*a2 + 272) + 16))();
}

void sub_1001AF5D8(uint64_t a1, void *a2)
{
  v4 = sub_100003C0C(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(*(a1 + 32) + 288);
    v6 = [a2 zoneID];
    v7 = 138412546;
    v8 = v5;
    v9 = 2112;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Zone ID for %@ was wrong. Updating it to %@", &v7, 0x16u);
  }
}

void sub_1001AF6B8(uint64_t a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v1 = sub_100003C0C(a1);
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000B17DC(&_mh_execute_header, v2, v3, "No more candidate for a shared zone", v4, v5, v6, v7, 0);
    }
  }

  [CPLErrors cplErrorWithCode:39 description:@"No Shared Zone available"];
  objc_claimAutoreleasedReturnValue();
  v8 = sub_1000B1798();
  v9(v8);
}

id sub_1001AF758(uint64_t a1, uint64_t a2, void *a3)
{
  if ((a1 & 1) == 0)
  {
    v5 = sub_100003C0C(a1);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a2 + 64) cpl_zoneName];
      LODWORD(v14) = 138543362;
      HIDWORD(v14) = v6;
      sub_1000B17BC(&_mh_execute_header, v7, v8, "Unable to determine scope type for %{public}@", v9, v10, v11, v12, v14, HIDWORD(v6));
    }
  }

  return [*(a2 + 32) _validateLastZoneIDInArray:*(a2 + 72) currentUserID:*a3];
}

id sub_1001AF820(uint64_t a1, id *a2, uint64_t a3)
{
  if ((a1 & 1) == 0)
  {
    v5 = sub_100003C0C(a1);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v13) = 134217984;
      *(&v13 + 4) = [*a2 count];
      sub_1000B17BC(&_mh_execute_header, v6, v7, "Found %lu potential candidates for a shared zone", v8, v9, v10, v11, v13, DWORD2(v13));
    }
  }

  return [*(a3 + 32) _validateLastZoneIDInArray:*a2 currentUserID:*(a3 + 48)];
}

void sub_1001AF8DC(uint64_t a1)
{
  if ((a1 & 1) == 0)
  {
    v1 = sub_100003C0C(a1);
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000B17DC(&_mh_execute_header, v2, v3, "No valid zones for a shared zone", v4, v5, v6, v7, 0);
    }
  }

  [CPLErrors cplErrorWithCode:39 description:@"No Shared Zone available"];
  objc_claimAutoreleasedReturnValue();
  v8 = sub_1000B1798();
  v9(v8);
}

void sub_1001AF974(uint64_t a1, void *a2)
{
  v4 = [*(a1 + 40) scopeIdentifierFromZoneID:a2];
  if (*(a1 + 56))
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  v6 = [(CPLCloudKitZoneIdentification *)CPLCloudKitLibraryShareZoneIdentification isSupportedZoneID:a2];
  if (v6 & 1) != 0 || (v6 = [(CPLCloudKitZoneIdentification *)CPLCloudKitCollectionShareZoneIdentification isSupportedZoneID:a2], (v6))
  {
    v5 |= 4uLL;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v7 = sub_100003C50(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [a2 cpl_zoneName];
      v9 = [CPLCloudKitScope descriptionForCloudKitScopeOptions:v5];
      v12 = 138412546;
      v13 = v8;
      v14 = 2112;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Found new or changed zone %@ (%@)", &v12, 0x16u);
    }
  }

  v10 = [[CPLCloudKitScope alloc] initWithZoneID:a2 options:v5];
  v11 = [[CPLCloudKitScopeUpdate alloc] initWithCloudKitScope:v10];
  [*(*(*(a1 + 48) + 8) + 40) setObject:v11 forKeyedSubscript:v4];
}

id sub_1001AFB24(void *a1, id *a2)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = sub_100003C50(a1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [a1 cpl_zoneName];
      LODWORD(v13) = 138412290;
      HIDWORD(v13) = v5;
      sub_1000B17BC(&_mh_execute_header, v6, v7, "Ignoring new or changed %@", v8, v9, v10, v11, v13, HIDWORD(v5));
    }
  }

  return [*a2 noteZoneIDChangeWasIgnored:a1];
}

void sub_1001AFC08(uint64_t a1, void *a2, uint64_t a3)
{
  if ((a1 & 1) == 0)
  {
    v5 = sub_100003C50(a1);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [a2 cpl_zoneName];
      LODWORD(v14) = 138412290;
      HIDWORD(v14) = v6;
      sub_1000B17BC(&_mh_execute_header, v7, v8, "Found deleted zone %@", v9, v10, v11, v12, v14, HIDWORD(v6));
    }
  }

  v13 = [*(a3 + 40) scopeIdentifierFromZoneID:a2];
  [*(*(*(a3 + 48) + 8) + 40) addObject:v13];
}

id sub_1001AFCEC(uint64_t a1, void *a2, id *a3)
{
  if ((a1 & 1) == 0)
  {
    v5 = sub_100003C50(a1);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [a2 cpl_zoneName];
      LODWORD(v14) = 138412290;
      HIDWORD(v14) = v6;
      sub_1000B17BC(&_mh_execute_header, v7, v8, "Ignoring deleted %@", v9, v10, v11, v12, v14, HIDWORD(v6));
    }
  }

  return [*a3 noteZoneIDChangeWasIgnored:a2];
}

void sub_1001AFDB0(uint64_t a1)
{
  v2 = [*(a1 + 32) operationDidFinishWithError:*(a1 + 40)];
  if ((*(a1 + 48) & 1) == 0 && (_CPLSilentLogging & 1) == 0)
  {
    if (qword_1002C56A8 != -1)
    {
      dispatch_once(&qword_1002C56A8, &stru_1002770E0);
    }

    v3 = qword_1002C56B0;
    if (os_log_type_enabled(qword_1002C56B0, OS_LOG_TYPE_ERROR))
    {
      v4 = *(a1 + 32);
      v5 = *(v4 + 280);
      v6 = *(v4 + 288);
      v7 = 138412802;
      v8 = v5;
      v9 = 2112;
      v10 = v6;
      v11 = 2112;
      v12 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Failed to send feedback about move batch (%@ to %@) with error: %@", &v7, 0x20u);
    }
  }

  (*(*(*(a1 + 32) + 272) + 16))();
}

void sub_1001AFF18(uint64_t a1)
{
  v2 = [*(a1 + 32) operationDidFinishWithError:*(a1 + 40)];
  if ((*(a1 + 56) & 1) == 0 && (_CPLSilentLogging & 1) == 0)
  {
    if (qword_1002C56B8 != -1)
    {
      dispatch_once(&qword_1002C56B8, &stru_100277150);
    }

    v3 = qword_1002C56C0;
    if (os_log_type_enabled(qword_1002C56C0, OS_LOG_TYPE_ERROR))
    {
      v4 = *(a1 + 48);
      v5 = 138412546;
      v6 = v4;
      v7 = 2112;
      v8 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Failed to request ramp information with operationID: %@ error: %@", &v5, 0x16u);
    }
  }

  (*(*(*(a1 + 32) + 272) + 16))();
}

uint64_t sub_1001B0060(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a1 & 1) == 0)
  {
    v5 = sub_100003C94(a1);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412290;
      v8 = a2;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Error checking resources: %@", &v7, 0xCu);
    }
  }

  return (*(*(*(a3 + 32) + 272) + 16))();
}

void sub_1001B013C(uint64_t a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = sub_10011B768(a1);
    if (sub_100021E38(v3))
    {
      sub_1001394A4();
      sub_100037514(&_mh_execute_header, v1, v4, "%@ attaching to %@", v14);
    }
  }

  v5 = *(a1 + 32);
  v6 = *(v5 + 96);
  sub_1000033D8();
  v8 = 3221225472;
  v9 = sub_10011B7AC;
  v10 = &unk_1002796F8;
  v11 = v5;
  v13 = *(a1 + 48);
  v12 = *(a1 + 40);
  [v6 attachObject:v5 withCompletionHandler:v7];
}

uint64_t sub_1001B025C(uint64_t a1, uint64_t a2)
{
  v4 = [sub_1001394D4(a1) libraryVersion];
  sub_100139408(v4, *(a1 + 56));
  v5 = [*(a1 + 32) resourceStorage];
  sub_100139480([v5 sizeOfResourcesToUpload], *(a1 + 64));

  v6 = [*(a1 + 32) resourceStorage];
  sub_100139480([v6 sizeOfOriginalResourcesToUpload], *(a1 + 72));

  sub_100139480([*(a1 + 40) countOfOriginalImages], *(a1 + 80));
  sub_100139480([*(a1 + 40) countOfOriginalVideos], *(a1 + 88));
  v7 = sub_100139480([*(a1 + 40) countOfOriginalOthers], *(a1 + 96));
  if ((_CPLSilentLogging & 1) == 0)
  {
    v8 = sub_10011B768(v7);
    if (sub_100021E20(v8))
    {
      sub_10000343C();
      sub_100139348();
      sub_10000FB94(v9, v10, v11, v12, v13);
    }
  }

  if (*(a1 + 104) != 1)
  {
    return 1;
  }

  v14 = *(a1 + 32);
  v15 = [*(a1 + 48) abstractObject];
  v16 = [v14 updateLibraryOptions:objc_msgSend(v15 error:{"libraryOptions"), a2}];

  return v16;
}

void sub_1001B03D8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = sub_10011B768(v3);
    if (sub_100021E38(v5))
    {
      sub_100003460();
      sub_100013984();
      sub_100037514(v6, v7, v8, v9, v10);
    }
  }
}

void sub_1001B049C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = sub_10011B768(v3);
    if (sub_100021E38(v5))
    {
      sub_100003460();
      sub_100013984();
      sub_100037514(v6, v7, v8, v9, v10);
    }
  }
}

void sub_1001B0560(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = v4;
  if (v4 && (_CPLSilentLogging & 1) == 0)
  {
    v6 = sub_10011B768(v4);
    if (sub_1000033C0(v6))
    {
      sub_1001394A4();
      HIWORD(v21) = v7;
      v22 = v5;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%@ failed to detach from %@: %@", buf, 0x20u);
    }
  }

  v8 = *(*(a1 + 32) + 104);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10011C6B4;
  v15[3] = &unk_100272E20;
  v18 = *(a1 + 48);
  v16 = *(a1 + 40);
  v17 = v5;
  v9 = v15;
  *buf = _NSConcreteStackBlock;
  v20 = 3221225472;
  sub_1001392E0();
  v21 = v10;
  v22 = &unk_100271E98;
  v23 = v11;
  v12 = v8;
  v13 = v5;
  v14 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, buf);
  sub_1001393A4(v14);
}

void sub_1001B072C(uint64_t a1, void *a2)
{
  v5 = a2;
  v6 = v5;
  if (v5 && (_CPLSilentLogging & 1) == 0)
  {
    v7 = sub_10011B768(v5);
    if (sub_1000033C0(v7))
    {
      v8 = *(a1 + 32);
      v9 = *(v8 + 96);
      *buf = 138412802;
      *&buf[4] = v8;
      *&buf[12] = 2112;
      *&buf[14] = v9;
      *&buf[22] = 2112;
      v29 = v6;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%@ failed to detach from %@: %@", buf, 0x20u);
    }
  }

  v10 = *(*(a1 + 32) + 104);
  sub_100139384();
  v26 = *(a1 + 40);
  v11 = v3;
  *buf = _NSConcreteStackBlock;
  *&buf[8] = 3221225472;
  sub_1001392E0();
  *&buf[16] = v12;
  v29 = &unk_100271E98;
  v30 = v13;
  v14 = v10;
  v15 = v6;
  v23 = sub_1001393C0(v15, v16, v17, v18, v19, v20, v21, v22, v24, 3221225472, sub_10011C6D4, &unk_100272350, v6, v26);
  sub_1001393A4(v23);
}

uint64_t sub_1001B08D0()
{
  sub_1001393FC();
  sub_1001394D4(v2);
  sub_1001394C8();
  v4 = [v3 canActivateScope:? error:?];
  v5 = *(v0 + 40);
  if (v4)
  {
    v6 = *(*(*(v0 + 48) + 8) + 40);

    return [v5 activateScope:v6 error:v1];
  }

  else
  {
    v7 = [v5 valueForFlag:16 forScope:*(*(*(v0 + 48) + 8) + 40)];
    if (v7)
    {
      return 0;
    }

    else
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v8 = sub_10011B768(v7);
        if (sub_100003448(v8))
        {
          sub_10000343C();
          sub_100021D44();
          _os_log_impl(v9, v10, v11, v12, v13, 0xCu);
        }
      }

      return 1;
    }
  }
}

uint64_t sub_1001B09F8()
{
  sub_1001393FC();
  v3 = [sub_1001394D4(v2) scopeWithIdentifier:*(v0 + 40)];
  sub_100139408(v3, *(v0 + 56));
  sub_1001394C8();
  if (v5)
  {
    result = [*(v0 + 48) canActivateScope:v5 error:v1];
    if (result)
    {
      sub_1001394C8();

      return [v7 deactivateScope:? error:?];
    }
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v8 = sub_10011B768(v4);
      if (sub_10000FABC(v8))
      {
        sub_10000343C();
        sub_100139324();
        _os_log_impl(v9, v10, v11, v12, v13, v14);
      }
    }

    return 1;
  }

  return result;
}

uint64_t sub_1001B0B14(uint64_t a1)
{
  if (*(a1 + 32) && (_CPLSilentLogging & 1) == 0)
  {
    v2 = sub_10011B768(a1);
    if (sub_100003448(v2))
    {
      sub_100003460();
      sub_100021D44();
      _os_log_impl(v3, v4, v5, v6, v7, 0x16u);
    }
  }

  sub_1000119D0();
  return v8();
}

void sub_1001B0BDC()
{
  sub_10002B0F4();
  v2 = v1;
  v4 = v3;
  v5 = [sub_1001394D4(v3) scopeIdentifier];
  v6 = v5;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v7 = sub_10011B768(v5);
    if (sub_10000FBAC(v7))
    {
      sub_1000187DC();
      sub_100139440();
      _os_log_impl(v8, v9, v10, v11, v12, 0xCu);
    }
  }

  v13 = [*(v4 + 40) scopes];
  v14 = [*(v4 + 32) defaultFlags];
  [v13 shouldAutoactivateScopeWithIdentifier:v6 scopeType:{objc_msgSend(*(v4 + 32), "scopeType")}];
  v15 = [v13 createScopeWithIdentifier:v6 scopeType:sub_1001393DC() flags:v14 transportScope:*(v4 + 48) error:v2];
  if (v15)
  {
    v16 = v15;
    if ([v13 setPullFromTransportExpirationInterval:v15 scope:v2 error:86400.0] && objc_msgSend(sub_100139470(), "storeScopeChange:forScope:error:"))
    {
      v17 = [v13 scopeChangeForScope:v16];
      sub_100139408(v17, *(v4 + 56));
    }
  }

  sub_100139520();
}

void sub_1001B0D5C(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) scopeIdentifier];
  v5 = [v3 scopeWithIdentifier:v4];

  if (v5)
  {
    v7 = [*(a1 + 32) transportScopeForScope:v5];
    sub_100139408(v7, *(a1 + 88));
  }

  else if ((_CPLSilentLogging & 1) == 0)
  {
    v8 = sub_10011B768(v6);
    if (sub_100003424(v8))
    {
      v9 = *(a1 + 40);
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v9;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Trying to update share for an unknown scope %@ – will proceed anyway", &buf, 0xCu);
    }
  }

  v10 = *(*(a1 + 48) + 104);
  sub_100139384();
  v18 = v11;
  v19 = v5;
  v20 = *(a1 + 56);
  v21 = *(a1 + 64);
  v22 = *(a1 + 32);
  v24 = *(a1 + 80);
  v23 = *(a1 + 72);
  v12 = v1;
  *&buf = _NSConcreteStackBlock;
  *(&buf + 1) = 3221225472;
  sub_1001392E0();
  v26 = v13;
  v27 = &unk_100271E98;
  v28 = v14;
  v15 = v10;
  v16 = v5;
  v17 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, &buf);
  sub_1001393A4(v17);
}

void sub_1001B0F9C()
{
  sub_10002B0F4();
  v2 = v1;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = sub_10011B768(v1);
    if (sub_100003424(v3))
    {
      sub_10000343C();
      sub_100013990();
      _os_log_impl(v4, v5, v6, v7, v8, 0xCu);
    }
  }

  v9 = [v2[4] scopeIdentifier];
  v10 = [v2[5] scopes];
  [v2[4] defaultFlags];
  [v2[6] flags];
  [v10 shouldAutoactivateScopeWithIdentifier:v9 scopeType:{objc_msgSend(v2[4], "scopeType")}];
  sub_1001393DC();
  v11 = [sub_100139424() createScopeWithIdentifier:? scopeType:? flags:? transportScope:? error:?];
  if (v11)
  {
    [sub_100139470() storeScopeChange:? forScope:? error:?];
  }

  sub_100139520();
}

void sub_1001B10DC()
{
  sub_10002B0F4();
  v1 = v0;
  v3 = v2;
  v4 = [v3 error];

  if (v4 && (_CPLSilentLogging & 1) == 0)
  {
    v6 = sub_10011B768(v5);
    if (sub_1000033C0(v6))
    {
      v7 = [v3 error];
      sub_100139338();
      sub_100021D74();
      _os_log_impl(v8, v9, v10, v11, v12, 0x16u);
    }
  }

  v13 = *(v1 + 40);
  v14 = [v3 error];
  (*(v13 + 16))(v13, v14);

  sub_100139520();
}

void sub_1001B11F0()
{
  sub_10002B0F4();
  v2 = v1;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = sub_10011B768(v1);
    if (sub_100003424(v3))
    {
      sub_10000343C();
      sub_100013990();
      _os_log_impl(v4, v5, v6, v7, v8, 0xCu);
    }
  }

  v9 = [v2[4] scopeIdentifier];
  v10 = [v2[5] scopes];
  [v2[4] defaultFlags];
  [v2[6] flags];
  [v10 shouldAutoactivateScopeWithIdentifier:v9 scopeType:{objc_msgSend(v2[4], "scopeType")}];
  sub_1001393DC();
  v11 = [sub_100139424() createScopeWithIdentifier:? scopeType:? flags:? transportScope:? error:?];
  if (v11)
  {
    [sub_100139470() storeScopeChange:? forScope:? error:?];
  }

  sub_100139520();
}

void sub_1001B1A5C(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 error];

  if (v3 && (_CPLSilentLogging & 1) == 0)
  {
    v5 = sub_10011B768(v4);
    if (sub_100003448(v5))
    {
      v6 = [v2 error];
      sub_100021E14();
      sub_100139338();
      sub_100021D44();
      _os_log_impl(v7, v8, v9, v10, v11, 0x16u);
    }
  }
}

void sub_1001B1B40(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 error];

  if (v4 && (_CPLSilentLogging & 1) == 0)
  {
    v6 = sub_10011B768(v5);
    if (sub_100003448(v6))
    {
      v7 = [*(a1 + 32) componentsJoinedByString:{@", "}];
      v8 = [v3 error];
      sub_10000FB34();
      sub_100139338();
      sub_100021D44();
      _os_log_impl(v9, v10, v11, v12, v13, 0x16u);
    }
  }
}

uint64_t sub_1001B2418(uint64_t a1, void *a2)
{
  switch(*(a1 + 56))
  {
    case 0:
    case 1:
    case 3:
      v29 = sub_100139460();

      return [v29 _resetStore:? reason:? resetSelector:? error:?];
    case 2:
      if (![*(a1 + 32) _resetStore:*(a1 + 40) reason:*(a1 + 48) resetSelector:"resetCompleteSyncStateIncludingIDMappingWithCause:error:" error:a2])
      {
        return 0;
      }

      v11 = [*(a1 + 40) scopes];
      v12 = [v11 enumeratorForScopesIncludeInactive:0];

      v17 = sub_100139500(v13, v14, v15, v16);
      if (!v17)
      {
        goto LABEL_16;
      }

      v18 = v17;
      v19 = MEMORY[0];
      break;
    case 4:
      if ((_CPLSilentLogging & 1) == 0)
      {
        v5 = sub_10011B768(a1);
        if (sub_10000FBDC(v5))
        {
          sub_100139378();
          _os_log_impl(v6, v7, OS_LOG_TYPE_ERROR, v8, v9, 2u);
        }
      }

      return 1;
    case 5:
      if ((_CPLSilentLogging & 1) == 0)
      {
        v31 = sub_10011B768(a1);
        if (sub_100003424(v31))
        {
          LOWORD(v37) = 0;
          sub_100013990();
          _os_log_impl(v32, v33, v34, v35, v36, 2u);
        }
      }

      return [*(a1 + 40) setShouldUpdateDisabledFeaturesWithError:{a2, v37}];
    default:
      if (!a2)
      {
        return 0;
      }

      [CPLErrors incorrectParametersErrorForParameter:@"option"];
      *a2 = v10 = 0;
      return v10;
  }

  while (1)
  {
    for (i = 0; i != v18; i = i + 1)
    {
      if (MEMORY[0] != v19)
      {
        objc_enumerationMutation(v12);
      }

      v21 = *(8 * i);
      v22 = [*(a1 + 40) scopes];
      v23 = [v21 scopeIdentifier];
      v24 = [v22 resetStableRecordsForScopeWithIdentifier:v23 error:a2];

      if (!v24)
      {
        v10 = 0;
        goto LABEL_29;
      }
    }

    v18 = sub_100139500(v25, v26, v27, v28);
    if (!v18)
    {
LABEL_16:
      v10 = 1;
LABEL_29:

      return v10;
    }
  }
}

void sub_1001B27C8(id a1, CPLEngineStoreTransaction *a2)
{
  v2 = a2;
  v3 = [(CPLEngineStoreTransaction *)v2 error];
  if (v3)
  {
    v4 = v3;
    v5 = [(CPLEngineStoreTransaction *)v2 error];
    v6 = [v5 isCPLErrorWithCode:2];

    if ((v6 & 1) == 0 && (_CPLSilentLogging & 1) == 0)
    {
      v8 = sub_10011B768(v7);
      if (sub_10000FABC(v8))
      {
        v9 = [(CPLEngineStoreTransaction *)v2 error];
        sub_10000AF90();
        sub_100139324();
        _os_log_impl(v10, v11, v12, v13, v14, v15);
      }
    }
  }
}

void sub_1001B28C0(uint64_t a1)
{
  v2 = +[NSFileManager defaultManager];
  sub_1001394C8();
  v9 = 0;
  v4 = [v3 removeItemAtURL:? error:?];
  v5 = v9;

  if ((v4 & 1) == 0 && (_CPLSilentLogging & 1) == 0)
  {
    v7 = sub_10011B768(v6);
    if (sub_100003424(v7))
    {
      v8 = [*(*(*(a1 + 32) + 8) + 40) path];
      *buf = 138412546;
      v11 = v8;
      v12 = 2112;
      v13 = v5;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Failed to remove temporary folder at %@: %@", buf, 0x16u);
    }
  }
}

void sub_1001B29E0(uint64_t a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = __CPLGenericOSLogDomain();
    if (sub_10000FAE0(v3))
    {
      v4 = NSStringFromSelector(*(a1 + 40));
      sub_10000FB34();
      sub_100139338();
      sub_100080C88();
      _os_log_impl(v5, v6, v7, v8, v9, 0x16u);
    }
  }
}

id sub_1001B2AB4(uint64_t a1, uint64_t a2, void *a3)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = sub_10011B768(a1);
    if (sub_100021E20(v5))
    {
      sub_10000343C();
      sub_100139348();
      sub_10000FB94(v6, v7, v8, v9, v10);
    }
  }

  sub_100080C6C();
  a3[1] = 3221225472;
  a3[2] = sub_1001B049C;
  a3[3] = &unk_100272468;
  a3[4] = v11;
  return [v12 closeAndDeactivate:0 completionHandler:a3];
}

void sub_1001B2BBC(uint64_t a1)
{
  if ((a1 & 1) == 0)
  {
    v1 = sub_10011B768(a1);
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
    {
      sub_100003460();
      sub_100139378();
      sub_100037514(v2, v3, v4, v5, v6);
    }
  }
}

uint64_t sub_1001B2C6C()
{
  sub_1001394BC();
  if ((v1 & 1) == 0)
  {
    v2 = sub_10011B768(v1);
    if (sub_1000033C0(v2))
    {
      sub_100003460();
      sub_100021D74();
      _os_log_impl(v3, v4, v5, v6, v7, 0x16u);
    }
  }

  sub_1000119D0();
  return v8();
}

uint64_t sub_1001B2D3C(uint64_t a1)
{
  if ((a1 & 1) == 0)
  {
    v2 = sub_10011B768(a1);
    if (sub_100021E38(v2))
    {
      sub_10000343C();
      sub_100013984();
      sub_10000FB94(v3, v4, v5, v6, v7);
    }
  }

  sub_1000119D0();
  return v8();
}

uint64_t sub_1001B2DE8()
{
  sub_1001393FC();
  if ((_CPLSilentLogging & 1) == 0)
  {
    v2 = sub_10011B768(v1);
    if (sub_1000033C0(v2))
    {
      sub_1000187DC();
      sub_100021D74();
      _os_log_impl(v3, v4, v5, v6, v7, 0xCu);
    }
  }

  sub_1000119D0();
  return v8();
}

void sub_1001B2EA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  sub_10002B0F4();
  a18 = v20;
  a19 = v21;
  v23 = v22;
  v25 = v24;
  if (_CPLSilentLogging != 1)
  {
    v26 = __CPLGenericOSLogDomain();
    if (sub_1000033C0(v26))
    {
      LODWORD(a11) = 138412290;
      *(&a11 + 4) = v23;
      sub_10004DA10(&_mh_execute_header, v27, v28, "Transport should have set a proper scope identifier for %@", &a11);
    }
  }

  v29 = +[NSAssertionHandler currentHandler];
  v30 = *(v25 + 72);
  v31 = *(v25 + 32);
  v32 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/DirectClientToEngine/CPLDirectLibraryManager.m"];
  [v29 handleFailureInMethod:v30 object:v31 file:v32 lineNumber:743 description:@"Transport should have set a proper scope identifier for %@"];

  abort();
}

void sub_1001B2F78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  sub_10002B0F4();
  a18 = v20;
  a19 = v21;
  v23 = v22;
  v25 = v24;
  if (_CPLSilentLogging != 1)
  {
    v26 = __CPLGenericOSLogDomain();
    if (sub_1000033C0(v26))
    {
      v29 = *(*(*v23 + 8) + 40);
      LODWORD(a11) = 138412290;
      *(&a11 + 4) = v29;
      sub_10004DA10(&_mh_execute_header, v27, v28, "Final scope should have a proper scope identifier for %@", &a11);
    }
  }

  v30 = +[NSAssertionHandler currentHandler];
  v31 = *(v25 + 64);
  v32 = *(v25 + 32);
  v33 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/DirectClientToEngine/CPLDirectLibraryManager.m"];
  [v30 handleFailureInMethod:v31 object:v32 file:v33 lineNumber:770 description:@"Final scope should have a proper scope identifier for %@"];

  abort();
}

void sub_1001B3068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  sub_10002B0F4();
  a18 = v20;
  a19 = v21;
  v23 = v22;
  if (_CPLSilentLogging != 1)
  {
    v24 = __CPLGenericOSLogDomain();
    if (sub_100003448(v24))
    {
      v26 = v23[5];
      LODWORD(a11) = 138412290;
      *(&a11 + 4) = v26;
      sub_1000139CC(&_mh_execute_header, v19, v25, "Failed to properly get the final scope change for %@", &a11);
    }
  }

  v27 = +[NSAssertionHandler currentHandler];
  v28 = v23[8];
  v29 = v23[4];
  v30 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/DirectClientToEngine/CPLDirectLibraryManager.m"];
  [v27 handleFailureInMethod:v28 object:v29 file:v30 lineNumber:777 description:@"Failed to properly get the final scope change for %@"];

  abort();
}

void sub_1001B3148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  sub_10002B0F4();
  a18 = v20;
  a19 = v21;
  v23 = v22;
  if (_CPLSilentLogging != 1)
  {
    v24 = __CPLGenericOSLogDomain();
    if (sub_100003448(v24))
    {
      v26 = v23[4];
      LODWORD(a11) = 138412290;
      *(&a11 + 4) = v26;
      sub_1000139CC(&_mh_execute_header, v19, v25, "Failed to properly get the final scope change for %@", &a11);
    }
  }

  v27 = +[NSAssertionHandler currentHandler];
  v28 = v23[8];
  v29 = v23[5];
  v30 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/DirectClientToEngine/CPLDirectLibraryManager.m"];
  [v27 handleFailureInMethod:v28 object:v29 file:v30 lineNumber:875 description:@"Failed to properly get the final scope change for %@"];

  abort();
}

void sub_1001B3228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v7 = sub_10011B768(a1);
    if (sub_10000FBAC(v7))
    {
      sub_10000343C();
      sub_100139440();
      _os_log_impl(v8, v9, v10, v11, v12, 0xCu);
    }
  }

  v13 = *(a1 + 40);
  v14 = [*(a1 + 48) writeTransactionBlocker];
  sub_100080C6C();
  *(a2 + 8) = 3221225472;
  *(a2 + 16) = sub_100123FE4;
  *(a2 + 24) = &unk_1002726D0;
  *(a2 + 32) = *(a1 + 56);
  *(a2 + 40) = *(a1 + 32);
  *a3 = _NSConcreteStackBlock;
  *(a3 + 8) = 3221225472;
  *(a3 + 16) = sub_1001240A0;
  *(a3 + 24) = &unk_100279860;
  *(a3 + 32) = *(a1 + 64);
  v15 = [v13 performWriteTransactionByPassBlocker:v14 withBlock:a2 completionHandler:a3];
}

void sub_1001B33BC(uint64_t a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v2 = sub_10011B768(a1);
    if (sub_10000FAE0(v2))
    {
      sub_10000343C();
      sub_100080C88();
      _os_log_impl(v3, v4, v5, v6, v7, 0xCu);
    }
  }
}

void sub_1001B3464(uint64_t a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v2 = sub_10011B768(a1);
    if (sub_10000FAE0(v2))
    {
      sub_10000343C();
      sub_100080C88();
      _os_log_impl(v3, v4, v5, v6, v7, 0xCu);
    }
  }
}

void sub_1001B3510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  sub_10002B0F4();
  a18 = v20;
  a19 = v21;
  v23 = v22;
  v25 = v24;
  if (_CPLSilentLogging != 1)
  {
    v26 = __CPLGenericOSLogDomain();
    if (sub_1000033C0(v26))
    {
      v29 = *v23;
      LODWORD(a11) = 138412290;
      *(&a11 + 4) = v29;
      sub_10004DA10(&_mh_execute_header, v27, v28, "Unable to find scope %@ after refresh", &a11);
    }
  }

  v30 = +[NSAssertionHandler currentHandler];
  v31 = *(v25 + 80);
  v32 = *(v25 + 48);
  v33 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/DirectClientToEngine/CPLDirectLibraryManager.m"];
  [v30 handleFailureInMethod:v31 object:v32 file:v33 lineNumber:1043 description:@"Unable to find scope %@ after refresh"];

  abort();
}

void sub_1001B35F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  sub_10002B0F4();
  a18 = v20;
  a19 = v21;
  v23 = v22;
  v25 = v24;
  if (_CPLSilentLogging != 1)
  {
    v26 = __CPLGenericOSLogDomain();
    if (sub_1000033C0(v26))
    {
      v29 = *(*(*v23 + 8) + 40);
      LODWORD(a11) = 138412290;
      *(&a11 + 4) = v29;
      sub_10004DA10(&_mh_execute_header, v27, v28, "Final scope should have a proper scope identifier for %@", &a11);
    }
  }

  v30 = +[NSAssertionHandler currentHandler];
  v31 = *(v25 + 64);
  v32 = *(v25 + 32);
  v33 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/DirectClientToEngine/CPLDirectLibraryManager.m"];
  [v30 handleFailureInMethod:v31 object:v32 file:v33 lineNumber:1051 description:@"Final scope should have a proper scope identifier for %@"];

  abort();
}

void sub_1001B36E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  sub_10002B0F4();
  a18 = v20;
  a19 = v21;
  v23 = v22;
  if (_CPLSilentLogging != 1)
  {
    v24 = __CPLGenericOSLogDomain();
    if (sub_100003448(v24))
    {
      v26 = *(*(v23[7] + 8) + 40);
      LODWORD(a11) = 138412290;
      *(&a11 + 4) = v26;
      sub_1000139CC(&_mh_execute_header, v19, v25, "Failed to properly get the final scope change for %@", &a11);
    }
  }

  v27 = +[NSAssertionHandler currentHandler];
  v28 = v23[8];
  v29 = v23[4];
  v30 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/DirectClientToEngine/CPLDirectLibraryManager.m"];
  [v27 handleFailureInMethod:v28 object:v29 file:v30 lineNumber:1058 description:@"Failed to properly get the final scope change for %@"];

  abort();
}

void sub_1001B37D0()
{
  sub_10002B0F4();
  v3 = v2;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = sub_10011B768(v1);
    if (sub_1000033C0(v4))
    {
      v5 = [v3 error];
      sub_100139338();
      sub_100021D74();
      _os_log_impl(v6, v7, v8, v9, v10, 0x16u);
    }
  }

  [v3 error];
  objc_claimAutoreleasedReturnValue();
  v11 = sub_1001392F4();
  v12(v11);

  sub_100139520();
}

void sub_1001B38B8()
{
  sub_1001393FC();
  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = sub_10011B768(v2);
    if (sub_1000033C0(v3))
    {
      sub_10000343C();
      sub_100021D74();
      _os_log_impl(v4, v5, v6, v7, v8, 0xCu);
    }
  }

  [CPLErrors invalidScopeErrorWithScopeIdentifier:*v0];
  objc_claimAutoreleasedReturnValue();
  v9 = sub_1001392F4();
  v10(v9);
}

void sub_1001B3988()
{
  sub_1001394BC();
  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = sub_10011B768(v2);
    if (sub_1000033C0(v3))
    {
      sub_100021E14();
      sub_100021D74();
      _os_log_impl(v4, v5, v6, v7, v8, 0xCu);
    }
  }

  [CPLErrors invalidScopeErrorWithScopeIdentifier:*v0];
  objc_claimAutoreleasedReturnValue();
  v9 = sub_1001392F4();
  v10(v9);
}

void sub_1001B3A58(uint64_t a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v2 = sub_10011B768(a1);
    if (sub_10000FAE0(v2))
    {
      sub_10000343C();
      sub_100080C88();
      _os_log_impl(v3, v4, v5, v6, v7, 0xCu);
    }
  }
}

void sub_1001B3B00()
{
  sub_1001393FC();
  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = sub_10011B768(v2);
    if (sub_1000033C0(v3))
    {
      sub_10000343C();
      sub_100021D74();
      _os_log_impl(v4, v5, v6, v7, v8, 0xCu);
    }
  }

  [CPLErrors invalidScopeErrorWithScopeIdentifier:*v0];
  objc_claimAutoreleasedReturnValue();
  v9 = sub_1001392F4();
  v10(v9);
}

uint64_t sub_1001B3BD0()
{
  sub_1001394BC();
  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = sub_10011B768(v2);
    if (sub_1000033C0(v3))
    {
      sub_100021E14();
      sub_100021D74();
      _os_log_impl(v4, v5, v6, v7, v8, 0xCu);
    }
  }

  *v0 = [CPLErrors cplErrorWithCode:52 description:@"Permission denied: not an owner"];
  v9 = sub_100139310();
  return v10(v9);
}

void sub_1001B3CAC()
{
  sub_10002B0F4();
  v3 = v2;
  v5 = v4;
  if ((v1 & 1) == 0)
  {
    v6 = sub_10011B768(v1);
    if (sub_100003424(v6))
    {
      v7 = [v5 allObjects];
      v8 = [v7 componentsJoinedByString:{@", "}];
      sub_10000AF90();
      sub_100013990();
      _os_log_impl(v9, v10, v11, v12, v13, 0xCu);
    }
  }

  v14 = [v5 allObjects];
  [v3 addObjectsFromArray:v14];

  [v5 removeAllObjects];
  sub_100139520();
}

void sub_1001B3DA0(void *a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = sub_10011B768(a1);
    if (sub_10000FAE0(v3))
    {
      v4 = [a1 allObjects];
      v5 = [v4 componentsJoinedByString:{@", "}];
      sub_10000AF90();
      sub_100080C88();
      _os_log_impl(v6, v7, v8, v9, v10, 0xCu);
    }
  }
}

uint64_t sub_1001B3E74(uint64_t a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v2 = sub_10011B768(a1);
    if (sub_100003424(v2))
    {
      sub_100013990();
      _os_log_impl(v3, v4, v5, v6, v7, 2u);
    }
  }

  sub_1000119D0();
  return v9(v8);
}

void sub_1001B3F00()
{
  sub_1001394BC();
  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = sub_10011B768(v2);
    if (sub_1000033C0(v3))
    {
      sub_100021E14();
      sub_100021D74();
      _os_log_impl(v4, v5, v6, v7, v8, 0xCu);
    }
  }

  [CPLErrors invalidScopeErrorWithScopeIdentifier:*v0];
  objc_claimAutoreleasedReturnValue();
  v9 = sub_1001392F4();
  v10(v9);
}

void sub_1001B3FD0(uint64_t a1, void *a2)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = sub_10011B768(a1);
    if (sub_10000FAE0(v5))
    {
      v6 = *(a1 + 32);
      if (v6)
      {
        [v6 componentsJoinedByString:{@", "}];
      }

      else
      {
        [*(a1 + 40) componentsJoinedByString:{@", "}];
      }
      v7 = ;
      v8 = [a2 componentsJoinedByString:{@", "}];
      sub_10000FB34();
      sub_100080C88();
      _os_log_impl(v9, v10, v11, v12, v13, 0x20u);
    }
  }
}

id sub_1001B40F0(uint64_t a1, void *a2, uint64_t *a3)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = sub_10011B768(a1);
    if (sub_1000033C0(v6))
    {
      sub_10000343C();
      sub_100021D74();
      _os_log_impl(v7, v8, v9, v10, v11, 0xCu);
    }
  }

  v12 = +[CPLErrors unknownError];
  *a3 = v12;
  return [a2 setError:v12];
}

id sub_1001B41C4(uint8_t *a1, uint64_t a2, uint64_t *a3, void *a4)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v9 = sub_10011B768(a1);
    if (sub_10000FBAC(v9))
    {
      *a1 = 138543362;
      *a3 = a2;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ is a valid scope for a forced sync", a1, 0xCu);
    }
  }

  return [a4 addObject:a2];
}

void sub_1001B428C(void *a1, uint64_t a2)
{
  v4 = +[NSNull null];
  [a1 setObject:v4 forKey:a2];
}

id sub_1001B42E0(uint64_t a1, void *a2)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = sub_10011B768(a1);
    if (sub_100021E20(v4))
    {
      v5 = [a2 path];
      sub_1000187DC();
      sub_100139338();
      sub_100139348();
      sub_100037514(v6, v7, v8, v9, v10);
    }
  }

  [sub_100139450() notePruningRequestForResource:? realPrune:? successful:? prunedSize:?];
  return sub_1001394E0();
}

id sub_1001B43B8(uint64_t a1, void *a2)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = sub_10011B768(a1);
    if (sub_100021E20(v4))
    {
      v5 = [a2 path];
      sub_1000187DC();
      sub_100139338();
      sub_100139348();
      sub_100037514(v6, v7, v8, v9, v10);
    }
  }

  [sub_100139450() notePruningRequestForResource:? realPrune:? successful:?];
  return sub_1001394E0();
}

uint64_t sub_1001B448C(uint64_t a1, uint64_t a2)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = sub_10011B768(a1);
    if (sub_1000033C0(v4))
    {
      sub_100021D74();
      _os_log_impl(v5, v6, v7, v8, v9, 0x20u);
    }
  }

  [sub_100139450() notePruningRequestForResource:? realPrune:? successful:?];
  sub_1000119D0();
  return v11(v10, a2, 50, @"missing fileURL");
}

void sub_1001B45B8(uint64_t a1, uint64_t *a2)
{
  if (_CPLSilentLogging != 1)
  {
    v5 = __CPLGenericOSLogDomain();
    if (sub_1000033C0(v5))
    {
      LOWORD(v15) = 0;
      sub_100021D74();
      _os_log_impl(v6, v7, v8, v9, v10, 2u);
    }
  }

  v11 = +[NSAssertionHandler currentHandler];
  v12 = *(a1 + 112);
  v13 = *a2;
  v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/DirectClientToEngine/CPLDirectLibraryManager.m"];
  [v11 handleFailureInMethod:v12 object:v13 file:v14 lineNumber:2532 description:@"There should be no resources to check on server when not asked to perform such check"];

  abort();
}

void sub_1001B468C()
{
  sub_1001393FC();
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = sub_10011B768(v3);
    if (sub_1000033C0(v4))
    {
      LOWORD(v14) = 0;
      sub_100021D74();
      _os_log_impl(v5, v6, v7, v8, v9, 2u);
    }
  }

  v10 = *(*(*(v0 + 88) + 8) + 40);
  v11 = *(v0 + 40);
  v12 = [CPLErrors cplErrorWithCode:27 description:@"Store has been reset", v14];
  *v1 = v12;
  v13 = [CPLErrors unsafeResources:v11 withError:v12 realPrune:*(v0 + 96) resourceStorage:*(v0 + 48)];
  [v10 addEntriesFromDictionary:v13];
}

uint64_t sub_1001B476C(uint64_t a1)
{
  if (a1)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v2 = sub_10011B768(a1);
      if (sub_10000FABC(v2))
      {
        sub_10000FB34();
        sub_100139324();
LABEL_8:
        _os_log_impl(v3, v4, v5, v6, v7, v8);
        goto LABEL_9;
      }

      goto LABEL_9;
    }
  }

  else if ((_CPLSilentLogging & 1) == 0)
  {
    v9 = sub_10011B768(0);
    if (sub_10000FABC(v9))
    {
      sub_100013984();
      v5 = OS_LOG_TYPE_DEFAULT;
      v8 = 2;
      goto LABEL_8;
    }

LABEL_9:
  }

  sub_1000119D0();
  return v11(v10);
}

void sub_1001B4864(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v4 = sub_10011B768(a1);
      if (sub_10000FABC(v4))
      {
        sub_10000FB34();
        sub_100139324();
LABEL_8:
        _os_log_impl(v5, v6, v7, v8, v9, v10);
        goto LABEL_9;
      }

      goto LABEL_9;
    }
  }

  else if ((_CPLSilentLogging & 1) == 0)
  {
    v11 = sub_10011B768(0);
    if (sub_10000FABC(v11))
    {
      LOWORD(v14) = 0;
      sub_100013984();
      v7 = OS_LOG_TYPE_DEFAULT;
      v10 = 2;
      goto LABEL_8;
    }

LABEL_9:
  }

  v12 = *(a2 + 40);
  v13 = +[CPLErrors notImplementedError];
  (*(v12 + 16))(v12, v13);
}

uint64_t sub_1001B4978(uint64_t a1, uint64_t *a2)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = sub_10011B768(a1);
    if (sub_1000033C0(v4))
    {
      LOWORD(v13) = 0;
      sub_100021D74();
      _os_log_impl(v5, v6, v7, v8, v9, 2u);
    }
  }

  *a2 = +[CPLErrors notImplementedError];
  v10 = sub_100139310();
  return v11(v10);
}

void sub_1001B4A14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  sub_10002B0F4();
  a18 = v20;
  a19 = v21;
  v23 = v22;
  v25 = v24;
  if (_CPLSilentLogging != 1)
  {
    v26 = __CPLGenericOSLogDomain();
    if (sub_1000033C0(v26))
    {
      v27 = NSStringFromSelector(v25);
      LODWORD(a11) = 138412290;
      *(&a11 + 4) = v27;
      sub_10004DA10(&_mh_execute_header, v28, v29, "%@ called too many times", &a11);
    }
  }

  v30 = +[NSAssertionHandler currentHandler];
  v31 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/DirectClientToEngine/CPLDirectLibraryManager.m"];
  v32 = NSStringFromSelector(v25);
  [v30 handleFailureInMethod:v25 object:v23 file:v31 lineNumber:3290 description:@"%@ called too many times"];

  abort();
}

id sub_1001B4B0C(void *a1, void *a2)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = sub_10011B768(a1);
    if (sub_100003424(v5))
    {
      LODWORD(v12) = 138412290;
      *(&v12 + 4) = a1;
      sub_100013990();
      _os_log_impl(v6, v7, v8, v9, v10, 0xCu);
    }
  }

  result = [a1 copy];
  *a2 = result;
  return result;
}

void sub_1001B4BDC(id a1)
{
  has_internal_content = os_variant_has_internal_content();
  byte_1002D2810 = has_internal_content;
  if (has_internal_content && (_CPLSilentLogging & 1) == 0)
  {
    v2 = sub_100139904(has_internal_content);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      sub_10000F9B0(&_mh_execute_header, v3, v4, "Checking acknowledged batches in pull session", v5, v6, v7, v8, 0);
    }
  }
}

void sub_1001B4C5C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) objectAtIndex:a3];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  if (v7 == v8)
  {
    v9 = objc_alloc_init(CPLDiffTracker);
    if ([v5 cplProperties:0 areEqualToPropertiesOf:v6 diffTracker:v9 withEqualityBlock:0])
    {
LABEL_16:

      goto LABEL_17;
    }

    v10 = [v9 differingProperties];
    v11 = [v10 anyObject];

    if (v11)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v13 = sub_100139904(v12);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v14 = [v5 valueForKey:v11];
          v15 = [v6 valueForKey:v11];
          sub_10013BE34();
          v25 = v16;
          v26 = v11;
          v27 = v16;
          v28 = v14;
          v29 = v16;
          v30 = v17;
          v18 = "Expected record:\n%@\nvs. acknowledged record:\n%@\nDifferent on %@: %@ vs. %@";
          v19 = v13;
          v20 = 52;
LABEL_13:
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, v18, &v21, v20);

          goto LABEL_14;
        }

        goto LABEL_14;
      }
    }

    else if ((_CPLSilentLogging & 1) == 0)
    {
      v13 = sub_100139904(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = [v5 cplFullDescription];
        v15 = [v6 cplFullDescription];
        v21 = 138412546;
        v22 = v14;
        v23 = 2112;
        v24 = v15;
        v18 = "Expected record:\n%@\n====\nReceived:\n%@";
        v19 = v13;
        v20 = 22;
        goto LABEL_13;
      }

LABEL_14:
    }

    goto LABEL_16;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v9 = sub_100139904(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10013BE34();
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Expected record:\n%@\nvs. acknowledged record:\n%@", &v21, 0x16u);
    }

    goto LABEL_16;
  }

LABEL_17:
}

uint64_t sub_1001B4EE0(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 113));
  [WeakRetained assertNoUnacknowledgedChanges];

  v5 = *(a1 + 32);
  v6 = *(v5 + 57);
  if (v6)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v7 = sub_100139904(v4);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(*(a1 + 32) + 57);
        *buf = 138412290;
        v128 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Client did not acknowledge %@. We will send it back the next time", buf, 0xCu);
      }

      v5 = *(a1 + 32);
      v6 = *(v5 + 57);
    }

    *(v5 + 57) = 0;

    v9 = *(a1 + 32);
    v10 = *(v9 + 65);
    *(v9 + 65) = 0;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v11 = sub_100139904(v4);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Compacting pull queue", buf, 2u);
    }
  }

  v12 = objc_loadWeakRetained((*(a1 + 32) + 129));
  v13 = [v12 compactChangeBatchesWithError:a2];

  if (!v13)
  {
    return 0;
  }

  v14 = objc_loadWeakRetained((*(a1 + 32) + 129));
  v15 = [v14 isEmpty];

  if (!v15)
  {
    return 1;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v17 = sub_100139904(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "No remaining changes in pull queue, comitting remaining records in cloud cache", buf, 2u);
    }
  }

  v18 = objc_loadWeakRetained((*(a1 + 32) + 113));
  v19 = [v18 transientPullRepository];

  v20 = objc_loadWeakRetained((*(a1 + 32) + 113));
  v117 = [v20 cloudCache];

  v21 = objc_loadWeakRetained((*(a1 + 32) + 113));
  v116 = [v21 pushRepository];

  v124 = 0u;
  v125 = 0u;
  v122 = 0u;
  v123 = 0u;
  v119 = 121;
  v22 = objc_loadWeakRetained((*(a1 + 32) + 121));
  v23 = [v22 enumeratorForScopesIncludeInactive:0];

  obj = v23;
  v24 = [v23 countByEnumeratingWithState:&v122 objects:v126 count:16];
  if (!v24)
  {
    v109 = 1;
    goto LABEL_51;
  }

  v26 = v24;
  v27 = *v123;
  *&v25 = 138412290;
  v111 = v25;
  while (2)
  {
    for (i = 0; i != v26; i = i + 1)
    {
      if (*v123 != v27)
      {
        objc_enumerationMutation(obj);
      }

      v29 = *(*(&v122 + 1) + 8 * i);
      v30 = [v29 scopeIdentifier];
      v31 = [v19 hasOnlyMingledRecordsWithScopeIdentifier:v30];
      if (!v31)
      {
        goto LABEL_41;
      }

      v39 = sub_10013BE18(v31, v32, v33, v34, v35, v36, v37, v38, v111, *(&v111 + 1), v114, v116, v117, obj, v119);
      v40 = [v39 transientSyncAnchorForScope:v29];

      if (v40)
      {
        v41 = [v116 hasChangesInScopeWithIdentifier:v30];
        if (v41)
        {
          if (_CPLSilentLogging)
          {
            goto LABEL_40;
          }

          v49 = sub_100139904(v41);
          v50 = os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT);
          if (v50)
          {
            sub_10013BE00(v50, v51, v52, v53, v54, v55, v56, v57, v58, v59);
            v61 = v49;
            v62 = "No more changes for %@, but there are still changes to push to the transport";
            goto LABEL_32;
          }

          goto LABEL_33;
        }

        v63 = sub_10013BE18(v41, v42, v43, v44, v45, v46, v47, v48, v111, *(&v111 + 1), v114, v116, v117, obj, v119);
        v64 = [v63 doesScopeNeedToPullChangesFromTransport:v29];

        if (!v64)
        {
          if ((_CPLSilentLogging & 1) == 0)
          {
            v83 = sub_100139904(v65);
            v84 = os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT);
            if (v84)
            {
              sub_10013BE00(v84, v85, v86, v87, v88, v89, v90, v91, v92, v93);
              _os_log_impl(&_mh_execute_header, v83, OS_LOG_TYPE_DEFAULT, "No more changes for %@, nothing to push or pull from/to transport - committing transient sync anchor", v94, 0xCu);
            }
          }

          v95 = sub_10013BE18(v65, v66, v67, v68, v69, v70, v71, v72, v111, *(&v111 + 1), v114, v116, v117, obj, v119);
          v96 = [v95 setSyncAnchor:v40 forScope:v29 error:a2];

          if (!v96 || (v105 = sub_10013BE18(v97, v98, v99, v100, v101, v102, v103, v104, v112, v113, v115, v116, v117, obj, v120), v106 = [v105 storeTransientSyncAnchor:0 forScope:v29 error:a2], v105, (v106 & 1) == 0))
          {

LABEL_49:
LABEL_50:
            v109 = 0;
            goto LABEL_51;
          }

          goto LABEL_40;
        }

        if ((_CPLSilentLogging & 1) == 0)
        {
          v49 = sub_100139904(v65);
          v73 = os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT);
          if (v73)
          {
            sub_10013BE00(v73, v74, v75, v76, v77, v78, v79, v80, v81, v82);
            v61 = v49;
            v62 = "No more changes for %@, but there are still changes to pull from the transport";
LABEL_32:
            _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, v62, v60, 0xCu);
          }

LABEL_33:
        }
      }

LABEL_40:
      v107 = [v117 commitStagedChangesForScopeWithIdentifier:v30 error:a2];

      if ((v107 & 1) == 0)
      {
        goto LABEL_49;
      }

LABEL_41:
      v108 = [v19 deleteMingledRecordsForScopeWithIdentifier:v30 error:a2];

      if (!v108)
      {
        goto LABEL_50;
      }
    }

    v26 = [obj countByEnumeratingWithState:&v122 objects:v126 count:16];
    v109 = 1;
    if (v26)
    {
      continue;
    }

    break;
  }

LABEL_51:

  return v109;
}

void sub_1001B5448(uint64_t a1)
{
  v1 = sub_100139904(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 0;
    sub_10000F9B0(&_mh_execute_header, v2, v3, "Removing all push/pull gatekeepers", v4, v5, v6, v7, v8);
  }
}

void sub_1001B54A0(void *a1, uint64_t a2, uint64_t a3)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = sub_100139904(a1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(*a1 + a2);
      v10 = 138412290;
      v11 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Trying to get a batch while we are still waiting to acknowledge the previous one:\n%@", &v10, 0xCu);
    }
  }

  v8 = *(a3 + 40);
  v9 = [CPLErrors incorrectMachineStateErrorWithReason:@"Trying to pull a batch before acknowledging the previous one"];
  [v8 setError:v9];
}

void sub_1001B559C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (_CPLSilentLogging != 1)
  {
    v6 = sub_100139904(a1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(*a2 + a3);
      *buf = 138412290;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Compacted batch for %@ is nil", buf, 0xCu);
    }
  }

  v8 = +[NSAssertionHandler currentHandler];
  v9 = *(a1 + 64);
  v10 = *a2;
  v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/DirectClientToEngine/CPLDirectPullChangeSession.m"];
  [v8 handleFailureInMethod:v9 object:v10 file:v11 lineNumber:177 description:{@"Compacted batch for %@ is nil", *(*a2 + a3)}];

  abort();
}

void sub_1001B56A0(uint64_t a1, uint64_t a2)
{
  if ((a1 & 1) == 0)
  {
    v3 = sub_100139904(a1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10013BE4C(&_mh_execute_header, v4, v5, "We should not have a non-empty batch yet as we are trying to look for one", v6, v7, v8, v9, 0);
    }
  }

  v10 = +[NSAssertionHandler currentHandler];
  v11 = *(a2 + 64);
  v12 = *(a2 + 32);
  v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/DirectClientToEngine/CPLDirectPullChangeSession.m"];
  [v10 handleFailureInMethod:v11 object:v12 file:v13 lineNumber:238 description:@"We should not have a non-empty batch yet as we are trying to look for one"];

  abort();
}

id sub_1001B5758(uint64_t a1, uint64_t a2)
{
  if ((a1 & 1) == 0)
  {
    v3 = sub_100139904(a1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 134217984;
      v6 = 100;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Failed to get a non empty batch after getting %lu batches from the pull queue - will continue to look for one", &v5, 0xCu);
    }
  }

  return [*(a2 + 32) getChangeBatchWithCompletionHandler:*(a2 + 40)];
}

void sub_1001B5820(void *a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v2 = sub_100139904(a1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_10013BE4C(&_mh_execute_header, v3, v4, "Engine is returning a nil library version but no error. This is a bug", v5, v6, v7, v8, 0);
    }
  }

  v9 = +[CPLErrors missingError];
  [a1 setError:v9];
}

void sub_1001B58D8(const char *a1, uint64_t a2)
{
  if (_CPLSilentLogging != 1)
  {
    v4 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = NSStringFromSelector(a1);
      *buf = 138412290;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%@ called too many times", buf, 0xCu);
    }
  }

  v6 = +[NSAssertionHandler currentHandler];
  v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/DirectClientToEngine/CPLDirectChangeSession.m"];
  v8 = NSStringFromSelector(a1);
  [v6 handleFailureInMethod:a1 object:a2 file:v7 lineNumber:169 description:{@"%@ called too many times", v8}];

  abort();
}

uint64_t sub_1001B59E8(uint64_t a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v2 = sub_10013D210(a1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      if (*(*(a1 + 32) + 49))
      {
        v3 = "some changes";
      }

      else
      {
        v3 = "no changes";
      }

      *buf = 136315138;
      v30 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Finalized push session and %s were pushed by the client", buf, 0xCu);
    }
  }

  v4 = *(a1 + 32);
  if (*(v4 + 49) == 1 && *(v4 + 50) == 1)
  {
    WeakRetained = objc_loadWeakRetained((v4 + 65));
    v6 = [WeakRetained syncManager];
    v7 = [v6 lastError];
    v8 = [v7 isCPLErrorWithCode:30];

    if (v8)
    {
      v9 = objc_loadWeakRetained((*(a1 + 32) + 73));
      v10 = [v9 scopes];

      v11 = objc_alloc_init(NSMutableArray);
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v12 = *(*(a1 + 32) + 97);
      v13 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v25;
        do
        {
          for (i = 0; i != v14; i = i + 1)
          {
            if (*v25 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v24 + 1) + 8 * i);
            v18 = [v10 scopeWithIdentifier:{v17, v24}];
            if (v18 && [v10 valueForFlag:2 forScope:v18])
            {
              [v11 addObject:v17];
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
        }

        while (v14);
      }

      v19 = [v11 count];
      if (v19)
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v20 = sub_10013D210(v19);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v21 = [v11 componentsJoinedByString:{@", "}];
            *buf = 138412290;
            v30 = v21;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Resetting scheduler back-off to try to move %@ under quota", buf, 0xCu);
          }
        }

        v22 = objc_loadWeakRetained((*(a1 + 32) + 89));
        [v22 resetBackoffInterval];
      }
    }
  }

  return 1;
}

void sub_1001B5D24(void *a1, void *a2)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = sub_10013D210(a1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138412290;
      v6 = a1;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Automatically dropping batch in read-only mode: %@", &v5, 0xCu);
    }
  }

  *a2 = objc_alloc_init(CPLChangeBatch);
}

void sub_1001B5DF8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (_CPLSilentLogging != 1)
  {
    v6 = sub_10013D210(a1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [*(*(*a3 + 8) + 40) incomingBatch];
      *buf = 138412290;
      v14 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Failed to create a diff from incoming batch:\n%@", buf, 0xCu);
    }
  }

  v8 = +[NSAssertionHandler currentHandler];
  v9 = *(a1 + 64);
  v10 = *a2;
  v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/DirectClientToEngine/CPLDirectPushChangeSession.m"];
  v12 = [*(*(*a3 + 8) + 40) incomingBatch];
  [v8 handleFailureInMethod:v9 object:v10 file:v11 lineNumber:195 description:{@"Failed to create a diff from incoming batch:\n%@", v12}];

  abort();
}

id sub_1001B5F24(uint64_t a1, void *a2)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = sub_10013D210(a1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412290;
      v7 = a1;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Client tried to push an invalid batch: %@", &v6, 0xCu);
    }
  }

  return [a2 setError:a1];
}

void sub_1001B5FF0(void *a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v2 = sub_10013D210(a1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Engine is returning a nil library version but no error. This is a bug", v4, 2u);
    }
  }

  v3 = +[CPLErrors missingError];
  [a1 setError:v3];
}

void sub_1001B6090(uint64_t a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v2 = sub_10013D210(a1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 65));
      v4 = [WeakRetained syncManager];
      v7 = 138412290;
      v8 = v4;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Cancelling upload for %@", &v7, 0xCu);
    }
  }

  v5 = objc_loadWeakRetained((*(a1 + 32) + 65));
  v6 = [v5 syncManager];
  [v6 cancelCurrentSyncSession];
}

void sub_1001B6FF4(uint64_t a1, uint64_t a2)
{
  if (_CPLSilentLogging != 1)
  {
    v4 = sub_10013EE4C(a1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v13 = 0;
      sub_10000AF60(&_mh_execute_header, v5, v6, "invalid scope in scope storage: missing identifier", v7, v8, v9, v10, v13);
    }
  }

  v11 = +[NSAssertionHandler currentHandler];
  v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/PrequeliteStore/CPLPrequeliteScopeStorage.m"];
  [v11 handleFailureInMethod:a1 object:a2 file:v12 lineNumber:62 description:@"invalid scope in scope storage: missing identifier"];

  abort();
}

void sub_1001B70E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = +[NSAssertionHandler currentHandler];
  v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/PrequeliteStore/CPLPrequeliteScopeStorage.m"];
  v8 = [CPLScopeChange descriptionForScopeType:a1];
  [v6 handleFailureInMethod:a2 object:a3 file:v7 lineNumber:320 description:{@"%@ should not be directly synchronized with client", v8}];

  abort();
}

id sub_1001B7184(void *a1, _BYTE *a2)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = sub_10013EE4C(a1);
    if (sub_100003424(v5))
    {
      LOWORD(v12) = 0;
      sub_100013990();
      _os_log_impl(v6, v7, v8, v9, v10, 2u);
    }
  }

  result = [a1 _createInitialPrimarySyncScope];
  *a2 = result;
  return result;
}

void sub_1001B7208(uint64_t a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v2 = sub_10013EE4C(a1);
    if (sub_10000FAE0(v2))
    {
      sub_1000139A0();
      sub_100080C88();
      _os_log_impl(v3, v4, v5, v6, v7, 0xCu);
    }
  }
}

void sub_1001B72A8(void *a1, uint64_t a2)
{
  v4 = [a1 changes];
  if (v4 <= 0)
  {
    if (_CPLSilentLogging)
    {
      return;
    }

    v12 = sub_10013EE4C(v4);
    if (sub_10000FAE0(v12))
    {
      sub_100080C88();
      _os_log_impl(v13, v14, v15, v16, v17, 2u);
    }
  }

  else
  {
    if (_CPLSilentLogging)
    {
      return;
    }

    v5 = sub_10013EE4C(v4);
    if (sub_10000FAE0(v5))
    {
      v6 = [CPLDateFormatter stringFromDate:a2];
      sub_10000AF90();
      sub_100080C88();
      _os_log_impl(v7, v8, v9, v10, v11, 0xCu);
    }
  }
}

void sub_1001B73A8(uint64_t a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v2 = sub_10013EE4C(a1);
    if (sub_10000FAE0(v2))
    {
      sub_100080C88();
      _os_log_impl(v3, v4, v5, v6, v7, 0xCu);
    }
  }
}

void sub_1001B7458(uint64_t a1)
{
  v2 = sub_10013EE4C(a1);
  if (sub_10000FAE0(v2))
  {
    sub_1000139A0();
    sub_100080C88();
    _os_log_impl(v3, v4, v5, v6, v7, 0xCu);
  }
}

void sub_1001B74EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (_CPLSilentLogging != 1)
  {
    v6 = sub_10013EE4C(a1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10002B064(&_mh_execute_header, v7, v8, "Missing scope types in order of scope types for %@", v9, v10, v11, v12, v15, v16);
    }
  }

  v13 = +[NSAssertionHandler currentHandler];
  v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/PrequeliteStore/CPLPrequeliteScopeStorage.m"];
  [v13 handleFailureInMethod:a1 object:a2 file:v14 lineNumber:785 description:{@"Missing scope types in order of scope types for %@", a3}];

  abort();
}

void sub_1001B75DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10013EE4C(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    LODWORD(v11) = 138412546;
    *(&v11 + 4) = a1;
    sub_1000033B4();
    *v12 = a2;
    sub_1000187BC(&_mh_execute_header, v5, v6, "Failed to deserialize supervisor info for %@: %@", v7, v8, v9, v10, v11, DWORD2(v11), *&v12[2]);
  }
}

void sub_1001B7684(void *a1)
{
  v3 = sub_10013EE4C(a1);
  if (sub_10000FAE0(v3))
  {
    [a1 changes];
    sub_10000AF90();
    sub_100080C88();
    _os_log_impl(v4, v5, v6, v7, v8, 0xCu);
  }
}

void sub_1001B771C(void *a1, uint64_t a2)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = sub_10013EE4C(a1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 138412546;
      v6 = a1;
      sub_1000033B4();
      v7 = a2;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Invalid stored scope change %@ for %@", &v5, 0x16u);
    }
  }
}

void sub_1001B77E8(void *a1)
{
  v3 = sub_10013EE4C(a1);
  if (sub_10000FAE0(v3))
  {
    v4 = [a1 scopeIdentifier];
    sub_10000AF90();
    sub_100080C88();
    _os_log_impl(v5, v6, v7, v8, v9, 0x20u);
  }
}

void sub_1001B78B0(uint64_t a1, uint64_t a2)
{
  if (_CPLSilentLogging != 1)
  {
    v4 = sub_10013EE4C(a1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v13 = 0;
      sub_10000AF60(&_mh_execute_header, v5, v6, "Unable to determine transport group class", v7, v8, v9, v10, v13);
    }
  }

  v11 = +[NSAssertionHandler currentHandler];
  v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/PrequeliteStore/CPLPrequeliteScopeStorage.m"];
  [v11 handleFailureInMethod:a1 object:a2 file:v12 lineNumber:1689 description:@"Unable to determine transport group class"];

  abort();
}

void sub_1001B7974(void *a1)
{
  v1 = objc_begin_catch(a1);
  v2 = v1;
  if (_CPLSilentLogging != 1)
  {
    v3 = sub_10013EE4C(v1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Stored transport group does not seem supported anymore (%@)", &v4, 0xCu);
    }
  }

  objc_end_catch();
}

void sub_1001B7A44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (_CPLSilentLogging != 1)
  {
    v6 = sub_10013EE4C(a1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10002B064(&_mh_execute_header, v7, v8, "Can't serialize %@", v9, v10, v11, v12, v15, v16);
    }
  }

  v13 = +[NSAssertionHandler currentHandler];
  v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/PrequeliteStore/CPLPrequeliteScopeStorage.m"];
  [v13 handleFailureInMethod:a1 object:a2 file:v14 lineNumber:1714 description:{@"Can't serialize %@", a3}];

  abort();
}

void sub_1001B7B20(uint64_t a1)
{
  v1 = sub_10013EE4C(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    sub_1000139A0();
    sub_1000033B4();
    sub_1000187BC(&_mh_execute_header, v2, v3, "Can't save group %@: %@", v4, v5, v6, v7);
  }
}

id sub_1001B7BB8(void *a1, uint64_t a2)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = sub_10013EE4C(a1);
    if (sub_100003424(v5))
    {
      LOWORD(v12) = 0;
      sub_100013990();
      _os_log_impl(v6, v7, v8, v9, v10, 2u);
    }
  }

  return [a1 _markFirstSyncOfPrimaryAsSuccessfulWithScope:{a2, v12}];
}

id sub_1001B7C3C(void *a1, void *a2)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = sub_10013EE4C(a1);
    if (sub_100003424(v5))
    {
      v6 = [a1 scopeIdentifier];
      sub_10000AF90();
      sub_100013990();
      _os_log_impl(v7, v8, v9, v10, v11, 0xCu);
    }
  }

  return [a2 _markFirstSyncOfPrimaryAsSuccessfulWithScope:a1];
}

void sub_1001B7EE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (_CPLSilentLogging != 1)
  {
    v6 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v10 = a3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Can't get related scoped identifier from %@", buf, 0xCu);
    }
  }

  v7 = +[NSAssertionHandler currentHandler];
  v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/PrequeliteStore/CPLStoreMigrationAssistant_101386451.m"];
  [v7 handleFailureInMethod:a1 object:a2 file:v8 lineNumber:172 description:{@"Can't get related scoped identifier from %@", a3}];

  abort();
}

void sub_1001B7FD0(uint64_t a1)
{
  v1 = sub_10014BE6C(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    sub_10000FAAC();
    _os_log_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

void sub_1001B806C(uint64_t a1)
{
  v1 = sub_10014BE6C(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    sub_100021CFC();
    sub_10000FAAC();
    _os_log_impl(v2, v3, v4, v5, v6, 0x16u);
  }
}

void sub_1001B8128(uint64_t a1)
{
  v1 = sub_10014BE6C(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    sub_10000FAAC();
    _os_log_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

void sub_1001B8A38(uint64_t a1, _BYTE *a2)
{
  if ((a1 & 1) == 0)
  {
    v3 = sub_10014C718(a1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v4 = [a2 abstractObject];
      v5 = [v4 name];
      v6 = 138412290;
      v7 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Initializing %@", &v6, 0xCu);
    }
  }

  a2[33] = 1;
  a2[35] = 0;
}

void sub_1001B8EB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (_CPLSilentLogging != 1)
  {
    v5 = sub_10014C718(a1);
    if (sub_10002B0A8(v5))
    {
      sub_10002B064(&_mh_execute_header, v6, v7, "Trying to create a global variable %@ in a table", v8, v9, v10, v11, v14, v15);
    }
  }

  v12 = +[NSAssertionHandler currentHandler];
  v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/PrequeliteStore/CPLPrequeliteStorage.m"];
  [sub_10002B108() handleFailureInMethod:a3 object:? file:? lineNumber:? description:?];

  abort();
}

void sub_1001B8F88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (_CPLSilentLogging != 1)
  {
    v5 = sub_10014C718(a1);
    if (sub_10002B0A8(v5))
    {
      sub_10002B064(&_mh_execute_header, v6, v7, "Trying to set a value for a global variable %@ in a table", v8, v9, v10, v11, v14, v15);
    }
  }

  v12 = +[NSAssertionHandler currentHandler];
  v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/PrequeliteStore/CPLPrequeliteStorage.m"];
  [sub_10002B108() handleFailureInMethod:a3 object:? file:? lineNumber:? description:?];

  abort();
}

void sub_1001B9058(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (_CPLSilentLogging != 1)
  {
    v5 = sub_10014C718(a1);
    if (sub_10002B0A8(v5))
    {
      sub_10002B064(&_mh_execute_header, v6, v7, "Trying to get a value for a global variable %@ in a table", v8, v9, v10, v11, v14, v15);
    }
  }

  v12 = +[NSAssertionHandler currentHandler];
  v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/PrequeliteStore/CPLPrequeliteStorage.m"];
  [sub_10002B108() handleFailureInMethod:a3 object:? file:? lineNumber:? description:?];

  abort();
}

void sub_1001B9128(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (_CPLSilentLogging != 1)
  {
    v5 = sub_10014C718(a1);
    if (sub_10002B0A8(v5))
    {
      sub_10002B064(&_mh_execute_header, v6, v7, "Trying to reset a value for a global variable %@ in a table", v8, v9, v10, v11, v14, v15);
    }
  }

  v12 = +[NSAssertionHandler currentHandler];
  v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/PrequeliteStore/CPLPrequeliteStorage.m"];
  [sub_10002B108() handleFailureInMethod:a3 object:? file:? lineNumber:? description:?];

  abort();
}

void sub_1001B91F8(uint64_t a1, uint64_t a2)
{
  if (_CPLSilentLogging != 1)
  {
    v5 = sub_10014C718(a1);
    if (sub_1000033C0(v5))
    {
      sub_10000348C(&_mh_execute_header, v6, v7, "trying to recreate main table %@ while already creating the main table", v8, v9, v10, v11, v14, v15);
    }
  }

  v12 = +[NSAssertionHandler currentHandler];
  v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/PrequeliteStore/CPLPrequeliteStorage.m"];
  [v12 handleFailureInMethod:a2 object:a1 file:v13 lineNumber:474 description:{@"trying to recreate main table %@ while already creating the main table", *(a1 + 16)}];

  abort();
}

void sub_1001B92DC(uint64_t a1, uint64_t a2)
{
  if (_CPLSilentLogging != 1)
  {
    v5 = sub_10014C718(a1);
    if (sub_1000033C0(v5))
    {
      v6 = objc_opt_class();
      sub_10000348C(&_mh_execute_header, v7, v8, "Trying to recreate main table for %@ while it was just already created", v9, v10, v11, v12, v15, v16);
    }
  }

  v13 = +[NSAssertionHandler currentHandler];
  v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/PrequeliteStore/CPLPrequeliteStorage.m"];
  [v13 handleFailureInMethod:a2 object:a1 file:v14 lineNumber:475 description:{@"Trying to recreate main table for %@ while it was just already created", objc_opt_class()}];

  abort();
}

void sub_1001B9A4C(uint64_t a1, CFAbsoluteTime *a2)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = sub_10014EDBC(a1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(v9) = 138412290;
      *(&v9 + 4) = a1;
      sub_100013984();
      _os_log_impl(v5, v6, OS_LOG_TYPE_DEBUG, v7, v8, 0xCu);
    }
  }

  +[CPLSyncIndicator showSyncIndicator];
  *a2 = CFAbsoluteTimeGetCurrent();
}

id sub_1001B9B30(void *a1, uint64_t a2)
{
  *a1 = 0;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = sub_10014EDBC(a1);
    if (sub_10014FD8C(v4))
    {
      LODWORD(v11) = 138412290;
      *(&v11 + 4) = a2;
      sub_10014FD7C();
      _os_log_impl(v5, v6, v7, v8, v9, 0xCu);
    }
  }

  return +[CPLSyncIndicator hideSyncIndicator];
}

id sub_1001B9BE4(void *a1, void *a2)
{
  *a1 = 0;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = sub_10014EDBC(a1);
    if (sub_10014FD8C(v4))
    {
      LODWORD(v11) = 138412290;
      *(&v11 + 4) = *a2;
      sub_10014FD7C();
      _os_log_impl(v5, v6, v7, v8, v9, 0xCu);
    }
  }

  return +[CPLSyncIndicator hideSyncIndicator];
}

void sub_1001B9C9C(uint64_t a1, uint64_t *a2)
{
  if (_CPLSilentLogging != 1)
  {
    v4 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = NSStringFromSelector(*(a1 + 48));
      *buf = 138412290;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%@ called too many times", buf, 0xCu);
    }
  }

  v6 = +[NSAssertionHandler currentHandler];
  v7 = *(a1 + 48);
  v8 = *a2;
  v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/Base/CPLBaseSyncManager.m"];
  v10 = NSStringFromSelector(*(a1 + 48));
  [v6 handleFailureInMethod:v7 object:v8 file:v9 lineNumber:232 description:{@"%@ called too many times", v10}];

  abort();
}

void sub_1001B9DB4(void **a1, void *a2)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = sub_100002F50(a1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v9) = 0;
      sub_100013984();
      _os_log_impl(v4, v5, OS_LOG_TYPE_ERROR, v6, v7, 2u);
    }

    a2 = *a1;
  }

  [a2 unpublish];
  v8 = *a1;
  *a1 = 0;
}

void sub_1001B9E58(uint64_t a1, _BYTE *a2)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = sub_100002F50(a1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      if (*(a1 + 40))
      {
        v5 = " (foreground)";
      }

      else
      {
        v5 = "";
      }

      v7 = 136315138;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Sync session did finish%s", &v7, 0xCu);
    }
  }

  [a1 _stopShowingIndicator:@"sync session"];
  [a1 endClientWork:@"sync session"];
  *(a1 + 56) = 14;
  [*(a1 + 48) unpublish];
  v6 = *(a1 + 48);
  *(a1 + 48) = 0;

  *a2 = 0;
}

void sub_1001B9F8C(uint64_t a1, uint64_t a2)
{
  if (_CPLSilentLogging != 1)
  {
    v4 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "We should not have a progress here", v7, 2u);
    }
  }

  v5 = +[NSAssertionHandler currentHandler];
  v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/Base/CPLBaseSyncManager.m"];
  [v5 handleFailureInMethod:a1 object:a2 file:v6 lineNumber:511 description:@"We should not have a progress here"];

  abort();
}

id sub_1001BA14C(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = [*(*(a1 + 32) + 32) executeRaw:@"CREATE TABLE IF NOT EXISTS globals (libraryVersion TEXT)"];
  v6 = "PLPrequeliteResourceUploadQueue";
  if ((v5 & 1) == 0)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v31 = sub_100150214(v5);
      if (sub_1000033C0(v31))
      {
        v32 = [*(*(a1 + 32) + 32) lastCPLError];
        v33 = [v32 localizedDescription];
        v48 = 138412290;
        v49 = v33;
        sub_10004DA10(&_mh_execute_header, v34, v35, "Unable to create database globals table: %@", &v48);
      }
    }

    goto LABEL_36;
  }

  v5 = [v4 executeRaw:@"INSERT INTO globals values (NULL)"];
  if (!v5)
  {
LABEL_36:
    v11 = 0;
    goto LABEL_37;
  }

  v7 = [*(a1 + 32) abstractObject];
  v8 = [v7 engineLibrary];
  v9 = [v8 libraryOptions];

  v10 = [NSNumber numberWithUnsignedInteger:v9];
  v11 = sub_100158D60(v10);

  if (!v11)
  {
    goto LABEL_37;
  }

  v12 = [*(a1 + 32) abstractObject];
  v13 = [v12 storages];

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v14 = v13;
  v15 = [v14 countByEnumeratingWithState:&v44 objects:v52 count:16];
  if (v15)
  {
    v9 = v15;
    v16 = *v45;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v45 != v16)
        {
          objc_enumerationMutation(v14);
        }

        v18 = *(*(&v44 + 1) + 8 * i);
        if (([v18 shouldBeCreatedDynamically] & 1) == 0)
        {
          v19 = [v18 platformObject];
          v20 = [v19 createStorage];
          if ((v20 & 1) == 0)
          {
            if ((_CPLSilentLogging & 1) == 0)
            {
              v40 = sub_100150214(v20);
              if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
              {
                v41 = [*(*(a1 + 32) + 32) lastCPLError];
                v42 = [v41 localizedDescription];
                v48 = 138412546;
                v49 = v18;
                v50 = 2112;
                v51 = v42;
                sub_10003752C(&_mh_execute_header, v40, v43, "Unable to initialize %@: %@", &v48);
              }
            }

            v11 = 0;
            goto LABEL_47;
          }
        }
      }

      v9 = [v14 countByEnumeratingWithState:&v44 objects:v52 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v21 = *(a1 + 32);
  v22 = [v21 createNewLibraryVersion];
  v11 = [v21 storeLibraryVersion:v22 withError:0];

  if (v11)
  {
    v5 = sub_100158D30(*(a1 + 32), 88);
    v6 = "@CPLPrequeliteResourceUploadQueue" + 3;
    if (v5)
    {
      v5 = sub_100158D30(*(a1 + 32), 96);
      if (v5)
      {
        v23 = [*(a1 + 32) createNewClientCacheIdentifier];
        v11 = sub_100158D60(v23);

        if (!v11)
        {
          goto LABEL_37;
        }

        v5 = sub_100158D30(*(a1 + 32), 112);
        if (v5)
        {
          v24 = +[NSDate date];
          v11 = sub_100158D60(v24);

          if (!v11)
          {
            goto LABEL_37;
          }

          v5 = sub_100158D30(*(a1 + 32), 128);
          if (v5)
          {
            v5 = sub_100158D30(*(a1 + 32), 136);
            if (v5)
            {
              v5 = [*(a1 + 32) addGlobalVariable:*(*(a1 + 32) + 184) defaultValue:&off_10028F0E8 error:0];
              if (v5)
              {
                v5 = sub_100158D30(*(a1 + 32), 192);
                if (v5)
                {
                  v5 = sub_100158D30(*(a1 + 32), 216);
                  if (v5)
                  {
                    v5 = [*(a1 + 32) addGlobalVariable:*(*(a1 + 32) + 224) defaultValue:&off_10028F0E8 error:0];
                    if (v5)
                    {
                      v25 = [*(a1 + 32) abstractObject];
                      v26 = [v25 mainScopeIdentifier];

                      if ((_CPLSilentLogging & 1) == 0)
                      {
                        v28 = sub_100150214(v27);
                        if (sub_10000FBAC(v28))
                        {
                          v48 = 138412290;
                          v49 = v26;
                          sub_1000374A0(&_mh_execute_header, v25, v29, "Store is created with main scope identifier %@", &v48);
                        }
                      }

                      v30 = [*(a1 + 32) addGlobalVariable:*(*(a1 + 32) + 232) defaultValue:v26 error:{0, v44}];

                      if (v30)
                      {
                        v5 = [*(*(a1 + 32) + 32) setUserVersion:94];
                        v11 = v5;
                        goto LABEL_37;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    goto LABEL_36;
  }

LABEL_47:
  v6 = "@CPLPrequeliteResourceUploadQueue" + 3;
LABEL_37:
  if ((_CPLSilentLogging & 1) == 0)
  {
    v36 = sub_100150214(v5);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
    {
      v38 = *(a1 + 32);
      v48 = *(v6 + 413);
      v49 = v38;
      sub_10000FB94(&_mh_execute_header, v36, v37, "End of %@ initialization", &v48);
    }
  }

  return v11;
}

uint64_t sub_1001BACA0(uint64_t a1)
{
  v3 = [*(a1 + 32) _upgradeToVersion:*(a1 + 48)];
  if (v3)
  {
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v1 = *(a1 + 40);
    v4 = [v1 countByEnumeratingWithState:&v50 objects:v58 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v51;
      while (2)
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v51 != v6)
          {
            objc_enumerationMutation(v1);
          }

          v8 = *(*(&v50 + 1) + 8 * i);
          v9 = [v8 platformObject];
          if ([v8 isAlive])
          {
            v10 = [v9 upgradeStorageToVersion:*(a1 + 48)];
            if ((v10 & 1) == 0)
            {
              if ((_CPLSilentLogging & 1) == 0)
              {
                v24 = sub_100150214(v10);
                if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
                {
                  v25 = *(a1 + 48);
                  v26 = [*(*(a1 + 32) + 32) lastCPLError];
                  v27 = [v26 localizedDescription];
                  sub_100158D4C();
                  v57 = v25;
                  sub_100158D98();
                  _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Unable to upgrade %@ to version %lld: %@", buf, 0x20u);
                }
              }

              v28 = *(a1 + 32);
              v29 = [v8 name];
              v30 = *(a1 + 48);
              v31 = [*(*(a1 + 32) + 32) lastCPLError];
              v32 = [v31 localizedDescription];
              [v28 recordUpgradeEvent:{@"Failed to upgrade %@ to %lld: %@", v29, v30, v32}];

              goto LABEL_25;
            }
          }
        }

        v5 = [v1 countByEnumeratingWithState:&v50 objects:v58 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

    v11 = *(a1 + 32);
    if (v11[39])
    {
      v1 = [v11[39] platformObject];
      v12 = [v1 upgradeStorageToVersion:*(a1 + 48)];

      if (!v12)
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v35 = sub_100150214(v13);
          if (sub_10000FBDC(v35))
          {
            v36 = *(a1 + 32);
            v37 = *(v36 + 312);
            v38 = *(a1 + 48);
            v39 = [*(v36 + 32) lastCPLError];
            v40 = [v39 localizedDescription];
            *buf = 138412802;
            v55 = v37;
            v56 = 2048;
            v57 = v38;
            sub_100158D98();
            sub_100158DCC();
            _os_log_impl(v41, v42, v43, v44, v45, 0x20u);
          }
        }

        v46 = *(a1 + 32);
        v1 = [v46[39] name];
        v47 = *(a1 + 48);
        v48 = [*(*(a1 + 32) + 32) lastCPLError];
        v49 = [v48 localizedDescription];
        [v46 recordUpgradeEvent:{@"Failed to upgrade %@ to %lld: %@", v1, v47, v49}];

        goto LABEL_26;
      }

      v11 = *(a1 + 32);
    }

    v14 = [v11 _postUpgradeToVersion:*(a1 + 48)];
    if (v14)
    {
      return 1;
    }

    if ((_CPLSilentLogging & 1) == 0)
    {
      v33 = sub_100150214(v14);
      if (sub_10000FBDC(v33))
      {
        v34 = *(a1 + 48);
        v18 = [*(*(a1 + 32) + 32) lastCPLError];
        v9 = [v18 localizedDescription];
        sub_100158D4C();
        v57 = v34;
        sub_100158D98();
LABEL_19:
        sub_100158DCC();
        _os_log_impl(v19, v20, v21, v22, v23, 0x20u);

LABEL_25:
        goto LABEL_26;
      }

      goto LABEL_26;
    }
  }

  else if ((_CPLSilentLogging & 1) == 0)
  {
    v16 = sub_100150214(v3);
    if (sub_10000FBDC(v16))
    {
      v17 = *(a1 + 48);
      v18 = [*(*(a1 + 32) + 32) lastCPLError];
      v9 = [v18 localizedDescription];
      sub_100158D4C();
      v57 = v17;
      sub_100158D98();
      goto LABEL_19;
    }

LABEL_26:
  }

  return 0;
}

void sub_1001BB51C(uint64_t a1)
{
  *(*(a1 + 32) + 256) = 1;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v1 = sub_100150214(a1);
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
    {
      sub_10014FD7C();
      _os_log_impl(v2, v3, v4, v5, v6, 2u);
    }
  }
}

void sub_1001BB5A4(uint64_t a1)
{
  *(*(a1 + 32) + 256) = 0;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v1 = sub_100150214(a1);
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
    {
      sub_10014FD7C();
      _os_log_impl(v2, v3, v4, v5, v6, 2u);
    }
  }
}

void sub_1001BB75C(void *a1)
{
  v2 = a1[4];
  if (*(v2 + 336))
  {
    v4 = *(v2 + 32);
    if (!v4 || ([v4 incrementalVacuum:a1[6]] & 1) == 0)
    {
      *(*(a1[5] + 8) + 24) = 0;
    }
  }

  else if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = sub_100150214(a1);
    if (sub_10000FAE0(v5))
    {
      sub_100080C88();
      _os_log_impl(v6, v7, v8, v9, v10, 2u);
    }
  }
}

void sub_1001BB808(uint64_t a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = sub_100150214(a1);
    if (sub_10000FABC(v3))
    {
      v5 = *(a1 + 32);
      v12 = 138412290;
      v13 = v5;
      sub_1000374A0(&_mh_execute_header, v1, v4, "Suspending queue for %@", &v12);
    }
  }

  dispatch_suspend(*(*(a1 + 32) + 8));
  dispatch_suspend(*(*(a1 + 32) + 16));
  [*(a1 + 32) closeWithError:0];
  sub_1000033D8();
  v8 = 3221225472;
  v9 = sub_100157F28;
  v10 = &unk_100272000;
  v6 = *(a1 + 40);
  v11 = *(a1 + 48);
  dispatch_sync(v6, block);
}

void sub_1001BB920(uint64_t a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v2 = sub_100150214(a1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      sub_100013984();
      _os_log_impl(v3, v4, OS_LOG_TYPE_DEBUG, v5, v6, 2u);
    }
  }

  dispatch_resume(*(a1 + 32));
}

void sub_1001BB9A0(uint64_t a1)
{
  v2 = [a1 abstractObject];
  v3 = [v2 engineLibrary];
  v4 = [v3 cloudLibraryStateStorageURL];

  v5 = [v4 URLByAppendingPathComponent:@"store.cloudphotodb" isDirectory:0];
  sub_100158DA8([v5 copy], 40);

  v6 = CPLCopyDefaultSerialQueueAttributes();
  v7 = dispatch_queue_create("com.apple.cplenginestore.sqlite", v6);
  v8 = *(a1 + 8);
  *(a1 + 8) = v7;

  v9 = CPLCopyDefaultSerialQueueAttributes();
  v10 = dispatch_queue_create_with_target_V2("com.apple.cplenginestore.sqlite.write", v9, *(a1 + 8));
  sub_100158DA8(v10, 16);

  *(a1 + 24) = 0;
  v11 = CPLCopyDefaultSerialQueueAttributes();
  v12 = dispatch_queue_create("com.apple.cplenginestore.sqlite.vacuum", v11);
  sub_100158DA8(v12, 328);

  sub_100158DA8(objc_alloc_init(NSMutableSet), 56);
  sub_100158DA8(objc_alloc_init(NSObject), 64);
  v13 = [CPLPrequeliteTable tableWithName:@"globals"];
  sub_100158DA8(v13, 72);
  v14 = +[CPLPrequeliteType stringType];
  v15 = [sub_100158D18() variableWithName:? type:?];
  sub_100158DA8(v15, 80);

  v16 = [sub_100158D24() dataType];
  v17 = [sub_100158D18() variableWithName:? type:?];
  sub_100158DA8(v17, 88);

  v18 = [sub_100158D24() dateType];
  v19 = [sub_100158D18() variableWithName:? type:?];
  sub_100158DA8(v19, 96);

  v20 = [sub_100158D24() stringType];
  v21 = [sub_100158D18() variableWithName:? type:?];
  sub_100158DA8(v21, 104);

  v22 = [sub_100158D24() stringType];
  v23 = [sub_100158D18() variableWithName:? type:?];
  sub_100158DA8(v23, 112);

  v24 = [sub_100158D24() dateType];
  v25 = [sub_100158D18() variableWithName:? type:?];
  sub_100158DA8(v25, 120);

  v26 = [sub_100158D24() dataType];
  v27 = [sub_100158D18() variableWithName:? type:?];
  v28 = *(a1 + 128);
  *(a1 + 128) = v27;

  v29 = [sub_100158D24() dataType];
  v30 = [sub_100158D18() variableWithName:? type:?];
  sub_100158DA8(v30, 136);

  v31 = [sub_100158D24() integerType];
  v32 = [sub_100158D18() variableWithName:? type:?];
  sub_100158DA8(v32, 176);

  v33 = [sub_100158D24() integerType];
  v34 = [sub_100158D18() variableWithName:? type:?];
  sub_100158DA8(v34, 184);

  v35 = [sub_100158D24() dataType];
  v36 = [sub_100158D18() variableWithName:? type:?];
  sub_100158DA8(v36, 192);

  v37 = [sub_100158D24() dataType];
  v38 = [sub_100158D18() variableWithName:? type:?];
  sub_100158DA8(v38, 216);

  v39 = [sub_100158D24() integerType];
  v40 = [sub_100158D18() variableWithName:? type:?];
  sub_100158DA8(v40, 224);

  v41 = [sub_100158D24() stringType];
  v42 = [sub_100158D18() variableWithName:? type:?];
  v43 = *(a1 + 232);
  *(a1 + 232) = v42;

  [*(a1 + 232) setShouldNotCacheValue:1];
  [*(a1 + 128) setShouldNotCacheValue:1];
  v44 = CPLCopyDefaultSerialQueueAttributes();
  v45 = dispatch_queue_create("com.apple.cplenginestore.sqlite.clientsync", v44);
  sub_100158DA8(v45, 248);

  *(a1 + 292) = -1;
  v46 = +[NSUserDefaults standardUserDefaults];
  *(a1 + 353) = [v46 BOOLForKey:@"CPLShowStatsForAllTransactions"];

  if (*(a1 + 353))
  {
    *(a1 + 352) = 1;
  }

  else
  {
    has_internal_content = os_variant_has_internal_content();
    *(a1 + 352) = has_internal_content;
    if ((has_internal_content & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  if (*(a1 + 353))
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v48 = sub_100150214(has_internal_content);
      if (sub_10000FABC(v48))
      {
        v52 = 0;
        v49 = "Will logs statistics for all transactions";
        v50 = &v52;
LABEL_11:
        _os_log_impl(&_mh_execute_header, a1, OS_LOG_TYPE_DEFAULT, v49, v50, 2u);
        goto LABEL_12;
      }

      goto LABEL_12;
    }
  }

  else if ((_CPLSilentLogging & 1) == 0)
  {
    v51 = sub_100150214(has_internal_content);
    if (sub_10000FABC(v51))
    {
      *buf = 0;
      v49 = "Will try to catch long transactions";
      v50 = buf;
      goto LABEL_11;
    }

LABEL_12:
  }

LABEL_13:
}

void sub_1001BBF78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100158DC0();
  if ((_CPLSilentLogging & 1) == 0)
  {
    v8 = sub_100150214(v7);
    if (sub_10000FBAC(v8))
    {
      *buf = 134218242;
      v13 = v3;
      v14 = 2112;
      v15 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Was requested to schedule a reset (option #%lu) after upgrade for reason '%@'", buf, 0x16u);
    }
  }

  [a3 recordUpgradeEvent:{@"Reset option %ld requested. Reason: %@", v3, v4}];
  if (*(a3 + 289) != 1)
  {
    *(a3 + 289) = 1;
    *(a3 + 264) = v3;
    v10 = [v4 copy];
    v11 = *(a3 + 272);
    *(a3 + 272) = v10;

    return;
  }

  v9 = *(a3 + 264);
  if (v9 == 3)
  {
    if (v3 == 3)
    {
      return;
    }

    goto LABEL_13;
  }

  if (v9 == 1)
  {
    if (v3 != 2)
    {
      return;
    }

    goto LABEL_13;
  }

  if (!v9 && (v3 - 1) <= 1)
  {
LABEL_13:
    objc_storeStrong((a3 + 272), v4);
    *(a3 + 264) = v3;
  }
}

void sub_1001BC0F4(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  *a3 = 134218242;
  *(a3 + 4) = a1;
  *(a3 + 12) = 2080;
  *(a3 + 14) = a2;
  sub_10003752C(&_mh_execute_header, a4, a3, "Failed to setup SQL tracing on %p hook: %s", a3);
}

void sub_1001BC158(uint64_t a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v2 = sub_10015060C(a1);
    if (sub_10000FAE0(v2))
    {
      sub_100080C88();
      _os_log_impl(v3, v4, v5, v6, v7, 2u);
    }
  }
}

void sub_1001BC1C4(void *a1, uint8_t *buf, os_log_t log, double a4)
{
  *buf = 134218242;
  *(buf + 4) = a4;
  *(buf + 6) = 2114;
  *(buf + 14) = a1;
  _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Transaction took %.3fs. Sorted statements:\n  %{public}@", buf, 0x16u);
}

void sub_1001BC228(uint64_t a1, double a2)
{
  *(a1 + 360) = a2;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = sub_10015060C(a1);
    if (sub_10000FAE0(v3))
    {
      sub_100080C88();
      _os_log_impl(v4, v5, v6, v7, v8, 0xCu);
    }
  }
}

void sub_1001BC2E4(uint64_t a1, uint64_t a2)
{
  if (_CPLSilentLogging != 1)
  {
    v5 = sub_100150214(a1);
    if (sub_1000033C0(v5))
    {
      v14 = 0;
      sub_10000AF60(&_mh_execute_header, v6, v7, "Trying to schedule client cache drop twice", v8, v9, v10, v11, v14);
    }
  }

  v12 = +[NSAssertionHandler currentHandler];
  v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/PrequeliteStore/CPLPrequeliteStore.m"];
  [v12 handleFailureInMethod:a1 object:a2 file:v13 lineNumber:627 description:@"Trying to schedule client cache drop twice"];

  abort();
}

id sub_1001BC3A0(id *a1, uint64_t a2, void *a3)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = sub_100150214(a1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Dropping clientCache now", v8, 2u);
    }

    a3 = *(*a1 + a2);
  }

  result = [a3 execute:@"DROP TABLE clientCache"];
  if (result)
  {
    return [*a1 startVacuumWithCompletionHandler:&stru_10027B4E0];
  }

  return result;
}

id sub_1001BC458(void *a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = sub_100150214(a1);
    if (sub_10000FABC(v3))
    {
      LOWORD(v9) = 0;
      sub_100013984();
      _os_log_impl(v4, v5, OS_LOG_TYPE_DEFAULT, v6, v7, 2u);
    }
  }

  return [a1 _scheduleClientCacheDrop];
}

id sub_1001BC4D0(void *a1, void *a2)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = __CPLGenericOSLogDomain();
    if (sub_100003448(v5))
    {
      v6 = [a1 lastError];
      sub_10000AF90();
      sub_100021D44();
      _os_log_impl(v7, v8, v9, v10, v11, 0xCu);
    }
  }

  return [a2 triggerResetAfterUpgrade:0 withReason:@"failed to migrate to flat push pipeline"];
}

void sub_1001BC5A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100150214(a1);
  if (sub_10000FBDC(v4))
  {
    v5 = [*(a2 + 32) lastCPLError];
    v6 = [v5 localizedDescription];
    sub_1000ACA54();
    sub_10000FAAC();
    _os_log_impl(v7, v8, v9, v10, v11, 0x16u);
  }
}

void sub_1001BC66C(uint64_t a1)
{
  v2 = sub_100150214(a1);
  if (sub_10000FAE0(v2))
  {
    sub_1000139A0();
    sub_100080C88();
    _os_log_impl(v3, v4, v5, v6, v7, 0xCu);
  }
}

void sub_1001BC6FC()
{
  sub_100158DC0();
  v3 = sub_100150214(v2);
  if (sub_10000FBDC(v3))
  {
    v4 = [v1 migrationDescription];
    sub_10000AF90();
    sub_10000FAAC();
    _os_log_impl(v5, v6, v7, v8, v9, 0x16u);
  }
}

void sub_1001BC7B4(uint8_t *a1, void *a2, void *a3)
{
  v7 = sub_100150214(a1);
  if (sub_10000FAE0(v7))
  {
    v8 = [a2 migrationDescription];
    *a1 = 138412290;
    *a3 = v8;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Migration '%@' completed successfully", a1, 0xCu);
  }
}

void sub_1001BC854(uint64_t a1)
{
  v2 = sub_100150214(a1);
  if (sub_10000FBDC(v2))
  {
    sub_1000139A0();
    sub_10000FAAC();
    _os_log_impl(v3, v4, v5, v6, v7, 0xCu);
  }
}

void sub_1001BC8E4(uint64_t a1)
{
  v2 = sub_100150214(a1);
  if (sub_10000FBDC(v2))
  {
    sub_1000139A0();
    sub_10000FAAC();
    _os_log_impl(v3, v4, v5, v6, v7, 0xCu);
  }
}

void sub_1001BC974(uint64_t a1, uint64_t a2, void *a3)
{
  sub_100158DC0();
  if ((_CPLSilentLogging & 1) == 0)
  {
    v8 = sub_100150214(v7);
    if (sub_10002B0A8(v8))
    {
      v11 = 138412290;
      v12 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Trying to wipe database for reason '%@' but user asked to prevent wipes", &v11, 0xCu);
    }
  }

  v9 = [CPLErrors preventWipeErrorWithReason:v4 preventedByUser:1];
  [*(v3 + 32) setLastError:v9];
  if (a3)
  {
    v10 = v9;
    *a3 = v9;
  }
}

id sub_1001BCA70(uint64_t a1, void *a2)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = sub_100150214(a1);
    if (sub_1000033C0(v4))
    {
      sub_1000139A0();
      sub_10004DA10(&_mh_execute_header, v5, v6, "Database has been marked as corrupted - wiping everything - corruption info: %@", v9);
    }
  }

  v7 = [sub_100158E24() _wipeReasonFromCorruptionInfo:?];
  [sub_100158E24() _wipeWithReason:?];

  return [a2 _deleteCorruptionInfo];
}

id sub_1001BCB3C(uint64_t a1, void *a2)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = sub_100150214(a1);
    if (sub_1000033C0(v4))
    {
      sub_1000139A0();
      sub_10004DA10(&_mh_execute_header, v5, v6, "CPL has been requested to wipe database: %@", v8);
    }
  }

  [sub_100158E24() _wipeWithReason:?];
  return [a2 _deleteWipeReason];
}

void sub_1001BCBF4(uint64_t a1, uint64_t a2)
{
  if (_CPLSilentLogging != 1)
  {
    v5 = sub_100150214(a1);
    if (sub_1000033C0(v5))
    {
      v14 = 0;
      sub_10000AF60(&_mh_execute_header, v6, v7, "Trying to open the upgrade journal twice", v8, v9, v10, v11, v14);
    }
  }

  v12 = +[NSAssertionHandler currentHandler];
  v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/PrequeliteStore/CPLPrequeliteStore.m"];
  [v12 handleFailureInMethod:a1 object:a2 file:v13 lineNumber:1058 description:@"Trying to open the upgrade journal twice"];

  abort();
}

void sub_1001BCCB0(void *a1, uint64_t a2, uint64_t a3)
{
  sub_100158DDC(a1, a2, a3, 5.778e-34);
  sub_10003752C(&_mh_execute_header, v6, v4, "Can't create store folder at %@: %@", v5);
}

void sub_1001BCD00(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138412290;
  *(a2 + 4) = a1;
  sub_10000FB94(&_mh_execute_header, a3, a3, "Created store folder at %@", a2);
}

void sub_1001BCD50(void *a1, uint64_t a2, uint64_t a3)
{
  sub_100158DDC(a1, a2, a3, 5.778e-34);
  sub_10003752C(&_mh_execute_header, v6, v4, "Can't open store at %@: %@: error", v5);
}

void sub_1001BCDA0(uint64_t a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v2 = sub_100150214(a1);
    if (sub_10000FBDC(v2))
    {
      sub_1000139A0();
      sub_10000FAAC();
      _os_log_impl(v3, v4, v5, v6, v7, 0xCu);
    }
  }
}

void sub_1001BCE44(uint64_t a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v2 = sub_100150214(a1);
    if (sub_10000FAE0(v2))
    {
      sub_100080C88();
      _os_log_impl(v3, v4, v5, v6, v7, 2u);
    }
  }
}

void sub_1001BCEB0(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138412290;
  *(a2 + 4) = a1;
  sub_1000374A0(&_mh_execute_header, a3, a3, "Previously disabled features: %@ - will request an update of disabled features", a2);
}

void sub_1001BCF00(uint64_t a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v2 = sub_100150214(a1);
    if (sub_10000FBDC(v2))
    {
      sub_10000FAAC();
      _os_log_impl(v3, v4, v5, v6, v7, 2u);
    }
  }
}

void sub_1001BCF6C(uint64_t a1)
{
  v2 = sub_100150214(a1);
  if (sub_10000FBDC(v2))
  {
    sub_1000139A0();
    sub_10000FAAC();
    _os_log_impl(v3, v4, v5, v6, v7, 0xCu);
  }
}

id sub_1001BCFFC(uint64_t a1, id *a2)
{
  if ((a1 & 1) == 0)
  {
    v4 = sub_100150214(a1);
    if (sub_10000FABC(v4))
    {
      v5 = [a2[4] userVersion];
      [v5 longLongValue];
      sub_10000AF90();
      sub_100013984();
      sub_1000374A0(v6, v7, v8, v9, v10);
    }
  }

  return [a2 _scheduleClientCacheDropIfNecessary];
}

void sub_1001BD0BC(uint64_t a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v1 = sub_100150214(a1);
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
    {
      sub_10014FD7C();
      _os_log_impl(v2, v3, v4, v5, v6, 0xCu);
    }
  }
}

void sub_1001BD170(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_begin_catch(a1);
  v5 = *(*(a3 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  objc_end_catch();
}

void sub_1001BD1C0(uint64_t a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v2 = sub_100150214(a1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(v12) = 138412290;
      *(&v12 + 4) = *(a1 + 40);
      sub_100013984();
      sub_10000FB94(v3, v4, v5, v6, v7);
    }
  }

  v8 = *(a1 + 40);
  v9 = +[CPLErrors libraryClosedError];
  [v8 setError:v9];

  v10 = *(a1 + 48);
  v11 = [*(a1 + 40) error];
  (*(v10 + 16))(v10, v11);
}

void sub_1001BD2D0(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_begin_catch(a1);
  v5 = *(*(a3 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  objc_end_catch();
}

void sub_1001BD320(uint64_t a1, uint64_t a2)
{
  if (_CPLSilentLogging != 1)
  {
    v5 = sub_100150214(a1);
    if (sub_1000033C0(v5))
    {
      v14 = 0;
      sub_10000AF60(&_mh_execute_header, v6, v7, "Unable to determine user identifier class", v8, v9, v10, v11, v14);
    }
  }

  v12 = +[NSAssertionHandler currentHandler];
  v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/PrequeliteStore/CPLPrequeliteStore.m"];
  [v12 handleFailureInMethod:a1 object:a2 file:v13 lineNumber:1585 description:@"Unable to determine user identifier class"];

  abort();
}

void sub_1001BD3DC(uint64_t a1, void *a2, void *a3)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = sub_100150214(v5);
    if (sub_100003448(v6))
    {
      sub_100021CFC();
      sub_100021D44();
      _os_log_impl(v7, v8, v9, v10, v11, 0x16u);
    }
  }

  objc_end_catch();
}

void sub_1001BD49C(uint64_t *a1)
{
  v2 = +[NSUUID UUID];
  v3 = [v2 UUIDString];

  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = sub_100150214(v4);
    if (sub_1000033C0(v5))
    {
      sub_1000139A0();
      sub_10004DA10(&_mh_execute_header, v6, v7, "Can't decode user identifier, will use a fake user identifier (%@) and we will reset everything", v8);
    }
  }

  *a1 = v3;
}

void sub_1001BD63C()
{
  sub_100158DC0();
  v2 = sub_100150214(v1);
  if (sub_10000FBDC(v2))
  {
    sub_100021CFC();
    sub_10000FAAC();
    _os_log_impl(v3, v4, v5, v6, v7, 0x16u);
  }
}

void sub_1001BD6D8(uint8_t *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v11 = sub_100150214(a1);
    if (sub_10000FBAC(v11))
    {
      *a1 = 138412290;
      *a3 = a2;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Ignoring push/pull gatekeeper %@", a1, 0xCu);
    }
  }

  *a5 = a4;
}

void sub_1001BD774(void *a1)
{
  v2 = objc_begin_catch(a1);
  v3 = v2;
  if (_CPLSilentLogging != 1)
  {
    v4 = sub_100150214(v2);
    if (sub_100003448(v4))
    {
      sub_100021D44();
      _os_log_impl(v5, v6, v7, v8, v9, 0xCu);
    }
  }

  objc_end_catch();
}

void sub_1001BD834(void *a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = sub_100150214(a1);
    if (sub_100003448(v3))
    {
      sub_100021D44();
      _os_log_impl(v4, v5, v6, v7, v8, 2u);
    }
  }

  *a1 = 0;
}

void sub_1001BDA44(uint64_t a1, uint64_t a2)
{
  if (_CPLSilentLogging != 1)
  {
    v5 = sub_100150214(a1);
    if (sub_1000033C0(v5))
    {
      v14 = 0;
      sub_10000AF60(&_mh_execute_header, v6, v7, "Trying to access client cache outside of authorized migration", v8, v9, v10, v11, v14);
    }
  }

  v12 = +[NSAssertionHandler currentHandler];
  v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/PrequeliteStore/CPLPrequeliteStore.m"];
  [v12 handleFailureInMethod:a1 object:a2 file:v13 lineNumber:2086 description:@"Trying to access client cache outside of authorized migration"];

  abort();
}

void sub_1001BDB00()
{
  sub_100158DC0();
  v4 = sub_100150214(v3);
  if (sub_10000FAE0(v4))
  {
    v5 = [NSByteCountFormatter stringFromByteCount:*v2 - v1 countStyle:0];
    sub_10000AF90();
    sub_100080C88();
    _os_log_impl(v6, v7, v8, v9, v10, 0xCu);
  }
}

id sub_1001BDBBC()
{
  sub_10002B0F4();
  v14 = v1;
  v15 = v3;
  v5 = v4;
  v7 = v6;
  v8 = v2;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v9 = sub_100150214(v2);
    if (sub_10000FBAC(v9))
    {
      v10 = [NSByteCountFormatter stringFromByteCount:v8 countStyle:0];
      sub_10000AF90();
      sub_1000374A0(&_mh_execute_header, v0, v11, "Starting vacuum for %@", &v13);
    }
  }

  *(*v7 + v5) = 1;
  return [*v7 _vacuum:v8 withInitialDatabaseSize:{objc_msgSend(*v7, "_sizeInBytes")}];
}

void sub_1001BDCB4(uint64_t a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v2 = sub_100150214(a1);
    if (sub_10000FBDC(v2))
    {
      sub_10000FAAC();
      _os_log_impl(v3, v4, v5, v6, v7, 0xCu);
    }
  }

  exit(0);
}

void sub_1001BDE10(uint64_t a1, uint64_t a2)
{
  v4 = sub_100150214(a1);
  if (sub_10000FBDC(v4))
  {
    v5 = [*(a2 + 32) lastCPLError];
    v6 = [v5 localizedDescription];
    sub_1000ACA54();
    sub_10000FAAC();
    _os_log_impl(v7, v8, v9, v10, v11, 0x16u);
  }
}

void sub_1001BDFA8(uint64_t a1, id *a2)
{
  v4 = sub_100150214(a1);
  if (sub_10000FBDC(v4))
  {
    v5 = [*a2 lastCPLError];
    v6 = [v5 localizedDescription];
    sub_1000ACA54();
    sub_10000FAAC();
    _os_log_impl(v7, v8, v9, v10, v11, 0x16u);
  }
}

void sub_1001BE068(uint64_t a1, uint64_t a2, void *a3)
{
  sub_100158DC0();
  if ((_CPLSilentLogging & 1) == 0)
  {
    v7 = sub_100150214(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Blocking write queue", v8, 2u);
    }
  }

  dispatch_suspend(v4);
  objc_storeStrong((v3 + 8), a3);
}

void sub_1001BE10C(uint64_t a1, uint64_t a2)
{
  if (_CPLSilentLogging != 1)
  {
    v4 = sub_10015912C(a1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "scope index has not been set", v7, 2u);
    }
  }

  v5 = +[NSAssertionHandler currentHandler];
  v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/PrequeliteStore/CPLPrequeliteOutgoingResources.m"];
  [v5 handleFailureInMethod:a1 object:a2 file:v6 lineNumber:88 description:@"scope index has not been set"];

  abort();
}

void sub_1001BE1F4(void *a1, _BYTE *a2)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = sub_10015912C(a1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [a1 mainTable];
      *buf = 138412546;
      v10 = v5;
      v11 = 2048;
      v12 = 39;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Upgrading %@ to version %llu: adding scopeIndex column", buf, 0x16u);
    }
  }

  v6 = [a1 pqStore];
  v7 = [v6 pqlConnection];

  v8 = [a1 mainTable];
  *a2 = [v7 cplExecute:{@"ALTER TABLE %@ ADD COLUMN scopeIndex INTEGER DEFAULT 1", v8}];
}

void sub_1001BE6B4(void *a1, _BYTE *a2)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = sub_10015B0E8(a1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [a1 mainTable];
      sub_10015F5C8();
      sub_100003528(&_mh_execute_header, v6, v7, "Upgrading %@ to version %llu: adding scopeIndex column", v8, v9, v10, v11, v15, v16);
    }
  }

  v12 = [a1 pqStore];
  v13 = [v12 pqlConnection];

  v14 = [a1 mainTable];
  *a2 = [v13 cplExecute:{@"ALTER TABLE %@ ADD COLUMN scopeIndex INTEGER DEFAULT 2", v14}];
}

void sub_1001BE7CC(void *a1, _BYTE *a2)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = sub_10015B0E8(a1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [a1 mainTable];
      sub_10015F5C8();
      sub_100003528(&_mh_execute_header, v6, v7, "Upgrading %@ to version %llu: adding otherScopeIndex and stagedOtherScopeIndex columns", v8, v9, v10, v11, v19, v20);
    }
  }

  v12 = [a1 pqStore];
  v13 = [v12 pqlConnection];

  v14 = [a1 mainTable];
  v15 = [v13 cplExecute:{@"ALTER TABLE %@ ADD COLUMN otherScopeIndex INTEGER DEFAULT 0", v14}];

  if (!v15)
  {
    goto LABEL_9;
  }

  v16 = [a1 createIndexOnColumn:@"otherScopeIndex" error:0];
  if (v16)
  {
    v17 = [a1 mainTable];
    v18 = [v13 cplExecute:{@"ALTER TABLE %@ ADD COLUMN stagedOtherScopeIndex INTEGER DEFAULT 0", v17}];

    if (v18)
    {
      LOBYTE(v16) = [a1 createIndexOnColumn:@"stagedOtherScopeIndex" error:0];
      goto LABEL_10;
    }

LABEL_9:
    LOBYTE(v16) = 0;
  }

LABEL_10:
  *a2 = v16;
}

void sub_1001BE958(void *a1, unsigned __int8 *a2)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = sub_10015B0E8(a1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [a1 mainTable];
      sub_10015F5C8();
      sub_100003528(&_mh_execute_header, v6, v7, "Upgrading %@ to version %llu: adding confirmed column", v8, v9, v10, v11, v17, v18);
    }
  }

  v12 = [a1 pqStore];
  v13 = [v12 pqlConnection];

  v14 = [a1 mainTable];
  v15 = [v13 cplExecute:{@"ALTER TABLE %@ ADD COLUMN confirmed INTEGER DEFAULT 1", v14}];

  if (v15)
  {
    v16 = [a1 createIndexOnColumn:@"confirmed" error:0];
  }

  else
  {
    v16 = 0;
  }

  *a2 = v16;
}

void sub_1001BEAB0()
{
  sub_10015F5DC();
  v3 = sub_10015B0E8(v2);
  if (sub_10000FBDC(v3))
  {
    v4 = [v1 lastCPLError];
    sub_1000ACA54();
    sub_10000FAAC();
    _os_log_impl(v5, v6, v7, v8, v9, 0x16u);
  }
}

void sub_1001BEC50()
{
  sub_10015F5DC();
  v3 = sub_10015B0E8(v2);
  if (sub_10000FBDC(v3))
  {
    v4 = [v1 lastCPLError];
    sub_1000ACA54();
    sub_10000FAAC();
    _os_log_impl(v5, v6, v7, v8, v9, 0x16u);
  }
}

void sub_1001BECFC()
{
  sub_10015F5DC();
  v3 = sub_10015B0E8(v2);
  if (sub_10000FBDC(v3))
  {
    v4 = [v1 lastCPLError];
    sub_1000ACA54();
    sub_10000FAAC();
    _os_log_impl(v5, v6, v7, v8, v9, 0x16u);
  }
}

void sub_1001BEE9C()
{
  sub_10015F5DC();
  v3 = sub_10015B0E8(v2);
  if (sub_10000FBDC(v3))
  {
    v4 = [v1 lastCPLError];
    sub_1000ACA54();
    sub_10000FAAC();
    _os_log_impl(v5, v6, v7, v8, v9, 0x16u);
  }
}

void sub_1001BEF48()
{
  sub_10015F5DC();
  v3 = sub_10015B0E8(v2);
  if (sub_10000FBDC(v3))
  {
    v4 = [v1 lastCPLError];
    sub_1000ACA54();
    sub_10000FAAC();
    _os_log_impl(v5, v6, v7, v8, v9, 0x16u);
  }
}

void sub_1001BEFF4(uint64_t a1)
{
  v2 = sub_10015B0E8(a1);
  if (sub_10000FBDC(v2))
  {
    sub_10000FAAC();
    _os_log_impl(v3, v4, v5, v6, v7, 0xCu);
  }
}

void sub_1001BF088()
{
  sub_10015F5DC();
  v3 = sub_10015B0E8(v2);
  if (sub_10000FBDC(v3))
  {
    v4 = [v1 lastCPLError];
    sub_1000ACA54();
    sub_10000FAAC();
    _os_log_impl(v5, v6, v7, v8, v9, 0x16u);
  }
}

void sub_1001BF504(void *a1)
{
  v3 = sub_10015B0E8(a1);
  if (sub_10000FBDC(v3))
  {
    v4 = [a1 lastCPLError];
    sub_10000AF90();
    sub_10000FAAC();
    _os_log_impl(v5, v6, v7, v8, v9, 0xCu);
  }
}

void sub_1001BF5A8(void *a1)
{
  v3 = sub_10015B0E8(a1);
  if (sub_10000FBDC(v3))
  {
    v4 = [a1 lastCPLError];
    sub_10000AF90();
    sub_10000FAAC();
    _os_log_impl(v5, v6, v7, v8, v9, 0xCu);
  }
}

void sub_1001BF64C(void *a1)
{
  v3 = sub_10015B0E8(a1);
  if (sub_10000FBDC(v3))
  {
    v4 = [a1 lastCPLError];
    sub_10000AF90();
    sub_10000FAAC();
    _os_log_impl(v5, v6, v7, v8, v9, 0xCu);
  }
}

void sub_1001BF6F0(void *a1)
{
  v3 = sub_10015B0E8(a1);
  if (sub_10000FBDC(v3))
  {
    v4 = [a1 lastCPLError];
    sub_10000AF90();
    sub_10000FAAC();
    _os_log_impl(v5, v6, v7, v8, v9, 0xCu);
  }
}

void sub_1001BF7A8(const char *a1, uint64_t a2)
{
  if (_CPLSilentLogging != 1)
  {
    v4 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = NSStringFromSelector(a1);
      *buf = 138412290;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%@ does not support type DATA", buf, 0xCu);
    }
  }

  v6 = +[NSAssertionHandler currentHandler];
  v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/PrequeliteStore/CPLPrequeliteUtilites.m"];
  v8 = NSStringFromSelector(a1);
  [v6 handleFailureInMethod:a1 object:a2 file:v7 lineNumber:118 description:{@"%@ does not support type DATA", v8}];

  abort();
}

void sub_1001BF8B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (_CPLSilentLogging != 1)
  {
    v6 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = objc_opt_class();
      v8 = v7;
      *buf = 138413058;
      v14 = a3;
      v15 = 2112;
      v16 = v7;
      v17 = 2112;
      v18 = objc_opt_class();
      v19 = 2112;
      v20 = a1;
      v9 = v18;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Invalid value for %@ (%@): %@ '%@'", buf, 0x2Au);
    }
  }

  v10 = +[NSAssertionHandler currentHandler];
  v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/PrequeliteStore/CPLPrequeliteUtilites.m"];
  v12 = objc_opt_class();
  [v10 handleFailureInMethod:a2 object:a3 file:v11 lineNumber:141 description:{@"Invalid value for %@ (%@): %@ '%@'", a3, v12, objc_opt_class(), a1}];

  abort();
}

void sub_1001BFA0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001635D8(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 138412546;
    *&v11[4] = a1;
    *&v11[12] = 2112;
    *&v11[14] = a2;
    sub_10006D044(&_mh_execute_header, v5, v6, "Removing stale mapping of cloud identifier %@ to local identifier %@", v7, v8, v9, v10, *v11, *&v11[8], *&v11[16]);
  }
}

void sub_1001BFAB8(uint64_t a1, uint64_t a2, void *a3)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = sub_1001635D8(a1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412546;
      v8 = a1;
      v9 = 2112;
      v10 = a2;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Mapping cloud identifier %@ to local identifier %@ is already known", &v7, 0x16u);
    }
  }
}

void sub_1001BFBA0(uint64_t a1, uint64_t a2)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = sub_1001635D8(a1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [CPLRecordChange descriptionForDirection:a2];
      *v12 = 138412546;
      *&v12[4] = a1;
      *&v12[12] = 2112;
      *&v12[14] = v5;
      sub_10006D044(&_mh_execute_header, v6, v7, "Updated 'add event' for already existing mapping of %@ (direction %@)", v8, v9, v10, v11, *v12, *&v12[8], *&v12[16]);
    }
  }
}

void sub_1001BFDA0(uint64_t a1)
{
  if (_CPLSilentLogging != 1)
  {
    v2 = sub_1001645FC(a1);
    if (sub_1000033C0(v2))
    {
      v11 = 0;
      sub_10000AF60(&_mh_execute_header, v3, v4, "scope index should have already been set", v5, v6, v7, v8, v11);
    }
  }

  v9 = +[NSAssertionHandler currentHandler];
  v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/PrequeliteStore/CPLPrequeliteResourceDownloadQueue.m"];
  [sub_1000034AC() handleFailureInMethod:? object:? file:? lineNumber:? description:?];

  abort();
}

void sub_1001BFE6C(void *a1, _BYTE *a2)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = sub_1001645FC(a1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [a1 mainTable];
      sub_10015F5C8();
      sub_100003528(&_mh_execute_header, v6, v7, "Upgrading %@ to version %llu: adding intent column", v8, v9, v10, v11, v15, v16);
    }
  }

  v12 = [a1 pqStore];
  v13 = [v12 pqlConnection];

  v14 = [a1 mainTable];
  *a2 = [v13 cplExecute:{@"ALTER TABLE %@ ADD COLUMN intent INTEGER DEFAULT 1", v14}];
}

void sub_1001BFF84(_BYTE *a1, char *a2)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = sub_1001645FC(a1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [a1 mainTable];
      sub_10015F5C8();
      sub_100003528(&_mh_execute_header, v6, v7, "Upgrading %@ to version %llu: adding scopeIndex column", v8, v9, v10, v11, v17, v18);
    }
  }

  v12 = [a1 pqStore];
  v13 = [v12 pqlConnection];

  v14 = [a1 mainTable];
  v15 = [v13 cplExecute:{@"ALTER TABLE %@ ADD COLUMN scopeIndex INTEGER DEFAULT 1", v14}];

  if (v15 && [a1 dropIndexWithName:@"resource" error:0] && (v16 = 1, objc_msgSend(a1, "createIndexWithName:withDefinition:unique:error:", @"resource", @"itemIdentifier, scopeIndex, resourceType", 1, 0)))
  {
    a1[52] = 1;
  }

  else
  {
    v16 = 0;
  }

  *a2 = v16;
}

void sub_1001C0100(uint64_t a1)
{
  if (_CPLSilentLogging != 1)
  {
    v2 = sub_1001645FC(a1);
    if (sub_1000033C0(v2))
    {
      v11 = 0;
      sub_10000AF60(&_mh_execute_header, v3, v4, "scope index should have been set here", v5, v6, v7, v8, v11);
    }
  }

  v9 = +[NSAssertionHandler currentHandler];
  v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/PrequeliteStore/CPLPrequeliteResourceDownloadQueue.m"];
  [sub_1000034AC() handleFailureInMethod:? object:? file:? lineNumber:? description:?];

  abort();
}

void sub_1001C01B8(uint64_t a1)
{
  if (_CPLSilentLogging != 1)
  {
    v2 = sub_1001645FC(a1);
    if (sub_1000033C0(v2))
    {
      v11 = 0;
      sub_10000AF60(&_mh_execute_header, v3, v4, "Scope index should be set here", v5, v6, v7, v8, v11);
    }
  }

  v9 = +[NSAssertionHandler currentHandler];
  v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/PrequeliteStore/CPLPrequeliteResourceDownloadQueue.m"];
  [sub_1000034AC() handleFailureInMethod:? object:? file:? lineNumber:? description:?];

  abort();
}

void sub_1001C0270(uint64_t a1)
{
  if (_CPLSilentLogging != 1)
  {
    v2 = sub_1001645FC(a1);
    if (sub_1000033C0(v2))
    {
      v11 = 0;
      sub_10000AF60(&_mh_execute_header, v3, v4, "scope index should be set here", v5, v6, v7, v8, v11);
    }
  }

  v9 = +[NSAssertionHandler currentHandler];
  v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/PrequeliteStore/CPLPrequeliteResourceDownloadQueue.m"];
  [sub_1000034AC() handleFailureInMethod:? object:? file:? lineNumber:? description:?];

  abort();
}

void sub_1001C0328(uint64_t a1)
{
  if (_CPLSilentLogging != 1)
  {
    v2 = sub_1001645FC(a1);
    if (sub_1000033C0(v2))
    {
      v11 = 0;
      sub_10000AF60(&_mh_execute_header, v3, v4, "Scope index should be set here", v5, v6, v7, v8, v11);
    }
  }

  v9 = +[NSAssertionHandler currentHandler];
  v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/PrequeliteStore/CPLPrequeliteResourceDownloadQueue.m"];
  [sub_1000034AC() handleFailureInMethod:? object:? file:? lineNumber:? description:?];

  abort();
}

void sub_1001C03E0(uint64_t a1)
{
  if (_CPLSilentLogging != 1)
  {
    v2 = sub_1001645FC(a1);
    if (sub_1000033C0(v2))
    {
      v11 = 0;
      sub_10000AF60(&_mh_execute_header, v3, v4, "Scope index should be set here", v5, v6, v7, v8, v11);
    }
  }

  v9 = +[NSAssertionHandler currentHandler];
  v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/PrequeliteStore/CPLPrequeliteResourceDownloadQueue.m"];
  [sub_1000034AC() handleFailureInMethod:? object:? file:? lineNumber:? description:?];

  abort();
}

void sub_1001C0498(uint64_t a1)
{
  if (_CPLSilentLogging != 1)
  {
    v2 = sub_1001645FC(a1);
    if (sub_1000033C0(v2))
    {
      v11 = 0;
      sub_10000AF60(&_mh_execute_header, v3, v4, "scope index should be set here", v5, v6, v7, v8, v11);
    }
  }

  v9 = +[NSAssertionHandler currentHandler];
  v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/PrequeliteStore/CPLPrequeliteResourceDownloadQueue.m"];
  [sub_1000034AC() handleFailureInMethod:? object:? file:? lineNumber:? description:?];

  abort();
}

BOOL sub_1001C0550(void *a1, uint64_t a2, uint64_t *a3)
{
  v6 = [a1 mergeRecordChangeWithNewRecordChange:a2 direction:2];
  v7 = v6;
  *a3 = v6;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v8 = sub_100167254(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v10 = 138412802;
      v11 = a2;
      v12 = 2112;
      v13 = a1;
      v14 = 2112;
      v15 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Merging %@ and %@: %@", &v10, 0x20u);
    }
  }

  return v7 == 0;
}

void sub_1001C064C(uint64_t a1, void *a2)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = sub_100167254(a1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v7 = a1;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Can't serialize %@", buf, 0xCu);
    }
  }

  v5 = [[NSString alloc] initWithFormat:@"can't serialize %@", objc_opt_class()];
  if (a2)
  {
    *a2 = [CPLErrors invalidCloudCacheErrorWithReason:v5];
  }
}

void sub_1001C0774(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (_CPLSilentLogging != 1)
  {
    v6 = sub_100167254(a1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10002B064(&_mh_execute_header, v7, v8, "Getting a remapped change from transient repository without an identifier: %@", v9, v10, v11, v12, v15, v16);
    }
  }

  v13 = +[NSAssertionHandler currentHandler];
  v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/PrequeliteStore/CPLPrequeliteTransientRepository.m"];
  [v13 handleFailureInMethod:a1 object:a2 file:v14 lineNumber:419 description:{@"Getting a remapped change from transient repository without an identifier: %@", a3}];

  abort();
}

void sub_1001C0850(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (_CPLSilentLogging != 1)
  {
    v6 = sub_100167254(a1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10002B064(&_mh_execute_header, v7, v8, "Popping a remapped change from transient repository without an identifier: %@", v9, v10, v11, v12, v15, v16);
    }
  }

  v13 = +[NSAssertionHandler currentHandler];
  v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/PrequeliteStore/CPLPrequeliteTransientRepository.m"];
  [v13 handleFailureInMethod:a1 object:a2 file:v14 lineNumber:439 description:{@"Popping a remapped change from transient repository without an identifier: %@", a3}];

  abort();
}

void sub_1001C092C(uint64_t a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v1 = sub_100167254(a1);
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000187A4();
      sub_100080C88();
      _os_log_impl(v2, v3, v4, v5, v6, 0x16u);
    }
  }
}

void sub_1001C09E0(uint64_t a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v1 = sub_100167254(a1);
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      sub_100080C88();
      _os_log_impl(v2, v3, v4, v5, v6, 0xCu);
    }
  }
}

void sub_1001C0A8C(uint64_t a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v1 = sub_100167254(a1);
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000187A4();
      sub_100080C88();
      _os_log_impl(v2, v3, v4, v5, v6, 0x16u);
    }
  }
}

uint64_t sub_1001C1294(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (result)
  {
    v5 = result;
    result = sub_1001C1B3C(result, [result totalResourceSize] + a2, a3);
    if (result)
    {
      if (+[CPLResource largeResourceSizeThreshold]< a2)
      {

        return sub_1001C1A00(v5, a2, a3);
      }

      else
      {
        return 1;
      }
    }
  }

  return result;
}

id sub_1001C1324(id result, uint64_t a2)
{
  if (result)
  {
    v2 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [result totalOriginalResourceSize] + a2);
    v3 = sub_10016AA88(44);

    return v3;
  }

  return result;
}

uint64_t sub_1001C1394(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return 0;
  }

  v6 = [a1 totalResourceSize];
  v7 = v6;
  v8 = v6 - a2;
  if (v6 < a2)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v9 = sub_10016A144(v6);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v22 = 134218240;
        v23 = a2;
        v24 = 2048;
        v25 = v7;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Total resource size inconsistency (removing %llu from %llu)", &v22, 0x16u);
      }
    }

    v8 = 0;
  }

  if (v7 >> 24 >= 0x19 && v8 >> 24 <= 0x18)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v11 = sub_10016A144(v6);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = NSLocalizedFileSizeDescription();
        v13 = NSLocalizedFileSizeDescription();
        v22 = 138412546;
        v23 = v12;
        v24 = 2112;
        v25 = v13;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Resource storage went under %@ (%@)", &v22, 0x16u);
      }
    }

    v14 = [a1 abstractObject];
    v15 = [v14 engineStore];
    v16 = [v15 engineLibrary];
    [v16 requestAttachedLibrary];
  }

  if (!sub_1001C1B3C(a1, v8, a3))
  {
    return 0;
  }

  if (+[CPLResource largeResourceSizeThreshold]>= a2)
  {
    return 1;
  }

  v17 = [a1 valueForVariable:*(a1 + 52)];
  if (v17 && (+[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", a2), v18 = objc_claimAutoreleasedReturnValue(), v19 = [v17 compare:v18], v18, v19 != 1))
  {
    v20 = [a1 _refreshLargestResourceSizeWithError:a3];
  }

  else
  {
    v20 = 1;
  }

  return v20;
}

id sub_1001C1620(void *a1, unint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = [a1 totalOriginalResourceSize];
  v4 = &v3[-a2];
  if (v3 < a2)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v5 = v3;
      v6 = sub_10016A144(v3);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v10 = 134218240;
        v11 = a2;
        v12 = 2048;
        v13 = v5;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Total original resource size inconsistency (removing %llu from %llu)", &v10, 0x16u);
      }
    }

    v4 = 0;
  }

  v7 = [NSNumber numberWithUnsignedLongLong:v4];
  v8 = sub_10016AA88(44);

  return v8;
}

uint64_t sub_1001C1A00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return 0;
  }

  v6 = [a1 valueForVariable:*(a1 + 52)];
  if (!v6 || (+[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", a2), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v6 compare:v7], v7, v8 == -1))
  {
    v9 = [NSNumber numberWithUnsignedLongLong:a2];
    v10 = [a1 setValue:v9 forVariable:*(a1 + 52) error:a3];

    if (!v10)
    {
      v14 = 0;
      goto LABEL_8;
    }

    v11 = [a1 abstractObject];
    v12 = [v11 engineStore];
    v13 = [NSNumber numberWithUnsignedLongLong:a2];
    [v12 predictSyncSessionValue:v13 ofType:CPLSyncSessionPredictionTypeLargestResourceSize];
  }

  v14 = 1;
LABEL_8:

  return v14;
}

uint64_t sub_1001C1B3C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v5 = result;
    v6 = [NSNumber numberWithUnsignedLongLong:a2];
    LODWORD(a3) = [v5 setValue:v6 forVariable:*(v5 + 36) error:a3];

    if (a3)
    {
      v7 = [v5 abstractObject];
      v8 = [v7 engineStore];
      v9 = [NSNumber numberWithUnsignedLongLong:a2];
      [v8 predictSyncSessionValue:v9 ofType:CPLSyncSessionPredictionTypeUploadResourceSize];

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_1001C1C1C(void *a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v2 = sub_10016A144(a1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Upgrading store to version 20 and Resource Storage is not empty. We must trigger a reset sync", v4, 2u);
    }
  }

  v3 = [a1 pqStore];
  [v3 triggerResetAfterUpgrade:0 withReason:@"Upgrade to version 20"];
}

id sub_1001C1CD0(uint64_t a1, uint64_t a2)
{
  result = sub_1001C1B3C(a1, 0, a2);
  if (result)
  {
    v5 = *(a1 + 44);

    return [a1 setValue:&off_10028F148 forVariable:v5 error:a2];
  }

  return result;
}

void sub_1001C1D50(void *a1, _BYTE *a2)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = sub_10016BF70(a1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [a1 mainTable];
      *buf = 138412546;
      v10 = v5;
      v11 = 2048;
      v12 = 39;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Upgrading %@ to version %llu: adding scopeIndex column", buf, 0x16u);
    }
  }

  v6 = [a1 pqStore];
  v7 = [v6 pqlConnection];

  v8 = [a1 mainTable];
  *a2 = [v7 cplExecute:{@"ALTER TABLE %@ ADD COLUMN scopeIndex INTEGER DEFAULT 1", v8}];
}

void sub_1001C1E98(void *a1, uint64_t a2, uint64_t a3)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v7 = sub_10016BF70(a1);
    if (sub_10000FBDC(v7))
    {
      v8 = [a1 abstractObject];
      *v18 = 134218498;
      *&v18[4] = a2;
      *&v18[12] = 2048;
      *&v18[14] = a3;
      *&v18[22] = 2112;
      sub_10016DC94(&_mh_execute_header, v9, v10, "Pull marker %lu should always be less than push marker %lu for %@", v11, v12, v13, v14, *v18, *&v18[8], *&v18[16], v8);
    }
  }

  v15 = _CPLStoreFailure();
  sub_1001C1F4C(v15, v16, v17);
}

void sub_1001C1F4C(uint64_t a1, void *a2, uint64_t *a3)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = sub_10016BF70(a1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = a1;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Unable to serialize %@", &v8, 0xCu);
    }
  }

  v7 = [a2 abstractObject];
  *a3 = [CPLErrors unableToSerializeRecordError:a1 inStorage:v7];
}

void sub_1001C2044(uint64_t a1, uint64_t a2)
{
  if (_CPLSilentLogging != 1)
  {
    v4 = sub_10016BF70(a1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v13 = 0;
      sub_10000AF60(&_mh_execute_header, v5, v6, "scope index should be set here", v7, v8, v9, v10, v13);
    }
  }

  v11 = +[NSAssertionHandler currentHandler];
  v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/PrequeliteStore/CPLPrequeliteChangePipe.m"];
  [v11 handleFailureInMethod:a1 object:a2 file:v12 lineNumber:241 description:@"scope index should be set here"];

  abort();
}

void sub_1001C2108(void *a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = sub_10016BF70(a1);
    if (sub_10000FBDC(v3))
    {
      v4 = [a1 abstractObject];
      sub_10016DCB4();
      sub_10016DC94(&_mh_execute_header, v5, v6, "Inconsistency when popping one batch %@ (pull marker: %lu / push marker: %lu)", v7, v8, v9, v10);
    }
  }

  v11 = _CPLStoreFailure();
  sub_1001C21A8(v11, v12);
}

void sub_1001C21A8(uint64_t a1, uint64_t a2)
{
  if (_CPLSilentLogging != 1)
  {
    v4 = sub_10016BF70(a1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v13 = 0;
      sub_10000AF60(&_mh_execute_header, v5, v6, "scope index should be set here", v7, v8, v9, v10, v13);
    }
  }

  v11 = +[NSAssertionHandler currentHandler];
  v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/PrequeliteStore/CPLPrequeliteChangePipe.m"];
  [v11 handleFailureInMethod:a1 object:a2 file:v12 lineNumber:281 description:@"scope index should be set here"];

  abort();
}

uint64_t sub_1001C226C(void *a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = sub_10016BF70(a1);
    if (sub_10000FBDC(v3))
    {
      v4 = [a1 abstractObject];
      sub_10016DCB4();
      sub_10016DC94(&_mh_execute_header, v5, v6, "Inconsistency getting next batch %@ (pull marker: %lu / push marker: %lu)", v7, v8, v9, v10);
    }
  }

  v11 = _CPLStoreFailure();
  return sub_1001C230C(v11);
}

void sub_1001C230C(void *a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = sub_10016BF70(a1);
    if (sub_10000FBDC(v3))
    {
      v4 = [a1 abstractObject];
      sub_10016DCB4();
      sub_10016DC94(&_mh_execute_header, v5, v6, "Inconsistency when popping next batch from %@ (pull marker: %lu / push marker: %lu)", v7, v8, v9, v10);
    }
  }

  v11 = _CPLStoreFailure();
  sub_1001C23AC(v11, v12);
}

void sub_1001C23AC(uint64_t a1, uint64_t a2)
{
  v4 = __CPLGenericOSLogDomain();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412546;
    v6 = a1;
    v7 = 2112;
    v8 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Failed to find resource %@ in cache: %@", &v5, 0x16u);
  }
}

void sub_1001C2468(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412546;
      v8 = a1;
      v9 = 2048;
      v10 = a2;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Failed to migrate %@ (alteration: %lu)", &v7, 0x16u);
    }
  }

  *a3 = 1;
}

void sub_1001C2554()
{
  sub_10015F5DC();
  v3 = sub_10016F3DC(v2);
  if (sub_10000FBDC(v3))
  {
    v4 = [v1 lastCPLError];
    sub_1000ACA54();
    sub_10000FAAC();
    _os_log_impl(v5, v6, v7, v8, v9, 0x16u);
  }
}

void sub_1001C2600(uint64_t a1)
{
  v2 = sub_10016F3DC(a1);
  if (sub_10000FBDC(v2))
  {
    sub_1000139A0();
    sub_10000FAAC();
    _os_log_impl(v3, v4, v5, v6, v7, 0xCu);
  }
}

void sub_1001C26A4()
{
  sub_10015F5DC();
  v3 = sub_10016F3DC(v2);
  if (sub_10000FBDC(v3))
  {
    v4 = [v1 lastCPLError];
    sub_1000ACA54();
    sub_10000FAAC();
    _os_log_impl(v5, v6, v7, v8, v9, 0x16u);
  }
}

void sub_1001C2750()
{
  sub_10015F5DC();
  v3 = sub_10016F3DC(v2);
  if (sub_10000FBDC(v3))
  {
    v4 = [v1 lastCPLError];
    sub_1000ACA54();
    sub_10000FAAC();
    _os_log_impl(v5, v6, v7, v8, v9, 0x16u);
  }
}

void sub_1001C27FC(uint64_t a1)
{
  v2 = sub_10016F3DC(a1);
  if (sub_10000FBDC(v2))
  {
    sub_10000FAAC();
    _os_log_impl(v3, v4, v5, v6, v7, 0xCu);
  }
}

void sub_1001C2894()
{
  sub_10015F5DC();
  v3 = sub_10016F3DC(v2);
  if (sub_10000FBDC(v3))
  {
    v4 = [v1 lastCPLError];
    sub_1000ACA54();
    sub_10000FAAC();
    _os_log_impl(v5, v6, v7, v8, v9, 0x16u);
  }
}

void sub_1001C2940(uint64_t a1)
{
  v2 = sub_10016F3DC(a1);
  if (sub_10000FBDC(v2))
  {
    sub_1000139A0();
    sub_10000FAAC();
    _os_log_impl(v3, v4, v5, v6, v7, 0xCu);
  }
}

void sub_1001C29D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (_CPLSilentLogging != 1)
  {
    v6 = sub_100170EF4(a1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v10 = a3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%@ should have a scope index set here", buf, 0xCu);
    }
  }

  v7 = +[NSAssertionHandler currentHandler];
  v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/PrequeliteStore/CPLPrequelitePendingRecordChecks.m"];
  [v7 handleFailureInMethod:a1 object:a2 file:v8 lineNumber:60 description:{@"%@ should have a scope index set here", a3}];

  abort();
}

void sub_1001C2AD0(uint64_t a1, uint64_t a2)
{
  if (_CPLSilentLogging != 1)
  {
    v4 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v9 = objc_opt_class();
      v5 = v9;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "No platform object specified for %@", buf, 0xCu);
    }
  }

  v6 = +[NSAssertionHandler currentHandler];
  v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/PrequeliteStore/CPLPrequeliteClientCacheMigrator.m"];
  [v6 handleFailureInMethod:a2 object:a1 file:v7 lineNumber:19 description:{@"No platform object specified for %@", objc_opt_class()}];

  abort();
}

void sub_1001C2BD0(void *a1, unsigned __int8 *a2)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = sub_1001718C0(a1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [a1 mainTable];
      *buf = 138412546;
      v15 = v5;
      v16 = 2048;
      v17 = 89;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Upgrading %@ to version %llu: adding adjustmentFingerprint column, renaming date column, and dropping fileURL column", buf, 0x16u);
    }
  }

  v6 = [a1 pqStore];
  v7 = [v6 pqlConnection];

  v8 = [a1 mainTable];
  v9 = [v7 cplExecute:{@"ALTER TABLE %@ ADD COLUMN adjustmentFingerprint TEXT DEFAULT NULL", v8}];

  if (v9 && ([a1 mainTable], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v7, "cplExecute:", @"ALTER TABLE %@ RENAME COLUMN date TO lastUpdatedDate", v10), v10, v11))
  {
    v12 = [a1 mainTable];
    v13 = [v7 cplExecute:{@"ALTER TABLE %@ DROP COLUMN fileURL", v12}];
  }

  else
  {
    v13 = 0;
  }

  *a2 = v13;
}

void sub_1001C2D8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (_CPLSilentLogging != 1)
  {
    v6 = sub_1001718C0(a1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v10 = a3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Missing file storage identifier for %@", buf, 0xCu);
    }
  }

  v7 = +[NSAssertionHandler currentHandler];
  v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/PrequeliteStore/CPLPrequeliteRecordComputeStatePushQueue.m"];
  [v7 handleFailureInMethod:a1 object:a2 file:v8 lineNumber:137 description:{@"Missing file storage identifier for %@", a3}];

  abort();
}

id sub_1001C2E78(id a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a1)
  {
    v21.receiver = a1;
    v21.super_class = CPLPrequelitePushedChange;
    a1 = objc_msgSendSuper2(&v21, "init");
    if (a1)
    {
      v6 = [v5 stringAtIndex:a3];
      v7 = NSClassFromString(v6);
      v8 = *(a1 + 3);
      *(a1 + 3) = v7;

      *(a1 + 4) = [v5 integerAtIndex:(a3 + 1)];
      v9 = [v5 stringAtIndex:(a3 + 2)];
      v10 = *(a1 + 5);
      *(a1 + 5) = v9;

      *(a1 + 6) = [v5 intAtIndex:(a3 + 3)];
      v11 = [v5 stringAtIndex:(a3 + 4)];
      v12 = *(a1 + 7);
      *(a1 + 7) = v11;

      v13 = [v5 stringAtIndex:(a3 + 5)];
      v14 = *(a1 + 8);
      *(a1 + 8) = v13;

      *(a1 + 9) = [v5 longAtIndex:(a3 + 6)];
      *(a1 + 8) = [v5 intAtIndex:(a3 + 7)] == 1;
      v15 = [v5 stringAtIndex:(a3 + 8)];
      v16 = [[CPLRecordPushContext alloc] initWithUploadIdentifier:v15 flags:objc_msgSend(v5 priority:{"integerAtIndex:", (a3 + 9)), objc_msgSend(v5, "unsignedIntegerAtIndex:", (a3 + 10))}];
      v17 = *(a1 + 10);
      *(a1 + 10) = v16;

      *(a1 + 3) = [v5 intAtIndex:(a3 + 11)];
      v18 = [v5 dataAtIndex:(a3 + 12)];
      v19 = *(a1 + 2);
      *(a1 + 2) = v18;
    }
  }

  return a1;
}

void *sub_1001C3044(void *a1)
{
  if (a1)
  {
    v2 = a1;
    v3 = a1[2];
    if (!v3)
    {
      v4 = a1[11];
      if (v4 && v2[6] != 1024)
      {
        v5 = [v4 copy];
        [v5 clearIdentifiers];
        [v5 prepareForStorage];
        v6 = [CPLArchiver archivedDataWithRootObject:v5];
        v7 = v2[2];
        v2[2] = v6;

        v3 = v2[2];
      }

      else
      {
        v3 = 0;
      }
    }

    a1 = v3;
    v1 = vars8;
  }

  return a1;
}

void sub_1001C30DC(uint64_t a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v12 = v4;
    objc_storeStrong((a1 + 88), a2);
    v5 = [v12 relatedIdentifier];
    v6 = [v5 copy];
    v7 = *(a1 + 56);
    *(a1 + 56) = v6;

    v8 = [v12 secondaryIdentifier];
    v9 = [v8 copy];
    v10 = *(a1 + 64);
    *(a1 + 64) = v9;

    *(a1 + 72) = [v12 dequeueOrder];
    if ([v12 isDelete])
    {
      v11 = 1;
    }

    else
    {
      v11 = [v12 inTrash];
    }

    *(a1 + 8) = v11;
    v4 = v12;
  }
}

void sub_1001C31AC(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 16), a2);
  }
}

void sub_1001C31BC(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 80), a2);
  }
}

id sub_1001C3814(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 32) + 8) + 24) = [v3 unsignedIntegerAtIndex:0];
  v4 = sub_1001C2E78([CPLPrequelitePushedChange alloc], v3, 1);

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = +[NSNull null];
  }

  v6 = v5;

  return v6;
}

void sub_1001C38A8(uint64_t a1)
{
  if (_CPLSilentLogging != 1)
  {
    v2 = sub_1001749DC(a1);
    if (sub_1000033C0(v2))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Scope index should have been set here", v5, 2u);
    }
  }

  v3 = +[NSAssertionHandler currentHandler];
  v4 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/PrequeliteStore/CPLPrequelitePushRepository.m"];
  [sub_1000034AC() handleFailureInMethod:? object:? file:? lineNumber:? description:?];

  abort();
}

void sub_1001C3970(void *a1, uint64_t a2, void *a3, void *a4)
{
  v8 = [a1 identifier];
  v9 = [v8 copy];
  v10 = *(a2 + 40);
  *(a2 + 40) = v9;

  *(a2 + 48) = [a3 changeType];
  v11 = [a3 relatedIdentifier];
  v12 = [v11 copy];
  v13 = *(a2 + 56);
  *(a2 + 56) = v12;

  v14 = [a3 secondaryIdentifier];
  v15 = [v14 copy];
  v16 = *(a2 + 64);
  *(a2 + 64) = v15;

  *(a2 + 72) = [a3 dequeueOrder];
  if ([a3 isDelete])
  {
    v17 = 1;
  }

  else
  {
    v17 = [a3 inTrash];
  }

  *(a2 + 8) = v17;
  objc_storeStrong((a2 + 80), a4);
  if ([a3 _shouldNotTrustCloudCache])
  {
    v18 = 2;
  }

  else
  {
    v18 = 0;
  }

  *(a2 + 12) = v18;
  objc_storeStrong((a2 + 88), a3);
}

void sub_1001C3A94(void *a1, void *a2, uint64_t a3, void *a4)
{
  [a2 setScopeIndex:*a1];
  if (*(a3 + 48) == 1024)
  {
    v6 = [*(a3 + 24) newDeleteChangeWithScopedIdentifier:a2];
  }

  else
  {
    v7 = *(a3 + 88);
    if (v7)
    {
      v6 = [v7 copy];
      [v6 setScopedIdentifier:a2];
    }

    else
    {
      v8 = *(a3 + 16);
      if (v8)
      {
        v6 = [CPLArchiver unarchiveObjectWithData:v8 ofClass:objc_opt_class()];
        [v6 setScopedIdentifier:a2];
        [v6 setRelatedIdentifier:*(a3 + 56)];
        [v6 setSecondaryIdentifier:*(a3 + 64)];
        [v6 awakeFromStorage];
      }

      else
      {
        v6 = [*(a3 + 24) newChangeWithScopedIdentifier:a2 changeType:?];
        [v6 setRelatedIdentifier:*(a3 + 56)];
        [v6 setSecondaryIdentifier:*(a3 + 64)];
      }
    }
  }

  *a4 = v6;
  [v6 _setPushContext:*(a3 + 80)];
  if (*(a3 + 12) == 2)
  {
    [v6 _setShouldNotTrustCloudCache:1];
  }
}

void sub_1001C3BD4(void *a1)
{
  v2 = sub_1001749DC(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [a1 mainTable];
    v4 = 138412546;
    v5 = v3;
    v6 = 2048;
    v7 = 84;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Upgrading %@ to version %llu: adding indexes for local conflict resolution", &v4, 0x16u);
  }
}

void sub_1001C3C9C()
{
  sub_1000587D4();
  v17 = v0;
  v18 = v2;
  v4 = v3;
  v5 = v1;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = sub_1001749DC(v1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v5 mainTable];
      sub_10015F5C8();
      v16 = 83;
      sub_10017AA9C(&_mh_execute_header, v8, v9, "Upgrading %@ to version %llu: adding priority column", &v15);
    }
  }

  v10 = [v5 pqStore];
  v11 = [v10 pqlConnection];

  v12 = [v5 mainTable];
  v13 = [v11 cplExecute:{@"ALTER TABLE %@ ADD COLUMN priority INTEGER DEFAULT 0", v12}];

  if (v13)
  {
    v14 = [v5 _createIndexesWithPriority:1];
  }

  else
  {
    v14 = 0;
  }

  *v4 = v14;
}

void sub_1001C3DD8()
{
  sub_1000587D4();
  v17 = v0;
  v18 = v2;
  v4 = v3;
  v5 = v1;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = sub_1001749DC(v1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v5 mainTable];
      sub_10015F5C8();
      v16 = 75;
      sub_10017AA9C(&_mh_execute_header, v8, v9, "Upgrading %@ to version %llu: adding flags column", &v15);
    }
  }

  v10 = [v5 pqStore];
  v11 = [v10 pqlConnection];

  v12 = [v5 mainTable];
  v13 = [v11 cplExecute:{@"ALTER TABLE %@ ADD COLUMN flags INTEGER DEFAULT 0", v12}];

  if (v13)
  {
    v14 = [v5 createIndexWithName:@"flags" withDefinition:@"scopeIndex unique:flags" error:{0, 0}];
  }

  else
  {
    v14 = 0;
  }

  *v4 = v14;
}

void sub_1001C3F28(void *a1, char *a2)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = sub_1001749DC(a1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [a1 mainTable];
      v32 = 138412546;
      v33 = v5;
      v34 = 2048;
      v35 = 63;
      sub_10017AA9C(&_mh_execute_header, v6, v7, "Upgrading %@ to version %llu: adding serializedRecord column", &v32);
    }
  }

  v8 = [a1 pqStore];
  v9 = [v8 pqlConnection];

  v10 = [a1 mainTable];
  v11 = [v9 cplExecute:{@"ALTER TABLE %@ ADD COLUMN serializedRecord DATA DEFAULT NULL", v10}];

  if (v11)
  {
    v12 = [a1 pqStore];
    v13 = [v12 clientCache];
    v14 = [v13 mainTable];

    v15 = [a1 mainTable];
    v16 = [v9 cplFetch:{@"SELECT %@.rowid, %@.changeType, %@.serializedRecord FROM %@, %@ WHERE %@.scopeIndex = %@.scopeIndex AND %@.identifier = %@.identifier AND (changeType != %ld AND changeType != %ld)", v15, v15, v14, v15, v14, v15, v14, v15, v14, 1024, 0}];
    v31 = 0;
    while ([v16 next])
    {
      while (1)
      {
        v17 = objc_autoreleasePoolPush();
        v18 = [v16 integerAtIndex:0];
        v19 = [v16 integerAtIndex:1];
        v20 = [v16 cplChangeAtIndex:2];
        if (v20)
        {
          break;
        }

        objc_autoreleasePoolPop(v17);
        if (([v16 next] & 1) == 0)
        {
          goto LABEL_17;
        }
      }

      v21 = v20;
      v30 = a2;
      v22 = [v20 copyChangeType:v19];
      v23 = [CPLArchiver archivedDataWithRootObject:v22];
      v24 = v23;
      if (v23)
      {
        v25 = [v9 execute:{@"UPDATE %@ SET serializedRecord = %@ WHERE rowid = %ld", v15, v23, v18}];
        v26 = v25;
        v31 += v25;
      }

      else
      {
        v26 = 1;
      }

      objc_autoreleasePoolPop(v17);
      a2 = v30;
      if ((v26 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

LABEL_17:
    if (![v9 execute:{@"UPDATE %@ SET serializedRecord = (SELECT serializedRecord FROM %@ WHERE scopeIndex = %@.scopeIndex AND identifier = %@.identifier) WHERE changeType = %ld", v15, v14, v15, v15, 0}])
    {
LABEL_21:
      v27 = 0;
      goto LABEL_22;
    }

    v28 = [v9 changes] + v31;
    if (v28 >= 1)
    {
      v29 = [a1 pqStore];
      [v29 recordUpgradeEvent:{@"Transferred %lld records from client cache to push repository", v28}];
    }

    v27 = 1;
LABEL_22:
  }

  else
  {
    v27 = 0;
  }

  *a2 = v27;
}

void sub_1001C4240()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/PrequeliteStore/CPLPrequelitePushRepository.m"];
  [sub_1000034AC() handleFailureInMethod:? object:? file:? lineNumber:? description:?];

  abort();
}

void sub_1001C42B4()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/PrequeliteStore/CPLPrequelitePushRepository.m"];
  [sub_1000034AC() handleFailureInMethod:? object:? file:? lineNumber:? description:?];

  abort();
}

void sub_1001C4328()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/PrequeliteStore/CPLPrequelitePushRepository.m"];
  [sub_1000034AC() handleFailureInMethod:? object:? file:? lineNumber:? description:?];

  abort();
}

id sub_1001C4468(char a1, uint64_t a2, void *a3, void *a4)
{
  if (a1)
  {
    v29 = NSStringFromClass(0);
    v7 = 0;
    v6 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v22 = 0;
    v8 = 0;
  }

  else
  {
    v29 = NSStringFromClass(*(a2 + 24));
    v25 = *(a2 + 32);
    v27 = *(a2 + 40);
    v24 = *(a2 + 48);
    v26 = *(a2 + 56);
    v6 = *(a2 + 64);
    v7 = *(a2 + 8);
    v8 = *(a2 + 80);
    v22 = *(a2 + 72);
  }

  v23 = v8;
  v9 = [v23 uploadIdentifier];
  if (a1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *(a2 + 80);
  }

  v11 = v10;
  v12 = [v11 flags];
  if (a1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *(a2 + 80);
  }

  v14 = v13;
  v15 = [v14 priority];
  if (a1)
  {
    v17 = sub_1001C3044(0);
    v18 = 0;
    v16 = 0;
    v19 = 0;
  }

  else
  {
    v16 = *(a2 + 12);
    v17 = sub_1001C3044(a2);
    v18 = *(a2 + 32);
    v19 = *(a2 + 40);
  }

  v20 = [a3 cplExecute:{@"UPDATE %@ SET class = %@, scopeIndex = %ld, identifier = %@, changeType = %i, relatedIdentifier = %@, secondaryIdentifier = %@, dequeueOrder = %ld, trashed = %i, uploadIdentifier = %@, flags = %ld, priority = %lu, trustLevel = %i, serializedRecord = %@ WHERE scopeIndex = %ld AND identifier = %@", a4, v29, v25, v27, v24, v26, v6, v22, v7, v9, v12, v15, v16, v17, v18, v19}];

  return v20;
}

id sub_1001C47F0(void *a1)
{
  result = [0 uploadIdentifier];
  *a1 = result;
  return result;
}

void sub_1001C4A88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  sub_10002B0F4();
  a18 = v20;
  a19 = v22;
  v23 = v21;
  if (_CPLSilentLogging != 1)
  {
    v24 = sub_1001749DC(v21);
    if (sub_1000033C0(v24))
    {
      v25 = [v23 abstractObject];
      LODWORD(a11) = 138412290;
      *(&a11 + 4) = v25;
      sub_1000139CC(&_mh_execute_header, v19, v26, "%@ should not manage the extracted batch", &a11);
    }
  }

  v27 = +[NSAssertionHandler currentHandler];
  v28 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/PrequeliteStore/CPLPrequelitePushRepository.m"];
  v29 = [v23 abstractObject];
  [sub_1000034AC() handleFailureInMethod:? object:? file:? lineNumber:? description:?];

  abort();
}

void sub_1001C4B80(void *a1)
{
  v1 = objc_begin_catch(a1);
  v2 = v1;
  if (_CPLSilentLogging != 1)
  {
    v3 = sub_1001749DC(v1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = 138412290;
      v6 = v2;
      sub_1000139CC(&_mh_execute_header, v3, v4, "Stored extracted batch does not seem supported anymore (%@)", &v5);
    }
  }

  objc_end_catch();
}

void sub_1001C4C48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v21 = sub_1001749DC(a1);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Failed to decode extracted batch", v30, 2u);
    }
  }

  v22 = _CPLStoreFailure();
  sub_1001C4CBC(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21);
}

void sub_1001C4CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  sub_1000587D4();
  a20 = v22;
  a21 = v24;
  v25 = v23;
  if (_CPLSilentLogging != 1)
  {
    v26 = sub_1001749DC(v23);
    if (sub_1000033C0(v26))
    {
      v27 = [v25 abstractObject];
      LODWORD(a11) = 138412290;
      *(&a11 + 4) = v27;
      sub_1000139CC(&_mh_execute_header, v21, v28, "%@ should not manage the extracted batch", &a11);
    }
  }

  v29 = +[NSAssertionHandler currentHandler];
  v30 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/PrequeliteStore/CPLPrequelitePushRepository.m"];
  v31 = [v25 abstractObject];
  [sub_1000034AC() handleFailureInMethod:? object:? file:? lineNumber:? description:?];

  abort();
}

void sub_1001C4DC8(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = sub_1001749DC(a1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 134218242;
      v8 = a2;
      v9 = 2114;
      v10 = a1;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Reset priority for %llu records in %{public}@", &v7, 0x16u);
    }
  }

  *a3 = 1;
}

void sub_1001C52B0(uint8_t *a1, uint64_t a2, void *a3)
{
  v6 = sub_1001749DC(a1);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *a1 = 138412290;
    *a3 = a2;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@ still has contributors to update", a1, 0xCu);
  }
}

void sub_1001C5410(uint64_t a1)
{
  v2 = sub_1001749DC(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 134217984;
    v4 = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Acknowledged %lu contributors updates", &v3, 0xCu);
  }
}

void sub_1001C5650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 buf, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  sub_1000587D4();
  a20 = v22;
  a21 = v24;
  v26 = v25;
  if (_CPLSilentLogging != 1)
  {
    v27 = sub_1001749DC(v23);
    if (sub_1000033C0(v27))
    {
      v28 = objc_opt_class();
      v29 = v28;
      v30 = NSStringFromSelector(v26);
      LODWORD(buf) = 138412546;
      *(&buf + 4) = v28;
      WORD6(buf) = 2112;
      *(&buf + 14) = v30;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Trying to call [%@ %@] too many times", &buf, 0x16u);
    }
  }

  v31 = +[NSAssertionHandler currentHandler];
  v32 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/PrequeliteStore/CPLPrequelitePushRepository.m"];
  objc_opt_class();
  v33 = NSStringFromSelector(v26);
  [sub_1000034AC() handleFailureInMethod:? object:? file:? lineNumber:? description:?];

  abort();
}

id sub_1001C58A4(uint64_t a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v2 = sub_10017AAD4(a1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Running on a undetermined OS build", v4, 2u);
    }
  }

  return [*(a1 + 8) removeObjectForKey:@"lastSeenOSBuildVersion"];
}

id *sub_1001C5930(id *a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (a1)
  {
    v10.receiver = a1;
    v10.super_class = CPLPrequeliteRemappedRecord;
    v8 = objc_msgSendSuper2(&v10, "init");
    a1 = v8;
    if (v8)
    {
      objc_storeStrong(v8 + 1, a2);
      objc_storeStrong(a1 + 2, a3);
    }
  }

  return a1;
}

void sub_1001C59CC(void *a1, _BYTE *a2)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = sub_10017BE9C(a1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Removing unused deleteDate column", v7, 2u);
    }
  }

  v5 = [a1 pqStore];
  v6 = [v5 pqlConnection];

  *a2 = [v6 cplExecute:@"ALTER TABLE remappedDeletes DROP COLUMN deleteDate"];
}

void sub_1001C5AA0(uint64_t a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v2 = sub_10017BE9C(a1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = 138412290;
      v4 = a1;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Removed %@ from remapped records", &v3, 0xCu);
    }
  }
}

void sub_1001C5CB0(void *a1, _BYTE *a2)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = sub_10017DA04(a1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [a1 mainTable];
      *buf = 138412546;
      v20 = v5;
      v21 = 2048;
      v22 = 63;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Upgrading %@ to version %llu: adding class column", buf, 0x16u);
    }
  }

  v6 = [a1 pqStore];
  v7 = [v6 pqlConnection];

  v8 = [a1 mainTable];
  v9 = [v7 cplExecute:{@"ALTER TABLE %@ ADD COLUMN class TEXT DEFAULT NULL", v8}];

  if (v9)
  {
    v10 = [a1 pqStore];
    v11 = [v10 clientCache];
    v12 = [v11 mainTable];

    v13 = [a1 mainTable];
    v14 = [v7 cplExecute:{@"UPDATE %@ SET class = (SELECT class FROM %@ WHERE identifier = %@.localIdentifier AND scopeIndex = %@.scopeIndex)", v13, v12, v13, v13}];
    v15 = v14;
    if (v14)
    {
      v16 = [v7 changes];
      if (v16 >= 1)
      {
        v17 = v16;
        v18 = [a1 pqStore];
        [v18 recordUpgradeEvent:{@"Updated quarantined record classes from client cache for %lld records", v17}];
      }
    }
  }

  else
  {
    v15 = 0;
  }

  *a2 = v15;
}

void sub_1001C5EE0(uint64_t a1, uint64_t a2)
{
  if (_CPLSilentLogging != 1)
  {
    v4 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v8 = 0x404E000000000000;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Expiration interval should be greater or equal to %f", buf, 0xCu);
    }
  }

  v5 = +[NSAssertionHandler currentHandler];
  v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/PrequeliteStore/CPLPrequeliteTodoVar.m"];
  [v5 handleFailureInMethod:a1 object:a2 file:v6 lineNumber:53 description:{@"Expiration interval should be greater or equal to %f", 0x404E000000000000}];

  abort();
}

void sub_1001C7A04(uint64_t a1, uint64_t a2)
{
  if (_CPLSilentLogging != 1)
  {
    v5 = sub_1001805BC(a1);
    if (sub_1000033C0(v5))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Trying to store a file without an finger print", v8, 2u);
    }
  }

  v6 = +[NSAssertionHandler currentHandler];
  v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/Resources/CPLBucketFileStorage.m"];
  [v6 handleFailureInMethod:a1 object:a2 file:v7 lineNumber:77 description:@"Trying to store a file without an finger print"];

  abort();
}

void sub_1001C7AE4()
{
  sub_10015F5DC();
  v3 = sub_1001805BC(v2);
  if (sub_10000FAE0(v3))
  {
    v4 = [v1 lastPathComponent];
    sub_1000ACA54();
    sub_100181C30();
    _os_log_impl(v5, v6, v7, v8, v9, v10);
  }
}

void sub_1001C7B94()
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    sub_10015F5DC();
    v3 = sub_1001805BC(v2);
    if (sub_10000FAE0(v3))
    {
      v4 = [v1 lastPathComponent];
      sub_1000ACA54();
      sub_100181C30();
      _os_log_impl(v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_1001C7C54()
{
  sub_10015F5DC();
  v3 = sub_1001805BC(v2);
  if (sub_10000FAE0(v3))
  {
    v4 = [v1 lastPathComponent];
    sub_1000ACA54();
    sub_100181C30();
    _os_log_impl(v5, v6, v7, v8, v9, v10);
  }
}

void sub_1001C7D04()
{
  sub_10015F5DC();
  v3 = sub_1001805BC(v2);
  if (sub_10000FAE0(v3))
  {
    v4 = [v1 lastPathComponent];
    sub_1000ACA54();
    sub_100181C30();
    _os_log_impl(v5, v6, v7, v8, v9, v10);
  }
}

void sub_1001C7F4C(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v5 = v4;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = sub_1001821D8(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v8 = 138412546;
      v9 = v5;
      v10 = 2112;
      v11 = a3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%@ got test notification of external changes: %@", &v8, 0x16u);
    }
  }

  v7 = [v5 abstractObject];
  [v7 noteServerHasChanges];
}

void sub_1001C8038(uint64_t a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v2 = sub_1001821D8(a1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v9 = 138412290;
      v10 = a1;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Initializing %@", &v9, 0xCu);
    }
  }

  v3 = CPLCopyDefaultSerialQueueAttributes();
  v4 = dispatch_queue_create("com.apple.cpl.scheduler", v3);
  v5 = *(a1 + 8);
  *(a1 + 8) = v4;

  v6 = CPLCopyDefaultSerialQueueAttributes();
  v7 = dispatch_queue_create("com.apple.cpl.scheduler.sequenceNumber", v6);
  v8 = *(a1 + 24);
  *(a1 + 24) = v7;
}

void sub_1001C8168(void **a1, uint64_t a2, void *a3)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = sub_1001821D8(a1);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(*a1 + a2);
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Starting requested %@ after dropping persisted sync session", &v8, 0xCu);
    }

    a3 = *a1;
  }

  v7 = [a3 abstractObject];
  [v7 startRequiredSyncSessionNow:*(*a1 + a2)];
}

void sub_1001C8254(void *a1, uint64_t a2)
{
  v4 = sub_1001821D8(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(*a1 + a2);
    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Delaying start of %@ while still looking for persisted sync session", &v6, 0xCu);
  }
}

uint64_t dispatch thunk of Decoder.decodeSingularDoubleField(value:)()
{
  return dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
}

{
  return dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
}

CLLocationCoordinate2D CLLocationCoordinate2DMake(CLLocationDegrees latitude, CLLocationDegrees longitude)
{
  v4 = _CLLocationCoordinate2DMake(latitude, longitude);
  v3 = v4.longitude;
  v2 = v4.latitude;
  result.longitude = v3;
  result.latitude = v2;
  return result;
}

NSSize NSSizeFromString(NSString *aString)
{
  v3 = _NSSizeFromString(aString);
  height = v3.height;
  width = v3.width;
  result.height = height;
  result.width = width;
  return result;
}

objc_method_description protocol_getMethodDescription(Protocol *p, SEL aSel, BOOL isRequiredMethod, BOOL isInstanceMethod)
{
  MethodDescription = _protocol_getMethodDescription(p, aSel, isRequiredMethod, isInstanceMethod);
  types = MethodDescription.types;
  name = MethodDescription.name;
  result.types = types;
  result.name = name;
  return result;
}