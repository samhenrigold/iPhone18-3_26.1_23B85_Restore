id sub_10007C95C(uint64_t a1)
{
  result = [*(a1 + 32) hasBeenCalled];
  if ((result & 1) == 0)
  {
    v3 = qword_1000EB210;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [*(a1 + 40) descriptionForTaskWithIdentifier:*(a1 + 64)];
      v5 = 138543362;
      v6 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ failed to ask client for delayed request disposition, continuing load", &v5, 0xCu);
    }

    (*(*(a1 + 56) + 16))();
    [*(a1 + 32) setHasBeenCalled:1];
    return [*(*(a1 + 48) + 8) removeObject:*(a1 + 32)];
  }

  return result;
}

void sub_10007CA80(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (([*(a1 + 32) hasBeenCalled] & 1) == 0)
  {
    v6 = qword_1000EB210;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*(a1 + 40) descriptionForTaskWithIdentifier:*(a1 + 64)];
      v8 = 138543618;
      v9 = v7;
      v10 = 1024;
      v11 = a2;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ client responded to delayed request callback with disposition %d", &v8, 0x12u);
    }

    (*(*(a1 + 56) + 16))();
    [*(a1 + 32) setHasBeenCalled:1];
    [*(*(a1 + 48) + 8) removeObject:*(a1 + 32)];
  }
}

void sub_10007CBD0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) hasBeenCalled] & 1) == 0)
  {
    v4 = qword_1000EB210;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 40) descriptionForTaskWithIdentifier:*(a1 + 64)];
      v6 = 138543618;
      v7 = v5;
      v8 = 2112;
      v9 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ failed to ask client for getAuthHeadersForResponse. Error=%@", &v6, 0x16u);
    }

    (*(*(a1 + 56) + 16))();
    [*(a1 + 32) setHasBeenCalled:1];
    [*(*(a1 + 48) + 8) removeObject:*(a1 + 32)];
  }
}

void sub_10007CD18(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if (([*(a1 + 32) hasBeenCalled] & 1) == 0)
  {
    v9 = qword_1000EB210;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [*(a1 + 40) descriptionForTaskWithIdentifier:*(a1 + 64)];
      v11 = @"NO";
      v12 = 138544130;
      v13 = v10;
      if (a2)
      {
        v11 = @"YES";
      }

      v14 = 2112;
      v15 = v11;
      v16 = 2112;
      v17 = v7;
      v18 = 2112;
      v19 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ client responded to getAuthHeadersForResponse callback with continueLoad=%@, authHeaders=%@, newRequest=%@", &v12, 0x2Au);
    }

    (*(*(a1 + 56) + 16))(*(a1 + 56), a2);
    [*(a1 + 32) setHasBeenCalled:1];
    [*(*(a1 + 48) + 8) removeObject:*(a1 + 32)];
  }
}

void sub_10007CEA8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = qword_1000EB210;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) descriptionForTaskWithIdentifier:*(a1 + 56)];
    v6 = 138543362;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ failed to deliver metric event", &v6, 0xCu);
  }

  [*(*(a1 + 40) + 8) removeObject:*(a1 + 48)];
}

void sub_10007FAF0(uint64_t a1)
{
  v2 = [*(a1 + 32) _URLToUse];
  v86 = [v2 scheme];

  v3 = [*(a1 + 32) _URLToUse];
  v4 = [v3 host];

  v5 = [*(a1 + 32) _URLToUse];
  v6 = [v5 port];

  v85 = v6;
  if (v6)
  {
    v7 = [v6 unsignedIntegerValue];
  }

  else
  {
    v8 = [*(a1 + 32) _URLToUse];
    v9 = [v8 scheme];
    v7 = sub_100080A28(v9);
  }

  v10 = v86;
  if ([v10 caseInsensitiveCompare:@"http"])
  {
    v11 = [v10 caseInsensitiveCompare:@"https"];

    if (v11)
    {

      v4 = @"configuration.apple.com";
      v7 = sub_100080A28(@"http");
    }
  }

  else
  {
  }

  v12 = qword_1000EB210;
  if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v105 = v4;
    v106 = 1024;
    LODWORD(v107) = v7;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Creating tcp_connection to host: %@, port: %d", buf, 0x12u);
  }

  v13 = v4;
  if ([(__CFString *)v4 UTF8String]&& (v14 = tcp_connection_create()) != 0)
  {
    v15 = v14;
    tcp_connection_allow_client_socket_access();
    v16 = [*(a1 + 32) _URLToUse];
    v17 = [v16 absoluteString];
    v18 = v17;
    [v17 UTF8String];
    tcp_connection_set_url();

    v19 = qword_1000EB210;
    if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v105 = v15;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Created tcp_connection: %@", buf, 0xCu);
    }

    v103.receiver = *(a1 + 40);
    v103.super_class = NDAVBackgroundSession;
    v20 = objc_msgSendSuper2(&v103, "monitoredAppBundleID");
    v21 = v20;
    [v20 UTF8String];
    tcp_connection_set_source_application_by_bundle();

    if (([*(*(a1 + 40) + 352) allowsCellularAccess] & 1) == 0)
    {
      tcp_connection_set_no_cellular();
    }

    if (([*(*(a1 + 40) + 352) allowsExpensiveNetworkAccess] & 1) == 0)
    {
      tcp_connection_set_no_expensive();
    }

    [*(a1 + 48) startLoadingMetadata];
    v98[0] = _NSConcreteStackBlock;
    v98[1] = 3221225472;
    v98[2] = sub_100080ADC;
    v98[3] = &unk_1000D6498;
    v22 = *(a1 + 32);
    v23 = *(a1 + 40);
    v99 = v22;
    v100 = v23;
    v24 = *(a1 + 56);
    v25 = *(a1 + 64);
    v101 = v24;
    v102 = v25;
    v82 = objc_retainBlock(v98);
    v26 = *(a1 + 40);
    [v26[44] timeoutIntervalForResource];
    [v26 defaultWindowDurationForResourceTimeout:?];
    v28 = v27;
    +[NSDate timeIntervalSinceReferenceDate];
    v30 = v29;
    [*(a1 + 32) creationTime];
    v32 = v31;
    v83 = +[NSDate date];
    v80 = [NSDate dateWithTimeIntervalSinceNow:v28 - (v30 - v32)];
    v33 = getpid();
    v81 = [NSString stringWithFormat:@"nsurl-AV-%d-%lld", v33, ++qword_1000EB218];
    v34 = [_DASActivity activityWithName:"activityWithName:priority:duration:startingAfter:startingBefore:" priority:? duration:? startingAfter:? startingBefore:?];
    [(__CFString *)v34 setHandlerQueue:*(*(a1 + 40) + 192)];
    v97[0] = _NSConcreteStackBlock;
    v97[1] = 3221225472;
    v97[2] = sub_100080D00;
    v97[3] = &unk_1000D64C0;
    v35 = *(a1 + 64);
    v97[4] = *(a1 + 40);
    v97[5] = v35;
    [(__CFString *)v34 setSuspendHandler:v97];
    [(__CFString *)v34 setRequiresNetwork:1];
    -[__CFString setRequiresPlugin:](v34, "setRequiresPlugin:", [*(*(a1 + 40) + 352) _requiresPowerPluggedIn]);
    v36 = _DASActivityTransferSizeSmall;
    v37 = *(*(a1 + 40) + 56);
    v38 = [NSNumber numberWithUnsignedInteger:*(a1 + 64)];
    v84 = [v37 objectForKeyedSubscript:v38];

    v39 = [v84 _DuetActivityProperties];
    LOBYTE(v38) = v39 == 0;

    if ((v38 & 1) == 0)
    {
      v40 = [v84 _DuetActivityProperties];
      v41 = [v40 objectForKeyedSubscript:kConditionalConnectionRequirementDownloadBytes];

      if (v41)
      {
        v42 = [v41 unsignedLongLongValue];
        if (v42 <= 0x40000000)
        {
          if (v42 <= 0x1F400000)
          {
            if (v42 <= 0x6400000)
            {
              if (v42 <= 0xA00000)
              {
                v43 = &_DASActivityTransferSizeVerySmall;
                if (v42 > 0x19000)
                {
                  v43 = &_DASActivityTransferSizeSmall;
                }
              }

              else
              {
                v43 = &_DASActivityTransferSizeModerate;
              }
            }

            else
            {
              v43 = &_DASActivityTransferSizeLarge;
            }
          }

          else
          {
            v43 = &_DASActivityTransferSizeVeryLarge;
          }
        }

        else
        {
          v43 = &_DASActivityTransferSizeGigantic;
        }

        v36 = *v43;
      }

      v52 = [v84 _DuetActivityProperties];
      v53 = [v52 objectForKeyedSubscript:kConditionalConnectionRequirementDuetPreClearedMode];

      if (v53)
      {
        -[__CFString setPreClearedMode:](v34, "setPreClearedMode:", [v53 intValue]);
      }
    }

    [(__CFString *)v34 setDownloadSize:v36];
    if (![*(*(a1 + 40) + 352) allowsCellularAccess] || (objc_msgSend(*(*(a1 + 40) + 352), "allowsExpensiveNetworkAccess") & 1) == 0)
    {
      [(__CFString *)v34 setRequiresInexpensiveNetworking:1];
    }

    if ([*(a1 + 32) isDiscretionary])
    {
      if ([*(a1 + 40) adjustedTCPConnectionPriorityForTaskPriority:{objc_msgSend(*(a1 + 32), "basePriority")}] >= 250)
      {
        if (*(*(a1 + 40) + 134))
        {
          v54 = &_DASSchedulingPriorityMaintenance;
        }

        else
        {
          v54 = &_DASSchedulingPriorityBackground;
        }
      }

      else
      {
        v54 = &_DASSchedulingPriorityUserInitiatedOvercommit;
      }
    }

    else
    {
      v55 = [v83 dateByAddingTimeInterval:10.0];
      [(__CFString *)v34 setStartBefore:v55];

      v56 = [*(a1 + 40) adjustedTCPConnectionPriorityForTaskPriority:{objc_msgSend(*(a1 + 32), "basePriority")}];
      v54 = &_DASSchedulingPriorityUserInitiated;
      if (v56 < 250)
      {
        v54 = &_DASSchedulingPriorityUserInitiatedOvercommit;
      }
    }

    v57 = *v54;
    if ([*(a1 + 32) isDiscretionary] && objc_msgSend(*(a1 + 32), "startedUserInitiated"))
    {
      v58 = *(*(a1 + 40) + 32);
      v59 = *(a1 + 40);
      if (*(v59 + 138) == 1)
      {
        v60 = *(v59 + 208);
        if (v60)
        {
          v61 = v60;

          v58 = v61;
        }
      }

      if ([v58 isInTransitionalDiscretionaryPeriod])
      {
        v62 = qword_1000EB210;
        if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
        {
          v63 = [*(a1 + 32) _loggableDescription];
          *buf = 138543618;
          v105 = v63;
          v106 = 2112;
          v107 = v34;
          _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "%{public}@ client is in transistional discretionary period - updating activity _DASActivity %@", buf, 0x16u);
        }

        [(__CFString *)v34 setDeferred:1];
      }
    }

    [(__CFString *)v34 setSchedulingPriority:v57];
    v96.receiver = *(a1 + 40);
    v96.super_class = NDAVBackgroundSession;
    v64 = objc_msgSendSuper2(&v96, "monitoredAppBundleID");
    [(__CFString *)v34 setBundleId:v64];

    v65 = tcp_connection_copy_endpoint();
    v66 = [NWEndpoint endpointWithCEndpoint:v65];
    v67 = tcp_connection_copy_parameters();
    v68 = [NWParameters parametersWithCParameters:v67];
    v69 = [NSDictionary dictionaryWithObjectsAndKeys:v66, kNWEndpointKey, v68, kNWParametersKey, 0];
    [(__CFString *)v34 setUserInfo:v69];

    [*(*(a1 + 40) + 336) setObject:v34 forKeyedSubscript:*(a1 + 56)];
    v70 = qword_1000EB210;
    if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
    {
      v71 = [*(a1 + 32) _loggableDescription];
      *buf = 138543618;
      v105 = v71;
      v106 = 2112;
      v107 = v34;
      _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "%{public}@ submitting _DASActivity %@", buf, 0x16u);
    }

    v72 = +[_DASScheduler sharedScheduler];
    [v72 submitActivity:v34 inGroupWithName:@"NSURLSessionBackgroundPoolName"];

    tcp_connection_set_indefinite();
    v89 = _NSConcreteStackBlock;
    v90 = 3221225472;
    v91 = sub_100080D0C;
    v92 = &unk_1000D64E8;
    v73 = *(a1 + 32);
    v74 = *(a1 + 40);
    v93 = v73;
    v94 = v74;
    v95 = *(a1 + 64);
    tcp_connection_set_event_handler();
    [*(*(a1 + 40) + 328) setObject:v15 forKeyedSubscript:*(a1 + 56)];
    v87[0] = _NSConcreteStackBlock;
    v87[1] = 3221225472;
    v87[2] = sub_100080E14;
    v87[3] = &unk_1000D6510;
    v75 = v82;
    v88 = v75;
    [(__CFString *)v34 setStartHandler:v87];
    v76 = [*(a1 + 40) clientBundleID];
    v77 = [*(a1 + 40) identifier];
    v78 = [*(a1 + 40) monitoredAppBundleID];
    v79 = [*(a1 + 40) secondaryID];
    sub_100002740(0, v76, v77, v78, v79, *(a1 + 32), 0, 0, 0, [*(a1 + 32) isDiscretionary], 0, 0, 0, 0);
  }

  else
  {
    v44 = qword_1000EB210;
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      v48 = [*(a1 + 32) _loggableDescription];
      v49 = *(a1 + 32);
      v50 = *(*(a1 + 40) + 192);
      v51 = [v49 _URLToUse];
      *buf = 138544642;
      v105 = v48;
      v106 = 2112;
      v107 = v4;
      v108 = 1024;
      v109 = v7;
      v110 = 2112;
      v111 = v50;
      v112 = 2112;
      v113 = v49;
      v114 = 2112;
      v115 = v51;
      _os_log_error_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "%{public}@ tcp_connection_create() returned NULL (host %@, port %d, queue %@, taskInfo %@, URL %@)", buf, 0x3Au);
    }

    v45 = *(a1 + 40);
    v46 = *(a1 + 64);
    v47 = [NSURLError errorWithDomain:NSURLErrorDomain code:-1 userInfo:0];
    [v45 taskWithIdentifier:v46 didCompleteWithError:v47];
    v15 = v47;
  }
}

uint64_t sub_100080A28(void *a1)
{
  v1 = a1;
  v2 = [v1 lowercaseString];
  v3 = [v2 isEqualToString:@"http"];

  if (v3)
  {
    v4 = 80;
  }

  else
  {
    v5 = [v1 lowercaseString];
    v6 = [v5 isEqualToString:@"https"];

    if (v6)
    {
      v4 = 443;
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

void sub_100080AB8(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_100080ADC(uint64_t a1)
{
  [*(a1 + 32) setEstablishedConnection:0];
  v2 = qword_1000EB210;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) _loggableDescription];
    *buf = 138543362;
    v16 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ got DASActivity startHandler for tcp_connection", buf, 0xCu);
  }

  v4 = [*(*(a1 + 40) + 328) objectForKeyedSubscript:*(a1 + 48)];
  if (v4)
  {
    v5 = qword_1000EB210;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 32) _loggableDescription];
      *buf = 138543362;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ starting tcp_connection", buf, 0xCu);
    }

    tcp_connection_start();
    v7 = dispatch_time(0, 10000000000);
    v8 = *(*(a1 + 40) + 192);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100080E24;
    block[3] = &unk_1000D6448;
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v12 = v9;
    v13 = v10;
    v14 = *(a1 + 56);
    dispatch_after(v7, v8, block);
  }
}

void sub_100080D0C(uint64_t a1, int a2)
{
  v4 = qword_1000EB210;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) _loggableDescription];
    v6 = 138543618;
    v7 = v5;
    v8 = 1024;
    v9 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ received tcp_connection event %d", &v6, 0x12u);
  }

  if (a2 == 1)
  {
    [*(a1 + 32) setEstablishedConnection:1];
    [*(a1 + 40) startAVAssetDownloadSessionWithTaskIdentifier:*(a1 + 48)];
  }
}

void sub_100080E24(uint64_t a1)
{
  if (([*(a1 + 32) establishedConnection] & 1) == 0)
  {
    v2 = [NSURLError errorWithDomain:NSURLErrorDomain code:-1001 userInfo:0];
    [*(a1 + 40) cancelTCPConnectionForTask:*(a1 + 48) withError:?];
    [*(a1 + 40) retryTask:*(a1 + 32) originalError:v2];
  }
}

id sub_1000819CC(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3.receiver = *(a1 + 32);
  v3.super_class = NDAVBackgroundSession;
  return objc_msgSendSuper2(&v3, "requeueTask:", v1);
}

void sub_100081BB0(void *a1)
{
  v1 = a1[4];
  v2 = *(v1 + 192);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100081C48;
  block[3] = &unk_1000D6448;
  v4 = a1[5];
  v3 = a1[6];
  block[4] = v1;
  v7 = v3;
  v6 = v4;
  dispatch_async(v2, block);
}

void sub_100083348(uint64_t a1)
{
  v2 = [*(a1 + 32) bundleIdentifier];
  v3 = [*(a1 + 40) clientBundleID];
  v4 = [v2 isEqualToString:v3];

  if (v4)
  {
    v5 = qword_1000EB210;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 40) clientBundleID];
      v7 = [*(a1 + 40) identifier];
      *buf = 138412546;
      v24 = v6;
      v25 = 2112;
      v26 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Client exited transitional discretionary period.  Re-evaluating task priorities for session <%@>.<%@>", buf, 0x16u);
    }

    v8 = [*(*(a1 + 40) + 216) allKeys];
    v9 = [v8 copy];

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v11)
    {
      v12 = *v19;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v18 + 1) + 8 * i);
          v15 = [*(*(a1 + 40) + 216) objectForKeyedSubscript:{v14, v18}];
          if ([v15 isDiscretionary] && objc_msgSend(v15, "startedUserInitiated") && (objc_msgSend(v15, "establishedConnection") & 1) == 0)
          {
            v16 = [v15 _URLToUse];
            v17 = [NSURLError _web_errorWithDomain:@"_nsurlsessiondErrorDomain" code:9 URL:v16];

            [*(a1 + 40) cancelAVDownloadAndFailTaskWithIdentifier:objc_msgSend(v14 withError:{"unsignedIntegerValue"), v17}];
          }
        }

        v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v11);
    }
  }
}

void sub_1000836E0(uint64_t a1)
{
  v2 = [*(a1 + 32) bundleIdentifier];
  v3 = [*(a1 + 40) clientBundleID];
  v4 = [v2 isEqualToString:v3];

  if (v4)
  {
    v5 = *(a1 + 40);
    v6 = *(v5 + 224);
    *(v5 + 224) = 0;

    v7 = qword_1000EB210;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 40) clientBundleID];
      v9 = [*(a1 + 40) identifier];
      *buf = 138412546;
      v26 = v8;
      v27 = 2112;
      v28 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Cancelling AVAssetDownloads for session <%@>.<%@> since client was quit from app switcher", buf, 0x16u);
    }

    v10 = [*(*(a1 + 40) + 216) allKeys];
    v11 = [v10 copy];

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    obj = v11;
    v12 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v12)
    {
      v13 = *v21;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v21 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v20 + 1) + 8 * i);
          v16 = [*(*(a1 + 40) + 216) objectForKeyedSubscript:v15];
          v17 = [v16 _URLToUse];
          v18 = [NSURLError _web_errorWithDomain:@"_nsurlsessiondErrorDomain" code:1 URL:v17];

          [*(a1 + 40) cancelAVDownloadAndFailTaskWithIdentifier:objc_msgSend(v15 withError:{"unsignedIntegerValue"), v18}];
        }

        v12 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v12);
    }
  }
}

void sub_100083A6C(uint64_t a1)
{
  if ([*(*(a1 + 32) + 328) count])
  {
    v2 = qword_1000EB210;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [*(a1 + 40) bundleIdentifier];
      *buf = 138412290;
      v27 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Bumping priority of AVAssetDownloads for %@ since it entered the foreground", buf, 0xCu);
    }
  }

  v4 = +[NSMutableArray array];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = *(*(a1 + 32) + 328);
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v6)
  {
    v7 = *v21;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        v10 = [*(*(a1 + 32) + 312) objectForKeyedSubscript:v9];
        v11 = v10 == 0;

        if (v11)
        {
          [v4 addObject:v9];
        }

        else
        {
          [*(a1 + 32) updatePriorityForTaskID:v9];
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v6);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v12 = v4;
  v13 = [v12 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v13)
  {
    v14 = *v17;
    do
    {
      for (j = 0; j != v13; j = j + 1)
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(v12);
        }

        [*(a1 + 32) updatePriorityForTaskID:{*(*(&v16 + 1) + 8 * j), v16}];
      }

      v13 = [v12 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v13);
  }
}

void sub_100083DAC(uint64_t a1)
{
  if ([*(*(a1 + 32) + 328) count])
  {
    v2 = qword_1000EB210;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [*(a1 + 40) bundleIdentifier];
      *buf = 138412290;
      v27 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Lowering priority of AVAssetDownloads for %@ since it is no longer in the foreground", buf, 0xCu);
    }
  }

  v4 = +[NSMutableArray array];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = *(*(a1 + 32) + 328);
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v6)
  {
    v7 = *v21;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        v10 = [*(*(a1 + 32) + 312) objectForKeyedSubscript:v9];
        v11 = v10 == 0;

        if (v11)
        {
          [*(a1 + 32) updatePriorityForTaskID:v9];
        }

        else
        {
          [v4 addObject:v9];
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v6);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v12 = v4;
  v13 = [v12 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v13)
  {
    v14 = *v17;
    do
    {
      for (j = 0; j != v13; j = j + 1)
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(v12);
        }

        [*(a1 + 32) updatePriorityForTaskID:{*(*(&v16 + 1) + 8 * j), v16}];
      }

      v13 = [v12 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v13);
  }
}

void sub_100084B00(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v6 _destinationURLToUse];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 URLByDeletingLastPathComponent];
    v38 = 0;
    v10 = [v9 checkResourceIsReachableAndReturnError:&v38];
    v11 = v38;

    if ((v10 & 1) == 0)
    {
      v12 = qword_1000EB210;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [v6 _loggableDescription];
        *buf = 138543874;
        v42 = v13;
        v43 = 2112;
        v44 = v8;
        v45 = 2112;
        v46 = v11;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ not restoring task due to unreachable destination folder %@ (%@)", buf, 0x20u);
      }

      [v6 setState:3];
      v14 = [NSURLError _web_errorWithDomain:NSURLErrorDomain code:-3000 failingURL:0];
      [v6 setError:v14];

      v15 = [PendingCallback alloc];
      v16 = [v6 identifier];
      v17 = [v6 error];
      v40[0] = v17;
      v18 = +[NSNull null];
      v40[1] = v18;
      v40[2] = &__NSDictionary0__struct;
      v19 = [NSArray arrayWithObjects:v40 count:3];
      v20 = [(PendingCallback *)v15 initWithCallbackType:0 taskIdentifier:v16 args:v19];

      [*(*(a1 + 32) + 200) addPendingCallback:v20 wakeRequirement:0];
    }
  }

  if ([v6 initializedWithAVAsset] && objc_msgSend(v6, "state") <= 2)
  {
    v21 = [v6 AVAssetURL];
    v22 = [v6 assetOptionsPlist];
    v23 = [AVURLAsset assetForNSURLSessionWithURL:v21 propertyList:v22];

    [v6 setAVURLAsset:v23];
    [v6 setAVAssetDownloadToken:{objc_msgSend(v23, "downloadToken")}];
    if (!v23 || ([v23 URL], v24 = objc_claimAutoreleasedReturnValue(), v25 = v24 == 0, v24, v25))
    {
      v29 = qword_1000EB210;
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v36 = [v6 _loggableDescription];
        v37 = [v6 AVAssetDownloadToken];
        *buf = 138543618;
        v42 = v36;
        v43 = 2048;
        v44 = v37;
        _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%{public}@ failed to re-instantiate AVURLAsset with token %llu", buf, 0x16u);
      }

      [v6 setState:3];
      v30 = [NSURLError _web_errorWithDomain:NSURLErrorDomain code:-1 failingURL:0];
      [v6 setError:v30];

      v31 = [PendingCallback alloc];
      v32 = [v6 identifier];
      v33 = [v6 error];
      v39[0] = v33;
      v34 = +[NSNull null];
      v39[1] = v34;
      v39[2] = &__NSDictionary0__struct;
      v35 = [NSArray arrayWithObjects:v39 count:3];
      v26 = [(PendingCallback *)v31 initWithCallbackType:0 taskIdentifier:v32 args:v35];

      [*(*(a1 + 32) + 200) addPendingCallback:v26 wakeRequirement:0];
    }

    else
    {
      v26 = qword_1000EB210;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = [v6 _loggableDescription];
        v28 = [v6 AVAssetDownloadToken];
        *buf = 138543618;
        v42 = v27;
        v43 = 2048;
        v44 = v28;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%{public}@ restored asset with token %llu from archivedInfo", buf, 0x16u);
      }
    }
  }

  if ([v6 state] <= 2)
  {
    [*(a1 + 32) addOutstandingTaskWithIdentifier:{objc_msgSend(v5, "unsignedIntegerValue")}];
    [*(a1 + 40) addObject:v6];
  }

  [*(*(a1 + 32) + 216) setObject:v6 forKeyedSubscript:v5];
}

id sub_100085F3C(uint64_t a1)
{
  v2 = qword_1000EB210;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) clientBundleID];
    v4 = [*(a1 + 32) identifier];
    v9 = 138412546;
    v10 = v3;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Delayed wake timer fired for session <%@>.<%@>", &v9, 0x16u);
  }

  if ([*(*(a1 + 32) + 200) count] && (objc_msgSend(*(a1 + 32), "clientIsActive") & 1) == 0)
  {
    v5 = qword_1000EB210;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 32) clientBundleID];
      v7 = [*(a1 + 32) identifier];
      v9 = 138412546;
      v10 = v6;
      v11 = 2112;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Triggering delayed wake for session <%@>.<%@>", &v9, 0x16u);
    }

    [*(a1 + 32) wakeUpClient:1];
  }

  return [*(a1 + 32) cancelDelayedCompletionWakeTimer];
}

void sub_10008632C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v22 = v18;

  _Unwind_Resume(a1);
}

double sub_100088B20(double result)
{
  if (!atomic_load(&unk_1000EB0E0))
  {
    return sub_100088B8C(result);
  }

  return result;
}

double sub_100088B44(double result)
{
  if (!atomic_load(&unk_1000EB0E0))
  {
    return sub_100088B8C(result);
  }

  return result;
}

double sub_100088B68(double result)
{
  if (!atomic_load(&unk_1000EB0E0))
  {
    return sub_100088B8C(result);
  }

  return result;
}

double sub_100088B8C(double a1)
{
  dlopen("/AppleInternal/Library/Frameworks/TapToRadarKit.framework/TapToRadarKit", 0);
  atomic_store(1u, &unk_1000EB0E0);
  return a1;
}