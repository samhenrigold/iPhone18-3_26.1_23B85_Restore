id sub_173C()
{
  v1 = OBJC_IVAR____TtC24OxygenSaturationSettings22SettingsViewController____lazy_storage___healthStore;
  v2 = *(v0 + OBJC_IVAR____TtC24OxygenSaturationSettings22SettingsViewController____lazy_storage___healthStore);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC24OxygenSaturationSettings22SettingsViewController____lazy_storage___healthStore);
  }

  else
  {
    v4 = [objc_allocWithZone(HKHealthStore) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_17B0()
{
  v1 = OBJC_IVAR____TtC24OxygenSaturationSettings22SettingsViewController____lazy_storage___featureAvailabilityStore;
  v2 = *(v0 + OBJC_IVAR____TtC24OxygenSaturationSettings22SettingsViewController____lazy_storage___featureAvailabilityStore);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC24OxygenSaturationSettings22SettingsViewController____lazy_storage___featureAvailabilityStore);
  }

  else
  {
    v4 = HKFeatureIdentifierOxygenSaturationRecording;
    v5 = sub_173C();
    v6 = [objc_allocWithZone(HKFeatureAvailabilityStore) initWithFeatureIdentifier:v4 healthStore:v5];

    v7 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

BOOL sub_1848()
{
  ObjectType = swift_getObjectType();
  v2 = sub_17B0();
  v24 = 0;
  v3 = [v2 onboardedCountryCodeSupportedStateWithError:&v24];

  if (v3)
  {
    v4 = v24;
    v5 = [v3 integerValue];
    if (v5 != &dword_0 + 1)
    {
      v13 = v5;

      return v13 == &dword_4;
    }

    v6 = *(v0 + OBJC_IVAR____TtC24OxygenSaturationSettings22SettingsViewController____lazy_storage___featureAvailabilityStore);
    v24 = 0;
    v7 = [v6 onboardingEligibilityForCountryCode:0 error:&v24];
    if (v7)
    {
      v8 = v7;
      v9 = v24;
      v10 = [v8 ineligibilityReasons];

      return (v10 >> 6) & 1;
    }

    v14 = v24;
    sub_5A50();

    swift_willThrow();
  }

  else
  {
    v12 = v24;
    sub_5A50();

    swift_willThrow();
  }

  v15 = sub_5C40();
  if (qword_C940 != -1)
  {
    swift_once();
  }

  v16 = qword_CC78;
  sub_5080(0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_6A10;
  v24 = ObjectType;
  swift_getMetatypeMetadata();
  v18 = sub_5BA0();
  v20 = v19;
  *(v17 + 56) = &type metadata for String;
  v21 = sub_512C();
  *(v17 + 64) = v21;
  *(v17 + 32) = v18;
  *(v17 + 40) = v20;
  swift_getErrorValue();
  v22 = sub_5CE0();
  *(v17 + 96) = &type metadata for String;
  *(v17 + 104) = v21;
  *(v17 + 72) = v22;
  *(v17 + 80) = v23;
  sub_5B30(v15, &dword_0, v16, "[%{public}@] Couldn't get onboardedCountryCodeSupportedState with error: %{public}@", 83, 2, v17);

  return 0;
}

id sub_1B9C()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0 name:UIApplicationWillEnterForegroundNotification object:0];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for SettingsViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_1DD4()
{
  v1 = *&v0[OBJC_IVAR____TtC24OxygenSaturationSettings22SettingsViewController_onboardingManager];
  if ([v1 onboardingShouldAppear] && (objc_msgSend(v1, "bloodOxygenRemoteDisabled") & 1) == 0)
  {
    if (*&v0[OBJC_IVAR____TtC24OxygenSaturationSettings22SettingsViewController_startingController])
    {
      v2 = [v0 tabBarController];
      if (v2)
      {
        v3 = OBJC_IVAR____TtC24OxygenSaturationSettings22SettingsViewController_tabBarHidden;
        v4 = v2;
        [v2 hideBarWithTransition:0];

        v0[v3] = 1;
      }
    }

    else
    {
      v5 = [objc_opt_self() onboardingViewControllerWithStyle:1 settings:*&v0[OBJC_IVAR____TtC24OxygenSaturationSettings22SettingsViewController_settings] onboardingManager:v1 onboardingDelegate:v0];
      sub_251C(v5);
    }
  }

  else
  {
    sub_4B04();

    sub_47D8();
  }
}

id sub_1F6C(int a1)
{
  v2 = v1;
  v21 = a1;
  sub_5264(0);
  __chkstk_darwin();
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_5AD0();
  __chkstk_darwin();
  v5 = sub_5A60();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = (&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_5B50();
  __chkstk_darwin();
  v9 = sub_5A70();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SettingsViewController();
  v22.receiver = v1;
  v22.super_class = v13;
  objc_msgSendSuper2(&v22, "viewWillAppear:", v21 & 1);
  sub_5B40();
  *v8 = sub_59AC(0, &qword_CB68, HKRPOxygenSaturationSession_ptr);
  (*(v6 + 104))(v8, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v5);
  sub_5AC0();
  sub_5A80();
  sub_5AA0();
  v14 = sub_5AB0();
  v15 = *(v14 - 8);
  result = (*(v15 + 48))(v4, 1, v14);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_5B10();
    sub_5B00();
    (*(v10 + 8))(v12, v9);
    (*(v15 + 8))(v4, v14);
    sub_1DD4();
    v17 = *&v1[OBJC_IVAR____TtC24OxygenSaturationSettings22SettingsViewController_settings];
    v18 = [v17 bloodOxygenLocalizedPaneTitle];
    if (!v18)
    {
      sub_5B80();
      v18 = sub_5B60();
    }

    [v2 setTitle:v18];

    sub_59AC(0, &unk_CB70, OS_dispatch_queue_ptr);
    v19 = sub_5C50();
    [v17 addObserver:v2 queue:v19];

    return [v2 reloadSpecifiers];
  }

  return result;
}

id sub_2414(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v8.receiver = v2;
  v8.super_class = type metadata accessor for SettingsViewController();
  objc_msgSendSuper2(&v8, "viewWillDisappear:", v3 & 1);
  v4 = OBJC_IVAR____TtC24OxygenSaturationSettings22SettingsViewController_tabBarHidden;
  if (v2[OBJC_IVAR____TtC24OxygenSaturationSettings22SettingsViewController_tabBarHidden] == 1)
  {
    v5 = [v2 tabBarController];
    if (v5)
    {
      v6 = v5;
      [v5 showBarWithTransition:3];

      v2[v4] = 0;
    }
  }

  return [*&v2[OBJC_IVAR____TtC24OxygenSaturationSettings22SettingsViewController_settings] removeObserver:v2];
}

void sub_251C(void *a1)
{
  v3 = OBJC_IVAR____TtC24OxygenSaturationSettings22SettingsViewController_tabBarHidden;
  if ((v1[OBJC_IVAR____TtC24OxygenSaturationSettings22SettingsViewController_tabBarHidden] & 1) == 0)
  {
    v4 = [v1 tabBarController];
    if (v4)
    {
      v5 = v4;
      [v4 hideBarWithTransition:7];

      v1[v3] = 1;
    }
  }

  [v1 addChildViewController:a1];
  v6 = [v1 view];
  if (!v6)
  {
    __break(1u);
    goto LABEL_10;
  }

  v7 = v6;
  v8 = [a1 view];
  if (!v8)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v9 = v8;
  [v7 addSubview:v8];

  [a1 didMoveToParentViewController:v1];
  v11 = *&v1[OBJC_IVAR____TtC24OxygenSaturationSettings22SettingsViewController_startingController];
  *&v1[OBJC_IVAR____TtC24OxygenSaturationSettings22SettingsViewController_startingController] = a1;
  v10 = a1;
}

void sub_264C(char a1)
{
  sub_5AD0();
  __chkstk_darwin();
  sub_5B50();
  __chkstk_darwin();
  v2 = objc_opt_self();
  v3 = sub_5B60();
  v4 = [v2 groupSpecifierWithID:v3];

  if (v4)
  {
    sub_5B20();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v6 = NSStringFromClass(ObjCClassFromMetadata);
    if (!v6)
    {
      sub_5B80();
      v6 = sub_5B60();
    }

    [v4 setProperty:v6 forKey:PSHeaderCellClassGroupKey];

    type metadata accessor for OxygenSaturationSettings();
    v7 = swift_getObjCClassFromMetadata();
    v8 = objc_opt_self();
    v9 = [v8 bundleForClass:v7];
    v10 = sub_5B60();
    v11 = [objc_opt_self() imageNamed:v10 inBundle:v9];

    [v4 setProperty:v11 forKey:PSIconImageKey];
    v12 = v30;
    v13 = *(v30 + OBJC_IVAR____TtC24OxygenSaturationSettings22SettingsViewController_settings);
    v14 = [v13 bloodOxygenSectionTitle];
    if (!v14)
    {
      sub_5B80();
      v14 = sub_5B60();
      v12 = v30;
    }

    [v4 setProperty:v14 forKey:PSTitleKey];

    sub_5B40();
    v15 = [v8 bundleForClass:v7];
    sub_5AC0();
    sub_5B90();
    v16 = sub_5B60();

    v17 = PSStaticHeaderTextKey;
    [v4 setProperty:v16 forKey:PSStaticHeaderTextKey];

    if (![*(v12 + OBJC_IVAR____TtC24OxygenSaturationSettings22SettingsViewController_onboardingManager) ageIsAppropriate])
    {
      v20 = sub_5B60();
      v21 = HKRPLocalizedString();

      sub_5B80();
      sub_5080(0);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_6A20;
      v23 = kHKOxygenSaturationRecordingAgeGatingAge;
      *(v22 + 56) = &type metadata for Int;
      *(v22 + 64) = &protocol witness table for Int;
      *(v22 + 32) = v23;
      v24 = sub_5B70();
      v26 = v25;

      v27 = [v13 backgroundRecordingsWithAgeGatingEnabledHeader];
      sub_5B80();

      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_6A20;
      *(v28 + 56) = &type metadata for String;
      *(v28 + 64) = sub_512C();
      *(v28 + 32) = v24;
      *(v28 + 40) = v26;
      sub_5B70();

LABEL_15:
      v19 = sub_5B60();

      goto LABEL_16;
    }

    if (*(v12 + OBJC_IVAR____TtC24OxygenSaturationSettings22SettingsViewController_isRegionSupported) & 1) != 0 || (a1)
    {
      v29 = [v13 backgroundRecordingsHeader];
      if (!v29)
      {
LABEL_14:
        sub_5B80();
        goto LABEL_15;
      }

      v19 = v29;
    }

    else
    {
      v18 = sub_5B60();
      v19 = HKRPLocalizedString();

      if (!v19)
      {
        goto LABEL_14;
      }
    }

LABEL_16:
    [v4 setProperty:v19 forKey:v17];

    return;
  }

  __break(1u);
}

void sub_2BD0()
{
  v1 = v0;
  v2 = sub_1848();
  v3 = [objc_opt_self() standardSettings];
  sub_264C(v2);
  v5 = v4;
  sub_5BB0();
  if (*(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_5BD0();
  }

  sub_5BE0();
  if (![*&v0[OBJC_IVAR____TtC24OxygenSaturationSettings22SettingsViewController_onboardingManager] settingsShouldAppear])
  {
    goto LABEL_60;
  }

  if (v0[OBJC_IVAR____TtC24OxygenSaturationSettings22SettingsViewController_isRegionSupported])
  {
    if (!v2)
    {
      v6 = sub_5B60();
      v7 = HKRPLocalizedString();

      v8 = sub_5B80();
      v10 = v9;

      v11 = [*&v1[OBJC_IVAR____TtC24OxygenSaturationSettings22SettingsViewController_settings] aboutBloodOxygenFooterWithLearnMore];
      goto LABEL_9;
    }
  }

  else if (!v2)
  {
LABEL_60:
    sub_3BE8(&_swiftEmptyArrayStorage);
    isa = sub_5BC0().super.isa;

    [v1 setSpecifiers:isa];

    sub_3BE8(&_swiftEmptyArrayStorage);

    return;
  }

  v12 = sub_5B60();
  v13 = HKRPLocalizedString();

  v8 = sub_5B80();
  v10 = v14;

  v15 = sub_5B60();
  v11 = HKRPLocalizedString();

LABEL_9:
  sub_5B80();

  sub_5080(0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_6A20;
  *(v16 + 56) = &type metadata for String;
  *(v16 + 64) = sub_512C();
  *(v16 + 32) = v8;
  *(v16 + 40) = v10;

  sub_5B70();

  v17 = sub_5B60();

  v18 = sub_5B60();
  v19 = [v17 rangeOfString:v18];
  v21 = v20;

  v90.location = v19;
  v90.length = v21;
  v22 = NSStringFromRange(v90);
  if (!v22)
  {
    sub_5B80();
    v22 = sub_5B60();
  }

  v23 = objc_opt_self();
  v24 = sub_5B60();
  v25 = [v23 groupSpecifierWithID:v24];

  if (!v25)
  {

    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  sub_59AC(0, &qword_CB38, PSFooterHyperlinkView_ptr);
  aClass = swift_getObjCClassFromMetadata();
  v26 = NSStringFromClass(aClass);
  if (!v26)
  {
    sub_5B80();
    v26 = sub_5B60();
  }

  v80 = PSFooterCellClassGroupKey;
  [v25 setProperty:v26 forKey:?];

  v79 = PSFooterHyperlinkViewTitleKey;
  [v25 setProperty:v17 forKey:?];
  v84 = PSFooterHyperlinkViewLinkRangeKey;
  [v25 setProperty:v22 forKey:?];

  v27 = objc_opt_self();
  v28 = v1;
  v83 = v27;
  v29 = [v27 valueWithNonretainedObject:v28];
  v82 = PSFooterHyperlinkViewTargetKey;
  [v25 setProperty:v29 forKey:?];

  v30 = NSStringFromSelector("openArticle");
  if (!v30)
  {
    sub_5B80();
    v30 = sub_5B60();
  }

  v81 = PSFooterHyperlinkViewActionKey;
  [v25 setProperty:v30 forKey:?];

  v31 = [v3 bloodOxygenRecordingsTitle];
  if (!v31)
  {
    sub_5B80();
    v31 = sub_5B60();
  }

  v88 = v23;
  v89 = v17;
  v32 = [v23 preferenceSpecifierNamed:v31 target:v28 set:"setWithRecordingsEnabledValue:specifier:" get:"recordingsEnabledValueWithSpecifier:" detail:0 cell:6 edit:0];

  if (!v32)
  {
    goto LABEL_62;
  }

  v33 = sub_5C00().super.super.isa;
  v86 = PSAllowMultilineTitleKey;
  [v32 setProperty:v33 forKey:?];

  v34 = sub_5C00().super.super.isa;
  v87 = PSEnabledKey;
  [v32 setProperty:v34 forKey:?];

  sub_595C(0, &qword_CB40, &type metadata for Swift.AnyObject + 8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_6A30;
  *(inited + 32) = v25;
  *(inited + 40) = v32;
  v36 = v25;
  v37 = v32;
  sub_3AF8(inited);
  if (![v3 backgroundRecordingsEnabled] || v2)
  {

    v38 = v89;
LABEL_59:

    goto LABEL_60;
  }

  v76 = v36;
  v39 = sub_5B60();
  v40 = [v88 groupSpecifierWithID:v39];

  if (!v40)
  {
    goto LABEL_63;
  }

  range_8 = v37;
  v41 = sub_5B60();
  v42 = HKRPLocalizedString();

  if (!v42)
  {
    sub_5B80();
    v42 = sub_5B60();
  }

  v43 = [v3 backgroundRecordingsDetailOptionsFooter];
  v44 = v43;
  v45 = v43;
  v77 = v43;
  if (!v43)
  {
    sub_5B80();
    v77 = sub_5B60();

    sub_5B80();
    v45 = sub_5B60();

    sub_5B80();
    v44 = sub_5B60();
  }

  v46 = objc_allocWithZone(NSString);
  v47 = v43;
  v48 = [v46 initWithString:v44];

  range = [v48 localizedStandardRangeOfString:v42];
  v50 = v49;

  v51 = [v3 backgroundRecordingsDetailOptionsTitle];
  if (!v51)
  {
    sub_5B80();
    v51 = sub_5B60();
  }

  [v40 setName:v51];

  if (v50 < 1)
  {

    [v40 setProperty:v45 forKey:PSFooterTextGroupKey];
  }

  else
  {

    v52 = NSStringFromClass(aClass);
    if (!v52)
    {
      sub_5B80();
      v52 = sub_5B60();
    }

    [v40 setProperty:v52 forKey:v80];

    [v40 setProperty:v77 forKey:v79];
    v91.location = range;
    v91.length = v50;
    v53 = NSStringFromRange(v91);
    if (!v53)
    {
      sub_5B80();
      v53 = sub_5B60();
    }

    [v40 setProperty:v53 forKey:v84];

    v54 = [v83 valueWithNonretainedObject:v28];
    [v40 setProperty:v54 forKey:v82];

    v45 = NSStringFromSelector("openPasscodeSettings");
    if (!v45)
    {
      sub_5B80();
      v45 = sub_5B60();
    }

    [v40 setProperty:v45 forKey:v81];
  }

  v55 = v40;
  sub_5BB0();
  if (*(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_5BD0();
  }

  sub_5BE0();
  v85 = v55;
  if ([objc_opt_self() isWristDetectEnabled])
  {
    v56 = [v3 backgroundRecordingsDetailSleepTitle];
    if (!v56)
    {
      sub_5B80();
      v56 = sub_5B60();
    }

    v57 = [v88 preferenceSpecifierNamed:v56 target:v28 set:"setWithDuringSleepEnabledValue:specifier:" get:"backgroundRecordingsDuringSleepValueWithSpecifier:" detail:0 cell:6 edit:0];

    if (v57)
    {
      sub_59AC(0, &qword_CB30, NSNumber_ptr);
      v58 = sub_5C60(1).super.super.isa;
      [v57 setProperty:v58 forKey:v87];

      v59 = sub_5C00().super.super.isa;
      [v57 setProperty:v59 forKey:v86];

      v60 = v57;
      sub_5BB0();
      if (*(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_5BD0();
      }

      sub_5BE0();
      v61 = [v3 backgroundRecordingsDetailTheaterTitle];
      if (!v61)
      {
        sub_5B80();
        v61 = sub_5B60();
      }

      v62 = [v88 preferenceSpecifierNamed:v61 target:v28 set:"setWithDuringTheaterModeValue:specifier:" get:"backgroundRecordingsDuringTheaterModeWithSpecifier:" detail:0 cell:6 edit:0];

      if (v62)
      {

        v63 = sub_5C60(1).super.super.isa;
        [v62 setProperty:v63 forKey:v87];

        v64 = sub_5C00().super.super.isa;
        [v62 setProperty:v64 forKey:v86];

        v37 = v62;
        sub_5BB0();
        if (*(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_5BD0();
        }

LABEL_58:
        sub_5BE0();

        v36 = v89;
        v28 = range_8;
        v38 = v76;
        goto LABEL_59;
      }

      goto LABEL_66;
    }

    goto LABEL_64;
  }

  v65 = [v3 backgroundRecordingsDetailSleepTitle];
  sub_5B80();

  v66 = sub_5B60();
  v67 = [v88 preferenceSpecifierNamed:v66 target:v28 set:0 get:"backgroundRecordingDisabledTextWithSpecifier:" detail:0 cell:4 edit:0];

  if (!v67)
  {
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  sub_59AC(0, &qword_CB30, NSNumber_ptr);
  v68 = sub_5C60(0).super.super.isa;
  [v67 setProperty:v68 forKey:v87];

  v37 = v67;
  sub_5BB0();
  if (*(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_5BD0();
  }

  sub_5BE0();
  v69 = [v3 backgroundRecordingsDetailTheaterTitle];
  sub_5B80();

  v70 = sub_5B60();
  v71 = [v88 preferenceSpecifierNamed:v70 target:v28 set:0 get:"backgroundRecordingDisabledTextWithSpecifier:" detail:0 cell:4 edit:0];

  if (v71)
  {
    v72 = sub_5C60(0).super.super.isa;
    [v71 setProperty:v72 forKey:v87];

    v60 = v71;
    sub_5BB0();
    if (*(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_5BD0();
    }

    goto LABEL_58;
  }

LABEL_67:
  __break(1u);
}

uint64_t sub_3AF8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_5CC0();
  }

  else
  {
    v3 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  if (!(*v1 >> 62))
  {
    v4 = *(&dword_10 + (*v1 & 0xFFFFFFFFFFFFFF8));
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_5CC0();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_5318(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_54F0(v8 + 8 * *(&dword_10 + v8) + 32, (*(&dword_18 + v8) >> 1) - *(&dword_10 + v8), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

char *sub_3BE8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_5CC0();
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
  result = sub_53B8(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        sub_5C80();
        sub_59AC(0, &qword_CB48, PSSpecifier_ptr);
        swift_dynamicCast();
        v13 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          sub_53B8((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        v3[2] = v7 + 1;
        sub_594C(v12, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_59AC(0, &qword_CB48, PSSpecifier_ptr);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = v3[2];
        v10 = v3[3];
        if (v11 >= v10 >> 1)
        {
          sub_53B8((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        v3[2] = v11 + 1;
        sub_594C(v12, &v3[4 * v11 + 4]);
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

void sub_3EFC(char *a1, uint64_t a2, void *a3, uint64_t a4, SEL *a5)
{
  a3;
  a1;
  sub_5C10();
  __break(1u);
}

Class sub_3FA4(char *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v5 = *&a1[OBJC_IVAR____TtC24OxygenSaturationSettings22SettingsViewController_settings];
  v6 = a1;
  [v5 *a4];
  v7.super.super.isa = sub_5C00().super.super.isa;

  return v7.super.super.isa;
}

uint64_t sub_413C()
{
  sub_5264(0);
  __chkstk_darwin();
  v2 = &v14 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_5AB0();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1848())
  {
    v7 = sub_5B60();
    v8 = HKRPLocalizedString();
  }

  else
  {
    v8 = [*(v0 + OBJC_IVAR____TtC24OxygenSaturationSettings22SettingsViewController_settings) learnMoreAboutBloodOxygenURL];
  }

  sub_5B80();

  sub_5AA0();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {

    return sub_52BC(v2);
  }

  else
  {
    result = (*(v4 + 32))(v6, v2, v3);
    if (UIApp)
    {
      v10 = UIApp;

      sub_5A90(v11);
      v13 = v12;
      [v10 openURL:v12 withCompletionHandler:0];

      return (*(v4 + 8))(v6, v3);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_43C4(char a1)
{
  if (a1)
  {
    v1[OBJC_IVAR____TtC24OxygenSaturationSettings22SettingsViewController_isRegionSupported] = 1;
    [v1 reloadSpecifiers];
    v2 = *&v1[OBJC_IVAR____TtC24OxygenSaturationSettings22SettingsViewController_startingController];
    if (v2)
    {
      v3 = [v2 view];
      if (v3)
      {
        v4 = v3;
        v5 = objc_opt_self();
        v6 = swift_allocObject();
        *(v6 + 16) = v4;
        v16 = sub_5214;
        v17 = v6;
        v12 = _NSConcreteStackBlock;
        v13 = 1107296256;
        v14 = sub_45B8;
        v15 = &unk_85C0;
        v7 = _Block_copy(&v12);
        v8 = v4;

        v9 = swift_allocObject();
        *(v9 + 16) = v1;
        v16 = sub_5240;
        v17 = v9;
        v12 = _NSConcreteStackBlock;
        v13 = 1107296256;
        v14 = sub_45FC;
        v15 = &unk_8610;
        v10 = _Block_copy(&v12);
        v11 = v1;

        _Block_release(v10);
        _Block_release(v7);
      }
    }
  }
}

double sub_45B8(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);

  return result;
}

double sub_45FC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);

  return result;
}

id sub_47D8()
{
  v1 = OBJC_IVAR____TtC24OxygenSaturationSettings22SettingsViewController_tabBarHidden;
  if (v0[OBJC_IVAR____TtC24OxygenSaturationSettings22SettingsViewController_tabBarHidden] == 1)
  {
    v2 = [v0 tabBarController];
    if (v2)
    {
      v3 = v2;
      [v2 showBarWithTransition:3];

      v0[v1] = 0;
    }
  }

  v4 = OBJC_IVAR____TtC24OxygenSaturationSettings22SettingsViewController_startingController;
  v5 = *&v0[OBJC_IVAR____TtC24OxygenSaturationSettings22SettingsViewController_startingController];
  if (v5)
  {
    [v5 willMoveToParentViewController:0];
    v5 = *&v0[v4];
    if (v5)
    {
      result = [v5 view];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v7 = result;
      [result removeFromSuperview];

      v5 = *&v0[v4];
    }
  }

  [v5 removeFromParentViewController];
  v8 = *&v0[v4];
  *&v0[v4] = 0;

  return [v0 reloadSpecifiers];
}

void sub_4B04()
{
  v1 = sub_17B0();
  ObjectType = 0;
  v2 = [v1 onboardedCountryCodeSupportedStateWithError:&ObjectType];

  if (!v2)
  {
    v11 = ObjectType;
    sub_5A50();

    swift_willThrow();
    v12 = sub_5C30();
    if (qword_C940 != -1)
    {
      swift_once();
    }

    v13 = qword_CC78;
    sub_5080(0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_6A10;
    ObjectType = swift_getObjectType();
    sub_50E8();
    v15 = sub_5BA0();
    v17 = v16;
    *(v14 + 56) = &type metadata for String;
    v18 = sub_512C();
    *(v14 + 64) = v18;
    *(v14 + 32) = v15;
    *(v14 + 40) = v17;
    ObjectType = 0;
    v41 = 0xE000000000000000;
    sub_5180(0, &qword_CB20, &protocol descriptor for Error);
    sub_5CA0();
    v19 = ObjectType;
    v20 = v41;
    *(v14 + 96) = &type metadata for String;
    *(v14 + 104) = v18;
    *(v14 + 72) = v19;
    *(v14 + 80) = v20;
    sub_5B30(v12, &dword_0, v13, "[%{public}@] Couldn't get Region supported. error: %@", 53, 2, v14);

    goto LABEL_26;
  }

  v3 = ObjectType;
  v4 = [v2 integerValue];
  if (v4 > 2)
  {
    if (v4 == (&dword_0 + 3))
    {
LABEL_25:

LABEL_26:
      v21 = 0;
      goto LABEL_27;
    }

    if (v4 == &dword_4)
    {
      v22 = sub_5C40();
      if (qword_C940 != -1)
      {
        swift_once();
      }

      v23 = qword_CC78;
      sub_5080(0);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_6A20;
      ObjectType = swift_getObjectType();
      sub_50E8();
      v25 = sub_5BA0();
      v27 = v26;
      *(v24 + 56) = &type metadata for String;
      *(v24 + 64) = sub_512C();
      *(v24 + 32) = v25;
      *(v24 + 40) = v27;
      sub_5B30(v22, &dword_0, v23, "[%{public}@] Couldn't get Region supported. Remote Disabled", 59, 2, v24);
      goto LABEL_24;
    }

    if (v4 == (&dword_4 + 1))
    {
      v5 = sub_5C40();
      if (qword_C940 != -1)
      {
        swift_once();
      }

      v6 = qword_CC78;
      sub_5080(0);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_6A20;
      ObjectType = swift_getObjectType();
      sub_50E8();
      v8 = sub_5BA0();
      v10 = v9;
      *(v7 + 56) = &type metadata for String;
      *(v7 + 64) = sub_512C();
      *(v7 + 32) = v8;
      *(v7 + 40) = v10;
      sub_5B30(v5, &dword_0, v6, "[%{public}@] Couldn't get Region supported. Seed Expired", 56, 2, v7);
LABEL_24:

      goto LABEL_25;
    }

LABEL_21:
    v34 = sub_5C30();
    if (qword_C940 != -1)
    {
      swift_once();
    }

    v35 = qword_CC78;
    sub_5080(0);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_6A20;
    ObjectType = swift_getObjectType();
    sub_50E8();
    v37 = sub_5BA0();
    v39 = v38;
    *(v36 + 56) = &type metadata for String;
    *(v36 + 64) = sub_512C();
    *(v36 + 32) = v37;
    *(v36 + 40) = v39;
    sub_5B30(v34, &dword_0, v35, "[%{public}@] Couldn't get Region supported. Unknown state value", 63, 2, v36);
    goto LABEL_24;
  }

  if (v4 == (&dword_0 + 1))
  {
    v28 = sub_5C40();
    if (qword_C940 != -1)
    {
      swift_once();
    }

    v29 = qword_CC78;
    sub_5080(0);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_6A20;
    ObjectType = swift_getObjectType();
    sub_50E8();
    v31 = sub_5BA0();
    v33 = v32;
    *(v30 + 56) = &type metadata for String;
    *(v30 + 64) = sub_512C();
    *(v30 + 32) = v31;
    *(v30 + 40) = v33;
    sub_5B30(v28, &dword_0, v29, "[%{public}@] Couldn't get Region supported. Not Onboarded", 57, 2, v30);
    goto LABEL_24;
  }

  if (v4 != (&dword_0 + 2))
  {
    goto LABEL_21;
  }

  v21 = 1;
LABEL_27:
  *(v0 + OBJC_IVAR____TtC24OxygenSaturationSettings22SettingsViewController_isRegionSupported) = v21;
}

void sub_5080(uint64_t a1)
{
  if (!qword_CB00)
  {
    sub_5180(255, &qword_CB08, &protocol descriptor for CVarArg);
    v1 = sub_5CD0();
    if (!v2)
    {
      atomic_store(v1, &qword_CB00);
    }
  }
}

unint64_t sub_50E8()
{
  result = qword_CB10;
  if (!qword_CB10)
  {
    type metadata accessor for SettingsViewController();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_CB10);
  }

  return result;
}

unint64_t sub_512C()
{
  result = qword_CB18;
  if (!qword_CB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_CB18);
  }

  return result;
}

uint64_t sub_5180(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_51DC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_5228(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_5264(uint64_t a1)
{
  if (!qword_CB28)
  {
    sub_5AB0();
    v1 = sub_5C70();
    if (!v2)
    {
      atomic_store(v1, &qword_CB28);
    }
  }
}

uint64_t sub_52BC(uint64_t a1)
{
  sub_5264(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_5318(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *(&dword_18 + (v4 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_5CC0();
LABEL_9:
  result = sub_5C90();
  *v2 = result;
  return result;
}

char *sub_53B8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_53D8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_53D8(char *result, int64_t a2, char a3, char *a4)
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
    sub_595C(0, &qword_CB60, &type metadata for Any + 8);
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

uint64_t sub_54F0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_5CC0();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_5CC0();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_588C(0);
          sub_58F4();
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_566C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a2)
      {
        sub_59AC(0, &qword_CB48, PSSpecifier_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_566C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_5C80();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_56EC;
  }

  __break(1u);
  return result;
}

id sub_56F4(uint64_t a1, uint64_t a2)
{

  v3 = OBJC_IVAR____TtC24OxygenSaturationSettings22SettingsViewController_startingController;
  *&v2[OBJC_IVAR____TtC24OxygenSaturationSettings22SettingsViewController_startingController] = 0;
  v2[OBJC_IVAR____TtC24OxygenSaturationSettings22SettingsViewController_tabBarHidden] = 0;
  *&v2[OBJC_IVAR____TtC24OxygenSaturationSettings22SettingsViewController____lazy_storage___healthStore] = 0;
  *&v2[OBJC_IVAR____TtC24OxygenSaturationSettings22SettingsViewController____lazy_storage___featureAvailabilityStore] = 0;
  v2[OBJC_IVAR____TtC24OxygenSaturationSettings22SettingsViewController_isRegionSupported] = 0;
  v4 = [objc_opt_self() standardSettings];
  *&v2[OBJC_IVAR____TtC24OxygenSaturationSettings22SettingsViewController_settings] = v4;
  v5 = [objc_allocWithZone(HKRPOxygenSaturationOnboardingManager) init];
  *&v2[OBJC_IVAR____TtC24OxygenSaturationSettings22SettingsViewController_onboardingManager] = v5;
  v6 = *&v2[v3];
  *&v2[v3] = 0;

  v8.receiver = v2;
  v8.super_class = type metadata accessor for SettingsViewController();
  return objc_msgSendSuper2(&v8, "initWithNibName:bundle:", 0, 0);
}

id sub_57D8(uint64_t a1)
{
  result = sub_5C10();
  __break(1u);
  __break(1u);
  return result;
}

void sub_588C(uint64_t a1)
{
  if (!qword_CB50)
  {
    sub_59AC(255, &qword_CB48, PSSpecifier_ptr);
    v1 = sub_5BF0();
    if (!v2)
    {
      atomic_store(v1, &qword_CB50);
    }
  }
}

unint64_t sub_58F4()
{
  result = qword_CB58;
  if (!qword_CB58)
  {
    sub_588C(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_CB58);
  }

  return result;
}

_OWORD *sub_594C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_595C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_5CD0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_59AC(uint64_t a1, unint64_t *a2, void *a3)
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

id sub_5A00()
{
  _HKInitializeLogging();
  result = HKLogRespiratoryCategory();
  qword_CC78 = result;
  return result;
}