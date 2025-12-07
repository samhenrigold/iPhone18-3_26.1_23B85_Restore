uint64_t sub_100002168(uint64_t a1, uint64_t a2)
{
  if (qword_100063660 != -1)
  {
    sub_1000370A0();
  }

  return byte_100063658;
}

void sub_100002248(uint64_t a1, uint64_t a2)
{
  v3 = _INLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [*(a1 + 32) activityID];
    v5 = 136315138;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Stopping activity... %s", &v5, 0xCu);
  }

  xpc_activity_unregister([*(a1 + 32) activityID]);
}

id sub_100002300(uint64_t a1, uint64_t a2)
{
  v3 = _INLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "ICQ notification about persitance change received, time to revalidate our activities...", v5, 2u);
  }

  return [*(a1 + 32) _unsafe_ensureFreshmintActivityValidity];
}

uint64_t sub_10000246C()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100002538()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100002574()
{
  v1 = *(sub_100022CF0(&qword_100063280, &qword_10004D7B0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 96) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();

  if (*(v0 + 80))
  {
  }

  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return _swift_deallocObject(v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1000026F0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100002748()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100002780()
{
  v1 = sub_100022CF0(&qword_1000634B8, &qword_10004DC40);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10000286C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000028A4()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000028F4()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100002940()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100002978()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000029B0()
{
  sub_1000235A8(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 48, 7);
}

void sub_100003614(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, ...)
{
  va_start(va, a41);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100003748(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _INLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100033908(v6, v7);
    }
  }

  else
  {
    if (![v5 count])
    {
      goto LABEL_5;
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v8)
    {
      v9 = v8;
      v17 = 0;
      v18 = v5;
      v10 = *v20;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v19 + 1) + 8 * i);
          v13 = objc_alloc_init(NSMutableDictionary);
          v14 = [v12 systemSerialNumber];
          if (v14)
          {
            [v13 setObject:v14 forKeyedSubscript:@"systemSerialNumber"];
          }

          v15 = [v12 leftSerialNumber];
          if (v15)
          {
            [v13 setObject:v15 forKeyedSubscript:@"leftSerialNumber"];
          }

          v16 = [v12 rightSerialNumber];
          if (v16)
          {
            [v13 setObject:v16 forKeyedSubscript:@"rightSerialNumber"];
          }

          [*(a1 + 32) addObject:v13];
        }

        v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v9);
      v6 = v17;
      v5 = v18;
    }
  }

LABEL_5:
  dispatch_semaphore_signal(*(a1 + 40));
}

Class sub_10000396C(uint64_t a1)
{
  sub_1000039C4();
  result = objc_getClass("NRPairedDeviceRegistry");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_100063620 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    sub_100033980();
    return sub_1000039C4();
  }

  return result;
}

uint64_t sub_1000039C4()
{
  v3[0] = 0;
  if (!qword_100063628)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_100003AC4;
    v3[4] = &unk_1000551E8;
    v3[5] = v3;
    v4 = off_1000551D0;
    v5 = 0;
    qword_100063628 = _sl_dlopen();
  }

  v0 = qword_100063628;
  v1 = v3[0];
  if (!qword_100063628)
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

uint64_t sub_100003AC4(uint64_t a1)
{
  result = _sl_dlopen();
  qword_100063628 = result;
  return result;
}

void *sub_100003B38(uint64_t a1)
{
  v2 = sub_1000039C4();
  result = dlsym(v2, "NRDevicePropertyUDID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100063630 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1000042D8(id a1, BOOL a2, NSError *a3)
{
  v3 = a2;
  v4 = a3;
  v5 = _INLogSystem();
  v6 = v5;
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Successfully handled terms push message!", v7, 2u);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_100033CB8();
  }
}

void sub_1000044A8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _INLogSystem();
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Successfully updated properties for account %@", &v10, 0xCu);
    }

    v9 = *(*(a1 + 32) + 16);
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100033D28();
    }

    v9 = *(*(a1 + 32) + 16);
  }

  v9();
}

void sub_100004898(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = _INLogSystem();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100033EC4(v4, v6);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_100033F5C(v6);
    }

    v7 = [*(a1 + 32) aa_appleAccountWithAltDSID:*(a1 + 40)];
    (*(*(a1 + 48) + 16))();
  }
}

void sub_100004B10(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  v8 = [INStorageSummaryResponse alloc];
  v9 = [v7 httpResponse];
  v10 = [v7 data];

  v11 = [(INStorageSummaryResponse *)v8 initWithHTTPResponse:v9 data:v10];
  if (v6)
  {
    v12 = v6;
LABEL_4:
    v13 = _INLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100033FA0();
    }

    v14 = *(*(a1 + 32) + 16);
    goto LABEL_7;
  }

  v12 = [(INStorageSummaryResponse *)v11 error];
  if (v12)
  {
    goto LABEL_4;
  }

  v15 = _INLogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    sub_100034008();
  }

  v16 = _INLogSystem();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    sub_10003403C(v11);
  }

  v17 = *(a1 + 32);
  v12 = [(INStorageSummaryResponse *)v11 cloudStorageSummary];
  v14 = *(v17 + 16);
LABEL_7:
  v14();
}

void sub_100004D8C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  v8 = [INStorageAppsResponse alloc];
  v9 = [v7 httpResponse];
  v10 = [v7 data];

  v11 = [(INStorageAppsResponse *)v8 initWithHTTPResponse:v9 data:v10];
  if (v6)
  {
    v12 = v6;
LABEL_4:
    v13 = _INLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1000340C0();
    }

    v14 = *(*(a1 + 32) + 16);
    goto LABEL_7;
  }

  v12 = [(INStorageAppsResponse *)v11 error];
  if (v12)
  {
    goto LABEL_4;
  }

  v15 = _INLogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    sub_100034128();
  }

  v16 = _INLogSystem();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    sub_10003415C(v11);
  }

  v17 = *(a1 + 32);
  v12 = [(INStorageAppsResponse *)v11 cloudStorageApps];
  v14 = *(v17 + 16);
LABEL_7:
  v14();
}

void sub_100004FF4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  v8 = [INStorageByAppResponse alloc];
  v9 = [v7 httpResponse];
  v10 = [v7 data];

  v11 = [(INStorageByAppResponse *)v8 initWithHTTPResponse:v9 data:v10];
  if (v6)
  {
    v12 = v6;
LABEL_4:
    v13 = _INLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1000341E0();
    }

    v14 = *(*(a1 + 32) + 16);
    goto LABEL_7;
  }

  v12 = [(INStorageByAppResponse *)v11 error];
  if (v12)
  {
    goto LABEL_4;
  }

  v15 = _INLogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    sub_100034248();
  }

  v16 = _INLogSystem();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    sub_10003427C(v11);
  }

  v17 = *(a1 + 32);
  v12 = [(INStorageByAppResponse *)v11 appCloudStorage];
  v14 = *(v17 + 16);
LABEL_7:
  v14();
}

void sub_100005270(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  v8 = [INCloudBackupInfoResponse alloc];
  v9 = [v7 httpResponse];
  v10 = [v7 data];

  v11 = [(INCloudBackupInfoResponse *)v8 initWithHTTPResponse:v9 data:v10];
  if (v6)
  {
    v12 = v6;
LABEL_4:
    v13 = _INLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100034300();
    }

    v14 = *(*(a1 + 32) + 16);
    goto LABEL_7;
  }

  v12 = [(INCloudBackupInfoResponse *)v11 error];
  if (v12)
  {
    goto LABEL_4;
  }

  v15 = _INLogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    sub_100034368();
  }

  v16 = _INLogSystem();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    sub_10003439C(v11);
  }

  v17 = *(a1 + 32);
  v12 = [(INCloudBackupInfoResponse *)v11 backupInfo];
  v14 = *(v17 + 16);
LABEL_7:
  v14();
}

void sub_1000055CC(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  v8 = [INTipNetworkResponse alloc];
  v9 = [v7 httpResponse];
  v10 = [v7 data];

  v11 = [(INTipNetworkResponse *)v8 initWithHTTPResponse:v9 data:v10];
  if (v6)
  {
    v12 = v6;
    goto LABEL_4;
  }

  v12 = [(INTipNetworkResponse *)v11 error];
  if (v12)
  {
LABEL_4:
    v13 = _INLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100034420();
    }

    goto LABEL_6;
  }

  v14 = _INLogSystem();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    sub_100034488();
  }

  v13 = _INLogSystem();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    sub_1000344BC();
  }

  v12 = 0;
LABEL_6:

  (*(*(a1 + 32) + 16))();
}

void sub_1000057C0(uint64_t a1)
{
  v1 = [[MBManager alloc] initWithAccount:*(*(a1 + 32) + 8) delegate:0 eventQueue:0];
  v2 = [v1 backupDeviceUUID];
  v3 = qword_100063638;
  qword_100063638 = v2;

  v4 = _INLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_100034530(v4);
  }
}

void sub_10000590C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  v8 = [INAppsSyncingToDriveResponse alloc];
  v9 = [v7 httpResponse];
  v10 = [v7 data];

  v11 = [(INAppsSyncingToDriveResponse *)v8 initWithHTTPResponse:v9 data:v10];
  if (v6)
  {
    v12 = v6;
LABEL_4:
    v13 = _INLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1000345B4();
    }

    v14 = *(*(a1 + 32) + 16);
    goto LABEL_7;
  }

  v12 = [(INAppsSyncingToDriveResponse *)v11 error];
  if (v12)
  {
    goto LABEL_4;
  }

  v15 = _INLogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    sub_10003461C();
  }

  v16 = _INLogSystem();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    sub_100034650(v11);
  }

  v17 = *(a1 + 32);
  v12 = [(INAppsSyncingToDriveResponse *)v11 appsSyncingToDrive];
  v14 = *(v17 + 16);
LABEL_7:
  v14();
}

void sub_100005B5C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = [INRecommendationsResponse alloc];
  v9 = [v6 httpResponse];
  v10 = [v6 data];
  v11 = [(INRecommendationsResponse *)v8 initWithHTTPResponse:v9 data:v10];

  if (v7)
  {
    v12 = v7;
LABEL_4:
    v13 = _INLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1000346D4();
    }

    v14 = *(*(a1 + 32) + 16);
    goto LABEL_7;
  }

  v12 = [v6 error];
  if (v12)
  {
    goto LABEL_4;
  }

  v15 = _INLogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    sub_10003473C();
  }

  v16 = _INLogSystem();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    sub_100034770(v11);
  }

  v17 = *(a1 + 32);
  v12 = [(INRecommendationsResponse *)v11 serverRecommendations];
  v14 = *(v17 + 16);
LABEL_7:
  v14();
}

void sub_100005DA8(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = [INRulesetResponse alloc];
  v9 = [v6 httpResponse];
  v10 = [v6 data];
  v11 = [(INRulesetResponse *)v8 initWithHTTPResponse:v9 data:v10];

  if (v7)
  {
    v12 = v7;
LABEL_4:
    v13 = _INLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1000347F4();
    }

    v14 = *(*(a1 + 32) + 16);
    goto LABEL_7;
  }

  v12 = [v6 error];
  if (v12)
  {
    goto LABEL_4;
  }

  v15 = _INLogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    sub_10003485C();
  }

  v16 = _INLogSystem();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    sub_100034890(v11);
  }

  v17 = *(a1 + 32);
  v12 = [(INRulesetResponse *)v11 ruleConfiguration];
  v14 = *(v17 + 16);
LABEL_7:
  v14();
}

void sub_10000600C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = [INRecommendationsResponse alloc];
  v9 = [v6 httpResponse];
  v10 = [v6 data];
  v11 = [(INRecommendationsResponse *)v8 initWithHTTPResponse:v9 data:v10];

  if (v7)
  {
    v12 = v7;
LABEL_4:
    v13 = _INLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100034914();
    }

    v14 = *(*(a1 + 32) + 16);
    goto LABEL_7;
  }

  v12 = [v6 error];
  if (v12)
  {
    goto LABEL_4;
  }

  v15 = _INLogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    sub_10003497C();
  }

  v16 = _INLogSystem();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    sub_1000349B0(v11);
  }

  v17 = *(a1 + 32);
  v12 = [(INRecommendationsResponse *)v11 serverRecommendations];
  v14 = *(v17 + 16);
LABEL_7:
  v14();
}

void sub_10000623C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = [INRecommendationsActionsResponse alloc];
  v9 = [v6 httpResponse];
  v10 = [v6 data];
  v11 = [(INRecommendationsActionsResponse *)v8 initWithHTTPResponse:v9 data:v10];

  if (v7)
  {
    v12 = v7;
LABEL_4:
    v13 = _INLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100034A34();
    }

    (*(*(a1 + 32) + 16))();
    goto LABEL_7;
  }

  v12 = [v6 error];
  if (v12)
  {
    goto LABEL_4;
  }

  v14 = _INLogSystem();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    sub_100034A9C(v11);
  }

  (*(*(a1 + 32) + 16))();
LABEL_7:
}

void sub_100006654(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, v8, OS_LOG_TYPE_DEBUG, a4, va, 0xCu);
}

void sub_100006674(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void sub_100006690(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 2u);
}

void sub_100006A38(uint64_t a1, uint64_t a2)
{
  v3 = _INLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [*(a1 + 32) activityID];
    v15 = 136315138;
    v16 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Ensuring timer for activity... %s", &v15, 0xCu);
  }

  v5 = +[INManagedDefaults sharedInstance];
  v6 = [*(a1 + 32) activityNextFireDateKey];
  v7 = [v5 valueForManagedDefault:v6];

  if (v7)
  {
    [v7 doubleValue];
    v8 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
    if ([v8 compare:*(a1 + 40)] == 1)
    {
      v9 = _INLogSystem();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        sub_100034C98((a1 + 32));
      }
    }

    else
    {
      v11 = +[NSDate date];
      v12 = [v8 compare:v11];

      v13 = _INLogSystem();
      v9 = v13;
      if (v12 != -1)
      {
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          sub_100034C10(v8, (a1 + 32));
        }

        goto LABEL_15;
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [*(a1 + 32) activityID];
        v15 = 138412546;
        v16 = v8;
        v17 = 2080;
        v18 = v14;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "It looks like we missed an activity scheduled for %@! id=%s", &v15, 0x16u);
      }
    }

    [*(a1 + 32) _scheduleNextFireForDate:*(a1 + 40)];
LABEL_15:

    goto LABEL_16;
  }

  v10 = _INLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_100034D14((a1 + 32));
  }

  [*(a1 + 32) _scheduleNextFireForDate:*(a1 + 40)];
LABEL_16:
}

void sub_100006E48(uint64_t a1, void *a2)
{
  v3 = a2;
  state = xpc_activity_get_state(v3);
  v5 = _INLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100035018(a1);
  }

  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(v7 + 32);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100006F3C;
  v10[3] = &unk_100055368;
  v10[4] = v7;
  v11 = v3;
  v13 = state;
  v12 = v6;
  v9 = v3;
  dispatch_async(v8, v10);
}

void sub_100006F3C(uint64_t a1)
{
  v2 = a1 + 32;
  objc_storeStrong((*(a1 + 32) + 24), *(a1 + 40));
  if (*(v2 + 24) == 2)
  {
    if (*(*v2 + 8))
    {
      if (*(*v2 + 16))
      {
        v3 = _INLogSystem();
        if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
        {
          sub_10003511C(v2);
        }

        if (*(*v2 + 16))
        {
          v4 = *(*v2 + 16);
        }

        else
        {
          v4 = 0;
        }

        v6 = [*(*v2 + 8) methodSignatureForSelector:v4];
        v7 = [NSInvocation invocationWithMethodSignature:v6];
        [v7 setTarget:*(*v2 + 8)];
        if (*(*v2 + 16))
        {
          v8 = *(*v2 + 16);
        }

        else
        {
          v8 = 0;
        }

        [v7 setSelector:v8];
        [v7 invoke];
      }

      else
      {
        v6 = _INLogSystem();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          sub_100035198(v2);
        }
      }
    }

    else
    {
      v6 = _INLogSystem();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_100035214(v2);
      }
    }
  }

  else if (*(a1 + 48))
  {
    v5 = _INLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_1000350A0(v2);
    }

    xpc_activity_set_criteria(*(*(a1 + 32) + 24), *(a1 + 48));
  }
}

id sub_1000074C8(void **a1)
{
  v2 = *a1;

  return [v2 activityID];
}

void sub_100007CB8(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [*(a1 + 32) _parseTip:v3];
    [*(a1 + 40) addObject:v4];
  }

  else
  {
    v5 = _INLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1000354F4(v3, v5);
    }
  }
}

void sub_10000810C(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = *(a1 + 32);
    v5 = [*(a1 + 40) _parseTipAction:v3];
    [v4 addObject:v5];
  }

  else
  {
    v5 = _INLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100035620(v3, v5);
    }
  }
}

void sub_100008758(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) addObject:v3];
  }
}

void sub_100008AEC(uint64_t a1, void *a2)
{
  v5 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) _parseSpecifierInfo:v5];
    [v3 addObject:v4];
  }
}

void sub_10000903C(uint64_t a1, void *a2)
{
  v5 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) _parseiCloudPlusFeature:v5];
    [v3 addObject:v4];
  }
}

void sub_1000090C0(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [[ICQConfirmationActionInfo alloc] initFromDictionary:v4];
    [*(a1 + 32) addObject:v3];
  }
}

void sub_10000A3CC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(ICQBackupDeviceGroup);
  v5 = [v3 objectForKeyedSubscript:@"title"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 setSectionHeader:v5];
  }

  v6 = [v3 objectForKeyedSubscript:@"footer"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 setSectionFooter:v6];
  }

  v7 = objc_alloc_init(NSMutableArray);
  v8 = [v3 objectForKeyedSubscript:@"deviceBackups"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = _NSConcreteStackBlock;
    v13 = 3221225472;
    v14 = sub_10000A588;
    v15 = &unk_1000553B8;
    v9 = v7;
    v10 = *(a1 + 32);
    v16 = v9;
    v17 = v10;
    [v8 enumerateObjectsUsingBlock:&v12];
  }

  v11 = [v7 copy];
  [v4 setBackupDevices:v11];

  [*(a1 + 40) addObject:v4];
}

void sub_10000A588(uint64_t a1, void *a2)
{
  v5 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) _parseBackUpDevice:v5];
    [v3 addObject:v4];
  }
}

void sub_10000AF00(id a1, id a2, unint64_t a3, BOOL *a4)
{
  v4 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = _INLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100035EBC();
    }

    goto LABEL_14;
  }

  if (![v4 isEqualToString:@"featuresCache"])
  {
    v7 = [v4 isEqualToString:@"offersCache"];
    v8 = _INLogSystem();
    v6 = v8;
    if (v7)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Cleaning offers cache.", v9, 2u);
      }

      v6 = +[ICQDaemonOfferManager sharedDaemonOfferManager];
      [v6 teardownCachedOffers];
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100035F2C();
    }

LABEL_14:

    goto LABEL_15;
  }

  v5 = _INLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Cleaning features cache.", buf, 2u);
  }

  +[CSFFeatureManager clearCacheAndNotify];
LABEL_15:
}

void sub_10000B0EC(id a1)
{
  qword_100063648 = objc_alloc_init(INRegistrationDigestCache);

  _objc_release_x1();
}

void sub_10000B22C(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:@"INRegistrationDigestCacheDidBecomeAvailable" object:*(a1 + 32)];
}

void sub_10000B42C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000B444(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000B45C(uint64_t a1)
{
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 4, 0, 0);
  CFDictionaryAddValue(Mutable, kSecClass, kSecClassGenericPassword);
  CFDictionaryAddValue(Mutable, kSecAttrAccount, *(a1 + 32));
  CFDictionaryAddValue(Mutable, kSecAttrService, @"com.apple.ind.registration");
  CFDictionaryAddValue(Mutable, kSecReturnData, kCFBooleanTrue);
  result = 0;
  if (SecItemCopyMatching(Mutable, &result))
  {
    v3 = _INLogSystem();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100035FB0();
    }

    if (*(a1 + 56))
    {
      **(a1 + 56) = INCreateErrorWithKeychainError();
    }
  }

  else if (result)
  {
    v4 = [INRegistrationDigest alloc];
    v5 = [(INRegistrationDigest *)v4 initWithData:result];
    v6 = *(*(a1 + 48) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    CFRelease(result);
  }

  CFRelease(Mutable);
}

void sub_10000B6D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000B6F0(uint64_t a1)
{
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 3, 0, 0);
  CFDictionaryAddValue(Mutable, kSecClass, kSecClassGenericPassword);
  CFDictionaryAddValue(Mutable, kSecAttrAccount, *(a1 + 32));
  CFDictionaryAddValue(Mutable, kSecAttrService, @"com.apple.ind.registration");
  v3 = SecItemDelete(Mutable);
  if (v3)
  {
    v4 = v3;
    v5 = _INLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100035FB0();
    }

    if (v4 != -25300 && *(a1 + 56))
    {
      **(a1 + 56) = INCreateErrorWithKeychainError();
    }
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  CFRelease(Mutable);
}

void sub_10000B94C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000B964(uint64_t a1)
{
  v2 = [*(a1 + 32) data];
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 3, 0, 0);
  CFDictionaryAddValue(Mutable, kSecClass, kSecClassGenericPassword);
  CFDictionaryAddValue(Mutable, kSecAttrAccount, *(a1 + 40));
  CFDictionaryAddValue(Mutable, kSecAttrService, @"com.apple.ind.registration");
  CFDictionaryAddValue(Mutable, kSecAttrAccessible, kSecAttrAccessibleAfterFirstUnlock);
  v4 = CFDictionaryCreateMutable(kCFAllocatorDefault, 1, 0, 0);
  CFDictionaryAddValue(v4, kSecValueData, v2);
  v5 = SecItemUpdate(Mutable, v4);
  if (!v5)
  {
    goto LABEL_6;
  }

  if (v5 == -25300)
  {
    v6 = _INLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "No existing item. Creating a new one.", v8, 2u);
    }

    CFDictionaryAddValue(Mutable, kSecValueData, v2);
    if (!SecItemAdd(Mutable, 0))
    {
LABEL_6:
      *(*(*(a1 + 56) + 8) + 24) = 1;
    }
  }

  if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
    v7 = _INLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10003601C();
    }

    if (*(a1 + 64))
    {
      **(a1 + 64) = INCreateErrorWithKeychainError();
    }
  }

  CFRelease(v4);
  CFRelease(Mutable);
}

void sub_10000BBB0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x12u);
}

uint64_t start()
{
  v0 = objc_autoreleasePoolPush();
  v1 = _INLogSystem();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "ind reporting for duty!", buf, 2u);
  }

  v2 = +[INDaemon sharedInstance];
  [v2 start];

  objc_autoreleasePoolPop(v0);
  v3 = +[NSRunLoop mainRunLoop];
  [v3 run];

  v4 = _INLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "ind is shutting down!", v6, 2u);
  }

  return 0;
}

id sub_10000CF14(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setAccount:a2];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6.receiver = *(a1 + 32);
  v6.super_class = INRenewingRequest;
  return objc_msgSendSuper2(&v6, "performRequestWithSession:withHandler:", v3, v4);
}

void sub_10000E46C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000E4D8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000E4F0(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = _INLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_100036C38(v5, v7);
  }

  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000E5EC;
  v13[3] = &unk_1000556D0;
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v12 = *(a1 + 64);
  v14 = v11;
  v15 = v12;
  [v8 _handleRegistrationResponse:v5 forRequest:v6 digest:v9 account:v10 completion:v13];
}

void sub_10000E5EC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  (*(*(a1 + 32) + 16))();
  v8 = _INLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134349570;
    v12 = a2;
    v13 = 2048;
    v14 = a3;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Finished registering device with result %{public}ld, TTL %lu, error %@. Deallocating transaction.", &v11, 0x20u);
  }

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = 0;
}

void sub_10000EC60(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = _INLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100036E80(v4, v5);
  }

  [*(a1 + 32) _handleUnregistrationResponse:v4 account:*(a1 + 40) completion:*(a1 + 48)];
}

void sub_10000EE90(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void sub_10000F2E0(id a1)
{
  qword_100063668 = objc_alloc_init(INDaemon_iOS);

  _objc_release_x1();
}

void sub_10000F93C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_10000F958(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained apsConnection];

    if (!v4)
    {
      v5 = _INLogSystem();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_100037158(v5, v6, v7, v8, v9, v10, v11, v12);
      }
    }

    v13 = [v3 apsConnection];
    v14 = [v13 publicToken];

    if (v14)
    {
      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = sub_10000FC88;
      v33[3] = &unk_1000557F0;
      v15 = v3;
      v34 = v15;
      v35 = *(a1 + 32);
      v16 = v14;
      v17 = *(a1 + 64);
      v36 = v16;
      v38 = v17;
      v37 = *(a1 + 48);
      v18 = objc_retainBlock(v33);
      if (*(a1 + 32))
      {
        if (!+[_TtC3ind18LoggedOutPushCache wasDeviceRegistered])
        {
          (v18[2])(v18);
          goto LABEL_21;
        }

        v19 = _INLogSystem();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          sub_1000371D0();
        }

        v20 = *(a1 + 40);
        v31[0] = _NSConcreteStackBlock;
        v31[1] = 3221225472;
        v31[2] = sub_100010050;
        v31[3] = &unk_100055818;
        v32 = v18;
        [v20 unregisterDeviceFromLoggedOutiCloudNotificationsWithReason:1 completion:v31];
        v21 = v32;
      }

      else
      {
        v25 = [v15 registrar];
        v26 = *(a1 + 64);
        v27[0] = _NSConcreteStackBlock;
        v27[1] = 3221225472;
        v27[2] = sub_1000100F4;
        v27[3] = &unk_100055840;
        v30 = v26;
        v29 = *(a1 + 48);
        v28 = v15;
        [v25 registerForLoggedOutPushWithToken:v16 reason:v26 completion:v27];

        v21 = v29;
      }

LABEL_21:
      goto LABEL_22;
    }

    v23 = _INLogSystem();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_100037204();
    }

    v24 = *(a1 + 48);
    if (v24)
    {
      v16 = INCreateError();
      (*(v24 + 16))(v24, 0, v16);
LABEL_22:
    }
  }

  else
  {
    v22 = *(a1 + 48);
    if (v22)
    {
      (*(v22 + 16))(v22, 0, 0);
    }
  }
}

void sub_10000FC88(uint64_t a1)
{
  v2 = [*(a1 + 32) registrar];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 64);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000FD78;
  v6[3] = &unk_1000557C8;
  v10 = v5;
  v9 = *(a1 + 56);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  [v2 registerForPushNotificationsWithAccount:v3 pushToken:v4 reason:v5 completion:v6];
}

void sub_10000FD78(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v8 = [INRegistrationRequest bodyParameterValueForRegistrationReason:*(a1 + 56)];
  v9 = _INLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_100037240(a2);
  }

  v10 = _INLogSystem();
  v11 = v10;
  if (a2)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Success!", buf, 2u);
    }

    (*(*(a1 + 48) + 16))();
    if (a2 == 1)
    {
      v12 = os_transaction_create();
      v13 = _INLogSystem();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *v22 = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Registration Success!", v22, 2u);
      }

      [*(a1 + 32) _enablePushTopics];
      [*(a1 + 32) _planForRegistrationTTL:a3 account:*(a1 + 40)];
    }
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1000372F8();
    }

    (*(*(a1 + 48) + 16))();
  }

  v14 = *(a1 + 32);
  objc_sync_enter(v14);
  v15 = [*(a1 + 32) accountsToReconsiderAfterReboot];
  v16 = [*(a1 + 40) aa_altDSID];
  v17 = [v15 containsObject:v16];

  if (v17)
  {
    v18 = _INLogSystem();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      sub_1000373D0();
    }

    [*(a1 + 32) handlePushRegistrationWithAccount:*(a1 + 40) reason:5];
    v19 = [*(a1 + 32) accountsToReconsiderAfterReboot];
    v20 = [*(a1 + 40) aa_altDSID];
    [v19 removeObject:v20];
  }

  else if ((*(a1 + 56) | 4) == 5)
  {
    v21 = _INLogSystem();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      sub_100037360();
    }

    [*(a1 + 32) handlePushRegistrationWithAccount:*(a1 + 40) reason:*(a1 + 56)];
  }

  objc_sync_exit(v14);
}

void sub_100010050(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = _INLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100037404();
  }

  if (v4)
  {
    v6 = _INLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10003748C(v4);
    }
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1000100F4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v8 = [INRegistrationRequest bodyParameterValueForRegistrationReason:*(a1 + 48)];
  v9 = _INLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [NSNumber numberWithInteger:a2];
    v15 = 138412546;
    v16 = v10;
    v17 = 2112;
    v18 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "INRegistrationResult was %@ for reason: %@", &v15, 0x16u);
  }

  v11 = _INLogSystem();
  v12 = v11;
  if (a2)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Success!", &v15, 2u);
    }

    (*(*(a1 + 40) + 16))();
    if (a2 == 1)
    {
      v13 = os_transaction_create();
      v14 = _INLogSystem();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v15) = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Logged-Out Registration Success!", &v15, 2u);
      }

      [*(a1 + 32) _enablePushTopics];
      [*(a1 + 32) _planForRegistrationTTL:a3 account:0];
    }
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1000372F8();
    }

    (*(*(a1 + 40) + 16))();
  }

  [*(a1 + 32) handlePushRegistrationWithAccount:0 reason:*(a1 + 48)];
}

void sub_100010604(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = _INLogSystem();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_1000375F8();
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_100037588();
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_10001079C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1000107B8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained apsConnection];
    v5 = [v4 publicToken];

    if (v5)
    {
      v6 = *(a1 + 32);
      v7 = _INLogSystem();
      v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
      if (v6)
      {
        if (v8)
        {
          v9 = *(a1 + 32);
          *buf = 138412290;
          v26 = v9;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Unregistering account %@", buf, 0xCu);
        }

        v10 = [v3 registrar];
        v11 = *(a1 + 32);
        v21[0] = _NSConcreteStackBlock;
        v21[1] = 3221225472;
        v21[2] = sub_100010A90;
        v21[3] = &unk_1000558B8;
        v22 = v3;
        v23 = *(a1 + 32);
        v24 = *(a1 + 40);
        [v10 unregisterFromPushNotificationsForAccount:v11 pushToken:v5 completion:v21];

        v12 = v22;
      }

      else
      {
        if (v8)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Unregistering device from logged-out pushes", buf, 2u);
        }

        v17 = [v3 registrar];
        v18 = *(a1 + 56);
        v19[0] = _NSConcreteStackBlock;
        v19[1] = 3221225472;
        v19[2] = sub_100010B38;
        v19[3] = &unk_1000558E0;
        v20 = *(a1 + 40);
        [v17 unregisterFromLoggedOutPushNotificationsWithToken:v5 reason:v18 completionHandler:v19];

        v12 = v20;
      }
    }

    else
    {
      v14 = _INLogSystem();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10003766C();
      }

      v15 = *(a1 + 40);
      if (v15)
      {
        v16 = INCreateError();
        (*(v15 + 16))(v15, 0, v16);
      }
    }
  }

  else
  {
    v13 = *(a1 + 40);
    if (v13)
    {
      (*(v13 + 16))(v13, 0, 0);
    }
  }
}

void sub_100010A90(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = _INLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Unregistration Success!", v7, 2u);
    }

    [*(a1 + 32) _cleanUpIfNoAccountsAreLeftOtherThanAccount:*(a1 + 40)];
  }

  (*(*(a1 + 48) + 16))();
}

void sub_100010B38(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _INLogSystem();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000376A8(v3);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Unregistration Success!", v6, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

id *sub_100010EC8(id *result, uint64_t a2)
{
  if (a2)
  {
    v2 = result;
    v3 = _INLogSystem();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4[0] = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "No primary iCloud account but we have an active feature ticket. Registering for logged out push notifications", v4, 2u);
    }

    return [v2[4] registerDeviceForLoggedOutiCloudNotificationsWithReason:2 completion:&stru_100055928];
  }

  return result;
}

void sub_1000114A8(id a1, BOOL a2, NSError *a3)
{
  v3 = a2;
  v4 = a3;
  v5 = _INLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (v3)
    {
      v6 = @"YES";
    }

    v7 = 138412546;
    v8 = v6;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "FLAB registration validation finished for logged-out device. Success: %@. Error %@", &v7, 0x16u);
  }
}

void sub_100011584(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = _INLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = @"NO";
    v9 = 138412802;
    if (a2)
    {
      v8 = @"YES";
    }

    v10 = v7;
    v11 = 2112;
    v12 = v8;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "FLAB registration validation finished for account %@. Success: %@. Error %@", &v9, 0x20u);
  }
}

void sub_100011EEC(id a1)
{
  v1 = _INLogSystem();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Client connection interrupted/invalidated.", v2, 2u);
  }
}

void sub_100012508(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  dispatch_group_leave(*(a1 + 40));
  v6 = _INLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136446722;
    v8 = "[INDaemon _performHeartbeatRegistration]_block_invoke";
    v9 = 1026;
    v10 = a2;
    v11 = 2114;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s Registration complete. Result: %{public}d. Error: %{public}@.", &v7, 0x1Cu);
  }
}

void sub_100012844(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  dispatch_group_leave(*(a1 + 40));
  v6 = _INLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109378;
    v7[1] = a2;
    v8 = 2112;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Registration complete. Result: %d. Error: %@.", v7, 0x12u);
  }
}

void sub_100012914(uint64_t a1)
{
  [*(*(a1 + 32) + 72) setActivityState:5];
  v1 = _INLogSystem();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Heartbeat activity is set to done, will exit the dameon on audio devices.", v2, 2u);
  }
}

void sub_100012EB8(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100012F80;
  v10[3] = &unk_1000559E0;
  v8 = *(a1 + 48);
  v13 = a2;
  v11 = v5;
  v12 = v8;
  v9 = v5;
  [v6 handlePushUnregistrationWithAccount:v7 completion:v10];
}

void sub_1000130C8(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100013184;
  v9[3] = &unk_1000559E0;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v12 = a2;
  v10 = v5;
  v11 = v7;
  v8 = v5;
  [v6 handlePushUnregistrationWithAccount:0 completion:v9];
}

void sub_100013CEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100013D04(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100013D1C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = _INLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100037A9C();
    }

    v6 = INCreateErrorWithError();
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }

  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;
}

void sub_100013F7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100013F94(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = _INLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100037B04();
    }

    v6 = INCreateErrorWithError();
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }

  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;
}

void sub_100014208(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100014220(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = _INLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100037B6C();
    }

    v6 = INCreateErrorWithError();
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }

  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;
}

void sub_100014480(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100014498(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = _INLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100037BD4();
    }

    v6 = INCreateErrorWithError();
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }

  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;
}

void sub_100014708(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100014720(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _INLogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100037CA4();
    }
  }

  v5 = INCreateErrorWithError();
  (*(*(a1 + 32) + 16))();
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;
}

void sub_10001496C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100014984(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _INLogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100037D74();
    }
  }

  v5 = INCreateErrorWithError();
  (*(*(a1 + 32) + 16))();
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;
}

void sub_100014BC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100014BD8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = _INLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100037E44();
    }

    v6 = INCreateErrorWithError();
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }

  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;
}

void sub_1000150BC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _INLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100037F78(v6);
    }
  }

  v8 = [v5 apsEnvironment];
  [*(a1 + 32) setActiveAPSEnvironment:v8];

  v9 = [*(a1 + 32) activeAPSEnvironment];

  v10 = _INLogSystem();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (!v9)
  {
    if (v11)
    {
      LOWORD(v19) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Using production APS env as fallback, since none was specified by the iCloud server.", &v19, 2u);
    }

    goto LABEL_13;
  }

  if (v11)
  {
    v12 = [*(a1 + 32) activeAPSEnvironment];
    v19 = 138412290;
    v20 = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Server wants us to use the APS env: %@", &v19, 0xCu);
  }

  v13 = [*(a1 + 32) activeAPSEnvironment];
  v14 = [APSConnection isValidEnvironment:v13];

  if ((v14 & 1) == 0)
  {
    v10 = _INLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100038004();
    }

LABEL_13:

    [*(a1 + 32) setActiveAPSEnvironment:APSEnvironmentProduction];
  }

  v15 = [APSConnection alloc];
  v16 = [*(a1 + 32) activeAPSEnvironment];
  v17 = [v15 initWithEnvironmentName:v16 namedDelegatePort:@"com.apple.ind.aps" queue:*(*(a1 + 32) + 16)];
  [*(a1 + 32) setApsConnection:v17];

  [*(a1 + 32) _validateEnabledTopics];
  v18 = [*(a1 + 32) apsConnection];
  [v18 setDelegate:*(a1 + 32)];

  (*(*(a1 + 40) + 16))();
}

void sub_1000153C0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _INLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100037F78(v6);
    }
  }

  v8 = [v5 apsEnvironment];
  if (v8)
  {
    v9 = (a1 + 32);
    v10 = [*(a1 + 32) activeAPSEnvironment];
    v11 = [v8 isEqualToString:v10];

    v12 = _INLogSystem();
    v13 = v12;
    if (v11)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        sub_1000380A8((a1 + 32));
      }

LABEL_22:

      goto LABEL_23;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [*v9 activeAPSEnvironment];
      v24 = 138412546;
      v25 = v15;
      v26 = 2112;
      v27 = v8;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Active APS env (%@) does not match server-requested env (%@).", &v24, 0x16u);
    }

    v16 = [APSConnection isValidEnvironment:v8];
    v17 = _INLogSystem();
    v13 = v17;
    if ((v16 & 1) == 0)
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_100038040();
      }

      goto LABEL_22;
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [*v9 activeAPSEnvironment];
      v24 = 138412290;
      v25 = v18;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Shutting down APS connection with env %@...", &v24, 0xCu);
    }

    v19 = [*v9 apsConnection];
    [v19 setDelegate:0];

    v20 = [*v9 apsConnection];
    [v20 shutdown];

    v21 = _INLogSystem();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 138412290;
      v25 = v8;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Starting new APS connection with env %@...", &v24, 0xCu);
    }

    v22 = [[APSConnection alloc] initWithEnvironmentName:v8 namedDelegatePort:@"com.apple.ind.aps" queue:*(*v9 + 2)];
    [*v9 setApsConnection:v22];

    v23 = [*v9 apsConnection];
    [v23 setDelegate:*v9];

    [*v9 setActiveAPSEnvironment:v8];
  }

  else
  {
    v14 = _INLogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      sub_10003813C();
    }
  }

LABEL_23:
  (*(*(a1 + 40) + 16))();
}

void sub_100015B4C(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = _INLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = @"NO";
    v9 = 138412802;
    if (a2)
    {
      v8 = @"YES";
    }

    v10 = v7;
    v11 = 2112;
    v12 = v8;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Registration due to new APS token for account %@ finished. Success: %@ . Error %@", &v9, 0x20u);
  }
}

void sub_100015C38(id a1, BOOL a2, NSError *a3)
{
  v3 = a2;
  v4 = a3;
  v5 = _INLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (v3)
    {
      v6 = @"YES";
    }

    v7 = 138412546;
    v8 = v6;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Registration due to new APS token finished for logged-out device. Success: %@. Error %@", &v7, 0x16u);
  }
}

id sub_100016408(uint64_t a1)
{
  v2 = _INLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Finished reconsidering iCloud offers.", v5, 2u);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    (*(v3 + 16))();
  }

  return [*(a1 + 32) setReconsideringOffers:0];
}

void sub_1000168B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000168CC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = _INLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10003848C();
    }

    v6 = INCreateErrorWithError();
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }

  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;
}

void sub_100016B2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100016B44(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = _INLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10003855C();
    }

    v6 = INCreateErrorWithError();
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }

  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;
}

void sub_100016DB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100016DD0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = _INLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10003862C();
    }

    v6 = INCreateErrorWithError();
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }

  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;
}

void sub_1000171B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000171D0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _INLogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100038700();
    }

    v5 = INCreateErrorWithError();
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }

  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;
}

void sub_100017554(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_1000188AC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [NSString stringWithUTF8String:xpc_dictionary_get_string(v3, _xpc_event_key_name)];
  v5 = _INLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "XPC notifyd matching event stream handler called. Event name: %@", &v9, 0xCu);
  }

  if (![v4 isEqualToString:@"DeviceNameChangeEvent"])
  {
    if ([v4 isEqualToString:@"FirstUnlockEvent"])
    {
      v6 = _INLogSystem();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v9) = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received first-unlock launch event.", &v9, 2u);
      }

      goto LABEL_8;
    }

    if ([v4 isEqualToString:@"DeviceDidPairEvent"])
    {
      [*(a1 + 32) _handleDeviceDidPairEvent];
      goto LABEL_17;
    }

    if ([v4 isEqualToString:@"LanguageChangedEvent"])
    {
      [*(a1 + 32) _handleLanguageChangedEvent];
      goto LABEL_17;
    }

    if ([v4 isEqualToString:@"refreshCFAvailability"])
    {
      [*(a1 + 32) _handleOSEligibilityChange];
      goto LABEL_17;
    }

    v7 = [v4 isEqualToString:@"refreshGMSAvailability"];
    if (v7)
    {
      [*(a1 + 32) _handleGMSAvailabilityChange];
      goto LABEL_17;
    }

    if (sub_100002168(v7, v8))
    {
      if ([v4 isEqualToString:@"PhotosiCPLStateChangedEvent"])
      {
        [*(a1 + 32) _unsafe_handlePhotosiCPLStateChangedEvent];
        goto LABEL_17;
      }

      if ([v4 isEqualToString:@"PhotosOptimizeStateChangedEvent"])
      {
        [*(a1 + 32) _unsafe_handlePhotosOptimizeStateChangedEvent];
        goto LABEL_17;
      }

      if ([v4 isEqualToString:@"SimulateVFSAlmostFullEvent"])
      {
        [*(a1 + 32) _unsafe_handleSimulateVFSAlmostFullEvent];
        goto LABEL_17;
      }

      if ([v4 isEqualToString:@"SimulateVFSNotFullEvent"])
      {
        [*(a1 + 32) _unsafe_handleSimulateVFSNotFullEvent];
        goto LABEL_17;
      }

      v6 = _INLogSystem();
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_8;
      }
    }

    else
    {
      v6 = _INLogSystem();
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
LABEL_8:

        goto LABEL_17;
      }
    }

    sub_1000388E4();
    goto LABEL_8;
  }

  [*(a1 + 32) _handleDeviceNameChangeEvent];
LABEL_17:
}

void sub_100018B64(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _INLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_100038954();
  }

  if ((sub_100002168(v5, v6) & 1) == 0)
  {
    v14 = _INLogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v15 = "Unable to process vfs event - quota usage not supported.";
      v16 = v14;
      v17 = 2;
LABEL_12:
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, v15, buf, v17);
    }

LABEL_13:

    goto LABEL_14;
  }

  if (v3)
  {
    uint64 = xpc_dictionary_get_uint64(v3, "_Flags");
    v20 = 0;
    v8 = fsctl("/private/var", 0x40046818uLL, &v20, 0);
    v9 = _INLogSystem();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      if (!v10)
      {
LABEL_9:

        goto LABEL_14;
      }

      *buf = 138412546;
      v22 = v3;
      v23 = 2048;
      v24 = uint64;
      v11 = "Unable to get user volume status - ignoring dispatch vfs event. %@ (flags:0x%lx)";
      v12 = v9;
      v13 = 22;
LABEL_8:
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v11, buf, v13);
      goto LABEL_9;
    }

    if (v10)
    {
      *buf = 138412802;
      v22 = v3;
      v23 = 2048;
      v24 = uint64;
      v25 = 1024;
      v26 = v20;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Processing dispatch vfs event. %@ (flags:0x%lx userFlags:0x%x)", buf, 0x1Cu);
    }

    if ((uint64 & 0x4000) != 0 && (v20 & 0x2204) == 0)
    {
      [*(a1 + 32) _unsafe_handleVFSRiseAboveDesiredDisk];
      goto LABEL_14;
    }

    v18 = [*(a1 + 32) _unsafe_isLegacyDeviceStorageLevelNotificationEnabled];
    v9 = _INLogSystem();
    v19 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (!v18)
    {
      if (!v19)
      {
        goto LABEL_9;
      }

      *buf = 138412802;
      v22 = v3;
      v23 = 2048;
      v24 = uint64;
      v25 = 1024;
      v26 = v20;
      v11 = "Ignoring dispatch vfs event (letting CacheDelete get the first shot): %@ (flags:0x%lx userFlags:0x%x)";
      v12 = v9;
      v13 = 28;
      goto LABEL_8;
    }

    if (v19)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Legacy device storage level notification enabled", buf, 2u);
    }

    if ((uint64 & 0x200) != 0 && (v20 & 0x200) != 0)
    {
      [*(a1 + 32) _unsafe_handleVFSFallBelowVeryLowDisk];
      goto LABEL_14;
    }

    if ((uint64 & 4) != 0 && (v20 & 4) != 0)
    {
      [*(a1 + 32) _unsafe_handleVFSFallBelowLowDisk];
      goto LABEL_14;
    }

    if ((uint64 & 0x2000) != 0 && (v20 & 0x2000) != 0)
    {
      [*(a1 + 32) _unsafe_handleVFSFallBelowNearLowDisk];
      goto LABEL_14;
    }

    v14 = _INLogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v22 = v3;
      v23 = 2048;
      v24 = uint64;
      v25 = 1024;
      v26 = v20;
      v15 = "Ignoring dispatch vfs event (unexpected flags): %@ (flags:0x%lx userFlags:0x%x)";
      v16 = v14;
      v17 = 28;
      goto LABEL_12;
    }

    goto LABEL_13;
  }

LABEL_14:
}

void sub_10001912C(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = _INLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = 138412802;
    v9 = v7;
    v10 = 1024;
    v11 = a2;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Registration complete for account %@. Result: %d. Error: %@.", &v8, 0x1Cu);
  }
}

void sub_1000194E0(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = _INLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = 138412802;
    v9 = v7;
    v10 = 1024;
    v11 = a2;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Registration complete for account %@. Result: %d. Error: %@.", &v8, 0x1Cu);
  }
}

void sub_10001A22C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10001A254(uint64_t a1)
{
  v2 = _INLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_100038B5C();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained[18];
    v6 = INCreateError();
    (*(v5 + 16))(v5, 0, v6);

    v7 = v4[19];
    v4[19] = 0;

    v8 = v4[18];
    v4[18] = 0;
  }
}

intptr_t sub_10001BCAC(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = [a2 base64EncodedStringWithOptions:0];
    [*(a1 + 32) setValue:v3 forHTTPHeaderField:@"X-Mme-Nas-Qualify"];
  }

  v4 = *(a1 + 40);

  return dispatch_semaphore_signal(v4);
}

void sub_10001C284(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v6 = a2;
  v7 = [v5 identifier];
  [v3 _handleEventDetailsResponse:v6 forEventID:v4 accountID:v7 pushMessage:a1[7]];
}

void sub_10001CB98(id a1, AAResponse *a2)
{
  v2 = a2;
  v3 = _INLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100039584(v2);
  }
}

void sub_10001D0D8(id a1, NSError *a2)
{
  v2 = a2;
  v3 = _INLogSystem();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100039628(v2, v4);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[SUBD] Successfully called the ICQDaemonOfferManager after the failsafe activity elapsed.", v5, 2u);
  }
}

void sub_10001D16C(id a1, NSError *a2)
{
  v2 = a2;
  v3 = _INLogSystem();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1000396A0(v2, v4);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[SUBD] Successfully cleared the state of the subscription daemon.", v5, 2u);
  }
}

void sub_10001D2E8(id a1)
{
  v1 = [INCachedDeviceInfo alloc];
  v4 = +[AADeviceInfo currentInfo];
  v2 = [(INCachedDeviceInfo *)v1 initWithDeviceInfo:v4];
  v3 = qword_100063678;
  qword_100063678 = v2;
}

Swift::Int sub_10001D490(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

Swift::Int sub_10001D4EC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10001D560(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_10001D620(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC3ind40INFPItemCollectionSyncCompletionObserver_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_10001D68C(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC3ind40INFPItemCollectionSyncCompletionObserver_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_10001D72C;
}

void sub_10001D72C(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_10001D7B4@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for URL();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_10001D828()
{
  v1 = OBJC_IVAR____TtC3ind40INFPItemCollectionSyncCompletionObserver_isGatheringFinished;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_10001D86C(char a1)
{
  v3 = OBJC_IVAR____TtC3ind40INFPItemCollectionSyncCompletionObserver_isGatheringFinished;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_10001D91C@<X0>(void *a1@<X8>)
{
  v2 = [objc_opt_self() sharedSession];
  result = sub_100022BE0(0, &unk_100063260, NSURLSession_ptr);
  a1[3] = result;
  a1[4] = &off_100055F58;
  *a1 = v2;
  return result;
}

uint64_t sub_10001D990@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC3ind40INFPItemCollectionSyncCompletionObserver_urlSession;
  swift_beginAccess();
  return sub_10001D9E8(v1 + v3, a1);
}

uint64_t sub_10001D9E8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10001DA4C(__int128 *a1)
{
  v3 = OBJC_IVAR____TtC3ind40INFPItemCollectionSyncCompletionObserver_urlSession;
  swift_beginAccess();
  sub_100022B94((v1 + v3));
  sub_10001DAB4(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_10001DAB4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

id sub_10001DB30()
{
  result = [objc_opt_self() defaultStore];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

id sub_10001DB6C()
{
  v1 = OBJC_IVAR____TtC3ind40INFPItemCollectionSyncCompletionObserver_accountStore;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_10001DBC0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC3ind40INFPItemCollectionSyncCompletionObserver_accountStore;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_10001DC78()
{
  v0 = objc_allocWithZone(AKAnisetteProvisioningController);

  return [v0 init];
}

id sub_10001DCB0()
{
  v1 = OBJC_IVAR____TtC3ind40INFPItemCollectionSyncCompletionObserver_anisetteController;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_10001DD04(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC3ind40INFPItemCollectionSyncCompletionObserver_anisetteController;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_10001DDBC()
{
  v1 = (v0 + OBJC_IVAR____TtC3ind40INFPItemCollectionSyncCompletionObserver_taskID);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_10001DE30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = (v4 + OBJC_IVAR____TtC3ind40INFPItemCollectionSyncCompletionObserver_taskID);
  swift_beginAccess();
  *v9 = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
}

id sub_10001DF10(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = sub_10002229C(a1, a2, a3, a4);
  sub_1000224E4(a3, a4);

  return v10;
}

id sub_10001DF84(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_10002229C(a1, a2, a3, a4);
  sub_1000224E4(a3, a4);

  return v7;
}

uint64_t sub_10001DFD0(uint64_t a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100023EC8();
  (*(v4 + 16))(v6, v7, v3);
  v8 = v1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v26 = v3;
    v12 = v11;
    v25 = swift_slowAlloc();
    v32 = v25;
    *v12 = 136315394;
    v13 = swift_isaMask & *v8;
    v24 = v10;
    v14 = (*(v13 + 320))();
    v27 = a1;
    v28 = v14;
    v29 = v15;
    v30 = v16;
    v31 = v17;
    sub_1000224F4();
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;

    v21 = sub_100021BC4(v18, v20, &v32);

    *(v12 + 4) = v21;
    a1 = v27;
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_100021BC4(0xD000000000000024, 0x8000000100042210, &v32);
    _os_log_impl(&_mh_execute_header, v9, v24, "%s %s", v12, 0x16u);
    swift_arrayDestroy();

    (*(v4 + 8))(v6, v26);
  }

  else
  {

    (*(v4 + 8))(v6, v3);
  }

  return (*((swift_isaMask & *v8) + 0x180))(a1);
}

uint64_t sub_10001E444(uint64_t a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100023EC8();
  (*(v4 + 16))(v6, v7, v3);
  v8 = v1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v32 = v25;
    *v11 = 136315138;
    v12 = swift_isaMask & *v8;
    v26 = v3;
    v13 = *(v12 + 320);
    v24 = v10;
    v14 = v13();
    v27 = a1;
    v28 = v14;
    v29 = v15;
    v30 = v16;
    v31 = v17;
    sub_1000224F4();
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;

    v21 = sub_100021BC4(v18, v20, &v32);

    *(v11 + 4) = v21;
    a1 = v27;
    _os_log_impl(&_mh_execute_header, v9, v24, "%s (SyncCompletionObserver)", v11, 0xCu);
    sub_100022B94(v25);

    (*(v4 + 8))(v6, v26);
  }

  else
  {

    (*(v4 + 8))(v6, v3);
  }

  (*((swift_isaMask & *v8) + 0xE8))(1);
  return (*((swift_isaMask & *v8) + 0x180))(a1);
}

uint64_t sub_10001E7C0(void *a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v75 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v74 = &v72 - v8;
  __chkstk_darwin(v7);
  v10 = &v72 - v9;
  v11 = [a1 items];
  sub_100022BE0(0, &qword_100063270, FPItem_ptr);
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v13 = sub_100023EC8();
  v14 = *(v4 + 16);
  v76 = v13;
  v77 = v14;
  (v14)(v10);
  v15 = v1;
  swift_bridgeObjectRetain_n();
  v16 = v15;
  v17 = v16;
  v18 = Logger.logObject.getter();
  LOBYTE(v19) = static os_log_type_t.default.getter();
  v20 = os_log_type_enabled(v18, v19);
  v78 = (v4 + 16);
  v79 = v4;
  if (v20)
  {
    v73 = v3;
    v21 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v85 = v72;
    *v21 = 136315650;
    v22 = *v16;
    v80 = v16 & 0xFFFFFFFFFFFFLL | 0x6AE1000000000000;
    v81 = (*((swift_isaMask & v22) + 0x140))();
    v82 = v23;
    v83 = v24;
    v84 = v25;
    sub_1000224F4();
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v27;

    v29 = sub_100021BC4(v26, v28, &v85);

    *(v21 + 4) = v29;
    *(v21 + 12) = 2048;
    if (v12 >> 62)
    {
LABEL_29:
      v30 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v30 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v31 = v79;

    *(v21 + 14) = v30;

    *(v21 + 22) = 1024;
    v33 = (*((swift_isaMask & *v17) + 0xE0))(v32);

    *(v21 + 24) = v33 & 1;
    _os_log_impl(&_mh_execute_header, v18, v19, "%s (SyncCompletionObserver) item count: %ld isGatheringFinished: %{BOOL}d", v21, 0x1Cu);
    sub_100022B94(v72);

    v34 = *(v31 + 8);
    v35 = v10;
    v10 = v73;
    v36 = v34(v35, v73);
    v37 = v80;
  }

  else
  {

    swift_bridgeObjectRelease_n();
    v34 = *(v4 + 8);
    v36 = v34(v10, v3);
    v37 = v16 & 0xFFFFFFFFFFFFLL | 0x6AE1000000000000;
    v10 = v3;
  }

  if ((*((swift_isaMask & *v17) + 0xE0))(v36))
  {
    v80 = v37;
    v73 = v34;
    if (v12 >> 62)
    {
      v38 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v38 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v21 = 0;
    v19 = v12 & 0xC000000000000001;
    while (v38 != v21)
    {
      if (v19)
      {
        v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v21 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_28;
        }

        v39 = *(v12 + 8 * v21 + 32);
      }

      v18 = v39;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v40 = [v39 isUploaded];

      ++v21;
      if ((v40 & 1) == 0)
      {
      }
    }

    v55 = v74;
    v77(v74, v76, v10);
    v56 = v17;
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v85 = v78;
      *v59 = 136315138;
      v81 = (*((swift_isaMask & *v56) + 0x140))();
      v82 = v60;
      v83 = v61;
      v84 = v62;
      sub_1000224F4();
      v63 = dispatch thunk of CustomStringConvertible.description.getter();
      v65 = v64;

      v66 = sub_100021BC4(v63, v65, &v85);

      *(v59 + 4) = v66;
      _os_log_impl(&_mh_execute_header, v57, v58, "%s (SyncCompletionObserver) Upload is complete", v59, 0xCu);
      sub_100022B94(v78);

      (v73)(v74, v10);
    }

    else
    {

      (v73)(v55, v10);
    }

    sub_10001F0B0(1, 0);
    v68 = sub_10001F574();
    result = (*((swift_isaMask & *v56) + 0x98))(v68);
    if (result)
    {
      v70 = v69;
      ObjectType = swift_getObjectType();
      (*(v70 + 8))(*(v56 + OBJC_IVAR____TtC3ind40INFPItemCollectionSyncCompletionObserver_itemID), ObjectType, v70);
      return swift_unknownObjectRelease();
    }
  }

  else
  {

    v41 = v75;
    v77(v75, v76, v10);
    v42 = v17;
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v73 = v34;
      v46 = v45;
      v47 = swift_slowAlloc();
      v85 = v47;
      *v46 = 136315138;
      v81 = (*((swift_isaMask & *v42) + 0x140))();
      v82 = v48;
      v83 = v49;
      v84 = v50;
      sub_1000224F4();
      v51 = dispatch thunk of CustomStringConvertible.description.getter();
      v53 = v52;

      v54 = sub_100021BC4(v51, v53, &v85);

      *(v46 + 4) = v54;
      _os_log_impl(&_mh_execute_header, v43, v44, "%s (SyncCompletionObserver) Skipping upload progress check, collection is still gathering", v46, 0xCu);
      sub_100022B94(v47);

      return (v73)(v75, v10);
    }

    else
    {

      return v34(v41, v10);
    }
  }

  return result;
}

uint64_t sub_10001F0B0(int a1, uint64_t a2)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v52 - v10;
  v12 = sub_100023EC8();
  v13 = *(v6 + 16);
  v58 = v12;
  v59 = (v6 + 16);
  v57 = v13;
  (v13)(v11);
  v14 = v2;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v54 = v16;
    v18 = v17;
    v53 = swift_slowAlloc();
    v64 = v53;
    *v18 = 136315394;
    v19 = *((swift_isaMask & *v14) + 0x140);
    v52 = v15;
    v20 = v19();
    v56 = v6;
    v55 = a1;
    v60 = v20;
    v61 = v21;
    v62 = v22;
    v63 = v23;
    sub_1000224F4();
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = a2;
    v26 = v5;
    v28 = v27;
    LOBYTE(a1) = v55;

    v6 = v56;

    v29 = sub_100021BC4(v24, v28, &v64);
    v5 = v26;
    a2 = v25;

    *(v18 + 4) = v29;
    *(v18 + 12) = 1024;
    *(v18 + 14) = a1 & 1;
    v30 = v52;
    _os_log_impl(&_mh_execute_header, v52, v54, "%s success: %{BOOL}d", v18, 0x12u);
    sub_100022B94(v53);
  }

  else
  {
  }

  v31 = *(v6 + 8);
  v31(v11, v5);
  v32 = (v14 + OBJC_IVAR____TtC3ind40INFPItemCollectionSyncCompletionObserver_syncDidComplete);
  v33 = *(v14 + OBJC_IVAR____TtC3ind40INFPItemCollectionSyncCompletionObserver_syncDidComplete);
  if (v33)
  {
    v34 = v32[1];
    *v32 = 0;
    v32[1] = 0;
    v33(a1 & 1, a2);
    return sub_1000224E4(v33, v34);
  }

  else
  {
    v57(v9, v58, v5);
    v36 = v14;
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v59 = v9;
      v41 = v40;
      v64 = v40;
      *v39 = 136315138;
      v42 = (*((swift_isaMask & *v36) + 0x140))();
      v58 = v5;
      v60 = v42;
      v61 = v43;
      v62 = v44;
      v63 = v45;
      sub_1000224F4();
      v46 = dispatch thunk of CustomStringConvertible.description.getter();
      v48 = v47;

      v49 = sub_100021BC4(v46, v48, &v64);

      *(v39 + 4) = v49;
      _os_log_impl(&_mh_execute_header, v37, v38, "%s No completion handler", v39, 0xCu);
      sub_100022B94(v41);

      v51 = v58;
      v50 = v59;
    }

    else
    {

      v50 = v9;
      v51 = v5;
    }

    return (v31)(v50, v51);
  }
}

uint64_t sub_10001F574()
{
  v1 = sub_100022CF0(&qword_1000632D0, &qword_10004DAC0);
  __chkstk_darwin(v1 - 8);
  v76 = &v67[-v2];
  v79 = type metadata accessor for Logger();
  v81 = *(v79 - 8);
  v3 = __chkstk_darwin(v79);
  v74 = &v67[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v78 = &v67[-v5];
  v6 = sub_100022CF0(&qword_100063280, &qword_10004D7B0);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v67[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v67[-v10];
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v75 = &v67[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = __chkstk_darwin(v15);
  v77 = &v67[-v17];
  __chkstk_darwin(v16);
  v19 = &v67[-v18];
  v20 = OBJC_IVAR____TtC3ind40INFPItemCollectionSyncCompletionObserver_notifyURL;
  swift_beginAccess();
  sub_10002332C(v0 + v20, v11, &qword_100063280, &qword_10004D7B0);
  v80 = v13;
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_100023504(v11, &qword_100063280, &qword_10004D7B0);
    v21 = sub_100023EC8();
    v22 = v74;
    v23 = v79;
    (*(v81 + 16))(v74, v21, v79);
    v24 = v0;
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v86 = v28;
      *v27 = 136315138;
      v82 = (*((swift_isaMask & *v24) + 0x140))();
      v83 = v29;
      v84 = v30;
      v85 = v31;
      sub_1000224F4();
      v32 = dispatch thunk of CustomStringConvertible.description.getter();
      v34 = v33;

      v35 = sub_100021BC4(v32, v34, &v86);

      *(v27 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v25, v26, "%s No url to notify", v27, 0xCu);
      sub_100022B94(v28);
    }

    return (*(v81 + 8))(v22, v23);
  }

  else
  {
    v37 = v80;
    v73 = *(v80 + 32);
    v74 = (v80 + 32);
    v73(v19, v11, v12);
    (*(v37 + 56))(v9, 1, 1, v12);
    swift_beginAccess();
    sub_1000230F0(v9, v0 + v20);
    swift_endAccess();
    v38 = sub_100023EC8();
    v39 = v79;
    (*(v81 + 16))(v78, v38, v79);
    v71 = *(v37 + 16);
    v72 = v37 + 16;
    v71(v77, v19, v12);
    v40 = v0;
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v70 = v19;
      v44 = v43;
      v69 = swift_slowAlloc();
      v86 = v69;
      *v44 = 136315394;
      v45 = *((swift_isaMask & *v40) + 0x140);
      v68 = v42;
      v82 = v45();
      v83 = v46;
      v84 = v47;
      v85 = v48;
      sub_1000224F4();
      v49 = dispatch thunk of CustomStringConvertible.description.getter();
      v50 = v41;
      v52 = v51;

      v53 = sub_100021BC4(v49, v52, &v86);

      *(v44 + 4) = v53;
      *(v44 + 12) = 2080;
      v54 = v77;
      v55 = URL.absoluteString.getter();
      v57 = v56;
      v58 = *(v80 + 8);
      v58(v54, v12);
      v59 = sub_100021BC4(v55, v57, &v86);

      *(v44 + 14) = v59;
      v60 = v50;
      _os_log_impl(&_mh_execute_header, v50, v68, "%s notifying %s", v44, 0x16u);
      swift_arrayDestroy();

      v19 = v70;

      (*(v81 + 8))(v78, v79);
    }

    else
    {

      v58 = *(v80 + 8);
      v58(v77, v12);
      (*(v81 + 8))(v78, v39);
    }

    v61 = type metadata accessor for TaskPriority();
    v62 = v76;
    (*(*(v61 - 8) + 56))(v76, 1, 1, v61);
    v63 = v75;
    v71(v75, v19, v12);
    v64 = (*(v80 + 80) + 40) & ~*(v80 + 80);
    v65 = swift_allocObject();
    v65[2] = 0;
    v65[3] = 0;
    v65[4] = v40;
    v73(v65 + v64, v63, v12);
    v66 = v40;
    sub_100020818(0, 0, v62, &unk_10004D988, v65);

    return (v58)(v19, v12);
  }
}

uint64_t sub_10001FDE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v6 = type metadata accessor for Logger();
  v5[13] = v6;
  v5[14] = *(v6 - 8);
  v5[15] = swift_task_alloc();
  v7 = type metadata accessor for URLRequest();
  v5[16] = v7;
  v5[17] = *(v7 - 8);
  v5[18] = swift_task_alloc();

  return _swift_task_switch(sub_10001FF00, 0, 0);
}

uint64_t sub_10001FF00()
{
  v1 = (*((swift_isaMask & **(v0 + 88)) + 0x1A0))(*(v0 + 96));
  (*((swift_isaMask & **(v0 + 88)) + 0xF8))(v1);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  sub_100023564((v0 + 16), v2);
  v7 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  *(v0 + 152) = v4;
  *v4 = v0;
  v4[1] = sub_100020354;
  v5 = *(v0 + 144);

  return v7(v5, 0, v2, v3);
}

uint64_t sub_100020354(uint64_t a1, unint64_t a2, void *a3)
{
  *(*v4 + 160) = v3;

  if (v3)
  {
    v8 = sub_100020518;
  }

  else
  {
    sub_1000235A8(a1, a2);

    v8 = sub_10002048C;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_10002048C()
{
  (*(v0[17] + 8))(v0[18], v0[16]);
  sub_100022B94(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100020518()
{
  v30 = v0;
  (*(v0[17] + 8))(v0[18], v0[16]);
  sub_100022B94(v0 + 2);
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v4 = v0[11];
  v5 = sub_100023EC8();
  (*(v2 + 16))(v1, v5, v3);
  v6 = v4;
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v26 = v0[14];
    v27 = v0[13];
    v28 = v0[15];
    v9 = v0[11];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v29 = v25;
    *v10 = 136315394;
    v0[7] = (*((swift_isaMask & *v9) + 0x140))();
    v0[8] = v12;
    v0[9] = v13;
    v0[10] = v14;
    sub_1000224F4();
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;

    v18 = sub_100021BC4(v15, v17, &v29);

    *(v10 + 4) = v18;
    *(v10 + 12) = 2112;
    swift_errorRetain();
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v19;
    *v11 = v19;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s error notifying server %@", v10, 0x16u);
    sub_100023504(v11, &qword_1000632D8, &qword_10004D9A8);

    sub_100022B94(v25);

    (*(v26 + 8))(v28, v27);
  }

  else
  {
    v21 = v0[14];
    v20 = v0[15];
    v22 = v0[13];

    (*(v21 + 8))(v20, v22);
  }

  v23 = v0[1];

  return v23();
}

uint64_t sub_100020818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100022CF0(&qword_1000632D0, &qword_10004DAC0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10002332C(a3, v25 - v10, &qword_1000632D0, &qword_10004DAC0);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100023504(v11, &qword_1000632D0, &qword_10004DAC0);
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

      sub_100023504(a3, &qword_1000632D0, &qword_10004DAC0);

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

  sub_100023504(a3, &qword_1000632D0, &qword_10004DAC0);
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

void sub_100020B18(void *a1@<X8>)
{
  v2 = v1;
  v92 = a1;
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v89[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __chkstk_darwin(v5);
  v10 = &v89[-v9];
  v11 = __chkstk_darwin(v8);
  v93 = &v89[-v12];
  v13 = (*((swift_isaMask & *v1) + 0x110))(v11);
  v14 = [v13 aa_primaryAppleAccount];

  if (v14)
  {
    v15 = objc_allocWithZone(ICQRequestProvider);
    v95 = v14;
    v16 = [v15 initWithAccount:v14];
    if (v16)
    {
      v17 = v16;
      v94 = v3;
      v18 = objc_allocWithZone(NSMutableURLRequest);
      URL._bridgeToObjectiveC()(v19);
      v21 = v20;
      v22 = [v18 initWithURL:v20];

      v23 = (*((swift_isaMask & *v2) + 0x128))();
      v96 = 0;
      v24 = [v23 anisetteDataWithError:&v96];

      v25 = v96;
      if (v24)
      {
        v26 = objc_opt_self();
        v27 = v25;
        v28 = [v26 ak_anisetteHeadersWithData:v24];
        if (!v28 || (v29 = v28, v30 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)(), v29, v31 = sub_100021558(v30), , !v31))
        {
          v92 = v24;
          v66 = sub_100023EC8();
          v67 = v4;
          v68 = *(v4 + 16);
          v69 = v93;
          v70 = v94;
          v68(v93, v66, v94);
          v71 = v2;
          v72 = Logger.logObject.getter();
          v73 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v72, v73))
          {
            v74 = swift_slowAlloc();
            v91 = swift_slowAlloc();
            v100 = v91;
            *v74 = 136315138;
            v75 = *((swift_isaMask & *v71) + 0x140);
            v90 = v73;
            v96 = v75();
            v97 = v76;
            v98 = v77;
            v99 = v78;
            sub_1000224F4();
            v79 = dispatch thunk of CustomStringConvertible.description.getter();
            v80 = v67;
            v82 = v81;

            v83 = sub_100021BC4(v79, v82, &v100);

            *(v74 + 4) = v83;
            _os_log_impl(&_mh_execute_header, v72, v90, "%s anisette headers returned nil", v74, 0xCu);
            sub_100022B94(v91);

            (*(v80 + 8))(v93, v94);
          }

          else
          {

            (*(v67 + 8))(v69, v70);
          }

          v87 = v95;
          sub_100022C28();
          swift_allocError();
          *v88 = 2;
          swift_willThrow();

          v86 = v92;
          goto LABEL_21;
        }

        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        [v22 setAllHTTPHeaderFields:isa];

        [v17 addBasicHeadersToRequest:v22];
        v33 = String._bridgeToObjectiveC()();
        v34 = String._bridgeToObjectiveC()();
        [v22 setValue:v33 forHTTPHeaderField:v34];

        v35 = String._bridgeToObjectiveC()();
        v36 = String._bridgeToObjectiveC()();
        [v22 setValue:v35 forHTTPHeaderField:v36];

        static URLRequest._unconditionallyBridgeFromObjectiveC(_:)();
      }

      else
      {
        v84 = v96;
        _convertNSErrorToError(_:)();

        swift_willThrow();
      }
    }

    else
    {
      v53 = sub_100023EC8();
      (*(v4 + 16))(v10, v53, v3);
      v54 = v2;
      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v93 = swift_slowAlloc();
        v100 = v93;
        *v57 = 136315138;
        v96 = (*((swift_isaMask & *v54) + 0x140))();
        v97 = v58;
        v98 = v59;
        v99 = v60;
        sub_1000224F4();
        v61 = dispatch thunk of CustomStringConvertible.description.getter();
        v94 = v3;
        v63 = v62;

        v64 = sub_100021BC4(v61, v63, &v100);

        *(v57 + 4) = v64;
        _os_log_impl(&_mh_execute_header, v55, v56, "%s Missing request provider, bailing.", v57, 0xCu);
        sub_100022B94(v93);

        (*(v4 + 8))(v10, v94);
      }

      else
      {

        (*(v4 + 8))(v10, v3);
      }

      sub_100022C28();
      swift_allocError();
      *v85 = 1;
      swift_willThrow();
    }

    v86 = v95;
LABEL_21:

    return;
  }

  v37 = sub_100023EC8();
  (*(v4 + 16))(v7, v37, v3);
  v38 = v2;
  v39 = v3;
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v95 = v4;
    v43 = v42;
    v44 = swift_slowAlloc();
    v100 = v44;
    *v43 = 136315138;
    v45 = *((swift_isaMask & *v38) + 0x140);
    v94 = v39;
    v96 = v45();
    v97 = v46;
    v98 = v47;
    v99 = v48;
    sub_1000224F4();
    v49 = dispatch thunk of CustomStringConvertible.description.getter();
    v51 = v50;

    v52 = sub_100021BC4(v49, v51, &v100);

    *(v43 + 4) = v52;
    _os_log_impl(&_mh_execute_header, v40, v41, "%s Missing primary account, bailing.", v43, 0xCu);
    sub_100022B94(v44);

    (*(v95 + 1))(v7, v94);
  }

  else
  {

    (*(v4 + 8))(v7, v39);
  }

  sub_100022C28();
  swift_allocError();
  *v65 = 0;
  swift_willThrow();
}

unint64_t sub_100021558(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16))
  {
    sub_100022CF0(&qword_1000632C0, &qword_10004D968);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = v1 + 64;
  v4 = 1 << *(v1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  while (1)
  {
    if (!v6)
    {
      while (1)
      {
        v14 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v14 >= v7)
        {

          return v2;
        }

        v6 = *(v3 + 8 * v14);
        ++v9;
        if (v6)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

    v14 = v9;
LABEL_13:
    v15 = __clz(__rbit64(v6)) | (v14 << 6);
    sub_100023038(*(v1 + 48) + 40 * v15, v28);
    sub_100023094(*(v1 + 56) + 32 * v15, v29 + 8);
    v26[0] = v29[0];
    v26[1] = v29[1];
    v27 = v30;
    v25[0] = v28[0];
    v25[1] = v28[1];
    sub_100023038(v25, v24);
    if (!swift_dynamicCast())
    {
      sub_100023504(v25, &qword_1000632C8, &unk_10004D970);

      goto LABEL_22;
    }

    sub_100023094(v26 + 8, v24);
    sub_100023504(v25, &qword_1000632C8, &unk_10004D970);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    v6 &= v6 - 1;
    result = sub_10002216C(v22, v23);
    if (v16)
    {
      v10 = v1;
      v11 = 16 * result;
      v12 = (v2[6] + 16 * result);
      *v12 = v22;
      v12[1] = v23;

      v13 = (v2[7] + v11);
      v1 = v10;
      *v13 = v22;
      v13[1] = v23;

      v9 = v14;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_25;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v2[6] + 16 * result);
      *v17 = v22;
      v17[1] = v23;
      v18 = (v2[7] + 16 * result);
      *v18 = v22;
      v18[1] = v23;
      v19 = v2[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_26;
      }

      v2[2] = v21;
      v9 = v14;
    }
  }

LABEL_22:

  return 0;
}

id INFPItemCollectionManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_1000218CC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for INFPItemCollectionSyncCompletionObserver(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000219D4(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100021ACC;

  return v6(a1);
}

uint64_t sub_100021ACC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_100021BC4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100021C90(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_100023094(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100022B94(v11);
  return v7;
}

unint64_t sub_100021C90(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100021D9C(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_100021D9C(uint64_t a1, unint64_t a2)
{
  v3 = sub_100021DE8(a1, a2);
  sub_100021F18(&off_100055DB0);
  return v3;
}

char *sub_100021DE8(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_100022004(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100022004(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_100021F18(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_100022078(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100022004(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_100022CF0(&unk_1000632E0, &qword_10004D9B0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100022078(char *result, int64_t a2, char a3, char *a4)
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
    sub_100022CF0(&unk_1000632E0, &qword_10004D9B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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

unint64_t sub_10002216C(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_1000221E4(a1, a2, v4);
}

unint64_t sub_1000221E4(uint64_t a1, uint64_t a2, uint64_t a3)
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

id sub_10002229C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v4[OBJC_IVAR____TtC3ind40INFPItemCollectionSyncCompletionObserver_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC3ind40INFPItemCollectionSyncCompletionObserver_notifyURL;
  v10 = type metadata accessor for URL();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v11 = &v4[OBJC_IVAR____TtC3ind40INFPItemCollectionSyncCompletionObserver_syncDidComplete];
  *v11 = 0;
  v11[1] = 0;
  v4[OBJC_IVAR____TtC3ind40INFPItemCollectionSyncCompletionObserver_isGatheringFinished] = 0;
  v12 = &v4[OBJC_IVAR____TtC3ind40INFPItemCollectionSyncCompletionObserver_urlSession];
  v13 = [objc_opt_self() sharedSession];
  v12[3] = sub_100022BE0(0, &unk_100063260, NSURLSession_ptr);
  v12[4] = &off_100055F58;
  *v12 = v13;
  result = [objc_opt_self() defaultStore];
  if (result)
  {
    *&v4[OBJC_IVAR____TtC3ind40INFPItemCollectionSyncCompletionObserver_accountStore] = result;
    v15 = OBJC_IVAR____TtC3ind40INFPItemCollectionSyncCompletionObserver_anisetteController;
    *&v4[v15] = [objc_allocWithZone(AKAnisetteProvisioningController) init];
    *&v4[OBJC_IVAR____TtC3ind40INFPItemCollectionSyncCompletionObserver_itemID] = a1;
    swift_beginAccess();
    v16 = a1;
    sub_100023600(a2, &v4[v9]);
    swift_endAccess();
    v17 = *v11;
    v18 = v11[1];
    *v11 = a3;
    v11[1] = a4;
    sub_100023670(a3, a4);
    sub_1000224E4(v17, v18);
    v19 = sub_100024124();
    v20 = sub_10002412C(0xD000000000000016, 0x8000000100042380, v19);
    v21 = &v4[OBJC_IVAR____TtC3ind40INFPItemCollectionSyncCompletionObserver_taskID];
    *v21 = v20;
    v21[1] = v22;
    v21[2] = v23;
    v21[3] = v24;
    v26.receiver = v4;
    v26.super_class = type metadata accessor for INFPItemCollectionSyncCompletionObserver(0);
    v25 = objc_msgSendSuper2(&v26, "init");
    sub_100023504(a2, &qword_100063280, &qword_10004D7B0);
    return v25;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000224E4(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1000224F4()
{
  result = qword_1000633F0;
  if (!qword_1000633F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000633F0);
  }

  return result;
}

uint64_t sub_100022548(uint64_t a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100023EC8();
  (*(v4 + 16))(v6, v7, v3);
  v8 = v1;
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v36 = v31;
    *v11 = 136315394;
    v12 = *((swift_isaMask & *v8) + 0x140);
    v28 = v10;
    v32 = v12();
    v33 = v13;
    v34 = v14;
    v35 = v15;
    sub_1000224F4();
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = v3;
    v18 = v17;

    v19 = sub_100021BC4(v16, v18, &v36);

    *(v11 + 4) = v19;
    *(v11 + 12) = 2112;
    swift_errorRetain();
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v20;
    v21 = v29;
    *v29 = v20;
    _os_log_impl(&_mh_execute_header, v9, v28, "%s (SyncCompletionObserver) %@", v11, 0x16u);
    sub_100023504(v21, &qword_1000632D8, &qword_10004D9A8);

    sub_100022B94(v31);

    (*(v4 + 8))(v6, v30);
  }

  else
  {

    (*(v4 + 8))(v6, v3);
  }

  sub_10001F0B0(0, a1);
  v22 = sub_10001F574();
  result = (*((swift_isaMask & *v8) + 0x98))(v22);
  if (result)
  {
    v25 = v24;
    ObjectType = swift_getObjectType();
    (*(v25 + 8))(*(v8 + OBJC_IVAR____TtC3ind40INFPItemCollectionSyncCompletionObserver_itemID), ObjectType, v25);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1000228B8(uint64_t a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100023EC8();
  (*(v4 + 16))(v6, v7, v3);
  v8 = v1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v25 = v10;
    v12 = v11;
    v24 = swift_slowAlloc();
    v32 = v24;
    *v12 = 136315138;
    v13 = swift_isaMask & *v8;
    v26 = v3;
    v14 = (*(v13 + 320))();
    v27 = a1;
    v28 = v14;
    v29 = v15;
    v30 = v16;
    v31 = v17;
    sub_1000224F4();
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;

    v21 = sub_100021BC4(v18, v20, &v32);

    *(v12 + 4) = v21;
    a1 = v27;
    _os_log_impl(&_mh_execute_header, v9, v25, "%s (SyncCompletionObserver)", v12, 0xCu);
    sub_100022B94(v24);

    (*(v4 + 8))(v6, v26);
  }

  else
  {

    (*(v4 + 8))(v6, v3);
  }

  return (*((swift_isaMask & *v8) + 0x180))(a1);
}

uint64_t sub_100022B94(void *a1)
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

uint64_t sub_100022BE0(uint64_t a1, unint64_t *a2, void *a3)
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

unint64_t sub_100022C28()
{
  result = qword_100063278;
  if (!qword_100063278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063278);
  }

  return result;
}

uint64_t type metadata accessor for INFPItemCollectionSyncCompletionObserver(uint64_t a1)
{
  result = qword_100063820;
  if (!qword_100063820)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100022CF0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100022D3C()
{
  result = qword_100063288;
  if (!qword_100063288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063288);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for INCollectionObserverError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for INCollectionObserverError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_100022F0C(uint64_t a1)
{
  sub_100022FE0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100022FE0(uint64_t a1)
{
  if (!qword_1000632B8)
  {
    type metadata accessor for URL();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1000632B8);
    }
  }
}

uint64_t sub_100023094(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000230F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100022CF0(&qword_100063280, &qword_10004D7B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100023160()
{
  v2 = *(type metadata accessor for URL() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100023238;

  return sub_10001FDE4(v5, v6, v7, v4, v0 + v3);
}

uint64_t sub_100023238()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10002332C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100022CF0(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100023394(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100023698;

  return sub_1000219D4(a1, v4);
}

uint64_t sub_10002344C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100023238;

  return sub_1000219D4(a1, v4);
}

uint64_t sub_100023504(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100022CF0(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void *sub_100023564(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1000235A8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_100023600(uint64_t a1, uint64_t a2)
{
  v4 = sub_100022CF0(&qword_100063280, &qword_10004D7B0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100023670(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10002369C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100023748;

  return NSURLSession.data(for:delegate:)(a1, a2);
}

uint64_t sub_100023748(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = *v4;

  v11 = *(v13 + 8);
  if (!v3)
  {
    v8 = a1;
    v9 = a2;
    v10 = a3;
  }

  return v11(v8, v9, v10);
}

void sub_100023860()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithSuiteName:v1];

  qword_100064538 = v2;
}

uint64_t *sub_1000238D0()
{
  if (qword_100063830 != -1)
  {
    swift_once();
  }

  return &qword_100064538;
}

uint64_t sub_100023920()
{
  if (qword_100063830 != -1)
  {
    swift_once();
  }

  v0 = qword_100064538;
  v1 = qword_100064538;
  return v0;
}

id Diagnostics.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Diagnostics();
  return objc_msgSendSuper2(&v2, "init");
}

id Diagnostics.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for Diagnostics();
  return objc_msgSendSuper2(&v4, "dealloc");
}

void _s3ind11DiagnosticsC26setLastRegistrationSuccessyyFZ_0()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Date.init()();
  v8 = [objc_allocWithZone(NSISO8601DateFormatter) init];
  sub_100023DD8();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Setting last registration success", v11, 2u);
  }

  (*(v1 + 8))(v3, v0);
  if (qword_100063830 != -1)
  {
    swift_once();
  }

  v12 = qword_100064538;
  if (qword_100064538)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    v14 = [v8 stringFromDate:isa];

    if (!v14)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = String._bridgeToObjectiveC()();
    }

    v15 = String._bridgeToObjectiveC()();
    [v12 setObject:v14 forKey:v15];

    (*(v5 + 8))(v7, v4);
  }

  else
  {
    (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_100023D7C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100023E44(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for Logger();
  sub_10002400C(v5, a2);
  sub_100023D7C(v5, a2);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100023EEC(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();

  return sub_100023D7C(v4, a2);
}

uint64_t sub_100023F64@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  v7 = sub_100023D7C(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t *sub_10002400C(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t TaskIdentifier.description.getter(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  String.append(_:)(*&a1);
  v6._countAndFlagsBits = 2108704;
  v6._object = 0xE300000000000000;
  String.append(_:)(v6);
  v7._countAndFlagsBits = a3;
  v7._object = a4;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 93;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);
  return 91;
}

uint64_t sub_10002412C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  v9 = UUID.uuidString.getter();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  sub_1000242F0(a3, v9, v11, v12);

  static String._fromSubstring(_:)();

  return a1;
}

uint64_t sub_100024270()
{
  countAndFlagsBits = v0[1]._countAndFlagsBits;
  object = v0[1]._object;
  String.append(_:)(*v0);
  v3._countAndFlagsBits = 2108704;
  v3._object = 0xE300000000000000;
  String.append(_:)(v3);
  v4._countAndFlagsBits = countAndFlagsBits;
  v4._object = object;
  String.append(_:)(v4);
  v5._countAndFlagsBits = 93;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  return 91;
}

uint64_t sub_1000242F0(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v5 = a2;
    v6 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v6 = a2;
    }

    v7 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v7 = 11;
    }

    v8 = v7 | (v6 << 16);
    v9 = String.index(_:offsetBy:limitedBy:)();
    if (v10)
    {
      a2 = v8;
    }

    else
    {
      a2 = v9;
    }

    a1 = 15;
    a3 = v5;
    a4 = v4;
  }

  return String.subscript.getter(a1, a2, a3, a4);
}

__n128 sub_10002438C(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100024398(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000243E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_100024430()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithSuiteName:v1];

  return v2;
}

uint64_t sub_10002449C()
{
  if (!os_variant_has_internal_diagnostics())
  {
    return 0;
  }

  v1 = *(v0 + OBJC_IVAR___INRegistrationTTLOverride_defaults);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 valueForKey:v3];

  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
  }

  else
  {

    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (!*(&v8 + 1))
  {
    sub_1000245BC(v9);
    return 0;
  }

  if (swift_dynamicCast())
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000245BC(uint64_t a1)
{
  v2 = sub_100022CF0(&qword_100063380, &qword_10004DC80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100024624(uint64_t a1, char a2)
{
  v3 = *(v2 + OBJC_IVAR___INRegistrationTTLOverride_defaults);
  if (v3)
  {
    if (a2)
    {
      v4 = v3;
      isa = 0;
    }

    else
    {
      v6 = v3;
      isa = Double._bridgeToObjectiveC()().super.super.isa;
    }

    v7 = String._bridgeToObjectiveC()();
    [v3 setObject:isa forKey:v7];

    swift_unknownObjectRelease();
  }
}

void (*sub_1000246F0(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = v1;
  *a1 = sub_10002449C();
  *(a1 + 8) = v3 & 1;
  return sub_100024740;
}

void sub_100024740(uint64_t a1)
{
  v1 = *(*(a1 + 16) + OBJC_IVAR___INRegistrationTTLOverride_defaults);
  if (v1)
  {
    v2 = *(a1 + 8);
    v5 = v1;
    if (v2)
    {
      isa = 0;
    }

    else
    {
      isa = Double._bridgeToObjectiveC()().super.super.isa;
    }

    v4 = String._bridgeToObjectiveC()();
    [v5 setObject:isa forKey:v4];

    swift_unknownObjectRelease();
  }
}

double sub_100024950()
{
  result = COERCE_DOUBLE((*((swift_isaMask & *v0) + 0x78))());
  if (v2)
  {
    return -1.0;
  }

  return result;
}

id sub_1000249A8()
{
  v1 = OBJC_IVAR___INRegistrationTTLOverride_defaults;
  v2 = objc_allocWithZone(NSUserDefaults);
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 initWithSuiteName:v3];

  *&v0[v1] = v4;
  v6.receiver = v0;
  v6.super_class = type metadata accessor for RegistrationTTLOverride();
  return objc_msgSendSuper2(&v6, "init");
}

id sub_100024B08()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RegistrationTTLOverride();
  return objc_msgSendSuper2(&v2, "dealloc");
}

Swift::Int sub_100024B84(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

Class sub_100024CB0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  swift_beginAccess();
  sub_100022BE0(0, &qword_1000634E0, FPItemID_ptr);

  sub_100022CF0(a4, a5);
  sub_10002BF9C();
  v7.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v7.super.isa;
}

uint64_t sub_100024DDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  sub_100022BE0(0, &qword_1000634E0, FPItemID_ptr);
  sub_100022CF0(a4, a5);
  sub_10002BF9C();
  v10 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = *a6;
  swift_beginAccess();
  *(a1 + v11) = v10;
}

uint64_t sub_100024E9C(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *(v2 + v4) = a1;
}

uint64_t variable initialization expression of INFPItemCollectionManager.fpCollectionQueue()
{
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v7 - 8);
  __chkstk_darwin(v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v3);
  v4 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v4 - 8);
  v6[1] = sub_100022BE0(0, &qword_1000633C0, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  v8 = &_swiftEmptyArrayStorage;
  sub_10002BF04(&qword_1000633C8, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100022CF0(&qword_1000633D0, &unk_10004DAB0);
  sub_10002BF4C(&qword_1000633D8, &qword_1000633D0, &unk_10004DAB0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v2, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v7);
  return OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
}

uint64_t sub_1000251BC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

id variable initialization expression of INFPItemCollectionManager.fpItemManager()
{
  v0 = [objc_opt_self() defaultManager];

  return v0;
}

id sub_1000252B0()
{
  v1 = OBJC_IVAR____TtC3ind25INFPItemCollectionManager_fpItemManager;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_100025364(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC3ind25INFPItemCollectionManager_fpItemManager;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id INFPItemCollectionManager.init()()
{
  v1 = v0;
  v13 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = *(v13 - 8);
  __chkstk_darwin(v13);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v5);
  v6 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v6 - 8);
  v12 = OBJC_IVAR____TtC3ind25INFPItemCollectionManager_fpCollectionQueue;
  v7 = sub_100022BE0(0, &qword_1000633C0, OS_dispatch_queue_ptr);
  v11[1] = "overrideTimeInterval";
  v11[2] = v7;
  static DispatchQoS.unspecified.getter();
  v15 = &_swiftEmptyArrayStorage;
  sub_10002BF04(&qword_1000633C8, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100022CF0(&qword_1000633D0, &unk_10004DAB0);
  sub_10002BF4C(&qword_1000633D8, &qword_1000633D0, &unk_10004DAB0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v2 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v13);
  *&v0[v12] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v8 = OBJC_IVAR____TtC3ind25INFPItemCollectionManager_fpItemManager;
  *&v1[v8] = [objc_opt_self() defaultManager];
  *&v1[OBJC_IVAR____TtC3ind25INFPItemCollectionManager_observingCollections] = sub_10002B5AC(&_swiftEmptyArrayStorage);
  *&v1[OBJC_IVAR____TtC3ind25INFPItemCollectionManager_observers] = sub_10002B6A4(&_swiftEmptyArrayStorage);
  v9 = type metadata accessor for INFPItemCollectionManager();
  v14.receiver = v1;
  v14.super_class = v9;
  return objc_msgSendSuper2(&v14, "init");
}

void sub_100025968(char a1, uint64_t a2, uint64_t a3)
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

uint64_t INFPItemCollectionManager.sync(itemID:observeItemIDs:notifyURL:syncCompletion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v62 = a2;
  v58 = a3;
  v8 = sub_100022CF0(&qword_100063280, &qword_10004D7B0);
  v57 = *(v8 - 8);
  v56 = *(v57 + 64);
  __chkstk_darwin(v8 - 8);
  v59 = &v51 - v9;
  v10 = sub_100022CF0(&qword_1000632D0, &qword_10004DAC0);
  __chkstk_darwin(v10 - 8);
  v60 = &v51 - v11;
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100024124();
  v17 = sub_10002412C(0xD000000000000035, 0x80000001000424B0, v16);
  v19 = v18;
  v64 = v20;
  v22 = v21;
  v23 = sub_100023EC8();
  v24 = *(v13 + 16);
  v55 = v12;
  v24(v15, v23, v12);

  v25 = a1;
  v26 = v19;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();

  v63 = v22;

  v29 = os_log_type_enabled(v27, v28);
  v54 = v17;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v53 = a5;
    v31 = v30;
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v52 = a4;
    v34 = v33;
    *v31 = 136315394;
    v65 = v17;
    v66 = v26;
    v67 = v64;
    v68 = v63;
    v69 = v33;
    sub_1000224F4();
    v51 = v26;
    v35 = dispatch thunk of CustomStringConvertible.description.getter();
    v37 = sub_100021BC4(v35, v36, &v69);

    *(v31 + 4) = v37;
    *(v31 + 12) = 2112;
    *(v31 + 14) = v25;
    *v32 = v25;
    v38 = v25;
    _os_log_impl(&_mh_execute_header, v27, v28, "%s Starting %@", v31, 0x16u);
    sub_100023504(v32, &qword_1000632D8, &qword_10004D9A8);
    v39 = v51;

    sub_100022B94(v34);
    a4 = v52;

    a5 = v53;

    (*(v13 + 8))(v15, v55);
  }

  else
  {

    (*(v13 + 8))(v15, v55);
    v39 = v26;
  }

  v40 = type metadata accessor for TaskPriority();
  v41 = v60;
  (*(*(v40 - 8) + 56))(v60, 1, 1, v40);
  v42 = v59;
  sub_10002332C(v58, v59, &qword_100063280, &qword_10004D7B0);
  v43 = (*(v57 + 80) + 96) & ~*(v57 + 80);
  v44 = (v56 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  v45[2] = 0;
  v45[3] = 0;
  v46 = v61;
  v45[4] = v61;
  v45[5] = v25;
  v45[6] = v54;
  v45[7] = v39;
  v47 = v63;
  v45[8] = v64;
  v45[9] = v47;
  v45[10] = a4;
  v45[11] = a5;
  sub_10002B7C0(v42, v45 + v43);
  *(v45 + v44) = v62;
  v48 = v25;
  v49 = v46;
  sub_100023670(a4, a5);

  sub_100020818(0, 0, v41, &unk_10004DAD0, v45);
}

uint64_t sub_100025EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 256) = v14;
  *(v8 + 224) = v12;
  *(v8 + 240) = v13;
  *(v8 + 208) = a7;
  *(v8 + 216) = a8;
  *(v8 + 192) = a5;
  *(v8 + 200) = a6;
  *(v8 + 184) = a4;
  sub_100022CF0(&qword_100063280, &qword_10004D7B0);
  *(v8 + 264) = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  *(v8 + 272) = v9;
  *(v8 + 280) = *(v9 - 8);
  *(v8 + 288) = swift_task_alloc();
  *(v8 + 296) = swift_task_alloc();
  *(v8 + 304) = swift_task_alloc();

  return _swift_task_switch(sub_100025FD0, 0, 0);
}

uint64_t sub_100025FD0()
{
  v35 = v0;
  v1 = (*((swift_isaMask & **(v0 + 184)) + 0x70))();
  if (*(v1 + 16))
  {
    v2 = sub_10002A21C(*(v0 + 192));
    if (v3)
    {
      v4 = *(v0 + 304);
      v6 = *(v0 + 272);
      v5 = *(v0 + 280);
      v7 = *(v0 + 192);
      v8 = *(*(v1 + 56) + 8 * v2);

      v9 = sub_100023EC8();
      (*(v5 + 16))(v4, v9, v6);

      v10 = v7;
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.default.getter();

      v13 = os_log_type_enabled(v11, v12);
      v14 = *(v0 + 304);
      v15 = *(v0 + 272);
      v16 = *(v0 + 280);
      if (v13)
      {
        v31 = *(v0 + 272);
        v32 = *(v0 + 304);
        v18 = *(v0 + 216);
        v17 = *(v0 + 224);
        v30 = *(v0 + 200);
        v19 = *(v0 + 192);
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v33 = v8;
        v34 = swift_slowAlloc();
        v22 = v34;
        *v20 = 136315394;
        *(v0 + 144) = v30;
        *(v0 + 160) = v18;
        *(v0 + 168) = v17;
        sub_1000224F4();
        v23 = dispatch thunk of CustomStringConvertible.description.getter();
        v25 = sub_100021BC4(v23, v24, &v34);

        *(v20 + 4) = v25;
        *(v20 + 12) = 2112;
        *(v20 + 14) = v19;
        *v21 = v19;
        v26 = v19;
        _os_log_impl(&_mh_execute_header, v11, v12, "%s item %@ will be overwritten by new observer. Stopping updates.", v20, 0x16u);
        sub_100023504(v21, &qword_1000632D8, &qword_10004D9A8);

        sub_100022B94(v22);
        v8 = v33;

        (*(v16 + 8))(v32, v31);
      }

      else
      {

        (*(v16 + 8))(v14, v15);
      }

      sub_100026FDC(v8);
    }
  }

  v27 = swift_task_alloc();
  *(v0 + 312) = v27;
  *v27 = v0;
  v27[1] = sub_1000262E0;
  v28 = *(v0 + 192);

  return sub_100027878(v28);
}

uint64_t sub_1000262E0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 320) = a1;
  *(v3 + 328) = v1;

  if (v1)
  {
    v4 = sub_100026B20;
  }

  else
  {
    v4 = sub_1000263F4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000263F4()
{
  v1 = v0[40];
  v2 = v0[33];
  v4 = v0[30];
  v3 = v0[31];
  v5 = v0[29];
  v6 = v0[24];
  type metadata accessor for INFPItemCollectionSyncCompletionObserver(0);
  sub_10002332C(v3, v2, &qword_100063280, &qword_10004D7B0);
  v7 = v6;
  v8 = v1;
  sub_100023670(v5, v4);
  v9 = sub_10001DF10(v7, v2, v5, v4);
  v0[42] = v9;
  v10 = *((swift_isaMask & *v9) + 0xA0);
  v11 = swift_unknownObjectRetain();
  v10(v11, &off_100056058);
  [v8 setDelegate:v9];
  v12 = swift_task_alloc();
  v0[43] = v12;
  *v12 = v0;
  v12[1] = sub_100026574;
  v13 = v0[32];

  return sub_100028814(v13);
}

uint64_t sub_100026574(uint64_t a1)
{
  *(*v1 + 352) = a1;

  return _swift_task_switch(sub_100026674, 0, 0);
}

uint64_t sub_100026674()
{
  v53 = v0;
  *(v0 + 176) = *(v0 + 352);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v0 + 176) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 176) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v48 = *(v0 + 336);
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v3 = *(v0 + 176);
  v4 = *((swift_isaMask & *v2) + 0x80);
  swift_bridgeObjectRetain_n();
  v5 = v1;
  v6 = v4(v0 + 48);
  v8 = v7;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v52 = *v8;
  *v8 = 0x8000000000000000;
  v47 = v3;
  sub_10002ADC8(v3, v5, isUniquelyReferenced_nonNull_native);

  *v8 = v52;
  v6(v0 + 48, 0);
  v10 = *((swift_isaMask & *v2) + 0x98);
  v11 = v48;
  v13 = v10(v0 + 80);
  v14 = v12;
  v15 = *v12;
  v49 = v13;
  if ((*v12 & 0xC000000000000001) != 0)
  {
    if (v15 < 0)
    {
      v16 = *v12;
    }

    else
    {
      v16 = v15 & 0xFFFFFFFFFFFFFF8;
    }

    result = __CocoaDictionary.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    *v14 = sub_10002A514(v16, result + 1);
  }

  v18 = *(v0 + 336);
  v19 = *(v0 + 296);
  v20 = *(v0 + 272);
  v21 = *(v0 + 280);
  v22 = *(v0 + 192);
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v52 = *v14;
  sub_10002B430(v18, v22, v23, &v52);
  *v14 = v52;
  v49();
  v24 = sub_100023EC8();
  (*(v21 + 16))(v19, v24, v20);
  v25 = v22;

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();

  v28 = os_log_type_enabled(v26, v27);
  v29 = *(v0 + 296);
  v30 = *(v0 + 272);
  v31 = *(v0 + 280);
  if (v28)
  {
    v50 = *(v0 + 272);
    v51 = *(v0 + 296);
    v32 = *(v0 + 216);
    v33 = *(v0 + 224);
    v46 = *(v0 + 200);
    v34 = *(v0 + 192);
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v52 = v37;
    *v35 = 136315394;
    *(v0 + 112) = v46;
    *(v0 + 128) = v32;
    *(v0 + 136) = v33;
    sub_1000224F4();
    v38 = dispatch thunk of CustomStringConvertible.description.getter();
    v40 = sub_100021BC4(v38, v39, &v52);

    *(v35 + 4) = v40;
    *(v35 + 12) = 2112;
    *(v35 + 14) = v34;
    *v36 = v34;
    v41 = v34;
    v42 = v47;

    _os_log_impl(&_mh_execute_header, v26, v27, "%s starting observation! %@", v35, 0x16u);
    sub_100023504(v36, &qword_1000632D8, &qword_10004D9A8);

    sub_100022B94(v37);

    (*(v31 + 8))(v51, v50);
  }

  else
  {

    (*(v31 + 8))(v29, v30);
    v42 = v47;
  }

  v43 = *(v0 + 336);
  v44 = *(v0 + 320);
  sub_1000272E8(v42);

  v45 = *(v0 + 8);

  return v45();
}

uint64_t sub_100026B20()
{
  v28 = v0;
  v2 = *(v0 + 280);
  v1 = *(v0 + 288);
  v3 = *(v0 + 272);
  v4 = sub_100023EC8();
  (*(v2 + 16))(v1, v4, v3);

  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v24 = *(v0 + 280);
    v25 = *(v0 + 272);
    v26 = *(v0 + 288);
    v8 = *(v0 + 216);
    v7 = *(v0 + 224);
    v23 = *(v0 + 200);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v27 = v11;
    *v9 = 136315394;
    *(v0 + 16) = v23;
    *(v0 + 32) = v8;
    *(v0 + 40) = v7;
    sub_1000224F4();
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = sub_100021BC4(v12, v13, &v27);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2112;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v15;
    *v10 = v15;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s error while gathering item collection %@", v9, 0x16u);
    sub_100023504(v10, &qword_1000632D8, &qword_10004D9A8);

    sub_100022B94(v11);

    (*(v24 + 8))(v26, v25);
  }

  else
  {
    v17 = *(v0 + 280);
    v16 = *(v0 + 288);
    v18 = *(v0 + 272);

    (*(v17 + 8))(v16, v18);
  }

  v19 = *(v0 + 232);
  v20 = *(v0 + 328);
  if (v19)
  {
    swift_errorRetain();
    v19(0, v20);
  }

  v21 = *(v0 + 8);

  return v21();
}

void sub_100027004(unint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100023EC8();
  (*(v3 + 16))(v5, v6, v2);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = a1 >> 62;
  if (os_log_type_enabled(v7, v8))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v10 = 136315394;
    *(v10 + 4) = sub_100021BC4(0xD000000000000011, 0x8000000100042730, &v19);
    *(v10 + 12) = 2048;
    if (v9)
    {
      v12 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v10 + 14) = v12;

    _os_log_impl(&_mh_execute_header, v7, v8, "%s - collections: %ld", v10, 0x16u);
    sub_100022B94(v11);
  }

  else
  {
  }

  (*(v3 + 8))(v5, v2);
  if (v9)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v15 = *(a1 + 8 * j + 32);
      }

      v16 = v15;
      v17 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      [v15 stopObserving];

      if (v17 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }
}

uint64_t sub_1000272A4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_100027310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v12 = *(v19 - 8);
  __chkstk_darwin(v19);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[1] = *(v4 + OBJC_IVAR____TtC3ind25INFPItemCollectionManager_fpCollectionQueue);
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  aBlock[4] = a3;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000272A4;
  aBlock[3] = a4;
  v16 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v20 = &_swiftEmptyArrayStorage;
  sub_10002BF04(&qword_1000634C8, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100022CF0(&qword_1000634D0, &qword_10004DC48);
  sub_10002BF4C(&qword_1000634D8, &qword_1000634D0, &qword_10004DC48, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);
  (*(v9 + 8))(v11, v8);
  (*(v12 + 8))(v14, v19);
}

void sub_1000275D8(unint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100023EC8();
  (*(v3 + 16))(v5, v6, v2);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = a1 >> 62;
  if (os_log_type_enabled(v7, v8))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v10 = 136315394;
    *(v10 + 4) = sub_100021BC4(0xD000000000000012, 0x8000000100042710, &v19);
    *(v10 + 12) = 2048;
    if (v9)
    {
      v12 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v10 + 14) = v12;

    _os_log_impl(&_mh_execute_header, v7, v8, "%s - collections: %ld", v10, 0x16u);
    sub_100022B94(v11);
  }

  else
  {
  }

  (*(v3 + 8))(v5, v2);
  if (v9)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v15 = *(a1 + 8 * j + 32);
      }

      v16 = v15;
      v17 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      [v15 startObserving];

      if (v17 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }
}

uint64_t sub_100027878(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = type metadata accessor for Logger();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();

  return _swift_task_switch(sub_100027938, 0, 0);
}

uint64_t sub_100027938()
{
  v37 = v0;
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 72);
  v4 = *(v0 + 56);
  v5 = sub_100024124();
  v6 = sub_10002412C(0xD000000000000019, 0x80000001000426D0, v5);
  v8 = v7;
  v35 = v9;
  v11 = v10;
  *(v0 + 96) = v7;
  *(v0 + 104) = v10;
  v12 = sub_100023EC8();
  (*(v2 + 16))(v1, v12, v3);

  v13 = v4;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v31 = *(v0 + 80);
    v32 = *(v0 + 72);
    v33 = *(v0 + 88);
    v34 = v6;
    v16 = *(v0 + 56);
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v36 = v30;
    *v17 = 136315394;
    *(v0 + 16) = v34;
    *(v0 + 24) = v8;
    *(v0 + 32) = v35;
    *(v0 + 40) = v11;
    sub_1000224F4();
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = sub_100021BC4(v19, v20, &v36);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2112;
    *(v17 + 14) = v16;
    *v18 = v16;
    v22 = v16;
    v6 = v34;
    _os_log_impl(&_mh_execute_header, v14, v15, "%s Fetching %@", v17, 0x16u);
    sub_100023504(v18, &qword_1000632D8, &qword_10004D9A8);

    sub_100022B94(v30);

    (*(v31 + 8))(v33, v32);
  }

  else
  {
    v24 = *(v0 + 80);
    v23 = *(v0 + 88);
    v25 = *(v0 + 72);

    (*(v24 + 8))(v23, v25);
  }

  v26 = swift_task_alloc();
  *(v0 + 112) = v26;
  v26[1] = vextq_s8(*(v0 + 56), *(v0 + 56), 8uLL);
  v26[2].i64[0] = v6;
  v26[2].i64[1] = v8;
  v26[3].i64[0] = v35;
  v26[3].i64[1] = v11;
  v27 = swift_task_alloc();
  *(v0 + 120) = v27;
  v28 = sub_100022BE0(0, &qword_1000634B0, FPItemCollection_ptr);
  *v27 = v0;
  v27[1] = sub_100027C84;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 48, 0, 0, 0xD000000000000019, 0x80000001000426D0, sub_10002BDC0, v26, v28);
}

uint64_t sub_100027C84()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_100027E28;
  }

  else
  {

    v2 = sub_100027DBC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100027DBC()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100027E28()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_100027EB0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v24 = a4;
  v25 = a6;
  v26 = a3;
  v11 = sub_100022CF0(&qword_1000634B8, &qword_10004DC40);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v23 - v15;
  v17 = (*((swift_isaMask & *a2) + 0xA0))(v14);
  (*(v12 + 16))(v16, a1, v11);
  v18 = (*(v12 + 80) + 48) & ~*(v12 + 80);
  v19 = swift_allocObject();
  v20 = v25;
  *(v19 + 2) = v24;
  *(v19 + 3) = a5;
  *(v19 + 4) = v20;
  *(v19 + 5) = a7;
  (*(v12 + 32))(&v19[v18], v16, v11);
  *&v19[(v13 + v18 + 7) & 0xFFFFFFFFFFFFFFF8] = a2;
  aBlock[4] = sub_10002BDD0;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100028788;
  aBlock[3] = &unk_100056170;
  v21 = _Block_copy(aBlock);

  v22 = a2;

  [v17 fetchItemForItemID:v26 completionHandler:v21];
  _Block_release(v21);
}

void sub_1000280EC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v62 = a5;
  v63 = a7;
  v61 = a3;
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v20 = &v59 - v19;
  __chkstk_darwin(v18);
  v22 = &v59 - v21;
  if (a2)
  {
    swift_errorRetain();
    v23 = sub_100023EC8();
    (*(v14 + 16))(v22, v23, v13);

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v60 = v13;
      v27 = v26;
      v28 = swift_slowAlloc();
      v67 = a6;
      v68 = v28;
      *v27 = 136315138;
      v64 = v61;
      v65 = a4;
      v66 = v62;
      sub_1000224F4();
      v29 = dispatch thunk of CustomStringConvertible.description.getter();
      v31 = sub_100021BC4(v29, v30, &v68);

      *(v27 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v24, v25, "%s Encountered error fetching item", v27, 0xCu);
      sub_100022B94(v28);

      (*(v14 + 8))(v22, v60);
    }

    else
    {

      (*(v14 + 8))(v22, v13);
    }

    v64 = a2;
LABEL_9:
    sub_100022CF0(&qword_1000634B8, &qword_10004DC40);
    CheckedContinuation.resume(throwing:)();
    return;
  }

  if (!a1)
  {
    v37 = sub_100023EC8();
    (*(v14 + 16))(v20, v37, v13);

    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = v13;
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v67 = a6;
      v68 = v42;
      *v41 = 136315138;
      v64 = v61;
      v65 = a4;
      v66 = v62;
      sub_1000224F4();
      v43 = dispatch thunk of CustomStringConvertible.description.getter();
      v45 = sub_100021BC4(v43, v44, &v68);

      *(v41 + 4) = v45;
      _os_log_impl(&_mh_execute_header, v38, v39, "%s No item for ID", v41, 0xCu);
      sub_100022B94(v42);

      (*(v14 + 8))(v20, v40);
    }

    else
    {

      (*(v14 + 8))(v20, v13);
    }

    sub_10002BEA8();
    v55 = swift_allocError();
    *v56 = 0;
    v64 = v55;
    goto LABEL_9;
  }

  v32 = a1;
  if ([v32 isFolder])
  {
    v33 = (*((swift_isaMask & *a8) + 0xA0))();
    v34 = [v33 collectionForFolderItem:v32];

    v35 = *(a8 + OBJC_IVAR____TtC3ind25INFPItemCollectionManager_fpCollectionQueue);
    v36 = v34;
    [v36 setWorkingQueue:v35];
    v64 = v36;
    sub_100022CF0(&qword_1000634B8, &qword_10004DC40);
    CheckedContinuation.resume(returning:)();
  }

  else
  {
    v46 = sub_100023EC8();
    (*(v14 + 16))(v17, v46, v13);

    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v60 = v13;
      v50 = v49;
      v51 = swift_slowAlloc();
      v67 = a6;
      v68 = v51;
      *v50 = 136315138;
      v64 = v61;
      v65 = a4;
      v66 = v62;
      sub_1000224F4();
      v52 = dispatch thunk of CustomStringConvertible.description.getter();
      v54 = sub_100021BC4(v52, v53, &v68);

      *(v50 + 4) = v54;
      _os_log_impl(&_mh_execute_header, v47, v48, "%s Item is not a folder, ID", v50, 0xCu);
      sub_100022B94(v51);

      (*(v14 + 8))(v17, v60);
    }

    else
    {

      (*(v14 + 8))(v17, v13);
    }

    sub_10002BEA8();
    v57 = swift_allocError();
    *v58 = 1;
    v64 = v57;
    sub_100022CF0(&qword_1000634B8, &qword_10004DC40);
    CheckedContinuation.resume(throwing:)();
  }
}

void sub_100028788(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_100028814(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = type metadata accessor for Logger();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();

  return _swift_task_switch(sub_1000288D4, 0, 0);
}

uint64_t sub_1000288D4()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = sub_100024124();
  v5 = sub_10002412C(0xD00000000000001ALL, 0x80000001000426B0, v4);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v0[12] = v6;
  v0[13] = v10;
  v12 = sub_100023EC8();
  (*(v2 + 16))(v1, v12, v3);
  swift_bridgeObjectRetain_n();

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  v37 = v9;
  if (os_log_type_enabled(v13, v14))
  {
    v35 = v14;
    v15 = v0[7];
    v16 = v5;
    v17 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v39 = v34;
    *v17 = 136315394;
    v36 = v16;
    v0[2] = v16;
    v0[3] = v7;
    v0[4] = v9;
    v0[5] = v11;
    sub_1000224F4();
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = sub_100021BC4(v18, v19, &v39);

    *(v17 + 4) = v20;
    *(v17 + 12) = 2048;
    if (v15 >> 62)
    {
      v21 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v21 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v22 = v0[10];
    v23 = v0[11];
    v33 = v0[9];

    *(v17 + 14) = v21;

    _os_log_impl(&_mh_execute_header, v13, v35, "%s gathering %ld collections", v17, 0x16u);
    sub_100022B94(v34);

    (*(v22 + 8))(v23, v33);
    v5 = v36;
  }

  else
  {
    v25 = v0[10];
    v24 = v0[11];
    v26 = v0[9];
    v15 = v0[7];
    swift_bridgeObjectRelease_n();

    (*(v25 + 8))(v24, v26);
  }

  if (v0[7] >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_8;
    }
  }

  else if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_8:
    v27 = sub_100022CF0(&qword_100063490, &qword_10004DBF8);
    v28 = sub_100022CF0(&qword_100063498, &qword_10004DC00);
    v29 = swift_task_alloc();
    v0[14] = v29;
    *(v29 + 16) = *(v0 + 7);
    *(v29 + 32) = v5;
    *(v29 + 40) = v7;
    *(v29 + 48) = v37;
    *(v29 + 56) = v11;
    v30 = swift_task_alloc();
    v0[15] = v30;
    *v30 = v0;
    v30[1] = sub_100028CD4;

    return withTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 6, v27, v28, 0, 0, &unk_10004DC10, v29, v27);
  }

  v31 = v0[1];

  return v31(&_swiftEmptyArrayStorage);
}

uint64_t sub_100028CD4()
{

  return _swift_task_switch(sub_100028E2C, 0, 0);
}

uint64_t sub_100028E2C()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100028E94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[17] = a7;
  v8[18] = a8;
  v8[15] = a5;
  v8[16] = a6;
  v8[13] = a3;
  v8[14] = a4;
  v8[11] = a1;
  v8[12] = a2;
  v9 = sub_100022CF0(&qword_1000634A0, &qword_10004DC18);
  v8[19] = v9;
  v8[20] = *(v9 - 8);
  v8[21] = swift_task_alloc();
  sub_100022CF0(&qword_1000632D0, &qword_10004DAC0);
  v8[22] = swift_task_alloc();
  v8[23] = swift_task_alloc();

  return _swift_task_switch(sub_100028FB0, 0, 0);
}

uint64_t sub_100028FB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 104);
  if (v4 >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
    if (!v5)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_18;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
    return dispatch thunk of AsyncIteratorProtocol.next()(v5, a2, a3);
  }

  v6 = 0;
  v27 = *(v3 + 104) + 32;
  v28 = **(v3 + 96);
  v29 = v4 & 0xC000000000000001;
  v30 = v5;
  do
  {
    v35 = v6;
    if (v29)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v8 = *(v27 + 8 * v6);
    }

    v33 = v8;
    v9 = *(v3 + 176);
    v10 = *(v3 + 184);
    v11 = *(v3 + 144);
    v32 = *(v3 + 136);
    v12 = *(v3 + 128);
    v31 = *(v3 + 120);
    v13 = *(v3 + 112);
    v14 = type metadata accessor for TaskPriority();
    v15 = *(v14 - 8);
    (*(v15 + 56))(v10, 1, 1, v14);
    v16 = swift_allocObject();
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = v13;
    v16[5] = v33;
    v16[6] = v31;
    v16[7] = v12;
    v16[8] = v32;
    v16[9] = v11;
    sub_10002332C(v10, v9, &qword_1000632D0, &qword_10004DAC0);
    LODWORD(v9) = (*(v15 + 48))(v9, 1, v14);
    v17 = v13;
    v34 = v33;

    v18 = *(v3 + 176);
    if (v9 == 1)
    {
      sub_100023504(*(v3 + 176), &qword_1000632D0, &qword_10004DAC0);
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*(v15 + 8))(v18, v14);
    }

    if (v16[2])
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v19 = dispatch thunk of Actor.unownedExecutor.getter();
      v21 = v20;
      swift_unknownObjectRelease();
    }

    else
    {
      v19 = 0;
      v21 = 0;
    }

    v22 = swift_allocObject();
    *(v22 + 16) = &unk_10004DC30;
    *(v22 + 24) = v16;

    sub_100022CF0(&qword_100063490, &qword_10004DBF8);
    v23 = v21 | v19;
    if (v21 | v19)
    {
      v23 = v3 + 16;
      *(v3 + 16) = 0;
      *(v3 + 24) = 0;
      *(v3 + 32) = v19;
      *(v3 + 40) = v21;
    }

    v6 = v35 + 1;
    v7 = *(v3 + 184);
    *(v3 + 48) = 1;
    *(v3 + 56) = v23;
    *(v3 + 64) = v28;
    swift_task_create();

    sub_100023504(v7, &qword_1000632D0, &qword_10004DAC0);
  }

  while (v30 != v35 + 1);
LABEL_18:
  *(v3 + 72) = &_swiftEmptyArrayStorage;
  sub_100022CF0(&qword_100063490, &qword_10004DBF8);
  TaskGroup.makeAsyncIterator()();
  *(v3 + 192) = &_swiftEmptyArrayStorage;
  *(v3 + 200) = &_swiftEmptyArrayStorage;
  v24 = sub_10002BF4C(&qword_1000634A8, &qword_1000634A0, &qword_10004DC18, &protocol conformance descriptor for TaskGroup<A>.Iterator);
  v25 = swift_task_alloc();
  *(v3 + 208) = v25;
  *v25 = v3;
  v25[1] = sub_100029400;
  a2 = *(v3 + 152);
  v5 = v3 + 80;
  a3 = v24;

  return dispatch thunk of AsyncIteratorProtocol.next()(v5, a2, a3);
}

uint64_t sub_100029400()
{
  v2 = *v1;

  if (v0)
  {
    v4 = v2[20];
    v3 = v2[21];
    v5 = v2[19];

    (*(v4 + 8))(v3, v5);

    v6 = nullsub_4;
  }

  else
  {
    v6 = sub_100029554;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100029554()
{
  v1 = v0[5].f64[0];
  if (*&v1 == 1)
  {
    v2 = v0[12].f64[0];
    v3 = v0[5].f64[1];
    (*(*&v0[10].f64[0] + 8))(*&v0[10].f64[1], *&v0[9].f64[1]);
    **&v3 = v2;

    v4 = *&v0->f64[1];

    return v4();
  }

  else
  {
    if (v1 == 0.0)
    {
      v8 = v0[12];
    }

    else
    {
      v6 = &v0[4].f64[1];
      v7 = *&v1;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*v6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      sub_10002BDB0(*&v1);
      v8 = vld1q_dup_f64(v6);
    }

    v0[12] = v8;
    v9 = sub_10002BF4C(&qword_1000634A8, &qword_1000634A0, &qword_10004DC18, &protocol conformance descriptor for TaskGroup<A>.Iterator);
    v10 = swift_task_alloc();
    *&v0[13].f64[0] = v10;
    *v10 = v0;
    v10[1] = sub_100029400;
    v11 = v0[9].f64[1];

    return dispatch thunk of AsyncIteratorProtocol.next()(&v0[5], *&v11, v9);
  }
}

uint64_t sub_100029730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = a8;
  v8[11] = v14;
  v8[8] = a6;
  v8[9] = a7;
  v8[6] = a1;
  v8[7] = a5;
  v10 = type metadata accessor for Logger();
  v8[12] = v10;
  v8[13] = *(v10 - 8);
  v8[14] = swift_task_alloc();
  v11 = swift_task_alloc();
  v8[15] = v11;
  *v11 = v8;
  v11[1] = sub_100029838;

  return sub_100027878(a5);
}

uint64_t sub_100029838(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 128) = v1;

  if (v1)
  {
    v5 = sub_1000299CC;
  }

  else
  {
    *(v4 + 136) = a1;
    v5 = sub_100029960;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100029960()
{
  **(v0 + 48) = *(v0 + 136);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000299CC()
{
  v29 = v0;
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 96);
  v4 = *(v0 + 56);
  v5 = sub_100023EC8();
  (*(v2 + 16))(v1, v5, v3);

  v6 = v4;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v25 = *(v0 + 104);
    v9 = *(v0 + 88);
    v26 = *(v0 + 96);
    v27 = *(v0 + 112);
    v10 = *(v0 + 80);
    v24 = *(v0 + 64);
    v11 = *(v0 + 56);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v28 = v14;
    *v12 = 136315394;
    *(v0 + 16) = v24;
    *(v0 + 32) = v10;
    *(v0 + 40) = v9;
    sub_1000224F4();
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = sub_100021BC4(v15, v16, &v28);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2112;
    *(v12 + 14) = v11;
    *v13 = v11;
    v18 = v11;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s encountered error when fetching %@", v12, 0x16u);
    sub_100023504(v13, &qword_1000632D8, &qword_10004D9A8);

    sub_100022B94(v14);

    (*(v25 + 8))(v27, v26);
  }

  else
  {
    v20 = *(v0 + 104);
    v19 = *(v0 + 112);
    v21 = *(v0 + 96);

    (*(v20 + 8))(v19, v21);
  }

  **(v0 + 48) = 0;

  v22 = *(v0 + 8);

  return v22();
}

id INFPItemCollectionManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for INFPItemCollectionManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t INFPItemCollectionManager.stopObserving(itemID:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v39 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v35 - v8;
  v10 = sub_100023EC8();
  v37 = *(v5 + 16);
  v38 = v10;
  v37(v9);
  v11 = a1;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  v14 = os_log_type_enabled(v12, v13);
  v40 = v5;
  if (v14)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v36 = v4;
    v17 = v5;
    v18 = v16;
    v19 = swift_slowAlloc();
    v41[0] = v19;
    *v15 = 136315394;
    *(v15 + 4) = sub_100021BC4(0xD000000000000016, 0x80000001000424F0, v41);
    *(v15 + 12) = 2112;
    *(v15 + 14) = v11;
    *v18 = v11;
    v20 = v11;
    _os_log_impl(&_mh_execute_header, v12, v13, "%s id: %@", v15, 0x16u);
    sub_100023504(v18, &qword_1000632D8, &qword_10004D9A8);

    sub_100022B94(v19);

    v21 = v17;
    v4 = v36;
    v22 = *(v21 + 8);
    v22(v9, v36);
  }

  else
  {

    v22 = *(v5 + 8);
    v22(v9, v4);
  }

  v23 = (*((swift_isaMask & *v2) + 0x80))(v41);
  v24 = sub_10002A480(v11);
  v23(v41, 0);
  if (v24)
  {
    v25 = (*((swift_isaMask & *v2) + 0x98))(v41);
    sub_10002A334(v11);
    swift_unknownObjectRelease();
    v25(v41, 0);
    sub_100026FDC(v24);
  }

  else
  {
    v27 = v39;
    (v37)(v39, v38, v4);
    v28 = v11;
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v41[0] = v33;
      *v31 = 136315394;
      *(v31 + 4) = sub_100021BC4(0xD000000000000016, 0x80000001000424F0, v41);
      *(v31 + 12) = 2112;
      *(v31 + 14) = v28;
      *v32 = v28;
      v34 = v28;
      _os_log_impl(&_mh_execute_header, v29, v30, "%s Tried to remove collection for %@ but it was not found", v31, 0x16u);
      sub_100023504(v32, &qword_1000632D8, &qword_10004D9A8);

      sub_100022B94(v33);
    }

    return (v22)(v27, v4);
  }
}

unint64_t sub_10002A21C(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));

  return sub_10002A260(a1, v4);
}

unint64_t sub_10002A260(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_100022BE0(0, &qword_1000634E0, FPItemID_ptr);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_10002A334(void *a1)
{
  v2 = v1;
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    v13 = sub_10002A21C(a1);
    if (v14)
    {
      v3 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = *v1;
      v17 = *v1;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:

        v12 = *(*(v8 + 56) + 8 * v3);
        sub_10002AC3C(v3, v8);
        goto LABEL_11;
      }

LABEL_15:
      sub_10002AF44();
      v8 = v17;
      goto LABEL_10;
    }

    return 0;
  }

  if (v3 < 0)
  {
    v4 = *v1;
  }

  else
  {
    v4 = v3 & 0xFFFFFFFFFFFFFF8;
  }

  v5 = a1;
  v6 = __CocoaDictionary.lookup(_:)();

  if (!v6)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v7 = __CocoaDictionary.count.getter();
  v8 = sub_10002A514(v4, v7);

  v9 = sub_10002A21C(v5);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = *(*(v8 + 56) + 8 * v9);
  sub_10002AC3C(v9, v8);

LABEL_11:
  *v2 = v8;
  return v12;
}

uint64_t sub_10002A480(uint64_t a1)
{
  v2 = v1;
  v3 = sub_10002A21C(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v10 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_10002B0A8();
    v7 = v10;
  }

  v8 = *(*(v7 + 56) + 8 * v5);
  sub_10002AC3C(v5, v7);
  *v2 = v7;
  return v8;
}

Swift::Int sub_10002A514(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100022CF0(&qword_1000634F8, &qword_10004DC58);
    v2 = static _DictionaryStorage.convert(_:capacity:)();
    v19 = v2;
    __CocoaDictionary.makeIterator()();
    v3 = __CocoaDictionary.Iterator.next()();
    if (v3)
    {
      v4 = v3;
      sub_100022BE0(0, &qword_1000634E0, FPItemID_ptr);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_100022CF0(&qword_1000634E8, &qword_10004DC50);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_10002A75C(v12 + 1, 1);
        }

        v2 = v19;
        result = NSObject._rawHashValue(seed:)(*(v19 + 40));
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = __CocoaDictionary.Iterator.next()();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptyDictionarySingleton;
  }

  return v2;
}

Swift::Int sub_10002A75C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100022CF0(&qword_1000634F8, &qword_10004DC58);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v2;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
        v22 = v20;
        swift_unknownObjectRetain();
      }

      result = NSObject._rawHashValue(seed:)(*(v7 + 40));
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v31;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

Swift::Int sub_10002A9CC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100022CF0(&qword_100063500, qword_10004DC60);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v2;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
        v22 = v20;
      }

      result = NSObject._rawHashValue(seed:)(*(v7 + 40));
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v31;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void sub_10002AC3C(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = NSObject._rawHashValue(seed:)(v9);

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 8 * v3);
          v20 = (v18 + 8 * v6);
          if (v3 != v6 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

id sub_10002ADC8(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_10002A21C(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_10002A9CC(v13, a3 & 1);
      v8 = sub_10002A21C(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        sub_100022BE0(0, &qword_1000634E0, FPItemID_ptr);
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = v8;
      sub_10002B0A8();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * v8) = a1;
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v20 = v18[2];
  v12 = __OFADD__(v20, 1);
  v21 = v20 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v21;

  return a2;
}

void *sub_10002AF44()
{
  v1 = v0;
  sub_100022CF0(&qword_1000634F8, &qword_10004DC58);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = swift_unknownObjectRetain();
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

void *sub_10002B0A8()
{
  v1 = v0;
  sub_100022CF0(&qword_100063500, qword_10004DC60);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
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

uint64_t sub_10002B20C(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_10002B300;

  return v5(v2 + 16);
}

uint64_t sub_10002B300()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v5 = *v0;

  *v2 = *(v1 + 16);
  v3 = *(v5 + 8);

  return v3();
}

id sub_10002B430(uint64_t a1, void *a2, char a3, void *a4)
{
  v7 = *a4;
  v8 = sub_10002A21C(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_10002A75C(v13, a3 & 1);
      v8 = sub_10002A21C(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        sub_100022BE0(0, &qword_1000634E0, FPItemID_ptr);
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = v8;
      sub_10002AF44();
      v8 = v16;
    }
  }

  v18 = *a4;
  if (v14)
  {
    *(v18[7] + 8 * v8) = a1;

    return swift_unknownObjectRelease();
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v20 = v18[2];
  v12 = __OFADD__(v20, 1);
  v21 = v20 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v21;

  return a2;
}

unint64_t sub_10002B5AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100022CF0(&qword_100063500, qword_10004DC60);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = sub_10002A21C(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_10002B6A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100022CF0(&qword_1000634F8, &qword_10004DC58);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      swift_unknownObjectRetain();
      result = sub_10002A21C(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

uint64_t sub_10002B7C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100022CF0(&qword_100063280, &qword_10004D7B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002B830()
{
  sub_100022CF0(&qword_100063280, &qword_10004D7B0);
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100023698;

  return sub_100025EA4(v7, v8, v9, v2, v3, v4, v5, v6);
}

unint64_t sub_10002B994()
{
  result = qword_100063400;
  if (!qword_100063400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063400);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for INItemCollectionError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for INItemCollectionError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_10002BB44(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v11 = v2[6];
  v10 = v2[7];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_100023698;

  return sub_100028E94(a1, a2, v6, v7, v8, v9, v11, v10);
}

uint64_t sub_10002BC20(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v8 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100023238;

  return sub_100029730(a1, v9, v10, v4, v5, v6, v7, v8);
}

uint64_t sub_10002BCF8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100023238;

  return sub_10002B20C(a1, v4);
}

void sub_10002BDB0(id a1)
{
  if (a1 != 1)
  {
  }
}

void sub_10002BDD0(void *a1, uint64_t a2)
{
  v5 = *(sub_100022CF0(&qword_1000634B8, &qword_10004DC40) - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v2[2];
  v8 = v2[3];
  v9 = v2[4];
  v10 = v2[5];
  v11 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1000280EC(a1, a2, v7, v8, v9, v10, v2 + v6, v11);
}

uint64_t sub_10002BE90(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10002BEA8()
{
  result = qword_1000634C0;
  if (!qword_1000634C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000634C0);
  }

  return result;
}

uint64_t sub_10002BF04(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10002BF4C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000251BC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10002BF9C()
{
  result = qword_1000634F0;
  if (!qword_1000634F0)
  {
    sub_100022BE0(255, &qword_1000634E0, FPItemID_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000634F0);
  }

  return result;
}

id sub_10002C060()
{
  result = [objc_opt_self() standardUserDefaults];
  qword_100063A58 = result;
  return result;
}

uint64_t static LoggedOutPushCache.expirationDate.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_100063A50 != -1)
  {
    swift_once();
  }

  v2 = qword_100063A58;
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 valueForKey:v3];

  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (*(&v10 + 1))
  {
    v5 = type metadata accessor for Date();
    v6 = swift_dynamicCast();
    return (*(*(v5 - 8) + 56))(a1, v6 ^ 1u, 1, v5);
  }

  else
  {
    sub_1000245BC(v11);
    v8 = type metadata accessor for Date();
    return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
  }
}

void static LoggedOutPushCache.registeredDevice(expirationDate:)()
{
  if (qword_100063A50 != -1)
  {
    swift_once();
  }

  v0 = qword_100063A58;
  isa = Date._bridgeToObjectiveC()().super.isa;
  v2 = String._bridgeToObjectiveC()();
  [v0 setObject:isa forKey:v2];
}

void static LoggedOutPushCache.unregisteredDevice()()
{
  if (qword_100063A50 != -1)
  {
    swift_once();
  }

  v0 = qword_100063A58;
  v1 = String._bridgeToObjectiveC()();
  [v0 setURL:0 forKey:v1];
}

id LoggedOutPushCache.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for LoggedOutPushCache();
  return objc_msgSendSuper2(&v4, "dealloc");
}

BOOL _s3ind18LoggedOutPushCacheC19wasDeviceRegisteredSbvgZ_0()
{
  if (qword_100063A50 != -1)
  {
    swift_once();
  }

  v0 = qword_100063A58;
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 valueForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v4, 0, sizeof(v4));
  }

  sub_1000245BC(v4);
  return v2 != 0;
}

uint64_t sub_10002C7E0()
{
  type metadata accessor for TaskLimiters();
  result = TaskLimiters.__allocating_init()();
  qword_100063A68 = result;
  return result;
}

uint64_t sub_10002C814(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = sub_100022CF0(&qword_1000632D0, &qword_10004DAC0);
  __chkstk_darwin(v11 - 8);
  v13 = &v18 - v12;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = a1;
  v15[5] = a2;
  v15[6] = a3;
  v15[7] = v5;
  v15[8] = a4;
  v15[9] = a5;
  sub_10002D7A0(a1, a2);
  v16 = v5;

  sub_100020818(0, 0, v13, &unk_10004DCE0, v15);
}

uint64_t sub_10002C958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a8;
  v8[8] = v10;
  v8[5] = a6;
  v8[6] = a7;
  v8[3] = a4;
  v8[4] = a5;
  return _swift_task_switch(sub_10002C988, 0, 0);
}

uint64_t sub_10002C988()
{
  if (qword_100063A60 != -1)
  {
    swift_once();
  }

  *(v0 + 72) = qword_100063A68;
  type metadata accessor for TaskLimiters();
  sub_100033694(&qword_100063538, &type metadata accessor for TaskLimiters, &protocol conformance descriptor for TaskLimiters);
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10002CA78, v2, v1);
}

uint64_t sub_10002CA78()
{
  *(v0 + 80) = TaskLimiters.limiter(key:timeout:)();

  return _swift_task_switch(sub_10002CB00, 0, 0);
}

uint64_t sub_10002CB00()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_allocObject();
  v0[11] = v5;
  v5[2] = v3;
  v5[3] = v4;
  v5[4] = v2;
  v5[5] = v1;
  sub_10002D7A0(v3, v4);
  v9 = &async function pointer to dispatch thunk of TaskLimiter.perform<A>(identifier:operation:) + async function pointer to dispatch thunk of TaskLimiter.perform<A>(identifier:operation:);
  v6 = v1;
  v7 = swift_task_alloc();
  v0[12] = v7;
  *v7 = v0;
  v7[1] = sub_10002CC34;

  return (v9)(v0 + 2, 0xD000000000000015, 0x8000000100042830, &unk_10004E350, v5, &type metadata for UInt);
}

uint64_t sub_10002CC34()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_10002CDC8;
  }

  else
  {

    v2 = sub_10002CD58;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10002CD58()
{
  (*(v0 + 56))(1, *(v0 + 16), 0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10002CDC8()
{
  v1 = v0[13];
  v2 = v0[7];

  swift_errorRetain();
  v2(0, 0, v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_10002CE6C()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100023698;

  return sub_10002C958(v7, v8, v9, v2, v3, v4, v5, v6);
}

uint64_t sub_10002CF30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[26] = a3;
  v4[27] = a4;
  v4[24] = a1;
  v4[25] = a2;
  return _swift_task_switch(sub_10002CF54, 0, 0);
}

uint64_t sub_10002CF54()
{
  v1 = [objc_opt_self() sharedServerWithNoUrlCache];
  v0[28] = v1;
  v0[2] = v0;
  v0[7] = v0 + 23;
  v0[3] = sub_10002D094;
  v2 = swift_continuation_init();
  v0[17] = sub_100022CF0(&qword_1000635C8, &qword_10004E2F0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10002D6C8;
  v0[13] = &unk_1000568A8;
  v0[14] = v2;
  [v1 configurationWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10002D094()
{
  v1 = *(*v0 + 48);
  *(*v0 + 232) = v1;
  if (v1)
  {
    v2 = sub_10002D658;
  }

  else
  {
    v2 = sub_10002D1A4;
  }

  return _swift_task_switch(v2, 0, 0);
}

void sub_10002D1A4()
{
  v1 = v0[28];
  v2 = v0[23];
  v0[30] = v2;

  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 _urlStringForKey:v3];

  if (v4)
  {
    v5 = v0[27];
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    v0[31] = v8;
    v9 = [objc_opt_self() bodyParameterValueForRegistrationReason:v5];
    if (v9)
    {
      v10 = v9;
      v12 = v0[25];
      v11 = v0[26];
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      v0[32] = v15;
      v0[21] = &type metadata for LoggedOutPushRegistrationRequestBody;
      v0[22] = sub_1000335A0();
      v16 = swift_allocObject();
      v0[18] = v16;
      v16[2] = v12;
      v16[3] = v11;
      v16[4] = v13;
      v16[5] = v15;
      sub_10002D7A0(v12, v11);
      sub_10002D7A0(v12, v11);

      v17 = swift_task_alloc();
      v0[33] = v17;
      *v17 = v0;
      v17[1] = sub_10002D40C;

      sub_100030594(v6, v8, 5526864, 0xE300000000000000, (v0 + 18));
      return;
    }

    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  v18 = String._bridgeToObjectiveC()();
  v19 = INCreateErrorWithMessage();

  if (!v19)
  {
    goto LABEL_11;
  }

  swift_willThrow();

  v20 = v0[1];

  v20();
}

uint64_t sub_10002D40C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 272) = v1;

  if (v1)
  {
    v5 = sub_10002D5D8;
  }

  else
  {
    *(v4 + 280) = a1;
    sub_100022B94((v4 + 144));
    v5 = sub_10002D54C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10002D54C()
{
  v1 = v0[35];
  v2 = v0[30];
  v3 = v0[24];
  sub_1000235A8(v0[25], v0[26]);

  *v3 = v1;
  v4 = v0[1];

  return v4();
}

uint64_t sub_10002D5D8()
{
  v1 = v0[30];
  sub_1000235A8(v0[25], v0[26]);

  sub_100022B94(v0 + 18);
  v2 = v0[1];

  return v2();
}

uint64_t sub_10002D658()
{
  v1 = *(v0 + 224);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10002D6C8(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_100023564((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    sub_100022CF0(&qword_100063608, &qword_10004E320);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return _swift_continuation_throwingResumeWithError(v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_10002D7A0(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

void sub_10002D974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v7 = _convertErrorToNSError(_:)();
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  (*(a4 + 16))(a4, a1, a2);
}

uint64_t sub_10002D9F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_10002DA18, 0, 0);
}

uint64_t sub_10002DA18()
{
  if (qword_100063A60 != -1)
  {
    swift_once();
  }

  *(v0 + 48) = qword_100063A68;
  type metadata accessor for TaskLimiters();
  sub_100033694(&qword_100063538, &type metadata accessor for TaskLimiters, &protocol conformance descriptor for TaskLimiters);
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10002DB08, v2, v1);
}

uint64_t sub_10002DB08()
{
  *(v0 + 56) = TaskLimiters.limiter(key:timeout:)();

  return _swift_task_switch(sub_10002DB90, 0, 0);
}

uint64_t sub_10002DB90()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  v5 = swift_allocObject();
  v0[8] = v5;
  v5[2] = v4;
  v5[3] = v3;
  v5[4] = v2;
  v5[5] = v1;
  sub_10002D7A0(v4, v3);
  v9 = (&async function pointer to dispatch thunk of TaskLimiter.perform<A>(identifier:operation:) + async function pointer to dispatch thunk of TaskLimiter.perform<A>(identifier:operation:));
  v6 = v1;
  v7 = swift_task_alloc();
  v0[9] = v7;
  *v7 = v0;
  v7[1] = sub_10002DCC0;

  return v9();
}