void sub_10019978C(uint64_t a1, uint64_t a2)
{
  if ([*(a1 + 32) isCancelled])
  {
    v4 = *(a1 + 32);
    v5 = [[NSError alloc] initWithMRError:25];
    v8 = v5;
    v6 = v4;
LABEL_5:
    [v6 finishWithError:v5];

    return;
  }

  if (a2)
  {
    v5 = [*(a1 + 48) mr_errorByEnvelopingWithMRError:100];
    v8 = v5;
    v6 = *(a1 + 32);
    goto LABEL_5;
  }

  [*(a1 + 32) setEndpoint:*(a1 + 40)];
  v7 = *(a1 + 32);

  [v7 finish];
}

void sub_10019A00C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ([*(a1 + 32) isCancelled])
  {
    v5 = *(a1 + 32);
    v6 = [[NSError alloc] initWithMRError:25];
    [v5 finishWithError:v6];
  }

  else
  {
    if (v4)
    {
      v7 = [v4 mr_errorByEnvelopingWithMRError:47];
      [*(a1 + 32) finishWithError:v7];
    }

    else
    {
      v8 = +[MRDMediaRemoteServer server];
      v9 = [v8 routingServer];
      v7 = [v9 createTransientEndpointForOutputDeviceUID:*(*(a1 + 32) + 16) details:*(*(a1 + 32) + 8)];

      if (v7)
      {
        v10 = *(a1 + 32);
        v11 = *(v10 + 8);
        v13[0] = _NSConcreteStackBlock;
        v13[1] = 3221225472;
        v13[2] = sub_10019A1AC;
        v13[3] = &unk_1004B8690;
        v13[4] = v10;
        v14 = v7;
        v15 = 0;
        [v14 connectToExternalDeviceWithOptions:0 details:v11 completion:v13];
      }

      else
      {
        v12 = [0 mr_errorByEnvelopingWithMRError:39];
        [*(a1 + 32) finishWithError:v12];
      }
    }
  }
}

void sub_10019A1AC(uint64_t a1, uint64_t a2)
{
  if ([*(a1 + 32) isCancelled])
  {
    v4 = *(a1 + 32);
    v5 = [[NSError alloc] initWithMRError:25];
    v8 = v5;
    v6 = v4;
LABEL_5:
    [v6 finishWithError:v5];

    return;
  }

  if (a2)
  {
    v5 = [*(a1 + 48) mr_errorByEnvelopingWithMRError:100];
    v8 = v5;
    v6 = *(a1 + 32);
    goto LABEL_5;
  }

  [*(a1 + 32) setEndpoint:*(a1 + 40)];
  v7 = *(a1 + 32);

  [v7 finish];
}

void sub_10019A7DC(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x2Au);
}

void sub_10019B01C(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 route:*(a1 + 40) endpoint:*(a1 + 48) bundleIdentifier:*(a1 + 56) emittedEvent:*(a1 + 64)];
}

id sub_10019B64C(uint64_t a1)
{
  v2 = _MRLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5 = [v3 destination];
    v6 = *(a1 + 48);
    v8 = 138413058;
    v9 = v4;
    v10 = 2112;
    v11 = v3;
    v12 = 2112;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[MRDRRC].NPM %@ - endpoint was nil, trying again - %@ (%@), response: %@", &v8, 0x2Au);
  }

  return [*(a1 + 32) onQueue_controller:*(a1 + 40) didLoadResponse:*(a1 + 48) retry:0];
}

void sub_10019B8B4(uint64_t a1)
{
  v2 = [*(a1 + 32) destination];
  v6 = [v2 endpoint];

  v3 = [*(a1 + 32) destination];
  v4 = [v3 client];
  v5 = [v4 representedBundleID];

  [*(a1 + 40) onQueue_setLastPlaybackState:*(a1 + 48) bundleIdentifier:v5 forEndpoint:v6];
}

void sub_10019C7B0(void *a1, void *a2)
{
  v3 = a2;
  v11 = MREndpointConnectionReasonUserInfoKey;
  v12 = @"activeSystemEndpointDidChange";
  v4 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10019C8D4;
  v7[3] = &unk_1004BE9B8;
  v5 = a1[5];
  v7[4] = a1[4];
  v8 = v5;
  v9 = v3;
  v10 = a1[6];
  v6 = v3;
  [v6 connectToExternalDeviceWithUserInfo:v4 completion:v7];
}

void sub_10019C8D4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  objc_sync_enter(v4);
  v5 = [*(a1 + 32) activeSystemEndpointOutputDeviceUID];
  v6 = *(a1 + 40);
  v7 = v5;
  v8 = v6;
  v9 = v8;
  if (v7 == v8)
  {
  }

  else
  {
    v10 = [v7 isEqual:v8];

    if (!v10)
    {
      v11 = _MRLogForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 40);
        v13 = [*(a1 + 32) activeSystemEndpointOutputDeviceUID];
        v22 = 138412546;
        v23 = v12;
        v24 = 2112;
        v25 = v13;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[MRDProactiveRecommendedPlayerController] Ignoring activeSystemEndpointDidChange for %@ because a new change for %@ was received", &v22, 0x16u);
      }

      goto LABEL_12;
    }
  }

  if (v3)
  {
    v14 = _MRLogForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 40);
      v22 = 138412546;
      v23 = v15;
      v24 = 2112;
      v25 = v3;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[MRDProactiveRecommendedPlayerController] Failed to connect to proactive endpoint %@ with error %@. Reset to local.", &v22, 0x16u);
    }

    v16 = &_dispatch_main_q;
    MRAVEndpointUpdateActiveSystemEndpointWithReason();
  }

  else
  {
    v17 = [*(a1 + 48) origin];
    v18 = *(a1 + 32);
    v19 = +[MRDMediaRemoteServer server];
    v20 = [v19 nowPlayingServer];
    v21 = [v20 originClientForOrigin:v17];
    [v18 setOriginClient:v21 withChangeType:*(a1 + 56)];
  }

LABEL_12:
  objc_sync_exit(v4);
}

__CFString *sub_10019CF04(unint64_t a1)
{
  if (a1 > 5)
  {
    return 0;
  }

  else
  {
    return off_1004C0B30[a1];
  }
}

void sub_10019D6AC(uint64_t a1)
{
  obj = *(a1 + 32);
  objc_sync_enter(obj);
  v2 = *(a1 + 32);
  v3 = [NSString alloc];
  v4 = *(a1 + 40);
  v5 = sub_10019CF04(*(a1 + 48));
  v6 = [v3 initWithFormat:@"%@ playback timeout event %@ after <%lf> seconds", v4, v5, *(a1 + 56)];
  [v2 _onSyncSelf_reevaluateProactiveRecommendedPlayerForEvent:2 withReason:v6];

  objc_sync_exit(obj);
}

BOOL sub_10019D8A4(unsigned int a1)
{
  if (a1 > 0xB)
  {
    return a1 - 127 >= 2;
  }

  v1 = 0;
  if (((1 << a1) & 0xA0A) == 0)
  {
    return a1 - 127 >= 2;
  }

  return v1;
}

uint64_t sub_10019D8DC(void *a1)
{
  v1 = a1;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v2 = dispatch_semaphore_create(0);
  v3 = dispatch_get_global_queue(0, 0);
  v6 = v2;
  MRProcessIDForApplication();
  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  v4 = *(v8 + 24);

  _Block_object_dispose(&v7, 8);
  return v4;
}

void sub_10019D9E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10019DA18(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  kdebug_trace();
  if (qword_100529690 != -1)
  {
    sub_1003AFF00();
  }

  v16 = 0;
  v8 = [LSApplicationIdentity identityStringsForApplicationWithBundleIdentifier:v5 error:&v16];
  v9 = v16;
  if (v9)
  {
    goto LABEL_8;
  }

  v10 = [LSApplicationIdentity alloc];
  v11 = [v8 firstObject];
  v12 = [v10 initWithIdentityString:v11];

  if (![qword_100529688 requiresPreflightForApplication:v12])
  {

LABEL_8:
    v14 = qos_class_self();
    v12 = dispatch_get_global_queue(v14, 0);
    v15 = v7;
    MSVLaunchApplicationWithOptions();
    v13 = v15;
    goto LABEL_9;
  }

  if (v7)
  {
    v13 = [[NSError alloc] initWithMRError:126];
    (*(v7 + 2))(v7, v13);
LABEL_9:
  }
}

void sub_10019DBEC(id a1)
{
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_create("com.apple.mediaremote.launchApplication.preflightManager", v1);

  v2 = [[PDCPreflightManager alloc] initWithTargetQueue:v4];
  v3 = qword_100529688;
  qword_100529688 = v2;
}

uint64_t sub_10019DC74(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
    v1 = vars8;
  }

  return kdebug_trace();
}

void sub_10019DCC4(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  kdebug_trace();
  v11 = +[NSDate date];
  v12 = [[NSMutableString alloc] initWithFormat:@"%@<%@>", @"MRDLaunchApplicationWithReason", v8];
  v13 = v12;
  if (v7)
  {
    [v12 appendFormat:@" for %@", v7];
  }

  v14 = _MRLogForCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v41 = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v15 = +[NSThread currentThread];
  v16 = [v15 threadDictionary];
  v17 = [v16 objectForKeyedSubscript:@"migrateRequest"];

  if (v17)
  {
    v18 = [v17 startEvent:@"LaunchApp" role:3];
  }

  else
  {
    v18 = 0;
  }

  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_10019E204;
  v32[3] = &unk_1004BF1C8;
  v19 = v8;
  v33 = v19;
  v20 = v7;
  v34 = v20;
  v21 = v17;
  v39 = v18;
  v35 = v21;
  v36 = @"MRDLaunchApplicationWithReason";
  v22 = v11;
  v37 = v22;
  v23 = v10;
  v38 = v23;
  v24 = objc_retainBlock(v32);
  if (sub_10019E0A0(v24, v20))
  {
    v25 = [v9 objectForKeyedSubscript:kMRMediaRemoteOptionCommandType];
    [v25 unsignedIntValue];
    v31 = v9;

    v29 = MRMediaRemoteCopyCommandDescription();
    v30 = v22;
    v26 = [[NSString alloc] initWithFormat:@"%@.%@.%@.%@", @"com.apple.MediaRemote.command", v29, @"invoked.notify.client", v20];
    v27 = [[NSString alloc] initWithFormat:@"%@.%@.%@", @"com.apple.MediaRemote.command", @"invoked.notify.client", v20];
    v28 = [[NSString alloc] initWithFormat:@"%@.%@", @"com.apple.MediaRemote.command", @"invoked.notify.client"];
    notify_post([v26 UTF8String]);
    notify_post([v27 UTF8String]);
    notify_post([v28 UTF8String]);
    (v24[2])(v24, 0);

    v22 = v30;
    v9 = v31;
  }

  else
  {
    sub_10019DA18(v20, v9, v24);
  }
}

id sub_10019E0A0(uint64_t a1, void *a2)
{
  v2 = a2;
  if (qword_1005296A8 != -1)
  {
    sub_1003AFF14();
  }

  IsAudioAccessory = MSVDeviceIsAudioAccessory();
  v4 = &qword_1005296A0;
  if (!IsAudioAccessory)
  {
    v4 = &qword_100529698;
  }

  v5 = [*v4 containsObject:v2];

  return v5;
}

void sub_10019E110(id a1)
{
  v1 = [[NSSet alloc] initWithArray:&off_1004E0F40];
  v2 = qword_100529698;
  qword_100529698 = v1;

  v7 = [[NSMutableSet alloc] initWithArray:&off_1004E0F58];
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v3 = MRMediaRemoteCopyLocalDeviceSystemMediaApplicationDisplayID();
    [v7 addObject:v3];
  }

  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v4 = MRMediaRemoteCopyLocalDeviceSystemPodcastApplicationDisplayID();
    [v7 addObject:v4];
  }

  v5 = [v7 copy];
  v6 = qword_1005296A0;
  qword_1005296A0 = v5;
}

void sub_10019E204(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v4 = [[NSString alloc] initWithFormat:@"post-launch setup for  %@", *(a1 + 32)];
    v5 = [[MRDTaskAssertion alloc] initWithType:1 pid:0 bundleID:*(a1 + 40) name:v4];
    [(MRDTaskAssertion *)v5 invalidateInDuration:30.0];
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    [v6 endEventWithID:*(a1 + 80) error:v3];
  }

  v7 = *(a1 + 40);
  v8 = _MRLogForCategory();
  v9 = v8;
  if (!v3)
  {
    v16 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (!v16)
      {
        goto LABEL_18;
      }

      v17 = *(a1 + 56);
      v18 = *(a1 + 32);
      v19 = *(a1 + 40);
      v14 = +[NSDate date];
      [v14 timeIntervalSinceDate:*(a1 + 64)];
      *buf = 138544130;
      v29 = v17;
      v30 = 2114;
      v31 = v18;
      v32 = 2114;
      v33 = v19;
      v34 = 2048;
      v35 = v20;
      v21 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
      v22 = v9;
      v23 = 42;
    }

    else
    {
      if (!v16)
      {
        goto LABEL_18;
      }

      v24 = *(a1 + 56);
      v25 = *(a1 + 32);
      v14 = +[NSDate date];
      [v14 timeIntervalSinceDate:*(a1 + 64)];
      *buf = 138543874;
      v29 = v24;
      v30 = 2114;
      v31 = v25;
      v32 = 2048;
      v33 = v26;
      v21 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
      v22 = v9;
      v23 = 32;
    }

    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, v21, buf, v23);
    goto LABEL_17;
  }

  v10 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
  if (v7)
  {
    if (!v10)
    {
      goto LABEL_18;
    }

    v11 = *(a1 + 56);
    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    v14 = +[NSDate date];
    [v14 timeIntervalSinceDate:*(a1 + 64)];
    *buf = 138544386;
    v29 = v11;
    v30 = 2114;
    v31 = v12;
    v32 = 2114;
    v33 = v3;
    v34 = 2114;
    v35 = v13;
    v36 = 2048;
    v37 = v15;
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", buf, 0x34u);
LABEL_17:

    goto LABEL_18;
  }

  if (v10)
  {
    sub_1003AFF28();
  }

LABEL_18:

  v27 = *(a1 + 72);
  if (v27)
  {
    (*(v27 + 16))(v27, v3);
  }

  kdebug_trace();
}

void sub_10019E4E8(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  v7 = [FBSOpenApplicationOptions optionsWithDictionary:a2];
  v8 = +[FBSOpenApplicationService serviceWithDefaultShellEndpoint];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10019E5D8;
  v10[3] = &unk_1004C0C18;
  v11 = v5;
  v9 = v5;
  [v8 openApplication:v6 withOptions:v7 completion:v10];
}

void sub_10019E5FC(void *a1, void *a2, void *a3, void *a4, double a5)
{
  v9 = a1;
  v37 = a2;
  v10 = a3;
  v11 = a4;
  v12 = +[NSDate date];
  v13 = +[NSUUID UUID];
  v14 = [v13 UUIDString];

  v15 = [[NSMutableString alloc] initWithFormat:@"%@<%@>", @"launchAppAndWaitForXpcConnection", v14];
  v16 = v15;
  if (v9)
  {
    [v15 appendFormat:@" for %@", v9];
  }

  v17 = _MRLogForCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v16;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v57 = 0x3032000000;
  v58 = sub_10003527C;
  v59 = sub_100035AF4;
  v60 = 0;
  v49[0] = _NSConcreteStackBlock;
  v49[1] = 3221225472;
  v49[2] = sub_10019EB40;
  v49[3] = &unk_1004C0C40;
  v18 = v9;
  v50 = v18;
  v51 = @"launchAppAndWaitForXpcConnection";
  v19 = v14;
  v52 = v19;
  v20 = v12;
  v53 = v20;
  v21 = v11;
  v54 = v21;
  p_buf = &buf;
  v22 = objc_retainBlock(v49);
  v23 = [MRBlockGuard alloc];
  v24 = [[NSString alloc] initWithFormat:@"Application <%@> waiting for xpcConnection", v18];
  v47[0] = _NSConcreteStackBlock;
  v47[1] = 3221225472;
  v47[2] = sub_10019EF58;
  v47[3] = &unk_1004B6FE8;
  v25 = v22;
  v48 = v25;
  v26 = [v23 initWithTimeout:v24 reason:v47 handler:a5];

  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_10019EF78;
  v44[3] = &unk_1004C0C68;
  v27 = v26;
  v45 = v27;
  v28 = v25;
  v46 = v28;
  v29 = objc_retainBlock(v44);
  v30 = +[NSNotificationCenter defaultCenter];
  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_10019EFF0;
  v41[3] = &unk_1004BEBE8;
  v31 = v18;
  v42 = v31;
  v32 = v29;
  v43 = v32;
  v33 = [v30 addObserverForName:@"MRDMediaRemoteClientDidConnect" object:0 queue:0 usingBlock:v41];
  v34 = *(*(&buf + 1) + 40);
  *(*(&buf + 1) + 40) = v33;

  v35 = +[MRDMediaRemoteServer server];
  v36 = [v35 clientForBundleIdentifier:v31];

  if (v36)
  {
    (v32[2])(v32, v36, 0);
  }

  else
  {
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_10019F07C;
    v38[3] = &unk_1004B9BE0;
    v39 = v31;
    v40 = v32;
    sub_10019DCC4(v39, @"launchAppAndWaitForXpcConnection", v10, v38);
  }

  _Block_object_dispose(&buf, 8);
}

void sub_10019EB40(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v15 = [v5 displayName];

    v16 = a1[4];
    v8 = _MRLogForCategory();
    v17 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v15)
    {
      if (v16)
      {
        if (!v17)
        {
          goto LABEL_21;
        }

        v18 = a1[5];
        v19 = a1[6];
        v13 = [v5 displayName];
        v20 = a1[4];
        v21 = +[NSDate date];
        [v21 timeIntervalSinceDate:a1[7]];
        v43 = 138544386;
        v44 = v18;
        v45 = 2114;
        v46 = v19;
        v47 = 2112;
        v48 = v13;
        v49 = 2114;
        v50 = v20;
        v51 = 2048;
        v52 = v22;
        v23 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
        v24 = v8;
        v25 = 52;
      }

      else
      {
        if (!v17)
        {
          goto LABEL_21;
        }

        v33 = a1[5];
        v34 = a1[6];
        v13 = [v5 displayName];
        v21 = +[NSDate date];
        [v21 timeIntervalSinceDate:a1[7]];
        v43 = 138544130;
        v44 = v33;
        v45 = 2114;
        v46 = v34;
        v47 = 2112;
        v48 = v13;
        v49 = 2048;
        v50 = v35;
        v23 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
        v24 = v8;
        v25 = 42;
      }

      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, v23, &v43, v25);
    }

    else
    {
      if (v16)
      {
        if (!v17)
        {
          goto LABEL_21;
        }

        v27 = a1[5];
        v26 = a1[6];
        v28 = a1[4];
        v13 = +[NSDate date];
        [v13 timeIntervalSinceDate:a1[7]];
        v43 = 138544130;
        v44 = v27;
        v45 = 2114;
        v46 = v26;
        v47 = 2114;
        v48 = v28;
        v49 = 2048;
        v50 = v29;
        v30 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
        v31 = v8;
        v32 = 42;
      }

      else
      {
        if (!v17)
        {
          goto LABEL_21;
        }

        v36 = a1[5];
        v37 = a1[6];
        v13 = +[NSDate date];
        [v13 timeIntervalSinceDate:a1[7]];
        v43 = 138543874;
        v44 = v36;
        v45 = 2114;
        v46 = v37;
        v47 = 2048;
        v48 = v38;
        v30 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
        v31 = v8;
        v32 = 32;
      }

      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, v30, &v43, v32);
    }

    goto LABEL_20;
  }

  v7 = a1[4];
  v8 = _MRLogForCategory();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
  if (v7)
  {
    if (!v9)
    {
      goto LABEL_21;
    }

    v11 = a1[5];
    v10 = a1[6];
    v12 = a1[4];
    v13 = +[NSDate date];
    [v13 timeIntervalSinceDate:a1[7]];
    v43 = 138544386;
    v44 = v11;
    v45 = 2114;
    v46 = v10;
    v47 = 2114;
    v48 = v6;
    v49 = 2114;
    v50 = v12;
    v51 = 2048;
    v52 = v14;
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", &v43, 0x34u);
LABEL_20:

    goto LABEL_21;
  }

  if (v9)
  {
    sub_1003AFFD4();
  }

LABEL_21:

  v39 = a1[8];
  if (v39)
  {
    (*(v39 + 16))(v39, v5, v6);
  }

  if (*(*(a1[9] + 8) + 40))
  {
    v40 = +[NSNotificationCenter defaultCenter];
    [v40 removeObserver:*(*(a1[9] + 8) + 40)];

    v41 = *(a1[9] + 8);
    v42 = *(v41 + 40);
    *(v41 + 40) = 0;
  }
}

uint64_t sub_10019EF58(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void sub_10019EF78(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ([*(a1 + 32) disarm])
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_10019EFF0(uint64_t a1, void *a2)
{
  v5 = [a2 object];
  v3 = [v5 bundleIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  if (v4)
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_10019F07C(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = +[MRDMediaRemoteServer server];
  v4 = [v3 clientForBundleIdentifier:*(a1 + 32)];

  if (v4)
  {
    v5 = *(*(a1 + 40) + 16);
  }

  else
  {
    if (!v6)
    {
      goto LABEL_6;
    }

    v5 = *(*(a1 + 40) + 16);
  }

  v5();
LABEL_6:
}

void sub_10019F130(void *a1, void *a2, void *a3, double a4)
{
  v7 = a1;
  v8 = a3;
  v9 = a2;
  v10 = +[NSDate date];
  v11 = +[NSUUID UUID];
  v12 = [v11 UUIDString];

  v13 = [[NSMutableString alloc] initWithFormat:@"%@<%@>", @"launchAppAndWaitForCanBeNowPlaying", v12];
  v14 = v13;
  if (v7)
  {
    [v13 appendFormat:@" for %@", v7];
  }

  v15 = _MRLogForCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v36 = v14;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_10019F400;
  v29[3] = &unk_1004C0C90;
  v16 = v7;
  v30 = v16;
  v31 = @"launchAppAndWaitForCanBeNowPlaying";
  v32 = v12;
  v33 = v10;
  v34 = v8;
  v17 = v8;
  v18 = v10;
  v19 = v12;
  v20 = objc_retainBlock(v29);
  +[NSDate date];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10019F7C8;
  v24[3] = &unk_1004BEEF8;
  v26 = v16;
  v27 = v20;
  v25 = v28 = a4;
  v21 = v16;
  v22 = v25;
  v23 = v20;
  sub_10019E5FC(v21, 0, v9, v24, a4);
}

void sub_10019F400(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v15 = [v5 displayName];

    v16 = a1[4];
    v8 = _MRLogForCategory();
    v17 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (!v15)
    {
      if (v16)
      {
        if (!v17)
        {
          goto LABEL_21;
        }

        v27 = a1[5];
        v26 = a1[6];
        v28 = a1[4];
        v13 = +[NSDate date];
        [v13 timeIntervalSinceDate:a1[7]];
        v39 = 138544130;
        v40 = v27;
        v41 = 2114;
        v42 = v26;
        v43 = 2114;
        v44 = v28;
        v45 = 2048;
        v46 = v29;
        v30 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
        v31 = v8;
        v32 = 42;
      }

      else
      {
        if (!v17)
        {
          goto LABEL_21;
        }

        v36 = a1[5];
        v37 = a1[6];
        v13 = +[NSDate date];
        [v13 timeIntervalSinceDate:a1[7]];
        v39 = 138543874;
        v40 = v36;
        v41 = 2114;
        v42 = v37;
        v43 = 2048;
        v44 = v38;
        v30 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
        v31 = v8;
        v32 = 32;
      }

      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, v30, &v39, v32);
      goto LABEL_20;
    }

    if (v16)
    {
      if (!v17)
      {
        goto LABEL_21;
      }

      v18 = a1[5];
      v19 = a1[6];
      v13 = [v5 displayName];
      v20 = a1[4];
      v21 = +[NSDate date];
      [v21 timeIntervalSinceDate:a1[7]];
      v39 = 138544386;
      v40 = v18;
      v41 = 2114;
      v42 = v19;
      v43 = 2112;
      v44 = v13;
      v45 = 2114;
      v46 = v20;
      v47 = 2048;
      v48 = v22;
      v23 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
      v24 = v8;
      v25 = 52;
    }

    else
    {
      if (!v17)
      {
        goto LABEL_21;
      }

      v33 = a1[5];
      v34 = a1[6];
      v13 = [v5 displayName];
      v21 = +[NSDate date];
      [v21 timeIntervalSinceDate:a1[7]];
      v39 = 138544130;
      v40 = v33;
      v41 = 2114;
      v42 = v34;
      v43 = 2112;
      v44 = v13;
      v45 = 2048;
      v46 = v35;
      v23 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
      v24 = v8;
      v25 = 42;
    }

    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, v23, &v39, v25);

    goto LABEL_20;
  }

  v7 = a1[4];
  v8 = _MRLogForCategory();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
  if (v7)
  {
    if (v9)
    {
      v11 = a1[5];
      v10 = a1[6];
      v12 = a1[4];
      v13 = +[NSDate date];
      [v13 timeIntervalSinceDate:a1[7]];
      v39 = 138544386;
      v40 = v11;
      v41 = 2114;
      v42 = v10;
      v43 = 2114;
      v44 = v6;
      v45 = 2114;
      v46 = v12;
      v47 = 2048;
      v48 = v14;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", &v39, 0x34u);
LABEL_20:
    }
  }

  else if (v9)
  {
    sub_1003AFFD4();
  }

LABEL_21:

  (*(a1[8] + 16))();
}

void sub_10019F7C8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v7 = *(a1 + 56);
    v8 = +[NSDate date];
    [v8 timeIntervalSinceDate:*(a1 + 32)];
    v10 = v7 - v9;

    v11 = [MRBlockGuard alloc];
    v12 = [[NSString alloc] initWithFormat:@"Application <%@> waiting for CanBeNowPlaying", *(a1 + 40)];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_10019FB08;
    v28[3] = &unk_1004B6FE8;
    v29 = *(a1 + 48);
    v13 = [v11 initWithTimeout:v12 reason:v28 handler:v10];

    objc_initWeak(&location, v5);
    v14 = +[NSNotificationCenter defaultCenter];
    v15 = kMRMediaRemoteNowPlayingApplicationDidRegisterCanBeNowPlaying;
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10019FB28;
    v22[3] = &unk_1004C0CB8;
    objc_copyWeak(&v26, &location);
    v23 = *(a1 + 40);
    v16 = v13;
    v24 = v16;
    v25 = *(a1 + 48);
    v17 = [v14 addObserverForName:v15 object:0 queue:0 usingBlock:v22];

    if ([v5 canBeNowPlaying])
    {
      if ([v16 disarm])
      {
        (*(*(a1 + 48) + 16))();
      }

      v18 = +[NSNotificationCenter defaultCenter];
      [v18 removeObserver:v17];
    }

    else
    {
      v19 = dispatch_time(0, ((v10 + 2.0) * 1000000000.0));
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10019FBF4;
      block[3] = &unk_1004B6D08;
      v21 = v17;
      dispatch_after(v19, &_dispatch_main_q, block);
      v18 = v21;
    }

    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
  }
}

void sub_10019FAE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_10019FB08(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void sub_10019FB28(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v4 = [v3 userInfo];

  v5 = MRGetClientFromUserInfo();

  v6 = [v5 bundleIdentifier];
  v7 = [v6 isEqualToString:*(a1 + 32)];

  if (v7 && [*(a1 + 40) disarm])
  {
    (*(*(a1 + 48) + 16))();
  }
}

void sub_10019FBF4(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 removeObserver:*(a1 + 32)];
}

id sub_10019FC4C(void *a1)
{
  v1 = a1;
  v2 = +[AVSystemController sharedAVSystemController];
  v7 = 0;
  v3 = [v2 setAttribute:v1 forKey:AVSystemController_AllowAppToInitiatePlaybackTemporarilyAttribute error:&v7];
  v4 = v7;

  if ((v3 & 1) == 0)
  {
    v5 = _MRLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v9 = v1;
      v10 = 2112;
      v11 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Error blessing %@ for playback initialization. %@", buf, 0x16u);
    }
  }

  return v3;
}

uint64_t sub_10019FD60(void *a1)
{
  v1 = a1;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v2 = dispatch_semaphore_create(0);
  v3 = dispatch_get_global_queue(0, 0);
  v6 = v2;
  MRProcessIDForApplication();
  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  v4 = *(v8 + 6);

  _Block_object_dispose(&v7, 8);
  return v4;
}

void sub_10019FE68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10019FE94()
{
  v0 = MSVWeakLinkSymbol();
  if (v0)
  {
    v1 = MSVWeakLinkSymbol();
    v0 = v1();
  }

  return v0;
}

void sub_10019FEE8(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1001A01F0;
  v23[3] = &unk_1004C0CE0;
  v5 = v3;
  v24 = v5;
  v6 = v4;
  v25 = v6;
  v7 = objc_retainBlock(v23);
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v8 = qword_1005296C0;
  v34 = qword_1005296C0;
  if (!qword_1005296C0)
  {
    v26 = _NSConcreteStackBlock;
    v27 = 3221225472;
    v28 = sub_1001A039C;
    v29 = &unk_1004B8728;
    v30 = &v31;
    v9 = sub_1001A03EC();
    v10 = dlsym(v9, "BYSetupAssistantFinishedDarwinNotification");
    *(v30[1] + 24) = v10;
    qword_1005296C0 = *(v30[1] + 24);
    v8 = v32[3];
  }

  _Block_object_dispose(&v31, 8);
  if (!v8)
  {
    sub_1003AA728();
    goto LABEL_14;
  }

  v11 = *v8;
  v12 = v11;
  if (!v11)
  {
    (v7[2])(v7, 0);
    goto LABEL_12;
  }

  out_token = 0;
  v13 = [v11 UTF8String];
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1001A0294;
  handler[3] = &unk_1004C0D08;
  v14 = v7;
  v21 = v14;
  notify_register_dispatch(v13, &out_token, v5, handler);
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v15 = off_1005296D0;
  v34 = off_1005296D0;
  if (!off_1005296D0)
  {
    v26 = _NSConcreteStackBlock;
    v27 = 3221225472;
    v28 = sub_1001A0560;
    v29 = &unk_1004B8728;
    v30 = &v31;
    v16 = sub_1001A03EC();
    v17 = dlsym(v16, "BYSetupAssistantNeedsToRun");
    *(v30[1] + 24) = v17;
    off_1005296D0 = *(v30[1] + 24);
    v15 = v32[3];
  }

  _Block_object_dispose(&v31, 8);
  if (!v15)
  {
LABEL_14:
    sub_1003AA728();
    v19 = v18;
    _Block_object_dispose(&v31, 8);
    _Unwind_Resume(v19);
  }

  if ((v15() & 1) == 0)
  {
    (v14[2])(v14, out_token);
  }

LABEL_12:
}

void sub_1001A01F0(uint64_t a1, int token)
{
  notify_cancel(token);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001A0284;
  block[3] = &unk_1004B79A0;
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  dispatch_async(v3, block);
}

uint64_t sub_1001A02A4(int a1)
{
  result = MSVWeakLinkSymbol();
  if (result)
  {
    v3 = a1 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    v4 = MSVWeakLinkSymbol();

    return v4();
  }

  return result;
}

uint64_t sub_1001A0314(uint64_t a1, uint64_t a2)
{
  if (qword_1005296B0 != -1)
  {
    sub_1003B007C();
  }

  return byte_1005296B8;
}

void sub_1001A034C(id a1)
{
  v1 = +[LockdownModeManager shared];
  byte_1005296B8 = [v1 enabled];
}

void *sub_1001A039C(uint64_t a1)
{
  v2 = sub_1001A03EC();
  result = dlsym(v2, "BYSetupAssistantFinishedDarwinNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1005296C0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1001A03EC()
{
  v3[0] = 0;
  if (!qword_1005296C8)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_1001A04EC;
    v3[4] = &unk_1004B82A0;
    v3[5] = v3;
    v4 = off_1004C0D48;
    v5 = 0;
    qword_1005296C8 = _sl_dlopen();
  }

  v0 = qword_1005296C8;
  v1 = v3[0];
  if (!qword_1005296C8)
  {
    v1 = abort_report_np("%s", v3[0]);
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t sub_1001A04EC(uint64_t a1)
{
  result = _sl_dlopen();
  qword_1005296C8 = result;
  return result;
}

void *sub_1001A0560(uint64_t a1)
{
  v2 = sub_1001A03EC();
  result = dlsym(v2, "BYSetupAssistantNeedsToRun");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1005296D0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1001A0830(id a1)
{
  v1 = objc_alloc_init(MRDRTCReporting);
  v2 = qword_1005296D8;
  qword_1005296D8 = v1;
}

void sub_1001A09D0(uint64_t a1)
{
  if (([*(a1 + 32) configurationStarted] & 1) == 0)
  {
    [*(a1 + 32) setConfigurationStarted:1];
    v12[0] = kRTCReportingSessionInfoClientType;
    v12[1] = kRTCReportingSessionInfoClientVersion;
    v13[0] = &off_1004E0B90;
    v13[1] = &off_1004E0BA8;
    v12[2] = kRTCReportingSessionInfoSessionID;
    v2 = [NSNumber numberWithUnsignedInt:arc4random()];
    v12[3] = kRTCReportingSessionInfoBatchEvent;
    v13[2] = v2;
    v13[3] = &off_1004E0BA8;
    v3 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:4];

    v10[0] = kRTCReportingUserInfoClientName;
    v10[1] = kRTCReportingUserInfoServiceName;
    v11[0] = @"MRTopology";
    v11[1] = @"WHA";
    v4 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:2];
    v5 = [[RTCReporting alloc] initWithSessionInfo:v3 userInfo:v4 frameworksToCheck:0];
    [*(a1 + 32) setReportingContext:v5];

    v6 = _MRLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[RTC] Creating RTCReporting client", buf, 2u);
    }

    v7 = [*(a1 + 32) reportingContext];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1001A0C10;
    v8[3] = &unk_1004BFB70;
    v8[4] = *(a1 + 32);
    [v7 startConfigurationWithCompletionHandler:v8];
  }
}

void sub_1001A0C10(uint64_t a1)
{
  v2 = [*(a1 + 32) rtcQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001A0CA0;
  block[3] = &unk_1004B6D08;
  block[4] = *(a1 + 32);
  dispatch_async(v2, block);
}

void sub_1001A0CA0(uint64_t a1)
{
  [*(a1 + 32) setConfigurationFinished:1];
  v2 = [*(a1 + 32) pendingMessages];
  v3 = [v2 copy];

  v4 = [*(a1 + 32) pendingMessages];
  [v4 removeAllObjects];

  v5 = _MRLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v3 count]);
    *buf = 138412290;
    v21 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[RTC] Finished creating RTCReporting client. Reporting %@ batched events", buf, 0xCu);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = v3;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        v13 = _MRLogForCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v21 = v12;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[RTC] Reporting event: %{public}@", buf, 0xCu);
        }

        v14 = [*(a1 + 32) reportingContext];
        [v14 sendMessageWithDictionary:v12 error:0];
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }
}

void sub_1001A0F94(uint64_t a1)
{
  v2 = [*(a1 + 32) reportingContext];
  if (v2 && (v3 = v2, v4 = [*(a1 + 32) configurationFinished], v3, v4))
  {
    v5 = _MRLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      *buf = 138543362;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[RTC] Reporting event: %{public}@", buf, 0xCu);
    }

    v7 = [*(a1 + 32) reportingContext];
    [v7 sendMessageWithDictionary:*(a1 + 40) error:0];
  }

  else
  {
    [*(a1 + 32) startConfiguration];
    v8 = [*(a1 + 32) pendingMessages];
    [v8 addObject:*(a1 + 40)];
  }
}

uint64_t sub_1001A290C(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_1001A2A40(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1001A34C0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v6 error];

  if (v6 && !v7)
  {
    v8 = [v5 debugName];

    v9 = _MRLogForCategory();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      if (!v10)
      {
        goto LABEL_23;
      }

      v11 = *(a1 + 32);
      v12 = [*(a1 + 40) requestID];
      v13 = [v5 debugName];
      v14 = +[NSDate date];
      [v14 timeIntervalSinceDate:*(a1 + 48)];
      v39 = 138544386;
      v40 = v11;
      v41 = 2114;
      v42 = v12;
      v43 = 2112;
      v44 = v6;
      v45 = 2114;
      v46 = v13;
      v47 = 2048;
      v48 = v15;
      v16 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
      v17 = v9;
      v18 = 52;
LABEL_13:
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, v16, &v39, v18);
LABEL_14:

LABEL_22:
      goto LABEL_23;
    }

    if (!v10)
    {
      goto LABEL_23;
    }

    v29 = *(a1 + 32);
    v12 = [*(a1 + 40) requestID];
    v13 = +[NSDate date];
    [v13 timeIntervalSinceDate:*(a1 + 48)];
    v39 = 138544130;
    v40 = v29;
    v41 = 2114;
    v42 = v12;
    v43 = 2112;
    v44 = v6;
    v45 = 2048;
    v46 = v30;
    v31 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
    v32 = v9;
    v33 = 42;
    goto LABEL_21;
  }

  v19 = [v6 error];

  v20 = [v5 debugName];

  v21 = _MRLogForCategory();
  v9 = v21;
  if (!v19)
  {
    v26 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
    if (v20)
    {
      if (!v26)
      {
        goto LABEL_23;
      }

      v27 = *(a1 + 32);
      v12 = [*(a1 + 40) requestID];
      v13 = [v5 debugName];
      v14 = +[NSDate date];
      [v14 timeIntervalSinceDate:*(a1 + 48)];
      v39 = 138544130;
      v40 = v27;
      v41 = 2114;
      v42 = v12;
      v43 = 2114;
      v44 = v13;
      v45 = 2048;
      v46 = v28;
      v16 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
      v17 = v9;
      v18 = 42;
      goto LABEL_13;
    }

    if (!v26)
    {
      goto LABEL_23;
    }

    v34 = *(a1 + 32);
    v12 = [*(a1 + 40) requestID];
    v13 = +[NSDate date];
    [v13 timeIntervalSinceDate:*(a1 + 48)];
    v39 = 138543874;
    v40 = v34;
    v41 = 2114;
    v42 = v12;
    v43 = 2048;
    v44 = v35;
    v31 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
    v32 = v9;
    v33 = 32;
LABEL_21:
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, v31, &v39, v33);
    goto LABEL_22;
  }

  v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
  if (v20)
  {
    if (!v22)
    {
      goto LABEL_23;
    }

    v23 = *(a1 + 32);
    v12 = [*(a1 + 40) requestID];
    v13 = [v6 error];
    v14 = [v5 debugName];
    v24 = +[NSDate date];
    [v24 timeIntervalSinceDate:*(a1 + 48)];
    v39 = 138544386;
    v40 = v23;
    v41 = 2114;
    v42 = v12;
    v43 = 2114;
    v44 = v13;
    v45 = 2114;
    v46 = v14;
    v47 = 2048;
    v48 = v25;
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", &v39, 0x34u);

    goto LABEL_14;
  }

  if (v22)
  {
    sub_1003B00A4(a1, v6, v9);
  }

LABEL_23:

  v36 = *(a1 + 56);
  v37 = [v6 error];
  [v36 trackWithError:v37];

  v38 = *(a1 + 64);
  if (v38)
  {
    (*(v38 + 16))(v38, v5, v6);
  }
}

void sub_1001A3944(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [[MRCommandResult alloc] initWithError:v3];

  (*(v2 + 16))(v2, 0, v4);
}

void sub_1001A39C8(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ([*(a1 + 32) disarm])
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_1001A3A40(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [[MRCommandResult alloc] initWithError:v3];

  (*(v2 + 16))(v2, 0, v4);
}

void sub_1001A3AC4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) connect];
  [v7 start];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001A3BF4;
  v11[3] = &unk_1004C0E00;
  v8 = *(a1 + 40);
  v12 = *(a1 + 32);
  v13 = v5;
  v14 = *(a1 + 48);
  v18 = *(a1 + 72);
  v15 = *(a1 + 56);
  v16 = v6;
  v17 = *(a1 + 64);
  v9 = v6;
  v10 = v5;
  [v10 connectToExternalDeviceWithOptions:0 details:v8 completion:v11];
}

void sub_1001A3BF4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) connect];
  [v4 endWithError:v3];

  if (v3)
  {
    v5 = *(a1 + 72);
    v6 = [v3 mr_errorByEnvelopingWithMRError:100];
    (*(v5 + 16))(v5, v6);
  }

  else
  {
    v7 = [*(a1 + 32) sendCommand];
    [v7 start];

    v6 = [[MRDestination alloc] initWithEndpoint:*(a1 + 40)];
    v8 = [*(a1 + 48) client];
    [v6 setClient:v8];

    v9 = [*(a1 + 48) player];
    [v6 setPlayer:v9];

    v10 = [[MRNowPlayingRequest alloc] initWithDestination:v6];
    v11 = *(a1 + 80);
    v12 = *(a1 + 56);
    v13 = qos_class_self();
    v14 = dispatch_get_global_queue(v13, 0);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1001A3DC8;
    v15[3] = &unk_1004B78B0;
    v16 = *(a1 + 32);
    v17 = *(a1 + 64);
    [v10 sendCommand:v11 options:v12 queue:v14 completion:v15];
  }
}

void sub_1001A3DC8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v6 = a2;
  v4 = [v3 sendCommand];
  v5 = [v6 error];
  [v4 endWithError:v5];

  (*(*(a1 + 40) + 16))();
}

id sub_1001A3E60(uint64_t a1)
{
  if ([*(a1 + 32) _isRequestForCompanionOrigin:*(a1 + 40)])
  {
    [*(a1 + 48) setRequestForCompanionOrigin:1];
    v2 = [[MROrigin alloc] initWithIdentifier:1129140302 type:1 displayName:&stru_1004D2058];
  }

  else if ([*(a1 + 32) _isRequestForLocalOrigin:*(a1 + 40)])
  {
    [*(a1 + 48) setRequestForLocalOrigin:1];
    v2 = +[MROrigin localOrigin];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_1001A3F04(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 sendCommand];
  v6 = [v4 error];
  [v5 endWithError:v6];

  v7 = *(a1 + 40);
  v8 = +[MRAVLocalEndpoint sharedLocalEndpoint];
  (*(v7 + 16))(v7, v8, v4);
}

void sub_1001A3FBC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) createPartialEndpoint];
  [v7 end];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001A40BC;
  v13[3] = &unk_1004C0E78;
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v14 = v5;
  v15 = v9;
  v16 = v6;
  v10 = *(v8 + 16);
  v11 = v6;
  v12 = v5;
  v10(v8, v12, v13);
}

uint64_t sub_1001A40BC(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

void sub_1001A4110(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v4 = [*(a1 + 32) createPartialEndpoint];
  [v4 endWithError:v7];

  v5 = [*(a1 + 32) createEndpointWithCurrentTopology];
  [v5 endWithError:v7];

  v6 = v7;
  if (v7)
  {
    (*(*(a1 + 40) + 16))();
    v6 = v7;
  }
}

void sub_1001A41A4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) createPartialEndpoint];
  [v7 end];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001A42A4;
  v13[3] = &unk_1004C0E78;
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v14 = v5;
  v15 = v9;
  v16 = v6;
  v10 = *(v8 + 16);
  v11 = v6;
  v12 = v5;
  v10(v8, v12, v13);
}

uint64_t sub_1001A42A4(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

void sub_1001A42F8(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v4 = [*(a1 + 32) createPartialEndpoint];
  [v4 endWithError:v7];

  v5 = [*(a1 + 32) createOptimizedEndpoint];
  [v5 endWithError:v7];

  v6 = v7;
  if (v7)
  {
    (*(*(a1 + 40) + 16))();
    v6 = v7;
  }
}

void sub_1001A4C48(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v8 = [v5 msv_firstWhere:&stru_1004C0EE0];
    v7 = [v8 error];

    if (!v7)
    {
      goto LABEL_6;
    }
  }

  v9 = [v5 msv_firstWhere:&stru_1004C0F00];
  if (!v9)
  {
    goto LABEL_11;
  }

  v10 = v9;

LABEL_6:
  if ([v5 count] || (v7 = objc_msgSend([NSError alloc], "initWithMRError:", 26)) == 0)
  {
    v11 = [v5 mr_formattedDebugDescription];

    v12 = _MRLogForCategory();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    if (v11)
    {
      if (v13)
      {
        v14 = *(a1 + 32);
        v15 = [*(a1 + 40) requestID];
        v16 = [v5 mr_formattedDebugDescription];
        v17 = +[NSDate date];
        [v17 timeIntervalSinceDate:*(a1 + 48)];
        v24 = 138544130;
        v25 = v14;
        v26 = 2114;
        v27 = v15;
        v28 = 2112;
        v29 = v16;
        v30 = 2048;
        v31 = v18;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds", &v24, 0x2Au);

LABEL_15:
      }
    }

    else if (v13)
    {
      v19 = *(a1 + 32);
      v15 = [*(a1 + 40) requestID];
      v16 = +[NSDate date];
      [v16 timeIntervalSinceDate:*(a1 + 48)];
      v24 = 138543874;
      v25 = v19;
      v26 = 2114;
      v27 = v15;
      v28 = 2048;
      v29 = v20;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned in %.4lf seconds", &v24, 0x20u);
      goto LABEL_15;
    }

    v7 = 0;
    goto LABEL_17;
  }

LABEL_11:
  v12 = _MRLogForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    sub_1003B01A0(a1, v7, v12);
  }

LABEL_17:

  v21 = [v5 msv_filter:&stru_1004C0F20];
  [*(a1 + 56) setNumberOfErrorsAtTimeout:{objc_msgSend(v21, "count")}];

  v22 = [v5 msv_filter:&stru_1004C0F40];
  [*(a1 + 56) setNumberOfSuccessAtTimeout:{objc_msgSend(v22, "count")}];

  [*(a1 + 56) setNumberOfPendingAtTimeout:{objc_msgSend(*(a1 + 56), "numberOfEndpoints") - objc_msgSend(v5, "count")}];
  [*(a1 + 56) trackWithError:v7];
  v23 = *(a1 + 64);
  if (v23)
  {
    (*(v23 + 16))(v23, v5, v7);
  }
}

BOOL sub_1001A4F7C(id a1, MRCommandResult *a2)
{
  v2 = [(MRCommandResult *)a2 error];
  v3 = v2 != 0;

  return v3;
}

BOOL sub_1001A4FB4(id a1, MRCommandResult *a2)
{
  v2 = [(MRCommandResult *)a2 error];
  v3 = v2 == 0;

  return v3;
}

BOOL sub_1001A4FEC(id a1, MRCommandResult *a2)
{
  v2 = [(MRCommandResult *)a2 error];
  v3 = v2 != 0;

  return v3;
}

BOOL sub_1001A5024(id a1, MRCommandResult *a2)
{
  v2 = [(MRCommandResult *)a2 error];
  v3 = v2 == 0;

  return v3;
}

void sub_1001A505C(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = *(a1 + 32);
  objc_sync_enter(v3);
  v4 = [*(a1 + 32) copy];
  objc_sync_exit(v3);

  (*(*(a1 + 40) + 16))();
}

void sub_1001A5100(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ([*(a1 + 32) disarm])
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_1001A5178(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) sendCommands];
  [v4 start];

  v5 = dispatch_group_create();
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v3;
  v6 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v26;
    do
    {
      v9 = 0;
      do
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v25 + 1) + 8 * v9);
        dispatch_group_enter(v5);
        v11 = *(a1 + 40);
        v19[0] = _NSConcreteStackBlock;
        v19[1] = 3221225472;
        v19[2] = sub_1001A53FC;
        v19[3] = &unk_1004C0F90;
        v20 = v5;
        v21 = v10;
        v24 = *(a1 + 72);
        v22 = *(a1 + 48);
        v23 = *(a1 + 56);
        [v10 connectToExternalDeviceWithOptions:0 details:v11 completion:v19];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v7);
  }

  v12 = qos_class_self();
  v13 = dispatch_get_global_queue(v12, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001A5638;
  block[3] = &unk_1004B71F8;
  v16 = *(a1 + 56);
  v17 = *(a1 + 32);
  v18 = *(a1 + 64);
  dispatch_group_notify(v5, v13, block);
}

void sub_1001A53FC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [MRCommandResult alloc];
    v5 = [v3 mr_errorByEnvelopingWithMRError:100];
    v6 = [v4 initWithError:v5];

    v7 = *(a1 + 56);
    objc_sync_enter(v7);
    [*(a1 + 56) addObject:v6];
    objc_sync_exit(v7);
  }

  else
  {
    dispatch_group_enter(*(a1 + 32));
    v6 = [[MRDestination alloc] initWithEndpoint:*(a1 + 40)];
    v7 = [[MRNowPlayingRequest alloc] initWithDestination:v6];
    v8 = *(a1 + 64);
    v9 = *(a1 + 48);
    v10 = qos_class_self();
    v11 = dispatch_get_global_queue(v10, 0);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1001A55B0;
    v12[3] = &unk_1004B7478;
    v13 = *(a1 + 56);
    v14 = *(a1 + 32);
    [v7 sendCommand:v8 options:v9 queue:v11 completion:v12];
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_1001A55B0(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = *(a1 + 32);
  objc_sync_enter(v3);
  [*(a1 + 32) addObject:v4];
  objc_sync_exit(v3);

  dispatch_group_leave(*(a1 + 40));
}

void sub_1001A5638(uint64_t a1)
{
  v2 = *(a1 + 32);
  objc_sync_enter(v2);
  v6 = [*(a1 + 32) copy];
  objc_sync_exit(v2);

  v3 = [*(a1 + 40) sendCommands];
  [v3 end];

  v4 = [v6 msv_filter:&stru_1004C0FB0];
  [*(a1 + 40) setNumberOfErrorsAtCompletion:{objc_msgSend(v4, "count")}];

  v5 = [v6 msv_filter:&stru_1004C0FD0];
  [*(a1 + 40) setNumberOfSuccessAtCompletion:{objc_msgSend(v5, "count")}];

  if ([*(a1 + 40) tracked])
  {
    [*(a1 + 40) setTracked:0];
    [*(a1 + 40) track];
  }

  (*(*(a1 + 48) + 16))();
}

BOOL sub_1001A5758(id a1, MRCommandResult *a2)
{
  v2 = [(MRCommandResult *)a2 error];
  v3 = v2 != 0;

  return v3;
}

BOOL sub_1001A5790(id a1, MRCommandResult *a2)
{
  v2 = [(MRCommandResult *)a2 error];
  v3 = v2 == 0;

  return v3;
}

id sub_1001A57C8(uint64_t a1)
{
  if ([*(a1 + 32) _isRequestForCurrentCongifuration:*(a1 + 40)])
  {
    [*(a1 + 48) setRequestForCurrentConfiguration:1];
LABEL_5:
    v2 = +[MROrigin localOrigin];
    goto LABEL_6;
  }

  if ([*(a1 + 32) _isRequestForLocalOrigin:*(a1 + 40)])
  {
    [*(a1 + 48) setRequestForLocalOrigin:1];
    goto LABEL_5;
  }

  if ([*(a1 + 32) _isRequestForCompanionOrigin:*(a1 + 40)])
  {
    [*(a1 + 48) setRequestForCompanionOrigin:1];
    v2 = [[MROrigin alloc] initWithIdentifier:1129140302 type:1 displayName:&stru_1004D2058];
  }

  else
  {
    v2 = 0;
  }

LABEL_6:

  return v2;
}

void sub_1001A5888(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 sendCommands];
  v6 = [v4 error];
  [v5 endWithError:v6];

  v7 = *(a1 + 40);
  v9 = v4;
  v8 = [NSArray arrayWithObjects:&v9 count:1];
  (*(v7 + 16))(v7, v8, 0);
}

void sub_1001A5968(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v36 = a2;
  v37 = a3;
  v8 = a5;
  v9 = [*(a1 + 32) discoverOutputDevices];
  v10 = [v8 mr_errorByEnvelopingWithMRError:47];
  [v9 endWithError:v10];

  v11 = objc_alloc_init(NSMutableArray);
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v35 = a1;
  v12 = *(a1 + 40);
  v13 = [v12 countByEnumeratingWithState:&v39 objects:v49 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v40;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v40 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v39 + 1) + 8 * i);
        v38[0] = _NSConcreteStackBlock;
        v38[1] = 3221225472;
        v38[2] = sub_1001A5DF0;
        v38[3] = &unk_1004B9698;
        v38[4] = v17;
        v18 = [v37 msv_firstWhere:v38];
        if (!v18)
        {
          [v11 addObject:v17];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v39 objects:v49 count:16];
    }

    while (v14);
  }

  if ([v11 count])
  {
    v19 = [[NSString alloc] initWithFormat:@"Unable to find outputDeviceUIDs=%@", v11];
    v20 = _MRLogForCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = *(a1 + 48);
      v22 = [*(v35 + 56) requestID];
      *buf = 138543874;
      v44 = v21;
      v45 = 2114;
      v46 = v22;
      v47 = 2112;
      v48 = v19;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
    }

    [*(v35 + 32) setNumberOfMissingOutputDeviceUIDs:{objc_msgSend(v11, "count")}];
  }

  v23 = [NSString alloc];
  v24 = [v36 msv_map:&stru_1004C1018];
  v25 = [v23 initWithFormat:@"Resolved outputDevices=%@", v24];

  v26 = _MRLogForCategory();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = *(v35 + 48);
    v28 = [*(v35 + 56) requestID];
    *buf = 138543874;
    v44 = v27;
    v45 = 2114;
    v46 = v28;
    v47 = 2112;
    v48 = v25;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
  }

  [*(v35 + 32) setNumberOfDiscoveredOutputDeviceUIDs:{objc_msgSend(v36, "count")}];
  v29 = [NSString alloc];
  v30 = [v37 msv_map:&stru_1004C1038];
  v31 = [v29 initWithFormat:@"Resolved endpoints=%@", v30];

  v32 = _MRLogForCategory();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    v33 = *(v35 + 48);
    v34 = [*(v35 + 56) requestID];
    *buf = 138543874;
    v44 = v33;
    v45 = 2114;
    v46 = v34;
    v47 = 2112;
    v48 = v31;
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
  }

  [*(v35 + 32) setNumberOfEndpoints:{objc_msgSend(v37, "count")}];
  (*(*(v35 + 64) + 16))();
}

BOOL sub_1001A5FD4(id a1, NSString *a2)
{
  v2 = a2;
  v3 = +[MRAVOutputDevice localDeviceUID];
  v4 = [(NSString *)v2 isEqualToString:v3];

  return v4;
}

uint64_t sub_1001A616C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) WHAIdentifier];
  if ([v4 isEqualToString:v3])
  {
    v5 = 1;
  }

  else
  {
    v5 = [v3 isEqualToString:@"CMPN"];
  }

  return v5;
}

uint64_t sub_1001A62C0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) deviceUID];
  if ([v4 isEqualToString:v3])
  {
    v5 = 1;
  }

  else
  {
    v6 = [*(a1 + 32) clusterID];
    v5 = [v6 isEqualToString:v3];
  }

  return v5;
}

void sub_1001A669C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001A66C8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained invalidate];
    WeakRetained = v2;
  }
}

void sub_1001A6A1C(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = _MRLogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1003B0288();
    }
  }
}

void sub_1001A6BB8(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = _MRLogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1003B02F4();
    }
  }
}

void sub_1001A6D30(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = _MRLogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1003B0360();
    }
  }
}

void sub_1001A70A8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _MRLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 138412546;
    v7 = v5;
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[MRUIController][D] volume request: %@; error: %@", &v6, 0x16u);
  }
}

void sub_1001A7984(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001A79B4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = _MRLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 134217984;
    v5 = WeakRetained;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[MRUIController][D] <%p> XPC interrupted.", &v4, 0xCu);
  }

  v3 = [WeakRetained xpcConnection];
  [v3 invalidate];
}

void sub_1001A7A80(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = _MRLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 134217984;
    v5 = WeakRetained;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[MRUIController][D] <%p> XPC invalidated.", &v4, 0xCu);
  }

  if (WeakRetained)
  {
    os_unfair_lock_lock(WeakRetained + 4);
    v3 = *&WeakRetained[6]._os_unfair_lock_opaque;
    *&WeakRetained[6]._os_unfair_lock_opaque = 0;

    os_unfair_lock_unlock(WeakRetained + 4);
  }
}

void sub_1001A7BF8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _MRLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 134218242;
    v7 = v5;
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[MRUIController][D] <%p> Server proxy error %@.", &v6, 0x16u);
  }
}

void sub_1001A7D68(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _MRLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 134218242;
    v7 = v5;
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[MRUIController][D] <%p> Server proxy error %@.", &v6, 0x16u);
  }
}

void sub_1001A8084(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001A8650(id a1)
{
  v1 = objc_alloc_init(MRDGroupSessionEligibilityMonitor);
  v2 = qword_100529700;
  qword_100529700 = v1;
}

void sub_1001A8854(uint64_t a1)
{
  [*(a1 + 32) initializeObserversAndState];
  v2 = [*(a1 + 32) workerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001A88FC;
  block[3] = &unk_1004B6D08;
  v4 = *(a1 + 32);
  dispatch_async(v2, block);
}

void sub_1001A8C88(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 88));
  _Unwind_Resume(a1);
}

void sub_1001A8CB8(uint64_t a1)
{
  v2 = _MRLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(a1 + 32) manateeAvailable];
    v5[0] = 67109120;
    v5[1] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "[MRDGroupSessionEligibilityMonitor] SystemMonitor.manateeChangedHandler. Manatee available: %{BOOL}u", v5, 8u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained reevaluateState];
}

void sub_1001A8D7C(uint64_t a1)
{
  v2 = _MRLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(a1 + 32) manateeAvailable];
    v5[0] = 67109120;
    v5[1] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "[MRDGroupSessionEligibilityMonitor] SystemMonitor.activateWithCompletion. Manatee available: %{BOOL}u", v5, 8u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained reevaluateState];
}

void sub_1001A8FF0(uint64_t a1)
{
  [*(*(a1 + 32) + 56) addObject:*(a1 + 40)];
  v2 = [*(*(a1 + 32) + 8) copy];
  v3 = *(*(a1 + 32) + 32);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001A90C4;
  block[3] = &unk_1004B69D0;
  v4 = *(a1 + 40);
  v5 = *(a1 + 32);
  v8 = v4;
  v9 = v5;
  v10 = v2;
  v6 = v2;
  dispatch_async(v3, block);
}

void sub_1001A9244(uint64_t a1)
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6) eligibilityMonitor:*(a1 + 40) eligibilityStatusDidChange:{*(a1 + 48), v7}];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

id sub_1001A9718(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v11 = 0;
  v4 = a2;
  v5 = [v3 hostingStateForUserState:v4 reason:&v11];
  v6 = v11;
  v7 = *(a1 + 32);
  v8 = [v4 identifier];

  [v7 appendFormat:@"\n  %@> %@", v8, v6];
  v9 = [NSNumber numberWithUnsignedInteger:v5];

  return v9;
}

void sub_1001AA6A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v26 + 32));
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak((v24 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001AA73C(uint64_t a1, void *a2)
{
  v3 = [a2 msv_filter:&stru_1004C1418];
  v4 = _MRLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 count];
    v6 = [v3 msv_map:&stru_1004C1438];
    v10 = 134218242;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[MRDRRC] addOutputDevicesAddedCallback: (%lu) %@", &v10, 0x16u);
  }

  v7 = [v3 msv_map:&stru_1004C1478];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = [WeakRetained recommender];
  [v9 updateRouteCandidates:v7];
}

NSString *__cdecl sub_1001AA890(id a1, MRAVOutputDevice *a2)
{
  v2 = a2;
  v3 = [(MRAVOutputDevice *)v2 localizedName];
  v4 = [(MRAVOutputDevice *)v2 uid];

  v5 = [NSString stringWithFormat:@"%@ - %@", v3, v4];

  return v5;
}

MRIRRoute *__cdecl sub_1001AA924(id a1, MRAVOutputDevice *a2)
{
  v6 = a2;
  v2 = a2;
  v3 = [NSArray arrayWithObjects:&v6 count:1];
  v4 = [MRIRRoute routeWithOutputDevices:v3, v6];

  return v4;
}

void sub_1001AABDC(uint64_t a1, void *a2)
{
  v3 = a2;
  v10 = MREndpointConnectionReasonUserInfoKey;
  v11 = @"intelligentRoutingRecommendationController";
  v4 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001AACFC;
  v7[3] = &unk_1004B8690;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v6 connectToExternalDeviceWithUserInfo:v4 completion:v7];
}

void sub_1001AACFC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  objc_sync_enter(v4);
  if (v3)
  {
    v5 = _MRLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 40);
      v6 = *(a1 + 48);
      v8 = [*(a1 + 32) activeSystemEndpoint];
      v13 = 138413058;
      v14 = v7;
      v15 = 2112;
      v16 = v6;
      v17 = 2112;
      v18 = v3;
      v19 = 2112;
      v20 = v8;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[MRDRRC] Failed to connect to active system endpoint %@<%@> with error %@. Reset to %@.", &v13, 0x2Au);
    }
  }

  else
  {
    v9 = _MRLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 40);
      v10 = *(a1 + 48);
      v12 = [*(a1 + 32) activeSystemEndpoint];
      v13 = 138412802;
      v14 = v11;
      v15 = 2112;
      v16 = v10;
      v17 = 2112;
      v18 = v12;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[MRDRRC] Setting active system endpoint to %@<%@> (old value: %@)", &v13, 0x20u);
    }

    [*(a1 + 32) setActiveSystemEndpoint:*(a1 + 40)];
  }

  objc_sync_exit(v4);
}

void sub_1001AB8D4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v7 && [v8 count])
  {
    [*(a1 + 32) signpostEndWillShowBanner:1];
    v10 = [v7 recommendationType];
    if (v10 > 1)
    {
      if (v10 == 2)
      {
        v38 = +[MRDMediaBundleManager shared];
        v39 = [v38 cachedEligibilityOf:*(a1 + 40)];

        if ([v39 isEligibleForCallToAction])
        {
          v40 = [*(a1 + 32) shouldUseVideoSymbolForDevices:v8 bundleIdentifier:*(a1 + 40)];
          v41 = _MRLogForCategory();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            v42 = @"audio";
            if (v40)
            {
              v42 = @"video";
            }

            *buf = 138412546;
            *&buf[4] = v7;
            *&buf[12] = 2112;
            *&buf[14] = v42;
            _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "[MRDRRC] call to action request for: %@ - %@", buf, 0x16u);
          }

          v43 = [*(a1 + 32) mediaActivityManager];
          v48[0] = _NSConcreteStackBlock;
          v48[1] = 3221225472;
          v48[2] = sub_1001AC9C8;
          v48[3] = &unk_1004C15A8;
          v48[4] = *(a1 + 32);
          v49 = v7;
          v50 = *(a1 + 40);
          v51 = *(a1 + 48);
          [v43 presentControlCenterCallToActionVideo:v40 completion:v48];
        }

        else
        {
          v44 = _MRLogForCategory();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
          {
            v45 = *(a1 + 40);
            *buf = 138412802;
            *&buf[4] = v7;
            *&buf[12] = 2112;
            *&buf[14] = v45;
            *&buf[22] = 2112;
            v82 = v39;
            _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "[MRDRRC] dropping call to action request for: %@ - %@ is not eligible: %@", buf, 0x20u);
          }
        }
      }

      else if (v10 == 3)
      {
        v28 = _MRLogForCategory();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = v7;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "[MRDRRC] 𝝙: %@ ", buf, 0xCu);
        }

        v29 = [*(a1 + 32) mediaActivityManager];
        v30 = [v7 route];
        v31 = [*(a1 + 32) activeSystemEndpoint];
        v75[0] = _NSConcreteStackBlock;
        v75[1] = 3221225472;
        v75[2] = sub_1001AC0C8;
        v75[3] = &unk_1004C14E0;
        v76 = v7;
        v32 = v8;
        v33 = *(a1 + 32);
        v77 = v32;
        v78 = v33;
        v79 = *(a1 + 40);
        v80 = *(a1 + 48);
        [v29 postDeltaBannerRequestForRoute:v30 devices:v32 endpoint:v9 activeSystemEndpoint:v31 completion:v75];
      }
    }

    else if (v10)
    {
      if (v10 == 1)
      {
        v46 = dispatch_group_create();
        dispatch_group_enter(v46);
        v11 = +[NSUUID UUID];
        v12 = _MRLogForCategory();
        v13 = [v11 hash];
        if ((v13 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v14 = v13;
          if (os_signpost_enabled(v12))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_BEGIN, v14, "ApplyRouteRecommendation", "", buf, 2u);
          }
        }

        v15 = *(a1 + 32);
        v16 = [v7 route];
        v64[0] = _NSConcreteStackBlock;
        v64[1] = 3221225472;
        v64[2] = sub_1001AC54C;
        v64[3] = &unk_1004C1530;
        v17 = v7;
        v65 = v17;
        v18 = v46;
        v66 = v18;
        v47 = v11;
        v67 = v47;
        [v15 performTopologyModificationToRoute:v16 devices:v8 endpoint:v9 requestName:@"AutoRoute" completion:v64];

        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2020000000;
        v82 = 0;
        dispatch_group_enter(v18);
        v19 = [*(a1 + 32) mediaActivityManager];
        v20 = [v17 route];
        v58[0] = _NSConcreteStackBlock;
        v58[1] = 3221225472;
        v58[2] = sub_1001AC6DC;
        v58[3] = &unk_1004C1558;
        v21 = v17;
        v63 = buf;
        v22 = *(a1 + 32);
        v59 = v21;
        v60 = v22;
        v61 = v8;
        v23 = v18;
        v62 = v23;
        [v19 postAutoRouteBannerRequestForRoute:v20 devices:v61 endpoint:v9 completion:v58];

        v24 = [*(a1 + 32) queue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1001AC848;
        block[3] = &unk_1004C1580;
        v25 = v21;
        v56 = buf;
        v26 = *(a1 + 32);
        v27 = *(a1 + 40);
        v53 = v25;
        v54 = v26;
        v55 = v27;
        v57 = *(a1 + 48);
        dispatch_group_notify(v23, v24, block);

        _Block_object_dispose(buf, 8);
      }
    }

    else
    {
      v34 = [*(a1 + 32) mediaActivityManager];
      v35 = [v7 route];
      v68[0] = _NSConcreteStackBlock;
      v68[1] = 3221225472;
      v68[2] = sub_1001AC400;
      v68[3] = &unk_1004C1508;
      v36 = v7;
      v37 = *(a1 + 32);
      v69 = v36;
      v70 = v37;
      v71 = v8;
      v72 = v9;
      v73 = *(a1 + 40);
      v74 = *(a1 + 48);
      [v34 postOneTapSuggestionBannerRequestForRoute:v35 devices:v71 endpoint:v72 completion:v68];
    }
  }

  else
  {
    [*(a1 + 32) signpostEndWillShowBanner:0];
  }
}

void sub_1001AC0C8(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = _MRLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    *buf = 138412802;
    v30 = v7;
    v31 = 2048;
    v32 = a2;
    v33 = 2112;
    v34 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[MRDRRC] recommendation𝝙: %@ got result: %lu error %@", buf, 0x20u);
  }

  v26 = a2;
  v27 = v5;

  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_1001AC390;
  v28[3] = &unk_1004B8A40;
  v8 = *(a1 + 40);
  v28[4] = *(a1 + 48);
  v9 = [v8 msv_filter:v28];
  v10 = _MRLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 32);
    *buf = 138412546;
    v30 = v11;
    v31 = 2112;
    v32 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[MRDRRC] recommendation𝝙: %@ d2a: %@", buf, 0x16u);
  }

  v12 = [NSSet setWithArray:*(a1 + 40)];
  v13 = [*(a1 + 48) activeSystemEndpoint];
  v14 = [v13 outputDevices];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = &__NSArray0__struct;
  }

  v17 = [NSSet setWithArray:v16];

  v18 = [v12 setByAddingObjectsFromSet:v17];
  v19 = [v18 allObjects];
  v20 = [MRIRRoute routeWithOutputDevices:v19];

  v21 = *(a1 + 48);
  v22 = [v21 activeSystemEndpoint];
  v23 = *(a1 + 56);
  v24 = *(a1 + 64);
  v25 = [*(a1 + 32) contextIdentifier];
  [v21 handleDeltaResult:v26 forRoute:v20 devicesToAdd:v9 sourceEndpoint:v22 primaryBundleIdentifier:v23 isOutsideApp:v24 contextIdentifier:v25];
}

uint64_t sub_1001AC390(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 activeSystemEndpoint];
  v5 = [v3 uid];

  LODWORD(v3) = [v4 containsOutputDeviceWithUID:v5];
  return v3 ^ 1;
}

void sub_1001AC400(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = _MRLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    *buf = 138412802;
    v16 = v7;
    v17 = 2048;
    v18 = a2;
    v19 = 2112;
    v20 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[MRDRRC] recommendation: %@ got result: %lu error %@", buf, 0x20u);
  }

  v8 = *(a1 + 40);
  v9 = [*(a1 + 32) route];
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v12 = *(a1 + 64);
  v13 = *(a1 + 72);
  v14 = [*(a1 + 32) contextIdentifier];
  [v8 handleResult:a2 forRoute:v9 devices:v10 endpoint:v11 primaryBundleIdentifier:v12 isOutsideApp:v13 contextIdentifier:v14];
}

void sub_1001AC54C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _MRLogForCategory();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v9 = *(a1 + 32);
      v17 = 138412546;
      v18 = v9;
      v19 = 2112;
      v20 = v6;
      v10 = "[MRDRRC] auto route topology modification: error setting ASE to %@ - %@";
      v11 = v7;
      v12 = 22;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v10, &v17, v12);
    }
  }

  else if (v8)
  {
    v13 = *(a1 + 32);
    v17 = 138412290;
    v18 = v13;
    v10 = "[MRDRRC] auto route topology modification: successfully set ASE to %@";
    v11 = v7;
    v12 = 12;
    goto LABEL_6;
  }

  dispatch_group_leave(*(a1 + 40));
  v14 = _MRLogForCategory();
  v15 = [*(a1 + 48) hash];
  if ((v15 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v16 = v15;
    if (os_signpost_enabled(v14))
    {
      LOWORD(v17) = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_INTERVAL_END, v16, "ApplyRouteRecommendation", "Type = AutoRoute", &v17, 2u);
    }
  }
}

void sub_1001AC6DC(uint64_t a1, unint64_t a2, void *a3)
{
  v5 = a3;
  v6 = _MRLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    if (a2 > 4)
    {
      v8 = 0;
    }

    else
    {
      v8 = *(&off_1004C1768 + a2);
    }

    v9 = @"nil";
    v14 = 138412802;
    if (v5)
    {
      v9 = v5;
    }

    v15 = v7;
    v16 = 2112;
    v17 = v8;
    v18 = 2112;
    v19 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[MRDRRC] auto route banner: %@ got result:%@ error:%@", &v14, 0x20u);
  }

  *(*(*(a1 + 64) + 8) + 24) = a2;
  if (a2 != 1)
  {
    v10 = *(a1 + 48);
    v11 = [*(a1 + 40) routedBackgroundActivityManager];
    [v11 setOptimisticDevices:v10];

    v12 = [*(a1 + 32) route];
    v13 = [*(a1 + 40) routedBackgroundActivityManager];
    [v13 setOptimisticRoute:v12];
  }

  dispatch_group_leave(*(a1 + 56));
}

void sub_1001AC848(uint64_t a1)
{
  v2 = _MRLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(*(*(a1 + 56) + 8) + 24);
    if (v4 > 4)
    {
      v5 = 0;
    }

    else
    {
      v5 = *(&off_1004C1768 + v4);
    }

    v14 = 138412546;
    v15 = v3;
    v16 = 2112;
    v17 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[MRDRRC] auto route b+tm: %@ will handle result:%@", &v14, 0x16u);
  }

  v6 = [*(a1 + 40) routedBackgroundActivityManager];
  [v6 setOptimisticDevices:0];

  v7 = [*(a1 + 40) routedBackgroundActivityManager];
  [v7 setOptimisticRoute:0];

  v8 = *(*(*(a1 + 56) + 8) + 24);
  v9 = *(a1 + 40);
  v10 = [*(a1 + 32) route];
  v11 = *(a1 + 48);
  v12 = *(a1 + 64);
  v13 = [*(a1 + 32) contextIdentifier];
  [v9 handleAutoRouteResult:v8 forRoute:v10 primaryBundleIdentifier:v11 isOutsideApp:v12 contextIdentifier:v13];
}

void sub_1001AC9C8(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v7 = [*(a1 + 40) route];
    v4 = *(a1 + 56);
    v5 = *(a1 + 48);
    v6 = [*(a1 + 40) contextIdentifier];
    [v3 sendEventForCallToActionForRouteCandidate:v7 bundleIdentifier:v5 isOutsideApp:v4 contextIdentifier:v6];
  }
}

void sub_1001ACD04(id a1, MRUpdateActiveSystemEndpointResponse *a2)
{
  v2 = a2;
  v3 = _MRLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[MRDRRC] SetASEToLocal result: %@", &v4, 0xCu);
  }
}

void sub_1001ACE40(id a1, MRUpdateActiveSystemEndpointResponse *a2)
{
  v2 = a2;
  v3 = _MRLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[MRDRRC] ASE Clear result: %@", &v8, 0xCu);
  }

  v4 = [(MRUpdateActiveSystemEndpointResponse *)v2 error];

  if (!v4)
  {
    v5 = +[MRAVLocalEndpoint sharedLocalEndpoint];
    v6 = [v5 outputDevices];
    v7 = [v6 msv_filter:&stru_1004C1630];

    [v5 removeOutputDevices:v7 initiator:@"RRCSAPRC" withReplyQueue:0 completion:&stru_1004C1650];
  }
}

void sub_1001ACF94(id a1, NSError *a2)
{
  v2 = a2;
  v3 = _MRLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[MRDRRC] Remove devices error: %@", &v4, 0xCu);
  }
}

void sub_1001AD694(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001AD6D4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v4 = a2;
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    (*(v2 + 16))(v2, WeakRetained, v4);
  }
}

uint64_t sub_1001ADA58(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32), a2);
  }

  return result;
}

void sub_1001ADBB8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _MRLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[MRDRRC] ASE Change result: %@", &v8, 0xCu);
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    v6 = *(a1 + 32);
    v7 = [v3 error];
    (*(v5 + 16))(v5, v6, v7);
  }
}

void sub_1001AEE1C(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = a1[4];
  v8 = _MRLogForCategory();
  v9 = v8;
  if (!v6)
  {
    v16 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (!v16)
      {
        goto LABEL_14;
      }

      v18 = a1[5];
      v17 = a1[6];
      v19 = a1[4];
      v14 = +[NSDate date];
      [v14 timeIntervalSinceDate:a1[7]];
      v28 = 138544130;
      v29 = v18;
      v30 = 2114;
      v31 = v17;
      v32 = 2114;
      v33 = v19;
      v34 = 2048;
      v35 = v20;
      v21 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
      v22 = v9;
      v23 = 42;
    }

    else
    {
      if (!v16)
      {
        goto LABEL_14;
      }

      v24 = a1[5];
      v25 = a1[6];
      v14 = +[NSDate date];
      [v14 timeIntervalSinceDate:a1[7]];
      v28 = 138543874;
      v29 = v24;
      v30 = 2114;
      v31 = v25;
      v32 = 2048;
      v33 = v26;
      v21 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
      v22 = v9;
      v23 = 32;
    }

    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, v21, &v28, v23);
    goto LABEL_13;
  }

  v10 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
  if (v7)
  {
    if (!v10)
    {
      goto LABEL_14;
    }

    v12 = a1[5];
    v11 = a1[6];
    v13 = a1[4];
    v14 = +[NSDate date];
    [v14 timeIntervalSinceDate:a1[7]];
    v28 = 138544386;
    v29 = v12;
    v30 = 2114;
    v31 = v11;
    v32 = 2114;
    v33 = v6;
    v34 = 2114;
    v35 = v13;
    v36 = 2048;
    v37 = v15;
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", &v28, 0x34u);
LABEL_13:

    goto LABEL_14;
  }

  if (v10)
  {
    sub_1003B05FC(a1);
  }

LABEL_14:

  v27 = a1[8];
  if (v27)
  {
    (*(v27 + 16))(v27, v5, v6);
  }
}

void sub_1001AF09C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = MRMediaRemoteErrorFromCommandStatuses();
  v5 = _MRLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = a1[4];
    v7 = a1[5];
    v8 = a1[6];
    v9 = 138413058;
    v10 = v6;
    v11 = 2112;
    v12 = v4;
    v13 = 2112;
    v14 = v7;
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[MRDRRC] Pause for %@ completed, error: %@ request: %@ - %@", &v9, 0x2Au);
  }
}

void sub_1001AF5C8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 80));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_1001AF5EC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _MRLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 80));
    v6 = *(a1 + 32);
    v30 = 138412802;
    v31 = WeakRetained;
    v32 = 2112;
    v33 = v6;
    v34 = 2112;
    v35 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[MRDRRC] delta add to %@ of %@ finished: %@", &v30, 0x20u);
  }

  v7 = *(a1 + 40);
  v8 = _MRLogForCategory();
  v9 = v8;
  if (!v3)
  {
    v16 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (!v16)
      {
        goto LABEL_16;
      }

      v18 = *(a1 + 48);
      v17 = *(a1 + 56);
      v19 = *(a1 + 40);
      v14 = +[NSDate date];
      [v14 timeIntervalSinceDate:*(a1 + 64)];
      v30 = 138544130;
      v31 = v18;
      v32 = 2114;
      v33 = v17;
      v34 = 2114;
      v35 = v19;
      v36 = 2048;
      v37 = v20;
      v21 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
      v22 = v9;
      v23 = 42;
    }

    else
    {
      if (!v16)
      {
        goto LABEL_16;
      }

      v24 = *(a1 + 48);
      v25 = *(a1 + 56);
      v14 = +[NSDate date];
      [v14 timeIntervalSinceDate:*(a1 + 64)];
      v30 = 138543874;
      v31 = v24;
      v32 = 2114;
      v33 = v25;
      v34 = 2048;
      v35 = v26;
      v21 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
      v22 = v9;
      v23 = 32;
    }

    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, v21, &v30, v23);
    goto LABEL_15;
  }

  v10 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
  if (v7)
  {
    if (v10)
    {
      v12 = *(a1 + 48);
      v11 = *(a1 + 56);
      v13 = *(a1 + 40);
      v14 = +[NSDate date];
      [v14 timeIntervalSinceDate:*(a1 + 64)];
      v30 = 138544386;
      v31 = v12;
      v32 = 2114;
      v33 = v11;
      v34 = 2114;
      v35 = v3;
      v36 = 2114;
      v37 = v13;
      v38 = 2048;
      v39 = v15;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", &v30, 0x34u);
LABEL_15:
    }
  }

  else if (v10)
  {
    sub_1003B06AC(a1);
  }

LABEL_16:

  v27 = _MRLogForCategory();
  v28 = [*(a1 + 72) hash];
  if ((v28 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v29 = v28;
    if (os_signpost_enabled(v27))
    {
      LOWORD(v30) = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v27, OS_SIGNPOST_INTERVAL_END, v29, "ApplyRouteRecommendation", "Type = DeltaBanner", &v30, 2u);
    }
  }
}

void sub_1001AFB90(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) routedBackgroundActivityManager];
  [v7 setOptimisticDevices:0];

  v8 = [*(a1 + 32) routedBackgroundActivityManager];
  [v8 setOptimisticRoute:0];

  v9 = _MRLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 40);
    v14 = 138412802;
    v15 = v5;
    v16 = 2112;
    v17 = v10;
    v18 = 2112;
    v19 = v6;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[MRDRRC] topology modification to %@ (%@) finished: %@", &v14, 0x20u);
  }

  v11 = _MRLogForCategory();
  v12 = [*(a1 + 48) hash];
  if ((v12 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v13 = v12;
    if (os_signpost_enabled(v11))
    {
      LOWORD(v14) = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_END, v13, "ApplyRouteRecommendation", "Type = OneTapSuggestion", &v14, 2u);
    }
  }
}

void sub_1001B0120(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001B0144(uint64_t a1)
{
  v2 = +[MRDDisplayMonitor sharedMonitor];
  if ([v2 displayOn])
  {
    v3 = +[MRDDisplayMonitor sharedMonitor];
    v4 = [v3 presentedBundleIdentifiers];
    v5 = [v4 containsObject:*(a1 + 32)];
  }

  else
  {
    v5 = 0;
  }

  v6 = [*(a1 + 40) isRoutePlaying:*(a1 + 48)];
  v7 = _MRLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    if (v5)
    {
      v9 = @"is";
    }

    else
    {
      v9 = @"is not";
    }

    v10 = [*(a1 + 48) routeIdentifier];
    v11 = v10;
    v15 = 138413058;
    if (v6)
    {
      v12 = @"is";
    }

    else
    {
      v12 = @"is not";
    }

    v16 = v8;
    v17 = 2112;
    v18 = v9;
    v19 = 2112;
    v20 = v10;
    v21 = 2112;
    v22 = v12;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[MRDRRC] Timer fired %@ %@ visible, %@ %@ playing", &v15, 0x2Au);
  }

  if (((v5 | v6) & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    [WeakRetained stopAirPlayingAndRemoteControlling];
  }

  v14 = objc_loadWeakRetained((a1 + 56));
  [v14 clearUnusedAutoRoute];
}

void sub_1001B0730(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location, ...)
{
  va_start(va, location);
  _Block_object_dispose(va, 8);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_1001B0780()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_100529708;
  v7 = qword_100529708;
  if (!qword_100529708)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_1001B1370;
    v3[3] = &unk_1004B8728;
    v3[4] = &v4;
    sub_1001B1370(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1001B0848(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001B0860(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setMediaControls:0];
}

void sub_1001B1370(uint64_t a1)
{
  sub_1001B13C8();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MPMediaControlsConfiguration");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_100529708 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    sub_1003A5BFC();
    sub_1001B13C8();
  }
}

void sub_1001B13C8()
{
  v1[0] = 0;
  if (!qword_100529710)
  {
    v1[1] = _NSConcreteStackBlock;
    v1[2] = 3221225472;
    v1[3] = sub_1001B14C4;
    v1[4] = &unk_1004B82A0;
    v1[5] = v1;
    v2 = off_1004C1750;
    v3 = 0;
    qword_100529710 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!qword_100529710)
  {
    v0 = abort_report_np("%s", v1[0]);
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t sub_1001B14C4(uint64_t a1)
{
  result = _sl_dlopen();
  qword_100529710 = result;
  return result;
}

MRDRemoteDisplayPairingAction *sub_1001B1538(uint64_t a1)
{
  sub_1001B13C8();
  result = objc_getClass("MPMediaControls");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_100529718 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    sub_1003A5C24();
    return [(MRDRemoteDisplayPairingAction *)v3 init];
  }

  return result;
}

void sub_1001B1994(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001B19B8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [*(WeakRetained + 2) invalidate];
    v6 = v5[2];
    v5[2] = 0;

    [v5 setConnecting:0];
  }

  v7 = _MRLogForCategory();
  v8 = v7;
  if (v3)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1003B07A0(v3, v8);
    }

    v9 = *(*(a1 + 32) + 16);
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[MRDRemoteDisplayPairingAction] Guest pairing successfully connected", v10, 2u);
    }

    v9 = *(*(a1 + 32) + 16);
  }

  v9();
}

id sub_1001B1B38(unint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [NSString stringWithFormat:@"InvalidState-%ld", a1];
  }

  else
  {
    v2 = *(&off_1004C17D0 + a1);
  }

  return v2;
}

void sub_1001B28D0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _MRLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1003B0818(a1, v3, v4);
    }
  }
}

void sub_1001B2CB4(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 session:*(a1 + 40) didUpdatePendingParticipants:{*(a1 + 48), v8}];
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

id sub_1001B3248(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

void sub_1001B328C(uint64_t a1)
{
  (*(*(a1 + 56) + 16))();
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 session:*(a1 + 40) didUpdatePendingParticipants:{*(a1 + 48), v8}];
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

id sub_1001B36C8(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

void sub_1001B370C(uint64_t a1)
{
  (*(*(a1 + 56) + 16))();
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 session:*(a1 + 40) didUpdatePendingParticipants:{*(a1 + 48), v8}];
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

void sub_1001B3AE4(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 sessionDidRemoveAllParticipants:{*(a1 + 40), v8}];
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

id sub_1001B3D74(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

void sub_1001B4254(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [(os_unfair_lock_s *)WeakRetained setLowPowerDeferralTimer:0];
    os_unfair_lock_lock(v2 + 3);
    [(os_unfair_lock_s *)v2 reevaluateLowPowerMode];
    os_unfair_lock_unlock(v2 + 3);
    WeakRetained = v2;
  }
}

void sub_1001B42BC(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 session:*(a1 + 40) didChangeState:{*(a1 + 48), v8}];
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

void sub_1001B45E4(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 session:*(a1 + 40) didUpdateParticipants:{*(a1 + 48), v8}];
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

uint64_t sub_1001B47A8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 localParticipant];
  v5 = [v3 isEqual:v4];

  return v5 ^ 1;
}

void sub_1001B4960(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 session:*(a1 + 40) didUpdateMembers:{*(a1 + 48), v8}];
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

void sub_1001B4B98(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 session:*(a1 + 40) didUpdatePendingParticipants:{*(a1 + 48), v8}];
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

void sub_1001B4FFC(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = (a1 + 32);
  os_unfair_lock_lock(v5 + 3);
  if (v3)
  {
    v6 = _MRLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1003B0984();
    }

    [*v4 setLowPowerError:v3];
    v7 = [*v4 fastSyncSession];
    [v7 end];
  }

  else
  {
    [*v4 setIsLowPowerMode:0];
  }

  [*v4 setIsUpdatingLowPowerMode:0];
  [*v4 reevaluateLowPowerMode];
  os_unfair_lock_unlock(*v4 + 3);
}

void sub_1001B50C8(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = (a1 + 32);
  os_unfair_lock_lock(v5 + 3);
  if (v3)
  {
    v6 = _MRLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1003B09F0();
    }

    [*v4 setLowPowerError:v3];
  }

  else
  {
    [*v4 setIsLowPowerMode:1];
  }

  [*v4 setIsUpdatingLowPowerMode:0];
  [*v4 reevaluateLowPowerMode];
  os_unfair_lock_unlock(*v4 + 3);
}

void sub_1001B5248(uint64_t a1)
{
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        (*(*(*(&v6 + 1) + 8 * v5) + 16))(*(*(&v6 + 1) + 8 * v5));
        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

void sub_1001B5674(uint64_t a1)
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          v8 = *(a1 + 40);
          v9 = *(a1 + 48);
          v10 = [*(a1 + 56) identifier];
          [v7 session:v8 didReceiveMessageData:v9 fromParticipant:v10];
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }
}

id sub_1001B59A8(uint64_t a1)
{
  v6[0] = kMREventGroupSessionJoinResponseSentByHostKey;
  v2 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [*(a1 + 32) isHosted]);
  v7[0] = v2;
  v6[1] = kMREventGroupSessionJoinResponseApprovedKey;
  v3 = [NSNumber numberWithBool:*(a1 + 40)];
  v7[1] = v3;
  v4 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

id sub_1001B6AC4(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001B6B84;
  v5[3] = &unk_1004B99A0;
  v5[4] = *(a1 + 32);
  v3 = [v2 addObserverForName:kMRDeviceInfoDidChangeNotification object:0 queue:0 usingBlock:v5];

  return [*(a1 + 32) _reevaluateWithReason:@"Startup"];
}

void sub_1001B6B84(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 name];
  [v2 _reevaluateWithReason:v3];
}

void sub_1001B6C64(uint64_t a1)
{
  v2 = [*(a1 + 32) operations];
  [v2 enumerateKeysAndObjectsUsingBlock:&stru_1004C1878];

  v3 = [*(a1 + 32) operations];
  [v3 removeAllObjects];

  v4 = [*(a1 + 32) relayConnectionsToSecondaries];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001B6D4C;
  v6[3] = &unk_1004C18A0;
  v6[4] = *(a1 + 32);
  [v4 enumerateKeysAndObjectsUsingBlock:v6];

  v5 = [*(a1 + 32) relayConnectionsToSecondaries];
  [v5 removeAllObjects];
}

void sub_1001B6D4C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v7 = [[NSError alloc] initWithMRError:128];
  v5 = [v4 connection];
  [v5 removeObserver:*(a1 + 32)];

  v6 = [v4 connection];

  [v6 closeWithError:v7];
}

void sub_1001B6EE0(uint64_t a1)
{
  v2 = [*(a1 + 32) operations];
  v3 = [v2 count];

  if (v3)
  {
    v4 = objc_alloc_init(NSMutableDictionary);
    v5 = [*(a1 + 32) operations];
    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = sub_1001B7020;
    v14 = &unk_1004C18C8;
    v15 = v4;
    v6 = v4;
    [v5 enumerateKeysAndObjectsUsingBlock:&v11];

    [*(a1 + 40) appendFormat:@" operations=%@\n", v6, v11, v12, v13, v14];
  }

  v7 = [*(a1 + 32) relayConnectionsToSecondaries];

  if (v7)
  {
    v8 = *(a1 + 40);
    v9 = [*(a1 + 32) relayConnectionsToSecondaries];
    v10 = [v9 mr_formattedDebugDescription];
    [v8 appendFormat:@" relayConnectionsToSecondaries=%@", v10];
  }
}

void sub_1001B7020(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ([v5 operationCount])
  {
    [*(a1 + 32) setObject:v5 forKeyedSubscript:v6];
  }
}

void sub_1001B7164(uint64_t a1)
{
  v2 = [*(a1 + 32) relayConnectionsToSecondaries];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001B7334;
  v11[3] = &unk_1004B9950;
  v12 = *(a1 + 40);
  v3 = [v2 msv_firstWhere:v11];

  if (v3)
  {
    v4 = _MRLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      *buf = 138412290;
      v14 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[MRDMRRelayRemoteControlService] Removing disconnected relayConnection=%@", buf, 0xCu);
    }

    v6 = [*(a1 + 32) relayConnectionsToSecondaries];
    v7 = [v3 first];
    [v6 removeObjectForKey:v7];

    v8 = [v3 second];
    v9 = [v8 connection];
    [v9 removeObserver:*(a1 + 32)];

    v10 = [[NSString alloc] initWithFormat:@"relayConnection did close with error=%@, connection=%@", *(a1 + 48), *(a1 + 40)];
    [*(a1 + 32) _reevaluateWithReason:v10];
  }
}

BOOL sub_1001B7334(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 connection];
  v5 = v4 == *(a1 + 32);

  return v5;
}

void sub_1001B73FC(uint64_t a1)
{
  v2 = +[MRDMediaRemoteServer server];
  v3 = [v2 deviceInfo];

  [*(a1 + 32) _reevaluateSecondaryConnectionWithDeviceInfo:v3];
}

void sub_1001B7784(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_1001B77AC(uint64_t a1)
{
  v2 = [*(a1 + 32) operations];

  if (!v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    [*(a1 + 32) setOperations:v3];
  }

  v4 = [*(a1 + 32) operations];
  v5 = [v4 objectForKeyedSubscript:*(a1 + 40)];

  if ([v5 operationCount])
  {
    v6 = [[MRResultReason alloc] initWithResult:0 format:@"operationInProgress"];
  }

  else
  {
    v7 = [*(a1 + 32) relayConnectionsToSecondaries];
    v8 = [v7 objectForKeyedSubscript:*(a1 + 40)];

    if (v8)
    {
      v9 = [[MRResultReason alloc] initWithResult:0 format:@"exisitingConnection"];
    }

    else
    {
      v10 = [*(a1 + 48) isRemoteControllable];
      v11 = [MRResultReason alloc];
      if (v10)
      {
        v12 = @"No exisiting connection";
        v13 = 1;
      }

      else
      {
        v12 = @"Not remoteControllable";
        v13 = 0;
      }

      v9 = [v11 initWithResult:v13 reason:v12];
    }

    v6 = v9;
  }

  return v6;
}

void sub_1001B7904(id *a1)
{
  v2 = [a1[4] queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001B79C8;
  block[3] = &unk_1004C1918;
  block[4] = a1[4];
  objc_copyWeak(&v5, a1 + 6);
  v4 = a1[5];
  dispatch_sync(v2, block);

  objc_destroyWeak(&v5);
}

void sub_1001B79C8(uint64_t a1)
{
  v2 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [v2 _handleCompletedOperation:WeakRetained forOutputDeviceUID:*(a1 + 40)];
}

void sub_1001B7D44(uint64_t a1)
{
  v5 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) handle];
  v4 = [v3 connection];
  [v5 mrRelayRemoteControlService:v2 didAcceptConnection:v4];
}

void sub_1001B7F58(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (([*(a1 + 32) containsObject:v5] & 1) == 0)
  {
    if ([v6 operationCount])
    {
      v7 = _MRLogForCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [v6 operations];
        v10 = 138412290;
        v11 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[MRDMRRelayRemoteControlService] Removing operations: %@", &v10, 0xCu);
      }
    }

    [v6 cancelAllOperations];
    v9 = [*(a1 + 40) operations];
    [v9 removeObjectForKey:v5];
  }
}

void sub_1001B8080(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (([*(a1 + 32) containsObject:v5] & 1) == 0)
  {
    v7 = _MRLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[MRDMRRelayRemoteControlService] Removing relayConnection: %@", &v12, 0xCu);
    }

    v8 = [[NSError alloc] initWithMRError:128];
    v9 = [v6 connection];
    [v9 removeObserver:*(a1 + 40)];

    v10 = [v6 connection];
    [v10 closeWithError:v8];

    v11 = [*(a1 + 40) relayConnectionsToSecondaries];
    [v11 removeObjectForKey:v5];
  }
}

void sub_1001B943C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

intptr_t sub_1001B9494(void *a1, void *a2)
{
  v3 = a2;
  v4 = +[MRProtocolMessageLogger sharedLogger];
  [v4 logMessage:@"Message Received:" label:@"MRRelay" deviceInfo:a1[4] protocolMessage:v3];

  v5 = [v3 error];

  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = a1[5];

  return dispatch_semaphore_signal(v8);
}

NSArray *__cdecl sub_1001B9E40(id a1, MRAVOutputDevice *a2)
{
  v2 = a2;
  if ([(MRAVOutputDevice *)v2 deviceType]== 1)
  {
    v3 = [(MRAVOutputDevice *)v2 clusterComposition];
    v4 = [v3 count];

    if (v4)
    {
      v5 = [(MRAVOutputDevice *)v2 clusterCompositionOutputDevices];
    }

    else
    {
      v8 = v2;
      v5 = [NSArray arrayWithObjects:&v8 count:1];
    }

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_1001B9F84(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_100529720;
  qword_100529720 = v1;
}

uint64_t sub_1001BBC38(uint64_t a1)
{
  [*(a1 + 32) setIsStatusItemActive:0];
  v2 = _MRLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = 138412546;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[MRDRRC].MAM Asked %@ to deactivate - %@", &v6, 0x16u);
  }

  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

uint64_t sub_1001BBE44()
{
  v0 = type metadata accessor for Logger();
  sub_1001C4098(v0, qword_100529738);
  sub_100015AFC(v0, qword_100529738);
  v1 = *sub_1001D8C64();
  return Logger.init(_:)();
}

uint64_t sub_1001BBEA0()
{
  v1 = v0;
  if (v0[3])
  {
    v2 = v0[3];
  }

  else
  {
    v3 = *v0;
    sub_1001BC5A8(&qword_100521668, &qword_10044EB38);
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    v2 = sub_10039D544(&unk_10044EB48, v4);
    v1[3] = v2;
  }

  return v2;
}

uint64_t sub_1001BBF74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_1001BBF98, 0, 0);
}

uint64_t sub_1001BBF98()
{
  v1 = *(v0 + 40);
  v8 = *(v0 + 24);
  v2 = [objc_allocWithZone(RPCompanionLinkClient) init];
  *(v0 + 48) = v2;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v8;
  *(v3 + 40) = v1;
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  v5 = sub_100018D7C(0, &qword_100521670, RPCompanionLinkClient_ptr);
  *v4 = v0;
  v4[1] = sub_1001BC0E4;
  v6 = *(v0 + 16);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v6, 0, 0, 0x706172576B6E696CLL, 0xEB00000000726570, sub_1001C3948, v3, v5);
}

uint64_t sub_1001BC0E4()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_1001BC264;
  }

  else
  {

    v2 = sub_1001BC200;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001BC200()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001BC264()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1001BC2D0(uint64_t a1, void *a2, uint64_t (*a3)(), uint64_t a4, uint64_t a5)
{
  v21 = a3;
  v9 = sub_1001BC5A8(&qword_100521678, &unk_10044EB50);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v20 - v12;
  (*(v10 + 16))(&v20 - v12, a1, v9);
  v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v15 = (v11 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  (*(v10 + 32))(v16 + v14, v13, v9);
  *(v16 + v15) = a2;
  *(v16 + ((v15 + 15) & 0xFFFFFFFFFFFFFFF8)) = a5;
  v26 = sub_1001C3954;
  v27 = v16;
  aBlock = _NSConcreteStackBlock;
  v23 = 1107296256;
  v24 = sub_1001BC53C;
  v25 = &unk_1004C1EA8;
  v17 = _Block_copy(&aBlock);
  v18 = a2;

  [v18 activateWithCompletion:v17];
  _Block_release(v17);
  v26 = v21;
  v27 = a4;
  aBlock = _NSConcreteStackBlock;
  v23 = 1107296256;
  v24 = sub_100003D98;
  v25 = &unk_1004C1ED0;
  v19 = _Block_copy(&aBlock);

  [v18 setInvalidationHandler:v19];
  _Block_release(v19);
}

void sub_1001BC53C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_1001BC5A8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void sub_1001BC5F0(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v3;
  v7 = sub_1001BC5A8(&unk_100524C50, &qword_10044F180);
  __chkstk_darwin(v7 - 8);
  v81 = &v73 - v8;
  v82 = sub_1001BC5A8(&qword_1005214D0, &qword_10044EA60);
  v80 = *(v82 - 8);
  __chkstk_darwin(v82);
  v79 = &v73 - v9;
  v10 = sub_1001BC5A8(&qword_1005214D8, &qword_10044EA68);
  v84 = *(v10 - 8);
  v85 = v10;
  __chkstk_darwin(v10);
  v83 = &v73 - v11;
  if (qword_100529730 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100015AFC(v12, qword_100529738);
  v13 = a1;
  swift_unknownObjectRetain();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();
  swift_unknownObjectRelease();

  v16 = os_log_type_enabled(v14, v15);
  v86 = v6;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v78 = v3;
    v19 = v18;
    v77 = swift_slowAlloc();
    aBlock[0] = v77;
    *v17 = 136315906;
    v20 = _typeName(_:qualified:)();
    v22 = sub_10002C9C8(v20, v21, aBlock);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2080;
    *(v17 + 14) = sub_10002C9C8(0x663A5F28646E6573, 0xEC000000293A726FLL, aBlock);
    *(v17 + 22) = 2112;
    *(v17 + 24) = v13;
    *v19 = v13;
    *(v17 + 32) = 2080;
    v23 = v13;
    v24 = [a2 identifier];
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    v28 = sub_10002C9C8(v25, v27, aBlock);

    *(v17 + 34) = v28;
    _os_log_impl(&_mh_execute_header, v14, v15, "[%s] %s %@ session=%s", v17, 0x2Au);
    sub_1000038A4(v19, &qword_100521870, &unk_10044EA70);
    v3 = v78;

    swift_arrayDestroy();
  }

  sub_1001C2670(v13, a2, 0);
  v30 = v29;
  __chkstk_darwin(v29);
  *(&v73 - 2) = v3;
  *(&v73 - 1) = v13;
  sub_100013378(sub_1001C2A08);
  if (LOBYTE(aBlock[0]) == 1)
  {
    v31 = swift_allocObject();
    *(v31 + 16) = 0;
    v32 = v31;
    v33 = swift_allocObject();
    *(v33 + 16) = &_swiftEmptySetSingleton;
    v34 = v33;
    v35 = swift_allocObject();
    swift_weakInit();
    v36 = swift_allocObject();
    v36[2] = v35;
    v36[3] = v32;
    v77 = v35;
    v74 = v32;
    v36[4] = v13;
    v36[5] = v34;
    v37 = v86;
    v36[6] = v30;
    v36[7] = v37;
    v38 = swift_allocObject();
    v76 = v38;
    v38[2] = v34;
    v38[3] = v13;
    v78 = v34;
    v38[4] = v37;
    v39 = swift_allocObject();
    v75 = v39;
    *(v39 + 16) = 0;
    v86 = (v39 + 16);
    v40 = v3[2];
    v41 = *(*v40 + 23);
    v42 = v13;
    swift_retain_n();
    swift_retain_n();
    v43 = v42;

    v45 = v79;
    v41(v44);
    v46 = MRGroupSessionSubsystemGetNotificationQueue();
    aBlock[0] = v46;
    v47 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    v48 = v81;
    (*(*(v47 - 8) + 56))(v81, 1, 1, v47);
    sub_100018D7C(0, &qword_100524C60, OS_dispatch_queue_ptr);
    sub_10000462C(&qword_1005214E0, &qword_1005214D0, &qword_10044EA60, &protocol conformance descriptor for Published<A>.Publisher);
    sub_1001C3D28(&qword_100524C70, &qword_100524C60, OS_dispatch_queue_ptr, &protocol conformance descriptor for OS_dispatch_queue);
    v49 = v82;
    v50 = v83;
    Publisher.receive<A>(on:options:)();
    sub_1000038A4(v48, &unk_100524C50, &qword_10044F180);

    (*(v80 + 8))(v45, v49);
    v51 = swift_allocObject();
    v51[2] = sub_1001C2AB8;
    v51[3] = v36;
    v52 = v74;
    v53 = v75;
    v51[4] = sub_1001C2AC8;
    v51[5] = v52;
    v51[6] = v53;
    v51[7] = v40;
    sub_10000462C(&qword_1005214E8, &qword_1005214D8, &qword_10044EA68, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);

    v54 = v85;
    v55 = Publisher.sink(receiveCompletion:receiveValue:)();

    (*(v84 + 8))(v50, v54);
    v56 = swift_allocObject();
    v56[2] = v40;
    v56[3] = v55;
    v57 = v76;
    v56[4] = sub_1001C2AFC;
    v56[5] = v57;
    v58 = objc_allocWithZone(MSVBlockGuard);
    aBlock[4] = sub_1001C2F14;
    aBlock[5] = v56;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1001BFCB0;
    aBlock[3] = &unk_1004C1C08;
    v59 = _Block_copy(aBlock);

    v60 = [v58 initWithTimeout:v59 interruptionHandler:30.0];
    _Block_release(v59);

    v61 = v86;
    swift_beginAccess();
    v62 = *v61;
    *v61 = v60;

    (*(*v40 + 26))();
  }

  else
  {

    v63 = v13;
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      aBlock[0] = v68;
      *v66 = 136315394;
      v69 = _typeName(_:qualified:)();
      v71 = sub_10002C9C8(v69, v70, aBlock);

      *(v66 + 4) = v71;
      *(v66 + 12) = 2112;
      *(v66 + 14) = v63;
      *v67 = v63;
      v72 = v63;
      _os_log_impl(&_mh_execute_header, v64, v65, "[%s] Attempted to send proxy join request while already in progress: %@", v66, 0x16u);
      sub_1000038A4(v67, &qword_100521870, &unk_10044EA70);

      sub_100026A44(v68);
    }
  }
}

uint64_t sub_1001BD078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    __chkstk_darwin(result);

    sub_100013378(sub_1001C3D6C);

    swift_beginAccess();
    if ((*(a3 + 16) & 1) == 0)
    {
      v44 = a6;
      if (qword_100529730 != -1)
      {
LABEL_28:
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      sub_100015AFC(v12, qword_100529738);

      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v45[0] = swift_slowAlloc();
        *v15 = 136315394;
        v16 = _typeName(_:qualified:)();
        v18 = sub_10002C9C8(v16, v17, v45);

        *(v15 + 4) = v18;
        *(v15 + 12) = 2080;
        sub_100018D7C(0, &qword_100521680, RPCompanionLinkDevice_ptr);
        sub_1001C3D28(&qword_100521688, &qword_100521680, RPCompanionLinkDevice_ptr, &protocol conformance descriptor for NSObject);
        v19 = Set.description.getter();
        v21 = sub_10002C9C8(v19, v20, v45);

        *(v15 + 14) = v21;
        _os_log_impl(&_mh_execute_header, v13, v14, "[%s] Rapport devices updated: %s", v15, 0x16u);
        swift_arrayDestroy();
      }

      sub_1001BD6E0(a1);
      if (*(v22 + 16))
      {
        sub_1001BC5A8(&qword_1005216A0, &qword_10044EB78);
        v23 = static _DictionaryStorage.allocate(capacity:)();
      }

      else
      {
        v23 = &_swiftEmptyDictionarySingleton;
      }

      v45[0] = v23;

      sub_1001C0274(v24, 1, v45);

      a1 = v45[0];

      v26 = sub_1001BDDB0(v25);
      swift_beginAccess();
      if (*(*(a5 + 16) + 16) <= v26[2] >> 3)
      {

        sub_1001C0604(v29);

        v28 = v26;
      }

      else
      {

        v28 = sub_1001C0730(v27, v26);
      }

      v30 = 1 << *(v28 + 32);
      v31 = -1;
      if (v30 < 64)
      {
        v31 = ~(-1 << v30);
      }

      a5 = v31 & v28[7];
      v32 = (v30 + 63) >> 6;

      v33 = 0;
      while (a5)
      {
        v34 = a5;
LABEL_21:
        a5 = (v34 - 1) & v34;
        if (*(a1 + 16))
        {
          v36 = (v28[6] + ((v33 << 10) | (16 * __clz(__rbit64(v34)))));
          v38 = *v36;
          v37 = v36[1];

          v39 = sub_10000698C(v38, v37);
          v41 = v40;

          if (v41)
          {
            v42 = *(*(a1 + 56) + 8 * v39);
            v43 = sub_1001BEAA0(0, v44, v42);
            __chkstk_darwin(v43);
            sub_100013378(sub_1001C3E40);
          }
        }
      }

      while (1)
      {
        v35 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          __break(1u);
          goto LABEL_28;
        }

        if (v35 >= v32)
        {
          break;
        }

        v34 = v28[v35 + 7];
        ++v33;
        if (v34)
        {
          v33 = v35;
          goto LABEL_21;
        }
      }

      swift_beginAccess();
      sub_1001BDECC(v28);
      swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_1001BD5E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

void sub_1001BD6E0(uint64_t a1)
{
  v1 = a1;
  v34 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v41 = _swiftEmptyArrayStorage;
    sub_1001C17DC(0, v2 & ~(v2 >> 63), 0);
    v36 = _swiftEmptyArrayStorage;
    if (v34)
    {
      v3 = __CocoaSet.startIndex.getter();
    }

    else
    {
      v3 = _HashTable.startBucket.getter();
      v4 = *(v1 + 36);
    }

    v38 = v3;
    v39 = v4;
    v40 = v34 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v31 = v1 + 56;
      v30 = v1 + 64;
      v32 = v2;
      v33 = v1;
      while (v5 < v2)
      {
        if (__OFADD__(v5++, 1))
        {
          goto LABEL_35;
        }

        v8 = v38;
        v9 = v40;
        v35 = v39;
        sub_1001C2310(v38, v39, v40, v1);
        v11 = v10;
        v12 = [v10 effectiveIdentifier];
        v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v15 = v14;

        v16 = v36;
        v41 = v36;
        v18 = v36[2];
        v17 = v36[3];
        if (v18 >= v17 >> 1)
        {
          sub_1001C17DC((v17 > 1), v18 + 1, 1);
          v16 = v41;
        }

        v16[2] = v18 + 1;
        v19 = &v16[3 * v18];
        v19[4] = v13;
        v19[5] = v15;
        v19[6] = v11;
        v36 = v16;
        if (v34)
        {
          v1 = v33;
          if (!v9)
          {
            goto LABEL_40;
          }

          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v32;
          sub_1001BC5A8(&qword_100521690, &unk_10044EB60);
          v6 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          v6(v37, 0);
          if (v5 == v32)
          {
LABEL_32:
            sub_10000A16C(v38, v39, v40);
            return;
          }
        }

        else
        {
          v1 = v33;
          if (v9)
          {
            goto LABEL_41;
          }

          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v20 = 1 << *(v33 + 32);
          if (v8 >= v20)
          {
            goto LABEL_36;
          }

          v21 = v8 >> 6;
          v22 = *(v31 + 8 * (v8 >> 6));
          if (((v22 >> v8) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v33 + 36) != v35)
          {
            goto LABEL_38;
          }

          v23 = v22 & (-2 << (v8 & 0x3F));
          if (v23)
          {
            v20 = __clz(__rbit64(v23)) | v8 & 0x7FFFFFFFFFFFFFC0;
            v2 = v32;
          }

          else
          {
            v24 = v21 << 6;
            v25 = v21 + 1;
            v26 = (v30 + 8 * v21);
            v2 = v32;
            while (v25 < (v20 + 63) >> 6)
            {
              v28 = *v26++;
              v27 = v28;
              v24 += 64;
              ++v25;
              if (v28)
              {
                sub_10000A16C(v8, v35, 0);
                v20 = __clz(__rbit64(v27)) + v24;
                goto LABEL_31;
              }
            }

            sub_10000A16C(v8, v35, 0);
          }

LABEL_31:
          v29 = *(v33 + 36);
          v38 = v20;
          v39 = v29;
          v40 = 0;
          if (v5 == v2)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

void sub_1001BDA48(uint64_t a1)
{
  v1 = a1;
  v34 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v41 = _swiftEmptyArrayStorage;
    sub_1000089FC(0, v2 & ~(v2 >> 63), 0);
    v36 = _swiftEmptyArrayStorage;
    if (v34)
    {
      v3 = __CocoaSet.startIndex.getter();
    }

    else
    {
      v3 = _HashTable.startBucket.getter();
      v4 = *(v1 + 36);
    }

    v38 = v3;
    v39 = v4;
    v40 = v34 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v32 = v1 + 56;
      v31 = v1 + 64;
      v33 = v2;
      while (v5 < v2)
      {
        if (__OFADD__(v5++, 1))
        {
          goto LABEL_35;
        }

        v8 = v38;
        v9 = v40;
        v35 = v39;
        v10 = v1;
        sub_1001C2310(v38, v39, v40, v1);
        v12 = v11;
        v13 = [v11 effectiveIdentifier];
        v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v16 = v15;

        v17 = v36;
        v41 = v36;
        v19 = v36[2];
        v18 = v36[3];
        if (v19 >= v18 >> 1)
        {
          sub_1000089FC((v18 > 1), v19 + 1, 1);
          v17 = v41;
        }

        v17[2] = v19 + 1;
        v20 = &v17[2 * v19];
        v20[4] = v14;
        v20[5] = v16;
        v36 = v17;
        if (v34)
        {
          if (!v9)
          {
            goto LABEL_40;
          }

          v1 = v10;
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v33;
          sub_1001BC5A8(&qword_100521690, &unk_10044EB60);
          v6 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          v6(v37, 0);
          if (v5 == v33)
          {
LABEL_32:
            sub_10000A16C(v38, v39, v40);
            return;
          }
        }

        else
        {
          if (v9)
          {
            goto LABEL_41;
          }

          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v1 = v10;
          v21 = 1 << *(v10 + 32);
          if (v8 >= v21)
          {
            goto LABEL_36;
          }

          v22 = v8 >> 6;
          v23 = *(v32 + 8 * (v8 >> 6));
          if (((v23 >> v8) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v10 + 36) != v35)
          {
            goto LABEL_38;
          }

          v24 = v23 & (-2 << (v8 & 0x3F));
          if (v24)
          {
            v21 = __clz(__rbit64(v24)) | v8 & 0x7FFFFFFFFFFFFFC0;
            v2 = v33;
          }

          else
          {
            v25 = v22 << 6;
            v26 = v22 + 1;
            v27 = (v31 + 8 * v22);
            v2 = v33;
            while (v26 < (v21 + 63) >> 6)
            {
              v29 = *v27++;
              v28 = v29;
              v25 += 64;
              ++v26;
              if (v29)
              {
                sub_10000A16C(v8, v35, 0);
                v21 = __clz(__rbit64(v28)) + v25;
                goto LABEL_31;
              }
            }

            sub_10000A16C(v8, v35, 0);
          }

LABEL_31:
          v30 = *(v10 + 36);
          v38 = v21;
          v39 = v30;
          v40 = 0;
          if (v5 == v2)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

uint64_t sub_1001BDDB0(uint64_t a1)
{
  result = Set.init(minimumCapacity:)();
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_100008318(&v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1001BDECC(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_100008318(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_1001BDFD0(void *a1, id a2)
{
  v3 = v2;
  v6 = *v3;
  v7 = sub_1001BC5A8(&unk_100524C50, &qword_10044F180);
  __chkstk_darwin(v7 - 8);
  v67 = &v60 - v8;
  v68 = sub_1001BC5A8(&qword_1005214D0, &qword_10044EA60);
  v66 = *(v68 - 8);
  __chkstk_darwin(v68);
  v65 = &v60 - v9;
  v10 = sub_1001BC5A8(&qword_1005214D8, &qword_10044EA68);
  v70 = *(v10 - 8);
  v71 = v10;
  __chkstk_darwin(v10);
  v69 = &v60 - v11;
  if (qword_100529730 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100015AFC(v12, qword_100529738);
  v13 = a1;
  swift_unknownObjectRetain();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();
  swift_unknownObjectRelease();

  v16 = os_log_type_enabled(v14, v15);
  v64 = v6;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v63 = a2;
    aBlock[0] = v19;
    *v17 = 136315906;
    v20 = _typeName(_:qualified:)();
    v22 = sub_10002C9C8(v20, v21, aBlock);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2080;
    *(v17 + 14) = sub_10002C9C8(0x5F286C65636E6163, 0xEE00293A726F663ALL, aBlock);
    *(v17 + 22) = 2112;
    *(v17 + 24) = v13;
    *v18 = v13;
    *(v17 + 32) = 2080;
    v23 = v13;
    v24 = [v63 identifier];
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    v28 = sub_10002C9C8(v25, v27, aBlock);

    *(v17 + 34) = v28;
    _os_log_impl(&_mh_execute_header, v14, v15, "[%s] %s %@ session=%s", v17, 0x2Au);
    sub_1000038A4(v18, &qword_100521870, &unk_10044EA70);

    swift_arrayDestroy();
    a2 = v63;
  }

  sub_1001C2670(v13, a2, 1);
  v30 = v29;
  __chkstk_darwin(v29);
  *(&v60 - 2) = v3;
  *(&v60 - 1) = v13;
  sub_1001BC5A8(&qword_1005214F0, &qword_10045BF40);
  sub_100013378(sub_1001C2F18);

  v31 = swift_allocObject();
  __chkstk_darwin(v31);
  *(&v60 - 2) = v3;
  *(&v60 - 1) = v13;
  sub_1001BC5A8(&unk_100522820, &qword_10044EA80);
  sub_100013378(sub_1001C2FBC);
  v32 = aBlock[0];
  *(v31 + 16) = aBlock[0];
  if (*(v32 + 16))
  {
    v33 = swift_allocObject();
    swift_weakInit();
    v34 = swift_allocObject();
    v61 = v34;
    v34[2] = v33;
    v34[3] = v31;
    v63 = v33;
    v34[4] = v30;
    v35 = swift_allocObject();
    v62 = v35;
    v35[2] = v13;
    v35[3] = v31;
    v35[4] = v64;
    v36 = swift_allocObject();
    v60 = v36;
    *(v36 + 16) = 0;
    v64 = (v36 + 16);
    v37 = v3[2];
    v38 = *(*v37 + 23);
    swift_retain_n();
    v39 = v13;

    v41 = v65;
    v38(v40);
    v42 = MRGroupSessionSubsystemGetNotificationQueue();
    aBlock[0] = v42;
    v43 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    v44 = v67;
    (*(*(v43 - 8) + 56))(v67, 1, 1, v43);
    sub_100018D7C(0, &qword_100524C60, OS_dispatch_queue_ptr);
    sub_10000462C(&qword_1005214E0, &qword_1005214D0, &qword_10044EA60, &protocol conformance descriptor for Published<A>.Publisher);
    sub_1001C3D28(&qword_100524C70, &qword_100524C60, OS_dispatch_queue_ptr, &protocol conformance descriptor for OS_dispatch_queue);
    v46 = v68;
    v45 = v69;
    Publisher.receive<A>(on:options:)();
    sub_1000038A4(v44, &unk_100524C50, &qword_10044F180);

    (*(v66 + 8))(v41, v46);
    v47 = swift_allocObject();
    v49 = v60;
    v48 = v61;
    v47[2] = sub_1001C3090;
    v47[3] = v48;
    v47[4] = sub_1001C332C;
    v47[5] = v31;
    v47[6] = v49;
    v47[7] = v37;
    sub_10000462C(&qword_1005214E8, &qword_1005214D8, &qword_10044EA68, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);

    v50 = v71;
    v51 = Publisher.sink(receiveCompletion:receiveValue:)();

    (*(v70 + 8))(v45, v50);
    v52 = swift_allocObject();
    v52[2] = v37;
    v52[3] = v51;
    v53 = v62;
    v52[4] = sub_1001C336C;
    v52[5] = v53;
    v54 = objc_allocWithZone(MSVBlockGuard);
    aBlock[4] = sub_1001C4118;
    aBlock[5] = v52;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1001BFCB0;
    aBlock[3] = &unk_1004C1CD0;
    v55 = _Block_copy(aBlock);

    v56 = [v54 initWithTimeout:v55 interruptionHandler:30.0];
    _Block_release(v55);

    v57 = v64;
    swift_beginAccess();
    v58 = *v57;
    *v57 = v56;

    (*(*v37 + 26))();
  }

  else
  {
  }
}

uint64_t sub_1001BE968(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = *(result + 16);
    if (v2)
    {
      v3 = (result + 40);
      do
      {
        v5 = *(v3 - 1);
        v4 = *v3;

        sub_1001C0CA0(v5, v4);

        v3 += 2;
        --v2;
      }

      while (v2);
    }
  }

  return result;
}

uint64_t sub_1001BE9E4(void *a1, uint64_t (*a2)(void), uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = a2(*a1);
  result = a4(v10);
  if (result)
  {
    swift_beginAccess();
    result = *(a6 + 16);
    if (result)
    {
      result = [result disarm];
      if (result)
      {
        return (*(*a7 + 216))();
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1001BEAA0(int a1, uint64_t a2, void *a3)
{
  v4 = v3;
  LODWORD(v7) = a1;
  v8 = sub_1001BC5A8(&qword_100521B60, &qword_10044F1A0);
  __chkstk_darwin(v8 - 8);
  v10 = &v29 - v9;
  if (qword_100529730 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100015AFC(v11, qword_100529738);
  v12 = a3;

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v30 = v10;
    v16 = v15;
    v17 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v16 = 136315650;
    v18 = _typeName(_:qualified:)();
    v20 = sub_10002C9C8(v18, v19, &v32);
    v31 = v7;
    v7 = v20;

    *(v16 + 4) = v7;
    *(v16 + 12) = 2112;
    *(v16 + 14) = v12;
    *v17 = v12;
    *(v16 + 22) = 2080;
    v21 = v12;
    v22 = Dictionary.description.getter();
    v24 = sub_10002C9C8(v22, v23, &v32);
    LOBYTE(v7) = v31;

    *(v16 + 24) = v24;
    _os_log_impl(&_mh_execute_header, v13, v14, "[%s] Sending Rapport message to: %@\n%s", v16, 0x20u);
    sub_1000038A4(v17, &qword_100521870, &unk_10044EA70);

    swift_arrayDestroy();

    v10 = v30;
  }

  v25 = type metadata accessor for TaskPriority();
  (*(*(v25 - 8) + 56))(v10, 1, 1, v25);
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  *(v26 + 24) = 0;
  *(v26 + 32) = v4;
  *(v26 + 40) = v7 & 1;
  *(v26 + 48) = a2;
  *(v26 + 56) = v12;
  v27 = v12;

  sub_1001BF864(0, 0, v10, &unk_10044EB08, v26);
}

uint64_t sub_1001BEDF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 160) = a6;
  *(v7 + 168) = a7;
  *(v7 + 232) = a5;
  *(v7 + 152) = a4;
  return _swift_task_switch(sub_1001BEE20, 0, 0);
}

uint64_t sub_1001BEE20()
{
  v1 = sub_1001BBEA0();
  *(v0 + 176) = v1;
  v4 = (*(*v1 + 192) + **(*v1 + 192));
  v2 = swift_task_alloc();
  *(v0 + 184) = v2;
  *v2 = v0;
  v2[1] = sub_1001BEF48;

  return v4(v0 + 144);
}

uint64_t sub_1001BEF48()
{

  return _swift_task_switch(sub_1001BF060, 0, 0);
}

uint64_t sub_1001BF060()
{
  v1 = *(v0 + 144);
  *(v0 + 192) = v1;
  if (v1)
  {
    v2 = *(v0 + 168);
    sub_100225518(*(v0 + 232) & 1);
    v3 = String._bridgeToObjectiveC()();
    *(v0 + 200) = v3;

    v4.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
    *(v0 + 208) = v4;
    v5 = [v2 effectiveIdentifier];
    if (!v5)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v5 = String._bridgeToObjectiveC()();
    }

    *(v0 + 216) = v5;
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_1001BF31C;
    v6 = swift_continuation_init();
    *(v0 + 136) = sub_1001BC5A8(&qword_100521660, &unk_100450020);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_1001BF7B8;
    *(v0 + 104) = &unk_1004C1E30;
    *(v0 + 112) = v6;
    [v1 sendEventID:v3 event:v4.super.isa destinationID:v5 options:0 completion:v0 + 80];

    return _swift_continuation_await(v0 + 16);
  }

  else
  {
    if (qword_100529730 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100015AFC(v7, qword_100529738);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Unable to activate Rapport link", v10, 2u);
    }

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_1001BF31C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 224) = v1;
  if (v1)
  {
    v2 = sub_1001BF4A4;
  }

  else
  {
    v2 = sub_1001BF42C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001BF42C()
{
  v1 = *(v0 + 208);
  v3 = *(v0 + 192);
  v2 = *(v0 + 200);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1001BF4A4()
{
  v31 = v0;
  v1 = *(v0 + 216);
  v3 = *(v0 + 200);
  v2 = *(v0 + 208);
  swift_willThrow();

  if (qword_100529730 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 168);
  v5 = type metadata accessor for Logger();
  sub_100015AFC(v5, qword_100529738);

  v6 = v4;
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 192);
  if (v9)
  {
    v28 = *(v0 + 168);
    v27 = *(v0 + 232);
    v29 = *(v0 + 192);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v30[0] = swift_slowAlloc();
    *v11 = 136315906;
    v13 = Dictionary.description.getter();
    v15 = sub_10002C9C8(v13, v14, v30);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    v16 = sub_100225518(v27 & 1);
    v18 = sub_10002C9C8(v16, v17, v30);

    *(v11 + 14) = v18;
    *(v11 + 22) = 2080;
    v19 = [v28 effectiveIdentifier];
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    v23 = sub_10002C9C8(v20, v22, v30);

    *(v11 + 24) = v23;
    *(v11 + 32) = 2112;
    swift_errorRetain();
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 34) = v24;
    *v12 = v24;
    _os_log_impl(&_mh_execute_header, v7, v8, "Failed to send message: %s, for event: %s to: %s\n%@", v11, 0x2Au);
    sub_1000038A4(v12, &qword_100521870, &unk_10044EA70);

    swift_arrayDestroy();
  }

  else
  {
  }

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_1001BF7B8(uint64_t a1, void *a2)
{
  v3 = sub_1000326D8((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    sub_1001BC5A8(&qword_100521B70, &qword_10044EB30);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    v8 = *v3;

    return _swift_continuation_throwingResume(v8);
  }
}

uint64_t sub_1001BF864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1001BC5A8(&qword_100521B60, &qword_10044F1A0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10001D9AC(a3, v25 - v10, &qword_100521B60, &qword_10044F1A0);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1000038A4(v11, &qword_100521B60, &qword_10044F1A0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_1000038A4(a3, &qword_100521B60, &qword_10044F1A0);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000038A4(a3, &qword_100521B60, &qword_10044F1A0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1001BFB64()
{

  return v0;
}

uint64_t sub_1001BFBB4()
{
  sub_1001BFB64();

  return swift_deallocClassInstance();
}

uint64_t sub_1001BFBE8()
{
  v0 = swift_allocObject();
  sub_1001BFC20();
  return v0;
}

void *sub_1001BFC20()
{
  type metadata accessor for GroupSessionRapportUserDiscovery(0);
  v0[2] = sub_1001E3E44();
  v0[3] = 0;
  v1 = sub_10037B1C0();
  v2 = *v1;
  v0[4] = *v1;
  v0[5] = 0;
  sub_1001BC5A8(&qword_1005214C8, &unk_10044EA50);
  v3 = v2;
  v0[6] = sub_1001D7444(10);
  v0[7] = &_swiftEmptySetSingleton;
  type metadata accessor for Lock();
  v0[8] = sub_10036C394();
  return v0;
}

uint64_t sub_1001BFCB0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_1001BFD04(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10000A428;

  return v6(a1);
}

char *sub_1001BFDFC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1001BC5A8(&unk_100521880, &qword_10044EB90);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

Swift::Int sub_1001BFEF0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1001BC5A8(&qword_100521698, &qword_10044EB70);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = NSObject._rawHashValue(seed:)(*(v5 + 40));
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

void *sub_1001C0118()
{
  v1 = v0;
  sub_1001BC5A8(&qword_100521B10, &unk_100450000);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1001C0274(void *a1, char a2, void *a3)
{
  v40 = a1[2];
  if (!v40)
  {
  }

  LOBYTE(v5) = a2;
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v9 = *a3;

  v10 = v8;
  v11 = sub_10000698C(v7, v6);
  v13 = v9[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v17 = v12;
  if (v9[3] < v16)
  {
    sub_1001C1538(v16, v5 & 1);
    v11 = sub_10000698C(v7, v6);
    if ((v17 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v11 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    if (v17)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v20 = v11;
  sub_1001C13CC();
  v11 = v20;
  if (v17)
  {
LABEL_8:
    swift_allocError();
    swift_willThrow();
    swift_errorRetain();
    sub_1001BC5A8(&qword_100521B70, &qword_10044EB30);
    if ((swift_dynamicCast() & 1) == 0)
    {
    }

    goto LABEL_26;
  }

LABEL_11:
  v21 = *a3;
  *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = v7;
  v22[1] = v6;
  *(v21[7] + 8 * v11) = v10;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    _StringGuts.grow(_:)(30);
    v38._object = 0x800000010043A350;
    v38._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v38);
    _print_unlocked<A, B>(_:_:)();
    v39._countAndFlagsBits = 39;
    v39._object = 0xE100000000000000;
    String.append(_:)(v39);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v21[2] = v24;
  if (v40 != 1)
  {
    v5 = (a1 + 9);
    v25 = 1;
    while (v25 < a1[2])
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v26 = *v5;
      v27 = *a3;

      v10 = v26;
      v28 = sub_10000698C(v7, v6);
      v30 = v27[2];
      v31 = (v29 & 1) == 0;
      v15 = __OFADD__(v30, v31);
      v32 = v30 + v31;
      if (v15)
      {
        goto LABEL_23;
      }

      v17 = v29;
      if (v27[3] < v32)
      {
        sub_1001C1538(v32, 1);
        v28 = sub_10000698C(v7, v6);
        if ((v17 & 1) != (v33 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v17)
      {
        goto LABEL_8;
      }

      v34 = *a3;
      *(*a3 + 8 * (v28 >> 6) + 64) |= 1 << v28;
      v35 = (v34[6] + 16 * v28);
      *v35 = v7;
      v35[1] = v6;
      *(v34[7] + 8 * v28) = v10;
      v36 = v34[2];
      v15 = __OFADD__(v36, 1);
      v37 = v36 + 1;
      if (v15)
      {
        goto LABEL_24;
      }

      ++v25;
      v34[2] = v37;
      v5 += 3;
      if (v40 == v25)
      {
      }
    }

    goto LABEL_25;
  }
}

uint64_t sub_1001C0604(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_1001C0CA0(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

void *sub_1001C0730(uint64_t a1, void *a2)
{
  v5 = a2;
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v53 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v57 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v61 = a2 + 7;

  v15 = 0;
  v59 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_56;
      }

      if (v17 >= v12)
      {
        goto LABEL_53;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v60 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    v23 = Hasher._finalize()();
    v24 = -1 << *(v5 + 32);
    v2 = v23 & ~v24;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v59;
    v15 = v60;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v24;
  while (1)
  {
    v25 = (v5[6] + 16 * v2);
    v26 = *v25 == v22 && v25[1] == v21;
    if (v26 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v59;
  v27 = v60;
  v63 = v57;
  v64 = v60;
  v65 = v11;
  v62[0] = v59;
  v62[1] = v7;

  v29 = *(v5 + 32);
  v54 = ((1 << v29) + 63) >> 6;
  v14 = 8 * v54;
  if ((v29 & 0x3Fu) > 0xD)
  {
    goto LABEL_57;
  }

  while (1)
  {
    v55 = &v53;
    __chkstk_darwin(v28);
    v2 = &v53 - ((v30 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v61, v30);
    v31 = *(v2 + 8 * v8) & ~v4;
    v32 = v5[2];
    v58 = v2;
    *(v2 + 8 * v8) = v31;
    v33 = v32 - 1;
LABEL_23:
    v56 = v33;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v35 = v27;
    while (1)
    {
      v36 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v36 >= v12)
      {
        v5 = sub_100007BC4(v58, v54, v56, v5);
        goto LABEL_51;
      }

      v11 = *(v7 + 8 * v36);
      ++v35;
      if (v11)
      {
        v27 = v36;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v37 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v38 = *(v3 + 48);
            v60 = v27;
            v39 = (v38 + ((v27 << 10) | (16 * v37)));
            v40 = *v39;
            v4 = v39[1];
            Hasher.init(_seed:)();

            String.hash(into:)();
            v41 = Hasher._finalize()();
            v42 = -1 << *(v5 + 32);
            v8 = v41 & ~v42;
            v2 = v8 >> 6;
            v43 = 1 << v8;
            if (((1 << v8) & v61[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v27 = v60;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v44 = (v5[6] + 16 * v8);
          if (*v44 != v40 || v44[1] != v4)
          {
            v46 = ~v42;
            while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              v8 = (v8 + 1) & v46;
              v2 = v8 >> 6;
              v43 = 1 << v8;
              if (((1 << v8) & v61[v8 >> 6]) == 0)
              {
                v3 = v59;
                goto LABEL_45;
              }

              v47 = (v5[6] + 16 * v8);
              if (*v47 == v40 && v47[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v59;
          v34 = v58[v2];
          v58[v2] = v34 & ~v43;
          v26 = (v34 & v43) == 0;
          v27 = v60;
          if (!v26)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v33 = v56 - 1;
        if (__OFSUB__(v56, 1))
        {
          __break(1u);
        }

        if (v56 == 1)
        {

          v5 = &_swiftEmptySetSingleton;
          goto LABEL_51;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    v49 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v27 = v60;
  }

  v50 = swift_slowAlloc();
  memcpy(v50, v61, v49);
  v51 = v53;
  v52 = sub_1001C0DDC(v50, v54, v5, v2, v62);

  if (!v51)
  {

    v3 = v62[0];
    v57 = v63;
    v5 = v52;
LABEL_51:
    v13 = v3;
LABEL_53:
    sub_100045960(v13);
    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1001C0CA0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1001C0118();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_1001C1208(v8);
  *v2 = v16;
  return v12;
}

unint64_t *sub_1001C0DDC(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v31 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v28 = v11 + 1;
          }

          else
          {
            v28 = (a5[2] + 64) >> 6;
          }

          a5[3] = v28 - 1;
          a5[4] = 0;

          return sub_100007BC4(v31, a2, v30, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        Hasher.init(_seed:)();

        String.hash(into:)();
        v19 = Hasher._finalize()();
        v20 = -1 << *(a3 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v24 = (*(a3 + 48) + 16 * v21);
      if (*v24 != v18 || v24[1] != v17)
      {
        v26 = ~v20;
        while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v21 = (v21 + 1) & v26;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v27 = (*(a3 + 48) + 16 * v21);
          if (*v27 == v18 && v27[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v31[v22];
      v31[v22] = v10 & ~v23;
    }

    while ((v10 & v23) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v30 != 1)
      {
        continue;
      }

      return &_swiftEmptySetSingleton;
    }

    return result;
  }
}

Swift::Int sub_1001C1014(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_1001BC5A8(&qword_100521698, &qword_10044EB70);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = v9[5];
    v17 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = NSObject._rawHashValue(seed:)(v16);
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(v9[6] + 8 * v21) = v17;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t sub_1001C1208(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        Hasher.init(_seed:)();

        String.hash(into:)();
        v10 = Hasher._finalize()();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

id sub_1001C13CC()
{
  v1 = v0;
  sub_1001BC5A8(&qword_1005216A0, &qword_10044EB78);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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
        goto LABEL_19;
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

Swift::Int sub_1001C1538(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1001BC5A8(&qword_1005216A0, &qword_10044EB78);
  v35 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
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
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void *sub_1001C17DC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001C17FC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1001C17FC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1001BC5A8(&qword_1005216A8, &qword_10044EB80);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1001BC5A8(&qword_1005216B0, &qword_10044EB88);
    swift_arrayInitWithCopy();
  }

  return v10;
}

Swift::Int sub_1001C1944(uint64_t a1, uint64_t *a2)
{
  v2 = a2;
  if ((a1 & 0xC000000000000001) == 0)
  {
    return sub_1001C1C54(a1, a2);
  }

  __CocoaSet.makeIterator()();
  swift_beginAccess();
  if (__CocoaSet.Iterator.next()())
  {
    sub_100018D7C(0, &qword_100521680, RPCompanionLinkDevice_ptr);
    do
    {
      swift_dynamicCast();
      v3 = v2;
      v4 = *v2;

      v5 = [v26 effectiveIdentifier];
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;

      if (*(v4 + 16) && (Hasher.init(_seed:)(), String.hash(into:)(), v9 = Hasher._finalize()(), v10 = -1 << *(v4 + 32), v11 = v9 & ~v10, ((*(v4 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
      {
        v12 = ~v10;
        while (1)
        {
          v13 = (*(v4 + 48) + 16 * v11);
          v14 = *v13 == v6 && v13[1] == v8;
          if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          v11 = (v11 + 1) & v12;
          if (((*(v4 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
          {
            goto LABEL_4;
          }
        }

        v15 = *(&_swiftEmptySetSingleton + 2);
        if (*(&_swiftEmptySetSingleton + 3) <= v15)
        {
          sub_1001BFEF0(v15 + 1);
        }

        result = NSObject._rawHashValue(seed:)(*(&_swiftEmptySetSingleton + 5));
        v17 = &_swiftEmptySetSingleton + 56;
        v18 = -1 << *(&_swiftEmptySetSingleton + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(&_swiftEmptySetSingleton + (v19 >> 6) + 7)) != 0)
        {
          v21 = __clz(__rbit64((-1 << v19) & ~*(&_swiftEmptySetSingleton + (v19 >> 6) + 7))) | v19 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v22 = 0;
          v23 = (63 - v18) >> 6;
          do
          {
            if (++v20 == v23 && (v22 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v24 = v20 == v23;
            if (v20 == v23)
            {
              v20 = 0;
            }

            v22 |= v24;
            v25 = *&v17[8 * v20];
          }

          while (v25 == -1);
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
        }

        *&v17[(v21 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v21;
        *(*(&_swiftEmptySetSingleton + 6) + 8 * v21) = v26;
        ++*(&_swiftEmptySetSingleton + 2);
      }

      else
      {
LABEL_4:
      }

      v2 = v3;
    }

    while (__CocoaSet.Iterator.next()());
  }

  return &_swiftEmptySetSingleton;
}

Swift::Int sub_1001C1C54(uint64_t a1, uint64_t *a2)
{
  v4 = a1;
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) > 0xD)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v34 = v6;
    v35 = v2;
    v33 = &v33;
    __chkstk_darwin(a1);
    v36 = &v33 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v36, v7);
    v6 = v4 + 56;
    v8 = 1 << *(v4 + 32);
    v9 = v8 < 64 ? ~(-1 << v8) : -1;
    v10 = v9 & *(v4 + 56);
    swift_beginAccess();
    v11 = 0;
    v12 = 0;
    v13 = (v8 + 63) >> 6;
    v38 = a2;
    v39 = v4;
LABEL_7:
    v37 = v11;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v42 = (v10 - 1) & v10;
LABEL_16:
      v17 = v14 | (v12 << 6);
      v18 = *(v4 + 48);
      v40 = v17;
      v19 = *a2;
      v2 = *(v18 + 8 * v17);

      v41 = v2;
      v20 = [v2 effectiveIdentifier];
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v22;

      if (*(v19 + 16))
      {
        Hasher.init(_seed:)();
        String.hash(into:)();
        v24 = Hasher._finalize()();
        v25 = -1 << *(v19 + 32);
        v26 = v24 & ~v25;
        if ((*(v19 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26))
        {
          v27 = ~v25;
          while (1)
          {
            v28 = (*(v19 + 48) + 16 * v26);
            v29 = *v28 == v21 && v28[1] == v23;
            if (v29 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }

            v26 = (v26 + 1) & v27;
            if (((*(v19 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
            {
              goto LABEL_8;
            }
          }

          v4 = v39;
          *&v36[(v40 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v40;
          a2 = v38;
          v11 = v37 + 1;
          v10 = v42;
          if (__OFADD__(v37, 1))
          {
            goto LABEL_29;
          }

          goto LABEL_7;
        }
      }

LABEL_8:

      a2 = v38;
      v4 = v39;
      v10 = v42;
    }

    v15 = v12;
    while (1)
    {
      v12 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v12 >= v13)
      {
        return sub_1001C1014(v36, v34, v37, v4);
      }

      v16 = *(v6 + 8 * v12);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v42 = (v16 - 1) & v16;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v31 = swift_slowAlloc();
  v32 = sub_1001C2288(v31, v6, v4, a2);

  return v32;
}

void sub_1001C1FFC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = a3 + 56;
  v5 = 1 << *(a3 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a3 + 56);
  swift_beginAccess();
  v8 = 0;
  v9 = 0;
  v10 = (v5 + 63) >> 6;
LABEL_6:
  v28 = v8;
  while (v7)
  {
    v11 = __clz(__rbit64(v7));
    v32 = (v7 - 1) & v7;
LABEL_15:
    v30 = v11 | (v9 << 6);
    v14 = *a4;
    v15 = *(*(a3 + 48) + 8 * v30);

    v16 = [v15 effectiveIdentifier];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    if (*(v14 + 16))
    {
      Hasher.init(_seed:)();
      String.hash(into:)();
      v20 = Hasher._finalize()();
      v21 = -1 << *(v14 + 32);
      v22 = v20 & ~v21;
      if ((*(v14 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
      {
        v23 = ~v21;
        while (1)
        {
          v24 = (*(v14 + 48) + 16 * v22);
          v25 = *v24 == v17 && v24[1] == v19;
          if (v25 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          v22 = (v22 + 1) & v23;
          if (((*(v14 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
          {
            goto LABEL_7;
          }
        }

        *(a1 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
        v8 = v28 + 1;
        v7 = v32;
        if (__OFADD__(v28, 1))
        {
          goto LABEL_27;
        }

        goto LABEL_6;
      }
    }

LABEL_7:

    v7 = v32;
  }

  v12 = v9;
  while (1)
  {
    v9 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v9 >= v10)
    {

      sub_1001C1014(a1, a2, v28, a3);
      return;
    }

    v13 = *(v4 + 8 * v9);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v32 = (v13 - 1) & v13;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
}

void *sub_1001C2288(void *result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_1001C1FFC(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void sub_1001C2310(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      sub_100018D7C(0, &qword_100521680, RPCompanionLinkDevice_ptr);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_100018D7C(0, &qword_100521680, RPCompanionLinkDevice_ptr);
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v4 = v14;
    v7 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v8 = -1 << *(a4 + 32);
    a1 = v7 & ~v8;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v9 = ~v8;
      do
      {
        v10 = *(*(a4 + 48) + 8 * a1);
        v11 = static NSObject.== infix(_:_:)();

        if (v11)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v9;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v12 = *(*(a4 + 48) + 8 * a1);

  v13 = v12;
}

unint64_t sub_1001C2534(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1001BC5A8(&qword_1005216C8, &unk_100450040);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10001D9AC(v4, v13, &qword_1005216C0, qword_10044EBA0);
      result = sub_10001BF64(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_1001C4088(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

void sub_1001C2670(void *a1, id a2, char a3)
{
  v6 = [a2 joinToken];
  v7 = [v6 protobuf];

  if (v7 && (v8 = [v7 data], v7, v8))
  {
    v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v10;
    v27 = v9;

    v11 = [a1 protobuf];
    [v11 copyWithZone:0];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();

    sub_100018D7C(0, &qword_1005216B8, _MRGroupSessionJoinRequestProtobuf_ptr);
    swift_dynamicCast();
    [v28 setOobKeys:0];
    sub_1001BC5A8(&unk_1005222B0, &qword_10044EB98);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10044EA40;
    sub_10022595C(0);

    AnyHashable.init<A>(_:)();
    v13 = sub_100225E28(a3 & 1);
    *(inited + 96) = &type metadata for String;
    *(inited + 72) = v13;
    *(inited + 80) = v14;
    sub_10022595C(2u);

    AnyHashable.init<A>(_:)();
    v15 = [a2 identifier];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 168) = &type metadata for String;
    *(inited + 144) = v16;
    *(inited + 152) = v17;
    sub_10022595C(1u);

    AnyHashable.init<A>(_:)();
    v18 = [a1 identifier];
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 240) = &type metadata for String;
    *(inited + 216) = v19;
    *(inited + 224) = v20;
    sub_10022595C(3u);

    AnyHashable.init<A>(_:)();
    v21 = [v28 data];
    if (v21)
    {
      v22 = v21;

      v23 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;

      *(inited + 312) = &type metadata for Data;
      *(inited + 288) = v23;
      *(inited + 296) = v25;
      sub_10022595C(4u);
      AnyHashable.init<A>(_:)();
      *(inited + 384) = &type metadata for Data;
      *(inited + 360) = v27;
      *(inited + 368) = v26;
      sub_1001C3FE0(v27, v26);
      sub_1001C2534(inited);
      swift_setDeallocating();
      sub_1001BC5A8(&qword_1005216C0, qword_10044EBA0);
      swift_arrayDestroy();

      sub_1001C4034(v27, v26);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1001C2A08@<X0>(_BYTE *a1@<X8>)
{
  v3 = [*(v1 + 24) identifier];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  swift_beginAccess();
  LOBYTE(v3) = sub_100008318(&v8, v4, v6);
  swift_endAccess();

  *a1 = v3 & 1;
  return result;
}

void sub_1001C2AFC()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  if (*(*(v2 + 16) + 16))
  {
    if (qword_100529730 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100015AFC(v3, qword_100529738);
    v4 = v1;

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v7 = 136315650;
      v8 = _typeName(_:qualified:)();
      v10 = sub_10002C9C8(v8, v9, &v33);

      *(v7 + 4) = v10;
      *(v7 + 12) = 2080;
      v11 = [v4 identifier];
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      v15 = sub_10002C9C8(v12, v14, &v33);

      *(v7 + 14) = v15;
      *(v7 + 22) = 2080;
      swift_beginAccess();

      v16 = Set.description.getter();
      v18 = v17;

      v19 = sub_10002C9C8(v16, v18, &v33);

      *(v7 + 24) = v19;
      _os_log_impl(&_mh_execute_header, v5, v6, "[%s] %s - Messaged devices: %s", v7, 0x20u);
      swift_arrayDestroy();

LABEL_10:
    }
  }

  else
  {
    if (qword_100529730 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100015AFC(v20, qword_100529738);
    v21 = v1;
    v5 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v22))
    {
      v23 = swift_slowAlloc();
      v32[0] = swift_slowAlloc();
      *v23 = 136315394;
      v24 = _typeName(_:qualified:)();
      v26 = sub_10002C9C8(v24, v25, v32);

      *(v23 + 4) = v26;
      *(v23 + 12) = 2080;
      v27 = [v21 identifier];
      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = v29;

      v31 = sub_10002C9C8(v28, v30, v32);

      *(v23 + 14) = v31;
      _os_log_impl(&_mh_execute_header, v5, v22, "[%s] %s - No devices found to message within timeout", v23, 0x16u);
      swift_arrayDestroy();

      goto LABEL_10;
    }
  }
}

uint64_t sub_1001C2EC8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1001C2F18@<X0>(uint64_t *a1@<X8>)
{
  v3 = [*(v1 + 24) identifier];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  swift_beginAccess();
  *a1 = sub_1001C0CA0(v4, v6);
  a1[1] = v7;
  swift_endAccess();
}

uint64_t sub_1001C2FBC@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = *(*(v1 + 16) + 48);

  v5 = [v3 identifier];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v11[0] = v6;
  v11[1] = v8;
  (*(*v4 + 208))(&v12, v11);

  v10 = v12;
  if (!v12)
  {
    v10 = &_swiftEmptySetSingleton;
  }

  *a1 = v10;
  return result;
}

void sub_1001C3090(uint64_t a1)
{
  v2 = *(v1 + 24);
  v20 = *(v1 + 32);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    v4 = sub_1001C1944(v3, (v2 + 16));
    sub_1001BDA48(v4);
    v19 = v5;
    if ((v4 & 0xC000000000000001) != 0)
    {
      __CocoaSet.makeIterator()();
      sub_100018D7C(0, &qword_100521680, RPCompanionLinkDevice_ptr);
      sub_1001C3D28(&qword_100521688, &qword_100521680, RPCompanionLinkDevice_ptr, &protocol conformance descriptor for NSObject);
      Set.Iterator.init(_cocoa:)();
      v4 = v22;
      v6 = v23;
      v7 = v24;
      v8 = v25;
      v9 = v26;
    }

    else
    {
      v8 = 0;
      v10 = -1 << *(v4 + 32);
      v6 = v4 + 56;
      v7 = ~v10;
      v11 = -v10;
      if (v11 < 64)
      {
        v12 = ~(-1 << v11);
      }

      else
      {
        v12 = -1;
      }

      v9 = v12 & *(v4 + 56);
    }

    v13 = (v7 + 64) >> 6;
    if (v4 < 0)
    {
      goto LABEL_15;
    }

    while (1)
    {
      v14 = v8;
      v15 = v9;
      v16 = v8;
      if (!v9)
      {
        break;
      }

LABEL_13:
      v17 = (v15 - 1) & v15;
      v18 = *(*(v4 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
      if (!v18)
      {
LABEL_19:
        sub_100045960(v4);
        swift_beginAccess();
        sub_1001BE968(v19);
        swift_endAccess();

        return;
      }

      while (1)
      {
        sub_1001BEAA0(1, v20, v18);

        v8 = v16;
        v9 = v17;
        if ((v4 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_15:
        if (__CocoaSet.Iterator.next()())
        {
          sub_100018D7C(0, &qword_100521680, RPCompanionLinkDevice_ptr);
          swift_dynamicCast();
          v18 = v21;
          v16 = v8;
          v17 = v9;
          if (v21)
          {
            continue;
          }
        }

        goto LABEL_19;
      }
    }

    while (1)
    {
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v16 >= v13)
      {
        goto LABEL_19;
      }

      v15 = *(v6 + 8 * v16);
      ++v14;
      if (v15)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

void sub_1001C336C()
{
  v1 = *(v0 + 16);
  if (qword_100529730 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100015AFC(v2, qword_100529738);
  v3 = v1;

  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v5 = 136315650;
    v6 = _typeName(_:qualified:)();
    v8 = sub_10002C9C8(v6, v7, &v19);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    v9 = [v3 identifier];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v13 = sub_10002C9C8(v10, v12, &v19);

    *(v5 + 14) = v13;
    *(v5 + 22) = 2080;
    swift_beginAccess();

    v14 = Set.description.getter();
    v16 = v15;

    v17 = sub_10002C9C8(v14, v16, &v19);

    *(v5 + 24) = v17;
    _os_log_impl(&_mh_execute_header, oslog, v4, "[%s] %s - Not all messaged devices found to notify of cancelled request. Missing devices: %s", v5, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

uint64_t sub_1001C35DC()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1001C363C()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1001C3684()
{
  v1 = *(v0 + 32);
  (*(**(v0 + 16) + 216))();
  AnyCancellable.cancel()();
  return v1();
}

uint64_t sub_1001C3710()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v5 = *(v0 + 48);
  v4 = *(v0 + 56);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100009F34;

  return sub_1001BEDF8(v6, v7, v8, v2, v3, v5, v4);
}

uint64_t sub_1001C37C0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100009F30;

  return sub_1001BFD04(a1, v4);
}

uint64_t sub_1001C3890(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100009F34;

  return sub_1001BBF74(a1, a2, a3, v8);
}

uint64_t sub_1001C3954(void *a1)
{
  v3 = *(sub_1001BC5A8(&qword_100521678, &unk_10044EB50) - 8);
  v4 = *(v1 + ((*(v3 + 64) + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  if (a1)
  {
    swift_errorRetain();
    if (qword_100529730 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100015AFC(v5, qword_100529738);
    swift_errorRetain();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v25 = v24;
      *v8 = 136315394;
      v10 = _typeName(_:qualified:)();
      v12 = sub_10002C9C8(v10, v11, &v25);

      *(v8 + 4) = v12;
      *(v8 + 12) = 2112;
      swift_errorRetain();
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 14) = v13;
      *v9 = v13;
      _os_log_impl(&_mh_execute_header, v6, v7, "[%s] Failed to activate rapport link: %@", v8, 0x16u);
      sub_1000038A4(v9, &qword_100521870, &unk_10044EA70);

      sub_100026A44(v24);
    }

    v25 = a1;
    sub_1001BC5A8(&qword_100521678, &unk_10044EB50);
    CheckedContinuation.resume(throwing:)();
  }

  if (qword_100529730 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100015AFC(v14, qword_100529738);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v25 = v18;
    *v17 = 136315138;
    v19 = _typeName(_:qualified:)();
    v21 = sub_10002C9C8(v19, v20, &v25);

    *(v17 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v15, v16, "[%s] Activated rapport link", v17, 0xCu);
    sub_100026A44(v18);
  }

  v25 = v4;
  v22 = v4;
  sub_1001BC5A8(&qword_100521678, &unk_10044EB50);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_1001C3D28(unint64_t *a1, unint64_t *a2, void *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100018D7C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1001C3D6C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  swift_beginAccess();
  v4 = *(v2 + 56);

  v5 = [v3 identifier];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  LOBYTE(v5) = sub_1001BD5E8(v6, v8, v4);

  result = swift_beginAccess();
  *v1 = (v5 & 1) == 0;
  return result;
}

uint64_t sub_1001C3E40()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = *(v2 + 48);

  v5 = [v1 identifier];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v20 = v6;
  v21 = v8;
  (*(*v4 + 208))(&v22, &v20);

  v9 = &_swiftEmptySetSingleton;
  if (v22)
  {
    v9 = v22;
  }

  v23 = v9;
  v10 = [v3 effectiveIdentifier];
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  sub_100008318(&v20, v11, v13);

  v14 = *(v2 + 48);

  v15 = [v1 identifier];
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  v21 = v18;
  v22 = v23;
  v20 = v16;
  (*(*v14 + 216))(&v22, &v20);
}

uint64_t sub_1001C3FE0(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_1001C4034(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

_OWORD *sub_1001C4088(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t *sub_1001C4098(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_1001C411C()
{
  v0 = type metadata accessor for Logger();
  sub_1001C4098(v0, qword_100529758);
  sub_100015AFC(v0, qword_100529758);
  v1 = *sub_1001D8C64();
  return Logger.init(_:)();
}

uint64_t sub_1001C4178()
{
  sub_1001BC5A8(&qword_1005216D8, &unk_10044EBD0);
  sub_100013378(sub_1000133E0);
  return v1;
}

uint64_t sub_1001C4290()
{
  sub_1001BC5A8(&qword_100521740, &qword_10044EBE0);
  sub_100013378(sub_1001C7A90);
  return v1;
}

id sub_1001C4310()
{
  v1 = OBJC_IVAR____TtC12mediaremoted31MRDGroupSessionDiscoverySession_lock;
  type metadata accessor for Lock();
  *&v0[v1] = sub_10036C394();
  v2 = OBJC_IVAR____TtC12mediaremoted31MRDGroupSessionDiscoverySession_callbacks;
  *&v0[v2] = sub_1001C78BC(_swiftEmptyArrayStorage);
  *&v0[OBJC_IVAR____TtC12mediaremoted31MRDGroupSessionDiscoverySession__session] = 0;
  *&v0[OBJC_IVAR____TtC12mediaremoted31MRDGroupSessionDiscoverySession__outputDevices] = _swiftEmptyArrayStorage;
  v13.receiver = v0;
  v13.super_class = type metadata accessor for MRDGroupSessionDiscoverySession();
  v3 = objc_msgSendSuper2(&v13, "init");
  v4 = objc_opt_self();
  v5 = v3;
  v6 = [v4 defaultCenter];
  [v6 addObserver:v5 selector:"handleGroupSessionServerStart:" name:@"MRDGroupSessionServerDidStartNotification" object:0];

  v7 = [v4 defaultCenter];
  [v7 addObserver:v5 selector:"handleGroupSessionServerStop:" name:@"MRDGroupSessionServerDidStopNotification" object:0];

  v8 = [v4 defaultCenter];
  v9 = v5;
  [v8 addObserver:v9 selector:"handleSystemGroupSessionStart:" name:*sub_1003A0364() object:0];

  v10 = [v4 defaultCenter];
  v11 = v9;
  [v10 addObserver:v11 selector:"handleSystemGroupSessionStop:" name:*sub_1003A03EC() object:0];

  sub_1001C5E68();
  return v11;
}

uint64_t sub_1001C4524@<X0>(void (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  a2[3] = type metadata accessor for UUID();
  sub_1000397B4(a2);
  UUID.init()();
  sub_100013378(sub_1001C7AE0);
  (*((swift_isaMask & *v3) + 0x88))();
  a1();
}

uint64_t sub_1001C4618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  v9 = OBJC_IVAR____TtC12mediaremoted31MRDGroupSessionDiscoverySession_callbacks;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(a1 + v9);
  *(a1 + v9) = 0x8000000000000000;
  sub_1001C7244(sub_1001C954C, v8, a2, isUniquelyReferenced_nonNull_native);
  *(a1 + v9) = v12;
  return swift_endAccess();
}