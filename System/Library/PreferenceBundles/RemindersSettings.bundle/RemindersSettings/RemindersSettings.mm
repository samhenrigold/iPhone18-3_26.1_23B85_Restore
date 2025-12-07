id sub_25A4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = +[REMUserDefaults daemonUserDefaults];
  [v3 setPreferredDefaultListID:v2];

  v4 = *(a1 + 40);

  return [v4 reloadSpecifiers];
}

id REMSettingsBundleGet(uint64_t a1)
{
  if (qword_3B4E8[0] != -1)
  {
    sub_233B4();
  }

  v2 = qword_3B4E0;

  return v2;
}

void sub_326C(id a1)
{
  qword_3B4E0 = [NSBundle bundleForClass:objc_opt_class()];

  _objc_release_x1();
}

void sub_39CC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 defaultListSpecifier];
  [v1 reloadSpecifier:v2];
}

id sub_3A24(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setUnsavedTodayNotificationFireTime:a2];
  v3 = *(a1 + 32);
  v4 = [v3 todayNotificationEnabledSwitch];
  [v3 reloadSpecifier:v4];

  v5 = *(a1 + 32);

  return [v5 reloadTodayNotificationSpecifiers:0];
}

void sub_3A94(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 includeRemindersDueTodayInBadgeCount];
  [v1 reloadSpecifier:v2];
}

void sub_3AEC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 showAsOverdue];
  [v1 reloadSpecifier:v2];
}

void sub_3B44(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 timeZoneOverride];
  [v1 reloadSpecifier:v2];
}

void sub_3B9C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 timeZoneOverride];
  [v1 reloadSpecifier:v2];
}

void sub_3BF4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 disableAssignmentNotifications];
  [v1 reloadSpecifier:v2];
}

void sub_3C4C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 enableAutoCompleteReminders];
  [v1 reloadSpecifier:v2];
}

id sub_5560(uint64_t a1)
{
  [*(a1 + 32) setUnsavedTodayNotificationFireTime:*(a1 + 40)];
  [*(a1 + 32) reloadSpecifier:*(a1 + 48)];
  v2 = *(a1 + 32);

  return [v2 reloadTodayNotificationSpecifiers:1];
}

void sub_5F80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_5FA4(uint64_t a1, void *a2, _BYTE *a3)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v6 = [v7 name];
    [WeakRetained setTimeZoneOverrideName:v6];
  }

  *a3 = 1;
}

void sub_6030(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = +[REMLog utility];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_233C8(v2, v3);
    }
  }
}

void sub_62C4(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) daemonUserDefaults];
  [v2 setEnableAssignmentNotifications:v1];
}

void sub_666C(id a1, NSError *a2)
{
  v2 = a2;
  v3 = +[REMLog utility];
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_23440(v2, v4);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Successfully clear local categorization.", v5, 2u);
  }
}

void sub_693C(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) daemonUserDefaults];
  [v2 setShowRemindersAsOverdue:v1];
}

void sub_6BC4(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) daemonUserDefaults];
  [v2 setEnableAutoCompleteReminders:v1];
}

void sub_6E9C(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) daemonUserDefaults];
  [v2 setShouldIncludeRemindersDueTodayInBadgeCount:v1];
}

BOOL sub_7078(id a1, REMAccount *a2, id a3)
{
  v3 = [(REMAccount *)a2 capabilities];
  v4 = [v3 supportsGroceriesList];

  return v4;
}

uint64_t TimeZone.defaultCityName()()
{
  v1[27] = v0;
  v2 = sub_23680();
  v1[28] = v2;
  v1[29] = *(v2 - 8);
  v1[30] = swift_task_alloc();

  return _swift_task_switch(sub_7930, 0, 0);
}

uint64_t sub_7930()
{
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[28];
  sub_23670();
  v4 = objc_allocWithZone(GEORegionStore);
  isa = sub_23650().super.isa;
  v6 = [v4 initWithLocale:isa];
  v0[31] = v6;

  (*(v2 + 8))(v1, v3);
  v7 = swift_allocObject();
  v0[32] = v7;
  *(v7 + 16) = &_swiftEmptyArrayStorage;
  sub_236A0();
  v8 = sub_23C80();
  v0[33] = v8;

  v0[22] = sub_7EDC;
  v0[23] = v7;
  v0[18] = _NSConcreteStackBlock;
  v0[19] = 1107296256;
  v0[20] = sub_7EF8;
  v0[21] = &unk_355C8;
  v9 = _Block_copy(v0 + 18);
  v0[34] = v9;

  v0[2] = v0;
  v0[3] = sub_7B84;
  v10 = swift_continuation_init();
  v0[17] = sub_7F84(&qword_3A940, &qword_27580);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_7FCC;
  v0[13] = &unk_355F0;
  v0[14] = v10;
  [v6 regionsWithTimeZoneName:v8 types:8 sort:2 cursor:v9 finished:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_7B84()
{
  v1 = *(*v0 + 48);
  *(*v0 + 280) = v1;
  if (v1)
  {
    v2 = sub_7E00;
  }

  else
  {
    v2 = sub_7C94;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_7C94()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 256);
  _Block_release(*(v0 + 272));

  swift_beginAccess();
  v3 = *(v2 + 16);
  if (v3 >> 62)
  {
    result = sub_24000();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:
    v6 = *(v0 + 248);
    v8 = sub_236A0();
    v10 = v11;
    goto LABEL_9;
  }

  result = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v3 & 0xC000000000000001) != 0)
  {

    v5 = sub_23F90();
  }

  else
  {
    if (!*(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      return result;
    }

    v5 = *(v3 + 32);
  }

  v6 = *(v0 + 248);
  v7 = [v5 name];
  v8 = sub_23C90();
  v10 = v9;

LABEL_9:

  v12 = *(v0 + 8);

  return v12(v8, v10);
}

uint64_t sub_7E00()
{
  v1 = v0[34];
  v2 = v0[33];
  v3 = v0[31];
  swift_willThrow();

  _Block_release(v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_7EA4()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_7EF8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_7F6C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_7F84(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_7FCC(uint64_t a1, void *a2)
{
  v3 = sub_8F38((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    sub_7F84(&unk_3A9D0, &unk_26F80);
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

uint64_t sub_8078(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_80D4(void *a1)
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

uint64_t TimeZone.defaultFormattedRegionName()()
{
  v1[45] = v0;
  v2 = sub_23680();
  v1[46] = v2;
  v1[47] = *(v2 - 8);
  v1[48] = swift_task_alloc();

  return _swift_task_switch(sub_81E0, 0, 0);
}

uint64_t sub_81E0()
{
  v2 = v0[47];
  v1 = v0[48];
  v3 = v0[46];
  sub_23670();
  v4 = objc_allocWithZone(GEORegionStore);
  isa = sub_23650().super.isa;
  v6 = [v4 initWithLocale:isa];
  v0[49] = v6;

  (*(v2 + 8))(v1, v3);
  v7 = swift_allocObject();
  v0[50] = v7;
  *(v7 + 16) = &_swiftEmptyArrayStorage;
  sub_236A0();
  v8 = sub_23C80();
  v0[51] = v8;

  v0[38] = sub_8F94;
  v0[39] = v7;
  v0[34] = _NSConcreteStackBlock;
  v0[35] = 1107296256;
  v0[36] = sub_7EF8;
  v0[37] = &unk_35618;
  v9 = _Block_copy(v0 + 34);
  v0[52] = v9;

  v0[2] = v0;
  v0[3] = sub_8434;
  v10 = swift_continuation_init();
  v0[25] = sub_7F84(&qword_3A940, &qword_27580);
  v0[18] = _NSConcreteStackBlock;
  v0[19] = 1107296256;
  v0[20] = sub_7FCC;
  v0[21] = &unk_35640;
  v0[22] = v10;
  [v6 regionsWithTimeZoneName:v8 types:8 sort:2 cursor:v9 finished:v0 + 18];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_8434()
{
  v1 = *(*v0 + 48);
  *(*v0 + 424) = v1;
  if (v1)
  {
    v2 = sub_8910;
  }

  else
  {
    v2 = sub_8544;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_8544()
{
  v1 = *(v0 + 408);
  v2 = *(v0 + 400);
  _Block_release(*(v0 + 416));

  swift_beginAccess();
  v3 = *(v2 + 16);
  if (v3 >> 62)
  {
    v4 = sub_24000();
    if (v4)
    {
LABEL_3:
      if ((v3 & 0xC000000000000001) != 0)
      {

        v5 = sub_23F90();
      }

      else
      {
        if (!*(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
        {
          __break(1u);
          return _swift_continuation_await(v4);
        }

        v5 = *(v3 + 32);
      }

      *(v0 + 432) = v5;
      v6 = *(v0 + 392);
      *(v0 + 80) = v0;
      *(v0 + 120) = v0 + 344;
      *(v0 + 88) = sub_8770;
      v7 = swift_continuation_init();
      *(v0 + 264) = sub_7F84(&qword_3A948, &qword_27590);
      *(v0 + 208) = _NSConcreteStackBlock;
      *(v0 + 216) = 1107296256;
      *(v0 + 224) = sub_8B10;
      *(v0 + 232) = &unk_35668;
      *(v0 + 240) = v7;
      [v6 formattedNameForRegion:v5 result:v0 + 208];
      v4 = v0 + 80;

      return _swift_continuation_await(v4);
    }
  }

  else
  {
    v4 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
    if (v4)
    {
      goto LABEL_3;
    }
  }

  v8 = *(v0 + 392);
  v9 = sub_236A0();
  v11 = v10;

  v12 = *(v0 + 8);

  return v12(v9, v11);
}

uint64_t sub_8770()
{
  v1 = *(*v0 + 112);
  *(*v0 + 440) = v1;
  if (v1)
  {
    v2 = sub_89AC;
  }

  else
  {
    v2 = sub_8880;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_8880()
{
  v1 = *(v0 + 392);

  v2 = *(v0 + 344);
  v3 = *(v0 + 352);

  v4 = *(v0 + 8);

  return v4(v2, v3);
}

uint64_t sub_8910()
{
  v1 = v0[52];
  v2 = v0[51];
  v3 = v0[49];
  swift_willThrow();

  _Block_release(v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_89AC()
{
  v1 = v0[54];
  v2 = v0[49];
  swift_willThrow();

  v3 = v0[1];

  return v3();
}

uint64_t sub_8A3C(void *a1, _BYTE *a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = a1;
  sub_23CF0();
  if (*(&dword_10 + (*(a3 + 16) & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*(a3 + 16) & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_23D20();
  }

  sub_23D30();
  result = swift_endAccess();
  *a2 = 1;
  return result;
}

uint64_t sub_8B10(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_8F38((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_7F84(&unk_3A9D0, &unk_26F80);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    v8 = sub_23C90();
    v9 = *(*(v4 + 64) + 40);
    *v9 = v8;
    v9[1] = v10;

    return _swift_continuation_throwingResume(v4);
  }
}

uint64_t TimeZone.localizedFullName.getter()
{
  v0 = sub_7F84(&qword_3A950, &qword_26F70);
  __chkstk_darwin(v0 - 8);
  v2 = &v8 - v1;
  sub_23670();
  v3 = sub_23680();
  (*(*(v3 - 8) + 56))(v2, 0, 1, v3);
  v4 = sub_236C0();
  v6 = v5;
  sub_8CD0(v2);
  if (v6)
  {
    return v4;
  }

  else
  {
    return sub_236A0();
  }
}

uint64_t sub_8CD0(uint64_t a1)
{
  v2 = sub_7F84(&qword_3A950, &qword_26F70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t variable initialization expression of REMDeferredAction.lock()
{
  v0 = sub_237A0();
  __chkstk_darwin(v0);
  sub_8E28();
  sub_7F84(&qword_3A960, &unk_27260);
  sub_8E80();
  sub_23F20();
  sub_237C0();
  swift_allocObject();
  return sub_237B0();
}

unint64_t sub_8E28()
{
  result = qword_3A958;
  if (!qword_3A958)
  {
    sub_237A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3A958);
  }

  return result;
}

unint64_t sub_8E80()
{
  result = qword_3A968;
  if (!qword_3A968)
  {
    sub_8EE4(&qword_3A960, &unk_27260);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3A968);
  }

  return result;
}

uint64_t sub_8EE4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void *sub_8F38(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

Swift::Int REMTimeZonePickerViewModel.SectionIdentifier.hashValue.getter()
{
  sub_24090();
  sub_240A0(0);
  return sub_240B0();
}

Swift::Int sub_900C(uint64_t a1)
{
  sub_24090();
  sub_240A0(0);
  return sub_240B0();
}

uint64_t static REMTimeZonePickerViewModel.ItemIdentifier.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_7F84(&qword_3AA40, &unk_26F90);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v12 - v6;
  v8 = *(v5 + 56);
  sub_AD44(a1, &v12 - v6, type metadata accessor for REMTimeZonePickerViewModel.ItemIdentifier);
  sub_AD44(a2, &v7[v8], type metadata accessor for REMTimeZonePickerViewModel.ItemIdentifier);
  LOBYTE(a2) = sub_236D0();
  v9 = sub_23700();
  v10 = *(*(v9 - 8) + 8);
  v10(&v7[v8], v9);
  v10(v7, v9);
  return a2 & 1;
}

uint64_t REMTimeZonePickerViewModel.ItemIdentifier.hash(into:)(uint64_t a1)
{
  v2 = type metadata accessor for REMTimeZonePickerViewModel.ItemIdentifier(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AD44(v1, v4, type metadata accessor for REMTimeZonePickerViewModel.ItemIdentifier);
  sub_240A0(0);
  v5 = sub_23700();
  sub_AE00(&qword_3AA48, &type metadata accessor for TimeZone, &protocol conformance descriptor for TimeZone);
  sub_23C30();
  return (*(*(v5 - 8) + 8))(v4, v5);
}

Swift::Int REMTimeZonePickerViewModel.ItemIdentifier.hashValue.getter()
{
  v1 = type metadata accessor for REMTimeZonePickerViewModel.ItemIdentifier(0);
  __chkstk_darwin(v1 - 8);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24090();
  sub_AD44(v0, v3, type metadata accessor for REMTimeZonePickerViewModel.ItemIdentifier);
  sub_240A0(0);
  v4 = sub_23700();
  sub_AE00(&qword_3AA48, &type metadata accessor for TimeZone, &protocol conformance descriptor for TimeZone);
  sub_23C30();
  (*(*(v4 - 8) + 8))(v3, v4);
  return sub_240B0();
}

Swift::Int sub_93E0(uint64_t a1)
{
  __chkstk_darwin(a1 - 8);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24090();
  sub_AD44(v1, v3, type metadata accessor for REMTimeZonePickerViewModel.ItemIdentifier);
  sub_240A0(0);
  v4 = sub_23700();
  sub_AE00(&qword_3AA48, &type metadata accessor for TimeZone, &protocol conformance descriptor for TimeZone);
  sub_23C30();
  (*(*(v4 - 8) + 8))(v3, v4);
  return sub_240B0();
}

uint64_t sub_950C(uint64_t a1)
{
  __chkstk_darwin(a1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AD44(v1, v3, type metadata accessor for REMTimeZonePickerViewModel.ItemIdentifier);
  sub_240A0(0);
  v4 = sub_23700();
  sub_AE00(&qword_3AA48, &type metadata accessor for TimeZone, &protocol conformance descriptor for TimeZone);
  sub_23C30();
  return (*(*(v4 - 8) + 8))(v3, v4);
}

Swift::Int sub_9624(uint64_t a1)
{
  __chkstk_darwin(a1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24090();
  sub_AD44(v1, v3, type metadata accessor for REMTimeZonePickerViewModel.ItemIdentifier);
  sub_240A0(0);
  v4 = sub_23700();
  sub_AE00(&qword_3AA48, &type metadata accessor for TimeZone, &protocol conformance descriptor for TimeZone);
  sub_23C30();
  (*(*(v4 - 8) + 8))(v3, v4);
  return sub_240B0();
}

uint64_t REMTimeZonePickerViewModel.CellViewModel.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23700();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t REMTimeZonePickerViewModel.CellViewModel.cityName.getter()
{
  v1 = *(v0 + *(type metadata accessor for REMTimeZonePickerViewModel.CellViewModel(0) + 20));

  return v1;
}

uint64_t sub_9814(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t REMTimeZonePickerViewModel.CellViewModel.init(id:cityName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_23700();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for REMTimeZonePickerViewModel.CellViewModel(0);
  v10 = (a4 + *(result + 20));
  *v10 = a2;
  v10[1] = a3;
  return result;
}

uint64_t static REMTimeZonePickerViewModel.CellViewModel.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_236D0() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for REMTimeZonePickerViewModel.CellViewModel(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  if (v5 == *v7 && v6 == v7[1])
  {
    return 1;
  }

  return sub_24060();
}

uint64_t sub_9950(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_236D0() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  if (v7 == *v9 && v8 == v9[1])
  {
    return 1;
  }

  return sub_24060();
}

uint64_t REMTimeZonePickerViewModel.searchTerm.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t REMTimeZonePickerViewModel.cellViewModels.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

void __swiftcall REMTimeZonePickerViewModel.init(searchTerm:cellViewModels:)(RemindersSettings::REMTimeZonePickerViewModel *__return_ptr retstr, Swift::String searchTerm, Swift::OpaquePointer cellViewModels)
{
  sub_A844(searchTerm._countAndFlagsBits, searchTerm._object, cellViewModels._rawValue, v5);
  v4 = v5[1];
  *&retstr->itemIdentifiers._rawValue = v5[0];
  retstr->searchTerm = v4;
  *&retstr->cellViewModels._rawValue = v5[2];
}

uint64_t REMTimeZonePickerViewModel.cellViewModel(with:)@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  v4 = *(v2 + 40);
  if (*(v4 + 16) && (v5 = sub_9D14(a2), (v6 & 1) != 0))
  {
    v7 = v5;
    v8 = *(v4 + 56);
    v9 = type metadata accessor for REMTimeZonePickerViewModel.CellViewModel(0);
    v16 = *(v9 - 8);
    sub_AD44(v8 + *(v16 + 72) * v7, a1, type metadata accessor for REMTimeZonePickerViewModel.CellViewModel);
    v10 = *(v16 + 56);
    v11 = a1;
    v12 = 0;
    v13 = v9;
  }

  else
  {
    v14 = type metadata accessor for REMTimeZonePickerViewModel.CellViewModel(0);
    v10 = *(*(v14 - 8) + 56);
    v13 = v14;
    v11 = a1;
    v12 = 1;
  }

  return v10(v11, v12, 1, v13);
}

uint64_t REMTimeZonePickerViewModel.snapshot(previousViewModel:)(void *a1)
{
  type metadata accessor for REMTimeZonePickerViewModel.ItemIdentifier(0);
  sub_ADAC();
  sub_AE00(&qword_3B0B0, type metadata accessor for REMTimeZonePickerViewModel.ItemIdentifier, &protocol conformance descriptor for REMTimeZonePickerViewModel.ItemIdentifier);
  result = sub_23940();
  if (*(*v1 + 16))
  {
    sub_7F84(&unk_3B0A0, &unk_27600);
    v4._rawValue = &off_354E8;
    sub_23920(v4);
    result = sub_23910();
  }

  if (*a1)
  {
    v5 = sub_AE48(a1[5], v1[5]);
    sub_7F84(&unk_3B0A0, &unk_27600);
    v6._rawValue = v5;
    sub_23930(v6);
  }

  return result;
}

unint64_t sub_9D14(uint64_t a1)
{
  sub_23700();
  sub_AE00(&qword_3AA48, &type metadata accessor for TimeZone, &protocol conformance descriptor for TimeZone);
  v2 = sub_23C20();

  return sub_A290(a1, v2);
}

unint64_t sub_9DAC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_23F40(*(v2 + 40));

  return sub_A450(a1, v4);
}

uint64_t sub_9DF0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for REMTimeZonePickerViewModel.CellViewModel(0);
  v42 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v47 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23700();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v46 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_7F84(&qword_3AB98, &unk_27150);
  v43 = v4;
  result = sub_24020();
  v12 = result;
  if (*(v10 + 16))
  {
    v38 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v39 = (v8 + 16);
    v40 = v8;
    v44 = (v8 + 32);
    v19 = result + 64;
    v41 = v10;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v45 = *(v8 + 72);
      v26 = v25 + v45 * v24;
      if (v43)
      {
        (*v44)(v46, v26, v7);
        v27 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_C590(v27 + v28 * v24, v47, type metadata accessor for REMTimeZonePickerViewModel.CellViewModel);
      }

      else
      {
        (*v39)(v46, v26, v7);
        v29 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_AD44(v29 + v28 * v24, v47, type metadata accessor for REMTimeZonePickerViewModel.CellViewModel);
      }

      sub_AE00(&qword_3AA48, &type metadata accessor for TimeZone, &protocol conformance descriptor for TimeZone);
      result = sub_23C20();
      v30 = -1 << *(v12 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v19 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v19 + 8 * v32);
          if (v36 != -1)
          {
            v20 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v31) & ~*(v19 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v44)((*(v12 + 48) + v45 * v20), v46, v7);
      result = sub_C590(v47, *(v12 + 56) + v28 * v20, type metadata accessor for REMTimeZonePickerViewModel.CellViewModel);
      ++*(v12 + 16);
      v8 = v40;
      v10 = v41;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v10 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v14, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v37;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

unint64_t sub_A290(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_23700();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_AE00(&qword_3AB90, &type metadata accessor for TimeZone, &protocol conformance descriptor for TimeZone);
      v15 = sub_23C50();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_A450(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_C414(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_23F50();
      sub_C470(v8);
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

char *sub_A518()
{
  v1 = v0;
  v2 = type metadata accessor for REMTimeZonePickerViewModel.CellViewModel(0);
  v36 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v35 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_23700();
  v37 = *(v34 - 8);
  __chkstk_darwin(v34);
  v33 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_7F84(&qword_3AB98, &unk_27150);
  v5 = *v0;
  v6 = sub_24010();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v38 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v31 = v37 + 32;
    v32 = v37 + 16;
    v17 = v33;
    if (v15)
    {
      do
      {
        v18 = __clz(__rbit64(v15));
        v39 = (v15 - 1) & v15;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = v37;
        v23 = *(v37 + 72) * v21;
        v24 = v34;
        (*(v37 + 16))(v17, *(v5 + 48) + v23, v34);
        v25 = v35;
        v26 = *(v36 + 72) * v21;
        sub_AD44(*(v5 + 56) + v26, v35, type metadata accessor for REMTimeZonePickerViewModel.CellViewModel);
        v27 = v38;
        (*(v22 + 32))(*(v38 + 48) + v23, v17, v24);
        result = sub_C590(v25, *(v27 + 56) + v26, type metadata accessor for REMTimeZonePickerViewModel.CellViewModel);
        v15 = v39;
      }

      while (v39);
    }

    v19 = v11;
    v7 = v38;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v29;
        goto LABEL_18;
      }

      v20 = *(v30 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v39 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void sub_A844(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v45 = a1;
  v46 = a2;
  v47 = a4;
  v5 = sub_23700();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v58 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for REMTimeZonePickerViewModel.ItemIdentifier(0);
  v54 = *(v8 - 8);
  __chkstk_darwin(v8 - 8);
  v57 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for REMTimeZonePickerViewModel.CellViewModel(0);
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10 - 8);
  v55 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v56 = &v45 - v14;
  v60 = &_swiftEmptyDictionarySingleton;
  v15 = *(a3 + 16);
  v16 = sub_10CF0(0, v15, 0, &_swiftEmptyArrayStorage);
  sub_7F84(&unk_3B0C0, &qword_27610);
  sub_23C10(v15);
  v53 = *(a3 + 16);
  if (v53)
  {
    v17 = 0;
    v52 = a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v18 = (v6 + 16);
    v48 = v6;
    v49 = v11;
    v50 = a3;
    v51 = (v6 + 8);
    while (v17 < *(a3 + 16))
    {
      v19 = *(v11 + 72);
      v20 = v56;
      sub_AD44(v52 + v19 * v17, v56, type metadata accessor for REMTimeZonePickerViewModel.CellViewModel);
      v21 = *v18;
      (*v18)(v57, v20, v5);
      v23 = v16[2];
      v22 = v16[3];
      if (v23 >= v22 >> 1)
      {
        v16 = sub_10CF0((v22 > 1), v23 + 1, 1, v16);
      }

      v16[2] = v23 + 1;
      sub_C590(v57, v16 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v23, type metadata accessor for REMTimeZonePickerViewModel.ItemIdentifier);
      v24 = v58;
      v25 = v56;
      v26 = v5;
      v21(v58, v56, v5);
      sub_C590(v25, v55, type metadata accessor for REMTimeZonePickerViewModel.CellViewModel);
      v27 = v60;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v59 = v27;
      v30 = sub_9D14(v24);
      v31 = v27[2];
      v32 = (v29 & 1) == 0;
      v33 = v31 + v32;
      if (__OFADD__(v31, v32))
      {
        goto LABEL_20;
      }

      v34 = v29;
      if (v27[3] >= v33)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_A518();
        }
      }

      else
      {
        sub_9DF0(v33, isUniquelyReferenced_nonNull_native);
        v35 = sub_9D14(v58);
        if ((v34 & 1) != (v36 & 1))
        {
          goto LABEL_22;
        }

        v30 = v35;
      }

      v5 = v26;
      v37 = v59;
      if (v34)
      {
        sub_C5F8(v55, v59[7] + v30 * v19);
        (*v51)(v58, v26);
      }

      else
      {
        v59[(v30 >> 6) + 8] |= 1 << v30;
        v38 = v48;
        v39 = v58;
        v21(v37[6] + *(v48 + 72) * v30, v58, v5);
        sub_C590(v55, v37[7] + v30 * v19, type metadata accessor for REMTimeZonePickerViewModel.CellViewModel);
        (*(v38 + 8))(v39, v5);
        v40 = v37[2];
        v41 = __OFADD__(v40, 1);
        v42 = v40 + 1;
        if (v41)
        {
          goto LABEL_21;
        }

        v37[2] = v42;
      }

      ++v17;
      v60 = v37;
      v11 = v49;
      a3 = v50;
      if (v53 == v17)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    sub_24070();
    __break(1u);
  }

  else
  {
    v37 = v60;
LABEL_18:
    v43 = v47;
    *v47 = v16;
    *(v43 + 8) = 0;
    v44 = v46;
    v43[2] = v45;
    v43[3] = v44;
    v43[4] = a3;
    v43[5] = v37;
  }
}

uint64_t sub_AD44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_ADAC()
{
  result = qword_3AA50;
  if (!qword_3AA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3AA50);
  }

  return result;
}

uint64_t sub_AE00(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_AE48(uint64_t a1, uint64_t a2)
{
  v79 = a1;
  v3 = type metadata accessor for REMTimeZonePickerViewModel.ItemIdentifier(0);
  v62 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v63 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for REMTimeZonePickerViewModel.CellViewModel(0);
  v82 = *(v65 - 8);
  v5 = __chkstk_darwin(v65);
  v66 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v77 = &v61 - v8;
  v9 = __chkstk_darwin(v7);
  v11 = &v61 - v10;
  __chkstk_darwin(v9);
  v73 = &v61 - v12;
  v13 = sub_23700();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v70 = &v61 - v18;
  v19 = sub_7F84(&qword_3AB80, &qword_27138);
  v20 = __chkstk_darwin(v19 - 8);
  v22 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v61 - v23;
  v25 = *(a2 + 64);
  v81 = a2 + 64;
  v26 = 1 << *(a2 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & v25;
  v29 = (v26 + 63) >> 6;
  v75 = (v14 + 16);
  v76 = a2;
  v83 = (v14 + 32);
  v72 = v14;
  v78 = (v14 + 8);

  v31 = 0;
  v64 = &_swiftEmptyArrayStorage;
  v74 = v11;
  v80 = v13;
  v71 = v17;
  v68 = v24;
  v69 = v22;
  v67 = v29;
  while (v28)
  {
    v32 = v31;
LABEL_16:
    v35 = __clz(__rbit64(v28));
    v28 &= v28 - 1;
    v36 = v35 | (v32 << 6);
    v37 = v76;
    v38 = v72;
    v39 = v70;
    (*(v72 + 16))(v70, *(v76 + 48) + *(v72 + 72) * v36, v13);
    v40 = v13;
    v41 = v73;
    sub_AD44(*(v37 + 56) + *(v82 + 72) * v36, v73, type metadata accessor for REMTimeZonePickerViewModel.CellViewModel);
    v42 = sub_7F84(&qword_3AB88, &unk_27140);
    v43 = *(v42 + 48);
    v44 = *(v38 + 32);
    v22 = v69;
    v44(v69, v39, v40);
    sub_C590(v41, &v22[v43], type metadata accessor for REMTimeZonePickerViewModel.CellViewModel);
    (*(*(v42 - 8) + 56))(v22, 0, 1, v42);
    v11 = v74;
    v17 = v71;
    v29 = v67;
    v24 = v68;
LABEL_17:
    sub_C4C4(v22, v24);
    v45 = sub_7F84(&qword_3AB88, &unk_27140);
    if ((*(*(v45 - 8) + 48))(v24, 1, v45) == 1)
    {

      return v64;
    }

    v46 = *(v45 + 48);
    v13 = v80;
    (*v83)(v17, v24, v80);
    v47 = v11;
    sub_C590(&v24[v46], v11, type metadata accessor for REMTimeZonePickerViewModel.CellViewModel);
    v48 = v79;
    if (*(v79 + 16) && (v49 = sub_9D14(v17), (v50 & 1) != 0))
    {
      v51 = v66;
      sub_AD44(*(v48 + 56) + *(v82 + 72) * v49, v66, type metadata accessor for REMTimeZonePickerViewModel.CellViewModel);
      sub_C590(v51, v77, type metadata accessor for REMTimeZonePickerViewModel.CellViewModel);
      v11 = v47;
      if (sub_236D0() & 1) != 0 && ((v52 = *(v65 + 20), v53 = (v77 + v52), v54 = *(v77 + v52 + 8), v55 = &v47[v52], *v53 == *v55) && v54 == *(v55 + 1) || (sub_24060()))
      {
        (*v78)(v17, v13);
      }

      else
      {
        (*v75)(v63, v17, v13);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v64 = sub_10CF0(0, v64[2] + 1, 1, v64);
        }

        v58 = v64[2];
        v57 = v64[3];
        if (v58 >= v57 >> 1)
        {
          v64 = sub_10CF0((v57 > 1), v58 + 1, 1, v64);
        }

        (*v78)(v17, v13);
        v59 = v63;
        v60 = v64;
        v64[2] = v58 + 1;
        sub_C590(v59, v60 + ((*(v62 + 80) + 32) & ~*(v62 + 80)) + *(v62 + 72) * v58, type metadata accessor for REMTimeZonePickerViewModel.ItemIdentifier);
      }

      sub_C534(v77);
    }

    else
    {
      (*v78)(v17, v13);
      v11 = v47;
    }

    result = sub_C534(v11);
  }

  if (v29 <= v31 + 1)
  {
    v33 = v31 + 1;
  }

  else
  {
    v33 = v29;
  }

  v34 = v33 - 1;
  while (1)
  {
    v32 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      break;
    }

    if (v32 >= v29)
    {
      v56 = sub_7F84(&qword_3AB88, &unk_27140);
      (*(*(v56 - 8) + 56))(v22, 1, 1, v56);
      v28 = 0;
      v31 = v34;
      goto LABEL_17;
    }

    v28 = *(v81 + 8 * v32);
    ++v31;
    if (v28)
    {
      v31 = v32;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_B5E8()
{
  result = qword_3AA58;
  if (!qword_3AA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3AA58);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for REMTimeZonePickerViewModel(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t destroy for REMTimeZonePickerViewModel(void *a1)
{
}

uint64_t initializeWithCopy for REMTimeZonePickerViewModel(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v3 = a2[3];
  *(a1 + 16) = a2[2];
  *(a1 + 24) = v3;
  v4 = a2[5];
  *(a1 + 32) = a2[4];
  *(a1 + 40) = v4;

  return a1;
}

uint64_t *assignWithCopy for REMTimeZonePickerViewModel(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  a1[2] = a2[2];
  a1[3] = a2[3];

  a1[4] = a2[4];

  a1[5] = a2[5];

  return a1;
}

__n128 initializeWithTake for REMTimeZonePickerViewModel(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t *assignWithTake for REMTimeZonePickerViewModel(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  a1[2] = a2[2];

  *(a1 + 3) = *(a2 + 3);

  a1[5] = a2[5];

  return a1;
}

uint64_t getEnumTagSinglePayload for REMTimeZonePickerViewModel(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t storeEnumTagSinglePayload for REMTimeZonePickerViewModel(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for REMTimeZonePickerViewModel.SectionIdentifier(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for REMTimeZonePickerViewModel.SectionIdentifier(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for REMTimeZonePickerViewModel.ItemIdentifier(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v7 = *a2;
    *a1 = *a2;
    a1 = (v7 + ((v4 + 16) & ~v4));
  }

  else
  {
    v6 = sub_23700();
    (*(*(v6 - 8) + 16))(a1, a2, v6);
  }

  return a1;
}

uint64_t destroy for REMTimeZonePickerViewModel.ItemIdentifier(uint64_t a1)
{
  v2 = sub_23700();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

uint64_t initializeWithCopy for REMTimeZonePickerViewModel.ItemIdentifier(uint64_t a1, uint64_t a2)
{
  v4 = sub_23700();
  (*(*(v4 - 8) + 16))(a1, a2, v4);
  return a1;
}

uint64_t assignWithCopy for REMTimeZonePickerViewModel.ItemIdentifier(uint64_t a1, uint64_t a2)
{
  v4 = sub_23700();
  (*(*(v4 - 8) + 24))(a1, a2, v4);
  return a1;
}

uint64_t initializeWithTake for REMTimeZonePickerViewModel.ItemIdentifier(uint64_t a1, uint64_t a2)
{
  v4 = sub_23700();
  (*(*(v4 - 8) + 32))(a1, a2, v4);
  return a1;
}

uint64_t assignWithTake for REMTimeZonePickerViewModel.ItemIdentifier(uint64_t a1, uint64_t a2)
{
  v4 = sub_23700();
  (*(*(v4 - 8) + 40))(a1, a2, v4);
  return a1;
}

uint64_t getEnumTagSinglePayload for REMTimeZonePickerViewModel.ItemIdentifier(uint64_t a1, uint64_t a2)
{
  v4 = sub_7F84(&qword_3AA68, &qword_270F8);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t storeEnumTagSinglePayload for REMTimeZonePickerViewModel.ItemIdentifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_7F84(&qword_3AA68, &qword_270F8);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t sub_BDC0(uint64_t a1)
{
  result = sub_23700();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8);
    swift_initEnumMetadataSingleCase();
    result = 0;
    *(*(a1 - 8) + 84) = *(v4 + 84);
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for REMTimeZonePickerViewModel.CellViewModel(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v12 = *a2;
    *a1 = *a2;
    a1 = (v12 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = sub_23700();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = *(a3 + 20);
    v9 = (a1 + v8);
    v10 = (a2 + v8);
    v11 = v10[1];
    *v9 = *v10;
    v9[1] = v11;
  }

  return a1;
}

uint64_t destroy for REMTimeZonePickerViewModel.CellViewModel(uint64_t a1, uint64_t a2)
{
  v3 = sub_23700();
  (*(*(v3 - 8) + 8))(a1, v3);
}

uint64_t initializeWithCopy for REMTimeZonePickerViewModel.CellViewModel(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23700();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  v10 = v9[1];
  *v8 = *v9;
  v8[1] = v10;

  return a1;
}

uint64_t assignWithCopy for REMTimeZonePickerViewModel.CellViewModel(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23700();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  *v8 = *v9;
  v8[1] = v9[1];

  return a1;
}

uint64_t initializeWithTake for REMTimeZonePickerViewModel.CellViewModel(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23700();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t assignWithTake for REMTimeZonePickerViewModel.CellViewModel(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23700();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  v11 = *v9;
  v10 = v9[1];
  *v8 = v11;
  v8[1] = v10;

  return a1;
}

uint64_t sub_C1F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23700();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_C2C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_23700();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_C380(uint64_t a1)
{
  result = sub_23700();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_C4C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_7F84(&qword_3AB80, &qword_27138);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_C534(uint64_t a1)
{
  v2 = type metadata accessor for REMTimeZonePickerViewModel.CellViewModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_C590(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_C5F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for REMTimeZonePickerViewModel.CellViewModel(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_C65C()
{
  v0 = sub_238C0();
  sub_E5E4(v0, qword_3ABA0);
  sub_E648(v0, qword_3ABA0);
  v1 = [objc_opt_self() utility];
  return sub_238D0();
}

uint64_t sub_C7A4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_7F84(&qword_3AC40, qword_271E0);
  __chkstk_darwin(v3 - 8);
  v55 = &v49 - v4;
  v59 = sub_23600();
  v54 = *(v59 - 8);
  __chkstk_darwin(v59);
  v50 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_235B0();
  v6 = *(v53 - 8);
  __chkstk_darwin(v53);
  v8 = (&v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_23680();
  __chkstk_darwin(v9 - 8);
  v10 = sub_23C70();
  __chkstk_darwin(v10 - 8);
  v11 = sub_235C0();
  v57 = *(v11 - 8);
  v58 = v11;
  v12 = __chkstk_darwin(v11);
  v60 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v61 = &v49 - v15;
  __chkstk_darwin(v14);
  v17 = &v49 - v16;
  v64.receiver = v0;
  v64.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v64, "viewDidLoad");
  v19 = REMSettingsBundleGet(v18);
  v48._countAndFlagsBits = 0x800000000002BC30;
  v65._countAndFlagsBits = 0x6E6F5A20656D6954;
  v65._object = 0xE900000000000065;
  v68.value._countAndFlagsBits = 0;
  v68.value._object = 0;
  v20.super.isa = v19;
  v69._countAndFlagsBits = 0;
  v69._object = 0xE000000000000000;
  sub_235A0(v65, v68, v20, v69, 0xD00000000000002ALL, v48);

  v51 = v1;
  v21 = [v1 navigationItem];
  v22 = sub_23C80();

  [v21 setTitle:v22];

  v62 = sub_23C90();
  v63 = v23;
  v66._countAndFlagsBits = 47;
  v66._object = 0xE100000000000000;
  sub_23CC0(v66);
  v67._countAndFlagsBits = sub_23C90();
  sub_23CC0(v67);

  v52 = v62;
  sub_23C60();
  sub_23670();
  v24 = ObjectType;
  *v8 = ObjectType;
  v25 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v26 = *(v6 + 104);
  v27 = v53;
  v26(v8, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v53);
  v56 = v17;
  sub_235D0();
  sub_23C60();
  sub_23670();
  *v8 = v24;
  v28 = v27;
  v26(v8, v25, v27);
  sub_235D0();
  sub_23C60();
  sub_23670();
  *v8 = v24;
  v29 = v59;
  v26(v8, v25, v28);
  v30 = v54;
  sub_235D0();
  v31 = v55;
  sub_235F0();
  v32 = v31;

  if ((*(v30 + 48))(v31, 1, v29) == 1)
  {
    v33 = v58;
    v34 = *(v57 + 8);
    v34(v60, v58);
    v34(v61, v33);
    v34(v56, v33);
    return sub_ECC4(v32, &qword_3AC40, qword_271E0);
  }

  else
  {
    v36 = v50;
    (*(v30 + 32))(v50, v32, v29);
    v55 = sub_23C90();
    v53 = v37;
    sub_7F84(&qword_3AC48, &unk_27890);
    v38 = v57;
    v39 = *(v57 + 72);
    v40 = (*(v57 + 80) + 32) & ~*(v57 + 80);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_27160;
    v42 = v41 + v40;
    v43 = *(v38 + 16);
    v44 = v58;
    v43(v42, v61, v58);
    v45 = v60;
    v43(v42 + v39, v60, v44);
    v46 = v56;
    sub_23E40();

    (*(v30 + 8))(v36, v59);
    v47 = *(v38 + 8);
    v47(v45, v44);
    v47(v61, v44);
    return (v47)(v46, v44);
  }
}

void sub_CF48(char a1)
{
  v8.receiver = v1;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, "viewWillAppear:", a1 & 1);
  v3 = [objc_opt_self() daemonUserDefaults];
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7[4] = sub_E9EC;
  v7[5] = v4;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_D4A4;
  v7[3] = &unk_35808;
  v5 = _Block_copy(v7);

  v6 = [v3 observeTimeZoneOverrideWithBlock:v5];
  _Block_release(v5);

  *&v1[OBJC_IVAR____TtC17RemindersSettings30TTRITimeZoneOverrideController_daemonUserDefaultsTimeZoneOverrideObserver] = v6;
  swift_unknownObjectRelease();
  sub_D0E4();
}

void sub_D090(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_D0E4();
  }
}

void sub_D0E4()
{
  v1 = sub_7F84(&qword_3AC38, &qword_27250);
  __chkstk_darwin(v1 - 8);
  v3 = &v24 - v2;
  v4 = sub_7F84(&qword_3AC10, &unk_27640);
  __chkstk_darwin(v4 - 8);
  v6 = &v24 - v5;
  v7 = sub_23700();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v11 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v24 - v12;
  v26 = OBJC_IVAR____TtC17RemindersSettings30TTRITimeZoneOverrideController_timeZoneOverrideTask;
  v27 = v0;
  if (*&v0[OBJC_IVAR____TtC17RemindersSettings30TTRITimeZoneOverrideController_timeZoneOverrideTask])
  {

    sub_23DB0();
  }

  v14 = [objc_opt_self() daemonUserDefaults];
  v15 = [v14 timeZoneOverride];

  if (v15)
  {
    sub_23C90();

    sub_23690();

    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      sub_ECC4(v6, &qword_3AC10, &unk_27640);
    }

    else
    {
      v25 = *(v8 + 32);
      v25(v13, v6, v7);
      v16 = sub_23DA0();
      v17 = *(*(v16 - 8) + 56);
      v24 = v3;
      v17(v3, 1, 1, v16);
      (*(v8 + 16))(v11, v13, v7);
      sub_23D80();
      v18 = v27;
      v19 = v27;
      v20 = sub_23D70();
      v21 = (*(v8 + 80) + 40) & ~*(v8 + 80);
      v22 = swift_allocObject();
      *(v22 + 2) = v20;
      *(v22 + 3) = &protocol witness table for MainActor;
      *(v22 + 4) = v19;
      v25(&v22[v21], v11, v7);
      v23 = sub_1B5BC(0, 0, v24, &unk_271D8, v22);
      (*(v8 + 8))(v13, v7);
      *&v18[v26] = v23;
    }
  }
}

void sub_D4A4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

char *sub_D560()
{
  v1 = v0;
  v2 = sub_23C80();
  v3 = [v0 valueForKey:v2];

  if (v3)
  {
    sub_23F10();
    swift_unknownObjectRelease();
  }

  else
  {
    v45 = 0u;
    v46 = 0u;
  }

  v47[0] = v45;
  v47[1] = v46;
  if (*(&v46 + 1))
  {
    sub_7F84(&qword_3AC30, &unk_271C0);
    v4 = swift_dynamicCast();
    if (v4)
    {
      return v44;
    }
  }

  else
  {
    v4 = sub_ECC4(v47, &qword_3AC20, &qword_277E0);
  }

  *&v47[0] = &_swiftEmptyArrayStorage;
  v6 = REMSettingsBundleGet(v4);
  v41._countAndFlagsBits = 0x800000000002BA40;
  v48._countAndFlagsBits = 0x756E614D20746553;
  v48._object = 0xEC000000796C6C61;
  v51.value._countAndFlagsBits = 0;
  v51.value._object = 0;
  v7.super.isa = v6;
  v54._countAndFlagsBits = 0;
  v54._object = 0xE000000000000000;
  sub_235A0(v48, v51, v7, v54, 0xD000000000000031, v41);

  v8 = objc_opt_self();
  v9 = sub_23C80();

  v10 = sub_23C80();
  v42._object = "setTimeZoneOverrideEnabled:";
  v11 = [v8 standardPreferenceSpecifierNamed:v9 target:v1 cell:6 detail:0 keyName:v10 defaultValue:0 scope:0 set:? get:?];

  v12 = v11;
  sub_23CF0();
  if (*(&dword_10 + (*&v47[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*&v47[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_23D20();
  }

  v13 = sub_23D30();
  v14 = *&v47[0];
  v15 = REMSettingsBundleGet(v13);
  v42._countAndFlagsBits = 0x800000000002BAA0;
  v49._countAndFlagsBits = 0x6E6F5A20656D6954;
  v49._object = 0xE900000000000065;
  v52.value._countAndFlagsBits = 0;
  v52.value._object = 0;
  v16.super.isa = v15;
  v55._countAndFlagsBits = 0;
  v55._object = 0xE000000000000000;
  sub_235A0(v49, v52, v16, v55, 0xD000000000000031, v42);

  type metadata accessor for REMTimeZonePickerViewController();
  v17 = sub_23C80();

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v19 = sub_23C80();
  v43._object = 0;
  v20 = [v8 standardPreferenceSpecifierNamed:v17 target:v1 cell:2 detail:ObjCClassFromMetadata keyName:v19 defaultValue:0 scope:0 set:? get:?];

  v21 = OBJC_IVAR____TtC17RemindersSettings30TTRITimeZoneOverrideController_timeZonePickerSpecifier;
  v22 = *&v1[OBJC_IVAR____TtC17RemindersSettings30TTRITimeZoneOverrideController_timeZonePickerSpecifier];
  *&v1[OBJC_IVAR____TtC17RemindersSettings30TTRITimeZoneOverrideController_timeZonePickerSpecifier] = v20;
  v23 = v20;

  v24 = *&v1[v21];
  if (v24)
  {
    [v24 setIdentifier:REMSettingsTimeZoneIdentifier];
  }

  v25 = [objc_opt_self() daemonUserDefaults];
  [v25 timeZoneOverrideEnabled];

  v27 = *&v1[v21];
  if (v27)
  {
    v28 = v27;
    isa = sub_23D40().super.super.isa;
    [v28 setProperty:isa forKey:PSEnabledKey];

    v26 = *&v1[v21];
    if (v26)
    {
      v26 = [v26 setControllerLoadAction:"loadTimeZonePickerController:"];
    }
  }

  v30 = REMSettingsBundleGet(v26);
  v43._countAndFlagsBits = 0x800000000002BBD0;
  v50._object = 0x800000000002BAE0;
  v50._countAndFlagsBits = 0x10000000000000E0;
  v53.value._countAndFlagsBits = 0;
  v53.value._object = 0;
  v31.super.isa = v30;
  v56._countAndFlagsBits = 0;
  v56._object = 0xE000000000000000;
  sub_235A0(v50, v53, v31, v56, 0xD000000000000031, v43);

  v32 = sub_23C80();

  v33 = [v8 groupSpecifierWithHeader:0 footer:v32];

  v34 = *&v1[v21];
  if (v34)
  {
    v35 = v34;
    v36 = v33;
    sub_23CF0();
    if (*(&dword_10 + (*&v47[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*&v47[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_23D20();
    }

    sub_23D30();
    v37 = v35;
    sub_23CF0();
    if (*(&dword_10 + (*&v47[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*&v47[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_23D20();
    }

    sub_23D30();

    v14 = *&v47[0];
  }

  sub_E968();
  v38 = sub_23D00().super.isa;
  v39 = sub_23C80();
  [v1 setValue:v38 forKey:v39];

  v5 = sub_1B3C0(v14);

  return v5;
}

id sub_DC24(void *a1)
{
  v2 = v1;
  if (qword_3A920 != -1)
  {
    swift_once();
  }

  v4 = sub_238C0();
  sub_E648(v4, qword_3ABA0);
  v5 = a1;
  v6 = sub_238B0();
  v7 = sub_23E30();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&dword_0, v6, v7, "Settings Bundle: Time zone override enabled: %@", v8, 0xCu);
    sub_ECC4(v9, &qword_3AC18, &unk_271B0);
  }

  v11 = [v5 BOOLValue];
  v12 = [objc_opt_self() daemonUserDefaults];
  [v12 setTimeZoneOverrideEnabled:v11];

  v13 = OBJC_IVAR____TtC17RemindersSettings30TTRITimeZoneOverrideController_timeZonePickerSpecifier;
  v14 = *&v2[OBJC_IVAR____TtC17RemindersSettings30TTRITimeZoneOverrideController_timeZonePickerSpecifier];
  if (v14)
  {
    v15 = v14;
    isa = sub_23D40().super.super.isa;
    [v15 setProperty:isa forKey:PSEnabledKey];

    v17 = *&v2[v13];
  }

  else
  {
    v17 = 0;
  }

  return [v2 reloadSpecifier:v17];
}

uint64_t sub_DF10(uint64_t a1)
{
  v2 = REMSettingsBundleGet(a1);
  v8._countAndFlagsBits = 0x800000000002BA00;
  v9._countAndFlagsBits = 0x6974616D6F747541;
  v9._object = 0xE900000000000063;
  v10.value._countAndFlagsBits = 0;
  v10.value._object = 0;
  v3.super.isa = v2;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v4 = sub_235A0(v9, v10, v3, v11, 0xD000000000000031, v8);

  v5 = [objc_opt_self() daemonUserDefaults];
  v6 = [v5 timeZoneOverrideEnabled];

  if (v6)
  {

    if (*(v1 + OBJC_IVAR____TtC17RemindersSettings30TTRITimeZoneOverrideController_timeZoneCity + 8))
    {
      v4 = *(v1 + OBJC_IVAR____TtC17RemindersSettings30TTRITimeZoneOverrideController_timeZoneCity);
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

uint64_t sub_E0EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_23D80();
  v4[4] = sub_23D70();
  v5 = swift_task_alloc();
  v4[5] = v5;
  *v5 = v4;
  v5[1] = sub_E1A0;

  return TimeZone.defaultCityName()();
}

uint64_t sub_E1A0(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 48) = v2;

  if (v2)
  {
    v7 = sub_23D50();
    v9 = v8;
    v10 = sub_E3D0;
  }

  else
  {
    *(v6 + 56) = a2;
    *(v6 + 64) = a1;
    v7 = sub_23D50();
    v9 = v11;
    v10 = sub_E32C;
  }

  return _swift_task_switch(v10, v7, v9);
}

uint64_t sub_E32C()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[2];

  v4 = &v3[OBJC_IVAR____TtC17RemindersSettings30TTRITimeZoneOverrideController_timeZoneCity];
  *v4 = v1;
  *(v4 + 1) = v2;

  [v3 reloadSpecifier:*&v3[OBJC_IVAR____TtC17RemindersSettings30TTRITimeZoneOverrideController_timeZonePickerSpecifier]];
  v5 = v0[1];

  return v5();
}

uint64_t sub_E3D0()
{

  if (qword_3A920 != -1)
  {
    swift_once();
  }

  v1 = sub_238C0();
  sub_E648(v1, qword_3ABA0);
  v2 = sub_238B0();
  v3 = sub_23E20();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "Failed to retrieve default city name for time zone override", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

id sub_E4F8()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t *sub_E5E4(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_E648(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

id sub_E680(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  *&v2[OBJC_IVAR____TtC17RemindersSettings30TTRITimeZoneOverrideController_timeZoneOverrideEnableSwitch] = 0;
  *&v2[OBJC_IVAR____TtC17RemindersSettings30TTRITimeZoneOverrideController_timeZonePickerSpecifier] = 0;
  *&v2[OBJC_IVAR____TtC17RemindersSettings30TTRITimeZoneOverrideController_daemonUserDefaultsTimeZoneOverrideObserver] = 0;
  *&v2[OBJC_IVAR____TtC17RemindersSettings30TTRITimeZoneOverrideController_timeZoneOverrideTask] = 0;
  v4 = &v2[OBJC_IVAR____TtC17RemindersSettings30TTRITimeZoneOverrideController_timeZoneCity];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = [objc_allocWithZone(REMStore) init];
  *&v2[OBJC_IVAR____TtC17RemindersSettings30TTRITimeZoneOverrideController_store] = v5;
  v7.receiver = v2;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, "initWithNibName:bundle:", 0, 0);
}

uint64_t sub_E744()
{
  v1 = sub_7F84(&qword_3AC10, &unk_27640);
  __chkstk_darwin(v1 - 8);
  v3 = &v12 - v2;
  v4 = sub_23700();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() daemonUserDefaults];
  v9 = [v8 timeZoneOverride];

  if (v9)
  {
    sub_23C90();

    sub_23690();

    if ((*(v5 + 48))(v3, 1, v4) != 1)
    {
      (*(v5 + 32))(v7, v3, v4);
      goto LABEL_6;
    }

    sub_ECC4(v3, &qword_3AC10, &unk_27640);
  }

  sub_236F0();
LABEL_6:
  v10 = sub_F4F0(v0, &off_357D0, v7);
  [v0 showController:v10 animate:1];

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_E968()
{
  result = qword_3AC28;
  if (!qword_3AC28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_3AC28);
  }

  return result;
}

uint64_t sub_E9B4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_E9F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_EA0C()
{
  v1 = sub_23700();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_EAD8(uint64_t a1)
{
  sub_23700();
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_EBD0;

  return sub_E0EC(a1, v4, v5, v6);
}

uint64_t sub_EBD0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_ECC4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_7F84(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_ED24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_7F84(&qword_3AC38, &qword_27250);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_FA44(a3, v22 - v9);
  v11 = sub_23DA0();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_FAB4(v10);
  }

  else
  {
    sub_23D90();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_23D50();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_23CB0() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_FAB4(a3);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_FAB4(a3);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

id sub_EF90(uint64_t a1, char *a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_23980();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_239A0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&a2[OBJC_IVAR____TtC17RemindersSettings31REMTimeZonePickerViewController_dataSource] = 0;
  v13 = &a2[OBJC_IVAR____TtC17RemindersSettings31REMTimeZonePickerViewController_lastConsumedViewModel];
  *(v13 + 1) = 0u;
  *(v13 + 2) = 0u;
  *v13 = 0u;
  *&a2[OBJC_IVAR____TtC17RemindersSettings31REMTimeZonePickerViewController_searchController] = 0;
  v14 = &a2[OBJC_IVAR____TtC17RemindersSettings31REMTimeZonePickerViewController_initialSearchTerm];
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = &a2[OBJC_IVAR____TtC17RemindersSettings31REMTimeZonePickerViewController_presenter];
  *v15 = a1;
  *(v15 + 1) = &off_35988;
  sub_FB80(0, &qword_3B0E0, UICollectionViewCompositionalLayout_ptr);
  (*(v6 + 104))(v8, enum case for UICollectionLayoutListConfiguration.Appearance.insetGrouped(_:), v5);
  sub_23990();
  v16 = sub_23EC0();
  (*(v10 + 8))(v12, v9);
  v19.receiver = a2;
  v19.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v19, "initWithCollectionViewLayout:", v16);

  return v17;
}

char *sub_F1C8(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v8 = sub_237A0();
  __chkstk_darwin(v8);
  v20[3] = type metadata accessor for REMTimeZonePickerRouter();
  v20[4] = &off_35950;
  v20[0] = a2;
  *(a4 + 3) = 0;
  swift_unknownObjectWeakInit();
  *(a4 + 5) = 0;
  swift_unknownObjectWeakInit();
  v9 = &a4[OBJC_IVAR____TtC17RemindersSettings26REMTimeZonePickerPresenter_viewModel];
  sub_A844(0, 0xE000000000000000, &_swiftEmptyArrayStorage, v21);
  v10 = v21[1];
  *v9 = v21[0];
  *(v9 + 1) = v10;
  *(v9 + 2) = v21[2];
  *&a4[OBJC_IVAR____TtC17RemindersSettings26REMTimeZonePickerPresenter_initialSetupTask] = 0;
  *&a4[OBJC_IVAR____TtC17RemindersSettings26REMTimeZonePickerPresenter_fetchSearchResultsTask] = 0;
  *(a4 + 6) = a1;
  *(a4 + 7) = &off_35BF8;
  sub_FB1C(v20, (a4 + 64));
  v11 = OBJC_IVAR____TtC17RemindersSettings26REMTimeZonePickerPresenter_currentTimeZone;
  v12 = sub_23700();
  v13 = *(v12 - 8);
  v14 = a3;
  (*(v13 + 16))(&a4[v11], a3, v12);
  sub_FB80(0, &qword_3AC50, OS_dispatch_queue_ptr);
  v15 = sub_23E70();
  type metadata accessor for REMDeferredAction();
  v16 = swift_allocObject();
  v16[3] = 0;
  swift_unknownObjectWeakInit();
  *&v22[0] = &_swiftEmptyArrayStorage;
  sub_8E28();
  sub_7F84(&qword_3A960, &unk_27260);
  sub_8E80();
  sub_23F20();
  sub_237C0();
  swift_allocObject();
  v16[5] = sub_237B0();
  v16[6] = &_swiftEmptyArrayStorage;
  v16[4] = v15;
  *&a4[OBJC_IVAR____TtC17RemindersSettings26REMTimeZonePickerPresenter_deferredAction] = v16;
  swift_beginAccess();
  v16[3] = &off_35960;
  swift_unknownObjectWeakAssign();
  sub_A844(0, 0xE000000000000000, &_swiftEmptyArrayStorage, v22);
  (*(v13 + 8))(v14, v12);
  sub_80D4(v20);
  v17 = &a4[OBJC_IVAR____TtC17RemindersSettings26REMTimeZonePickerPresenter_viewModel];
  v18 = v22[1];
  *v17 = v22[0];
  *(v17 + 1) = v18;
  *(v17 + 2) = v22[2];

  return a4;
}

id sub_F4F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_7F84(&qword_3AC38, &qword_27250);
  __chkstk_darwin(v5 - 8);
  v7 = &v34[-1] - v6;
  v8 = sub_23700();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v34[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for REMTimeZonePickerInteractor();
  v12 = swift_allocObject();
  *(v12 + 24) = 0;
  swift_unknownObjectWeakInit();
  v13 = type metadata accessor for REMTimeZonePickerRouter();
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v9 + 16))(v11, a3, v8);
  v34[3] = v13;
  v34[4] = &off_35950;
  v34[0] = v14;
  type metadata accessor for REMTimeZonePickerPresenter(0);
  v15 = swift_allocObject();
  v16 = sub_F900(v34, v13);
  __chkstk_darwin(v16);
  v18 = (&v34[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18);
  v20 = *v18;

  v21 = sub_F1C8(v12, v20, v11, v15);
  sub_80D4(v34);
  v22 = objc_allocWithZone(type metadata accessor for REMTimeZonePickerViewController());

  v24 = sub_EF90(v23, v22);
  *(v12 + 24) = &off_35978;
  swift_unknownObjectWeakAssign();
  *(v21 + 3) = &off_35B40;
  swift_unknownObjectWeakAssign();
  *(v21 + 5) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v25 = v24;
    v26._object = 0x800000000002BCF0;
    v26._countAndFlagsBits = 0xD000000000000019;
    REMDeferredAction.scheduleNextRunLoop(reason:)(v26);
    swift_unknownObjectRelease();
  }

  else
  {
    v27 = v24;
  }

  v28 = sub_23DA0();
  (*(*(v28 - 8) + 56))(v7, 1, 1, v28);
  sub_23D80();

  v29 = sub_23D70();
  v30 = swift_allocObject();
  v30[2] = v29;
  v30[3] = &protocol witness table for MainActor;
  v30[4] = v21;
  v31 = sub_ED24(0, 0, v7, &unk_27258, v30);

  *&v21[OBJC_IVAR____TtC17RemindersSettings26REMTimeZonePickerPresenter_initialSetupTask] = v31;

  return v24;
}

uint64_t sub_F900(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_F950()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_F990(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_EBD0;

  return sub_119FC(a1, v4, v5, v6);
}

uint64_t sub_FA44(uint64_t a1, uint64_t a2)
{
  v4 = sub_7F84(&qword_3AC38, &qword_27250);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_FAB4(uint64_t a1)
{
  v2 = sub_7F84(&qword_3AC38, &qword_27250);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_FB1C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_FB80(uint64_t a1, unint64_t *a2, void *a3)
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

unint64_t sub_FC00()
{
  result = qword_3ACF0;
  if (!qword_3ACF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3ACF0);
  }

  return result;
}

uint64_t sub_FC70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v3 = sub_235B0();
  v21 = *(v3 - 8);
  v22 = v3;
  __chkstk_darwin(v3);
  v19 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23680();
  __chkstk_darwin(v5 - 8);
  v6 = sub_23C70();
  __chkstk_darwin(v6 - 8);
  v20 = sub_235C0();
  v18 = *(v20 - 8);
  __chkstk_darwin(v20);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23EE0();
  __chkstk_darwin(v9 - 8);
  v10 = sub_23790();
  __chkstk_darwin(v10 - 8);
  v11 = sub_23750();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [objc_allocWithZone(PSSpecifier) init];
  [v15 setProperty:a1 forKey:PSListControllerCellHighlightingSelectionInvocationRelayKey];
  sub_23ED0();
  sub_23770();
  sub_23740();
  sub_23C60();
  sub_23670();
  (*(v21 + 104))(v19, enum case for LocalizedStringResource.BundleDescription.main(_:), v22);
  sub_235D0();
  sub_110BC(&qword_3AD08, &type metadata accessor for PreferencesControllerView, &protocol conformance descriptor for PreferencesControllerView);
  sub_23A60();
  (*(v18 + 8))(v8, v20);
  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_100AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a3;
  v4[9] = a4;
  v4[6] = a1;
  v4[7] = a2;
  v5 = sub_23790();
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  v6 = sub_239C0();
  v4[13] = v6;
  v4[14] = *(v6 - 8);
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v7 = sub_23600();
  v4[17] = v7;
  v4[18] = *(v7 - 8);
  v4[19] = swift_task_alloc();
  sub_7F84(&qword_3AD18, &qword_27340);
  v4[20] = swift_task_alloc();
  v8 = sub_23590();
  v4[21] = v8;
  v4[22] = *(v8 - 8);
  v4[23] = swift_task_alloc();
  sub_23D80();
  v4[24] = sub_23D70();
  v10 = sub_23D50();

  return _swift_task_switch(sub_102FC, v10, v9);
}

uint64_t sub_102FC()
{
  v1 = v0[21];
  v2 = v0[22];
  v4 = v0[19];
  v3 = v0[20];
  v5 = v0[17];
  v6 = v0[18];

  sub_23BD0();
  sub_23560();
  (*(v6 + 8))(v4, v5);
  if ((*(v2 + 48))(v3, 1, v1) != 1)
  {
    (*(v0[22] + 32))(v0[23], v0[20], v0[21]);
    v0[2] = sub_23570();
    v0[3] = v10;
    v0[4] = 47;
    v0[5] = 0xE100000000000000;
    sub_10C9C();
    v11 = sub_23F00();

    v13 = *(v11 + 16);
    if (!v13)
    {
      v17 = &_swiftEmptyArrayStorage;
      goto LABEL_23;
    }

    v14 = 0;
    v15 = -v13;
    v16 = v11 + 40;
    v17 = &_swiftEmptyArrayStorage;
    do
    {
      v18 = (v16 + 16 * v14++);
      while (1)
      {
        if ((v14 - 1) >= *(v11 + 16))
        {
          __break(1u);
          return result;
        }

        v19 = *(v18 - 1);
        v20 = *v18;
        v21 = HIBYTE(*v18) & 0xF;
        if ((*v18 & 0x2000000000000000) == 0)
        {
          v21 = v19 & 0xFFFFFFFFFFFFLL;
        }

        if (v21)
        {
          if (v19 != 0xD000000000000013 || 0x800000000002BD50 != v20)
          {
            result = sub_24060();
            if ((result & 1) == 0)
            {
              break;
            }
          }
        }

        ++v14;
        v18 += 2;
        if (v15 + v14 == 1)
        {
          goto LABEL_23;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      v51 = v17;
      if ((result & 1) == 0)
      {
        result = sub_11048(0, *(v17 + 2) + 1, 1);
      }

      v24 = *(v17 + 2);
      v23 = *(v17 + 3);
      v25 = v24 + 1;
      if (v24 >= v23 >> 1)
      {
        v27 = v24 + 1;
        v50 = v24;
        result = sub_11048((v23 > 1), v24 + 1, 1);
        v24 = v50;
        v25 = v27;
        v17 = v51;
      }

      *(v17 + 2) = v25;
      v26 = &v17[16 * v24];
      *(v26 + 4) = v19;
      *(v26 + 5) = v20;
      v16 = v11 + 40;
    }

    while (v15 + v14);
LABEL_23:

    sub_23BC0();
    v28 = *(v17 + 2);

    if (!v28)
    {
      sub_23580();
      if (v40)
      {
        v41 = v0[8];

        v42 = sub_23C80();

        [v41 setSpecifierIdentifierToScrollAndHighlight:v42];

        goto LABEL_42;
      }
    }

    v29 = *(v17 + 2);
    if (!v29)
    {

LABEL_42:
      v44 = v0[22];
      v43 = v0[23];
      v45 = v0[21];
      v47 = v0[14];
      v46 = v0[15];
      v48 = v0[13];
      sub_23BE0();
      (*(v47 + 8))(v46, v48);
      (*(v44 + 8))(v43, v45);
      goto LABEL_43;
    }

    v30 = (v0[11] + 8);
    while (1)
    {
      v34 = *(v17 + 4);
      v33 = *(v17 + 5);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || (v29 - 1) > *(v17 + 3) >> 1)
      {
        v17 = sub_10D18(isUniquelyReferenced_nonNull_native, v29, 1, v17);
      }

      sub_11068((v17 + 32));
      v36 = *(v17 + 2);
      memmove(v17 + 32, v17 + 48, 16 * v36 - 16);
      *(v17 + 2) = v36 - 1;
      v37._rawValue = &off_35510;
      v53._countAndFlagsBits = v34;
      v53._object = v33;
      v38 = sub_24040(v37, v53);

      if (v38 == 2)
      {
        break;
      }

      if (v38 == 1)
      {
        type metadata accessor for TTRIGroceryAddLanguageController();
LABEL_27:
        sub_23760();
        goto LABEL_28;
      }

      if (v38)
      {
        goto LABEL_29;
      }

      v39 = [objc_opt_self() specifierForDefaultListWithTarget:v0[9]];
      sub_23780();
LABEL_28:
      v31 = v0[12];
      v32 = v0[10];
      sub_110BC(&qword_3AD28, &type metadata accessor for PreferencesControllerRecipe, &protocol conformance descriptor for PreferencesControllerRecipe);
      sub_239B0();
      (*v30)(v31, v32);
LABEL_29:
      v29 = *(v17 + 2);
      if (!v29)
      {

        goto LABEL_42;
      }
    }

    type metadata accessor for TTRITimeZoneOverrideController();
    goto LABEL_27;
  }

  v7 = v0[16];
  v8 = v0[13];
  v9 = v0[14];
  sub_10C34(v0[20]);
  sub_23BC0();
  sub_23BE0();
  (*(v9 + 8))(v7, v8);
LABEL_43:

  v49 = v0[1];

  return v49();
}

uint64_t sub_1086C()
{
  v1 = sub_7F84(&qword_3ACF8, &qword_27320);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v16 - v3;
  v6 = *v0;
  v5 = *(v0 + 8);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  v8 = v6;
  v9 = v5;
  sub_7F84(&qword_3AD00, &qword_27328);
  v10 = sub_23750();
  v11 = sub_110BC(&qword_3AD08, &type metadata accessor for PreferencesControllerView, &protocol conformance descriptor for PreferencesControllerView);
  v16[0] = v10;
  v16[1] = v11;
  swift_getOpaqueTypeConformance2();
  sub_23BF0();
  v12 = swift_allocObject();
  *(v12 + 16) = v8;
  *(v12 + 24) = v9;
  sub_10BD0();
  v13 = v8;
  v14 = v9;
  sub_23BB0();
  return (*(v2 + 8))(v4, v1);
}

id sub_10A78@<X0>(void *a1@<X8>)
{
  v2 = [objc_allocWithZone(PSListControllerCellHighlightingSelectionInvocationRelay) init];
  result = [objc_allocWithZone(REMSettingsController) init];
  *a1 = v2;
  a1[1] = result;
  return result;
}

uint64_t sub_10AD4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10B1C(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_EBD0;

  return sub_100AC(a1, a2, v7, v6);
}

unint64_t sub_10BD0()
{
  result = qword_3AD10;
  if (!qword_3AD10)
  {
    sub_8EE4(&qword_3ACF8, &qword_27320);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3AD10);
  }

  return result;
}

uint64_t sub_10C34(uint64_t a1)
{
  v2 = sub_7F84(&qword_3AD18, &qword_27340);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10C9C()
{
  result = qword_3AD20;
  if (!qword_3AD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3AD20);
  }

  return result;
}

char *sub_10D18(char *result, int64_t a2, char a3, char *a4)
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
    sub_7F84(&qword_3AD30, &qword_27348);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10E4C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_7F84(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_11028(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_11128(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_11048(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_11238(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_110BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_11108(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_11344(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_11128(char *result, int64_t a2, char a3, char *a4)
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
    sub_7F84(&qword_3AD40, &qword_27358);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_11238(char *result, int64_t a2, char a3, char *a4)
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
    sub_7F84(&qword_3AD30, &qword_27348);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_11344(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_7F84(&qword_3AD48, &qword_27360);
  v10 = *(type metadata accessor for REMTimeZonePickerViewModel.CellViewModel(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for REMTimeZonePickerViewModel.CellViewModel(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *_s17RemindersSettings17RemindersSettingsVwCP_0(void *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  a1[1] = v4;
  v5 = v3;
  v6 = v4;
  return a1;
}

void destroy for RemindersSettings(uint64_t a1)
{
  v2 = *(a1 + 8);
}

uint64_t assignWithCopy for RemindersSettings(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  v7 = *(a2 + 8);
  v8 = *(a1 + 8);
  *(a1 + 8) = v7;
  v9 = v7;

  return a1;
}

__n128 initializeWithTake for RemindersSettings(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t assignWithTake for RemindersSettings(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for RemindersSettings(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for RemindersSettings(uint64_t result, int a2, int a3)
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

uint64_t sub_116C4()
{
  sub_8EE4(&qword_3ACF8, &qword_27320);
  sub_10BD0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_11730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_23BA0();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  sub_23D80();
  v4[6] = sub_23D70();
  v7 = sub_23D50();

  return _swift_task_switch(sub_11824, v7, v6);
}

uint64_t sub_11824()
{
  v1 = *(v0 + 16);

  v2 = [v1 traitCollection];
  sub_23E90();

  if (sub_23B80())
  {
    sub_23B90(1);
  }

  else
  {
    v3 = [*(v0 + 16) navigationController];
    if (v3)
    {
      v4 = v3;
    }
  }

  (*(*(v0 + 32) + 8))(*(v0 + 40), *(v0 + 24));

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_11930()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t sub_1198C()
{
  v0 = sub_238C0();
  sub_E5E4(v0, qword_3ADF8);
  sub_E648(v0, qword_3ADF8);
  v1 = [objc_opt_self() utility];
  return sub_238D0();
}

uint64_t sub_119FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = sub_23D60();
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();
  v4[7] = sub_23D80();
  v4[8] = sub_23D70();
  v6 = swift_task_alloc();
  v4[9] = v6;
  *v6 = v4;
  v6[1] = sub_11B14;

  return TimeZone.defaultCityName()();
}

uint64_t sub_11B14(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[10] = a1;
  v4[11] = a2;
  v4[12] = v2;

  v6 = sub_23D50();
  if (v2)
  {
    v7 = sub_11E94;
  }

  else
  {
    v7 = sub_11C78;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_11C78()
{
  v1 = v0[12];

  sub_23DC0();
  if (v1)
  {

    v0[2] = v1;
    swift_errorRetain();
    sub_7F84(&unk_3A9D0, &unk_26F80);
    if (swift_dynamicCast())
    {
      v3 = v0[5];
      v2 = v0[6];
      v4 = v0[4];

      (*(v3 + 8))(v2, v4);
    }

    else
    {
      if (qword_3A928 != -1)
      {
        swift_once();
      }

      v8 = sub_238C0();
      sub_E648(v8, qword_3ADF8);
      v9 = sub_238B0();
      v10 = sub_23E20();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&dword_0, v9, v10, "Failed to fetch initial time zone city name", v11, 2u);
      }
    }
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = v0[11];
      v7 = (Strong + OBJC_IVAR____TtC17RemindersSettings31REMTimeZonePickerViewController_initialSearchTerm);
      *v7 = v0[10];
      v7[1] = v6;

      swift_unknownObjectRelease();
    }

    sub_1203C(v0[10], v0[11]);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_11E94()
{

  v0[2] = v0[12];
  swift_errorRetain();
  sub_7F84(&unk_3A9D0, &unk_26F80);
  if (swift_dynamicCast())
  {
    v2 = v0[5];
    v1 = v0[6];
    v3 = v0[4];

    (*(v2 + 8))(v1, v3);
  }

  else
  {
    if (qword_3A928 != -1)
    {
      swift_once();
    }

    v4 = sub_238C0();
    sub_E648(v4, qword_3ADF8);
    v5 = sub_238B0();
    v6 = sub_23E20();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_0, v5, v6, "Failed to fetch initial time zone city name", v7, 2u);
    }
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_1203C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_7F84(&qword_3AC38, &qword_27250);
  __chkstk_darwin(v6 - 8);
  v8 = &v19 - v7;
  v9 = sub_7F84(&qword_3AF30, &qword_27538);
  __chkstk_darwin(v9 - 8);
  v11 = &v19 - v10;
  v12 = sub_7F84(&qword_3AF38, &unk_27540);
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  sub_122F0(v11, a1, a2);
  sub_ECC4(v11, &qword_3AF30, &qword_27538);
  v13 = OBJC_IVAR____TtC17RemindersSettings26REMTimeZonePickerPresenter_initialSetupTask;
  if (*(v2 + OBJC_IVAR____TtC17RemindersSettings26REMTimeZonePickerPresenter_initialSetupTask))
  {

    sub_7F84(&unk_3A9D0, &unk_26F80);
    sub_23DB0();
  }

  *(v2 + v13) = 0;

  v14 = OBJC_IVAR____TtC17RemindersSettings26REMTimeZonePickerPresenter_fetchSearchResultsTask;
  if (*(v2 + OBJC_IVAR____TtC17RemindersSettings26REMTimeZonePickerPresenter_fetchSearchResultsTask))
  {

    sub_23DB0();
  }

  v15 = sub_23DA0();
  (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
  sub_23D80();

  v16 = sub_23D70();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = &protocol witness table for MainActor;
  v17[4] = v3;
  v17[5] = a1;
  v17[6] = a2;
  *(v3 + v14) = sub_1B5BC(0, 0, v8, &unk_27558, v17);
}

void sub_122F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v55 = sub_7F84(&qword_3AF70, &qword_27598);
  v8 = __chkstk_darwin(v55);
  v54 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v56 = &v43 - v11;
  __chkstk_darwin(v10);
  v51 = &v43 - v12;
  v13 = type metadata accessor for REMTimeZonePickerViewModel.CellViewModel(0);
  v52 = *(v13 - 8);
  v53 = v13;
  __chkstk_darwin(v13);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_7F84(&qword_3AF30, &qword_27538);
  __chkstk_darwin(v16 - 8);
  v18 = &v43 - v17;
  sub_17D2C(a1, &v43 - v17, &qword_3AF30, &qword_27538);
  v19 = sub_7F84(&qword_3AF38, &unk_27540);
  v20 = *(v19 - 8);
  v21 = v19;
  if ((*(v20 + 48))(v18, 1) == 1)
  {
    sub_ECC4(v18, &qword_3AF30, &qword_27538);
    v22 = 0;
    if (a3)
    {
      goto LABEL_3;
    }

    goto LABEL_14;
  }

  v46 = a3;
  v47 = a2;
  sub_17CD8(&qword_3AF78, &qword_3AF38, &unk_27540);
  v27 = sub_23DE0();
  v22 = &_swiftEmptyArrayStorage;
  if (!v27)
  {
LABEL_13:
    (*(v20 + 8))(v18, v21);
    a3 = v46;
    a2 = v47;
    if (v46)
    {
LABEL_3:
      v23 = a3;
      if (v22)
      {
LABEL_5:

        sub_A844(a2, v23, v22, v59);
        v24 = (v4 + OBJC_IVAR____TtC17RemindersSettings26REMTimeZonePickerPresenter_viewModel);
        v25 = v59[1];
        *v24 = v59[0];
        v24[1] = v25;
        v24[2] = v59[2];

        v26._object = 0x800000000002BCF0;
        v26._countAndFlagsBits = 0xD000000000000019;
        REMDeferredAction.scheduleNextRunLoop(reason:)(v26);
        return;
      }

LABEL_4:
      v22 = *(v4 + OBJC_IVAR____TtC17RemindersSettings26REMTimeZonePickerPresenter_viewModel + 32);

      goto LABEL_5;
    }

LABEL_14:
    a2 = *(v4 + OBJC_IVAR____TtC17RemindersSettings26REMTimeZonePickerPresenter_viewModel + 16);
    v23 = *(v4 + OBJC_IVAR____TtC17RemindersSettings26REMTimeZonePickerPresenter_viewModel + 24);

    if (v22)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v28 = v27;
  v58 = &_swiftEmptyArrayStorage;
  sub_11108(0, v27 & ~(v27 >> 63), 0);
  v22 = v58;
  sub_23DD0();
  if ((v28 & 0x8000000000000000) == 0)
  {
    v44 = v20;
    v45 = v4;
    v49 = v18;
    v50 = v56 + 8;
    v48 = v21;
    do
    {
      v57 = v22;
      v29 = sub_23E10();
      v30 = v51;
      sub_17D2C(v31, v51, &qword_3AF70, &qword_27598);
      v29(v59, 0);
      v32 = v56;
      sub_17D2C(v30, v56, &qword_3AF70, &qword_27598);
      v33 = v55;

      v34 = v54;
      sub_17D94(v30, v54, &qword_3AF70, &qword_27598);
      v35 = (v34 + *(v33 + 48));
      v36 = *v35;
      v37 = v35[1];
      v38 = sub_23700();
      v39 = *(v38 - 8);
      (*(v39 + 32))(v15, v32, v38);
      v40 = &v15[*(v53 + 20)];
      *v40 = v36;
      *(v40 + 1) = v37;
      (*(v39 + 8))(v34, v38);
      v22 = v57;
      v58 = v57;
      v42 = v57[2];
      v41 = v57[3];
      if (v42 >= v41 >> 1)
      {
        sub_11108((v41 > 1), v42 + 1, 1);
        v22 = v58;
      }

      v22[2] = v42 + 1;
      sub_17DFC(v15, v22 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v42);
      v21 = v48;
      v18 = v49;
      sub_23E00();
      --v28;
    }

    while (v28);
    v4 = v45;
    v20 = v44;
    goto LABEL_13;
  }

  __break(1u);
}

uint64_t sub_12890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a4;
  v9 = sub_23D60();
  v6[4] = v9;
  v6[5] = *(v9 - 8);
  v6[6] = swift_task_alloc();
  sub_7F84(&qword_3AF30, &qword_27538);
  v6[7] = swift_task_alloc();
  v10 = sub_7F84(&qword_3AF38, &unk_27540);
  v6[8] = v10;
  v6[9] = *(v10 - 8);
  v11 = swift_task_alloc();
  v6[10] = v11;
  v6[11] = sub_23D80();
  v6[12] = sub_23D70();
  v12 = swift_task_alloc();
  v6[13] = v12;
  *v12 = v6;
  v12[1] = sub_12A68;

  return sub_12FEC(v11, a5, a6);
}

uint64_t sub_12A68()
{
  *(*v1 + 112) = v0;

  v3 = sub_23D50();
  if (v0)
  {
    v4 = sub_12E34;
  }

  else
  {
    v4 = sub_12BC0;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_12BC0()
{
  v1 = v0[14];

  sub_23DC0();
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[8];
  if (v1)
  {
    (*(v3 + 8))(v0[10], v0[8]);
    v0[2] = v1;
    swift_errorRetain();
    sub_7F84(&unk_3A9D0, &unk_26F80);
    if (swift_dynamicCast())
    {
      v6 = v0[5];
      v5 = v0[6];
      v7 = v0[4];

      (*(v6 + 8))(v5, v7);
    }

    else
    {
      if (qword_3A928 != -1)
      {
        swift_once();
      }

      v9 = sub_238C0();
      sub_E648(v9, qword_3ADF8);
      v10 = sub_238B0();
      v11 = sub_23E20();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&dword_0, v10, v11, "Failed to fetch results for time zone picker", v12, 2u);
      }
    }
  }

  else
  {
    v8 = v0[7];
    (*(v3 + 16))(v8, v0[10], v0[8]);
    (*(v3 + 56))(v8, 0, 1, v4);
    sub_122F0(v8, 0, 0);
    sub_ECC4(v8, &qword_3AF30, &qword_27538);
    (*(v3 + 8))(v2, v4);
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_12E34()
{

  v0[2] = v0[14];
  swift_errorRetain();
  sub_7F84(&unk_3A9D0, &unk_26F80);
  if (swift_dynamicCast())
  {
    v2 = v0[5];
    v1 = v0[6];
    v3 = v0[4];

    (*(v2 + 8))(v1, v3);
  }

  else
  {
    if (qword_3A928 != -1)
    {
      swift_once();
    }

    v4 = sub_238C0();
    sub_E648(v4, qword_3ADF8);
    v5 = sub_238B0();
    v6 = sub_23E20();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_0, v5, v6, "Failed to fetch results for time zone picker", v7, 2u);
    }
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_12FEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[142] = a3;
  v3[141] = a2;
  v3[140] = a1;
  v4 = sub_23700();
  v3[143] = v4;
  v3[144] = *(v4 - 8);
  v3[145] = swift_task_alloc();
  v3[146] = swift_task_alloc();
  v3[147] = swift_task_alloc();
  sub_7F84(&qword_3AF40, &qword_27568);
  v3[148] = swift_task_alloc();
  v3[149] = swift_task_alloc();
  v3[150] = swift_task_alloc();
  v3[151] = swift_task_alloc();
  v3[152] = swift_task_alloc();
  v3[153] = swift_task_alloc();
  v5 = sub_7F84(&qword_3AF48, &qword_27570);
  v3[154] = v5;
  v3[155] = *(v5 - 8);
  v3[156] = swift_task_alloc();
  v3[157] = sub_7F84(&qword_3AF50, &qword_27578);
  v3[158] = swift_task_alloc();
  v3[159] = swift_task_alloc();
  v3[160] = swift_task_alloc();
  v6 = sub_23680();
  v3[161] = v6;
  v3[162] = *(v6 - 8);
  v3[163] = swift_task_alloc();
  v7 = sub_7F84(&qword_3AF38, &unk_27540);
  v3[164] = v7;
  v3[165] = *(v7 - 8);
  v3[166] = swift_task_alloc();
  sub_23D80();
  v3[167] = sub_23D70();
  v9 = sub_23D50();
  v3[168] = v9;
  v3[169] = v8;

  return _swift_task_switch(sub_132F8, v9, v8);
}

uint64_t sub_132F8()
{
  v1 = v0;
  v17 = v0 + 10;
  v2 = v0 + 82;
  v3 = v0[163];
  v4 = v0[162];
  v16 = v1[161];
  v1[170] = sub_17F54(&qword_3AA48, &protocol conformance descriptor for TimeZone);
  sub_237E0();
  v5 = swift_allocBox();
  v1[171] = v5;
  v1[172] = v6;
  v1[173] = sub_17C2C();
  sub_237E0();
  v1[174] = swift_allocBox();
  v1[175] = v7;
  sub_237E0();
  sub_23670();
  v8 = objc_allocWithZone(GEORegionStore);
  isa = sub_23650().super.isa;
  v10 = [v8 initWithLocale:isa];
  v1[176] = v10;

  (*(v4 + 8))(v3, v16);
  v11 = sub_23C80();
  v1[177] = v11;
  v1[86] = sub_17FF4;
  v1[87] = v5;
  v1[82] = _NSConcreteStackBlock;
  v1[83] = 1107296256;
  v1[84] = sub_7EF8;
  v1[85] = &unk_359D8;
  v12 = _Block_copy(v2);
  v1[178] = v12;

  v1[10] = v1;
  v1[11] = sub_135FC;
  v13 = swift_continuation_init();
  v14 = sub_7F84(&qword_3A940, &qword_27580);
  v1[179] = v14;
  v1[49] = v14;
  v1[42] = _NSConcreteStackBlock;
  v1[43] = 1107296256;
  v1[44] = sub_7FCC;
  v1[45] = &unk_35A00;
  v1[46] = v13;
  [v10 regionsWithName:v11 options:2 types:8 sort:2 cursor:v12 finished:?];

  return _swift_continuation_await(v17);
}

uint64_t sub_135FC()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 1440) = v2;
  v3 = *(v1 + 1352);
  v4 = *(v1 + 1344);
  if (v2)
  {
    v5 = sub_167B0;
  }

  else
  {
    v5 = sub_1372C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1372C()
{
  v1 = v0[177];
  _Block_release(v0[178]);

  sub_23DC0();
  v2 = v0[172];
  v3 = v0[160];
  v4 = v0[157];
  v5 = v0[156];
  v6 = v0[155];
  v7 = v0[154];
  swift_beginAccess();
  v8 = *(v6 + 16);
  v0[181] = v8;
  v0[182] = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v5, v2, v7);
  v8(v3, v5, v7);
  *(v0 + 422) = *(v4 + 36);
  v0[183] = sub_17CD8(&qword_3AF60, &qword_3AF48, &qword_27570);
  sub_23DD0();
  v9 = *(v6 + 8);
  v0[184] = v9;
  v0[185] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v5, v7);
  v10 = *(v0 + 422);
  v11 = v0[160];
  sub_23DF0();
  if (*(v11 + v10) == v0[139])
  {
    v12 = 1;
  }

  else
  {
    v13 = v0[152];
    v14 = sub_23E10();
    sub_17D2C(v15, v13, &qword_3AF68, &qword_27588);
    v14(v0 + 108, 0);
    sub_23E00();
    v12 = 0;
  }

  v16 = v0[153];
  v17 = v0[152];
  v18 = sub_7F84(&qword_3AF68, &qword_27588);
  (*(*(v18 - 8) + 56))(v17, v12, 1, v18);
  sub_17D94(v17, v16, &qword_3AF40, &qword_27568);
  v19 = sub_7F84(&qword_3AF68, &qword_27588);
  v0[186] = v19;
  v20 = *(v19 - 8);
  v0[187] = v20;
  v21 = *(v20 + 48);
  v0[188] = v21;
  v0[189] = (v20 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v21(v16, 1, v19) == 1)
  {
    sub_ECC4(v0[160], &qword_3AF50, &qword_27578);
    sub_23DC0();
    v0[193] = 0;
    v22 = v0 + 34;
    v23 = v0[179];
    v24 = v0[176];
    v25 = v0[174];
    v26 = sub_23C80();
    v0[194] = v26;
    v0[98] = sub_17CBC;
    v0[99] = v25;
    v0[94] = _NSConcreteStackBlock;
    v0[95] = 1107296256;
    v0[96] = sub_7EF8;
    v0[97] = &unk_35A28;
    v27 = _Block_copy(v0 + 94);
    v0[195] = v27;

    v0[34] = v0;
    v0[35] = sub_14688;
    v28 = swift_continuation_init();
    v0[73] = v23;
    v0[70] = v28;
    v0[66] = _NSConcreteStackBlock;
    v0[67] = 1107296256;
    v0[68] = sub_7FCC;
    v0[69] = &unk_35A50;
    [v24 regionsWithName:v26 options:2 types:2 sort:2 cursor:v27 finished:v0 + 66];
  }

  else
  {
    v29 = v0[147];
    v30 = v0[144];
    v31 = *(v0[153] + *(v19 + 48));
    v0[190] = v31;
    (*(v30 + 32))(v29);
    sub_23DC0();
    v0[191] = 0;
    v22 = v0 + 18;
    v32 = v0[176];
    v0[18] = v0;
    v0[23] = v0 + 131;
    v0[19] = sub_13E8C;
    v33 = swift_continuation_init();
    v0[57] = sub_7F84(&qword_3A948, &qword_27590);
    v0[50] = _NSConcreteStackBlock;
    v0[51] = 1107296256;
    v0[52] = sub_8B10;
    v0[53] = &unk_35AF0;
    v0[54] = v33;
    [v32 formattedNameForRegion:v31 result:v0 + 50];
  }

  return _swift_continuation_await(v22);
}

uint64_t sub_13E8C()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  *(*v0 + 1536) = v2;
  v3 = *(v1 + 1352);
  v4 = *(v1 + 1344);
  if (v2)
  {
    v5 = sub_16954;
  }

  else
  {
    v5 = sub_13FBC;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_13FBC()
{
  v1 = *(v0 + 1520);
  v2 = *(v0 + 1176);
  v3 = *(v0 + 1152);
  v4 = *(v0 + 1144);
  v5 = *(v0 + 1056);
  *(v0 + 1080) = *(v0 + 1048);
  *(v0 + 1088) = v5;
  sub_237D0();

  (*(v3 + 8))(v2, v4);

  v6 = *(v0 + 1528);
  v7 = *(v0 + 1688);
  v8 = *(v0 + 1280);
  sub_23DF0();
  if (*(v8 + v7) == *(v0 + 1112))
  {
    v9 = 1;
  }

  else
  {
    v10 = *(v0 + 1216);
    v11 = sub_23E10();
    sub_17D2C(v12, v10, &qword_3AF68, &qword_27588);
    v11(v0 + 864, 0);
    sub_23E00();
    v9 = 0;
  }

  v13 = *(v0 + 1224);
  v14 = *(v0 + 1216);
  v15 = sub_7F84(&qword_3AF68, &qword_27588);
  (*(*(v15 - 8) + 56))(v14, v9, 1, v15);
  sub_17D94(v14, v13, &qword_3AF40, &qword_27568);
  v16 = sub_7F84(&qword_3AF68, &qword_27588);
  *(v0 + 1488) = v16;
  v17 = *(v16 - 8);
  *(v0 + 1496) = v17;
  v18 = *(v17 + 48);
  *(v0 + 1504) = v18;
  *(v0 + 1512) = (v17 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v18(v13, 1, v16) == 1)
  {
    sub_ECC4(*(v0 + 1280), &qword_3AF50, &qword_27578);
    sub_23DC0();
    *(v0 + 1544) = v6;
    if (v6)
    {
      v19 = *(v0 + 1408);
      (*(*(v0 + 1320) + 8))(*(v0 + 1328), *(v0 + 1312));

LABEL_9:

      v30 = *(v0 + 8);

      return v30();
    }

    v32 = *(v0 + 1432);
    v33 = *(v0 + 1408);
    v34 = *(v0 + 1392);
    v35 = sub_23C80();
    *(v0 + 1552) = v35;
    *(v0 + 784) = sub_17CBC;
    *(v0 + 792) = v34;
    *(v0 + 752) = _NSConcreteStackBlock;
    *(v0 + 760) = 1107296256;
    *(v0 + 768) = sub_7EF8;
    *(v0 + 776) = &unk_35A28;
    v36 = _Block_copy((v0 + 752));
    *(v0 + 1560) = v36;

    *(v0 + 272) = v0;
    *(v0 + 280) = sub_14688;
    v37 = swift_continuation_init();
    *(v0 + 584) = v32;
    *(v0 + 560) = v37;
    *(v0 + 528) = _NSConcreteStackBlock;
    *(v0 + 536) = 1107296256;
    *(v0 + 544) = sub_7FCC;
    *(v0 + 552) = &unk_35A50;
    [v33 regionsWithName:v35 options:2 types:2 sort:2 cursor:v36 finished:v0 + 528];
    v38 = v0 + 272;
  }

  else
  {
    v20 = *(v0 + 1176);
    v21 = *(v0 + 1152);
    v22 = *(*(v0 + 1224) + *(v16 + 48));
    *(v0 + 1520) = v22;
    (*(v21 + 32))(v20);
    sub_23DC0();
    *(v0 + 1528) = v6;
    if (v6)
    {
      v23 = v22;
      v24 = *(v0 + 1408);
      v25 = *(v0 + 1320);
      v41 = *(v0 + 1312);
      v42 = *(v0 + 1328);
      v26 = *(v0 + 1280);
      v27 = *(v0 + 1176);
      v28 = *(v0 + 1152);
      v29 = *(v0 + 1144);

      (*(v28 + 8))(v27, v29);
      sub_ECC4(v26, &qword_3AF50, &qword_27578);
      (*(v25 + 8))(v42, v41);
      goto LABEL_9;
    }

    v39 = *(v0 + 1408);
    *(v0 + 144) = v0;
    *(v0 + 184) = v0 + 1048;
    *(v0 + 152) = sub_13E8C;
    v40 = swift_continuation_init();
    *(v0 + 456) = sub_7F84(&qword_3A948, &qword_27590);
    *(v0 + 400) = _NSConcreteStackBlock;
    *(v0 + 408) = 1107296256;
    *(v0 + 416) = sub_8B10;
    *(v0 + 424) = &unk_35AF0;
    *(v0 + 432) = v40;
    [v39 formattedNameForRegion:v22 result:v0 + 400];
    v38 = v0 + 144;
  }

  return _swift_continuation_await(v38);
}

uint64_t sub_14688()
{
  v1 = *v0;
  v2 = *(*v0 + 304);
  *(*v0 + 1568) = v2;
  v3 = *(v1 + 1352);
  v4 = *(v1 + 1344);
  if (v2)
  {
    v5 = sub_16B34;
  }

  else
  {
    v5 = sub_147B8;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_147B8()
{
  v1 = *(v0 + 1552);
  v2 = *(v0 + 1544);
  _Block_release(*(v0 + 1560));

  sub_23DC0();
  if (v2)
  {
    v3 = *(v0 + 1408);
    (*(*(v0 + 1320) + 8))(*(v0 + 1328), *(v0 + 1312));

    v4 = *(v0 + 8);
LABEL_3:

    return v4();
  }

  else
  {
    v39 = *(v0 + 1472);
    v6 = *(v0 + 1448);
    v7 = *(v0 + 1400);
    v8 = *(v0 + 1272);
    v9 = *(v0 + 1256);
    v10 = *(v0 + 1248);
    v11 = *(v0 + 1232);
    swift_beginAccess();
    v6(v10, v7, v11);
    v6(v8, v10, v11);
    *(v0 + 1692) = *(v9 + 36);
    sub_23DD0();
    v39(v10, v11);
    while (1)
    {
      v12 = *(v0 + 1692);
      v13 = *(v0 + 1272);
      sub_23DF0();
      if (*(v13 + v12) == *(v0 + 1096))
      {
        v14 = 1;
      }

      else
      {
        v15 = *(v0 + 1200);
        v16 = sub_23E10();
        sub_17D2C(v17, v15, &qword_3AF68, &qword_27588);
        v16(v0 + 800, 0);
        sub_23E00();
        v14 = 0;
      }

      v18 = *(v0 + 1504);
      v19 = *(v0 + 1488);
      v20 = *(v0 + 1208);
      v21 = *(v0 + 1200);
      v22 = *(*(v0 + 1496) + 56);
      *(v0 + 1576) = v22;
      v22(v21, v14, 1, v19);
      sub_17D94(v21, v20, &qword_3AF40, &qword_27568);
      if (v18(v20, 1, v19) == 1)
      {
        sub_ECC4(*(v0 + 1272), &qword_3AF50, &qword_27578);

        sub_23DC0();
        v29 = *(v0 + 1328);
        v30 = *(v0 + 1320);
        v31 = *(v0 + 1312);
        v32 = *(v0 + 1120);

        (*(v30 + 32))(v32, v29, v31);

        v4 = *(v0 + 8);
        goto LABEL_3;
      }

      v23 = *(v0 + 1168);
      v24 = *(v0 + 1152);
      v25 = *(v0 + 1144);
      v26 = *(*(v0 + 1208) + *(*(v0 + 1488) + 48));
      *(v0 + 1584) = v26;
      v27 = *(v24 + 32);
      *(v0 + 1592) = v27;
      *(v0 + 1600) = (v24 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
      v27(v23);
      sub_237F0();
      v28 = *(v24 + 8);
      *(v0 + 1608) = v28;
      *(v0 + 1616) = (v24 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v28(v23, v25);
      if (!*(v0 + 976))
      {
        break;
      }
    }

    sub_23DC0();
    *(v0 + 1624) = 0;
    v38 = *(v0 + 1432);
    v40 = *(v0 + 1408);
    v33 = swift_allocBox();
    *(v0 + 1632) = v33;
    *(v0 + 1640) = v34;
    sub_237E0();
    v35 = [v26 regionId];
    *(v0 + 736) = sub_17FF4;
    *(v0 + 744) = v33;
    *(v0 + 704) = _NSConcreteStackBlock;
    *(v0 + 712) = 1107296256;
    *(v0 + 720) = sub_7EF8;
    *(v0 + 728) = &unk_35A78;
    v36 = _Block_copy((v0 + 704));
    *(v0 + 1648) = v36;

    *(v0 + 16) = v0;
    *(v0 + 24) = sub_14F68;
    v37 = swift_continuation_init();
    *(v0 + 648) = v38;
    *(v0 + 624) = v37;
    *(v0 + 592) = _NSConcreteStackBlock;
    *(v0 + 600) = 1107296256;
    *(v0 + 608) = sub_7FCC;
    *(v0 + 616) = &unk_35AA0;
    [v40 childRegionsOfRegionId:v35 types:8 sort:2 recursive:1 cursor:v36 finished:v0 + 592];

    return _swift_continuation_await(v0 + 16);
  }
}

uint64_t sub_14F68()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 1656) = v2;
  v3 = *(v1 + 1352);
  v4 = *(v1 + 1344);
  if (v2)
  {
    v5 = sub_16CD8;
  }

  else
  {
    v5 = sub_15098;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_15098()
{
  v1 = *(v0 + 1624);
  _Block_release(*(v0 + 1648));
  sub_23DC0();
  if (v1)
  {
    v2 = *(v0 + 1408);
    v3 = *(v0 + 1328);
    v4 = *(v0 + 1320);
    v5 = *(v0 + 1312);
    v6 = *(v0 + 1272);

    sub_ECC4(v6, &qword_3AF50, &qword_27578);
    (*(v4 + 8))(v3, v5);

    v7 = *(v0 + 8);
LABEL_3:

    return v7();
  }

  else
  {
    v9 = *(v0 + 1640);
    v62 = *(v0 + 1472);
    v10 = *(v0 + 1448);
    v11 = *(v0 + 1264);
    v12 = *(v0 + 1256);
    v13 = *(v0 + 1248);
    v14 = *(v0 + 1232);
    swift_beginAccess();
    v10(v13, v9, v14);
    v10(v11, v13, v14);
    *(v0 + 1696) = *(v12 + 36);
    sub_23DD0();
    v62(v13, v14);
    while (1)
    {
      v15 = *(v0 + 1696);
      v16 = *(v0 + 1264);
      sub_23DF0();
      if (*(v16 + v15) == *(v0 + 1104))
      {
        v17 = 1;
      }

      else
      {
        v18 = *(v0 + 1184);
        v19 = sub_23E10();
        sub_17D2C(v20, v18, &qword_3AF68, &qword_27588);
        v19(v0 + 832, 0);
        sub_23E00();
        v17 = 0;
      }

      v21 = *(v0 + 1504);
      v22 = *(v0 + 1488);
      v23 = *(v0 + 1192);
      v24 = *(v0 + 1184);
      (*(v0 + 1576))(v24, v17, 1, v22);
      sub_17D94(v24, v23, &qword_3AF40, &qword_27568);
      if (v21(v23, 1, v22) == 1)
      {
        break;
      }

      v25 = *(v0 + 1592);
      v26 = *(v0 + 1160);
      v27 = *(*(v0 + 1192) + *(*(v0 + 1488) + 48));
      *(v0 + 1664) = v27;
      v25(v26);
      sub_237F0();
      if (!*(v0 + 992))
      {
        sub_23DC0();
        *(v0 + 1672) = 0;
        v52 = v0 + 208;
        v53 = *(v0 + 1408);
        *(v0 + 208) = v0;
        *(v0 + 248) = v0 + 1000;
        *(v0 + 216) = sub_15BDC;
        v54 = swift_continuation_init();
        *(v0 + 520) = sub_7F84(&qword_3A948, &qword_27590);
        *(v0 + 464) = _NSConcreteStackBlock;
        *(v0 + 472) = 1107296256;
        *(v0 + 480) = sub_8B10;
        *(v0 + 488) = &unk_35AC8;
        *(v0 + 496) = v54;
        [v53 formattedNameForRegion:v27 result:v0 + 464];
        goto LABEL_23;
      }

      v28 = *(v0 + 1608);
      v29 = *(v0 + 1160);
      v30 = *(v0 + 1144);

      v28(v29, v30);
    }

    v31 = *(v0 + 1584);
    sub_ECC4(*(v0 + 1264), &qword_3AF50, &qword_27578);

    while (1)
    {
      v32 = *(v0 + 1692);
      v33 = *(v0 + 1272);
      sub_23DF0();
      if (*(v33 + v32) == *(v0 + 1096))
      {
        v34 = 1;
      }

      else
      {
        v35 = *(v0 + 1200);
        v36 = sub_23E10();
        sub_17D2C(v37, v35, &qword_3AF68, &qword_27588);
        v36(v0 + 800, 0);
        sub_23E00();
        v34 = 0;
      }

      v38 = *(v0 + 1504);
      v39 = *(v0 + 1488);
      v40 = *(v0 + 1208);
      v41 = *(v0 + 1200);
      v42 = *(*(v0 + 1496) + 56);
      *(v0 + 1576) = v42;
      v42(v41, v34, 1, v39);
      sub_17D94(v41, v40, &qword_3AF40, &qword_27568);
      if (v38(v40, 1, v39) == 1)
      {
        sub_ECC4(*(v0 + 1272), &qword_3AF50, &qword_27578);

        sub_23DC0();
        v49 = *(v0 + 1328);
        v50 = *(v0 + 1320);
        v51 = *(v0 + 1312);
        v55 = *(v0 + 1120);

        (*(v50 + 32))(v55, v49, v51);

        v7 = *(v0 + 8);
        goto LABEL_3;
      }

      v43 = *(v0 + 1168);
      v44 = *(v0 + 1152);
      v45 = *(v0 + 1144);
      v46 = *(*(v0 + 1208) + *(*(v0 + 1488) + 48));
      *(v0 + 1584) = v46;
      v47 = *(v44 + 32);
      *(v0 + 1592) = v47;
      *(v0 + 1600) = (v44 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
      v47(v43);
      sub_237F0();
      v48 = *(v44 + 8);
      *(v0 + 1608) = v48;
      *(v0 + 1616) = (v44 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v48(v43, v45);
      if (!*(v0 + 976))
      {
        break;
      }
    }

    sub_23DC0();
    *(v0 + 1624) = 0;
    v52 = v0 + 16;
    v63 = *(v0 + 1408);
    v61 = *(v0 + 1432);
    v56 = swift_allocBox();
    *(v0 + 1632) = v56;
    *(v0 + 1640) = v57;
    sub_237E0();
    v58 = [v46 regionId];
    *(v0 + 736) = sub_17FF4;
    *(v0 + 744) = v56;
    *(v0 + 704) = _NSConcreteStackBlock;
    *(v0 + 712) = 1107296256;
    *(v0 + 720) = sub_7EF8;
    *(v0 + 728) = &unk_35A78;
    v59 = _Block_copy((v0 + 704));
    *(v0 + 1648) = v59;

    *(v0 + 16) = v0;
    *(v0 + 24) = sub_14F68;
    v60 = swift_continuation_init();
    *(v0 + 648) = v61;
    *(v0 + 624) = v60;
    *(v0 + 592) = _NSConcreteStackBlock;
    *(v0 + 600) = 1107296256;
    *(v0 + 608) = sub_7FCC;
    *(v0 + 616) = &unk_35AA0;
    [v63 childRegionsOfRegionId:v58 types:8 sort:2 recursive:1 cursor:v59 finished:v0 + 592];
LABEL_23:

    return _swift_continuation_await(v52);
  }
}

uint64_t sub_15BDC()
{
  v1 = *v0;
  v2 = *(*v0 + 240);
  *(*v0 + 1680) = v2;
  v3 = *(v1 + 1352);
  v4 = *(v1 + 1344);
  if (v2)
  {
    v5 = sub_16EA8;
  }

  else
  {
    v5 = sub_15D0C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_15D0C()
{
  v1 = *(v0 + 1664);
  v2 = *(v0 + 1608);
  v3 = *(v0 + 1160);
  v4 = *(v0 + 1144);
  v5 = *(v0 + 1008);
  *(v0 + 1032) = *(v0 + 1000);
  *(v0 + 1040) = v5;
  sub_237D0();

  v2(v3, v4);

  v71 = *(v0 + 1672);
  while (1)
  {
    v6 = *(v0 + 1696);
    v7 = *(v0 + 1264);
    sub_23DF0();
    if (*(v7 + v6) == *(v0 + 1104))
    {
      v8 = 1;
    }

    else
    {
      v9 = *(v0 + 1184);
      v10 = sub_23E10();
      sub_17D2C(v11, v9, &qword_3AF68, &qword_27588);
      v10(v0 + 832, 0);
      sub_23E00();
      v8 = 0;
    }

    v12 = *(v0 + 1504);
    v13 = *(v0 + 1488);
    v14 = *(v0 + 1192);
    v15 = *(v0 + 1184);
    (*(v0 + 1576))(v15, v8, 1, v13);
    sub_17D94(v15, v14, &qword_3AF40, &qword_27568);
    if (v12(v14, 1, v13) == 1)
    {
      v22 = *(v0 + 1584);
      sub_ECC4(*(v0 + 1264), &qword_3AF50, &qword_27578);

      while (1)
      {
        v23 = *(v0 + 1692);
        v24 = *(v0 + 1272);
        sub_23DF0();
        if (*(v24 + v23) == *(v0 + 1096))
        {
          v25 = 1;
        }

        else
        {
          v26 = *(v0 + 1200);
          v27 = sub_23E10();
          sub_17D2C(v28, v26, &qword_3AF68, &qword_27588);
          v27(v0 + 800, 0);
          sub_23E00();
          v25 = 0;
        }

        v29 = *(v0 + 1504);
        v30 = *(v0 + 1488);
        v31 = *(v0 + 1208);
        v32 = *(v0 + 1200);
        v33 = *(*(v0 + 1496) + 56);
        *(v0 + 1576) = v33;
        v33(v32, v25, 1, v30);
        sub_17D94(v32, v31, &qword_3AF40, &qword_27568);
        if (v29(v31, 1, v30) == 1)
        {
          sub_ECC4(*(v0 + 1272), &qword_3AF50, &qword_27578);

          sub_23DC0();
          v46 = *(v0 + 1408);
          v47 = *(v0 + 1328);
          v48 = *(v0 + 1320);
          v49 = *(v0 + 1312);
          if (v71)
          {
            (*(v48 + 8))(v47, v49);

            goto LABEL_21;
          }

          v60 = *(v0 + 1120);

          (*(v48 + 32))(v60, v47, v49);

          v55 = *(v0 + 8);
          goto LABEL_22;
        }

        v34 = *(v0 + 1168);
        v35 = *(v0 + 1152);
        v36 = *(v0 + 1144);
        v37 = *(*(v0 + 1208) + *(*(v0 + 1488) + 48));
        *(v0 + 1584) = v37;
        v38 = *(v35 + 32);
        *(v0 + 1592) = v38;
        *(v0 + 1600) = (v35 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
        v38(v34);
        sub_237F0();
        v39 = *(v35 + 8);
        *(v0 + 1608) = v39;
        *(v0 + 1616) = (v35 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v39(v34, v36);
        if (!*(v0 + 976))
        {
          break;
        }
      }

      sub_23DC0();
      *(v0 + 1624) = v71;
      if (v71)
      {
        v50 = *(v0 + 1408);
        v51 = *(v0 + 1328);
        v52 = *(v0 + 1320);
        v53 = *(v0 + 1312);
        v54 = *(v0 + 1272);

        sub_ECC4(v54, &qword_3AF50, &qword_27578);
        (*(v52 + 8))(v51, v53);
        goto LABEL_21;
      }

      v57 = v0 + 16;
      v72 = *(v0 + 1408);
      v70 = *(v0 + 1432);
      v61 = swift_allocBox();
      *(v0 + 1632) = v61;
      *(v0 + 1640) = v62;
      sub_237E0();
      v63 = [v37 regionId];
      *(v0 + 736) = sub_17FF4;
      *(v0 + 744) = v61;
      *(v0 + 704) = _NSConcreteStackBlock;
      *(v0 + 712) = 1107296256;
      *(v0 + 720) = sub_7EF8;
      *(v0 + 728) = &unk_35A78;
      v64 = _Block_copy((v0 + 704));
      *(v0 + 1648) = v64;

      *(v0 + 16) = v0;
      *(v0 + 24) = sub_14F68;
      v65 = swift_continuation_init();
      *(v0 + 648) = v70;
      *(v0 + 624) = v65;
      *(v0 + 592) = _NSConcreteStackBlock;
      *(v0 + 600) = 1107296256;
      *(v0 + 608) = sub_7FCC;
      *(v0 + 616) = &unk_35AA0;
      [v72 childRegionsOfRegionId:v63 types:8 sort:2 recursive:1 cursor:v64 finished:v0 + 592];
      goto LABEL_28;
    }

    v16 = *(v0 + 1592);
    v17 = *(v0 + 1160);
    v18 = *(*(v0 + 1192) + *(*(v0 + 1488) + 48));
    *(v0 + 1664) = v18;
    v16(v17);
    sub_237F0();
    if (!*(v0 + 992))
    {
      break;
    }

    v19 = *(v0 + 1608);
    v20 = *(v0 + 1160);
    v21 = *(v0 + 1144);

    v19(v20, v21);
  }

  sub_23DC0();
  *(v0 + 1672) = v71;
  if (!v71)
  {
    v57 = v0 + 208;
    v58 = *(v0 + 1408);
    *(v0 + 208) = v0;
    *(v0 + 248) = v0 + 1000;
    *(v0 + 216) = sub_15BDC;
    v59 = swift_continuation_init();
    *(v0 + 520) = sub_7F84(&qword_3A948, &qword_27590);
    *(v0 + 464) = _NSConcreteStackBlock;
    *(v0 + 472) = 1107296256;
    *(v0 + 480) = sub_8B10;
    *(v0 + 488) = &unk_35AC8;
    *(v0 + 496) = v59;
    [v58 formattedNameForRegion:v18 result:v0 + 464];
LABEL_28:

    return _swift_continuation_await(v57);
  }

  v67 = *(v0 + 1608);
  v40 = *(v0 + 1584);
  v41 = *(v0 + 1408);
  v69 = *(v0 + 1328);
  v42 = *(v0 + 1320);
  v68 = *(v0 + 1312);
  v66 = *(v0 + 1272);
  v43 = *(v0 + 1264);
  v44 = *(v0 + 1160);
  v45 = *(v0 + 1144);

  v67(v44, v45);
  sub_ECC4(v43, &qword_3AF50, &qword_27578);
  sub_ECC4(v66, &qword_3AF50, &qword_27578);
  (*(v42 + 8))(v69, v68);

LABEL_21:

  v55 = *(v0 + 8);
LABEL_22:

  return v55();
}

uint64_t sub_167B0()
{
  v1 = v0[178];
  v2 = v0[177];
  v3 = v0[176];
  v4 = v0[166];
  v5 = v0[165];
  v6 = v0[164];

  swift_willThrow();

  (*(v5 + 8))(v4, v6);
  _Block_release(v1);

  v7 = v0[1];

  return v7();
}

uint64_t sub_16954()
{
  v1 = v0[190];
  v2 = v0[176];
  v11 = v0[166];
  v3 = v0[165];
  v4 = v0[164];
  v5 = v0[160];
  v6 = v0[147];
  v7 = v0[144];
  v8 = v0[143];

  swift_willThrow();

  (*(v7 + 8))(v6, v8);
  sub_ECC4(v5, &qword_3AF50, &qword_27578);
  (*(v3 + 8))(v11, v4);

  v9 = v0[1];

  return v9();
}

uint64_t sub_16B34()
{
  v1 = v0[195];
  v2 = v0[194];
  v3 = v0[176];
  v4 = v0[166];
  v5 = v0[165];
  v6 = v0[164];

  swift_willThrow();

  (*(v5 + 8))(v4, v6);
  _Block_release(v1);

  v7 = v0[1];

  return v7();
}

uint64_t sub_16CD8()
{
  v1 = v0[206];
  v2 = v0[198];
  v3 = v0[176];
  v4 = v0[166];
  v5 = v0[165];
  v6 = v0[164];
  v7 = v0[159];

  swift_willThrow();

  sub_ECC4(v7, &qword_3AF50, &qword_27578);
  (*(v5 + 8))(v4, v6);
  _Block_release(v1);

  v8 = v0[1];

  return v8();
}

uint64_t sub_16EA8()
{
  v1 = v0[208];
  v2 = v0[201];
  v3 = v0[198];
  v4 = v0[176];
  v5 = v0[165];
  v12 = v0[164];
  v13 = v0[166];
  v11 = v0[159];
  v6 = v0[158];
  v7 = v0[145];
  v8 = v0[143];

  swift_willThrow();

  v2(v7, v8);
  sub_ECC4(v6, &qword_3AF50, &qword_27578);
  sub_ECC4(v11, &qword_3AF50, &qword_27578);
  (*(v5 + 8))(v13, v12);

  v9 = v0[1];

  return v9();
}

void sub_170B8(uint64_t a1)
{
  v3 = sub_7F84(&qword_3AC38, &qword_27250);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_23700();
    sub_17F54(&qword_3AB90, &protocol conformance descriptor for TimeZone);
    if ((sub_23C50() & 1) == 0)
    {
      sub_176C8(a1);
    }

    swift_unknownObjectRelease();
  }

  sub_8F38((v1 + 64), *(v1 + 88));
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = sub_23DA0();
    (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
    sub_23D80();
    v9 = v7;
    v10 = sub_23D70();
    v11 = swift_allocObject();
    v11[2] = v10;
    v11[3] = &protocol witness table for MainActor;
    v11[4] = v9;
    sub_1B5BC(0, 0, v5, &unk_275A0, v11);
  }
}

id sub_1727C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_23700();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v14 - v9;
  sub_7F84(&qword_3AF48, &qword_27570);
  swift_projectBox();
  result = [a1 timeZone];
  if (result)
  {
    v12 = result;
    sub_236E0();

    (*(v5 + 32))(v10, v8, v4);
    swift_beginAccess();
    sub_237F0();
    v13 = v15;
    swift_endAccess();
    if (v13)
    {
    }

    else
    {
      v14[1] = a1;
      swift_beginAccess();
      sub_237D0();
      swift_endAccess();
    }

    return (*(v5 + 8))(v10, v4);
  }

  return result;
}

uint64_t sub_17458()
{
  sub_17F98(v0 + 16);
  sub_17F98(v0 + 32);
  swift_unknownObjectRelease();
  sub_80D4((v0 + 64));
  v1 = OBJC_IVAR____TtC17RemindersSettings26REMTimeZonePickerPresenter_currentTimeZone;
  v2 = sub_23700();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_17544()
{
  sub_17458();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for REMTimeZonePickerPresenter(uint64_t a1)
{
  result = qword_3AE58;
  if (!qword_3AE58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_175F0(uint64_t a1)
{
  result = sub_23700();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_176C8(uint64_t a1)
{
  v2 = sub_23700();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_3A920 != -1)
  {
    swift_once();
  }

  v6 = sub_238C0();
  sub_E648(v6, qword_3ABA0);
  (*(v3 + 16))(v5, a1, v2);
  v7 = sub_238B0();
  v8 = sub_23E30();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 136446210;
    sub_17F54(&unk_3AF80, &protocol conformance descriptor for TimeZone);
    v11 = sub_24050();
    v13 = v12;
    (*(v3 + 8))(v5, v2);
    v14 = sub_1E7CC(v11, v13, &v18);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_0, v7, v8, "Settings Bundle: Set time zone override to timeZone: %{public}s", v9, 0xCu);
    sub_80D4(v10);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }

  v15 = [objc_opt_self() daemonUserDefaults];
  sub_236A0();
  v16 = sub_23C80();

  [v15 setTimeZoneOverride:v16];
}

void *sub_1797C()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    v3 = *(v0 + OBJC_IVAR____TtC17RemindersSettings26REMTimeZonePickerPresenter_viewModel + 32);
    v6 = *(v0 + OBJC_IVAR____TtC17RemindersSettings26REMTimeZonePickerPresenter_viewModel + 16);
    v7 = v3;
    v5 = *(v0 + OBJC_IVAR____TtC17RemindersSettings26REMTimeZonePickerPresenter_viewModel);
    v8 = v5;
    v9 = v6;
    v10 = v3;
    sub_17D2C(&v8, v4, &qword_3AF20, &qword_27528);
    sub_17AC0(&v9, v4);
    sub_17D2C(&v10, v4, &qword_3AF28, &qword_27530);
    sub_17D2C(&v10 + 8, v4, &unk_3B0C0, &qword_27610);
    if ([v2 isViewLoaded])
    {
      sub_19578(&v5, 1);
    }

    sub_ECC4(&v8, &qword_3AF20, &qword_27528);
    sub_11068(&v9);
    sub_ECC4(&v10, &qword_3AF28, &qword_27530);
    sub_ECC4(&v10 + 8, &unk_3B0C0, &qword_27610);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_17B1C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_17B64(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_17FE8;

  return sub_12890(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_17C2C()
{
  result = qword_3AF58;
  if (!qword_3AF58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_3AF58);
  }

  return result;
}

uint64_t sub_17C78(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_17CD8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_8EE4(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_17D2C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_7F84(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_17D94(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_7F84(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_17DFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for REMTimeZonePickerViewModel.CellViewModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_17E60()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_17EA0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_EBD0;

  return sub_11730(a1, v4, v5, v6);
}

uint64_t sub_17F54(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_23700();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_18094()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_7F84(&qword_3B0D8, &qword_27630);
  v54 = *(v3 - 8);
  v55 = v3;
  v4 = *(v54 + 64);
  v5 = __chkstk_darwin(v3);
  v53 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v56 = &v49 - v6;
  v7 = sub_23980();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_239A0();
  v51 = *(v11 - 8);
  v52 = v11;
  __chkstk_darwin(v11);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57.receiver = v1;
  v57.super_class = ObjectType;
  objc_msgSendSuper2(&v57, "viewDidLoad");
  v14 = [v1 navigationItem];
  v15 = REMSettingsBundleGet(v14);
  v48._countAndFlagsBits = 0x800000000002C060;
  v58._countAndFlagsBits = 0x6E6F5A20656D6954;
  v58._object = 0xE900000000000065;
  v59.value._countAndFlagsBits = 0;
  v59.value._object = 0;
  v16.super.isa = v15;
  v60._countAndFlagsBits = 0;
  v60._object = 0xE000000000000000;
  sub_235A0(v58, v59, v16, v60, 0xD00000000000001BLL, v48);

  v17 = sub_23C80();

  [v14 setTitle:v17];

  (*(v8 + 104))(v10, enum case for UICollectionLayoutListConfiguration.Appearance.plain(_:), v7);
  sub_23990();
  sub_FB80(0, &qword_3B0E0, UICollectionViewCompositionalLayout_ptr);
  v50 = v13;
  v18 = sub_23EC0();
  v19 = [v1 collectionView];
  if (!v19)
  {
    __break(1u);
    goto LABEL_10;
  }

  v20 = v19;
  [v19 setCollectionViewLayout:v18 animated:0];

  v21 = [v1 collectionView];
  if (!v21)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v22 = v21;
  [v21 setAllowsSelection:1];

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_FB80(0, &qword_3B0E8, UICollectionViewListCell_ptr);
  sub_23700();
  v23 = v56;
  sub_23E50();
  v24 = [v1 collectionView];
  v26 = v54;
  v25 = v55;
  if (!v24)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v27 = v53;
  (*(v54 + 16))(v53, v23, v55);
  v28 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v29 = swift_allocObject();
  (*(v26 + 32))(v29 + v28, v27, v25);
  v30 = objc_allocWithZone(sub_7F84(&qword_3B0F0, &qword_27638));
  v31 = sub_23950();
  v32 = *&v1[OBJC_IVAR____TtC17RemindersSettings31REMTimeZonePickerViewController_dataSource];
  *&v1[OBJC_IVAR____TtC17RemindersSettings31REMTimeZonePickerViewController_dataSource] = v31;
  v33 = v31;

  v34 = [objc_allocWithZone(UISearchController) init];
  v35 = OBJC_IVAR____TtC17RemindersSettings31REMTimeZonePickerViewController_searchController;
  v36 = *&v1[OBJC_IVAR____TtC17RemindersSettings31REMTimeZonePickerViewController_searchController];
  *&v1[OBJC_IVAR____TtC17RemindersSettings31REMTimeZonePickerViewController_searchController] = v34;
  v37 = v34;

  if (!v37)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v38 = [v37 searchBar];

  [v38 setDelegate:v1];
  v39 = *&v1[v35];
  if (!v39)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v40 = [v39 searchBar];
  [v40 setLookToDictateEnabled:1];

  v41 = *&v1[v35];
  if (!v41)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v42 = [v41 searchBar];

  v43 = sub_23C80();

  [v42 setPlaceholder:v43];

  v44 = *&v1[v35];
  if (v44)
  {
    [v44 setObscuresBackgroundDuringPresentation:0];
    v45 = [v1 navigationItem];
    v46 = *&v1[v35];
    [v45 setSearchController:v46];

    v47 = [v1 navigationItem];
    [v47 setHidesSearchBarWhenScrolling:0];

    (*(v26 + 8))(v56, v25);
    (*(v51 + 8))(v50, v52);
    return;
  }

LABEL_15:
  __break(1u);
}

uint64_t sub_1875C(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v61 = a3;
  v71 = a1;
  v4 = sub_7F84(&qword_3A950, &qword_26F70);
  __chkstk_darwin(v4 - 8);
  v60 = &v58 - v5;
  v6 = sub_23620();
  v64 = *(v6 - 8);
  v65 = v6;
  __chkstk_darwin(v6);
  v63 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_23700();
  v8 = *(v68 - 8);
  v9 = __chkstk_darwin(v68);
  v62 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v66 = &v58 - v11;
  v12 = sub_23900();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_7F84(&qword_3B0F8, &qword_27650);
  v17 = __chkstk_darwin(v16 - 8);
  v19 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v22 = &v58 - v21;
  __chkstk_darwin(v20);
  v24 = &v58 - v23;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v72 = v15;
  v69 = v13;
  v70 = v12;
  v67 = v8;
  if (Strong)
  {
    v26 = *(Strong + OBJC_IVAR____TtC17RemindersSettings31REMTimeZonePickerViewController_presenter);
    v27 = Strong;
    swift_unknownObjectRetain();

    v28 = *(v26 + OBJC_IVAR____TtC17RemindersSettings26REMTimeZonePickerPresenter_viewModel + 40);

    swift_unknownObjectRelease();
    if (*(v28 + 16) && (v29 = sub_9D14(v61), (v30 & 1) != 0))
    {
      v61 = *(v28 + 56);
      v59 = v29;
      v31 = type metadata accessor for REMTimeZonePickerViewModel.CellViewModel(0);
      v32 = v24;
      v33 = *(v31 - 8);
      sub_AD44(&v61[*(v33 + 72) * v59], v32, type metadata accessor for REMTimeZonePickerViewModel.CellViewModel);

      (*(v33 + 56))(v32, 0, 1, v31);
      v24 = v32;
    }

    else
    {

      v31 = type metadata accessor for REMTimeZonePickerViewModel.CellViewModel(0);
      (*(*(v31 - 8) + 56))(v24, 1, 1, v31);
    }

    v13 = v69;
    v12 = v70;
  }

  else
  {
    v31 = type metadata accessor for REMTimeZonePickerViewModel.CellViewModel(0);
    (*(*(v31 - 8) + 56))(v24, 1, 1, v31);
  }

  sub_23EB0();
  sub_17D2C(v24, v22, &qword_3B0F8, &qword_27650);
  type metadata accessor for REMTimeZonePickerViewModel.CellViewModel(0);
  v34 = *(*(v31 - 8) + 48);
  if (v34(v22, 1, v31) == 1)
  {
    sub_ECC4(v22, &qword_3B0F8, &qword_27650);
  }

  else
  {

    sub_C534(v22);
  }

  v35 = v72;
  sub_238F0();
  sub_17D2C(v24, v19, &qword_3B0F8, &qword_27650);
  if (v34(v19, 1, v31) == 1)
  {
    sub_ECC4(v19, &qword_3B0F8, &qword_27650);
  }

  else
  {
    v61 = v24;
    v37 = v67;
    v36 = v68;
    v38 = v62;
    (*(v67 + 16))(v62, v19, v68);
    sub_C534(v19);
    v39 = v66;
    (*(v37 + 32))(v66, v38, v36);
    v40 = v63;
    sub_23610();
    v41 = sub_236B0();
    v43 = v42;
    v44 = (*(v64 + 8))(v40, v65);
    if (v43)
    {
      v45 = REMSettingsBundleGet(v44);
      v57._countAndFlagsBits = 0x800000000002C0A0;
      v76._countAndFlagsBits = 0x29402528204025;
      v74._object = 0x800000000002C080;
      v74._countAndFlagsBits = 0xD00000000000001FLL;
      v75.value._countAndFlagsBits = 0;
      v75.value._object = 0;
      v46.super.isa = v45;
      v76._object = 0xE700000000000000;
      sub_235A0(v74, v75, v46, v76, 0xD000000000000031, v57);

      sub_7F84(&qword_3B100, &qword_27658);
      v47 = swift_allocObject();
      *(v47 + 16) = xmmword_27160;
      v48 = v60;
      sub_23670();
      v49 = sub_23680();
      (*(*(v49 - 8) + 56))(v48, 0, 1, v49);
      v50 = sub_236C0();
      v52 = v51;
      sub_ECC4(v48, &qword_3A950, &qword_26F70);
      if (!v52)
      {
        v50 = sub_236A0();
        v52 = v53;
      }

      *(v47 + 56) = &type metadata for String;
      v54 = sub_1A37C();
      *(v47 + 32) = v50;
      *(v47 + 40) = v52;
      *(v47 + 96) = &type metadata for String;
      *(v47 + 104) = v54;
      *(v47 + 64) = v54;
      *(v47 + 72) = v41;
      *(v47 + 80) = v43;
      sub_23CA0();

      v35 = v72;
      sub_238E0();
      (*(v37 + 8))(v39, v68);
      v13 = v69;
      v12 = v70;
    }

    else
    {
      (*(v37 + 8))(v39, v36);
      v35 = v72;
    }

    v24 = v61;
  }

  v73[3] = v12;
  v73[4] = &protocol witness table for UIListContentConfiguration;
  v55 = sub_1A318(v73);
  (*(v13 + 16))(v55, v35, v12);
  sub_23EA0();
  (*(v13 + 8))(v35, v12);
  return sub_ECC4(v24, &qword_3B0F8, &qword_27650);
}

uint64_t sub_1902C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_7F84(&qword_3AC10, &unk_27640);
  __chkstk_darwin(v5 - 8);
  v7 = &v17 - v6;
  v8 = sub_23700();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for REMTimeZonePickerViewModel.ItemIdentifier(0);
  __chkstk_darwin(v12 - 8);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AD44(a3, v14, type metadata accessor for REMTimeZonePickerViewModel.ItemIdentifier);
  (*(v9 + 32))(v11, v14, v8);
  (*(v9 + 16))(v7, v11, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  sub_FB80(0, &qword_3B0E8, UICollectionViewListCell_ptr);
  v15 = sub_23E60();
  sub_ECC4(v7, &qword_3AC10, &unk_27640);
  (*(v9 + 8))(v11, v8);
  return v15;
}

uint64_t sub_192B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  sub_23D80();
  v4[4] = sub_23D70();
  v6 = sub_23D50();

  return _swift_task_switch(sub_19350, v6, v5);
}

void sub_19350()
{
  v1 = *(v0[3] + OBJC_IVAR____TtC17RemindersSettings31REMTimeZonePickerViewController_searchController);
  if (v1)
  {
    v2 = v0[2];
    v3 = v1;

    v4 = [v3 searchBar];

    LOBYTE(v3) = [v4 becomeFirstResponder];
    *v2 = v3;
    v5 = v0[1];

    v5();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_19578(uint64_t *a1, char a2)
{
  v4 = *a1;
  v35 = *(a1 + 8);
  v38 = a1[2];
  v39 = *(a1 + 3);
  v5 = a1[5];
  v36 = a1 + 2;
  v37 = v5;
  v41 = sub_7F84(&unk_3B0A0, &unk_27600);
  v34 = *(v41 - 8);
  __chkstk_darwin(v41);
  v7 = &v29 - v6;
  v40 = v2;
  v8 = (v2 + OBJC_IVAR____TtC17RemindersSettings31REMTimeZonePickerViewController_lastConsumedViewModel);
  v10 = *(v2 + OBJC_IVAR____TtC17RemindersSettings31REMTimeZonePickerViewController_lastConsumedViewModel);
  v9 = *(v2 + OBJC_IVAR____TtC17RemindersSettings31REMTimeZonePickerViewController_lastConsumedViewModel + 8);
  v11 = *(v2 + OBJC_IVAR____TtC17RemindersSettings31REMTimeZonePickerViewController_lastConsumedViewModel + 16);
  v12 = *(v2 + OBJC_IVAR____TtC17RemindersSettings31REMTimeZonePickerViewController_lastConsumedViewModel + 24);
  v13 = *(v2 + OBJC_IVAR____TtC17RemindersSettings31REMTimeZonePickerViewController_lastConsumedViewModel + 32);
  v14 = *(v2 + OBJC_IVAR____TtC17RemindersSettings31REMTimeZonePickerViewController_lastConsumedViewModel + 40);
  if (v10)
  {
    v33 = *(v10 + 16) != 0;
  }

  else
  {
    v33 = 0;
  }

  v31 = v11;
  v32 = v9;
  v29 = v13;
  v30 = v12;
  sub_19E4C(v10, v9, v11, v12, v13, v14);
  type metadata accessor for REMTimeZonePickerViewModel.ItemIdentifier(0);
  sub_ADAC();
  sub_19EAC();
  result = sub_23940();
  if (*(*a1 + 16))
  {
    v16._rawValue = &off_354E8;
    sub_23920(v16);
    LOBYTE(v45) = 0;
    result = sub_23910();
  }

  if (v10)
  {
    v17._rawValue = sub_AE48(v14, a1[5]);
    sub_23930(v17);

    result = sub_19F04(v10, v32, v31, v30, v29, v14);
  }

  v18 = *(v40 + OBJC_IVAR____TtC17RemindersSettings31REMTimeZonePickerViewController_dataSource);
  if (v18)
  {
    v19 = v18;
    sub_23970();

    (*(v34 + 8))(v7, v41);
    v20 = v35 & 1;
    v21 = *v8;
    v22 = v8[1];
    v23 = v8[2];
    v24 = v8[3];
    v25 = v8[4];
    v26 = v8[5];
    v45 = *v36;
    v27 = a1[4];
    v43 = a1[5];
    v44 = v27;
    *v8 = v4;
    v8[1] = v20;
    v28 = v37;
    v8[2] = v38;
    *(v8 + 3) = v39;
    v8[5] = v28;
    sub_19F04(v21, v22, v23, v24, v25, v26);

    sub_17AC0(&v45, v42);
    sub_17D2C(&v44, v42, &qword_3AF28, &qword_27530);
    return sub_17D2C(&v43, v42, &unk_3B0C0, &qword_27610);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_19970(void *a1, uint64_t a2)
{
  v4 = sub_23700();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_7F84(&qword_3B0D0, &qword_27618);
  __chkstk_darwin(v8 - 8);
  v10 = &v15 - v9;
  isa = sub_23710().super.isa;
  [a1 deselectItemAtIndexPath:isa animated:1];

  v12 = *(v2 + OBJC_IVAR____TtC17RemindersSettings31REMTimeZonePickerViewController_dataSource);
  if (v12)
  {
    v13 = v12;
    sub_23960();

    v14 = type metadata accessor for REMTimeZonePickerViewModel.ItemIdentifier(0);
    if ((*(*(v14 - 8) + 48))(v10, 1, v14) != 1)
    {
      (*(v5 + 32))(v7, v10, v4);
      sub_170B8(v7);
      (*(v5 + 8))(v7, v4);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_19CC8(void *a1)
{
  v3 = sub_23C80();
  [a1 setText:v3];

  [a1 resignFirstResponder];
  v4 = *(v1 + OBJC_IVAR____TtC17RemindersSettings31REMTimeZonePickerViewController_initialSearchTerm + 8);
  if (v4)
  {
    v5 = *(v1 + OBJC_IVAR____TtC17RemindersSettings31REMTimeZonePickerViewController_initialSearchTerm);
  }

  else
  {
    v5 = 0;
  }

  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE000000000000000;
  }

  sub_1203C(v5, v6);
}

uint64_t sub_19E4C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_19EAC()
{
  result = qword_3B0B0;
  if (!qword_3B0B0)
  {
    type metadata accessor for REMTimeZonePickerViewModel.ItemIdentifier(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3B0B0);
  }

  return result;
}

uint64_t sub_19F04(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (result)
  {
  }

  return result;
}

void sub_19F64()
{
  v1 = sub_7F84(&qword_3AC38, &qword_27250);
  __chkstk_darwin(v1 - 8);
  v3 = &v10 - v2;
  sub_8F38((*(v0 + OBJC_IVAR____TtC17RemindersSettings31REMTimeZonePickerViewController_presenter) + 64), *(*(v0 + OBJC_IVAR____TtC17RemindersSettings31REMTimeZonePickerViewController_presenter) + 88));
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = sub_23DA0();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    sub_23D80();
    v7 = v5;
    v8 = sub_23D70();
    v9 = swift_allocObject();
    v9[2] = v8;
    v9[3] = &protocol witness table for MainActor;
    v9[4] = v7;
    sub_1B5BC(0, 0, v3, &unk_275A0, v9);
  }
}

uint64_t sub_1A0BC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1A0FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_17FE8;

  return sub_192B8(a1, v4, v5, v6);
}

uint64_t sub_1A1B0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1A1F0()
{
  v1 = sub_7F84(&qword_3B0D8, &qword_27630);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1A284(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(sub_7F84(&qword_3B0D8, &qword_27630) - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return sub_1902C(a1, a2, a3, v8);
}

uint64_t *sub_1A318(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_1A37C()
{
  result = qword_3B108;
  if (!qword_3B108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3B108);
  }

  return result;
}

uint64_t sub_1A3D4()
{
  sub_17F98(v0 + 16);

  return _swift_deallocClassInstance(v0, 32, 7);
}

void *REMDeferredAction.__allocating_init(queue:)(uint64_t a1)
{
  v2 = sub_237A0();
  __chkstk_darwin(v2);
  v3 = swift_allocObject();
  v3[3] = 0;
  swift_unknownObjectWeakInit();
  sub_1AFCC(&qword_3A958, &type metadata accessor for UnfairLock.Options, &protocol conformance descriptor for UnfairLock.Options);
  sub_7F84(&qword_3A960, &unk_27260);
  sub_1B278(&qword_3A968, &qword_3A960, &unk_27260, &protocol conformance descriptor for [A]);
  sub_23F20();
  sub_237C0();
  swift_allocObject();
  v3[5] = sub_237B0();
  v3[6] = &_swiftEmptyArrayStorage;
  v3[4] = a1;
  return v3;
}

Swift::Void __swiftcall REMDeferredAction.scheduleNextRunLoop(reason:)(Swift::String reason)
{
  v2 = v1;
  object = reason._object;
  countAndFlagsBits = reason._countAndFlagsBits;
  v5 = sub_23B30();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23B50();
  v17 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock[0] = *(v2 + 40);
  v18 = v2;
  v19 = countAndFlagsBits;
  v20 = object;
  sub_237C0();

  sub_238A0();

  if (v21 == 1)
  {
    v16 = *(v2 + 32);
    v12 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_1AF68;
    aBlock[5] = v12;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1AF70;
    aBlock[3] = &unk_35C28;
    v13 = _Block_copy(aBlock);

    sub_23B40();
    v21 = &_swiftEmptyArrayStorage;
    sub_1AFCC(&qword_3B210, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    v15 = v9;
    sub_7F84(&qword_3B218, &qword_276E8);
    sub_1B278(&qword_3B220, &qword_3B218, &qword_276E8, &protocol conformance descriptor for [A]);
    sub_23F20();
    sub_23E80();
    _Block_release(v13);
    (*(v6 + 8))(v8, v5);
    (*(v17 + 8))(v11, v15);
  }
}

uint64_t REMDeferredAction.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*REMDeferredAction.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_1AA58;
}

void sub_1AA58(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 24) = *(*a1 + 32);
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

void *REMDeferredAction.init(queue:)(uint64_t a1)
{
  v3 = sub_237A0();
  __chkstk_darwin(v3);
  v1[3] = 0;
  swift_unknownObjectWeakInit();
  sub_1AFCC(&qword_3A958, &type metadata accessor for UnfairLock.Options, &protocol conformance descriptor for UnfairLock.Options);
  sub_7F84(&qword_3A960, &unk_27260);
  sub_1B278(&qword_3A968, &qword_3A960, &unk_27260, &protocol conformance descriptor for [A]);
  sub_23F20();
  sub_237C0();
  swift_allocObject();
  v1[5] = sub_237B0();
  v1[6] = &_swiftEmptyArrayStorage;
  v1[4] = a1;
  return v1;
}

uint64_t sub_1AC58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, BOOL *a4@<X8>)
{
  swift_beginAccess();
  v8 = *(a1 + 48);
  v9 = *(v8 + 2);
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + 48) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_10D18(0, v9 + 1, 1, v8);
    *(a1 + 48) = v8;
  }

  v12 = *(v8 + 2);
  v11 = *(v8 + 3);
  if (v12 >= v11 >> 1)
  {
    v8 = sub_10D18((v11 > 1), v12 + 1, 1, v8);
  }

  *(v8 + 2) = v12 + 1;
  v13 = &v8[16 * v12];
  *(v13 + 4) = a2;
  *(v13 + 5) = a3;
  *(a1 + 48) = v8;
  result = swift_endAccess();
  *a4 = v9 == 0;
  return result;
}

uint64_t sub_1AD6C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1ADA4(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = result;
    sub_237C0();

    sub_7F84(&qword_3B228, &qword_276F0);
    sub_238A0();

    if (*(v8 + 16) && (swift_beginAccess(), swift_unknownObjectWeakLoadStrong()))
    {
      v3 = *(v2 + 24);
      ObjectType = swift_getObjectType();
      sub_1B278(&qword_3B230, &qword_3B228, &qword_276F0, &protocol conformance descriptor for [A]);
      v5 = sub_23C40();
      v7 = v6;

      (*(v3 + 8))(v2, v5, v7, ObjectType, v3);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1AF70(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_1AFB4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1AFCC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

Swift::Void __swiftcall REMDeferredAction.drain(reason:)(Swift::String reason)
{
  v2 = v1;
  v3 = sub_23B60();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = v2[4];
  *v6 = v7;
  (*(v4 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v8 = v7;
  LOBYTE(v7) = sub_23B70();
  (*(v4 + 8))(v6, v3);
  if (v7)
  {
    v16 = v2[5];
    sub_237C0();

    sub_7F84(&qword_3B228, &qword_276F0);
    sub_238A0();

    v9 = v15;
    if (*(v15 + 16) && (swift_beginAccess(), swift_unknownObjectWeakLoadStrong()))
    {
      v10 = v2[3];
      ObjectType = swift_getObjectType();
      v16 = v9;
      sub_1B278(&qword_3B230, &qword_3B228, &qword_276F0, &protocol conformance descriptor for [A]);
      v12 = sub_23C40();
      v14 = v13;

      (*(v10 + 8))(v2, v12, v14, ObjectType, v10);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1B278(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_8EE4(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t REMDeferredAction.deinit()
{
  sub_17F98(v0 + 16);

  return v0;
}

uint64_t REMDeferredAction.__deallocating_deinit()
{
  sub_17F98(v0 + 16);

  return _swift_deallocClassInstance(v0, 56, 7);
}

uint64_t sub_1B36C@<X0>(void *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 48);
  *(v1 + 48) = &_swiftEmptyArrayStorage;
  return result;
}

char *sub_1B3C0(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_24000();
  }

  else
  {
    v2 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  v3 = &_swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v13 = &_swiftEmptyArrayStorage;
  result = sub_11028(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        sub_23F90();
        sub_FB80(0, &qword_3AC28, PSSpecifier_ptr);
        swift_dynamicCast();
        v13 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          sub_11028((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        v3[2] = v7 + 1;
        sub_1F6B4(v12, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_FB80(0, &qword_3AC28, PSSpecifier_ptr);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = v3[2];
        v10 = v3[3];
        if (v11 >= v10 >> 1)
        {
          sub_11028((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        v3[2] = v11 + 1;
        sub_1F6B4(v12, &v3[4 * v11 + 4]);
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B5BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_7F84(&qword_3AC38, &qword_27250);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_17D2C(a3, v25 - v10, &qword_3AC38, &qword_27250);
  v12 = sub_23DA0();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_ECC4(v11, &qword_3AC38, &qword_27250);
  }

  else
  {
    sub_23D90();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_23D50();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_23CB0() + 32;
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

      sub_ECC4(a3, &qword_3AC38, &qword_27250);

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

  sub_ECC4(a3, &qword_3AC38, &qword_27250);
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

uint64_t sub_1B8BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_7F84(&qword_3AC38, &qword_27250);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_17D2C(a3, v25 - v10, &qword_3AC38, &qword_27250);
  v12 = sub_23DA0();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_ECC4(v11, &qword_3AC38, &qword_27250);
  }

  else
  {
    sub_23D90();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_23D50();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_23CB0() + 32;
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

      sub_ECC4(a3, &qword_3AC38, &qword_27250);

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

  sub_ECC4(a3, &qword_3AC38, &qword_27250);
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

uint64_t sub_1BBB4()
{
  v0 = sub_238C0();
  sub_E5E4(v0, qword_3B2F0);
  sub_E648(v0, qword_3B2F0);
  v1 = [objc_opt_self() utility];
  return sub_238D0();
}

uint64_t sub_1BCFC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_7F84(&qword_3AC40, qword_271E0);
  __chkstk_darwin(v3 - 8);
  v52 = &v46 - v4;
  v56 = sub_23600();
  v51 = *(v56 - 8);
  __chkstk_darwin(v56);
  v47 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_235B0();
  v53 = *(v50 - 8);
  __chkstk_darwin(v50);
  v7 = (&v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_23680();
  __chkstk_darwin(v8 - 8);
  v9 = sub_23C70();
  __chkstk_darwin(v9 - 8);
  v10 = sub_235C0();
  v54 = *(v10 - 8);
  v55 = v10;
  v11 = __chkstk_darwin(v10);
  v57 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v58 = &v46 - v14;
  __chkstk_darwin(v13);
  v16 = &v46 - v15;
  v61.receiver = v0;
  v61.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v61, "viewDidLoad");
  v18 = REMSettingsBundleGet(v17);
  v45._countAndFlagsBits = 0x800000000002C8C0;
  v62._object = 0xEC00000065676175;
  v62._countAndFlagsBits = 0x676E614C20646441;
  v65.value._countAndFlagsBits = 0;
  v65.value._object = 0;
  v19.super.isa = v18;
  v66._countAndFlagsBits = 0;
  v66._object = 0xE000000000000000;
  sub_235A0(v62, v65, v19, v66, 0xD00000000000002ALL, v45);

  v48 = v1;
  v20 = [v1 navigationItem];
  v21 = sub_23C80();

  [v20 setTitle:v21];

  v59 = sub_23C90();
  v60 = v22;
  v63._countAndFlagsBits = 47;
  v63._object = 0xE100000000000000;
  sub_23CC0(v63);
  v64._countAndFlagsBits = sub_23C90();
  sub_23CC0(v64);

  v49 = v59;
  sub_23C60();
  sub_23670();
  *v7 = ObjectType;
  v23 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v24 = *(v53 + 13);
  v25 = v50;
  v24(v7, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v50);
  v53 = v16;
  sub_235D0();
  sub_23C60();
  sub_23670();
  *v7 = ObjectType;
  v24(v7, v23, v25);
  sub_235D0();
  sub_23C60();
  sub_23670();
  *v7 = ObjectType;
  v26 = v56;
  v24(v7, v23, v25);
  v27 = v51;
  sub_235D0();
  v28 = v52;
  sub_235F0();
  v29 = v28;

  if ((*(v27 + 48))(v28, 1, v26) == 1)
  {
    v30 = v55;
    v31 = *(v54 + 8);
    v31(v57, v55);
    v31(v58, v30);
    v31(v53, v30);
    return sub_ECC4(v29, &qword_3AC40, qword_271E0);
  }

  else
  {
    v33 = v47;
    (*(v27 + 32))(v47, v29, v26);
    v52 = sub_23C90();
    v50 = v34;
    sub_7F84(&qword_3AC48, &unk_27890);
    v35 = v54;
    v36 = *(v54 + 72);
    v37 = (*(v54 + 80) + 32) & ~*(v54 + 80);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_27160;
    v39 = v38 + v37;
    v40 = *(v35 + 16);
    v41 = v55;
    v40(v39, v58, v55);
    v42 = v57;
    v40(v39 + v36, v57, v41);
    v43 = v53;
    sub_23E40();

    (*(v27 + 8))(v33, v56);
    v44 = *(v35 + 8);
    v44(v42, v41);
    v44(v58, v41);
    return (v44)(v43, v41);
  }
}

char *sub_1C498()
{
  v1 = v0;
  v2 = sub_7F84(&qword_3AC40, qword_271E0);
  __chkstk_darwin(v2 - 8);
  v4 = &v102 - v3;
  v5 = sub_23600();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23C80();
  v10 = [v0 valueForKey:v9];

  if (v10)
  {
    sub_23F10();
    swift_unknownObjectRelease();
  }

  else
  {
    v109 = 0u;
    v110 = 0u;
  }

  v111[0] = v109;
  v111[1] = v110;
  v107 = v1;
  if (!*(&v110 + 1))
  {
    v102 = v8;
    v103 = v4;
    v104 = v6;
    v105 = v5;
    v11 = sub_ECC4(v111, &qword_3AC20, &qword_277E0);
    goto LABEL_9;
  }

  sub_7F84(&qword_3AC30, &unk_271C0);
  v11 = swift_dynamicCast();
  if ((v11 & 1) == 0)
  {
    v102 = v8;
    v103 = v4;
    v104 = v6;
    v105 = v5;
LABEL_9:
    *&v109 = &_swiftEmptyArrayStorage;
    v13 = REMSettingsBundleGet(v11);
    v98._countAndFlagsBits = 0x800000000002C320;
    v112._countAndFlagsBits = 0xD000000000000016;
    v112._object = 0x800000000002C300;
    v117.value._countAndFlagsBits = 0;
    v117.value._object = 0;
    v14.super.isa = v13;
    v121._countAndFlagsBits = 0;
    v121._object = 0xE000000000000000;
    v106 = sub_235A0(v112, v117, v14, v121, 0xD00000000000001FLL, v98);

    v15 = [objc_opt_self() authorizationStatusForBundleIdentifier:REMAppBundleIdentifier] - 3 < 2;
    v16 = sub_1F040(v15);
    v18 = v17;
    v19 = REMSettingsBundleGet(v16);
    v99._countAndFlagsBits = 0x800000000002C360;
    v122._countAndFlagsBits = 0x6DA0C26E7261654CLL;
    v122._object = 0xAE00A680E265726FLL;
    v113._countAndFlagsBits = 0xD000000000000013;
    v113._object = 0x800000000002C340;
    v118.value._countAndFlagsBits = 0;
    v118.value._object = 0;
    v20.super.isa = v19;
    sub_235A0(v113, v118, v20, v122, 0x1000000000000095, v99);

    v21 = sub_23C80();
    v22 = sub_23C80();
    v23 = [v21 rangeOfString:v22];
    v25 = v24;

    if (v23 != sub_23550())
    {
      v26 = sub_23C80();

      v27 = sub_23C80();
      v28 = [v26 stringByReplacingCharactersInRange:v23 withString:{v25, v27}];

      v16 = sub_23C90();
      v18 = v29;
    }

    v30 = sub_23CE0();

    v31 = objc_opt_self();
    v32 = sub_23C80();

    v33 = [v31 groupSpecifierWithName:v32];

    if (v33)
    {
      sub_7F84(&qword_3B368, &qword_277E8);
      inited = swift_initStackObject();
      v106 = v23;
      v35 = inited;
      *(inited + 16) = xmmword_27760;
      *&v111[0] = sub_23C90();
      *(&v111[0] + 1) = v36;
      sub_23F60();
      sub_FB80(0, &qword_3B370, PSFooterHyperlinkView_ptr);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v38 = NSStringFromClass(ObjCClassFromMetadata);
      v39 = v30;
      v40 = sub_23C90();
      v42 = v41;

      v35[12] = &type metadata for String;
      v35[9] = v40;
      v35[10] = v42;
      *&v111[0] = sub_23C90();
      *(&v111[0] + 1) = v43;
      sub_23F60();
      v35[21] = &type metadata for String;
      v35[18] = v16;
      v35[19] = v18;
      *&v111[0] = sub_23C90();
      *(&v111[0] + 1) = v44;
      sub_23F60();
      v114.location = v106;
      v114.length = v39;
      v45 = NSStringFromRange(v114);
      v46 = sub_23C90();
      v48 = v47;

      v35[30] = &type metadata for String;
      v35[27] = v46;
      v35[28] = v48;
      sub_1F12C(v35);
      swift_setDeallocating();
      sub_7F84(&qword_3B378, &unk_277F0);
      swift_arrayDestroy();
      isa = sub_23C00().super.isa;

      [v33 setProperties:isa];

      v50 = v103;
      sub_235F0();
      v52 = v104;
      v51 = v105;
      if ((*(v104 + 48))(v50, 1, v105) == 1)
      {
        sub_ECC4(v50, &qword_3AC40, qword_271E0);
      }

      else
      {
        v55 = v102;
        (*(v52 + 32))(v102, v50, v51);
        sub_235E0(v56);
        v58 = v57;
        [v33 setProperty:v57 forKey:PSFooterHyperlinkViewURLKey];

        (*(v52 + 8))(v55, v51);
      }

      v59 = v33;
      sub_23CF0();
      v54 = v107;
      if (*(&dword_10 + (v109 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v109 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_23D20();
      }

      sub_23D30();
    }

    else
    {

      v54 = v107;
    }

    v60 = REMSettingsBundleGet(v53);
    v100._countAndFlagsBits = 0x800000000002C450;
    v115._object = 0x800000000002C430;
    v115._countAndFlagsBits = 0xD000000000000011;
    v119.value._countAndFlagsBits = 0;
    v119.value._object = 0;
    v61.super.isa = v60;
    v123._countAndFlagsBits = 0;
    v123._object = 0xE000000000000000;
    sub_235A0(v115, v119, v61, v123, 0xD000000000000049, v100);

    v62 = sub_23C80();

    v63 = NSStringFromSelector("automaticSecondaryGroceryLocale");
    if (!v63)
    {
      sub_23C90();
      v63 = sub_23C80();
    }

    v64 = objc_opt_self();
    v65 = [v64 standardPreferenceSpecifierNamed:v62 target:v54 cell:6 detail:0 keyName:v63 defaultValue:0 scope:0 set:"setAutomaticSecondaryGroceryLocale:" get:"automaticSecondaryGroceryLocale"];

    v66 = v65;
    sub_23CF0();
    if (*(&dword_10 + (v109 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v109 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_23D20();
    }

    v106 = v66;
    v67 = sub_23D30();
    v105 = v109;
    v68 = REMSettingsBundleGet(v67);
    v101._countAndFlagsBits = 0x800000000002C4A0;
    v116._countAndFlagsBits = 0x65676175676E614CLL;
    v116._object = 0xE900000000000073;
    v120.value._countAndFlagsBits = 0;
    v120.value._object = 0;
    v69.super.isa = v68;
    v124._countAndFlagsBits = 0;
    v124._object = 0xE000000000000000;
    sub_235A0(v116, v120, v69, v124, 0xD00000000000002BLL, v101);

    type metadata accessor for TTRIGroceryLanguagesController();
    v70 = sub_23C80();
    v71 = NSStringFromSelector("secondaryGroceryLanguageDisplayName");
    if (!v71)
    {
      sub_23C90();
      v71 = sub_23C80();
    }

    v72 = swift_getObjCClassFromMetadata();
    v73 = v64;
    v74 = v64;
    v75 = v107;
    v76 = [v74 standardPreferenceSpecifierNamed:v70 target:v107 cell:2 detail:v72 keyName:v71 defaultValue:0 scope:0 set:0 get:"secondaryGroceryLanguageDisplayName"];

    v77 = OBJC_IVAR____TtC17RemindersSettings32TTRIGroceryAddLanguageController_languageListSpecifier;
    v78 = *&v75[OBJC_IVAR____TtC17RemindersSettings32TTRIGroceryAddLanguageController_languageListSpecifier];
    *&v75[OBJC_IVAR____TtC17RemindersSettings32TTRIGroceryAddLanguageController_languageListSpecifier] = v76;
    v79 = v76;

    v80 = *&v75[v77];
    if (v80)
    {
      v81 = REMSettingsGroceryLanguageListIdentifier;
      v82 = v80;
      v83 = v81;
      [v82 setIdentifier:v83];
    }

    v84 = sub_23C80();

    v85 = NSStringFromSelector("secondaryGroceryLanguageDisplayName");
    if (!v85)
    {
      sub_23C90();
      v85 = sub_23C80();
    }

    v86 = v107;
    v87 = [v73 standardPreferenceSpecifierNamed:v84 target:v107 cell:4 detail:0 keyName:v85 defaultValue:0 scope:0 set:0 get:"secondaryGroceryLanguageDisplayName"];

    v88 = OBJC_IVAR____TtC17RemindersSettings32TTRIGroceryAddLanguageController_fixLanguageSpecifier;
    v89 = *&v86[OBJC_IVAR____TtC17RemindersSettings32TTRIGroceryAddLanguageController_fixLanguageSpecifier];
    *&v86[OBJC_IVAR____TtC17RemindersSettings32TTRIGroceryAddLanguageController_fixLanguageSpecifier] = v87;

    v90 = sub_1F268(1);
    v91 = v90;
    if (v90 && ([v90 isAutomatic] & 1) == 0)
    {
      v92 = *&v86[v77];
      v93 = v105;
      if (!v92)
      {
LABEL_37:
        sub_FB80(0, &qword_3AC28, PSSpecifier_ptr);
        v95 = sub_23D00().super.isa;
        v96 = sub_23C80();
        [v86 setValue:v95 forKey:v96];

        v12 = sub_1B3C0(v93);

        return v12;
      }
    }

    else
    {
      v92 = *&v86[v88];
      v93 = v105;
      if (!v92)
      {
        goto LABEL_37;
      }
    }

    v94 = v92;
    sub_23CF0();
    if (*(&dword_10 + (v109 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v109 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_23D20();
    }

    sub_23D30();

    v93 = v109;
    goto LABEL_37;
  }

  return v108;
}

void sub_1D13C()
{
  v1 = v0;
  v0[OBJC_IVAR____TtC17RemindersSettings32TTRIGroceryAddLanguageController_hasSecondaryGroceryLocaleCache] = 0;
  v2 = *&v0[OBJC_IVAR____TtC17RemindersSettings32TTRIGroceryAddLanguageController_cachedSecondaryGroceryLocale];
  *&v0[OBJC_IVAR____TtC17RemindersSettings32TTRIGroceryAddLanguageController_cachedSecondaryGroceryLocale] = 0;

  v3 = *&v0[OBJC_IVAR____TtC17RemindersSettings32TTRIGroceryAddLanguageController_languageListSpecifier];
  if (v3)
  {
    v4 = v3;
    v5 = sub_23830();
    v6 = &v0[OBJC_IVAR____TtC17RemindersSettings32TTRIGroceryAddLanguageController_groceryLanguageTemporaryDisplayName];
    *v6 = v5;
    v6[1] = v7;

    [v1 reloadSpecifier:v4];

    *v6 = 0;
    v6[1] = 0;
  }
}

void sub_1D200()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC17RemindersSettings32TTRIGroceryAddLanguageController_languageListSpecifier];
  if (v2)
  {
    v3 = v2;
    v4 = sub_23830();
    v5 = &v0[OBJC_IVAR____TtC17RemindersSettings32TTRIGroceryAddLanguageController_groceryLanguageTemporaryDisplayName];
    *v5 = v4;
    v5[1] = v6;

    [v1 reloadSpecifier:v3];

    *v5 = 0;
    v5[1] = 0;
  }
}

uint64_t sub_1D2A4()
{
  v1 = sub_7F84(&qword_3A950, &qword_26F70);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v14 - v5;
  if (!*(v0 + OBJC_IVAR____TtC17RemindersSettings32TTRIGroceryAddLanguageController_groceryLanguageTemporaryDisplayName + 8))
  {
    v8 = sub_1F268(1);
    if (v8)
    {
      v9 = [v8 locale];
      if (v9)
      {
        v10 = v9;
        sub_23660();

        v11 = sub_23680();
        (*(*(v11 - 8) + 56))(v4, 0, 1, v11);
      }

      else
      {
        v11 = sub_23680();
        (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
      }

      sub_1F58C(v4, v6);
      sub_23680();
      v12 = *(v11 - 8);
      if ((*(v12 + 48))(v6, 1, v11) != 1)
      {
        sub_23640();
        (*(v12 + 8))(v6, v11);
        sub_23870();
        sub_23820();

        v7 = sub_23830();
        goto LABEL_11;
      }

      sub_ECC4(v6, &qword_3A950, &qword_26F70);
    }

    sub_23870();
    sub_23850();
    v7 = sub_23830();
LABEL_11:

    goto LABEL_12;
  }

  v7 = *(v0 + OBJC_IVAR____TtC17RemindersSettings32TTRIGroceryAddLanguageController_groceryLanguageTemporaryDisplayName);
LABEL_12:

  return v7;
}

uint64_t sub_1D614(void *a1)
{
  v3 = sub_7F84(&qword_3AC38, &qword_27250);
  __chkstk_darwin(v3 - 8);
  v5 = &v31 - v4;
  v6 = sub_7F84(&qword_3A950, &qword_26F70);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v31 - v10;
  v12 = sub_23680();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v31 - v17;
  v19 = [a1 BOOLValue];
  v20 = 0;
  if ((v19 & 1) == 0)
  {
    v21 = sub_1F268(1);
    if (!v21)
    {
      (*(v13 + 56))(v11, 1, 1, v12);
LABEL_8:
      sub_ECC4(v11, &qword_3A950, &qword_26F70);
      v20 = &_swiftEmptyArrayStorage;
      goto LABEL_12;
    }

    v22 = [v21 locale];
    if (v22)
    {
      v23 = v22;
      sub_23660();

      (*(v13 + 56))(v9, 0, 1, v12);
    }

    else
    {
      (*(v13 + 56))(v9, 1, 1, v12);
    }

    sub_1F58C(v9, v11);
    if ((*(v13 + 48))(v11, 1, v12) == 1)
    {
      goto LABEL_8;
    }

    v32 = *(v13 + 32);
    v32(v18, v11, v12);
    (*(v13 + 16))(v16, v18, v12);
    v20 = sub_10E24(0, 1, 1, &_swiftEmptyArrayStorage);
    v25 = *(v20 + 2);
    v24 = *(v20 + 3);
    if (v25 >= v24 >> 1)
    {
      v20 = sub_10E24((v24 > 1), v25 + 1, 1, v20);
    }

    (*(v13 + 8))(v18, v12);
    *(v20 + 2) = v25 + 1;
    v32(&v20[((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v25], v16, v12);
  }

LABEL_12:
  v26 = sub_23DA0();
  (*(*(v26 - 8) + 56))(v5, 1, 1, v26);
  sub_23D80();
  v27 = v1;
  v28 = sub_23D70();
  v29 = swift_allocObject();
  v29[2] = v28;
  v29[3] = &protocol witness table for MainActor;
  v29[4] = v27;
  v29[5] = v20;
  sub_1B5BC(0, 0, v5, &unk_277B8, v29);
}

uint64_t sub_1DA3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  sub_23D80();
  v5[8] = sub_23D70();
  v7 = sub_23D50();
  v5[9] = v7;
  v5[10] = v6;

  return _swift_task_switch(sub_1DAD4, v7, v6);
}

uint64_t sub_1DAD4()
{
  v1 = *(v0[6] + OBJC_IVAR____TtC17RemindersSettings32TTRIGroceryAddLanguageController_store);
  v0[11] = v1;
  v1;
  v2 = swift_task_alloc();
  v0[12] = v2;
  *v2 = v0;
  v2[1] = sub_1DB90;
  v3 = v0[7];

  return REMStore.setOverridingGroceryCategorizationSecondaryGroceryLocales(_:)(v3);
}

uint64_t sub_1DB90(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v4 = v3[9];
    v5 = v3[10];
    v6 = sub_1DD30;
  }

  else
  {
    v7 = v3[11];

    v4 = v3[9];
    v5 = v3[10];
    v6 = sub_1DCC0;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_1DCC0()
{

  sub_1DF08();
  sub_1DF08();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DD30()
{
  v13 = v0;
  v1 = *(v0 + 88);

  if (qword_3A930 != -1)
  {
    swift_once();
  }

  v2 = sub_238C0();
  sub_E648(v2, qword_3B2F0);
  swift_errorRetain();
  v3 = sub_238B0();
  v4 = sub_23E20();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = sub_24080();
    v9 = sub_1E7CC(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_0, v3, v4, "TTRIGroceryAddLanguageController.setAutomaticSecondaryGroceryLocale: Failed to set overriding secondary grocery locale {error: %s}", v5, 0xCu);
    sub_80D4(v6);
  }

  else
  {
  }

  sub_1DF08();
  v10 = *(v0 + 8);

  return v10();
}

void sub_1DF08()
{
  v1 = v0;
  v2 = sub_7F84(&qword_3A950, &qword_26F70);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v31 - v7;
  v9 = __chkstk_darwin(v6);
  v11 = &v31 - v10;
  __chkstk_darwin(v9);
  v13 = &v31 - v12;
  v14 = *&v0[OBJC_IVAR____TtC17RemindersSettings32TTRIGroceryAddLanguageController_languageListSpecifier];
  if (v14)
  {
    v15 = *&v1[OBJC_IVAR____TtC17RemindersSettings32TTRIGroceryAddLanguageController_fixLanguageSpecifier];
    if (v15)
    {
      v32 = v15;
      v16 = v14;
      v17 = sub_1F268(0);
      if (v17)
      {
        v18 = v17;
        if ([v18 isAutomatic])
        {
          v19 = v32;
          if ([v1 containsSpecifier:v19])
          {
          }

          else
          {
            [v1 insertSpecifier:v19 afterSpecifier:v16];

            v22 = [v18 locale];
            if (v22)
            {
              v23 = v22;
              sub_23660();

              v24 = sub_23680();
              (*(*(v24 - 8) + 56))(v5, 0, 1, v24);
            }

            else
            {
              v24 = sub_23680();
              (*(*(v24 - 8) + 56))(v5, 1, 1, v24);
            }

            sub_1F58C(v5, v8);
            sub_23680();
            v28 = *(v24 - 8);
            if ((*(v28 + 48))(v8, 1, v24) == 1)
            {
              sub_ECC4(v8, &qword_3A950, &qword_26F70);
            }

            else
            {
              sub_23640();
              (*(v28 + 8))(v8, v24);
            }

            sub_23870();
            sub_23820();

            sub_1D200();
          }

          v29 = v16;
          if ([v1 containsSpecifier:v29])
          {
            [v1 removeSpecifier:v29];
          }
        }

        else
        {
          v21 = v16;
          if ([v1 containsSpecifier:v21])
          {
          }

          else
          {
            [v1 insertSpecifier:v21 afterSpecifier:v32];

            v25 = [v18 locale];
            if (v25)
            {
              v26 = v25;
              sub_23660();

              v27 = sub_23680();
              (*(*(v27 - 8) + 56))(v11, 0, 1, v27);
            }

            else
            {
              v27 = sub_23680();
              (*(*(v27 - 8) + 56))(v11, 1, 1, v27);
            }

            sub_1F58C(v11, v13);
            sub_23680();
            v30 = *(v27 - 8);
            if ((*(v30 + 48))(v13, 1, v27) == 1)
            {
              sub_ECC4(v13, &qword_3A950, &qword_26F70);
            }

            else
            {
              sub_23640();
              (*(v30 + 8))(v13, v27);
            }

            sub_23870();
            sub_23820();

            sub_1D200();
          }

          v29 = v32;
          if ([v1 containsSpecifier:v29])
          {
            [v1 removeSpecifier:v29];

            return;
          }
        }
      }

      else
      {

        v20 = v32;
      }
    }
  }
}

uint64_t sub_1E5DC(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E6D4;

  return v6(a1);
}

uint64_t sub_1E6D4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_1E7CC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1E898(v11, 0, 0, 1, a1, a2);
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
    sub_8078(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_80D4(v11);
  return v7;
}

unint64_t sub_1E898(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1E9A4(a5, a6);
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
    result = sub_23FA0();
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

void *sub_1E9A4(uint64_t a1, unint64_t a2)
{
  v3 = sub_1E9F0(a1, a2);
  sub_1EB20(&off_35578);
  return v3;
}

void *sub_1E9F0(uint64_t a1, unint64_t a2)
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

  v6 = sub_1EC0C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_23FA0();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_23CD0();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_1EC0C(v10, 0);
        result = sub_23F80();
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

uint64_t sub_1EB20(uint64_t result)
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

  result = sub_1EC80(result, v11, 1, v3);
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

void *sub_1EC0C(uint64_t a1, uint64_t a2)
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

  sub_7F84(&qword_3B360, &qword_277A8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1EC80(char *result, int64_t a2, char a3, char *a4)
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
    sub_7F84(&qword_3B360, &qword_277A8);
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

uint64_t sub_1ED74(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1EE68;

  return v5(v2 + 32);
}

uint64_t sub_1EE68()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

id sub_1EF7C(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  *&v2[OBJC_IVAR____TtC17RemindersSettings32TTRIGroceryAddLanguageController_languageListSpecifier] = 0;
  *&v2[OBJC_IVAR____TtC17RemindersSettings32TTRIGroceryAddLanguageController_fixLanguageSpecifier] = 0;
  v4 = &v2[OBJC_IVAR____TtC17RemindersSettings32TTRIGroceryAddLanguageController_groceryLanguageTemporaryDisplayName];
  *v4 = 0;
  v4[1] = 0;
  v2[OBJC_IVAR____TtC17RemindersSettings32TTRIGroceryAddLanguageController_hasSecondaryGroceryLocaleCache] = 0;
  *&v2[OBJC_IVAR____TtC17RemindersSettings32TTRIGroceryAddLanguageController_cachedSecondaryGroceryLocale] = 0;
  v5 = [objc_allocWithZone(REMStore) init];
  *&v2[OBJC_IVAR____TtC17RemindersSettings32TTRIGroceryAddLanguageController_store] = v5;
  v7.receiver = v2;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, "initWithNibName:bundle:", 0, 0);
}

uint64_t sub_1F040(uint64_t a1)
{
  v1 = a1;
  v2 = REMSettingsBundleGet(a1);
  if (v1)
  {
    v10._countAndFlagsBits = 0x800000000002C7E0;
    v3._countAndFlagsBits = 0xD000000000000108;
    v3._object = 0x800000000002C6D0;
    v4 = 0xD0000000000000D9;
    v5.value._countAndFlagsBits = 0;
    v5.value._object = 0;
    v6.super.isa = v2;
    v7._countAndFlagsBits = 0;
    v7._object = 0xE000000000000000;
  }

  else
  {
    v10._countAndFlagsBits = 0x800000000002C620;
    v3._countAndFlagsBits = 0xD0000000000000EDLL;
    v3._object = 0x800000000002C530;
    v5.value._countAndFlagsBits = 0;
    v5.value._object = 0;
    v6.super.isa = v2;
    v7._countAndFlagsBits = 0;
    v7._object = 0xE000000000000000;
    v4 = 0xD0000000000000ACLL;
  }

  v8 = sub_235A0(v3, v5, v6, v7, v4, v10);

  return v8;
}

unint64_t sub_1F12C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_7F84(&qword_3B380, &unk_27800);
    v3 = sub_24030();
    v4 = a1 + 32;

    while (1)
    {
      sub_17D2C(v4, v13, &qword_3B378, &unk_277F0);
      result = sub_9DAC(v13);
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
      result = sub_1F6B4(&v15, (v3[7] + 32 * result));
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

uint64_t sub_1F268(char a1)
{
  v2 = v1;
  if (a1 & 1) != 0 && (*(v1 + OBJC_IVAR____TtC17RemindersSettings32TTRIGroceryAddLanguageController_hasSecondaryGroceryLocaleCache))
  {
    return *(v1 + OBJC_IVAR____TtC17RemindersSettings32TTRIGroceryAddLanguageController_cachedSecondaryGroceryLocale);
  }

  sub_23810();
  v4 = *(v1 + OBJC_IVAR____TtC17RemindersSettings32TTRIGroceryAddLanguageController_store);
  v3 = sub_23800();

  *(v2 + OBJC_IVAR____TtC17RemindersSettings32TTRIGroceryAddLanguageController_hasSecondaryGroceryLocaleCache) = 1;
  v5 = *(v2 + OBJC_IVAR____TtC17RemindersSettings32TTRIGroceryAddLanguageController_cachedSecondaryGroceryLocale);
  *(v2 + OBJC_IVAR____TtC17RemindersSettings32TTRIGroceryAddLanguageController_cachedSecondaryGroceryLocale) = v3;

  return v3;
}

uint64_t sub_1F484()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1F4CC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_EBD0;

  return sub_1DA3C(a1, v4, v5, v7, v6);
}

uint64_t sub_1F58C(uint64_t a1, uint64_t a2)
{
  v4 = sub_7F84(&qword_3A950, &qword_26F70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1F5FC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_17FE8;

  return sub_1E5DC(a1, v4);
}

_OWORD *sub_1F6B4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1F6C4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1F6FC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_17FE8;

  return sub_1ED74(a1, v4);
}

uint64_t sub_1F7B4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_EBD0;

  return sub_1ED74(a1, v4);
}

uint64_t sub_1F878()
{
  v0 = sub_238C0();
  sub_E5E4(v0, qword_3B388);
  sub_E648(v0, qword_3B388);
  v1 = [objc_opt_self() utility];
  return sub_238D0();
}

id sub_1F98C()
{
  ObjectType = swift_getObjectType();
  v2 = sub_7F84(&qword_3AC40, qword_271E0);
  __chkstk_darwin(v2 - 8);
  v84 = &v78 - v3;
  v4 = sub_23600();
  v5 = *(v4 - 8);
  v82 = v4;
  v83 = v5;
  __chkstk_darwin(v4);
  v86 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_235B0();
  v80 = *(v81 - 8);
  __chkstk_darwin(v81);
  v8 = (&v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_23680();
  __chkstk_darwin(v9 - 8);
  v10 = sub_23C70();
  __chkstk_darwin(v10 - 8);
  v85 = sub_235C0();
  v89 = *(v85 - 8);
  v11 = __chkstk_darwin(v85);
  v90 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v91 = &v78 - v14;
  v15 = __chkstk_darwin(v13);
  v92 = &v78 - v16;
  __chkstk_darwin(v15);
  v18 = &v78 - v17;
  v96.receiver = v0;
  v96.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v96, "viewDidLoad");
  v20 = REMSettingsBundleGet(v19);
  v77._countAndFlagsBits = 0x800000000002C970;
  v97._countAndFlagsBits = 0x65676175676E614CLL;
  v97._object = 0xE900000000000073;
  v102.value._countAndFlagsBits = 0;
  v102.value._object = 0;
  v21.super.isa = v20;
  v103._countAndFlagsBits = 0;
  v103._object = 0xE000000000000000;
  sub_235A0(v97, v102, v21, v103, 0xD00000000000002BLL, v77);
  v23 = v22;

  v87 = v0;
  v24 = [v0 navigationItem];
  v78 = v23;
  v25 = sub_23C80();
  [v24 setTitle:v25];

  v93 = sub_23C90();
  v94 = v26;
  v98._countAndFlagsBits = 47;
  v98._object = 0xE100000000000000;
  sub_23CC0(v98);
  v99._countAndFlagsBits = sub_23C90();
  sub_23CC0(v99);

  v100._countAndFlagsBits = 47;
  v100._object = 0xE100000000000000;
  sub_23CC0(v100);
  v101._countAndFlagsBits = sub_23C90();
  sub_23CC0(v101);

  v27 = v94;
  v79 = v93;
  sub_23C60();
  sub_23670();
  v28 = ObjectType;
  *v8 = ObjectType;
  v29 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v30 = *(v80 + 104);
  v31 = v81;
  v30(v8, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v81);
  v88 = v18;
  sub_235D0();
  sub_23C60();
  sub_23670();
  v80 = type metadata accessor for TTRIGroceryAddLanguageController();
  *v8 = v80;
  v30(v8, v29, v31);
  sub_235D0();
  sub_23C60();
  sub_23670();
  *v8 = v28;
  v30(v8, v29, v31);
  sub_235D0();
  sub_23C60();
  sub_23670();
  *v8 = v28;
  v30(v8, v29, v31);
  v32 = v82;
  sub_235D0();
  v33 = v84;
  v81 = v27;
  sub_235F0();
  v34 = v83;
  if ((*(v83 + 48))(v33, 1, v32) == 1)
  {
    sub_ECC4(v33, &qword_3AC40, qword_271E0);
    v36 = v87;
    v35 = v88;
    v37 = v85;
    v39 = v90;
    v38 = v91;
  }

  else
  {
    (*(v34 + 32))(v86, v33, v32);
    v84 = sub_23C90();
    v79 = v40;
    sub_7F84(&qword_3AC48, &unk_27890);
    v41 = v89;
    v42 = *(v89 + 72);
    v43 = (*(v89 + 80) + 32) & ~*(v89 + 80);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_27760;
    v45 = v44 + v43;
    v46 = *(v41 + 16);
    v47 = v85;
    v46(v45, v92, v85);
    v48 = v91;
    v46(v45 + v42, v91, v47);
    v49 = v45 + 2 * v42;
    v50 = v90;
    v46(v49, v90, v47);
    v51 = v87;
    v35 = v88;
    v52 = v86;
    sub_23E40();

    (*(v34 + 8))(v52, v32);
    v36 = v51;
    v37 = v47;
    v39 = v50;
    v38 = v48;
  }

  v53 = [v36 parentController];
  if (!v53)
  {

    v75 = v92;
    v56 = v89;
LABEL_15:
    v76 = *(v56 + 8);
    v76(v39, v37);
    v76(v38, v37);
    v76(v75, v37);
    return (v76)(v35, v37);
  }

  v54 = v53;
  v55 = swift_dynamicCastClass();
  v56 = v89;
  if (!v55)
  {

    v75 = v92;
    goto LABEL_15;
  }

  v57 = v55;
  v58 = v54;
  v93 = sub_2047C();
  v94 = 0;
  v95 = v57;
  v59 = objc_allocWithZone(sub_7F84(&qword_3B3C8, &qword_27888));
  v60 = sub_23A30();
  v61 = [v60 view];
  if (!v61)
  {

    goto LABEL_14;
  }

  v62 = v61;
  result = [v36 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_17;
  }

  v64 = result;
  result = [v60 view];
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v65 = result;
  [v64 addSubview:result];

  result = [v36 view];
  if (result)
  {
    v66 = result;

    [v66 bounds];
    v68 = v67;
    v70 = v69;
    v72 = v71;
    v74 = v73;

    [v62 setFrame:{v68, v70, v72, v74}];
    [v62 setAutoresizingMask:18];
    [v36 addChildViewController:v60];
    [v60 didMoveToParentViewController:v36];

    v38 = v91;
LABEL_14:
    v75 = v92;
    v35 = v88;
    goto LABEL_15;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_2047C()
{
  v0 = sub_7F84(&qword_3A950, &qword_26F70);
  v1 = __chkstk_darwin(v0 - 8);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v5 = &v15 - v4;
  v6 = sub_23680();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1F268(1);
  if (!v10)
  {
    (*(v7 + 56))(v5, 1, 1, v6);
LABEL_7:
    sub_ECC4(v5, &qword_3A950, &qword_26F70);
    sub_23870();
    return sub_23850();
  }

  v11 = [v10 locale];
  if (v11)
  {
    v12 = v11;
    sub_23660();

    (*(v7 + 56))(v3, 0, 1, v6);
  }

  else
  {
    (*(v7 + 56))(v3, 1, 1, v6);
  }

  sub_1F58C(v3, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    goto LABEL_7;
  }

  (*(v7 + 32))(v9, v5, v6);
  sub_23870();
  sub_23640();
  v14 = sub_23820();

  (*(v7 + 8))(v9, v6);
  return v14;
}

uint64_t sub_206F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v25 = a3;
  v26 = a4;
  v24[0] = a2;
  v7 = sub_23A20();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_7F84(&qword_3B3D0, &qword_27910);
  v24[1] = v11;
  __chkstk_darwin(v11);
  v13 = v24 - v12;
  v27 = a1;
  v28 = a2;
  v29 = a3;
  sub_7F84(&qword_3B3D8, &qword_27918);
  sub_1B278(&qword_3B3E0, &qword_3B3D8, &qword_27918, &protocol conformance descriptor for TupleView<A>);
  sub_23A40();
  sub_23A10();
  v14 = *(sub_7F84(&qword_3B3E8, &qword_27920) + 36);
  (*(v8 + 16))(&v13[v14], v10, v7);
  v15 = *(v8 + 56);
  v15(&v13[v14], 0, 1, v7);
  KeyPath = swift_getKeyPath();
  v17 = &v13[*(v11 + 36)];
  v18 = *(sub_7F84(&qword_3B3F0, &qword_27958) + 28);
  (*(v8 + 32))(v17 + v18, v10, v7);
  v15(v17 + v18, 0, 1, v7);
  *v17 = KeyPath;
  v19 = v24[0];
  v31 = a1;
  v32 = v24[0];
  sub_7F84(&qword_3B3F8, &qword_27960);
  sub_23AD0();
  v31 = v30;
  v20 = swift_allocObject();
  v20[2] = a1;
  v20[3] = v19;
  v21 = v25;
  v20[4] = v25;
  sub_23870();
  sub_221C0();
  sub_22F80(&qword_3B438, &protocol conformance descriptor for REMGroceryLanguage);

  v22 = v21;
  sub_23AC0();

  return sub_2235C(v13);
}

uint64_t sub_20A54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v43 = a4;
  v40 = sub_7F84(&qword_3B448, &qword_279A8);
  __chkstk_darwin(v40);
  v38 = &v35 - v7;
  v42 = sub_7F84(&qword_3B450, &qword_279B0);
  v46 = *(v42 - 8);
  v8 = __chkstk_darwin(v42);
  v41 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v45 = &v35 - v10;
  v39 = sub_7F84(&qword_3B458, &qword_279B8);
  v37 = *(v39 - 8);
  v11 = v37;
  v12 = __chkstk_darwin(v39);
  v44 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v35 - v14;
  v50 = a1;
  v51 = a2;
  v16 = a2;
  v52 = a3;
  sub_7F84(&qword_3B460, &qword_279C0);
  v17 = sub_8EE4(&qword_3B468, &qword_279C8);
  v18 = sub_23A00();
  v19 = sub_1B278(&qword_3B470, &qword_3B468, &qword_279C8, &protocol conformance descriptor for Picker<A, B, C>);
  v53 = v17;
  v54 = v18;
  v55 = v19;
  v56 = &protocol witness table for InlinePickerStyle;
  swift_getOpaqueTypeConformance2();
  v20 = v15;
  v36 = v15;
  v21 = sub_23B10();
  v47 = a1;
  v48 = v16;
  v49 = a3;
  sub_21988(v21);
  v53 = &type metadata for Text;
  v54 = &protocol witness table for Text;
  swift_getOpaqueTypeConformance2();
  v22 = v45;
  sub_23B20();
  v23 = *(v11 + 16);
  v24 = v44;
  v25 = v39;
  v23(v44, v20, v39);
  v26 = *(v46 + 16);
  v27 = v41;
  v28 = v22;
  v29 = v42;
  v26(v41, v28, v42);
  v30 = v43;
  v23(v43, v24, v25);
  v31 = &v30[*(sub_7F84(&qword_3B478, &qword_279D0) + 48)];
  v26(v31, v27, v29);
  v32 = *(v46 + 8);
  v32(v45, v29);
  v33 = *(v37 + 8);
  v33(v36, v25);
  v32(v27, v29);
  return (v33)(v44, v25);
}

uint64_t sub_20EDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_23A00();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_7F84(&qword_3B468, &qword_279C8);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v13 - v10;
  v13[4] = a1;
  v13[5] = a2;
  sub_7F84(&qword_3B3F8, &qword_27960);
  sub_23AE0();
  sub_23870();
  sub_7F84(&qword_3B480, &qword_279D8);
  sub_22F80(&qword_3B488, &protocol conformance descriptor for REMGroceryLanguage);
  sub_22FC4();
  sub_23AF0();
  sub_239F0();
  sub_1B278(&qword_3B470, &qword_3B468, &qword_279C8, &protocol conformance descriptor for Picker<A, B, C>);
  sub_23A90();
  (*(v5 + 8))(v7, v4);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_21174()
{
  sub_7F84(&qword_3B498, &unk_279E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_27830;
  sub_23870();
  *(v0 + 32) = sub_23850();
  v6 = v0;
  KeyPath = swift_getKeyPath();
  v2 = sub_7F84(&qword_3B4A0, &qword_27A08);
  v3 = sub_1B278(&qword_3B4A8, &qword_3B4A0, &qword_27A08, &protocol conformance descriptor for [A]);
  v4 = sub_22F80(&qword_3B488, &protocol conformance descriptor for REMGroceryLanguage);
  return sub_23B00(&v6, KeyPath, sub_230E0, 0, v2, &type metadata for Text, v3, v4, &protocol witness table for Text);
}

uint64_t sub_212B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v16[1] = a4;
  v7 = sub_23A00();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_7F84(&qword_3B468, &qword_279C8);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v16 - v13;
  v16[10] = a1;
  v16[11] = a2;
  sub_7F84(&qword_3B3F8, &qword_27960);
  sub_23AE0();
  v16[4] = a1;
  v16[5] = a2;
  v16[6] = a3;
  sub_23870();
  sub_7F84(&qword_3B480, &qword_279D8);
  sub_22F80(&qword_3B488, &protocol conformance descriptor for REMGroceryLanguage);
  sub_22FC4();
  sub_23AF0();
  sub_239F0();
  sub_1B278(&qword_3B470, &qword_3B468, &qword_279C8, &protocol conformance descriptor for Picker<A, B, C>);
  sub_23A90();
  (*(v8 + 8))(v10, v7);
  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_21558()
{
  sub_7F84(&qword_3B498, &unk_279E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_27840;
  sub_23870();
  *(inited + 32) = sub_23850();
  *(inited + 40) = sub_224F0();
  v1 = sub_226D0(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  v2 = sub_23840();
  v23 = &_swiftEmptyArrayStorage;
  if (v2 >> 62)
  {
LABEL_25:
    v14 = v2;
    v3 = sub_24000();
    v2 = v14;
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
    if (v3)
    {
LABEL_3:
      v4 = 0;
      v5 = v2 & 0xC000000000000001;
      v22 = v2 & 0xFFFFFFFFFFFFFF8;
      v21 = v3;
      v6 = v1 + 56;
      v20 = v2 & 0xC000000000000001;
      while (1)
      {
        if (v5)
        {
          sub_23F90();
          v7 = __OFADD__(v4++, 1);
          if (v7)
          {
LABEL_22:
            __break(1u);
LABEL_23:
            v13 = v23;
            goto LABEL_27;
          }
        }

        else
        {
          if (v4 >= *(v22 + 16))
          {
            __break(1u);
            goto LABEL_25;
          }

          v7 = __OFADD__(v4++, 1);
          if (v7)
          {
            goto LABEL_22;
          }
        }

        if ((v1 & 0xC000000000000001) != 0)
        {

          v8 = sub_23F30();

          if (v8)
          {

            goto LABEL_6;
          }
        }

        else if (*(v1 + 16))
        {
          sub_22F80(&qword_3B488, &protocol conformance descriptor for REMGroceryLanguage);
          v9 = sub_23C20();
          v10 = -1 << *(v1 + 32);
          v11 = v9 & ~v10;
          if ((*(v6 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
          {
            v12 = ~v10;
            sub_22F80(&qword_3B438, &protocol conformance descriptor for REMGroceryLanguage);
            while ((sub_23C50() & 1) == 0)
            {
              v11 = (v11 + 1) & v12;
              if (((*(v6 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
              {
                goto LABEL_4;
              }
            }

            v5 = v20;
            v3 = v21;
            goto LABEL_6;
          }

LABEL_4:
          v5 = v20;
          v3 = v21;
        }

        sub_23FB0();
        sub_23FD0();
        sub_23FE0();
        v2 = sub_23FC0();
LABEL_6:
        if (v4 == v3)
        {
          goto LABEL_23;
        }
      }
    }
  }

  v13 = &_swiftEmptyArrayStorage;
LABEL_27:

  v23 = v13;
  KeyPath = swift_getKeyPath();
  v16 = sub_7F84(&qword_3B4A0, &qword_27A08);
  v17 = sub_1B278(&qword_3B4A8, &qword_3B4A0, &qword_27A08, &protocol conformance descriptor for [A]);
  v18 = sub_22F80(&qword_3B488, &protocol conformance descriptor for REMGroceryLanguage);
  return sub_23B00(&v23, KeyPath, sub_230E0, 0, v16, &type metadata for Text, v17, v18, &protocol witness table for Text);
}

uint64_t sub_2192C@<X0>(uint64_t a2@<X8>)
{
  sub_23830();
  sub_10C9C();
  result = sub_23A50();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_21988(uint64_t a1)
{
  v1 = REMSettingsBundleGet(a1);
  v9._countAndFlagsBits = 0x800000000002CA20;
  v10._countAndFlagsBits = 0xD000000000000036;
  v10._object = 0x800000000002C9E0;
  v11.value._countAndFlagsBits = 0;
  v11.value._object = 0;
  v2.super.isa = v1;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  sub_235A0(v10, v11, v2, v12, 0xD00000000000002CLL, v9);

  sub_10C9C();
  v3 = sub_23A50();
  v5 = v4;
  v7 = v6 & 1;
  sub_23AA0();
  sub_22F64(v3, v5, v7);
}

uint64_t sub_21A9C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = sub_7F84(&qword_3AC38, &qword_27250);
  __chkstk_darwin(v9 - 8);
  v11 = &v18 - v10;
  v12 = *a2;
  v13 = sub_23DA0();
  (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  sub_23D80();

  v14 = a5;

  v15 = sub_23D70();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = &protocol witness table for MainActor;
  v16[4] = a3;
  v16[5] = a4;
  v16[6] = v14;
  v16[7] = v12;
  sub_1B5BC(0, 0, v11, &unk_27988, v16);
}

uint64_t sub_21C00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = sub_23D80();
  v7[3] = sub_23D70();
  v10 = swift_task_alloc();
  v7[4] = v10;
  *v10 = v7;
  v10[1] = sub_21CBC;

  return sub_2293C(a7, a6);
}

uint64_t sub_21CBC()
{

  v1 = sub_23D50();

  return _swift_task_switch(sub_21DF8, v1, v0);
}

uint64_t sub_21DF8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21E88(uint64_t a1)
{
  v2 = sub_7F84(&qword_3B440, &qword_279A0);
  __chkstk_darwin(v2 - 8);
  sub_22EDC(a1, &v5 - v3);
  return sub_239E0();
}

void destroy for TTRIGroceryLanguagePickerList(void *a1)
{

  v2 = a1[2];
}

uint64_t *sub_21F60(uint64_t *a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[2];
  a1[2] = v4;

  v5 = v4;
  return a1;
}

uint64_t *assignWithCopy for TTRIGroceryLanguagePickerList(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  v4 = a2[2];
  v5 = a1[2];
  a1[2] = v4;
  v6 = v4;

  return a1;
}

__n128 initializeWithTake for TTRIGroceryLanguagePickerList(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

void *assignWithTake for TTRIGroceryLanguagePickerList(void *a1, uint64_t a2)
{

  *a1 = *a2;

  v4 = a1[2];
  a1[2] = *(a2 + 16);

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIGroceryLanguagePickerList(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for TTRIGroceryLanguagePickerList(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2216C()
{

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_221C0()
{
  result = qword_3B400;
  if (!qword_3B400)
  {
    sub_8EE4(&qword_3B3D0, &qword_27910);
    sub_22278();
    sub_1B278(&qword_3B430, &qword_3B3F0, &qword_27958, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3B400);
  }

  return result;
}

unint64_t sub_22278()
{
  result = qword_3B408;
  if (!qword_3B408)
  {
    sub_8EE4(&qword_3B3E8, &qword_27920);
    sub_1B278(&qword_3B410, &qword_3B418, &qword_27968, &protocol conformance descriptor for List<A, B>);
    sub_1B278(&qword_3B420, &qword_3B428, &unk_27970, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3B408);
  }

  return result;
}

uint64_t sub_2235C(uint64_t a1)
{
  v2 = sub_7F84(&qword_3B3D0, &qword_27910);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_223C4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_2241C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_EBD0;

  return sub_21C00(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_224F0()
{
  v0 = sub_23680();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() daemonUserDefaults];
  v5 = [v4 preferredLocalizations];

  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = sub_23D10();

  if (!*(v6 + 16))
  {

LABEL_5:
    sub_23670();
    sub_23640();
    (*(v1 + 8))(v3, v0);
    goto LABEL_6;
  }

LABEL_6:
  sub_23890();
  sub_23880();

  sub_23870();
  v7 = sub_23820();

  return v7;
}

unint64_t sub_226D0(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = sub_24000();
    if (result)
    {
LABEL_3:
      sub_7F84(&qword_3B4B0, &unk_27A10);
      result = sub_23F70();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = sub_24000();
      v5 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return v3;
  }

LABEL_9:
  v6 = 0;
  v7 = v3 + 56;
  v20 = v1 & 0xC000000000000001;
  v18 = v1 + 32;
  v19 = v1 & 0xFFFFFFFFFFFFFF8;
  while (v20)
  {
    result = sub_23F90();
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_25;
    }

LABEL_18:
    sub_23870();
    sub_22F80(&qword_3B488, &protocol conformance descriptor for REMGroceryLanguage);
    result = sub_23C20();
    v10 = -1 << v3[32];
    v11 = result & ~v10;
    v12 = v11 >> 6;
    v13 = *&v7[8 * (v11 >> 6)];
    v14 = 1 << v11;
    if (((1 << v11) & v13) != 0)
    {
      v15 = ~v10;
      sub_22F80(&qword_3B438, &protocol conformance descriptor for REMGroceryLanguage);
      while (1)
      {
        result = sub_23C50();
        if (result)
        {
          break;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *&v7[8 * (v11 >> 6)];
        v14 = 1 << v11;
        if (((1 << v11) & v13) == 0)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
LABEL_22:
      *&v7[8 * v12] = v14 | v13;
      *(*(v3 + 6) + 8 * v11) = v8;
      v16 = *(v3 + 2);
      v9 = __OFADD__(v16, 1);
      v17 = v16 + 1;
      if (v9)
      {
        goto LABEL_26;
      }

      *(v3 + 2) = v17;
    }

    if (v6 == v5)
    {
      return v3;
    }
  }

  if (v6 >= *(v19 + 16))
  {
    goto LABEL_27;
  }

  v8 = *(v18 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_2293C(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  sub_23D80();
  v2[8] = sub_23D70();
  v4 = sub_23D50();
  v2[9] = v4;
  v2[10] = v3;

  return _swift_task_switch(sub_229D4, v4, v3);
}

uint64_t sub_229D4()
{
  sub_23860();
  if (v1)
  {
    sub_7F84(&qword_3AD38, &qword_27350);
    sub_23680();
    v2 = swift_allocObject();
    *(v2 + 1) = xmmword_27850;
    sub_23630();
  }

  else
  {
    v2 = &_swiftEmptyArrayStorage;
  }

  v0[11] = v2;
  v0[12] = [objc_allocWithZone(REMStore) init];
  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_22B54;

  return REMStore.setOverridingGroceryCategorizationSecondaryGroceryLocales(_:)(v2);
}

uint64_t sub_22B54(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v4 = *(v3 + 72);
    v5 = *(v3 + 80);
    v6 = sub_22CF8;
  }

  else
  {

    v4 = *(v3 + 72);
    v5 = *(v3 + 80);
    v6 = sub_22C88;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_22C88()
{

  v1 = *(v0 + 96);
  sub_1D13C();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22CF8()
{
  v13 = v0;

  if (qword_3A938 != -1)
  {
    swift_once();
  }

  v1 = sub_238C0();
  sub_E648(v1, qword_3B388);
  swift_errorRetain();
  v2 = sub_238B0();
  v3 = sub_23E20();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315138;
    swift_getErrorValue();
    v6 = sub_24080();
    v8 = sub_1E7CC(v6, v7, &v12);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_0, v2, v3, "TTRIGroceryLanguagePickerList.setSecondaryGroceryLanguage: %s", v4, 0xCu);
    sub_80D4(v5);
  }

  else
  {
  }

  v9 = *(v0 + 96);
  sub_1D13C();

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_22EDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_7F84(&qword_3B440, &qword_279A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22F64(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_22F80(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_23870();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22FC4()
{
  result = qword_3B490;
  if (!qword_3B490)
  {
    sub_8EE4(&qword_3B480, &qword_279D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3B490);
  }

  return result;
}

uint64_t sub_23040()
{
  sub_8EE4(&qword_3B3D0, &qword_27910);
  sub_23870();
  sub_221C0();
  sub_22F80(&qword_3B438, &protocol conformance descriptor for REMGroceryLanguage);
  return swift_getOpaqueTypeConformance2();
}

id sub_23168(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  if (a3)
  {
    v10 = sub_23C80();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v5;
  v13.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v13, "initWithStyle:reuseIdentifier:specifier:", a1, v10, a4);

  if (v11)
  {
  }

  return v11;
}

void sub_233C8(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Error upon attempt to retrieve time zone city name. {error: %{public}@}", &v2, 0xCu);
}

void sub_23440(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Error upon attempt to clear grocery local corrections. {error: %{public}@}", &v2, 0xCu);
}

void sub_234B8(void *a1, NSObject *a2)
{
  v3 = [a1 localizedDescription];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Unable to fetch Accounts in REMSettingsController: %@", &v4, 0xCu);
}