uint64_t sub_100002104()
{
  _Block_release(*(v0 + 112));
  _Block_release(*(v0 + 120));

  return _swift_deallocObject(v0, 136, 7);
}

uint64_t sub_1000021A8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000021E0()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100002218()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100002260()
{

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_1000022C8()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100002300()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t start()
{
  v0 = objc_alloc_init(DaemonRunLoop);
  [(RunLoop *)v0 runUntilIdleExit];

  return 0;
}

BOOL sub_10000247C(uint64_t a1, void *a2)
{
  v4 = +[APLogConfig sharedDaemonConfig];
  if (!v4)
  {
    v4 = +[APLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = *(a1 + 32);
    v8 = v6;
    v9 = [v7 request];
    *buf = 138543618;
    v16 = v6;
    v17 = 2114;
    v18 = v9;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Starting handle approver local notification task. Request: %{public}@", buf, 0x16u);
  }

  v10 = [*(a1 + 32) request];
  v14 = 0;
  [ProductPagePresenter presentRequest:v10 withError:&v14];
  v11 = v14;

  if (a2)
  {
    v12 = v11;
    *a2 = v11;
  }

  return v11 == 0;
}

BOOL sub_1000028DC(uint64_t a1, void *a2)
{
  v4 = &APCustomError_ptr;
  v5 = +[APLogConfig sharedDaemonConfig];
  if (!v5)
  {
    v5 = +[APLogConfig sharedConfig];
  }

  v6 = [v5 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = *(a1 + 32);
    v9 = v7;
    v10 = [v8 payload];
    *buf = 138543618;
    v87 = v7;
    v88 = 2114;
    v89 = v10;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: Starting handle approver remote notification task. Payload: %{public}@", buf, 0x16u);
  }

  [APDefaults setIsApprover:1];
  [APDefaults setIsRequester:0];
  v11 = [*(a1 + 32) requestStatus];
  v12 = [*(a1 + 32) requestIdentifier];
  v13 = v12;
  if (v11 == -2 || !v12)
  {
    v22 = APError();
    goto LABEL_46;
  }

  if (v11 <= 1)
  {
    v14 = +[LocalNotificationHandler sharedHandler];
    v15 = [*(a1 + 32) requestIdentifier];
    [v14 dismissNotificationWithIdentifier:v15];

    if (_os_feature_enabled_impl())
    {
      v16 = *(a1 + 32);
      v84 = 0;
      v17 = [v16 _approvalRequestWithError:&v84];
      v18 = v84;
      v19 = +[ApproverStore sharedStore];
      [v19 storeApprovalRequest:v17];

      v20 = +[NSMutableArray array];
      v21 = v20;
      v68 = a2;
      if (v17)
      {
        [v20 addObject:v17];
      }

      else
      {
        v32 = +[APLogConfig sharedDaemonConfig];
        if (!v32)
        {
          v32 = +[APLogConfig sharedConfig];
        }

        v33 = [v32 OSLogObject];
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          v34 = objc_opt_class();
          *buf = 138543618;
          v87 = v34;
          v88 = 2112;
          v89 = v18;
          v35 = v34;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "%{public}@: Unable to create Request to translate to Biome - Error: %@", buf, 0x16u);
        }
      }

      v36 = +[ApproverStore sharedStore];
      v37 = [v17 uniqueIdentifier];
      v38 = [v36 approvalRequestsMatchingUniqueIdentifier:v37];

      v39 = +[APLogConfig sharedDaemonConfig];
      if (!v39)
      {
        v39 = +[APLogConfig sharedConfig];
      }

      v66 = v18;
      v67 = v13;
      v40 = [v39 OSLogObject];
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        v41 = objc_opt_class();
        v42 = v21;
        v43 = v41;
        v44 = [v38 count];
        *buf = 138543618;
        v87 = v41;
        v88 = 2048;
        v89 = v44;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "%{public}@: Matching requests found: %lu", buf, 0x16u);

        v21 = v42;
      }

      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      obj = v38;
      v72 = [obj countByEnumeratingWithState:&v80 objects:v85 count:16];
      if (v72)
      {
        v45 = *v81;
        v69 = v17;
        v70 = v21;
        do
        {
          for (i = 0; i != v72; i = i + 1)
          {
            if (*v81 != v45)
            {
              objc_enumerationMutation(obj);
            }

            v47 = *(*(&v80 + 1) + 8 * i);
            v48 = [v4[256] sharedDaemonConfig];
            if (!v48)
            {
              v48 = [v4[256] sharedConfig];
            }

            v49 = [v48 OSLogObject];
            if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
            {
              v50 = objc_opt_class();
              v51 = a1;
              v52 = v50;
              [v47 uniqueIdentifier];
              v53 = v45;
              v55 = v54 = v4;
              *buf = 138543618;
              v87 = v50;
              v88 = 2114;
              v89 = v55;
              _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "%{public}@: Updating request: %{public}@", buf, 0x16u);

              v4 = v54;
              v45 = v53;

              a1 = v51;
              v17 = v69;
              v21 = v70;
            }

            v56 = [v17 status];
            v57 = [v17 approverDSID];
            [v47 updateStatus:v56 withApproverDSID:v57];

            v58 = +[ApproverStore sharedStore];
            [v58 storeApprovalRequest:v47];

            [v21 addObject:v47];
          }

          v72 = [obj countByEnumeratingWithState:&v80 objects:v85 count:16];
        }

        while (v72);
      }

      v59 = objc_alloc_init(NSOperationQueue);
      v78[0] = _NSConcreteStackBlock;
      v78[1] = 3221225472;
      v78[2] = sub_100003160;
      v78[3] = &unk_100054C30;
      v79 = v21;
      v60 = v21;
      [v59 addOperationWithBlock:v78];

      v13 = v67;
      a2 = v68;
      v22 = v66;
      goto LABEL_46;
    }

LABEL_13:
    v22 = 0;
    goto LABEL_46;
  }

  if (v11 != -1)
  {
    goto LABEL_13;
  }

  v23 = _os_feature_enabled_impl();
  v24 = *(a1 + 32);
  if (v23)
  {
    v77 = 0;
    v25 = [v24 _approvalRequestWithError:&v77];
    v22 = v77;
    if (v25)
    {
      v26 = +[ApproverStore sharedStore];
      [v26 storeApprovalRequest:v25];

      [BiomeHelper donateToBiomeWithRequest:v25];
      v27 = [*(a1 + 32) bag];
      v28 = [v27 BOOLForKey:@"enable-ks-via-messages"];

      v74[0] = _NSConcreteStackBlock;
      v74[1] = 3221225472;
      v74[2] = sub_1000031BC;
      v74[3] = &unk_100054C58;
      v29 = v25;
      v30 = *(a1 + 32);
      v75 = v29;
      v76 = v30;
      [v28 valueWithCompletion:v74];
      v31 = v75;
    }

    else
    {
      v28 = +[APLogConfig sharedDaemonConfig];
      if (!v28)
      {
        v28 = +[APLogConfig sharedConfig];
      }

      v31 = [v28 OSLogObject];
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v62 = objc_opt_class();
        *buf = 138543618;
        v87 = v62;
        v88 = 2112;
        v89 = v22;
        v63 = v62;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "%{public}@: Create Request for Cache failed - Error: %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v73 = 0;
    v61 = [v24 _requestWithError:&v73];
    v22 = v73;
    if (v61)
    {
      [*(a1 + 32) _presentRequest:v61];
    }
  }

LABEL_46:
  if (a2)
  {
    v64 = v22;
    *a2 = v22;
  }

  return v22 == 0;
}

void sub_100003160(uint64_t a1)
{
  v1 = [NSArray arrayWithArray:*(a1 + 32)];
  [BiomeHelper donateToBiomeWithRequests:v1];
}

id sub_1000031BC(uint64_t a1, void *a2)
{
  v3 = [a2 BOOLValue];
  result = [*(a1 + 32) canSendViaMessages];
  if (result)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 0;
  }

  if (!v5)
  {
    v7 = *(a1 + 32);
    v6 = *(a1 + 40);

    return [v6 _presentRequest:v7];
  }

  return result;
}

void sub_1000048FC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5 && ([v5 ams_DSID], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    v8 = +[APLogConfig sharedDaemonConfig];
    if (!v8)
    {
      v8 = +[APLogConfig sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v21 = objc_opt_class();
      v10 = v21;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: Checking existing Screen Time Exceptions...", buf, 0xCu);
    }

    v11 = [v5 ams_DSID];
    v12 = [*(a1 + 32) adamID];
    v13 = [v12 unsignedLongLongValue];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100004BA0;
    v17[3] = &unk_100054CF8;
    v17[4] = *(a1 + 32);
    v18 = v5;
    v19 = *(a1 + 40);
    [STExceptionApp fetchExceptionsForRequesterDSID:v11 adamID:v13 completionHandler:v17];
  }

  else
  {
    v14 = +[APLogConfig sharedDaemonConfig];
    if (!v14)
    {
      v14 = +[APLogConfig sharedConfig];
    }

    v15 = [v14 OSLogObject];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v21 = objc_opt_class();
      v22 = 2112;
      v23 = v6;
      v16 = v21;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%{public}@: Error fetching account before asking for exception - %@", buf, 0x16u);
    }

    [*(a1 + 40) finishWithError:v6];
  }
}

void sub_100004BA0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = &APCustomError_ptr;
  if (v6)
  {
    v8 = +[APLogConfig sharedDaemonConfig];
    if (!v8)
    {
      v8 = +[APLogConfig sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v74 = objc_opt_class();
      v75 = 2112;
      v76 = v6;
      v10 = v74;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}@: Error checking for existing exceptions: Will continue sending exception if possible - %@", buf, 0x16u);
    }
  }

  v11 = +[APLogConfig sharedDaemonConfig];
  if (!v11)
  {
    v11 = +[APLogConfig sharedConfig];
  }

  v59 = v6;
  v12 = [v11 OSLogObject];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = objc_opt_class();
    v14 = v13;
    v15 = [v5 count];
    *buf = 138543618;
    v74 = v13;
    v75 = 2048;
    v76 = v15;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: Found %lu existing Screen Time Exceptions", buf, 0x16u);
  }

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v16 = v5;
  v62 = [v16 countByEnumeratingWithState:&v67 objects:v81 count:16];
  if (v62)
  {
    v61 = *v68;
    obj = v16;
    while (2)
    {
      for (i = 0; i != v62; i = i + 1)
      {
        if (*v68 != v61)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v67 + 1) + 8 * i);
        v19 = [v7[256] sharedDaemonConfig];
        if (!v19)
        {
          v19 = [v7[256] sharedConfig];
        }

        v20 = v7;
        v21 = [v19 OSLogObject];
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = a1;
          v23 = objc_opt_class();
          v24 = v23;
          v25 = [v18 ratingValue];
          v26 = [*(v22 + 32) ageRatingValue];
          v27 = [v26 unsignedLongValue];
          *buf = 138543874;
          v74 = v23;
          a1 = v22;
          v75 = 2048;
          v76 = v25;
          v77 = 2048;
          v78 = v27;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%{public}@: Checking STException.ratingValue: %llu vs requested: %lu", buf, 0x20u);
        }

        v28 = [*(a1 + 32) bundleIdentifier];
        v29 = [v18 bundleIdentifier];
        if ([v28 isEqualToString:v29])
        {
          v30 = [*(a1 + 32) ageRatingValue];
          v31 = [v30 unsignedLongValue];
          v32 = [v18 ratingValue];

          if (v31 == v32)
          {
            v41 = v20;
            v42 = [v20[256] sharedDaemonConfig];
            v43 = v42;
            if (!v42)
            {
              v43 = [v20[256] sharedConfig];
            }

            v44 = [v43 OSLogObject];
            v35 = v59;
            if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
            {
              v45 = objc_opt_class();
              v46 = *(a1 + 40);
              v63 = v45;
              v47 = [v46 ams_DSID];
              v48 = [*(a1 + 32) adamID];
              v49 = [v48 longLongValue];
              v50 = [*(a1 + 32) ageRatingValue];
              v51 = [v50 longValue];
              *buf = 138544130;
              v74 = v45;
              v75 = 2112;
              v76 = v47;
              v77 = 2048;
              v78 = v49;
              v79 = 2048;
              v80 = v51;
              _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "%{public}@: Exception already exists for DSID: %@, adamID: %lld, ageRatingValue: %ld", buf, 0x2Au);

              v41 = v20;
              v35 = v59;
            }

            v52 = [v41[256] sharedDaemonConfig];
            v16 = obj;
            if (!v52)
            {
              v52 = [v41[256] sharedConfig];
            }

            v53 = [v52 OSLogObject];
            if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
            {
              v54 = objc_opt_class();
              *buf = 138543362;
              v74 = v54;
              v55 = v54;
              _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "%{public}@: Exception Request will not be sent", buf, 0xCu);
            }

            v56 = APErrorDomain;
            v71 = NSLocalizedFailureReasonErrorKey;
            v72 = @"Exception already exists in Screen Time";
            v57 = [NSDictionary dictionaryWithObjects:&v72 forKeys:&v71 count:1];
            v58 = [NSError errorWithDomain:v56 code:8 userInfo:v57];

            [*(a1 + 48) finishWithError:v58];
            goto LABEL_40;
          }
        }

        else
        {
        }

        v7 = v20;
      }

      v16 = obj;
      v62 = [obj countByEnumeratingWithState:&v67 objects:v81 count:16];
      if (v62)
      {
        continue;
      }

      break;
    }
  }

  v33 = [v7[256] sharedDaemonConfig];
  if (!v33)
  {
    v33 = [v7[256] sharedConfig];
  }

  v34 = [v33 OSLogObject];
  v35 = v59;
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    v36 = objc_opt_class();
    *buf = 138543362;
    v74 = v36;
    v37 = v36;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "%{public}@: Loading bag to fetch Fallback URL", buf, 0xCu);
  }

  v38 = +[AMSBag sharedBag];
  v39 = [v38 exceptionRequestFallbackURL];
  v64[0] = _NSConcreteStackBlock;
  v64[1] = 3221225472;
  v64[2] = sub_1000052F8;
  v64[3] = &unk_100054CD0;
  v40 = *(a1 + 40);
  v64[4] = *(a1 + 32);
  v65 = v40;
  v66 = *(a1 + 48);
  [v39 valueWithCompletion:v64];

LABEL_40:
}

void sub_1000052F8(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v27 = a2;
  v6 = a4;
  if (v6)
  {
    v7 = +[APLogConfig sharedDaemonConfig];
    if (!v7)
    {
      v7 = +[APLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v34 = objc_opt_class();
      v35 = 2112;
      v36 = v6;
      v9 = v34;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}@: Error loading Fallback URL - %@", buf, 0x16u);
    }
  }

  v10 = +[APLogConfig sharedDaemonConfig];
  if (!v10)
  {
    v10 = +[APLogConfig sharedConfig];
  }

  v11 = [v10 OSLogObject];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = objc_opt_class();
    *buf = 138543362;
    v34 = v12;
    v13 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: Calling into AskTo Wrapper...", buf, 0xCu);
  }

  v26 = +[_TtC19AskPermissionDaemon12AskToWrapper shared];
  v22 = [*(a1 + 32) UUID];
  v14 = [*(a1 + 32) type];
  v15 = [*(a1 + 32) title];
  v25 = [*(a1 + 32) message];
  v24 = [*(a1 + 32) bundleIdentifier];
  v23 = [*(a1 + 32) preApprove];
  v16 = [*(a1 + 32) postApprove];
  v17 = [*(a1 + 32) preDecline];
  v18 = [*(a1 + 32) postDecline];
  v19 = [*(a1 + 32) responseBundleIdentifier];
  v20 = [*(a1 + 32) metadata];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_1000056C4;
  v30[3] = &unk_100054C80;
  v21 = *(a1 + 40);
  v30[4] = *(a1 + 32);
  v31 = v21;
  v32 = *(a1 + 48);
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100005B48;
  v28[3] = &unk_100054CA8;
  v28[4] = *(a1 + 32);
  v29 = *(a1 + 48);
  [v26 askWithUuid:v22 type:v14 title:v15 message:v25 bundleIdentifier:v24 preApprove:v23 postApprove:v16 preDecline:v17 postDecline:v18 responseBundleIdentifier:v19 metadata:v20 fallbackURL:v27 delegateCallback:v30 completionHandler:v28];
}

void sub_1000056C4(id *a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = +[APLogConfig sharedDaemonConfig];
    if (!v6)
    {
      v6 = +[APLogConfig sharedConfig];
    }

    v33 = v5;
    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v37 = objc_opt_class();
      v8 = v37;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Exception Request sent to Approvers - Storing request locally", buf, 0xCu);
    }

    v30 = [ExceptionRequest alloc];
    v32 = [a1[4] UUID];
    v25 = [v32 UUIDString];
    v27 = [a1[4] bundleIdentifier];
    v9 = [a1[4] adamID];
    v29 = [a1[4] distributorID];
    v28 = [a1[4] ageRatingValue];
    v26 = [a1[5] ams_DSID];
    v24 = [a1[4] title];
    v23 = [a1[4] message];
    v22 = [a1[4] preApprove];
    v10 = [a1[4] postApprove];
    v11 = [a1[4] preDecline];
    v12 = [a1[4] postDecline];
    v13 = [a1[4] metadata];
    v31 = [(ExceptionRequest *)v30 initWithUniqueIdentifier:v25 bundleIdentifier:v27 adamID:v9 distributorID:v29 ageRatingValue:v28 requesterDSID:v26 approvalStatus:0 title:v24 message:v23 preApproveTitle:v22 postApproveTitle:v10 preDeclineTitle:v11 postDeclineTitle:v12 metadata:v13];

    v14 = +[ExceptionRequestStore sharedStore];
    [v14 storeRequest:v31];

    v5 = v33;
    [a1[6] finishWithSuccess:1 error:v33];
  }

  else
  {
    v15 = +[APLogConfig sharedDaemonConfig];
    v16 = v15;
    if (v5)
    {
      if (!v15)
      {
        v16 = +[APLogConfig sharedConfig];
      }

      v17 = [v16 OSLogObject];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v37 = objc_opt_class();
        v38 = 2112;
        v39 = v5;
        v18 = v37;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%{public}@: Error asking for exception - %@", buf, 0x16u);
      }
    }

    else
    {
      if (!v15)
      {
        v16 = +[APLogConfig sharedConfig];
      }

      v19 = [v16 OSLogObject];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v37 = objc_opt_class();
        v20 = v37;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%{public}@: Exception Request Cancelled", buf, 0xCu);
      }

      v21 = APErrorDomain;
      v34 = NSLocalizedFailureReasonErrorKey;
      v35 = @"User Cancelled";
      v16 = [NSDictionary dictionaryWithObjects:&v35 forKeys:&v34 count:1];
      v5 = [NSError errorWithDomain:v21 code:6 userInfo:v16];
    }

    [a1[6] finishWithSuccess:0 error:v5];
  }
}

void sub_100005B48(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = +[APLogConfig sharedDaemonConfig];
    if (!v6)
    {
      v6 = +[APLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = 138543618;
      v10 = objc_opt_class();
      v11 = 2112;
      v12 = v5;
      v8 = v10;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}@: Error asking for exception - %@", &v9, 0x16u);
    }

    [*(a1 + 40) finishWithSuccess:a2 error:v5];
  }
}

void sub_1000060C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000060DC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100006224(id a1)
{
  qword_100063C98 = [[ApproverStore alloc] initWithInMemoryStore:1];

  _objc_release_x1();
}

void sub_1000062AC(id a1)
{
  qword_100063CA8 = objc_alloc_init(ApproverStore);

  _objc_release_x1();
}

void sub_10000643C(uint64_t a1)
{
  [*(*(a1 + 32) + 8) removeAllObjects];
  v2 = [*(a1 + 32) requestStore];
  [v2 clearCache];
}

id sub_1000066AC(uint64_t a1)
{
  [*(*(a1 + 32) + 8) setObject:0 forKeyedSubscript:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 _saveChanges];
}

id sub_100007410(uint64_t a1)
{
  v2 = [ApproverStoreItem alloc];
  v3 = *(a1 + 40);
  v4 = +[NSDate date];
  v5 = [(ApproverStoreItem *)v2 initWithRequest:v3 date:v4];
  v6 = *(*(a1 + 32) + 8);
  v7 = [*(a1 + 40) uniqueIdentifier];
  [v6 setObject:v5 forKeyedSubscript:v7];

  v8 = *(a1 + 32);

  return [v8 _saveChanges];
}

void sub_10000A5C8(id a1)
{
  qword_100063CB8 = dispatch_queue_create("com.apple.AskPermission.BiometricsHandler", 0);

  _objc_release_x1();
}

id sub_10000AC88(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 40) setState:a2];
  if (a2 == 2)
  {
    v6 = *(a1 + 32);
    v5 = *(a1 + 40);

    return [v5 _storeToken:v6];
  }

  return result;
}

uint64_t sub_10000B010(uint64_t a1, uint64_t a2)
{
  v4 = +[APLogConfig sharedDaemonConfig];
  v5 = v4;
  if (a2)
  {
    if (a2 == 1)
    {
      if (!v4)
      {
        v5 = +[APLogConfig sharedConfig];
      }

      v6 = [v5 OSLogObject];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138543362;
        v13 = objc_opt_class();
        v7 = v13;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: Biometrics dialog approved", &v12, 0xCu);
      }

      v8 = 2;
    }

    else
    {
      if (!v4)
      {
        v5 = +[APLogConfig sharedConfig];
      }

      v6 = [v5 OSLogObject];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138543362;
        v13 = objc_opt_class();
        v10 = v13;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: Biometrics dialog cancelled", &v12, 0xCu);
      }

      v8 = 0;
    }
  }

  else
  {
    if (!v4)
    {
      v5 = +[APLogConfig sharedConfig];
    }

    v6 = [v5 OSLogObject];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543362;
      v13 = objc_opt_class();
      v9 = v13;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: Biometrics dialog declined", &v12, 0xCu);
    }

    v8 = 1;
  }

  return (*(*(a1 + 32) + 16))(*(a1 + 32), v8);
}

void sub_10000B624(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v5 = 0;
  v3 = [BiometricsStore retreiveTokenWithAction:v1 error:&v5];
  v4 = v5;
  (*(v2 + 16))(v2, v3, v4);
}

void sub_10000B894(id a1)
{
  qword_100063CC8 = objc_alloc_init(ConnectionReceiver);

  _objc_release_x1();
}

void sub_10000BC78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000BCB0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = +[APLogConfig sharedDaemonConfig];
  if (!v2)
  {
    v2 = +[APLogConfig sharedConfig];
  }

  v3 = [v2 OSLogObject];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 138543362;
    v6 = objc_opt_class();
    v4 = v6;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%{public}@: Connection invalidated", &v5, 0xCu);
  }
}

void sub_10000BDAC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = +[APLogConfig sharedDaemonConfig];
  if (!v2)
  {
    v2 = +[APLogConfig sharedConfig];
  }

  v3 = [v2 OSLogObject];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 138543362;
    v6 = objc_opt_class();
    v4 = v6;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%{public}@: Connection interrupted", &v5, 0xCu);
  }
}

void sub_10000C07C(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = +[APLogConfig sharedDaemonConfig];
  v7 = v6;
  if (a2)
  {
    if (!v6)
    {
      v7 = +[APLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138543362;
      v17 = objc_opt_class();
      v9 = v17;
      v10 = "%{public}@: Posted request successfully";
      v11 = v8;
      v12 = OS_LOG_TYPE_DEFAULT;
      v13 = 12;
LABEL_10:
      _os_log_impl(&_mh_execute_header, v11, v12, v10, &v16, v13);
    }
  }

  else
  {
    if (!v6)
    {
      v7 = +[APLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v16 = 138543618;
      v17 = objc_opt_class();
      v18 = 2114;
      v19 = v5;
      v9 = v17;
      v10 = "%{public}@: Error posting request. Error: %{public}@";
      v11 = v8;
      v12 = OS_LOG_TYPE_ERROR;
      v13 = 22;
      goto LABEL_10;
    }
  }

  v14 = *(a1 + 40);
  v15 = [v5 ams_sanitizedForSecureCoding];
  (*(v14 + 16))(v14, v15);
}

void sub_10000C428(uint64_t a1, int a2, void *a3)
{
  v4 = a3;
  v5 = +[APLogConfig sharedDaemonConfig];
  v6 = v5;
  if (a2)
  {
    if (!v5)
    {
      v6 = +[APLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138543362;
      v14 = objc_opt_class();
      v8 = v14;
      v9 = "%{public}@: Reset approver account succesfully";
      v10 = v7;
      v11 = OS_LOG_TYPE_DEFAULT;
      v12 = 12;
LABEL_10:
      _os_log_impl(&_mh_execute_header, v10, v11, v9, &v13, v12);
    }
  }

  else
  {
    if (!v5)
    {
      v6 = +[APLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v13 = 138543618;
      v14 = objc_opt_class();
      v15 = 2114;
      v16 = v4;
      v8 = v14;
      v9 = "%{public}@: Error resetting approver account. Error: %{public}@";
      v10 = v7;
      v11 = OS_LOG_TYPE_ERROR;
      v12 = 22;
      goto LABEL_10;
    }
  }
}

void sub_10000C5B4(uint64_t a1, int a2, void *a3)
{
  v4 = a3;
  v5 = +[APLogConfig sharedDaemonConfig];
  v6 = v5;
  if (a2)
  {
    if (!v5)
    {
      v6 = +[APLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138543362;
      v14 = objc_opt_class();
      v8 = v14;
      v9 = "%{public}@: Reset requester account successfully";
      v10 = v7;
      v11 = OS_LOG_TYPE_DEFAULT;
      v12 = 12;
LABEL_10:
      _os_log_impl(&_mh_execute_header, v10, v11, v9, &v13, v12);
    }
  }

  else
  {
    if (!v5)
    {
      v6 = +[APLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v13 = 138543618;
      v14 = objc_opt_class();
      v15 = 2114;
      v16 = v4;
      v8 = v14;
      v9 = "%{public}@: Error resetting requester account. Error: %{public}@";
      v10 = v7;
      v11 = OS_LOG_TYPE_ERROR;
      v12 = 22;
      goto LABEL_10;
    }
  }
}

void sub_10000CB90(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  if (v12)
  {
    v6 = [v12 type];
    v7 = off_1000547B0;
    if (v6)
    {
      if (v6 == 1)
      {
        v7 = &off_1000547C8;
      }

      else if (!+[APDefaults isApprover])
      {
        v7 = &off_1000547C8;
      }
    }
  }

  else if (+[APDefaults isApprover])
  {
    v7 = off_1000547B0;
  }

  else
  {
    v7 = &off_1000547C8;
  }

  v8 = [(__objc2_class *)*v7 sharedStore];
  v9 = [v8 getCachedApprovalRequests];

  v10 = [v9 sortedArrayUsingComparator:&stru_100054FB8];
  v11 = [v10 ams_mapWithTransformIgnoresNil:&stru_100054FF8];

  (*(*(a1 + 32) + 16))();
}

int64_t sub_10000CCD0(id a1, ApprovalRequest *a2, ApprovalRequest *a3)
{
  v4 = a3;
  v5 = [(ApprovalRequest *)a2 createdDate];
  v6 = [(ApprovalRequest *)v4 createdDate];

  v7 = [v5 compare:v6];
  return v7;
}

void sub_10000CF00(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  if (v12)
  {
    v6 = [v12 type];
    v7 = off_1000547B0;
    if (v6)
    {
      if (v6 == 1)
      {
        v7 = &off_1000547C8;
      }

      else if (!+[APDefaults isApprover])
      {
        v7 = &off_1000547C8;
      }
    }
  }

  else if (+[APDefaults isApprover])
  {
    v7 = off_1000547B0;
  }

  else
  {
    v7 = &off_1000547C8;
  }

  v8 = [(__objc2_class *)*v7 sharedStore];
  v9 = [v8 requestWithItemIdentifier:*(a1 + 32)];

  v10 = *(a1 + 40);
  if (v10)
  {
    v11 = [v9 compile];
    (*(v10 + 16))(v10, v11, v5);
  }
}

void sub_10000D1D8(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = +[APLogConfig sharedDaemonConfig];
  v7 = v6;
  if (a2)
  {
    if (!v6)
    {
      v7 = +[APLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138543362;
      v17 = objc_opt_class();
      v9 = v17;
      v10 = "%{public}@: Local approve request success";
      v11 = v8;
      v12 = OS_LOG_TYPE_DEFAULT;
      v13 = 12;
LABEL_10:
      _os_log_impl(&_mh_execute_header, v11, v12, v10, &v16, v13);
    }
  }

  else
  {
    if (!v6)
    {
      v7 = +[APLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v16 = 138543618;
      v17 = objc_opt_class();
      v18 = 2114;
      v19 = v5;
      v9 = v17;
      v10 = "%{public}@: Local approve request error. Error: %{public}@";
      v11 = v8;
      v12 = OS_LOG_TYPE_ERROR;
      v13 = 22;
      goto LABEL_10;
    }
  }

  v14 = *(a1 + 40);
  v15 = [v5 ams_sanitizedForSecureCoding];
  (*(v14 + 16))(v14, v15);
}

void sub_10000D740(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000D76C(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (a2)
  {
    v7 = objc_loadWeakRetained((a1 + 56));
    v8 = [v7 request];

    if (v8)
    {
      v9 = objc_loadWeakRetained((a1 + 56));
      v10 = [v9 request];
      v22 = 0;
      [ProductPagePresenter presentRequest:v10 withError:&v22];
      v11 = v22;

      if (!v11)
      {
LABEL_16:

        goto LABEL_17;
      }

      v12 = +[APLogConfig sharedDaemonConfig];
      if (!v12)
      {
        v12 = +[APLogConfig sharedConfig];
      }

      v13 = [v12 OSLogObject];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = objc_opt_class();
        *buf = 138543618;
        v26 = v14;
        v27 = 2114;
        v28 = v11;
        v15 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%{public}@: Error presenting approval sheet. Error: %{public}@", buf, 0x16u);
      }

LABEL_15:
      v20 = *(a1 + 48);
      v21 = [v11 ams_sanitizedForSecureCoding];
      (*(v20 + 16))(v20, v21);

      goto LABEL_16;
    }
  }

  if (v5)
  {
    v16 = +[APLogConfig sharedDaemonConfig];
    if (!v16)
    {
      v16 = +[APLogConfig sharedConfig];
    }

    v17 = [v16 OSLogObject];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v26 = objc_opt_class();
      v27 = 2114;
      v28 = v5;
      v18 = v26;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%{public}@: Error fetching missing request. Error: %{public}@", buf, 0x16u);
    }

    v19 = *(a1 + 40);
    v23 = @"requestIdentifier";
    v24 = v19;
    v12 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    v11 = APCustomError();
    goto LABEL_15;
  }

LABEL_17:
}

void sub_10000DC60(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = +[APLogConfig sharedDaemonConfig];
  v7 = v6;
  if (a2)
  {
    if (!v6)
    {
      v7 = +[APLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138543362;
      v17 = objc_opt_class();
      v9 = v17;
      v10 = "%{public}@: Updated request successfully";
      v11 = v8;
      v12 = OS_LOG_TYPE_DEFAULT;
      v13 = 12;
LABEL_10:
      _os_log_impl(&_mh_execute_header, v11, v12, v10, &v16, v13);
    }
  }

  else
  {
    if (!v6)
    {
      v7 = +[APLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v16 = 138543618;
      v17 = objc_opt_class();
      v18 = 2114;
      v19 = v5;
      v9 = v17;
      v10 = "%{public}@: Error updating request. Error: %{public}@";
      v11 = v8;
      v12 = OS_LOG_TYPE_ERROR;
      v13 = 22;
      goto LABEL_10;
    }
  }

  v14 = *(a1 + 40);
  v15 = [v5 ams_sanitizedForSecureCoding];
  (*(v14 + 16))(v14, v15);
}

uint64_t sub_10000E0EC(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10000E290(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[APLogConfig sharedDaemonConfig];
  v8 = v7;
  if (v6)
  {
    if (!v7)
    {
      v8 = +[APLogConfig sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v17 = 138543618;
      v18 = objc_opt_class();
      v19 = 2114;
      v20 = v6;
      v10 = v18;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}@: Error fetching requests. Error: %{public}@", &v17, 0x16u);
    }

    v11 = *(a1 + 40);
    if (v11)
    {
      (*(v11 + 16))(v11, 0);
    }
  }

  else
  {
    if (!v7)
    {
      v8 = +[APLogConfig sharedConfig];
    }

    v12 = [v8 OSLogObject];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = objc_opt_class();
      v14 = v13;
      v17 = 138543618;
      v18 = v13;
      v19 = 2048;
      v20 = [v5 count];
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: %lu exceptions loaded", &v17, 0x16u);
    }

    v15 = [v5 ams_mapWithTransformIgnoresNil:&stru_1000550D8];
    v16 = *(a1 + 40);
    if (v16)
    {
      (*(v16 + 16))(v16, v15);
    }
  }
}

void sub_10000E714(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[APLogConfig sharedDaemonConfig];
  v8 = v7;
  if (v6)
  {
    if (!v7)
    {
      v8 = +[APLogConfig sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v17 = 138543618;
      v18 = objc_opt_class();
      v19 = 2114;
      v20 = v6;
      v10 = v18;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}@: Error fetching requests. Error: %{public}@", &v17, 0x16u);
    }

    v11 = *(a1 + 40);
    if (v11)
    {
      (*(v11 + 16))(v11, 0);
    }
  }

  else
  {
    if (!v7)
    {
      v8 = +[APLogConfig sharedConfig];
    }

    v12 = [v8 OSLogObject];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = objc_opt_class();
      v14 = v13;
      v17 = 138543618;
      v18 = v13;
      v19 = 2048;
      v20 = [v5 count];
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: %lu exceptions loaded", &v17, 0x16u);
    }

    v15 = [v5 ams_mapWithTransformIgnoresNil:&stru_100055120];
    v16 = *(a1 + 40);
    if (v16)
    {
      (*(v16 + 16))(v16, v15);
    }
  }
}

void sub_10000EAE0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[APLogConfig sharedDaemonConfig];
  v8 = v7;
  if (v6)
  {
    if (!v7)
    {
      v8 = +[APLogConfig sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v17 = 138543618;
      v18 = objc_opt_class();
      v19 = 2114;
      v20 = v6;
      v10 = v18;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}@: Error fetching requests. Error: %{public}@", &v17, 0x16u);
    }

    v11 = *(a1 + 40);
    if (v11)
    {
      (*(v11 + 16))(v11, 0);
    }
  }

  else
  {
    if (!v7)
    {
      v8 = +[APLogConfig sharedConfig];
    }

    v12 = [v8 OSLogObject];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = objc_opt_class();
      v14 = v13;
      v17 = 138543618;
      v18 = v13;
      v19 = 2048;
      v20 = [v5 count];
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: %lu exceptions loaded", &v17, 0x16u);
    }

    v15 = [v5 ams_mapWithTransformIgnoresNil:&stru_100055140];
    v16 = *(a1 + 40);
    if (v16)
    {
      (*(v16 + 16))(v16, v15);
    }
  }
}

void sub_10000F054(uint64_t a1, int a2)
{
  if (a2)
  {
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10000F2DC;
    v19[3] = &unk_100055168;
    v3 = *(a1 + 32);
    v19[4] = *(a1 + 40);
    [_TtC19AskPermissionDaemon36ExceptionRequestLocalApprovalManager updateAskToBubblesWithUniqueIdentifier:v3 completionHandler:v19];
    v4 = [STExceptionApp alloc];
    v5 = [*(a1 + 48) requesterDSID];
    v6 = [*(a1 + 48) bundleIdentifier];
    v7 = [*(a1 + 48) adamID];
    v8 = [v7 unsignedLongLongValue];
    v9 = [*(a1 + 48) distributorID];
    v10 = [*(a1 + 48) ageRatingValue];
    v11 = [v4 initWithRequesterDSID:v5 bundleIdentifier:v6 adamID:v8 distributorID:v9 ratingValue:{objc_msgSend(v10, "unsignedLongLongValue")}];

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10000F45C;
    v15[3] = &unk_100055190;
    v12 = *(a1 + 48);
    v15[4] = *(a1 + 40);
    v16 = v12;
    v17 = *(a1 + 56);
    v18 = 1;
    [v11 addExceptionWithCompletionHandler:v15];
  }

  else
  {
    if (!*(a1 + 56))
    {
      return;
    }

    v13 = APErrorDomain;
    v20 = NSLocalizedFailureReasonErrorKey;
    v21 = @"User cancelled Screen Time PIN";
    v14 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v11 = [NSError errorWithDomain:v13 code:5 userInfo:v14];

    (*(*(a1 + 56) + 16))();
  }
}

void sub_10000F2DC(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[APLogConfig sharedDaemonConfig];
  v4 = v3;
  if (v2)
  {
    if (!v3)
    {
      v4 = +[APLogConfig sharedConfig];
    }

    v5 = [v4 OSLogObject];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v11 = 138543618;
      v12 = objc_opt_class();
      v13 = 2114;
      v14 = v2;
      v6 = v12;
      v7 = "%{public}@: Error updating message bubbles. Error: %{public}@";
      v8 = v5;
      v9 = OS_LOG_TYPE_ERROR;
      v10 = 22;
LABEL_10:
      _os_log_impl(&_mh_execute_header, v8, v9, v7, &v11, v10);
    }
  }

  else
  {
    if (!v3)
    {
      v4 = +[APLogConfig sharedConfig];
    }

    v5 = [v4 OSLogObject];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543362;
      v12 = objc_opt_class();
      v6 = v12;
      v7 = "%{public}@: Successfully updated message bubbles!";
      v8 = v5;
      v9 = OS_LOG_TYPE_DEFAULT;
      v10 = 12;
      goto LABEL_10;
    }
  }
}

void sub_10000F45C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[APLogConfig sharedDaemonConfig];
  v5 = v4;
  if (v3)
  {
    if (!v4)
    {
      v5 = +[APLogConfig sharedConfig];
    }

    v6 = [v5 OSLogObject];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v33 = objc_opt_class();
      v34 = 2114;
      v35 = v3;
      v7 = v33;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}@: Error creating ScreenTime Exception. Error: %{public}@", buf, 0x16u);
    }
  }

  else
  {
    if (!v4)
    {
      v5 = +[APLogConfig sharedConfig];
    }

    v8 = [v5 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v33 = objc_opt_class();
      v9 = v33;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: Successfully notified Screen Time of the exception.", buf, 0xCu);
    }

    v10 = +[ExceptionRequestStore sharedStore];
    v11 = [*(a1 + 40) bundleIdentifier];
    v12 = [*(a1 + 40) adamID];
    v13 = [*(a1 + 40) ageRatingValue];
    v14 = [v10 getExceptionRequestsWithBundleID:v11 adamID:v12 ratingValue:v13];

    v15 = +[APLogConfig sharedDaemonConfig];
    if (!v15)
    {
      v15 = +[APLogConfig sharedConfig];
    }

    v16 = [v15 OSLogObject];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = objc_opt_class();
      v18 = v17;
      v19 = [v14 count];
      *buf = 138543618;
      v33 = v17;
      v34 = 2048;
      v35 = v19;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}@: Updating %lu matching Requests...", buf, 0x16u);
    }

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v6 = v14;
    v20 = [v6 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v28;
      do
      {
        for (i = 0; i != v21; i = i + 1)
        {
          if (*v28 != v22)
          {
            objc_enumerationMutation(v6);
          }

          v24 = *(*(&v27 + 1) + 8 * i);
          [v24 setApprovalStatus:{1, v27}];
          v25 = +[ExceptionRequestStore sharedStore];
          [v25 storeRequest:v24];
        }

        v21 = [v6 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v21);
    }

    v5 = v6;
  }

  v26 = *(a1 + 48);
  if (v26)
  {
    (*(v26 + 16))(v26, *(a1 + 56), v3);
  }
}

void sub_100010058(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[APLogConfig sharedDaemonConfig];
  v5 = v4;
  if (v3)
  {
    if (!v4)
    {
      v5 = +[APLogConfig sharedConfig];
    }

    v6 = [v5 OSLogObject];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v34 = objc_opt_class();
      v35 = 2114;
      v36 = v3;
      v7 = v34;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}@: Error creating ScreenTime Exception. Error: %{public}@", buf, 0x16u);
    }
  }

  else
  {
    if (!v4)
    {
      v5 = +[APLogConfig sharedConfig];
    }

    v8 = [v5 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v34 = objc_opt_class();
      v9 = v34;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: Successfully notified Screen Time of the exception.", buf, 0xCu);
    }

    [*(a1 + 40) setApprovalStatus:*(a1 + 56)];
    v10 = +[ExceptionRequestStore sharedStore];
    [v10 storeRequest:*(a1 + 40)];

    v11 = +[ExceptionRequestStore sharedStore];
    v12 = [*(a1 + 40) bundleIdentifier];
    v13 = [*(a1 + 40) adamID];
    v14 = [*(a1 + 40) ageRatingValue];
    v15 = [v11 getExceptionRequestsWithBundleID:v12 adamID:v13 ratingValue:v14];

    v16 = +[APLogConfig sharedDaemonConfig];
    if (!v16)
    {
      v16 = +[APLogConfig sharedConfig];
    }

    v17 = [v16 OSLogObject];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = objc_opt_class();
      v19 = v18;
      v20 = [v15 count];
      *buf = 138543618;
      v34 = v18;
      v35 = 2048;
      v36 = v20;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}@: Updating %lu matching Requests...", buf, 0x16u);
    }

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v6 = v15;
    v21 = [v6 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v29;
      do
      {
        for (i = 0; i != v22; i = i + 1)
        {
          if (*v29 != v23)
          {
            objc_enumerationMutation(v6);
          }

          v25 = *(*(&v28 + 1) + 8 * i);
          [v25 setApprovalStatus:{1, v28}];
          v26 = +[ExceptionRequestStore sharedStore];
          [v26 storeRequest:v25];
        }

        v22 = [v6 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v22);
    }

    v5 = v6;
  }

  v27 = *(a1 + 48);
  if (v27)
  {
    (*(v27 + 16))(v27, v3);
  }
}

void sub_100010684(uint64_t a1)
{
  v2 = +[APLogConfig sharedDaemonConfig];
  if (!v2)
  {
    v2 = +[APLogConfig sharedConfig];
  }

  v3 = [v2 OSLogObject];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = objc_opt_class();
    v5 = *(a1 + 40);
    v6 = v4;
    v7 = [v5 uniqueIdentifier];
    v8 = 138543618;
    v9 = v4;
    v10 = 2112;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%{public}@: No matching Screen Time Requset found for uniqueID: %@", &v8, 0x16u);
  }
}

void sub_100012148(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AMSSetLogKey();
  string = xpc_dictionary_get_string(v3, _xpc_event_key_name);

  if (string)
  {
    string = [[NSString alloc] initWithUTF8String:string];
  }

  v6 = +[APLogConfig sharedDaemonConfig];
  if (!v6)
  {
    v6 = +[APLogConfig sharedConfig];
  }

  v7 = [v6 OSLogObject];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = AMSLogKey();
    v10 = 138543874;
    v11 = v8;
    v12 = 2114;
    v13 = v9;
    v14 = 2114;
    v15 = string;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] <<< Received a Darwin notification >>>. notification = %{public}@", &v10, 0x20u);
  }

  if (([string isEqualToString:@"AppleLanguagePreferencesChangedNotification"] & 1) != 0 || objc_msgSend(string, "isEqualToString:", @"com.apple.language.changed"))
  {
    [*(a1 + 32) _handleDeviceLanguageChangeNotification];
  }
}

uint64_t sub_100012554(uint64_t a1, void *a2)
{
  v3 = +[APLogConfig sharedDaemonConfig];
  if (!v3)
  {
    v3 = +[APLogConfig sharedConfig];
  }

  v4 = [v3 OSLogObject];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543362;
    v11 = objc_opt_class();
    v5 = v11;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Starting daemon startup task", &v10, 0xCu);
  }

  v6 = +[ConnectionReceiver sharedReceiver];
  [v6 start];

  v7 = +[LocalNotificationHandler sharedHandler];
  [v7 start];

  v8 = +[RemoteNotificationHandler sharedHandler];
  [v8 start];

  +[_TtC19AskPermissionDaemon17AskToListenerObjc registerForResponses];
  if (a2)
  {
    *a2 = 0;
  }

  return 1;
}

uint64_t sub_100012880(uint64_t a1, void *a2, uint64_t a3)
{
  if (!a3)
  {
    v4 = [a2 selectedActionIdentifier];
    [v4 integerValue];
  }

  v5 = *(*(a1 + 32) + 16);

  return v5();
}

void sub_100012AF8(uint64_t a1, uint64_t a2)
{
  v3 = +[APLogConfig sharedDaemonConfig];
  v4 = v3;
  if (a2 == -1)
  {
    if (!v3)
    {
      v4 = +[APLogConfig sharedConfig];
    }

    v5 = [v4 OSLogObject];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v10 = 138543362;
      v11 = objc_opt_class();
      v6 = v11;
      v7 = "%{public}@: Error presenting request";
      v8 = v5;
      v9 = OS_LOG_TYPE_ERROR;
      goto LABEL_10;
    }
  }

  else
  {
    if (!v3)
    {
      v4 = +[APLogConfig sharedConfig];
    }

    v5 = [v4 OSLogObject];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543362;
      v11 = objc_opt_class();
      v6 = v11;
      v7 = "%{public}@: Presented request succesfully";
      v8 = v5;
      v9 = OS_LOG_TYPE_DEFAULT;
LABEL_10:
      _os_log_impl(&_mh_execute_header, v8, v9, v7, &v10, 0xCu);
    }
  }
}

void sub_100012E14(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[APLogConfig sharedDaemonConfig];
  if (!v7)
  {
    v7 = +[APLogConfig sharedConfig];
  }

  v8 = [v7 OSLogObject];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543618;
    v11 = objc_opt_class();
    v12 = 2114;
    v13 = v5;
    v9 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: Received dialog result. Result: %{public}@", &v10, 0x16u);
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), v5, v6);
}

void sub_100012F94(id a1)
{
  qword_100063CD8 = objc_alloc_init(ExtensionManager);

  _objc_release_x1();
}

id sub_100013284(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:@"APExtensionDownloadContentType"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = [NSNumber numberWithInteger:*(a1 + 32)];
  v6 = [v4 isEqualToNumber:v5];

  return v6;
}

id sub_1000133E4(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:@"APExtensionSupportedProductTypes"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = [*(a1 + 32) productType];
  v6 = [v4 containsObject:v5];

  return v6;
}

uint64_t sub_100013748(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 infoDictionary];
  v4 = (*(v2 + 16))(v2, v3);

  return v4;
}

id sub_100013798(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

void sub_100013A30(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 104));
  _Unwind_Resume(a1);
}

void sub_100013A74(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = +[APLogConfig sharedDaemonConfig];
  if (!v5)
  {
    v5 = +[APLogConfig sharedConfig];
  }

  v6 = [v5 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543618;
    v9 = objc_opt_class();
    v10 = 2114;
    v11 = v3;
    v7 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: Extension completed. Request identifier: %{public}@", &v8, 0x16u);
  }
}

void sub_100013B94(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = +[APLogConfig sharedDaemonConfig];
  if (!v5)
  {
    v5 = +[APLogConfig sharedConfig];
  }

  v6 = [v5 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v8 = 138543618;
    v9 = objc_opt_class();
    v10 = 2114;
    v11 = v3;
    v7 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}@: Extension cancelled. Request identifier: %{public}@", &v8, 0x16u);
  }
}

void sub_100013CB4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = +[APLogConfig sharedDaemonConfig];
  if (!v5)
  {
    v5 = +[APLogConfig sharedConfig];
  }

  v6 = [v5 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v8 = 138543618;
    v9 = objc_opt_class();
    v10 = 2114;
    v11 = v3;
    v7 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}@: Extension interrupted. Request identifier: %{public}@", &v8, 0x16u);
  }
}

void sub_100014164(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = +[APLogConfig sharedDaemonConfig];
  if (!v6)
  {
    v6 = +[APLogConfig sharedConfig];
  }

  v7 = [v6 OSLogObject];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v18 = 138543618;
    *&v18[4] = objc_opt_class();
    *&v18[12] = 2114;
    *&v18[14] = a2;
    v8 = *&v18[4];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Got a FamilyCircle: %{public}@", v18, 0x16u);
  }

  if (a2)
  {
    v9 = [*(a1 + 32) DSID];
    if (v9)
    {
      v10 = [*(a1 + 32) DSID];
      v11 = [a2 memberForDSID:v10];
    }

    else
    {
      v11 = [a2 me];
    }

    v16 = [*(a1 + 32) _familyMemberType:v11];
    v17 = objc_alloc_init(FamilyMember);
    [(FamilyMember *)v17 setType:v16];
    [*(a1 + 40) finishWithResult:v17];
  }

  else
  {
    v12 = +[APLogConfig sharedDaemonConfig];
    if (!v12)
    {
      v12 = +[APLogConfig sharedConfig];
    }

    v13 = [v12 OSLogObject];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = objc_opt_class();
      *v18 = 138543618;
      *&v18[4] = v14;
      *&v18[12] = 2114;
      *&v18[14] = v5;
      v15 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: Error: %{public}@", v18, 0x16u);
    }

    [*(a1 + 40) finishWithError:v5];
  }
}

BOOL sub_100014884(uint64_t a1, ApprovalRequest **a2)
{
  v4 = +[AMSBag sharedBag];
  v5 = [v4 retrieveRequestURL];

  v45 = @"requestId";
  v6 = [*(a1 + 32) identifier];
  v46 = v6;
  v7 = [NSDictionary dictionaryWithObjects:&v46 forKeys:&v45 count:1];

  v8 = objc_alloc_init(URLRequestEncoder);
  v9 = [(URLRequestEncoder *)v8 requestWithMethod:4 bagURL:v5 parameters:v7];
  v42 = 0;
  v10 = [v9 resultWithTimeout:&v42 error:60.0];
  v11 = v42;
  if (v10)
  {
    v39 = a2;
    v40 = v5;
    v12 = +[APLogConfig sharedDaemonConfig];
    if (!v12)
    {
      v12 = +[APLogConfig sharedConfig];
    }

    v13 = [v12 OSLogObject];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = objc_opt_class();
      *buf = 138543362;
      v44 = v14;
      v15 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: Encoded request successfully", buf, 0xCu);
    }

    v16 = +[URLSession sharedSession];
    v17 = [v16 dataTaskPromiseWithRequest:v10];

    v41 = v11;
    v18 = [v17 resultWithTimeout:&v41 error:60.0];
    v19 = v41;

    if (v18)
    {
      v20 = +[APLogConfig sharedDaemonConfig];
      if (!v20)
      {
        v20 = +[APLogConfig sharedConfig];
      }

      v21 = [v20 OSLogObject];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = objc_opt_class();
        *buf = 138543362;
        v44 = v22;
        v37 = v18;
        v23 = a1;
        v24 = v9;
        v25 = v8;
        v26 = v7;
        v27 = v17;
        v28 = v19;
        v29 = v22;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%{public}@: Received server result", buf, 0xCu);

        v19 = v28;
        v17 = v27;
        v7 = v26;
        v8 = v25;
        v9 = v24;
        a1 = v23;
        v18 = v37;
      }

      v30 = [v18 object];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v31 = v30;
      }

      else
      {
        v31 = 0;
      }

      if (v31 && (v32 = [[ApprovalRequest alloc] initWithCloudPushDictionary:v31]) != 0)
      {
        v33 = v32;
        v38 = v19;
        [*(a1 + 32) setRequest:v32];
        if (+[APDefaults isRequester])
        {
          v34 = +[RequesterStore sharedStore];
          [v34 storeRequest:v33];
        }

        else
        {
          v34 = +[ApproverStore sharedStore];
          [v34 storeApprovalRequest:v33];
        }

        v19 = v38;
      }

      else
      {
        APError();
        v19 = v33 = v19;
      }
    }

    v5 = v40;

    v11 = v19;
    a2 = v39;
  }

  if (v11)
  {
    v35 = v11;
    *a2 = v11;
  }

  return v11 == 0;
}

BOOL sub_100014E68(uint64_t a1, void *a2)
{
  v4 = +[APLogConfig sharedDaemonConfig];
  if (!v4)
  {
    v4 = +[APLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = *(a1 + 32);
    v8 = v6;
    v9 = [v7 itemIdentifier];
    *buf = 138543618;
    v37 = v6;
    v38 = 2114;
    v39 = v9;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Starting local approve request task. Item identifier: %{public}@", buf, 0x16u);
  }

  v10 = +[RequesterStore sharedStore];
  v11 = [*(a1 + 32) itemIdentifier];
  v12 = [v10 requestIdentifierWithItemIdentifier:v11];

  if (!v12)
  {
    v15 = APError();
    if (!a2)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  v13 = +[UserProvider localApprovalUser];
  v35 = 0;
  v14 = [v13 resultWithError:&v35];
  v15 = v35;
  if (v14)
  {
    v16 = +[APLogConfig sharedDaemonConfig];
    if (!v16)
    {
      v16 = +[APLogConfig sharedConfig];
    }

    v17 = [v16 OSLogObject];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = objc_opt_class();
      *buf = 138543362;
      v37 = v18;
      v19 = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}@: Retrieved local approval user", buf, 0xCu);
    }

    v20 = *(a1 + 32);
    v34 = v15;
    v21 = [v20 _serverRequestWithUser:v14 requestIdentifier:v12 error:&v34];
    v22 = v34;

    if (v21)
    {
      v23 = +[APLogConfig sharedDaemonConfig];
      if (!v23)
      {
        v23 = +[APLogConfig sharedConfig];
      }

      v24 = [v23 OSLogObject];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = objc_opt_class();
        *buf = 138543362;
        v37 = v25;
        v26 = v25;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%{public}@: Received server result", buf, 0xCu);
      }

      v27 = [*(a1 + 32) _parseResult:v21];

      v22 = v27;
      if (!v27)
      {
        v28 = +[APLogConfig sharedDaemonConfig];
        if (!v28)
        {
          v28 = +[APLogConfig sharedConfig];
        }

        v29 = [v28 OSLogObject];
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v30 = objc_opt_class();
          *buf = 138543362;
          v37 = v30;
          v31 = v30;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%{public}@: Local approve success", buf, 0xCu);
        }

        v22 = 0;
      }
    }

    v15 = v22;
  }

  if (a2)
  {
LABEL_24:
    v32 = v15;
    *a2 = v15;
  }

LABEL_25:

  return v15 == 0;
}

void sub_100015B10(id a1)
{
  qword_100063CE8 = objc_alloc_init(LocalNotificationHandler);

  _objc_release_x1();
}

void sub_100016838(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10001685C(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = +[APLogConfig sharedDaemonConfig];
  v8 = v7;
  if (a2)
  {
    if (!v7)
    {
      v8 = +[APLogConfig sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138543362;
      v18 = objc_opt_class();
      v10 = v18;
      v11 = "%{public}@: Handled approver local notification succesfully.";
      v12 = v9;
      v13 = OS_LOG_TYPE_DEFAULT;
      v14 = 12;
LABEL_10:
      _os_log_impl(&_mh_execute_header, v12, v13, v11, &v17, v14);
    }
  }

  else
  {
    if (!v7)
    {
      v8 = +[APLogConfig sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v17 = 138543618;
      v18 = objc_opt_class();
      v19 = 2114;
      v20 = v5;
      v10 = v18;
      v11 = "%{public}@: Failed to handle approver local notification. Error: %{public}@";
      v12 = v9;
      v13 = OS_LOG_TYPE_ERROR;
      v14 = 22;
      goto LABEL_10;
    }
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), v15, v16);
}

void sub_100016B18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100016B3C(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = +[APLogConfig sharedDaemonConfig];
  v8 = v7;
  if (a2)
  {
    if (!v7)
    {
      v8 = +[APLogConfig sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138543362;
      v18 = objc_opt_class();
      v10 = v18;
      v11 = "%{public}@: Handled requester local notification succesfully.";
      v12 = v9;
      v13 = OS_LOG_TYPE_DEFAULT;
      v14 = 12;
LABEL_10:
      _os_log_impl(&_mh_execute_header, v12, v13, v11, &v17, v14);
    }
  }

  else
  {
    if (!v7)
    {
      v8 = +[APLogConfig sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v17 = 138543618;
      v18 = objc_opt_class();
      v19 = 2114;
      v20 = v5;
      v10 = v18;
      v11 = "%{public}@: Failed to handle requester local notification. Error: %{public}@";
      v12 = v9;
      v13 = OS_LOG_TYPE_ERROR;
      v14 = 22;
      goto LABEL_10;
    }
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), v15, v16);
}

void sub_100016F8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100016FB0(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = +[APLogConfig sharedDaemonConfig];
  v6 = v5;
  if (v3)
  {
    if (!v5)
    {
      v6 = +[APLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = objc_opt_class();
      v9 = *(a1 + 32);
      v10 = v8;
      v11 = [v9 requestIdentifier];
      v12 = *(a1 + 48);
      v20 = 138544130;
      v21 = v8;
      v22 = 2114;
      v23 = v11;
      v24 = 1026;
      v25 = v12;
      v26 = 2114;
      v27 = v3;
      v13 = "%{public}@: Could not present notification. Identifier: %{public}@, silently: %{public}d, error:%{public}@";
      v14 = v7;
      v15 = OS_LOG_TYPE_ERROR;
      v16 = 38;
LABEL_10:
      _os_log_impl(&_mh_execute_header, v14, v15, v13, &v20, v16);
    }
  }

  else
  {
    if (!v5)
    {
      v6 = +[APLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v17 = objc_opt_class();
      v18 = *(a1 + 32);
      v10 = v17;
      v11 = [v18 requestIdentifier];
      v19 = *(a1 + 48);
      v20 = 138543874;
      v21 = v17;
      v22 = 2114;
      v23 = v11;
      v24 = 1026;
      v25 = v19;
      v13 = "%{public}@: Presented notification successfully. Identifier: %{public}@, silently: %{public}d";
      v14 = v7;
      v15 = OS_LOG_TYPE_DEFAULT;
      v16 = 28;
      goto LABEL_10;
    }
  }
}

void sub_1000172D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000172F8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = +[APLogConfig sharedDaemonConfig];
  v6 = v5;
  if (v3)
  {
    if (!v5)
    {
      v6 = +[APLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = objc_opt_class();
      v9 = *(a1 + 32);
      v10 = v8;
      v11 = [v9 requestIdentifier];
      v18 = 138543874;
      v19 = v8;
      v20 = 2114;
      v21 = v11;
      v22 = 2114;
      v23 = v3;
      v12 = "%{public}@: Could not replace notification content. Identifier: %{public}@, error:%{public}@";
      v13 = v7;
      v14 = OS_LOG_TYPE_ERROR;
      v15 = 32;
LABEL_10:
      _os_log_impl(&_mh_execute_header, v13, v14, v12, &v18, v15);
    }
  }

  else
  {
    if (!v5)
    {
      v6 = +[APLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v16 = objc_opt_class();
      v17 = *(a1 + 32);
      v10 = v16;
      v11 = [v17 requestIdentifier];
      v18 = 138543618;
      v19 = v16;
      v20 = 2114;
      v21 = v11;
      v12 = "%{public}@: Replaced notification content successfully. Identifier: %{public}@";
      v13 = v7;
      v14 = OS_LOG_TYPE_DEFAULT;
      v15 = 22;
      goto LABEL_10;
    }
  }
}

BOOL sub_100017948(uint64_t a1, void *a2)
{
  v4 = +[APLogConfig sharedDaemonConfig];
  if (!v4)
  {
    v4 = +[APLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = *(a1 + 32);
    v8 = v6;
    v9 = [v7 requestURL];
    *buf = 138543618;
    v38 = v6;
    v39 = 2114;
    v40 = v9;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Starting post request task. Request URL: %{public}@", buf, 0x16u);
  }

  [APDefaults setIsRequester:1];
  [APDefaults setIsApprover:0];
  v10 = *(a1 + 32);
  v36 = 0;
  v11 = [v10 _serverRequestWithError:&v36];
  v12 = v36;
  if (v11)
  {
    v13 = +[APLogConfig sharedDaemonConfig];
    if (!v13)
    {
      v13 = +[APLogConfig sharedConfig];
    }

    v14 = [v13 OSLogObject];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = objc_opt_class();
      *buf = 138543362;
      v38 = v15;
      v16 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: Received server result.", buf, 0xCu);
    }

    v17 = *(a1 + 32);
    v35 = v12;
    v18 = [v17 _storeRequestWithResult:v11 error:&v35];
    v19 = v35;

    if (_os_feature_enabled_impl())
    {
      v20 = [v11 object];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v21 = v20;
      }

      else
      {
        v21 = 0;
      }

      v22 = [v21 objectForKeyedSubscript:@"requestId"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v23 = v22;
      }

      else
      {
        v23 = 0;
      }

      v24 = +[APLogConfig sharedDaemonConfig];
      if (!v24)
      {
        v24 = +[APLogConfig sharedConfig];
      }

      v25 = [v24 OSLogObject];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = objc_opt_class();
        *buf = 138543618;
        v38 = v26;
        v39 = 2112;
        v40 = v23;
        v27 = v26;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%{public}@: Requesting Biome Donation - Request Identifier: %@", buf, 0x16u);
      }

      [BiomeHelper donateToBiomeWithRequest:v18];
    }

    v28 = [*(a1 + 32) bag];
    v29 = [v28 BOOLForKey:@"enable-ks-via-messages"];

    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_100017D90;
    v33[3] = &unk_100054C58;
    v33[4] = *(a1 + 32);
    v34 = v18;
    v30 = v18;
    [v29 valueWithCompletion:v33];

    v12 = v19;
  }

  if (a2)
  {
    v31 = v12;
    *a2 = v12;
  }

  return v12 == 0;
}

void sub_100017D90(uint64_t a1, void *a2)
{
  v3 = [a2 BOOLValue];
  v4 = +[APLogConfig sharedDaemonConfig];
  if (!v4)
  {
    v4 = +[APLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = *(a1 + 32);
    v8 = v6;
    *buf = 138543874;
    v17 = v6;
    v18 = 1024;
    v19 = [v7 canSendViaMessages];
    v20 = 1024;
    v21 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: canSendViaMessages: %d - kill switch: %d", buf, 0x18u);
  }

  if ((v3 & 1) == 0 && [*(a1 + 32) canSendViaMessages])
  {
    v9 = +[APLogConfig sharedDaemonConfig];
    if (!v9)
    {
      v9 = +[APLogConfig sharedConfig];
    }

    v10 = [v9 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = objc_opt_class();
      *buf = 138543362;
      v17 = v11;
      v12 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: Sending via iMessage", buf, 0xCu);
    }

    v13 = [*(a1 + 32) peopleClient];
    v14 = [*(a1 + 40) uniqueIdentifier];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100017FE4;
    v15[3] = &unk_100054F78;
    v15[4] = *(a1 + 32);
    [v13 sendFamilyAskToBuyIMessageWithRequestID:v14 completion:v15];
  }
}

void sub_100017FE4(uint64_t a1, char a2, void *a3)
{
  v4 = a3;
  if ((a2 & 1) == 0)
  {
    v5 = +[APLogConfig sharedDaemonConfig];
    if (!v5)
    {
      v5 = +[APLogConfig sharedConfig];
    }

    v6 = [v5 OSLogObject];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138543618;
      v9 = objc_opt_class();
      v10 = 2112;
      v11 = v4;
      v7 = v9;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: Sending via iMessage failed - Error: %@", &v8, 0x16u);
    }
  }
}

void sub_1000188E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id location)
{
  _Block_object_dispose(&location, 8);
  _Block_object_dispose(&a23, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000189AC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000189C4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (v5)
  {
    v7 = +[APLogConfig sharedDaemonConfig];
    if (!v7)
    {
      v7 = +[APLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v22 = objc_opt_class();
      v23 = 2112;
      v24 = v5;
      v9 = v22;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}@: PeopleClient returned an error: %@", buf, 0x16u);
    }
  }

  [WeakRetained setCanSendViaMessages:a2];
  v10 = +[APLogConfig sharedDaemonConfig];
  if (!v10)
  {
    v10 = +[APLogConfig sharedConfig];
  }

  v11 = [v10 OSLogObject];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = objc_opt_class();
    *buf = 138543618;
    v22 = v12;
    v23 = 1024;
    LODWORD(v24) = a2;
    v13 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: canSendFamilyAskToBuyIMessage: %d", buf, 0x12u);
  }

  v14 = [*(a1 + 32) requestURL];
  v15 = [v14 absoluteString];
  v16 = [v15 stringByAppendingFormat:@"&clientInfo=canSendViaMessages:%d", a2];

  v17 = [NSURL URLWithString:v16];
  if (v17)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), v17);
  }

  else
  {
    v18 = [*(a1 + 32) requestURL];
    v19 = *(*(a1 + 48) + 8);
    v20 = *(v19 + 40);
    *(v19 + 40) = v18;

    [WeakRetained setCanSendViaMessages:0];
  }

  dispatch_group_leave(*(a1 + 40));
}

Class sub_100019048(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_100063CF8)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_10001918C;
    v4[4] = &unk_100055518;
    v4[5] = v4;
    v5 = off_100055500;
    v6 = 0;
    qword_100063CF8 = _sl_dlopen();
    v2 = v4[0];
    if (qword_100063CF8)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("PeopleClient");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_100019200();
  }

  qword_100063CF0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_10001918C(uint64_t a1)
{
  result = _sl_dlopen();
  qword_100063CF8 = result;
  return result;
}

void sub_1000194E8(id a1)
{
  qword_100063D08 = objc_alloc_init(RemoteNotificationHandler);

  _objc_release_x1();
}

id sub_100019710(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if ([v4 isEqualToString:@"production"])
  {
    goto LABEL_20;
  }

  if ([v4 isEqualToString:@"development"])
  {
    v6 = &off_100058028;
    goto LABEL_21;
  }

  if (v4)
  {
    v7 = +[APLogConfig sharedDaemonConfig];
    if (!v7)
    {
      v7 = +[APLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_19;
    }

    *v19 = 138543618;
    *&v19[4] = objc_opt_class();
    *&v19[12] = 2114;
    *&v19[14] = v4;
    v9 = *&v19[4];
    v10 = "%{public}@: Unexpected push environment value from bag: %{public}@";
    v11 = v8;
    v12 = 22;
  }

  else
  {
    v13 = +[APLogConfig sharedDaemonConfig];
    v7 = v13;
    if (v5)
    {
      if (!v13)
      {
        v7 = +[APLogConfig sharedConfig];
      }

      v8 = [v7 OSLogObject];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v14 = objc_opt_class();
        v15 = v14;
        v16 = AMSLogableError();
        *v19 = 138543618;
        *&v19[4] = v14;
        *&v19[12] = 2114;
        *&v19[14] = v16;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}@: Error loading push environment value from bag: %{public}@", v19, 0x16u);
      }

      goto LABEL_19;
    }

    if (!v13)
    {
      v7 = +[APLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_19;
    }

    *v19 = 138543362;
    *&v19[4] = objc_opt_class();
    v9 = *&v19[4];
    v10 = "%{public}@: Neither a result nor an error returned from bag.";
    v11 = v8;
    v12 = 12;
  }

  _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_FAULT, v10, v19, v12);

LABEL_19:
LABEL_20:
  v6 = &off_100058010;
LABEL_21:
  v17 = [AMSPromise promiseWithResult:v6, *v19, *&v19[8]];

  return v17;
}

void sub_100019C08(uint64_t a1, void *a2)
{
  if ([a2 unsignedIntegerValue] == 2)
  {
    v3 = [*(a1 + 32) apsQueue];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100019CBC;
    v5[3] = &unk_100054D70;
    v4 = *(a1 + 40);
    v5[4] = *(a1 + 32);
    v6 = v4;
    dispatch_async(v3, v5);
  }
}

void sub_10001A0BC(uint64_t a1, void *a2)
{
  v3 = [a2 unsignedIntegerValue];
  v4 = [*(a1 + 32) apsConnection];

  if (v4)
  {
    v5 = [*(a1 + 32) apsConnection];
    [v5 shutdown];
  }

  v6 = &APSEnvironmentDevelopment;
  if (v3 != 2)
  {
    v6 = &APSEnvironmentProduction;
  }

  v7 = *v6;
  v8 = [APSConnection alloc];
  v9 = [*(a1 + 32) apsQueue];
  v10 = [v8 initWithEnvironmentName:v7 namedDelegatePort:@"com.apple.aps.askpermission" queue:v9];
  [*(a1 + 32) setApsConnection:v10];

  v11 = *(a1 + 40);
  v12 = [*(a1 + 32) apsConnection];
  [v12 _setEnabledTopics:v11];

  v13 = *(a1 + 32);
  v14 = [v13 apsConnection];
  [v14 setDelegate:v13];

  v15 = [*(a1 + 32) apsConnection];

  v16 = +[APLogConfig sharedDaemonConfig];
  v17 = v16;
  if (v15)
  {
    if (!v16)
    {
      v17 = +[APLogConfig sharedConfig];
    }

    v18 = [v17 OSLogObject];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 138543618;
      v24 = objc_opt_class();
      v25 = 2114;
      v26 = v7;
      v19 = v24;
      v20 = "%{public}@: Started APS connection succesfully. Environment: %{public}@";
      v21 = v18;
      v22 = OS_LOG_TYPE_DEFAULT;
LABEL_14:
      _os_log_impl(&_mh_execute_header, v21, v22, v20, &v23, 0x16u);
    }
  }

  else
  {
    if (!v16)
    {
      v17 = +[APLogConfig sharedConfig];
    }

    v18 = [v17 OSLogObject];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v23 = 138543618;
      v24 = objc_opt_class();
      v25 = 2114;
      v26 = v7;
      v19 = v24;
      v20 = "%{public}@: Failed to start APS connection. Environment: %{public}@";
      v21 = v18;
      v22 = OS_LOG_TYPE_ERROR;
      goto LABEL_14;
    }
  }
}

void sub_10001A82C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [v5 type];
    if (v7 != 1)
    {
      if (v7)
      {
        goto LABEL_22;
      }

      goto LABEL_15;
    }

    v13 = +[APLogConfig sharedDaemonConfig];
    if (!v13)
    {
      v13 = +[APLogConfig sharedConfig];
    }

    v14 = [v13 OSLogObject];
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
LABEL_21:

      goto LABEL_22;
    }

    *v17 = 138543362;
    *&v17[4] = objc_opt_class();
    v16 = *&v17[4];
LABEL_20:
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: Ignoring cloud notification on requester's device", v17, 0xCu);

    goto LABEL_21;
  }

  v8 = +[APLogConfig sharedDaemonConfig];
  if (!v8)
  {
    v8 = +[APLogConfig sharedConfig];
  }

  v9 = [v8 OSLogObject];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v17 = 138543618;
    *&v17[4] = objc_opt_class();
    *&v17[12] = 2114;
    *&v17[14] = v6;
    v10 = *&v17[4];
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: Unable to determine if Guardian or Requester. Falling back to UserDefaults. Error: %{public}@", v17, 0x16u);
  }

  if (+[APDefaults isRequester](APDefaults, "isRequester") & 1) != 0 || (+[RequesterStore sharedStore](RequesterStore, "sharedStore"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 containsRequestWithIdentifier:*(a1 + 40)], v11, (v12))
  {
    v13 = [APLogConfig sharedDaemonConfig:*v17];
    if (!v13)
    {
      v13 = +[APLogConfig sharedConfig];
    }

    v14 = [v13 OSLogObject];
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_21;
    }

    v15 = objc_opt_class();
    *v17 = 138543362;
    *&v17[4] = v15;
    v16 = v15;
    goto LABEL_20;
  }

LABEL_15:
  [*(a1 + 32) _handleApproverNotification:{*(a1 + 48), *v17, *&v17[8]}];
LABEL_22:
}

void sub_10001AB80(uint64_t a1, int a2, void *a3)
{
  v4 = a3;
  v5 = +[APLogConfig sharedDaemonConfig];
  v6 = v5;
  if (a2)
  {
    if (!v5)
    {
      v6 = +[APLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138543362;
      v14 = objc_opt_class();
      v8 = v14;
      v9 = "%{public}@: Handled approver remote notification succesfully";
      v10 = v7;
      v11 = OS_LOG_TYPE_DEFAULT;
      v12 = 12;
LABEL_10:
      _os_log_impl(&_mh_execute_header, v10, v11, v9, &v13, v12);
    }
  }

  else
  {
    if (!v5)
    {
      v6 = +[APLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v13 = 138543618;
      v14 = objc_opt_class();
      v15 = 2114;
      v16 = v4;
      v8 = v14;
      v9 = "%{public}@: Failed to handle approver remote notification. Error: %{public}@";
      v10 = v7;
      v11 = OS_LOG_TYPE_ERROR;
      v12 = 22;
      goto LABEL_10;
    }
  }
}

void sub_10001B154(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v5 || [v5 type] == 2)
  {
    v7 = +[APLogConfig sharedDaemonConfig];
    if (!v7)
    {
      v7 = +[APLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 138543618;
      *&v15[4] = objc_opt_class();
      *&v15[12] = 2114;
      *&v15[14] = v6;
      v9 = *&v15[4];
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: Unable to determine if Guardian or Requester. Falling back to UserDefaults. Error: %{public}@", v15, 0x16u);
    }

    if (!+[APDefaults isRequester])
    {
      v10 = +[APLogConfig sharedDaemonConfig];
      if (!v10)
      {
        v10 = +[APLogConfig sharedConfig];
      }

      v11 = [v10 OSLogObject];
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_19;
      }

      v12 = objc_opt_class();
      *v15 = 138543362;
      *&v15[4] = v12;
      v13 = v12;
LABEL_18:
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: Ignoring store notification on approver's device", v15, 0xCu);

LABEL_19:
      goto LABEL_21;
    }

LABEL_20:
    [*(a1 + 32) _handleRequesterNotification:*(a1 + 40) andSuppressDialog:{*(a1 + 48), *v15, *&v15[8]}];
    goto LABEL_21;
  }

  v14 = [v5 type];
  if (v14 == 1)
  {
    goto LABEL_20;
  }

  if (!v14)
  {
    v10 = +[APLogConfig sharedDaemonConfig];
    if (!v10)
    {
      v10 = +[APLogConfig sharedConfig];
    }

    v11 = [v10 OSLogObject];
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_19;
    }

    *v15 = 138543362;
    *&v15[4] = objc_opt_class();
    v13 = *&v15[4];
    goto LABEL_18;
  }

LABEL_21:
}

void sub_10001B494(uint64_t a1, int a2, void *a3)
{
  v4 = a3;
  v5 = +[APLogConfig sharedDaemonConfig];
  v6 = v5;
  if (a2)
  {
    if (!v5)
    {
      v6 = +[APLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138543362;
      v14 = objc_opt_class();
      v8 = v14;
      v9 = "%{public}@: Handled requester remote notification succesfully";
      v10 = v7;
      v11 = OS_LOG_TYPE_DEFAULT;
      v12 = 12;
LABEL_10:
      _os_log_impl(&_mh_execute_header, v10, v11, v9, &v13, v12);
    }
  }

  else
  {
    if (!v5)
    {
      v6 = +[APLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v13 = 138543618;
      v14 = objc_opt_class();
      v15 = 2114;
      v16 = v4;
      v8 = v14;
      v9 = "%{public}@: Failed to handle requester remote notification. Error: %{public}@";
      v10 = v7;
      v11 = OS_LOG_TYPE_ERROR;
      v12 = 22;
      goto LABEL_10;
    }
  }
}

void sub_10001B890(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[APLogConfig sharedDaemonConfig];
  v4 = v3;
  if (v2)
  {
    if (!v3)
    {
      v4 = +[APLogConfig sharedConfig];
    }

    v5 = [v4 OSLogObject];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v11 = 138543618;
      v12 = objc_opt_class();
      v13 = 2114;
      v14 = v2;
      v6 = v12;
      v7 = "%{public}@: Failed to register cloud push token. Error: %{public}@";
      v8 = v5;
      v9 = OS_LOG_TYPE_FAULT;
      v10 = 22;
LABEL_10:
      _os_log_impl(&_mh_execute_header, v8, v9, v7, &v11, v10);
    }
  }

  else
  {
    if (!v3)
    {
      v4 = +[APLogConfig sharedConfig];
    }

    v5 = [v4 OSLogObject];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543362;
      v12 = objc_opt_class();
      v6 = v12;
      v7 = "%{public}@: Registered cloud push token succesfully";
      v8 = v5;
      v9 = OS_LOG_TYPE_DEFAULT;
      v10 = 12;
      goto LABEL_10;
    }
  }

  [APDefaults setRetryNotificationRegistration:v2 != 0];
}

uint64_t sub_10001C308(uint64_t a1, void *a2)
{
  v4 = +[APLogConfig sharedDaemonConfig];
  if (!v4)
  {
    v4 = +[APLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = *(a1 + 32);
    v8 = v6;
    v9 = [v7 request];
    v14 = 138543618;
    v15 = v6;
    v16 = 2114;
    v17 = v9;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Starting handle requester local notification task. Request: %{public}@", &v14, 0x16u);
  }

  v10 = +[LocalNotificationHandler sharedHandler];
  v11 = [*(a1 + 32) request];
  v12 = [v11 requestIdentifier];
  [v10 dismissNotificationWithIdentifier:v12];

  if (a2)
  {
    *a2 = 0;
  }

  return 1;
}

void sub_10001D7BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10001D7D4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10001D91C(id a1)
{
  qword_100063D18 = [[ExceptionRequestStore alloc] initWithInMemoryStore:1];

  _objc_release_x1();
}

void sub_10001D9A4(id a1)
{
  qword_100063D28 = objc_alloc_init(ExceptionRequestStore);

  _objc_release_x1();
}

void sub_10001DB34(uint64_t a1)
{
  [*(*(a1 + 32) + 8) removeAllObjects];
  v2 = [*(a1 + 32) requestStore];
  [v2 clearCache];
}

id sub_10001DBFC(id a1, ExceptionRequest *a2)
{
  v2 = [(ExceptionRequest *)a2 copy];

  return v2;
}

id sub_10001DD08(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 bundleIdentifier];
  LODWORD(a1) = [v4 isEqualToString:*(a1 + 32)];

  if (a1)
  {
    v5 = [v3 copy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id sub_10001DEB0(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 bundleIdentifier];
  if (([v4 isEqualToString:a1[4]] & 1) == 0)
  {
    goto LABEL_6;
  }

  v5 = [v3 adamID];
  if (([v5 isEqualToNumber:a1[5]] & 1) == 0)
  {

LABEL_6:
    goto LABEL_7;
  }

  v6 = [v3 ageRatingValue];
  v7 = [v6 isEqualToNumber:a1[6]];

  if (v7)
  {
    v8 = [v3 copy];
    goto LABEL_8;
  }

LABEL_7:
  v8 = 0;
LABEL_8:

  return v8;
}

id sub_10001E05C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 distributorID];
  LODWORD(a1) = [v4 isEqualToString:*(a1 + 32)];

  if (a1)
  {
    v5 = [v3 copy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id sub_10001E2DC(uint64_t a1)
{
  [*(*(a1 + 32) + 8) setObject:0 forKeyedSubscript:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 _saveChanges];
}

id sub_10001E3D4(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(*(a1 + 32) + 8);
  v4 = [*(a1 + 40) uniqueIdentifier];
  [v3 setObject:v2 forKeyedSubscript:v4];

  v5 = *(a1 + 32);

  return [v5 _saveChanges];
}

BOOL sub_10001E9C4(uint64_t a1, void *a2)
{
  v4 = +[APLogConfig sharedDaemonConfig];
  if (!v4)
  {
    v4 = +[APLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = *(a1 + 32);
    v8 = v6;
    v9 = [v7 payload];
    *buf = 138543618;
    v106 = v6;
    v107 = 2114;
    v108 = v9;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Starting requester remote notification task. Payload: %{public}@", buf, 0x16u);
  }

  v10 = [*(a1 + 32) requestStatus];
  v11 = [*(a1 + 32) requestIdentifier];
  v12 = v11;
  if (v10 == -2 || !v11)
  {
    v16 = APError();
  }

  else if (v10 > 1)
  {
    v16 = 0;
  }

  else
  {
    v13 = +[RequesterStore sharedStore];
    [v13 clearExpiredRequests];

    v14 = *(a1 + 32);
    v103 = 0;
    v15 = [v14 _serverRequestWithError:&v103];
    v16 = v103;
    if (v15)
    {
      v17 = +[APLogConfig sharedDaemonConfig];
      if (!v17)
      {
        v17 = +[APLogConfig sharedConfig];
      }

      v18 = [v17 OSLogObject];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = objc_opt_class();
        *buf = 138543618;
        v106 = v19;
        v107 = 2114;
        v108 = v15;
        v20 = v19;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%{public}@: Received server result: %{public}@", buf, 0x16u);
      }

      v21 = *(a1 + 32);
      v102 = v16;
      v22 = [v21 _requestFromResult:v15 withError:&v102];
      v23 = v102;

      v94 = v22;
      if (v22)
      {
        v24 = &APCustomError_ptr;
        v25 = +[APLogConfig sharedDaemonConfig];
        if (!v25)
        {
          v25 = +[APLogConfig sharedConfig];
        }

        v26 = [v25 OSLogObject];
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v27 = objc_opt_class();
          *buf = 138543618;
          v106 = v27;
          v107 = 2114;
          v108 = v94;
          v28 = v10;
          v29 = v23;
          v30 = v27;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%{public}@: Decoded server response. Request: %{public}@", buf, 0x16u);

          v23 = v29;
          v10 = v28;
        }

        if ([*(a1 + 32) suppressDialog])
        {
          v31 = +[APLogConfig sharedDaemonConfig];
          if (!v31)
          {
            v31 = +[APLogConfig sharedConfig];
          }

          v32 = [v31 OSLogObject];
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            v33 = objc_opt_class();
            *buf = 138543362;
            v106 = v33;
            v34 = v10;
            v35 = v23;
            v36 = v33;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "%{public}@: Suppressing Dialog for Inactive Account", buf, 0xCu);

            v23 = v35;
            v10 = v34;
          }
        }

        else
        {
          [*(a1 + 32) _presentRequest:v94];
        }

        v93 = +[NSMutableArray array];
        v40 = [v15 object];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v41 = v40;
        }

        else
        {
          v41 = 0;
        }

        v90 = v41;
        if (v41)
        {
          v85 = v10;
          v86 = v23;
          v42 = [[ApprovalRequest alloc] initWithCloudPushDictionary:v41];
          v43 = +[RequesterStore sharedStore];
          [v43 storeRequest:v42];

          [v93 addObject:v42];
          v84 = [(ApprovalRequest *)v42 suppressClientResume];
          v44 = +[RequesterStore sharedStore];
          v45 = [(ApprovalRequest *)v42 uniqueIdentifier];
          v46 = [v44 requestsMatchingUniqueIdentifier:v45];

          v47 = +[APLogConfig sharedDaemonConfig];
          if (!v47)
          {
            v47 = +[APLogConfig sharedConfig];
          }

          v87 = v15;
          v88 = v12;
          v89 = a2;
          v48 = [v47 OSLogObject];
          if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
          {
            v49 = objc_opt_class();
            v50 = v49;
            v51 = [v46 count];
            *buf = 138543618;
            v106 = v49;
            v107 = 2048;
            v108 = v51;
            _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "%{public}@: Matching requests found: %lu", buf, 0x16u);
          }

          v91 = a1;

          v100 = 0u;
          v101 = 0u;
          v98 = 0u;
          v99 = 0u;
          v52 = v46;
          v53 = [v52 countByEnumeratingWithState:&v98 objects:v104 count:16];
          v24 = &APCustomError_ptr;
          v92 = v52;
          if (v53)
          {
            v54 = v53;
            v55 = *v99;
            do
            {
              for (i = 0; i != v54; i = i + 1)
              {
                if (*v99 != v55)
                {
                  objc_enumerationMutation(v52);
                }

                v57 = *(*(&v98 + 1) + 8 * i);
                v58 = [v24[256] sharedDaemonConfig];
                if (!v58)
                {
                  v58 = [v24[256] sharedConfig];
                }

                v59 = [v58 OSLogObject];
                if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
                {
                  v60 = objc_opt_class();
                  v61 = v60;
                  v62 = [v57 uniqueIdentifier];
                  *buf = 138543618;
                  v106 = v60;
                  v52 = v92;
                  v107 = 2114;
                  v108 = v62;
                  _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "%{public}@: Updating request: %{public}@", buf, 0x16u);

                  v24 = &APCustomError_ptr;
                }

                v63 = [v94 status];
                v64 = [(ApprovalRequest *)v42 approverDSID];
                [v57 updateStatus:v63 withApproverDSID:v64];

                v65 = +[RequesterStore sharedStore];
                [v65 storeRequest:v57];

                [v93 addObject:v57];
              }

              v54 = [v52 countByEnumeratingWithState:&v98 objects:v104 count:16];
            }

            while (v54);
          }

          if (_os_feature_enabled_impl())
          {
            v66 = objc_alloc_init(NSOperationQueue);
            v96[0] = _NSConcreteStackBlock;
            v96[1] = 3221225472;
            v96[2] = sub_10001F4F8;
            v96[3] = &unk_100054C30;
            v97 = v93;
            [v66 addOperationWithBlock:v96];
          }

          v12 = v88;
          a2 = v89;
          a1 = v91;
          v23 = v86;
          v15 = v87;
          v10 = v85;
          v39 = v84;
        }

        else
        {
          v42 = +[APLogConfig sharedDaemonConfig];
          if (!v42)
          {
            v42 = +[APLogConfig sharedConfig];
          }

          v67 = [(ApprovalRequest *)v42 OSLogObject];
          v92 = v67;
          if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
          {
            v68 = objc_opt_class();
            *buf = 138543362;
            v106 = v68;
            v69 = v68;
            _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "%{public}@: Error gathering information for Biome donation. Result Object NIL.", buf, 0xCu);
          }

          v39 = 0;
        }
      }

      else
      {
        v39 = 0;
        v24 = &APCustomError_ptr;
      }

      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.askpermissiond.requestStatusChanged", 0, 0, 1u);
      if (v10 == 1)
      {
        if (v39)
        {
          v71 = [v24[256] sharedDaemonConfig];
          if (!v71)
          {
            v71 = [v24[256] sharedConfig];
          }

          v72 = [v71 OSLogObject];
          if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
          {
            v73 = objc_opt_class();
            *buf = 138543362;
            v106 = v73;
            v74 = v73;
            _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEFAULT, "%{public}@: Resuming Purchase suppressed - Extension will *NOT* be notified.", buf, 0xCu);
          }
        }

        else
        {
          v75 = *(a1 + 32);
          v95 = v23;
          v71 = [v75 _requestResultFromResult:v15 withError:&v95];
          v76 = v95;

          if (v71)
          {
            v77 = [v24[256] sharedDaemonConfig];
            if (!v77)
            {
              v77 = [v24[256] sharedConfig];
            }

            v78 = [v77 OSLogObject];
            if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
            {
              v79 = objc_opt_class();
              *buf = 138543618;
              v106 = v79;
              v107 = 2114;
              v108 = v71;
              v80 = v79;
              _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_DEFAULT, "%{public}@: Decoded server response. Result: %{public}@", buf, 0x16u);
            }

            v81 = [*(a1 + 32) _notifyExtensionWithResult:v71];
          }

          v23 = v76;
        }

        v82 = [v15 object];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v83 = v82;
        }

        else
        {
          v83 = 0;
        }

        [*(a1 + 32) _notifyScreenTimeIfNeededForApprovalForRequestWithID:v12 response:v83];
      }

      v16 = v23;
    }
  }

  if (a2)
  {
    v37 = v16;
    *a2 = v16;
  }

  return v16 == 0;
}

void sub_10001F4F8(uint64_t a1)
{
  v1 = [NSArray arrayWithArray:*(a1 + 32)];
  [BiomeHelper donateToBiomeWithRequests:v1];
}

void sub_1000207E8(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[APLogConfig sharedDaemonConfig];
  v4 = v3;
  if (v2)
  {
    if (!v3)
    {
      v4 = +[APLogConfig sharedConfig];
    }

    v5 = [v4 OSLogObject];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = objc_opt_class();
      v7 = v6;
      v8 = AMSLogableError();
      v10 = 138543618;
      v11 = v6;
      v12 = 2114;
      v13 = v8;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%{public}@: Error notifying Screen Time of the exception: %{public}@", &v10, 0x16u);
    }
  }

  else
  {
    if (!v3)
    {
      v4 = +[APLogConfig sharedConfig];
    }

    v5 = [v4 OSLogObject];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543362;
      v11 = objc_opt_class();
      v9 = v11;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Successfully notified Screen Time of the exception.", &v10, 0xCu);
    }
  }
}

void sub_1000210F0(id a1)
{
  qword_100063D38 = objc_alloc_init(RequesterStore);

  _objc_release_x1();
}

void sub_100021280(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableArray);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v3 = [*(a1 + 32) requestItems];
  v4 = [v3 allValues];

  v5 = [v4 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v25;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v24 + 1) + 8 * i);
        v10 = [v9 createdDate];
        v11 = [NSDate isDateExpired:v10];

        if (v11)
        {
          v12 = [v9 uniqueIdentifier];
          [v2 addObject:v12];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v6);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v13 = v2;
  v14 = [v13 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v21;
    do
    {
      for (j = 0; j != v15; j = j + 1)
      {
        if (*v21 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v20 + 1) + 8 * j);
        v19 = [*(a1 + 32) requestItems];
        [v19 setObject:0 forKeyedSubscript:v18];
      }

      v15 = [v13 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v15);
  }

  [*(a1 + 32) _saveChanges];
}

void sub_1000215F8(uint64_t a1)
{
  v2 = [*(a1 + 32) requestItems];
  [v2 removeAllObjects];

  v3 = [*(a1 + 32) requestStore];
  [v3 clearCache];
}

void sub_100022280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000222A0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000222B8(uint64_t a1)
{
  v6 = [*(a1 + 32) requestItems];
  v2 = [*(a1 + 40) uniqueIdentifier];
  v3 = [v6 objectForKeyedSubscript:v2];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

id sub_10002233C(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) requestItems];
  v4 = [*(a1 + 40) uniqueIdentifier];
  [v3 setObject:v2 forKeyedSubscript:v4];

  v5 = *(a1 + 32);

  return [v5 _saveChanges];
}

void sub_100022FAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100022FD8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100022FF0(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) _retrieveFile];

  return _objc_release_x1();
}

uint64_t sub_100025DEC(uint64_t a1, void *a2)
{
  v3 = +[APLogConfig sharedDaemonConfig];
  if (!v3)
  {
    v3 = +[APLogConfig sharedConfig];
  }

  v4 = [v3 OSLogObject];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v24 = objc_opt_class();
    v5 = v24;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Starting reset approver account task", buf, 0xCu);
  }

  +[BiometricsHandler reset];
  [APDefaults setIsApprover:0];
  v6 = +[ApproverStore sharedStore];
  [v6 clearRequests];

  v7 = +[LocalNotificationHandler sharedHandler];
  v8 = [v7 presentedRequests];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        if ([v14 status] == -1)
        {
          v15 = +[LocalNotificationHandler sharedHandler];
          v16 = [v14 requestIdentifier];
          [v15 dismissNotificationWithIdentifier:v16];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  if (a2)
  {
    *a2 = 0;
  }

  return 1;
}

uint64_t sub_1000260AC(uint64_t a1, void *a2)
{
  v3 = +[APLogConfig sharedDaemonConfig];
  if (!v3)
  {
    v3 = +[APLogConfig sharedConfig];
  }

  v4 = [v3 OSLogObject];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v24 = objc_opt_class();
    v5 = v24;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Starting reset requester account task", buf, 0xCu);
  }

  v6 = +[RequesterStore sharedStore];
  [v6 clearRequests];

  [APDefaults setIsRequester:0];
  v7 = +[LocalNotificationHandler sharedHandler];
  v8 = [v7 presentedRequests];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        if ([v14 status] == 1 || !objc_msgSend(v14, "status"))
        {
          v15 = +[LocalNotificationHandler sharedHandler];
          v16 = [v14 requestIdentifier];
          [v15 dismissNotificationWithIdentifier:v16];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  if (a2)
  {
    *a2 = 0;
  }

  return 1;
}

void sub_100026A54(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5 && ([v5 ams_DSID], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    v8 = +[APLogConfig sharedDaemonConfig];
    if (!v8)
    {
      v8 = +[APLogConfig sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v19 = objc_opt_class();
      v10 = v19;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: Pruning existing Screen Time Exceptions...", buf, 0xCu);
    }

    v11 = [v5 ams_DSID];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100026CBC;
    v16[3] = &unk_100055738;
    v12 = *(a1 + 40);
    v16[4] = *(a1 + 32);
    v17 = v12;
    [STExceptionApp fetchExceptionsForRequesterDSID:v11 completionHandler:v16];
  }

  else
  {
    v13 = +[APLogConfig sharedDaemonConfig];
    if (!v13)
    {
      v13 = +[APLogConfig sharedConfig];
    }

    v14 = [v13 OSLogObject];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v19 = objc_opt_class();
      v20 = 2112;
      v21 = v6;
      v15 = v19;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%{public}@: Error fetching account before fetching exception - %@", buf, 0x16u);
    }

    [*(a1 + 40) finishWithError:v6];
  }
}

void sub_100026CBC(uint64_t a1, void *a2)
{
  v53 = a2;
  v3 = +[ExceptionRequestStore sharedStore];
  v4 = [v3 getExceptionRequests];

  v5 = +[APLogConfig sharedDaemonConfig];
  if (!v5)
  {
    v5 = +[APLogConfig sharedConfig];
  }

  v6 = [v5 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = v7;
    *buf = 138543874;
    v71 = v7;
    v72 = 2048;
    v73 = [v4 count];
    v74 = 2048;
    v75 = [v53 count];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: Iterating %lu Cached Exception Requests VS %lu Screen Time App Exceptions", buf, 0x20u);
  }

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  obj = v4;
  v9 = [obj countByEnumeratingWithState:&v66 objects:v81 count:16];
  if (v9)
  {
    v11 = v9;
    v12 = *v67;
    *&v10 = 138544386;
    v50 = v10;
    v51 = *v67;
    v52 = a1;
    do
    {
      v13 = 0;
      v54 = v11;
      do
      {
        if (*v67 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v66 + 1) + 8 * v13);
        if ([v14 approvalStatus] == 1)
        {
          v64 = 0u;
          v65 = 0u;
          v62 = 0u;
          v63 = 0u;
          v15 = v53;
          v16 = [v15 countByEnumeratingWithState:&v62 objects:v80 count:16];
          if (!v16)
          {

LABEL_30:
            v31 = +[APLogConfig sharedDaemonConfig];
            if (!v31)
            {
              v31 = +[APLogConfig sharedConfig];
            }

            v32 = [v31 OSLogObject];
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              v33 = objc_opt_class();
              v61 = v33;
              v34 = [v14 bundleIdentifier];
              v35 = [v14 adamID];
              v36 = [v35 unsignedLongLongValue];
              [v14 distributorID];
              v38 = v37 = v14;
              v39 = [v37 ageRatingValue];
              v40 = [v39 unsignedLongValue];
              *buf = v50;
              v71 = v33;
              v72 = 2112;
              v73 = v34;
              v74 = 2048;
              v75 = v36;
              v76 = 2112;
              v77 = v38;
              v78 = 2048;
              v79 = v40;
              _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "%{public}@: !! Pruning Cached Exception - BundleID: %@, adamID: %lld, distributorID: %@, rating: %ld !!", buf, 0x34u);

              v11 = v54;
              v12 = v51;

              v14 = v37;
              a1 = v52;
            }

            v41 = +[ExceptionRequestStore sharedStore];
            v42 = [v14 uniqueIdentifier];
            [v41 removeExceptionRequestWithUniqueIdentifier:v42];

            goto LABEL_35;
          }

          v17 = v16;
          v56 = v13;
          v57 = v15;
          v60 = 0;
          v18 = *v63;
          v58 = v14;
          v59 = *v63;
          do
          {
            for (i = 0; i != v17; i = i + 1)
            {
              if (*v63 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v20 = *(*(&v62 + 1) + 8 * i);
              v21 = [v14 requesterDSID];
              v22 = [v20 requesterDSID];
              if ([v21 isEqualToNumber:v22])
              {
                v23 = [v14 adamID];
                v24 = [v23 longLongValue];
                if (v24 == [v20 adamID])
                {
                  v25 = [v14 bundleIdentifier];
                  v26 = [v20 bundleIdentifier];
                  if ([v25 isEqualToString:v26])
                  {
                    v27 = [v14 ageRatingValue];
                    v28 = [v27 unsignedLongValue];
                    v29 = v28 == [v20 ratingValue];
                    v15 = v57;
                    v30 = v29;

                    v14 = v58;
                    v60 |= v30;
                  }

                  v18 = v59;
                }
              }
            }

            v17 = [v15 countByEnumeratingWithState:&v62 objects:v80 count:16];
          }

          while (v17);

          v12 = v51;
          a1 = v52;
          v11 = v54;
          v13 = v56;
          if ((v60 & 1) == 0)
          {
            goto LABEL_30;
          }
        }

LABEL_35:
        v13 = v13 + 1;
      }

      while (v13 != v11);
      v11 = [obj countByEnumeratingWithState:&v66 objects:v81 count:16];
    }

    while (v11);
  }

  v43 = [*(a1 + 32) distributorID];

  if (v43)
  {
    v44 = +[ExceptionRequestStore sharedStore];
    v45 = [*(a1 + 32) distributorID];
    v46 = [v44 getExceptionRequestsWithDistributorID:v45];
  }

  else
  {
    v47 = [*(a1 + 32) bundleIdentifier];

    v48 = +[ExceptionRequestStore sharedStore];
    v44 = v48;
    if (!v47)
    {
      v49 = [v48 getExceptionRequests];
      goto LABEL_42;
    }

    v45 = [*(a1 + 32) bundleIdentifier];
    v46 = [v44 getExceptionRequestsWithBundleID:v45];
  }

  v49 = v46;

LABEL_42:
  [*(a1 + 40) finishWithResult:v49];
}

BOOL sub_100027434(uint64_t a1, void *a2)
{
  v3 = +[APLogConfig sharedDaemonConfig];
  if (!v3)
  {
    v3 = +[APLogConfig sharedConfig];
  }

  v4 = [v3 OSLogObject];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = *(a1 + 32);
    v7 = v5;
    v8 = [v6 requestIdentifier];
    v9 = [*(a1 + 32) action];
    *buf = 138543874;
    v53 = v5;
    v54 = 2114;
    v55 = v8;
    v56 = 2050;
    v57 = v9;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Starting update request task. Identifier: %{public}@, action: %{public}ld", buf, 0x20u);
  }

  v10 = +[LocalNotificationHandler sharedHandler];
  v11 = [*(a1 + 32) requestIdentifier];
  v12 = [v10 retrieveRequestWithIdentifier:v11];

  if (v12)
  {
    v13 = +[APLogConfig sharedDaemonConfig];
    if (!v13)
    {
      v13 = +[APLogConfig sharedConfig];
    }

    v14 = [v13 OSLogObject];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = objc_opt_class();
      *buf = 138543362;
      v53 = v15;
      v16 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: Retrieved request, dismissing notification", buf, 0xCu);
    }

    v17 = +[LocalNotificationHandler sharedHandler];
    v18 = [*(a1 + 32) requestIdentifier];
    [v17 dismissNotificationWithIdentifier:v18];
  }

  v47 = v12;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  while (1)
  {
    v22 = v19;
    v23 = [*(a1 + 32) action];
    v51 = v19;
    v24 = [UserProvider primaryiCloudUserWithAction:v23 keychainError:&v51];
    v19 = v51;

    v50 = v21;
    v25 = [v24 resultWithError:&v50];
    v26 = v50;

    if (!v25)
    {
      break;
    }

    v27 = +[APLogConfig sharedDaemonConfig];
    if (!v27)
    {
      v27 = +[APLogConfig sharedConfig];
    }

    v28 = [v27 OSLogObject];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = objc_opt_class();
      *buf = 138543362;
      v53 = v29;
      v30 = v29;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%{public}@: Retrieved primary iCloud user.", buf, 0xCu);
    }

    v31 = *(a1 + 32);
    v49 = v26;
    v32 = [v31 _serverRequestWithUser:v25 error:&v49];
    v33 = v49;

    if (!v32)
    {
      v21 = v33;
LABEL_26:

      v26 = v21;
      break;
    }

    v34 = +[APLogConfig sharedDaemonConfig];
    if (!v34)
    {
      v34 = +[APLogConfig sharedConfig];
    }

    v35 = [v34 OSLogObject];
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v36 = objc_opt_class();
      *buf = 138543362;
      v53 = v36;
      v37 = v36;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "%{public}@: Received server result.", buf, 0xCu);
    }

    v21 = [*(a1 + 32) _parseResult:v32];

    v38 = [v25 biometricsToken];
    v20 = v38 != 0;

    if (!v21 || !v38)
    {
      goto LABEL_26;
    }

    +[BiometricsHandler removeToken];

    v20 = 1;
  }

  if (v47 && v26)
  {
    v39 = +[APLogConfig sharedDaemonConfig];
    if (!v39)
    {
      v39 = +[APLogConfig sharedConfig];
    }

    v40 = [v39 OSLogObject];
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      v41 = objc_opt_class();
      v42 = v41;
      v43 = AMSLogableError();
      *buf = 138543618;
      v53 = v41;
      v54 = 2114;
      v55 = v43;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "%{public}@: Encountered error, presenting notification. error = %{public}@", buf, 0x16u);
    }

    v44 = +[LocalNotificationHandler sharedHandler];
    [v44 presentNotificationWithRequest:v47 silently:1];
  }

  [*(a1 + 32) _enqueueMetricsWithKeychainError:v19 usedBiometrics:v20 request:v47 error:v26];
  if (a2)
  {
    v45 = v26;
    *a2 = v26;
  }

  return v26 == 0;
}

void sub_1000280CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2 || a3)
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);

    [v5 enqueueEvent:v6];
  }

  else
  {
    v4 = [APMetricsEvent nonIdentifiableMetricsFieldsForAccount:a2];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000281B4;
    v7[3] = &unk_100055760;
    v8 = *(a1 + 40);
    v9 = *(a1 + 32);
    [v4 addFinishBlock:v7];
  }
}

id sub_1000281B4(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2 && !a3)
  {
    v4 = a2;
    v5 = [v4 objectForKeyedSubscript:@"userId"];
    v6 = [v4 objectForKeyedSubscript:@"xpAccountsMatch"];
    v7 = [v4 objectForKeyedSubscript:@"xpUserIdSyncState"];
    v8 = [v4 objectForKeyedSubscript:@"clientId"];

    [*(a1 + 32) setProperty:0 forBodyKey:@"dsId"];
    [*(a1 + 32) setProperty:v5 forBodyKey:@"userId"];
    [*(a1 + 32) setProperty:v8 forBodyKey:@"clientId"];
    [*(a1 + 32) setProperty:kUserIDNamespace forBodyKey:@"userNs"];
    [*(a1 + 32) setProperty:v6 forBodyKey:@"xpAccountsMatch"];
    [*(a1 + 32) setProperty:v7 forBodyKey:@"xpUserIdSyncState"];
    [*(a1 + 32) setTopic:@"xp_ase_payments/appstore_payments_ue"];
  }

  v10 = *(a1 + 32);
  v9 = *(a1 + 40);

  return [v9 enqueueEvent:v10];
}

void sub_100028F40(id a1)
{
  v1 = [URLSession alloc];
  v4 = +[NSURLSessionConfiguration defaultSessionConfiguration];
  v2 = [(URLSession *)v1 initWithConfiguration:v4];
  v3 = qword_100063D48;
  qword_100063D48 = v2;
}

void sub_10002901C(id a1)
{
  qword_100063D58 = objc_alloc_init(URLSessionHandler);

  _objc_release_x1();
}

id sub_1000293FC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 username];
  [*(a1 + 32) setPreviousLocalApprovalUsername:v4];

  v5 = [AMSPromise promiseWithResult:v3];

  return v5;
}

uint64_t sub_100029A30()
{
  v0 = type metadata accessor for Log();
  sub_10002DC04(v0, qword_100063E38);
  sub_100029B18(v0, qword_100063E38);
  return Log.init(subsystem:category:)();
}

uint64_t sub_100029AB4()
{
  if (qword_100063D60 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Log();

  return sub_100029B18(v0, qword_100063E38);
}

uint64_t sub_100029B18(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100029B5C()
{
  v0 = objc_allocWithZone(type metadata accessor for ATQuestion.Topic());
  result = ATQuestion.Topic.init(rawValue:)();
  qword_100063E50 = result;
  return result;
}

uint64_t *sub_100029BAC()
{
  if (qword_100063D68 != -1)
  {
    swift_once();
  }

  return &qword_100063E50;
}

id sub_100029BFC()
{
  result = [objc_allocWithZone(type metadata accessor for AskToWrapper()) init];
  qword_100063E58 = result;
  return result;
}

uint64_t sub_100029C88()
{
  v1 = (v0 + OBJC_IVAR____TtC19AskPermissionDaemon12AskToWrapper_completionHandler);
  swift_beginAccess();
  v2 = *v1;
  sub_100029CE4(*v1, v1[1]);
  return v2;
}

uint64_t sub_100029CE4(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100029CF4(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC19AskPermissionDaemon12AskToWrapper_completionHandler);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_100029D54(v6, v7);
}

uint64_t sub_100029D54(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100029DC8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100029E68;

  return sub_10002CF70();
}

uint64_t sub_100029E68(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_10002A0D0(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10002A178;

  return sub_10002CF70();
}

uint64_t sub_10002A178(char a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v3[2](v3, a1 & 1);
  _Block_release(v3);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_10002A2A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 472) = v20;
  *(v9 + 480) = v8;
  *(v9 + 464) = v19;
  *(v9 + 432) = v17;
  *(v9 + 448) = v18;
  *(v9 + 400) = v15;
  *(v9 + 416) = v16;
  *(v9 + 368) = v13;
  *(v9 + 384) = v14;
  *(v9 + 352) = a7;
  *(v9 + 360) = a8;
  *(v9 + 336) = a5;
  *(v9 + 344) = a6;
  *(v9 + 320) = a3;
  *(v9 + 328) = a4;
  *(v9 + 304) = a1;
  *(v9 + 312) = a2;
  sub_10002D464(&qword_100063A80, &qword_1000428C8);
  *(v9 + 488) = swift_task_alloc();
  sub_10002D464(&qword_100063A88, &unk_1000428D0);
  *(v9 + 496) = swift_task_alloc();
  v10 = type metadata accessor for UUID();
  *(v9 + 504) = v10;
  *(v9 + 512) = *(v10 - 8);
  *(v9 + 520) = swift_task_alloc();
  type metadata accessor for LogInterpolation.StringInterpolation();
  *(v9 + 528) = swift_task_alloc();

  return (_swift_task_switch)(sub_10002A430, 0, 0);
}

uint64_t sub_10002A430()
{
  v1 = *(v0 + 472);
  v2 = *(v0 + 464);
  v3 = *((swift_isaMask & **(v0 + 480)) + 0x60);

  v3(v2, v1);
  if (qword_100063D60 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Log();
  *(v0 + 536) = sub_100029B18(v4, qword_100063E38);
  *(v0 + 544) = sub_10002D464(&qword_100063A90, &unk_100042A00);
  v5 = *(type metadata accessor for LogInterpolation() - 8);
  *(v0 + 552) = *(v5 + 72);
  *(v0 + 608) = *(v5 + 80);
  *(swift_allocObject() + 16) = xmmword_100042890;
  LogInterpolation.init(stringLiteral:)();
  Log.default(_:)();

  if (qword_100063D68 != -1)
  {
    swift_once();
  }

  v53 = *(v0 + 520);
  v7 = *(v0 + 504);
  v6 = *(v0 + 512);
  v52 = *(v0 + 448);
  v51 = *(v0 + 344);
  v49 = *(v0 + 336);
  v47 = *(v0 + 320);
  v48 = *(v0 + 328);
  v8 = *(v0 + 304);
  v9 = *(v0 + 312);
  v10 = qword_100063E50;
  *(swift_allocObject() + 16) = xmmword_100042890;
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v11._countAndFlagsBits = 0xD000000000000013;
  v11._object = 0x800000010004DA50;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v11);
  *(v0 + 40) = v7;
  v12 = sub_10002D4AC((v0 + 16));
  v50 = *(v6 + 16);
  v50(v12, v8, v7);
  LogInterpolation.StringInterpolation.appendInterpolation(_:)();
  sub_10002DA64(v0 + 16, &qword_100063A98, &qword_1000428E0);
  v13._countAndFlagsBits = 8236;
  v13._object = 0xE200000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v13);
  type metadata accessor for APExceptionRequestType();
  *(v0 + 72) = v14;
  *(v0 + 48) = v9;
  LogInterpolation.StringInterpolation.appendInterpolation(_:)();
  sub_10002DA64(v0 + 48, &qword_100063A98, &qword_1000428E0);
  v15._countAndFlagsBits = 8236;
  v15._object = 0xE200000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v15);
  *(v0 + 104) = type metadata accessor for ATQuestion.Topic();
  *(v0 + 80) = v10;
  v46 = v10;
  LogInterpolation.StringInterpolation.appendInterpolation(_:)();
  sub_10002DA64(v0 + 80, &qword_100063A98, &qword_1000428E0);
  v16._countAndFlagsBits = 8236;
  v16._object = 0xE200000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v16);
  *(v0 + 136) = &type metadata for String;
  *(v0 + 112) = v47;
  *(v0 + 120) = v48;

  LogInterpolation.StringInterpolation.appendInterpolation(_:)();
  sub_10002DA64(v0 + 112, &qword_100063A98, &qword_1000428E0);
  v17._countAndFlagsBits = 8236;
  v17._object = 0xE200000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v17);
  *(v0 + 168) = &type metadata for String;
  *(v0 + 144) = v49;
  *(v0 + 152) = v51;

  LogInterpolation.StringInterpolation.appendInterpolation(_:)();
  sub_10002DA64(v0 + 144, &qword_100063A98, &qword_1000428E0);
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v18);
  LogInterpolation.init(stringInterpolation:)();
  Log.default(_:)();

  type metadata accessor for ATQuestion();
  v50(v53, v8, v7);
  v19 = v46;

  v20 = ATQuestion.__allocating_init(id:topic:title:summary:)();
  *(v0 + 560) = v20;

  ATQuestion.associatedContentBundleIdentifier.setter();

  ATQuestion.responseUIExtensionBundleIdentifier.setter();
  if (v52)
  {
    v21 = *(v0 + 496);
    v22 = *(v0 + 448);
    *(swift_allocObject() + 16) = xmmword_100042890;
    v23 = v22;
    LogInterpolation.init(stringLiteral:)();
    Log.default(_:)();

    *v21 = sub_10002B174();
    v24 = enum case for ATQuestion.TopicMetadata.contentAgeRestrictionException(_:);
    v25 = type metadata accessor for ATQuestion.TopicMetadata();
    v26 = *(v25 - 8);
    (*(v26 + 104))(v21, v24, v25);
    (*(v26 + 56))(v21, 0, 1, v25);
    ATQuestion.askToTopicMetadata.setter();
  }

  *(swift_allocObject() + 16) = xmmword_100042890;
  LogInterpolation.init(stringLiteral:)();
  Log.default(_:)();

  v27 = type metadata accessor for ATAnswerChoice();
  v28 = objc_allocWithZone(v27);

  v29 = ATAnswerChoice.init(id:title:completedRequestTitle:)();
  *(v0 + 568) = v29;
  ATAnswerChoice.kind.setter();
  v30 = v29;
  v54 = v20;
  v31 = ATQuestion.answerChoices.modify();
  v33 = v32;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v31(v0 + 176, 0);
  v34 = objc_allocWithZone(v27);

  v35 = ATAnswerChoice.init(id:title:completedRequestTitle:)();
  *(v0 + 576) = v35;
  ATAnswerChoice.kind.setter();
  v36 = v35;
  v37 = ATQuestion.answerChoices.modify();
  v39 = v38;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*v39 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v39 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v40 = *(v0 + 488);
  v41 = *(v0 + 456);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v37(v0 + 208, 0);
  sub_10002D884(v41, v40, &qword_100063A80, &qword_1000428C8);
  ATQuestion.fallbackURL.setter();
  *(swift_allocObject() + 16) = xmmword_100042890;
  LogInterpolation.init(stringLiteral:)();
  Log.default(_:)();

  type metadata accessor for ATDispatchCenter();
  v42 = static ATDispatchCenter.shared.getter();
  sub_10002D560(v42, v43);
  swift_unknownObjectRetain();
  ATDispatchCenter.delegate.setter();

  *(swift_allocObject() + 16) = xmmword_100042890;
  LogInterpolation.init(stringLiteral:)();
  Log.default(_:)();

  *(v0 + 584) = static ATDispatchCenter.shared.getter();
  v44 = swift_task_alloc();
  *(v0 + 592) = v44;
  *v44 = v0;
  v44[1] = sub_10002ADBC;

  return ATDispatchCenter.send(_:to:)(v54, 0);
}

uint64_t sub_10002ADBC()
{
  v2 = *v1;
  *(*v1 + 600) = v0;

  if (v0)
  {
    v3 = sub_10002AF8C;
  }

  else
  {

    v3 = sub_10002AED8;
  }

  return (_swift_task_switch)(v3, 0, 0);
}

uint64_t sub_10002AED8()
{
  v1 = *(v0 + 576);
  v2 = *(v0 + 560);

  v3 = *(v0 + 8);

  return v3(1);
}

uint64_t sub_10002AF8C()
{
  v1 = *(v0 + 576);
  v2 = *(v0 + 568);
  v10 = *(v0 + 560);

  *(swift_allocObject() + 16) = xmmword_100042890;
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v3._object = 0x800000010004DAF0;
  v3._countAndFlagsBits = 0xD000000000000022;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v3);
  swift_getErrorValue();
  v4 = *(v0 + 272);
  v5 = *(v0 + 280);
  *(v0 + 264) = v5;
  v6 = sub_10002D4AC((v0 + 240));
  (*(*(v5 - 8) + 16))(v6, v4, v5);
  LogInterpolation.StringInterpolation.appendInterpolation(_:)();
  sub_10002DA64(v0 + 240, &qword_100063A98, &qword_1000428E0);
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v7);
  LogInterpolation.init(stringInterpolation:)();
  Log.error(_:)();

  swift_willThrow();

  v8 = *(v0 + 8);

  return v8(0);
}

id sub_10002B174()
{
  v1 = v0;
  v2 = sub_10002D464(&qword_100063A80, &qword_1000428C8);
  v3 = __chkstk_darwin(v2 - 8);
  v61 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v60 = &v60 - v6;
  v7 = __chkstk_darwin(v5);
  v9 = &v60 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v60 - v11;
  __chkstk_darwin(v10);
  v14 = &v60 - v13;
  v15 = [objc_allocWithZone(type metadata accessor for ATContentAgeRestrictionExceptionMetadata()) init];
  v16 = [v1 appBundleID];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  ATContentAgeRestrictionExceptionMetadata.appBundleID.setter();
  v17 = [v1 appName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  ATContentAgeRestrictionExceptionMetadata.appName.setter();
  v18 = [v1 requestedAppIconURL];
  if (v18)
  {
    v19 = v18;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v20 = type metadata accessor for URL();
    (*(*(v20 - 8) + 56))(v14, 0, 1, v20);
  }

  else
  {
    v21 = type metadata accessor for URL();
    (*(*(v21 - 8) + 56))(v14, 1, 1, v21);
  }

  ATContentAgeRestrictionExceptionMetadata.requestedAppIconURL.setter();
  [v1 appVersionID];
  ATContentAgeRestrictionExceptionMetadata.appVersionID.setter();
  [v1 appItemID];
  ATContentAgeRestrictionExceptionMetadata.appItemID.setter();
  v22 = [v1 distributorID];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  ATContentAgeRestrictionExceptionMetadata.distributorID.setter();
  v23 = [v1 distributorName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  ATContentAgeRestrictionExceptionMetadata.distributorName.setter();
  v24 = [v1 developerID];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  ATContentAgeRestrictionExceptionMetadata.developerID.setter();
  v25 = [v1 developerName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  ATContentAgeRestrictionExceptionMetadata.developerName.setter();
  [v1 isWebApp];
  ATContentAgeRestrictionExceptionMetadata.isWebApp.setter();
  [v1 isDistributor];
  ATContentAgeRestrictionExceptionMetadata.isDistributor.setter();
  v26 = [v1 askerName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  ATContentAgeRestrictionExceptionMetadata.askerName.setter();
  v27 = [v1 ageRatingString];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  ATContentAgeRestrictionExceptionMetadata.ageRatingString.setter();
  v28 = [v1 distributorType];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  ATContentAgeRestrictionExceptionMetadata.distributorType.setter();
  v29 = [v1 distributorBundleID];
  if (v29)
  {
    v30 = v29;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  ATContentAgeRestrictionExceptionMetadata.distributorBundleID.setter();
  v31 = [v1 distributorDomain];
  if (v31)
  {
    v32 = v31;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  ATContentAgeRestrictionExceptionMetadata.distributorDomain.setter();
  v33 = [v1 distributorIconURL];
  if (v33)
  {
    v34 = v33;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v35 = 0;
  }

  else
  {
    v35 = 1;
  }

  v36 = type metadata accessor for URL();
  v37 = *(*(v36 - 8) + 56);
  v38 = 1;
  v37(v12, v35, 1, v36);
  ATContentAgeRestrictionExceptionMetadata.distributorIconURL.setter();
  v39 = [v1 installTypeRawValue];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  ATContentAgeRestrictionExceptionMetadata.installTypeRawValue.setter();
  v40 = [v1 accountID];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  ATContentAgeRestrictionExceptionMetadata.accountID.setter();
  v41 = [v1 url];
  if (v41)
  {
    v42 = v41;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v38 = 0;
  }

  v37(v9, v38, 1, v36);
  ATContentAgeRestrictionExceptionMetadata.url.setter();
  v43 = [v1 oAuthToken];
  if (v43)
  {
    v44 = v43;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  ATContentAgeRestrictionExceptionMetadata.oAuthToken.setter();
  v45 = [v1 installVerificationToken];
  if (v45)
  {
    v46 = v45;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  ATContentAgeRestrictionExceptionMetadata.installVerificationToken.setter();
  v47 = [v1 clientID];
  if (v47)
  {
    v48 = v47;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  ATContentAgeRestrictionExceptionMetadata.clientID.setter();
  v49 = [v1 authenticationContextData];
  if (v49)
  {
    v50 = v49;
    static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v51 = v60;
  ATContentAgeRestrictionExceptionMetadata.authenticationContextData.setter();
  [v1 userInitiatedOverride];
  ATContentAgeRestrictionExceptionMetadata.userInitiatedOverride.setter();
  [v1 allowAccountPrompt];
  ATContentAgeRestrictionExceptionMetadata.allowAccountPrompt.setter();
  [v1 originallyRequestedVersionID];
  ATContentAgeRestrictionExceptionMetadata.originallyRequestedVersionID.setter();
  [v1 itemIDFromButtonConfiguration];
  ATContentAgeRestrictionExceptionMetadata.itemIDFromButtonConfiguration.setter();
  v52 = [v1 referrer];
  if (v52)
  {
    v53 = v52;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v54 = 0;
  }

  else
  {
    v54 = 1;
  }

  v55 = v61;
  v56 = 1;
  v37(v51, v54, 1, v36);
  ATContentAgeRestrictionExceptionMetadata.referrer.setter();
  v57 = [v1 appShareURL];
  if (v57)
  {
    v58 = v57;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v56 = 0;
  }

  v37(v55, v56, 1, v36);
  ATContentAgeRestrictionExceptionMetadata.appShareURL.setter();
  return v15;
}

uint64_t sub_10002BBF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, const void *a13, const void *a14, void *a15)
{
  v15[2] = a11;
  v15[3] = a15;
  v44 = type metadata accessor for URL();
  v16 = *(v44 - 8);
  v17 = swift_task_alloc();
  v15[4] = v17;
  sub_10002D464(&qword_100063A80, &qword_1000428C8);
  v18 = swift_task_alloc();
  v15[5] = v18;
  v19 = type metadata accessor for UUID();
  v15[6] = v19;
  v15[7] = *(v19 - 8);
  v20 = swift_task_alloc();
  v15[8] = v20;
  v37 = _Block_copy(a13);
  v15[9] = _Block_copy(a14);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v42 = v22;
  v43 = v21;
  v15[10] = v22;
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v40 = v24;
  v41 = v23;
  v15[11] = v24;
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v38 = v26;
  v39 = v25;
  v15[12] = v26;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15[13] = v27;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15[14] = v28;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15[15] = v29;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15[16] = v30;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15[17] = v31;
  if (a12)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v16 + 32))(v18, v17, v44);
    v32 = 0;
  }

  else
  {
    v32 = 1;
  }

  (*(v16 + 56))(v18, v32, 1, v44);
  v33 = swift_allocObject();
  v15[18] = v33;
  *(v33 + 16) = v37;
  a15;
  v34 = a11;
  v35 = swift_task_alloc();
  v15[19] = v35;
  *v35 = v15;
  v35[1] = sub_10002BF9C;

  return sub_10002A2A0(v20, a2, v43, v42, v41, v40, v39, v38);
}

uint64_t sub_10002BF9C(char a1)
{
  v2 = *v1;
  v3 = *v1;
  v12 = (*v1)[3];
  v13 = (*v1)[2];
  v15 = *v1;

  v4 = v2[9];
  v5 = v2[8];
  v6 = v2[7];
  v7 = v2[6];
  sub_10002DA64(v2[5], &qword_100063A80, &qword_1000428C8);
  (*(v6 + 8))(v5, v7);
  if (v14)
  {
    v8 = _convertErrorToNSError(_:)();

    (*(v4 + 16))(v4, 0, v8);
  }

  else
  {
    (*(v4 + 16))(v4, a1 & 1, 0);
  }

  _Block_release(v3[9]);

  v9 = v15[1];

  return v9();
}

void sub_10002C30C(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = _convertErrorToNSError(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

id sub_10002C3CC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AskToWrapper();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void (*sub_10002C414(char a1))(uint64_t, void)
{
  v3 = type metadata accessor for LogInterpolation.StringInterpolation();
  __chkstk_darwin(v3 - 8);
  if (qword_100063D60 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Log();
  sub_100029B18(v4, qword_100063E38);
  sub_10002D464(&qword_100063A90, &unk_100042A00);
  type metadata accessor for LogInterpolation();
  *(swift_allocObject() + 16) = xmmword_100042890;
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v5._object = 0x800000010004DB40;
  v5._countAndFlagsBits = 0xD000000000000047;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v5);
  v14 = &type metadata for Bool;
  v6 = a1 & 1;
  v13[0] = v6;
  LogInterpolation.StringInterpolation.appendInterpolation(_:)();
  sub_10002DA64(v13, &qword_100063A98, &qword_1000428E0);
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v7);
  LogInterpolation.init(stringInterpolation:)();
  Log.default(_:)();

  result = (*((swift_isaMask & *v1) + 0x58))(v8);
  if (result)
  {
    v11 = result;
    v12 = v10;
    result(v6, 0);
    return sub_100029D54(v11, v12);
  }

  return result;
}

uint64_t sub_10002C658(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_10002DC68;

  return v6();
}

uint64_t sub_10002C740(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_10002C828;

  return v7();
}

uint64_t sub_10002C828()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10002C91C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10002D464(&qword_100063AD8, &qword_100042A90);
  __chkstk_darwin(v9 - 8);
  v11 = v23 - v10;
  sub_10002D884(a3, v23 - v10, &qword_100063AD8, &qword_100042A90);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_10002DA64(v11, &qword_100063AD8, &qword_100042A90);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  TaskPriority.rawValue.getter();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = dispatch thunk of Actor.unownedExecutor.getter();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = String.utf8CString.getter() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_10002DA64(a3, &qword_100063AD8, &qword_100042A90);

    return v21;
  }

LABEL_8:
  sub_10002DA64(a3, &qword_100063AD8, &qword_100042A90);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_10002CC18(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10002CD10;

  return v6(a1);
}

uint64_t sub_10002CD10()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

Swift::Int sub_10002CE08(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10002D464(&qword_100063AE0, qword_1000429C8);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

uint64_t sub_10002CF70()
{
  type metadata accessor for LogInterpolation.StringInterpolation();
  *(v0 + 80) = swift_task_alloc();

  return (_swift_task_switch)(sub_10002CFFC, 0, 0);
}

uint64_t sub_10002CFFC()
{
  v1 = sub_10002CE08(&off_1000557E0);
  v0[11] = v1;
  sub_10002DBB0(&unk_100055800);
  type metadata accessor for ATDispatchCenter();
  v0[12] = static ATDispatchCenter.shared.getter();
  v2 = swift_task_alloc();
  v0[13] = v2;
  *v2 = v0;
  v2[1] = sub_10002D0CC;

  return ATDispatchCenter.canAsk(to:requiredCapabilities:)(0, v1);
}

uint64_t sub_10002D0CC()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 112) = v0;

  if (!v0)
  {
    v4 = *(v2 + 96);

    v5 = *(v3 + 8);

    __asm { BRAA            X2, X16 }
  }

  return (_swift_task_switch)(sub_10002D230, 0, 0);
}

uint64_t sub_10002D230()
{
  v1 = v0[12];

  if (qword_100063D60 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Log();
  sub_100029B18(v2, qword_100063E38);
  sub_10002D464(&qword_100063A90, &unk_100042A00);
  type metadata accessor for LogInterpolation();
  *(swift_allocObject() + 16) = xmmword_100042890;
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v3._object = 0x800000010004DD10;
  v3._countAndFlagsBits = 0xD00000000000001DLL;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v3);
  swift_getErrorValue();
  v4 = v0[6];
  v5 = v0[7];
  v0[5] = v5;
  v6 = sub_10002D4AC(v0 + 2);
  (*(*(v5 - 8) + 16))(v6, v4, v5);
  LogInterpolation.StringInterpolation.appendInterpolation(_:)();
  sub_10002DA64((v0 + 2), &qword_100063A98, &qword_1000428E0);
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v7);
  LogInterpolation.init(stringInterpolation:)();
  Log.error(_:)();

  v8 = v0[1];

  return v8(0);
}

uint64_t sub_10002D464(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t *sub_10002D4AC(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void type metadata accessor for APExceptionRequestType()
{
  if (!qword_100063AD0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_100063AD0);
    }
  }
}

unint64_t sub_10002D560(uint64_t a1, uint64_t a2)
{
  result = qword_100063AA0;
  if (!qword_100063AA0)
  {
    type metadata accessor for AskToWrapper();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063AA0);
  }

  return result;
}

void sub_10002D5D8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002DC68;

  JUMPOUT(0x10002BBF0);
}

uint64_t sub_10002D6F8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10002DC68;

  return sub_10002C658(v2, v3, v4);
}

uint64_t sub_10002D7B8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002DC68;

  return sub_10002C740(a1, v4, v5, v6);
}

uint64_t sub_10002D884(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10002D464(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10002D8EC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002DC68;

  return sub_10002CC18(a1, v4);
}

uint64_t sub_10002D9A4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002C828;

  return sub_10002CC18(a1, v4);
}

uint64_t sub_10002DA64(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10002D464(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10002DAC4()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10002C828;

  return sub_10002A0D0(v2);
}

uint64_t sub_10002DB70()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t *sub_10002DC04(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

NSString sub_10002DC6C()
{
  result = String._bridgeToObjectiveC()();
  qword_100063E60 = result;
  return result;
}

id sub_10002DD8C(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for AskToListenerObjc();
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_10002DDF4(void *a1)
{
  v2 = type metadata accessor for LogInterpolation.StringInterpolation();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for Log();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v96 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v94 = &v89 - v8;
  v9 = __chkstk_darwin(v7);
  v95 = &v89 - v10;
  __chkstk_darwin(v9);
  v12 = &v89 - v11;
  v13 = sub_100029AB4();
  v14 = *(v4 + 16);
  v99 = v13;
  v101 = v14;
  (v14)(v12);
  v15 = sub_10002D464(&qword_100063A90, &unk_100042A00);
  v16 = *(type metadata accessor for LogInterpolation() - 8);
  v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v104 = *(v16 + 72);
  v100 = v15;
  v18 = swift_allocObject();
  v93 = xmmword_100042890;
  *(v18 + 16) = xmmword_100042890;
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v19._countAndFlagsBits = 0xD000000000000025;
  v19._object = 0x800000010004DD80;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v19);
  v107 = type metadata accessor for ATResponse();
  *&aBlock = a1;
  v20 = a1;
  LogInterpolation.StringInterpolation.appendInterpolation(_:)();
  sub_10002FF70(&aBlock);
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v21);
  LogInterpolation.init(stringInterpolation:)();
  Log.default(_:)();

  v22 = *(v4 + 8);
  v98 = v3;
  v102 = v22;
  v103 = v4 + 8;
  v22(v12, v3);
  v23 = objc_opt_self();
  v24 = [v23 sharedStore];
  v25 = ATResponse.originalQuestion.getter();
  ATQuestion.id.getter();

  v26 = String._bridgeToObjectiveC()();

  v27 = [v24 getExceptionRequestWithUniqueIdentifier:v26];

  if (!v27)
  {
    return;
  }

  v28 = v20;
  if (ATResponse.isApproval.getter())
  {
    v29 = v98;
    v101(v12, v99, v98);
    *(swift_allocObject() + 16) = v93;
    LogInterpolation.init(stringLiteral:)();
    Log.default(_:)();

    v102(v12, v29);
    v30 = [v27 bundleIdentifier];
    if (v30)
    {
      v31 = v30;
      v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = v33;
      v35 = [v27 adamID];
      if (v35)
      {
        v36 = v35;
        v37 = [v27 distributorID];
        if (v37)
        {
          v38 = v37;
          v96 = v34;
          v94 = v32;
          *&v93 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v40 = v39;
          v41 = [v27 ageRatingValue];
          if (v41)
          {
            v42 = v41;
            v92 = v40;
            v43 = [v27 requesterDSID];
            if (v43)
            {
              v95 = v28;
              v44 = v43;
              v45 = v42;
              v46 = [objc_allocWithZone(STExceptionApp) initWithRequesterDSID:v44 bundleIdentifier:v31 adamID:objc_msgSend(v36 distributorID:"unsignedLongLongValue") ratingValue:{v38, objc_msgSend(v42, "unsignedLongLongValue")}];

              v47 = [v27 uniqueIdentifier];
              v48 = v96;
              if (v47)
              {
                v49 = v27;
                v50 = v47;
                v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v53 = v52;

                v27 = v49;
              }

              else
              {
                v51 = 0;
                v53 = 0;
              }

              v79 = v92;
              v80 = swift_allocObject();
              v81 = v94;
              v80[2] = v97;
              v80[3] = v81;
              v80[4] = v48;
              v80[5] = v36;
              v82 = v45;
              v83 = v93;
              v80[6] = v45;
              v80[7] = v83;
              v80[8] = v79;
              v80[9] = v51;
              v84 = v95;
              v80[10] = v53;
              v80[11] = v84;
              v108 = sub_100030AE0;
              v109 = v80;
              *&aBlock = _NSConcreteStackBlock;
              *(&aBlock + 1) = 1107296256;
              v106 = sub_10002FEA4;
              v107 = &unk_100055A78;
              v85 = _Block_copy(&aBlock);
              v86 = v84;

              v87 = v36;
              v88 = v82;

              [v46 addExceptionWithCompletionHandler:v85];

              _Block_release(v85);
              return;
            }
          }

          else
          {
          }

          v31 = v38;
        }

        else
        {
        }

        v29 = v98;
      }

      else
      {
      }
    }

    v101(v95, v99, v29);
    *(swift_allocObject() + 16) = xmmword_1000429E0;
    v107 = type metadata accessor for AskToListener();
    *&aBlock = v97;

    v76 = AMSLogKey();
    if (v76)
    {
      v77 = v76;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_10002FFD8(&aBlock);
    LogInterpolation.init(stringLiteral:)();
    v78 = v95;
    Log.error(_:)();

    v102(v78, v29);
  }

  else
  {
    v95 = v20;
    *&v93 = v27;
    v54 = v94;
    v101(v94, v99, v98);
    v92 = v17 + 2 * v104;
    v55 = swift_allocObject();
    v91 = xmmword_1000429E0;
    *(v55 + 16) = xmmword_1000429E0;
    v90 = type metadata accessor for AskToListener();
    v107 = v90;
    *&aBlock = v97;

    v56 = AMSLogKey();
    if (v56)
    {
      v57 = v56;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_10002FFD8(&aBlock);
    LogInterpolation.init(stringLiteral:)();
    Log.default(_:)();

    v58 = v54;
    v59 = v98;
    v102(v58, v98);
    v60 = v93;
    [v93 setApprovalStatus:2];
    v61 = [v23 sharedStore];
    [v61 storeRequest:v60];

    v101(v96, v99, v59);
    *(swift_allocObject() + 16) = v91;
    v107 = v90;
    *&aBlock = v97;

    v62 = AMSLogKey();
    if (v62)
    {
      v63 = v62;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_10002FFD8(&aBlock);
    LogInterpolation.init(stringLiteral:)();
    v64 = v96;
    Log.default(_:)();

    v102(v64, v59);
    v65 = sub_1000309C0(&_swiftEmptyArrayStorage);
    v112 = v65;
    v66 = [v60 metadata];
    if (v66)
    {
      v67 = v66;
      v107 = sub_100030B38(0, &qword_100063AF0, APAskToAgeRestrictionMetadata_ptr);
      *&aBlock = v67;
      sub_100030AD0(&aBlock, v111);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v110 = v65;
      sub_100030660(v111, 0x617461646174656DLL, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
      v69 = v110;
    }

    else
    {
      sub_10003009C(0x617461646174656DLL, 0xE800000000000000, &aBlock);
      sub_10002FF70(&aBlock);
      v69 = v112;
    }

    v70 = ATResponse.isApproval.getter();
    v107 = &type metadata for Bool;
    LOBYTE(aBlock) = v70 & 1;
    sub_100030AD0(&aBlock, v111);
    v71 = swift_isUniquelyReferenced_nonNull_native();
    v110 = v69;
    sub_100030660(v111, 0x766F727070417369, 0xEA00000000006465, v71);
    v72 = v110;
    sub_100030B38(0, &qword_100063AE8, NSDistributedNotificationCenter_ptr);
    v73 = [swift_getObjCClassFromMetadata() defaultCenter];
    if (qword_100063E00 != -1)
    {
      swift_once();
    }

    v74 = qword_100063E60;
    sub_10002FBDC(v72);

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v73 postNotificationName:v74 object:0 userInfo:isa];
  }
}

void sub_10002EA84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void (*a6)(void, void), uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v132 = a8;
  v131 = a7;
  v134 = a5;
  v135 = a6;
  v14 = type metadata accessor for LogInterpolation.StringInterpolation();
  v15 = __chkstk_darwin(v14 - 8);
  v17 = &v114 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v20 = &v114 - v19;
  __chkstk_darwin(v18);
  v137 = &v114 - v21;
  v22 = type metadata accessor for Log();
  v23 = *(v22 - 8);
  v24 = __chkstk_darwin(v22);
  v25 = __chkstk_darwin(v24);
  __chkstk_darwin(v25);
  v27 = __chkstk_darwin(&v114 - v26);
  v28 = __chkstk_darwin(v27);
  v30 = &v114 - v29;
  v31 = __chkstk_darwin(v28);
  v36 = &v114 - v35;
  v138 = v23;
  if (a1)
  {
    swift_errorRetain();
    v37 = sub_100029AB4();
    (*(v23 + 16))(v30, v37, v22);
    sub_10002D464(&qword_100063A90, &unk_100042A00);
    type metadata accessor for LogInterpolation();
    *(swift_allocObject() + 16) = xmmword_1000429E0;
    v146 = type metadata accessor for AskToListener();
    *&v144 = a2;

    v38 = AMSLogKey();
    if (v38)
    {
      v39 = v38;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_10002FFD8(&v144);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v51._countAndFlagsBits = 0xD000000000000023;
    v51._object = 0x800000010004E010;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v51);
    swift_getErrorValue();
    v52 = v139;
    v53 = v140;
    v146 = v140;
    v54 = sub_10002D4AC(&v144);
    (*(*(v53 - 1) + 16))(v54, v52, v53);
    LogInterpolation.StringInterpolation.appendInterpolation(_:)();
    sub_10002FF70(&v144);
    v55._countAndFlagsBits = 0;
    v55._object = 0xE000000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v55);
    LogInterpolation.init(stringInterpolation:)();
    Log.error(_:)();

    (*(v138 + 8))(v30, v22);
    return;
  }

  *&v121 = a3;
  v120 = v31;
  *(&v121 + 1) = a4;
  v114 = v20;
  v115 = v34;
  v40 = v134;
  v41 = v135;
  v116 = v33;
  v118 = v32;
  v119 = v17;
  v42 = sub_100029AB4();
  v43 = *(v23 + 16);
  v128 = v42;
  v133 = v22;
  v130 = v23 + 16;
  v129 = v43;
  (v43)(v36);
  v44 = sub_10002D464(&qword_100063A90, &unk_100042A00);
  v45 = *(type metadata accessor for LogInterpolation() - 8);
  v46 = *(v45 + 80);
  v47 = (v46 + 32) & ~v46;
  v136 = *(v45 + 72);
  v124 = v46;
  v127 = v44;
  v125 = v47 + 2 * v136;
  v48 = swift_allocObject();
  v123 = xmmword_1000429E0;
  *(v48 + 16) = xmmword_1000429E0;
  v126 = v47;
  v122 = type metadata accessor for AskToListener();
  v146 = v122;
  *&v144 = a2;

  v49 = AMSLogKey();
  if (v49)
  {
    v50 = v49;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_10002FFD8(&v144);
  LogInterpolation.init(stringLiteral:)();
  Log.default(_:)();

  v56 = *(v138 + 8);
  v57 = v133;
  v138 += 8;
  v135 = v56;
  v56(v36, v133);
  v58 = objc_opt_self();
  v59 = [v58 sharedStore];
  v60 = String._bridgeToObjectiveC()();
  v61 = [v59 getExceptionRequestsWithBundleID:v60 adamID:v40 ratingValue:v41];

  v117 = a2;
  if (!v61)
  {
    v129(v115, v128, v57);
    *(swift_allocObject() + 16) = v123;
    v146 = v122;
    *&v144 = a2;

    v65 = AMSLogKey();
    if (v65)
    {
      v66 = v65;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v80 = v132;
    v81 = v131;
    static LogInterpolation.prefix(_:_:)();

    sub_10002FFD8(&v144);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v82._countAndFlagsBits = 0xD000000000000043;
    v82._object = 0x800000010004DF30;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v82);
    v146 = &type metadata for String;
    v144 = v121;

    LogInterpolation.StringInterpolation.appendInterpolation(_:)();
    sub_10002FF70(&v144);
    v83._object = 0x800000010004DF80;
    v83._countAndFlagsBits = 0xD000000000000011;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v83);
    v146 = &type metadata for String;
    *&v144 = v81;
    *(&v144 + 1) = v80;

    LogInterpolation.StringInterpolation.appendInterpolation(_:)();
    sub_10002FF70(&v144);
    v84._countAndFlagsBits = 0x44496D616461202CLL;
    v84._object = 0xEA0000000000203ALL;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v84);
    v85 = sub_100030B38(0, &qword_100063BC0, NSNumber_ptr);
    v146 = v85;
    *&v144 = v40;
    v86 = v40;
    LogInterpolation.StringInterpolation.appendInterpolation(_:)();
    sub_10002FF70(&v144);
    v87._countAndFlagsBits = 0x676E69746172202CLL;
    v87._object = 0xEF203A65756C6156;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v87);
    v146 = v85;
    *&v144 = v41;
    v88 = v41;
    LogInterpolation.StringInterpolation.appendInterpolation(_:)();
    sub_10002FF70(&v144);
    v89._countAndFlagsBits = 0;
    v89._object = 0xE000000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v89);
    LogInterpolation.init(stringInterpolation:)();
    v90 = v115;
    Log.error(_:)();

    v72 = v133;
    v135(v90, v133);
    v79 = a9;
    v78 = a10;
    if (!a10)
    {
      goto LABEL_31;
    }

    goto LABEL_28;
  }

  sub_100030B38(0, &qword_100063BD0, off_1000547B8);
  v62 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v129(v120, v128, v57);
  *(swift_allocObject() + 16) = v123;
  v146 = v122;
  *&v144 = a2;

  v63 = AMSLogKey();
  if (v63)
  {
    v64 = v63;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_10002FFD8(&v144);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v67._countAndFlagsBits = 0x676E697461647055;
  v67._object = 0xE900000000000020;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v67);
  v68 = (v62 >> 62);
  if (v62 >> 62)
  {
    v69 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v69 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v146 = &type metadata for Int;
  *&v144 = v69;
  LogInterpolation.StringInterpolation.appendInterpolation(_:)();
  sub_10002FF70(&v144);
  v70._countAndFlagsBits = 0xD000000000000019;
  v70._object = 0x800000010004DFF0;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v70);
  LogInterpolation.init(stringInterpolation:)();
  v71 = v120;
  Log.default(_:)();

  v72 = v133;
  v135(v71, v133);
  if (!v68)
  {
    v73 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v73)
    {
      goto LABEL_16;
    }

LABEL_25:

    v79 = a9;
    v78 = a10;
    if (!a10)
    {
      goto LABEL_31;
    }

    goto LABEL_28;
  }

  v73 = _CocoaArrayWrapper.endIndex.getter();
  if (!v73)
  {
    goto LABEL_25;
  }

LABEL_16:
  if (v73 < 1)
  {
    __break(1u);
    goto LABEL_44;
  }

  v74 = 0;
  do
  {
    if ((v62 & 0xC000000000000001) != 0)
    {
      v75 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v75 = *(v62 + 8 * v74 + 32);
    }

    v76 = v75;
    ++v74;
    [v75 setApprovalStatus:1];
    v77 = [v58 sharedStore];
    [v77 storeRequest:v76];
  }

  while (v73 != v74);

  v72 = v133;
  v79 = a9;
  v78 = a10;
  if (a10)
  {
LABEL_28:
    v91 = [v58 sharedStore];
    v92 = String._bridgeToObjectiveC()();
    v62 = [v91 getExceptionRequestWithUniqueIdentifier:v92];

    if (!v62)
    {
      goto LABEL_31;
    }

    v129(v116, v128, v72);
    *(swift_allocObject() + 16) = v123;
    v146 = v122;
    *&v144 = v117;

    v93 = AMSLogKey();
    if (v93)
    {
      v94 = v93;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_10002FFD8(&v144);
    LogInterpolation.init(stringLiteral:)();
    v102 = v116;
    Log.default(_:)();

    v135(v102, v72);
    v103 = sub_1000309C0(&_swiftEmptyArrayStorage);
    v143 = v103;
    v104 = [v62 metadata];
    if (v104)
    {
      v105 = v104;
      v106 = [v104 compile];

      v107 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
      v146 = sub_10002D464(&qword_100063BC8, &qword_100042A30);
      *&v144 = v107;
      sub_100030AD0(&v144, &v142);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v141 = v103;
      sub_100030660(&v142, 0x617461646174656DLL, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
      v109 = v141;
    }

    else
    {
      sub_10003009C(0x617461646174656DLL, 0xE800000000000000, &v144);
      sub_10002FF70(&v144);
      v109 = v143;
    }

    v110 = ATResponse.isApproval.getter();
    v146 = &type metadata for Bool;
    LOBYTE(v144) = v110 & 1;
    sub_100030AD0(&v144, &v142);
    v111 = swift_isUniquelyReferenced_nonNull_native();
    v141 = v109;
    sub_100030660(&v142, 0x766F727070417369, 0xEA00000000006465, v111);
    v73 = v141;
    sub_100030B38(0, &qword_100063AE8, NSDistributedNotificationCenter_ptr);
    v68 = [swift_getObjCClassFromMetadata() defaultCenter];
    if (qword_100063E00 == -1)
    {
LABEL_41:
      v112 = qword_100063E60;
      sub_10002FBDC(v73);

      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v68 postNotificationName:v112 object:0 userInfo:isa];

      return;
    }

LABEL_44:
    swift_once();
    goto LABEL_41;
  }

LABEL_31:
  v129(v118, v128, v72);
  *(swift_allocObject() + 16) = v123;
  v146 = v122;
  *&v144 = v117;

  v95 = AMSLogKey();
  if (v95)
  {
    v96 = v95;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_10002FFD8(&v144);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v97._countAndFlagsBits = 0xD000000000000047;
  v97._object = 0x800000010004DFA0;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v97);
  if (v78)
  {
    v98 = &type metadata for String;
    v99 = v78;
  }

  else
  {
    v79 = 0;
    v99 = 0;
    v98 = 0;
    v145 = 0;
  }

  *&v144 = v79;
  *(&v144 + 1) = v99;
  v146 = v98;

  LogInterpolation.StringInterpolation.appendInterpolation(_:)();
  sub_10002FF70(&v144);
  v100._countAndFlagsBits = 0;
  v100._object = 0xE000000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v100);
  LogInterpolation.init(stringInterpolation:)();
  v101 = v118;
  Log.error(_:)();

  v135(v101, v72);
}

Swift::Int sub_10002FBDC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10002D464(&qword_100063BD8, &qword_100042A38);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_100030B80(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_100030AD0(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_100030AD0(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_100030AD0(v31, v32);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_100030AD0(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_10002FEA4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_10002FF70(uint64_t a1)
{
  v2 = sub_10002D464(&qword_100063A98, &qword_1000428E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10002FFD8(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t sub_100030024(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_100030140(a1, a2, v4);
}

double sub_10003009C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_100030024(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10003081C();
      v10 = v12;
    }

    sub_100030AD0((*(v10 + 56) + 32 * v8), a3);
    sub_1000304B0(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

unint64_t sub_100030140(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

Swift::Int sub_1000301F8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10002D464(&qword_100063BE0, &qword_100042A40);
  v33 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_100030AD0(v24, v34);
      }

      else
      {
        sub_100030B80(v24, v34);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_100030AD0(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1000304B0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v10 = Hasher._finalize()();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

_OWORD *sub_100030660(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100030024(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_10003081C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1000301F8(v16, a4 & 1);
    v11 = sub_100030024(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    sub_10002FFD8(v22);

    return sub_100030AD0(a1, v22);
  }

  else
  {
    sub_1000307B0(v11, a2, a3, a1, v21);
  }
}

_OWORD *sub_1000307B0(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_100030AD0(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void *sub_10003081C()
{
  v1 = v0;
  sub_10002D464(&qword_100063BE0, &qword_100042A40);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_100030B80(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_100030AD0(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

unint64_t sub_1000309C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10002D464(&qword_100063BE0, &qword_100042A40);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100030BDC(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_100030024(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100030AD0(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

_OWORD *sub_100030AD0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100030B20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100030B38(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_100030B80(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100030BDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002D464(&qword_100063BE8, &qword_100042A48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100030C4C()
{
  v1 = (v0 + OBJC_IVAR____TtC19AskPermissionDaemon36ExceptionRequestLocalApprovalManager_completionHandler);
  swift_beginAccess();
  v2 = *v1;
  sub_100029CE4(*v1, v1[1]);
  return v2;
}

uint64_t sub_100030CA8(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC19AskPermissionDaemon36ExceptionRequestLocalApprovalManager_completionHandler);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_100029D54(v6, v7);
}

void *sub_100030D68()
{
  v1 = OBJC_IVAR____TtC19AskPermissionDaemon36ExceptionRequestLocalApprovalManager_timer;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_100030DB4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19AskPermissionDaemon36ExceptionRequestLocalApprovalManager_timer;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_100030E6C()
{
  result = [objc_allocWithZone(type metadata accessor for ExceptionRequestLocalApprovalManager()) init];
  qword_100063E68 = result;
  return result;
}

id sub_100030EF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*((swift_isaMask & *v4) + 0x98))(a1, a2);
  v7 = [objc_opt_self() timerWithTimeInterval:v4 target:"handleTimeout" selector:0 userInfo:0 repeats:90.0];
  (*((swift_isaMask & *v4) + 0x80))(v7);
  v8 = *((swift_isaMask & *v4) + 0x68);

  v8(a3, a4);
  v9 = objc_opt_self();

  return [v9 activateRemotePINUI];
}

void sub_1000311B0()
{
  sub_100030B38(0, &qword_100063AE8, NSDistributedNotificationCenter_ptr);
  v1 = [swift_getObjCClassFromMetadata() defaultCenter];
  [v1 addObserver:v0 selector:"handleScreenTimePinCompletionNotificationWithNotification:" name:STRestrictionsPINControllerDidFinishNotification object:0];
}

void sub_10003123C()
{
  sub_100030B38(0, &qword_100063AE8, NSDistributedNotificationCenter_ptr);
  v1 = [swift_getObjCClassFromMetadata() defaultCenter];
  [v1 removeObserver:v0 name:STRestrictionsPINControllerDidFinishNotification object:0];
}

void (*sub_1000312C0())(void)
{
  v1 = v0;
  v2 = type metadata accessor for Log();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100029AB4();
  (*(v3 + 16))(v5, v6, v2);
  sub_10002D464(&qword_100063A90, &unk_100042A00);
  type metadata accessor for LogInterpolation();
  *(swift_allocObject() + 16) = xmmword_100042890;
  LogInterpolation.init(stringLiteral:)();
  Log.default(_:)();

  v7 = (*(v3 + 8))(v5, v2);
  v8 = (*((swift_isaMask & *v1) + 0xA0))(v7);
  result = (*((swift_isaMask & *v1) + 0x60))(v8);
  if (result)
  {
    v11 = result;
    v12 = v10;
    result(0);
    return sub_100029D54(v11, v12);
  }

  return result;
}

void sub_100031534(void *a1)
{
  v2 = v1;
  (*((swift_isaMask & *v1) + 0xA0))();
  v4 = [a1 userInfo];
  if (!v4)
  {
    goto LABEL_10;
  }

  v5 = v4;
  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  if (!*(v6 + 16) || (v7 = sub_100031D00(v14), (v8 & 1) == 0))
  {

    sub_1000328A8(v14);
LABEL_10:
    v15 = 0u;
    v16 = 0u;
    goto LABEL_11;
  }

  sub_100030B80(*(v6 + 56) + 32 * v7, &v15);
  sub_1000328A8(v14);

  if (!*(&v16 + 1))
  {
LABEL_11:
    sub_10002DA64(&v15, &qword_100063A98, &qword_1000428E0);
    return;
  }

  sub_100030B38(0, &qword_100063BC0, NSNumber_ptr);
  if (swift_dynamicCast())
  {
    v9 = v14[0];
    v10 = (*((swift_isaMask & *v2) + 0x60))();
    if (v10)
    {
      v12 = v10;
      v13 = v11;
      v10([v9 BOOLValue]);
      sub_100029D54(v12, v13);
    }
  }
}

uint64_t sub_100031790(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002C828;

  return sub_100031E0C(a1, a2);
}

uint64_t sub_1000319C8(uint64_t a1, void *aBlock)
{
  v2[2] = _Block_copy(aBlock);
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;
  v2[3] = v4;
  v6 = swift_task_alloc();
  v2[4] = v6;
  *v6 = v2;
  v6[1] = sub_100031A98;

  return sub_100031E0C(v3, v5);
}

uint64_t sub_100031A98()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *v1;

  v6 = *(v3 + 16);
  if (v2)
  {
    v7 = _convertErrorToNSError(_:)();

    (*(v6 + 16))(v6, v7);
  }

  else
  {
    (*(v6 + 16))(v6, 0);
  }

  _Block_release(*(v4 + 16));
  v8 = *(v5 + 8);

  return v8();
}

id sub_100031C7C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ExceptionRequestLocalApprovalManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100031D00(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_100031D44(a1, v4);
}

unint64_t sub_100031D44(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_1000328FC(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_1000328A8(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_100031E0C(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  type metadata accessor for LogInterpolation.StringInterpolation();
  v2[8] = swift_task_alloc();
  v3 = type metadata accessor for Log();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  sub_10002D464(&qword_100063C28, &qword_100042AD0);
  v2[12] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();

  return (_swift_task_switch)(sub_100031F98, 0, 0);
}

uint64_t sub_100031F98()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];
  UUID.init(uuidString:)();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10002DA64(v0[12], &qword_100063C28, &qword_100042AD0);
LABEL_17:
    v25 = v0[10];
    v24 = v0[11];
    v26 = v0[9];
    v28 = v0[6];
    v27 = v0[7];
    v29 = sub_100029AB4();
    (*(v25 + 16))(v24, v29, v26);
    sub_10002D464(&qword_100063A90, &unk_100042A00);
    type metadata accessor for LogInterpolation();
    *(swift_allocObject() + 16) = xmmword_100042890;
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v30._countAndFlagsBits = 0xD00000000000004FLL;
    v30._object = 0x800000010004E200;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v30);
    v0[5] = &type metadata for String;
    v0[2] = v28;
    v0[3] = v27;

    LogInterpolation.StringInterpolation.appendInterpolation(_:)();
    sub_10002DA64((v0 + 2), &qword_100063A98, &qword_1000428E0);
    v31._object = 0x800000010004E250;
    v31._countAndFlagsBits = 0xD000000000000018;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v31);
    LogInterpolation.init(stringInterpolation:)();
    Log.default(_:)();

    (*(v25 + 8))(v24, v26);
    [objc_allocWithZone(NSError) initWithDomain:APErrorDomain code:4 userInfo:0];
    swift_willThrow();

    v32 = v0[1];

    return v32();
  }

  (*(v0[14] + 32))(v0[16], v0[12], v0[13]);
  v4 = [objc_opt_self() sharedStore];
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 getExceptionRequestWithUniqueIdentifier:v5];
  v0[17] = v6;

  if (!v6)
  {
    (*(v0[14] + 8))(v0[16], v0[13]);
    goto LABEL_17;
  }

  v7 = [v6 title];
  if (!v7)
  {
    (*(v0[14] + 8))(v0[16], v0[13]);

    goto LABEL_17;
  }

  v8 = v7;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v9 = [v6 message];
  if (!v9)
  {
    (*(v0[14] + 8))(v0[16], v0[13]);

LABEL_16:

    goto LABEL_17;
  }

  v10 = v9;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v11 = [v6 preApproveTitle];
  if (!v11)
  {
    (*(v0[14] + 8))(v0[16], v0[13]);

    goto LABEL_16;
  }

  v12 = v11;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v13 = [v6 postApproveTitle];
  if (!v13)
  {
    (*(v0[14] + 8))(v0[16], v0[13]);

    goto LABEL_16;
  }

  v14 = v13;
  v16 = v0[15];
  v15 = v0[16];
  v17 = v0[13];
  v18 = v0[14];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  type metadata accessor for ATQuestion();
  (*(v18 + 16))(v16, v15, v17);
  v19 = *sub_100029BAC();
  v20 = ATQuestion.__allocating_init(id:topic:title:summary:)();
  v0[18] = v20;
  sub_100029B50();
  v21 = objc_allocWithZone(type metadata accessor for ATAnswerChoice());

  v22 = ATAnswerChoice.init(id:title:completedRequestTitle:)();
  v0[19] = v22;
  ATAnswerChoice.kind.setter();
  type metadata accessor for ATDispatchCenter();
  v0[20] = static ATDispatchCenter.shared.getter();
  v23 = swift_task_alloc();
  v0[21] = v23;
  *v23 = v0;
  v23[1] = sub_1000325A4;

  return ATDispatchCenter.updateMessageBubble(_:responderHandle:answerChoice:)(v20, 0, 0xE000000000000000, v22);
}

uint64_t sub_1000325A4()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = sub_1000327B8;
  }

  else
  {
    v3 = sub_1000326D8;
  }

  return (_swift_task_switch)(v3, 0, 0);
}

uint64_t sub_1000326D8()
{
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v3 = *(v0 + 128);
  v4 = *(v0 + 112);
  v5 = *(v0 + 104);

  (*(v4 + 8))(v3, v5);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1000327B8()
{
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v3 = *(v0 + 128);
  v4 = *(v0 + 104);
  v5 = *(v0 + 112);

  (*(v5 + 8))(v3, v4);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100032970()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10002C828;

  return sub_1000319C8(v2, v3);
}

void sub_1000388A4(id a1)
{
  v1 = qword_100063E30;
  qword_100063E30 = &off_1000580F0;
}

void sub_10003A584(id a1)
{
  v1 = +[APLogConfig sharedDaemonConfig];
  if (!v1)
  {
    v1 = +[APLogConfig sharedConfig];
  }

  v2 = [v1 OSLogObject];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Received SIGTERM, stopping daemon", v3, 2u);
  }

  exit(0);
}

void sub_10003AD5C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:AKAuthenticationDSIDKey];
  v8 = [v5 objectForKeyedSubscript:AKAuthenticationPasswordKey];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = [v5 objectForKeyedSubscript:AKAuthenticationUsernameKey];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v6)
  {
    v12 = +[APLogConfig sharedDaemonConfig];
    if (!v12)
    {
      v12 = +[APLogConfig sharedConfig];
    }

    v13 = [v12 OSLogObject];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v25 = 138543618;
      v26 = objc_opt_class();
      v27 = 2114;
      v28 = v6;
      v14 = v26;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%{public}@: Failed to authenticate user. Error: %{public}@", &v25, 0x16u);
    }

LABEL_26:

    v21 = APError();
    v20 = 0;
    goto LABEL_27;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0 || ([v7 stringValue], v15 = objc_claimAutoreleasedReturnValue(), v15, !v15))
  {
    v12 = +[APLogConfig sharedDaemonConfig];
    if (!v12)
    {
      v12 = +[APLogConfig sharedConfig];
    }

    v13 = [v12 OSLogObject];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v25 = 138543362;
      v26 = objc_opt_class();
      v22 = v26;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%{public}@: Authenticated user but no DSID", &v25, 0xCu);
    }

    goto LABEL_26;
  }

  if (!v9)
  {
    v12 = +[APLogConfig sharedDaemonConfig];
    if (!v12)
    {
      v12 = +[APLogConfig sharedConfig];
    }

    v13 = [v12 OSLogObject];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v25 = 138543362;
      v26 = objc_opt_class();
      v23 = v26;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%{public}@: Authenticated user but no password", &v25, 0xCu);
    }

    goto LABEL_26;
  }

  v16 = +[APLogConfig sharedDaemonConfig];
  v12 = v16;
  if (!v11)
  {
    if (!v16)
    {
      v12 = +[APLogConfig sharedConfig];
    }

    v13 = [v12 OSLogObject];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v25 = 138543362;
      v26 = objc_opt_class();
      v24 = v26;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%{public}@: Authenticated user but no username", &v25, 0xCu);
    }

    goto LABEL_26;
  }

  if (!v16)
  {
    v12 = +[APLogConfig sharedConfig];
  }

  v17 = [v12 OSLogObject];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 138543362;
    v26 = objc_opt_class();
    v18 = v26;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}@: Authenticated user succesfully", &v25, 0xCu);
  }

  v19 = [v7 stringValue];
  v20 = [[User alloc] initWithDSID:v19 username:v11 password:v9 biometricsToken:0];

  v21 = 0;
LABEL_27:
  (*(*(a1 + 32) + 16))(*(a1 + 32), v20, v21);
}