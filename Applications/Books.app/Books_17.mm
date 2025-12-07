uint64_t sub_1002D257C(void *a1, uint64_t a2)
{
  swift_unknownObjectWeakAssign();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = type metadata accessor for AudiobookNowPlayingPresenter(0);
    sub_10055B8AC(a2, v4, &off_100A22E18);
    swift_unknownObjectRelease();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (a1 && ((v7 = [a1 customTitle]) != 0 || (v7 = objc_msgSend(a1, "title")) != 0))
    {
      v8 = v7;
      v9 = sub_1007A2254();
      v11 = v10;
    }

    else
    {
      v9 = 0;
      v11 = 0xE000000000000000;
    }

    v12 = *(v6 + 16);
    swift_getKeyPath();
    swift_getKeyPath();
    v34.value = v9;
    *&v34.timescale = v11;
    v13 = v12;
    sub_10079B9B4();
    swift_unknownObjectRelease();
  }

  sub_1002D28E8();
  v14 = swift_unknownObjectWeakLoadStrong();
  if (v14)
  {
    [v14 timeRangeInAudiobook];
    value = v34.value;
    timescale = v34.timescale;
    LODWORD(v17) = v34.flags;
    epoch = v34.epoch;
    swift_unknownObjectRelease();
  }

  else
  {
    value = sub_1007A3084(0.0, 1);
    timescale = v19;
    epoch = v20;
    v17 = HIDWORD(v19);
  }

  v34.value = value;
  v34.timescale = timescale;
  v34.flags = v17;
  v34.epoch = epoch;
  Seconds = CMTimeGetSeconds(&v34);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v23 = result;
    if (a1)
    {
      [a1 duration];
      v25 = v24;
    }

    else
    {
      v25 = 1.0;
    }

    v26 = *(v23 + 16);
    swift_getKeyPath();
    swift_getKeyPath();
    v34.value = 0;
    v27 = v26;
    sub_10079B9B4();
    v28 = *(v23 + 16);
    swift_getKeyPath();
    swift_getKeyPath();
    *&v34.value = -v25;
    v29 = v28;
    sub_10079B9B4();
    v30 = *(v23 + 16);
    swift_getKeyPath();
    swift_getKeyPath();
    v34.value = 0;
    v31 = v30;
    sub_10079B9B4();
    v32 = *(v23 + 16);
    swift_getKeyPath();
    swift_getKeyPath();
    v34.value = Seconds;
    v33 = v32;
    sub_10079B9B4();
    [*(v23 + 104) setAssetAudiobookStatusTrackTimeRemaining:v25];
    [*(v23 + 104) setAssetAudiobookStatusTrackProgress:0.0];
    [*(v23 + 104) setAssetAudiobookStatusTrackDuration:v25 + 0.0];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1002D28E8()
{
  v1 = sub_1007A1C54();
  v13 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1007A1CA4();
  v4 = *(v12 - 8);
  __chkstk_darwin(v12);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
  v7 = sub_1007A2D74();
  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  aBlock[4] = sub_1002D749C;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1003323D0;
  aBlock[3] = &unk_100A13C88;
  v9 = _Block_copy(aBlock);
  v10 = v0;

  sub_1007A1C74();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100022864(&qword_100ADA670, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1001F1160(&unk_100AD7CA0, &unk_100812B20);
  sub_100005920(&qword_100ADA680, &unk_100AD7CA0, &unk_100812B20, &protocol conformance descriptor for [A]);
  sub_1007A3594();
  sub_1007A2D94();
  _Block_release(v9);

  (*(v13 + 8))(v3, v1);
  return (*(v4 + 8))(v6, v12);
}

void sub_1002D2BDC(void *a1)
{
  v2 = a1;
  if (a1)
  {
    v2 = [objc_allocWithZone(UIImage) initWithCGImage:a1];
  }

  v3 = *(v1 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_cachedArtwork);
  *(v1 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_cachedArtwork) = v2;
  v4 = v2;

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_10055B390(v2);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1002D2C88(unint64_t a1, double a2, double a3)
{
  v7 = sub_10079ACE4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v12 = result;
  v13 = (v3 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_dataManager);
  swift_beginAccess();
  v14 = [*(*sub_10000E3E8(v13 v13[3]) + OBJC:"currentAudiobook" IVAR:? :? :? :? TtC5Books30AudiobookNowPlayingDataManager:?player)];
  if (!v14)
  {
    return swift_unknownObjectRelease();
  }

  v15 = v14;
  v16 = [v14 chapters];
  sub_1001F1160(&qword_100AED9C0, &unk_100829060);
  v17 = sub_1007A25E4();

  if (v17 >> 62)
  {
    v18 = sub_1007A38D4();
  }

  else
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v18 <= a1)
  {
    (*(v8 + 16))(v10, v3 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_logger, v7);
    swift_unknownObjectRetain();
    v19 = sub_10079ACC4();
    LOBYTE(v18) = sub_1007A29B4();
    if (!os_log_type_enabled(v19, v18))
    {

      swift_unknownObjectRelease_n();
      swift_unknownObjectRelease();
      return (*(v8 + 8))(v10, v7);
    }

    v17 = swift_slowAlloc();
    *v17 = 134218240;
    *(v17 + 4) = a1;
    *(v17 + 12) = 2048;
    v33 = [v15 chapters];
    v34 = sub_1007A25E4();

    if (!(v34 >> 62))
    {
      v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_18:

      *(v17 + 14) = v35;
      swift_unknownObjectRelease();
      _os_log_impl(&_mh_execute_header, v19, v18, "Observing %ld for chapterIndex when chapter count is %ld", v17, 0x16u);

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      return (*(v8 + 8))(v10, v7);
    }

LABEL_26:
    v35 = sub_1007A38D4();
    goto LABEL_18;
  }

  v19 = [v15 chapters];
  v7 = sub_1007A25E4();

  if ((v7 & 0xC000000000000001) != 0)
  {
    v20 = sub_1007A3784();
    goto LABEL_10;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v20 = *(v7 + 8 * a1 + 32);
  swift_unknownObjectRetain();
LABEL_10:

  [v20 duration];
  v22 = v21 - a2;
  [v20 duration];
  if (v23 == 0.0)
  {
    v24 = 0.0;
  }

  else
  {
    v24 = a2 / v23;
  }

  v25 = *(v12 + 16);
  swift_getKeyPath();
  swift_getKeyPath();
  v36 = a2;
  v26 = v25;
  sub_10079B9B4();
  v27 = *(v12 + 16);
  swift_getKeyPath();
  swift_getKeyPath();
  v36 = -v22;
  v28 = v27;
  sub_10079B9B4();
  v29 = *(v12 + 16);
  swift_getKeyPath();
  swift_getKeyPath();
  v36 = v24;
  v30 = v29;
  sub_10079B9B4();
  v31 = *(v12 + 16);
  swift_getKeyPath();
  swift_getKeyPath();
  v36 = a3;
  v32 = v31;
  sub_10079B9B4();
  [*(v12 + 104) setAssetAudiobookStatusTrackTimeRemaining:v22];
  [*(v12 + 104) setAssetAudiobookStatusTrackProgress:v24];
  [*(v12 + 104) setAssetAudiobookStatusTrackDuration:v22 + a2];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return swift_unknownObjectRelease();
}

void sub_1002D31C8(char a1, char a2, void *a3)
{
  v4 = v3;
  v8 = sub_10079ACE4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v36 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v11);
  v14 = &v33 - v13;
  v15 = *(v9 + 16);
  v34 = OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_logger;
  v35 = v15;
  (v15)(&v33 - v13, &v4[OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_logger], v8, v12);
  v16 = sub_10079ACC4();
  v17 = sub_1007A29D4();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v33 = v8;
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "_triggerClose", v18, 2u);
    v8 = v33;
  }

  v19 = *(v9 + 8);
  v19(v14, v8);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    v22 = swift_allocObject();
    *(v22 + 16) = v21;
    *(v22 + 24) = v4;
    *(v22 + 32) = a1 & 1;
    *(v22 + 33) = a2 & 1;
    *(v22 + 40) = a3;
    v23 = a3;
    v24 = v4;
    v25 = v21;
    v26 = [v25 bc_contextualPresentedViewController];
    if (v26)
    {
      v27 = v26;
      aBlock[4] = sub_1002D7C04;
      aBlock[5] = v22;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1003323D0;
      aBlock[3] = &unk_100A13F08;
      v28 = _Block_copy(aBlock);

      [v27 dismissViewControllerAnimated:1 completion:v28];

      _Block_release(v28);
    }

    else
    {
      sub_1002D407C(v25, v24, a1 & 1, a2 & 1, a3);
    }
  }

  else
  {
    v29 = v36;
    v35(v36, &v4[v34], v8);
    v30 = sub_10079ACC4();
    v31 = sub_1007A29B4();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "Can't close without a view controller", v32, 2u);
    }

    v19(v29, v8);
  }
}

void sub_1002D358C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10079ACE4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v26[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = &v2[OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_dataManager];
  swift_beginAccess();
  v9 = *(*sub_10000E3E8(v8, *(v8 + 3)) + OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_productProfile);
  if (v9)
  {
    (*(v5 + 16))(v7, &v2[OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_logger], v4);

    v10 = sub_10079ACC4();
    v11 = sub_1007A29D4();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v25 = v2;
      v13 = v12;
      v14 = swift_slowAlloc();
      *&v27 = v14;
      *v13 = 136315138;
      v26[0] = a1;

      sub_1001F1160(&unk_100ADA6B0, qword_100818570);
      v15 = sub_1007A22E4();
      v17 = sub_1000070F4(v15, v16, &v27);

      *(v13 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v10, v11, "productProfileDidChange(to:) newProductProfile=%s", v13, 0xCu);
      sub_1000074E0(v14);

      v2 = v25;
    }

    (*(v5 + 8))(v7, v4);
    sub_10058096C(v9);

    v18 = objc_allocWithZone(AEUserPublishingProductProfile);
    isa = sub_1007A2024().super.isa;

    v20 = [v18 initWithProfileDictionary:isa];

    v21 = [objc_allocWithZone(BCFutureValue) initWithValue:v20];
    type metadata accessor for BuyButtonModuleFactory();
    v22 = v2;
    sub_10071E420(v21, v2, &v27);
    v23 = OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_buyButtonPresenter;
    swift_beginAccess();
    sub_1002391EC(&v27, &v22[v23], &unk_100ADA690, &unk_100818550);
    swift_endAccess();
    if (!swift_unknownObjectWeakLoadStrong())
    {

      return;
    }

    sub_1000077D8(&v22[v23], v26, &unk_100ADA690, &unk_100818550);
    if (v26[3])
    {
      sub_1001F1160(&qword_100ADA6A0, &qword_100818560);
      sub_1001F1160(&qword_100ADA6A8, &qword_100818568);
      if ((swift_dynamicCast() & 1) == 0)
      {
        v29 = 0;
        v27 = 0u;
        v28 = 0u;
      }
    }

    else
    {
      sub_100007840(v26, &unk_100ADA690, &unk_100818550);
      v27 = 0u;
      v28 = 0u;
      v29 = 0;
    }

    type metadata accessor for AudiobookNowPlayingPresenter(0);
    sub_10055B814(&v27);

    swift_unknownObjectRelease();
  }

  else
  {
    v29 = 0;
    v27 = 0u;
    v28 = 0u;
    v24 = OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_buyButtonPresenter;
    swift_beginAccess();
    sub_1002391EC(&v27, &v2[v24], &unk_100ADA690, &unk_100818550);
    swift_endAccess();
    if (!swift_unknownObjectWeakLoadStrong())
    {
      return;
    }

    v29 = 0;
    v27 = 0u;
    v28 = 0u;
    type metadata accessor for AudiobookNowPlayingPresenter(0);
    sub_10055B814(&v27);
    swift_unknownObjectRelease();
  }

  sub_100007840(&v27, &qword_100AD4FA0, &qword_10081F020);
}

uint64_t sub_1002D3AA0(uint64_t a1)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    type metadata accessor for AudiobookNowPlayingPresenter(0);
    sub_10055BBF0(a1);
    swift_unknownObjectRelease();
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = (v1 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_dataManager);
    swift_beginAccess();
    [*(*sub_10000E3E8(v4 v4[3]) + OBJC:"initialDuration" IVAR:? :? :? :? TtC5Books30AudiobookNowPlayingDataManager:?sleepTimer)];
    v6 = v5;
    v7 = type metadata accessor for AudiobookNowPlayingPresenter(0);
    sub_10055BC60(v7, &off_100A22E18, v6);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1002D3BC4(uint64_t a1)
{
  if (a1 <= 2)
  {
    if (a1)
    {
      if (a1 == 2)
      {
        *(v1 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_hasShownNetworkError) = 0;
        goto LABEL_18;
      }

LABEL_12:
      if (a1 > 1)
      {
        goto LABEL_18;
      }

LABEL_17:
      *(v1 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_transitionState) = 2;
      goto LABEL_18;
    }

    v10 = (v1 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_dataManager);
    swift_beginAccess();
    if ([*(*sub_10000E3E8(v10 v10[3]) + OBJC:"currentAudiobook" IVAR:? :? :? :? TtC5Books30AudiobookNowPlayingDataManager:?player)])
    {
      swift_unknownObjectRelease();
      goto LABEL_17;
    }

LABEL_16:
    sub_1002D31C8(1, 1, 0);
    goto LABEL_17;
  }

  if (a1 == 4)
  {
    goto LABEL_16;
  }

  if (a1 != 3)
  {
    goto LABEL_12;
  }

  v3 = OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_transitionState;
  if (*(v1 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_transitionState))
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      v6 = (v1 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_dataManager);
      swift_beginAccess();
      if (*(*sub_10000E3E8(v6, v6[3]) + OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_streaming) == 1 && (v7 = swift_unknownObjectWeakLoadStrong()) != 0)
      {
        v8 = v7;
        v9 = v5;
        [v8 audiobookNowPlayingViewController:v9 shouldStream:0];

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    *(v1 + v3) = 2;
  }

LABEL_18:
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1005591B4(a1);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1002D3DC0(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_transferLockController;
    if (*(a1 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_transferLockController))
    {
    }

    else
    {
      v10 = Strong;
      v4 = [objc_allocWithZone(BKTransferLockController) init];
      v5 = *(a1 + v3);
      *(a1 + v3) = v4;
      v6 = v4;

      v7 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_1002D7850;
      aBlock[5] = v7;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1003323D0;
      aBlock[3] = &unk_100A13D28;
      v8 = _Block_copy(aBlock);
      v9 = v10;

      [v6 resolveTransferLockWithPresentingViewController:v9 completion:v8];
      _Block_release(v8);
    }
  }
}

void sub_1002D3F44(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = *&Strong[OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_transferLockController];
    *&Strong[OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_transferLockController] = 0;
  }
}

uint64_t sub_1002D3FA4(float a1)
{
  v3 = (v1 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_dataManager);
  swift_beginAccess();
  sub_10000E3E8(v3, v3[3]);
  v4 = sub_100462804();
  sub_1002D0650(v4, a1);
  v6 = v5;

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    type metadata accessor for AudiobookNowPlayingPresenter(0);
    sub_10055BB28(v6);
    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_1002D407C(uint64_t a1, uint64_t a2, int a3, int a4, void *a5)
{
  v51 = a5;
  v52 = a3;
  v53 = a4;
  v54 = sub_10079ACE4();
  v7 = *(v54 - 8);
  __chkstk_darwin(v54);
  v50 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v49 - v10;
  __chkstk_darwin(v12);
  v14 = &v49 - v13;
  __chkstk_darwin(v15);
  v17 = &v49 - v16;
  v18 = objc_opt_self();
  result = [v18 shared];
  if (!result)
  {
    __break(1u);
    goto LABEL_29;
  }

  v20 = result;
  [result postEvent:kBETestDriverOpenAnimationStart sender:a1];

  result = [v18 shared];
  if (!result)
  {
LABEL_29:
    __break(1u);
    return result;
  }

  v21 = result;
  [result postEvent:kBETestDriverOpenAnimationSetupStart sender:a1];

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if ([Strong audiobookNowPlayingViewControllerShouldPauseOnClose:a1])
    {
      v23 = (a2 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_dataManager);
      swift_beginAccess();
      [*(*sub_10000E3E8(v23 v23[3]) + OBJC:"pause" IVAR:? :? :? :? TtC5Books30AudiobookNowPlayingDataManager:?player)];
    }

    swift_unknownObjectRelease();
  }

  v24 = swift_unknownObjectWeakLoadStrong();
  if (v24)
  {
    v25 = v24;
    v26 = v54;
    (*(v7 + 16))(v17, a2 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_logger, v54);
    v27 = sub_10079ACC4();
    v28 = sub_1007A29D4();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "Closing via .assetViewControllerDelegate", v29, 2u);
    }

    (*(v7 + 8))(v17, v26);
    [v25 assetViewController:a1 willClose:v52 & 1];
    [v25 assetViewController:a1 requestClose:1 finishedConsuming:v53 & 1 error:0 withErrorBlock:0];
    return swift_unknownObjectRelease();
  }

  else
  {
    v30 = swift_unknownObjectWeakLoadStrong();
    if (v30)
    {
      v31 = v30;
      v32 = OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_requestingCloseMinified;
      v33 = *(v7 + 16);
      v34 = v54;
      if (*(a2 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_requestingCloseMinified))
      {
        v35 = v50;
        v33(v50, a2 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_logger, v54);
        v36 = sub_10079ACC4();
        v37 = sub_1007A29B4();
        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          *v38 = 0;
          _os_log_impl(&_mh_execute_header, v36, v37, "Request close already in progress, avoiding reentrant close", v38, 2u);

          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
        }

        return (*(v7 + 8))(v35, v34);
      }

      else
      {
        v33(v11, a2 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_logger, v54);
        v43 = sub_10079ACC4();
        v44 = sub_1007A29D4();
        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          *v45 = 0;
          _os_log_impl(&_mh_execute_header, v43, v44, "Closing via .delegate", v45, 2u);
        }

        (*(v7 + 8))(v11, v34);
        *(a2 + v32) = 1;
        v46 = v51;
        if (v51)
        {
          v56 = v51;
          type metadata accessor for AudiobookPlayerError(0);
          sub_10000A7C4(0, &qword_100ADA6D0, NSError_ptr);
          v47 = v46;
          swift_dynamicCast();
          v48 = v55;
        }

        else
        {
          v48 = 0;
        }

        [v31 audiobookNowPlayingViewControllerRequestCloseMinified:a1 error:v48];

        result = swift_unknownObjectRelease();
        *(a2 + v32) = 0;
      }
    }

    else
    {
      v39 = v54;
      (*(v7 + 16))(v14, a2 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_logger, v54);
      v40 = sub_10079ACC4();
      v41 = sub_1007A29B4();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&_mh_execute_header, v40, v41, "Can't close, no usable delegate", v42, 2u);
      }

      return (*(v7 + 8))(v14, v39);
    }
  }

  return result;
}

void sub_1002D4694(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5, double a6)
{
  v43 = a5;
  v45 = a4;
  v44 = sub_10079ACE4();
  v9 = *(v44 - 8);
  __chkstk_darwin(v44);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v43 - v13;
  v15 = sub_1001F1160(&unk_100ADB5C0, &unk_100816880);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15 - 8);
  v18 = &v43 - v17;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    if (a2)
    {

      goto LABEL_5;
    }

    sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
    sub_1000077D8(a1, v18, &unk_100ADB5C0, &unk_100816880);
    v33 = (*(v16 + 80) + 48) & ~*(v16 + 80);
    v34 = swift_allocObject();
    *(v34 + 16) = v20;
    *(v34 + 24) = a6;
    v35 = v45;
    v36 = v43;
    *(v34 + 32) = v45;
    *(v34 + 40) = v36;
    sub_1002D73A4(v18, v34 + v33);
    v37 = v20;
    sub_1000260E8(v35, v36);
    sub_1007A2CD4();
  }

  else
  {
    if (a2)
    {
LABEL_5:
      swift_beginAccess();
      v21 = swift_unknownObjectWeakLoadStrong();
      v22 = v44;
      if (v21)
      {
        v23 = v21;
        (*(v9 + 16))(v14, v21 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_logger, v44);
        swift_errorRetain();

        swift_errorRetain();
        v24 = sub_10079ACC4();
        v25 = sub_1007A29B4();

        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          v27 = swift_slowAlloc();
          v46 = v27;
          *v26 = 136315138;
          swift_getErrorValue();
          v28 = sub_1007A3B84();
          v30 = sub_1000070F4(v28, v29, &v46);

          *(v26 + 4) = v30;
          _os_log_impl(&_mh_execute_header, v24, v25, "_updatePlayheadPosition(completion): error=%s", v26, 0xCu);
          sub_1000074E0(v27);
        }

        v31 = (*(v9 + 8))(v14, v22);
        v32 = v45;
        if (!v45)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v31 = swift_errorRetain();
        v32 = v45;
        if (!v45)
        {
          goto LABEL_10;
        }
      }

      v32(v31);
LABEL_10:

      return;
    }

    swift_beginAccess();
    v38 = swift_unknownObjectWeakLoadStrong();
    if (v38)
    {
      v39 = v38;
      (*(v9 + 16))(v11, v38 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_logger, v44);

      v40 = sub_10079ACC4();
      v41 = sub_1007A29B4();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&_mh_execute_header, v40, v41, "_updatePlayheadPosition(completion): self is nil", v42, 2u);
      }

      v38 = (*(v9 + 8))(v11, v44);
    }

    if (v45)
    {
      v45(v38);
    }
  }
}

void sub_1002D4B78(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v65 = a4;
  v67 = a3;
  v69 = a2;
  v7 = sub_1001F1160(&unk_100ADB5C0, &unk_100816880);
  __chkstk_darwin(v7 - 8);
  v64 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v66 = &v60 - v10;
  v11 = sub_100796BB4();
  v70 = *(v11 - 8);
  v71 = v11;
  __chkstk_darwin(v11);
  v62 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v68 = &v60 - v14;
  v15 = sub_10079ACE4();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v63 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v18);
  v21 = &v60 - v20;
  v22 = OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_logger;
  v23 = *(v16 + 16);
  v23(&v60 - v20, &a1[OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_logger], v15, v19);
  v24 = sub_10079ACC4();
  v25 = sub_1007A29D4();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 134217984;
    *(v26 + 4) = a5;
    _os_log_impl(&_mh_execute_header, v24, v25, "_updatePlayheadPosition(completion): setting position in audiobook %f", v26, 0xCu);
  }

  v27 = *(v16 + 8);
  v27(v21, v15);
  v28 = &a1[OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_dataManager];
  swift_beginAccess();
  [*(*sub_10000E3E8(v28 *(v28 + 3)) + OBJC:"pausedDuration" IVAR:? :? :? :? TtC5Books30AudiobookNowPlayingDataManager:?player)];
  if (v29 > 3600.0)
  {
    v61 = a1;
    v30 = &a1[v22];
    v31 = v63;
    (v23)(v63, v30, v15);
    v32 = sub_10079ACC4();
    v33 = sub_1007A29D4();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "_updatePlayheadPosition(completion): update session indicator", v34, 2u);
    }

    v27(v31, v15);
    swift_beginAccess();
    v35 = *(v28 + 3);
    v36 = *(v28 + 4);
    sub_10022569C(v28, v35);
    (*(v36 + 120))(v35, v36, a5);
    swift_endAccess();
    a1 = v61;
  }

  v37 = swift_allocObject();
  v38 = v69;
  v37[2] = a1;
  v37[3] = v38;
  v39 = v66;
  v40 = v67;
  v37[4] = v67;
  sub_1000077D8(v65, v39, &unk_100ADB5C0, &unk_100816880);
  v41 = v70;
  v42 = v71;
  v43 = *(v70 + 48);
  if (v43(v39, 1, v71) != 1)
  {
    (*(v41 + 32))(v68, v39, v42);
    v45 = v38;
    v46 = OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_lastUserProgressChangeTimestamp;
    swift_beginAccess();
    v47 = v64;
    sub_1000077D8(&a1[v46], v64, &unk_100ADB5C0, &unk_100816880);
    v48 = v43(v47, 1, v42);
    v49 = a1;
    v50 = v48;
    sub_1000260E8(v45, v40);
    v51 = v49;
    sub_100007840(v47, &unk_100ADB5C0, &unk_100816880);
    if (v50 == 1)
    {
LABEL_10:
      sub_10000E3E8(v28, *(v28 + 3));

      sub_100462D98(sub_1002D748C, v37, a5);

      (*(v70 + 8))(v68, v71);
      return;
    }

    swift_beginAccess();
    v52 = v71;
    a1 = v49;
    if (v43(&v49[v46], 1, v71))
    {
      (*(v70 + 8))(v68, v52);
      swift_endAccess();
    }

    else
    {
      v53 = v70;
      v54 = v62;
      (*(v70 + 16))(v62, &v49[v46], v52);
      swift_endAccess();
      v55 = v52;
      v56 = sub_100796B84();
      v57 = *(v53 + 8);
      v57(v54, v55);
      if (v56 == -1)
      {
        goto LABEL_10;
      }

      v57(v68, v71);
    }

    v38 = v69;
    goto LABEL_16;
  }

  sub_1000260E8(v38, v40);
  v44 = a1;
  sub_100007840(v39, &unk_100ADB5C0, &unk_100816880);
LABEL_16:
  sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
  v58 = swift_allocObject();
  v58[2] = a1;
  v58[3] = v38;
  v58[4] = v40;
  sub_1000260E8(v38, v40);
  v59 = a1;
  sub_1007A2CD4();
}

double sub_1002D52A4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
  v7 = swift_allocObject();
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = a4;
  v8 = a2;
  sub_1000260E8(a3, a4);
  sub_1007A2CD4();

  return result;
}

void sub_1002D535C(void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_cachedArtwork);
    *(Strong + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_cachedArtwork) = a1;
    v6 = a1;

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_10055B390(a1);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_1002D5400(uint64_t a1)
{
  v1 = (a1 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_dataManager);
  swift_beginAccess();
  [*(*sub_10000E3E8(v1 v1[3]) + OBJC:"listeningSessionStartTime" IVAR:? :? :? :? TtC5Books30AudiobookNowPlayingDataManager:?player)];
  v3 = v2;
  v4 = *sub_10000E3E8(v1, v1[3]);
  swift_endAccess();
  v5 = [*(v4 + OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_player) currentAudiobook];
  if (!v5)
  {
    return;
  }

  v6 = v5;
  CMTimeMakeWithSeconds(&v40.start, v3, 1000000000);
  v7 = *&v40.start.timescale;
  epoch = v40.start.epoch;
  value = v40.start.value;
  v8 = [v6 chapters];
  sub_1001F1160(&qword_100AED9C0, &unk_100829060);
  v9 = sub_1007A25E4();

  if (v9 >> 62)
  {
LABEL_35:
    v10 = sub_1007A38D4();

    if (v10 < 0)
    {
      __break(1u);
      return;
    }
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v10)
  {
    goto LABEL_25;
  }

  v11 = 0;
  v35 = v6;
  for (i = [v6 chapters]; ; i = objc_msgSend(v35, "chapters", v34))
  {
    v13 = i;
    v14 = sub_1007A25E4();

    if ((v14 & 0xC000000000000001) != 0)
    {
      v15 = sub_1007A3784();
    }

    else
    {
      if (v11 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_35;
      }

      v15 = *(v14 + 8 * v11 + 32);
      swift_unknownObjectRetain();
    }

    v38 = v15;
    [v15 timeRangeInAudiobook];
    v16 = v40.start.value;
    timescale = v40.start.timescale;
    flags = v40.start.flags;
    v20 = v40.start.epoch;
    v19 = v40.duration.value;
    v21 = v40.duration.timescale;
    v22 = v40.duration.flags;
    v23 = v40.duration.epoch;
    time.value = value;
    *&time.timescale = v7;
    time.epoch = epoch;
    v24 = CMTimeRangeContainsTime(&v40, &time);
    if (v24)
    {
      v40.start.value = v16;
      v40.start.timescale = timescale;
      v40.start.flags = flags;
      v40.start.epoch = v20;
      Seconds = CMTimeGetSeconds(&v40.start);
      v40.start.value = v19;
      v40.start.timescale = v21;
      v40.start.flags = v22;
      v40.start.epoch = v23;
      v26 = (v3 - Seconds) / CMTimeGetSeconds(&v40.start);
    }

    else
    {
      v26 = 0.0;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    v6 = v35;
    if (Strong)
    {
      v28 = Strong;
      swift_unknownObjectRelease();
      if (v38 == v28)
      {
        break;
      }
    }

    if (v24)
    {
      v29 = 0;
      goto LABEL_21;
    }

LABEL_7:
    ++v11;
    swift_unknownObjectRelease();
    if (v34 == v11)
    {
      goto LABEL_25;
    }
  }

  if (!v24)
  {
    goto LABEL_7;
  }

  v32 = [v35 isAudiobookPreview];
  v29 = 0;
  if ((v32 & 1) == 0 && v26 > 0.01)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      v33 = type metadata accessor for AudiobookNowPlayingPresenter(0);
      sub_10055BA80(*&v26, 0, v33, &off_100A22E18);
      swift_unknownObjectRelease();
    }

    v29 = 1;
  }

LABEL_21:
  if (swift_unknownObjectWeakLoadStrong())
  {
    v30 = type metadata accessor for AudiobookNowPlayingPresenter(0);
    sub_10055BA00(v11, v30, &off_100A22E18);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (v29)
    {
      goto LABEL_27;
    }
  }

  else
  {
    swift_unknownObjectRelease();
    if (v29)
    {
      goto LABEL_27;
    }
  }

LABEL_25:
  if (swift_unknownObjectWeakLoadStrong())
  {
    v31 = type metadata accessor for AudiobookNowPlayingPresenter(0);
    sub_10055BA80(0, 1, v31, &off_100A22E18);
    swift_unknownObjectRelease();
  }

LABEL_27:
  swift_unknownObjectRelease();
}

double sub_1002D586C()
{
  v38 = sub_100796CF4();
  v0 = *(v38 - 8);
  __chkstk_darwin(v38);
  v2 = v32 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = v32 - v4;
  v6 = sub_1007A21D4();
  v7 = *(v6 - 8);
  v39 = v6;
  v40 = v7;
  __chkstk_darwin(v6);
  v9 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v32 - v11;
  sub_1007A2154();
  sub_100796C94();
  v37 = *(v7 + 16);
  v37(v9, v12, v6);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v35 = ObjCClassFromMetadata;
  v34 = objc_opt_self();
  v14 = [v34 bundleForClass:ObjCClassFromMetadata];
  v33 = *(v0 + 16);
  v15 = v38;
  v33(v2, v5, v38);
  v16 = sub_1007A22D4(v9, 0, 0, v14, v2, "Audiobook Unavailable", 21, 2);
  v36 = v17;
  v18 = *(v0 + 8);
  v32[0] = v16;
  v32[1] = v0 + 8;
  v19 = v15;
  v18(v5, v15);
  v20 = v39;
  v21 = *(v40 + 8);
  v40 += 8;
  v21(v12, v39);
  sub_1007A2154();
  sub_100796C94();
  v37(v9, v12, v20);
  v22 = [v34 bundleForClass:v35];
  v23 = v19;
  v33(v2, v5, v19);
  v24 = sub_1007A22D4(v9, 0, 0, v22, v2, "Audiobook unavailable network interrupted message.", 50, 2);
  v26 = v25;
  v27 = v5;
  v28 = v36;
  v18(v27, v23);
  v21(v12, v39);
  if (swift_unknownObjectWeakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v30 = Strong;
      sub_100660BB4(v32[0], v28, v24, v26, v30);
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_1002D5C74()
{
  v1 = sub_10079ACE4();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v0 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_logger, v1, v3);
  v6 = v0;
  v7 = sub_10079ACC4();
  v8 = sub_1007A29D4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109376;
    *(v9 + 4) = *(&v6->isa + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_beginPlaybackInBackground);
    *(v9 + 8) = 1024;
    *(v9 + 10) = *(&v6->isa + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_allowAutoplay);

    _os_log_impl(&_mh_execute_header, v7, v8, "_attemptAutoplay beginPlaybackInBackground=%{BOOL}d allowAutoplay=%{BOOL}d", v9, 0xEu);
  }

  else
  {

    v7 = v6;
  }

  (*(v2 + 8))(v5, v1);
  v10 = OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_allowAutoplay;
  if (*(&v6->isa + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_allowAutoplay) == 1 && *(&v6->isa + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_beginPlaybackInBackground) == 1)
  {
    v11 = (&v6->isa + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_dataManager);
    swift_beginAccess();
    if ([*(*sub_10000E3E8(v11 v11[3]) + OBJC:"state" IVAR:? :? :? :? TtC5Books30AudiobookNowPlayingDataManager:?player)] != 2)
    {
      sub_1002CF778(1);
      *(&v6->isa + v10) = 0;
      AriadneTrace_AudiobookBeginPlayback();
    }

    goto LABEL_31;
  }

  v12 = (&v6->isa + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_dataManager);
  swift_beginAccess();
  v13 = [*(*sub_10000E3E8(v12 v12[3]) + OBJC:"currentAudiobook" IVAR:? :? :? :? TtC5Books30AudiobookNowPlayingDataManager:?player)];
  if (!v13)
  {
    goto LABEL_31;
  }

  if (*(&v6[1].isa + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_initialPositionOnOpen))
  {
    swift_unknownObjectRelease();
    goto LABEL_31;
  }

  v14 = *(&v6->isa + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_initialPositionOnOpen);
  v15 = [v13 chapters];
  sub_1001F1160(&qword_100AED9C0, &unk_100829060);
  v16 = sub_1007A25E4();

  if (v16 >> 62)
  {
LABEL_29:
    v17 = sub_1007A38D4();
    if (v17)
    {
      goto LABEL_13;
    }

LABEL_30:
    swift_unknownObjectRelease();

    goto LABEL_31;
  }

  v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v17)
  {
    goto LABEL_30;
  }

LABEL_13:
  v18 = 0;
  v19 = v14;
  while ((v16 & 0xC000000000000001) != 0)
  {
    v20 = sub_1007A3784();
    v21 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      goto LABEL_22;
    }

LABEL_17:
    [v20 duration];
    if (v19 < v22)
    {
      goto LABEL_23;
    }

    [v20 duration];
    v24 = v23;
    swift_unknownObjectRelease();
    v19 = v19 - v24;
    ++v18;
    if (v21 == v17)
    {
      goto LABEL_30;
    }
  }

  if (v18 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_29;
  }

  v20 = *(v16 + 8 * v18 + 32);
  swift_unknownObjectRetain();
  v21 = v18 + 1;
  if (!__OFADD__(v18, 1))
  {
    goto LABEL_17;
  }

LABEL_22:
  __break(1u);
LABEL_23:

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v26 = Strong;
    [v20 duration];
    v28 = v27;
    [v20 duration];
    v29 = 0.0;
    if (v30 != 0.0)
    {
      [v20 duration];
      v29 = v19 / v31;
    }

    v32 = v28 - v19;
    v33 = *(v26 + 16);
    swift_getKeyPath();
    swift_getKeyPath();
    v42 = v19;
    v34 = v33;
    sub_10079B9B4();
    v35 = *(v26 + 16);
    swift_getKeyPath();
    swift_getKeyPath();
    v42 = -v32;
    v36 = v35;
    sub_10079B9B4();
    v37 = *(v26 + 16);
    swift_getKeyPath();
    swift_getKeyPath();
    v42 = v29;
    v38 = v37;
    sub_10079B9B4();
    v39 = *(v26 + 16);
    swift_getKeyPath();
    swift_getKeyPath();
    v42 = v14;
    v40 = v39;
    sub_10079B9B4();
    [*(v26 + 104) setAssetAudiobookStatusTrackTimeRemaining:v32];
    [*(v26 + 104) setAssetAudiobookStatusTrackProgress:v29];
    [*(v26 + 104) setAssetAudiobookStatusTrackDuration:v19 + v32];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

LABEL_31:
  v41 = v6 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_initialPositionOnOpen;
  *v41 = 0;
  v41[8] = 1;
}

BOOL sub_1002D6298()
{
  v1 = (v0 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_dataManager);
  swift_beginAccess();
  v2 = sub_10000E3E8(v1, v1[3]);
  if (!*(*v2 + OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_storeID + 8))
  {
    return 0;
  }

  v3 = *(*v2 + OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_libraryItemStateProvider);

  v4 = sub_1007A2214();

  v5 = [v3 itemStateWithIdentifier:v4];

  v6 = [v5 library];
  swift_unknownObjectRelease();
  return v6 == 3;
}

void sub_1002D63C0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

unint64_t sub_1002D64B8()
{
  result = qword_100ADA668;
  if (!qword_100ADA668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADA668);
  }

  return result;
}

uint64_t sub_1002D650C(uint64_t a1, int a2)
{
  v3 = v2;
  v63 = a2;
  v5 = sub_10079ACE4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v58 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v56 = &v54 - v9;
  __chkstk_darwin(v10);
  v57 = &v54 - v11;
  __chkstk_darwin(v12);
  v64 = &v54 - v13;
  __chkstk_darwin(v14);
  v16 = &v54 - v15;
  Strong = swift_unknownObjectWeakLoadStrong();
  p_class_meths = &OBJC_PROTOCOL___BKAsset.class_meths;
  v65 = v6;
  if (Strong)
  {
    v19 = Strong;
    v20 = swift_unknownObjectWeakLoadStrong();
    if (v20)
    {
      v21 = v20;
      v22 = v19;
      [v21 assetViewController:v22 willOpen:v63 & 1];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    (*(v6 + 16))(v16, &v3[OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_logger], v5);
    swift_unknownObjectRetain();
    v23 = sub_10079ACC4();
    v24 = sub_1007A29B4();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v66 = a1;
      v67[0] = v26;
      *v25 = 136315138;
      swift_unknownObjectRetain();
      sub_1001F1160(&qword_100ADA6D8, &qword_100818590);
      v27 = sub_1007A22E4();
      v29 = v5;
      v30 = sub_1000070F4(v27, v28, v67);

      *(v25 + 4) = v30;
      v5 = v29;
      v6 = v65;
      _os_log_impl(&_mh_execute_header, v23, v24, "Unable to handle opening to location (%s), viewController missing from navigationHandler", v25, 0xCu);
      sub_1000074E0(v26);

      p_class_meths = (&OBJC_PROTOCOL___BKAsset + 32);
    }

    (*(v6 + 8))(v16, v5);
  }

  v31 = &v3[OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_dataManager];
  swift_beginAccess();
  v32 = [*(*sub_10000E3E8(v31 *(v31 + 3)) + OBJC:"state" IVAR:? :? :? :? TtC5Books30AudiobookNowPlayingDataManager:?player)];
  v33 = *(v6 + 16);
  v59 = p_class_meths[194];
  v60 = v33;
  v33(v64, v59 + v3, v5);
  v62 = v3;
  v34 = v3;
  v35 = sub_10079ACC4();
  v36 = sub_1007A29D4();
  v37 = os_log_type_enabled(v35, v36);
  v61 = v32;
  if (v37)
  {
    v55 = v5;
    v38 = swift_slowAlloc();
    *v38 = 67110144;
    *(v38 + 4) = v32 == 2;
    *(v38 + 8) = 1024;
    *(v38 + 10) = *(&v34->isa + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_allowAutoplay);
    *(v38 + 14) = 1024;
    *(v38 + 16) = *(&v34->isa + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_finishedOpening);
    *(v38 + 20) = 1024;
    *(v38 + 22) = v63 & 1;
    *(v38 + 26) = 1024;
    if ([*(*sub_10000E3E8(v31 *(v31 + 3)) + OBJC:"currentAudiobook" IVAR:? :? :? :? TtC5Books30AudiobookNowPlayingDataManager:?player)])
    {
      swift_unknownObjectRelease();
      v39 = 1;
    }

    else
    {
      v39 = 0;
    }

    *(v38 + 28) = v39;

    _os_log_impl(&_mh_execute_header, v35, v36, "handleOpen isPlaying = %{BOOL}d allowAutoplay=%{BOOL}d finishedOpening=%{BOOL}d animated=%{BOOL}d _readyToPlay=%{BOOL}d", v38, 0x20u);

    v5 = v55;
  }

  else
  {

    v35 = v34;
  }

  v40 = *(v65 + 8);
  v65 += 8;
  result = v40(v64, v5);
  v42 = v62;
  if (v61 != 2)
  {
    v43 = OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_allowAutoplay;
    if (*(&v34->isa + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_allowAutoplay) == 1)
    {
      if (*(&v34->isa + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_finishedOpening) & 1) == 0 && (v63)
      {
        v44 = v58;
        v60(v58, v59 + v62, v5);
        v45 = sub_10079ACC4();
        v46 = sub_1007A29D4();
        if (os_log_type_enabled(v45, v46))
        {
          v47 = v34;
          v48 = swift_slowAlloc();
          *v48 = 0;
          v49 = "Not finished opening so setting wantsToPlayAfterOpen";
LABEL_26:
          _os_log_impl(&_mh_execute_header, v45, v46, v49, v48, 2u);
          v34 = v47;

          goto LABEL_27;
        }

        goto LABEL_27;
      }

      if (![*(*sub_10000E3E8(v31 *(v31 + 3)) + OBJC:"currentAudiobook" IVAR:? :? :? :? TtC5Books30AudiobookNowPlayingDataManager:?player)])
      {
        v44 = v56;
        v60(v56, v59 + v42, v5);
        v45 = sub_10079ACC4();
        v46 = sub_1007A29D4();
        if (os_log_type_enabled(v45, v46))
        {
          v47 = v34;
          v48 = swift_slowAlloc();
          *v48 = 0;
          v49 = "Not ready to play so setting wantsToPlayAfterOpen";
          goto LABEL_26;
        }

LABEL_27:

        result = v40(v44, v5);
        *(&v34->isa + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_wantsPlayAfterOpen) = 1;
        return result;
      }

      swift_unknownObjectRelease();
      v50 = v57;
      v60(v57, v59 + v42, v5);
      v51 = sub_10079ACC4();
      v52 = sub_1007A29D4();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        *v53 = 0;
        _os_log_impl(&_mh_execute_header, v51, v52, "handleOpen going to autoplay", v53, 2u);
      }

      v40(v50, v5);
      sub_1002CF778(1);
      *(&v34->isa + v43) = 0;
      return AriadneTrace_AudiobookBeginPlayback();
    }
  }

  return result;
}

uint64_t sub_1002D6C60(char a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = Strong;
  if (Strong)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong assetViewController:v4 requestClose:a1 & 1 error:0];
      Strong = swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }

  return _objc_release_x2(Strong);
}

uint64_t sub_1002D6D08()
{
  v1 = v0;
  v2 = sub_10079ACE4();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_logger, v2, v4);
  v7 = sub_10079ACC4();
  v8 = sub_1007A29D4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "notified that asset with same assetID deleted", v9, 2u);
  }

  (*(v3 + 8))(v6, v2);
  v10 = (v1 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_dataManager);
  swift_beginAccess();
  if (*(*sub_10000E3E8(v10, v10[3]) + OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_streaming))
  {
    return 0;
  }

  v12 = *(*sub_10000E3E8(v10, v10[3]) + OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_storeID + 8);
  v13 = *(*sub_10000E3E8(v10, v10[3]) + OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_player);
  if (v12)
  {
    if ([v13 state] == 2)
    {
      *(v1 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_wantsPlayAfterOpen) = 1;
      [*(*sub_10000E3E8(v10 v10[3]) + OBJC:"pause" IVAR:? :? :? :? TtC5Books30AudiobookNowPlayingDataManager:?player)];
    }

    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v14 = result;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v16 = Strong;
        v17 = v14;
        [v16 audiobookNowPlayingViewController:v17 shouldStream:1];

        swift_unknownObjectRelease();
      }

      else
      {
      }

      return 0;
    }
  }

  else
  {
    [v13 pause];
    return 1;
  }

  return result;
}

uint64_t sub_1002D6FD4(uint64_t a1, uint64_t a2, void *a3, double a4, double a5)
{
  v10 = sub_1001F1160(&unk_100ADB5C0, &unk_100816880);
  __chkstk_darwin(v10 - 8);
  v12 = &v18 - v11;
  v13 = *(a1 + 32);
  if (a2)
  {
    sub_100796B64();
    v14 = sub_100796BB4();
    (*(*(v14 - 8) + 56))(v12, 0, 1, v14);
  }

  else
  {
    v15 = sub_100796BB4();
    (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  }

  v16 = a3;
  v13(v12, a3, a4, a5);

  return sub_100007840(v12, &unk_100ADB5C0, &unk_100816880);
}

void sub_1002D717C(void *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(v6);

  v5 = v6[1];
  *a4 = v6[0];
  a4[1] = v5;
}

uint64_t sub_1002D720C(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v7 = v6;
  return sub_10079B9B4();
}

double sub_1002D7288@<D0>(double *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(&v4);

  result = v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1002D7308(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_10079B9B4();
}

uint64_t sub_1002D73A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&unk_100ADB5C0, &unk_100816880);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1002D7414()
{
  v1 = *(sub_1001F1160(&unk_100ADB5C0, &unk_100816880) - 8);
  v2 = *(v0 + 2);
  v3 = v0[3];
  v4 = *(v0 + 4);
  v5 = *(v0 + 5);
  v6 = v0 + ((*(v1 + 80) + 48) & ~*(v1 + 80));

  sub_1002D4B78(v2, v4, v5, v6, v3);
}

uint64_t sub_1002D74A4()
{
  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1002D74EC()
{
  v1 = *(v0 + 24);
  result = sub_1002D28E8();
  if (v1)
  {
    return v1(result);
  }

  return result;
}

uint64_t sub_1002D7530()
{

  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

void sub_1002D7578()
{
  v1 = OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_finishedOpening;
  *(v0 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_finishedOpening) = 1;
  if (([*(v0 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_networkMonitor) isConnected] & 1) == 0)
  {
    v2 = (v0 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_dataManager);
    swift_beginAccess();
    if (*(*sub_10000E3E8(v2, v2[3]) + OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_streaming) == 1)
    {
      v3 = OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_hasShownNetworkError;
      if ((*(v0 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_hasShownNetworkError) & 1) == 0 && *(v0 + v1) == 1)
      {
        sub_1002CEE6C();
        *(v0 + v3) = 1;
      }
    }
  }
}

uint64_t sub_1002D7640()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong preorderedStateChanged];
    swift_unknownObjectRelease();
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_buyButtonPresenter;
    swift_beginAccess();
    sub_1000077D8(v0 + v3, v4, &unk_100ADA690, &unk_100818550);
    if (v5)
    {
      sub_1001F1160(&qword_100ADA6A0, &qword_100818560);
      sub_1001F1160(&qword_100ADA6A8, &qword_100818568);
      if ((swift_dynamicCast() & 1) == 0)
      {
        v8 = 0;
        v6 = 0u;
        v7 = 0u;
      }
    }

    else
    {
      sub_100007840(v4, &unk_100ADA690, &unk_100818550);
      v6 = 0u;
      v7 = 0u;
      v8 = 0;
    }

    type metadata accessor for AudiobookNowPlayingPresenter(0);
    sub_10055B814(&v6);
    swift_unknownObjectRelease();
    return sub_100007840(&v6, &qword_100AD4FA0, &qword_10081F020);
  }

  return result;
}

void sub_1002D77C8()
{
  v1 = [*(v0 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_networkMonitor) isConnected];
  v2 = OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_hasShownNetworkError;
  if (v1)
  {
    if ((*(v0 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_hasShownNetworkError) & 1) == 0 && *(v0 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_finishedOpening) == 1)
    {
      sub_1002D586C();
LABEL_8:
      *(v0 + v2) = 1;
    }
  }

  else if ((*(v0 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_hasShownNetworkError) & 1) == 0 && *(v0 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_finishedOpening) == 1)
  {
    sub_1002CEE6C();
    goto LABEL_8;
  }
}

uint64_t sub_1002D7870()
{

  return swift_deallocObject();
}

void sub_1002D78C0(uint64_t a1, void (**a2)(void, void))
{
  v3 = swift_allocObject();
  *(v3 + 16) = a2;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {
      v6 = v5;
      v7 = swift_allocObject();
      *(v7 + 16) = sub_10021C1E0;
      *(v7 + 24) = v3;
      v19 = sub_1002D7BDC;
      v20 = v7;
      aBlock = _NSConcreteStackBlock;
      v16 = 1107296256;
      v17 = sub_1002D63C0;
      v18 = &unk_100A13EB8;
      v8 = _Block_copy(&aBlock);
      _Block_copy(a2);
      v9 = v14;

      [v6 assetViewControllerRequestToBuy:v9 completion:v8];

      _Block_release(v8);

      swift_unknownObjectRelease();
LABEL_9:

      return;
    }

    v10 = swift_unknownObjectWeakLoadStrong();
    if (v10)
    {
      v11 = v10;
      v12 = swift_allocObject();
      *(v12 + 16) = sub_10021C1E0;
      *(v12 + 24) = v3;
      v19 = sub_1002D7C34;
      v20 = v12;
      aBlock = _NSConcreteStackBlock;
      v16 = 1107296256;
      v17 = sub_1002D63C0;
      v18 = &unk_100A13E68;
      v13 = _Block_copy(&aBlock);
      _Block_copy(a2);
      v9 = v14;

      [v11 audiobookNowPlayingViewControllerRequestBuy:v9 completion:v13];
      _Block_release(v13);

      swift_unknownObjectRelease();

      goto LABEL_9;
    }

    _Block_copy(a2);
    a2[2](a2, 0);
  }

  else
  {
    _Block_copy(a2);
    a2[2](a2, 0);
  }
}

uint64_t sub_1002D7C68()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100ADA6E0);
  sub_100008B98(v0, qword_100ADA6E0);
  sub_10000A7C4(0, &qword_100AD20A0, OS_os_log_ptr);
  return sub_1007A33F4();
}

void sub_1002D7CEC()
{
  v1 = v0;
  if (qword_100AD13D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10079ACE4();
  sub_100008B98(v2, qword_100ADA6E0);

  oslog = sub_10079ACC4();
  v3 = sub_1007A29A4();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = *(v1 + 40) >> 61;
    v7 = 0xE700000000000000;
    v15 = v5;
    *v4 = 136446210;
    v8 = 0x64656C74746573;
    if (v6 == 3)
    {
      v8 = 0x676E69766F6D6572;
      v7 = 0xEC00000072756C42;
    }

    if (v6 == 2)
    {
      v8 = 0x70416E4F72756C62;
      v7 = 0xED00006465696C70;
    }

    v9 = 0x676E69796C707061;
    v10 = 0xEC00000072756C42;
    if (v6)
    {
      v9 = 0xD000000000000018;
      v10 = 0x80000001008C9C00;
    }

    if (v6 <= 1)
    {
      v11 = v9;
    }

    else
    {
      v11 = v8;
    }

    if (v6 <= 1)
    {
      v12 = v10;
    }

    else
    {
      v12 = v7;
    }

    v13 = sub_1000070F4(v11, v12, &v15);

    *(v4 + 4) = v13;
    _os_log_impl(&_mh_execute_header, oslog, v3, "newState: %{public}s", v4, 0xCu);
    sub_1000074E0(v5);
  }
}

void sub_1002D7F04()
{
  v1 = v0;
  if (qword_100AD13D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10079ACE4();
  sub_100008B98(v2, qword_100ADA6E0);

  v3 = sub_10079ACC4();
  v4 = sub_1007A29A4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v5 = 136315394;
    v6 = sub_1000070F4(0xD00000000000001CLL, 0x80000001008C9CC0, aBlock);
    v7 = v1[5] >> 61;
    *(v5 + 4) = v6;
    *(v5 + 12) = 2080;
    v8 = 0xE700000000000000;
    v9 = 0x64656C74746573;
    if (v7 == 3)
    {
      v9 = 0x676E69766F6D6572;
      v8 = 0xEC00000072756C42;
    }

    if (v7 == 2)
    {
      v9 = 0x70416E4F72756C62;
      v8 = 0xED00006465696C70;
    }

    v10 = 0x676E69796C707061;
    v11 = 0xEC00000072756C42;
    if (v7)
    {
      v10 = 0xD000000000000018;
      v11 = 0x80000001008C9C00;
    }

    if (v7 <= 1)
    {
      v12 = v10;
    }

    else
    {
      v12 = v9;
    }

    if (v7 <= 1)
    {
      v13 = v11;
    }

    else
    {
      v13 = v8;
    }

    v14 = sub_1000070F4(v12, v13, aBlock);

    *(v5 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s, currentState: %s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v16 = v1[2];
  v15 = v1[3];
  v17 = v1[5] >> 61;
  if (v17 <= 1)
  {
    if (!v17)
    {
      v18 = v1[4];
      v39 = v18;
      v19 = v16;
      v20 = v15;
      v21 = v18;
      v22 = objc_opt_self();
      v23 = swift_allocObject();
      swift_weakInit();
      aBlock[4] = sub_1002DA588;
      aBlock[5] = v23;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100201C54;
      aBlock[3] = &unk_100A141C8;
      v24 = _Block_copy(aBlock);
      v25 = v19;
      v37 = v20;
      v26 = v21;

      v27 = [v22 scheduledTimerWithTimeInterval:0 repeats:v24 block:3.5];
      _Block_release(v24);
      *(swift_allocObject() + 16) = v27;
      sub_10079B884();
      swift_allocObject();
      v28 = sub_10079B894();
      v29 = v1[2];
      v30 = v1[3];
      v31 = v1[4];
      v32 = v1[5];
      v1[2] = v16;
      v1[3] = v15;
      v1[4] = v39;
      v1[5] = v28 | 0x2000000000000000;
      v33 = v25;
      v34 = v37;
      v35 = v26;

      sub_1002D9AF4(v29, v30, v31, v32);
      sub_1002D7CEC();
    }
  }

  else
  {
    if (v17 == 2)
    {
      v36 = v16;
      v38 = v15;
      sub_1002D8A8C(v36, v38);
    }

    else
    {
      if (v17 != 3)
      {
        return;
      }

      v38 = v16;
      [v38 startAnimation];
    }
  }
}

void sub_1002D83C4()
{
  v1 = v0;
  if (qword_100AD13D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10079ACE4();
  sub_100008B98(v2, qword_100ADA6E0);
  v3 = sub_10079ACC4();
  v4 = sub_1007A29A4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    aBlock = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_1000070F4(0xD00000000000001ALL, 0x80000001008C9CA0, &aBlock);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s", v5, 0xCu);
    sub_1000074E0(v6);
  }

  v8 = v0[2];
  v7 = v0[3];
  v9 = v0[5] >> 61;
  if (v9)
  {
    if (v9 == 1)
    {
      v25 = v8;
      v26 = v7;
      v27 = objc_opt_self();
      v28 = swift_allocObject();
      swift_weakInit();
      v56 = sub_1002DA588;
      v57 = v28;
      aBlock = _NSConcreteStackBlock;
      v53 = 1107296256;
      v54 = sub_100201C54;
      v55 = &unk_100A14128;
      v29 = _Block_copy(&aBlock);
      v30 = v25;
      v31 = v26;

      v32 = [v27 scheduledTimerWithTimeInterval:0 repeats:v29 block:3.5];
      _Block_release(v29);
      *(swift_allocObject() + 16) = v32;
      sub_10079B884();
      swift_allocObject();
      v33 = sub_10079B894();
      v34 = v1[2];
      v35 = v1[3];
      v36 = v1[4];
      v37 = v1[5];
      v1[2] = v8;
      v1[3] = v7;
      v1[4] = v33;
      v1[5] = 0x4000000000000000;
      v38 = v30;
      v39 = v31;

      sub_1002D9AF4(v34, v35, v36, v37);
      sub_1002D7CEC();

      sub_1002D7F04();
    }

    else
    {

      oslog = sub_10079ACC4();
      v40 = sub_1007A29B4();

      if (os_log_type_enabled(oslog, v40))
      {
        v41 = swift_slowAlloc();
        aBlock = swift_slowAlloc();
        *v41 = 136315394;
        v42 = sub_1000070F4(0xD00000000000001ALL, 0x80000001008C9CA0, &aBlock);
        v43 = v1[5] >> 61;
        v44 = 0xE700000000000000;
        *(v41 + 4) = v42;
        *(v41 + 12) = 2080;
        v45 = 0x64656C74746573;
        if (v43 == 3)
        {
          v45 = 0x676E69766F6D6572;
          v44 = 0xEC00000072756C42;
        }

        if (v43 == 2)
        {
          v45 = 0x70416E4F72756C62;
          v44 = 0xED00006465696C70;
        }

        v46 = 0x676E69796C707061;
        v47 = 0xEC00000072756C42;
        if (v43)
        {
          v46 = 0xD000000000000018;
          v47 = 0x80000001008C9C00;
        }

        if (v43 <= 1)
        {
          v48 = v46;
        }

        else
        {
          v48 = v45;
        }

        if (v43 <= 1)
        {
          v49 = v47;
        }

        else
        {
          v49 = v44;
        }

        v50 = sub_1000070F4(v48, v49, &aBlock);

        *(v41 + 14) = v50;
        _os_log_impl(&_mh_execute_header, oslog, v40, "%s called while in invalid state %s", v41, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }
    }
  }

  else
  {
    v10 = v8;
    v11 = v7;
    v12 = objc_opt_self();
    v13 = swift_allocObject();
    swift_weakInit();
    v56 = sub_1002DA588;
    v57 = v13;
    aBlock = _NSConcreteStackBlock;
    v53 = 1107296256;
    v54 = sub_100201C54;
    v55 = &unk_100A14178;
    v14 = _Block_copy(&aBlock);
    v15 = v10;
    v16 = v11;

    v17 = [v12 scheduledTimerWithTimeInterval:0 repeats:v14 block:3.5];
    _Block_release(v14);
    *(swift_allocObject() + 16) = v17;
    sub_10079B884();
    swift_allocObject();
    v18 = sub_10079B894();
    v19 = v1[2];
    v20 = v1[3];
    v21 = v1[4];
    v22 = v1[5];
    v1[2] = v8;
    v1[3] = v7;
    v1[4] = v18;
    v1[5] = 0x4000000000000000;
    v23 = v15;
    v24 = v16;

    sub_1002D9AF4(v19, v20, v21, v22);
    sub_1002D7CEC();
  }
}

void sub_1002D8A8C(void *a1, void *a2)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
    [a1 removeFromSuperview];
  }

  v5 = v2;
  v6 = sub_1002D9250(a2);
  v7 = objc_opt_self();
  v8 = swift_allocObject();
  swift_weakInit();
  v20[4] = sub_1002D9B80;
  v20[5] = v8;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 1107296256;
  v20[2] = sub_100201C54;
  v20[3] = &unk_100A140D8;
  v9 = _Block_copy(v20);
  v10 = v6;
  v11 = a2;

  v12 = [v7 scheduledTimerWithTimeInterval:0 repeats:v9 block:3.5];
  _Block_release(v9);
  *(swift_allocObject() + 16) = v12;
  sub_10079B884();
  swift_allocObject();
  v13 = sub_10079B894();
  v14 = v5[2];
  v15 = v5[3];
  v16 = v5[4];
  v17 = v5[5];
  v5[2] = v10;
  v5[3] = v11;
  v5[4] = v13;
  v5[5] = 0x6000000000000000;
  v18 = v10;
  v19 = v11;

  sub_1002D9AF4(v14, v15, v16, v17);
  sub_1002D7CEC();

  [v18 startAnimation];
}

void sub_1002D8CA4()
{
  v1 = v0;
  if (qword_100AD13D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10079ACE4();
  sub_100008B98(v2, qword_100ADA6E0);
  v3 = sub_10079ACC4();
  v4 = sub_1007A29A4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v25 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_1000070F4(0xD000000000000015, 0x80000001008C9C20, &v25);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s", v5, 0xCu);
    sub_1000074E0(v6);
  }

  if (*(v0 + 40) >> 61 == 3)
  {
    v7 = *(v0 + 24);
    v8 = *(v0 + 16);
    v24 = v7;

    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      [v24 removeFromSuperview];
    }

    v9 = v1[2];
    v10 = v1[3];
    v11 = v1[4];
    v12 = v1[5];
    v1[2] = 0;
    v1[3] = 0;
    v1[4] = 0;
    v1[5] = 0x8000000000000000;
    sub_1002D9AF4(v9, v10, v11, v12);
    sub_1002D7CEC();
  }

  else
  {

    v24 = sub_10079ACC4();
    v13 = sub_1007A29B4();

    if (os_log_type_enabled(v24, v13))
    {
      v14 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v14 = 136315394;
      v15 = sub_1000070F4(0xD000000000000015, 0x80000001008C9C20, &v25);
      v16 = v1[5] >> 61;
      v17 = 0xE700000000000000;
      *(v14 + 4) = v15;
      *(v14 + 12) = 2080;
      v18 = 0x64656C74746573;
      if (v16 == 3)
      {
        v18 = 0x676E69766F6D6572;
        v17 = 0xEC00000072756C42;
      }

      if (v16 == 2)
      {
        v18 = 0x70416E4F72756C62;
        v17 = 0xED00006465696C70;
      }

      v19 = 0x676E69796C707061;
      v20 = 0xEC00000072756C42;
      if (v16)
      {
        v19 = 0xD000000000000018;
        v20 = 0x80000001008C9C00;
      }

      if (v16 <= 1)
      {
        v21 = v19;
      }

      else
      {
        v21 = v18;
      }

      if (v16 <= 1)
      {
        v22 = v20;
      }

      else
      {
        v22 = v17;
      }

      v23 = sub_1000070F4(v21, v22, &v25);

      *(v14 + 14) = v23;
      _os_log_impl(&_mh_execute_header, v24, v13, "%s called while in invalid state: %s", v14, 0x16u);
      swift_arrayDestroy();
    }
  }
}

id sub_1002D902C(void *a1)
{
  [a1 setAlpha:0.0];
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = objc_allocWithZone(UIViewPropertyAnimator);
  v14 = sub_10025D6CC;
  v15 = v2;
  v10 = _NSConcreteStackBlock;
  v11 = 1107296256;
  v12 = sub_1003323D0;
  v13 = &unk_100A14088;
  v4 = _Block_copy(&v10);
  v5 = a1;

  v6 = [v3 initWithDuration:v4 controlPoint1:0.26 controlPoint2:0.5 animations:{0.0, 0.5, 1.0}];
  _Block_release(v4);
  v7 = swift_allocObject();
  swift_weakInit();
  v14 = sub_1002D9AC4;
  v15 = v7;
  v10 = _NSConcreteStackBlock;
  v11 = 1107296256;
  v12 = sub_1002D91FC;
  v13 = &unk_100A140B0;
  v8 = _Block_copy(&v10);

  [v6 addCompletion:v8];
  _Block_release(v8);
  return v6;
}

double sub_1002D91FC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);

  return result;
}

id sub_1002D9250(void *a1)
{
  [a1 setAlpha:1.0];
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = objc_allocWithZone(UIViewPropertyAnimator);
  v14 = sub_10025D640;
  v15 = v2;
  v10 = _NSConcreteStackBlock;
  v11 = 1107296256;
  v12 = sub_1003323D0;
  v13 = &unk_100A13FE8;
  v4 = _Block_copy(&v10);
  v5 = a1;

  v6 = [v3 initWithDuration:v4 controlPoint1:0.26 controlPoint2:0.5 animations:{0.0, 0.5, 1.0}];
  _Block_release(v4);
  [v6 setInterruptible:1];
  v7 = swift_allocObject();
  swift_weakInit();
  v14 = sub_1002D9A94;
  v15 = v7;
  v10 = _NSConcreteStackBlock;
  v11 = 1107296256;
  v12 = sub_1002D91FC;
  v13 = &unk_100A14038;
  v8 = _Block_copy(&v10);

  [v6 addCompletion:v8];
  _Block_release(v8);
  return v6;
}

double sub_1002D9434(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    a3();
  }

  return result;
}

uint64_t sub_1002D9494(uint64_t a1, uint64_t a2)
{
  v2 = sub_1007A1D04();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);

    *v5 = sub_1007A2D74();
    (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
    v7 = sub_1007A1D34();
    result = (*(v3 + 8))(v5, v2);
    if (v7)
    {

      sub_1002D9600(v8);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_1002D9600(void *a1)
{
  v2 = a1[5];
  if (v2 >> 61 != 4 || (v2 == 0x8000000000000000 ? (v3 = (a1[3] | a1[4] | a1[2]) == 0) : (v3 = 0), !v3))
  {
    if (qword_100AD13D0 != -1)
    {
      swift_once();
    }

    v4 = sub_10079ACE4();
    sub_100008B98(v4, qword_100ADA6E0);

    v5 = sub_10079ACC4();
    v6 = sub_1007A29B4();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v9 = a1[5] >> 61;
      v10 = 0xE700000000000000;
      v17 = v8;
      *v7 = 136446210;
      v11 = 0x64656C74746573;
      if (v9 == 3)
      {
        v11 = 0x676E69766F6D6572;
        v10 = 0xEC00000072756C42;
      }

      if (v9 == 2)
      {
        v11 = 0x70416E4F72756C62;
        v10 = 0xED00006465696C70;
      }

      v12 = 0x676E69796C707061;
      v13 = 0xEC00000072756C42;
      if (v9)
      {
        v12 = 0xD000000000000018;
        v13 = 0x80000001008C9C00;
      }

      if (v9 <= 1)
      {
        v14 = v12;
      }

      else
      {
        v14 = v11;
      }

      if (v9 <= 1)
      {
        v15 = v13;
      }

      else
      {
        v15 = v10;
      }

      v16 = sub_1000070F4(v14, v15, &v17);

      *(v7 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v5, v6, "Unstuck Timer fired with state %{public}s, manually finishing", v7, 0xCu);
      sub_1000074E0(v8);
    }

    sub_1002D7F04();
  }
}

uint64_t sub_1002D9848()
{
  sub_1002D9AF4(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));
  sub_10002B130(v0 + 48);

  return swift_deallocClassInstance();
}

unint64_t sub_1002D98B0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0)
  {
    return v1 >> 61;
  }

  else
  {
    return (*a1 + 4);
  }
}

uint64_t sub_1002D98CC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7C && *(a1 + 32))
  {
    return (*a1 + 124);
  }

  v3 = (((*(a1 + 24) >> 57) >> 4) | (8 * ((*(a1 + 24) >> 57) & 8 | *(a1 + 24) & 7))) ^ 0x7F;
  if (v3 >= 0x7B)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1002D9928(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7B)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 124;
    *(result + 8) = 0;
    if (a3 >= 0x7C)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7C)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_1002D9990(void *result, uint64_t a2)
{
  if (a2 < 4)
  {
    result[3] = result[3] & 0xFFFFFFFFFFFFFF8 | (a2 << 61);
  }

  else
  {
    *result = (a2 - 4);
    result[1] = 0;
    result[2] = 0;
    result[3] = 0x8000000000000000;
  }

  return result;
}

unint64_t sub_1002D99CC()
{
  v1 = *(v0 + 24) >> 61;
  v2 = 0x64656C74746573;
  if (v1 == 3)
  {
    v2 = 0x676E69766F6D6572;
  }

  if (v1 == 2)
  {
    v2 = 0x70416E4F72756C62;
  }

  v3 = 0x676E69796C707061;
  if (v1)
  {
    v3 = 0xD000000000000018;
  }

  if (v1 <= 1)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

double sub_1002D9AF4(void *a1, void *a2, void *a3, unint64_t a4)
{
  if ((a4 >> 61) - 2 >= 2)
  {
    if ((a4 >> 61) > 1)
    {
      return result;
    }

    a1 = a2;
    a2 = a3;
  }

  return result;
}

void sub_1002D9B98()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = [Strong view];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 snapshotViewAfterScreenUpdates:0];

      if (v5)
      {
        v6 = [objc_opt_self() effectWithStyle:8];
        v7 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v6];

        sub_10056A5DC(v5);
        v8 = v7;
        sub_10056E228(v8);
        v9 = sub_1002D902C(v8);
        v10 = objc_opt_self();
        v11 = swift_allocObject();
        swift_weakInit();
        aBlock[4] = sub_1002DA588;
        aBlock[5] = v11;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100201C54;
        aBlock[3] = &unk_100A14268;
        v12 = _Block_copy(aBlock);
        v39 = v5;
        v13 = v9;

        v14 = [v10 scheduledTimerWithTimeInterval:0 repeats:v12 block:3.5];
        _Block_release(v12);
        *(swift_allocObject() + 16) = v14;
        sub_10079B884();
        swift_allocObject();
        v15 = sub_10079B894();
        v16 = v1[2];
        v17 = v1[3];
        v19 = v1[4];
        v18 = v1[5];
        v1[2] = v5;
        v1[3] = v8;
        v1[4] = v13;
        v1[5] = v15;
        v20 = v8;
        v21 = v39;
        v22 = v13;

        sub_1002D9AF4(v16, v17, v19, v18);
        sub_1002D7CEC();

        [v22 startAnimation];
        swift_unknownObjectRelease();
      }

      else
      {
        if (qword_100AD13D0 != -1)
        {
          swift_once();
        }

        v31 = sub_10079ACE4();
        sub_100008B98(v31, qword_100ADA6E0);
        v32 = sub_10079ACC4();
        v33 = sub_1007A29B4();
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          *v34 = 0;
          _os_log_impl(&_mh_execute_header, v32, v33, "Failed to snapshot the view", v34, 2u);
        }

        v35 = v1[2];
        v36 = v1[3];
        v37 = v1[4];
        v38 = v1[5];
        v1[2] = 0;
        v1[3] = 0;
        v1[4] = 0;
        v1[5] = 0x8000000000000000;
        sub_1002D9AF4(v35, v36, v37, v38);
        sub_1002D7CEC();

        swift_unknownObjectRelease();
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    if (qword_100AD13D0 != -1)
    {
      swift_once();
    }

    v23 = sub_10079ACE4();
    sub_100008B98(v23, qword_100ADA6E0);
    v24 = sub_10079ACC4();
    v25 = sub_1007A29B4();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
    }

    v27 = v1[2];
    v28 = v1[3];
    v29 = v1[4];
    v30 = v1[5];
    v1[2] = 0;
    v1[3] = 0;
    v1[4] = 0;
    v1[5] = 0x8000000000000000;
    sub_1002D9AF4(v27, v28, v29, v30);

    sub_1002D7CEC();
  }
}

void sub_1002DA06C()
{
  v1 = v0;
  if (qword_100AD13D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10079ACE4();
  sub_100008B98(v2, qword_100ADA6E0);

  v3 = sub_10079ACC4();
  v4 = sub_1007A29A4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v36[0] = swift_slowAlloc();
    *v5 = 136315394;
    v6 = sub_1000070F4(0xD00000000000002DLL, 0x80000001008C9CE0, v36);
    v7 = v0[5] >> 61;
    *(v5 + 4) = v6;
    *(v5 + 12) = 2080;
    v8 = 0xE700000000000000;
    v9 = 0x64656C74746573;
    if (v7 == 3)
    {
      v9 = 0x676E69766F6D6572;
      v8 = 0xEC00000072756C42;
    }

    if (v7 == 2)
    {
      v9 = 0x70416E4F72756C62;
      v8 = 0xED00006465696C70;
    }

    v10 = 0x676E69796C707061;
    v11 = 0xEC00000072756C42;
    if (v7)
    {
      v10 = 0xD000000000000018;
      v11 = 0x80000001008C9C00;
    }

    if (v7 <= 1)
    {
      v12 = v10;
    }

    else
    {
      v12 = v9;
    }

    if (v7 <= 1)
    {
      v13 = v11;
    }

    else
    {
      v13 = v8;
    }

    v14 = sub_1000070F4(v12, v13, v36);

    *(v5 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s, currentState: %s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v15 = v0[5] >> 61;
  if (v15 >= 3)
  {
    if (v15 == 3)
    {
      v16 = v0[2];
      v17 = v0[3];
      v18 = v16;
      v19 = v17;
      [v18 setFractionComplete:0.0];
      [v18 pauseAnimation];
      v20 = sub_10079ACC4();
      v21 = sub_1007A2994();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&_mh_execute_header, v20, v21, "Change while removing blur. Setting state back to removingBlur with animation paused!.", v22, 2u);
      }

      v23 = objc_opt_self();
      v24 = swift_allocObject();
      swift_weakInit();
      v36[4] = sub_1002DA588;
      v36[5] = v24;
      v36[0] = _NSConcreteStackBlock;
      v36[1] = 1107296256;
      v36[2] = sub_100201C54;
      v36[3] = &unk_100A14218;
      v25 = _Block_copy(v36);
      v26 = v18;
      v27 = v19;

      v28 = [v23 scheduledTimerWithTimeInterval:0 repeats:v25 block:3.5];
      _Block_release(v25);
      *(swift_allocObject() + 16) = v28;
      sub_10079B884();
      swift_allocObject();
      v29 = sub_10079B894();
      v30 = v1[2];
      v31 = v1[3];
      v32 = v1[4];
      v33 = v1[5];
      v1[2] = v16;
      v1[3] = v17;
      v1[4] = v29;
      v1[5] = 0x6000000000000000;
      v34 = v26;
      v35 = v27;

      sub_1002D9AF4(v30, v31, v32, v33);
      sub_1002D7CEC();
    }

    else
    {

      sub_1002D9B98();
    }
  }
}

id sub_1002DA5BC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ContextActionData();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1002DA660@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1007971A4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v118 = &v110 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v119 = &v110 - v6;
  __chkstk_darwin(v7);
  v120 = &v110 - v8;
  __chkstk_darwin(v9);
  v11 = &v110 - v10;
  __chkstk_darwin(v12);
  v121 = &v110 - v13;
  __chkstk_darwin(v14);
  v16 = &v110 - v15;
  __chkstk_darwin(v17);
  v19 = &v110 - v18;
  __chkstk_darwin(v20);
  v22 = &v110 - v21;
  __chkstk_darwin(v23);
  v25 = &v110 - v24;
  __chkstk_darwin(v26);
  v28 = &v110 - v27;
  sub_100797374();
  if (!v126)
  {
    sub_1000230BC(v125);
    return (*(v3 + 104))(a1, enum case for ContextActionSource.unknown(_:), v2);
  }

  v122 = a1;
  sub_1000076D4(v125, v127);
  sub_100007484(v127, v125);
  v29 = sub_1002DB3D0();
  if (swift_dynamicCast())
  {
    v30 = v123;
    v31 = [v123 collectionID];
    if (v31)
    {
      v32 = v31;
      v33 = sub_1007A2254();
      v35 = v34;

      v36 = v122;
      *v122 = v33;
      v36[1] = v35;
      v36[5] = v29;
      v36[2] = v30;
      sub_1000074E0(v127);
      return (*(v3 + 104))(v36, enum case for ContextActionSource.library(_:), v2);
    }

    __break(1u);
    goto LABEL_49;
  }

  sub_100007484(v127, v125);
  if (!swift_dynamicCast())
  {
    sub_1000074E0(v127);
    return (*(v3 + 104))(v122, enum case for ContextActionSource.unknown(_:), v2);
  }

  v111 = v11;
  v39 = v123;
  v38 = v124;
  v40 = *(v3 + 104);
  v113 = enum case for ContextActionSource.productPage(_:);
  v115 = v40;
  v116 = v3 + 104;
  v40(v28);
  v41 = sub_100797194();
  v42 = v2;
  v43 = v41;
  v45 = v44;
  v46 = *(v3 + 8);
  v117 = v42;
  v112 = v46;
  v46(v28, v42);
  v114 = v38;
  if (v43 == v39 && v45 == v38)
  {
    goto LABEL_9;
  }

  v47 = v39;
  v48 = sub_1007A3AB4();

  if (v48)
  {
    goto LABEL_12;
  }

  v51 = enum case for ContextActionSource.wantToReadEntry(_:);
  v52 = v117;
  (v115)(v25, enum case for ContextActionSource.wantToReadEntry(_:), v117);
  v53 = sub_100797194();
  v55 = v54;
  v56 = v52;
  v57 = v112;
  v112(v25, v56);
  v58 = v53 == v47;
  v59 = v114;
  if (v58 && v55 == v114)
  {
    goto LABEL_34;
  }

  v60 = sub_1007A3AB4();

  if (v60)
  {
    goto LABEL_18;
  }

  v113 = enum case for ContextActionSource.recentlyOpenedEntry(_:);
  v61 = v117;
  v115(v22);
  v62 = sub_100797194();
  v64 = v63;
  v57(v22, v61);
  if (v62 == v47 && v64 == v59)
  {
LABEL_9:

LABEL_12:
    sub_1000074E0(v127);

    v49 = v122;
    v50 = v113;
    return (v115)(v49, v50, v117);
  }

  v65 = v47;
  v66 = sub_1007A3AB4();

  if (v66)
  {
    goto LABEL_12;
  }

  v51 = enum case for ContextActionSource.miniPlayer(_:);
  v67 = v117;
  (v115)(v19, enum case for ContextActionSource.miniPlayer(_:), v117);
  v68 = sub_100797194();
  v70 = v69;
  v57(v19, v67);
  if (v68 == v65 && v70 == v59)
  {
    goto LABEL_34;
  }

  v71 = sub_1007A3AB4();

  if (v71)
  {
    goto LABEL_18;
  }

  v51 = enum case for ContextActionSource.toolbarAudioPlayer(_:);
  v72 = v117;
  (v115)(v16, enum case for ContextActionSource.toolbarAudioPlayer(_:), v117);
  v73 = sub_100797194();
  v75 = v74;
  v57(v16, v72);
  if (v73 == v65 && v75 == v59)
  {
    goto LABEL_34;
  }

  v76 = v65;
  v77 = sub_1007A3AB4();

  if (v77)
  {
LABEL_18:
    sub_1000074E0(v127);

    v49 = v122;
    v50 = v51;
    return (v115)(v49, v50, v117);
  }

  v51 = enum case for ContextActionSource.continueEntry(_:);
  v78 = v121;
  v79 = v117;
  (v115)(v121, enum case for ContextActionSource.continueEntry(_:), v117);
  v80 = sub_100797194();
  v82 = v81;
  v57(v78, v79);
  if (v80 == v76 && v82 == v59)
  {
LABEL_34:

    goto LABEL_18;
  }

  v83 = v76;
  v84 = sub_1007A3AB4();

  if (v84)
  {
    goto LABEL_18;
  }

  v51 = enum case for ContextActionSource.topPicksEntry(_:);
  v85 = v111;
  v86 = v117;
  (v115)(v111, enum case for ContextActionSource.topPicksEntry(_:), v117);
  v87 = sub_100797194();
  v89 = v88;
  v112(v85, v86);
  if (v87 == v83 && v89 == v114)
  {
    goto LABEL_34;
  }

  v90 = sub_1007A3AB4();

  if (v90)
  {
    goto LABEL_18;
  }

  v51 = enum case for ContextActionSource.getSampleActionItem(_:);
  v91 = v120;
  v92 = v117;
  (v115)(v120, enum case for ContextActionSource.getSampleActionItem(_:), v117);
  v93 = sub_100797194();
  v95 = v94;
  v112(v91, v92);
  if (v93 == v83 && v95 == v114)
  {
    goto LABEL_34;
  }

  v96 = sub_1007A3AB4();

  if (v96)
  {
    goto LABEL_18;
  }

  v51 = enum case for ContextActionSource.sendGiftActionItem(_:);
  v97 = v119;
  v98 = v117;
  (v115)(v119, enum case for ContextActionSource.sendGiftActionItem(_:), v117);
  v99 = sub_100797194();
  v101 = v100;
  v112(v97, v98);
  if (v99 == v83 && v101 == v114)
  {
    goto LABEL_34;
  }

  v102 = sub_1007A3AB4();

  if (v102)
  {
    goto LABEL_18;
  }

  v103 = enum case for ContextActionSource.unifiedProductItem(_:);
  v104 = v117;
  v105 = v118;
  (v115)(v118, enum case for ContextActionSource.unifiedProductItem(_:), v117);
  v106 = sub_100797194();
  v108 = v107;
  v112(v105, v104);
  if (v106 == v83 && v108 == v114)
  {

    sub_1000074E0(v127);
  }

  else
  {
    v109 = sub_1007A3AB4();

    sub_1000074E0(v127);
    if ((v109 & 1) == 0)
    {
LABEL_49:
      v50 = enum case for ContextActionSource.unknown(_:);
      v49 = v122;
      return (v115)(v49, v50, v117);
    }
  }

  v49 = v122;
  v50 = v103;
  return (v115)(v49, v50, v117);
}

id sub_1002DB088()
{
  v0 = [objc_msgSend(objc_opt_self() "sharedInstance")];
  swift_unknownObjectRelease();
  return v0;
}

id sub_1002DB0E4()
{
  v0 = [objc_opt_self() sharedProvider];
  v1 = [v0 isStoreAccountManagedAppleID];

  return v1;
}

void *sub_1002DB22C()
{
  result = sub_1007972F4();
  v1 = result;
  if (result)
  {
    [result CGPointValue];
    v3 = v2;

    return v3;
  }

  return result;
}

void *sub_1002DB2A0()
{
  v0 = sub_100797444();
  if (v2)
  {
    sub_1002DB384(v0, v1, 1);
    return 0;
  }

  else
  {
    v4 = v1;

    return v4;
  }
}

void sub_1002DB384(void *a1, void *a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_1002DB3D0()
{
  result = qword_100AE5840;
  if (!qword_100AE5840)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100AE5840);
  }

  return result;
}

uint64_t sub_1002DB41C(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t))
{
  v19 = a3;
  v3 = sub_10079ACE4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001F1160(&unk_100ADA900, &qword_1008188A8);
  __chkstk_darwin(v7 - 8);
  v9 = &v19 - v8;
  v10 = sub_1001F1160(&unk_100ADB4D0, &qword_1008188B0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v19 - v12;
  sub_1007A2F54();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1002DB8CC(v9);
    sub_10079ACD4();
    v14 = sub_10079ACC4();
    v15 = sub_1007A29B4();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "No view (or location?) found for tap gesture", v16, 2u);
    }

    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    sub_1001F1160(&unk_100ADA910, &qword_1008188B8);
    sub_10079D234();
    v18 = *&v20[OBJC_IVAR____TtC5Books19TapPointCoordinator_currentTouchType];

    v19(v13, v18);
    return (*(v11 + 8))(v13, v10);
  }
}

id sub_1002DB734@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(type metadata accessor for TapPointCoordinator()) init];
  *a1 = result;
  return result;
}

id sub_1002DB76C()
{
  v0 = [objc_allocWithZone(UITapGestureRecognizer) init];
  sub_1001F1160(&unk_100ADA910, &qword_1008188B8);
  sub_10079D234();
  [v0 setDelegate:v2];

  return v0;
}

uint64_t sub_1002DB8CC(uint64_t a1)
{
  v2 = sub_1001F1160(&unk_100ADA900, &qword_1008188A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002DB968@<X0>(uint64_t a2@<X8>)
{
  v4 = *(v2 + 8);
  v5 = sub_10079C8D4();
  ObjectType = swift_getObjectType();
  v7 = swift_unknownObjectRetain();
  v8 = sub_1002DBB5C(v7, ObjectType, v4);
  v10 = v9;
  result = swift_unknownObjectRelease();
  *a2 = v5;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = v8;
  *(a2 + 32) = v10;
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1002DBA6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1002DBC70();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1002DBAD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1002DBC70();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1002DBB34(uint64_t a1)
{
  sub_1002DBC70();
  sub_10079D194();
  __break(1u);
}

uint64_t sub_1002DBB5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  sub_1007A1704();
  return a1;
}

unint64_t sub_1002DBBB4()
{
  result = qword_100ADA920;
  if (!qword_100ADA920)
  {
    sub_1001F1234(&qword_100ADA928, &qword_100818950);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADA920);
  }

  return result;
}

unint64_t sub_1002DBC1C()
{
  result = qword_100ADA930;
  if (!qword_100ADA930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADA930);
  }

  return result;
}

unint64_t sub_1002DBC70()
{
  result = qword_100ADA938;
  if (!qword_100ADA938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADA938);
  }

  return result;
}

uint64_t sub_1002DBCCC()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100ADA940);
  sub_100008B98(v0, qword_100ADA940);
  sub_10000A7C4(0, &qword_100AD20A0, OS_os_log_ptr);
  return sub_1007A33F4();
}

uint64_t BKLibraryBookshelfCollectionViewController.hasSelectedItems.getter()
{
  v1 = [v0 collectionView];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 indexPathsForSelectedItems];

    if (v3)
    {
      sub_100796E74();
      sub_1007A25E4();

      sub_1001F1160(&qword_100ADA958, &qword_100818A20);
      sub_1002CD1B4(&unk_100ADA960, &qword_100ADA958, &qword_100818A20);
      LOBYTE(v3) = sub_1007A28A4();
    }
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3 & 1;
}

void *BKLibraryBookshelfCollectionViewController.preferredFocusEnvironments.getter()
{
  v1 = [v0 collectionView];
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = v1;
  sub_1001F1160(&unk_100AD8160, &unk_100813160);
  result = swift_allocObject();
  *(result + 1) = xmmword_100811390;
  result[4] = v2;
  return result;
}

unint64_t BKLibraryBookshelfCollectionViewController.keyCommands.getter()
{
  v1 = v0;
  v14.super_class = BKLibraryBookshelfCollectionViewController;
  v2 = objc_msgSendSuper2(&v14, "keyCommands");
  if (v2)
  {
    v3 = v2;
    sub_10000A7C4(0, &qword_100ADA970, UIKeyCommand_ptr);
    v4 = sub_1007A25E4();
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  v15 = v4;
  sub_10000A7C4(0, &qword_100ADA970, UIKeyCommand_ptr);
  sub_1007A2964();
  sub_1007A25C4();
  if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1007A2614();
  }

  sub_1007A2644();
  v5 = v15;
  v6 = [objc_opt_self() sharedInstance];
  v7 = [v6 state];

  if ((v7 | 4) == 4)
  {
    v12 = 4;
    v13 = 0;
    v10 = 0;
    v11 = 0;
    v9 = _swiftEmptyArrayStorage;
    sub_1007A2964();
    sub_1007A25C4();
    if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1007A2614();
    }

    sub_1007A2644();
    v5 = v15;
  }

  if ([v1 isSupplementalContentPDFPicker])
  {
    sub_1007A2254();
    sub_1007A2964();
    sub_1007A25C4();
    if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1007A2614();
    }

    sub_1007A2644();
    return v15;
  }

  return v5;
}

uint64_t sub_1002DC3F8()
{
  v1 = [v0 collectionID];
  v2 = sub_1007A2254();
  v4 = v3;

  if (v2 == sub_1007A2254() && v4 == v5)
  {
    goto LABEL_14;
  }

  v7 = sub_1007A3AB4();

  if ((v7 & 1) == 0)
  {
    v9 = [v0 collectionID];
    v10 = sub_1007A2254();
    v12 = v11;

    if (v10 != sub_1007A2254() || v12 != v13)
    {
      v15 = sub_1007A3AB4();

      if (v15)
      {
        goto LABEL_6;
      }

      v16 = [v0 collectionID];
      v17 = sub_1007A2254();
      v19 = v18;

      if (v17 != sub_1007A2254() || v19 != v20)
      {
        v8 = sub_1007A3AB4();
        goto LABEL_15;
      }
    }

LABEL_14:
    v8 = 1;
LABEL_15:

    return v8 & 1;
  }

LABEL_6:
  v8 = 1;
  return v8 & 1;
}

uint64_t BKLibraryBookshelfCollectionViewController.canPerformAction(_:withSender:)(uint64_t a1, uint64_t a2)
{
  sub_10000AE20(a2, v29);
  v4 = v30;
  if (v30)
  {
    v5 = sub_10000E3E8(v29, v30);
    v6 = *(v4 - 8);
    v7 = __chkstk_darwin(v5);
    v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v9, v7);
    v10 = sub_1007A3AA4();
    (*(v6 + 8))(v9, v4);
    sub_1000074E0(v29);
  }

  else
  {
    v10 = 0;
  }

  v28.receiver = v2;
  v28.super_class = BKLibraryBookshelfCollectionViewController;
  v11 = objc_msgSendSuper2(&v28, "canPerformAction:withSender:", a1, v10);
  swift_unknownObjectRelease();
  if (sub_100796E94())
  {
    if (v11)
    {
      v12 = [v2 collectionID];
      v13 = sub_1007A2254();
      v15 = v14;

      if (v13 != sub_1007A2254() || v15 != v16)
      {
        goto LABEL_10;
      }

LABEL_17:

      v18 = 1;
      return v18 & 1;
    }

LABEL_41:
    v18 = 0;
    return v18 & 1;
  }

  if ((sub_100796E94() & 1) == 0)
  {
    if (sub_100796E94() & 1) != 0 || (sub_100796E94())
    {
      if (!v11 || ![v2 hasSelectedItems])
      {
        goto LABEL_41;
      }

      v24 = [v2 hasAnySeriesContainerSelected];
LABEL_31:
      v18 = v24 ^ 1;
      return v18 & 1;
    }

    if (sub_100796E94())
    {
      if (!v11)
      {
        goto LABEL_41;
      }

      v25 = [v2 hasAnyDeletableBookSelected];
LABEL_26:
      v18 = v25;
      return v18 & 1;
    }

    if (sub_100796E94() & 1) != 0 || (sub_100796E94())
    {
      if (!v11)
      {
        goto LABEL_41;
      }
    }

    else
    {
      if (sub_100796E94() & 1) != 0 || (sub_100796E94())
      {
        if (!v11)
        {
          goto LABEL_41;
        }

        v25 = [v2 isSeriesCollection];
        goto LABEL_26;
      }

      if (sub_100796E94() & 1) != 0 || (sub_100796E94() & 1) != 0 || (sub_100796E94())
      {
        if (!v11)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v27 = sub_100796E94();
        if ((v27 & v11 & 1) == 0)
        {
          v18 = (v27 ^ 1) & v11;
          return v18 & 1;
        }
      }

      if ([v2 isSeriesCollection])
      {
        goto LABEL_41;
      }
    }

    v24 = sub_1002DC3F8();
    goto LABEL_31;
  }

  if (!v11 || ![v2 hasSelectedItems] || (objc_msgSend(v2, "hasAnySeriesContainerSelected") & 1) != 0)
  {
    goto LABEL_41;
  }

  v19 = [v2 collectionID];
  v20 = sub_1007A2254();
  v22 = v21;

  if (v20 == sub_1007A2254() && v22 == v23)
  {
    goto LABEL_17;
  }

LABEL_10:
  v18 = sub_1007A3AB4();

  return v18 & 1;
}

Swift::Void __swiftcall BKLibraryBookshelfCollectionViewController.validate(_:)(UICommand a1)
{
  v8.super_class = BKLibraryBookshelfCollectionViewController;
  objc_msgSendSuper2(&v8, "validateCommand:", a1.super.super.isa);
  [(objc_class *)a1.super.super.isa action];
  if (sub_100796E94())
  {
    v3 = &selRef_viewMode;
    v4 = 1;
  }

  else if (sub_100796E94())
  {
    v3 = &selRef_viewMode;
    v4 = 2;
  }

  else if (sub_100796E94())
  {
    v3 = &selRef_sortMode;
    v4 = 10;
  }

  else if (sub_100796E94())
  {
    v3 = &selRef_sortMode;
    v4 = 9;
  }

  else if (sub_100796E94())
  {
    v3 = &selRef_sortMode;
    v4 = 1;
  }

  else if (sub_100796E94())
  {
    v3 = &selRef_sortMode;
    v4 = 2;
  }

  else if (sub_100796E94())
  {
    v3 = &selRef_sortMode;
    v4 = 3;
  }

  else
  {
    if ((sub_100796E94() & 1) == 0)
    {
      return;
    }

    v3 = &selRef_sortMode;
    v4 = 6;
  }

  v5 = [v1 dataSourceAdaptor];
  v6 = [v5 supplementaryDataSource];

  v7 = [v6 *v3];
  [(objc_class *)a1.super.super.isa setState:v7 == v4];
}

uint64_t sub_1002DCCE0(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
    v7 = a1;
  }

  [a1 *a4];

  return sub_100007840(&v9, &unk_100AD5B40, &unk_100811300);
}

uint64_t sub_1002DCD8C()
{
  v1 = [v0 navigationController];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v0 navigationItem];
  v4 = [v3 largeTitleDisplayMode];

  if (v4 != 3 || (v5 = [v2 navigationBar], v6 = objc_msgSend(v5, "prefersLargeTitles"), v5, (v6 & 1) == 0))
  {

    return 0;
  }

  v7 = [v2 viewControllers];
  sub_10000A7C4(0, &qword_100AD7CB0, UIViewController_ptr);
  v8 = sub_1007A25E4();

  if (v8 >> 62)
  {
    result = sub_1007A38D4();
    if (result)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

  result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_13:

    return 0;
  }

LABEL_6:
  if ((v8 & 0xC000000000000001) != 0)
  {
    v10 = sub_1007A3784();
    goto LABEL_9;
  }

  if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v10 = *(v8 + 32);
LABEL_9:
    v11 = v10;

    v12 = v0;
    v13 = sub_1007A3184();

    return v13 & 1;
  }

  __break(1u);
  return result;
}

void sub_1002DCF38(int a1)
{
  v2 = v1;
  v49 = a1;
  v3 = sub_100796CF4();
  *&v51 = *(v3 - 8);
  __chkstk_darwin(v3);
  v48 = &v46[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v46[-v6];
  v8 = sub_1007A21D4();
  v50 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v46[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __chkstk_darwin(v11);
  v14 = &v46[-v13];
  v15 = [v1 dataSourceAdaptor];
  v16 = [v15 booksDataSource];

  v17 = [v16 totalNumberOfItems];
  v18 = [v2 collectionView];
  if (v18)
  {
    v19 = v18;
    v20 = [v18 indexPathsForSelectedItems];

    if (v20)
    {
      sub_100796E74();
      sub_1007A25E4();

      if (v17 <= 0)
      {
        goto LABEL_7;
      }

LABEL_6:
      v47 = 1;
      goto LABEL_8;
    }
  }

  if (v17 >= 1)
  {
    goto LABEL_6;
  }

LABEL_7:
  v47 = 0;
LABEL_8:
  v21 = [v2 _navBarSelectAllButtonItem];
  if (!v21)
  {
    sub_10000A7C4(0, &qword_100ADAA20, UIBarButtonItem_ptr);
    swift_unknownObjectRetain();
    v22 = sub_1007A2B74();
    [v2 set_navBarSelectAllButtonItem:v22];
    v21 = v22;
  }

  v23 = v21;
  v24 = (v50 + 16);
  v25 = (v51 + 16);
  sub_1007A2154();
  sub_100796C94();
  (*v24)(v10, v14, v8);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v27 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v28 = v48;
  (*v25)(v48, v7, v3);
  sub_1007A22D4(v10, 0, 0, v27, v28, "Bookshelf select all button", 27, 2);
  (*(v51 + 8))(v7, v3);
  (*(v50 + 8))(v14, v8);
  v29 = sub_1007A2214();

  [v23 setTitle:v29];

  [v23 setEnabled:v47];
  v30 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:0 target:v2 action:"editButtonPressed:"];
  LOBYTE(v29) = sub_1002DCD8C();
  v31 = [v2 navigationItem];
  sub_1001F1160(&unk_100AD8160, &unk_100813160);
  v32 = swift_allocObject();
  if (v29)
  {
    *(v32 + 16) = xmmword_100811360;
    *(v32 + 32) = v30;
    *(v32 + 40) = v23;
    sub_10000A7C4(0, &qword_100ADAA20, UIBarButtonItem_ptr);
    v33 = v23;
    v34 = v30;
    isa = sub_1007A25D4().super.isa;

    v36 = v49;
    [v31 setRightBarButtonItems:isa animated:v49 & 1];

    v37 = [v2 navigationItem];
    [(objc_class *)v37 setLeftBarButtonItems:0 animated:v36 & 1];
  }

  else
  {
    v51 = xmmword_100811390;
    *(v32 + 16) = xmmword_100811390;
    *(v32 + 32) = v30;
    sub_10000A7C4(0, &qword_100ADAA20, UIBarButtonItem_ptr);
    v38 = v30;
    v39 = sub_1007A25D4().super.isa;

    v40 = v49;
    [v31 setRightBarButtonItems:v39 animated:v49 & 1];

    v41 = [v2 navigationItem];
    v42 = swift_allocObject();
    *(v42 + 16) = v51;
    *(v42 + 32) = v23;
    v43 = v23;
    v37 = sub_1007A25D4().super.isa;

    [v41 setLeftBarButtonItems:v37 animated:v40 & 1];
  }

  sub_1002DD634(v44, v45);
}

void sub_1002DD634(uint64_t a1, uint64_t a2)
{
  if ((_UISolariumEnabled() & 1) == 0)
  {
    v3 = sub_1002E1288();
    if (v3)
    {
      v4 = v3;
      v5 = [v2 navigationItem];
      v12 = [v5 titleView];

      if (v12)
      {
        type metadata accessor for LibraryCollectionTitleView();
        v6 = swift_dynamicCastClass();
        if (v6)
        {
          v7 = v6;
          v8 = [v4 isHidden];
          [v7 largeTitleHeight];
          if (((v8 ^ (v9 <= 20.0)) & 1) == 0)
          {
            [v7 largeTitleHeight];
            [v4 setHidden:v10 > 20.0];
          }
        }

        v11 = v12;
      }

      else
      {
        v11 = v4;
      }
    }
  }
}

void sub_1002DD76C(char a1)
{
  v2 = v1;
  v4 = sub_1002DDA0C();
  if (v4)
  {
    v5 = v4;
    sub_1007A25C4();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1007A2614();
    }

    sub_1007A2644();
  }

  v6 = sub_1002DDCBC();
  if (v6)
  {
    v7 = v6;
    if (_UISolariumEnabled())
    {
      v8 = [objc_opt_self() fixedSpaceItemOfWidth:0.0];
    }

    else
    {
      v9 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 1.0}];
      [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v9];
    }

    sub_1007A25C4();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v16 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1007A2614();
    }

    sub_1007A2644();
    v10 = v7;
    sub_1007A25C4();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1007A2614();
    }

    sub_1007A2644();
  }

  v11 = [v2 navigationItem];
  sub_10000A7C4(0, &qword_100ADAA20, UIBarButtonItem_ptr);
  isa = sub_1007A25D4().super.isa;

  [v11 setRightBarButtonItems:isa animated:a1 & 1];

  v13 = [v2 navigationItem];
  [v13 setLeftBarButtonItems:0 animated:a1 & 1];

  sub_1002DD634(v14, v15);
}

char *sub_1002DDA0C()
{
  v1 = v0;
  v2 = sub_1007A32B4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v17 - v7;
  if (_UISolariumEnabled())
  {

    return sub_1002E0AA8();
  }

  else
  {
    v10 = sub_1002DF3FC();
    if (!v10)
    {
      return 0;
    }

    v11 = v10;
    sub_1002E0BB8(0x73697370696C6C65, 0xE800000000000000);
    sub_10000A7C4(0, qword_100ADAA50, UIButton_ptr);
    (*(v3 + 16))(v5, v8, v2);
    v12 = sub_1007A32C4();
    [v12 setMenu:v11];
    [v12 setShowsMenuAsPrimaryAction:1];
    v13 = objc_allocWithZone(UILargeContentViewerInteraction);
    v14 = v12;
    v15 = [v13 init];
    [v14 addInteraction:v15];

    [v14 setShowsLargeContentViewer:1];
    [v14 setTranslatesAutoresizingMaskIntoConstraints:0];

    v16 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v14];
    [v16 setTag:0];
    [v16 setEnabled:{objc_msgSend(v1, "dragAndDropSessionsActive") == 0}];

    (*(v3 + 8))(v8, v2);
    return v16;
  }
}

id sub_1002DDCBC()
{
  v1 = v0;
  v55 = sub_1007A32B4();
  v2 = *(v55 - 8);
  __chkstk_darwin(v55);
  v4 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v51 - v6;
  v8 = sub_100796CF4();
  v58 = *(v8 - 8);
  __chkstk_darwin(v8);
  v57 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v51 - v11;
  v59 = sub_1007A21D4();
  v56 = *(v59 - 8);
  __chkstk_darwin(v59);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v51 - v16;
  if ((_UISolariumEnabled() & 1) == 0)
  {
    v18 = [v0 traitCollection];
    v19 = [v18 horizontalSizeClass];

    if (v19 != 2)
    {
      return 0;
    }
  }

  v54 = v8;
  v20 = [v1 collectionID];
  v21 = sub_1007A2254();
  v23 = v22;

  if (v21 != sub_1007A2254() || v23 != v24)
  {
    v25 = sub_1007A3AB4();

    if (v25)
    {
      goto LABEL_7;
    }

    return 0;
  }

LABEL_7:
  v26 = [v1 _readingListBackingButton];
  if (v26)
  {
  }

  else
  {
    sub_10000A7C4(0, &qword_100AD8390, UIAction_ptr);
    sub_1007A2214();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v28 = sub_1007A31D4();
    v29 = _UISolariumEnabled();
    v53 = v28;
    if (v29)
    {
      sub_10000A7C4(0, &qword_100ADAA20, UIBarButtonItem_ptr);
      v30 = sub_1007A2214();
      v31 = [objc_opt_self() systemImageNamed:v30];

      v32 = v28;
      v63.value._countAndFlagsBits = 0;
      v63.value._object = 0;
      v60.value.super.isa = v31;
      v60.is_nil = v28;
      v61.value.super.super.isa = 0;
      v33 = sub_1007A2B64(v63, v60, v61, v62).super.super.isa;
      [(objc_class *)v33 setSpringLoaded:1];
      sub_1007A2154();
      sub_100796C94();
      v34 = v56;
      (*(v56 + 16))(v14, v17, v59);
      type metadata accessor for BundleFinder();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v36 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
      v37 = v57;
      v38 = v58;
      v39 = v54;
      (*(v58 + 16))(v57, v12, v54);
      sub_1007A22D4(v14, 0, 0, v36, v37, "Accessibility string my collections navigation bar button", 57, 2);
      (*(v38 + 8))(v12, v39);
      (*(v34 + 8))(v17, v59);
      v40 = sub_1007A2214();

      [(objc_class *)v33 setAccessibilityLabel:v40];
    }

    else
    {
      sub_1002E0BB8(0xD000000000000011, 0x80000001008CA160);
      sub_10000A7C4(0, qword_100ADAA50, UIButton_ptr);
      v52 = v2;
      (*(v2 + 16))(v4, v7, v55);
      v41 = v28;
      v51 = sub_1007A32C4();
      sub_1007A2154();
      sub_100796C94();
      v42 = v56;
      (*(v56 + 16))(v14, v17, v59);
      type metadata accessor for BundleFinder();
      v43 = swift_getObjCClassFromMetadata();
      v44 = [objc_opt_self() bundleForClass:v43];
      v46 = v57;
      v45 = v58;
      v47 = v54;
      (*(v58 + 16))(v57, v12, v54);
      sub_1007A22D4(v14, 0, 0, v44, v46, "Accessibility string my collections navigation bar button", 57, 2);
      (*(v45 + 8))(v12, v47);
      (*(v42 + 8))(v17, v59);
      v48 = sub_1007A2214();

      v49 = v51;
      [v51 setAccessibilityLabel:v48];

      [v49 setTranslatesAutoresizingMaskIntoConstraints:0];
      v50 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v49];

      (*(v52 + 8))(v7, v55);
      v33 = v50;
    }

    [(objc_class *)v33 setTag:2];
    [v1 set_readingListBackingButton:v33];
  }

  return [v1 _readingListBackingButton];
}

void sub_1002DE4E8()
{
  v1 = sub_1002DEA74();
  if (v1)
  {
    v2 = v1;
    v3 = [v0 navigationItem];
    [v3 _setLargeTitleAccessoryView:v2 alignToBaseline:0];

    v4 = [v0 navigationItem];
    v5 = [v4 _largeTitleAccessoryView];

    if (!v5)
    {
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
      return;
    }

    v6 = [v5 interactions];
    sub_1001F1160(&qword_100ADAF30, &unk_100826090);
    v7 = sub_1007A25E4();

    v36 = (v7 >> 62);
    v33 = v2;
    v34 = v5;
    v35 = v0;
    v8 = v7 & 0xFFFFFFFFFFFFFF8;
    if (v7 >> 62)
    {
      goto LABEL_74;
    }

    v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
    v10 = 0;
    while (1)
    {
      if (v9 == v10)
      {
        if (v36)
        {
          v10 = sub_1007A38D4();
        }

        else
        {
          v10 = *(v8 + 16);
        }

        goto LABEL_26;
      }

      if ((v7 & 0xC000000000000001) != 0)
      {
        v11 = sub_1007A3784();
      }

      else
      {
        if (v10 >= *(v8 + 16))
        {
          goto LABEL_67;
        }

        v11 = *(v7 + 8 * v10 + 32);
        swift_unknownObjectRetain();
      }

      sub_10000A7C4(0, &unk_100ADAA40, UILargeContentViewerInteraction_ptr);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v13 = [v11 isKindOfClass:ObjCClassFromMetadata];
      swift_unknownObjectRelease();
      v14 = v10 + 1;
      v15 = __OFADD__(v10, 1);
      if (v13)
      {
        break;
      }

      ++v10;
      if (v15)
      {
        goto LABEL_68;
      }
    }

    if (!v15)
    {
      if (v36)
      {
        if (v14 != sub_1007A38D4())
        {
LABEL_34:
          v8 = v10 + 5;
          do
          {
            v22 = v8 - 4;
            if ((v7 & 0xC000000000000001) != 0)
            {
              v23 = sub_1007A3784();
            }

            else
            {
              if ((v22 & 0x8000000000000000) != 0)
              {
                goto LABEL_69;
              }

              if (v22 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_70;
              }

              v23 = *(v7 + 8 * v8);
              swift_unknownObjectRetain();
            }

            v24 = [v23 isKindOfClass:{ObjCClassFromMetadata, v33}];
            swift_unknownObjectRelease();
            if ((v24 & 1) == 0)
            {
              if (v22 != v10)
              {
                if ((v7 & 0xC000000000000001) != 0)
                {
                  v25 = sub_1007A3784();
                  v26 = sub_1007A3784();
                }

                else
                {
                  if (v10 < 0)
                  {
                    goto LABEL_77;
                  }

                  v27 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  if (v10 >= v27)
                  {
                    goto LABEL_78;
                  }

                  if (v22 >= v27)
                  {
                    goto LABEL_79;
                  }

                  v25 = *(v7 + 8 * v10 + 32);
                  v26 = *(v7 + 8 * v8);
                  swift_unknownObjectRetain();
                  swift_unknownObjectRetain();
                }

                if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v7 & 0x8000000000000000) != 0 || (v7 & 0x4000000000000000) != 0)
                {
                  v7 = sub_1002F9CE0();
                  v28 = (v7 >> 62) & 1;
                }

                else
                {
                  LODWORD(v28) = 0;
                }

                v29 = v7 & 0xFFFFFFFFFFFFFF8;
                *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20) = v26;
                swift_unknownObjectRelease();
                if ((v7 & 0x8000000000000000) != 0 || v28)
                {
                  v7 = sub_1002F9CE0();
                  v29 = v7 & 0xFFFFFFFFFFFFFF8;
                  if ((v22 & 0x8000000000000000) != 0)
                  {
LABEL_66:
                    __break(1u);
LABEL_67:
                    __break(1u);
LABEL_68:
                    __break(1u);
LABEL_69:
                    __break(1u);
LABEL_70:
                    __break(1u);
LABEL_71:
                    __break(1u);
LABEL_72:
                    __break(1u);
LABEL_73:
                    __break(1u);
LABEL_74:
                    v9 = sub_1007A38D4();
                    goto LABEL_5;
                  }
                }

                else if ((v22 & 0x8000000000000000) != 0)
                {
                  goto LABEL_66;
                }

                if (v22 >= *(v29 + 16))
                {
                  goto LABEL_73;
                }

                *(v29 + 8 * v8) = v25;
                swift_unknownObjectRelease();
              }

              if (__OFADD__(v10++, 1))
              {
                goto LABEL_72;
              }
            }

            v31 = v8 - 3;
            if (__OFADD__(v22, 1))
            {
              goto LABEL_71;
            }

            if (v7 >> 62)
            {
              v32 = sub_1007A38D4();
            }

            else
            {
              v32 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            ++v8;
          }

          while (v31 != v32);
        }
      }

      else if (v14 != *(v8 + 16))
      {
        goto LABEL_34;
      }

LABEL_26:
      if (v7 >> 62)
      {
        v16 = sub_1007A38D4();
        if (v16 >= v10)
        {
LABEL_28:
          sub_1002F949C(v10, v16);
          isa = sub_1007A25D4().super.isa;

          [v34 setInteractions:isa];

          v18 = [v35 navigationItem];
          v19 = [v18 _largeTitleAccessoryView];

          if (!v19)
          {
            goto LABEL_82;
          }

          v20 = [objc_allocWithZone(UILargeContentViewerInteraction) init];
          [v19 addInteraction:v20];

          v21 = [v35 navigationItem];
          v37 = [v21 _largeTitleAccessoryView];

          if (v37)
          {
            [v37 setShowsLargeContentViewer:1];

            goto LABEL_31;
          }

          goto LABEL_83;
        }
      }

      else
      {
        v16 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v16 >= v10)
        {
          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
    }

    __break(1u);
    goto LABEL_81;
  }

  v37 = [v0 navigationItem];
  [v37 _setLargeTitleAccessoryView:0 alignToBaseline:0];
LABEL_31:
}

id sub_1002DEA74()
{
  v1 = sub_100796CF4();
  v74 = *(v1 - 8);
  v75 = v1;
  __chkstk_darwin(v1);
  v71 = &v65 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v72 = &v65 - v4;
  v73 = sub_1007A21D4();
  v70 = *(v73 - 8);
  __chkstk_darwin(v73);
  v6 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v65 - v8;
  v10 = sub_1007A32B4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v65 - v15;
  v17 = sub_100799234();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (_UISolariumEnabled())
  {
    return 0;
  }

  v68 = v13;
  v69 = v16;
  v21 = [v0 traitCollection];
  v22 = [v21 horizontalSizeClass];

  if (v22 != 2)
  {
    return 0;
  }

  v66 = v11;
  v67 = v10;
  v23 = *(v18 + 104);
  v23(v20, enum case for BooksUIKitFeatureFlag.floatingTabBar(_:), v17);
  v24 = sub_100799134();
  v25 = *(v18 + 8);
  v25(v20, v17);
  if ((v24 & 1) == 0)
  {
    v23(v20, enum case for BooksUIKitFeatureFlag.floatingTabBarOnly(_:), v17);
    v26 = sub_100799134();
    v25(v20, v17);
    if ((v26 & 1) == 0)
    {
      return 0;
    }
  }

  v27 = v0;
  v28 = [v0 collectionID];
  v29 = sub_1007A2254();
  v31 = v30;

  if (v29 != sub_1007A2254() || v31 != v32)
  {
    v33 = sub_1007A3AB4();

    if (v33)
    {
      goto LABEL_9;
    }

    return 0;
  }

LABEL_9:
  v34 = [v0 _collectionBackingButton];
  if (v34)
  {
  }

  else
  {
    sub_1007A3294();
    sub_1007A2154();
    v36 = v72;
    sub_100796C94();
    v65 = v0;
    v37 = v70;
    v38 = v73;
    (*(v70 + 16))(v6, v9, v73);
    type metadata accessor for BundleFinder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v40 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v42 = v74;
    v41 = v75;
    v43 = v71;
    (*(v74 + 16))(v71, v36, v75);
    sub_1007A22D4(v6, 0, 0, v40, v43, "Collections control title", 25, 2);
    v44 = v36;
    v45 = v66;
    (*(v42 + 8))(v44, v41);
    (*(v37 + 8))(v9, v38);
    v27 = v65;
    v46 = v69;
    sub_1007A32A4();
    sub_1001F1160(&unk_100AD8160, &unk_100813160);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_100811390;
    *(v47 + 32) = [objc_opt_self() tertiaryLabelColor];
    sub_10000A7C4(0, &qword_100AEEF60, UIColor_ptr);
    isa = sub_1007A25D4().super.isa;

    v49 = objc_opt_self();
    v50 = [v49 configurationWithPaletteColors:isa];

    v51 = [v49 configurationWithScale:1];
    v52 = [v50 configurationByApplyingConfiguration:v51];

    v53 = v52;
    v54 = sub_1007A2214();
    v55 = [objc_opt_self() systemImageNamed:v54 withConfiguration:v53];

    sub_1007A3284();
    sub_1007A3234();
    v56 = v46;
    sub_1007A3224();
    sub_10000A7C4(0, &qword_100AD8390, UIAction_ptr);
    sub_1007A2214();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v57 = sub_1007A31D4();
    sub_10000A7C4(0, qword_100ADAA50, UIButton_ptr);
    (*(v45 + 16))(v68, v56, v67);
    v58 = v57;
    v59 = sub_1007A32C4();
    [v27 set_collectionBackingButton:v59];

    v60 = [v27 _collectionBackingButton];
    if (v60)
    {
      v61 = v60;
      [v60 setTag:1];
    }

    v62 = [v27 _collectionBackingButton];
    if (v62)
    {
      v63 = v62;
      [v62 setEnabled:{objc_msgSend(v27, "isEditing") ^ 1}];

      v64 = v58;
      v53 = v63;
    }

    else
    {
      v64 = v50;
      v50 = v58;
    }

    (*(v45 + 8))(v69, v67);
  }

  return [v27 _collectionBackingButton];
}

Swift::Void __swiftcall BKLibraryBookshelfCollectionViewController.updateBarButtonsAnimated(_:)(Swift::Bool a1)
{
  if ([v1 isEditing])
  {
    sub_1002DCF38(a1);
  }

  else
  {
    sub_1002DD76C(a1);
  }

  sub_1002DE4E8();
}

char *sub_1002DF3FC()
{
  v0 = sub_100796CF4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v110 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v110 - v5;
  v7 = sub_1007A21D4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v110 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v110 - v12;
  v138 = _swiftEmptyArrayStorage;
  v115 = sub_1001F1160(&unk_100AD8160, &unk_100813160);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100811390;
  sub_1007A2154();
  sub_100796C94();
  v15 = *(v8 + 16);
  v132 = v8 + 16;
  v126 = v15;
  v15(v10, v13, v7);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v130 = objc_opt_self();
  v131 = ObjCClassFromMetadata;
  v17 = [v130 bundleForClass:ObjCClassFromMetadata];
  v18 = *(v1 + 16);
  v129 = v1 + 16;
  v125 = v18;
  v18(v3, v6, v0);
  v116 = v10;
  v19 = v10;
  v20 = v135;
  v123 = v3;
  sub_1007A22D4(v19, 0, 0, v17, v3, "Library -> (...) -> 'Select' for entering edit mode", 51, 2);
  v134 = v21;
  v22 = *(v1 + 8);
  v118 = v6;
  v119 = v0;
  v133 = v1 + 8;
  v124 = v22;
  v22(v6, v0);
  v23 = *(v8 + 8);
  v117 = v13;
  v24 = v7;
  v127 = v8 + 8;
  v128 = v23;
  v23(v13, v7);
  v25 = sub_1007A2214();
  v121 = objc_opt_self();
  v26 = [v121 systemImageNamed:v25];

  v27 = &selRef_iq_downloadProgressStatusesWithAssetID_item_;
  v28 = [v20 layout];
  LOBYTE(v13) = [v28 hasSomeBooks];

  if ((v13 & 1) == 0)
  {
    v29 = [v20 layout];
    [v29 editableCollection];
  }

  v30 = sub_10000A7C4(0, &qword_100AD8170, UIMenu_ptr);
  v31 = v20;
  v32 = sub_10000A7C4(0, &qword_100AD8390, UIAction_ptr);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v134 = v32;
  *(v14 + 32) = sub_1007A31D4();
  v143._countAndFlagsBits = 0;
  v143._object = 0xE000000000000000;
  v147.value._countAndFlagsBits = 0;
  v147.value._object = 0;
  v139.value.super.isa = 0;
  v139.is_nil = 0;
  v33.value = 1;
  v120 = v30;
  v34 = sub_1007A30C4(v143, v147, v139, v33, 0xFFFFFFFFFFFFFFFFLL, v14, v108).super.super.isa;
  sub_1007A25C4();
  if (*((v138 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v138 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_25:
    sub_1007A2614();
  }

  v114 = v34;
  sub_1007A2644();
  v35 = [v31 v27[274]];
  v36 = [v35 hasSomeBooks];

  v37 = v31;
  v31 = v24;
  v38 = v123;
  if (v36)
  {
    v39 = [v37 dataSourceAdaptor];
    v40 = [v39 supplementaryDataSource];

    v41 = [v40 canChangeViewMode];
    v112 = v40;
    if (v41)
    {
      v42 = [v37 layout];
      [v42 viewMode];

      v122 = swift_allocObject();
      v122[1] = xmmword_100811360;
      v24 = v117;
      sub_1007A2154();
      v43 = v38;
      v113 = v31;
      v44 = v118;
      sub_100796C94();
      v45 = v116;
      v126(v116, v24, v113);
      v46 = [v130 bundleForClass:v131];
      v47 = v38;
      v48 = v119;
      v125(v47, v44, v119);
      sub_1007A22D4(v45, 0, 0, v46, v43, "Library -> (...) -> Grid View Mode", 34, 2);
      v111 = v49;
      v124(v44, v48);
      v128(v24, v113);
      v50 = sub_1007A2214();
      v51 = [v121 systemImageNamed:v50];

      swift_allocObject();
      swift_unknownObjectWeakInit();
      *(v122 + 4) = sub_1007A31D4();
      sub_1007A2154();
      sub_100796C94();
      v126(v45, v24, v113);
      v52 = [v130 bundleForClass:v131];
      v125(v43, v44, v48);
      sub_1007A22D4(v45, 0, 0, v52, v43, "Library -> (...) -> List View Mode", 34, 2);
      v53 = v44;
      v31 = v113;
      v124(v53, v48);
      v128(v24, v31);
      v54 = sub_1007A2214();
      v55 = [v121 systemImageNamed:v54];

      v37 = v135;
      swift_allocObject();
      swift_unknownObjectWeakInit();
      v56 = sub_1007A31D4();
      v57 = v122;
      *(v122 + 5) = v56;
      v144._countAndFlagsBits = 0;
      v144._object = 0xE000000000000000;
      v148.value._countAndFlagsBits = 0;
      v148.value._object = 0;
      v140.value.super.isa = 0;
      v140.is_nil = 0;
      v58.value = 33;
      v34 = sub_1007A30C4(v144, v148, v140, v58, 0xFFFFFFFFFFFFFFFFLL, v57, v109).super.super.isa;
      sub_1007A25C4();
      if (*((v138 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v138 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_27;
      }

      goto LABEL_7;
    }

LABEL_8:
    v59 = [v37 layout];
    v60 = [v59 wantsSortControl];

    if (v60)
    {
      result = [v40 sortByLabelText];
      if (!result)
      {
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      v62 = result;
      v63 = sub_1007A2254();
      v65 = v64;

      v136 = v63;
      v137 = v65;
      sub_1002060B4();
      LOBYTE(v62) = sub_1007A28A4();

      v40 = v112;
      if (v62)
      {
        v113 = v31;
        v122 = [v112 sortMode];
        result = [v40 sortControlConfig];
        if (!result)
        {
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
          return result;
        }

        v66 = result;
        sub_10000A7C4(0, &qword_100ADAA38, off_1009F85B0);
        v31 = sub_1007A25E4();

        if (v31 >> 62)
        {
          v34 = sub_1007A38D4();
          if (v34)
          {
            goto LABEL_14;
          }
        }

        else
        {
          v34 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v34)
          {
LABEL_14:
            v136 = _swiftEmptyArrayStorage;
            result = sub_1007A37F4();
            if ((v34 & 0x8000000000000000) == 0)
            {
              v67 = 0;
              v111 = v31 & 0xFFFFFFFFFFFFFF8;
              while (1)
              {
                v27 = (v67 + 1);
                if (__OFADD__(v67, 1))
                {
                  __break(1u);
                  goto LABEL_25;
                }

                if ((v31 & 0xC000000000000001) != 0)
                {
                  v68 = sub_1007A3784();
                }

                else
                {
                  if (v67 >= *(v111 + 16))
                  {
                    __break(1u);
LABEL_27:
                    sub_1007A2614();
LABEL_7:
                    sub_1007A2644();

                    v38 = v123;
                    v40 = v112;
                    goto LABEL_8;
                  }

                  v68 = *(v31 + 8 * v67 + 32);
                }

                v69 = v68;
                result = [v68 title];
                if (!result)
                {
                  goto LABEL_47;
                }

                v70 = result;
                sub_1007A2254();
                v24 = v71;

                [v69 sortMode];
                v72 = swift_allocObject();
                swift_unknownObjectWeakInit();
                v73 = swift_allocObject();
                *(v73 + 16) = v72;
                *(v73 + 24) = v69;
                v37 = sub_1007A31D4();
                sub_1007A37D4();
                sub_1007A3804();
                sub_1007A3814();
                sub_1007A37E4();
                ++v67;
                if (v27 == v34)
                {

                  v74 = v136;
                  v38 = v123;
                  v40 = v112;
                  goto LABEL_30;
                }
              }
            }

            __break(1u);
LABEL_47:
            __break(1u);
            goto LABEL_48;
          }
        }

        v74 = _swiftEmptyArrayStorage;
LABEL_30:
        result = [v40 sortByLabelText];
        v31 = v113;
        if (!result)
        {
          goto LABEL_50;
        }

        v75 = result;
        v76 = sub_1007A2254();
        v78 = v77;

        if (v74 >> 62)
        {
          sub_10000A7C4(0, &qword_100AE8DB0, UIMenuElement_ptr);

          v79 = sub_1007A38C4();
        }

        else
        {

          sub_1007A3AD4();
          sub_10000A7C4(0, &qword_100AE8DB0, UIMenuElement_ptr);
          v79 = v74;
        }

        v145._countAndFlagsBits = v76;
        v145._object = v78;
        v149.value._countAndFlagsBits = 0;
        v149.value._object = 0;
        v141.value.super.isa = 0;
        v141.is_nil = 0;
        v80.value = 33;
        v81 = sub_1007A30C4(v145, v149, v141, v80, 0xFFFFFFFFFFFFFFFFLL, v79, v109).super.super.isa;
        sub_1007A25C4();
        if (*((v138 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v138 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1007A2614();
        }

        sub_1007A2644();

        v40 = v112;
      }
    }
  }

  v82 = [objc_opt_self() standardUserDefaults];
  LODWORD(v112) = [v82 BKFinishedAssetRemovalEnabledKey];

  v83 = v117;
  sub_1007A2154();
  v84 = v118;
  sub_100796C94();
  v85 = v116;
  v86 = v126;
  v126(v116, v83, v31);
  v87 = [v130 bundleForClass:v131];
  v88 = v119;
  v125(v38, v84, v119);
  v122 = sub_1007A22D4(v85, 0, 0, v87, v38, "Library -> (...) -> Remove Finished", 35, 2);
  v89 = v38;
  v113 = v90;
  v91 = v124;
  v124(v84, v88);
  v92 = v91;
  v128(v83, v31);
  v93 = sub_1007A2214();
  v121 = [v121 systemImageNamed:v93];

  v135 = swift_allocObject();
  *(v135 + 16) = xmmword_100811360;
  sub_1007A2154();
  sub_100796C94();
  v86(v85, v83, v31);
  v94 = [v130 bundleForClass:v131];
  v95 = v89;
  v96 = v89;
  v97 = v125;
  v125(v96, v84, v88);
  sub_1007A22D4(v85, 0, 0, v94, v95, "Library -> (...) -> Remove Finished -> Automatically When Finished", 66, 2);
  v92(v84, v88);
  v128(v83, v31);
  *(v135 + 32) = sub_1007A31D4();
  sub_1007A2154();
  sub_100796C94();
  v126(v85, v83, v31);
  v98 = [v130 bundleForClass:v131];
  v99 = v123;
  v97(v123, v84, v88);
  sub_1007A22D4(v85, 0, 0, v98, v99, "Library -> (...) -> Remove Finished -> Manually", 47, 2);
  v124(v84, v88);
  v128(v83, v31);
  v100 = sub_1007A31D4();
  v101 = v135;
  *(v135 + 40) = v100;
  v142.value.super.isa = v121;
  v146._countAndFlagsBits = v122;
  v146._object = v113;
  v150.value._countAndFlagsBits = 0;
  v150.value._object = 0;
  v142.is_nil = 0;
  v102.value = 32;
  v103 = sub_1007A30C4(v146, v150, v142, v102, 0xFFFFFFFFFFFFFFFFLL, v101, v109).super.super.isa;
  sub_1007A25C4();
  if (*((v138 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v138 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1007A2614();
  }

  sub_1007A2644();
  v104 = v138;
  v136 = v138;
  sub_1001F1160(&qword_100ADAA28, &qword_100818A70);
  sub_1002CD1B4(&qword_100ADAA30, &qword_100ADAA28, &qword_100818A70);
  if (sub_1007A28A4())
  {
    if (v104 >> 62)
    {
      sub_10000A7C4(0, &qword_100AE8DB0, UIMenuElement_ptr);

      sub_1007A38C4();
    }

    else
    {

      sub_1007A3AD4();
      sub_10000A7C4(0, &qword_100AE8DB0, UIMenuElement_ptr);
    }

    v105 = objc_opt_self();
    sub_10000A7C4(0, &qword_100AE8DB0, UIMenuElement_ptr);
    isa = sub_1007A25D4().super.isa;

    v107 = [v105 bk_menuWithChildren:isa];

    return v107;
  }

  else
  {

    return 0;
  }
}

void sub_1002E0868(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong editButtonPressed:0];
  }
}

void sub_1002E08C8(uint64_t a1, uint64_t a2, SEL *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [Strong dataSourceAdaptor];

    v7 = [v6 actionHandler];
    [v7 *a3];
  }
}

void sub_1002E096C(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [Strong dataSourceAdaptor];

    v7 = [v6 actionHandler];
    [v7 changeSortModeTo:{objc_msgSend(a3, "sortMode")}];
  }
}

void sub_1002E0A38(uint64_t a1, char a2)
{
  v3 = [objc_opt_self() standardUserDefaults];
  [v3 setBKFinishedAssetRemovalEnabledKey:a2 & 1];
}

char *sub_1002E0AA8()
{
  v1 = v0;
  isa = sub_1002DF3FC();
  if (isa)
  {
    sub_10000A7C4(0, &qword_100ADAA20, UIBarButtonItem_ptr);
    v3 = objc_opt_self();
    v4 = sub_1007A2214();
    v5 = [v3 __systemImageNamedSwift:v4];

    v6 = isa;
    v11.value._countAndFlagsBits = 0;
    v11.value._object = 0;
    v8.value.super.isa = v5;
    v8.is_nil = 0;
    v9.value.super.super.isa = isa;
    isa = sub_1007A2B64(v11, v8, v9, v10).super.super.isa;
    [isa setTag:0];
    [isa setEnabled:{objc_msgSend(v1, "dragAndDropSessionsActive") == 0}];
  }

  return isa;
}

void sub_1002E0BB8(uint64_t a1, uint64_t a2)
{
  v2 = sub_1007A3264();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1007A3204();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007A3274();
  v10 = [objc_opt_self() configurationWithPointSize:6 weight:2 scale:15.0];
  v11 = sub_1007A2214();
  v12 = [objc_opt_self() systemImageNamed:v11];

  if (v12)
  {
    v13 = [v12 imageWithConfiguration:v10];
  }

  sub_1007A3284();
  v14 = objc_opt_self();
  v15 = [v14 tertiarySystemFillColor];
  sub_1007A3244();
  v16 = [v14 bc_booksKeyColor];
  sub_1007A3254();
  (*(v7 + 104))(v9, enum case for UIButton.Configuration.CornerStyle.capsule(_:), v6);
  sub_1007A3214();
  (*(v3 + 104))(v5, enum case for UIButton.Configuration.Size.small(_:), v2);
  sub_1007A31F4();
}

void sub_1002E0E40(uint64_t a1, uint64_t a2)
{
  v5 = sub_1002E1288();
  if (v5)
  {
    v6 = v5;
    if (a1)
    {
      aBlock[4] = a1;
      aBlock[5] = a2;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100201C54;
      aBlock[3] = &unk_100A14578;
      v7 = _Block_copy(aBlock);
      v8 = v6;
      sub_1000260E8(a1, a2);
    }

    else
    {
      v12 = v5;
      v7 = 0;
    }

    [v2 presentReadingListsPopoverFromItem:v6 completion:v7];
    _Block_release(v7);
  }

  else
  {
    if (qword_100AD13D8 != -1)
    {
      swift_once();
    }

    v9 = sub_10079ACE4();
    sub_100008B98(v9, qword_100ADA940);
    oslog = sub_10079ACC4();
    v10 = sub_1007A29B4();
    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v10, "No Collections Button Found", v11, 2u);
    }
  }
}

void sub_1002E100C(uint64_t a1, uint64_t a2, void (*a3)(void, void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    a3(0, 0);
  }
}

void sub_1002E1070(void (*a1)(void), uint64_t a2)
{
  v5 = [v2 navigationItem];
  v6 = [v5 _largeTitleAccessoryView];

  if (v6)
  {
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      v8 = v7;
      if (a1)
      {
        v16[4] = a1;
        v16[5] = a2;
        v16[0] = _NSConcreteStackBlock;
        v16[1] = 1107296256;
        v16[2] = sub_100201C54;
        v16[3] = &unk_100A145A0;
        v9 = _Block_copy(v16);
        v10 = v6;
        sub_1000260E8(a1, a2);
      }

      else
      {
        v15 = v6;
        v9 = 0;
      }

      [v2 presentReadingListsPopoverFromItem:v8 completion:v9];
      _Block_release(v9);

      return;
    }
  }

  if (qword_100AD13D8 != -1)
  {
    swift_once();
  }

  v11 = sub_10079ACE4();
  sub_100008B98(v11, qword_100ADA940);
  v12 = sub_10079ACC4();
  v13 = sub_1007A29B4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "No Collections Button Found", v14, 2u);
  }

  if (a1)
  {
    a1(0);
  }
}

void *sub_1002E1288()
{
  v1 = [v0 navigationItem];
  v2 = [v1 rightBarButtonItems];

  if (v2)
  {
    sub_10000A7C4(0, &qword_100ADAA20, UIBarButtonItem_ptr);
    v3 = sub_1007A25E4();

    if (v3 >> 62)
    {
      goto LABEL_16;
    }

    for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1007A38D4())
    {
      v5 = 0;
      while (1)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v6 = sub_1007A3784();
        }

        else
        {
          if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_15;
          }

          v6 = *(v3 + 8 * v5 + 32);
        }

        v7 = v6;
        v8 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        if ([v6 tag] == 2)
        {

          return v7;
        }

        ++v5;
        if (v8 == i)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      ;
    }

LABEL_17:
  }

  return 0;
}

Swift::Void __swiftcall BKLibraryBookshelfCollectionViewController.viewModeChanged()()
{
  v1 = [v0 layout];
  v2 = [v1 viewMode];

  v3 = [v0 dataSourceAdaptor];
  v4 = [v3 supplementaryDataSource];

  v5 = [v4 viewMode];
  if (v2 != v5)
  {
    v6 = [v0 layout];
    v7 = [v0 dataSourceAdaptor];
    v8 = [v7 supplementaryDataSource];

    v9 = [v8 viewMode];
    [v6 setViewMode:v9];

    v10 = [v0 layout];
    v11 = [v0 view];
    if (v11)
    {
      v12 = v11;
      v13 = [v11 window];

      if (v13)
      {

        v14 = v0;
      }

      else
      {
        v15 = [v0 navigationController];
        v14 = [v15 topViewController];
      }

      [v10 updateMetricsWithViewController:v14];

      v16 = [v0 collectionView];
      if (v16)
      {
        v17 = v16;
        v18 = [v16 collectionViewLayout];

        [v18 invalidateLayout];
      }

      v19 = [v0 collectionView];
      [v19 reloadData];

      v20 = [v0 navigationItem];
      objc_opt_self();
      v21 = swift_dynamicCastObjCClass();
      v22 = v21;
      if (!v21)
      {

        v21 = 0;
      }

      [v21 notifyRightBarButtonItemsDidChange];
    }

    else
    {
      __break(1u);
    }
  }
}

double sub_1002E16D4()
{
  v1 = [v0 navigationItem];
  v2 = [v1 rightBarButtonItems];

  if (!v2)
  {
    return result;
  }

  sub_10000A7C4(0, &qword_100ADAA20, UIBarButtonItem_ptr);
  v4 = sub_1007A25E4();

  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_4;
    }

LABEL_20:

    return result;
  }

LABEL_19:
  v5 = sub_1007A38D4();
  if (!v5)
  {
    goto LABEL_20;
  }

LABEL_4:
  v6 = 0;
  while (1)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = sub_1007A3784();
    }

    else
    {
      if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_18;
      }

      v7 = *(v4 + 8 * v6 + 32);
    }

    v8 = v7;
    v9 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    if (![v7 tag])
    {
      break;
    }

    ++v6;
    if (v9 == v5)
    {
      goto LABEL_20;
    }
  }

  v11 = v8;
  v10 = sub_1002DF3FC();
  [v11 setMenu:v10];

  return result;
}

Swift::Void __swiftcall BKLibraryBookshelfCollectionViewController.sortModeChanged()()
{
  v1 = [v0 layout];
  v2 = [v0 dataSourceAdaptor];
  v3 = [v2 supplementaryDataSource];

  v4 = [v3 sortMode];
  [v1 setReorderableCollection:v4 == 6];

  [v0 reloadData];
  v5 = [v0 navigationItem];
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  v7 = v6;
  if (!v6)
  {

    v6 = 0;
  }

  [v6 notifyRightBarButtonItemsDidChange];
}

Swift::Void __swiftcall BKLibraryBookshelfCollectionViewController.largeTitleVisibilityDidChange(isVisible:)(Swift::Bool isVisible)
{
  if ((_UISolariumEnabled() & 1) == 0)
  {
    v2 = sub_1002E1288();
    if (v2)
    {
      v3 = v2;
      if ([v2 isHidden] != isVisible)
      {
        [v3 setHidden:?];
      }
    }
  }
}

Swift::Void __swiftcall BKLibraryBookshelfCollectionViewController.dragAndDropSessionDidStart()()
{
  v1 = [v0 dragAndDropSessionsActive];
  if (__OFADD__(v1, 1))
  {
    __break(1u);
  }

  else
  {
    [v0 setDragAndDropSessionsActive:v1 + 1];

    [v0 configureForDragAndDropSession];
  }
}

Swift::Void __swiftcall BKLibraryBookshelfCollectionViewController.dragAndDropSessionDidEnd()()
{
  v1 = [v0 dragAndDropSessionsActive];
  if (__OFSUB__(v1, 1))
  {
    __break(1u);
  }

  else
  {
    [v0 setDragAndDropSessionsActive:v1 - 1];

    [v0 configureForDragAndDropSession];
  }
}

Swift::Void __swiftcall BKLibraryBookshelfCollectionViewController.configureForDragAndDropSession()()
{
  sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1007A2CD4();
}

void sub_1002E1E90(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong dragAndDropSessionsActive] > 0;
    [v2 updateBarButtonsAnimated:1];
    v4 = [v2 dataSourceAdaptor];
    v5 = [v4 supplementaryDataSource];

    [v5 setIsInDragSession:v3];
  }
}

double sub_1002E20DC()
{
  v1 = sub_1001F1160(&qword_100AD67D0, &qword_100814660);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v12 - v3;
  v5 = [v0 selectedBooks];
  sub_10000A7C4(0, &qword_100ADA990, BKLibraryAsset_ptr);
  v6 = sub_1007A25E4();

  if (v6 >> 62)
  {
    if (sub_1007A38D4())
    {
      goto LABEL_3;
    }
  }

  else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v7 = sub_1007A2744();
    (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
    sub_1007A26F4();
    v8 = v0;
    v9 = sub_1007A26E4();
    v10 = swift_allocObject();
    v10[2] = v9;
    v10[3] = &protocol witness table for MainActor;
    v10[4] = v6;
    v10[5] = v8;
    sub_1003457A0(0, 0, v4, &unk_100818A58, v10);

    return result;
  }

  return result;
}

uint64_t sub_1002E22A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  sub_1007A26F4();
  v5[8] = sub_1007A26E4();
  v7 = sub_1007A2694();
  v5[9] = v7;
  v5[10] = v6;

  return _swift_task_switch(sub_1002E233C, v7, v6);
}

uint64_t sub_1002E233C()
{
  if (qword_100AD1700 != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = qword_100B233E8;
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = 0u;
  *(v3 + 40) = 0u;
  *(v3 + 56) = v1;
  sub_1001F1160(&qword_100ADAA10, &qword_100828AF0);
  swift_allocObject();
  v4 = v2;

  v0[11] = sub_10079B954();
  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = sub_1002E249C;

  return Future.value.getter(v0 + 2);
}

uint64_t sub_1002E249C()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 72);
    v4 = *(v2 + 80);
    v5 = sub_1002E2684;
  }

  else
  {

    v3 = *(v2 + 72);
    v4 = *(v2 + 80);
    v5 = sub_1002E25E0;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1002E25E0()
{
  v1 = *(v0 + 56);

  v2 = sub_1007A2214();

  [v1 bk_presentCollectionWithID:v2];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1002E2684()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1002E2760(uint64_t a1)
{
  v2 = v1;
  v4 = [v2 selectedBooks];
  sub_10000A7C4(0, &qword_100ADA990, BKLibraryAsset_ptr);
  v5 = sub_1007A25E4();

  if (v5 >> 62)
  {
    goto LABEL_52;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
LABEL_53:

LABEL_55:

    return;
  }

LABEL_3:
  sub_10000AE20(a1, &v58);
  if (!*(&v59 + 1))
  {

    goto LABEL_49;
  }

  sub_10000A7C4(0, &qword_100AECAB0, UICommand_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_55;
  }

  v54 = v2;
  v7 = v56[0];
  if ([v56[0] propertyList])
  {
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    *v56 = 0u;
    v57 = 0u;
  }

  v58 = *v56;
  v59 = v57;
  if (!*(&v57 + 1))
  {

    sub_100007840(&v58, &unk_100AD5B40, &unk_100811300);
    goto LABEL_44;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_44:
    if (qword_100AD13D8 != -1)
    {
      swift_once();
    }

    v43 = sub_10079ACE4();
    sub_100008B98(v43, qword_100ADA940);
    sub_10000AE20(a1, &v58);
    v44 = sub_10079ACC4();
    v45 = sub_1007A29B4();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v55[0] = v47;
      *v46 = 136315138;
      sub_10000AE20(&v58, v56);
      sub_1001F1160(&unk_100AD5B40, &unk_100811300);
      v48 = sub_1007A22E4();
      v49 = v7;
      v51 = v50;
      sub_100007840(&v58, &unk_100AD5B40, &unk_100811300);
      v52 = sub_1000070F4(v48, v51, v55);

      *(v46 + 4) = v52;
      sub_1000074E0(v47);

      return;
    }

LABEL_49:
    sub_100007840(&v58, &unk_100AD5B40, &unk_100811300);
    return;
  }

  v53 = v7;
  v9 = v55[0];
  v8 = v55[1];
  if (qword_100AD1700 != -1)
  {
    swift_once();
  }

  a1 = sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = v9;
  v11[4] = v8;
  v11[5] = v5;

  sub_1007A2CD4();

  v12 = sub_1001EDAA8(_swiftEmptyArrayStorage);
  v13 = 0;
LABEL_15:
  v2 = v13;
  while (1)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v14 = sub_1007A3784();
    }

    else
    {
      if (v2 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_51;
      }

      v14 = *(v5 + 8 * v2 + 32);
    }

    v15 = v14;
    v13 = (v2 + 1);
    if (__OFADD__(v2, 1))
    {
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      v6 = sub_1007A38D4();
      if (!v6)
      {
        goto LABEL_53;
      }

      goto LABEL_3;
    }

    v16 = [v14 assetID];
    if (!v16)
    {
      goto LABEL_58;
    }

    v17 = v16;
    v18 = sub_1007A2254();
    v20 = v19;

    v21 = [objc_allocWithZone(NSNumber) initWithShort:{objc_msgSend(v15, "contentType")}];
    if (v21)
    {
      break;
    }

    v22 = sub_10000E53C(v18, v20);
    a1 = v23;

    if (a1)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v58 = v12;
      if (!isUniquelyReferenced_nonNull_native)
      {
        a1 = &v58;
        sub_1002F1578();
        v12 = v58;
      }

      sub_1002F9CFC();
LABEL_40:
      if (v13 != v6)
      {
        goto LABEL_15;
      }

LABEL_41:

      sub_10000A7C4(0, &unk_100ADAA00, BSUINoticeViewController_ptr);
      v42 = [v53 title];
      sub_1007A2254();

      sub_1007A2F64();

      [v54 setEditing:0 animated:1];

      return;
    }

    ++v2;
    if (v13 == v6)
    {
      goto LABEL_41;
    }
  }

  v24 = v21;
  v25 = swift_isUniquelyReferenced_nonNull_native();
  *&v58 = v12;
  a1 = v12;
  v26 = sub_10000E53C(v18, v20);
  v28 = v12[2];
  v29 = (v27 & 1) == 0;
  v30 = __OFADD__(v28, v29);
  v31 = v28 + v29;
  if (v30)
  {
    __break(1u);
    goto LABEL_57;
  }

  if (v12[3] >= v31)
  {
    if (v25)
    {
      if ((v27 & 1) == 0)
      {
        goto LABEL_38;
      }
    }

    else
    {
      a1 = &v58;
      v37 = v26;
      v38 = v27;
      sub_1002F1578();
      v26 = v37;
      if ((v38 & 1) == 0)
      {
        goto LABEL_38;
      }
    }

    goto LABEL_36;
  }

  v32 = v27;
  sub_1003D4CCC(v31, v25);
  a1 = v58;
  v26 = sub_10000E53C(v18, v20);
  if ((v32 & 1) != (v33 & 1))
  {
    goto LABEL_59;
  }

  if (v32)
  {
LABEL_36:
    a1 = v26;

    v12 = v58;
    v35 = *(v58 + 56);
    v36 = *(v35 + 8 * a1);
    *(v35 + 8 * a1) = v24;

    goto LABEL_40;
  }

LABEL_38:
  v12 = v58;
  *(v58 + 8 * (v26 >> 6) + 64) |= 1 << v26;
  v39 = (v12[6] + 16 * v26);
  *v39 = v18;
  v39[1] = v20;
  *(v12[7] + 8 * v26) = v24;

  v40 = v12[2];
  v30 = __OFADD__(v40, 1);
  v41 = v40 + 1;
  if (!v30)
  {
    v12[2] = v41;
    goto LABEL_40;
  }

LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  sub_1007A3B24();
  __break(1u);
}

uint64_t sub_1002E2FC8(void *a1, uint64_t a2, uint64_t a3, SEL *a4, uint64_t a5)
{
  if (a3)
  {
    v8 = a1;
    swift_unknownObjectRetain();
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
    v9 = a1;
  }

  [a1 *a4];

  return sub_100007840(&v11, &unk_100AD5B40, &unk_100811300);
}

uint64_t BKLibraryBookshelfCollectionViewController.createSeriesViewController(from:with:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_10079B774();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  sub_10079B674();
  v3[8] = swift_task_alloc();
  sub_100797164();
  v3[9] = swift_task_alloc();
  v5 = sub_100797974();
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();
  sub_1001F1160(&qword_100ADA978, &qword_100841750);
  v3[13] = swift_task_alloc();
  v6 = sub_100797254();
  v3[14] = v6;
  v3[15] = *(v6 - 8);
  v3[16] = swift_task_alloc();
  v7 = sub_10079B634();
  v3[17] = v7;
  v3[18] = *(v7 - 8);
  v3[19] = swift_task_alloc();
  v8 = sub_10079B654();
  v3[20] = v8;
  v3[21] = *(v8 - 8);
  v3[22] = swift_task_alloc();
  v9 = sub_10079B794();
  v3[23] = v9;
  v3[24] = *(v9 - 8);
  v3[25] = swift_task_alloc();
  sub_1001F1160(&qword_100ADA980, &qword_100818A30);
  v3[26] = swift_task_alloc();
  v10 = sub_100797234();
  v3[27] = v10;
  v3[28] = *(v10 - 8);
  v3[29] = swift_task_alloc();
  v11 = sub_100798E94();
  v3[30] = v11;
  v3[31] = *(v11 - 8);
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  sub_1007A26F4();
  v3[34] = sub_1007A26E4();
  v13 = sub_1007A2694();
  v3[35] = v13;
  v3[36] = v12;

  return _swift_task_switch(sub_1002E3510, v13, v12);
}

uint64_t sub_1002E3510()
{
  v0[37] = sub_1007A2C14();
  v1 = v0[2];
  sub_1007A1EF4();
  v2 = [v1 seriesID];
  v3 = v0[2];
  if (v2)
  {
    v4 = v2;
    sub_1007A2254();

    v5 = [v3 seriesBooks];
    if (v5 && (v6 = v5, sub_10000A7C4(0, &qword_100ADA990, BKLibraryAsset_ptr), sub_1002E4850(), v7 = sub_1007A2834(), v6, v8 = sub_100401CAC(v7), , v8) && (v9 = [v8 isAudiobook], v8, (v9 & 1) != 0))
    {
      v10 = &enum case for SeriesType.audiobook(_:);
    }

    else
    {
      v10 = &enum case for SeriesType.book(_:);
    }

    v12 = v0[32];
    v11 = v0[33];
    v14 = v0[30];
    v13 = v0[31];
    v16 = v0[25];
    v15 = v0[26];
    v17 = v0[24];
    v26 = v0[23];
    v18 = v0[18];
    v27 = v0[19];
    v28 = v0[17];
    (*(v13 + 104))(v11, *v10, v14);
    (*(v13 + 16))(v12, v11, v14);
    (*(v13 + 56))(v15, 1, 1, v14);
    (*(v17 + 104))(v16, enum case for Metrics.NavigationType.forward(_:), v26);
    sub_100797224();
    (*(v18 + 104))(v27, enum case for ActionOrigin.Kind.lockup(_:), v28);
    sub_10079B644();
    v19 = swift_task_alloc();
    v0[38] = v19;
    *v19 = v0;
    v19[1] = sub_1002E39B0;
    v20 = v0[16];

    return BaseObjectGraph.inject<A>(_:)(v20);
  }

  else
  {
    sub_1007A3744(54);
    v30._object = 0x80000001008C9E10;
    v30._countAndFlagsBits = 0xD000000000000034;
    sub_1007A23D4(v30);
    v21 = [v3 description];
    v22 = sub_1007A2254();
    v24 = v23;

    v31._countAndFlagsBits = v22;
    v31._object = v24;
    sub_1007A23D4(v31);

    return sub_1007A38A4();
  }
}

uint64_t sub_1002E39B0()
{
  v2 = *v1;
  *(*v1 + 312) = v0;

  v3 = *(v2 + 288);
  v4 = *(v2 + 280);
  if (v0)
  {
    v5 = sub_1002E3FFC;
  }

  else
  {
    v5 = sub_1002E3AEC;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1002E3AEC()
{
  v1 = v0[21];
  v2 = v0[20];
  v3 = v0[13];
  v4 = v0[4];
  (*(v1 + 16))(v3, v0[22], v2);
  (*(v1 + 56))(v3, 0, 1, v2);
  v5 = [v4 presentingViewController];
  if (v5)
  {
  }

  v7 = v0[6];
  v6 = v0[7];
  v8 = v0[5];
  sub_100797154();
  (*(v7 + 104))(v6, enum case for NavigationBarTitleStyle.inline(_:), v8);
  sub_10079B664();
  sub_100797964();
  v9 = swift_task_alloc();
  v0[40] = v9;
  v10 = sub_1002E47F8();
  *v9 = v0;
  v9[1] = sub_1002E3C88;
  v11 = v0[29];
  v12 = v0[27];
  v14 = v0[12];
  v13 = v0[13];
  v15 = v0[3];

  return PageControllerFactory.create<A>(intent:parentTracker:origin:configuration:)(v11, v15, v13, v14, v12, v10);
}

uint64_t sub_1002E3C88(uint64_t a1)
{
  v4 = *v2;
  v4[41] = v1;

  v5 = v4[13];
  v6 = v4[12];
  v7 = v4[11];
  v8 = v4[10];
  if (v1)
  {
    (*(v7 + 8))(v6, v8);
    sub_100007840(v5, &qword_100ADA978, &qword_100841750);
    v9 = v4[35];
    v10 = v4[36];
    v11 = sub_1002E4180;
  }

  else
  {
    v4[42] = a1;
    (*(v7 + 8))(v6, v8);
    sub_100007840(v5, &qword_100ADA978, &qword_100841750);
    v9 = v4[35];
    v10 = v4[36];
    v11 = sub_1002E3E54;
  }

  return _swift_task_switch(v11, v9, v10);
}

uint64_t sub_1002E3E54()
{
  v1 = v0[31];
  v15 = v0[33];
  v13 = v0[29];
  v14 = v0[30];
  v2 = v0[28];
  v12 = v0[27];
  v4 = v0[21];
  v3 = v0[22];
  v5 = v0[20];
  v7 = v0[15];
  v6 = v0[16];
  v8 = v0[14];

  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);
  (*(v2 + 8))(v13, v12);
  (*(v1 + 8))(v15, v14);

  v9 = v0[1];
  v10 = v0[42];

  return v9(v10);
}

uint64_t sub_1002E3FFC()
{
  v11 = v0[33];
  v1 = v0[30];
  v2 = v0[31];
  v4 = v0[28];
  v3 = v0[29];
  v5 = v0[27];
  v6 = v0[21];
  v7 = v0[22];
  v8 = v0[20];

  (*(v6 + 8))(v7, v8);
  (*(v4 + 8))(v3, v5);
  (*(v2 + 8))(v11, v1);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1002E4180()
{
  v1 = v0[31];
  v13 = v0[30];
  v14 = v0[33];
  v2 = v0[28];
  v11 = v0[27];
  v12 = v0[29];
  v3 = v0[21];
  v4 = v0[22];
  v5 = v0[20];
  v6 = v0[15];
  v7 = v0[16];
  v8 = v0[14];

  (*(v6 + 8))(v7, v8);
  (*(v3 + 8))(v4, v5);
  (*(v2 + 8))(v12, v11);
  (*(v1 + 8))(v14, v13);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1002E44B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  sub_1007A26F4();
  v4[6] = sub_1007A26E4();
  v6 = sub_1007A2694();

  return _swift_task_switch(sub_1002E454C, v6, v5);
}

uint64_t sub_1002E454C()
{
  v1 = v0[5];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];

  v0[7] = _Block_copy(v2);
  v5 = v4;
  v6 = v3;
  v7 = v1;
  v8 = swift_task_alloc();
  v0[8] = v8;
  *v8 = v0;
  v8[1] = sub_1002E4618;
  v10 = v0[2];
  v9 = v0[3];

  return BKLibraryBookshelfCollectionViewController.createSeriesViewController(from:with:)(v10, v9);
}

uint64_t sub_1002E4618(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = *(*v2 + 24);
  v8 = *(*v2 + 16);
  v9 = *v2;

  v10 = *(v5 + 56);
  if (v3)
  {
    v11 = sub_1007967C4();

    (v10)[2](v10, 0, v11);

    _Block_release(v10);
  }

  else
  {
    (v10)[2](*(v5 + 56), a1, 0);
    _Block_release(v10);
  }

  v12 = *(v9 + 8);

  return v12();
}

unint64_t sub_1002E47F8()
{
  result = qword_100ADA988;
  if (!qword_100ADA988)
  {
    sub_100797234();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADA988);
  }

  return result;
}

unint64_t sub_1002E4850()
{
  result = qword_100AD9FD0;
  if (!qword_100AD9FD0)
  {
    sub_10000A7C4(255, &qword_100ADA990, BKLibraryAsset_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD9FD0);
  }

  return result;
}

uint64_t sub_1002E48B8()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100009A34;

  return sub_1002E44B0(v2, v3, v5, v4);
}

uint64_t sub_1002E4978()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1002E49C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100009A34;

  return sub_1002E22A4(a1, v4, v5, v7, v6);
}

void sub_1002E4B64(uint64_t a1)
{
  sub_1002E4FFC(319);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1002E4BEC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 16) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if (v5 > 0x7FFFFFFE)
      {
        return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
      }

      v15 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v15) = -1;
      }

      if ((v15 + 1) >= 2)
      {
        return v15;
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
    goto LABEL_26;
  }

LABEL_15:
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

  return v7 + (v9 | v14) + 1;
}

void sub_1002E4D80(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 16) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v7 > 0x7FFFFFFE)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 16] & ~v9;

    v19(v20);
  }

  else if (a2 > 0x7FFFFFFE)
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    *a1 = a2 - 0x7FFFFFFF;
  }

  else
  {
    *a1 = a2;
  }
}

void sub_1002E4FFC(uint64_t a1)
{
  if (!qword_100ADAAE0)
  {
    sub_1001F1234(&unk_100ADAE20, qword_10081BDC0);
    v1 = sub_1007A3454();
    if (!v2)
    {
      atomic_store(v1, &qword_100ADAAE0);
    }
  }
}

uint64_t sub_1002E50A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v35 = *(a1 + 16);
  v4 = sub_10079C2A4();
  v32 = *(a1 + 24);
  v53 = v32;
  v54 = &protocol witness table for _PaddingLayout;
  v41 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  v5 = v4;
  v34 = v4;
  WitnessTable = swift_getWitnessTable();
  v7 = type metadata accessor for PopoverListHighlight(0, v5, WitnessTable, v6);
  v36 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v31 - v8;
  v10 = sub_10079C2A4();
  v38 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v31 - v11;
  v13 = sub_10079C2A4();
  v40 = *(v13 - 8);
  __chkstk_darwin(v13);
  v31 = &v31 - v14;
  sub_1001F1234(&qword_100AEE070, &qword_1008366F0);
  v15 = sub_10079C2A4();
  v39 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v37 = &v31 - v19;
  v20 = *v2;
  v21 = v2[1];
  v43 = v35;
  v44 = v32;
  v45 = v2;
  sub_1000260E8(v20, v21);
  sub_10056E9B4(v20, v21, sub_1002E5838, v34, WitnessTable, v9, 7.0, 1.0);
  sub_10079CB04();
  v22 = swift_getWitnessTable();
  sub_10079D7B4();
  (*(v36 + 8))(v9, v7);
  sub_10079CB14();
  v51 = v22;
  v52 = &protocol witness table for _AlignmentWritingModifier;
  v23 = swift_getWitnessTable();
  v24 = v31;
  sub_10079D7B4();
  (*(v38 + 8))(v12, v10);
  v25 = sub_10079DDC4();
  v49 = &protocol witness table for _AlignmentWritingModifier;
  v50 = v25;
  v48 = v23;
  v26 = swift_getWitnessTable();
  sub_10079D8B4();

  (*(v40 + 8))(v24, v13);
  v27 = sub_1002E5844();
  v46 = v26;
  v47 = v27;
  swift_getWitnessTable();
  v28 = v37;
  sub_10039232C();
  v29 = *(v39 + 8);
  v29(v17, v15);
  sub_10039232C();
  return (v29)(v28, v15);
}

uint64_t sub_1002E55E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10079C2A4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v15 - v10;
  type metadata accessor for PopoverListItem(0, a2, a3, v12);
  sub_10079D2F4();
  sub_10079DBE4();
  v15[0] = a3;
  v15[1] = &protocol witness table for _PaddingLayout;
  swift_getWitnessTable();
  sub_10039232C();
  v13 = *(v6 + 8);
  v13(v8, v5);
  sub_10039232C();
  return (v13)(v11, v5);
}

uint64_t sub_1002E57E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = a1;
  a7[1] = a2;
  type metadata accessor for PopoverListItem(0, a5, a6, a4);
  return a3();
}

unint64_t sub_1002E5844()
{
  result = qword_100ADAAE8;
  if (!qword_100ADAAE8)
  {
    sub_1001F1234(&qword_100AEE070, &qword_1008366F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADAAE8);
  }

  return result;
}

uint64_t sub_1002E58D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v49 = sub_10079E254();
  v48 = *(v49 - 8);
  __chkstk_darwin(v49);
  v47 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v46 = &v46 - v8;
  v57 = a1;
  v58 = a2;
  sub_100206ECC();

  v9 = sub_10079D5D4();
  v11 = v10;
  v13 = v12;
  sub_10079D374();
  sub_10079D3D4();
  sub_10079D464();

  v14 = sub_10079D5A4();
  v16 = v15;
  v18 = v17;

  sub_10020B430(v9, v11, v13 & 1);

  _s5Books11ChromeStyleC14secondaryColor7SwiftUI0E0Vvg_0();
  v51 = sub_10079D564();
  v50 = v19;
  v21 = v20;
  v52 = v22;

  sub_10020B430(v14, v16, v18 & 1);

  sub_1001F1160(&qword_100AE17F0, &qword_100822890);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10080EFF0;
  LOBYTE(v11) = sub_10079D2A4();
  *(inited + 32) = v11;
  v24 = sub_10079D2B4();
  *(inited + 33) = v24;
  v25 = sub_10079D2D4();
  sub_10079D2D4();
  if (sub_10079D2D4() != v11)
  {
    v25 = sub_10079D2D4();
  }

  sub_10079D2D4();
  if (sub_10079D2D4() != v24)
  {
    v25 = sub_10079D2D4();
  }

  sub_10079BBA4();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = v21 & 1;
  v72 = v21 & 1;
  v69 = 0;
  v35 = v46;
  sub_10079E244();
  v36 = v48;
  v37 = *(v48 + 16);
  v38 = v47;
  v39 = v49;
  v37(v47, v35, v49);
  *&v53 = v51;
  *(&v53 + 1) = v50;
  LOBYTE(v54) = v34;
  *(&v54 + 1) = *v71;
  DWORD1(v54) = *&v71[3];
  *(&v54 + 1) = v52;
  LOBYTE(v55) = v25;
  *(&v55 + 1) = *v70;
  DWORD1(v55) = *&v70[3];
  *(&v55 + 1) = v27;
  *&v56[0] = v29;
  *(&v56[0] + 1) = v31;
  *&v56[1] = v33;
  BYTE8(v56[1]) = 0;
  v40 = v53;
  v41 = v54;
  *(a3 + 57) = *(v56 + 9);
  v42 = v56[0];
  a3[2] = v55;
  a3[3] = v42;
  *a3 = v40;
  a3[1] = v41;
  v43 = sub_1001F1160(&qword_100ADAAF8, &qword_100818B80);
  v37(a3 + *(v43 + 48), v38, v39);
  sub_1002E5E04(&v53, &v57);
  v44 = *(v36 + 8);
  v44(v35, v39);
  v44(v38, v39);
  v57 = v51;
  v58 = v50;
  v59 = v34;
  *v60 = *v71;
  *&v60[3] = *&v71[3];
  v61 = v52;
  v62 = v25;
  *v63 = *v70;
  *&v63[3] = *&v70[3];
  v64 = v27;
  v65 = v29;
  v66 = v31;
  v67 = v33;
  v68 = 0;
  return sub_1002E5E74(&v57);
}

uint64_t sub_1002E5DA4@<X0>(uint64_t a2@<X8>)
{
  v5 = *v2;
  v4 = v2[1];
  *a2 = sub_10079CB24();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v6 = sub_1001F1160(&qword_100ADAAF0, &qword_100818B78);
  return sub_1002E58D4(v5, v4, (a2 + *(v6 + 44)));
}

uint64_t sub_1002E5E04(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100ADAB00, &qword_100818B88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002E5E74(uint64_t a1)
{
  v2 = sub_1001F1160(&qword_100ADAB00, &qword_100818B88);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1002E5EDC()
{
  result = qword_100ADAB08;
  if (!qword_100ADAB08)
  {
    sub_1001F1234(&qword_100ADAB10, &unk_100818B90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADAB08);
  }

  return result;
}

id sub_1002E6014()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BookReaderToolbarPresenter();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_1002E606C(uint64_t a1, uint64_t a2)
{
  v3 = objc_opt_self();
  isa = sub_1007969C4().super.isa;
  v5 = *(v2 + 16);
  v10 = 0;
  v6 = [v3 signatureFromData:isa type:1 bag:v5 error:&v10];

  v7 = v10;
  if (v6)
  {
    v8 = sub_1007969D4();
  }

  else
  {
    v8 = v7;
    sub_1007967D4();

    swift_willThrow();
  }

  return v8;
}

Swift::Bool __swiftcall SplitViewContentHostingController.select(identifier:isUserAction:editNameOnSelect:)(Swift::String identifier, Swift::Bool isUserAction, Swift::Bool editNameOnSelect)
{
  v4 = v3;
  object = identifier._object;
  countAndFlagsBits = identifier._countAndFlagsBits;
  sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
  v9 = sub_1007A2D74();
  v10 = &_dispatch_main_q;
  if (v9 == &_dispatch_main_q)
  {
    +[NSThread isMainThread];
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(&v32);

  v11 = v32;
  if (v32)
  {
    v13 = *(&v32->isa + OBJC_IVAR___BKRootBarItem_identifier);
    v12 = *(&v32[1].isa + OBJC_IVAR___BKRootBarItem_identifier);

    if (v13 == countAndFlagsBits && v12 == object)
    {
    }

    else
    {
      v15 = sub_1007A3AB4();

      if ((v15 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    if (!isUserAction || sub_1002E6938())
    {
      goto LABEL_30;
    }

    v31.receiver = *(v4 + OBJC_IVAR___BKSplitViewContentHostingController_viewController);
    v31.super_class = type metadata accessor for MainContentViewController();
    v18 = objc_msgSendSuper2(&v31, "contentNavigationController");
    if (!v18)
    {
      return v18;
    }

    v19 = v18;
    v20 = [v19 viewControllers];
    sub_10000A7C4(0, &qword_100AD7CB0, UIViewController_ptr);
    v21 = sub_1007A25E4();

    if (v21 >> 62)
    {
      v22 = sub_1007A38D4();
    }

    else
    {
      v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v22 == 1)
    {
      v23 = [v19 topViewController];

      if (!v23)
      {
        goto LABEL_27;
      }

      v24 = [v23 contentScrollView];

      if (!v24)
      {
        goto LABEL_27;
      }

      [v24 _scrollToTopIfPossible:1];
    }

    else
    {

      v24 = [v19 popToRootViewControllerAnimated:1];
    }

LABEL_27:
    if (!UIAccessibilityIsVoiceOverRunning())
    {

      goto LABEL_30;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_10079B9A4(&v32);

    v26 = v32;
    sub_10079B8C4();

LABEL_29:
LABEL_30:
    LOBYTE(v18) = 0;
    return v18;
  }

LABEL_9:
  v16 = sub_1002E7D54(countAndFlagsBits, object, 2);
  if (!v16)
  {
    if (qword_100AD1688 != -1)
    {
      swift_once();
    }

    v25 = sub_10079ACE4();
    sub_100008B98(v25, qword_100AE4D38);

    v26 = sub_10079ACC4();
    v27 = sub_1007A29B4();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v32 = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_1000070F4(countAndFlagsBits, object, &v32);
      _os_log_impl(&_mh_execute_header, v26, v27, "Identifier %s isn't valid under current storefront, skip selection.", v28, 0xCu);
      sub_1000074E0(v29);
    }

    goto LABEL_29;
  }

  v17 = (v4 + OBJC_IVAR___BKSplitViewContentHostingController_selectedIdentifier);
  *v17 = countAndFlagsBits;
  v17[1] = object;

  sub_1002E77E0(isUserAction, editNameOnSelect, 0);
  LOBYTE(v18) = 1;
  return v18;
}

Swift::Bool __swiftcall SplitViewContentHostingController.hasStandardItem(withIdentifier:)(Swift::String withIdentifier)
{
  object = withIdentifier._object;
  countAndFlagsBits = withIdentifier._countAndFlagsBits;
  sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
  v3 = sub_1007A2D74();
  v4 = &_dispatch_main_q;
  if (v3 == &_dispatch_main_q)
  {
    +[NSThread isMainThread];
  }

  v5 = sub_1002E7C04(countAndFlagsBits, object);
  v6 = v5;
  if (v5)
  {
  }

  return v6 != 0;
}

UINavigationController_optional __swiftcall SplitViewContentHostingController.navigationController(forIdentifier:)(Swift::String forIdentifier)
{
  v2 = v1;
  object = forIdentifier._object;
  countAndFlagsBits = forIdentifier._countAndFlagsBits;
  sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
  v5 = sub_1007A2D74();
  v6 = &_dispatch_main_q;
  if (v5 == &_dispatch_main_q)
  {
    +[NSThread isMainThread];
  }

  v7 = OBJC_IVAR___BKSplitViewContentHostingController_cachedControllers;
  swift_beginAccess();
  v9 = *(v2 + v7);
  if (*(v9 + 16))
  {

    v10 = sub_10000E53C(countAndFlagsBits, object);
    if (v11)
    {
      v12 = *(*(v9 + 56) + 8 * v10);
      v13 = v12;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v14 = v12;
  result.value.super.super.super.isa = v14;
  result.is_nil = v8;
  return result;
}

UIViewController_optional __swiftcall SplitViewContentHostingController.topViewController(forIdentifier:)(Swift::String forIdentifier)
{
  v2 = v1;
  object = forIdentifier._object;
  countAndFlagsBits = forIdentifier._countAndFlagsBits;
  sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
  v5 = sub_1007A2D74();
  v6 = &_dispatch_main_q;
  if (v5 == &_dispatch_main_q)
  {
    +[NSThread isMainThread];
  }

  v7 = OBJC_IVAR___BKSplitViewContentHostingController_cachedControllers;
  swift_beginAccess();
  v9 = *(v2 + v7);
  if (!*(v9 + 16))
  {
    goto LABEL_7;
  }

  v10 = sub_10000E53C(countAndFlagsBits, object);
  if ((v11 & 1) == 0)
  {

LABEL_7:
    v14 = 0;
    goto LABEL_8;
  }

  v12 = *(*(v9 + 56) + 8 * v10);

  v13 = [v12 topViewController];

  v14 = v13;
LABEL_8:
  result.value.super.super.isa = v14;
  result.is_nil = v8;
  return result;
}

BOOL sub_1002E6938()
{
  v0 = sub_1007A1C54();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1007A1CA4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A7C4(0, &unk_100ADAF38, BCCardStackViewController_ptr);
  v8 = sub_1007A2C64();
  if (v8)
  {
    sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
    v9 = sub_1007A2D74();
    v15 = v4;
    v10 = v9;
    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1002F9A88;
    aBlock[5] = v11;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1003323D0;
    aBlock[3] = &unk_100A14768;
    v12 = _Block_copy(aBlock);

    sub_1007A1C74();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1002F9A98(&qword_100ADA670, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1001F1160(&unk_100AD7CA0, &unk_100812B20);
    sub_100234698();
    sub_1007A3594();
    sub_1007A2D94();
    _Block_release(v12);

    (*(v1 + 8))(v3, v0);
    (*(v5 + 8))(v7, v15);
  }

  return v8 != 0;
}

double sub_1002E6C44(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___BKSplitViewContentHostingController_standardItems;
  swift_beginAccess();
  *(v3 + v4) = v2;

  return result;
}

uint64_t SplitViewContentHostingController.selectedItem.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(&v1);

  return v1;
}

void sub_1002E6D7C(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(&v3);

  *a2 = v3;
}

uint64_t sub_1002E6DFC(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;
  v5 = v3;
  return sub_10079B9B4();
}

uint64_t SplitViewContentHostingController.selectedItem.setter(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  return sub_10079B9B4();
}

uint64_t (*SplitViewContentHostingController.selectedItem.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_10079B994();
  return sub_1002E6F80;
}

void sub_1002E6F80(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t SplitViewContentHostingController.$selectedItem.getter()
{
  swift_beginAccess();
  sub_1001F1160(&unk_100AEB3A0, &unk_100818CD0);
  sub_10079B974();
  return swift_endAccess();
}

uint64_t SplitViewContentHostingController.$selectedItem.setter(uint64_t a1)
{
  v2 = sub_1001F1160(&unk_100ADAC60, &unk_1008130E0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_1001F1160(&unk_100AEB3A0, &unk_100818CD0);
  sub_10079B984();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*SplitViewContentHostingController.$selectedItem.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_1001F1160(&unk_100ADAC60, &unk_1008130E0);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR___BKSplitViewContentHostingController__selectedItem;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_1001F1160(&unk_100AEB3A0, &unk_100818CD0);
  sub_10079B974();
  swift_endAccess();
  return sub_1002E7304;
}

void sub_1002E7304(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[13];
  v11 = v3[14];
  v7 = v3[11];
  v6 = v3[12];
  v8 = v3[10];
  if (a2)
  {
    v4(v3[12], v5, v3[10]);
    swift_beginAccess();
    sub_10079B984();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    sub_10079B984();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

uint64_t SplitViewContentHostingController.rootBarCoordinator.setter(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*SplitViewContentHostingController.rootBarCoordinator.modify(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR___BKSplitViewContentHostingController_rootBarCoordinator;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1002E75AC;
}

void sub_1002E75AC(void **a1, char a2)
{
  v3 = *a1;
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

id SplitViewContentHostingController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SplitViewContentHostingController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1002E77E0(char a1, char a2, char a3)
{
  v4 = v3;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(v39);

  v8 = v39[0];
  if (!v39[0])
  {
    v11 = &v4[OBJC_IVAR___BKSplitViewContentHostingController_selectedIdentifier];
    v13 = &v4[OBJC_IVAR___BKSplitViewContentHostingController_selectedIdentifier + 8];
    v12 = *v13;
LABEL_11:
    if (!v12)
    {
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  v10 = *(v39[0] + OBJC_IVAR___BKRootBarItem_identifier);
  v9 = *(v39[0] + OBJC_IVAR___BKRootBarItem_identifier + 8);

  v11 = &v4[OBJC_IVAR___BKSplitViewContentHostingController_selectedIdentifier];
  v13 = &v4[OBJC_IVAR___BKSplitViewContentHostingController_selectedIdentifier + 8];
  v12 = *v13;
  if (!v9)
  {
    goto LABEL_11;
  }

  if (!v12)
  {

LABEL_14:
    v16 = *&v4[OBJC_IVAR___BKSplitViewContentHostingController_viewController];
    v17 = type metadata accessor for MainContentViewController();
    v41.receiver = v16;
    v41.super_class = v17;
    v18 = objc_msgSendSuper2(&v41, "contentNavigationController");
    if (v18)
    {
      v19 = v18;
      v20 = [v18 topViewController];

      if (v20)
      {
        [v20 setEditing:0 animated:0];
      }
    }

LABEL_17:
    v21 = *v13;
    if (!*v13)
    {
      goto LABEL_21;
    }

    goto LABEL_18;
  }

  if (v10 != *v11 || v12 != v9)
  {
    v15 = sub_1007A3AB4();

    if (v15)
    {
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  v21 = *v13;
  if (!*v13)
  {
    goto LABEL_21;
  }

LABEL_18:
  v22 = *v11;

  v23 = sub_1002E7D54(v22, v21, a2 & 1);

  if (v23)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v39[0] = v23;
    v24 = v4;
    goto LABEL_22;
  }

LABEL_21:
  swift_getKeyPath();
  swift_getKeyPath();
  v39[0] = 0;
  v25 = v4;
LABEL_22:
  sub_10079B9B4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(v39);

  v26 = v39[0];
  if (!v39[0])
  {
    return;
  }

  v27 = *&v4[OBJC_IVAR___BKSplitViewContentHostingController_viewController];
  v28 = type metadata accessor for MainContentViewController();
  v40.receiver = v27;
  v40.super_class = v28;
  v29 = objc_msgSendSuper2(&v40, "contentNavigationController");
  if (v29)
  {
    v30 = v29;
    v31 = [v29 topViewController];

    if (v31)
    {
      v32 = [v31 bc_deepestVisibleChildViewControllerIncludePresented:1];

      v33 = [v32 ba_effectiveAnalyticsTracker];
      if (a3)
      {
        goto LABEL_31;
      }

LABEL_28:
      if (a1)
      {
        swift_beginAccess();
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v35 = [Strong rootViewController];
          swift_unknownObjectRelease();
          [v35 bc_dismissIfSafeAnimated:0];
        }
      }

      goto LABEL_31;
    }
  }

  v33 = 0;
  if ((a3 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_31:
  sub_1002E7F28(v26);
  v37 = v36;
  v38 = v36;
  MainContentViewController.contentNavigationController.setter(v37);
  if (a1)
  {
    v39[3] = v26;
    sub_10079B8C4();
    sub_1002E8AD8(v33);
  }
}

void *sub_1002E7C04(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR___BKSplitViewContentHostingController_standardItems;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (v6 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1007A38D4())
  {

    if (!i)
    {
      break;
    }

    v8 = 0;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = sub_1007A3784();
      }

      else
      {
        if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v9 = *(v6 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v12 = *&v9[OBJC_IVAR___BKRootBarItem_identifier] == a1 && *&v9[OBJC_IVAR___BKRootBarItem_identifier + 8] == a2;
      if (v12 || (sub_1007A3AB4() & 1) != 0)
      {

        return v10;
      }

      ++v8;
      if (v11 == i)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

LABEL_17:

  return 0;
}

id sub_1002E7D54(uint64_t a1, unint64_t a2, char a3)
{
  v4 = a2;
  result = sub_1002E7C04(a1, a2);
  if (!result)
  {
    v7 = 1701670760;
    v8 = type metadata accessor for RootBarItem();
    v9 = objc_allocWithZone(v8);
    if (a1 == 0x5F676E6964616572 && v4 == 0xEB00000000776F6ELL || (sub_1007A3AB4() & 1) != 0 || a1 == 0x776F6E5F64616572 && v4 == 0xE800000000000000 || (sub_1007A3AB4() & 1) != 0)
    {
      v4 = 0xE400000000000000;
    }

    else
    {

      v7 = a1;
    }

    v10 = &v9[OBJC_IVAR___BKRootBarItem_identifier];
    *v10 = v7;
    v10[1] = v4;
    v9[OBJC_IVAR___BKRootBarItem_isPlaceholder] = 0;
    v11 = &v9[OBJC_IVAR___BKRootBarItem_url];
    *v11 = 0;
    v11[1] = 0;
    v12 = &v9[OBJC_IVAR___BKRootBarItem_titleOverride];
    *v12 = 0;
    v12[1] = 0;
    v13 = &v9[OBJC_IVAR___BKRootBarItem_iconNameOverride];
    *v13 = 0;
    v13[1] = 0;
    v14 = &v9[OBJC_IVAR___BKRootBarItem_selectedIconNameOverride];
    *v14 = 0;
    v14[1] = 0;
    v15 = &v9[OBJC_IVAR___BKRootBarItem_countryCode];
    *v15 = 0;
    v15[1] = 0;
    v9[OBJC_IVAR___BKRootBarItem_editNameOnSelect] = a3 & 1;
    v17.receiver = v9;
    v17.super_class = v8;
    v16 = objc_msgSendSuper2(&v17, "init");
    if ([v16 isLibraryCollection])
    {
      return v16;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

void sub_1002E7F28(char *a1)
{
  v2 = v1;
  v4 = sub_1007A1F44();
  v90 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10079ACE4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  __chkstk_darwin(v10);
  v12 = &v80 - v11;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v85 = v9;
    v86 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (qword_100AD13E0 != -1)
    {
      swift_once();
    }

    v15 = sub_100008B98(v7, qword_100ADABE0);
    v16 = *(v8 + 16);
    v84 = v8 + 16;
    v83 = v16;
    v16(v12, v15, v7);
    v93 = a1;
    v17 = &a1[OBJC_IVAR___BKRootBarItem_identifier];
    v18 = *&a1[OBJC_IVAR___BKRootBarItem_identifier + 8];
    v91 = *v17;
    v19 = OBJC_IVAR___BKSplitViewContentHostingController_cachedControllers;
    swift_beginAccess();
    v20 = *&v1[v19];
    v21 = *(v20 + 16);
    v89 = v7;
    v88 = v8;
    v92 = v12;
    v87 = v14;
    if (v21)
    {

      v22 = sub_10000E53C(v91, v18);
      if (v23)
      {
        v24 = *(*(v20 + 56) + 8 * v22);

        v25 = v24;
        goto LABEL_13;
      }
    }

    v81 = v4;
    v27 = v14;
    v28 = v93;
    v29 = [v27 navigationControllerForItem:v93];
    v30 = objc_allocWithZone(BSUIPlaceholderViewController);
    v31 = v29;
    v32 = [v30 init];
    v33 = [v32 navigationItem];
    RootBarItem.title.getter(v99);

    sub_100007840(v99, &qword_100ADFAD0, &unk_100818CE0);
    v34 = sub_1007A2214();

    [v33 setTitle:v34];

    sub_1001F1160(&unk_100AD8160, &unk_100813160);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_100811390;
    v82 = v32;
    *(v35 + 32) = v32;
    sub_10000A7C4(0, &qword_100AD7CB0, UIViewController_ptr);
    v36 = v31;
    isa = sub_1007A25D4().super.isa;

    [v36 setViewControllers:isa];

    v38 = [v36 view];
    if (!v38)
    {
      goto LABEL_31;
    }

    v39 = [v28 automationID];
    sub_1007A2254();

    aBlock = 0u;
    v95 = 0u;
    sub_1007A1F24();

    sub_100007840(&aBlock, &unk_100AD5B40, &unk_100811300);
    sub_1007A30E4();

    (v90)[1](v6, v81);
    swift_beginAccess();
    v25 = v36;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v98 = *&v2[v19];
    *&v2[v19] = 0x8000000000000000;
    sub_1002F50E4(v25, v91, v18, isUniquelyReferenced_nonNull_native, &qword_100ADAF28, &unk_100822050, sub_1003D4154, sub_1003DDB70);

    *&v2[v19] = v98;
    swift_endAccess();

    v12 = v92;
LABEL_13:
    v41 = OBJC_IVAR___BKSplitViewContentHostingController_isCreatingContentForNavigationController;
    v42 = [*&v2[OBJC_IVAR___BKSplitViewContentHostingController_isCreatingContentForNavigationController] containsObject:v25];
    v43 = [v25 viewControllers];

    sub_10000A7C4(0, &qword_100AD7CB0, UIViewController_ptr);
    v44 = sub_1007A25E4();

    if (v44 >> 62)
    {
      if (sub_1007A38D4())
      {
        goto LABEL_15;
      }
    }

    else if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_15:
      if ((v44 & 0xC000000000000001) != 0)
      {
        v45 = sub_1007A3784();
LABEL_18:
        v46 = v45;

        sub_10000A7C4(0, &unk_100ADAF58, BSUIPlaceholderViewController_ptr);
        v47 = [v46 isKindOfClass:swift_getObjCClassFromMetadata()] ^ 1;
        if (((v42 | v47) & 1) == 0)
        {
          goto LABEL_25;
        }

        goto LABEL_23;
      }

      if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v45 = *(v44 + 32);
        goto LABEL_18;
      }

      __break(1u);
LABEL_31:
      __break(1u);
      return;
    }

    v46 = 0;
    if ((v42 & 1) == 0)
    {
LABEL_25:
      v57 = *&v2[v41];
      v91 = v25;
      [v57 addObject:v25];
      v58 = v46;
      v59 = v93;
      v60 = sub_10079ACC4();
      v61 = sub_1007A29D4();

      v62 = os_log_type_enabled(v60, v61);
      v90 = v58;
      if (v62)
      {
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        *&aBlock = v65;
        *v63 = 136315650;
        *(v63 + 4) = sub_1000070F4(0xD00000000000001CLL, 0x80000001008CA450, &aBlock);
        *(v63 + 12) = 2114;
        *(v63 + 14) = v58;
        *(v63 + 22) = 2114;
        *(v63 + 24) = v59;
        *v64 = v46;
        v64[1] = v59;
        v66 = v58;
        v67 = v59;
        _os_log_impl(&_mh_execute_header, v60, v61, "%s: Creating content VC to replace %{public}@ for %{public}@", v63, 0x20u);
        sub_1001F1160(&unk_100AD9480, &qword_1008113B0);
        swift_arrayDestroy();

        sub_1000074E0(v65);
      }

      v68 = v89;
      v69 = v86;
      v83(v86, v92, v89);
      v70 = v88;
      v71 = (*(v88 + 80) + 16) & ~*(v88 + 80);
      v72 = (v85 + v71 + 7) & 0xFFFFFFFFFFFFFFF8;
      v73 = (v72 + 15) & 0xFFFFFFFFFFFFFFF8;
      v74 = (v73 + 15) & 0xFFFFFFFFFFFFFFF8;
      v75 = swift_allocObject();
      (*(v70 + 32))(v75 + v71, v69, v68);
      *(v75 + v72) = v59;
      *(v75 + v73) = v2;
      v76 = v91;
      *(v75 + v74) = v91;
      v96 = sub_1002F9AE0;
      v97 = v75;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v95 = sub_1002166B8;
      *(&v95 + 1) = &unk_100A147E0;
      v77 = _Block_copy(&aBlock);
      v78 = v59;
      v79 = v2;
      v76;

      [v87 viewControllerForItem:v78 completion:v77];
      _Block_release(v77);

      swift_unknownObjectRelease();
      (*(v70 + 8))(v92, v68);
      return;
    }

    v47 = 0;
    v46 = 0;
LABEL_23:
    v48 = v93;
    v49 = sub_10079ACC4();
    v50 = sub_1007A29D4();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v91 = v25;
      v53 = v12;
      v54 = v52;
      v55 = swift_slowAlloc();
      *&aBlock = v55;
      *v51 = 136315906;
      *(v51 + 4) = sub_1000070F4(0xD00000000000001CLL, 0x80000001008CA450, &aBlock);
      *(v51 + 12) = 2114;
      *(v51 + 14) = v48;
      *v54 = v48;
      *(v51 + 22) = 1024;
      *(v51 + 24) = v42;
      *(v51 + 28) = 1024;
      *(v51 + 30) = v47;
      v56 = v48;
      _os_log_impl(&_mh_execute_header, v49, v50, "%s: Skipping creating content VC for %{public}@. isCreatingVC: %{BOOL}d, hasValidVC: %{BOOL}d", v51, 0x22u);
      sub_100007840(v54, &unk_100AD9480, &qword_1008113B0);

      sub_1000074E0(v55);

      swift_unknownObjectRelease();
      (*(v88 + 8))(v53, v89);
    }

    else
    {

      swift_unknownObjectRelease();
      (*(v88 + 8))(v12, v89);
    }

    return;
  }

  v26 = objc_allocWithZone(BSUINavigationController);

  [v26 init];
}

void sub_1002E8AD8(void *a1)
{
  v2 = v1;
  v4 = sub_10079AD54();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_10079AD84();
  v45 = *(v49 - 8);
  __chkstk_darwin(v49);
  v47 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_10079AD44();
  v41 = *(v42 - 8);
  __chkstk_darwin(v42);
  v48 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_10079AD64();
  v39 = *(v40 - 8);
  __chkstk_darwin(v40);
  v43 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10079ADB4();
  v46 = *(v11 - 8);
  __chkstk_darwin(v11);
  v44 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(&v53);

  v13 = v53;
  if (v53)
  {
    v34 = v11;
    v37 = v4;
    v38 = a1;
    v14 = *(v53 + OBJC_IVAR___BKRootBarItem_identifier);
    v15 = *(v53 + OBJC_IVAR___BKRootBarItem_identifier + 8);
    v16 = OBJC_IVAR___BKSplitViewContentHostingController_standardItems;
    swift_beginAccess();
    v17 = *(v2 + v16);
    v50 = v13;
    v36 = v5;
    v35 = v7;
    if (v17 >> 62)
    {
LABEL_28:
      v18 = sub_1007A38D4();
    }

    else
    {
      v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v19 = 0;
    while (v18 != v19)
    {
      if ((v17 & 0xC000000000000001) != 0)
      {
        v20 = sub_1007A3784();
      }

      else
      {
        if (v19 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

        v20 = *(v17 + 8 * v19 + 32);
      }

      v21 = v20;
      if (*&v20[OBJC_IVAR___BKRootBarItem_identifier] == v14 && *&v20[OBJC_IVAR___BKRootBarItem_identifier + 8] == v15)
      {

        goto LABEL_21;
      }

      v23 = sub_1007A3AB4();

      if (v23)
      {
        break;
      }

      if (__OFADD__(v19++, 1))
      {
        goto LABEL_27;
      }
    }

LABEL_21:
    (*(v39 + 104))(v43, enum case for FigaroClickEvent.ActionContext.tabBarController(_:), v40);
    (*(v41 + 104))(v48, enum case for FigaroActionType.focus(_:), v42);
    sub_1001F1160(&qword_100ADAF48, &unk_10082A660);
    sub_10079ADA4();
    *(swift_allocObject() + 16) = xmmword_10080B690;
    (*(v45 + 104))(v47, enum case for FigaroClickEvent.Location.Type.tabItem(_:), v49);

    sub_10079AD94();
    (*(v36 + 104))(v35, enum case for FigaroClickEvent.TargetType.tabItem(_:), v37);
    sub_100019158(_swiftEmptyArrayStorage);
    v25 = v44;
    sub_10079AD74();
    sub_1002F9A98(&qword_100ADAF50, &type metadata accessor for FigaroClickEvent, &protocol conformance descriptor for FigaroClickEvent);
    v26 = v34;
    sub_10079AE74();
    (*(v46 + 8))(v25, v26);
    v55 = _swiftEmptyDictionarySingleton;
    v27 = v38;
    if (v38)
    {
      v54 = sub_100798454();
      *&v53 = v27;
      sub_100019288(&v53, v52);
      v28 = v27;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v51 = _swiftEmptyDictionarySingleton;
      sub_1002F4B78(v52, 0x72656B63617274, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
      v55 = v51;
    }

    else
    {
      sub_1002EEBD0(0x72656B63617274, 0xE700000000000000, &v53);
      sub_100007840(&v53, &unk_100AD5B40, &unk_100811300);
    }

    v30 = objc_opt_self();
    type metadata accessor for FigaroKey(0);
    sub_1002F9A98(&qword_100AD36A0, type metadata accessor for FigaroKey, &unk_10080CADC);
    isa = sub_1007A2024().super.isa;

    sub_10058096C(v55);

    v32 = sub_1007A2024().super.isa;

    [v30 recordNativeEvent:isa additionalInfo:v32];
  }
}

double sub_1002E9300(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v25 = a4;
  v26 = a5;
  v8 = sub_10079ACE4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[1] = sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
  (*(v9 + 16))(v11, a2, v8);
  v12 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v13 = (v10 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 15) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  (*(v9 + 32))(v16 + v12, v11, v8);
  *(v16 + v13) = a3;
  v17 = v25;
  *(v16 + v14) = v25;
  v18 = v26;
  *(v16 + v15) = v26;
  v19 = a1;
  v20 = a3;
  v21 = v17;
  v22 = v18;
  sub_1007A2CD4();

  return result;
}

void sub_1002E94B4(void *a1, uint64_t a2, char *a3, char *a4, void *a5)
{
  v10 = sub_10079ACE4();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v14 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v83 = v13;
    v86 = a5;
    v84 = v12;
    v16 = *&a3[OBJC_IVAR___BKRootBarItem_identifier];
    v15 = *&a3[OBJC_IVAR___BKRootBarItem_identifier + 8];
    v17 = OBJC_IVAR___BKSplitViewContentHostingController_cachedControllers;
    swift_beginAccess();
    v85 = a4;
    v18 = *&a4[v17];
    v19 = *(v18 + 16);
    v20 = a1;
    if (v19)
    {

      v21 = sub_10000E53C(v16, v15);
      if (v22)
      {
        v23 = *(*(v18 + 56) + 8 * v21);

        if (v23 == v86)
        {
          RootBarItem.title.getter(v89);
          v92 = v90;

          sub_100007840(v89, &qword_100ADFAD0, &unk_100818CE0);
          v91 = v92;
          sub_1002060B4();
          v24 = sub_1007A28A4();
          sub_1002308AC(&v92);
          if (v24)
          {
            v25 = [v20 navigationItem];
            RootBarItem.title.getter(&v91);

            sub_100007840(&v91, &qword_100ADFAD0, &unk_100818CE0);
            v26 = sub_1007A2214();

            [v25 setTitle:v26];
          }

          v27 = v86;
          v28 = [v86 transitionCoordinator];
          v20 = v20;
          v29 = a3;
          v30 = sub_10079ACC4();
          v31 = sub_1007A29D4();

          v32 = os_log_type_enabled(v30, v31);
          if (v28)
          {
            v82 = v28;
            v33 = v29;
            v34 = v20;
            if (v32)
            {
              v35 = swift_slowAlloc();
              v81 = v30;
              v36 = v35;
              v37 = swift_slowAlloc();
              v38 = swift_slowAlloc();
              aBlock[0] = v38;
              *v36 = 136315650;
              *(v36 + 4) = sub_1000070F4(0xD00000000000001CLL, 0x80000001008CA450, aBlock);
              *(v36 + 12) = 2112;
              *(v36 + 14) = v34;
              *(v36 + 22) = 2114;
              *(v36 + 24) = v33;
              *v37 = a1;
              v37[1] = v33;
              v39 = v34;
              v40 = v33;
              v41 = v31;
              v42 = v81;
              _os_log_impl(&_mh_execute_header, v81, v41, "%s: Updating nav stack alongside transition with content VC %@ for %{public}@", v36, 0x20u);
              sub_1001F1160(&unk_100AD9480, &qword_1008113B0);
              swift_arrayDestroy();

              sub_1000074E0(v38);
            }

            else
            {
            }

            v68 = v85;
            v69 = v83;
            v70 = v84;
            (*(v83 + 16))(&v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v84);
            v71 = (*(v69 + 80) + 40) & ~*(v69 + 80);
            v72 = (v11 + v71 + 7) & 0xFFFFFFFFFFFFFFF8;
            v73 = swift_allocObject();
            v74 = v86;
            *(v73 + 2) = v68;
            *(v73 + 3) = v74;
            *(v73 + 4) = v34;
            (*(v69 + 32))(&v73[v71], v14, v70);
            *&v73[v72] = v33;
            aBlock[4] = sub_1002F9C3C;
            v88 = v73;
            aBlock[0] = _NSConcreteStackBlock;
            aBlock[1] = 1107296256;
            aBlock[2] = sub_100569BDC;
            aBlock[3] = &unk_100A14858;
            v75 = _Block_copy(aBlock);
            v76 = v34;
            v77 = v33;
            v78 = v68;
            v79 = v74;

            [v82 animateAlongsideTransition:0 completion:v75];

            _Block_release(v75);
            swift_unknownObjectRelease();
            return;
          }

          v59 = v85;
          if (v32)
          {
            v60 = swift_slowAlloc();
            v81 = v30;
            v61 = v60;
            v62 = swift_slowAlloc();
            v63 = swift_slowAlloc();
            aBlock[0] = v63;
            *v61 = 136315650;
            *(v61 + 4) = sub_1000070F4(0xD00000000000001CLL, 0x80000001008CA450, aBlock);
            *(v61 + 12) = 2112;
            *(v61 + 14) = v20;
            *(v61 + 22) = 2114;
            *(v61 + 24) = v29;
            *v62 = a1;
            v62[1] = v29;
            v64 = v20;
            v65 = v29;
            v66 = v31;
            v67 = v81;
            _os_log_impl(&_mh_execute_header, v81, v66, "%s: Updating nav stack with content VC %@ for %{public}@", v61, 0x20u);
            sub_1001F1160(&unk_100AD9480, &qword_1008113B0);
            swift_arrayDestroy();

            sub_1000074E0(v63);
          }

          else
          {
          }

          sub_1002E9E30(v59, v27, v20, a2, v29);
LABEL_19:

          return;
        }
      }

      else
      {
      }
    }

    v52 = a3;
    v53 = sub_10079ACC4();
    v54 = sub_1007A29D4();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      *&v91 = v57;
      *v55 = 136315394;
      *(v55 + 4) = sub_1000070F4(0xD00000000000001CLL, 0x80000001008CA450, &v91);
      *(v55 + 12) = 2114;
      *(v55 + 14) = v52;
      *v56 = v52;
      v58 = v52;
      _os_log_impl(&_mh_execute_header, v53, v54, "%s: Skipping updating content VC for %{public}@ because the active UI is no longer sidebar", v55, 0x16u);
      sub_100007840(v56, &unk_100AD9480, &qword_1008113B0);

      sub_1000074E0(v57);
    }

    [*&v85[OBJC_IVAR___BKSplitViewContentHostingController_isCreatingContentForNavigationController] removeObject:v86];
    goto LABEL_19;
  }

  v43 = a3;
  v44 = sub_10079ACC4();
  v45 = sub_1007A29D4();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v48 = a4;
    v49 = swift_slowAlloc();
    *&v91 = v49;
    *v46 = 136315394;
    *(v46 + 4) = sub_1000070F4(0xD00000000000001CLL, 0x80000001008CA450, &v91);
    *(v46 + 12) = 2114;
    *(v46 + 14) = v43;
    *v47 = v43;
    v50 = v43;
    _os_log_impl(&_mh_execute_header, v44, v45, "%s: Did not get a contentViewController for %{public}@, bailing out with spinner", v46, 0x16u);
    sub_100007840(v47, &unk_100AD9480, &qword_1008113B0);

    sub_1000074E0(v49);
    a4 = v48;
  }

  v51 = *&a4[OBJC_IVAR___BKSplitViewContentHostingController_isCreatingContentForNavigationController];

  [v51 removeObject:a5];
}

void sub_1002E9E30(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
  v9 = sub_1007A2D74();
  v10 = &_dispatch_main_q;
  if (v9 == &_dispatch_main_q)
  {
    +[NSThread isMainThread];
  }

  [*(a1 + OBJC_IVAR___BKSplitViewContentHostingController_isCreatingContentForNavigationController) removeObject:a2];
  v11 = [a2 viewControllers];
  v12 = sub_10000A7C4(0, &qword_100AD7CB0, UIViewController_ptr);
  v13 = sub_1007A25E4();

  v70 = v13;

  v14 = [a2 navigationBar];
  v15 = [v14 items];

  if (!v15)
  {
    goto LABEL_12;
  }

  sub_10000A7C4(0, &qword_100ADAF68, UINavigationItem_ptr);
  v16 = sub_1007A25E4();

  if (!(v16 >> 62))
  {
    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

  if (!sub_1007A38D4())
  {
LABEL_11:

LABEL_12:
    v18 = 0;
LABEL_13:
    v67 = v18;
    v19 = v13 >> 62;
    if (v13 >> 62)
    {
      v20 = sub_1007A38D4();
    }

    else
    {
      v20 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v20)
    {
      v24 = a3;
      v25 = a5;
      v26 = sub_10079ACC4();
      v27 = sub_1007A29C4();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v65 = a1;
        v29 = a5;
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v69 = v31;
        *v28 = 136315394;
        *(v28 + 4) = sub_1000070F4(0xD000000000000017, 0x80000001008CA490, &v69);
        *(v28 + 12) = 2114;
        *(v28 + 14) = v25;
        *v30 = v25;
        v32 = v25;
        _os_log_impl(&_mh_execute_header, v26, v27, "%s: Nav stack is empty for %{public}@", v28, 0x16u);
        sub_100007840(v30, &unk_100AD9480, &qword_1008113B0);
        a5 = v29;
        a1 = v65;

        sub_1000074E0(v31);
      }

      a3 = v24;
      v33 = v24;
      sub_1007A25C4();
      if (*((v70 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v70 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_56;
      }

      goto LABEL_24;
    }

    v21 = a3;
    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (v19 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
    {
      v13 = sub_1002F49C4(v13);
    }

    if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_38;
    }

    v23 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x20);
    *((v13 & 0xFFFFFFFFFFFFFF8) + 0x20) = v21;

    while (1)
    {
      isa = sub_1007A25D4().super.isa;
      [a2 setViewControllers:isa];

      v12 = &selRef_minifiedAssetPresenterDidOpenAssetFully;
      v35 = [a2 navigationBar];
      v36 = [v35 items];

      if (!v36)
      {
        goto LABEL_40;
      }

      sub_10000A7C4(0, &qword_100ADAF68, UINavigationItem_ptr);
      v19 = sub_1007A25E4();

      if (v19 >> 62)
      {
LABEL_38:
        if (!sub_1007A38D4())
        {
LABEL_39:

          goto LABEL_40;
        }
      }

      else if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_39;
      }

      if ((v19 & 0xC000000000000001) != 0)
      {
        goto LABEL_54;
      }

      if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v37 = *(v19 + 32);
        goto LABEL_31;
      }

      __break(1u);
LABEL_56:
      sub_1007A2614();
LABEL_24:
      sub_1007A2644();
    }
  }

LABEL_6:
  if ((v16 & 0xC000000000000001) != 0)
  {
    v17 = sub_1007A3784();
    goto LABEL_9;
  }

  if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v17 = *(v16 + 32);
LABEL_9:
    v68 = v17;

    v18 = v68;
    goto LABEL_13;
  }

  __break(1u);
LABEL_54:
  v37 = sub_1007A3784();
LABEL_31:
  v38 = v37;

  if (v38)
  {
    if (!v67)
    {
      v67 = 0;
      swift_unknownObjectRelease();
      goto LABEL_47;
    }

    swift_unknownObjectRelease();
    if (v67 != v38)
    {
      goto LABEL_47;
    }

    v66 = a1;
    v39 = a5;
    v40 = 0;
    goto LABEL_42;
  }

LABEL_40:
  if (v67)
  {
    goto LABEL_47;
  }

  v66 = a1;
  v39 = a5;
  v67 = 0;
  v40 = 1;
LABEL_42:
  v41 = [a2 v12[140]];
  v42 = [v41 isLocked];

  v43 = [a2 v12[140]];
  [v43 setLocked:0];

  if ((v40 & 1) == 0)
  {
    v44 = [a2 v12[140]];
  }

  v45 = [a2 v12[140]];
  v64 = a3;
  v46 = [a3 navigationItem];
  [v45 pushNavigationItem:v46 animated:0];

  v47 = [a2 v12[140]];
  [v47 setLocked:v42];

  a5 = v39;
  v48 = v39;
  v49 = sub_10079ACC4();
  v50 = sub_1007A29D4();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v69 = v53;
    *v51 = 136315394;
    *(v51 + 4) = sub_1000070F4(0xD000000000000017, 0x80000001008CA490, &v69);
    *(v51 + 12) = 2114;
    *(v51 + 14) = v48;
    *v52 = v48;
    v54 = v48;
    _os_log_impl(&_mh_execute_header, v49, v50, "%s: Applied nav bar workaround for %{public}@", v51, 0x16u);
    sub_100007840(v52, &unk_100AD9480, &qword_1008113B0);
    a5 = v39;

    sub_1000074E0(v53);
  }

  a3 = v64;
  a1 = v66;
LABEL_47:
  [*(a1 + OBJC_IVAR___BKSplitViewContentHostingController_viewController) didUpdateContentViewController];
  v55 = a3;
  v56 = a5;
  v57 = sub_10079ACC4();
  v58 = sub_1007A29D4();

  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v69 = v61;
    *v59 = 136315650;
    *(v59 + 4) = sub_1000070F4(0xD000000000000017, 0x80000001008CA490, &v69);
    *(v59 + 12) = 2112;
    *(v59 + 14) = v55;
    *(v59 + 22) = 2114;
    *(v59 + 24) = v56;
    *v60 = v55;
    v60[1] = v56;
    v62 = v55;
    v63 = v56;
    _os_log_impl(&_mh_execute_header, v57, v58, "%s: Created content VC %@ for %{public}@", v59, 0x20u);
    sub_1001F1160(&unk_100AD9480, &qword_1008113B0);
    swift_arrayDestroy();

    sub_1000074E0(v61);
  }
}

Swift::Void __swiftcall SplitViewContentHostingController.prepareNavigationControllerForTransferRootBarItem(with:)(Swift::String with)
{
  v2 = v1;
  object = with._object;
  countAndFlagsBits = with._countAndFlagsBits;
  v5 = OBJC_IVAR___BKSplitViewContentHostingController_cachedControllers;
  swift_beginAccess();
  v6 = sub_10000E53C(countAndFlagsBits, object);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v1 + v5);
    v15 = *(v2 + v5);
    *(v2 + v5) = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1002F2AA4(&qword_100ADAF28, &unk_100822050);
      v10 = v15;
    }

    v11 = *(*(v10 + 56) + 8 * v8);
    sub_1002EFE50(v8, v10);
    *(v2 + v5) = v10;
    swift_endAccess();
    v14.receiver = *(v2 + OBJC_IVAR___BKSplitViewContentHostingController_viewController);
    v14.super_class = type metadata accessor for MainContentViewController();
    v12 = objc_msgSendSuper2(&v14, "contentNavigationController");
    if (v12)
    {
      v13 = v12;

      if (v13 == v11)
      {
        MainContentViewController.contentNavigationController.setter(0);
      }
    }
  }

  else
  {
    swift_endAccess();
  }
}

void SplitViewContentHostingController.transfer(from:)(unint64_t a1, uint64_t a2)
{
  p_superclass = v2;
  v180 = a2;
  v5 = sub_10079ACE4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  p_info = (&v167 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100AD13E8 == -1)
  {
    goto LABEL_2;
  }

LABEL_130:
  swift_once();
LABEL_2:
  v9 = sub_100008B98(v5, qword_100ADABF8);
  v170 = v6;
  v10 = *(v6 + 16);
  v167 = v5;
  v10(p_info, v9, v5);
  swift_unknownObjectRetain();
  v11 = sub_10079ACC4();
  v12 = sub_1007A29D4();
  swift_unknownObjectRelease();
  v13 = os_log_type_enabled(v11, v12);
  v176 = a1;
  if (v13)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v190[0] = v15;
    *v14 = 136315138;
    v191[0] = a1;
    v191[1] = v180;
    swift_unknownObjectRetain();
    sub_1001F1160(&unk_100AEB1C0, &unk_100832470);
    sub_1001F1160(&unk_100ADAC70, &unk_100818CF0);
    if (swift_dynamicCast())
    {
      sub_10000E3E8(&v193, *(&v194 + 1));
      a1 = v176;
      v16 = sub_1007A3A74();
      v18 = v17;
      sub_1000074E0(&v193);
      v19 = v16;
    }

    else
    {
      v195 = 0;
      v193 = 0u;
      v194 = 0u;
      sub_100007840(&v193, &qword_100AEB1D0, &qword_100832480);
      v18 = 0xE90000000000003ELL;
      v19 = 0x6E776F6E6B6E753CLL;
    }

    v20 = sub_1000070F4(v19, v18, v190);

    *(v14 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v11, v12, "Starting to transfer navigation from forwarder %s", v14, 0xCu);
    sub_1000074E0(v15);
  }

  ObjectType = swift_getObjectType();
  v22 = v180;
  v23 = a1;
  v24 = (*(v180 + 16))(ObjectType, v180);
  v188 = v24;
  v25 = *(v22 + 8);
  v175 = ObjectType;
  v26 = v25(ObjectType, v22);
  p_class_meths = (&OBJC_PROTOCOL___BKAsset + 32);
  v177 = p_info;
  v179 = p_superclass;
  v168 = v26;
  if (!v26)
  {
    v169 = 0;
    goto LABEL_158;
  }

  v28 = v26;
  v29 = v24;
  v23 = 0x7972617262696CLL;
  v30 = *(v26 + OBJC_IVAR___BKRootBarItem_identifier);
  v31 = *(v26 + OBJC_IVAR___BKRootBarItem_identifier + 8);
  if (v30 != 0x7972617262696CLL || v31 != 0xE700000000000000)
  {
    v33 = *(v26 + OBJC_IVAR___BKRootBarItem_identifier);
    v34 = sub_1007A3AB4();
    v30 = v33;
    if ((v34 & 1) == 0)
    {
      v47 = v28;
      goto LABEL_34;
    }
  }

  v184 = v30;

  v35 = v28;
  v23 = p_superclass;
  v36 = sub_1002E7D54(0x7972617262696CLL, 0xE700000000000000, 2);
  if (!v36)
  {

LABEL_34:
    v169 = v28;
    v24 = v29;
    goto LABEL_158;
  }

  v183 = v36;
  v23 = v29;
  if (!*(v29 + 16) || (v181 = v35, v24 = v184, v37 = sub_10000E53C(v184, v31), (v38 & 1) == 0))
  {

    v169 = v28;
    v24 = v29;
    goto LABEL_158;
  }

  v39 = *(*(v29 + 56) + 8 * v37);

  v40 = *(v180 + 24);
  v178 = v31;
  v40(v24, v31, v175);
  v174 = v39;
  v41 = [v174 viewControllers];
  v182 = sub_10000A7C4(0, &qword_100AD7CB0, UIViewController_ptr);
  v5 = sub_1007A25E4();

  v191[0] = v5;
  a1 = v5 & 0xFFFFFFFFFFFFFF8;
  p_superclass = (v5 >> 62);
  if (!(v5 >> 62))
  {
    v42 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_18;
  }

LABEL_137:
  v42 = sub_1007A38D4();
LABEL_18:
  v43 = 0;
  v6 = v5 & 0xC000000000000001;
  p_info = BKLibraryBookshelfSupplementaryDataSource.info;
  while (1)
  {
    if (v42 == v43)
    {
      if (p_superclass)
      {
        v43 = sub_1007A38D4();
      }

      else
      {
        v43 = *(a1 + 16);
      }

      p_superclass = v182;
LABEL_44:
      if (v5 >> 62)
      {
        v50 = sub_1007A38D4();
        if (v50 >= v43)
        {
LABEL_46:
          v5 = v191;
          sub_1002F94C8(v43, v50, sub_10048ABD4, sub_1002F8CE0);
          v42 = v191[0];
          v49 = v191[0] & 0xFFFFFFFFFFFFFF8;
          v29 = v191[0] >> 62;
          if (!(v191[0] >> 62))
          {
            v5 = *((v191[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
            v43 = v5 != 0;
            if (v5 < v43)
            {
              goto LABEL_147;
            }

            goto LABEL_48;
          }

LABEL_140:
          if ((v42 & 0x8000000000000000) != 0)
          {
            v24 = v42;
          }

          else
          {
            v24 = v49;
          }

          v94 = sub_1007A38D4();
          if (v94 < 0)
          {
LABEL_230:
            __break(1u);
          }

          else
          {
            v5 = v94;
            v43 = v94 != 0;
            if (sub_1007A38D4() < v43)
            {
              goto LABEL_147;
            }

            if (sub_1007A38D4() < v5)
            {
              __break(1u);
LABEL_147:
              __break(1u);
LABEL_148:
              __break(1u);
LABEL_149:
              __break(1u);
LABEL_150:
              __break(1u);
LABEL_151:
              __break(1u);
LABEL_152:
              if (!sub_1007A38D4())
              {
LABEL_153:

                goto LABEL_154;
              }

              goto LABEL_75;
            }
          }

LABEL_48:
          if ((v42 & 0xC000000000000001) != 0)
          {

            if (v5 >= 2)
            {
              v51 = v43;
              do
              {
                v52 = v51 + 1;
                sub_1007A3774(v51);
                v51 = v52;
              }

              while (v5 != v52);
            }

            if (!v29)
            {
LABEL_53:
              v53 = v42 & 0xFFFFFFFFFFFFFF8;
              v24 = ((v42 & 0xFFFFFFFFFFFFFF8) + 32);
              if (v43 == v5)
              {
                goto LABEL_68;
              }

LABEL_54:
              v173 = v29;
              v29 = v53;
              swift_unknownObjectRetain();
              p_superclass = &OBJC_METACLASS___PPTTestRunnerSM.superclass;
              while (v43 < v5)
              {
                a1 = *&v24[8 * v43];
                objc_opt_self();
                v54 = swift_dynamicCastObjCClass();
                if (v54)
                {
                  v55 = [v54 collection];
                  if (v55)
                  {

                    swift_unknownObjectRelease_n();
                    if ((v42 & 0xC000000000000001) != 0)
                    {
                      goto LABEL_225;
                    }

                    v24 = v181;
                    if ((v43 & 0x8000000000000000) != 0)
                    {
                      __break(1u);
                    }

                    else if (v43 < *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
                      v5 = *(v42 + 8 * v43 + 32);
                      goto LABEL_63;
                    }

                    __break(1u);
LABEL_228:
                    __break(1u);
                    goto LABEL_229;
                  }
                }

                if (v5 == ++v43)
                {
                  swift_unknownObjectRelease_n();
LABEL_70:
                  v29 = v183;
                  p_superclass = v179;
                  p_info = &OBJC_IVAR___BKRootBarItem_identifier;
LABEL_71:
                  v24 = v181;
                  goto LABEL_72;
                }
              }

              __break(1u);
LABEL_132:
              __break(1u);
LABEL_133:
              __break(1u);
LABEL_134:
              __break(1u);
LABEL_135:
              __break(1u);
LABEL_136:
              __break(1u);
              goto LABEL_137;
            }
          }

          else
          {

            if (!v29)
            {
              goto LABEL_53;
            }
          }

          v53 = sub_1007A38E4();
          v24 = v64;
          v43 = v65;
          v5 = v66 >> 1;
          if (v65 == v66 >> 1)
          {
LABEL_68:
            swift_unknownObjectRelease();
            goto LABEL_70;
          }

          goto LABEL_54;
        }
      }

      else
      {
        v49 = v5 & 0xFFFFFFFFFFFFFF8;
        v50 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v50 >= v43)
        {
          goto LABEL_46;
        }
      }

      __break(1u);
      goto LABEL_140;
    }

    if (!v6)
    {
      if (v43 < *(a1 + 16))
      {
        v44 = *(v5 + 8 * v43 + 32);
        goto LABEL_23;
      }

      __break(1u);
LABEL_129:
      __break(1u);
      goto LABEL_130;
    }

    v44 = sub_1007A3784();
LABEL_23:
    v45 = v44;
    objc_opt_self();
    v29 = swift_dynamicCastObjCClass();

    v24 = (v43 + 1);
    v46 = __OFADD__(v43, 1);
    if (v29)
    {
      break;
    }

    ++v43;
    if (v46)
    {
      goto LABEL_129;
    }
  }

  if (v46)
  {
    goto LABEL_151;
  }

  if (p_superclass)
  {
    v48 = sub_1007A38D4();
  }

  else
  {
    v48 = *(a1 + 16);
  }

  p_superclass = v182;
  if (v24 == v48)
  {
    goto LABEL_44;
  }

  a1 = v43 + 5;
  while (2)
  {
    v42 = a1 - 4;
    v6 = v5 & 0xC000000000000001;
    if ((v5 & 0xC000000000000001) != 0)
    {
      v72 = sub_1007A3784();
    }

    else
    {
      if ((v42 & 0x8000000000000000) != 0)
      {
        goto LABEL_132;
      }

      if (v42 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_133;
      }

      v72 = *(v5 + 8 * a1);
    }

    v24 = v72;
    objc_opt_self();
    v29 = swift_dynamicCastObjCClass();

    if (v29)
    {
      goto LABEL_104;
    }

    if (v42 == v43)
    {
      goto LABEL_103;
    }

    if (v6)
    {
      v24 = sub_1007A3784();
      v73 = sub_1007A3784();
    }

    else
    {
      if ((v43 & 0x8000000000000000) != 0)
      {
        goto LABEL_148;
      }

      v74 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v43 >= v74)
      {
        goto LABEL_149;
      }

      if (v42 >= v74)
      {
        goto LABEL_150;
      }

      v75 = *(v5 + 8 * a1);
      v24 = *(v5 + 8 * v43 + 32);
      v73 = v75;
    }

    v29 = v73;
    if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v5 & 0x8000000000000000) != 0 || (v5 & 0x4000000000000000) != 0)
    {
      v5 = sub_1002F49C4(v5);
      v76 = (v5 >> 62) & 1;
    }

    else
    {
      LODWORD(v76) = 0;
    }

    v77 = v5 & 0xFFFFFFFFFFFFFF8;
    v78 = *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v43 + 0x20);
    *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v43 + 0x20) = v29;

    if ((v5 & 0x8000000000000000) == 0 && !v76)
    {
      p_superclass = v182;
      if ((v42 & 0x8000000000000000) != 0)
      {
        goto LABEL_112;
      }

LABEL_101:
      if (v42 >= *(v77 + 16))
      {
        goto LABEL_136;
      }

      v79 = *(v77 + 8 * a1);
      *(v77 + 8 * a1) = v24;

      v191[0] = v5;
LABEL_103:
      if (__OFADD__(v43++, 1))
      {
        goto LABEL_135;
      }

LABEL_104:
      v6 = a1 - 3;
      if (__OFADD__(v42, 1))
      {
        goto LABEL_134;
      }

      if (v5 >> 62)
      {
        v81 = sub_1007A38D4();
      }

      else
      {
        v81 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      ++a1;
      if (v6 == v81)
      {
        goto LABEL_44;
      }

      continue;
    }

    break;
  }

  v5 = sub_1002F49C4(v5);
  v77 = v5 & 0xFFFFFFFFFFFFFF8;
  p_superclass = v182;
  if ((v42 & 0x8000000000000000) == 0)
  {
    goto LABEL_101;
  }

LABEL_112:
  __break(1u);
LABEL_113:

  v29 = v183;
  p_superclass = v179;
  p_info = &OBJC_IVAR___BKRootBarItem_identifier;
  while (1)
  {
LABEL_72:
    RootBarItem.title.getter(v189);
    v197 = v189[1];

    sub_100007840(v189, &qword_100ADFAD0, &unk_100818CE0);
    v193 = v197;
    sub_1002060B4();
    v67 = sub_1007A28A4();
    sub_1002308AC(&v197);
    v42 = v178;
    if ((v67 & 1) == 0)
    {

      v6 = v191[0];
      goto LABEL_154;
    }

    v6 = v191[0];
    if (v191[0] >> 62)
    {
      goto LABEL_152;
    }

    if (!*((v191[0] & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_153;
    }

LABEL_75:
    if ((v6 & 0xC000000000000001) != 0)
    {
      goto LABEL_223;
    }

    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    __break(1u);
LABEL_225:
    v5 = sub_1007A3784();
    v24 = v181;
LABEL_63:
    objc_opt_self();
    v56 = swift_dynamicCastObjCClass();
    if (!v56)
    {
      goto LABEL_113;
    }

    v172 = v5;
    v57 = [v56 collectionID];
    v58 = sub_1007A2254();
    v60 = v59;

    v61 = sub_1007A2214();
    v62 = _s5Books20RootBarItemsProviderC14itemIdentifier22forDefaultCollectionIDSSSgSo09BCDefaultjK0a_tFZ_0(v61);
    a1 = v63;

    p_superclass = v179;
    if (a1)
    {
    }

    else
    {
      *&v193 = 0x3A6D6F74737563;
      *(&v193 + 1) = 0xE700000000000000;
      v198._countAndFlagsBits = v58;
      v198._object = v60;
      sub_1007A23D4(v198);

      a1 = *(&v193 + 1);
      v62 = v193;
    }

    v82 = sub_1002E7D54(v62, a1, 2);

    p_info = &OBJC_IVAR___BKRootBarItem_identifier;
    if (!v82)
    {

      v29 = v183;
      goto LABEL_71;
    }

    v83 = v178;

    v29 = v82;
    v5 = sub_10079ACC4();
    v84 = sub_1007A29D4();

    if (os_log_type_enabled(v5, v84))
    {
      v85 = swift_slowAlloc();
      LODWORD(v171) = v84;
      v169 = v29;
      a1 = v85;
      *&v193 = swift_slowAlloc();
      *a1 = 136446466;
      *(a1 + 4) = sub_1000070F4(v184, v83, &v193);
      *(a1 + 12) = 2082;
      v86 = *(v169 + OBJC_IVAR___BKRootBarItem_identifier);
      v87 = *(v169 + OBJC_IVAR___BKRootBarItem_identifier + 8);

      v88 = sub_1000070F4(v86, v87, &v193);

      *(a1 + 14) = v88;
      _os_log_impl(&_mh_execute_header, v5, v171, "Removing bottom VCs from the source nav stack of '%{public}s' item, in order to transfer it to %{public}s sidebar item", a1, 0x16u);
      swift_arrayDestroy();

      v29 = v169;
    }

    v24 = v181;
    if (v43)
    {
      if ((v43 & 0x8000000000000000) != 0)
      {
        goto LABEL_228;
      }

      if (v173)
      {
        v89 = sub_1007A38D4();
      }

      else
      {
        v89 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v89 < v43)
      {
LABEL_229:
        __break(1u);
        goto LABEL_230;
      }

      v91 = v29;
      sub_1002F94C8(0, v43, sub_10048ABD4, sub_1002F8CE0);
    }

    else
    {
      v90 = v29;
    }

    v43 = *(v29 + OBJC_IVAR___BKRootBarItem_identifier);
    v92 = *(v29 + OBJC_IVAR___BKRootBarItem_identifier + 8);

    v93 = sub_1002EEB28(v43, v92);
  }

  v68 = *(v6 + 32);
  while (2)
  {
    v69 = v68;
    v70 = [v68 navigationItem];

    RootBarItem.title.getter(v190);

    sub_100007840(v190, &qword_100ADFAD0, &unk_100818CE0);
    v71 = sub_1007A2214();

    [v70 setTitle:v71];

    v42 = v178;
LABEL_154:
    v183 = v6;
    v95 = v29;
    isa = sub_1007A25D4().super.isa;
    v97 = v174;
    [v174 setViewControllers:isa];

    v98 = (*p_info + v95);
    v169 = v29;
    v100 = *v98;
    v99 = v98[1];
    v101 = OBJC_IVAR___BKSplitViewContentHostingController_cachedControllers;
    swift_beginAccess();
    v102 = v97;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v186 = *(p_superclass + v101);
    *(p_superclass + v101) = 0x8000000000000000;
    sub_1002F50E4(v102, v100, v99, isUniquelyReferenced_nonNull_native, &qword_100ADAF28, &unk_100822050, sub_1003D4154, sub_1003DDB70);

    *(p_superclass + v101) = v186;
    swift_endAccess();

    v104 = v95;
    v23 = sub_10079ACC4();
    v105 = sub_1007A29D4();

    if (os_log_type_enabled(v23, v105))
    {
      v106 = swift_slowAlloc();
      v182 = v102;
      v107 = v106;
      *&v193 = swift_slowAlloc();
      *v107 = 136446466;
      v108 = sub_1000070F4(v184, v42, &v193);

      *(v107 + 4) = v108;
      *(v107 + 12) = 2080;
      v109 = *v98;
      v110 = v98[1];

      v111 = sub_1000070F4(v109, v110, &v193);

      *(v107 + 14) = v111;
      _os_log_impl(&_mh_execute_header, v23, v105, "Converted the nav stack of '%{public}s' item from navigation forwarder to %s sidebar item", v107, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v24 = v188;
    p_info = v177;
    p_class_meths = &OBJC_PROTOCOL___BKAsset.class_meths;
LABEL_158:
    v112 = v24 + 64;
    v113 = 1 << v24[32];
    v114 = -1;
    if (v113 < 64)
    {
      v114 = ~(-1 << v113);
    }

    v29 = v114 & *(v24 + 8);
    v115 = p_class_meths[392];
    v184 = ((v113 + 63) >> 6);
    v173 = v115;
    v174 = (v180 + 24);

    v6 = 0;
    *&v116 = 136446210;
    v171 = v116;
    v178 = v24;
    v172 = v24 + 64;
    if (v29)
    {
      while (1)
      {
LABEL_165:
        v118 = __clz(__rbit64(v29)) | (v6 << 6);
        v119 = (*(v24 + 6) + 16 * v118);
        v121 = *v119;
        v120 = v119[1];
        v122 = *(*(v24 + 7) + 8 * v118);

        v182 = v122;
        v123 = sub_1002E7C04(v121, v120);
        v181 = v121;
        v183 = v123;
        if (v123)
        {
          goto LABEL_179;
        }

        v23 = type metadata accessor for RootBarItem();
        v124 = objc_allocWithZone(v23);
        v125 = v121 == 0x5F676E6964616572 && v120 == 0xEB00000000776F6ELL;
        if (v125 || (sub_1007A3AB4() & 1) != 0 || (v121 == 0x776F6E5F64616572 ? (v126 = v120 == 0xE800000000000000) : (v126 = 0), v126 || (sub_1007A3AB4() & 1) != 0))
        {
          v127 = 0xE400000000000000;
          v121 = 1701670760;
        }

        else
        {

          v127 = v120;
        }

        v128 = &v124[OBJC_IVAR___BKRootBarItem_identifier];
        *v128 = v121;
        v128[1] = v127;
        v124[OBJC_IVAR___BKRootBarItem_isPlaceholder] = 0;
        v129 = &v124[OBJC_IVAR___BKRootBarItem_url];
        *v129 = 0;
        v129[1] = 0;
        v130 = &v124[OBJC_IVAR___BKRootBarItem_titleOverride];
        *v130 = 0;
        v130[1] = 0;
        v131 = &v124[OBJC_IVAR___BKRootBarItem_iconNameOverride];
        *v131 = 0;
        v131[1] = 0;
        v132 = &v124[OBJC_IVAR___BKRootBarItem_selectedIconNameOverride];
        *v132 = 0;
        v132[1] = 0;
        v133 = &v124[OBJC_IVAR___BKRootBarItem_countryCode];
        *v133 = 0;
        v133[1] = 0;
        v124[OBJC_IVAR___BKRootBarItem_editNameOnSelect] = 0;
        v187.receiver = v124;
        v187.super_class = v23;
        v134 = objc_msgSendSuper2(&v187, "init");
        if ([v134 isLibraryCollection])
        {
          break;
        }

        v183 = v182;
LABEL_195:
        v29 &= v29 - 1;

        v24 = v178;
        if (!v29)
        {
          goto LABEL_161;
        }
      }

      v183 = v134;
LABEL_179:

      v135 = sub_10079ACC4();
      v24 = sub_1007A29D4();

      if (os_log_type_enabled(v135, v24))
      {
        v136 = swift_slowAlloc();
        v137 = swift_slowAlloc();
        *&v186 = v137;
        *v136 = v171;
        v138 = v181;
        *(v136 + 4) = sub_1000070F4(v181, v120, &v186);
        _os_log_impl(&_mh_execute_header, v135, v24, "Transferring the '%{public}s' item from navigation forwarder", v136, 0xCu);
        sub_1000074E0(v137);
        p_superclass = v179;

        p_info = v177;
      }

      else
      {

        v138 = v181;
      }

      (*(v180 + 24))(v138, v120, v175);
      RootBarItem.title.getter(v191);
      v196 = v192;

      sub_100007840(v191, &qword_100ADFAD0, &unk_100818CE0);
      v186 = v196;
      sub_1002060B4();
      v139 = sub_1007A28A4();
      sub_1002308AC(&v196);
      if ((v139 & 1) == 0)
      {
LABEL_194:
        v146 = p_info;
        v147 = v173;
        swift_beginAccess();
        v134 = v182;
        v148 = swift_isUniquelyReferenced_nonNull_native();
        v185 = *(p_superclass + v147);
        *(p_superclass + v147) = 0x8000000000000000;
        v23 = &v185;
        sub_1002F50E4(v134, v138, v120, v148, &qword_100ADAF28, &unk_100822050, sub_1003D4154, sub_1003DDB70);

        *(p_superclass + v147) = v185;
        p_info = v146;
        v112 = v172;
        swift_endAccess();
        goto LABEL_195;
      }

      v140 = [v182 viewControllers];
      sub_10000A7C4(0, &qword_100AD7CB0, UIViewController_ptr);
      v23 = sub_1007A25E4();

      if (v23 >> 62)
      {
        v145 = sub_1007A38D4();
        p_superclass = v179;
        if (v145)
        {
          goto LABEL_185;
        }
      }

      else
      {
        p_superclass = v179;
        if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_185:
          if ((v23 & 0xC000000000000001) != 0)
          {
            v141 = sub_1007A3784();
          }

          else
          {
            if (!*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
LABEL_218:
              __break(1u);
              goto LABEL_219;
            }

            v141 = *(v23 + 32);
          }

          v142 = v141;

          v143 = [v142 navigationItem];

          RootBarItem.title.getter(&v193);

          sub_100007840(&v193, &qword_100ADFAD0, &unk_100818CE0);
          v144 = sub_1007A2214();

          [v143 setTitle:v144];

          p_info = v177;
          p_superclass = v179;
          goto LABEL_193;
        }
      }

LABEL_193:
      v138 = v181;
      goto LABEL_194;
    }

    while (1)
    {
LABEL_161:
      v117 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
        goto LABEL_218;
      }

      if (v117 >= v184)
      {
        break;
      }

      v29 = v112[v117];
      ++v6;
      if (v29)
      {
        v6 = v117;
        goto LABEL_165;
      }
    }

    v112 = v169;
    if (v169)
    {
      v149 = *(v169 + OBJC_IVAR___BKRootBarItem_identifier);
      v6 = *(v169 + OBJC_IVAR___BKRootBarItem_identifier + 8);

      v29 = v168;
      goto LABEL_208;
    }

    v6 = *(p_superclass + OBJC_IVAR___BKSplitViewContentHostingController_selectedIdentifier + 8);
    v29 = v168;
    if (v6)
    {
      v149 = *(p_superclass + OBJC_IVAR___BKSplitViewContentHostingController_selectedIdentifier);
      goto LABEL_207;
    }

    v150 = OBJC_IVAR___BKSplitViewContentHostingController_standardItems;
    swift_beginAccess();
    v23 = *(p_superclass + v150);
    if (v23 >> 62)
    {
LABEL_219:
      v165 = sub_1007A38D4();
      v151 = v170;
      if (v165)
      {
        goto LABEL_204;
      }

LABEL_220:
      (*(v151 + 8))(p_info, v167);
    }

    else
    {
      v151 = v170;
      if (!*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_220;
      }

LABEL_204:
      if ((v23 & 0xC000000000000001) != 0)
      {

        v166 = sub_1007A3784();

        v149 = *(v166 + OBJC_IVAR___BKRootBarItem_identifier);
        v6 = *(v166 + OBJC_IVAR___BKRootBarItem_identifier + 8);

        p_superclass = v179;
        swift_unknownObjectRelease();
      }

      else
      {
        if (!*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_223:
          v68 = sub_1007A3784();
          continue;
        }

        v152 = (*(v23 + 32) + OBJC_IVAR___BKRootBarItem_identifier);
        v149 = *v152;
        v6 = v152[1];
LABEL_207:
      }

LABEL_208:

      v153 = sub_10079ACC4();
      v154 = sub_1007A29D4();

      if (os_log_type_enabled(v153, v154))
      {
        v155 = swift_slowAlloc();
        v156 = swift_slowAlloc();
        v185 = v156;
        *v155 = v171;
        *(v155 + 4) = sub_1000070F4(v149, v6, &v185);
        _os_log_impl(&_mh_execute_header, v153, v154, "Transferring selected item '%{public}s'", v155, 0xCu);
        sub_1000074E0(v156);

        p_superclass = v179;
      }

      v157 = sub_1002E7D54(v149, v6, 2);
      v158 = v177;
      if (v157)
      {

        v159 = (p_superclass + OBJC_IVAR___BKSplitViewContentHostingController_selectedIdentifier);
        *v159 = v149;
        v159[1] = v6;

        sub_1002E77E0(0, 0, 1);

        goto LABEL_215;
      }

      v160 = sub_10079ACC4();
      v161 = sub_1007A29C4();

      if (os_log_type_enabled(v160, v161))
      {
        v162 = swift_slowAlloc();
        v163 = swift_slowAlloc();
        v185 = v163;
        *v162 = 136315138;
        v164 = sub_1000070F4(v149, v6, &v185);

        *(v162 + 4) = v164;
        _os_log_impl(&_mh_execute_header, v160, v161, "Current identifier %s from TabBar can't be selected in a SplitView anymore.", v162, 0xCu);
        sub_1000074E0(v163);

        (*(v170 + 8))(v177, v167);
      }

      else
      {

LABEL_215:
        (*(v170 + 8))(v158, v167);
      }
    }

    break;
  }
}