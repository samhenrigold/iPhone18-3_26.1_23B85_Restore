void sub_22F4(uint64_t a1)
{
  v2 = *&CGAffineTransformIdentity.c;
  if (*(a1 + 40) == 1)
  {
    *&v4.a = *&CGAffineTransformIdentity.a;
    *&v4.c = v2;
    *&v4.tx = *&CGAffineTransformIdentity.tx;
    CGAffineTransformScale(&v5, &v4, 0.96, 0.96);
  }

  else
  {
    *&v5.a = *&CGAffineTransformIdentity.a;
    *&v5.c = v2;
    *&v5.tx = *&CGAffineTransformIdentity.tx;
  }

  v3 = [*(a1 + 32) view];
  v4 = v5;
  [v3 setTransform:&v4];
}

void sub_2830(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  if (!a3 && [*(a1 + 40) _updateCachedNetworkLimitIfNeeded:a2 outUpdatedValue:&v6])
  {
    v4 = objc_retainBlock(*(a1 + 32));
    v5 = v4;
    if (v4)
    {
      (*(v4 + 2))(v4);
    }
  }
}

id BKSettingsBundle(uint64_t a1)
{
  if (qword_19CB8 != -1)
  {
    sub_C128();
  }

  v2 = qword_19CB0;

  return v2;
}

void sub_2A5C(id a1)
{
  qword_19CB0 = [NSBundle bundleForClass:objc_opt_class()];

  _objc_release_x1();
}

id BKSettingsLog(uint64_t a1)
{
  if (qword_19CC8 != -1)
  {
    sub_C13C();
  }

  v2 = qword_19CC0;

  return v2;
}

void sub_2AFC(id a1)
{
  qword_19CC0 = os_log_create("com.apple.iBooksSettings", "BKSettings");

  _objc_release_x1();
}

void sub_2B84(id a1)
{
  v7 = 0;
  v1 = [LSBundleRecord bundleRecordWithApplicationIdentifier:@"com.apple.iBooks" error:&v7];
  v2 = v7;
  v3 = v2;
  if (v2)
  {
    v4 = BKSettingsLog(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_C164(v3, v4);
    }
  }

  else
  {
    v4 = [v1 groupContainerURLs];
    v5 = [v4 objectForKey:@"group.com.apple.iBooks"];
    v6 = qword_19CD0;
    qword_19CD0 = v5;
  }
}

id sub_6A90(uint64_t a1)
{
  v2 = BKSettingsLog([*(a1 + 32) reloadSpecifiers]);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 40) isEqualToNumber:&off_15EC0];
    v4 = "OFF";
    if (v3)
    {
      v4 = "ON";
    }

    v6 = 136315138;
    v7 = v4;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Successfully set Reading Goals to %s. Telling BooksWidget to refresh.", &v6, 0xCu);
  }

  return [*(*(a1 + 32) + 264) reloadTimelineWithReason:@"iBooksSettings"];
}

void sub_7890(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_78B4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(v4 + 248);
  *(v4 + 248) = 0;

  if (a2)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_7964;
    block[3] = &unk_14910;
    objc_copyWeak(&v7, (a1 + 40));
    dispatch_async(&_dispatch_main_q, block);
    objc_destroyWeak(&v7);
  }
}

void sub_7964(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _reloadAutomaticDownloadsSection];
}

void sub_7E94(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_7EB0(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_7F40;
  block[3] = &unk_14910;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(&_dispatch_main_q, block);
  objc_destroyWeak(&v2);
}

void sub_7F40(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _reloadCellularDataSection];
}

void sub_8048(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_8064(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_80F4;
  block[3] = &unk_14910;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(&_dispatch_main_q, block);
  objc_destroyWeak(&v2);
}

void sub_80F4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _reloadCellularDataSection];
}

void sub_8D00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak(&a15);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_8D34(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  [a1[4] setObject:&__kCFBooleanFalse forKeyedSubscript:PSEnabledKey];
  [WeakRetained reloadSpecifier:a1[4]];
  [a1[5] setPreferenceValue:&__kCFBooleanTrue specifier:a1[4]];
}

void sub_9030(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak(&a15);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_9064(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  [a1[4] setObject:&__kCFBooleanFalse forKeyedSubscript:PSEnabledKey];
  [WeakRetained reloadSpecifier:a1[4]];
  [a1[5] setPreferenceValue:&__kCFBooleanTrue specifier:a1[4]];
}

void sub_992C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak(&a15);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_9960(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) setObject:&__kCFBooleanFalse forKeyedSubscript:PSEnabledKey];
  [WeakRetained reloadSpecifier:*(a1 + 32)];
  [WeakRetained setPreferenceValue:&__kCFBooleanTrue specifier:*(a1 + 32)];
}

unint64_t sub_A894()
{
  result = qword_19BA8;
  if (!qword_19BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19BA8);
  }

  return result;
}

uint64_t sub_A904(uint64_t a1)
{
  sub_C548();
  __chkstk_darwin();
  sub_C408();
  __chkstk_darwin();
  sub_C508();
  sub_C4F8();
  sub_C4E8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = [objc_allocWithZone(PSSpecifier) init];
  [v2 setProperty:a1 forKey:PSListControllerCellHighlightingSelectionInvocationRelayKey];
  sub_C538();
  sub_C3E8();
  sub_C3B8();
}

uint64_t sub_AAB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_C408();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = sub_C458();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  sub_B38C(&qword_19BC8, &qword_12E58);
  v4[13] = swift_task_alloc();
  v7 = sub_C328();
  v4[14] = v7;
  v4[15] = *(v7 - 8);
  v4[16] = swift_task_alloc();
  v8 = sub_C388();
  v4[17] = v8;
  v4[18] = *(v8 - 8);
  v4[19] = swift_task_alloc();
  sub_C508();
  v4[20] = sub_C4F8();
  v10 = sub_C4E8();

  return _swift_task_switch(sub_AD00, v10, v9);
}

uint64_t sub_AD00()
{
  v2 = v0 + 15;
  v1 = v0[15];
  v4 = v0 + 14;
  v3 = v0[14];
  v5 = v0[13];

  sub_C488();
  sub_C308();
  if ((*(v1 + 48))(v5, 1, v3) == 1)
  {
    v6 = v0 + 12;
    sub_B670(v0[13]);
    sub_C478();
    sub_C498();
    v2 = v0 + 10;
    v4 = v0 + 9;
    goto LABEL_13;
  }

  v6 = v0 + 16;
  (*(v0[15] + 32))(v0[16], v0[13], v0[14]);
  sub_C478();
  v7 = sub_C368();
  v9 = v8;
  sub_C318();
  if (v10)
  {
    v11 = v0[4];

    v12 = sub_C4D8();

    [v11 setSpecifierIdentifierToScrollAndHighlight:v12];
  }

  else
  {
    v13 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v13 = v7 & 0xFFFFFFFFFFFFLL;
    }

    if (v13 && (v7 != 0xD000000000000010 || 0x80000000000101A0 != v9) && (sub_C568() & 1) == 0)
    {
      v23._rawValue = &off_14A50;
      v36._countAndFlagsBits = v7;
      v36._object = v9;
      v24 = sub_C558(v23, v36);

      if (v24 == 2)
      {
        v31 = v0[7];
        v30 = v0[8];
        v32 = v0[6];
        v33 = [objc_opt_self() acknowledgementsSectionSpecifier];
        sub_B6D8();
        v34 = v33;
        sub_C3D8();
        sub_B724(&qword_19BD8, &type metadata accessor for PreferencesControllerRecipe, &protocol conformance descriptor for PreferencesControllerRecipe);
        sub_C448();

        (*(v31 + 8))(v30, v32);
        goto LABEL_12;
      }

      if (v24 == 1)
      {
        v26 = v0[7];
        v25 = v0[8];
        v27 = v0[6];
        v28 = [objc_opt_self() specifierForSkipBackwardWithTarget:v0[5]];
      }

      else
      {
        if (v24)
        {
          goto LABEL_12;
        }

        v26 = v0[7];
        v25 = v0[8];
        v27 = v0[6];
        v28 = [objc_opt_self() specifierForSkipForwardWithTarget:v0[5]];
      }

      v29 = v28;
      sub_C3F8();
      sub_B724(&qword_19BD8, &type metadata accessor for PreferencesControllerRecipe, &protocol conformance descriptor for PreferencesControllerRecipe);
      sub_C448();

      (*(v26 + 8))(v25, v27);
      goto LABEL_12;
    }
  }

LABEL_12:
  v15 = v0[10];
  v14 = v0[11];
  v16 = v0[9];
  sub_C498();
  (*(v15 + 8))(v14, v16);
LABEL_13:
  v17 = *v6;
  v19 = v0[18];
  v18 = v0[19];
  v20 = v0[17];
  (*(*v2 + 8))(v17, *v4);
  (*(v19 + 8))(v18, v20);

  v21 = v0[1];

  return v21();
}

uint64_t sub_B160()
{
  v1 = sub_B38C(&qword_19BB0, &qword_12E40);
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v14 - v3;
  v5 = *v0;
  v6 = *(v0 + 8);
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = v6;
  sub_C3C8();
  sub_B724(&qword_19BB8, &type metadata accessor for PreferencesControllerView, &protocol conformance descriptor for PreferencesControllerView);
  v8 = v5;
  v9 = v6;
  sub_C4A8();
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v10 + 24) = v9;
  sub_B5C4();
  v11 = v8;
  v12 = v9;
  sub_C468();
  return (*(v2 + 8))(v4, v1);
}

id sub_B330@<X0>(void *a1@<X8>)
{
  v2 = [objc_allocWithZone(PSListControllerCellHighlightingSelectionInvocationRelay) init];
  result = [objc_allocWithZone(BKSettingsController) init];
  *a1 = v2;
  a1[1] = result;
  return result;
}

uint64_t sub_B38C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_B3D4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_B41C(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_B4D0;

  return sub_AAB0(a1, a2, v7, v6);
}

uint64_t sub_B4D0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_B5C4()
{
  result = qword_19BC0;
  if (!qword_19BC0)
  {
    sub_B628(&qword_19BB0, &qword_12E40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19BC0);
  }

  return result;
}

uint64_t sub_B628(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_B670(uint64_t a1)
{
  v2 = sub_B38C(&qword_19BC8, &qword_12E58);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_B6D8()
{
  result = qword_19BD0;
  if (!qword_19BD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_19BD0);
  }

  return result;
}

uint64_t sub_B724(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 sub_B76C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_B778(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_B7C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_B80C()
{
  sub_B628(&qword_19BB0, &qword_12E40);
  sub_B5C4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_B874()
{
  v0 = sub_C438();
  sub_BFA0(v0, qword_19BE0);
  sub_BE64(v0, qword_19BE0);
  return sub_C428();
}

Swift::Void __swiftcall BKSettingsController._donateSettingsNavigationEvent()()
{
  sub_C3A8();
  __chkstk_darwin();
  v20 = sub_C338();
  v0 = *(v20 - 8);
  __chkstk_darwin();
  v2 = (&v20 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_C4C8();
  __chkstk_darwin();
  v21 = sub_C348();
  v3 = *(v21 - 8);
  __chkstk_darwin();
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_B38C(&qword_19BF8, &qword_12EB0);
  __chkstk_darwin();
  v7 = &v20 - v6;
  v8 = sub_C388();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_C378();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_BDFC(v7);
    if (qword_19B08 != -1)
    {
      swift_once();
    }

    v12 = sub_C438();
    sub_BE64(v12, qword_19BE0);
    v13 = sub_C418();
    v14 = sub_C518();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_0, v13, v14, "Unable to construct deepLink URL", v15, 2u);
    }
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    sub_C4B8();
    *v2 = sub_BF54();
    (*(v0 + 104))(v2, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v20);
    sub_C398();
    sub_C358();
    sub_B38C(&qword_19C08, qword_12EB8);
    v16 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_12EA0;
    v18 = v17 + v16;
    v19 = v21;
    (*(v3 + 16))(v18, v5, v21);
    sub_C528();

    (*(v3 + 8))(v5, v19);
    (*(v9 + 8))(v11, v8);
  }
}

uint64_t sub_BDFC(uint64_t a1)
{
  v2 = sub_B38C(&qword_19BF8, &qword_12EB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_BE64(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_BF54()
{
  result = qword_19C00;
  if (!qword_19C00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_19C00);
  }

  return result;
}

uint64_t *sub_BFA0(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

void sub_C028(uint64_t a1)
{
  v1 = 138543362;
  v2 = a1;
  _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "No subscription context available: %{public}@", &v1, 0xCu);
}

void sub_C0A8(uint64_t a1)
{
  v1 = 138543362;
  v2 = a1;
  _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "No cellular identity available: %{public}@", &v1, 0xCu);
}

void sub_C164(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Error retrieving bundleRecord:%@", &v2, 0xCu);
}

void sub_C1DC(uint64_t a1, char a2, os_log_t log)
{
  v3 = @"on";
  if ((a2 & 1) == 0)
  {
    v3 = @"off";
  }

  v4 = 138543618;
  v5 = a1;
  v6 = 2114;
  v7 = v3;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "iBooksSettings: Error setting %{public}@ to %{public}@", &v4, 0x16u);
}

void sub_C27C(int a1, NSObject *a2)
{
  v2 = 138543618;
  v3 = @"com.apple.librarian.account-token-changed";
  v4 = 1024;
  v5 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "iBooksSettings: Failure to notify_post(%{public}@), error=%u", &v2, 0x12u);
}