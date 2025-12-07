void sub_10028088C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v91 = a3;
  v90 = a2;
  ObjectType = swift_getObjectType();
  v6 = sub_100796CF4();
  v100 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v94 = &v79 - v10;
  v95 = sub_1007A21D4();
  v11 = *(v95 - 8);
  __chkstk_darwin(v95);
  v96 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v79 - v14;
  v16 = [objc_opt_self() alertControllerWithTitle:0 message:0 preferredStyle:0];
  [v16 setOverrideUserInterfaceStyle:2];
  v99 = v16;
  v17 = [v16 view];
  if (v17)
  {
    v18 = v17;
    v97 = v8;
    v98 = v11;
    [v17 setTranslatesAutoresizingMaskIntoConstraints:0];

    v19 = _UISolariumEnabled();
    v20 = &selRef_assetReviewForAssetID_completion_;
    v88 = v4;
    v79 = a1;
    v92 = v6;
    if (v19)
    {
      v21 = sub_10069D3B8(UIFontTextStyleTitle3, UIContentSizeCategoryAccessibilityExtraExtraExtraLarge);
      sub_1001F1160(&qword_100AD8398, &qword_100815580);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10080EFF0;
      *(inited + 32) = NSFontAttributeName;
      *(inited + 40) = v21;
      *(inited + 48) = NSForegroundColorAttributeName;
      v23 = objc_opt_self();
      v93 = v15;
      v24 = v23;
      v25 = NSFontAttributeName;
      v87 = v21;
      v26 = NSForegroundColorAttributeName;
      v27 = v100;
      v28 = v94;
      v29 = v95;
      *(inited + 56) = [v24 bc_booksLabelColor];
      v30 = sub_1001ED840(inited);
      swift_setDeallocating();
      sub_1001F1160(&unk_100AD83A0, &qword_100815588);
      swift_arrayDestroy();
      sub_1007A2154();
      sub_100796C94();
      v31 = v98;
      v32 = v96;
      (*(v98 + 16))(v96, v93, v29);
      type metadata accessor for BundleFinder();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v34 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
      v35 = v97;
      v36 = v92;
      (*(v27 + 16))(v97, v28, v92);
      sub_1007A22D4(v32, 0, 0, v34, v35, "Custom Sleep Timer", 18, 2);
      (*(v27 + 8))(v28, v36);
      (*(v31 + 8))(v93, v29);
      sub_100580C34(v30);

      v37 = objc_allocWithZone(NSAttributedString);
      v38 = sub_1007A2214();

      type metadata accessor for Key(0);
      sub_100282B6C();
      isa = sub_1007A2024().super.isa;
      v15 = v93;

      v40 = [v37 initWithString:v38 attributes:isa];

      v41 = &selRef_hasTooManyAuthors;
      v20 = &selRef_assetReviewForAssetID_completion_;
      v42 = v99;
      [v99 _setAttributedTitle:v40];
    }

    else
    {
      type metadata accessor for AudiobookSleepTimerCustomHeaderViewController();
      v41 = &selRef_hasTooManyAuthors;
      v43 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      v42 = v99;
      [v99 _setHeaderContentViewController:v43];

      v31 = v98;
      v32 = v96;
    }

    type metadata accessor for AudiobookSleepTimerCustomDateViewController();
    v44 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) v41[200]];
    [v42 setContentViewController:v44];
    sub_1007A2154();
    v45 = v94;
    sub_100796C94();
    v46 = v31;
    v47 = *(v31 + 16);
    v86 = v31 + 16;
    v87 = v47;
    v48 = v95;
    (v47)(v32, v15, v95);
    type metadata accessor for BundleFinder();
    v49 = swift_getObjCClassFromMetadata();
    v85 = v49;
    v84 = objc_opt_self();
    v50 = [v84 v20[381]];
    v51 = v100;
    v82 = *(v100 + 16);
    v83 = v100 + 16;
    v52 = v97;
    v53 = v92;
    v82(v97, v45, v92);
    sub_1007A22D4(v32, 0, 0, v50, v52, "Done", 4, 2);
    v54 = v15;
    v55 = *(v51 + 8);
    v100 = v51 + 8;
    v81 = v55;
    v55(v45, v53);
    v56 = *(v46 + 8);
    v98 = v46 + 8;
    v80 = v56;
    v56(v15, v48);
    v57 = swift_allocObject();
    v58 = v90;
    v57[2] = v44;
    v57[3] = v58;
    v59 = v53;
    v60 = ObjectType;
    v57[4] = v91;
    v57[5] = v60;
    v93 = v44;

    v61 = sub_1007A2214();

    aBlock[4] = sub_100282B60;
    aBlock[5] = v57;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100201C54;
    aBlock[3] = &unk_100A11EC0;
    v62 = _Block_copy(aBlock);

    v63 = objc_opt_self();
    v64 = [v63 actionWithTitle:v61 style:0 handler:v62];
    _Block_release(v62);

    v65 = objc_opt_self();
    v66 = [v65 bc_booksLabelColor];
    [v64 _setTitleTextColor:v66];

    [v99 addAction:v64];
    sub_1007A2154();
    sub_100796C94();
    v67 = v96;
    v68 = v48;
    (v87)(v96, v54, v48);
    v69 = [v84 bundleForClass:v85];
    v70 = v97;
    v82(v97, v45, v59);
    sub_1007A22D4(v67, 0, 0, v69, v70, "Cancel", 6, 2);
    v81(v45, v59);
    v80(v54, v68);
    v71 = sub_1007A2214();

    v72 = [v63 actionWithTitle:v71 style:1 handler:0];

    if ((_UISolariumEnabled() & 1) == 0)
    {
      v73 = [v65 bc_booksLabelColor];
      [v72 _setTitleTextColor:v73];
    }

    v74 = v99;
    [v99 addAction:{v72, v79}];
    v75 = [v74 popoverPresentationController];

    v76 = v88;
    if (v75)
    {
      v77 = v79;
      [v75 setSourceView:v79];
      [v77 bounds];
      [v75 setSourceRect:{v78 * 0.5, 0.0, 1.0, 1.0}];
      [v75 setPermittedArrowDirections:3];
    }

    [v76 presentViewController:v74 animated:1 completion:0];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1002813B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  [*(a2 + OBJC_IVAR____TtC5Books43AudiobookSleepTimerCustomDateViewController_datePicker) countDownDuration];
  v5 = v4;
  if (qword_100AD1350 != -1)
  {
    swift_once();
  }

  v6 = sub_10079ACE4();
  sub_100008B98(v6, qword_100AD7F90);
  v7 = sub_10079ACC4();
  v8 = sub_1007A29D4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    *(v9 + 4) = lround(v5 / 60.0);
    _os_log_impl(&_mh_execute_header, v7, v8, "Setting custom sleep timer %ld minutes", v9, 0xCu);
  }

  v10 = [objc_opt_self() defaultTimer];
  [v10 setFixedTimerWithDuration:v5];

  return a3();
}

void sub_100281524(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (qword_100AD1350 != -1)
    {
      swift_once();
    }

    v6 = sub_10079ACE4();
    sub_100008B98(v6, qword_100AD7F90);
    v7 = sub_10079ACC4();
    v8 = sub_1007A29D4();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 134217984;
      *(v9 + 4) = a3;
      _os_log_impl(&_mh_execute_header, v7, v8, "Setting sleep timer, option numeric index %ld", v9, 0xCu);
    }

    [*&v5[OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_eventHandler] setSleepTimerOption:a3];
    sub_10027A3E4(a3);
  }
}

void *sub_100281674(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = sub_100274880();
    v5 = *&v4[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_sleepButton];

    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_10028088C(v5, sub_100282B0C, v6);
  }

  return result;
}

void sub_10028174C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_10027A3E4(8);
  }
}

void sub_1002817AC(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(&v3);

  *a2 = v3;
}

uint64_t sub_10028182C(char *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_10079B9B4();
}

void sub_10028189C(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(&v3);

  *a2 = v3;
}

uint64_t sub_10028191C(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;
  v5 = v3;
  return sub_10079B9B4();
}

double sub_1002819F4@<D0>(double *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(&v6);

  result = v6;
  *a4 = v6;
  return result;
}

uint64_t sub_100281A84(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = v6;
  return sub_10079B9B4();
}

void sub_100281AF8(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(&v4);

  v3 = v5;
  *a2 = v4;
  *(a2 + 8) = v3;
}

uint64_t sub_100281B80(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_10079B9B4();
}

void sub_100281C00()
{
  *(v0 + OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController____lazy_storage___nowPlayingView) = 0;
  v1 = v0 + OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_buyButtonProvider;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  *(v0 + OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_buyButtonViewController) = 0;
  *(v0 + OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_datePicker) = 0;
  *(v0 + OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_hudAppearanceTime) = 0;
  *(v0 + OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_hudDisappearTimer) = 0;
  v2 = (v0 + OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_hudText);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_scrubberImpactBehavior) = 0;
  *(v0 + OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_settingPositionViaScrubber) = 0;
  *(v0 + OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_settingPositionViaPlayer) = 0;
  *(v0 + OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_settingVolumeViaSlider) = 0;
  *(v0 + OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_skipCumulativeDelta) = 0;
  *(v0 + OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_wasPlaying) = 0;
  v3 = OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_supportedSkipAmounts;
  *(v0 + v3) = sub_1001F1048(&off_100A0C3D8);
  *(v0 + OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_downloadState) = 3;
  *(v0 + OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_cancellables) = &_swiftEmptySetSingleton;
  *(v0 + OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_attributionView) = 0;
  v4 = (v0 + OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController____lazy_storage___languageSuffix);
  *v4 = 0;
  v4[1] = 0;
  v5 = (v0 + OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_lastAccessibilityAnnouncedScrubbingPosition);
  *v5 = 0;
  v5[1] = 0;
  v6 = (v0 + OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_lastAccessibilityAnnouncedScrubbingSpeed);
  *v6 = 0;
  v6[1] = 0;
  sub_1007A38A4();
  __break(1u);
}

uint64_t sub_100281D84(void *a1)
{
  ObjectType = swift_getObjectType();
  v9 = &off_100A0F178;
  v7[0] = a1;
  v2 = *(*sub_10000E3E8(v7, ObjectType) + OBJC_IVAR____TtC5Books18BuyButtonPresenter_style);
  v3 = objc_opt_self();
  v4 = a1;

  v5 = [v3 bc_nowPlayingVibrantQuaternary];
  v2[4] = sub_10079DEA4();

  v2[6] = sub_10079DDC4();

  v2[28] = _s5Books11ChromeStyleC20_pageBackgroundColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();

  return sub_1000074E0(v7);
}

void sub_100281E68(void *a1)
{
  v2 = v1;
  v4 = [v1 presentedViewController];
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    *(v7 + 24) = a1;
    v15 = sub_100282808;
    v16 = v7;
    v11 = _NSConcreteStackBlock;
    v12 = 1107296256;
    v13 = sub_1003323D0;
    v14 = &unk_100A11998;
    v8 = _Block_copy(&v11);
    v9 = a1;

    [v5 dismissViewControllerAnimated:1 completion:v8];
    _Block_release(v8);
  }

  else
  {
    v15 = BKAppDelegate.enableMetricsInspectorOnDebugMode();
    v16 = 0;
    v11 = _NSConcreteStackBlock;
    v12 = 1107296256;
    v13 = sub_1003323D0;
    v14 = &unk_100A11920;
    v10 = _Block_copy(&v11);
    [v2 presentViewController:a1 animated:1 completion:v10];
    _Block_release(v10);
  }
}

void sub_10028201C()
{
  v1 = v0;
  if (qword_100AD1350 != -1)
  {
    swift_once();
  }

  v2 = sub_10079ACE4();
  sub_100008B98(v2, qword_100AD7F90);
  v3 = sub_10079ACC4();
  v4 = sub_1007A29D4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "openTOC()", v5, 2u);
  }

  v6 = [objc_allocWithZone(UINavigationController) initWithRootViewController:*(v1 + OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_tocVC)];
  [v6 setModalPresentationStyle:1];
  [v6 setOverrideUserInterfaceStyle:2];
  sub_100281E68(v6);
}

void sub_100282170()
{
  v1 = v0;
  if (qword_100AD1350 != -1)
  {
    swift_once();
  }

  v2 = sub_10079ACE4();
  sub_100008B98(v2, qword_100AD7F90);
  v3 = sub_10079ACC4();
  v4 = sub_1007A29D4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "openNarrationSpeedPicker()", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_eventHandler);
  swift_unknownObjectRetain();
  v7 = sub_100274880();
  v8 = *&v7[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_playbackSpeed];

  v9 = objc_allocWithZone(type metadata accessor for NarrationSpeedPopoverController(0));
  v10 = sub_1003E52F4(v6, v8);
  sub_100281E68(v10);
}

void sub_1002822D0(float a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(v18);

  v5 = fabs(v18[0]);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(v18);

  v6 = v5 + v18[0];
  if (v6 > 0.0)
  {
    if (v6 * a1 >= v6 + -0.4)
    {
      v7 = v6 + -0.4;
    }

    else
    {
      v7 = v6 * a1;
    }

    if (qword_100AD1350 != -1)
    {
      swift_once();
    }

    v8 = sub_10079ACE4();
    sub_100008B98(v8, qword_100AD7F90);
    v9 = sub_10079ACC4();
    v10 = sub_1007A29D4();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 134217984;
      *(v11 + 4) = v7;
      _os_log_impl(&_mh_execute_header, v9, v10, "Audiobook setting chapter progress time: %f", v11, 0xCu);
    }

    v13 = *&v2[OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_eventHandler];
    v14 = swift_allocObject();
    *(v14 + 16) = v2;
    *(v14 + 24) = ObjectType;
    *&v18[4] = sub_1002827F8;
    *&v18[5] = v14;
    *&v18[0] = _NSConcreteStackBlock;
    *&v18[1] = 1107296256;
    *&v18[2] = sub_10021B6B0;
    *&v18[3] = &unk_100A118F8;
    v15 = _Block_copy(v18);
    v16 = v2;

    v12 = v7 / v6;
    *&v17 = v12;
    [v13 scrubTo:v15 completion:v17];
    _Block_release(v15);
  }
}

void sub_100282570()
{
  v1 = sub_100274880();
  v2 = *&v1[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_hudTrack];

  [v2 alpha];
  v4 = v3;

  if (v4 != 0.0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10079B9A4(&v5);

    *(v0 + OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_hudAppearanceTime) = v5;
    sub_10027F494(0.0);
  }
}

void _s5Books48AudiobookNowPlayingFullscreenTouchViewControllerC11endTrackingyySo14IMCustomSliderCF_0()
{
  [*(v0 + OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_eventHandler) setIsScrubbing:0];
  sub_10027EBF0();
  v1 = sub_100274880();
  v2 = *&v1[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_progressSlider];

  [v2 setSpeed:0];
  v3 = OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_scrubberImpactBehavior;
  v4 = *(v0 + OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_scrubberImpactBehavior);
  if (v4)
  {
    [v4 deactivate];
    v5 = *(v0 + v3);
  }

  else
  {
    v5 = 0;
  }

  *(v0 + v3) = 0;

  if (qword_100AD1350 != -1)
  {
    swift_once();
  }

  v6 = sub_10079ACE4();
  sub_100008B98(v6, qword_100AD7F90);
  oslog = sub_10079ACC4();
  v7 = sub_1007A29D4();
  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v7, "end scrubbing", v8, 2u);
  }
}

uint64_t sub_100282930()
{

  return swift_deallocObject();
}

uint64_t sub_100282A38(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AD4FA0, &qword_10081F020);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100282B14(uint64_t a1)
{

  return swift_deallocObject();
}

unint64_t sub_100282B6C()
{
  result = qword_100AEDDB0;
  if (!qword_100AEDDB0)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEDDB0);
  }

  return result;
}

unint64_t sub_100282BC4()
{
  result = qword_100ADF150;
  if (!qword_100ADF150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADF150);
  }

  return result;
}

id sub_100282C94()
{
  result = [objc_opt_self() effectWithStyle:10];
  qword_100B22F78 = result;
  return result;
}

char *sub_100282CD4(void *a1)
{
  *&v1[OBJC_IVAR____TtC5Books20PaletteContainerView_defaultHeight] = 0x4050000000000000;
  v3 = &v1[OBJC_IVAR____TtC5Books20PaletteContainerView_contentInsets];
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  *v3 = UIEdgeInsetsZero.top;
  v3[1] = left;
  v3[2] = bottom;
  v3[3] = right;
  v7 = &v1[OBJC_IVAR____TtC5Books20PaletteContainerView_separatorConfiguration];
  *v7 = 4;
  *(v7 + 1) = *&UIEdgeInsetsZero.top;
  *(v7 + 2) = left;
  *(v7 + 3) = bottom;
  *(v7 + 4) = right;
  v8 = OBJC_IVAR____TtC5Books20PaletteContainerView_containerView;
  type metadata accessor for PaletteContainerView.ContainerView();
  *&v1[v8] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v1[OBJC_IVAR____TtC5Books20PaletteContainerView____lazy_storage___separator] = 0;
  v9 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:a1];
  *&v1[OBJC_IVAR____TtC5Books20PaletteContainerView_backgroundView] = v9;
  v17.receiver = v1;
  v17.super_class = type metadata accessor for PaletteContainerView();
  v10 = objc_msgSendSuper2(&v17, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v10 setClipsToBounds:1];
  v11 = OBJC_IVAR____TtC5Books20PaletteContainerView_backgroundView;
  v12 = [*&v10[OBJC_IVAR____TtC5Books20PaletteContainerView_backgroundView] contentView];
  v13 = OBJC_IVAR____TtC5Books20PaletteContainerView_containerView;
  [v12 addSubview:*&v10[OBJC_IVAR____TtC5Books20PaletteContainerView_containerView]];

  v14 = *&v10[v11];
  [v10 addSubview:v14];

  v15 = *&v10[v13];
  swift_unknownObjectWeakAssign();

  return v10;
}

void (*sub_100282EB4(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + OBJC_IVAR____TtC5Books20PaletteContainerView_backgroundView);
  a1[2] = v3;
  v4 = [v3 _groupName];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1007A2254();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a1 = v6;
  a1[1] = v8;
  return sub_100282F44;
}

void sub_100282F44(uint64_t *a1, char a2)
{
  v3 = a1[1];
  if (a2)
  {
    if (v3)
    {

      v4 = sub_1007A2214();
    }

    else
    {
      v4 = 0;
    }

    [a1[2] _setGroupName:v4];
  }

  else if (v3)
  {
    v4 = sub_1007A2214();

    [a1[2] _setGroupName:v4];
  }

  else
  {
    v4 = 0;
    [a1[2] _setGroupName:0];
  }
}

id sub_100283018(float64x2_t a1, float64_t a2, float64x2_t a3, float64_t a4)
{
  v5 = &v4[OBJC_IVAR____TtC5Books20PaletteContainerView_contentInsets];
  v6 = *&v4[OBJC_IVAR____TtC5Books20PaletteContainerView_contentInsets];
  v7 = *&v4[OBJC_IVAR____TtC5Books20PaletteContainerView_contentInsets + 16];
  *v5 = a1.f64[0];
  v5[1] = a2;
  v5[2] = a3.f64[0];
  v5[3] = a4;
  a1.f64[1] = a2;
  a3.f64[1] = a4;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v6, a1), vceqq_f64(v7, a3)))) & 1) == 0)
  {
    return [v4 setNeedsLayout];
  }

  return result;
}

void (*sub_100283068(uint64_t *a1))(id **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC5Books20PaletteContainerView_contentInsets;
  *(v3 + 32) = v1;
  *(v3 + 40) = v4;
  v5 = (v1 + v4);
  v6 = v5[1];
  *v3 = *v5;
  *(v3 + 16) = v6;
  return sub_1002830E0;
}

void sub_1002830E0(id **a1)
{
  v1 = *a1;
  v2 = ((*a1)[5] + (*a1)[4]);
  v4 = **a1;
  v3 = *(*a1 + 1);
  v5 = *v2;
  v6 = v2[1];
  *v2 = v4;
  v2[1] = v3;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v4, v5), vceqq_f64(v3, v6)))) & 1) == 0)
  {
    [v1[4] setNeedsLayout];
  }

  free(v1);
}

BOOL sub_100283154(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_100284084(v5, v7);
}

void sub_1002831A0(double *a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5)
{
  v6 = v5[OBJC_IVAR____TtC5Books20PaletteContainerView_separatorConfiguration];
  v8 = *&v5[OBJC_IVAR____TtC5Books20PaletteContainerView_separatorConfiguration + 8];
  v7 = *&v5[OBJC_IVAR____TtC5Books20PaletteContainerView_separatorConfiguration + 16];
  v9 = *&v5[OBJC_IVAR____TtC5Books20PaletteContainerView_separatorConfiguration + 24];
  v10 = *&v5[OBJC_IVAR____TtC5Books20PaletteContainerView_separatorConfiguration + 32];
  v11 = *a1;
  if (v6 == 4)
  {
    if (v11 != 4)
    {
      goto LABEL_14;
    }
  }

  else if (v6 != v11)
  {
    goto LABEL_17;
  }

  if (v8 == a1[1])
  {
    v8 = a1[4];
    v12 = v7 == a1[2] && v9 == a1[3];
    if (v12 && v10 == v8)
    {
      return;
    }
  }

  if (v6 == 4)
  {
LABEL_14:
    v14 = sub_10028372C();
    [v14 removeFromSuperview];

    return;
  }

LABEL_17:

  [v5 setNeedsLayout];
}

void sub_100283370(uint64_t a1)
{
  v45.receiver = v1;
  v45.super_class = type metadata accessor for PaletteContainerView();
  objc_msgSendSuper2(&v45, "layoutSubviews");
  v2 = *&v1[OBJC_IVAR____TtC5Books20PaletteContainerView_backgroundView];
  [v1 bounds];
  [v2 setFrame:?];
  v3 = *&v1[OBJC_IVAR____TtC5Books20PaletteContainerView_containerView];
  v4 = [v2 contentView];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [v3 setFrame:{sub_1002840F0(v6, v8, v10, v12, *&v1[OBJC_IVAR____TtC5Books20PaletteContainerView_contentInsets], *&v1[OBJC_IVAR____TtC5Books20PaletteContainerView_contentInsets + 8])}];
  v13 = &v1[OBJC_IVAR____TtC5Books20PaletteContainerView_separatorConfiguration];
  v14 = v1[OBJC_IVAR____TtC5Books20PaletteContainerView_separatorConfiguration];
  if (v14 == 4)
  {
    return;
  }

  v15 = [v2 contentView];
  [v15 bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v24 = [v1 traitCollection];
  [v24 displayScale];
  v26 = v25;

  Width = 1.0 / v26;
  v28 = v17;
  v29 = v19;
  v30 = v21;
  v31 = v23;
  if (v14 <= 1)
  {
    if (v14)
    {
      Height = CGRectGetHeight(*&v28);
      v33 = v17;
    }

    else
    {
      Height = Width;
      v33 = v17;
      Width = CGRectGetWidth(*&v28);
    }

    goto LABEL_9;
  }

  if (v14 != 2)
  {
    v33 = CGRectGetMaxX(*&v28) - Width;
    v47.origin.x = v17;
    v47.origin.y = v19;
    v47.size.width = v21;
    v47.size.height = v23;
    Height = CGRectGetHeight(v47);
LABEL_9:
    v34 = v19;
    goto LABEL_10;
  }

  v34 = CGRectGetMaxY(*&v28) - Width;
  v46.origin.x = v17;
  v46.origin.y = v19;
  v46.size.width = v21;
  v46.size.height = v23;
  Height = Width;
  v33 = v17;
  Width = CGRectGetWidth(v46);
LABEL_10:
  v35 = sub_10028372C();
  v36 = sub_1002840F0(v33, v34, Width, Height, v13[1], v13[2]);
  v38 = v37;
  v40 = v39;
  v42 = v41;
  if ([v1 effectiveUserInterfaceLayoutDirection] == 1)
  {
    v48.origin.x = v17;
    v48.origin.y = v19;
    v48.size.width = v21;
    v48.size.height = v23;
    MaxX = CGRectGetMaxX(v48);
    v49.origin.x = v36;
    v49.origin.y = v38;
    v49.size.width = v40;
    v49.size.height = v42;
    v44 = MaxX - CGRectGetMinX(v49);
    v50.origin.x = v36;
    v50.origin.y = v38;
    v50.size.width = v40;
    v50.size.height = v42;
    v36 = v44 - CGRectGetWidth(v50);
  }

  [v35 setFrame:{v36, v38, v40, v42}];
}

CGFloat CGRect.applyingLayoutDirection(_:inBounds:)(uint64_t a1, double a2, double a3, double a4, double a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  if (a1 == 1)
  {
    MaxX = CGRectGetMaxX(*&a2);
    v16.origin.x = a6;
    v16.origin.y = a7;
    v16.size.width = a8;
    v16.size.height = a9;
    v14 = MaxX - CGRectGetMinX(v16);
    v17.origin.x = a6;
    v17.origin.y = a7;
    v17.size.width = a8;
    v17.size.height = a9;
    return v14 - CGRectGetWidth(v17);
  }

  return a6;
}

id sub_10028372C()
{
  v1 = OBJC_IVAR____TtC5Books20PaletteContainerView____lazy_storage___separator;
  v2 = *(v0 + OBJC_IVAR____TtC5Books20PaletteContainerView____lazy_storage___separator);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Books20PaletteContainerView____lazy_storage___separator);
  }

  else
  {
    v4 = sub_100283790(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_100283790(uint64_t a1)
{
  if (qword_100AD1358 != -1)
  {
    swift_once();
  }

  v2 = [objc_opt_self() effectForBlurEffect:qword_100B22F78 style:7];
  v3 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v2];
  v4 = objc_allocWithZone(UIColor);
  v11[4] = sub_100283984;
  v11[5] = 0;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_10038D350;
  v11[3] = &unk_100A11FD8;
  v5 = _Block_copy(v11);
  v6 = v3;
  v7 = [v4 initWithDynamicProvider:v5];
  _Block_release(v5);

  [v6 setBackgroundColor:v7];

  v8 = sub_1007A2214();
  [v6 _setGroupName:v8];

  v9 = [*(a1 + OBJC_IVAR____TtC5Books20PaletteContainerView_backgroundView) contentView];
  [v9 addSubview:v6];

  return v6;
}

id sub_100283984(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  v2 = objc_opt_self();
  if (v1 == 2)
  {
    v3 = [v2 whiteColor];
    v4 = [v3 colorWithAlphaComponent:0.3];

    return v4;
  }

  else
  {
    v6 = [v2 _barHairlineShadowColor];

    return v6;
  }
}

id sub_100283C38(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t (*sub_100283CF8(uint64_t **a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_100283068(v2);
  return sub_100283D68;
}

uint64_t sub_100283D6C()
{
  v1 = [*(v0 + OBJC_IVAR____TtC5Books20PaletteContainerView_backgroundView) _groupName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1007A2254();

  return v3;
}

void sub_100283DDC(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC5Books20PaletteContainerView_backgroundView);
  if (a2)
  {
    v4 = sub_1007A2214();
  }

  else
  {
    v4 = 0;
  }

  [v3 _setGroupName:v4];
}

uint64_t (*sub_100283E54(uint64_t **a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_100282EB4(v2);
  return sub_100284398;
}

void sub_100283EC4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

id sub_100283F0C(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC5Books20PaletteContainerView_containerView);
  [v3 bounds];
  [a1 setFrame:?];
  [a1 setAutoresizingMask:18];

  return [v3 addSubview:a1];
}

uint64_t sub_100283FD4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && a1[40])
  {
    return (*a1 + 252);
  }

  v3 = *a1;
  if (v3 <= 4)
  {
    v4 = 4;
  }

  else
  {
    v4 = *a1;
  }

  v5 = v4 - 5;
  if (v3 < 4)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t sub_100284028(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

BOOL sub_100284084(double *a1, double *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 4)
  {
    if (v3 != 4)
    {
      return 0;
    }
  }

  else if (v2 != v3)
  {
    return 0;
  }

  if (a1[1] != a2[1])
  {
    return 0;
  }

  v4 = a1[2] == a2[2] && a1[3] == a2[3];
  return v4 && a1[4] == a2[4];
}

void sub_10028410C()
{
  *(v0 + OBJC_IVAR____TtC5Books20PaletteContainerView_defaultHeight) = 0x4050000000000000;
  v1 = (v0 + OBJC_IVAR____TtC5Books20PaletteContainerView_contentInsets);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  *v1 = UIEdgeInsetsZero.top;
  v1[1] = left;
  v1[2] = bottom;
  v1[3] = right;
  v5 = v0 + OBJC_IVAR____TtC5Books20PaletteContainerView_separatorConfiguration;
  *v5 = 4;
  *(v5 + 8) = UIEdgeInsetsZero.top;
  *(v5 + 16) = left;
  *(v5 + 24) = bottom;
  *(v5 + 32) = right;
  v6 = OBJC_IVAR____TtC5Books20PaletteContainerView_containerView;
  type metadata accessor for PaletteContainerView.ContainerView();
  *(v0 + v6) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR____TtC5Books20PaletteContainerView____lazy_storage___separator) = 0;
  sub_1007A38A4();
  __break(1u);
}

uint64_t getEnumTagSinglePayload for PaletteContainerView.SeparatorConfiguration.Position(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PaletteContainerView.SeparatorConfiguration.Position(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100284344()
{
  result = qword_100AD84A8;
  if (!qword_100AD84A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD84A8);
  }

  return result;
}

uint64_t sub_10028439C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1002843E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10028446C()
{
  v1 = sub_10079C824();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v0 + 8);
  v5 = *v0;
  v11 = *v0;
  v6 = v12;

  if ((v6 & 1) == 0)
  {
    v7 = sub_1007A29C4();
    v8 = sub_10079D244();
    sub_10079AB44(v7, &_mh_execute_header, v8, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    sub_10079C814();
    swift_getAtKeyPath();
    sub_100007840(&v11, &qword_100AD8538, &qword_10083FC00);
    (*(v2 + 8))(v4, v1);
    return v10[1];
  }

  return v5;
}

uint64_t sub_1002845C8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v40 = a1;
  v41 = sub_10079D074();
  v39 = *(v41 - 8);
  __chkstk_darwin(v41);
  v38 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10079CDF4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1001F1160(&qword_100AD84B0, &qword_100815AF8);
  __chkstk_darwin(v8);
  v10 = &v34 - v9;
  v34 = sub_1001F1160(&qword_100AD84B8, &qword_100815B00);
  __chkstk_darwin(v34);
  v12 = &v34 - v11;
  v13 = sub_1001F1160(&qword_100AD84C0, &qword_100815B08);
  v35 = *(v13 - 8);
  v36 = v13;
  __chkstk_darwin(v13);
  v15 = &v34 - v14;
  *v10 = sub_10079C8F4();
  *(v10 + 1) = 0;
  v10[16] = 0;
  v16 = &v10[*(sub_1001F1160(&qword_100AD84C8, &qword_100815B10) + 44)];
  v37 = v2;
  sub_100284BCC(v2, v16);
  sub_10079CDE4();
  sub_100005920(&qword_100AD84D0, &qword_100AD84B0, &qword_100815AF8, &protocol conformance descriptor for HStack<A>);
  sub_100285940();
  sub_10079D6A4();
  (*(v5 + 8))(v7, v4);
  sub_100007840(v10, &qword_100AD84B0, &qword_100815AF8);
  v17 = &v12[*(sub_1001F1160(&qword_100AD84D8, &qword_100815B18) + 36)];
  v18 = enum case for RoundedCornerStyle.continuous(_:);
  v19 = sub_10079C9E4();
  v20 = *(*(v19 - 8) + 104);
  v20(v17, v18, v19);
  *&v17[*(sub_1001F1160(&unk_100AE42C0, &qword_100815B20) + 36)] = 256;
  v21 = &v12[*(sub_1001F1160(&qword_100AD84E0, &qword_100815B28) + 36)];
  v20(v21, v18, v19);
  v21[*(sub_1001F1160(&qword_100AD84E8, &qword_100815B30) + 36)] = 0;
  if (qword_100AD17D0 != -1)
  {
    swift_once();
  }

  sub_10079E474();
  sub_10079BE54();
  v22 = &v12[*(sub_1001F1160(&qword_100AD84F0, &qword_100815B38) + 36)];
  v23 = v47;
  *v22 = v46;
  *(v22 + 1) = v23;
  *(v22 + 2) = v48;
  v24 = v34;
  v25 = &v12[*(v34 + 36)];
  sub_1001F1160(&qword_100AD84F8, &qword_100815B40);
  sub_10079C444();
  v26 = v37;
  v27 = sub_10028446C();
  *v25 = v27;
  v25[8] = 0;
  __chkstk_darwin(v27);
  *(&v34 - 2) = v26;
  v28 = sub_1001F1160(&qword_100AE4700, &qword_100815B48);
  v29 = sub_1002859A0();
  v30 = sub_100005920(&qword_100AD8530, &qword_100AE4700, &qword_100815B48, &protocol conformance descriptor for Button<A>);
  sub_10079D6C4();
  sub_10002E340(v12);
  v31 = v38;
  sub_10079D064();
  v42 = v24;
  v43 = v28;
  v44 = v29;
  v45 = v30;
  swift_getOpaqueTypeConformance2();
  v32 = v36;
  sub_10079D9A4();
  (*(v39 + 8))(v31, v41);
  return (*(v35 + 8))(v15, v32);
}

uint64_t sub_100284BCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v124 = a2;
  v108 = sub_1001F1160(&qword_100AD8540, &qword_100815B60) - 8;
  __chkstk_darwin(v108);
  v100 = &v97 - v3;
  v115 = sub_1001F1160(&qword_100AD8548, &qword_100815B68);
  __chkstk_darwin(v115);
  v123 = &v97 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v114 = &v97 - v6;
  __chkstk_darwin(v7);
  v129 = &v97 - v8;
  v128 = sub_100796CF4();
  v9 = *(v128 - 8);
  __chkstk_darwin(v128);
  v127 = &v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v97 - v12;
  v126 = sub_1007A21D4();
  v14 = *(v126 - 8);
  __chkstk_darwin(v126);
  v16 = &v97 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v97 - v18;
  v125 = sub_1001F1160(&qword_100AD8550, &qword_100815B70);
  __chkstk_darwin(v125);
  v121 = &v97 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v122 = &v97 - v22;
  __chkstk_darwin(v23);
  v25 = &v97 - v24;
  __chkstk_darwin(v26);
  v130 = &v97 - v27;
  v28 = a1;
  v98 = a1;
  LOBYTE(a1) = *(a1 + 48);
  v29 = *(v28 + 64);
  v30 = *(v28 + 72);
  KeyPath = swift_getKeyPath();
  *&v133 = KeyPath;
  BYTE8(v133) = 0;
  v134 = 0xD000000000000017;
  v135 = 0x80000001008C79C0;
  v136 = a1;
  v137 = v29;
  v138 = v30;
  v113 = v30;

  sub_1007A2154();
  sub_100796C94();
  v31 = *(v14 + 16);
  v32 = v126;
  v112 = v14 + 16;
  v111 = v31;
  v31(v16, v19, v126);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v107 = objc_opt_self();
  v110 = ObjCClassFromMetadata;
  v34 = [v107 bundleForClass:ObjCClassFromMetadata];
  v35 = *(v9 + 16);
  v36 = v127;
  v37 = v128;
  v106 = v9 + 16;
  v105 = v35;
  v35(v127, v13, v128);
  v116 = v16;
  v38 = sub_1007A22D4(v16, 0, 0, v34, v36, "Accessibility string for a 'reduce text size' button.", 53, 2);
  v40 = v39;
  v41 = *(v9 + 8);
  v119 = v13;
  v120 = v9 + 8;
  v104 = v41;
  v41(v13, v37);
  v42 = *(v14 + 8);
  v99 = v19;
  v43 = v98;
  v118 = v14 + 8;
  v103 = v42;
  v42(v19, v32);
  v44 = v100;
  *&v139 = v38;
  *(&v139 + 1) = v40;
  v45 = sub_100285CEC();
  v46 = sub_100206ECC();
  v109 = v45;
  sub_10079D8E4();

  v142 = *(v43 + 32);
  v133 = *(v43 + 32);
  v47 = *(v43 + 96);
  v48 = *(v43 + 104);

  v102 = v47;
  v101 = v48;
  v113 = v46;
  sub_10079C204();
  KeyPath = v25;
  sub_100007840(v25, &qword_100AD8550, &qword_100815B70);
  v49 = *(sub_10079C3D4() + 20);
  v50 = enum case for RoundedCornerStyle.circular(_:);
  v51 = sub_10079C9E4();
  (*(*(v51 - 8) + 104))(&v44[v49], v50, v51);
  __asm { FMOV            V0.2D, #1.0 }

  *v44 = _Q0;
  sub_10079E474();
  sub_10079BE54();
  v57 = &v44[*(sub_1001F1160(&qword_100AD8560, &qword_100815BA0) + 36)];
  v58 = v140;
  *v57 = v139;
  *(v57 + 1) = v58;
  *(v57 + 2) = v141;
  v59 = *(v43 + 56);
  v60 = swift_getKeyPath();
  v61 = &v44[*(v108 + 44)];
  *v61 = v60;
  v61[1] = v59;
  sub_1001F1160(&qword_100AE17F0, &qword_100822890);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10080EFF0;

  LOBYTE(v45) = sub_10079D2A4();
  *(inited + 32) = v45;
  v63 = sub_10079D2B4();
  *(inited + 33) = v63;
  v64 = sub_10079D2D4();
  sub_10079D2D4();
  if (sub_10079D2D4() != v45)
  {
    v64 = sub_10079D2D4();
  }

  sub_10079D2D4();
  if (sub_10079D2D4() != v63)
  {
    v64 = sub_10079D2D4();
  }

  sub_10079BBA4();
  v66 = v65;
  v68 = v67;
  v70 = v69;
  v72 = v71;
  v73 = v44;
  v74 = v114;
  sub_10020B3C8(v73, v114, &qword_100AD8540, &qword_100815B60);
  v75 = v74 + *(v115 + 36);
  *v75 = v64;
  *(v75 + 8) = v66;
  *(v75 + 16) = v68;
  *(v75 + 24) = v70;
  *(v75 + 32) = v72;
  *(v75 + 40) = 0;
  v76 = v129;
  sub_10020B3C8(v74, v129, &qword_100AD8548, &qword_100815B68);
  v77 = *(v43 + 49);
  v79 = *(v43 + 80);
  v78 = *(v43 + 88);
  *&v133 = swift_getKeyPath();
  BYTE8(v133) = 0;
  v134 = 0xD000000000000016;
  v135 = 0x80000001008C7A40;
  v136 = v77;
  v137 = v79;
  v138 = v78;

  v80 = v99;
  sub_1007A2154();
  v81 = v119;
  sub_100796C94();
  v82 = v116;
  v83 = v126;
  v111(v116, v80, v126);
  v84 = [v107 bundleForClass:v110];
  v85 = v127;
  v86 = v128;
  v105(v127, v81, v128);
  v87 = sub_1007A22D4(v82, 0, 0, v84, v85, "Accessibility string for an 'increase text size' button.", 56, 2);
  v89 = v88;
  v104(v81, v86);
  v103(v80, v83);
  v131 = v87;
  v132 = v89;
  v90 = v122;
  sub_10079D8E4();

  v133 = v142;
  v91 = KeyPath;
  sub_10079C204();
  sub_1002308AC(&v142);
  sub_100007840(v90, &qword_100AD8550, &qword_100815B70);
  sub_1000077D8(v130, v90, &qword_100AD8550, &qword_100815B70);
  v92 = v123;
  sub_1000077D8(v76, v123, &qword_100AD8548, &qword_100815B68);
  v93 = v121;
  sub_1000077D8(v91, v121, &qword_100AD8550, &qword_100815B70);
  v94 = v124;
  sub_1000077D8(v90, v124, &qword_100AD8550, &qword_100815B70);
  v95 = sub_1001F1160(&qword_100AD8568, &unk_100815BE0);
  sub_1000077D8(v92, v94 + *(v95 + 48), &qword_100AD8548, &qword_100815B68);
  sub_1000077D8(v93, v94 + *(v95 + 64), &qword_100AD8550, &qword_100815B70);
  sub_100007840(v91, &qword_100AD8550, &qword_100815B70);
  sub_100007840(v129, &qword_100AD8548, &qword_100815B68);
  sub_100007840(v130, &qword_100AD8550, &qword_100815B70);
  sub_100007840(v93, &qword_100AD8550, &qword_100815B70);
  sub_100007840(v92, &qword_100AD8548, &qword_100815B68);
  return sub_100007840(v90, &qword_100AD8550, &qword_100815B70);
}

uint64_t sub_1002857BC(uint64_t a1)
{

  sub_1001F1160(&qword_100AD1D70, &unk_100815B50);
  sub_100005920(&qword_100ADBBB0, &qword_100AD1D70, &unk_100815B50, &protocol conformance descriptor for Label<A, B>);
  return sub_10079E054();
}

uint64_t sub_10028587C(uint64_t a1)
{
  sub_100206ECC();

  return sub_10079DFD4();
}

unint64_t sub_100285940()
{
  result = qword_100AD5388;
  if (!qword_100AD5388)
  {
    sub_10079CDF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD5388);
  }

  return result;
}

unint64_t sub_1002859A0()
{
  result = qword_100AD8500;
  if (!qword_100AD8500)
  {
    sub_1001F1234(&qword_100AD84B8, &qword_100815B00);
    sub_100285A58();
    sub_100005920(&qword_100AD8528, &qword_100AD84F8, &qword_100815B40, &protocol conformance descriptor for _ContentShapeKindModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD8500);
  }

  return result;
}

unint64_t sub_100285A58()
{
  result = qword_100AD8508;
  if (!qword_100AD8508)
  {
    sub_1001F1234(&qword_100AD84F0, &qword_100815B38);
    sub_100285AE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD8508);
  }

  return result;
}

unint64_t sub_100285AE4()
{
  result = qword_100AD8510;
  if (!qword_100AD8510)
  {
    sub_1001F1234(&qword_100AD84E0, &qword_100815B28);
    sub_100285B9C();
    sub_100005920(&qword_100AD8520, &qword_100AD84E8, &qword_100815B30, &protocol conformance descriptor for _ContentShapeModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD8510);
  }

  return result;
}

unint64_t sub_100285B9C()
{
  result = qword_100AD8518;
  if (!qword_100AD8518)
  {
    sub_1001F1234(&qword_100AD84D8, &qword_100815B18);
    sub_1001F1234(&qword_100AD84B0, &qword_100815AF8);
    sub_10079CDF4();
    sub_100005920(&qword_100AD84D0, &qword_100AD84B0, &qword_100815AF8, &protocol conformance descriptor for HStack<A>);
    sub_100285940();
    swift_getOpaqueTypeConformance2();
    sub_100005920(&qword_100AD5530, &unk_100AE42C0, &qword_100815B20, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD8518);
  }

  return result;
}

unint64_t sub_100285CEC()
{
  result = qword_100AD8558;
  if (!qword_100AD8558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD8558);
  }

  return result;
}

uint64_t sub_100285DB8(uint64_t a1)
{
  result = _s5StateO21CapturingTurnSnapshotVMa(319);
  if (v2 <= 0x3F)
  {
    result = _s5StateO7TurningVMa(319);
    if (v3 <= 0x3F)
    {
      result = _s5StateO21CapturingDragSnapshotVMa(319);
      if (v4 <= 0x3F)
      {
        result = _s5StateO8DraggingVMa(319);
        if (v5 <= 0x3F)
        {
          result = _s5StateO9ResettingVMa(319);
          if (v6 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

void sub_100285F78(uint64_t a1)
{
  sub_1007A0F74();
  if (v1 <= 0x3F)
  {
    sub_10000A7C4(319, &qword_100AD7620, UIView_ptr);
    if (v2 <= 0x3F)
    {
      sub_100286048(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100286048(uint64_t a1)
{
  if (!qword_100AD8728)
  {
    sub_10000A7C4(255, &qword_100AD7620, UIView_ptr);
    v1 = sub_1007A3454();
    if (!v2)
    {
      atomic_store(v1, &qword_100AD8728);
    }
  }
}

void sub_1002860D8(uint64_t a1)
{
  sub_1007A0F74();
  if (v1 <= 0x3F)
  {
    sub_10000A7C4(319, &qword_100AD7620, UIView_ptr);
    if (v2 <= 0x3F)
    {
      sub_100286198(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100286198(uint64_t a1)
{
  if (!qword_100AD87E0)
  {
    v2 = sub_1007A0F74();
    v4 = _s5StateO12EitherOrBothOMa(a1, v2, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &qword_100AD87E0);
    }
  }
}

uint64_t sub_100286214(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = swift_getTupleTypeMetadata2();
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1002862C4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 64);
  if (v5 <= v3)
  {
    v6 = *(*(*(a3 + 16) - 8) + 64);
  }

  else
  {
    v6 = *(v4 + 64);
  }

  v7 = ((v3 + *(v4 + 80)) & ~*(v4 + 80)) + v5;
  if (v7 <= v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_29;
  }

  v9 = v8 + 1;
  v10 = 8 * (v8 + 1);
  if ((v8 + 1) <= 3)
  {
    v13 = ((a2 + ~(-1 << v10) - 253) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    if (v13 < 2)
    {
LABEL_29:
      v15 = *(a1 + v8);
      if (v15 >= 3)
      {
        return (v15 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_29;
  }

LABEL_18:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return (v9 | v14) + 254;
}

void sub_100286430(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  v6 = *(*(a4 + 24) - 8);
  v7 = *(v6 + 64);
  if (v7 <= v5)
  {
    v8 = *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v8 = *(v6 + 64);
  }

  v9 = ((v5 + *(v6 + 80)) & ~*(v6 + 80)) + v7;
  if (v9 <= v8)
  {
    v9 = v8;
  }

  v10 = v9 + 1;
  if (a3 < 0xFE)
  {
    v11 = 0;
  }

  else if (v10 <= 3)
  {
    v14 = ((a3 + ~(-1 << (8 * v10)) - 253) >> (8 * v10)) + 1;
    if (HIWORD(v14))
    {
      v11 = 4;
    }

    else
    {
      if (v14 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v14 >= 2)
      {
        v11 = v15;
      }

      else
      {
        v11 = 0;
      }
    }
  }

  else
  {
    v11 = 1;
  }

  if (a2 > 0xFD)
  {
    v12 = a2 - 254;
    if (v10 >= 4)
    {
      bzero(a1, v9 + 1);
      *a1 = v12;
      v13 = 1;
      if (v11 > 1)
      {
        goto LABEL_42;
      }

      goto LABEL_39;
    }

    v13 = (v12 >> (8 * v10)) + 1;
    if (v9 != -1)
    {
      v16 = v12 & ~(-1 << (8 * v10));
      bzero(a1, v10);
      if (v10 != 3)
      {
        if (v10 == 2)
        {
          *a1 = v16;
          if (v11 > 1)
          {
LABEL_42:
            if (v11 == 2)
            {
              *&a1[v10] = v13;
            }

            else
            {
              *&a1[v10] = v13;
            }

            return;
          }
        }

        else
        {
          *a1 = v12;
          if (v11 > 1)
          {
            goto LABEL_42;
          }
        }

LABEL_39:
        if (v11)
        {
          a1[v10] = v13;
        }

        return;
      }

      *a1 = v16;
      a1[2] = BYTE2(v16);
    }

    if (v11 > 1)
    {
      goto LABEL_42;
    }

    goto LABEL_39;
  }

  if (v11 <= 1)
  {
    if (v11)
    {
      a1[v10] = 0;
      if (!a2)
      {
        return;
      }

LABEL_28:
      a1[v9] = -a2;
      return;
    }

LABEL_27:
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (v11 == 2)
  {
    *&a1[v10] = 0;
    goto LABEL_27;
  }

  *&a1[v10] = 0;
  if (a2)
  {
    goto LABEL_28;
  }
}

void sub_100286664(uint64_t a1)
{
  sub_1007A0F74();
  if (v1 <= 0x3F)
  {
    sub_10000A7C4(319, &qword_100AD7620, UIView_ptr);
    if (v2 <= 0x3F)
    {
      sub_100286198(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100286734(uint64_t a1, uint64_t a2)
{
  v4 = _s5StateO4TurnVMa(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1002867B4(uint64_t a1, uint64_t a2)
{
  v4 = _s5StateO4TurnVMa(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100286824(uint64_t a1)
{
  result = _s5StateO4TurnVMa(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1002868A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1007A0F74();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100286974(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1007A0F74();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100286A2C(uint64_t a1)
{
  result = sub_1007A0F74();
  if (v2 <= 0x3F)
  {
    result = sub_10000A7C4(319, &qword_100AD7620, UIView_ptr);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100286AD4()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100AD8570);
  sub_100008B98(v0, qword_100AD8570);
  sub_10000A7C4(0, &qword_100AD20A0, OS_os_log_ptr);
  return sub_1007A33F4();
}

uint64_t sub_100286B58(uint64_t a1, uint64_t a2, int *a3)
{
  if ((sub_1007A0F24() & 1) == 0)
  {
    return 0;
  }

  sub_10000A7C4(0, &qword_100ADAF70, NSObject_ptr);
  if ((sub_1007A3184() & 1) == 0 || (sub_1007A03D4() & 1) == 0)
  {
    return 0;
  }

  return sub_1007A0F24();
}

uint64_t sub_100286C10@<X0>(char a1@<W0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v4 = v3;
  v8 = _s5StateO9ResettingVMa(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _s5StateOMa(0);
  __chkstk_darwin(v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = _s5StateO8DraggingVMa(0);
  __chkstk_darwin(v14 - 8);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = _s5StateO7TurningVMa(0);
  __chkstk_darwin(v17 - 8);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10028A5C8(v4, v13, _s5StateOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if ((EnumCaseMultiPayload - 1) >= 2)
    {
      v23 = _s5StateO4TurnVMa(0);
      (*(*(v23 - 8) + 56))(a2, 1, 1, v23);
      return sub_10028A568(v13, _s5StateOMa);
    }

    sub_10028A500(v13, v19, _s5StateO7TurningVMa);
    v21 = v19;
    goto LABEL_9;
  }

  if ((EnumCaseMultiPayload - 4) < 2)
  {
    sub_10028A500(v13, v16, _s5StateO8DraggingVMa);
    sub_100286F74(a1 & 1, 0, a2, a3);
    return sub_10028A568(v16, _s5StateO8DraggingVMa);
  }

  if (EnumCaseMultiPayload == 6)
  {
    sub_10028A500(v13, v10, _s5StateO9ResettingVMa);
    v21 = v10;
LABEL_9:
    sub_10028A500(v21, a2, _s5StateO4TurnVMa);
    v24 = _s5StateO4TurnVMa(0);
    return (*(*(v24 - 8) + 56))(a2, 0, 1, v24);
  }

  v25 = _s5StateO4TurnVMa(0);
  return (*(*(v25 - 8) + 56))(a2, 1, 1, v25);
}

id sub_100286F74@<X0>(char a1@<W0>, void *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v44 = a2;
  v8 = sub_1001F1160(&unk_100AEB380, &qword_100815DD0);
  __chkstk_darwin(v8 - 8);
  v10 = &v41[-v9];
  v11 = sub_1007A0F74();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v41[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v17 = &v41[-v16];
  __chkstk_darwin(v18);
  v20 = &v41[-v19];
  v21 = sub_100289CF0(a1 & 1);
  v22 = v21;
  if (v21 == 2)
  {
    v42 = v21;
    v23 = v14;
    v43 = a3;
    v24 = *(v12 + 16);
    v24(v20, v4, v11);
LABEL_10:
    v24(v17, v4, v11);
    v31 = _s5StateO8DraggingVMa(0);
    v32 = *(v4 + v31[5]);
    v24(v23, v20, v11);
    v33 = *(v4 + v31[10]);
    v34 = fabs(*(v4 + v31[9]));
    v35 = *(v12 + 8);
    v36 = v32;
    v35(v20, v11);
    v37 = *(v12 + 32);
    v38 = v43;
    v37(v43, v17, v11);
    v39 = _s5StateO4TurnVMa(0);
    *(v38 + v39[5]) = v36;
    *(v38 + v39[6]) = v42 & 1;
    v37(v38 + v39[7], v23, v11);
    *(v38 + v39[8]) = v44;
    *(v38 + v39[9]) = v33;
    *(v38 + v39[10]) = v34 / fmax(a4, 1.0);
    (*(*(v39 - 1) + 56))(v38, 0, 1, v39);
    v40 = v44;

    return v40;
  }

  sub_100289D5C(v21, v10);
  if ((*(v12 + 48))(v10, 1, v11) != 1)
  {
    v42 = v22;
    v23 = v14;
    v43 = a3;
    (*(v12 + 32))(v20, v10, v11);
    v24 = *(v12 + 16);
    goto LABEL_10;
  }

  sub_100007840(v10, &unk_100AEB380, &qword_100815DD0);
  if (qword_100AD1360 != -1)
  {
    swift_once();
  }

  v25 = sub_10079ACE4();
  sub_100008B98(v25, qword_100AD8570);
  v26 = sub_10079ACC4();
  v27 = sub_1007A29A4();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&_mh_execute_header, v26, v27, "Missing turnDestination", v28, 2u);
  }

  v29 = _s5StateO4TurnVMa(0);
  return (*(*(v29 - 8) + 56))(a3, 1, 1, v29);
}

id sub_100287408()
{
  v1 = v0;
  v2 = _s5StateO8DraggingVMa(0);
  __chkstk_darwin(v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = _s5StateO7TurningVMa(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s5StateOMa(0);
  __chkstk_darwin(v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10028A5C8(v1, v10, _s5StateOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      v16 = EnumCaseMultiPayload;
      result = 0;
      if (v16 != 6)
      {
        return result;
      }
    }

    else if (EnumCaseMultiPayload == 4)
    {
      sub_10028A500(v10, v4, _s5StateO8DraggingVMa);
      v12 = *&v4[*(v2 + 20)];
      v13 = _s5StateO8DraggingVMa;
      v14 = v4;
      goto LABEL_8;
    }
  }

  else if (EnumCaseMultiPayload <= 1 && EnumCaseMultiPayload)
  {
    sub_10028A500(v10, v7, _s5StateO7TurningVMa);
    v12 = *&v7[*(_s5StateO4TurnVMa(0) + 20)];
    v13 = _s5StateO4TurnVMa;
    v14 = v7;
LABEL_8:
    sub_10028A568(v14, v13);
    return v12;
  }

  sub_10028A568(v10, _s5StateOMa);
  return 0;
}

uint64_t sub_100287648@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = _s5StateO9ResettingVMa(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _s5StateO21CapturingDragSnapshotVMa(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _s5StateO21CapturingTurnSnapshotVMa(0);
  __chkstk_darwin(v10 - 8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _s5StateOMa(0);
  __chkstk_darwin(v13);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = _s5StateO8DraggingVMa(0);
  __chkstk_darwin(v16 - 8);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = _s5StateO7TurningVMa(0);
  __chkstk_darwin(v19 - 8);
  v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10028A5C8(v2, v15, _s5StateOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if ((EnumCaseMultiPayload - 4) < 2)
    {
      sub_10028A500(v15, v18, _s5StateO8DraggingVMa);
      v23 = sub_1007A0F74();
      v24 = *(v23 - 8);
      (*(v24 + 16))(a1, v18, v23);
      v25 = _s5StateO8DraggingVMa;
      v26 = v18;
      goto LABEL_8;
    }

    if (EnumCaseMultiPayload == 6)
    {
      sub_10028A500(v15, v6, _s5StateO9ResettingVMa);
      v28 = sub_1007A0F74();
      v29 = *(v28 - 8);
      (*(v29 + 16))(a1, v6, v28);
      sub_10028A568(v6, _s5StateO4TurnVMa);
      return (*(v29 + 56))(a1, 0, 1, v28);
    }

    else
    {
      v32 = sub_1007A0F74();
      return (*(*(v32 - 8) + 56))(a1, 1, 1, v32);
    }
  }

  else
  {
    if ((EnumCaseMultiPayload - 1) < 2)
    {
      sub_10028A500(v15, v21, _s5StateO7TurningVMa);
      v23 = sub_1007A0F74();
      v24 = *(v23 - 8);
      (*(v24 + 16))(a1, v21, v23);
      v25 = _s5StateO4TurnVMa;
      v26 = v21;
LABEL_8:
      sub_10028A568(v26, v25);
      return (*(v24 + 56))(a1, 0, 1, v23);
    }

    if (!EnumCaseMultiPayload)
    {
      sub_10028A500(v15, v12, _s5StateO21CapturingTurnSnapshotVMa);
      v23 = sub_1007A0F74();
      v24 = *(v23 - 8);
      (*(v24 + 16))(a1, v12, v23);
      v25 = _s5StateO21CapturingTurnSnapshotVMa;
      v26 = v12;
      goto LABEL_8;
    }

    sub_10028A500(v15, v9, _s5StateO21CapturingDragSnapshotVMa);
    v30 = sub_1007A0F74();
    v31 = *(v30 - 8);
    (*(v31 + 16))(a1, v9, v30);
    sub_10028A568(v9, _s5StateO21CapturingDragSnapshotVMa);
    return (*(v31 + 56))(a1, 0, 1, v30);
  }
}

uint64_t sub_100287BF8(uint64_t a1)
{
  v2 = v1;
  v4 = _s5StateOMa(0);
  __chkstk_darwin(v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001F1160(&qword_100AD8A80, &qword_1008246B0);
  __chkstk_darwin(v7 - 8);
  v9 = &v20 - v8;
  v10 = _s5StateO8DraggingVMa(0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000077D8(a1, v9, &qword_100AD8A80, &qword_1008246B0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_100007840(v9, &qword_100AD8A80, &qword_1008246B0);
    if (qword_100AD1360 != -1)
    {
      swift_once();
    }

    v14 = sub_10079ACE4();
    sub_100008B98(v14, qword_100AD8570);
    v15 = sub_10079ACC4();
    v16 = sub_1007A29B4();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
    }

    return sub_100007840(a1, &qword_100AD8A80, &qword_1008246B0);
  }

  else
  {
    sub_100007840(a1, &qword_100AD8A80, &qword_1008246B0);
    sub_10028A500(v9, v13, _s5StateO8DraggingVMa);
    sub_10028A5C8(v2, v6, _s5StateOMa);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 5 || EnumCaseMultiPayload == 4)
    {
      sub_10028A568(v2, _s5StateOMa);
      sub_10028A500(v13, v2, _s5StateO8DraggingVMa);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      sub_10028A568(v13, _s5StateO8DraggingVMa);
    }

    return sub_10028A568(v6, _s5StateOMa);
  }
}

uint64_t sub_100287FB4@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1001F1160(&qword_100AD8770, &qword_1008246E0);
  __chkstk_darwin(v4);
  v6 = &v15 - v5;
  v7 = sub_1007A0F74();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000077D8(v2, v6, &qword_100AD8770, &qword_1008246E0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v8 + 56))(a1, 1, 1, v7);
      return sub_100007840(v6, &qword_100AD8770, &qword_1008246E0);
    }

    v14 = *(sub_1001F1160(&qword_100AD8A70, &qword_100815DD8) + 48);
    v13 = *(v8 + 32);
    v13(v10, v6, v7);
    (*(v8 + 8))(&v6[v14], v7);
  }

  else
  {
    v13 = *(v8 + 32);
    v13(v10, v6, v7);
  }

  v13(a1, v10, v7);
  return (*(v8 + 56))(a1, 0, 1, v7);
}

uint64_t sub_1002881F0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = *(a1 - 8);
  __chkstk_darwin(a1);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v7 + 16);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v7);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v9 + 56))(a2, 1, 1, v8);
      return (*(v4 + 8))(v6, a1);
    }

    v16 = *(a1 + 24);
    v17 = *(swift_getTupleTypeMetadata2() + 48);
    v15 = *(v9 + 32);
    v15(v12, v6, v8);
    (*(*(v16 - 8) + 8))(&v6[v17], v16);
  }

  else
  {
    v15 = *(v9 + 32);
    v15(v12, v6, v8);
  }

  v15(a2, v12, v8);
  return (*(v9 + 56))(a2, 0, 1, v8);
}

uint64_t sub_10028845C@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1001F1160(&qword_100AD8770, &qword_1008246E0);
  __chkstk_darwin(v4);
  v6 = &v15 - v5;
  v7 = sub_1007A0F74();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000077D8(v2, v6, &qword_100AD8770, &qword_1008246E0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v12 = *(v8 + 32);
      v12(v10, v6, v7);
    }

    else
    {
      v14 = sub_1001F1160(&qword_100AD8A70, &qword_100815DD8);
      v12 = *(v8 + 32);
      v12(v10, &v6[*(v14 + 48)], v7);
      (*(v8 + 8))(v6, v7);
    }

    v12(a1, v10, v7);
    return (*(v8 + 56))(a1, 0, 1, v7);
  }

  else
  {
    (*(v8 + 56))(a1, 1, 1, v7);
    return sub_100007840(v6, &qword_100AD8770, &qword_1008246E0);
  }
}

uint64_t sub_100288698@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = *(a1 - 8);
  __chkstk_darwin(a1);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v7 + 24);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v7);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v14 = *(v9 + 32);
      v14(v12, v6, v8);
    }

    else
    {
      v16 = *(a1 + 16);
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v14 = *(v9 + 32);
      v14(v12, &v6[*(TupleTypeMetadata2 + 48)], v8);
      (*(*(v16 - 8) + 8))(v6, v16);
    }

    v14(a2, v12, v8);
    return (*(v9 + 56))(a2, 0, 1, v8);
  }

  else
  {
    (*(v9 + 56))(a2, 1, 1, v8);
    return (*(v4 + 8))(v6, a1);
  }
}

uint64_t sub_1002888FC(uint64_t a1, uint64_t a2)
{
  v58 = a1;
  v59 = a2;
  v2 = sub_1007A0F74();
  v56 = *(v2 - 8);
  v57 = v2;
  __chkstk_darwin(v2);
  v53 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v54 = &v52 - v5;
  __chkstk_darwin(v6);
  v55 = &v52 - v7;
  __chkstk_darwin(v8);
  v10 = &v52 - v9;
  __chkstk_darwin(v11);
  v13 = &v52 - v12;
  v14 = sub_1001F1160(&qword_100AD8770, &qword_1008246E0);
  __chkstk_darwin(v14);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v52 - v18;
  __chkstk_darwin(v20);
  v22 = &v52 - v21;
  v23 = sub_1001F1160(&qword_100AD8A90, &qword_100815DF8);
  __chkstk_darwin(v23 - 8);
  v25 = &v52 - v24;
  v27 = &v52 + *(v26 + 56) - v24;
  sub_1000077D8(v58, &v52 - v24, &qword_100AD8770, &qword_1008246E0);
  sub_1000077D8(v59, v27, &qword_100AD8770, &qword_1008246E0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1000077D8(v25, v22, &qword_100AD8770, &qword_1008246E0);
    if (!swift_getEnumCaseMultiPayload())
    {
      v49 = v56;
      v48 = v57;
      (*(v56 + 32))(v13, v27, v57);
      sub_10028B1C4();
      v31 = sub_1007A2124();
      v50 = *(v49 + 8);
      v50(v13, v48);
      v50(v22, v48);
      goto LABEL_17;
    }

    (*(v56 + 8))(v22, v57);
    goto LABEL_13;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_1000077D8(v25, v19, &qword_100AD8770, &qword_1008246E0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v30 = v56;
      v29 = v57;
      (*(v56 + 32))(v10, v27, v57);
      sub_10028B1C4();
      v31 = sub_1007A2124();
      v32 = *(v30 + 8);
      v32(v10, v29);
      v32(v19, v29);
LABEL_17:
      sub_100007840(v25, &qword_100AD8770, &qword_1008246E0);
      return v31 & 1;
    }

    (*(v56 + 8))(v19, v57);
    goto LABEL_13;
  }

  sub_1000077D8(v25, v16, &qword_100AD8770, &qword_1008246E0);
  v33 = *(sub_1001F1160(&qword_100AD8A70, &qword_100815DD8) + 48);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    v43 = *(v56 + 8);
    v44 = &v16[v33];
    v45 = v57;
    v43(v44, v57);
    v43(v16, v45);
LABEL_13:
    v46 = &qword_100AD8A90;
    v47 = &qword_100815DF8;
    goto LABEL_14;
  }

  v35 = v55;
  v34 = v56;
  v36 = *(v56 + 32);
  v37 = v57;
  v36(v55, v27, v57);
  v38 = v54;
  v36(v54, &v16[v33], v37);
  v39 = &v27[v33];
  v40 = v53;
  v36(v53, v39, v37);
  sub_10028B1C4();
  v41 = sub_1007A2124();
  v42 = *(v34 + 8);
  v42(v16, v37);
  if (v41)
  {
    v31 = sub_1007A2124();
    v42(v40, v37);
    v42(v38, v37);
    v42(v35, v37);
    goto LABEL_17;
  }

  v42(v40, v37);
  v42(v38, v37);
  v42(v35, v37);
  v46 = &qword_100AD8770;
  v47 = &qword_1008246E0;
LABEL_14:
  sub_100007840(v25, v46, v47);
  v31 = 0;
  return v31 & 1;
}

uint64_t sub_100288EC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v66 = a6;
  v67 = a5;
  v75 = a1;
  v76 = a2;
  v74 = *(a4 - 8);
  __chkstk_darwin(a1);
  v64 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v68 = &v63 - v8;
  __chkstk_darwin(v9);
  v63 = &v63 - v10;
  v73 = *(v11 - 8);
  __chkstk_darwin(v12);
  v65 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v63 - v15;
  v71 = v18;
  v72 = v17;
  v19 = _s5StateO12EitherOrBothOMa(0, v17, v18, v18);
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v63 - v24;
  __chkstk_darwin(v26);
  v28 = &v63 - v27;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v70 = *(TupleTypeMetadata2 - 8);
  v30 = __chkstk_darwin(TupleTypeMetadata2);
  v32 = &v63 - v31;
  v34 = &v63 + *(v33 + 48) - v31;
  v69 = v20;
  v35 = *(v20 + 16);
  v35(&v63 - v31, v75, v19, v30);
  (v35)(v34, v76, v19);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v44 = v16;
    (v35)(v28, v32, v19);
    if (!swift_getEnumCaseMultiPayload())
    {
      v58 = v72;
      v59 = v73;
      v60 = v44;
      (*(v73 + 32))(v44, v34, v72);
      v41 = sub_1007A2124();
      v61 = *(v59 + 8);
      v61(v60, v58);
      v61(v28, v58);
      v43 = v69;
      goto LABEL_14;
    }

    (*(v73 + 8))(v28, v72);
    goto LABEL_13;
  }

  if (EnumCaseMultiPayload == 1)
  {
    (v35)(v25, v32, v19);
    v37 = swift_getEnumCaseMultiPayload();
    v38 = v71;
    if (v37 == 1)
    {
      v39 = v74;
      v40 = v63;
      (*(v74 + 32))(v63, v34, v71);
      v41 = sub_1007A2124();
      v42 = *(v39 + 8);
      v42(v40, v38);
      v42(v25, v38);
      v43 = v69;
      goto LABEL_14;
    }

    (*(v74 + 8))(v25, v71);
LABEL_13:
    v41 = 0;
    v43 = v70;
    v19 = TupleTypeMetadata2;
    goto LABEL_14;
  }

  (v35)(v22, v32, v19);
  v45 = v71;
  v46 = v72;
  v47 = *(swift_getTupleTypeMetadata2() + 48);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    (*(v74 + 8))(&v22[v47], v45);
    (*(v73 + 8))(v22, v46);
    goto LABEL_13;
  }

  v48 = v65;
  (*(v73 + 32))(v65, v34, v46);
  v49 = *(v74 + 32);
  v49(v68, &v22[v47], v45);
  v50 = &v34[v47];
  v51 = v48;
  v52 = v73;
  v53 = v64;
  v49(v64, v50, v45);
  v54 = sub_1007A2124();
  v55 = *(v52 + 8);
  v55(v22, v46);
  if (v54)
  {
    v41 = sub_1007A2124();
    v56 = *(v74 + 8);
    v56(v53, v45);
    v56(v68, v45);
    v55(v65, v46);
  }

  else
  {
    v62 = *(v74 + 8);
    v62(v53, v45);
    v62(v68, v45);
    v55(v51, v46);
    v41 = 0;
  }

  v43 = v69;
LABEL_14:
  (*(v43 + 8))(v32, v19);
  return v41 & 1;
}

uint64_t sub_100289578@<X0>(char *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v49 = a3;
  v7 = _s5StateO8DraggingVMa(0);
  __chkstk_darwin(v7);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1001F1160(&qword_100AD8A78, &unk_100815DE0);
  __chkstk_darwin(v10 - 8);
  v12 = &v49 - v11;
  v13 = _s5StateO4TurnVMa(0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v49 - v18;
  sub_100286F74(a2 & 1, 0, v12, a4);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_100007840(v12, &qword_100AD8A78, &unk_100815DE0);
    if (qword_100AD1360 != -1)
    {
      swift_once();
    }

    v20 = sub_10079ACE4();
    sub_100008B98(v20, qword_100AD8570);
    sub_10028A5C8(a1, v9, _s5StateO8DraggingVMa);
    v21 = sub_10079ACC4();
    v22 = sub_1007A29B4();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *v23 = 136315650;
      v24 = sub_100611AC4();
      v26 = v25;
      sub_10028A568(v9, _s5StateO8DraggingVMa);
      v27 = sub_1000070F4(v24, v26, &v50);

      *(v23 + 4) = v27;
      *(v23 + 12) = 2080;
      v28 = sub_1007A0CD4();
      v30 = sub_1000070F4(v28, v29, &v50);

      *(v23 + 14) = v30;
      *(v23 + 22) = 2048;
      *(v23 + 24) = a4;
      _os_log_impl(&_mh_execute_header, v21, v22, "Cannot produce a Turning state from %s, for pageProgressDirection: %s, contentWidth: %f", v23, 0x20u);
      swift_arrayDestroy();

      v31 = a1;
    }

    else
    {

      sub_10028A568(a1, _s5StateO8DraggingVMa);
      v31 = v9;
    }

    sub_10028A568(v31, _s5StateO8DraggingVMa);
    v34 = 1;
    v33 = v49;
    goto LABEL_25;
  }

  sub_10028A500(v12, v19, _s5StateO4TurnVMa);
  v32 = -1.0;
  if (a2)
  {
    v33 = v49;
    if (v19[*(v13 + 24)])
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v33 = v49;
  if (v19[*(v13 + 24)])
  {
LABEL_12:
    v32 = 1.0;
  }

LABEL_13:
  v35 = v32 * *&a1[*(v7 + 40)];
  if (v35 >= -200.0)
  {
    if (fabs(v35) > 500.0 || *&v19[*(v13 + 40)] > 0.333333333)
    {
      sub_10028A568(a1, _s5StateO8DraggingVMa);
      sub_10028A500(v19, v33, _s5StateO4TurnVMa);
      v34 = 0;
      goto LABEL_25;
    }

    if (qword_100AD1360 != -1)
    {
      swift_once();
    }

    v44 = sub_10079ACE4();
    sub_100008B98(v44, qword_100AD8570);
    sub_10028A5C8(v19, v16, _s5StateO4TurnVMa);
    v45 = sub_10079ACC4();
    v46 = sub_1007A29A4();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 134218752;
      v48 = *&v16[*(v13 + 40)];
      sub_10028A568(v16, _s5StateO4TurnVMa);
      *(v47 + 4) = v48;
      *(v47 + 12) = 2048;
      *(v47 + 14) = 0x3FD5555555555555;
      *(v47 + 22) = 2048;
      *(v47 + 24) = v35;
      *(v47 + 32) = 2048;
      *(v47 + 34) = 0x407F400000000000;
      _os_log_impl(&_mh_execute_header, v45, v46, "Refusing to drag, progress %f (threshold %f). velocity %f (threshold %f)", v47, 0x2Au);

      sub_10028A568(a1, _s5StateO8DraggingVMa);
    }

    else
    {

      sub_10028A568(a1, _s5StateO8DraggingVMa);
      sub_10028A568(v16, _s5StateO4TurnVMa);
    }

    v40 = v19;
  }

  else
  {
    if (qword_100AD1360 != -1)
    {
      swift_once();
    }

    v36 = sub_10079ACE4();
    sub_100008B98(v36, qword_100AD8570);
    v37 = sub_10079ACC4();
    v38 = sub_1007A29A4();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v37, v38, "Refusing to drag, ended with flick in opposite direction", v39, 2u);
    }

    sub_10028A568(a1, _s5StateO8DraggingVMa);
    v40 = v19;
  }

  sub_10028A568(v40, _s5StateO4TurnVMa);
  v34 = 1;
LABEL_25:
  v42 = _s5StateO7TurningVMa(0);
  return (*(*(v42 - 8) + 56))(v33, v34, 1, v42);
}

uint64_t sub_100289CF0(char a1)
{
  v3 = _s5StateO8DraggingVMa(0);
  v4 = *(v1 + *(v3 + 36));
  if (v4 == 0.0)
  {
    v4 = *(v1 + *(v3 + 40));
    if (v4 == 0.0)
    {
      return 2;
    }
  }

  if (a1)
  {
    if (v4 >= 0.0)
    {
      return 0;
    }
  }

  else if (v4 < 0.0)
  {
    return 0;
  }

  return 1;
}

uint64_t sub_100289D5C@<X0>(char a1@<W0>, char *a2@<X8>)
{
  v5 = sub_1001F1160(&qword_100AD8770, &qword_1008246E0);
  __chkstk_darwin(v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v27 - v9;
  v11 = sub_1007A0F74();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v27 - v16;
  v18 = v2 + *(_s5StateO8DraggingVMa(0) + 28);
  if (a1)
  {
    sub_1000077D8(v18, v10, &qword_100AD8770, &qword_1008246E0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        (*(v12 + 56))(a2, 1, 1, v11);
        return sub_100007840(v10, &qword_100AD8770, &qword_1008246E0);
      }

      v24 = *(sub_1001F1160(&qword_100AD8A70, &qword_100815DD8) + 48);
      v23 = *(v12 + 32);
      v23(v17, v10, v11);
      (*(v12 + 8))(&v10[v24], v11);
    }

    else
    {
      v23 = *(v12 + 32);
      v23(v17, v10, v11);
    }

    v23(a2, v17, v11);
  }

  else
  {
    sub_1000077D8(v18, v7, &qword_100AD8770, &qword_1008246E0);
    v21 = swift_getEnumCaseMultiPayload();
    if (!v21)
    {
      (*(v12 + 56))(a2, 1, 1, v11);
      return sub_100007840(v7, &qword_100AD8770, &qword_1008246E0);
    }

    if (v21 == 1)
    {
      v22 = *(v12 + 32);
      v22(v14, v7, v11);
      v22(a2, v14, v11);
    }

    else
    {
      v25 = sub_1001F1160(&qword_100AD8A70, &qword_100815DD8);
      v26 = *(v12 + 32);
      v26(v14, &v7[*(v25 + 48)], v11);
      (*(v12 + 8))(v7, v11);
      v26(a2, v14, v11);
    }
  }

  return (*(v12 + 56))(a2, 0, 1, v11);
}

uint64_t sub_10028A0E4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v8 = _s5StateO8DraggingVMa(0);
  v9 = v8 - 8;
  __chkstk_darwin(v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1001F1160(&qword_100AD8A78, &unk_100815DE0);
  __chkstk_darwin(v12 - 8);
  v14 = &v33 - v13;
  v15 = _s5StateO4TurnVMa(0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100286F74(a2 & 1, *(a1 + *(v9 + 28)), v14, a4);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_100007840(v14, &qword_100AD8A78, &unk_100815DE0);
    if (qword_100AD1360 != -1)
    {
      swift_once();
    }

    v19 = sub_10079ACE4();
    sub_100008B98(v19, qword_100AD8570);
    sub_10028A5C8(a1, v11, _s5StateO8DraggingVMa);
    v20 = sub_10079ACC4();
    v21 = sub_1007A29B4();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v22 = 136315650;
      v23 = sub_100611AC4();
      v25 = v24;
      sub_10028A568(v11, _s5StateO8DraggingVMa);
      v26 = sub_1000070F4(v23, v25, &v34);

      *(v22 + 4) = v26;
      *(v22 + 12) = 2080;
      v27 = sub_1007A0CD4();
      v29 = sub_1000070F4(v27, v28, &v34);

      *(v22 + 14) = v29;
      *(v22 + 22) = 2048;
      *(v22 + 24) = a4;
      _os_log_impl(&_mh_execute_header, v20, v21, "Cannot produce a Turning state from %s, for pageProgressDirection: %s, contentWidth: %f", v22, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      sub_10028A568(v11, _s5StateO8DraggingVMa);
    }

    v30 = 1;
  }

  else
  {
    sub_10028A500(v14, v18, _s5StateO4TurnVMa);
    sub_10028A500(v18, a3, _s5StateO4TurnVMa);
    v30 = 0;
  }

  sub_10028A568(a1, _s5StateO8DraggingVMa);
  v31 = _s5StateO9ResettingVMa(0);
  return (*(*(v31 - 8) + 56))(a3, v30, 1, v31);
}

uint64_t sub_10028A500(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10028A568(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10028A5C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

BOOL sub_10028A630(uint64_t a1, uint64_t a2)
{
  if ((sub_1007A0F24() & 1) == 0)
  {
    return 0;
  }

  sub_10000A7C4(0, &qword_100ADAF70, NSObject_ptr);
  v4 = _s5StateO4TurnVMa(0);
  if ((sub_1007A3184() & 1) == 0 || (sub_1007A03D4() & 1) == 0 || (sub_1007A0F24() & 1) == 0)
  {
    return 0;
  }

  v5 = v4[8];
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6)
  {
    if (!v7)
    {
      return 0;
    }

    sub_10000A7C4(0, &qword_100AD7620, UIView_ptr);
    v8 = v7;
    v9 = v6;
    v10 = sub_1007A3184();

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if (*(a1 + v4[9]) == *(a2 + v4[9]))
  {
    return *(a1 + v4[10]) == *(a2 + v4[10]);
  }

  return 0;
}

BOOL sub_10028A760(uint64_t a1, uint64_t a2)
{
  v71 = a1;
  v72 = a2;
  v2 = _s5StateO9ResettingVMa(0);
  __chkstk_darwin(v2 - 8);
  v68 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = _s5StateO8DraggingVMa(0);
  __chkstk_darwin(v4 - 8);
  v67 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v66 = &v61 - v7;
  v63 = _s5StateO21CapturingDragSnapshotVMa(0);
  __chkstk_darwin(v63);
  v69 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s5StateO7TurningVMa(0);
  __chkstk_darwin(v9 - 8);
  v65 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v64 = &v61 - v12;
  v61 = _s5StateO21CapturingTurnSnapshotVMa(0);
  __chkstk_darwin(v61);
  v62 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = _s5StateOMa(0);
  __chkstk_darwin(v14);
  v16 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v61 - v18;
  __chkstk_darwin(v20);
  v22 = &v61 - v21;
  __chkstk_darwin(v23);
  v70 = &v61 - v24;
  __chkstk_darwin(v25);
  v27 = &v61 - v26;
  __chkstk_darwin(v28);
  v30 = &v61 - v29;
  __chkstk_darwin(v31);
  v33 = &v61 - v32;
  v34 = sub_1001F1160(&qword_100AD8A88, &qword_100815DF0);
  __chkstk_darwin(v34 - 8);
  v36 = &v61 - v35;
  v38 = *(v37 + 56);
  sub_10028A5C8(v71, &v61 - v35, _s5StateOMa);
  sub_10028A5C8(v72, &v36[v38], _s5StateOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload != 6)
      {
        if (swift_getEnumCaseMultiPayload() != 7)
        {
LABEL_39:
          sub_100007840(v36, &qword_100AD8A88, &qword_100815DF0);
          return 0;
        }

        goto LABEL_30;
      }

      sub_10028A5C8(v36, v16, _s5StateOMa);
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        v40 = _s5StateO9ResettingVMa;
        v41 = v16;
        goto LABEL_38;
      }

      v47 = v68;
      sub_10028A500(&v36[v38], v68, _s5StateO9ResettingVMa);
      v43 = sub_10028A630(v16, v47);
      v44 = _s5StateO9ResettingVMa;
      sub_10028A568(v47, _s5StateO9ResettingVMa);
      v45 = v16;
      goto LABEL_20;
    }

    if (EnumCaseMultiPayload == 4)
    {
      sub_10028A5C8(v36, v22, _s5StateOMa);
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        v55 = _s5StateO8DraggingVMa;
        goto LABEL_37;
      }

      v42 = v66;
      sub_10028A500(&v36[v38], v66, _s5StateO8DraggingVMa);
      v43 = sub_10028B21C(v22, v42);
      v44 = _s5StateO8DraggingVMa;
      sub_10028A568(v42, _s5StateO8DraggingVMa);
      v45 = v22;
    }

    else
    {
      sub_10028A5C8(v36, v19, _s5StateOMa);
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        v40 = _s5StateO8DraggingVMa;
        v41 = v19;
        goto LABEL_38;
      }

      v50 = v67;
      sub_10028A500(&v36[v38], v67, _s5StateO8DraggingVMa);
      v43 = sub_10028B21C(v19, v50);
      v44 = _s5StateO8DraggingVMa;
      sub_10028A568(v50, _s5StateO8DraggingVMa);
      v45 = v19;
    }

LABEL_20:
    v49 = v44;
    goto LABEL_21;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_10028A5C8(v36, v27, _s5StateOMa);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        v40 = _s5StateO7TurningVMa;
        v41 = v27;
        goto LABEL_38;
      }

      v46 = v65;
      sub_10028A500(&v36[v38], v65, _s5StateO7TurningVMa);
      v43 = sub_10028A630(v27, v46);
      v44 = _s5StateO7TurningVMa;
      sub_10028A568(v46, _s5StateO7TurningVMa);
      v45 = v27;
      goto LABEL_20;
    }

    v22 = v70;
    sub_10028A5C8(v36, v70, _s5StateOMa);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v51 = &v36[v38];
      v52 = v69;
      sub_10028A500(v51, v69, _s5StateO21CapturingDragSnapshotVMa);
      if (sub_1007A0F24())
      {
        sub_10000A7C4(0, &qword_100ADAF70, NSObject_ptr);
        if ((sub_1007A3184() & 1) != 0 && (sub_1002888FC(&v22[v63[6]], v52 + v63[6]) & 1) != 0 && *&v22[v63[7]] == *(v52 + v63[7]) && *&v22[v63[8]] == *(v52 + v63[8]))
        {
          v53 = _s5StateO21CapturingDragSnapshotVMa;
          sub_10028A568(v52, _s5StateO21CapturingDragSnapshotVMa);
          v54 = v22;
LABEL_48:
          sub_10028A568(v54, v53);
LABEL_30:
          sub_10028A568(v36, _s5StateOMa);
          return 1;
        }
      }

      v57 = _s5StateO21CapturingDragSnapshotVMa;
      sub_10028A568(v52, _s5StateO21CapturingDragSnapshotVMa);
      v58 = v22;
LABEL_50:
      sub_10028A568(v58, v57);
      sub_10028A568(v36, _s5StateOMa);
      return 0;
    }

    v55 = _s5StateO21CapturingDragSnapshotVMa;
LABEL_37:
    v40 = v55;
    v41 = v22;
    goto LABEL_38;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_10028A5C8(v36, v33, _s5StateOMa);
    if (swift_getEnumCaseMultiPayload())
    {
      v40 = _s5StateO21CapturingTurnSnapshotVMa;
      v41 = v33;
LABEL_38:
      sub_10028A568(v41, v40);
      goto LABEL_39;
    }

    v59 = &v36[v38];
    v60 = v62;
    sub_10028A500(v59, v62, _s5StateO21CapturingTurnSnapshotVMa);
    if (sub_1007A0F24())
    {
      sub_10000A7C4(0, &qword_100ADAF70, NSObject_ptr);
      if (sub_1007A3184() & 1) != 0 && (sub_1007A03D4() & 1) != 0 && (sub_1007A0F24())
      {
        v53 = _s5StateO21CapturingTurnSnapshotVMa;
        sub_10028A568(v60, _s5StateO21CapturingTurnSnapshotVMa);
        v54 = v33;
        goto LABEL_48;
      }
    }

    v57 = _s5StateO21CapturingTurnSnapshotVMa;
    sub_10028A568(v60, _s5StateO21CapturingTurnSnapshotVMa);
    v58 = v33;
    goto LABEL_50;
  }

  sub_10028A5C8(v36, v30, _s5StateOMa);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v40 = _s5StateO7TurningVMa;
    v41 = v30;
    goto LABEL_38;
  }

  v48 = v64;
  sub_10028A500(&v36[v38], v64, _s5StateO7TurningVMa);
  v43 = sub_10028A630(v30, v48);
  sub_10028A568(v48, _s5StateO7TurningVMa);
  v45 = v30;
  v49 = _s5StateO7TurningVMa;
LABEL_21:
  sub_10028A568(v45, v49);
  sub_10028A568(v36, _s5StateOMa);
  return v43;
}

unint64_t sub_10028B1C4()
{
  result = qword_100AEB790;
  if (!qword_100AEB790)
  {
    sub_1007A0F74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEB790);
  }

  return result;
}

BOOL sub_10028B21C(uint64_t a1, uint64_t a2)
{
  if (sub_1007A0F24() & 1) != 0 && (sub_10000A7C4(0, &qword_100ADAF70, NSObject_ptr), v4 = _s5StateO8DraggingVMa(0), (sub_1007A3184()) && (sub_1007A3184() & 1) != 0 && (sub_1002888FC(a1 + v4[7], a2 + v4[7]) & 1) != 0 && *(a1 + v4[8]) == *(a2 + v4[8]) && *(a1 + v4[9]) == *(a2 + v4[9]))
  {
    return *(a1 + v4[10]) == *(a2 + v4[10]);
  }

  else
  {
    return 0;
  }
}

BOOL sub_10028B2F8(uint64_t a1, uint64_t a2)
{
  if (sub_1007A0F24() & 1) != 0 && (sub_10000A7C4(0, &qword_100ADAF70, NSObject_ptr), v4 = _s5StateO21CapturingDragSnapshotVMa(0), (sub_1007A3184()) && (sub_1002888FC(a1 + v4[6], a2 + v4[6]) & 1) != 0 && *(a1 + v4[7]) == *(a2 + v4[7]))
  {
    return *(a1 + v4[8]) == *(a2 + v4[8]);
  }

  else
  {
    return 0;
  }
}

unint64_t sub_10028B3C0()
{
  result = qword_100AD8A98[0];
  if (!qword_100AD8A98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100AD8A98);
  }

  return result;
}

void sub_10028B41C(uint64_t a1)
{
  sub_10028B510(319);
  if (v1 <= 0x3F)
  {
    sub_10028B574(319);
    if (v2 <= 0x3F)
    {
      sub_1001F5040();
      if (v3 <= 0x3F)
      {
        sub_100247D20();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10028B510(uint64_t a1)
{
  if (!qword_100AD6F10)
  {
    sub_1001F1234(&unk_100ADB6B0, qword_100816980);
    v1 = sub_10079BCD4();
    if (!v2)
    {
      atomic_store(v1, &qword_100AD6F10);
    }
  }
}

void sub_10028B574(uint64_t a1)
{
  if (!qword_100AD6F18)
  {
    sub_10079CAE4();
    v1 = sub_10079BCD4();
    if (!v2)
    {
      atomic_store(v1, &qword_100AD6F18);
    }
  }
}

uint64_t sub_10028B610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_10079CC94();
  v8 = __chkstk_darwin(v7);
  (*(*(a2 - 8) + 16))(&v11 - v9, a1, a2, v8);
  swift_storeEnumTagMultiPayload();
  return sub_10079CCA4();
}

uint64_t sub_10028B708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_10079CC94();
  v8 = __chkstk_darwin(v7);
  (*(*(a3 - 8) + 16))(&v11 - v9, a1, a3, v8);
  swift_storeEnumTagMultiPayload();
  return sub_10079CCA4();
}

uint64_t sub_10028B800@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10079C824();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1001F1160(&unk_100ADB4C0, &qword_100813DC0);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_1000077D8(v2, &v14 - v9, &unk_100ADB4C0, &qword_100813DC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_10020B3C8(v10, a1, &unk_100ADB6B0, qword_100816980);
  }

  v12 = sub_1007A29C4();
  v13 = sub_10079D244();
  sub_10079AB44(v12, &_mh_execute_header, v13, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

  sub_10079C814();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_10028B9E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10079C824();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1001F1160(&unk_100ADB4E0, &qword_100815F30);
  __chkstk_darwin(v9);
  v11 = &v16 - v10;
  sub_1000077D8(v2 + *(a1 + 36), &v16 - v10, &unk_100ADB4E0, &qword_100815F30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_10079CAE4();
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  else
  {
    v14 = sub_1007A29C4();
    v15 = sub_10079D244();
    sub_10079AB44(v14, &_mh_execute_header, v15, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    sub_10079C814();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_10028BBE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17[1] = a2;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  sub_10079E184();
  sub_10079E0A4();
  sub_10079CCB4();
  v5 = sub_10079DEF4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v17 - v10;
  v17[4] = v3;
  v17[5] = v4;
  v18 = v2;
  WitnessTable = swift_getWitnessTable();
  v13 = swift_getWitnessTable();
  v20 = WitnessTable;
  v21 = v13;
  v14 = swift_getWitnessTable();
  sub_10079DEE4();
  v19 = v14;
  swift_getWitnessTable();
  sub_10039232C();
  v15 = *(v6 + 8);
  v15(v8, v5);
  sub_10039232C();
  return (v15)(v11, v5);
}

uint64_t sub_10028BE18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v89 = a1;
  v87 = a4;
  v6 = sub_10079E0A4();
  v78 = *(v6 - 8);
  __chkstk_darwin(v6);
  v77 = &v66[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v76 = &v66[-v9];
  v10 = sub_10079E184();
  v70 = *(v10 - 8);
  __chkstk_darwin(v10);
  v69 = &v66[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v68 = &v66[-v13];
  v14 = sub_10079CAE4();
  v74 = *(v14 - 8);
  v75 = v14;
  __chkstk_darwin(v14);
  v73 = &v66[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v72 = &v66[-v17];
  v18 = sub_10079CEE4();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v71 = &v66[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = sub_1001F1160(&unk_100ADBB30, &qword_100813E90);
  v22 = v21 - 8;
  __chkstk_darwin(v21);
  v24 = &v66[-v23];
  v25 = sub_1001F1160(&unk_100ADB6B0, qword_100816980);
  __chkstk_darwin(v25 - 8);
  v79 = &v66[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v27);
  v29 = &v66[-v28];
  __chkstk_darwin(v30);
  v32 = &v66[-v31];
  v85 = v10;
  v86 = v6;
  v33 = sub_10079CCB4();
  v81 = *(v33 - 8);
  v82 = v33;
  __chkstk_darwin(v33);
  v80 = &v66[-v34];
  v83 = a2;
  v84 = a3;
  v88 = type metadata accessor for OptionsAdaptiveStack(0, a2, a3, v35);
  sub_10028B800(v32);
  (*(v19 + 104))(v29, enum case for UserInterfaceSizeClass.compact(_:), v18);
  (*(v19 + 56))(v29, 0, 1, v18);
  v36 = *(v22 + 56);
  sub_1000077D8(v32, v24, &unk_100ADB6B0, qword_100816980);
  sub_1000077D8(v29, &v24[v36], &unk_100ADB6B0, qword_100816980);
  v37 = *(v19 + 48);
  if (v37(v24, 1, v18) == 1)
  {
    sub_100007840(v29, &unk_100ADB6B0, qword_100816980);
    sub_100007840(v32, &unk_100ADB6B0, qword_100816980);
    v38 = v37(&v24[v36], 1, v18);
    v39 = v86;
    if (v38 == 1)
    {
      sub_100007840(v24, &unk_100ADB6B0, qword_100816980);
      v40 = v85;
      v41 = v80;
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_1000077D8(v24, v79, &unk_100ADB6B0, qword_100816980);
  if (v37(&v24[v36], 1, v18) == 1)
  {
    sub_100007840(v29, &unk_100ADB6B0, qword_100816980);
    sub_100007840(v32, &unk_100ADB6B0, qword_100816980);
    (*(v19 + 8))(v79, v18);
    v39 = v86;
LABEL_6:
    sub_100007840(v24, &unk_100ADBB30, &qword_100813E90);
    v40 = v85;
    v41 = v80;
LABEL_10:
    sub_10079C8F4();
    v58 = v77;
    sub_10079E094();
    WitnessTable = swift_getWitnessTable();
    v60 = v76;
    sub_10039232C();
    v54 = *(v78 + 8);
    v54(v58, v39);
    sub_10039232C();
    v61 = swift_getWitnessTable();
    sub_10028B708(v58, v40, v39, v61, WitnessTable);
    v54(v58, v39);
    v56 = v60;
    v57 = v39;
    goto LABEL_11;
  }

  v42 = v71;
  (*(v19 + 32))(v71, &v24[v36], v18);
  sub_10028C970();
  v43 = v79;
  v67 = sub_1007A2124();
  v44 = *(v19 + 8);
  v44(v42, v18);
  sub_100007840(v29, &unk_100ADB6B0, qword_100816980);
  sub_100007840(v32, &unk_100ADB6B0, qword_100816980);
  v44(v43, v18);
  sub_100007840(v24, &unk_100ADB6B0, qword_100816980);
  v40 = v85;
  v39 = v86;
  v41 = v80;
  if ((v67 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  v45 = v72;
  sub_10028B9E0(v88, v72);
  v47 = v73;
  v46 = v74;
  v48 = v75;
  (*(v74 + 104))(v73, enum case for ContentSizeCategory.extraExtraExtraLarge(_:), v75);
  v49 = sub_100391B98(v45, v47);
  v50 = *(v46 + 8);
  v50(v47, v48);
  v50(v45, v48);
  if (!v49)
  {
    goto LABEL_10;
  }

  sub_10079CB24();
  v51 = v69;
  sub_10079E174();
  v52 = swift_getWitnessTable();
  v53 = v68;
  sub_10039232C();
  v54 = *(v70 + 8);
  v54(v51, v40);
  sub_10039232C();
  v55 = swift_getWitnessTable();
  sub_10028B610(v51, v40, v39, v52, v55);
  v54(v51, v40);
  v56 = v53;
  v57 = v40;
LABEL_11:
  v54(v56, v57);
  v62 = swift_getWitnessTable();
  v63 = swift_getWitnessTable();
  v90 = v62;
  v91 = v63;
  v64 = v82;
  swift_getWitnessTable();
  sub_10039232C();
  return (*(v81 + 8))(v41, v64);
}

uint64_t sub_10028C83C@<X0>(uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t *a4@<X8>)
{
  *a4 = swift_getKeyPath();
  sub_1001F1160(a2, a3);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10028C8A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  sub_10020B3C8(a1, a9, &qword_100AE3E60, &unk_100813BB0);
  v18 = type metadata accessor for OptionsAdaptiveStack(0, a7, a8, v17);
  result = sub_10020B3C8(a2, a9 + v18[9], &qword_100AD6E98, &unk_100816030);
  v20 = a9 + v18[10];
  *v20 = a3;
  *(v20 + 8) = a4 & 1;
  v21 = (a9 + v18[11]);
  *v21 = a5;
  v21[1] = a6;
  return result;
}

unint64_t sub_10028C970()
{
  result = qword_100AE41D0;
  if (!qword_100AE41D0)
  {
    sub_10079CEE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE41D0);
  }

  return result;
}

id sub_10028CAE0()
{
  sub_1001F1160(&unk_100AD8160, &unk_100813160);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100815F70;
  sub_10000A7C4(0, &qword_100AD8B50, off_1009F8550);
  v2 = objc_opt_self();
  v3 = [v2 standardUserDefaults];
  KeyPath = swift_getKeyPath();
  *(v1 + 32) = sub_10028D3B4(0xD000000000000016, 0x80000001008C7B50, v3, KeyPath);
  v5 = sub_1007A2214();
  v57 = BKAppDelegate.enableMetricsInspectorOnDebugMode();
  v58 = 0;
  aBlock = _NSConcreteStackBlock;
  v54 = 1107296256;
  v55 = sub_10065CD28;
  v56 = &unk_100A12288;
  v6 = _Block_copy(&aBlock);
  v7 = objc_opt_self();
  v8 = [v7 entryWithTitle:v5 action:v6];

  _Block_release(v6);

  *(v1 + 40) = v8;
  v9 = [v2 standardUserDefaults];
  v10 = swift_getKeyPath();
  *(v1 + 48) = sub_10028D3B4(0x656C62616E45202DLL, 0xE900000000000064, v9, v10);
  v11 = swift_allocObject();
  *(v11 + 16) = v0;
  v57 = sub_10028D6A8;
  v58 = v11;
  aBlock = _NSConcreteStackBlock;
  v54 = 1107296256;
  v55 = sub_1003652C0;
  v56 = &unk_100A122D8;
  v12 = _Block_copy(&aBlock);
  v13 = objc_opt_self();
  v14 = v0;
  v15 = [v13 modelWithDetailLineBreakMode:0 detailTextBlock:v12];
  _Block_release(v12);

  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  v17 = v14;
  v18 = sub_1007A2214();
  v57 = sub_10028D730;
  v58 = v16;
  aBlock = _NSConcreteStackBlock;
  v54 = 1107296256;
  v55 = sub_10065CD28;
  v56 = &unk_100A12328;
  v19 = _Block_copy(&aBlock);

  v20 = [v7 entryWithTitle:v18 model:v15 action:v19];
  _Block_release(v19);

  *(v1 + 56) = v20;
  v21 = swift_allocObject();
  *(v21 + 16) = v17;
  v57 = sub_10028D8F8;
  v58 = v21;
  aBlock = _NSConcreteStackBlock;
  v54 = 1107296256;
  v55 = sub_1003652C0;
  v56 = &unk_100A12378;
  v22 = _Block_copy(&aBlock);
  v23 = v17;
  v24 = [v13 modelWithDetailLineBreakMode:0 detailTextBlock:v22];
  _Block_release(v22);

  v25 = swift_allocObject();
  *(v25 + 16) = v23;
  v26 = v23;
  v27 = sub_1007A2214();
  v57 = sub_10028D928;
  v58 = v25;
  aBlock = _NSConcreteStackBlock;
  v54 = 1107296256;
  v55 = sub_10065CD28;
  v56 = &unk_100A123C8;
  v28 = _Block_copy(&aBlock);

  v29 = [v7 entryWithTitle:v27 model:v24 action:v28];
  _Block_release(v28);

  *(v1 + 64) = v29;
  v30 = swift_allocObject();
  *(v30 + 16) = v26;
  v57 = sub_10028DD68;
  v58 = v30;
  aBlock = _NSConcreteStackBlock;
  v54 = 1107296256;
  v55 = sub_1003652C0;
  v56 = &unk_100A12418;
  v31 = _Block_copy(&aBlock);
  v32 = v26;
  v33 = [v13 modelWithDetailLineBreakMode:0 detailTextBlock:v31];
  _Block_release(v31);

  v34 = swift_allocObject();
  *(v34 + 16) = v32;
  v35 = v32;
  v36 = sub_1007A2214();
  v57 = sub_10028DE4C;
  v58 = v34;
  aBlock = _NSConcreteStackBlock;
  v54 = 1107296256;
  v55 = sub_10065CD28;
  v56 = &unk_100A12468;
  v37 = _Block_copy(&aBlock);

  v38 = [v7 entryWithTitle:v36 model:v33 action:v37];
  _Block_release(v37);

  *(v1 + 72) = v38;
  v39 = swift_allocObject();
  *(v39 + 16) = v35;
  v57 = sub_10028E2A0;
  v58 = v39;
  aBlock = _NSConcreteStackBlock;
  v54 = 1107296256;
  v55 = sub_1003652C0;
  v56 = &unk_100A124B8;
  v40 = _Block_copy(&aBlock);
  v41 = v35;
  v42 = [v13 modelWithDetailLineBreakMode:0 detailTextBlock:v40];
  _Block_release(v40);

  v43 = swift_allocObject();
  *(v43 + 16) = v41;
  v44 = v41;
  v45 = sub_1007A2214();
  v57 = sub_10028E354;
  v58 = v43;
  aBlock = _NSConcreteStackBlock;
  v54 = 1107296256;
  v55 = sub_10065CD28;
  v56 = &unk_100A12508;
  v46 = _Block_copy(&aBlock);

  v47 = [v7 entryWithTitle:v45 model:v42 action:v46];
  _Block_release(v46);

  *(v1 + 80) = v47;
  v48 = objc_allocWithZone(BKDebugViewSection);
  v49 = sub_1007A2214();
  isa = sub_1007A25D4().super.isa;

  v51 = [v48 initWithHeaderTitle:v49 entries:isa footerTitle:0];

  return v51;
}

id sub_10028D3B4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v20 = a3;
  swift_getAtKeyPath();
  v6 = v19;
  v7 = swift_allocObject();
  *(v7 + 16) = a3;
  *(v7 + 24) = a4;
  v8 = objc_allocWithZone(type metadata accessor for DebugBoolDefaultSwitch());
  v18[4] = sub_10028FDB4;
  v18[5] = v7;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 1107296256;
  v18[2] = sub_10021B6B0;
  v18[3] = &unk_100A12940;
  v9 = _Block_copy(v18);
  v10 = a3;

  v11 = [v8 initWithInitialValue:v6 synchronize:v9 action:0];

  _Block_release(v9);
  v12 = [objc_opt_self() modelWithAccessoryView:v11];
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = sub_1007A2214();

  v15 = v12;
  v16 = [ObjCClassFromMetadata entryWithTitle:v14 model:v15];

  return v16;
}

uint64_t sub_10028D5A8()
{
  v0 = [objc_opt_self() standardUserDefaults];
  sub_1007A2AA4();
  v2 = v1;

  if (!v2)
  {
    return 1701736270;
  }

  if ((v2 & 0x1000000000000000) != 0)
  {
    sub_1007A2424();
  }

  v4._countAndFlagsBits = sub_1007A3A74();
  sub_1007A23D4(v4);

  v5._countAndFlagsBits = 0x29736574794220;
  v5._object = 0xE700000000000000;
  sub_1007A23D4(v5);

  return 40;
}

uint64_t sub_10028D6B0()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_1007A2AA4();
  v3 = v2;

  sub_10028D738(v1, v3);
}

void sub_10028D738(uint64_t a1, unint64_t a2)
{
  v5 = _s23MultilineTextEditorViewVMa(0);
  v6 = v5 - 8;
  __chkstk_darwin(v5);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v9 = a1;
  }

  else
  {
    v9 = 0;
  }

  if (a2)
  {
    v10 = a2;
  }

  else
  {
    v10 = 0xE000000000000000;
  }

  v11 = swift_allocObject();
  *(v11 + 16) = v2;
  objc_allocWithZone(_s29MultilineTextEditorControllerCMa(0));
  *&v8[*(v6 + 40)] = swift_getKeyPath();
  sub_1001F1160(&qword_100AD8B60, &qword_100843AD0);
  swift_storeEnumTagMultiPayload();
  v17[1] = v9;
  v17[2] = v10;
  v12 = v2;

  sub_10079DFE4();
  v13 = v19;
  *v8 = v18;
  *(v8 + 2) = v13;
  *(v8 + 3) = 0;
  *(v8 + 4) = 0xE000000000000000;
  *(v8 + 5) = sub_10028EB6C;
  *(v8 + 6) = 0;
  *(v8 + 7) = sub_10028FD98;
  *(v8 + 8) = v11;
  v14 = sub_10079CBC4();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    [Strong present:v14 :1];
  }
}

void sub_10028D96C(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  v6 = v2;
  v7 = sub_1007A2214();
  v8 = sub_1007A2214();
  v9 = [objc_opt_self() alertControllerWithTitle:v7 message:v8 preferredStyle:1];

  v10 = swift_allocObject();
  v10[2] = 8;
  v10[3] = a1;
  v10[4] = a2;
  v26 = sub_10028FDFC;
  v27 = v10;
  v22 = _NSConcreteStackBlock;
  v23 = 1107296256;
  v24 = sub_100201C54;
  v25 = &unk_100A12828;
  v11 = _Block_copy(&v22);

  [v9 addTextFieldWithConfigurationHandler:v11];
  _Block_release(v11);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  v13[2] = sub_10028FCF0;
  v13[3] = v5;
  v13[4] = v12;

  v14 = sub_1007A2214();
  v26 = sub_10028FE00;
  v27 = v13;
  v22 = _NSConcreteStackBlock;
  v23 = 1107296256;
  v24 = sub_100201C54;
  v25 = &unk_100A12878;
  v15 = _Block_copy(&v22);

  v16 = objc_opt_self();
  v17 = [v16 actionWithTitle:v14 style:0 handler:v15];
  _Block_release(v15);

  [v9 addAction:v17];
  [v9 setPreferredAction:v17];
  v18 = sub_1007A2214();
  v19 = [v16 actionWithTitle:v18 style:1 handler:0];

  [v9 addAction:v19];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    [Strong presentViewController:v9 animated:1 completion:0];
  }
}

uint64_t sub_10028DCEC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = [objc_opt_self() standardUserDefaults];
  a2();
  v5 = v4;

  if (v5)
  {
    return 1701736270;
  }

  else
  {
    return sub_1007A27C4();
  }
}

uint64_t sub_10028DD98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(uint64_t, uint64_t))
{
  v6 = [objc_opt_self() standardUserDefaults];
  a3();
  LOBYTE(a3) = v7;

  if (a3)
  {
    v8 = 0;
    v9 = 0;
  }

  else
  {
    v8 = sub_1007A27C4();
    v9 = v10;
  }

  a4(v8, v9);
}

void sub_10028DE90(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  v6 = v2;
  v7 = sub_1007A2214();
  v8 = sub_1007A2214();
  v9 = [objc_opt_self() alertControllerWithTitle:v7 message:v8 preferredStyle:1];

  v10 = swift_allocObject();
  v10[2] = 8;
  v10[3] = a1;
  v10[4] = a2;
  v26 = sub_10028FDFC;
  v27 = v10;
  v22 = _NSConcreteStackBlock;
  v23 = 1107296256;
  v24 = sub_100201C54;
  v25 = &unk_100A12710;
  v11 = _Block_copy(&v22);

  [v9 addTextFieldWithConfigurationHandler:v11];
  _Block_release(v11);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  v13[2] = sub_10028FB10;
  v13[3] = v5;
  v13[4] = v12;

  v14 = sub_1007A2214();
  v26 = sub_10028FE00;
  v27 = v13;
  v22 = _NSConcreteStackBlock;
  v23 = 1107296256;
  v24 = sub_100201C54;
  v25 = &unk_100A12760;
  v15 = _Block_copy(&v22);

  v16 = objc_opt_self();
  v17 = [v16 actionWithTitle:v14 style:0 handler:v15];
  _Block_release(v15);

  [v9 addAction:v17];
  [v9 setPreferredAction:v17];
  v18 = sub_1007A2214();
  v19 = [v16 actionWithTitle:v18 style:1 handler:0];

  [v9 addAction:v19];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    [Strong presentViewController:v9 animated:1 completion:0];
  }
}

uint64_t sub_10028E210()
{
  v0 = [objc_opt_self() standardUserDefaults];
  sub_1007A2A64();
  v2 = v1;

  if (v2)
  {
    return 1701736270;
  }

  sub_100258D7C();
  return sub_1007A34F4();
}

uint64_t sub_10028E2A8()
{
  v0 = [objc_opt_self() standardUserDefaults];
  sub_1007A2A64();
  v2 = v1;

  if (v2)
  {
    v3 = 0;
    v4 = 0;
  }

  else
  {
    sub_100258D7C();
    v3 = sub_1007A34F4();
    v4 = v5;
  }

  sub_10028E35C(v3, v4);
}

void sub_10028E35C(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  v6 = v2;
  v7 = sub_1007A2214();
  v8 = sub_1007A2214();
  v9 = [objc_opt_self() alertControllerWithTitle:v7 message:v8 preferredStyle:1];

  v10 = swift_allocObject();
  v10[2] = 4;
  v10[3] = a1;
  v10[4] = a2;
  v26 = sub_10028F4D4;
  v27 = v10;
  v22 = _NSConcreteStackBlock;
  v23 = 1107296256;
  v24 = sub_100201C54;
  v25 = &unk_100A12580;
  v11 = _Block_copy(&v22);

  [v9 addTextFieldWithConfigurationHandler:v11];
  _Block_release(v11);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  v13[2] = sub_10028F490;
  v13[3] = v5;
  v13[4] = v12;

  v14 = sub_1007A2214();
  v26 = sub_10028F4E0;
  v27 = v13;
  v22 = _NSConcreteStackBlock;
  v23 = 1107296256;
  v24 = sub_100201C54;
  v25 = &unk_100A125F8;
  v15 = _Block_copy(&v22);

  v16 = objc_opt_self();
  v17 = [v16 actionWithTitle:v14 style:0 handler:v15];
  _Block_release(v15);

  [v9 addAction:v17];
  [v9 setPreferredAction:v17];
  v18 = sub_1007A2214();
  v19 = [v16 actionWithTitle:v18 style:1 handler:0];

  [v9 addAction:v19];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    [Strong presentViewController:v9 animated:1 completion:0];
  }
}

void sub_10028E6DC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  [a1 setKeyboardType:a2];
  [a1 setClearButtonMode:1];
  if (a4)
  {
    v6 = sub_1007A2214();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  [a1 setText:?];
}

uint64_t sub_10028E77C(uint64_t a1, void (*a2)(void *, unint64_t), uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_13;
  }

  v6 = Strong;
  v7 = [Strong textFields];

  if (!v7)
  {
LABEL_12:
    Strong = 0;
LABEL_13:
    v15 = 0xE000000000000000;
    goto LABEL_14;
  }

  sub_10000A7C4(0, &qword_100AD8B58, UITextField_ptr);
  v8 = sub_1007A25E4();

  if (!(v8 >> 62))
  {
    result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

  result = sub_1007A38D4();
  if (!result)
  {
LABEL_11:

    goto LABEL_12;
  }

LABEL_5:
  if ((v8 & 0xC000000000000001) != 0)
  {
    v10 = sub_1007A3784();
LABEL_8:
    v11 = v10;

    v12 = [v11 text];

    if (v12)
    {
      v13 = sub_1007A2254();
      v15 = v14;

      Strong = v13;
LABEL_14:
      a2(Strong, v15);
    }

    goto LABEL_12;
  }

  if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v10 = *(v8 + 32);
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

void sub_10028E8F4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_1007A3744(43);

  v18._countAndFlagsBits = a1;
  v18._object = a2;
  sub_1007A23D4(v18);
  v19._object = 0x80000001008C7D30;
  v19._countAndFlagsBits = 0xD000000000000028;
  sub_1007A23D4(v19);
  v8 = sub_1007A2214();
  v9 = sub_1007A2214();

  v10 = [objc_opt_self() alertControllerWithTitle:v8 message:v9 preferredStyle:{1, 39, 0xE100000000000000}];

  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a1;
  v11[5] = a2;

  v12 = sub_1007A2214();
  v17[4] = sub_10028FAE0;
  v17[5] = v11;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 1107296256;
  v17[2] = sub_100201C54;
  v17[3] = &unk_100A12698;
  v13 = _Block_copy(v17);

  v14 = [objc_opt_self() actionWithTitle:v12 style:0 handler:v13];
  _Block_release(v13);

  [v10 addAction:v14];
  [v10 setPreferredAction:v14];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    [Strong presentViewController:v10 animated:1 completion:0];
  }
}

uint64_t sub_10028EB6C(uint64_t a1, unint64_t a2)
{
  v4 = sub_1007A22A4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 8;
  v8 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {
    return 1;
  }

  sub_1007A2294();
  v9 = sub_1007A2264();
  v11 = v10;
  (*(v5 + 8))(v7, v4);
  result = 0;
  if (v11 >> 60 == 15)
  {
    return result;
  }

  v13 = objc_opt_self();
  isa = sub_1007969C4().super.isa;
  v19[0] = 0;
  v15 = [v13 JSONObjectWithData:isa options:0 error:v19];

  v16 = v19[0];
  if (v15)
  {
    sub_1007A3504();
    sub_10028FDA0(v9, v11);
    swift_unknownObjectRelease();
    sub_1001F1160(&qword_100AD8B68, &qword_100816028);
    if (swift_dynamicCast())
    {

      return 1;
    }
  }

  else
  {
    v17 = v16;
    sub_1007967D4();

    swift_willThrow();
    sub_10028FDA0(v9, v11);
  }

  return 0;
}

void sub_10028EDA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_opt_self();

  v6 = [v5 standardUserDefaults];
  sub_10028EEC0(a1, a2);

  sub_1007A2AB4();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = [Strong tableView];

    if (v9)
    {
      [v9 reloadData];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_10028EEC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100796504();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[0] = a1;
  v13[1] = a2;
  sub_1007964C4();
  sub_100206ECC();
  v8 = sub_1007A3494();
  v10 = v9;
  (*(v5 + 8))(v7, v4);
  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11)
  {

    return 0;
  }

  return v8;
}

void sub_10028EFE8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a2 && (v4 = sub_10028EEC0(a1, a2), v6 = v5, , v6))
  {
    v18 = 0.0;
    if (!sub_10028FB54(v4, v6, &v18) || v18 < 0.0)
    {
      v7 = swift_allocObject();
      *(v7 + 16) = v3;
      v8 = swift_allocObject();
      *(v8 + 16) = sub_10028FD74;
      *(v8 + 24) = v7;
      v9 = v3;
      sub_10028E8F4(v4, v6, sub_10028FDF8, v8);

      return;
    }

    v13 = [objc_opt_self() standardUserDefaults];
    sub_1007A2AC4();

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v15 = Strong;
      v16 = [Strong tableView];

      if (v16)
      {
        [v16 reloadData];

        return;
      }

LABEL_16:
      __break(1u);
    }
  }

  else
  {
    v10 = [objc_opt_self() standardUserDefaults];
    sub_1007A2AC4();

    v11 = swift_unknownObjectWeakLoadStrong();
    if (!v11)
    {
      return;
    }

    v12 = v11;
    v17 = [v11 tableView];

    if (!v17)
    {
      __break(1u);
      goto LABEL_16;
    }

    [v17 reloadData];
  }
}

void sub_10028F23C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a2 && (v4 = sub_10028EEC0(a1, a2), v6 = v5, , v6))
  {
    v18 = 0.0;
    if (!sub_10028FB54(v4, v6, &v18) || v18 < 0.0)
    {
      v7 = swift_allocObject();
      *(v7 + 16) = v3;
      v8 = swift_allocObject();
      *(v8 + 16) = sub_10028FC4C;
      *(v8 + 24) = v7;
      v9 = v3;
      sub_10028E8F4(v4, v6, sub_10028FDF8, v8);

      return;
    }

    v13 = [objc_opt_self() standardUserDefaults];
    sub_1007A2AD4();

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v15 = Strong;
      v16 = [Strong tableView];

      if (v16)
      {
        [v16 reloadData];

        return;
      }

LABEL_16:
      __break(1u);
    }
  }

  else
  {
    v10 = [objc_opt_self() standardUserDefaults];
    sub_1007A2AD4();

    v11 = swift_unknownObjectWeakLoadStrong();
    if (!v11)
    {
      return;
    }

    v12 = v11;
    v17 = [v11 tableView];

    if (!v17)
    {
      __break(1u);
      goto LABEL_16;
    }

    [v17 reloadData];
  }
}

void sub_10028F4EC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (!a2 || (v4 = sub_10028EEC0(a1, a2), v6 = v5, , !v6))
  {
    v16 = [objc_opt_self() standardUserDefaults];
    sub_1007A2A74();

    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      return;
    }

    v18 = Strong;
    v43 = [Strong tableView];

    if (v43)
    {
      [v43 reloadData];

      return;
    }

LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
    return;
  }

  v7 = HIBYTE(v6) & 0xF;
  v8 = v4 & 0xFFFFFFFFFFFFLL;
  if ((v6 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(v6) & 0xF;
  }

  else
  {
    v9 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {
    goto LABEL_75;
  }

  if ((v6 & 0x1000000000000000) != 0)
  {

    v12 = sub_10063DF1C(v4, v6, 10, v37);
    v39 = v38;

    if (v39)
    {
      goto LABEL_75;
    }

    goto LABEL_70;
  }

  if ((v6 & 0x2000000000000000) != 0)
  {
    v44[0] = v4;
    v44[1] = v6 & 0xFFFFFFFFFFFFFFLL;
    if (v4 == 43)
    {
      if (v7)
      {
        if (--v7)
        {
          v12 = 0;
          v25 = v44 + 1;
          while (1)
          {
            v26 = *v25 - 48;
            if (v26 > 9)
            {
              break;
            }

            v27 = 10 * v12;
            if ((v12 * 10) >> 64 != (10 * v12) >> 63)
            {
              break;
            }

            v12 = v27 + v26;
            if (__OFADD__(v27, v26))
            {
              break;
            }

            ++v25;
            if (!--v7)
            {
              goto LABEL_69;
            }
          }
        }

        goto LABEL_68;
      }

      goto LABEL_81;
    }

    if (v4 != 45)
    {
      if (v7)
      {
        v12 = 0;
        v30 = v44;
        while (1)
        {
          v31 = *v30 - 48;
          if (v31 > 9)
          {
            break;
          }

          v32 = 10 * v12;
          if ((v12 * 10) >> 64 != (10 * v12) >> 63)
          {
            break;
          }

          v12 = v32 + v31;
          if (__OFADD__(v32, v31))
          {
            break;
          }

          ++v30;
          if (!--v7)
          {
            goto LABEL_69;
          }
        }
      }

      goto LABEL_68;
    }

    if (v7)
    {
      if (--v7)
      {
        v12 = 0;
        v19 = v44 + 1;
        while (1)
        {
          v20 = *v19 - 48;
          if (v20 > 9)
          {
            break;
          }

          v21 = 10 * v12;
          if ((v12 * 10) >> 64 != (10 * v12) >> 63)
          {
            break;
          }

          v12 = v21 - v20;
          if (__OFSUB__(v21, v20))
          {
            break;
          }

          ++v19;
          if (!--v7)
          {
            goto LABEL_69;
          }
        }
      }

      goto LABEL_68;
    }

    goto LABEL_79;
  }

  if ((v4 & 0x1000000000000000) != 0)
  {
    v10 = ((v6 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v10 = sub_1007A37B4();
  }

  v11 = *v10;
  if (v11 == 43)
  {
    if (v8 >= 1)
    {
      v7 = v8 - 1;
      if (v8 != 1)
      {
        v12 = 0;
        if (v10)
        {
          v22 = v10 + 1;
          while (1)
          {
            v23 = *v22 - 48;
            if (v23 > 9)
            {
              goto LABEL_68;
            }

            v24 = 10 * v12;
            if ((v12 * 10) >> 64 != (10 * v12) >> 63)
            {
              goto LABEL_68;
            }

            v12 = v24 + v23;
            if (__OFADD__(v24, v23))
            {
              goto LABEL_68;
            }

            ++v22;
            if (!--v7)
            {
              goto LABEL_69;
            }
          }
        }

        goto LABEL_60;
      }

      goto LABEL_68;
    }

    goto LABEL_80;
  }

  if (v11 == 45)
  {
    if (v8 >= 1)
    {
      v7 = v8 - 1;
      if (v8 != 1)
      {
        v12 = 0;
        if (v10)
        {
          v13 = v10 + 1;
          while (1)
          {
            v14 = *v13 - 48;
            if (v14 > 9)
            {
              goto LABEL_68;
            }

            v15 = 10 * v12;
            if ((v12 * 10) >> 64 != (10 * v12) >> 63)
            {
              goto LABEL_68;
            }

            v12 = v15 - v14;
            if (__OFSUB__(v15, v14))
            {
              goto LABEL_68;
            }

            ++v13;
            if (!--v7)
            {
              goto LABEL_69;
            }
          }
        }

LABEL_60:
        LOBYTE(v7) = 0;
        goto LABEL_69;
      }

      goto LABEL_68;
    }

    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  if (v8)
  {
    v12 = 0;
    if (v10)
    {
      while (1)
      {
        v28 = *v10 - 48;
        if (v28 > 9)
        {
          goto LABEL_68;
        }

        v29 = 10 * v12;
        if ((v12 * 10) >> 64 != (10 * v12) >> 63)
        {
          goto LABEL_68;
        }

        v12 = v29 + v28;
        if (__OFADD__(v29, v28))
        {
          goto LABEL_68;
        }

        ++v10;
        if (!--v8)
        {
          goto LABEL_60;
        }
      }
    }

    goto LABEL_60;
  }

LABEL_68:
  v12 = 0;
  LOBYTE(v7) = 1;
LABEL_69:
  v45 = v7;
  if (v7)
  {
LABEL_75:
    v40 = swift_allocObject();
    *(v40 + 16) = v3;
    v41 = swift_allocObject();
    *(v41 + 16) = sub_10028FA94;
    *(v41 + 24) = v40;
    v42 = v3;
    sub_10028E8F4(v4, v6, sub_10028FAB8, v41);

    return;
  }

LABEL_70:
  if (v12 < 0)
  {
    goto LABEL_75;
  }

  v33 = [objc_opt_self() standardUserDefaults];
  sub_1007A2A74();

  v34 = swift_unknownObjectWeakLoadStrong();
  if (v34)
  {
    v35 = v34;
    v36 = [v34 tableView];

    if (v36)
    {
      [v36 reloadData];

      return;
    }

    goto LABEL_83;
  }
}

void sub_10028F9CC(char a1, void *a2, uint64_t a3)
{
  v3 = a2;
  swift_setAtReferenceWritableKeyPath();
}

_BYTE *sub_10028FA18@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

BOOL sub_10028FB54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v4 >= 0x21 || ((0x100003E01uLL >> v4) & 1) == 0)
      {
LABEL_10:
        v6 = _swift_stdlib_strtod_clocale();
        return v6 && *v6 == 0;
      }

      return 0;
    }
  }

  sub_1007A3714();
  if (!v3)
  {
    return v8;
  }

  return v5;
}

_BYTE *sub_10028FC70@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t sub_10028FD34()
{

  return swift_deallocObject();
}

uint64_t sub_10028FDA0(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10000ADCC(result, a2);
  }

  return result;
}

uint64_t type metadata accessor for REMenuButtonView(uint64_t a1)
{
  result = qword_100AD8BD0;
  if (!qword_100AD8BD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10028FEB8(uint64_t a1)
{
  sub_10028B510(319);
  if (v1 <= 0x3F)
  {
    sub_10029009C(319, &qword_100AF35B0, &type metadata accessor for LayoutDirection, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      sub_10029004C();
      if (v3 <= 0x3F)
      {
        sub_10029009C(319, &qword_100AD6F18, &type metadata accessor for ContentSizeCategory, &type metadata accessor for Environment);
        if (v4 <= 0x3F)
        {
          sub_100247C8C(319);
          if (v5 <= 0x3F)
          {
            sub_10029009C(319, &unk_100AD8BE8, type metadata accessor for BookReaderViewModel, &type metadata accessor for Bindable);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_10029004C()
{
  if (!qword_100AD8BE0)
  {
    v0 = sub_10079BCD4();
    if (!v1)
    {
      atomic_store(v0, &qword_100AD8BE0);
    }
  }
}

void sub_10029009C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_10029011C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10079C824();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001F1160(&unk_100ADB4E0, &qword_100815F30);
  __chkstk_darwin(v7);
  v9 = &v15 - v8;
  v10 = type metadata accessor for REMenuButtonView(0);
  sub_1000077D8(v1 + *(v10 + 32), v9, &unk_100ADB4E0, &qword_100815F30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_10079CAE4();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    v13 = sub_1007A29C4();
    v14 = sub_10079D244();
    sub_10079AB44(v13, &_mh_execute_header, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    sub_10079C814();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

char *sub_100290330()
{
  v1 = v0;
  v2 = type metadata accessor for BookReaderChromeState(0);
  v3 = v2 - 8;
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for REMenuButtonView(0);
  sub_1001F1160(&qword_100AD8B70, &qword_10082FBC0);
  sub_10079E304();
  v7 = v20;
  swift_getKeyPath();
  v20 = v7;
  sub_100296DE0(&qword_100AF2550, type metadata accessor for BookReaderViewModel, &unk_100831DD8);
  sub_100797A14();

  v8 = OBJC_IVAR____TtC5Books19BookReaderViewModel__chromeState;
  swift_beginAccess();
  sub_1002966A0(v7 + v8, v5, type metadata accessor for BookReaderChromeState);

  LODWORD(v8) = v5[*(v3 + 68)];
  sub_100296708(v5, type metadata accessor for BookReaderChromeState);
  if (v8 == 1)
  {
    v9 = sub_10066AACC(0, 1, 1, _swiftEmptyArrayStorage);
    v11 = *(v9 + 2);
    v10 = *(v9 + 3);
    if (v11 >= v10 >> 1)
    {
      v9 = sub_10066AACC((v10 > 1), v11 + 1, 1, v9);
    }

    *(v9 + 2) = v11 + 1;
    v9[v11 + 32] = 0;
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  v12 = [objc_opt_self() currentDevice];
  v13 = [v12 userInterfaceIdiom];

  if (!v13)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_10066AACC(0, *(v9 + 2) + 1, 1, v9);
    }

    v15 = *(v9 + 2);
    v14 = *(v9 + 3);
    if (v15 >= v14 >> 1)
    {
      v9 = sub_10066AACC((v14 > 1), v15 + 1, 1, v9);
    }

    *(v9 + 2) = v15 + 1;
    v9[v15 + 32] = 1;
  }

  v16 = *(v1 + *(v6 + 36));
  if (v16)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v17 = v16;
    sub_10079B9A4((&v19 + 7));

    if ((v19 & 0x100000000000000) != 0)
    {
      return sub_1002906A4(v9);
    }

    return v9;
  }

  else
  {
    type metadata accessor for ChromeStyle(0);
    sub_100296DE0(&qword_100ADB6A0, type metadata accessor for ChromeStyle, &protocol conformance descriptor for ChromeStyle);
    result = sub_10079C474();
    __break(1u);
  }

  return result;
}

uint64_t sub_1002906A4(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2 < 2)
  {
    return v1;
  }

  v3 = v2 >> 1;
  v4 = v2 + 31;
  for (i = 32; ; ++i)
  {
    if (i == v4)
    {
      goto LABEL_5;
    }

    v6 = *(v1 + 16);
    if (i - 32 >= v6)
    {
      break;
    }

    if (v4 - 32 >= v6)
    {
      goto LABEL_12;
    }

    v7 = *(v1 + i);
    v8 = *(v1 + v4);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1002F499C(v1);
      v1 = result;
    }

    *(v1 + i) = v8;
    *(v1 + v4) = v7;
LABEL_5:
    --v4;
    if (!--v3)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_10029075C@<X0>(uint64_t *a1@<X8>)
{
  v72 = a1;
  v2 = type metadata accessor for REMenuButtonView(0);
  v73 = *(v2 - 8);
  __chkstk_darwin(v2);
  v74 = v3;
  v76 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_1001F1160(&qword_100AD8C38, &qword_1008160C8);
  __chkstk_darwin(v78);
  v5 = (&v66 - v4);
  v6 = sub_1001F1160(&qword_100AD8C40, &qword_1008160D0);
  __chkstk_darwin(v6 - 8);
  v80 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v79 = &v66 - v9;
  v10 = sub_1001F1160(&qword_100AD8C48, &qword_1008160D8);
  __chkstk_darwin(v10);
  v12 = (&v66 - v11);
  v13 = sub_1001F1160(&qword_100AD8C50, &qword_1008160E0);
  __chkstk_darwin(v13 - 8);
  v77 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v81 = &v66 - v16;
  v17 = *(v2 + 36);
  v75 = v1;
  v18 = *(v1 + v17);
  if (v18)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v19 = v18;
    sub_10079B9A4(&v82);

    LODWORD(v71) = v82;
    swift_getKeyPath();
    swift_getKeyPath();
    v20 = v19;
    sub_10079B9A4(&v82);

    v67 = v82;
    sub_1001F1160(&qword_100AD8B70, &qword_10082FBC0);
    v21 = v75;
    sub_10079E304();
    v22 = *(v82 + 7);
    swift_unknownObjectRetain();

    ObjectType = swift_getObjectType();
    (*(v22 + 88))(ObjectType, v22);
    v25 = v24;
    v27 = v26;
    swift_unknownObjectRelease();
    swift_getKeyPath();
    swift_getKeyPath();
    v28 = v20;
    sub_10079B9A4(&v82);

    v68 = v82;
    v29 = v25;
    if (v82)
    {
      v29 = 0;
    }

    v70 = v29;
    swift_getKeyPath();
    swift_getKeyPath();
    v30 = v28;
    sub_10079B9A4(&v82);

    v31 = v82;
    v32 = v27;
    if (!v82)
    {
      v32 = 0;
    }

    v69 = v32;
    v33 = sub_10079E474();
    v34 = v72;
    *v72 = v33;
    v34[1] = v35;
    v72 = (v34 + *(sub_1001F1160(&qword_100AD8C58, &qword_100816130) + 44));
    *v12 = swift_getKeyPath();
    sub_1001F1160(&unk_100ADB740, &qword_100819F00);
    swift_storeEnumTagMultiPayload();
    v36 = v12 + v10[10];
    *v36 = 0;
    v36[8] = 1;
    v37 = v12 + v10[14];
    *v37 = 0;
    v37[8] = (v71 & 1) == 0;
    v38 = v12 + v10[11];
    *v38 = 0;
    v38[8] = 0;
    v39 = v12 + v10[15];
    *v39 = 0;
    v39[8] = v67;
    v40 = v21;
    sub_100291114(v12 + v10[9]);
    v41 = v12 + v10[12];
    *v41 = 0;
    v41[8] = 1;
    v42 = v12 + v10[13];
    *v42 = 0;
    v42[8] = 1;
    v71 = &unk_10080E750;
    sub_100005920(&qword_100AD8C60, &qword_100AD8C48, &qword_1008160D8, &unk_10080E750);
    sub_10079DA64();
    sub_100007840(v12, &qword_100AD8C48, &qword_1008160D8);
    *v5 = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    v43 = v78;
    v44 = v5 + *(v78 + 40);
    *v44 = 0;
    v44[8] = 1;
    v45 = v5 + v43[14];
    *v45 = v70;
    v45[8] = v68;
    v46 = v5 + v43[11];
    *v46 = 0;
    v46[8] = 0;
    v47 = v5 + v43[15];
    *v47 = v69;
    v47[8] = v31 ^ 1;
    v48 = v5 + v43[9];
    *v48 = sub_10079C8F4();
    *(v48 + 1) = 0;
    v48[16] = 1;
    sub_1001F1160(&qword_100AD8C68, &qword_100816170);
    v82 = sub_100290330();
    v49 = v76;
    sub_1002966A0(v40, v76, type metadata accessor for REMenuButtonView);
    v50 = (*(v73 + 80) + 16) & ~*(v73 + 80);
    v51 = swift_allocObject();
    sub_1002973E0(v49, v51 + v50, type metadata accessor for REMenuButtonView);
    sub_1001F1160(&qword_100AD8C70, &qword_100816178);
    sub_1001F1160(&qword_100AD8C78, &qword_100816180);
    sub_100005920(&qword_100AD8C80, &qword_100AD8C70, &qword_100816178, &protocol conformance descriptor for [A]);
    sub_10029653C();
    sub_10029664C();
    sub_10079E274();
    KeyPath = swift_getKeyPath();
    v53 = &v48[*(sub_1001F1160(&qword_100AD8CA8, &qword_100816188) + 36)];
    v54 = *(sub_1001F1160(&qword_100ADBCE0, &qword_100816190) + 28);
    v55 = enum case for LayoutDirection.leftToRight(_:);
    v56 = sub_10079C104();
    (*(*(v56 - 8) + 104))(v53 + v54, v55, v56);
    *v53 = KeyPath;
    v57 = v5 + v43[12];
    *v57 = 0;
    v57[8] = 1;
    v58 = v5 + v43[13];
    *v58 = 0;
    v58[8] = 1;
    sub_100005920(&qword_100AD8CB0, &qword_100AD8C38, &qword_1008160C8, v71);
    v59 = v79;
    sub_10079DA64();
    sub_100007840(v5, &qword_100AD8C38, &qword_1008160C8);
    v60 = v81;
    v61 = v77;
    sub_1000077D8(v81, v77, &qword_100AD8C50, &qword_1008160E0);
    v62 = v80;
    sub_1000077D8(v59, v80, &qword_100AD8C40, &qword_1008160D0);
    v63 = v72;
    sub_1000077D8(v61, v72, &qword_100AD8C50, &qword_1008160E0);
    v64 = sub_1001F1160(&qword_100AD8CB8, &qword_100816198);
    sub_1000077D8(v62, v63 + *(v64 + 48), &qword_100AD8C40, &qword_1008160D0);
    sub_100007840(v59, &qword_100AD8C40, &qword_1008160D0);
    sub_100007840(v60, &qword_100AD8C50, &qword_1008160E0);
    sub_100007840(v62, &qword_100AD8C40, &qword_1008160D0);
    return sub_100007840(v61, &qword_100AD8C50, &qword_1008160E0);
  }

  else
  {
    type metadata accessor for ChromeStyle(0);
    sub_100296DE0(&qword_100ADB6A0, type metadata accessor for ChromeStyle, &protocol conformance descriptor for ChromeStyle);
    result = sub_10079C474();
    __break(1u);
  }

  return result;
}

uint64_t sub_100291114@<X0>(uint64_t a1@<X8>)
{
  v137 = a1;
  v135 = sub_10079CA64();
  v134 = *(v135 - 8);
  __chkstk_darwin(v135);
  v133 = &v112 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = sub_100796CF4();
  v153 = *(v143 - 8);
  __chkstk_darwin(v143);
  v140 = &v112 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v142 = &v112 - v5;
  v141 = sub_1007A21D4();
  v152 = *(v141 - 8);
  __chkstk_darwin(v141);
  v138 = &v112 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v139 = &v112 - v8;
  v154 = sub_10079D074();
  v126 = *(v154 - 8);
  __chkstk_darwin(v154);
  v123 = &v112 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = type metadata accessor for BookReaderChromeState(0);
  __chkstk_darwin(v151);
  v147 = &v112 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10079CCC4();
  v150 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v112 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1001F1160(&qword_100AD8CD0, &qword_1008161D0);
  __chkstk_darwin(v14);
  v16 = &v112 - v15;
  v118 = sub_1001F1160(&qword_100AD8CD8, &qword_1008161D8);
  v116 = *(v118 - 8);
  __chkstk_darwin(v118);
  v18 = &v112 - v17;
  v121 = sub_1001F1160(&qword_100AD8CE0, &qword_1008161E0);
  v119 = *(v121 - 8);
  __chkstk_darwin(v121);
  v117 = &v112 - v19;
  v125 = sub_1001F1160(&qword_100AD8CE8, &qword_1008161E8);
  v124 = *(v125 - 8);
  __chkstk_darwin(v125);
  v144 = (&v112 - v20);
  v145 = sub_1001F1160(&qword_100AD8CF0, &qword_1008161F0);
  __chkstk_darwin(v145);
  v120 = &v112 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v122 = &v112 - v23;
  __chkstk_darwin(v24);
  v129 = &v112 - v25;
  __chkstk_darwin(v26);
  v128 = &v112 - v27;
  v127 = sub_1001F1160(&qword_100AD8CF8, &qword_1008161F8);
  __chkstk_darwin(v127);
  v146 = &v112 - v28;
  v131 = sub_1001F1160(&qword_100AD8D00, &qword_100816200);
  __chkstk_darwin(v131);
  v132 = &v112 - v29;
  v130 = sub_1001F1160(&qword_100AD8D08, &qword_100816208);
  __chkstk_darwin(v130);
  v136 = &v112 - v30;
  v31 = v1;
  sub_100292BB0(v16);
  v32 = &v16[*(v14 + 36)];
  v33 = sub_1001F1160(&qword_100AD8D10, &qword_100816210);
  sub_10079C444();
  if (qword_100AD1648 != -1)
  {
    swift_once();
  }

  v34 = qword_100B23378;
  v35 = *(sub_10079C3D4() + 20);
  v36 = enum case for RoundedCornerStyle.continuous(_:);
  v37 = sub_10079C9E4();
  (*(*(v37 - 8) + 104))(v32 + v35, v36, v37);
  *v32 = v34;
  v32[1] = v34;
  *(v32 + *(v33 + 36)) = 0;
  sub_10079C454();
  v38 = sub_100296768();
  v39 = sub_100296DE0(&qword_100AD8DC8, &type metadata accessor for AutomaticHoverEffect, &protocol conformance descriptor for AutomaticHoverEffect);
  v114 = v18;
  v115 = v14;
  sub_10079D6F4();
  (*(v150 + 8))(v13, v11);
  sub_100007840(v16, &qword_100AD8CD0, &qword_1008161D0);
  v40 = *(type metadata accessor for REMenuButtonView(0) + 40);
  v41 = sub_1001F1160(&qword_100AD8B70, &qword_10082FBC0);
  v150 = v40;
  v149 = v41;
  sub_10079E304();
  v42 = v158;
  swift_getKeyPath();
  v158 = v42;
  v148 = sub_100296DE0(&qword_100AF2550, type metadata accessor for BookReaderViewModel, &unk_100831DD8);
  sub_100797A14();

  v43 = OBJC_IVAR____TtC5Books19BookReaderViewModel__chromeState;
  swift_beginAccess();
  v44 = v42 + v43;
  v45 = v147;
  sub_1002966A0(v44, v147, type metadata accessor for BookReaderChromeState);

  v46 = *(v45 + *(v151 + 44));
  sub_100296708(v45, type metadata accessor for BookReaderChromeState);
  if ((v46 & 1) == 0)
  {
    sub_10079E304();
    v47 = v158;
    swift_getKeyPath();
    v158 = v47;
    sub_100797A14();

    v48 = OBJC_IVAR____TtC5Books19BookReaderViewModel__chromeState;
    swift_beginAccess();
    v49 = v147;
    sub_1002966A0(v47 + v48, v147, type metadata accessor for BookReaderChromeState);

    sub_100296708(v49, type metadata accessor for BookReaderChromeState);
  }

  v158 = v115;
  v159 = v11;
  v160 = v38;
  v161 = v39;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v51 = v117;
  v52 = v118;
  v53 = v114;
  sub_10079D964();
  (*(v116 + 8))(v53, v52);
  v54 = v123;
  sub_10079D054();
  v158 = v52;
  v159 = OpaqueTypeConformance2;
  v118 = swift_getOpaqueTypeConformance2();
  v55 = v121;
  sub_10079D9A4();
  (*(v126 + 8))(v54, v154);
  (*(v119 + 8))(v51, v55);
  v56 = v139;
  sub_1007A2154();
  v57 = v142;
  sub_100796C94();
  v58 = v152;
  v59 = *(v152 + 16);
  v60 = v138;
  v154 = v31;
  v61 = v141;
  v126 = v152 + 16;
  v123 = v59;
  (v59)(v138, v56, v141);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v117 = objc_opt_self();
  v119 = ObjCClassFromMetadata;
  v63 = [v117 bundleForClass:ObjCClassFromMetadata];
  v64 = v153;
  v65 = *(v153 + 16);
  v66 = v140;
  v67 = v143;
  v116 = v153 + 16;
  v115 = v65;
  v65(v140, v57, v143);
  v68 = sub_1007A22D4(v60, 0, 0, v63, v66, "Accessibility string for a menu button", 38, 2);
  v70 = v69;
  v71 = *(v64 + 8);
  v153 = v64 + 8;
  v114 = v71;
  v71(v57, v67);
  v72 = *(v58 + 8);
  v152 = v58 + 8;
  v113 = v72;
  v72(v56, v61);
  v158 = v68;
  v159 = v70;
  v156 = v55;
  v157 = v118;
  swift_getOpaqueTypeConformance2();
  sub_100206ECC();
  v73 = v120;
  v74 = v125;
  v75 = v144;
  sub_10079D8E4();

  (*(v124 + 8))(v75, v74);
  v76 = v122;
  sub_10079C244();
  sub_100007840(v73, &qword_100AD8CF0, &qword_1008161F0);
  sub_1001F1160(&qword_100AD7060, &qword_100813E70);
  v77 = v134;
  v78 = swift_allocObject();
  *(v78 + 16) = xmmword_10080B690;
  sub_10079CA44();
  v158 = v78;
  sub_100296DE0(&qword_100AD7068, &type metadata accessor for AccessibilityTraits, &protocol conformance descriptor for AccessibilityTraits);
  sub_1001F1160(&qword_100AD7070, &qword_100813E78);
  sub_100005920(&qword_100AD7078, &qword_100AD7070, &qword_100813E78, &protocol conformance descriptor for [A]);
  v79 = v133;
  v80 = v135;
  sub_1007A3594();
  v81 = v129;
  sub_10079C174();
  (*(v77 + 8))(v79, v80);
  sub_100007840(v76, &qword_100AD8CF0, &qword_1008161F0);
  sub_10079E304();
  v82 = v158;
  swift_getKeyPath();
  v158 = v82;
  sub_100797A14();

  v83 = OBJC_IVAR____TtC5Books19BookReaderViewModel__chromeState;
  swift_beginAccess();
  v144 = type metadata accessor for BookReaderChromeState;
  v84 = v147;
  sub_1002966A0(v82 + v83, v147, type metadata accessor for BookReaderChromeState);

  v85 = v151;
  sub_100296708(v84, type metadata accessor for BookReaderChromeState);
  v86 = v128;
  sub_10079C224();
  sub_100007840(v81, &qword_100AD8CF0, &qword_1008161F0);
  v87 = v146;
  sub_10020B3C8(v86, v146, &qword_100AD8CF0, &qword_1008161F0);
  *(v87 + *(v127 + 36)) = 0;
  sub_10079E304();
  v88 = v156;
  swift_getKeyPath();
  v156 = v88;
  sub_100797A14();

  v89 = OBJC_IVAR____TtC5Books19BookReaderViewModel__chromeState;
  swift_beginAccess();
  sub_1002966A0(v88 + v89, v84, v144);

  LODWORD(v70) = *(v84 + *(v85 + 44) + 1);
  sub_100296708(v84, type metadata accessor for BookReaderChromeState);
  v90 = 0;
  v91 = 0;
  v92 = v84;
  if (v70 == 1)
  {
    v93 = v139;
    sub_1007A2154();
    v94 = v142;
    sub_100796C94();
    v95 = v138;
    v96 = v141;
    (v123)(v138, v93, v141);
    v97 = [v117 bundleForClass:v119];
    v98 = v140;
    v99 = v143;
    v115(v140, v94, v143);
    v90 = sub_1007A22D4(v95, 0, 0, v97, v98, "Accessibility string indicating that the current page is bookmarked", 67, 2);
    v91 = v100;
    v114(v94, v99);
    v113(v93, v96);
  }

  v101 = v132;
  sub_10020B3C8(v146, v132, &qword_100AD8CF8, &qword_1008161F8);
  v102 = (v101 + *(v131 + 36));
  *v102 = v90;
  v102[1] = v91;
  KeyPath = swift_getKeyPath();
  v104 = v136;
  sub_10020B3C8(v101, v136, &qword_100AD8D00, &qword_100816200);
  v105 = v104 + *(v130 + 36);
  *v105 = KeyPath;
  *(v105 + 8) = 0;
  if (qword_100AD13F8 != -1)
  {
    swift_once();
  }

  v106 = qword_100B22FF8;
  sub_10079E304();
  v107 = v155;
  swift_getKeyPath();
  v155 = v107;
  sub_100797A14();

  v108 = OBJC_IVAR____TtC5Books19BookReaderViewModel__chromeState;
  swift_beginAccess();
  sub_1002966A0(v107 + v108, v92, type metadata accessor for BookReaderChromeState);

  LOBYTE(v108) = *(v92 + *(v85 + 44));
  sub_100296708(v92, type metadata accessor for BookReaderChromeState);
  v109 = v137;
  sub_10020B3C8(v104, v137, &qword_100AD8D08, &qword_100816208);
  v110 = v109 + *(sub_1001F1160(&qword_100AD8DD0, &unk_1008162A0) + 36);
  *v110 = v106;
  *(v110 + 8) = (v108 & 1) == 0;
}

uint64_t sub_100292658@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v40 = a3;
  v38 = sub_1001F1160(&qword_100AD8CC0, &qword_1008161A0);
  __chkstk_darwin(v38);
  v6 = &v35 - v5;
  v7 = sub_1007A1874();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v35 - v12;
  v39 = type metadata accessor for ReadingLoupeButtonView(0);
  __chkstk_darwin(v39);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  v17 = type metadata accessor for REMenuButtonView(0);
  v18 = v17;
  if (v16)
  {
    sub_1001F1160(&qword_100AD8B70, &qword_10082FBC0);
    sub_10079E304();
    v19 = *(v41 + 120);

    v20 = *(v19 + 16);

    v21 = (a2 + *(v18 + 44));
    type metadata accessor for ChromeStyle(0);
    sub_100296DE0(&qword_100ADB6A0, type metadata accessor for ChromeStyle, &protocol conformance descriptor for ChromeStyle);
    v22 = *v21;
    v36 = v21[1];
    v37 = v22;
    v23 = sub_10079C484();
    v25 = v24;
    type metadata accessor for OrientationLockHintViewModel(0);
    sub_100296DE0(&qword_100AD8CC8, type metadata accessor for OrientationLockHintViewModel, &protocol conformance descriptor for OrientationLockHintViewModel);
    v26 = sub_10079C024();
    *v6 = v23;
    *(v6 + 1) = v25;
    *(v6 + 2) = v26;
    *(v6 + 3) = v27;
    v28 = v36;
    *(v6 + 2) = v37;
    *(v6 + 3) = v28;
    swift_storeEnumTagMultiPayload();
    sub_100296DE0(&qword_100AD8C90, type metadata accessor for ReadingLoupeButtonView, &unk_10082FC00);
    sub_1002965F8();
    return sub_10079CCA4();
  }

  else
  {
    v30 = a2 + *(v17 + 48);
    swift_unknownObjectWeakLoadStrong();
    *&v37 = *(v30 + 8);
    v31 = (a2 + *(v18 + 44));
    sub_1001F1160(&qword_100AD8B70, &qword_10082FBC0);
    v32 = *v31;
    v35 = v31[1];
    v36 = v32;
    sub_10079E304();
    type metadata accessor for ChromeStyle(0);
    sub_100296DE0(&qword_100ADB6A0, type metadata accessor for ChromeStyle, &protocol conformance descriptor for ChromeStyle);
    *v15 = sub_10079C484();
    *(v15 + 1) = v33;
    *(v15 + 3) = v37;
    swift_unknownObjectWeakInit();
    swift_unknownObjectRelease();
    v34 = v35;
    *(v15 + 2) = v36;
    *(v15 + 3) = v34;
    type metadata accessor for BookReaderViewModel(0);
    sub_100296DE0(&qword_100AF2550, type metadata accessor for BookReaderViewModel, &unk_100831DD8);
    sub_10079E324();
    (*(v8 + 104))(v13, enum case for ReadingLoupeVisibilityState.medium(_:), v7);
    (*(v8 + 16))(v10, v13, v7);
    sub_10079DFE4();
    (*(v8 + 8))(v13, v7);
    sub_1002966A0(v15, v6, type metadata accessor for ReadingLoupeButtonView);
    swift_storeEnumTagMultiPayload();
    sub_100296DE0(&qword_100AD8C90, type metadata accessor for ReadingLoupeButtonView, &unk_10082FC00);
    sub_1002965F8();
    sub_10079CCA4();
    return sub_100296708(v15, type metadata accessor for ReadingLoupeButtonView);
  }
}

uint64_t sub_100292BB0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10079CF94();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v204 = (&v169 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for REMenuButtonView(0);
  v190 = *(v6 - 8);
  __chkstk_darwin(v6);
  v191 = v7;
  v192 = &v169 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v213 = sub_1001F1160(&qword_100AD8B70, &qword_10082FBC0);
  v184 = *(v213 - 8);
  __chkstk_darwin(v213);
  v182 = &v169 - v8;
  v9 = sub_1001F1160(&unk_100AD1FC0, &unk_10080B850);
  __chkstk_darwin(v9 - 8);
  v173 = &v169 - v10;
  v11 = sub_1001F1160(&qword_100AD8DD8, &qword_1008162B0);
  __chkstk_darwin(v11 - 8);
  v172 = &v169 - v12;
  v176 = sub_1001F1160(&qword_100AD1CA8, &qword_100825A70);
  __chkstk_darwin(v176);
  v175 = (&v169 - v13);
  v174 = sub_1001F1160(&qword_100AD1CA0, &unk_10080B6F0);
  __chkstk_darwin(v174);
  v178 = &v169 - v14;
  v177 = sub_1001F1160(&qword_100AD1C90, &qword_10080B6E8);
  __chkstk_darwin(v177);
  v179 = &v169 - v15;
  v212 = sub_1001F1160(&qword_100AD1C70, &qword_10080B6D8);
  __chkstk_darwin(v212);
  v183 = &v169 - v16;
  v17 = sub_1001F1160(&qword_100AD8DE0, &qword_1008162B8);
  v186 = *(v17 - 8);
  v187 = v17;
  __chkstk_darwin(v17);
  v185 = &v169 - v18;
  v181 = sub_1001F1160(&qword_100AD8D98, &qword_100816250);
  __chkstk_darwin(v181);
  v189 = &v169 - v19;
  v188 = sub_1001F1160(&qword_100AD8D88, &qword_100816248);
  __chkstk_darwin(v188);
  v194 = &v169 - v20;
  v193 = sub_1001F1160(&qword_100AD8D78, &qword_100816240);
  __chkstk_darwin(v193);
  v196 = &v169 - v21;
  v195 = sub_1001F1160(&qword_100AD8D68, &qword_100816238);
  __chkstk_darwin(v195);
  v198 = &v169 - v22;
  v197 = sub_1001F1160(&qword_100AD8D58, &qword_100816230);
  __chkstk_darwin(v197);
  v201 = &v169 - v23;
  v200 = sub_1001F1160(&qword_100AD8D48, &qword_100816228);
  __chkstk_darwin(v200);
  v199 = &v169 - v24;
  v202 = sub_1001F1160(&qword_100AD8D38, &qword_100816220);
  __chkstk_darwin(v202);
  v26 = &v169 - v25;
  v211 = type metadata accessor for BookReaderChromeState(0);
  __chkstk_darwin(v211);
  v210 = &v169 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v208 = sub_10079BC44();
  v28 = *(v208 - 8);
  __chkstk_darwin(v208);
  v207 = &v169 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v32 = &v169 - v31;
  v214 = v6;
  v33 = *(v1 + *(v6 + 36));
  if (v33)
  {
    v34 = qword_100AD17D0;
    v35 = v33;
    if (v34 != -1)
    {
      swift_once();
    }

    v36 = *&static REConstants.floatingButtonHeight;

    if (qword_100AD17C0 != -1)
    {
      swift_once();
    }

    v203 = v26;
    v215 = v1;
    v37 = *&qword_100B23470;
    v171 = sub_10079E404();
    sub_10079FCE4();
    sub_10079FAD4();
    v205 = v3;
    v206 = a1;
    v180 = v4;
    swift_getKeyPath();
    swift_getKeyPath();
    v38 = v35;
    sub_10079B9A4(&v236);

    v39 = v236;
    swift_getKeyPath();
    swift_getKeyPath();
    v40 = v35;
    sub_10079B9A4(v32);

    v42 = v207;
    v41 = v208;
    v170 = *(v28 + 104);
    v170(v207, enum case for ColorScheme.dark(_:), v208);
    v43 = sub_10079BC34();
    v44 = *(v28 + 8);
    v44(v42, v41);
    v44(v32, v41);
    v209 = v39;
    if (v43)
    {
      sub_10079E304();
      v45 = v236;
      swift_getKeyPath();
      *&v236 = v45;
      sub_100296DE0(&qword_100AF2550, type metadata accessor for BookReaderViewModel, &unk_100831DD8);
      sub_100797A14();

      v46 = OBJC_IVAR____TtC5Books19BookReaderViewModel__chromeState;
      swift_beginAccess();
      v47 = v210;
      sub_1002966A0(v45 + v46, v210, type metadata accessor for BookReaderChromeState);

      LOBYTE(v46) = *(v47 + *(v211 + 44));
      sub_100296708(v47, type metadata accessor for BookReaderChromeState);
      if (v46)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        v48 = v40;
        sub_10079B9A4(v32);

        v50 = v207;
        v49 = v208;
        v170(v207, enum case for ColorScheme.light(_:), v208);
        sub_10079BC34();
        v44(v50, v49);
        v44(v32, v49);
        v54 = sub_10079DE54();
      }

      else
      {
        v54 = v209;
      }
    }

    else
    {
      sub_10079E304();
      v51 = v236;
      swift_getKeyPath();
      *&v236 = v51;
      sub_100296DE0(&qword_100AF2550, type metadata accessor for BookReaderViewModel, &unk_100831DD8);
      sub_100797A14();

      v52 = OBJC_IVAR____TtC5Books19BookReaderViewModel__chromeState;
      swift_beginAccess();
      v53 = v210;
      sub_1002966A0(v51 + v52, v210, type metadata accessor for BookReaderChromeState);

      LOBYTE(v52) = *(v53 + *(v211 + 44));
      sub_100296708(v53, type metadata accessor for BookReaderChromeState);
      if (v52)
      {
        v54 = _s5Books11ChromeStyleC14_pageTextColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
      }

      else
      {

        v54 = v39;
      }
    }

    if (v171)
    {
      v55 = 7.0;
    }

    else
    {
      v55 = 9.0;
    }

    v56 = v37 / v36;

    sub_10079DFA4();
    v57 = v54;
    v208 = v54;
    v58 = enum case for Image.TemplateRenderingMode.template(_:);
    v59 = sub_10079DF74();
    v60 = *(v59 - 8);
    v61 = v172;
    (*(v60 + 104))(v172, v58, v59);
    (*(v60 + 56))(v61, 0, 1, v59);
    v62 = sub_10079DF44();

    sub_100007840(v61, &qword_100AD8DD8, &qword_1008162B0);
    sub_10079D3F4();
    v63 = sub_10079D3A4();
    v64 = v173;
    (*(*(v63 - 8) + 56))(v173, 1, 1, v63);
    v65 = sub_10079D424();
    sub_100007840(v64, &unk_100AD1FC0, &unk_10080B850);
    KeyPath = swift_getKeyPath();
    v67 = sub_1001F1160(&qword_100AD1CD8, &unk_10080B710);
    v68 = v175;
    v69 = (v175 + *(v67 + 36));
    v70 = *(sub_1001F1160(&qword_100AEE3C0, &qword_1008173A0) + 28);
    v71 = enum case for Image.Scale.large(_:);
    v72 = sub_10079DF84();
    (*(*(v72 - 8) + 104))(v69 + v70, v71, v72);
    *v69 = swift_getKeyPath();
    *v68 = v62;
    v68[1] = KeyPath;
    v68[2] = v65;
    v73 = swift_getKeyPath();
    v74 = (v68 + *(sub_1001F1160(&qword_100AD1CC8, &qword_10080B708) + 36));
    *v74 = v73;
    v74[1] = v57;
    sub_10079E474();
    sub_10079BE54();
    v75 = (v68 + *(v176 + 9));
    v76 = v247[1];
    *v75 = v247[0];
    v75[1] = v76;
    v75[2] = v247[2];
    v77 = sub_10079E414();
    __chkstk_darwin(v77);
    sub_1001F1160(&qword_100AD1CB0, &qword_10080B700);
    sub_1001F1440();
    sub_1001F16F4();
    v78 = v178;
    sub_10079DC54();
    sub_100007840(v68, &qword_100AD1CA8, &qword_100825A70);
    *&v78[*(v174 + 36)] = 256;
    v175 = *(v214 + 40);
    v79 = v213;
    sub_10079E304();
    v80 = v236;
    swift_getKeyPath();
    *&v236 = v80;
    v207 = sub_100296DE0(&qword_100AF2550, type metadata accessor for BookReaderViewModel, &unk_100831DD8);
    sub_100797A14();

    v81 = OBJC_IVAR____TtC5Books19BookReaderViewModel__chromeState;
    swift_beginAccess();
    v176 = type metadata accessor for BookReaderChromeState;
    v82 = v210;
    sub_1002966A0(v80 + v81, v210, type metadata accessor for BookReaderChromeState);

    v83 = v211;
    LODWORD(v81) = *(v82 + *(v211 + 44));
    sub_100296708(v82, type metadata accessor for BookReaderChromeState);
    if (v81)
    {
      v84 = 1.0;
    }

    else
    {
      v84 = BEChromeHiddenScale;
    }

    sub_10079E634();
    v86 = v85;
    v88 = v87;
    v89 = v78;
    v90 = v179;
    sub_10020B3C8(v89, v179, &qword_100AD1CA0, &unk_10080B6F0);
    v91 = v90 + *(v177 + 36);
    *v91 = v84;
    *(v91 + 8) = v84;
    *(v91 + 16) = v86;
    *(v91 + 24) = v88;
    v92 = v215;
    sub_10079E304();
    v93 = v236;
    swift_getKeyPath();
    *&v236 = v93;
    sub_100797A14();

    v94 = OBJC_IVAR____TtC5Books19BookReaderViewModel__chromeState;
    swift_beginAccess();
    sub_1002966A0(v93 + v94, v82, v176);

    LODWORD(v94) = *(v82 + *(v83 + 44));
    sub_100296708(v82, type metadata accessor for BookReaderChromeState);
    if (v94)
    {
      v95 = 1.0;
    }

    else
    {
      v95 = 0.0;
    }

    v96 = v183;
    sub_10020B3C8(v90, v183, &qword_100AD1C90, &qword_10080B6E8);
    *(v96 + *(v212 + 36)) = v95;
    v97 = v182;
    sub_10079E314();
    swift_getKeyPath();
    sub_10079E334();

    (*(v184 + 8))(v97, v79);
    v211 = *(&v236 + 1);
    LODWORD(v213) = v237;
    v98 = v192;
    sub_1002966A0(v92, v192, type metadata accessor for REMenuButtonView);
    v99 = (*(v190 + 80) + 16) & ~*(v190 + 80);
    v100 = swift_allocObject();
    sub_1002973E0(v98, v100 + v99, type metadata accessor for REMenuButtonView);
    v101 = sub_10079E034();
    v102 = v204;
    v103 = v205;
    *v204 = v101;
    v104 = v180;
    (*(v180 + 104))(v102, enum case for PopoverAttachmentAnchor.rect(_:), v103);
    sub_1001F1160(&qword_100AD1C78, &qword_10080B6E0);
    sub_1001F11A8();
    v105 = sub_1001F1234(&qword_100AD1D48, &qword_10080B748);
    v106 = sub_1001F17AC();
    *&v226 = v105;
    *(&v226 + 1) = v106;
    swift_getOpaqueTypeConformance2();
    v107 = v185;
    sub_10079D714();

    (*(v104 + 8))(v102, v103);
    sub_100007840(v96, &qword_100AD1C70, &qword_10080B6D8);
    v108 = sub_10079E474();
    v110 = v109;
    v111 = v189;
    v112 = &v189[*(v181 + 36)];
    sub_100294AC0(v215, v112, v55, v56);
    v113 = (v112 + *(sub_1001F1160(&qword_100AD8DA8, &qword_100816258) + 36));
    *v113 = v108;
    v113[1] = v110;
    (*(v186 + 32))(v111, v107, v187);
    v114 = sub_10079E474();
    v116 = v115;
    sub_100296228(&v217);
    v232 = v223;
    v233 = v224;
    v234 = v225;
    v228 = v219;
    v229 = v220;
    v230 = v221;
    v231 = v222;
    v226 = v217;
    v227 = v218;
    *&v235 = v114;
    *(&v235 + 1) = v116;
    v117 = v111;
    v118 = v194;
    sub_10020B3C8(v117, v194, &qword_100AD8D98, &qword_100816250);
    v119 = (v118 + *(v188 + 36));
    v120 = v233;
    v119[6] = v232;
    v119[7] = v120;
    v121 = v235;
    v119[8] = v234;
    v119[9] = v121;
    v122 = v229;
    v119[2] = v228;
    v119[3] = v122;
    v123 = v231;
    v119[4] = v230;
    v119[5] = v123;
    v124 = v227;
    *v119 = v226;
    v119[1] = v124;
    v242 = v223;
    v243 = v224;
    v244 = v225;
    v238 = v219;
    v239 = v220;
    v240 = v221;
    v241 = v222;
    v236 = v217;
    v237 = v218;
    v245 = v114;
    v246 = v116;
    sub_1000077D8(&v226, &v216, &qword_100AD8DB8, &unk_100816260);
    sub_100007840(&v236, &qword_100AD8DB8, &unk_100816260);
    LOBYTE(v108) = sub_10079D2A4();
    sub_10079BBA4();
    v126 = v125;
    v128 = v127;
    v130 = v129;
    v132 = v131;
    v133 = v196;
    sub_10020B3C8(v118, v196, &qword_100AD8D88, &qword_100816248);
    v134 = v133 + *(v193 + 36);
    *v134 = v108;
    *(v134 + 8) = v126;
    *(v134 + 16) = v128;
    *(v134 + 24) = v130;
    *(v134 + 32) = v132;
    *(v134 + 40) = 0;
    LOBYTE(v108) = sub_10079D2C4();
    sub_10079BBA4();
    v136 = v135;
    v138 = v137;
    v140 = v139;
    v142 = v141;
    v143 = v133;
    v144 = v198;
    sub_10020B3C8(v143, v198, &qword_100AD8D78, &qword_100816240);
    v145 = v144 + *(v195 + 36);
    *v145 = v108;
    *(v145 + 8) = v136;
    *(v145 + 16) = v138;
    *(v145 + 24) = v140;
    *(v145 + 32) = v142;
    *(v145 + 40) = 0;
    LOBYTE(v108) = sub_10079D2E4();
    sub_10079BBA4();
    v147 = v146;
    v149 = v148;
    v151 = v150;
    v153 = v152;
    v154 = v144;
    v155 = v201;
    sub_10020B3C8(v154, v201, &qword_100AD8D68, &qword_100816238);
    v156 = v155 + *(v197 + 36);
    *v156 = v108;
    *(v156 + 8) = v147;
    *(v156 + 16) = v149;
    *(v156 + 24) = v151;
    *(v156 + 32) = v153;
    *(v156 + 40) = 0;
    LOBYTE(v108) = sub_10079D2B4();
    sub_10079BBA4();
    v158 = v157;
    v160 = v159;
    v162 = v161;
    v164 = v163;
    v165 = v199;
    sub_10020B3C8(v155, v199, &qword_100AD8D58, &qword_100816230);
    v166 = v165 + *(v200 + 36);
    *v166 = v108;
    *(v166 + 8) = v158;
    *(v166 + 16) = v160;
    *(v166 + 24) = v162;
    *(v166 + 32) = v164;
    *(v166 + 40) = 0;
    v167 = v203;
    sub_10020B3C8(v165, v203, &qword_100AD8D48, &qword_100816228);
    *(v167 + *(v202 + 36)) = 0;
    sub_1002968DC();
    sub_10079D944();

    return sub_100007840(v167, &qword_100AD8D38, &qword_100816220);
  }

  else
  {
    type metadata accessor for ChromeStyle(0);
    sub_100296DE0(&qword_100ADB6A0, type metadata accessor for ChromeStyle, &protocol conformance descriptor for ChromeStyle);
    result = sub_10079C474();
    __break(1u);
  }

  return result;
}

uint64_t sub_10029445C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v59 = sub_10079CEA4();
  v57 = *(v59 - 8);
  __chkstk_darwin(v59);
  v56 = v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10079D4D4();
  v54 = *(v4 - 8);
  v55 = v4;
  __chkstk_darwin(v4);
  v53 = v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_100796CF4();
  v6 = *(v49 - 8);
  __chkstk_darwin(v49);
  v48 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v43 - v9;
  v44 = sub_1007A21D4();
  v11 = *(v44 - 8);
  __chkstk_darwin(v44);
  v13 = v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v43 - v15;
  v50 = type metadata accessor for TipContentView(0) - 8;
  __chkstk_darwin(v50);
  v18 = (v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v51 = sub_1001F1160(&qword_100AD1D48, &qword_10080B748);
  __chkstk_darwin(v51);
  v52 = v43 - v19;
  v20 = type metadata accessor for REMenuButtonView(0);
  v43[2] = *(v20 + 40);
  v21 = v20;
  v47 = v20;
  v43[1] = sub_1001F1160(&qword_100AD8B70, &qword_10082FBC0);
  v43[0] = a1;
  sub_10079E304();
  v22 = *(v60 + OBJC_IVAR____TtC5Books19BookReaderViewModel_bookLanguage);
  v45 = *(v60 + OBJC_IVAR____TtC5Books19BookReaderViewModel_bookLanguage + 8);
  v46 = v22;

  v23 = *(a1 + *(v21 + 52));
  sub_1007A2154();
  sub_100796C94();
  v24 = v44;
  (*(v11 + 16))(v13, v16, v44);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v26 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v28 = v48;
  v27 = v49;
  (*(v6 + 16))(v48, v10, v49);
  v29 = sub_1007A22D4(v13, 0, 0, v26, v28, "Tooltip for the action menu affordance", 38, 2);
  v31 = v30;
  (*(v6 + 8))(v10, v27);
  (*(v11 + 8))(v16, v24);
  v32 = v43[0];
  sub_10079E304();
  v33 = v60;
  type metadata accessor for ChromeStyle(0);
  sub_100296DE0(&qword_100ADB6A0, type metadata accessor for ChromeStyle, &protocol conformance descriptor for ChromeStyle);
  *v18 = sub_10079C484();
  v18[1] = v34;
  v35 = v45;
  v18[2] = v46;
  v18[3] = v35;
  v18[4] = v23;
  v18[5] = v29;
  v18[6] = v31;
  v18[7] = sub_1002973D8;
  v18[8] = v33;
  v60 = 0x4079E00000000000;
  (*(v54 + 104))(v53, enum case for Font.TextStyle.largeTitle(_:), v55);
  sub_100247DCC();
  sub_10079BDD4();
  v36 = *(v32 + *(v47 + 36));
  if (v36)
  {
    v37 = v36;
    v38 = sub_10079B8A4();
    v39 = v52;
    sub_1002973E0(v18, v52, type metadata accessor for TipContentView);
    v40 = (v39 + *(v51 + 36));
    *v40 = v38;
    v40[1] = v36;
    v41 = v56;
    sub_10079CE94();
    sub_1001F17AC();
    sub_10079DAA4();
    (*(v57 + 8))(v41, v59);
    return sub_100007840(v39, &qword_100AD1D48, &qword_10080B748);
  }

  else
  {
    result = sub_10079C474();
    __break(1u);
  }

  return result;
}

uint64_t sub_100294AC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v59 = sub_1001F1160(&qword_100AD8DE8, &qword_100816478);
  __chkstk_darwin(v59);
  v9 = (v56 - v8);
  v61 = sub_1001F1160(&qword_100AD8DF0, &qword_100816480);
  __chkstk_darwin(v61);
  v64 = v56 - v10;
  v67 = sub_1001F1160(&qword_100AD8DF8, &qword_100816488);
  v66 = *(v67 - 8);
  __chkstk_darwin(v67);
  v62 = v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v63 = v56 - v13;
  v14 = type metadata accessor for BookReaderChromeState(0);
  __chkstk_darwin(v14);
  v16 = v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(type metadata accessor for REMenuButtonView(0) + 40);
  v18 = sub_1001F1160(&qword_100AD8B70, &qword_10082FBC0);
  v65 = v17;
  v19 = v18;
  sub_10079E304();
  v20 = v72;
  swift_getKeyPath();
  *&v72 = v20;
  v21 = sub_100296DE0(&qword_100AF2550, type metadata accessor for BookReaderViewModel, &unk_100831DD8);
  sub_100797A14();

  v22 = OBJC_IVAR____TtC5Books19BookReaderViewModel__chromeState;
  swift_beginAccess();
  sub_1002966A0(v20 + v22, v16, type metadata accessor for BookReaderChromeState);

  v60 = v14;
  LODWORD(v22) = v16[*(v14 + 44) + 1];
  sub_100296708(v16, type metadata accessor for BookReaderChromeState);
  if (v22 == 1)
  {
    v58 = a2;
    *v9 = sub_10079E474();
    v9[1] = v23;
    v24 = sub_1001F1160(&qword_100AD8E00, &qword_100816490);
    sub_1002952E4(a1, v9 + *(v24 + 44));
    if (qword_100AD17D0 != -1)
    {
      swift_once();
    }

    sub_10079E474();
    sub_10079BE54();
    v25 = (v9 + *(v59 + 9));
    v26 = v73;
    v27 = v74;
    *v25 = v72;
    v25[1] = v26;
    v25[2] = v27;
    v56[2] = v19;
    sub_10079E304();
    v28 = v71;
    swift_getKeyPath();
    v71 = v28;
    v56[1] = v21;
    sub_100797A14();

    v29 = OBJC_IVAR____TtC5Books19BookReaderViewModel__chromeState;
    swift_beginAccess();
    v59 = v9;
    v57 = type metadata accessor for BookReaderChromeState;
    sub_1002966A0(v28 + v29, v16, type metadata accessor for BookReaderChromeState);

    v30 = v60;
    LODWORD(v29) = v16[*(v60 + 44)];
    v56[0] = type metadata accessor for BookReaderChromeState;
    sub_100296708(v16, type metadata accessor for BookReaderChromeState);
    if (v29)
    {
      v31 = a3;
    }

    else
    {
      v31 = 0.0;
    }

    sub_10079E304();
    v32 = v70;
    swift_getKeyPath();
    v70 = v32;
    sub_100797A14();

    v33 = OBJC_IVAR____TtC5Books19BookReaderViewModel__chromeState;
    swift_beginAccess();
    sub_1002966A0(v32 + v33, v16, type metadata accessor for BookReaderChromeState);

    LODWORD(v33) = v16[*(v30 + 44)];
    v34 = v56[0];
    sub_100296708(v16, v56[0]);
    if (v33)
    {
      v35 = -a3;
    }

    else
    {
      v35 = 0.0;
    }

    v36 = v64;
    sub_10020B3C8(v59, v64, &qword_100AD8DE8, &qword_100816478);
    v37 = (v36 + *(v61 + 36));
    *v37 = v31;
    v37[1] = v35;
    sub_10079E304();
    v38 = v69[0];
    swift_getKeyPath();
    v69[0] = v38;
    sub_100797A14();

    v39 = OBJC_IVAR____TtC5Books19BookReaderViewModel__chromeState;
    swift_beginAccess();
    v40 = v57;
    sub_1002966A0(v38 + v39, v16, v57);

    LODWORD(v39) = v16[*(v30 + 44)];
    sub_100296708(v16, v34);
    if (v39)
    {
      v41 = a4;
    }

    else
    {
      v41 = 1.0;
    }

    sub_10079E304();
    v42 = v68[0];
    swift_getKeyPath();
    v68[0] = v42;
    sub_100797A14();

    v43 = OBJC_IVAR____TtC5Books19BookReaderViewModel__chromeState;
    swift_beginAccess();
    sub_1002966A0(v42 + v43, v16, v40);

    LODWORD(v43) = v16[*(v30 + 44)];
    sub_100296708(v16, v34);
    if (v43)
    {
      v44 = a4;
    }

    else
    {
      v44 = 1.0;
    }

    sub_10079E5E4();
    v46 = v45;
    v48 = v47;
    v49 = v62;
    sub_10020B3C8(v36, v62, &qword_100AD8DF0, &qword_100816480);
    v50 = v67;
    v51 = v49 + *(v67 + 36);
    *v51 = v41;
    *(v51 + 8) = v44;
    *(v51 + 16) = v46;
    *(v51 + 24) = v48;
    v52 = v49;
    v53 = v63;
    sub_10020B3C8(v52, v63, &qword_100AD8DF8, &qword_100816488);
    a2 = v58;
    sub_10020B3C8(v53, v58, &qword_100AD8DF8, &qword_100816488);
    v54 = 0;
  }

  else
  {
    v54 = 1;
    v50 = v67;
  }

  return (*(v66 + 56))(a2, v54, 1, v50);
}

uint64_t sub_1002952E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v55 = sub_10079CAE4();
  v3 = *(v55 - 8);
  __chkstk_darwin(v55);
  v54 = v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v52 = v49 - v6;
  v7 = sub_1001F1160(&qword_100AD8E08, &qword_100816498);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v50 = v49 - v9;
  v10 = sub_1001F1160(&qword_100AD8E10, &qword_1008164A0);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v56 = v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v49 - v14;
  __chkstk_darwin(v16);
  v53 = v49 - v17;
  v18 = sub_1001F1160(&qword_100AD8E18, &qword_1008164A8);
  v19 = v18 - 8;
  __chkstk_darwin(v18);
  v51 = v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = v49 - v22;
  sub_10079E414();
  v49[1] = a1;
  v59 = a1;
  v58 = a1;
  sub_1001F1160(&qword_100AD8E20, &qword_1008164B0);
  sub_100297384();
  sub_100005920(&qword_100AD8E30, &qword_100AD8E20, &qword_1008164B0, &protocol conformance descriptor for StrokeShapeView<A, B, C>);
  sub_10079DC54();
  v24 = sub_10079DD64();
  v25 = &v23[*(v19 + 44)];
  *v25 = v24;
  *(v25 + 4) = 256;
  v60 = sub_10079DF24();
  sub_10079E414();
  sub_1001F1160(&qword_100AD1CD8, &unk_10080B710);
  sub_1001F1160(&qword_100AD1CE8, &unk_100825AB0);
  sub_1001F1584();
  sub_1001F163C();
  v26 = v50;
  sub_10079DC54();

  v27 = _s5Books11ChromeStyleC20_pageBackgroundColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
  KeyPath = swift_getKeyPath();
  v29 = (v26 + *(v8 + 44));
  *v29 = KeyPath;
  v29[1] = v27;
  v30 = v52;
  sub_10029011C(v52);
  v32 = v54;
  v31 = v55;
  (*(v3 + 104))(v54, enum case for ContentSizeCategory.large(_:), v55);
  sub_100391B98(v30, v32);
  v33 = *(v3 + 8);
  v33(v32, v31);
  v33(v30, v31);
  LOBYTE(v27) = sub_10079D294();
  sub_10079BBA4();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  sub_10020B3C8(v26, v15, &qword_100AD8E08, &qword_100816498);
  v42 = &v15[*(v11 + 44)];
  *v42 = v27;
  *(v42 + 1) = v35;
  *(v42 + 2) = v37;
  *(v42 + 3) = v39;
  *(v42 + 4) = v41;
  v42[40] = 0;
  v43 = v53;
  sub_10020B3C8(v15, v53, &qword_100AD8E10, &qword_1008164A0);
  v44 = v51;
  sub_1000077D8(v23, v51, &qword_100AD8E18, &qword_1008164A8);
  v45 = v56;
  sub_1000077D8(v43, v56, &qword_100AD8E10, &qword_1008164A0);
  v46 = v57;
  sub_1000077D8(v44, v57, &qword_100AD8E18, &qword_1008164A8);
  v47 = sub_1001F1160(&qword_100AD8E38, &qword_1008164B8);
  sub_1000077D8(v45, v46 + *(v47 + 48), &qword_100AD8E10, &qword_1008164A0);
  sub_100007840(v43, &qword_100AD8E10, &qword_1008164A0);
  sub_100007840(v23, &qword_100AD8E18, &qword_1008164A8);
  sub_100007840(v45, &qword_100AD8E10, &qword_1008164A0);
  return sub_100007840(v44, &qword_100AD8E18, &qword_1008164A8);
}

double sub_100295900@<D0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for BookReaderChromeState(0);
  __chkstk_darwin(v2);
  v4 = &v15[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = _s5Books11ChromeStyleC20_pageBackgroundColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
  type metadata accessor for REMenuButtonView(0);
  sub_1001F1160(&qword_100AD8B70, &qword_10082FBC0);
  sub_10079E304();
  v6 = v16;
  swift_getKeyPath();
  v16 = v6;
  sub_100296DE0(&qword_100AF2550, type metadata accessor for BookReaderViewModel, &unk_100831DD8);
  sub_100797A14();

  v7 = OBJC_IVAR____TtC5Books19BookReaderViewModel__chromeState;
  swift_beginAccess();
  sub_1002966A0(v6 + v7, v4, type metadata accessor for BookReaderChromeState);

  sub_100296708(v4, type metadata accessor for BookReaderChromeState);
  sub_10079BCF4();
  v8 = v16;
  v9 = v18;
  v10 = v19;
  v11 = v20;
  v12 = sub_10079E474();
  result = v17;
  *a1 = v8;
  *(a1 + 8) = result;
  *(a1 + 16) = v9;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = v5;
  *(a1 + 48) = 256;
  *(a1 + 56) = v12;
  *(a1 + 64) = v14;
  return result;
}

uint64_t sub_100295B10@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for BookReaderChromeState(0);
  __chkstk_darwin(v4);
  v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(a1 + *(type metadata accessor for REMenuButtonView(0) + 36));
  if (v7)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v8 = v7;
    sub_10079B9A4(v20);

    v9 = v20[0];
    sub_1001F1160(&qword_100AD8B70, &qword_10082FBC0);
    sub_10079E304();
    v10 = v20[0];
    swift_getKeyPath();
    v20[0] = v10;
    sub_100296DE0(&qword_100AF2550, type metadata accessor for BookReaderViewModel, &unk_100831DD8);
    sub_100797A14();

    v11 = OBJC_IVAR____TtC5Books19BookReaderViewModel__chromeState;
    swift_beginAccess();
    sub_1002966A0(v10 + v11, v6, type metadata accessor for BookReaderChromeState);

    sub_100296708(v6, type metadata accessor for BookReaderChromeState);
    sub_10079BCF4();
    v12 = v20[0];
    v13 = v20[2];
    v14 = v20[3];
    v15 = v20[4];
    result = sub_10079E474();
    v17 = v20[1];
    *a2 = v12;
    *(a2 + 8) = v17;
    *(a2 + 16) = v13;
    *(a2 + 24) = v14;
    *(a2 + 32) = v15;
    *(a2 + 40) = v9;
    *(a2 + 48) = 256;
    *(a2 + 56) = result;
    *(a2 + 64) = v18;
  }

  else
  {
    type metadata accessor for ChromeStyle(0);
    sub_100296DE0(&qword_100ADB6A0, type metadata accessor for ChromeStyle, &protocol conformance descriptor for ChromeStyle);
    result = sub_10079C474();
    __break(1u);
  }

  return result;
}

uint64_t sub_100295DDC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1001F1160(&unk_100AD1FC0, &unk_10080B850);
  __chkstk_darwin(v4 - 8);
  v6 = &v21 - v5;
  v7 = sub_10079D4D4();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  (*(v8 + 104))(v11, enum case for Font.TextStyle.subheadline(_:), v7, v9);
  v13 = sub_10079D3A4();
  (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
  v14 = sub_10079D434();
  sub_100007840(v6, &unk_100AD1FC0, &unk_10080B850);
  (*(v8 + 8))(v11, v7);
  KeyPath = swift_getKeyPath();
  v16 = (a2 + *(sub_1001F1160(&qword_100AD1CD8, &unk_10080B710) + 36));
  v17 = *(sub_1001F1160(&qword_100AEE3C0, &qword_1008173A0) + 28);
  v18 = enum case for Image.Scale.large(_:);
  v19 = sub_10079DF84();
  (*(*(v19 - 8) + 104))(v16 + v17, v18, v19);
  *v16 = swift_getKeyPath();
  *a2 = v12;
  a2[1] = KeyPath;
  a2[2] = v14;
}

uint64_t sub_100296048@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1001F1160(&unk_100AD1FC0, &unk_10080B850);
  __chkstk_darwin(v4 - 8);
  v6 = &v17 - v5;
  v7 = sub_10079D4D4();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  (*(v8 + 104))(v11, enum case for Font.TextStyle.footnote(_:), v7, v9);
  v13 = sub_10079D3A4();
  (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
  sub_10079D3F4();
  v14 = sub_10079D434();
  sub_100007840(v6, &unk_100AD1FC0, &unk_10080B850);
  (*(v8 + 8))(v11, v7);
  KeyPath = swift_getKeyPath();
  *a2 = v12;
  a2[1] = KeyPath;
  a2[2] = v14;
}

double sub_100296228@<D0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for REMenuButtonView(0) + 48);
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  sub_1001F1160(&qword_100AD8B70, &qword_10082FBC0);
  sub_10079E304();
  swift_getKeyPath();
  sub_100296DE0(&qword_100AF2550, type metadata accessor for BookReaderViewModel, &unk_100831DD8);
  sub_100797A14();

  v6 = swift_unknownObjectWeakLoadStrong();
  v7 = *(v10 + 152);

  v8 = swift_allocObject();
  *(v8 + 16) = Strong;
  *(v8 + 24) = v5;
  swift_unknownObjectRetain();
  sub_10079E474();
  sub_10079BE54();
  swift_unknownObjectRelease();
  *a1 = vdupq_n_s64(0x4052000000000000uLL);
  *(a1 + 16) = 0;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = v10;
  *(a1 + 40) = sub_10029734C;
  *(a1 + 48) = v8;
  *(a1 + 104) = v11;
  result = *&v12;
  *(a1 + 120) = v12;
  *(a1 + 136) = 0;
  return result;
}

uint64_t sub_1002964BC@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for REMenuButtonView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_100292658(a1, v6, a2);
}

unint64_t sub_10029653C()
{
  result = qword_100AD8C88;
  if (!qword_100AD8C88)
  {
    sub_1001F1234(&qword_100AD8C78, &qword_100816180);
    sub_100296DE0(&qword_100AD8C90, type metadata accessor for ReadingLoupeButtonView, &unk_10082FC00);
    sub_1002965F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD8C88);
  }

  return result;
}

unint64_t sub_1002965F8()
{
  result = qword_100AD8C98;
  if (!qword_100AD8C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD8C98);
  }

  return result;
}

unint64_t sub_10029664C()
{
  result = qword_100AD8CA0;
  if (!qword_100AD8CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD8CA0);
  }

  return result;
}

uint64_t sub_1002966A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100296708(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100296768()
{
  result = qword_100AD8D18;
  if (!qword_100AD8D18)
  {
    sub_1001F1234(&qword_100AD8CD0, &qword_1008161D0);
    sub_100296820();
    sub_100005920(&qword_100AD8DC0, &qword_100AD8D10, &qword_100816210, &protocol conformance descriptor for _ContentShapeKindModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD8D18);
  }

  return result;
}

unint64_t sub_100296820()
{
  result = qword_100AD8D20;
  if (!qword_100AD8D20)
  {
    sub_1001F1234(&qword_100AD8D28, &qword_100816218);
    sub_1002968DC();
    sub_100296DE0(&qword_100AF45F0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD8D20);
  }

  return result;
}

unint64_t sub_1002968DC()
{
  result = qword_100AD8D30;
  if (!qword_100AD8D30)
  {
    sub_1001F1234(&qword_100AD8D38, &qword_100816220);
    sub_100296994();
    sub_100005920(&qword_100AD5558, &qword_100AD5560, &qword_100810250, &protocol conformance descriptor for _ContentShapeModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD8D30);
  }

  return result;
}

unint64_t sub_100296994()
{
  result = qword_100AD8D40;
  if (!qword_100AD8D40)
  {
    sub_1001F1234(&qword_100AD8D48, &qword_100816228);
    sub_100296A20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD8D40);
  }

  return result;
}

unint64_t sub_100296A20()
{
  result = qword_100AD8D50;
  if (!qword_100AD8D50)
  {
    sub_1001F1234(&qword_100AD8D58, &qword_100816230);
    sub_100296AAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD8D50);
  }

  return result;
}

unint64_t sub_100296AAC()
{
  result = qword_100AD8D60;
  if (!qword_100AD8D60)
  {
    sub_1001F1234(&qword_100AD8D68, &qword_100816238);
    sub_100296B38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD8D60);
  }

  return result;
}

unint64_t sub_100296B38()
{
  result = qword_100AD8D70;
  if (!qword_100AD8D70)
  {
    sub_1001F1234(&qword_100AD8D78, &qword_100816240);
    sub_100296BC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD8D70);
  }

  return result;
}

unint64_t sub_100296BC4()
{
  result = qword_100AD8D80;
  if (!qword_100AD8D80)
  {
    sub_1001F1234(&qword_100AD8D88, &qword_100816248);
    sub_100296C7C();
    sub_100005920(&qword_100AD8DB0, &qword_100AD8DB8, &unk_100816260, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD8D80);
  }

  return result;
}

unint64_t sub_100296C7C()
{
  result = qword_100AD8D90;
  if (!qword_100AD8D90)
  {
    sub_1001F1234(&qword_100AD8D98, &qword_100816250);
    sub_1001F1234(&qword_100AD1C70, &qword_10080B6D8);
    sub_1001F1234(&qword_100AD1C78, &qword_10080B6E0);
    sub_1001F11A8();
    sub_1001F1234(&qword_100AD1D48, &qword_10080B748);
    sub_1001F17AC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_100005920(&qword_100AD8DA0, &qword_100AD8DA8, &qword_100816258, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD8D90);
  }

  return result;
}

uint64_t sub_100296DE0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100296E28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10079E3B4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10079E3A4();
  v8 = a2 + *(sub_1001F1160(&qword_100AD1CB0, &qword_10080B700) + 36);
  sub_10079E3D4();
  (*(v5 + 8))(v7, v4);
  *(v8 + *(sub_1001F1160(&qword_100AD1D30, &qword_10082FC90) + 56)) = 256;
  return sub_1000077D8(a1, a2, &qword_100AD1CA8, &qword_100825A70);
}

uint64_t sub_100296F64()
{
  v1 = type metadata accessor for REMenuButtonView(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = v0 + v2;
  sub_1001F1160(&unk_100ADB4C0, &qword_100813DC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_10079CEE4();
    v5 = *(v4 - 8);
    if (!(*(v5 + 48))(v0 + v2, 1, v4))
    {
      (*(v5 + 8))(v0 + v2, v4);
    }
  }

  else
  {
  }

  v6 = v1[5];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_10079CEE4();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v3 + v6, 1, v7))
    {
      (*(v8 + 8))(v3 + v6, v7);
    }
  }

  else
  {
  }

  v9 = v1[6];
  sub_1001F1160(&unk_100ADB740, &qword_100819F00);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_10079C104();
    (*(*(v10 - 8) + 8))(v3 + v9, v10);
  }

  else
  {
  }

  sub_10020B534(*(v3 + v1[7]), *(v3 + v1[7] + 8));
  v11 = v1[8];
  sub_1001F1160(&unk_100ADB4E0, &qword_100815F30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_10079CAE4();
    (*(*(v12 - 8) + 8))(v3 + v11, v12);
  }

  else
  {
  }

  v13 = v1[10];
  v14 = sub_1001F1160(&qword_100AD8B70, &qword_10082FBC0);
  (*(*(v14 - 8) + 8))(v3 + v13, v14);
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1002972DC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for REMenuButtonView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_10029445C(v4, a1);
}

void sub_10029734C()
{
  if (*(v0 + 16))
  {
    sub_1006ABF84();
  }
}

unint64_t sub_100297384()
{
  result = qword_100AD8E28;
  if (!qword_100AD8E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD8E28);
  }

  return result;
}

uint64_t sub_1002973E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_10029745C()
{
  result = qword_100AD8E50;
  if (!qword_100AD8E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD8E50);
  }

  return result;
}

unint64_t sub_1002974B4()
{
  result = qword_100AD8E58;
  if (!qword_100AD8E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD8E58);
  }

  return result;
}

uint64_t sub_100297508()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100AD8E78);
  sub_100008B98(v0, qword_100AD8E78);
  sub_10001389C();
  return sub_1007A33F4();
}

double sub_10029757C()
{
  swift_allocObject();
  swift_weakInit();

  sub_1001F1160(&qword_100AD8FF8, &qword_1008165F0);
  sub_100298208(&qword_100AD9000, &qword_100AD8FF8, &qword_1008165F0);
  sub_10079BB04();

  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  swift_allocObject();
  swift_weakInit();

  sub_1001F1160(&unk_100AEA190, &qword_1008165F8);
  sub_100298208(&unk_100AF25F0, &unk_100AEA190, &qword_1008165F8);
  sub_10079BB04();

  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  return result;
}

void sub_10029775C(unsigned __int8 *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v4 = Strong;
  v5 = a1[2];
  v6 = sub_10079F914();
  v8 = v7;
  if (v6 == sub_10079F914() && v8 == v9)
  {
  }

  else
  {
    v11 = sub_1007A3AB4();

    if ((v11 & 1) == 0)
    {
LABEL_16:
      sub_100297BF4(a1);
      v4[16] = v5;
      v4[17] = a1[3];
      v4[18] = a1[4];
      v21 = sub_1007A0A14();
      v23 = v22;
      if (v21 == sub_1007A0A14() && v23 == v24)
      {
        v25 = 1;
      }

      else
      {
        v25 = sub_1007A3AB4();
      }

      v4[19] = v25 & 1;

      return;
    }
  }

  v12 = sub_10079EF74();
  v14 = v13;
  if (v12 == sub_10079EF74() && v14 == v15)
  {
  }

  else
  {
    v16 = sub_1007A3AB4();

    if ((v16 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  v17 = sub_1007A0A14();
  v19 = v18;
  if (v17 == sub_1007A0A14() && v19 == v20)
  {

    if ((v4[19] & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v26 = sub_1007A3AB4() & 1;

    if (v26 != v4[19])
    {
      goto LABEL_16;
    }
  }

  if (qword_100AD1368 != -1)
  {
    swift_once();
  }

  v27 = sub_10079ACE4();
  sub_100008B98(v27, qword_100AD8E78);
  v28 = sub_10079ACC4();
  v29 = sub_1007A29A4();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&_mh_execute_header, v28, v29, "Reading state changed, but not visibly, ignoring", v30, 2u);
  }
}

void sub_100297A70(uint64_t a1, uint64_t a2)
{
  v3 = sub_10079F734();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    (*(v4 + 16))(v6, a1, v3);
    if ((*(v4 + 88))(v6, v3) == enum case for BookContentLayoutController.LayoutState.done(_:))
    {
      (*(v4 + 8))(v6, v3);

      sub_1002D7F04();
    }

    else
    {

      (*(v4 + 8))(v6, v3);
    }
  }
}

void sub_100297BF4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for _BookReaderInteractorState(0);
  __chkstk_darwin(v4 - 8);
  v6 = v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v48 - v8;
  __chkstk_darwin(v10);
  v12 = v48 - v11;
  __chkstk_darwin(v13);
  v15 = v48 - v14;
  if (qword_100AD1368 != -1)
  {
    swift_once();
  }

  v16 = sub_10079ACE4();
  v17 = sub_100008B98(v16, qword_100AD8E78);
  sub_100298138(a1, v15);
  sub_100298138(a1, v12);
  sub_100298138(a1, v9);
  sub_100298138(a1, v6);
  v18 = sub_10079ACC4();
  v19 = sub_1007A29A4();
  if (os_log_type_enabled(v18, v19))
  {
    v48[1] = v17;
    v48[2] = v2;
    v20 = swift_slowAlloc();
    v48[0] = swift_slowAlloc();
    v49 = v48[0];
    *v20 = 136446978;
    v21 = sub_10079F8E4();
    v23 = v22;
    sub_10029819C(v15);
    v24 = sub_1000070F4(v21, v23, &v49);

    *(v20 + 4) = v24;
    *(v20 + 12) = 2082;
    v25 = sub_10079EF64();
    v27 = v26;
    sub_10029819C(v12);
    v28 = sub_1000070F4(v25, v27, &v49);

    *(v20 + 14) = v28;
    *(v20 + 22) = 1024;
    LODWORD(v27) = v9[4];
    sub_10029819C(v9);
    *(v20 + 24) = v27;
    *(v20 + 28) = 1024;
    v29 = sub_1007A0A14();
    v31 = v30;
    if (v29 == sub_1007A0A14() && v31 == v32)
    {

      v33 = 1;
    }

    else
    {
      v34 = sub_1007A3AB4();

      v33 = v34 & 1;
    }

    sub_10029819C(v6);
    *(v20 + 30) = v33;
    _os_log_impl(&_mh_execute_header, v18, v19, "Handling Change to %{public}s-%{public}s, darkBackground:%{BOOL}d, scrollEnabled: %{BOOL}d", v20, 0x22u);
    swift_arrayDestroy();
  }

  else
  {
    sub_10029819C(v6);
    sub_10029819C(v9);

    sub_10029819C(v12);
    sub_10029819C(v15);
  }

  sub_1002DA06C();
  v35 = sub_10079F914();
  v37 = v36;
  if (v35 == sub_10079F914() && v37 == v38)
  {
  }

  else
  {
    v39 = sub_1007A3AB4();

    if ((v39 & 1) == 0)
    {
      return;
    }
  }

  v40 = sub_10079EF74();
  v42 = v41;
  if (v40 == sub_10079EF74() && v42 == v43)
  {
  }

  else
  {
    v44 = sub_1007A3AB4();

    if ((v44 & 1) == 0)
    {
      v45 = sub_10079ACC4();
      v46 = sub_1007A29A4();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        *v47 = 0;
        _os_log_impl(&_mh_execute_header, v45, v46, "Handling Variant Change, without waiting for layout pass", v47, 2u);
      }

      sub_1002D7F04();
    }
  }
}

uint64_t sub_1002980C4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100298138(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _BookReaderInteractorState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10029819C(uint64_t a1)
{
  v2 = type metadata accessor for _BookReaderInteractorState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100298208(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1001F1234(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10029825C()
{
  sub_10001389C();
  result = sub_1007A33B4();
  qword_100AD9008 = result;
  return result;
}

id static OS_os_log.sampleHeader.getter()
{
  if (qword_100AD1370 != -1)
  {
    swift_once();
  }

  v1 = qword_100AD9008;

  return v1;
}

id static OS_os_log.serviceCenter.getter()
{
  if (qword_100AD1378 != -1)
  {
    swift_once();
  }

  v1 = qword_100AD9010;

  return v1;
}

id LanguageUtilities.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LanguageUtilities();
  return objc_msgSendSuper2(&v2, "init");
}

id LanguageUtilities.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for LanguageUtilities();
  return objc_msgSendSuper2(&v4, "dealloc");
}

id _s5Books17LanguageUtilitiesC08dominantB03forSSSgSo7JSValueC_tFZ_0(void *a1)
{
  if (![a1 isString])
  {
    return 0;
  }

  result = [a1 toString];
  if (!result)
  {
    return result;
  }

  v3 = result;
  v4 = [objc_opt_self() dominantLanguageForString:result];

  if (!v4)
  {
    return 0;
  }

  v5 = sub_1007A2254();

  return v5;
}

uint64_t sub_100298570()
{
  v0 = sub_1001F1160(&unk_100AD9108, &qword_100820550);
  sub_100009A38(v0, qword_100AD9040);
  sub_100008B98(v0, qword_100AD9040);
  v1 = [objc_opt_self() bu_groupUserDefaults];
  return sub_100798F14();
}

uint64_t sub_100298620()
{
  v0 = sub_1001F1160(&unk_100AD9108, &qword_100820550);
  sub_100009A38(v0, qword_100AD9058);
  sub_100008B98(v0, qword_100AD9058);
  v1 = [objc_opt_self() bu_groupUserDefaults];
  return sub_100798F14();
}

uint64_t sub_1002986F4(unsigned __int8 a1)
{
  v2 = sub_100796CF4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v27[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v27[-v7];
  v9 = sub_1007A21D4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v27[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v15 = &v27[-v14];
  if (a1 > 1u)
  {
    sub_1007A2154();
    sub_100796C94();
    (*(v10 + 16))(v12, v15, v9);
    type metadata accessor for BundleFinder();
    if (a1 == 2)
    {
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v20 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
      (*(v3 + 16))(v5, v8, v2);
      v18 = sub_1007A22D4(v12, 0, 0, v20, v5, "Match Device appearance option title (iOS)", 42, 2);
    }

    else
    {
      v23 = swift_getObjCClassFromMetadata();
      v24 = [objc_opt_self() bundleForClass:v23];
      (*(v3 + 16))(v5, v8, v2);
      v18 = sub_1007A22D4(v12, 0, 0, v24, v5, "Match Surrounding Lighting appearance option title", 50, 2);
    }
  }

  else
  {
    sub_1007A2154();
    sub_100796C94();
    (*(v10 + 16))(v12, v15, v9);
    type metadata accessor for BundleFinder();
    if (a1)
    {
      v21 = swift_getObjCClassFromMetadata();
      v22 = [objc_opt_self() bundleForClass:v21];
      (*(v3 + 16))(v5, v8, v2);
      v18 = sub_1007A22D4(v12, 0, 0, v22, v5, "Dark mode appearance option title", 33, 2);
    }

    else
    {
      v16 = swift_getObjCClassFromMetadata();
      v17 = [objc_opt_self() bundleForClass:v16];
      (*(v3 + 16))(v5, v8, v2);
      v18 = sub_1007A22D4(v12, 0, 0, v17, v5, "Appearance Options Menu Name", 28, 2);
    }
  }

  v25 = v18;
  (*(v3 + 8))(v8, v2);
  (*(v10 + 8))(v15, v9);
  return v25;
}

uint64_t sub_100298BC8(unsigned __int8 a1)
{
  v2 = a1;
  v3 = sub_100796CF4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v21[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v21[-v8];
  v10 = sub_1007A21D4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v21[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v16 = &v21[-v15];
  if (v2 == 3)
  {
    sub_1007A2154();
    sub_100796C94();
    (*(v11 + 16))(v13, v16, v10);
    type metadata accessor for BundleFinder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v18 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    (*(v4 + 16))(v6, v9, v3);
    v19 = sub_1007A22D4(v13, 0, 0, v18, v6, "Match Surrounding Lighting appearance option shorter title with a line break if needed", 86, 2);
    (*(v4 + 8))(v9, v3);
    (*(v11 + 8))(v16, v10);
    return v19;
  }

  else
  {

    return sub_1002986F4(a1);
  }
}

uint64_t sub_100298E88(uint64_t a1, char a2)
{
  **(*(*sub_10000E3E8((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;

  return swift_continuation_resume();
}

uint64_t sub_100298EE4()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100B22F80);
  sub_100008B98(v0, qword_100B22F80);
  sub_10001389C();
  return sub_1007A3404();
}

void sub_100298F58(double *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong + OBJC_IVAR____TtC5Books24ReadingAnalyticsProvider_beginProgress;
    if ((*(Strong + OBJC_IVAR____TtC5Books24ReadingAnalyticsProvider_beginProgress + 8) & 1) != 0 && v2 > 0.0)
    {
      *v4 = v2;
      *(v4 + 8) = 0;
      v5 = OBJC_IVAR____TtC5Books24ReadingAnalyticsProvider_beginProgressCancellable;
      v6 = Strong;
      swift_beginAccess();
      sub_1000077D8(v6 + v5, v8, &qword_100AD9580, &qword_100816918);
      if (v9)
      {
        sub_100009864(v8, v7);
        sub_100007840(v8, &qword_100AD9580, &qword_100816918);
        sub_10000E3E8(v7, v7[3]);
        sub_10079B834();

        sub_1000074E0(v7);
      }

      else
      {

        sub_100007840(v8, &qword_100AD9580, &qword_100816918);
      }
    }

    else
    {
    }
  }
}

uint64_t sub_1002990A0(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a2;
  swift_unknownObjectWeakAssign();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 80);
    ObjectType = swift_getObjectType();
    v5 = v2;
    (*(v3 + 16))(ObjectType, v3);
    swift_allocObject();
    swift_weakInit();
    sub_1001F1160(&qword_100AD95A0, &qword_100816928);
    sub_100005920(&qword_100AD95A8, &qword_100AD95A0, &qword_100816928, &protocol conformance descriptor for AnyPublisher<A, B>);
    v6 = sub_10079BB04();

    v9[3] = sub_10079B884();
    v9[4] = &protocol witness table for AnyCancellable;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v9[0] = v6;
    v7 = OBJC_IVAR____TtC5Books24ReadingAnalyticsProvider_beginProgressCancellable;
    swift_beginAccess();
    sub_1002391EC(v9, v5 + v7, &qword_100AD9580, &qword_100816918);
    return swift_endAccess();
  }

  else
  {

    return swift_unknownObjectRelease();
  }
}

uint64_t sub_100299270()
{
  swift_unknownObjectRelease();
  sub_1000074E0((v0 + 32));
  sub_10002B130(v0 + 72);
  sub_10002B130(v0 + 88);
  sub_10002B130(v0 + 104);
  sub_100007840(v0 + OBJC_IVAR____TtC5Books24ReadingAnalyticsProvider_beginSessionDate, &unk_100ADB5C0, &unk_100816880);
  sub_100007840(v0 + OBJC_IVAR____TtC5Books24ReadingAnalyticsProvider_endSessionDate, &unk_100ADB5C0, &unk_100816880);
  v1 = OBJC_IVAR____TtC5Books24ReadingAnalyticsProvider_initialDnDState;
  v2 = sub_100798154();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC5Books24ReadingAnalyticsProvider_scrollViewState;
  v4 = sub_1007980B4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC5Books24ReadingAnalyticsProvider_autoNightState;
  v6 = sub_1007981E4();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC5Books24ReadingAnalyticsProvider_backgroundColor;
  v8 = sub_100798074();
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  sub_100007840(v0 + OBJC_IVAR____TtC5Books24ReadingAnalyticsProvider_lifeCycleCancellable, &qword_100AD9580, &qword_100816918);
  sub_100007840(v0 + OBJC_IVAR____TtC5Books24ReadingAnalyticsProvider_beginProgressCancellable, &qword_100AD9580, &qword_100816918);

  sub_100007840(v0 + OBJC_IVAR____TtC5Books24ReadingAnalyticsProvider_contentDataCache, &qword_100AD9470, &qword_100816878);
  return v0;
}

uint64_t sub_10029947C()
{
  sub_100299270();

  return swift_deallocClassInstance();
}

uint64_t sub_1002994E4@<X0>(uint64_t a1@<X8>)
{
  sub_10000E3E8((v1 + 32), *(v1 + 56));
  v3 = sub_10079EB94();
  v4 = sub_100797D94();
  v5 = *(*(v4 - 8) + 104);
  v6 = **(&off_100A12C80 + v3);

  return v5(a1, v6, v4);
}

uint64_t sub_100299588@<X0>(uint64_t a1@<X8>)
{
  sub_10000E3E8((v1 + 32), *(v1 + 56));
  v3 = sub_10079EB94();
  v4 = sub_100798024();
  v5 = *(*(v4 - 8) + 104);
  v6 = **(&off_100A12CA0 + v3);

  return v5(a1, v6, v4);
}

void (*sub_100299650(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 80);
  *(v4 + 64) = Strong;
  *(v4 + 72) = v6;
  return sub_1002996D0;
}

void sub_1002996D0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[9];
  if (a2)
  {
    v4 = swift_unknownObjectRetain();
    sub_1002990A0(v4, v3);
  }

  else
  {
    *((*a1)[10] + 80) = v3;
    swift_unknownObjectWeakAssign();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = v2[10];
      v6 = *(v5 + 80);
      ObjectType = swift_getObjectType();
      v2[5] = (*(v6 + 16))(ObjectType, v6);
      swift_allocObject();
      swift_weakInit();
      sub_1001F1160(&qword_100AD95A0, &qword_100816928);
      sub_100005920(&qword_100AD95A8, &qword_100AD95A0, &qword_100816928, &protocol conformance descriptor for AnyPublisher<A, B>);
      v8 = sub_10079BB04();

      v2[3] = sub_10079B884();
      v2[4] = &protocol witness table for AnyCancellable;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      *v2 = v8;
      v9 = OBJC_IVAR____TtC5Books24ReadingAnalyticsProvider_beginProgressCancellable;
      swift_beginAccess();
      sub_1002391EC(v2, v5 + v9, &qword_100AD9580, &qword_100816918);
      swift_endAccess();
      goto LABEL_6;
    }
  }

  swift_unknownObjectRelease();
LABEL_6:

  free(v2);
}

uint64_t sub_1002998D8(uint64_t a1, uint64_t a2)
{
  *(v2 + 96) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t (*sub_10029991C(uint64_t *a1))(uint64_t *a1)
{
  a1[2] = v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = *(v1 + 96);
  *a1 = Strong;
  a1[1] = v4;
  return sub_10029996C;
}

uint64_t sub_10029996C(uint64_t *a1)
{
  *(a1[2] + 96) = a1[1];
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_1002999F0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 112) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_100299A50(uint64_t *a1))(uint64_t a1, char a2)
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
  v6 = *(v1 + 112);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_100299AE4;
}

void sub_100299AE4(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 112) = *(*a1 + 32);
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

uint64_t sub_100299B6C(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC5Books24ReadingAnalyticsProvider_lifeCycleCancellable;
  swift_beginAccess();
  sub_1000077D8(v1 + v4, v8, &qword_100AD9580, &qword_100816918);
  if (v9)
  {
    sub_100009864(v8, v7);
    sub_100007840(v8, &qword_100AD9580, &qword_100816918);
    sub_10000E3E8(v7, v7[3]);
    sub_10079B834();
    result = sub_1000074E0(v7);
    if (!a1)
    {
      return result;
    }
  }

  else
  {
    result = sub_100007840(v8, &qword_100AD9580, &qword_100816918);
    if (!a1)
    {
      return result;
    }
  }

  v8[0] = a1;
  swift_allocObject();
  swift_weakInit();

  sub_1001F1160(&qword_100AD9588, &qword_100816920);
  sub_100005920(&unk_100AD9590, &qword_100AD9588, &qword_100816920, &protocol conformance descriptor for AnyPublisher<A, B>);
  v6 = sub_10079BB04();

  v9 = sub_10079B884();
  v10 = &protocol witness table for AnyCancellable;

  v8[0] = v6;
  swift_beginAccess();
  sub_1002391EC(v8, v2 + v4, &qword_100AD9580, &qword_100816918);
  return swift_endAccess();
}

uint64_t sub_100299D68(uint64_t a1)
{
  v2 = v1;
  v29 = a1;
  v3 = sub_1001F1160(&qword_100AD9470, &qword_100816878);
  __chkstk_darwin(v3 - 8);
  v30 = &v28 - v4;
  v5 = sub_1001F1160(&qword_100AD67D0, &qword_100814660);
  __chkstk_darwin(v5 - 8);
  v28 = &v28 - v6;
  v7 = sub_1001F1160(&unk_100ADB5C0, &unk_100816880);
  __chkstk_darwin(v7 - 8);
  v9 = &v28 - v8;
  sub_100798484();
  v10 = sub_100796BB4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v12(v9, 1, 1, v10);
  sub_1002A42D0(&unk_100AD94D0, &type metadata accessor for ReadEvent, &protocol conformance descriptor for ReadEvent);
  sub_100798424();
  sub_100007840(v9, &unk_100ADB5C0, &unk_100816880);
  (*(v11 + 16))(v9, v29, v10);
  v12(v9, 0, 1, v10);
  v13 = OBJC_IVAR____TtC5Books24ReadingAnalyticsProvider_beginSessionDate;
  swift_beginAccess();
  sub_1002391EC(v9, v2 + v13, &unk_100ADB5C0, &unk_100816880);
  swift_endAccess();
  v14 = (v2 + OBJC_IVAR____TtC5Books24ReadingAnalyticsProvider_beginProgress);
  if (*(v2 + OBJC_IVAR____TtC5Books24ReadingAnalyticsProvider_beginProgress + 8) == 1)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      v15 = v2[10];
      ObjectType = swift_getObjectType();
      v17 = COERCE_DOUBLE((*(v15 + 8))(ObjectType, v15));
      v19 = v18;
      swift_unknownObjectRelease();
      if ((v19 & 1) == 0 && v17 > 0.0)
      {
        *v14 = v17;
        *(v14 + 8) = 0;
      }
    }
  }

  sub_10000E3E8(v2 + 4, v2[7]);
  v20 = sub_10079ECA4();
  sub_1002A2BF0(v20, v21);

  if (sub_100798444())
  {
    v22 = sub_1007A2744();
    v23 = v28;
    (*(*(v22 - 8) + 56))(v28, 1, 1, v22);
    v24 = swift_allocObject();
    v24[2] = 0;
    v24[3] = 0;
    v24[4] = v2;

    sub_1003457A0(0, 0, v23, &unk_100816910, v24);
  }

  v25 = v30;
  sub_10029AE1C(v30);
  v26 = OBJC_IVAR____TtC5Books24ReadingAnalyticsProvider_contentDataCache;
  swift_beginAccess();
  sub_1002391EC(v25, v2 + v26, &qword_100AD9470, &qword_100816878);
  return swift_endAccess();
}

double sub_10029A174(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1001F1160(&qword_100AD9468, &qword_100816870);
  v46 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v47 = v5;
  v48 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v43 - v7;
  v9 = sub_1001F1160(&qword_100AD9470, &qword_100816878);
  v44 = *(v9 - 8);
  v10 = *(v44 + 64);
  __chkstk_darwin(v9 - 8);
  v45 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v43 - v12;
  __chkstk_darwin(v14);
  v49 = &v43 - v15;
  v16 = sub_1001F1160(&unk_100ADB5C0, &unk_100816880);
  __chkstk_darwin(v16 - 8);
  v18 = &v43 - v17;
  v19 = sub_100796BB4();
  v20 = *(v19 - 8);
  (*(v20 + 16))(v18, a1, v19);
  v21 = 1;
  (*(v20 + 56))(v18, 0, 1, v19);
  v22 = OBJC_IVAR____TtC5Books24ReadingAnalyticsProvider_endSessionDate;
  swift_beginAccess();
  sub_1002391EC(v18, v2 + v22, &unk_100ADB5C0, &unk_100816880);
  swift_endAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v23 = *(v2 + 80);
    ObjectType = swift_getObjectType();
    v25 = (*(v23 + 8))(ObjectType, v23);
    v21 = v26;
    swift_unknownObjectRelease();
  }

  else
  {
    v25 = 0;
  }

  v27 = v2 + OBJC_IVAR____TtC5Books24ReadingAnalyticsProvider_endProgress;
  *v27 = v25;
  *(v27 + 8) = v21 & 1;
  v28 = OBJC_IVAR____TtC5Books24ReadingAnalyticsProvider_contentDataCache;
  swift_beginAccess();
  sub_1000077D8(v2 + v28, v13, &qword_100AD9470, &qword_100816878);
  v29 = sub_100797D84();
  v30 = *(v29 - 8);
  v31 = *(v30 + 48);
  v32 = v31(v13, 1, v29);
  v33 = v49;
  if (v32 == 1)
  {
    sub_10029AE1C(v49);
    if (v31(v13, 1, v29) != 1)
    {
      sub_100007840(v13, &qword_100AD9470, &qword_100816878);
    }
  }

  else
  {
    (*(v30 + 32))(v49, v13, v29);
    (*(v30 + 56))(v33, 0, 1, v29);
  }

  v34 = swift_allocObject();
  *(v34 + 16) = sub_1007983E4();
  sub_10029B3E8(v8);
  v35 = v45;
  sub_1000077D8(v33, v45, &qword_100AD9470, &qword_100816878);
  v36 = v48;
  sub_1000077D8(v8, v48, &qword_100AD9468, &qword_100816870);
  v37 = (*(v44 + 80) + 24) & ~*(v44 + 80);
  v38 = (v10 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = (*(v46 + 80) + v38 + 8) & ~*(v46 + 80);
  v40 = swift_allocObject();
  *(v40 + 16) = v34;
  sub_10020B3C8(v35, v40 + v37, &qword_100AD9470, &qword_100816878);
  *(v40 + v38) = v2;
  sub_10020B3C8(v36, v40 + v39, &qword_100AD9468, &qword_100816870);
  v41 = swift_allocObject();
  v41[2] = v2;
  v41[3] = &unk_100816898;
  v41[4] = v40;
  swift_retain_n();

  sub_1007983F4();

  sub_100007840(v8, &qword_100AD9468, &qword_100816870);
  sub_100007840(v49, &qword_100AD9470, &qword_100816878);

  return result;
}

double sub_10029A764(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_10029A7C4(v2);
  }

  return result;
}

void sub_10029A7C4(uint64_t a1)
{
  v2 = sub_100796BB4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002A3504(a1);
  if (a1 == 2)
  {
    sub_100796BA4();
    v6.n128_f64[0] = sub_10029A174(v5);
    goto LABEL_5;
  }

  if (a1 == 1)
  {
    sub_100796BA4();
    sub_100299D68(v5);
LABEL_5:
    (*(v3 + 8))(v5, v2, v6);
    return;
  }

  if (qword_100AD1390 != -1)
  {
    swift_once();
  }

  v7 = sub_10079ACE4();
  sub_100008B98(v7, qword_100B22F80);
  v17 = sub_10079ACC4();
  v8 = sub_1007A2994();
  if (os_log_type_enabled(v17, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 136315138;
    v11 = 0xEC00000065736163;
    v12 = 0x206E776F6E6B6E75;
    if (a1 == 3)
    {
      v12 = 0x7061736944646964;
      v11 = 0xEC00000072616570;
    }

    if (a1)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0x7465736E75;
    }

    if (a1)
    {
      v14 = v11;
    }

    else
    {
      v14 = 0xE500000000000000;
    }

    v15 = sub_1000070F4(v13, v14, &v18);

    *(v9 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v17, v8, "Unhandled lifeCycle event: %s", v9, 0xCu);
    sub_1000074E0(v10);
  }

  else
  {
    v16 = v17;
  }
}

uint64_t sub_10029AA60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[21] = a4;
  v5 = sub_100798154();
  v4[22] = v5;
  v4[23] = *(v5 - 8);
  v4[24] = swift_task_alloc();

  return _swift_task_switch(sub_10029AB20, 0, 0);
}

uint64_t sub_10029AB20()
{
  v1 = objc_opt_self();
  v0[2] = v0;
  v0[7] = v0 + 25;
  v0[3] = sub_10029AC48;
  v2 = swift_continuation_init();
  v0[17] = sub_1001F1160(&unk_100AD67E0, &qword_1008168C0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100298E88;
  v0[13] = &unk_100A12C30;
  v0[14] = v2;
  [v1 fetchCurrentState:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10029AC48()
{

  return _swift_task_switch(sub_10029AD28, 0, 0);
}

uint64_t sub_10029AD28()
{
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  v4 = *(v0 + 168);
  v3 = *(v0 + 176);
  v5 = &enum case for DoNotDisturbStatus.on(_:);
  if (!*(v0 + 200))
  {
    v5 = &enum case for DoNotDisturbStatus.off(_:);
  }

  (*(*(v0 + 184) + 104))(*(v0 + 192), *v5, *(v0 + 176));
  v6 = OBJC_IVAR____TtC5Books24ReadingAnalyticsProvider_initialDnDState;
  swift_beginAccess();
  (*(v2 + 40))(v4 + v6, v1, v3);
  swift_endAccess();

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_10029AE1C@<X0>(char *a1@<X8>)
{
  v3 = sub_100799004();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001F1160(&qword_100AD9470, &qword_100816878);
  __chkstk_darwin(v7 - 8);
  v9 = &v34 - v8;
  v10 = sub_100797D84();
  v38 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v36 = v4;
    v37 = a1;
    v13 = *(v1 + 96);
    ObjectType = swift_getObjectType();
    (*(v13 + 8))(ObjectType, v13);
    if ((*(v38 + 48))(v9, 1, v10) == 1)
    {
      sub_100007840(v9, &qword_100AD9470, &qword_100816878);
      if ((*(v13 + 16))(ObjectType, v13))
      {
        v15 = v37;
        if (qword_100AD1390 != -1)
        {
          swift_once();
        }

        v16 = sub_10079ACE4();
        sub_100008B98(v16, qword_100B22F80);
        v17 = sub_10079ACC4();
        v18 = sub_1007A29B4();
        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          *v19 = 0;
        }

        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
        v15 = v37;
      }

      return (*(v38 + 56))(v15, 1, 1, v10);
    }

    else
    {
      v26 = v9;
      v27 = *(v38 + 32);
      v27(v12, v26, v10);
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v28 = *(v1 + 112);
        v29 = swift_getObjectType();
        v30 = (*(v28 + 16))(v29, v28);
        swift_unknownObjectRelease();
        if (v30)
        {
          v35 = v27;
          v31 = v36;
          (*(v36 + 104))(v6, enum case for BooksFeatureFlag.unifiedProductPage(_:), v3);
          sub_1002A42D0(&unk_100AD9560, &type metadata accessor for BooksFeatureFlag, &protocol conformance descriptor for BooksFeatureFlag);
          sub_100005920(&qword_100AD7778, &unk_100AD9570, &unk_100814750, &protocol conformance descriptor for StaticFeatureFlagsKey<A>);
          v32 = sub_1007A2554();
          (*(v31 + 8))(v6, v3);
          if (v32)
          {
            sub_100797CC4();
            sub_100797D74();
            sub_100797CA4();
            sub_100797D64();
          }

          v27 = v35;
        }
      }

      swift_unknownObjectRelease();
      v33 = v37;
      v27(v37, v12, v10);
      return (*(v38 + 56))(v33, 0, 1, v10);
    }
  }

  else
  {
    if (qword_100AD1390 != -1)
    {
      swift_once();
    }

    v20 = sub_10079ACE4();
    sub_100008B98(v20, qword_100B22F80);
    v21 = sub_10079ACC4();
    v22 = sub_1007A2994();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
    }

    v24 = *(v38 + 56);

    return v24(a1, 1, 1, v10);
  }
}

uint64_t sub_10029B3E8@<X0>(uint64_t a1@<X8>)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v1 + 80);
    ObjectType = swift_getObjectType();
    v3[3](ObjectType, v3);
    v3[4](ObjectType, v3);
    v3[5](ObjectType, v3);
    sub_1007981A4();
    swift_unknownObjectRelease();
    v5 = 0;
  }

  else
  {
    if (qword_100AD1390 != -1)
    {
      swift_once();
    }

    v6 = sub_10079ACE4();
    sub_100008B98(v6, qword_100B22F80);
    v7 = sub_10079ACC4();
    v8 = sub_1007A29B4();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
    }

    v5 = 1;
  }

  v10 = sub_1007981B4();
  v11 = *(*(v10 - 8) + 56);

  return v11(a1, v5, 1, v10);
}

uint64_t sub_10029B5B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[38] = a3;
  v4[39] = a4;
  v4[36] = a1;
  v4[37] = a2;
  v5 = sub_100796BB4();
  v4[40] = v5;
  v4[41] = *(v5 - 8);
  v4[42] = swift_task_alloc();
  sub_1001F1160(&unk_100ADB5C0, &unk_100816880);
  v4[43] = swift_task_alloc();
  v4[44] = swift_task_alloc();
  v6 = sub_100798094();
  v4[45] = v6;
  v4[46] = *(v6 - 8);
  v4[47] = swift_task_alloc();
  v7 = sub_100798154();
  v4[48] = v7;
  v4[49] = *(v7 - 8);
  v4[50] = swift_task_alloc();
  v4[51] = swift_task_alloc();
  v4[52] = swift_task_alloc();
  v4[53] = swift_task_alloc();
  v4[54] = swift_task_alloc();
  v8 = sub_100797D24();
  v4[55] = v8;
  v4[56] = *(v8 - 8);
  v4[57] = swift_task_alloc();
  v9 = sub_100798174();
  v4[58] = v9;
  v4[59] = *(v9 - 8);
  v4[60] = swift_task_alloc();
  v10 = sub_1007981D4();
  v4[61] = v10;
  v4[62] = *(v10 - 8);
  v4[63] = swift_task_alloc();
  sub_1001F1160(&qword_100AD9468, &qword_100816870);
  v4[64] = swift_task_alloc();
  v11 = sub_1007981B4();
  v4[65] = v11;
  v4[66] = *(v11 - 8);
  v4[67] = swift_task_alloc();
  sub_1001F1160(&qword_100AD9470, &qword_100816878);
  v4[68] = swift_task_alloc();
  v12 = sub_100797D84();
  v4[69] = v12;
  v4[70] = *(v12 - 8);
  v4[71] = swift_task_alloc();
  sub_1007A26F4();
  v4[72] = sub_1007A26E4();
  v14 = sub_1007A2694();
  v4[73] = v14;
  v4[74] = v13;

  return _swift_task_switch(sub_10029BA18, v14, v13);
}

uint64_t sub_10029BA18()
{
  v1 = *(v0 + 560);
  v2 = *(v0 + 552);
  v3 = *(v0 + 544);
  sub_1000077D8(*(v0 + 296), v3, &qword_100AD9470, &qword_100816878);
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    sub_100007840(*(v0 + 544), &qword_100AD9470, &qword_100816878);
  }

  else
  {
    v4 = *(v0 + 568);
    v5 = *(v0 + 560);
    v6 = *(v0 + 552);
    (*(v5 + 32))(v4, *(v0 + 544), v6);
    sub_1001F1160(&qword_100AD5B18, &qword_100811358);
    v7 = sub_100797B54();
    v8 = *(v7 - 8);
    v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_10080B690;
    (*(v8 + 104))(v10 + v9, enum case for DataEventTrait.onlyOnce(_:), v7);
    sub_1002A42D0(&qword_100AD9500, &type metadata accessor for ContentData, &protocol conformance descriptor for ContentData);
    sub_1002A42D0(&qword_100AD9508, &type metadata accessor for ContentData, &protocol conformance descriptor for ContentData);
    sub_100798414();

    (*(v5 + 8))(v4, v6);
  }

  v11 = *(v0 + 304);
  v12 = (v11 + OBJC_IVAR____TtC5Books24ReadingAnalyticsProvider_beginProgress);
  if ((*(v11 + OBJC_IVAR____TtC5Books24ReadingAnalyticsProvider_beginProgress + 8) & 1) == 0)
  {
    v13 = v11 + OBJC_IVAR____TtC5Books24ReadingAnalyticsProvider_endProgress;
    if ((*(v13 + 8) & 1) == 0)
    {
      if ((v14 = *v12, *v13 >= 0.5) && v14 < 0.5 || *v13 >= 0.9 && v14 < 0.9)
      {
        v15 = *(v0 + 528);
        v16 = *(v0 + 520);
        v17 = *(v0 + 512);
        sub_1000077D8(*(v0 + 312), v17, &qword_100AD9468, &qword_100816870);
        if ((*(v15 + 48))(v17, 1, v16) == 1)
        {
          sub_100007840(*(v0 + 512), &qword_100AD9468, &qword_100816870);
        }

        else
        {
          v18 = *(v0 + 536);
          v19 = *(v0 + 528);
          v20 = *(v0 + 520);
          (*(v19 + 32))(v18, *(v0 + 512), v20);
          sub_1001F1160(&qword_100AD5B18, &qword_100811358);
          v21 = sub_100797B54();
          v22 = *(v21 - 8);
          v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
          v24 = swift_allocObject();
          *(v24 + 16) = xmmword_10080B690;
          (*(v22 + 104))(v24 + v23, enum case for DataEventTrait.onlyOnce(_:), v21);
          sub_1002A42D0(&qword_100AD94F0, &type metadata accessor for ContentSettingsData, &protocol conformance descriptor for ContentSettingsData);
          sub_1002A42D0(&qword_100AD94F8, &type metadata accessor for ContentSettingsData, &protocol conformance descriptor for ContentSettingsData);
          sub_100798414();

          (*(v19 + 8))(v18, v20);
        }
      }
    }
  }

  v25 = *(v0 + 504);
  v86 = *(v0 + 488);
  v89 = *(v0 + 496);
  v94 = *(v0 + 472);
  v91 = *(v0 + 480);
  v93 = *(v0 + 464);
  *(v0 + 600) = *(*(v0 + 304) + 16);
  sub_10029D148(v25);
  *(v0 + 608) = sub_1001F1160(&qword_100AD5B18, &qword_100811358);
  v26 = sub_100797B54();
  *(v0 + 616) = v26;
  v27 = *(v26 - 8);
  *(v0 + 624) = *(v27 + 72);
  v28 = *(v27 + 80);
  *(v0 + 656) = v28;
  v29 = (v28 + 32) & ~v28;
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_10080B690;
  v31 = enum case for DataEventTrait.onlyOnce(_:);
  *(v0 + 660) = enum case for DataEventTrait.onlyOnce(_:);
  v32 = *(v27 + 104);
  *(v0 + 632) = v32;
  *(v0 + 640) = (v27 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v32(v30 + v29, v31, v26);
  sub_1002A42D0(&qword_100AD94A0, &type metadata accessor for ReadingSettingsData, &protocol conformance descriptor for ReadingSettingsData);
  sub_1002A42D0(&qword_100AD94A8, &type metadata accessor for ReadingSettingsData, &protocol conformance descriptor for ReadingSettingsData);
  sub_100798414();

  (*(v89 + 8))(v25, v86);
  sub_10029D5E4();
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_10080B690;
  v87 = v29;
  v84 = v31;
  v34 = v31;
  v35 = v32;
  v32(v33 + v29, v34, v26);
  sub_1002A42D0(&qword_100AD94B0, &type metadata accessor for ReadingSessionData, &protocol conformance descriptor for ReadingSessionData);
  sub_1002A42D0(&qword_100AD94B8, &type metadata accessor for ReadingSessionData, &protocol conformance descriptor for ReadingSessionData);
  sub_100798414();

  (*(v94 + 8))(v91, v93);
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v36 = *(*(v0 + 304) + 112);
    ObjectType = swift_getObjectType();
    v38 = (*(v36 + 8))(ObjectType, v36);
    swift_unknownObjectRelease();
    if (v38)
    {
      v40 = *(v0 + 448);
      v39 = *(v0 + 456);
      v100 = *(v0 + 440);
      sub_1007980C4();
      v41 = swift_allocObject();
      *(v41 + 16) = xmmword_10080B690;
      v35(v41 + v87, v84, v26);
      sub_1002A42D0(&qword_100AD94E0, &type metadata accessor for UpSellData, &protocol conformance descriptor for UpSellData);
      sub_1002A42D0(&qword_100AD94E8, &type metadata accessor for UpSellData, &protocol conformance descriptor for UpSellData);
      sub_100798414();

      (*(v40 + 8))(v39, v100);
    }
  }

  v42 = sub_100798444();
  v43 = *(v0 + 384);
  v44 = *(v0 + 392);
  if (v42)
  {
    v45 = *(v0 + 432);
    v46 = *(v0 + 304);
    v47 = OBJC_IVAR____TtC5Books24ReadingAnalyticsProvider_initialDnDState;
    swift_beginAccess();
    v48 = *(v44 + 16);
    *(v0 + 648) = v48;
    v48(v45, v46 + v47, v43);
    v49 = objc_opt_self();
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 664;
    *(v0 + 24) = sub_10029CA34;
    v50 = swift_continuation_init();
    *(v0 + 136) = sub_1001F1160(&unk_100AD67E0, &qword_1008168C0);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_100298E88;
    *(v0 + 104) = &unk_100A12BE0;
    *(v0 + 112) = v50;
    [v49 fetchCurrentState:v0 + 80];

    return _swift_continuation_await(v0 + 16);
  }

  else
  {
    v51 = *(v0 + 424);
    v52 = *(v0 + 432);

    v53 = enum case for DoNotDisturbStatus.unknown(_:);
    v54 = *(v44 + 104);
    v54(v52, enum case for DoNotDisturbStatus.unknown(_:), v43);
    v54(v51, v53, v43);
    v55 = *(v44 + 16);
    v92 = *(v0 + 632);
    v90 = *(v0 + 660);
    v88 = *(v0 + 616);
    v56 = *(v0 + 424);
    v57 = *(v0 + 400);
    v58 = *(v0 + 384);
    v95 = *(v0 + 352);
    v98 = *(v0 + 328);
    v101 = *(v0 + 320);
    v59 = (*(v0 + 656) + 32) & ~*(v0 + 656);
    v85 = *(v0 + 304);
    v55(*(v0 + 408), *(v0 + 432), v58);
    v55(v57, v56, v58);
    sub_100798084();
    v60 = swift_allocObject();
    *(v60 + 16) = xmmword_10080B690;
    v92(v60 + v59, v90, v88);
    sub_1002A42D0(&qword_100AD94C0, &type metadata accessor for DoNotDisturbData, &protocol conformance descriptor for DoNotDisturbData);
    sub_1002A42D0(&qword_100AD94C8, &type metadata accessor for DoNotDisturbData, &protocol conformance descriptor for DoNotDisturbData);
    sub_100798414();

    sub_100798484();
    sub_1002A42D0(&unk_100AD94D0, &type metadata accessor for ReadEvent, &protocol conformance descriptor for ReadEvent);
    sub_100798434();
    v61 = OBJC_IVAR____TtC5Books24ReadingAnalyticsProvider_beginSessionDate;
    swift_beginAccess();
    sub_1000077D8(v85 + v61, v95, &unk_100ADB5C0, &unk_100816880);
    v62 = (*(v98 + 48))(v95, 1, v101);
    v63 = *(v0 + 352);
    if (v62)
    {
      sub_100007840(*(v0 + 352), &unk_100ADB5C0, &unk_100816880);
      v64 = 0.0;
    }

    else
    {
      v66 = *(v0 + 328);
      v65 = *(v0 + 336);
      v67 = *(v0 + 320);
      (*(v66 + 16))(v65, *(v0 + 352), v67);
      sub_100007840(v63, &unk_100ADB5C0, &unk_100816880);
      sub_100796B34();
      v64 = v68;
      (*(v66 + 8))(v65, v67);
    }

    v99 = *(v0 + 424);
    v102 = *(v0 + 432);
    v69 = *(v0 + 384);
    v70 = *(v0 + 392);
    v71 = *(v0 + 368);
    v97 = *(v0 + 376);
    v96 = *(v0 + 360);
    v72 = *(v0 + 344);
    v73 = *(v0 + 304);
    v74 = *(v0 + 288);
    (*(*(v0 + 328) + 56))(v72, 1, 1, *(v0 + 320));
    swift_beginAccess();
    sub_1002391EC(v72, v85 + v61, &unk_100ADB5C0, &unk_100816880);
    swift_endAccess();
    v75 = v73[3];
    sub_10000E3E8(v73 + 4, v73[7]);
    sub_10079ECA4();
    v76 = sub_1007A2214();

    [v75 readSessionDidEnd:v76 readTime:-v64];

    sub_10000E3E8(v73 + 4, v73[7]);
    v77 = sub_10079ECA4();
    sub_1002A37AC(v77, v78);

    (*(v71 + 8))(v97, v96);
    v79 = *(v70 + 8);
    v79(v99, v69);
    v79(v102, v69);
    swift_beginAccess();
    v80 = *(v74 + 16);
    if (v80)
    {
      [v80 invalidate];
    }

    v81 = *(v0 + 288);
    swift_beginAccess();
    *(v81 + 16) = 0;
    swift_unknownObjectRelease();

    v82 = *(v0 + 8);

    return v82();
  }
}

uint64_t sub_10029CA34()
{
  v1 = *(*v0 + 592);
  v2 = *(*v0 + 584);

  return _swift_task_switch(sub_10029CB3C, v2, v1);
}

uint64_t sub_10029CB3C()
{
  v1 = *(v0 + 416);
  v2 = *(v0 + 424);
  v3 = *(v0 + 384);
  v4 = *(v0 + 392);

  v5 = &enum case for DoNotDisturbStatus.on(_:);
  if (!*(v0 + 664))
  {
    v5 = &enum case for DoNotDisturbStatus.off(_:);
  }

  (*(v4 + 104))(v1, *v5, v3);
  (*(v4 + 32))(v2, v1, v3);
  v6 = *(v0 + 648);
  v7 = *(v0 + 400);
  v38 = *(v0 + 632);
  v37 = *(v0 + 660);
  v36 = *(v0 + 616);
  v35 = *(v0 + 424);
  v8 = *(v0 + 384);
  v40 = *(v0 + 352);
  v42 = *(v0 + 328);
  v44 = *(v0 + 320);
  v9 = (*(v0 + 656) + 32) & ~*(v0 + 656);
  v10 = *(v0 + 304);
  v6(*(v0 + 408), *(v0 + 432), v8);
  v6(v7, v35, v8);
  sub_100798084();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10080B690;
  v38(v11 + v9, v37, v36);
  sub_1002A42D0(&qword_100AD94C0, &type metadata accessor for DoNotDisturbData, &protocol conformance descriptor for DoNotDisturbData);
  sub_1002A42D0(&qword_100AD94C8, &type metadata accessor for DoNotDisturbData, &protocol conformance descriptor for DoNotDisturbData);
  sub_100798414();

  sub_100798484();
  sub_1002A42D0(&unk_100AD94D0, &type metadata accessor for ReadEvent, &protocol conformance descriptor for ReadEvent);
  sub_100798434();
  v12 = OBJC_IVAR____TtC5Books24ReadingAnalyticsProvider_beginSessionDate;
  swift_beginAccess();
  sub_1000077D8(v10 + v12, v40, &unk_100ADB5C0, &unk_100816880);
  v13 = (*(v42 + 48))(v40, 1, v44);
  v14 = *(v0 + 352);
  if (v13)
  {
    sub_100007840(*(v0 + 352), &unk_100ADB5C0, &unk_100816880);
    v15 = 0.0;
  }

  else
  {
    v17 = *(v0 + 328);
    v16 = *(v0 + 336);
    v18 = *(v0 + 320);
    (*(v17 + 16))(v16, *(v0 + 352), v18);
    sub_100007840(v14, &unk_100ADB5C0, &unk_100816880);
    sub_100796B34();
    v15 = v19;
    (*(v17 + 8))(v16, v18);
  }

  v45 = *(v0 + 432);
  v20 = *(v0 + 384);
  v21 = *(v0 + 392);
  v22 = *(v0 + 368);
  v41 = *(v0 + 376);
  v43 = *(v0 + 424);
  v39 = *(v0 + 360);
  v23 = *(v0 + 344);
  v24 = *(v0 + 304);
  v25 = *(v0 + 288);
  (*(*(v0 + 328) + 56))(v23, 1, 1, *(v0 + 320));
  swift_beginAccess();
  sub_1002391EC(v23, v10 + v12, &unk_100ADB5C0, &unk_100816880);
  swift_endAccess();
  v26 = v24[3];
  sub_10000E3E8(v24 + 4, v24[7]);
  sub_10079ECA4();
  v27 = sub_1007A2214();

  [v26 readSessionDidEnd:v27 readTime:-v15];

  sub_10000E3E8(v24 + 4, v24[7]);
  v28 = sub_10079ECA4();
  sub_1002A37AC(v28, v29);

  (*(v22 + 8))(v41, v39);
  v30 = *(v21 + 8);
  v30(v43, v20);
  v30(v45, v20);
  swift_beginAccess();
  v31 = *(v25 + 16);
  if (v31)
  {
    [v31 invalidate];
  }

  v32 = *(v0 + 288);
  swift_beginAccess();
  *(v32 + 16) = 0;
  swift_unknownObjectRelease();

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_10029D148@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v31 = a1;
  v3 = sub_100798074();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1007981E4();
  v7 = *(v29 - 8);
  __chkstk_darwin(v29);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1007980B4();
  v10 = *(v28 - 8);
  __chkstk_darwin(v28);
  v30 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + OBJC_IVAR____TtC5Books24ReadingAnalyticsProvider_lastFontFamily + 8))
  {
    v27 = *(v2 + OBJC_IVAR____TtC5Books24ReadingAnalyticsProvider_lastFontFamily);
  }

  else
  {
    v26 = v4;
    if (qword_100AD1390 != -1)
    {
      swift_once();
    }

    v12 = sub_10079ACE4();
    sub_100008B98(v12, qword_100B22F80);
    v13 = sub_10079ACC4();
    v14 = sub_1007A29B4();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
    }

    v27 = 0;
    v4 = v26;
  }

  if (*(v2 + OBJC_IVAR____TtC5Books24ReadingAnalyticsProvider_lastFontSize + 8))
  {
    v26 = v4;
    if (qword_100AD1390 != -1)
    {
      swift_once();
    }

    v16 = sub_10079ACE4();
    sub_100008B98(v16, qword_100B22F80);
    v17 = sub_10079ACC4();
    v18 = sub_1007A29B4();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v25 = v9;
      *v19 = 0;
      v9 = v25;
    }

    v4 = v26;
  }

  v20 = OBJC_IVAR____TtC5Books24ReadingAnalyticsProvider_scrollViewState;
  swift_beginAccess();
  (*(v10 + 16))(v30, v2 + v20, v28);
  v21 = OBJC_IVAR____TtC5Books24ReadingAnalyticsProvider_autoNightState;
  swift_beginAccess();
  (*(v7 + 16))(v9, v2 + v21, v29);
  v22 = OBJC_IVAR____TtC5Books24ReadingAnalyticsProvider_backgroundColor;
  swift_beginAccess();
  (*(v4 + 16))(v6, v2 + v22, v3);
  v23 = [objc_opt_self() mainScreen];
  [v23 brightness];

  return sub_1007981C4();
}

uint64_t sub_10029D5E4()
{
  v1 = sub_1001F1160(&qword_100AD9558, &unk_1008168F8);
  __chkstk_darwin(v1 - 8);
  v3 = &v12[-v2];
  v4 = *(v0 + OBJC_IVAR____TtC5Books24ReadingAnalyticsProvider_beginProgress + 8);
  v9 = (!swift_unknownObjectWeakLoadStrong() || (v5 = v0[10], ObjectType = swift_getObjectType(), (*(v5 + 8))(ObjectType, v5), v8 = v7, swift_unknownObjectRelease(), (v8 & 1) != 0)) && (*(v0 + OBJC_IVAR____TtC5Books24ReadingAnalyticsProvider_endProgress + 8) & 1) != 0;
  sub_10000E3E8(v0 + 4, v0[7]);
  sub_10079EC84();
  sub_1007984D4();
  sub_100798494();
  sub_100798264();
  v10 = sub_1007980D4();
  (*(*(v10 - 8) + 56))(v3, 0, 1, v10);
  v12[12] = v4;
  v12[8] = v9;
  return sub_100798164();
}

void sub_10029D7D0(uint64_t a1)
{
  v2 = sub_1001F1160(&qword_100AD9550, &qword_1008168F0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v20 - v5;
  (*(v3 + 16))(&v20 - v5, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for EventSubmitResult.success<A>(_:))
  {
    if (qword_100AD1390 != -1)
    {
      swift_once();
    }

    v8 = sub_10079ACE4();
    sub_100008B98(v8, qword_100B22F80);
    v9 = sub_10079ACC4();
    v10 = sub_1007A29A4();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
    }

    goto LABEL_12;
  }

  if (v7 != enum case for EventSubmitResult.failed<A>(_:))
  {
LABEL_12:
    (*(v3 + 8))(v6, v2);
    return;
  }

  (*(v3 + 96))(v6, v2);
  if (qword_100AD1390 != -1)
  {
    swift_once();
  }

  v12 = sub_10079ACE4();
  sub_100008B98(v12, qword_100B22F80);
  swift_errorRetain();
  v13 = sub_10079ACC4();
  v14 = sub_1007A29B4();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v21 = v16;
    *v15 = 136315138;
    swift_getErrorValue();
    v17 = sub_1007A3B84();
    v19 = sub_1000070F4(v17, v18, &v21);

    *(v15 + 4) = v19;
    sub_1000074E0(v16);
  }

  else
  {
  }
}