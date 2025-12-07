id sub_100001CE8(uint64_t a1)
{
  if (qword_10003A258 != -1)
  {
    sub_100029438();
  }

  v2 = qword_10003A250;

  return v2;
}

void sub_100001D2C(id a1)
{
  qword_10003A250 = os_log_create("com.apple.soundscapes.utility", "log");

  _objc_release_x1();
}

uint64_t sub_100001E10(uint64_t a1)
{
  qword_10003A260 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

void sub_100002010(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100002038(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = sub_100001CE8(WeakRetained);
  v8 = v7;
  if (!a2)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Catalog Download Successful", buf, 2u);
    }

    v15 = *(*(a1 + 32) + 16);
    goto LABEL_14;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_100029488();
  }

  v9 = WeakRetained[1] + 1;
  WeakRetained[1] = v9;
  v11 = sub_100001CE8(v10);
  v12 = v11;
  if (v9 > 2)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1000294F0(v12, v16, v17, v18, v19, v20, v21, v22);
    }

    v15 = *(*(a1 + 32) + 16);
LABEL_14:
    v15();
    goto LABEL_15;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v27 = 1;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Retrying catalog download in %ld sec", buf, 0xCu);
  }

  v13 = dispatch_time(0, 1000000000);
  v14 = WeakRetained[2];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100002270;
  v23[3] = &unk_100035360;
  objc_copyWeak(&v25, (a1 + 40));
  v24 = *(a1 + 32);
  dispatch_after(v13, v14, v23);

  objc_destroyWeak(&v25);
LABEL_15:
}

void sub_100002270(uint64_t a1)
{
  v2 = sub_100001CE8(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Retrying catalog download", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained downloadCatalogWithCompleteHandler:*(a1 + 32)];
}

void sub_100002458(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100002484(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (v4)
  {
    v7 = sub_100001CE8(WeakRetained);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100029618();
    }
  }

  else
  {
    *(WeakRetained + 24) = 1;
    v7 = sub_100001CE8(WeakRetained);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100029680();
    }
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100002648(id *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (!v5)
  {
    v8 = &_s7SwiftUI12ProgressViewVA2A05EmptyD0VRs_rlEyACyAA4TextVAEGAA18LocalizedStringKeyVcAGRszrlufC_ptr;
    if (a2)
    {
      v9 = [NSError errorWithDomain:@"SoundScapesPickerAssetQueryDomain" code:a2 userInfo:0];
      v10 = sub_100001CE8(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1000297A4();
      }
    }

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v11 = [a1[4] results];
    v12 = [v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = 0;
      v15 = *v27;
      v16 = ASAttributeCompatibilityVersion;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v27 != v15)
          {
            objc_enumerationMutation(v11);
          }

          v18 = *(*(&v26 + 1) + 8 * i);
          v19 = [a1[5] getAssetVersion:v14 forKey:v16];
          if (v19 < [a1[5] getAssetVersion:v18 forKey:v16])
          {
            v20 = v18;

            v14 = v20;
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v13);

      v8 = &_s7SwiftUI12ProgressViewVA2A05EmptyD0VRs_rlEyACyAA4TextVAEGAA18LocalizedStringKeyVcAGRszrlufC_ptr;
      if (v14)
      {
        v21 = [a1[5] _getAssetURLFuture:v14];
        v24[0] = _NSConcreteStackBlock;
        v24[1] = 3221225472;
        v24[2] = sub_100002940;
        v24[3] = &unk_1000353D8;
        v25 = a1[6];
        v22 = [v21 addCompletionBlock:v24];

LABEL_24:
        goto LABEL_25;
      }
    }

    else
    {
    }

    v14 = [v8[382] errorWithDomain:@"SoundScapesPickerDomain" code:1 userInfo:0];
    v23 = sub_100001CE8(v14);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_10002980C();
    }

    (*(a1[6] + 2))();
    goto LABEL_24;
  }

  v7 = sub_100001CE8(v5);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_10002973C();
  }

  (*(a1[6] + 2))();
LABEL_25:
}

void sub_100002940(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = sub_100001CE8(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10002984C();
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v8 = [a2 URLByAppendingPathComponent:@"SupportVersion.plist"];
    v11 = 0;
    v9 = [NSDictionary dictionaryWithContentsOfURL:v8 error:&v11];
    v10 = v11;
    (*(*(a1 + 32) + 16))();
  }
}

void sub_100002B04(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if ((a2 & 1) == 0)
  {
    v7 = sub_100001CE8(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000298F0();
    }
  }

  [*(a1 + 32) _getSystemVersionsMappingWithCompleteHandler:*(a1 + 40)];
}

void sub_100002C28(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = (a1 + 32);
  if ([v5 wasLocal] && (objc_msgSend(*v4, "getLocalUrl"), v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v8 = sub_100001CE8(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_100029958();
    }

    v9 = [*v4 getLocalUrl];
    [v3 finishWithResult:v9];
  }

  else
  {
    v9 = objc_alloc_init(MADownloadOptions);
    [v9 setAllowsCellularAccess:1];
    v10 = sub_100001CE8([v9 setDiscretionary:0]);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_1000299CC();
    }

    v11 = *v4;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100002DA4;
    v12[3] = &unk_100035450;
    v13 = v11;
    v14 = v3;
    [v13 startDownload:v9 completionWithError:v12];
  }
}

void sub_100002DA4(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v4 = a3;
    v5 = sub_100001CE8(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100029A40();
    }

    [*(a1 + 40) finishWithResult:0 error:v4];
  }

  else
  {
    v6 = *(a1 + 32);
    v7 = a3;
    v4 = [v6 getLocalFileUrl];
    [*(a1 + 40) finishWithResult:v4 error:v7];

    v9 = sub_100001CE8(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v4;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Asset Successfully downloaded at %@", &v10, 0xCu);
    }
  }
}

void sub_100002FC4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = sub_100001CE8(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100029B18();
  }

  [*(a1 + 32) _downloadAssetForCompabilityVersions:*(a1 + 40) withCompleteHandler:*(a1 + 48)];
}

void sub_10000315C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = sub_100001CE8(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10002984C();
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    if (a2)
    {
      v8 = [NSError errorWithDomain:@"SoundScapesPickerAssetQueryDomain" code:a2 userInfo:0];
      v9 = sub_100001CE8(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_100029C24(v9, v10, v11, v12, v13, v14, v15, v16);
      }
    }

    v17 = [*(a1 + 32) results];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_1000033AC;
    v26[3] = &unk_1000354C8;
    v18 = *(a1 + 48);
    v26[4] = *(a1 + 40);
    v27 = v18;
    v19 = [v17 na_filter:v26];

    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100003418;
    v25[3] = &unk_1000354F0;
    v25[4] = *(a1 + 40);
    v20 = [v19 na_map:v25];
    v21 = [*(a1 + 40) combineAllFutures:v20];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100003424;
    v23[3] = &unk_100035518;
    v24 = *(a1 + 56);
    v22 = [v21 addCompletionBlock:v23];
  }
}

id sub_1000033AC(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) getAssetVersion:a2 forKey:ASAttributeCompatibilityVersion];
  v4 = *(a1 + 40);
  v5 = [NSNumber numberWithUnsignedInteger:v3];
  v6 = [v4 containsObject:v5];

  return v6;
}

void sub_100003424(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = sub_100001CE8(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_100029C94();
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100003748(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, ...)
{
  va_start(va, a31);
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v31 - 200), 8);
  _Block_object_dispose((v31 - 168), 8);
  _Block_object_dispose((v31 - 136), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100003798(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000037B0(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = 0;
    do
    {
      v3 = *(*(*(a1 + 32) + 8) + 24);
      v4 = *(v3 + 8 * v2);
      *(v3 + 8 * v2) = 0;

      ++v2;
    }

    while (v2 < *(a1 + 40));
  }

  v5 = *(*(*(a1 + 32) + 8) + 24);

  free(v5);
}

void sub_100003820(uint64_t a1, void *a2, uint64_t a3)
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100003900;
  v7[3] = &unk_1000355E0;
  v14 = a3;
  v11 = *(a1 + 56);
  v8 = *(a1 + 32);
  v12 = *(a1 + 72);
  v5 = *(a1 + 96);
  v13 = *(a1 + 88);
  v15 = v5;
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v6 = [a2 addCompletionBlock:v7];
}

void sub_100003900(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  objc_storeStrong((*(*(*(a1 + 56) + 8) + 24) + 8 * *(a1 + 96)), a2);
  if (v7)
  {
    objc_storeStrong((*(*(a1 + 64) + 8) + 40), a3);
  }

  objc_sync_enter(*(a1 + 32));
  --*(*(*(a1 + 72) + 8) + 24);
  if (v6)
  {
    ++*(*(*(a1 + 80) + 8) + 24);
  }

  v8 = *(*(*(a1 + 72) + 8) + 24);
  if (!v8)
  {
    v9 = *(*(a1 + 88) + 8);
    if ((*(v9 + 24) & 1) == 0)
    {
      *(v9 + 24) = 1;
      objc_sync_exit(*(a1 + 32));
      if (*(*(*(a1 + 64) + 8) + 40))
      {
        v19[0] = _NSConcreteStackBlock;
        v19[1] = 3221225472;
        v19[2] = sub_100003B30;
        v19[3] = &unk_1000355B8;
        v10 = *(a1 + 40);
        v11 = *(a1 + 32);
        v12 = *(a1 + 64);
        v20 = v11;
        v21 = v12;
        [v10 performBlock:v19];
        v13 = v20;
      }

      else
      {
        v17 = [NSArray arrayWithObjects:*(*(*(a1 + 56) + 8) + 24) count:*(a1 + 104)];
        v22[0] = _NSConcreteStackBlock;
        v22[1] = 3221225472;
        v22[2] = sub_100003B24;
        v22[3] = &unk_100035590;
        v18 = *(a1 + 40);
        v23 = *(a1 + 32);
        v24 = v17;
        v13 = v17;
        [v18 performBlock:v22];
      }

      goto LABEL_13;
    }
  }

  objc_sync_exit(*(a1 + 32));
  if (!v8)
  {
LABEL_13:
    (*(*(a1 + 48) + 16))(*(a1 + 48), v14, v15, v16);
  }
}

void sub_100003C84(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

id sub_100003CD0()
{
  sub_100012EE4();
  v4 = sub_10002A490("com.apple.SoundScapes", 0x15uLL, 1);
  v5 = v0;
  v1 = sub_10002A490("SSSoundScapeDataSource", 0x16uLL, 1);
  result = sub_10001DB58(v4, v5, v1, v2);
  qword_100039538 = result;
  return result;
}

uint64_t *sub_100003D60()
{
  if (qword_100039530 != -1)
  {
    swift_once();
  }

  return &qword_100039538;
}

void sub_100003DC0(unsigned int a1, uint64_t a2, uint64_t a3)
{
  v5 = *sub_100003D60();
  _objc_retain(v5);

  v4 = sub_10002A420();

  [v5 ulog:a1 message:v4];
  _objc_release(v4);
  _objc_release(v5);
}

BOOL sub_100003ED4(char a1, char a2)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 1;
    }

    else if (a1 == 2)
    {
      v4 = 2;
    }

    else
    {
      v4 = 3;
    }
  }

  else
  {
    v4 = 0;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 1;
    }

    else if (a2 == 2)
    {
      v3 = 2;
    }

    else
    {
      v3 = 3;
    }
  }

  else
  {
    v3 = 0;
  }

  return v4 == v3;
}

unint64_t sub_100004128()
{
  v2 = qword_100039590;
  if (!qword_100039590)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100039590);
    return WitnessTable;
  }

  return v2;
}

void sub_100004218(void *a1)
{
  v57 = a1;
  v85[4] = 0;
  v80 = 0;
  v85[5] = a1;
  v1 = a1;
  if (v57)
  {
    v55 = v57;
    v54 = v57;
    [v57 pause];
  }

  sub_100005138(v84);
  if (v84[3])
  {
    sub_100005950(v84, v85);
    v2 = v57;
    if (v57)
    {
      v53 = v57;
      v52 = v57;
      v50 = v58;
      sub_10000596C(v85, v58);
      v47 = v59;
      sub_1000059D0(v58, v59);
      v45 = *(v47 - 8);
      v46 = v45;
      v49 = v16;
      v3 = __chkstk_darwin(v16);
      v48 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v46 + 16))(v3);
      v51 = sub_10002A9E0();
      (*(v46 + 8))(v48, v47);
      sub_1000051D8(v50);
      [v52 removeTimeObserver:v51];
      swift_unknownObjectRelease();
    }

    sub_1000051D8(v85);
  }

  else
  {
    sub_10000519C(v84);
  }

  v40 = 0;
  memset(v83, 0, sizeof(v83));
  sub_10000540C(v83);
  v82[0] = v40;
  v82[1] = v40;
  v82[2] = v40;
  v82[3] = v40;
  sub_100005278(v82);
  sub_1000056B0(0.0);
  v41 = &v56[OBJC_IVAR____TtC23SoundScapesViewServices21SoundScapesDataSource_demoPlayer];
  v43 = &v81;
  swift_beginAccess();
  v44 = *v41;
  v42 = v44;
  v5 = v44;
  swift_endAccess();
  if (v44)
  {
    v39 = v42;
    v38 = v42;
    v80 = v42;
    v76 = sub_10002A740(0.5, 44100);
    v77 = v6;
    v78 = v7;
    v18 = v76;
    v19 = v6;
    v20 = v7;
    sub_100005740();
    v8 = sub_10002A700();
    v9 = v56;
    v22 = v8;
    v27 = &unk_1000356F0;
    v25 = 24;
    v26 = 7;
    v17 = swift_allocObject();
    v16[1] = v17 + 16;
    v10 = v9;
    swift_unknownObjectWeakInit();

    v11 = v38;

    v12 = swift_allocObject();
    v13 = v17;
    *(v12 + 16) = v38;
    *(v12 + 24) = v13;
    v74 = sub_100005834;
    v75 = v12;
    v69 = _NSConcreteStackBlock;
    v29 = 1107296256;
    v70 = 1107296256;
    v30 = 0;
    v71 = 0;
    v72 = sub_100004BA0;
    v73 = &unk_100035730;
    v21 = _Block_copy(&v69);

    v68[0] = v18;
    v68[1] = v19;
    v68[2] = v20;
    v24 = [v38 addPeriodicTimeObserverForInterval:v68 queue:v22 usingBlock:v21];
    _Block_release(v21);

    v23 = &v79;
    sub_10002A7E0();
    sub_100005278(v23);
    v14 = v56;
    swift_unknownObjectRelease();
    v36 = [objc_opt_self() defaultCenter];
    v35 = sub_100004C3C();
    v34 = [v38 currentItem];
    v33 = [objc_opt_self() mainQueue];
    v31 = swift_allocObject();
    v28 = v31 + 16;
    v15 = v14;
    swift_unknownObjectWeakInit();

    v65 = sub_1000058E4;
    v66 = v31;
    v60 = _NSConcreteStackBlock;
    v61 = v29;
    v62 = v30;
    v63 = sub_100004D5C;
    v64 = &unk_100035758;
    v32 = _Block_copy(&v60);

    v37 = [v36 addObserverForName:v35 object:v34 queue:v33 usingBlock:v32];
    _Block_release(v32);

    swift_unknownObjectRelease();
    v67[3] = swift_getObjectType();
    v67[0] = v37;
    sub_10000540C(v67);
  }
}

void sub_100004888(uint64_t a1, uint64_t a2, uint64_t a3, id a4, uint64_t a5)
{
  v20 = 0;
  v21 = 0uLL;
  v27 = a1;
  v28 = a2;
  v29 = a3;
  v24 = a1;
  v25 = a2;
  v26 = a3;
  v23 = a4;
  v22 = a5 + 16;
  v13 = [a4 currentItem];
  if (v13)
  {
    [v13 duration];
    _objc_release(v13);
    v10 = v14;
    *&v11 = v15 | (v16 << 32);
    *(&v11 + 1) = v17;
    v12 = 0;
  }

  else
  {
    v10 = 0;
    v11 = 0uLL;
    v12 = 1;
  }

  if ((v12 & 1) == 0)
  {
    v20 = v10;
    v21 = v11;
    v18[4] = v10;
    v19 = v11;
    v5 = sub_10002A760();
    if (v5)
    {
      swift_beginAccess();
      v18[0] = swift_unknownObjectWeakLoadStrong();
      if (v18[0])
      {
        v9 = v18[0];
        _objc_retain(v18[0]);
        sub_100010068(v18);
        swift_endAccess();
        sub_10002A750();
        v8 = v6;
        sub_10002A750();
        sub_1000056B0(v8 / v7);
        _objc_release(v9);
      }

      else
      {
        sub_100010068(v18);
        swift_endAccess();
      }
    }
  }
}

uint64_t sub_100004BA0(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = *(a1 + 32);

  v6(v3, v4, v5);
}

NSString sub_100004C3C()
{
  sub_10002A490("AVPlayerItemDidPlayToEndTimeNotification", 0x28uLL, 1);
  v1 = sub_10002A420();

  return v1;
}

void sub_100004C90(void *a1, uint64_t a2)
{
  v3[5] = a1;
  v3[4] = (a2 + 16);
  swift_beginAccess();
  v3[0] = swift_unknownObjectWeakLoadStrong();
  if (v3[0])
  {
    v2 = v3[0];
    _objc_retain(v3[0]);
    sub_100010068(v3);
    swift_endAccess();
    sub_100009010(0);
    _objc_release(v2);
  }

  else
  {
    sub_100010068(v3);
    swift_endAccess();
  }
}

uint64_t sub_100004D5C(uint64_t a1, void *a2)
{
  v5 = a1;
  v12 = a2;
  v11 = sub_100029DD0();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v6 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v5);
  v10 = &v4 - v6;
  v7 = *(v2 + 32);
  v13 = *(v2 + 40);

  _objc_retain(v12);
  sub_100029DC0();
  v7(v10);
  (*(v8 + 8))(v10, v11);
  _objc_release(v12);
}

id sub_100004E7C()
{
  v2 = (v0 + OBJC_IVAR____TtC23SoundScapesViewServices21SoundScapesDataSource_demoPlayer);
  swift_beginAccess();
  v3 = *v2;
  _objc_retain(*v2);
  swift_endAccess();
  return v3;
}

void sub_100004EEC(void *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC23SoundScapesViewServices21SoundScapesDataSource_demoPlayer);
  swift_beginAccess();
  v5 = *v3;
  _objc_retain(*v3);
  swift_endAccess();
  _objc_retain(a1);
  v4 = (v1 + OBJC_IVAR____TtC23SoundScapesViewServices21SoundScapesDataSource_demoPlayer);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  _objc_release(v2);
  swift_endAccess();
  sub_100004218(v5);
  _objc_release(v5);
  _objc_release(a1);
}

void (*sub_100004FF0(uint64_t *a1))(void ***a1, char a2)
{
  v4 = sub_100011944(0x28uLL, 51064);
  *a1 = v4;
  v4[4] = v1;
  v3 = (v1 + OBJC_IVAR____TtC23SoundScapesViewServices21SoundScapesDataSource_demoPlayer);
  swift_beginAccess();
  v5 = *v3;
  _objc_retain(*v3);
  swift_endAccess();
  v4[3] = v5;
  return sub_1000050B0;
}

void sub_1000050B0(void ***a1, char a2)
{
  v3 = *a1;
  if (a2)
  {
    v2 = v3[3];
    _objc_retain(v2);
    sub_100004EEC(v2);
    sub_100010068(v3 + 3);
  }

  else
  {
    sub_100004EEC(v3[3]);
  }

  free(v3);
}

uint64_t sub_100005138@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC23SoundScapesViewServices21SoundScapesDataSource_demoPlayerPeriodicObserver;
  swift_beginAccess();
  sub_100005A3C(v3, a1);
  return swift_endAccess();
}

void *sub_10000519C(void *a1)
{
  if (a1[3])
  {
    sub_1000051D8(a1);
  }

  return a1;
}

uint64_t sub_1000051D8(void *a1)
{
  v2 = a1[3];
  if ((*(*(v2 - 8) + 80) & 0x20000) != 0)
  {
  }

  else
  {
    return (*(*(v2 - 8) + 8))(a1);
  }
}

void *sub_100005278(void *a1)
{
  v6 = 0;
  v7 = a1;
  sub_100005A3C(a1, v5);
  v3 = v1 + OBJC_IVAR____TtC23SoundScapesViewServices21SoundScapesDataSource_demoPlayerPeriodicObserver;
  swift_beginAccess();
  sub_100005ACC(v5, v3);
  swift_endAccess();
  return sub_10000519C(a1);
}

uint64_t sub_1000053A8@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC23SoundScapesViewServices21SoundScapesDataSource_demoPlayerEndtimeObserver;
  swift_beginAccess();
  sub_100005A3C(v3, a1);
  return swift_endAccess();
}

void *sub_10000540C(void *a1)
{
  v6 = 0;
  v7 = a1;
  sub_100005A3C(a1, v5);
  v3 = v1 + OBJC_IVAR____TtC23SoundScapesViewServices21SoundScapesDataSource_demoPlayerEndtimeObserver;
  swift_beginAccess();
  sub_100005ACC(v5, v3);
  swift_endAccess();
  return sub_10000519C(a1);
}

uint64_t sub_1000054FC@<X0>(double a1@<D0>, uint64_t a2@<X8>)
{
  *&v3[1] = a1;
  *v3 = a1;
  return sub_10000F47C(v3, &type metadata for Double, a2);
}

double sub_100005534()
{
  _objc_retain(v0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100029F70();

  _objc_release(v0);
  return v2;
}

void sub_1000055E0(id *a1@<X0>, double *a2@<X8>)
{
  v2 = *a1;
  _objc_retain(*a1);
  *a2 = sub_100005534();
  _objc_release(v2);
}

void sub_100005648(double *a1, id *a2)
{
  v3 = *a1;
  v2 = *a2;
  _objc_retain(*a2);
  sub_1000056B0(v3);
  _objc_release(v2);
}

uint64_t sub_1000056B0(double a1)
{
  _objc_retain(v1);
  swift_getKeyPath();
  swift_getKeyPath();
  return sub_100029F80();
}

unint64_t sub_100005740()
{
  v2 = qword_1000395A0;
  if (!qword_1000395A0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1000395A0);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1000057E4()
{
  _objc_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_100005880(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_1000058EC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

__n128 sub_100005950(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  result = *(a1 + 16);
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_10000596C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  (**(v2 - 8))(a2);
  return a2;
}

void *sub_1000059D0(void *result, uint64_t a2)
{
  v2 = *(*(a2 - 8) + 80);
  if ((v2 & 0x20000) != 0)
  {
    return (*result + ((v2 + 16) & ~v2));
  }

  return result;
}

uint64_t sub_100005A3C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    v2 = *(a1 + 24);
    *(a2 + 24) = v2;
    (**(v2 - 8))();
  }

  else
  {
    *a2 = *a1;
    *(a2 + 16) = *(a1 + 16);
  }

  return a2;
}

uint64_t sub_100005ACC(_OWORD *a1, uint64_t a2)
{
  if (*(a2 + 24))
  {
    sub_1000051D8(a2);
    *a2 = *a1;
    *(a2 + 16) = a1[1];
  }

  else
  {
    *a2 = *a1;
    *(a2 + 16) = a1[1];
  }

  return a2;
}

void (*sub_100005BA0(void *a1))(uint64_t *a1, char a2)
{
  v3 = sub_100011944(0x40uLL, 23046);
  *a1 = v3;
  v3[4] = v2;
  _objc_retain(v2);
  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = sub_100029F60();
  return sub_100005C88;
}

void sub_100005C88(uint64_t *a1, char a2)
{
  v4 = *a1;
  if (a2)
  {
    v2 = *(v4 + 32);
    (*(v4 + 56))(v4, 0);

    _objc_release(v2);
  }

  else
  {
    v3 = *(v4 + 32);
    (*(v4 + 56))(v4, 0);

    _objc_release(v3);
  }

  free(v4);
}

uint64_t sub_100005D74()
{
  swift_beginAccess();
  sub_10000F56C(&qword_1000395C0, &qword_10002CD38);
  sub_100029F40();
  return swift_endAccess();
}

uint64_t sub_100005DF0(uint64_t a1)
{
  v8 = a1;
  v12 = 0;
  v11 = 0;
  v9 = sub_10000F56C(&qword_1000395C8, &qword_10002CD40);
  v6 = *(v9 - 8);
  v7 = v9 - 8;
  v5[0] = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v9);
  v5[1] = v5 - v5[0];
  v12 = v3;
  v11 = v1;
  (*(v6 + 16))(v2);
  v5[2] = &v10;
  swift_beginAccess();
  sub_10000F56C(&qword_1000395C0, &qword_10002CD38);
  sub_100029F50();
  swift_endAccess();
  return (*(v6 + 8))(v8, v9);
}

uint64_t (*sub_100005F44(void *a1))()
{
  v6 = sub_100011944(0x28uLL, 41824);
  *a1 = v6;
  *v6 = v1;
  v2 = sub_10000F56C(&qword_1000395C8, &qword_10002CD40);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = sub_100011944(v5, 41824);
  v6[4] = sub_100011944(v5, 41824);
  sub_100005D74();
  return sub_100006068;
}

void sub_100006068(void **a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v4 = v8[4];
    v5 = v8[3];
    v3 = v8[1];
    v2 = v8[2];
    (*(v2 + 16))();
    sub_100005DF0(v5);
    (*(v2 + 8))(v4, v3);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = v8[4];
    v7 = v8[3];
    sub_100005DF0(v6);
    free(v6);
    free(v7);
  }

  free(v8);
}

uint64_t sub_100006164@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR____TtC23SoundScapesViewServices21SoundScapesDataSource__playbackProgress;
  swift_beginAccess();
  v2 = sub_10000F56C(&qword_1000395C0, &qword_10002CD38);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t sub_100006204(uint64_t a1)
{
  v12 = a1;
  v16 = 0;
  v15 = 0;
  v13 = sub_10000F56C(&qword_1000395C0, &qword_10002CD38);
  v10 = *(v13 - 8);
  v11 = v13 - 8;
  v6 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v13);
  v8 = &v5 - v6;
  v16 = v3;
  v15 = v1;
  (*(v10 + 16))(v2);
  v7 = v1 + OBJC_IVAR____TtC23SoundScapesViewServices21SoundScapesDataSource__playbackProgress;
  v9 = &v14;
  swift_beginAccess();
  (*(v10 + 40))(v7, v8, v13);
  swift_endAccess();
  return (*(v10 + 8))(v12, v13);
}

uint64_t sub_100006364@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6[1] = a1;

  v6[0] = a1;
  v2 = sub_10000F56C(&qword_1000395D0, &qword_10002CD48);
  sub_10000F47C(v6, v2, a2);
}

uint64_t sub_1000063D0()
{
  _objc_retain(v0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100029F70();

  _objc_release(v0);
  return v2;
}

void sub_10000647C(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  _objc_retain(*a1);
  *a2 = sub_1000063D0();
  _objc_release(v2);
}

void sub_1000064E8(void *a1, id *a2)
{
  sub_100012E74(a1, &v5);
  v4 = v5;
  v3 = *a2;
  _objc_retain(*a2);
  sub_100006560(v4);
  _objc_release(v3);
}

uint64_t sub_100006560(uint64_t a1)
{
  _objc_retain(v1);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_100029F80();
}

void (*sub_10000660C(void *a1))(uint64_t *a1, char a2)
{
  v3 = sub_100011944(0x40uLL, 54120);
  *a1 = v3;
  v3[4] = v2;
  _objc_retain(v2);
  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = sub_100029F60();
  return sub_100005C88;
}

uint64_t sub_1000066F4()
{
  swift_beginAccess();
  sub_10000F56C(&unk_1000395E0, &qword_10002CD98);
  sub_100029F40();
  return swift_endAccess();
}

uint64_t sub_100006770(uint64_t a1)
{
  v8 = a1;
  v12 = 0;
  v11 = 0;
  v9 = sub_10000F56C(&qword_100039EE0, &qword_10002CDA0);
  v6 = *(v9 - 8);
  v7 = v9 - 8;
  v5[0] = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v9);
  v5[1] = v5 - v5[0];
  v12 = v3;
  v11 = v1;
  (*(v6 + 16))(v2);
  v5[2] = &v10;
  swift_beginAccess();
  sub_10000F56C(&unk_1000395E0, &qword_10002CD98);
  sub_100029F50();
  swift_endAccess();
  return (*(v6 + 8))(v8, v9);
}

uint64_t (*sub_1000068C4(void *a1))()
{
  v6 = sub_100011944(0x28uLL, 11637);
  *a1 = v6;
  *v6 = v1;
  v2 = sub_10000F56C(&qword_100039EE0, &qword_10002CDA0);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = sub_100011944(v5, 11637);
  v6[4] = sub_100011944(v5, 11637);
  sub_1000066F4();
  return sub_1000069E8;
}

void sub_1000069E8(void **a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v4 = v8[4];
    v5 = v8[3];
    v3 = v8[1];
    v2 = v8[2];
    (*(v2 + 16))();
    sub_100006770(v5);
    (*(v2 + 8))(v4, v3);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = v8[4];
    v7 = v8[3];
    sub_100006770(v6);
    free(v6);
    free(v7);
  }

  free(v8);
}

uint64_t sub_100006AE4@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR____TtC23SoundScapesViewServices21SoundScapesDataSource__selectedSoundScapes;
  swift_beginAccess();
  v2 = sub_10000F56C(&unk_1000395E0, &qword_10002CD98);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t sub_100006B84(uint64_t a1)
{
  v12 = a1;
  v16 = 0;
  v15 = 0;
  v13 = sub_10000F56C(&unk_1000395E0, &qword_10002CD98);
  v10 = *(v13 - 8);
  v11 = v13 - 8;
  v6 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v13);
  v8 = &v5 - v6;
  v16 = v3;
  v15 = v1;
  (*(v10 + 16))(v2);
  v7 = v1 + OBJC_IVAR____TtC23SoundScapesViewServices21SoundScapesDataSource__selectedSoundScapes;
  v9 = &v14;
  swift_beginAccess();
  (*(v10 + 40))(v7, v8, v13);
  swift_endAccess();
  return (*(v10 + 8))(v12, v13);
}

uint64_t sub_100006CE4@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3[1] = a1 & 1;
  v3[0] = a1;
  return sub_10000F47C(v3, &type metadata for Bool, a2);
}

uint64_t sub_100006D28()
{
  _objc_retain(v0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100029F70();

  _objc_release(v0);
  return v2 & 1;
}

void sub_100006DD8(id *a1@<X0>, _BYTE *a2@<X8>)
{
  v2 = *a1;
  _objc_retain(*a1);
  *a2 = sub_100006D28() & 1;
  _objc_release(v2);
}

void sub_100006E48(char *a1, id *a2)
{
  v3 = *a1;
  v2 = *a2;
  _objc_retain(*a2);
  sub_100006EB4(v3 & 1);
  _objc_release(v2);
}

uint64_t sub_100006EB4(char a1)
{
  _objc_retain(v1);
  swift_getKeyPath();
  swift_getKeyPath();
  return sub_100029F80();
}

void (*sub_100006F50(void *a1))(uint64_t *a1, char a2)
{
  v3 = sub_100011944(0x40uLL, 13529);
  *a1 = v3;
  v3[4] = v2;
  _objc_retain(v2);
  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = sub_100029F60();
  return sub_100005C88;
}

uint64_t sub_100007038()
{
  swift_beginAccess();
  sub_10000F56C(&qword_1000395F8, &unk_10002CDF0);
  sub_100029F40();
  return swift_endAccess();
}

uint64_t sub_1000070B4(uint64_t a1)
{
  v8 = a1;
  v12 = 0;
  v11 = 0;
  v9 = sub_10000F56C(&qword_100039600, &unk_10002DB20);
  v6 = *(v9 - 8);
  v7 = v9 - 8;
  v5[0] = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v9);
  v5[1] = v5 - v5[0];
  v12 = v3;
  v11 = v1;
  (*(v6 + 16))(v2);
  v5[2] = &v10;
  swift_beginAccess();
  sub_10000F56C(&qword_1000395F8, &unk_10002CDF0);
  sub_100029F50();
  swift_endAccess();
  return (*(v6 + 8))(v8, v9);
}

uint64_t (*sub_100007208(void *a1))()
{
  v6 = sub_100011944(0x28uLL, 17100);
  *a1 = v6;
  *v6 = v1;
  v2 = sub_10000F56C(&qword_100039600, &unk_10002DB20);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = sub_100011944(v5, 17100);
  v6[4] = sub_100011944(v5, 17100);
  sub_100007038();
  return sub_10000732C;
}

void sub_10000732C(void **a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v4 = v8[4];
    v5 = v8[3];
    v3 = v8[1];
    v2 = v8[2];
    (*(v2 + 16))();
    sub_1000070B4(v5);
    (*(v2 + 8))(v4, v3);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = v8[4];
    v7 = v8[3];
    sub_1000070B4(v6);
    free(v6);
    free(v7);
  }

  free(v8);
}

uint64_t sub_100007428@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR____TtC23SoundScapesViewServices21SoundScapesDataSource__dismiss;
  swift_beginAccess();
  v2 = sub_10000F56C(&qword_1000395F8, &unk_10002CDF0);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t sub_1000074C8(uint64_t a1)
{
  v12 = a1;
  v16 = 0;
  v15 = 0;
  v13 = sub_10000F56C(&qword_1000395F8, &unk_10002CDF0);
  v10 = *(v13 - 8);
  v11 = v13 - 8;
  v6 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v13);
  v8 = &v5 - v6;
  v16 = v3;
  v15 = v1;
  (*(v10 + 16))(v2);
  v7 = v1 + OBJC_IVAR____TtC23SoundScapesViewServices21SoundScapesDataSource__dismiss;
  v9 = &v14;
  swift_beginAccess();
  (*(v10 + 40))(v7, v8, v13);
  swift_endAccess();
  return (*(v10 + 8))(v12, v13);
}

uint64_t sub_100007628@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6[1] = a1;

  v6[0] = a1;
  v2 = sub_10000F56C(&qword_100039608, &qword_10002CE00);
  sub_10000F47C(v6, v2, a2);
}

uint64_t sub_100007698()
{
  _objc_retain(v0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100029F70();

  _objc_release(v0);
  return v2;
}

void sub_100007744(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  _objc_retain(*a1);
  *a2 = sub_100007698();
  _objc_release(v2);
}

void sub_1000077B0(void *a1, id *a2)
{
  sub_100012EAC(a1, &v5);
  v4 = v5;
  v3 = *a2;
  _objc_retain(*a2);
  sub_100007828(v4);
  _objc_release(v3);
}

uint64_t sub_100007828(uint64_t a1)
{
  _objc_retain(v1);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_100029F80();
}

void (*sub_1000078D4(void *a1))(uint64_t *a1, char a2)
{
  v3 = sub_100011944(0x40uLL, 42656);
  *a1 = v3;
  v3[4] = v2;
  _objc_retain(v2);
  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = sub_100029F60();
  return sub_100005C88;
}

uint64_t sub_1000079BC()
{
  swift_beginAccess();
  sub_10000F56C(&qword_100039618, &qword_10002CE50);
  sub_100029F40();
  return swift_endAccess();
}

uint64_t sub_100007A38(uint64_t a1)
{
  v8 = a1;
  v12 = 0;
  v11 = 0;
  v9 = sub_10000F56C(&qword_100039620, &qword_10002CE58);
  v6 = *(v9 - 8);
  v7 = v9 - 8;
  v5[0] = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v9);
  v5[1] = v5 - v5[0];
  v12 = v3;
  v11 = v1;
  (*(v6 + 16))(v2);
  v5[2] = &v10;
  swift_beginAccess();
  sub_10000F56C(&qword_100039618, &qword_10002CE50);
  sub_100029F50();
  swift_endAccess();
  return (*(v6 + 8))(v8, v9);
}

uint64_t (*sub_100007B8C(void *a1))()
{
  v6 = sub_100011944(0x28uLL, 56035);
  *a1 = v6;
  *v6 = v1;
  v2 = sub_10000F56C(&qword_100039620, &qword_10002CE58);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = sub_100011944(v5, 56035);
  v6[4] = sub_100011944(v5, 56035);
  sub_1000079BC();
  return sub_100007CB0;
}

void sub_100007CB0(void **a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v4 = v8[4];
    v5 = v8[3];
    v3 = v8[1];
    v2 = v8[2];
    (*(v2 + 16))();
    sub_100007A38(v5);
    (*(v2 + 8))(v4, v3);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = v8[4];
    v7 = v8[3];
    sub_100007A38(v6);
    free(v6);
    free(v7);
  }

  free(v8);
}

uint64_t sub_100007DAC@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR____TtC23SoundScapesViewServices21SoundScapesDataSource__soundScapes;
  swift_beginAccess();
  v2 = sub_10000F56C(&qword_100039618, &qword_10002CE50);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t sub_100007E4C(uint64_t a1)
{
  v12 = a1;
  v16 = 0;
  v15 = 0;
  v13 = sub_10000F56C(&qword_100039618, &qword_10002CE50);
  v10 = *(v13 - 8);
  v11 = v13 - 8;
  v6 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v13);
  v8 = &v5 - v6;
  v16 = v3;
  v15 = v1;
  (*(v10 + 16))(v2);
  v7 = v1 + OBJC_IVAR____TtC23SoundScapesViewServices21SoundScapesDataSource__soundScapes;
  v9 = &v14;
  swift_beginAccess();
  (*(v10 + 40))(v7, v8, v13);
  swift_endAccess();
  return (*(v10 + 8))(v12, v13);
}

uint64_t sub_100007FAC@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3[1] = a1;
  v3[0] = a1;
  return sub_10000F47C(v3, &unk_100035930, a2);
}

uint64_t sub_100007FEC()
{
  _objc_retain(v0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100029F70();

  _objc_release(v0);
  return v2;
}

void sub_100008098(id *a1@<X0>, _BYTE *a2@<X8>)
{
  v2 = *a1;
  _objc_retain(*a1);
  *a2 = sub_100007FEC();
  _objc_release(v2);
}

void sub_100008104(char *a1, id *a2)
{
  v3 = *a1;
  v2 = *a2;
  _objc_retain(*a2);
  sub_10000816C(v3);
  _objc_release(v2);
}

uint64_t sub_10000816C(char a1)
{
  _objc_retain(v1);
  swift_getKeyPath();
  swift_getKeyPath();
  return sub_100029F80();
}

void (*sub_100008200(void *a1))(uint64_t *a1, char a2)
{
  v3 = sub_100011944(0x40uLL, 50041);
  *a1 = v3;
  v3[4] = v2;
  _objc_retain(v2);
  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = sub_100029F60();
  return sub_100005C88;
}

uint64_t sub_1000082E8()
{
  swift_beginAccess();
  sub_10000F56C(&qword_100039630, &qword_10002CEA8);
  sub_100029F40();
  return swift_endAccess();
}

uint64_t sub_100008364(uint64_t a1)
{
  v8 = a1;
  v12 = 0;
  v11 = 0;
  v9 = sub_10000F56C(&qword_100039638, &qword_10002CEB0);
  v6 = *(v9 - 8);
  v7 = v9 - 8;
  v5[0] = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v9);
  v5[1] = v5 - v5[0];
  v12 = v3;
  v11 = v1;
  (*(v6 + 16))(v2);
  v5[2] = &v10;
  swift_beginAccess();
  sub_10000F56C(&qword_100039630, &qword_10002CEA8);
  sub_100029F50();
  swift_endAccess();
  return (*(v6 + 8))(v8, v9);
}

uint64_t (*sub_1000084B8(void *a1))()
{
  v6 = sub_100011944(0x28uLL, 39308);
  *a1 = v6;
  *v6 = v1;
  v2 = sub_10000F56C(&qword_100039638, &qword_10002CEB0);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = sub_100011944(v5, 39308);
  v6[4] = sub_100011944(v5, 39308);
  sub_1000082E8();
  return sub_1000085DC;
}

void sub_1000085DC(void **a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v4 = v8[4];
    v5 = v8[3];
    v3 = v8[1];
    v2 = v8[2];
    (*(v2 + 16))();
    sub_100008364(v5);
    (*(v2 + 8))(v4, v3);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = v8[4];
    v7 = v8[3];
    sub_100008364(v6);
    free(v6);
    free(v7);
  }

  free(v8);
}

uint64_t sub_1000086D8@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR____TtC23SoundScapesViewServices21SoundScapesDataSource__status;
  swift_beginAccess();
  v2 = sub_10000F56C(&qword_100039630, &qword_10002CEA8);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t sub_100008778(uint64_t a1)
{
  v12 = a1;
  v16 = 0;
  v15 = 0;
  v13 = sub_10000F56C(&qword_100039630, &qword_10002CEA8);
  v10 = *(v13 - 8);
  v11 = v13 - 8;
  v6 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v13);
  v8 = &v5 - v6;
  v16 = v3;
  v15 = v1;
  (*(v10 + 16))(v2);
  v7 = v1 + OBJC_IVAR____TtC23SoundScapesViewServices21SoundScapesDataSource__status;
  v9 = &v14;
  swift_beginAccess();
  (*(v10 + 40))(v7, v8, v13);
  swift_endAccess();
  return (*(v10 + 8))(v12, v13);
}

uint64_t sub_1000088D8()
{
  v40 = 0;
  v37 = 0;
  v36 = 0;
  v26 = sub_100029E30();
  v27 = *(v26 - 8);
  v28 = v26 - 8;
  v29 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v26);
  v30 = &v5 - v29;
  v40 = v0;
  v43 = 0;
  v33 = [objc_opt_self() sharedInstance];
  v32 = AVAudioSessionCategoryPlayback;
  _objc_retain(AVAudioSessionCategoryPlayback);
  v39 = v43;
  v34 = [v33 setCategory:v32 error:&v39];
  v31 = v39;
  _objc_retain(v39);
  v1 = v43;
  v43 = v31;
  _objc_release(v1);
  _objc_release(v32);
  _objc_release(v33);
  if ((v34 & 1) == 0)
  {
    v10 = v43;
    v11 = sub_100029DF0();
    _objc_release(v10);
    swift_willThrow();
  }

  v25 = sub_100008E80();
  if (v25)
  {
    v24 = v25;
    v17 = v25;
    v37 = v25;
    v19 = 0;
    sub_10000F6F0();
    (*(v27 + 16))(v30, v17 + OBJC_IVAR____TtC23SoundScapesViewServices17SoundScapesOption_audioAddress, v26);
    v18 = sub_100008E40(v30);
    v36 = v18;
    _objc_retain(v18);
    sub_100004EEC(v18);
    [v18 play];
    v41 = 0;
    v22 = [objc_opt_self() sharedInstance];
    type metadata accessor for SetActiveOptions(v19);
    v20 = sub_10002A9D0();
    sub_10000F670();
    sub_10002A800();
    v35[0] = v41;
    v23 = [v22 setActive:1 withOptions:v35[1] error:v35];
    v21 = v35[0];
    _objc_retain(v35[0]);
    v2 = v41;
    v41 = v21;
    _objc_release(v2);
    _objc_release(v22);
    if ((v23 & 1) == 0)
    {
      v8 = v41;
      v9 = sub_100029DF0();
      _objc_release(v8);
      swift_willThrow();
    }

    _objc_release(v18);
  }

  else
  {
    v12 = 0;
    sub_100004EEC(0);
    v42 = 0;
    v15 = [objc_opt_self() sharedInstance];
    type metadata accessor for SetActiveOptions(v12);
    v13 = sub_10002A9D0();
    sub_10000F670();
    sub_10002A800();
    v38[0] = v42;
    v16 = [v15 setActive:0 withOptions:v38[1] error:v38];
    v14 = v38[0];
    _objc_retain(v38[0]);
    v4 = v42;
    v42 = v14;
    _objc_release(v4);
    _objc_release(v15);
    result = v16;
    if ((v16 & 1) == 0)
    {
      v6 = v42;
      v7 = sub_100029DF0();
      _objc_release(v6);
      swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_100008E80()
{
  _objc_retain(v0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100029F70();

  _objc_release(v0);
  return v2;
}

void sub_100008F2C(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  _objc_retain(*a1);
  *a2 = sub_100008E80();
  _objc_release(v2);
}

void sub_100008F98(void *a1, id *a2)
{
  sub_100012E74(a1, &v5);
  v4 = v5;
  v3 = *a2;
  _objc_retain(*a2);
  sub_100009010(v4);
  _objc_release(v3);
}

uint64_t sub_100009010(uint64_t a1)
{
  _objc_retain(v1);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_100029F80();
  sub_1000088D8();
}

void (*sub_1000090B0(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_100008E80();
  return sub_10000910C;
}

void sub_10000910C(uint64_t *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;

    sub_100009010(v2);
    sub_100011998(a1);
  }

  else
  {
    sub_100009010(*a1);
  }
}

uint64_t sub_100009178()
{
  swift_beginAccess();
  sub_10000F56C(&unk_1000395E0, &qword_10002CD98);
  sub_100029F40();
  return swift_endAccess();
}

uint64_t sub_1000091F4(uint64_t a1)
{
  v8 = a1;
  v12 = 0;
  v11 = 0;
  v9 = sub_10000F56C(&qword_100039EE0, &qword_10002CDA0);
  v6 = *(v9 - 8);
  v7 = v9 - 8;
  v5[0] = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v9);
  v5[1] = v5 - v5[0];
  v12 = v3;
  v11 = v1;
  (*(v6 + 16))(v2);
  v5[2] = &v10;
  swift_beginAccess();
  sub_10000F56C(&unk_1000395E0, &qword_10002CD98);
  sub_100029F50();
  swift_endAccess();
  return (*(v6 + 8))(v8, v9);
}

uint64_t (*sub_100009348(void *a1))()
{
  v6 = sub_100011944(0x28uLL, 34936);
  *a1 = v6;
  *v6 = v1;
  v2 = sub_10000F56C(&qword_100039EE0, &qword_10002CDA0);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = sub_100011944(v5, 34936);
  v6[4] = sub_100011944(v5, 34936);
  sub_100009178();
  return sub_10000946C;
}

void sub_10000946C(void **a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v4 = v8[4];
    v5 = v8[3];
    v3 = v8[1];
    v2 = v8[2];
    (*(v2 + 16))();
    sub_1000091F4(v5);
    (*(v2 + 8))(v4, v3);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = v8[4];
    v7 = v8[3];
    sub_1000091F4(v6);
    free(v6);
    free(v7);
  }

  free(v8);
}

uint64_t sub_100009568@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR____TtC23SoundScapesViewServices21SoundScapesDataSource__nowplayingSoundScapes;
  swift_beginAccess();
  v2 = sub_10000F56C(&unk_1000395E0, &qword_10002CD98);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t sub_100009608(uint64_t a1)
{
  v12 = a1;
  v16 = 0;
  v15 = 0;
  v13 = sub_10000F56C(&unk_1000395E0, &qword_10002CD98);
  v10 = *(v13 - 8);
  v11 = v13 - 8;
  v6 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v13);
  v8 = &v5 - v6;
  v16 = v3;
  v15 = v1;
  (*(v10 + 16))(v2);
  v7 = v1 + OBJC_IVAR____TtC23SoundScapesViewServices21SoundScapesDataSource__nowplayingSoundScapes;
  v9 = &v14;
  swift_beginAccess();
  (*(v10 + 40))(v7, v8, v13);
  swift_endAccess();
  return (*(v10 + 8))(v12, v13);
}

uint64_t sub_100009768()
{
  sub_100006EB4(0);
  sub_100009010(0);
  return sub_100006560(0);
}

void *sub_1000097C4(uint64_t a1, uint64_t a2)
{
  v54 = a2;
  v53 = a1;
  v84 = 0;
  v122 = 0;
  v121 = 0;
  v120 = 0;
  v119 = 0;
  v118 = 0;
  v117 = 0;
  v116 = 0;
  v115 = 0;
  v94 = 0;
  v91 = 0;
  v89 = 0;
  v67 = sub_10002A310();
  v52 = *(v67 - 8);
  v65 = v52;
  __chkstk_darwin(0);
  v66 = (v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v70 = sub_10002A370();
  v55 = *(v70 - 8);
  v68 = v55;
  v56 = *(v55 + 64);
  __chkstk_darwin(v53);
  v57 = (v56 + 15) & 0xFFFFFFFFFFFFFFF0;
  v69 = v23 - v57;
  __chkstk_darwin(v3);
  v73 = v23 - v57;
  v122 = v4;
  v121 = v5;
  v120 = v6;
  v61 = 7;
  v76 = swift_allocObject();
  v58 = v76;
  v74 = v76 + 16;
  v116 = v76 + 16;
  sub_10000F56C(&qword_100039658, &qword_10002CF00);
  v59 = sub_10002A9D0();
  v79 = sub_10000F794();
  v78 = &type metadata for String;
  v80 = &protocol witness table for String;
  v7 = sub_10002A3A0();
  v8 = v84;
  *(v76 + 16) = v7;
  v64 = dispatch_semaphore_create(v8);
  v60 = v64;
  v115 = v64;
  v63 = [objc_opt_self() sharedInstance];
  v9 = v64;

  v75 = 32;
  v10 = swift_allocObject();
  v11 = v76;
  *(v10 + 16) = v64;
  *(v10 + 24) = v11;
  v113 = sub_10000F848;
  v114 = v10;
  aBlock = _NSConcreteStackBlock;
  v109 = 1107296256;
  v110 = 0;
  v111 = sub_10000A320;
  v112 = &unk_1000357D0;
  v62 = _Block_copy(&aBlock);

  [v63 getSystemVersionsMappingWithCompleteHandler:v62];
  _Block_release(v62);

  sub_10002A350();
  v12 = v65;
  *v66 = 1;
  (*(v12 + 104))();
  sub_10002A360();
  (*(v65 + 8))(v66, v67);
  v72 = *(v68 + 8);
  v71 = v68 + 8;
  v72(v69, v70);
  sub_10002A720();
  v72(v73, v70);
  v77 = &v103;
  swift_beginAccess();
  v81 = *(v76 + 16);

  swift_endAccess();
  v82 = sub_10002A3B0();

  v102 = v82;
  v85 = sub_10000F56C(&qword_100039668, &qword_10002CF08);
  v86 = type metadata accessor for OperatingSystemVersion(v84);
  v83 = v86;
  sub_10000F950();
  v13 = sub_10002A520();
  v87 = 0;
  v88 = v13;
  v47 = v13;
  sub_10000FA4C(&v102);
  v101 = v47;
  v50 = sub_10000F56C(&qword_100039678, &unk_10002CF10);
  v48 = v50;
  v49 = sub_10000FA78();
  sub_10000FB00();
  v51 = &v101;
  sub_10002A540();
  sub_10000FA4C(v51);
  v97 = v104;
  v98 = v105;
  v99 = v106;
  v100 = v107;
  if (v107)
  {
    v44 = 16;
    v45 = 1;
    v46 = 0;
  }

  else
  {
    v44 = v97;
    v45 = v98;
    v46 = v99;
  }

  v14 = v87;
  v36 = v46;
  v37 = v45;
  v38 = v44;
  v117 = v44;
  v118 = v45;
  v119 = v46;
  v96 = v53;
  v40 = sub_10000F56C(&qword_100039690, &qword_10002D910);
  v39 = v40;
  v41 = sub_10000FB80();
  v15 = sub_10002A520();
  v42 = v14;
  v43 = v15;
  if (v14)
  {
    __break(1u);
    __break(1u);
    __break(1u);
    result = v26;
    __break(1u);
  }

  else
  {
    v95 = v43;
    v31 = v23;
    __chkstk_darwin(v23);
    v16 = v37;
    v32 = &v23[-6];
    v23[-4] = v38;
    v23[-3] = v16;
    v23[-2] = v17;
    v33 = sub_10000FC3C();
    v18 = sub_10002A8C0();
    v34 = 0;
    v35 = v18;
    v28 = v18;
    v94 = v18;
    v93 = v54;
    v19 = sub_10002A520();
    v29 = 0;
    v30 = v19;
    v92 = v19;
    v26 = v23;
    __chkstk_darwin(v23);
    v20 = v37;
    v23[-4] = v38;
    v23[-3] = v20;
    v23[-2] = v21;
    v27 = sub_10002A8C0();
    v25 = v27;
    v91 = v27;
    v90 = v28;
    sub_10000FCC4();
    if (sub_10002A6B0())
    {

      v24 = v25;
    }

    else
    {

      v24 = v28;
    }

    v23[1] = v24;
    v89 = v24;
    sub_10000D1B0(v24);
  }

  return result;
}

Swift::Int sub_10000A060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = 0;
  v16 = 0;
  v21 = a1;
  v20 = a2;
  v19 = a3;
  v18 = a4 + 16;
  swift_errorRetain();
  if (a2)
  {
    v16 = a2;
    v15[0] = sub_10002A9C0();
    v15[1] = v4;
    v22._countAndFlagsBits = sub_10002A490("Error getting system version mapping ", 0x25uLL, 1);
    sub_10002A9B0(v22);

    swift_getErrorValue();
    v14[0] = sub_10002AA00();
    v14[1] = v5;
    sub_10002A9A0();
    sub_100012570(v14);
    v23._countAndFlagsBits = sub_10002A490("", 0, 1);
    sub_10002A9B0(v23);

    sub_100012570(v15);
    v10 = sub_10002A470();
    sub_100003DC0(0x5Au, v10, v6);
  }

  else
  {

    if (a1)
    {
      v17 = a1;

      swift_beginAccess();
      *(a4 + 16) = a1;

      swift_endAccess();
    }

    else
    {
      v9 = sub_10002A490("Error getting system version mapping for unknown error", 0x36uLL, 1);
      sub_100003DC0(0x5Au, v9, v7);
    }
  }

  return sub_10000A2E8();
}

uint64_t sub_10000A320(uint64_t a1, void *a2, void *a3)
{
  v7 = *(a1 + 32);

  _objc_retain(a2);
  if (a2)
  {
    sub_10000F794();
    v4 = sub_10002A390();
    _objc_release(a2);
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  _objc_retain(a3);
  v7(v5);
}

uint64_t sub_10000A460@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *a1;
  v7 = a1[1];

  result = sub_10001C74C(v6, v7);
  *a2 = result;
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5 & 1;
  return result;
}

uint64_t sub_10000A4D4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for OperatingSystemVersion(0);
  sub_10000FB00();
  return sub_10002A3F0() & 1;
}

uint64_t sub_10000A698(uint64_t a1)
{
  v2[6] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  v2[3] = a1;
  v2[4] = v1;
  return _swift_task_switch(sub_10000A6E0, 0);
}

uint64_t sub_10000A6E0()
{
  v4 = v0[6];
  v0[2] = v0;

  v6 = swift_task_alloc();
  v0[7] = v6;
  *(v6 + 16) = v4;
  v1 = swift_task_alloc();
  *(v5 + 64) = v1;
  v2 = sub_10000F56C(&qword_1000396B0, &qword_10002CF30);
  *v1 = *(v5 + 16);
  v1[1] = sub_10000A828;

  return sub_10000BB7C(v5 + 40, 0, 0, sub_10000FD4C, v6, v2);
}

uint64_t sub_10000A828()
{
  v4 = *v1;
  *(v4 + 16) = *v1;
  *(v4 + 72) = v0;

  if (v0)
  {
    v2 = sub_10000AA00;
  }

  else
  {

    v2 = sub_10000A9B4;
  }

  return _swift_task_switch(v2, 0);
}

uint64_t sub_10000AA00()
{
  *(v0 + 16) = v0;

  v1 = *(*(v0 + 16) + 8);

  return v1();
}

void sub_10000AAB4(uint64_t a1, uint64_t a2)
{
  v15 = a1;
  v14 = a2;
  v6 = [objc_opt_self() sharedInstance];

  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  v12 = sub_100012AD0;
  v13 = v2;
  aBlock = _NSConcreteStackBlock;
  v8 = 1107296256;
  v9 = 0;
  v10 = sub_10000A320;
  v11 = &unk_100035B58;
  v5 = _Block_copy(&aBlock);

  [v6 getSystemVersionsMappingWithCompleteHandler:v5];
  _Block_release(v5);
  _objc_release(v6);
}

uint64_t sub_10000ABF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a4;
  v53 = a3;
  v54 = a2;
  v57 = a1;
  v55 = 0;
  v65 = 0;
  v63 = 0;
  v56 = 0;
  v61 = 0;
  v59 = 0;
  v78 = a1;
  v77 = a2;
  v76 = a3;
  v75 = a4;

  if (v57)
  {
    v51 = v57;
    v5 = v56;
    v43 = v57;
    v63 = v57;
    v62 = v57;
    v44 = &v20;
    __chkstk_darwin(&v20);
    v45 = v19;
    v19[2] = sub_10000B428;
    v19[3] = 0;
    v46 = sub_10000F56C(&qword_1000398B8, &qword_10002D370);
    v47 = sub_10000F56C(&qword_1000398C0, &qword_10002D378);
    sub_100012B6C();
    v6 = sub_10002A520();
    v48 = v5;
    v49 = v6;
    v38 = v6;
    v61 = v6;
    v60 = v52;

    v37 = v19;
    __chkstk_darwin(v19);
    v39 = &v19[-4];
    v19[-2] = v38;
    v19[-1] = v7;
    v40 = sub_10000F56C(&qword_100039678, &unk_10002CF10);
    sub_10000FA78();
    v8 = sub_10002A520();
    v41 = 0;
    v42 = v8;
    v35 = v8;

    v59 = v35;

    v58 = v35;
    v34 = sub_10000F56C(&qword_1000396B0, &qword_10002CF30);
    sub_10000F56C(&qword_100039850, &qword_10002D348);
    sub_10000BAFC(&v58, v53, v34);

    return v41;
  }

  else
  {
    v73 = sub_10002A9C0();
    v74 = v4;
    v79._countAndFlagsBits = sub_10002A490("Error fetching system version mapping ", 0x26uLL, 1);
    object = v79._object;
    sub_10002A9B0(v79);

    swift_errorRetain();
    if (v54)
    {
      v29 = v54;
      swift_getErrorValue();
      v30 = sub_10002AA00();
      v31 = v9;

      v32 = v30;
      v33 = v31;
    }

    else
    {
      v32 = 0;
      v33 = 0;
    }

    v69 = v32;
    v70 = v33;
    if (v33)
    {
      v71 = v69;
      v72 = v70;
    }

    else
    {
      v71 = sub_10002A490("Unknown error", 0xDuLL, 1);
      v72 = v10;
    }

    v68[0] = v71;
    v68[1] = v72;
    sub_10002A9A0();
    sub_100012570(v68);
    v80._countAndFlagsBits = sub_10002A490("", 0, 1);
    v24 = v80._object;
    sub_10002A9B0(v80);

    v26 = v73;
    v25 = v74;

    sub_100012570(&v73);
    v27 = sub_10002A470();
    v28 = v11;
    sub_100003DC0(0x5Au, v27, v11);

    swift_errorRetain();
    v66 = v54;
    if (v54)
    {
      v67 = v66;
    }

    else
    {
      v22 = sub_10002A490("System Version Mapping", 0x16uLL, 1);
      v23 = v12;
      sub_10001223C();
      v13 = swift_allocError();
      v15 = v14;
      v16 = v23;
      v67 = v13;
      *v15 = v22;
      v15[1] = v16;
      if (v66)
      {
        sub_1000126BC(&v66);
      }
    }

    v21 = v67;
    v65 = v67;
    swift_errorRetain();
    v64 = v21;
    v20 = sub_10000F56C(&qword_1000396B0, &qword_10002CF30);
    v17 = sub_10000F56C(&qword_100039850, &qword_10002D348);
    sub_10000B398(&v64, v53, v20, v17, &protocol self-conformance witness table for Error);

    return v56;
  }
}

uint64_t sub_10000B398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_allocError();
  (*(*(a4 - 8) + 32))(v5, a1);
  return swift_continuation_throwingResumeWithError();
}

id sub_10000B428@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{

  result = sub_10001C74C(a1, a2);
  v17 = result;
  v18 = v5;
  v19 = v6;
  if (v7)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 1;
  }

  else
  {
    result = [a3 unsignedIntegerValue];
    v8 = v17;
    v9 = v18;
    v10 = v19;
    v11 = result;
    v12 = 0;
  }

  *a4 = v8;
  *(a4 + 8) = v9;
  *(a4 + 16) = v10;
  *(a4 + 24) = v11;
  *(a4 + 32) = v12 & 1;
  return result;
}

uint64_t sub_10000B5EC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v28 = 0;
  v27 = 0;
  v25 = 0;
  v20 = 0;
  v21 = 0;
  v14 = a1[1];
  v15 = a1[2];
  v29 = *a1;
  v30 = v14;
  v31 = v15;
  v28 = a2;
  v27 = a3;

  v26 = a2;
  v16 = sub_10000F56C(&qword_1000398D0, &unk_10002D380);
  sub_100012C54();
  result = sub_10002A8C0();
  if (v17)
  {
    __break(1u);
    __break(1u);
  }

  else
  {
    v25 = result;
    v22[1] = result;
    v5 = sub_100012CDC();
    v22[0] = sub_10001CC0C(sub_10000BABC, 0, v16, &type metadata for UInt, &type metadata for Never, v5, &protocol witness table for Never, v11);
    sub_10000F56C(&qword_1000396B0, &qword_10002CF30);
    sub_100012D64();
    sub_10002A530();
    sub_10000FA4C(v22);
    v9 = v23;
    v10 = v24;
    v20 = v23;
    v21 = v24 & 1;
    v18[2] = v23;
    v19 = v24 & 1;
    if (v24)
    {
      v18[0] = sub_10002A9C0();
      v18[1] = v6;
      v32._countAndFlagsBits = sub_10002A490("Unable version ", 0xFuLL, 1);
      sub_10002A9B0(v32);

      type metadata accessor for OperatingSystemVersion(0);
      sub_10002A980();
      v33._countAndFlagsBits = sub_10002A490(" using mapping ", 0xFuLL, 1);
      sub_10002A9B0(v33);

      sub_10000F56C(&qword_1000398B8, &qword_10002D370);
      sub_100012DEC();
      sub_10002A990();
      v34._countAndFlagsBits = sub_10002A490("", 0, 1);
      sub_10002A9B0(v34);

      sub_100012570(v18);
      v8 = sub_10002A470();
      sub_100003DC0(0x5Au, v8, v7);
    }

    *a4 = v9;
    *(a4 + 8) = v10 & 1;
  }

  return result;
}

uint64_t sub_10000B9CC(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for OperatingSystemVersion(0);
  sub_10000FB00();
  return sub_10002A400() & 1;
}

double sub_10000BABC@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = 0.0;
  *a2 = *(a1 + 24);
  return result;
}

uint64_t sub_10000BB7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[14] = a6;
  v6[13] = a5;
  v6[12] = a4;
  v6[11] = a1;
  v6[10] = v6;
  v6[15] = *(a6 - 8);
  v6[16] = swift_task_alloc();
  v9 = 0;
  if (a2)
  {
    swift_getObjectType();
    v9 = sub_10002A5E0();
  }

  return _swift_task_switch(sub_10000BCA8, v9);
}

uint64_t sub_10000BCA8()
{
  v1 = v0[16];
  v6 = v0[14];
  v5 = v0[13];
  v4 = v0[12];
  v0[10] = v0;
  v0[2] = v0[10];
  v0[7] = v1;
  v0[3] = sub_10000BD70;
  v2 = swift_continuation_init();
  sub_100011AEC(v2, v4, v5, v6);

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10000BD70()
{
  v3 = *v0;
  v3[10] = *v0;
  v4 = v3 + 10;
  if (v3[6])
  {
    swift_willThrow();

    v1 = *(*v4 + 8);
  }

  else
  {
    (*(v3[15] + 32))(v3[11]);

    v1 = *(*v4 + 8);
  }

  return v1();
}

uint64_t sub_10000BF54(uint64_t a1)
{
  v2[6] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  v2[3] = a1;
  v2[4] = v1;
  return _swift_task_switch(sub_10000BF9C, 0);
}

uint64_t sub_10000BF9C()
{
  v4 = v0[6];
  v0[2] = v0;

  v6 = swift_task_alloc();
  v0[7] = v6;
  *(v6 + 16) = v4;
  v1 = swift_task_alloc();
  *(v5 + 64) = v1;
  v2 = sub_10000F56C(&qword_100039608, &qword_10002CE00);
  *v1 = *(v5 + 16);
  v1[1] = sub_10000A828;

  return sub_10000BB7C(v5 + 40, 0, 0, sub_10000FD54, v6, v2);
}

void sub_10000C0E4(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v20 = a2;
  v8 = [objc_opt_self() sharedInstance];
  v19 = a2;
  v9 = sub_10000F56C(&qword_1000396B0, &qword_10002CF30);
  v10 = sub_10000F794();
  v2 = sub_10001259C();
  sub_10001CC0C(sub_10000C2E0, 0, v9, v10, &type metadata for Never, v2, &protocol witness table for Never, v11);
  isa = sub_10002A560().super.isa;

  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v17 = sub_100012650;
  v18 = v3;
  aBlock = _NSConcreteStackBlock;
  v13 = 1107296256;
  v14 = 0;
  v15 = sub_10000D080;
  v16 = &unk_100035B08;
  v4 = _Block_copy(&aBlock);

  [v8 downloadAssetForCompabilityVersions:isa withCompleteHandler:v4];
  _Block_release(v4);
  _objc_release(isa);
  _objc_release(v8);
}

id sub_10000C2E0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  sub_10000F794();
  result = sub_10000C33C(v3);
  *a2 = result;
  return result;
}

uint64_t sub_10000C37C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v43 = 0;
  v41 = 0;
  v39 = 0;
  v38 = 0;
  v34[0] = 0;
  v34[1] = 0;
  v51[4] = a1;
  v51[3] = a2;
  v51[2] = a3;

  if (a1)
  {
    v41 = a1;
    v40 = a1;
    sub_10000F56C(&qword_100039860, &qword_10002D350);
    sub_10000F56C(&qword_100039868, &qword_10002D358);
    sub_1000126E8();
    v4 = sub_10002A520();
    v28 = v4;
    v39 = v4;
    v37 = v4;
    sub_10000F56C(&qword_100039878, &qword_10002D360);
    sub_100012770();
    sub_10002A690();
    if (v36)
    {
      v38 = v36;

      v33[2] = v28;
      sub_10002A6C0();
      while (1)
      {
        sub_10000F56C(&qword_100039888, &qword_10002D368);
        sub_10002A910();
        if (!v33[1])
        {
          break;
        }

        sub_1000127F8();
        sub_10002A620();
      }

      sub_10000FA4C(v34);
      v24 = v38;

      v33[0] = v24;
      sub_1000127F8();
      sub_100012880();
      v25 = sub_10002A550();
      sub_10000FA4C(v33);
      v32 = v25;
      v26 = sub_10000F56C(&qword_100039608, &qword_10002CE00);
      sub_10000F56C(&qword_100039850, &qword_10002D348);
      sub_10000BAFC(&v32, a3, v26);
      sub_10000FA4C(&v38);
    }

    else
    {
      sub_10001223C();
      v5 = swift_allocError();
      *v6 = 0;
      v6[1] = 0;
      v35 = v5;
      v27 = sub_10000F56C(&qword_100039608, &qword_10002CE00);
      v7 = sub_10000F56C(&qword_100039850, &qword_10002D348);
      sub_10000B398(&v35, a3, v27, v7, &protocol self-conformance witness table for Error);
    }
  }

  else
  {
    v51[0] = sub_10002A9C0();
    v51[1] = v3;
    v52._countAndFlagsBits = sub_10002A490("Error download assets ", 0x16uLL, 1);
    sub_10002A9B0(v52);

    swift_errorRetain();
    if (a2)
    {
      swift_getErrorValue();
      v20 = sub_10002AA00();
      v21 = v9;

      v22 = v20;
      v23 = v21;
    }

    else
    {
      v22 = 0;
      v23 = 0;
    }

    v47 = v22;
    v48 = v23;
    if (v23)
    {
      v49 = v47;
      v50 = v48;
    }

    else
    {
      v49 = sub_10002A490("Unknown error", 0xDuLL, 1);
      v50 = v10;
    }

    v46[0] = v49;
    v46[1] = v50;
    sub_10002A9A0();
    sub_100012570(v46);
    v53._countAndFlagsBits = sub_10002A490("", 0, 1);
    sub_10002A9B0(v53);

    sub_100012570(v51);
    v19 = sub_10002A470();
    sub_100003DC0(0x5Au, v19, v11);

    swift_errorRetain();
    v44 = a2;
    if (a2)
    {
      v45 = v44;
    }

    else
    {
      v17 = sub_10002A490("Asset", 5uLL, 1);
      v18 = v12;
      sub_10001223C();
      v45 = swift_allocError();
      *v13 = v17;
      v13[1] = v18;
      if (v44)
      {
        sub_1000126BC(&v44);
      }
    }

    v16 = v45;
    v43 = v45;
    swift_errorRetain();
    v42 = v16;
    v15 = sub_10000F56C(&qword_100039608, &qword_10002CE00);
    v14 = sub_10000F56C(&qword_100039850, &qword_10002D348);
    sub_10000B398(&v42, a3, v15, v14, &protocol self-conformance witness table for Error);
  }
}

uint64_t sub_10000CA30@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v57 = a2;
  v63 = a1;
  v80 = 0;
  v79 = 0;
  v75 = 0;
  v58 = 0;
  v62 = sub_100029E30();
  v60 = *(v62 - 8);
  v61 = v62 - 8;
  v59 = (*(v60 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v65 = &v18 - v59;
  v80 = v2;
  type metadata accessor for SoundScapesOptionsManager();
  (*(v60 + 16))(v65, v63, v62);
  v3 = v64;
  v4 = sub_100014954(v65);
  v66 = v3;
  v67 = v4;
  v68 = v3;
  if (v3)
  {
    v29 = v68;
    v30 = 0;
    swift_errorRetain();
    v79 = v29;
    v19 = 20;
    v13 = sub_10002A9C0();
    v24 = &v77;
    v77 = v13;
    v78 = v14;
    v22 = 1;
    v84._countAndFlagsBits = sub_10002A490("Error opening asset ", v19, 1);
    object = v84._object;
    sub_10002A9B0(v84);

    swift_getErrorValue();
    v15 = sub_10002AA00();
    v21 = v76;
    v76[0] = v15;
    v76[1] = v16;
    sub_10002A9A0();
    sub_100012570(v21);
    v85._countAndFlagsBits = sub_10002A490("", 0, v22 & 1);
    v23 = v85._object;
    sub_10002A9B0(v85);

    v26 = v77;
    v25 = v78;

    sub_100012570(v24);
    v27 = sub_10002A470();
    v28 = v17;
    sub_100003DC0(0x5Au, v27, v17);

    *v57 = 0;

    return v30;
  }

  else
  {
    v55 = v67;
    v75 = v67;
    v33 = 10;
    v5 = sub_10002A9C0();
    v44 = &v73;
    v73 = v5;
    v74 = v6;
    v42 = "";
    v49 = 0;
    v41 = 1;
    v81._countAndFlagsBits = sub_10002A490("", 0, 1);
    v31 = v81._object;
    sub_10002A9B0(v81);

    v7 = sub_10002A490("loadSoundScapes(for:)", 0x15uLL, v41 & 1);
    v32 = v72;
    v72[0] = v7;
    v72[1] = v8;
    v39 = &type metadata for String;
    v37 = &protocol witness table for String;
    v38 = &protocol witness table for String;
    sub_10002A9A0();
    sub_100012570(v32);
    v82._countAndFlagsBits = sub_10002A490(" result = ", v33, v41 & 1);
    v34 = v82._object;
    sub_10002A9B0(v82);

    v35 = *(v55 + 16);

    v36 = &v71;
    v71 = v35;
    v52 = sub_10000F56C(&qword_100039608, &qword_10002CE00);
    sub_100012900();
    v9 = sub_10002A450();
    v40 = v70;
    v70[0] = v9;
    v70[1] = v10;
    sub_10002A9A0();
    sub_100012570(v40);
    v83._countAndFlagsBits = sub_10002A490(v42, v49, v41 & 1);
    v43 = v83._object;
    sub_10002A9B0(v83);

    v46 = v73;
    v45 = v74;

    sub_100012570(v44);
    v47 = sub_10002A470();
    v48 = v11;
    sub_100003DC0(0x28u, v47, v11);

    v50 = *(v55 + 16);

    v54 = &v69;
    v69 = v50;
    v51 = type metadata accessor for SoundScapesOption(v49);
    v53 = sub_100012988();
    sub_100012A08();
    *v57 = sub_10002A630();

    result = v66;
    v56 = v66;
  }

  return result;
}

uint64_t sub_10000D080(uint64_t a1, void *a2, void *a3)
{
  v7 = *(a1 + 32);

  _objc_retain(a2);
  if (a2)
  {
    sub_100029E30();
    v4 = sub_10002A570();
    _objc_release(a2);
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  _objc_retain(a3);
  v7(v5);
}

uint64_t sub_10000D1B0(uint64_t a1)
{
  v14 = a1;
  v13 = &unk_10002CF50;
  v18 = 0;
  v17 = 0;
  v11 = (*(*(sub_10000F56C(&qword_1000396B8, &qword_10002CF40) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v14);
  v15 = &v11 - v11;
  v18 = v2;
  v17 = v1;
  v12 = 0;
  v3 = sub_10002A600();
  (*(*(v3 - 8) + 56))(v15, 1);
  _objc_retain(v1);

  v4 = swift_allocObject();
  v5 = v12;
  v6 = v13;
  v7 = v15;
  v8 = v4;
  v9 = v14;
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v1;
  v8[5] = v9;
  v16 = sub_10000E550(v5, v5, v7, v6, v8, &type metadata for () + 8);
  sub_10000FFC0(v15);
}

uint64_t sub_10000D32C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[21] = a4;
  v5[14] = v5;
  v5[15] = 0;
  v5[16] = 0;
  v5[17] = 0;
  v5[18] = 0;
  v5[19] = 0;
  v7 = sub_10002A320();
  v5[22] = v7;
  v5[23] = *(v7 - 8);
  v5[24] = swift_task_alloc();
  v8 = sub_10002A340();
  v5[25] = v8;
  v5[26] = *(v8 - 8);
  v5[27] = swift_task_alloc();
  v5[15] = a4;
  v5[16] = a5;
  v9 = swift_task_alloc();
  *(v11 + 224) = v9;
  *v9 = *(v11 + 112);
  v9[1] = sub_10000D504;

  return sub_10000A698(a5);
}

uint64_t sub_10000D504(uint64_t a1)
{
  v6 = *v2;
  v6[14] = *v2;
  v6[29] = a1;
  v6[30] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_10000DD98, 0);
  }

  else
  {
    v6[18] = a1;
    v3 = swift_task_alloc();
    v6[31] = v3;
    *v3 = v6[14];
    v3[1] = sub_10000D6EC;

    return sub_10000BF54(a1);
  }
}

uint64_t sub_10000D6EC(uint64_t a1)
{
  v5 = *v2;
  v5[14] = *v2;
  v5[32] = a1;
  v5[33] = v1;

  if (v1)
  {
    v3 = sub_10000E014;
  }

  else
  {
    v3 = sub_10000D85C;
  }

  return _swift_task_switch(v3, 0);
}

uint64_t sub_10000D85C()
{
  v1 = v0[32];
  v0[14] = v0;
  v0[19] = v1;
  v0[20] = v1;
  sub_10000F56C(&qword_100039608, &qword_10002CE00);
  sub_1000121B4();
  if (sub_10002A6B0())
  {
    sub_10001223C();
    v16 = swift_allocError();
    *v3 = 0;
    v3[1] = 0;
    swift_willThrow();

    v12 = *(v27 + 216);
    v13 = *(v27 + 200);
    v9 = *(v27 + 192);
    v10 = *(v27 + 176);
    v7 = *(v27 + 168);
    v11 = *(v27 + 208);
    v8 = *(v27 + 184);
    swift_errorRetain();
    *(v27 + 136) = v16;
    sub_100005740();
    v15 = sub_10002A700();
    swift_errorRetain();
    _objc_retain(v7);
    v4 = swift_allocObject();
    *(v4 + 16) = v16;
    *(v4 + 24) = v7;
    *(v27 + 48) = sub_100012144;
    *(v27 + 56) = v4;
    *(v27 + 16) = _NSConcreteStackBlock;
    *(v27 + 24) = 1107296256;
    *(v27 + 28) = 0;
    *(v27 + 32) = sub_10000E300;
    *(v27 + 40) = &unk_100035A68;
    aBlock = _Block_copy((v27 + 16));
    sub_10000E350();
    sub_10000E368();
    sub_10002A710();
    (*(v8 + 8))(v9, v10);
    (*(v11 + 8))(v12, v13);
    _Block_release(aBlock);

    _objc_release(v15);
  }

  else
  {
    v26 = *(v27 + 256);
    v22 = *(v27 + 216);
    v23 = *(v27 + 200);
    v19 = *(v27 + 192);
    v20 = *(v27 + 176);
    v17 = *(v27 + 168);
    v21 = *(v27 + 208);
    v18 = *(v27 + 184);
    sub_100005740();
    v25 = sub_10002A700();
    _objc_retain(v17);

    v2 = swift_allocObject();
    *(v2 + 16) = v17;
    *(v2 + 24) = v26;
    *(v27 + 96) = sub_100012308;
    *(v27 + 104) = v2;
    *(v27 + 64) = _NSConcreteStackBlock;
    *(v27 + 72) = 1107296256;
    *(v27 + 76) = 0;
    *(v27 + 80) = sub_10000E300;
    *(v27 + 88) = &unk_100035AB8;
    v24 = _Block_copy((v27 + 64));
    sub_10000E350();
    sub_10000E368();
    sub_10002A710();
    (*(v18 + 8))(v19, v20);
    (*(v21 + 8))(v22, v23);
    _Block_release(v24);

    _objc_release(v25);
  }

  v5 = *(*(v27 + 112) + 8);

  return v5();
}

uint64_t sub_10000DD98()
{
  *(v0 + 112) = v0;
  v13 = *(v0 + 240);
  v9 = *(v0 + 216);
  v8 = *(v0 + 208);
  v10 = *(v0 + 200);
  v6 = *(v0 + 192);
  v5 = *(v0 + 184);
  v7 = *(v0 + 176);
  v4 = *(v0 + 168);
  swift_errorRetain();
  *(v0 + 136) = v13;
  sub_100005740();
  v12 = sub_10002A700();
  swift_errorRetain();
  _objc_retain(v4);
  v1 = swift_allocObject();
  *(v1 + 16) = v13;
  *(v1 + 24) = v4;
  *(v0 + 48) = sub_100012144;
  *(v0 + 56) = v1;
  *(v0 + 16) = _NSConcreteStackBlock;
  *(v0 + 24) = 1107296256;
  *(v0 + 28) = 0;
  *(v0 + 32) = sub_10000E300;
  *(v0 + 40) = &unk_100035A68;
  v11 = _Block_copy((v0 + 16));
  sub_10000E350();
  sub_10000E368();
  sub_10002A710();
  (*(v5 + 8))(v6, v7);
  (*(v8 + 8))(v9, v10);
  _Block_release(v11);

  _objc_release(v12);

  v2 = *(*(v0 + 112) + 8);

  return v2();
}

uint64_t sub_10000E014()
{
  *(v0 + 112) = v0;

  v13 = *(v0 + 264);
  v9 = *(v0 + 216);
  v8 = *(v0 + 208);
  v10 = *(v0 + 200);
  v6 = *(v0 + 192);
  v5 = *(v0 + 184);
  v7 = *(v0 + 176);
  v4 = *(v0 + 168);
  swift_errorRetain();
  *(v0 + 136) = v13;
  sub_100005740();
  v12 = sub_10002A700();
  swift_errorRetain();
  _objc_retain(v4);
  v1 = swift_allocObject();
  *(v1 + 16) = v13;
  *(v1 + 24) = v4;
  *(v0 + 48) = sub_100012144;
  *(v0 + 56) = v1;
  *(v0 + 16) = _NSConcreteStackBlock;
  *(v0 + 24) = 1107296256;
  *(v0 + 28) = 0;
  *(v0 + 32) = sub_10000E300;
  *(v0 + 40) = &unk_100035A68;
  v11 = _Block_copy((v0 + 16));
  sub_10000E350();
  sub_10000E368();
  sub_10002A710();
  (*(v5 + 8))(v6, v7);
  (*(v8 + 8))(v9, v10);
  _Block_release(v11);

  _objc_release(v12);

  v2 = *(*(v0 + 112) + 8);

  return v2();
}

uint64_t sub_10000E29C(uint64_t a1, uint64_t a2)
{

  sub_100007828(a2);
  return sub_10000816C(3);
}

uint64_t sub_10000E300(uint64_t a1)
{
  v3 = *(a1 + 32);

  v3(v1);
}

uint64_t sub_10000E368()
{
  sub_100012378(0);
  sub_10002A320();
  sub_100012468();
  sub_10000F56C(&qword_100039840, &qword_10002D340);
  sub_1000124E8();
  return sub_10002A880();
}

uint64_t sub_10000E408(uint64_t a1, uint64_t a2)
{
  v6[3] = a1;
  v6[2] = a2;
  v6[0] = sub_10002A9C0();
  v6[1] = v2;
  v7._countAndFlagsBits = sub_10002A490("Fetch failed because of ", 0x18uLL, 1);
  sub_10002A9B0(v7);

  sub_10000F56C(&qword_100039850, &qword_10002D348);
  sub_10002A980();
  v8._countAndFlagsBits = sub_10002A490("", 0, 1);
  sub_10002A9B0(v8);

  sub_100012570(v6);
  v5 = sub_10002A470();
  sub_100003DC0(0x5Au, v5, v3);

  return sub_10000816C(2);
}

uint64_t sub_10000E550(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v44 = a1;
  v45 = a2;
  v53 = a3;
  v54 = a4;
  v55 = a5;
  v46 = a6;
  v47 = "Fatal error";
  v48 = "Unexpectedly found nil while unwrapping an Optional value";
  v49 = "_Concurrency/arm64e-apple-ios.private.swiftinterface";
  v50 = &unk_10002D330;
  v51 = 0;
  v64 = a6;
  v52 = (*(*(sub_10000F56C(&qword_1000396B8, &qword_10002CF40) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v55);
  v56 = &v15 - v52;

  v62 = v54;
  v63 = v55;
  sub_1000119C4(v53, v56);
  v57 = sub_10002A600();
  v58 = *(v57 - 8);
  v59 = v57 - 8;
  if ((*(v58 + 48))(v56, 1) == 1)
  {
    sub_10000FFC0(v56);
    v43 = 0;
  }

  else
  {
    v42 = sub_10002A5F0();
    (*(v58 + 8))(v56, v57);
    v43 = v42;
  }

  v39 = v43 | 0x1000;
  v41 = *(v55 + 16);
  v40 = *(v55 + 24);
  swift_unknownObjectRetain();

  if (v41)
  {
    v37 = v41;
    v38 = v40;
    v31 = v40;
    v32 = v41;
    swift_getObjectType();
    v33 = sub_10002A5E0();
    v34 = v6;
    swift_unknownObjectRelease();
    v35 = v33;
    v36 = v34;
  }

  else
  {
    v35 = 0;
    v36 = 0;
  }

  v29 = v36;
  v30 = v35;
  if (v45)
  {
    v27 = v44;
    v28 = v45;
    v7 = v51;
    v25 = sub_10002A460();
    sub_100011B70(v25 + 32, &v62, v46, &v60);
    if (v7)
    {
      __break(1u);
    }

    v24 = v60;

    v26 = v24;
  }

  else
  {
    v26 = 0;
  }

  v23 = v26;
  if (v26)
  {
    v17 = v23;
    v18 = v23;
  }

  else
  {

    v19 = v62;
    v20 = v63;

    v8 = swift_allocObject();
    v9 = v19;
    v10 = v20;
    v11 = v30;
    v12 = v29;
    v21 = v8;
    v8[2] = v46;
    v8[3] = v9;
    v8[4] = v10;
    v22 = 0;
    if (v11 != 0 || v12 != 0)
    {
      v61[0] = 0;
      v61[1] = 0;
      v61[2] = v30;
      v61[3] = v29;
      v22 = v61;
    }

    v18 = swift_task_create();
  }

  sub_100011B5C();
  v16 = v13;

  return v16;
}

char *sub_10000EB08()
{
  v51 = 0;
  v40 = sub_10000F56C(&qword_100039630, &qword_10002CEA8);
  v35 = *(v40 - 8);
  v36 = v40 - 8;
  v7 = (*(v35 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v40);
  v39 = &v7 - v7;
  v33 = sub_10000F56C(&qword_100039618, &qword_10002CE50);
  v28 = *(v33 - 8);
  v29 = v33 - 8;
  v8 = (*(v28 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v33);
  v32 = &v7 - v8;
  v27 = sub_10000F56C(&qword_1000395F8, &unk_10002CDF0);
  v22 = *(v27 - 8);
  v23 = v27 - 8;
  v9 = (*(v22 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v27);
  v26 = &v7 - v9;
  v44 = sub_10000F56C(&unk_1000395E0, &qword_10002CD98);
  v18 = *(v44 - 8);
  v19 = v44 - 8;
  v10 = (*(v18 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v44);
  v43 = &v7 - v10;
  v17 = sub_10000F56C(&qword_1000395C0, &qword_10002CD38);
  v12 = *(v17 - 8);
  v13 = v17 - 8;
  v11 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v17);
  v1 = &v7 - v11;
  v16 = &v7 - v11;
  v51 = v0;
  v47 = 0;
  *&v0[OBJC_IVAR____TtC23SoundScapesViewServices21SoundScapesDataSource_demoPlayer] = 0;
  v2 = &v51[OBJC_IVAR____TtC23SoundScapesViewServices21SoundScapesDataSource_demoPlayerPeriodicObserver];
  *v2 = 0;
  *(v2 + 1) = 0;
  *(v2 + 2) = 0;
  *(v2 + 3) = 0;
  v3 = &v51[OBJC_IVAR____TtC23SoundScapesViewServices21SoundScapesDataSource_demoPlayerEndtimeObserver];
  *v3 = 0;
  *(v3 + 1) = 0;
  *(v3 + 2) = 0;
  *(v3 + 3) = 0;
  v15 = v51;
  v14 = OBJC_IVAR____TtC23SoundScapesViewServices21SoundScapesDataSource__playbackProgress;
  sub_1000054FC(0.0, v1);
  (*(v12 + 32))(&v15[v14], v16, v17);
  v21 = v51;
  v20 = OBJC_IVAR____TtC23SoundScapesViewServices21SoundScapesDataSource__selectedSoundScapes;
  sub_100006364(v47, v43);
  v46 = *(v18 + 32);
  v45 = v18 + 32;
  v46(&v21[v20], v43, v44);
  v25 = v51;
  v24 = OBJC_IVAR____TtC23SoundScapesViewServices21SoundScapesDataSource__dismiss;
  v34 = 1;
  sub_100006CE4(0, v26);
  (*(v22 + 32))(&v25[v24], v26, v27);
  v31 = v51;
  v30 = OBJC_IVAR____TtC23SoundScapesViewServices21SoundScapesDataSource__soundScapes;
  type metadata accessor for SoundScapesOption(v47);
  v4 = sub_10002A9D0();
  sub_100007628(v4, v32);
  (*(v28 + 32))(&v31[v30], v32, v33);
  v38 = v51;
  v37 = OBJC_IVAR____TtC23SoundScapesViewServices21SoundScapesDataSource__status;
  sub_100007FAC(v34, v39);
  (*(v35 + 32))(&v38[v37], v39, v40);
  v42 = v51;
  v41 = OBJC_IVAR____TtC23SoundScapesViewServices21SoundScapesDataSource__nowplayingSoundScapes;
  sub_100006364(v47, v43);
  v46(&v42[v41], v43, v44);
  v48 = v51;
  v5 = type metadata accessor for SoundScapesDataSource(v47);
  v50.receiver = v48;
  v50.super_class = v5;
  v49 = objc_msgSendSuper2(&v50, "init");
  _objc_retain(v49);
  v51 = v49;
  _objc_release(v49);
  return v49;
}

id sub_10000F0DC()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SoundScapesDataSource(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10000F374@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for SoundScapesDataSource(0);
  result = sub_100029F20();
  *a2 = result;
  return result;
}

id sub_10000F3B0@<X0>(uint64_t a1@<X0>, NSURL *a2@<X8>)
{
  sub_100029E00(a2);
  v6 = v3;
  v8 = [v2 initWithURL:?];
  _objc_release(v6);
  v4 = sub_100029E30();
  (*(*(v4 - 8) + 8))(a1);
  return v8;
}

uint64_t sub_10000F47C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5[1] = a3;
  v8 = a1;
  v9 = a2;
  v10 = a2;
  v6 = *(a2 - 8);
  v7 = a2 - 8;
  v5[0] = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(a1);
  v5[2] = v5 - v5[0];
  (*(v6 + 16))(v3);
  sub_100029F30();
  return (*(v6 + 8))(v8, v9);
}

uint64_t sub_10000F56C(uint64_t *a1, uint64_t *a2)
{
  v5 = *a1;
  if (!*a1)
  {
    TypeByMangledNameInContext2 = swift_getTypeByMangledNameInContext2();
    *a1 = TypeByMangledNameInContext2;
    return TypeByMangledNameInContext2;
  }

  return v5;
}

unint64_t type metadata accessor for SetActiveOptions(uint64_t a1)
{
  v5 = qword_100039790;
  if (!qword_100039790)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_100039790);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_10000F670()
{
  v2 = qword_100039640;
  if (!qword_100039640)
  {
    type metadata accessor for SetActiveOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100039640);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10000F6F0()
{
  v2 = qword_100039648;
  if (!qword_100039648)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_100039648);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_10000F794()
{
  v2 = qword_100039660;
  if (!qword_100039660)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_100039660);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_10000F7F8()
{
  _objc_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_10000F854(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t type metadata accessor for OperatingSystemVersion(uint64_t a1)
{
  v5 = qword_100039788;
  if (!qword_100039788)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_100039788);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_10000F950()
{
  v2 = qword_100039670;
  if (!qword_100039670)
  {
    sub_10000F9D8(&qword_100039668, &qword_10002CF08);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100039670);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10000F9D8(uint64_t *a1, uint64_t *a2)
{
  v5 = *a1;
  if (!*a1)
  {
    TypeByMangledNameInContextInMetadataState2 = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = TypeByMangledNameInContextInMetadataState2;
    return TypeByMangledNameInContextInMetadataState2;
  }

  return v5;
}

unint64_t sub_10000FA78()
{
  v2 = qword_100039680;
  if (!qword_100039680)
  {
    sub_10000F9D8(&qword_100039678, &unk_10002CF10);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100039680);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10000FB00()
{
  v2 = qword_100039688;
  if (!qword_100039688)
  {
    type metadata accessor for OperatingSystemVersion(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100039688);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10000FB80()
{
  v2 = qword_100039698;
  if (!qword_100039698)
  {
    sub_10000F9D8(&qword_100039690, &qword_10002D910);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100039698);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10000FC3C()
{
  v2 = qword_1000396A0;
  if (!qword_1000396A0)
  {
    sub_10000F9D8(&qword_100039678, &unk_10002CF10);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1000396A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10000FCC4()
{
  v2 = qword_1000396A8;
  if (!qword_1000396A8)
  {
    sub_10000F9D8(&qword_100039678, &unk_10002CF10);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1000396A8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10000FD5C()
{
  swift_unknownObjectRelease();
  _objc_release(*(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_10000FDB4(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_10000FE98;

  return sub_10000D32C(a1, v6, v7, v8, v9);
}

uint64_t sub_10000FE98()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_10000FFC0(uint64_t a1)
{
  v3 = sub_10002A600();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t type metadata accessor for SoundScapesDataSource(uint64_t a1)
{
  v2 = qword_100039748;
  if (!qword_100039748)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

unint64_t sub_10001012C(uint64_t a1)
{
  updated = sub_100010394(319);
  if (v1 <= 0x3F)
  {
    updated = sub_100010428(319);
    if (v2 <= 0x3F)
    {
      updated = sub_1000104CC(319);
      if (v3 <= 0x3F)
      {
        updated = sub_100010560(319);
        if (v4 <= 0x3F)
        {
          updated = sub_100010604(319);
          if (v5 <= 0x3F)
          {
            updated = swift_updateClassMetadata2();
            if (!updated)
            {
              return 0;
            }
          }
        }
      }
    }
  }

  return updated;
}

unint64_t sub_100010394(uint64_t a1)
{
  v5 = qword_100039758;
  if (!qword_100039758)
  {
    v4 = sub_100029F90();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_100039758);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_100010428(uint64_t a1)
{
  v5 = qword_100039760;
  if (!qword_100039760)
  {
    sub_10000F9D8(&qword_1000395D0, &qword_10002CD48);
    v4 = sub_100029F90();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_100039760);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_1000104CC(uint64_t a1)
{
  v5 = qword_100039768;
  if (!qword_100039768)
  {
    v4 = sub_100029F90();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_100039768);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_100010560(uint64_t a1)
{
  v5 = qword_100039770;
  if (!qword_100039770)
  {
    sub_10000F9D8(&qword_100039608, &qword_10002CE00);
    v4 = sub_100029F90();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_100039770);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_100010604(uint64_t a1)
{
  v5 = qword_100039778;
  if (!qword_100039778)
  {
    v4 = sub_100029F90();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_100039778);
      return v2;
    }
  }

  return v5;
}

__n128 sub_10001069C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1000106A8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFE && *(a1 + 16))
    {
      v5 = *a1 + 2147483646;
    }

    else
    {
      v4 = -1;
      if (*(a1 + 8) < &_mh_execute_header)
      {
        v4 = *(a1 + 8);
      }

      v2 = v4 - 1;
      if (v4 - 1 < 0)
      {
        v2 = -1;
      }

      v5 = v2;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1000107F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 > 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_100010ACC(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFC)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 3) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 252;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 4;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_100010C34(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFC)
  {
    v5 = ((a3 + 3) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFC)
  {
    v4 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

__n128 sub_100010E54(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  return result;
}

uint64_t sub_100010E68(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 24))
    {
      v3 = *a1;
    }

    else
    {
      v3 = -1;
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_100010F48(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 16) = 0;
    if (a3)
    {
      *(result + 24) = 1;
    }
  }

  else if (a3)
  {
    *(result + 24) = 0;
  }

  return result;
}

uint64_t sub_1000110F4(uint64_t a1)
{
  sub_10001184C();
  sub_1000118CC();
  return sub_10002AB40();
}

uint64_t sub_1000112F8(uint64_t a1, uint64_t a2)
{
  sub_10001184C();
  sub_1000118CC();
  return sub_10002AB30();
}

uint64_t sub_10001133C(uint64_t a1, uint64_t a2)
{
  sub_10001184C();
  sub_1000118CC();
  return sub_10002AB10();
}

uint64_t sub_100011380(uint64_t a1, uint64_t a2)
{
  sub_10001184C();
  sub_1000118CC();
  return sub_10002AB20();
}

void sub_10001155C(uint64_t a1@<X8>)
{
  nullsub_1();
  *a1 = v1;
  *(a1 + 8) = 0;
}

unint64_t sub_1000115E4()
{
  v2 = qword_100039798;
  if (!qword_100039798)
  {
    type metadata accessor for SetActiveOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100039798);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1000116A0()
{
  v2 = qword_1000397A0;
  if (!qword_1000397A0)
  {
    type metadata accessor for SetActiveOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1000397A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100011738()
{
  v2 = qword_1000397A8;
  if (!qword_1000397A8)
  {
    type metadata accessor for SetActiveOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1000397A8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1000117D0()
{
  v2 = qword_1000397B0;
  if (!qword_1000397B0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1000397B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10001184C()
{
  v2 = qword_1000397B8;
  if (!qword_1000397B8)
  {
    type metadata accessor for SetActiveOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1000397B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1000118CC()
{
  v2 = qword_1000397C0;
  if (!qword_1000397C0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1000397C0);
    return WitnessTable;
  }

  return v2;
}

void *sub_100011944(size_t a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    return swift_coroFrameAlloc();
  }

  else
  {
    return malloc(a1);
  }
}

void *sub_1000119C4(const void *a1, void *a2)
{
  v6 = sub_10002A600();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_10000F56C(&qword_1000396B8, &qword_10002CF40);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_100011AEC(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4)
{
  sub_10000F56C(&qword_100039850, &qword_10002D348);
  sub_100011B5C();
  return a2();
}

uint64_t sub_100011B70@<X0>(uint64_t a1@<X0>, uint64_t *a5@<X5>, uint64_t a6@<X6>, uint64_t *a7@<X8>)
{
  if (!a1)
  {
    sub_10002A930();
    __break(1u);
  }

  v8 = *a5;
  v9 = a5[1];

  v10 = swift_allocObject();
  v10[2] = a6;
  v10[3] = v8;
  v10[4] = v9;
  result = swift_task_create();
  *a7 = result;
  return result;
}

uint64_t sub_100011D30(uint64_t a1, int *a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_100011E44;

  return v6(a1);
}

uint64_t sub_100011E44()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_100011FB8(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 24);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_10000FE98;

  return sub_100011D30(a1, v6);
}

uint64_t sub_1000120F4()
{

  _objc_release(*(v0 + 24));
  return swift_deallocObject();
}

uint64_t sub_100012150(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_1000121B4()
{
  v2 = qword_100039828;
  if (!qword_100039828)
  {
    sub_10000F9D8(&qword_100039608, &qword_10002CE00);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100039828);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10001223C()
{
  v2 = qword_100039830;
  if (!qword_100039830)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100039830);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1000122B8()
{
  _objc_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_100012314(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_100012378(uint64_t result)
{
  v3 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {

    if (v3 > 0)
    {

      sub_10002A320();
      v1 = sub_10002A5A0();

      *(v1 + 16) = v3;

      v2 = v1;
    }

    else
    {
      v2 = &_swiftEmptyArrayStorage;
    }

    sub_10002A320();
    return v2;
  }

  return result;
}

unint64_t sub_100012468()
{
  v2 = qword_100039838;
  if (!qword_100039838)
  {
    sub_10002A320();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100039838);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1000124E8()
{
  v2 = qword_100039848;
  if (!qword_100039848)
  {
    sub_10000F9D8(&qword_100039840, &qword_10002D340);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100039848);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10001259C()
{
  v2 = qword_100039858;
  if (!qword_100039858)
  {
    sub_10000F9D8(&qword_1000396B0, &qword_10002CF30);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100039858);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100012658(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_1000126E8()
{
  v2 = qword_100039870;
  if (!qword_100039870)
  {
    sub_10000F9D8(&qword_100039860, &qword_10002D350);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100039870);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100012770()
{
  v2 = qword_100039880;
  if (!qword_100039880)
  {
    sub_10000F9D8(&qword_100039878, &qword_10002D360);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100039880);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1000127F8()
{
  v2 = qword_100039890;
  if (!qword_100039890)
  {
    sub_10000F9D8(&qword_100039868, &qword_10002D358);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100039890);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100012880()
{
  v2 = qword_100039898;
  if (!qword_100039898)
  {
    type metadata accessor for SoundScapesOption(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100039898);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100012900()
{
  v2 = qword_1000398A0;
  if (!qword_1000398A0)
  {
    sub_10000F9D8(&qword_100039608, &qword_10002CE00);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1000398A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100012988()
{
  v2 = qword_1000398A8;
  if (!qword_1000398A8)
  {
    type metadata accessor for SoundScapesOption(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1000398A8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100012A08()
{
  v2 = qword_1000398B0;
  if (!qword_1000398B0)
  {
    sub_10000F9D8(&qword_100039608, &qword_10002CE00);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1000398B0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100012ADC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_100012B6C()
{
  v2 = qword_1000398C8;
  if (!qword_1000398C8)
  {
    sub_10000F9D8(&qword_1000398B8, &qword_10002D370);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1000398C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100012C54()
{
  v2 = qword_1000398D8;
  if (!qword_1000398D8)
  {
    sub_10000F9D8(&qword_1000398D0, &unk_10002D380);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1000398D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100012CDC()
{
  v2 = qword_1000398E0;
  if (!qword_1000398E0)
  {
    sub_10000F9D8(&qword_1000398D0, &unk_10002D380);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1000398E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100012D64()
{
  v2 = qword_1000398E8;
  if (!qword_1000398E8)
  {
    sub_10000F9D8(&qword_1000396B0, &qword_10002CF30);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1000398E8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100012DEC()
{
  v2 = qword_1000398F0;
  if (!qword_1000398F0)
  {
    sub_10000F9D8(&qword_1000398B8, &qword_10002D370);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1000398F0);
    return WitnessTable;
  }

  return v2;
}

void *sub_100012E74(void *a1, void *a2)
{
  v4 = *a1;

  result = a2;
  *a2 = v4;
  return result;
}

void *sub_100012EAC(void *a1, void *a2)
{
  v4 = *a1;

  result = a2;
  *a2 = v4;
  return result;
}

unint64_t sub_100012EE4()
{
  v2 = qword_1000398F8;
  if (!qword_1000398F8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1000398F8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t type metadata accessor for ReadingOptions(uint64_t a1)
{
  v5 = qword_100039900;
  if (!qword_100039900)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_100039900);
      return v2;
    }
  }

  return v5;
}

uint64_t sub_100012FE0()
{
  v2 = *v0;

  return v2;
}

uint64_t sub_100013018()
{
  v2 = *(v0 + 16);

  return v2;
}

uint64_t sub_100013050()
{
  v2 = *(v0 + 32);

  return v2;
}

uint64_t sub_100013088()
{
  v2 = *(v0 + 48);

  return v2;
}

uint64_t sub_1000130C0(uint64_t *a1, uint64_t *a2)
{

  v3 = sub_10002A4A0();

  return v3 & 1;
}

uint64_t sub_100013154(uint64_t a1, uint64_t a2)
{
  v18[2] = a1;
  v18[3] = a2;

  v18[0] = sub_10002A490("identifier", 0xAuLL, 1);
  v18[1] = v2;
  v17[2] = a1;
  v17[3] = a2;
  v14 = sub_10002A4A0();
  sub_100012570(v18);
  if (v14)
  {

    v19 = 0;
    v11 = 0;
LABEL_10:

    return v11;
  }

  v17[0] = sub_10002A490("name", 4uLL, 1);
  v17[1] = v3;
  v16[2] = a1;
  v16[3] = a2;
  v10 = sub_10002A4A0();
  sub_100012570(v17);
  if (v10)
  {

    v19 = 1;
    v11 = 1;
    goto LABEL_10;
  }

  v16[0] = sub_10002A490("imageFile", 9uLL, 1);
  v16[1] = v4;
  v15[2] = a1;
  v15[3] = a2;
  v9 = sub_10002A4A0();
  sub_100012570(v16);
  if (v9)
  {

    v19 = 2;
    v11 = 2;
    goto LABEL_10;
  }

  v15[0] = sub_10002A490("audioFile", 9uLL, 1);
  v15[1] = v5;
  v8 = sub_10002A4A0();
  sub_100012570(v15);
  if (v8)
  {

    v19 = 3;
    v11 = 3;
    goto LABEL_10;
  }

  return 4;
}

unint64_t sub_100013494()
{
  v2 = qword_100039970;
  if (!qword_100039970)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100039970);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10001352C(char a1)
{
  switch(a1)
  {
    case 0:
      return sub_10002A490("identifier", 0xAuLL, 1);
    case 1:
      return sub_10002A490("name", 4uLL, 1);
    case 2:
      return sub_10002A490("imageFile", 9uLL, 1);
  }

  return sub_10002A490("audioFile", 9uLL, 1);
}

uint64_t sub_10001366C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100013154(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000136B8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100013430();
  *a1 = result;
  return result;
}

unint64_t sub_100013714()
{
  v2 = qword_100039978;
  if (!qword_100039978)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100039978);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1000137C0(uint64_t a1)
{
  v24 = a1;
  v43 = 0;
  v42 = 0;
  v35 = sub_10000F56C(&unk_1000399A0, &unk_10002D620);
  v25 = *(v35 - 8);
  v26 = v35 - 8;
  v27 = (*(v25 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v24);
  v30 = v8 - v27;
  v43 = v2;
  v42 = v1;
  v28 = v2[3];
  v29 = v2[4];
  sub_1000059D0(v2, v28);
  sub_100013714();
  sub_10002AA70();
  v3 = v32;
  v33 = *v31;
  v34 = v31[1];

  v41 = 0;
  sub_10002A960();
  v36 = v3;
  v37 = v3;
  if (v3)
  {
    v10 = v37;

    result = (*(v25 + 8))(v30, v35);
    v11 = v10;
  }

  else
  {

    v4 = v36;
    v20 = v31[2];
    v21 = v31[3];

    v40 = 1;
    sub_10002A960();
    v22 = v4;
    v23 = v4;
    if (v4)
    {
      v9 = v23;

      result = (*(v25 + 8))(v30, v35);
      v11 = v9;
    }

    else
    {

      v5 = v22;
      v16 = v31[4];
      v17 = v31[5];

      v39 = 2;
      sub_10002A960();
      v18 = v5;
      v19 = v5;
      if (v5)
      {
        v8[1] = v19;

        return (*(v25 + 8))(v30, v35);
      }

      else
      {

        v6 = v18;
        v12 = v31[6];
        v13 = v31[7];

        v38 = 3;
        sub_10002A960();
        v14 = v6;
        v15 = v6;
        if (v6)
        {
          v8[0] = v15;
        }

        return (*(v25 + 8))(v30, v35);
      }
    }
  }

  return result;
}

void sub_100013BAC(void *a1@<X0>, void *a2@<X8>)
{
  v35 = a2;
  v36 = a1;
  v53 = 0;
  v37 = sub_10000F56C(&qword_100039998, &qword_10002D618);
  v38 = *(v37 - 8);
  v39 = v37 - 8;
  v40 = (*(v38 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v36);
  v41 = v12 - v40;
  v53 = v2;
  v43 = v2[3];
  v44 = v2[4];
  sub_1000059D0(v2, v43);
  sub_100013714();
  v3 = v42;
  sub_10002AA60();
  v45 = v3;
  v46 = v3;
  if (v3)
  {
    v14 = v46;
    v15 = 0;
    v13 = 0;
    v12[1] = v46;
    sub_1000051D8(v36);
    if (v13)
    {
      sub_100012570(v54);
    }

    if ((v13 & 2) != 0)
    {
      sub_100012570(v55);
    }

    if ((v13 & 4) != 0)
    {
      sub_100012570(v56);
    }
  }

  else
  {
    v52 = 0;
    v4 = sub_10002A950();
    v31 = 0;
    v32 = v4;
    v33 = v5;
    v34 = 0;
    v54[0] = v4;
    v54[1] = v5;
    v51 = 1;
    v6 = sub_10002A950();
    v27 = 0;
    v28 = v6;
    v29 = v7;
    v30 = 0;
    v55[0] = v6;
    v55[1] = v7;
    v50 = 2;
    v8 = sub_10002A950();
    v23 = 0;
    v24 = v8;
    v25 = v9;
    v26 = 0;
    v56[0] = v8;
    v56[1] = v9;
    v49 = 3;
    v10 = sub_10002A950();
    v19 = 0;
    v20 = v10;
    v21 = v11;
    v22 = 0;
    v16 = v54;
    v56[2] = v10;
    v56[3] = v11;
    (*(v38 + 8))(v41, v37);
    v17 = __dst;
    v18 = 64;
    memcpy(__dst, v16, sizeof(__dst));
    sub_100014854(__dst, &v47);
    sub_1000051D8(v36);
    sub_100014904(v16);
    memcpy(v35, v17, v18);
  }
}

void sub_1000141D4(void *a1@<X0>, void *a2@<X8>)
{
  sub_100013BAC(a1, __src);
  if (!v2)
  {
    memcpy(a2, __src, 0x40uLL);
  }
}

uint64_t sub_1000142B8(const void *a1, const void *a2)
{
  memcpy(__dst, a1, sizeof(__dst));
  memcpy(v5, a2, sizeof(v5));
  return sub_1000130C0(__dst, v5) & 1;
}

uint64_t sub_100014350(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFF && *(a1 + 64))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (*(a1 + 8) < &_mh_execute_header)
      {
        v3 = *(a1 + 8);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_100014490(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 - 1;
    }
  }

  return result;
}

unint64_t sub_1000146B0()
{
  v2 = qword_100039980;
  if (!qword_100039980)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100039980);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100014744()
{
  v2 = qword_100039988;
  if (!qword_100039988)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100039988);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1000147D8()
{
  v2 = qword_100039990;
  if (!qword_100039990)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100039990);
    return WitnessTable;
  }

  return v2;
}

void *sub_100014854(void *a1, void *a2)
{
  *a2 = *a1;
  v3 = a1[1];

  a2[1] = v3;
  a2[2] = a1[2];
  v4 = a1[3];

  a2[3] = v4;
  a2[4] = a1[4];
  v6 = a1[5];

  a2[5] = v6;
  a2[6] = a1[6];
  v8 = a1[7];

  result = a2;
  a2[7] = v8;
  return result;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_100014904(void *a1)
{
}

uint64_t sub_100014954(char *a1)
{
  swift_allocObject();
  v5 = sub_100016CD0(a1);
  if (v3)
  {
    return v2;
  }

  else
  {
    return v5;
  }
}

id sub_1000149E0()
{
  sub_10000F56C(&qword_1000399B0, &qword_10002D630);
  v2 = sub_100017510();
  v0 = sub_100017574();
  result = sub_100014A4C(v2, v0);
  qword_10003B1D0 = result;
  return result;
}

uint64_t *sub_100014AA0()
{
  if (qword_100039540 != -1)
  {
    swift_once();
  }

  return &qword_10003B1D0;
}

void *sub_100014B00()
{
  v1 = *sub_100014AA0();
  _objc_retain(v1);
  return v1;
}

uint64_t sub_100014B38()
{
  swift_beginAccess();
  v2 = *(v0 + 48);
  swift_endAccess();
  return v2;
}

uint64_t sub_100014B84(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 48) = a1;
  return swift_endAccess();
}

uint64_t sub_100014C6C@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC23SoundScapesViewServices17SoundScapesOption_timePreviewLastPlayed);
  swift_beginAccess();
  sub_1000175D8(v3, a1);
  return swift_endAccess();
}

uint64_t sub_100014CC8(uint64_t a1)
{
  v8 = a1;
  v4 = (*(*(sub_10000F56C(&qword_1000399C8, &qword_10002D638) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v8);
  v5 = &v4 - v4;
  sub_1000175D8(v2, &v4 - v4);
  v6 = (v1 + OBJC_IVAR____TtC23SoundScapesViewServices17SoundScapesOption_timePreviewLastPlayed);
  v7 = &v9;
  swift_beginAccess();
  sub_100017700(v5, v6);
  swift_endAccess();
  return sub_100017928(v8);
}

uint64_t sub_100014DFC()
{
  v2 = *(v0 + 16);

  return v2;
}

uint64_t sub_100014E40@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC23SoundScapesViewServices17SoundScapesOption_artworkAddress;
  v2 = sub_100029E30();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

id sub_100014EAC()
{
  v30 = 0;
  v29 = 0;
  v28 = 0;
  v27 = 0;
  v17 = sub_100029E30();
  v18 = *(v17 - 8);
  v19 = v17 - 8;
  v20 = (*(v18 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v17);
  v21 = v4 - v20;
  v30 = v0;
  v25 = *sub_100014AA0();
  _objc_retain(v25);
  v22 = *(v0 + 16);
  v24 = *(v0 + 24);

  v23 = sub_10002A420();
  v26 = [v25 objectForKey:?];
  _objc_release(v23);

  _objc_release(v25);
  if (v26)
  {
    v15 = v26;
    v27 = v26;
    return v26;
  }

  else
  {
    v1 = v21;
    v10 = sub_100017574();
    (*(v18 + 16))(v1, v16 + OBJC_IVAR____TtC23SoundScapesViewServices17SoundScapesOption_artworkAddress, v17);
    v11 = sub_100029E20();
    v12 = v2;
    (*(v18 + 8))(v21, v17);
    v13 = sub_100015180(v11, v12);
    v29 = v13;
    _objc_retain(v13);
    if (v13)
    {
      v9 = v13;
      v8 = v13;
      v28 = v13;
      v7 = *sub_100014AA0();
      _objc_retain(v7);
      v4[1] = *(v16 + 16);
      v6 = *(v16 + 24);

      v5 = sub_10002A420();
      [v7 setObject:v8 forKey:?];
      _objc_release(v5);

      _objc_release(v7);
      _objc_release(v8);
    }

    return v13;
  }
}

uint64_t sub_1000151C8@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC23SoundScapesViewServices17SoundScapesOption_audioAddress;
  v2 = sub_100029E30();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_100015234()
{
  v2 = *(v0 + OBJC_IVAR____TtC23SoundScapesViewServices17SoundScapesOption_artistName);

  return v2;
}

uint64_t sub_1000152FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v30 = a1;
  v47 = a2;
  v31 = a3;
  v46 = a4;
  v42 = a5;
  v41 = a6;
  v38 = a7;
  v37 = a8;
  v56 = 0;
  v57 = 0;
  v54 = 0;
  v55 = 0;
  v53 = 0;
  v52 = 0;
  v50 = 0;
  v51 = 0;
  v49 = 0;
  v27[1] = 0;
  v43 = sub_100029E30();
  v39 = *(v43 - 8);
  v40 = v43 - 8;
  v28 = (v39[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v34 = v27 - v28;
  v56 = v9;
  v57 = v10;
  v54 = v11;
  v55 = v12;
  v53 = v13;
  v52 = v14;
  v50 = v15;
  v51 = v16;
  v49 = v8;
  v8[6] = 0;
  v29 = OBJC_IVAR____TtC23SoundScapesViewServices17SoundScapesOption_timePreviewLastPlayed;
  v17 = sub_100029E90();
  (*(*(v17 - 8) + 56))(v8 + v29, 1);

  v18 = v47;
  v8[2] = v30;
  v8[3] = v18;

  v19 = v34;
  v20 = v39;
  v21 = v42;
  v22 = v43;
  v23 = v46;
  v8[4] = v31;
  v8[5] = v23;
  v33 = v20[2];
  v32 = v20 + 2;
  v33(v19, v21, v22);
  v36 = v39[4];
  v35 = v39 + 4;
  v36(v8 + OBJC_IVAR____TtC23SoundScapesViewServices17SoundScapesOption_artworkAddress, v34, v43);
  v33(v34, v41, v43);
  v36(v8 + OBJC_IVAR____TtC23SoundScapesViewServices17SoundScapesOption_audioAddress, v34, v43);

  v24 = v37;
  v25 = (v8 + OBJC_IVAR____TtC23SoundScapesViewServices17SoundScapesOption_artistName);
  *v25 = v38;
  v25[1] = v24;

  v45 = v39[1];
  v44 = v39 + 1;
  v45(v41, v43);
  v45(v42, v43);

  return v48;
}

uint64_t sub_10001560C(uint64_t a1, uint64_t a2)
{

  v3 = sub_10002A4A0();

  return v3 & 1;
}

uint64_t sub_1000156A8(uint64_t a1, uint64_t a2)
{

  v3 = sub_10002A480();

  return v3 & 1;
}

uint64_t sub_100015744(uint64_t a1)
{

  sub_10002A4B0();
}

unint64_t sub_1000157A4()
{
  v69 = 0;
  v91 = 0;
  v96 = 0;
  v95 = 0;
  v90 = 0;
  v89 = 0;
  v88 = 0;
  v93 = 0;
  v92 = 0;
  v86 = 0;
  v70 = sub_100029E30();
  v71 = *(v70 - 8);
  v76 = v71;
  v72 = v71;
  v73 = *(v71 + 64);
  __chkstk_darwin(v70 - 8);
  v75 = (v73 + 15) & 0xFFFFFFFFFFFFFFF0;
  v74 = &v25 - v75;
  v1 = __chkstk_darwin(&v25 - v75);
  v81 = &v25 - v75;
  v77 = &v25 - v75;
  v91 = v0;
  v78 = *(v76 + 16);
  v79 = (v76 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v78(&v25 - v75, v0 + OBJC_IVAR____TtC23SoundScapesViewServices17SoundScapesOption_artworkAddress, v1);
  sub_100016050();
  v2 = v80;
  v3 = sub_100029E40();
  v82 = v2;
  v83 = v3;
  v84 = v4;
  v85 = v2;
  if (v2)
  {
    *(&v27 + 1) = v85;
    v28 = 0;
    v29 = 0;
    (*(v72 + 8))(v77, v70);

    v65 = v28;
    v66 = 0xF000000000000000;
    v67 = v29;
  }

  else
  {
    v64 = v84;
    v63 = v83;
    (*(v72 + 8))(v77, v70);
    v65 = v63;
    v66 = v64;
    v67 = v82;
  }

  v38 = v67;
  v42 = v66;
  v41 = v65;
  v95 = v65;
  v96 = v66;
  v55 = 0;
  sub_1000179D0();

  sub_100017A34(v41, v42);
  v39 = &v25;
  __chkstk_darwin(&v25);
  v5 = v41;
  *(&v25 - 4) = v68;
  *(&v25 - 3) = v5;
  *&v24 = v6;
  v43 = sub_10001635C(sub_100017AF8, (&v25 - 6));
  v40 = v43;

  sub_100017B08(v41, v42);
  v90 = v43;
  v52 = sub_100017BCC();
  v47 = v68[2];
  v48 = v68[3];

  v44 = v68[4];
  v45 = v68[5];

  sub_100017C30();
  (v78)(v74, v68 + OBJC_IVAR____TtC23SoundScapesViewServices17SoundScapesOption_artworkAddress, v70);
  v46 = sub_1000163A4(v74, v7);
  v57 = 1;
  v8 = sub_10002A490("Apple", 5uLL, 1);
  v51 = sub_100016458(v47, v48, v44, v45, 17, v46, v8, v9);
  v49 = v51;
  v89 = v51;
  sub_100017C94();
  v54 = v57;
  v53 = sub_10002A9D0();
  v50 = v10;
  v11 = v51;
  *v50 = v51;
  sub_10001D4F0();
  v12.value = v55;
  *&v24 = v55;
  v13.value = 2;
  v97.is_nil = v55;
  v98.value.super.isa = 2;
  v98.is_nil = v54;
  isa = sub_10002A6F0(v97, v98, v13, v54, v12, v57, v14, v24, v25, SHIDWORD(v25), v26, v27).super.super.isa;
  v56 = isa;
  v88 = isa;
  v94 = v55;
  v58 = objc_opt_self();
  v15 = isa;
  v87 = v94;
  v62 = [v58 archivedDataWithRootObject:isa requiringSecureCoding:v57 error:&v87];
  v59 = v62;
  v60 = v87;
  v16 = v87;
  v17 = v94;
  v94 = v60;

  swift_unknownObjectRelease();
  if (v62)
  {
    v37 = v59;
    v30 = v59;
    v35 = v38;
    v33 = sub_100029E60();
    v34 = v18;
    v92 = v33;
    v93 = v18;

    sub_100017CF8();

    sub_100017A7C(v33, v34);
    v19 = v40;
    v31 = &v25;
    __chkstk_darwin(v33);
    v20 = v34;
    *(&v25 - 4) = v68;
    *(&v25 - 3) = v21;
    *&v24 = v20;
    *(&v24 + 1) = v22;
    v32 = sub_100016704(sub_100017D5C, (&v25 - 6));

    sub_100017B50(v33, v34);

    v86 = v32;
    sub_100017B50(v33, v34);

    sub_100017B08(v41, v42);
    v36 = v35;
    return v32;
  }

  else
  {
    v25 = v94;
    v26 = sub_100029DF0();

    swift_willThrow();
    sub_100017B08(v41, v42);
    return v27;
  }
}

uint64_t sub_100016050()
{
  sub_100019470(0);

  return 0;
}

void sub_100016080(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v31 = a1;
  v25 = a2;
  v32 = a3;
  v33 = a4;
  v37 = 0;
  v36 = 0;
  v34 = 0;
  v35 = 0;
  v20 = sub_100029E30();
  v21 = *(v20 - 8);
  v22 = v20 - 8;
  v23 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v31);
  v24 = &v12 - v23;
  v37 = v4;
  v36 = v5;
  v34 = v6;
  v35 = v7;
  swift_getObjectType();
  v26 = *(v25 + 32);
  v27 = *(v25 + 40);

  v28 = sub_10002A420();

  [v31 setTitle:v28];
  _objc_release(v28);
  swift_getObjectType();
  sub_10002A490("Apple", 5uLL, 1);
  v29 = v8;
  v30 = sub_10002A420();

  [v31 setSubtitle:v30];
  _objc_release(v30);
  swift_getObjectType();
  sub_100017A34(v32, v33);
  if ((v33 & 0xF000000000000000) == 0xF000000000000000)
  {
    v17 = 0;
  }

  else
  {
    v18 = v32;
    v19 = v33;
    v14 = v33;
    v15 = v32;
    isa = sub_100029E50().super.isa;
    sub_100017B50(v15, v14);
    v17 = isa;
  }

  v9 = v24;
  [v31 setArtworkImageData:v17];
  _objc_release(v12);
  swift_getObjectType();
  (*(v21 + 16))(v9, v25 + OBJC_IVAR____TtC23SoundScapesViewServices17SoundScapesOption_artworkAddress, v20);
  sub_100029E00(v10);
  v13 = v11;
  (*(v21 + 8))(v24, v20);
  [v31 setArtworkImageURL:v13];
  _objc_release(v13);
}

id sub_1000163A4@<X0>(uint64_t a1@<X0>, NSURL *a2@<X8>)
{
  sub_100029E00(a2);
  v5 = v2;
  v7 = [swift_getObjCClassFromMetadata() imageWithURL:v2];
  _objc_release(v5);
  v3 = sub_100029E30();
  (*(*(v3 - 8) + 8))(a1);
  return v7;
}

void sub_1000164D0(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  swift_getObjectType();
  [a1 setType:1];
  swift_getObjectType();

  v9 = sub_10002A420();

  sub_10002A490("NSKeyedArchive", 0xEuLL, 1);

  v8 = sub_10002A420();
  _objc_retain(v8);

  _objc_release(v8);
  sub_100017A7C(a3, a4);
  isa = sub_100029E50().super.isa;
  sub_100017B50(a3, a4);
  [a1 setSessionIdentifier:v9 type:v8 data:isa];
  _objc_release(isa);
  _objc_release(v8);
  _objc_release(v9);
  swift_getObjectType();
  sub_10002A490("com.apple.SoundScapes", 0x15uLL, 1);
  v10 = sub_10002A420();

  [a1 setBundleIdentifier:v10];
  _objc_release(v10);
  swift_getObjectType();
  _objc_retain(a5);
  [a1 setDisplayProperties:a5];
  _objc_release(a5);
}

uint64_t sub_10001674C()
{
  v17 = 0;
  v1 = sub_10000F56C(&qword_1000399C8, &qword_10002D638);
  v11 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v12 = &v7 - v11;
  v13 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v7 - v11);
  v14 = &v7 - v13;
  v17 = v0;
  result = swift_beginAccess();
  v4 = *(v0 + 48);
  v15 = v4 + 1;
  if (__OFADD__(v4, 1))
  {
    __break(1u);
  }

  else
  {
    *(v10 + 48) = v15;
    swift_endAccess();
    sub_100029E80();
    v6 = sub_100029E90();
    (*(*(v6 - 8) + 56))(v14, 0, 1);
    sub_1000175D8(v14, v12);
    v8 = (v10 + OBJC_IVAR____TtC23SoundScapesViewServices17SoundScapesOption_timePreviewLastPlayed);
    v9 = &v16;
    swift_beginAccess();
    sub_100017700(v12, v8);
    swift_endAccess();
    return sub_100017928(v14);
  }

  return result;
}

uint64_t sub_1000168F0()
{
  sub_100012570(v0 + 16);
  sub_100012570(v0 + 32);
  sub_100017928(v0 + OBJC_IVAR____TtC23SoundScapesViewServices17SoundScapesOption_timePreviewLastPlayed);
  v2 = OBJC_IVAR____TtC23SoundScapesViewServices17SoundScapesOption_artworkAddress;
  v3 = sub_100029E30();
  v4 = *(*(v3 - 8) + 8);
  v4(v0 + v2);
  (v4)(v0 + OBJC_IVAR____TtC23SoundScapesViewServices17SoundScapesOption_audioAddress, v3);
  sub_100012570(v0 + OBJC_IVAR____TtC23SoundScapesViewServices17SoundScapesOption_artistName);
  return v5;
}

uint64_t sub_100016A30()
{
  type metadata accessor for SoundScapesOption(0);
  sub_100012988();
  return sub_10002A890();
}

uint64_t sub_100016BC0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100014DFC();
  *a1 = result;
  a1[1] = v2;
  return result;
}

uint64_t sub_100016CA4()
{
  v2 = *(v0 + 16);

  return v2;
}

uint64_t sub_100016CD0(char *a1)
{
  v79 = a1;
  v70 = 0;
  v91 = 0;
  v90 = 0;
  v89 = 0;
  v88 = 0;
  v87 = 0;
  v85 = 0;
  v84 = 0;
  v83 = 0;
  v78 = sub_100029E30();
  v71 = v78;
  v72 = *(v78 - 8);
  v77 = v72;
  v73 = v72;
  v74 = *(v72 + 64);
  __chkstk_darwin(0);
  v76 = (v74 + 15) & 0xFFFFFFFFFFFFFFF0;
  v75 = v22 - v76;
  __chkstk_darwin(v2);
  v80 = v22 - v76;
  v91 = v3;
  v90 = v1;
  sub_100017E60();
  (*(v77 + 16))(v80, v79, v78);
  v81 = sub_100017EC4(v80);
  if (v81)
  {
    v67 = v81;
    v56 = v81;
    v58 = v68;
    v89 = v81;
    sub_10002A490("Info.json", 9uLL, 1);
    v57 = v4;
    sub_100029E10();

    sub_100016050();
    v5 = v58;
    v6 = sub_100029E40();
    v59 = v5;
    v60 = v6;
    v61 = v7;
    v62 = v5;
    if (v5)
    {
      v24 = v62;
      (*(v73 + 8))(v75, v71, 0);

      v65 = v24;
      v66 = v69;
    }

    else
    {
      v51 = v61;
      v50 = v60;
      v53 = 0;
      v46 = *(v73 + 8);
      v47 = (v73 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v46(v75, v71);
      v87 = v50;
      v88 = v51;
      sub_100029DB0();
      v48 = sub_100029DA0();
      v52 = sub_10000F56C(&qword_100039A18, &qword_10002D640);
      v49 = v52;
      sub_100017FA8();
      v8 = v53;
      sub_100029D90();
      v54 = v8;
      v55 = v8;
      if (v8)
      {
        v23 = v55;

        sub_100017B50(v50, v51);

        v65 = v23;
        v66 = v69;
      }

      else
      {
        v43 = 0;

        v37 = v86;
        v27 = v86;
        v85 = v86;
        v30 = 1;
        sub_10002A490("ARTIST_NAME", 0xBuLL, 1);
        v28 = v9;
        v34 = sub_10002A420();

        sub_10002A490("Apple", 5uLL, v30);
        v29 = v10;
        v33 = sub_10002A420();

        sub_10002A490("SSLocalizedAssets", 0x11uLL, v30);
        v31 = v11;
        v32 = sub_10002A420();

        v35 = [v56 localizedStringForKey:v34 value:v33 table:v32];

        v38 = sub_10002A430();
        v39 = v12;
        v36 = v12;
        v83 = v38;
        v84 = v12;

        v82 = v37;
        v13 = v56;

        v40 = v22;
        __chkstk_darwin(v38);
        v14 = v79;
        v41 = &v22[-6];
        v22[-4] = v56;
        v22[-3] = v14;
        v22[-2] = v15;
        v22[-1] = v16;
        v42 = type metadata accessor for SoundScapesOption(0);
        v17 = sub_100018588();
        v18 = v43;
        v20 = sub_10001CC0C(sub_100018550, v41, v49, v42, &type metadata for Never, v17, &protocol witness table for Never, v19);
        v44 = v18;
        v45 = v20;
        if (!v18)
        {
          v25 = v45;
          v26 = 0;

          *(v69 + 16) = v25;

          sub_100017B50(v50, v51);

          v46(v79, v71);
          return v69;
        }

        v22[3] = 0;

        v22[4] = type metadata accessor for SoundScapesOptionsManager();
        swift_deallocPartialClassInstance();
        __break(1u);
      }
    }
  }

  else
  {
    sub_100017F04();
    v63 = 0;
    v64 = swift_allocError();
    swift_willThrow();
    v65 = v64;
    v66 = v69;
  }

  v22[0] = v66;
  v22[2] = v65;
  v22[1] = type metadata accessor for SoundScapesOptionsManager();
  swift_deallocPartialClassInstance();
  return (*(v73 + 8))(v79, v71);
}

unint64_t sub_100017510()
{
  v2 = qword_1000399B8;
  if (!qword_1000399B8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1000399B8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_100017574()
{
  v2 = qword_1000399C0;
  if (!qword_1000399C0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1000399C0);
    return ObjCClassMetadata;
  }

  return v2;
}

void *sub_1000175D8(const void *a1, void *a2)
{
  v6 = sub_100029E90();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_10000F56C(&qword_1000399C8, &qword_10002D638);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

void *sub_100017700(const void *a1, void *a2)
{
  v7 = sub_100029E90();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if ((v9)(a2, 1))
  {
    if (v9(a1, 1, v7))
    {
      v3 = sub_10000F56C(&qword_1000399C8, &qword_10002D638);
      memcpy(a2, a1, *(*(v3 - 8) + 64));
    }

    else
    {
      (*(v8 + 32))(a2, a1, v7);
      (*(v8 + 56))(a2, 0, 1, v7);
    }
  }

  else if (v9(a1, 1, v7))
  {
    (*(v8 + 8))(a2, v7);
    v2 = sub_10000F56C(&qword_1000399C8, &qword_10002D638);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v8 + 40))(a2, a1, v7);
  }

  return a2;
}

uint64_t sub_100017928(uint64_t a1)
{
  v3 = sub_100029E90();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t sub_1000179D0()
{
  v2 = qword_1000399D0;
  if (!qword_1000399D0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1000399D0);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_100017A34(uint64_t result, unint64_t a2)
{
  if ((a2 & 0xF000000000000000) != 0xF000000000000000)
  {
    return sub_100017A7C(result, a2);
  }

  return result;
}

uint64_t sub_100017A7C(uint64_t result, unint64_t a2)
{
  v3 = (a2 >> 62) & 3;
  if (v3 == 1)
  {
  }

  if (v3 == 2)
  {
  }

  return v2;
}

uint64_t sub_100017B08(uint64_t result, unint64_t a2)
{
  if ((a2 & 0xF000000000000000) != 0xF000000000000000)
  {
    return sub_100017B50(result, a2);
  }

  return result;
}

uint64_t sub_100017B50(uint64_t result, unint64_t a2)
{
  v3 = (a2 >> 62) & 3;
  if (v3 == 1)
  {
  }

  if (v3 == 2)
  {
  }

  return v2;
}

unint64_t sub_100017BCC()
{
  v2 = qword_1000399D8;
  if (!qword_1000399D8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1000399D8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_100017C30()
{
  v2 = qword_1000399E0;
  if (!qword_1000399E0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1000399E0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_100017C94()
{
  v2 = qword_1000399E8;
  if (!qword_1000399E8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1000399E8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_100017CF8()
{
  v2 = qword_1000399F0;
  if (!qword_1000399F0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1000399F0);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t type metadata accessor for SoundScapesOption(uint64_t a1)
{
  v2 = qword_100039A60;
  if (!qword_100039A60)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

unint64_t sub_100017DE4()
{
  v2 = qword_100039A00;
  if (!qword_100039A00)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100039A00);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100017E60()
{
  v2 = qword_100039A08;
  if (!qword_100039A08)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_100039A08);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_100017F04()
{
  v2 = qword_100039A10;
  if (!qword_100039A10)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100039A10);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100017FA8()
{
  v2 = qword_100039A20;
  if (!qword_100039A20)
  {
    sub_10000F9D8(&qword_100039A18, &qword_10002D640);
    sub_100018040();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100039A20);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100018040()
{
  v2 = qword_100039A28;
  if (!qword_100039A28)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100039A28);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1000180B8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v50 = a6;
  v20[1] = a1;
  v28 = a2;
  v48 = a4;
  v49 = a5;
  v63 = 0;
  v62 = 0;
  v61 = 0;
  v60 = 0;
  v58 = 0;
  v59 = 0;
  v56 = 0;
  v57 = 0;
  v37 = 0;
  v51 = sub_100029E30();
  v35 = *(v51 - 8);
  v36 = v51 - 8;
  v23 = *(v35 + 64);
  v21 = (v23 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v51);
  v47 = v20 - v21;
  v22 = v21;
  __chkstk_darwin(v20 - v21);
  v46 = v20 - v22;
  v24 = (v23 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v20 - v22);
  v54 = v20 - v24;
  v63 = v20 - v24;
  v43 = *v7;
  v44 = v7[1];
  v25 = v7[2];
  v26 = v7[3];
  v38 = v7[4];
  v39 = v7[5];
  v40 = v7[6];
  v42 = v7[7];
  v62 = v7;
  v61 = v8;
  v60 = a3;
  v58 = v9;
  v59 = v10;

  v31 = sub_10002A420();

  v30 = sub_10002A420();

  v33 = 1;
  sub_10002A490("SSLocalizedAssets", 0x11uLL, 1);
  v27 = v11;
  v29 = sub_10002A420();

  v32 = [v28 localizedStringForKey:v31 value:v30 table:v29];
  _objc_release(v29);
  _objc_release(v30);
  _objc_release(v31);
  v45 = sub_10002A430();
  v55 = v12;
  v56 = v45;
  v57 = v12;
  _objc_release(v32);
  sub_10002A490("Resources", 9uLL, v33 & 1);
  v34 = v13;
  sub_100029E10();

  sub_100029E10();

  v53 = *(v35 + 8);
  v52 = v35 + 8;
  v53(v46, v51);
  v41 = type metadata accessor for SoundScapesOption(v37);

  sub_100029E10();

  sub_100029E10();

  v14 = sub_100015278(v43, v44, v45, v55, v46, v47, v48, v49);
  v15 = v51;
  v16 = v53;
  v17 = v14;
  v18 = v54;
  *v50 = v17;
  v16(v18, v15);
}

unint64_t sub_100018588()
{
  v2 = qword_100039A30;
  if (!qword_100039A30)
  {
    sub_10000F9D8(&qword_100039A18, &qword_10002D640);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100039A30);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10001862C(uint64_t a1)
{
  updated = sub_10001879C(319);
  if (v1 <= 0x3F)
  {
    updated = sub_100029E30();
    if (v2 <= 0x3F)
    {
      updated = swift_updateClassMetadata2();
      if (!updated)
      {
        return 0;
      }
    }
  }

  return updated;
}

unint64_t sub_10001879C(uint64_t a1)
{
  v5 = qword_100039A70;
  if (!qword_100039A70)
  {
    sub_100029E90();
    v4 = sub_10002A7A0();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_100039A70);
      return v2;
    }
  }

  return v5;
}

uint64_t sub_1000188B0(unsigned __int8 *a1, int a2)
{
  if (a2)
  {
    v6 = 1;
    if ((a2 + 1) >= 0x100)
    {
      if ((a2 + 1) >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v6 = v2;
    }

    if (v6 == 1)
    {
      v5 = *a1;
    }

    else if (v6 == 2)
    {
      v5 = *a1;
    }

    else
    {
      v5 = *a1;
    }

    if (v5)
    {
      v4 = v5 - 1;
    }

    else
    {
      v4 = -1;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

_BYTE *sub_100018A00(_BYTE *result, int a2, int a3)
{
  v5 = 0;
  if (a3)
  {
    v4 = 1;
    if ((a3 + 1) >= 0x100)
    {
      if ((a3 + 1) >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v4 = v3;
    }

    v5 = v4;
  }

  if (a2)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        *result = a2;
      }

      else if (v5 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }
  }

  else if (v5)
  {
    if (v5 == 1)
    {
      *result = 0;
    }

    else if (v5 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

unint64_t sub_100018BFC()
{
  v2 = qword_100039C20;
  if (!qword_100039C20)
  {
    type metadata accessor for SoundScapesOption(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100039C20);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100018CA0()
{
  v2 = qword_100039C28;
  if (!qword_100039C28)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100039C28);
    return WitnessTable;
  }

  return v2;
}

id sub_100018D54(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002A420();
  v5 = [v3 initWithContentsOfFile:?];
  _objc_release(v4);

  return v5;
}

unint64_t sub_100018DB8(uint64_t a1, uint64_t a2)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;

  v15 = sub_100019370;
  v16 = v8;
  aBlock = _NSConcreteStackBlock;
  v11 = 1107296256;
  v12 = 0;
  v13 = sub_100018F30;
  v14 = &unk_100035DC8;
  v6 = _Block_copy(&aBlock);
  v7 = [v5 initWithBlock:?];
  _Block_release(v6);

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  result = isEscapingClosureAtFileLocation;
  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    return v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_100018F30(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  swift_unknownObjectRetain();
  v3(a2);
  return swift_unknownObjectRelease();
}

id sub_100018F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    v15 = sub_10002A420();

    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (a4)
  {
    v13 = sub_10002A420();

    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a8)
  {
    v12 = sub_10002A420();

    v8 = [v21 initWithIdentifier:v16 title:v14 type:a5 artwork:a6 artist:v12];
  }

  else
  {
    v8 = [v21 initWithIdentifier:v16 title:v14 type:a5 artwork:a6 artist:0];
  }

  v11 = v8;
  _objc_release(v10);
  _objc_release(a6);
  _objc_release(v14);
  _objc_release(v16);
  return v11;
}

unint64_t sub_100019150(uint64_t a1, uint64_t a2)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;

  v15 = sub_100019370;
  v16 = v8;
  aBlock = _NSConcreteStackBlock;
  v11 = 1107296256;
  v12 = 0;
  v13 = sub_100018F30;
  v14 = &unk_100035D78;
  v6 = _Block_copy(&aBlock);
  v7 = [v5 initWithBlock:?];
  _Block_release(v6);

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  result = isEscapingClosureAtFileLocation;
  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    return v7;
  }

  __break(1u);
  return result;
}

id sub_1000192A0@<X0>(uint64_t a1@<X0>, NSURL *a2@<X8>)
{
  sub_100029E00(a2);
  v6 = v3;
  v8 = [v2 initWithURL:?];
  _objc_release(v6);
  v4 = sub_100029E30();
  (*(*(v4 - 8) + 8))(a1);
  return v8;
}

uint64_t sub_10001937C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_10001940C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_100019470(unint64_t result)
{
  v3 = result;
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {

    if (v3 <= 0)
    {
      return &_swiftEmptyArrayStorage;
    }

    type metadata accessor for ReadingOptions(0);
    v1 = sub_10002A5A0();

    *(v1 + 16) = v3;

    return v1;
  }

  return result;
}

uint64_t sub_10001951C()
{
  v1 = sub_100029F10();
  sub_1000195C0(v1, qword_100039CF0);
  sub_10001965C(v1, qword_100039CF0);
  sub_10002A490("com.apple.soundscapes", 0x15uLL, 1);
  sub_10002A490("AnalyticsSender", 0xFuLL, 1);
  return sub_100029F00();
}

uint64_t *sub_1000195C0(uint64_t a1, uint64_t *a2)
{
  v5 = a2;
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v2 = swift_slowAlloc();
    *a2 = v2;
    return v2;
  }

  return v5;
}

uint64_t sub_10001965C(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    return *a2;
  }

  return v3;
}

uint64_t sub_1000196B4()
{
  if (qword_100039548 != -1)
  {
    swift_once();
  }

  v0 = sub_100029F10();
  return sub_10001965C(v0, qword_100039CF0);
}

uint64_t sub_100019720@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000196B4();
  v1 = sub_100029F10();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

void sub_100019784(void *a1)
{
  v57 = a1;
  v60 = sub_10001A4FC;
  v62 = sub_10001A450;
  v64 = sub_10001C570;
  v69 = sub_10001A744;
  v73 = sub_10001C570;
  v75 = sub_10001C4FC;
  v77 = sub_10001C4FC;
  v79 = sub_10001C5BC;
  v81 = sub_10001C4FC;
  v83 = sub_10001C4FC;
  v86 = sub_10001C5BC;
  v99 = 0;
  v50 = 0;
  v55 = sub_100029F10();
  v53 = *(v55 - 8);
  v54 = v55 - 8;
  v51 = (*(v53 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v57);
  v1 = &v29 - v51;
  v52 = &v29 - v51;
  v99 = v2;
  v3 = sub_1000196B4();
  (*(v53 + 16))(v1, v3, v55);
  v56 = v98;
  sub_10001A368(v57, v98);
  v58 = 56;
  v71 = 7;
  v63 = swift_allocObject();
  sub_10001A414(v56, (v63 + 16));
  v59 = v97;
  sub_10001A368(v57, v97);
  v61 = swift_allocObject();
  sub_10001A414(v59, (v61 + 16));

  v70 = 32;
  v4 = swift_allocObject();
  v5 = v61;
  v72 = v4;
  *(v4 + 16) = v60;
  *(v4 + 24) = v5;

  v90 = sub_100029EF0();
  v91 = sub_10002A6E0();
  v67 = 17;
  v76 = swift_allocObject();
  v66 = 32;
  *(v76 + 16) = 32;
  v78 = swift_allocObject();
  v68 = 8;
  *(v78 + 16) = 8;
  v6 = swift_allocObject();
  v7 = v63;
  v65 = v6;
  *(v6 + 16) = v62;
  *(v6 + 24) = v7;
  v8 = swift_allocObject();
  v9 = v65;
  v80 = v8;
  *(v8 + 16) = v64;
  *(v8 + 24) = v9;
  v82 = swift_allocObject();
  *(v82 + 16) = v66;
  v84 = swift_allocObject();
  *(v84 + 16) = v68;
  v10 = swift_allocObject();
  v11 = v72;
  v74 = v10;
  *(v10 + 16) = v69;
  *(v10 + 24) = v11;
  v12 = swift_allocObject();
  v13 = v74;
  v87 = v12;
  *(v12 + 16) = v73;
  *(v12 + 24) = v13;
  v89 = sub_10000F56C(&qword_100039D18, &qword_10002D8A8);
  v85 = sub_10002A9D0();
  v88 = v14;

  v15 = v76;
  v16 = v88;
  *v88 = v75;
  v16[1] = v15;

  v17 = v78;
  v18 = v88;
  v88[2] = v77;
  v18[3] = v17;

  v19 = v80;
  v20 = v88;
  v88[4] = v79;
  v20[5] = v19;

  v21 = v82;
  v22 = v88;
  v88[6] = v81;
  v22[7] = v21;

  v23 = v84;
  v24 = v88;
  v88[8] = v83;
  v24[9] = v23;

  v25 = v87;
  v26 = v88;
  v88[10] = v86;
  v26[11] = v25;
  sub_10001D4F0();

  if (os_log_type_enabled(v90, v91))
  {
    v27 = v50;
    v42 = sub_10002A790();
    v41 = sub_10000F56C(&qword_100039D28, qword_10002D8B0);
    v43 = sub_10001A504(0, v41, v41);
    v44 = sub_10001A504(2, &type metadata for Any + 8, &type metadata for Any + 8);
    v46 = &v96;
    v96 = v42;
    v47 = &v95;
    v95 = v43;
    v48 = &v94;
    v94 = v44;
    v45 = 2;
    sub_10001A558(2, &v96);
    sub_10001A558(v45, v46);
    v92 = v75;
    v93 = v76;
    sub_10001A56C(&v92, v46, v47, v48);
    v49 = v27;
    if (v27)
    {

      __break(1u);
    }

    else
    {
      v92 = v77;
      v93 = v78;
      sub_10001A56C(&v92, &v96, &v95, &v94);
      v40 = 0;
      v92 = v79;
      v93 = v80;
      sub_10001A56C(&v92, &v96, &v95, &v94);
      v39 = 0;
      v92 = v81;
      v93 = v82;
      sub_10001A56C(&v92, &v96, &v95, &v94);
      v38 = 0;
      v92 = v83;
      v93 = v84;
      sub_10001A56C(&v92, &v96, &v95, &v94);
      v37 = 0;
      v92 = v86;
      v93 = v87;
      sub_10001A56C(&v92, &v96, &v95, &v94);
      _os_log_impl(&_mh_execute_header, v90, v91, "Sending analytic event named: %s with info: %s", v42, 0x16u);
      sub_10001A5B8(v43, 0, v41);
      sub_10001A5B8(v44, 2, &type metadata for Any + 8);
      sub_10002A770();
    }
  }

  else
  {
  }

  _objc_release(v90);
  (*(v53 + 8))(v52, v55);
  v30 = v57[3];
  v29 = v57[4];
  sub_1000059D0(v57, v30);
  (*(v29 + 8))(v30);
  v31 = v28;
  v36 = sub_10002A420();

  v33 = v57[3];
  v32 = v57[4];
  sub_1000059D0(v57, v33);
  v34 = (*(v32 + 16))(v33);
  sub_10001C6A0();
  isa = sub_10002A380().super.isa;

  AnalyticsSendEvent();
  _objc_release(isa);
  _objc_release(v36);
}

uint64_t sub_10001A310(void *a1)
{
  v3 = a1[3];
  v2 = a1[4];
  sub_1000059D0(a1, v3);
  return (*(v2 + 8))(v3);
}

uint64_t sub_10001A368(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  *(a2 + 32) = *(a1 + 32);
  (**(v2 - 8))(a2);
  return a2;
}

uint64_t sub_10001A458@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[3];
  v3 = a1[4];
  sub_1000059D0(a1, v4);
  result = (*(v3 + 16))(v4);
  *a2 = result;
  return result;
}

uint64_t sub_10001A504(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    return sub_10002A790();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10001A558(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

void sub_10001A5B8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    sub_10002A780();
    sub_10002A770();
  }
}

uint64_t sub_10001A620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a3;
  v8[1] = a4;
  v9 = *(a3 - 8);
  v10 = a3 - 8;
  v8[0] = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(a1);
  v11 = v8 - v8[0];
  v5(v4);
  v13 = sub_10002A970();
  v14 = v6;
  (*(v9 + 8))(v11, v12);
  return v13;
}

uint64_t sub_10001A744()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = sub_10000F56C(&qword_100039D08, &qword_10002D8A0);
  v1 = sub_10001A7AC();

  return sub_10001A620(v5, v3, v4, v1);
}

unint64_t sub_10001A7AC()
{
  v2 = qword_100039D10;
  if (!qword_100039D10)
  {
    sub_10000F9D8(&qword_100039D08, &qword_10002D8A0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100039D10);
    return WitnessTable;
  }

  return v2;
}

void *sub_10001A85C(void *a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = (a4)(a1, a2);
  sub_10001A8F8(v4, v5, a3);
  v8 = *a1;

  sub_10002A7B0();
  result = a1;
  *a1 = v8 + 8;
  return result;
}

uint64_t sub_10001A8F8(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  v14 = sub_10001AA9C(&v17, 0, 0, 1, a1, a2);
  v15 = v3;
  v16 = v4;
  v11 = v17;
  swift_unknownObjectRetain();
  if (v14)
  {
    swift_unknownObjectRelease();

    v12[3] = swift_getObjectType();
    swift_unknownObjectRetain();
    v12[0] = v14;
    v6 = *a3;
    if (*a3)
    {
      sub_10000596C(v12, v6);
      swift_unknownObjectRelease();
      *a3 = v6 + 32;
    }

    else
    {
      swift_unknownObjectRelease();
    }

    sub_1000051D8(v12);
  }

  else
  {
    v13[3] = &type metadata for _StringGuts;
    v13[0] = a1;
    v13[1] = a2;
    v7 = *a3;
    if (*a3)
    {
      sub_10000596C(v13, v7);
      swift_unknownObjectRelease();
      *a3 = v7 + 32;
    }

    else
    {
      swift_unknownObjectRelease();
    }

    sub_1000051D8(v13);
  }

  return v11;
}

void *sub_10001AA9C(void *result, char *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v19 = result;
  v25 = a6;
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (a2)
      {
        if (!a3)
        {
          __break(1u);
        }

        v18 = a3 - a2;
      }

      else
      {
        v18 = 0;
      }

      v17 = (a6 & 0xF00000000000000uLL) >> 56;
      if (v17 < v18)
      {
        if (a2)
        {
          v16 = a2;
        }

        else
        {
          sub_10002A930();
          __break(1u);
        }

        v22[0] = a5;
        v22[1] = a6 & (-bswap64(0xFFuLL) - 1);
        sub_10001AE54(v22, v17, v16);
        sub_10002A7C0();
        *v19 = v16;
        v12 = 0;
        v13 = v17;
        v14 = 1;
        v15 = 0;
        goto LABEL_28;
      }
    }

    goto LABEL_14;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
LABEL_14:
    v6 = sub_10001AFD0(a5, a6);
    *v19 = v7;
    v12 = v6;
    v13 = v8;
    v14 = 0;
    v15 = 1;
LABEL_28:
    v22[2] = v12;
    v22[3] = v13;
    v23 = v14 & 1;
    v24 = v15 & 1;
    return v12;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    if ((a6 & 0xFFFFFFFFFFFFFFFLL) != 0xFFFFFFFFFFFFFFE0)
    {
      v11 = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
      goto LABEL_23;
    }

    __break(1u);
  }

  result = sub_10002A8B0();
  if (result)
  {
    v10 = result;
  }

  else
  {
    result = sub_10002A930();
    __break(1u);
  }

  v11 = v10;
LABEL_23:
  *v19 = v11;
  if (a6 < 0)
  {
    v9 = 0;
LABEL_27:
    v12 = v9;
    v13 = a5 & 0xFFFFFFFFFFFFLL;
    v14 = 0;
    v15 = 0;
    goto LABEL_28;
  }

  if ((a6 & 0xFFFFFFFFFFFFFFFLL) != 0)
  {
    swift_unknownObjectRetain();
    v9 = a6 & 0xFFFFFFFFFFFFFFFLL;
    goto LABEL_27;
  }

  __break(1u);
  return result;
}

char *sub_10001AE54(char *result, int64_t a2, char *a3)
{
  if (a2 < 0)
  {
LABEL_7:
    result = sub_10002A940();
    __break(1u);
    goto LABEL_8;
  }

  if ((a2 * 1) >> 64 == a2 >> 63)
  {
    if (result >= &a3[a2] || a3 >= &result[a2])
    {
      memcpy(a3, result, a2);
      return a3;
    }

    sub_10002A940();
    __break(1u);
    goto LABEL_7;
  }

LABEL_8:
  __break(1u);
  return result;
}

void *sub_10001AFD0(uint64_t a1, uint64_t a2)
{
  v7 = sub_10001B08C(a1, a2);
  sub_10000F56C(&qword_100039D30, qword_10002D8D8);
  inited = swift_initStackObject();
  sub_10001B89C(inited, 1);
  *v3 = 0;
  sub_10001B8E8();
  sub_10001B91C(v4);

  v8 = sub_10001BCC4(v7);

  result = v8;
  if (!__OFSUB__(v8, 1))
  {
    return v7;
  }

  __break(1u);
  return result;
}

void *sub_10001B08C(uint64_t a1, uint64_t a2)
{
  v17[2] = a2;
  if ((a2 & 0x1000000000000000) != 0)
  {
    v13 = sub_10002A4C0();
  }

  else
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v12 = (a2 & 0xF00000000000000uLL) >> 56;
    }

    else
    {
      v12 = a1 & 0xFFFFFFFFFFFFLL;
    }

    v13 = v12;
  }

  if (!v13)
  {
    return sub_10001C1E4();
  }

  v10 = sub_10001BCDC(v13, 0);

  v11 = (v10 + 4);

  if (v13 < 0)
  {
LABEL_30:
    sub_10002A940();
    __break(1u);
    return sub_10001C1E4();
  }

  v16[12] = a2;
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v16[0] = a1;
      v16[1] = a2 & (-bswap64(0xFFuLL) - 1);
      if (v13 >= ((a2 & 0xF00000000000000uLL) >> 56))
      {
        sub_10001BE20(v16, (a2 & 0xF00000000000000uLL) >> 56, v11);
        v8 = (a2 & 0xF00000000000000uLL) >> 56;
        goto LABEL_26;
      }

      goto LABEL_29;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      if ((a2 & 0xFFFFFFFFFFFFFFFLL) != 0xFFFFFFFFFFFFFFE0)
      {
        v6 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v7 = a1 & 0xFFFFFFFFFFFFLL;
        goto LABEL_22;
      }

      __break(1u);
    }

    v6 = sub_10002A8B0();
    v7 = v3;
LABEL_22:
    if (v13 >= v7)
    {
      if (!v6)
      {
        __break(1u);
      }

      sub_10001BE20(v6, v7, v11);
      v8 = v7;
      goto LABEL_26;
    }

    goto LABEL_29;
  }

  v9 = sub_10002A8A0();
  if (v2)
  {
LABEL_29:
    sub_10002A930();
    __break(1u);
    goto LABEL_30;
  }

  v8 = v9;
LABEL_26:
  v16[11] = 0xE000000000000000;

  v17[0] = 0;
  v17[1] = 0xE000000000000000;
  v16[10] = 0xE000000000000000;
  if (v8 != v13)
  {
    sub_10002A930();
    __break(1u);
  }

  sub_100012570(v17);
  return v10;
}

uint64_t sub_10001B89C(uint64_t a1, uint64_t a2)
{

  *(a1 + 16) = a2;
  *(a1 + 24) = 2 * a2;

  return a1;
}

void sub_10001B91C(uint64_t a1)
{
  v18 = sub_10001BCC4(a1);
  v2 = sub_10001BCC4(*v1);
  v19 = v2 + v18;
  if (__OFADD__(v2, v18))
  {
    goto LABEL_31;
  }

  v14 = *v17;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v17 = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v19 > *(*v17 + 24) >> 1)
  {
    if (*(*v17 + 16) < v19)
    {
      v13 = v19;
    }

    else
    {
      v13 = *(*v17 + 16);
    }

    v12 = *v17;

    *v17 = sub_10001C220(isUniquelyReferenced_nonNull_native, v13, 1, v12);
  }

  v4 = *(*v17 + 16);
  v10 = (*v17 + 32 + v4);
  v5 = *(*v17 + 24) >> 1;
  v11 = v5 - v4;
  if (__OFSUB__(v5, v4))
  {
    goto LABEL_32;
  }

  if (v11 < 0)
  {
LABEL_30:
    sub_10002A940();
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!sub_10001C38C(a1))
  {
LABEL_21:

    if (v18 <= 0)
    {
      goto LABEL_28;
    }

    sub_10002A930();
    __break(1u);
    goto LABEL_30;
  }

  if (v11 < v18)
  {
    sub_10002A930();
    __break(1u);
    goto LABEL_21;
  }

  sub_10001BE20((a1 + 32), v18, v10);

  swift_unknownObjectRelease();
  if (v18 <= 0)
  {
    goto LABEL_28;
  }

  v7 = *(*v17 + 16);
  v9 = v7 + v18;
  if (!__OFADD__(v7, v18))
  {
    *(*v17 + 16) = v9;
LABEL_28:
    sub_10001C214();
    return;
  }

LABEL_33:
  __break(1u);
}

void *sub_10001BCDC(uint64_t a1, uint64_t a2)
{
  if (a2 < a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = a2;
  }

  if (v6)
  {
    sub_10000F56C(&qword_100039D30, qword_10002D8D8);
    v5 = swift_allocObject();

    if (sub_10001C718())
    {
      v3 = sub_10001C724(v5) - 32;
      v5[2] = a1;
      v5[3] = 2 * v3;
    }

    else
    {
      v5[2] = a1;
      v5[3] = 2 * v6;
    }

    return v5;
  }

  else
  {

    return &_swiftEmptyArrayStorage;
  }
}

void *sub_10001BE20(char *a1, size_t a2, char *a3)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a1 >= &a3[a2] || a3 >= &a1[a2])
    {
      return memcpy(a3, a1, a2);
    }

    sub_10002A940();
    __break(1u);
  }

  result = sub_10002A940();
  __break(1u);
  return result;
}

unint64_t sub_10001BF70(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = a1;
  if ((a3 & 0x1000000000000000) != 0 && (a2 & 0x800000000000000) == 0)
  {
    v10 = a1 >> 16;
    if ((a3 & 0x1000000000000000) != 0)
    {
      v9 = sub_10002A4E0();
LABEL_11:
      if (v11 >> 14)
      {
        v7 = ((v9 >> 16) + (v11 >> 14)) << 16;
      }

      else
      {
        v7 = v9 & 0xFFFFFFFFFFFFFFFCLL | v11 & 3;
      }

      return v7 | 8;
    }

    if ((v10 & 0x8000000000000000) == 0)
    {
      v8 = (a3 & 0x2000000000000000) != 0 ? (a3 & 0xF00000000000000uLL) >> 56 : a2 & 0xFFFFFFFFFFFFLL;
      if (v8 >= v10)
      {
        v9 = (v10 << 16) | 4;
        goto LABEL_11;
      }
    }

    sub_10002A930();
    __break(1u);
  }

  v5 = sub_10002A500();
  if (v11 >> 14)
  {
    v4 = ((v5 >> 16) + (v11 >> 14)) << 16;
  }

  else
  {
    v4 = v5 & 0xFFFFFFFFFFFFFFFCLL | v11 & 3;
  }

  return v4 | 4;
}

char *sub_10001C220(char *result, uint64_t a2, char a3, uint64_t a4)
{
  v7 = result;
  v9 = *(a4 + 24) >> 1;
  if (a3)
  {
    if (v9 < a2)
    {
      if ((v9 * 2) >> 64 != (2 * v9) >> 63)
      {
        __break(1u);
        return result;
      }

      if (2 * v9 < a2)
      {
        v6 = a2;
      }

      else
      {
        v6 = 2 * v9;
      }
    }

    else
    {
      v6 = *(a4 + 24) >> 1;
    }
  }

  else
  {
    v6 = a2;
  }

  v4 = *(a4 + 16);
  v5 = sub_10001BCDC(v4, v6);
  if (v7)
  {
    sub_10001C394((a4 + 32), v4, v5 + 32);

    *(a4 + 16) = 0;
  }

  else
  {

    sub_10001BE20((a4 + 32), v4, v5 + 32);
    swift_unknownObjectRelease();
  }

  return v5;
}

char *sub_10001C394(char *result, size_t a2, char *a3)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    result = sub_10002A940();
    __break(1u);
  }

  else if (a3 < result || a3 >= &result[a2] || a3 != result)
  {
    return memmove(a3, result, a2);
  }

  return result;
}

_BYTE **sub_10001C4BC(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

unint64_t sub_10001C6A0()
{
  v2 = qword_100039D20;
  if (!qword_100039D20)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_100039D20);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_10001C74C(uint64_t a1, uint64_t a2)
{
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v15[4] = a1;
  v15[5] = a2;
  v15[2] = a1;
  v15[3] = a2;
  v15[0] = sub_10002A490(".", 1uLL, 1);
  v15[1] = v2;
  sub_10001CB94();
  v7 = sub_10002A7D0();
  sub_100012570(v15);
  v14 = v7;
  v8 = sub_10000F56C(&qword_100039690, &qword_10002D910);
  v9 = sub_10000F56C(&qword_100039D40, &qword_10002D918);
  v3 = sub_10001D5AC();
  sub_10001CC0C(sub_10001D534, 0, v8, v9, &type metadata for Never, v3, &protocol witness table for Never, v10);
  sub_10000FA4C(&v14);
  sub_10000F56C(&qword_100039D50, &qword_10002D920);
  sub_10001D6A8();
  if ((sub_10002A510() & 1) != 0 && sub_10002A5B0() <= 3)
  {
    sub_10002A520();
    sub_10002A9D0();
    *v4 = 0;
    v4[1] = 0;
    v4[2] = 0;
    sub_10001D4F0();
    sub_10002A580();

    sub_10000F56C(&qword_100039D60, qword_10002D928);
    sub_10001D774();
    sub_10002A6A0();
    sub_10002A7F0();
    sub_10002A7F0();
    sub_10002A7F0();
    v16 = v13;
    v17 = v12;
    v18 = v11;
    swift_unknownObjectRelease();

    return v13;
  }

  else
  {

    return 0;
  }
}

unint64_t sub_10001CB94()
{
  v2 = qword_100039D38;
  if (!qword_100039D38)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100039D38);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10001CC0C(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v34 = a1;
  v35 = a2;
  v59 = a3;
  v49 = a4;
  v36 = a5;
  v58 = a6;
  v38 = a8;
  v39 = "Fatal error";
  v40 = "Range requires lowerBound <= upperBound";
  v41 = "Swift/Range.swift";
  v42 = "Index out of range";
  v43 = "invalid Collection: count differed in successive traversals";
  v44 = "Swift/ArrayShared.swift";
  v69[3] = a3;
  v69[2] = a4;
  v69[1] = a5;
  v45 = *(a5 - 8);
  v46 = a5 - 8;
  v47 = (*(v45 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(a1);
  v48 = &v15 - v47;
  v50 = 0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v52 = *(AssociatedTypeWitness - 8);
  v53 = AssociatedTypeWitness - 8;
  v54 = (*(v52 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v50);
  v55 = &v15 - v54;
  v56 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v9);
  v57 = &v15 - v56;
  v60 = swift_getAssociatedTypeWitness();
  v61 = *(v60 - 8);
  v62 = v60 - 8;
  v63 = (*(v61 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v59);
  v64 = &v15 - v63;
  v65 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v11);
  v66 = &v15 - v65;
  v67 = sub_10002A660();
  if (!v67)
  {
    goto LABEL_24;
  }

  v69[0] = sub_10002A8F0();
  v33 = sub_10002A900();
  sub_10002A8D0(v67);
  result = sub_10002A650();
  if (v67 < 0)
  {
    sub_10002A930();
    __break(1u);
LABEL_24:
    v17 = sub_10002A590();
    v18 = v37;
    return v17;
  }

  if (!v67)
  {
LABEL_19:
    v23 = v37;
LABEL_20:
    v19 = v23;
    sub_10002A670();
    swift_getAssociatedConformanceWitness();
    v22 = sub_10002A410();
    v20 = *(v61 + 8);
    v21 = v61 + 8;
    v20(v64, v60);
    if ((v22 & 1) == 0)
    {
      sub_10002A940();
      __break(1u);
    }

    v20(v66, v60);
    v16 = v69[0];

    v17 = v16;
    v18 = v19;
    return v17;
  }

  v31 = 0;
  for (i = v37; ; i = v27)
  {
    v29 = i;
    v30 = v31;
    if (v31 < 0 || v30 >= v67)
    {
      goto LABEL_18;
    }

    if (v67 < 0)
    {
      sub_10002A930();
      __break(1u);
LABEL_18:
      sub_10002A940();
      __break(1u);
      goto LABEL_19;
    }

    v28 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    v26 = &v68;
    v25 = sub_10002A6D0();
    (*(v52 + 16))(v55);
    v25();
    v14 = v29;
    v34(v55, v48);
    v27 = v14;
    if (v14)
    {
      (*(v52 + 8))(v55, AssociatedTypeWitness);
      (*(v61 + 8))(v66, v60);
      sub_100011998(v69);
      (*(v45 + 32))(v38, v48, v36);
      return v24;
    }

    (*(v52 + 8))(v55, AssociatedTypeWitness);
    sub_10002A8E0();
    sub_10002A680();
    if (v28 == v67)
    {
      v23 = v27;
      goto LABEL_20;
    }

    result = v27;
    v31 = v28;
  }

  __break(1u);
  return result;
}

uint64_t sub_10001D534(uint64_t *a1)
{

  sub_10001DAE0();
  return sub_10002A920();
}

unint64_t sub_10001D5AC()
{
  v2 = qword_100039D48;
  if (!qword_100039D48)
  {
    sub_10000F9D8(&qword_100039690, &qword_10002D910);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100039D48);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10001D6A8()
{
  v2 = qword_100039D58;
  if (!qword_100039D58)
  {
    sub_10000F9D8(&qword_100039D50, &qword_10002D920);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100039D58);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10001D730@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8) & 1;
  *a2 = *result;
  *(a2 + 8) = v2;
  return result;
}

unint64_t sub_10001D774()
{
  v2 = qword_100039D68;
  if (!qword_100039D68)
  {
    sub_10000F9D8(&qword_100039D60, qword_10002D928);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100039D68);
    return WitnessTable;
  }

  return v2;
}

BOOL static NSOperatingSystemVersion.< infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 >= a4)
  {
    if (a4 >= a1)
    {
      return a2 < a5 || a5 >= a2 && a3 < a6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return 1;
  }
}

unint64_t sub_10001D9E8()
{
  v2 = qword_100039D70;
  if (!qword_100039D70)
  {
    type metadata accessor for OperatingSystemVersion(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100039D70);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10001DAE0()
{
  v2 = qword_100039D78;
  if (!qword_100039D78)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100039D78);
    return WitnessTable;
  }

  return v2;
}

id sub_10001DBB0()
{
  sub_100012EE4();
  v4 = sub_10002A490("com.apple.SoundScapes", 0x15uLL, 1);
  v5 = v0;
  v1 = sub_10002A490("SSSoundScapeExtension", 0x15uLL, 1);
  result = sub_10001DB58(v4, v5, v1, v2);
  qword_100039D80 = result;
  return result;
}

uint64_t *sub_10001DC44()
{
  if (qword_100039550 != -1)
  {
    swift_once();
  }

  return &qword_100039D80;
}

void sub_10001DCA4(unsigned int a1, uint64_t a2, uint64_t a3)
{
  v5 = *sub_10001DC44();
  _objc_retain(v5);

  v4 = sub_10002A420();

  [v5 ulog:a1 message:v4];
  _objc_release(v4);
  _objc_release(v5);
}

uint64_t sub_10001DD58()
{
  result = sub_10002A490("com.apple.soundscapes.picker", 0x1CuLL, 1);
  qword_10003B1F8 = result;
  qword_10003B200 = v1;
  return result;
}

uint64_t *sub_10001DD9C()
{
  if (qword_100039558 != -1)
  {
    swift_once();
  }

  return &qword_10003B1F8;
}

void *sub_10001DE38()
{
  type metadata accessor for SoundScapesDataSource(0);
  v0 = sub_10000EAE0();
  result = v2;
  v2[2] = v0;
  v2[3] = 0;
  v2[4] = 0;
  v2[5] = 0;
  return result;
}

void *sub_10001DE90()
{
  v2 = *(v0 + 16);
  _objc_retain(v2);
  return v2;
}

uint64_t sub_10001DEC4()
{
  swift_beginAccess();
  v2 = *(v0 + 24);

  swift_endAccess();
  return v2;
}

uint64_t sub_10001DF14(uint64_t a1)
{

  swift_beginAccess();
  *(v1 + 24) = a1;

  swift_endAccess();
}

uint64_t sub_10001DFD0()
{
  swift_beginAccess();
  v2 = *(v0 + 32);

  swift_endAccess();
  return v2;
}

uint64_t sub_10001E020(uint64_t a1)
{

  swift_beginAccess();
  *(v1 + 32) = a1;

  swift_endAccess();
}

void *sub_10001E0DC()
{
  swift_beginAccess();
  v2 = *(v0 + 40);
  _objc_retain(v2);
  swift_endAccess();
  return v2;
}

void sub_10001E134(void *a1)
{
  _objc_retain(a1);
  swift_beginAccess();
  v2 = *(v1 + 40);
  *(v1 + 40) = a1;
  _objc_release(v2);
  swift_endAccess();
  _objc_release(a1);
}

uint64_t sub_10001E208()
{
  v1 = _EXSceneRoleDefault;
  _objc_retain(_EXSceneRoleDefault);
  sub_10001E2F0(v1);
  _objc_release(v1);

  sub_10000F56C(&qword_100039D88, &qword_10002D9C0);
  sub_10001EECC();
  return sub_100029EA0();
}

uint64_t sub_10001E2F0(void *a1)
{
  _objc_retain(a1);
  v3 = sub_10002A430();
  _objc_release(a1);
  return v3;
}

id *sub_10001E350@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15[4] = a1;
  v14[0] = sub_10002134C();
  v14[1] = v2;
  v5 = a1[2];
  _objc_retain(v5);
  type metadata accessor for SoundScapesDataSource(0);
  sub_10001EF74();
  sub_1000203A8();
  sub_10002A160();
  _objc_release(v5);
  sub_100010068(v14);
  v13[0] = v14[2];
  v13[1] = v14[3];
  v13[2] = v14[4];
  v13[3] = v14[5];
  v11 = sub_10000F56C(&qword_100039D88, &qword_10002D9C0);
  sub_10001EECC();
  sub_100021478(v13, v11, v15);
  sub_100020428(v13);
  v6 = v15[0];
  v7 = v15[1];
  v8 = v15[2];
  v9 = v15[3];
  _objc_retain(v15[0]);

  _objc_retain(v9);
  v12[0] = v6;
  v12[1] = v7;
  v12[2] = v8;
  v12[3] = v9;
  sub_100021478(v12, v11, a2);
  sub_100020428(v12);
  return sub_100020428(v15);
}

uint64_t sub_10001E500(void *a1, void *a2)
{
  v72 = v105;
  v91 = a1;
  v80 = a2;
  v81 = 16;
  v73 = sub_1000201A4;
  v74 = sub_100020234;
  v110 = 0;
  v109 = 0;
  v98 = 0;
  v75 = sub_10000F56C(&qword_100039600, &unk_10002DB20);
  v76 = *(v75 - 8);
  v77 = v75 - 8;
  v78 = (*(v76 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v75);
  v79 = &object - v78;
  v82 = sub_10000F56C(&qword_100039EE0, &qword_10002CDA0);
  v83 = *(v82 - 8);
  v84 = v82 - 8;
  v85 = (*(v83 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v91);
  v86 = &object - v85;
  v110 = v2;
  v109 = v3;
  v87 = sub_10002A490("Start connection", v4, 1);
  v88 = v5;
  sub_10001DCA4(0x28u, v87, v5);

  v6 = sub_10001DD9C();
  v89 = *v6;
  v90 = v6[1];

  v92 = sub_10002A420();

  v93 = [v91 valueForEntitlement:v92];
  _objc_release(v92);
  if (v93)
  {
    v71 = v93;
    v70 = v93;
    v69 = v94;
    sub_10002A7E0();
    sub_100005950(v69, v107);
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v107, 0, sizeof(v107));
  }

  v7 = v72;
  v72[6] = v72[4];
  v7[7] = v7[5];
  if (v108[3])
  {
    sub_10000F794();
    if (swift_dynamicCast())
    {
      v67 = v94[4];
    }

    else
    {
      v67 = 0;
    }

    v68 = v67;
  }

  else
  {
    sub_10000519C(v108);
    v68 = 0;
  }

  v66 = v68;
  if (v68)
  {
    v65 = v66;
    v64 = v66;
    v98 = v66;
    if ([v66 BOOLValue])
    {
      v44 = v80[2];
      _objc_retain(v44);
      sub_100009768();
      _objc_release(v44);
      v45 = v80[2];
      _objc_retain(v45);
      [v91 setExportedObject:v45];
      swift_unknownObjectRelease();
      v47 = sub_100020100();
      v46 = &OBJC_PROTOCOL___SSURemoteViewServiceProtocol;
      _objc_retain(&OBJC_PROTOCOL___SSURemoteViewServiceProtocol);
      v48 = sub_10001F074(v46);
      [v91 setExportedInterface:?];
      _objc_release(v48);
      v49 = &OBJC_PROTOCOL___SSUViewServiceHostProtocol;
      _objc_retain(&OBJC_PROTOCOL___SSUViewServiceHostProtocol);
      v50 = sub_10001F074(v49);
      [v91 setRemoteObjectInterface:?];
      _objc_release(v50);
      _objc_retain(v91);
      _objc_retain(v91);
      v51 = &v97;
      v59 = 33;
      v60 = 0;
      swift_beginAccess();
      v8 = v80[5];
      v80[5] = v91;
      _objc_release(v8);
      swift_endAccess();
      _objc_release(v91);
      v52 = v80[2];
      _objc_retain(v52);
      sub_1000066F4();
      _objc_release(v52);
      v55 = swift_allocObject();
      v53 = v55 + 16;

      v54 = v80;
      swift_weakInit();

      sub_1000201AC();
      v57 = sub_100029FA0();

      (*(v83 + 8))(v86, v82);

      v56 = &v96;
      swift_beginAccess();
      v80[3] = v57;

      swift_endAccess();

      v58 = v80[2];
      _objc_retain(v58);
      sub_100007038();
      _objc_release(v58);

      sub_10002023C();
      v62 = sub_100029FA0();

      (*(v76 + 8))(v79, v75);

      v61 = &v95;
      swift_beginAccess();
      v80[4] = v62;

      swift_endAccess();

      [v91 resume];
      _objc_release(v64);
      v63 = 1;
      return v63 & 1;
    }

    _objc_release(v64);
  }

  v9 = sub_10001DD9C();
  v40 = *v9;
  v41 = v9[1];

  v42 = sub_10002A420();

  v43 = [v91 valueForEntitlement:v42];
  _objc_release(v42);
  if (v43)
  {
    v39 = v43;
    v38 = v43;
    v37 = &v99;
    sub_10002A7E0();
    sub_100005950(v37, v105);
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v105, 0, sizeof(v105));
  }

  v10 = v72;
  v11 = *v72;
  v36 = &v106;
  v72[2] = v11;
  v10[3] = v10[1];
  v12 = sub_10002A9C0();
  v31 = &v103;
  v103 = v12;
  v104 = v13;
  v29 = 1;
  v111._countAndFlagsBits = sub_10002A490("Unexpect entitlement ", 0x15uLL, 1);
  object = v111._object;
  sub_10002A9B0(v111);

  v14 = sub_10001DD9C();
  v20 = *v14;
  v21 = v14[1];

  v22 = v102;
  v102[0] = v20;
  v102[1] = v21;
  v27 = &type metadata for String;
  v25 = &protocol witness table for String;
  v26 = &protocol witness table for String;
  sub_10002A9A0();
  sub_100012570(v22);
  v112._countAndFlagsBits = sub_10002A490(" with value ", 0xCuLL, v29 & 1);
  v23 = v112._object;
  sub_10002A9B0(v112);

  v24 = v101;
  sub_100005A3C(v36, v101);
  sub_10000F56C(&qword_100039EE8, &unk_10002DB30);
  v15 = sub_10002A440();
  v28 = v100;
  v100[0] = v15;
  v100[1] = v16;
  sub_10002A9A0();
  sub_100012570(v28);
  v113._countAndFlagsBits = sub_10002A490("", 0, v29 & 1);
  v30 = v113._object;
  sub_10002A9B0(v113);

  v33 = v103;
  v32 = v104;

  sub_100012570(v31);
  v34 = sub_10002A470();
  v35 = v17;
  sub_10001DCA4(0x5Au, v34, v17);

  sub_10000519C(v36);
  v63 = 0;
  return v63 & 1;
}

unint64_t sub_10001EECC()
{
  v2 = qword_100039D90;
  if (!qword_100039D90)
  {
    sub_10000F9D8(&qword_100039D88, &qword_10002D9C0);
    sub_10001EF74();
    sub_10001EFEC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100039D90);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10001EF74()
{
  v2 = qword_100039D98;
  if (!qword_100039D98)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100039D98);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10001EFEC()
{
  v2 = qword_100039DA0;
  if (!qword_100039DA0)
  {
    sub_10000F9D8(&qword_100039DA8, &qword_10002D9C8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100039DA0);
    return WitnessTable;
  }

  return v2;
}

id sub_10001F074(void *a1)
{
  v3 = [swift_getObjCClassFromMetadata() interfaceWithProtocol:a1];
  _objc_release(a1);
  return v3;
}

uint64_t sub_10001F0D0(uint64_t a1, uint64_t a2)
{
  v68 = a1;
  v66 = a2;
  v95 = 0;
  v94 = 0;
  v92 = 0;
  v87 = 0;
  v86 = 0;
  v67 = 0;
  v65 = 0;
  v85 = 0;
  v80 = 0;
  v69 = (*(*(sub_10000F56C(&qword_1000399C8, &qword_10002D638) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v68);
  v70 = v15 - v69;
  v71 = *v2;
  v95 = v71;
  v72 = v3 + 16;
  v94 = v3 + 16;
  v73 = &v93;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  swift_endAccess();
  if (!Strong)
  {
    goto LABEL_26;
  }

  v64 = Strong;
  v61 = Strong;
  v92 = Strong;
  v62 = &v88;
  swift_beginAccess();
  v63 = *(v61 + 40);
  _objc_retain(v63);
  swift_endAccess();
  v89 = v63;
  if (v63)
  {
    v58 = &v89;
    v59 = v89;
    _objc_retain(v89);
    sub_100010068(v58);
    v60 = [v59 remoteObjectProxy];
    sub_10002A7E0();
    _objc_release(v59);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_100010068(&v89);
    memset(v90, 0, sizeof(v90));
    v91 = 0;
  }

  if (v91)
  {
    sub_10000F56C(&unk_100039F10, &unk_10002DB40);
    if (swift_dynamicCast())
    {
      v56 = v75;
    }

    else
    {
      v56 = 0;
    }

    v57 = v56;
  }

  else
  {
    sub_10000519C(v90);
    v57 = 0;
  }

  v55 = v57;
  if (!v57)
  {

LABEL_26:
    v27 = sub_10002A490("Try to send result, but can't find the extension", 0x30uLL, 1);
    v28 = v9;
    sub_10001DCA4(0x5Au, v27, v9);
  }

  v54 = v55;
  v53 = v55;
  v87 = v55;

  if (v71)
  {
    v52 = v71;
    v4 = v65;
    v49 = v71;
    v86 = v71;
    v50 = sub_1000157A4();
    v51 = v4;
    if (v4)
    {
      v26 = v51;
      swift_errorRetain();
      v85 = v26;
      v10 = sub_10002A9C0();
      v20 = &v83;
      v83 = v10;
      v84 = v11;
      v18 = 1;
      v97._countAndFlagsBits = sub_10002A490("Fail to convert soundscapes ", 0x1CuLL, 1);
      v15[1] = v97._object;
      sub_10002A9B0(v97);

      v15[2] = &v82;
      v82 = v49;
      v17 = 0;
      type metadata accessor for SoundScapesOption(0);
      sub_10002A980();
      v98._countAndFlagsBits = sub_10002A490(" to playback archive ", 0x15uLL, v18 & 1);
      v15[3] = v98._object;
      sub_10002A9B0(v98);

      swift_getErrorValue();
      v12 = sub_10002AA00();
      v16 = v81;
      v81[0] = v12;
      v81[1] = v13;
      sub_10002A9A0();
      sub_100012570(v16);
      v99._countAndFlagsBits = sub_10002A490("", v17, v18 & 1);
      object = v99._object;
      sub_10002A9B0(v99);

      v22 = v83;
      v21 = v84;

      sub_100012570(v20);
      v23 = sub_10002A470();
      v24 = v14;
      sub_10001DCA4(0x5Au, v23, v14);

      swift_getObjectType();
      swift_errorRetain();
      v25 = sub_100029DE0();

      [v53 selectedSoundScapes:0 withError:v25];
      _objc_release(v25);
    }

    else
    {
      v34 = v50;
      v80 = v50;
      swift_getObjectType();
      _objc_retain(v34);
      v42 = 0;
      [v53 selectedSoundScapes:v34 withError:?];
      _objc_release(v34);
      v45 = 1;
      v35 = sub_10002A490("Sent the soundscapes to the extension", 0x25uLL, 1);
      v36 = v5;
      sub_10001DCA4(0x28u, v35, v5);

      v37 = sub_100014DFC();
      v38 = v6;
      v39 = &v79;
      v41 = 32;
      swift_beginAccess();
      v40 = *(v49 + 48);
      swift_endAccess();
      v43 = (v49 + OBJC_IVAR____TtC23SoundScapesViewServices17SoundScapesOption_timePreviewLastPlayed);
      v44 = &v78;
      swift_beginAccess();
      sub_1000175D8(v43, v70);
      swift_endAccess();
      v46 = sub_100029E90();
      v47 = *(v46 - 8);
      v48 = v46 - 8;
      if ((*(v47 + 48))(v70, v45) == 1)
      {
        sub_100017928(v70);
        v32 = 0;
        v33 = 1;
      }

      else
      {
        sub_100029E70();
        v31 = v7;
        (*(v47 + 8))(v70, v46);
        v32 = v31;
        v33 = 0;
      }

      v30 = v96;
      sub_100020518(1, 0, v37, v38, v40, 0, v32, v33 & 1, v96);
      sub_1000202C4(v30, &v76);
      v29 = v77;
      v77[3] = &unk_1000360A0;
      v77[4] = &off_1000360C8;
      v77[0] = swift_allocObject();
      memcpy((v77[0] + 16), v30, 0x31uLL);
      sub_100019784(v29);
      sub_1000051D8(v29);
      sub_10002037C(v30);
      _objc_release(v34);
    }
  }

  swift_unknownObjectRelease();
}

void sub_10001F8EC(_BYTE *a1, uint64_t a2)
{
  v21 = 0;
  v20 = 0;
  v13 = *a1;
  v21 = a1;
  v20 = a2;
  v12 = sub_10002A490("Dismiss the picker", 0x12uLL, 1);
  sub_10001DCA4(0x28u, v12, v2);

  sub_100020518(0, 1, 0, 0, 0, 1, 0, 1, v22);
  sub_1000202C4(v22, v18);
  v19[3] = &unk_1000360A0;
  v19[4] = &off_1000360C8;
  v19[0] = swift_allocObject();
  memcpy((v19[0] + 16), v22, 0x31uLL);
  sub_100019784(v19);
  sub_1000051D8(v19);
  if ((v13 & 1) == 0)
  {
    goto LABEL_13;
  }

  swift_beginAccess();
  v10 = *(a2 + 40);
  _objc_retain(v10);
  swift_endAccess();
  v15 = v10;
  if (v10)
  {
    v9 = v15;
    _objc_retain(v15);
    sub_100010068(&v15);
    [v9 remoteObjectProxy];
    sub_10002A7E0();
    _objc_release(v9);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_100010068(&v15);
    memset(v16, 0, sizeof(v16));
    v17 = 0;
  }

  if (v17)
  {
    sub_10000F56C(&unk_100039F10, &unk_10002DB40);
    v7 = (swift_dynamicCast() & 1) != 0 ? v14 : 0;
    v8 = v7;
  }

  else
  {
    sub_10000519C(v16);
    v8 = 0;
  }

  if (v8)
  {
    swift_getObjectType();
    [v8 requestDismiss];
    v6 = sub_10002A490("Sent dismiss message to the extension", 0x25uLL, 1);
    sub_10001DCA4(0x28u, v6, v3);

    swift_unknownObjectRelease();
  }

  else
  {
LABEL_13:
    v5 = sub_10002A490("Fail to send the message to the extension", 0x29uLL, 1);
    sub_10001DCA4(0x5Au, v5, v4);
  }

  sub_10002037C(v22);
}

uint64_t sub_10001FC84()
{

  nullsub_1();
  sub_100029EB0();
  sub_10001FD60();
  return sub_100029ED0();
}

unint64_t sub_10001FD60()
{
  v2 = qword_100039DB0;
  if (!qword_100039DB0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100039DB0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10001FDDC()
{
  type metadata accessor for SoundScapesPickerExtension();
  sub_100020080();
  return sub_100029EE0();
}

uint64_t sub_10001FE58()
{
  _objc_release(*(v0 + 16));
  sub_100011998((v0 + 24));
  sub_100011998((v0 + 32));
  sub_100010068((v0 + 40));
  return v2;
}

void *sub_10001FF14@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10001DDFC();
  *a1 = result;
  return result;
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for SoundScapesPickerExtension();
  sub_10001FDDC();
  return 0;
}

unint64_t sub_100020000()
{
  v2 = qword_100039EC8;
  if (!qword_100039EC8)
  {
    sub_100029EC0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100039EC8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100020080()
{
  v2 = qword_100039ED0;
  if (!qword_100039ED0)
  {
    type metadata accessor for SoundScapesPickerExtension();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100039ED0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100020100()
{
  v2 = qword_100039EF0;
  if (!qword_100039EF0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_100039EF0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1000201AC()
{
  v2 = qword_100039EF8;
  if (!qword_100039EF8)
  {
    sub_10000F9D8(&qword_100039EE0, &qword_10002CDA0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100039EF8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10002023C()
{
  v2 = qword_100039F00;
  if (!qword_100039F00)
  {
    sub_10000F9D8(&qword_100039600, &unk_10002DB20);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100039F00);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1000202C4(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 1) = *(a1 + 1);
  *(a2 + 8) = *(a1 + 8);
  v4 = *(a1 + 16);

  result = a2;
  *(a2 + 16) = v4;
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 48) = *(a1 + 48);
  return result;
}

unint64_t sub_1000203A8()
{
  v2 = qword_100039F20;
  if (!qword_100039F20)
  {
    type metadata accessor for SoundScapesDataSource(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100039F20);
    return WitnessTable;
  }

  return v2;
}

id *sub_100020428(id *a1)
{
  _objc_release(*a1);

  _objc_release(a1[3]);
  return a1;
}

id sub_10002047C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_10002A420();
  v6 = sub_10002A420();
  v8 = [v5 initWithSubsystem:v7 category:?];
  _objc_release(v6);

  _objc_release(v7);

  return v8;
}

void *sub_100020518@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, void *a9@<X8>)
{
  LOBYTE(__src[0]) = a1;
  BYTE1(__src[0]) = a2;
  __src[1] = a3;
  __src[2] = a4;
  __src[3] = a5;
  LOBYTE(__src[4]) = a6 & 1;
  __src[5] = a7;
  LOBYTE(__src[6]) = a8 & 1;
  return memcpy(a9, __src, 0x31uLL);
}

uint64_t sub_1000205B0()
{
  v2 = *(v0 + 8);

  return v2;
}

uint64_t sub_1000205E8(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
}

uint64_t sub_100020644(uint64_t result, char a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2 & 1;
  return result;
}

uint64_t sub_100020668(uint64_t result, char a2)
{
  *(v2 + 40) = result;
  *(v2 + 48) = a2 & 1;
  return result;
}

uint64_t sub_10002067C()
{
  result = sub_10002A490("Selected", 8uLL, 1);
  qword_100039F28 = result;
  qword_100039F30 = v1;
  return result;
}

uint64_t *sub_1000206C0()
{
  if (qword_100039560 != -1)
  {
    swift_once();
  }

  return &qword_100039F28;
}

uint64_t sub_100020720()
{
  v1 = *sub_1000206C0();

  return v1;
}

uint64_t sub_10002075C()
{
  result = sub_10002A490("Cancelled", 9uLL, 1);
  qword_100039F38 = result;
  qword_100039F40 = v1;
  return result;
}

uint64_t *sub_1000207A0()
{
  if (qword_100039568 != -1)
  {
    swift_once();
  }

  return &qword_100039F38;
}

uint64_t sub_100020800()
{
  v1 = *sub_1000207A0();

  return v1;
}

uint64_t sub_10002083C()
{
  result = sub_10002A490("SoundScapesID", 0xDuLL, 1);
  qword_100039F48 = result;
  qword_100039F50 = v1;
  return result;
}

uint64_t *sub_100020880()
{
  if (qword_100039570 != -1)
  {
    swift_once();
  }

  return &qword_100039F48;
}

uint64_t sub_1000208E0()
{
  v1 = *sub_100020880();

  return v1;
}

uint64_t sub_10002091C()
{
  result = sub_10002A490("PreviewPlayed", 0xDuLL, 1);
  qword_100039F58 = result;
  qword_100039F60 = v1;
  return result;
}

uint64_t *sub_100020960()
{
  if (qword_100039578 != -1)
  {
    swift_once();
  }

  return &qword_100039F58;
}

uint64_t sub_1000209C0()
{
  v1 = *sub_100020960();

  return v1;
}

uint64_t sub_1000209FC()
{
  result = sub_10002A490("LastPreviewSince", 0x10uLL, 1);
  qword_100039F68 = result;
  qword_100039F70 = v1;
  return result;
}

uint64_t *sub_100020A40()
{
  if (qword_100039580 != -1)
  {
    swift_once();
  }

  return &qword_100039F68;
}

uint64_t sub_100020AA0()
{
  v1 = *sub_100020A40();

  return v1;
}

uint64_t sub_100020B1C()
{
  v16 = 0;
  v17 = v0;
  sub_10000F56C(&qword_100039F78, &unk_10002DB50);
  sub_10002A9D0();
  sub_10001C6A0();
  v16 = sub_10002A3A0();
  v1 = sub_1000206C0();
  v5 = *v1;
  v6 = v1[1];

  isa = sub_10002A5D0().super.super.isa;
  v13 = v5;
  v14 = v6;
  sub_10000F56C(&qword_100039D08, &qword_10002D8A0);
  sub_10002A3C0();
  v2 = sub_1000207A0();
  v7 = *v2;
  v8 = v2[1];

  v12 = sub_10002A5D0().super.super.isa;
  v10 = v7;
  v11 = v8;
  sub_10002A3C0();
  sub_100020880();

  v22[0] = *(v0 + 8);
  sub_100020F48(v22, v9);
  v22[1] = v22[0];
  if (*(&v22[0] + 1))
  {
    sub_10002A420();
  }

  sub_10002A3C0();
  sub_100020960();

  v20 = *(v0 + 24);
  v21 = *(v0 + 32);
  v23 = v20;
  v24 = v21;
  if ((v21 & 1) == 0)
  {
    v25 = v23;
    sub_10002A640();
  }

  sub_10002A3C0();
  sub_100020A40();

  v18 = *(v0 + 40);
  v19 = *(v0 + 48);
  v26 = v18;
  v27 = v19;
  if ((v19 & 1) == 0)
  {
    v28 = v26;
    sub_10002A610();
  }

  sub_10002A3C0();
  v4 = v16;

  sub_10000FA4C(&v16);
  return v4;
}

void *sub_100020F48(void *a1, void *a2)
{
  *a2 = *a1;
  v4 = a1[1];

  result = a2;
  a2[1] = v4;
  return result;
}

uint64_t sub_100021038(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 49))
    {
      v5 = *a1 + 2147483646;
    }

    else
    {
      v4 = -1;
      if (!HIDWORD(*(a1 + 16)))
      {
        v4 = *(a1 + 16);
      }

      v2 = v4 - 1;
      if (v4 - 1 < 0)
      {
        v2 = -1;
      }

      v5 = v2;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_100021168(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = (result + 49);
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 32) = 0;
    *(result + 24) = 0;
    *(result + 16) = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 48) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *v3 = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *v3 = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

void *sub_10002134C()
{
  v5 = 0;
  v6 = 0;
  type metadata accessor for SoundScapesDataSource(0);
  sub_1000203A8();
  v4 = sub_10002A000();
  v3 = v0;
  _objc_retain(v4);
  v5 = v4;
  v6 = v3;
  sub_100021414();
  v2 = [swift_getObjCClassFromMetadata() appearance];
  [v2 setBounces:0];
  _objc_release(v2);
  sub_100010068(&v5);
  return v4;
}

unint64_t sub_100021414()
{
  v2 = qword_100039F80;
  if (!qword_100039F80)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_100039F80);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1000214DC(void *a1, uint64_t a2)
{
  _objc_retain(a1);
  type metadata accessor for SoundScapesDataSource(0);
  sub_1000203A8();
  v4 = sub_100029FE0();
  _objc_release(a1);
  return v4;
}

uint64_t sub_10002155C(void *a1, uint64_t a2)
{
  _objc_retain(a1);
  type metadata accessor for SoundScapesDataSource(0);
  sub_1000203A8();
  v4 = sub_100029FF0();
  _objc_release(a1);
  return v4;
}

void sub_100021614(void *a1, uint64_t a2)
{
  _objc_retain(a1);
  v3 = *v2;
  *v2 = a1;
  *(v2 + 8) = a2;
  _objc_release(v3);
  _objc_release(a1);
}