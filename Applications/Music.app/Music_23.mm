uint64_t sub_1002B0F2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  v5 = sub_10010FC20(&unk_101182130, &unk_100EBF5B0);
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[12] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1002B102C, v7, v6);
}

uint64_t sub_1002B102C()
{

  if (qword_10117F1F8 != -1)
  {
    swift_once();
  }

  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  swift_beginAccess();
  sub_10010FC20(&unk_101189E60, &unk_100EC0CF0);
  Published.projectedValue.getter();
  swift_endAccess();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100020674(&qword_101184280, &unk_101182130, &unk_100EBF5B0, &protocol conformance descriptor for Published<A>.Publisher);
  Publisher<>.sink(receiveValue:)();

  (*(v2 + 8))(v1, v3);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v4 = v0[1];

  return v4();
}

void sub_1002B11FC(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC5Music26BottomPlayerViewController_isPreviewing);
    *(Strong + OBJC_IVAR____TtC5Music26BottomPlayerViewController_isPreviewing) = v2;
    if (v2 != v5)
    {
      sub_1000511A4();
    }
  }
}

double sub_1002B1274(uint64_t a1, uint64_t a2)
{
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v4 = &v9 - v3;
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  type metadata accessor for MainActor();

  v6 = static MainActor.shared.getter();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = &protocol witness table for MainActor;
  v7[4] = a2;
  sub_1001F4CB8(0, 0, v4, &unk_100EC58E8, v7);

  return result;
}

uint64_t sub_1002B1398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 48) = a4;
  type metadata accessor for MainActor();
  *(v4 + 56) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1002B1430, v6, v5);
}

uint64_t sub_1002B1430()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtC5Music26BottomPlayerViewController_motionArtworkManager);

    v4 = [v2 traitCollection];
    v5 = [objc_opt_self() currentDevice];
    v6 = [v5 userInterfaceIdiom];

    if (v6 == 1 || [v4 accessibilityContrast] == 1)
    {

      *(v3 + OBJC_IVAR____TtC5Music20MotionArtworkManager_allowNowPlayingTallMotionArtwork) = 0;
    }

    else
    {
      IsInvertColorsEnabled = UIAccessibilityIsInvertColorsEnabled();

      *(v3 + OBJC_IVAR____TtC5Music20MotionArtworkManager_allowNowPlayingTallMotionArtwork) = !IsInvertColorsEnabled;
      if (!IsInvertColorsEnabled)
      {
        sub_10010FC20(&qword_101189E10, &qword_100EC5848);
        type metadata accessor for EditorialVideoArtworkFlavor();
        v8 = swift_allocObject();
        *(v8 + 16) = xmmword_100EBDC20;
        static EditorialVideoArtworkFlavor.motionDetailTall.getter();
        goto LABEL_6;
      }
    }

    sub_10010FC20(&qword_101189E10, &qword_100EC5848);
    type metadata accessor for EditorialVideoArtworkFlavor();
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_100EBC6B0;
    v8 = v7;
LABEL_6:
    static EditorialVideoArtworkFlavor.motionDetailSquare.getter();
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 40) = v8;
    static Published.subscript.setter();
  }

  v9 = *(v0 + 8);

  return v9();
}

void sub_1002B16F0(uint64_t *a1, uint64_t a2)
{
  v67 = sub_10010FC20(&unk_101189E40, &unk_100ED6620);
  __chkstk_darwin();
  v5 = &v58 - v4;
  sub_10010FC20(&unk_101192950, &unk_100EBDF40);
  __chkstk_darwin();
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v58 - v8;
  __chkstk_darwin();
  v11 = &v58 - v10;
  v12 = type metadata accessor for EditorialVideoArtworkFlavor();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v69 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v58 - v15;
  type metadata accessor for VideoArtwork();
  __chkstk_darwin();
  v21 = __chkstk_darwin();
  v22 = *a1;
  if (!*a1)
  {
    Strong = swift_unknownObjectUnownedLoadStrong();
    v71 = [Strong artworkView];

    if (v71)
    {
      *&v71[OBJC_IVAR____TtC5Music21NowPlayingContentView_motionData] = 0;

      sub_10006ADD4();
      v32 = v71;
    }

    return;
  }

  v59 = v20;
  v60 = v7;
  v66 = v11;
  v62 = v19;
  v23 = *(v19 + 16);
  v70 = &v58 - v18;
  v71 = v17;
  v23(v21);
  v63 = v12;
  v64 = v13;
  v24 = *(v13 + 16);
  v68 = v16;
  v24(v16, v22 + OBJC_IVAR____TtC5Music10MotionData_videoFlavor, v12);
  v61 = a2;
  v25 = swift_unknownObjectUnownedLoadStrong();
  v65 = v22;

  v26 = [v25 artworkView];

  if (v26)
  {
    v27 = *&v26[OBJC_IVAR____TtC5Music21NowPlayingContentView_motionData];
    if (v27)
    {

      v28 = v66;
      v29 = v71;
      (v23)(v66, v27 + OBJC_IVAR____TtC5Music10MotionData_videoArtwork, v71);

      v30 = 0;
      goto LABEL_11;
    }
  }

  v30 = 1;
  v29 = v71;
  v28 = v66;
LABEL_11:
  v33 = v62;
  v34 = *(v62 + 56);
  v34(v28, v30, 1, v29);
  (v23)(v9, v70, v29);
  v35 = v33;
  v34(v9, 0, 1, v29);
  v36 = *(v67 + 48);
  sub_1000089F8(v28, v5, &unk_101192950, &unk_100EBDF40);
  sub_1000089F8(v9, &v5[v36], &unk_101192950, &unk_100EBDF40);
  v37 = *(v33 + 48);
  if (v37(v5, 1, v29) == 1)
  {
    sub_1000095E8(v9, &unk_101192950, &unk_100EBDF40);
    v38 = v71;
    sub_1000095E8(v28, &unk_101192950, &unk_100EBDF40);
    v39 = v37(&v5[v36], 1, v38);
    v41 = v63;
    v40 = v64;
    v42 = v65;
    if (v39 == 1)
    {
      sub_1000095E8(v5, &unk_101192950, &unk_100EBDF40);
LABEL_28:

      (*(v40 + 8))(v68, v41);
LABEL_36:
      (*(v35 + 8))(v70, v38);
      return;
    }
  }

  else
  {
    v43 = v60;
    sub_1000089F8(v5, v60, &unk_101192950, &unk_100EBDF40);
    if (v37(&v5[v36], 1, v29) != 1)
    {
      v51 = v59;
      (*(v35 + 32))(v59, &v5[v36], v29);
      sub_1002B7108(&qword_101186E80, &type metadata accessor for VideoArtwork, &protocol conformance descriptor for VideoArtwork);
      v52 = dispatch thunk of static Equatable.== infix(_:_:)();
      v53 = *(v35 + 8);
      v53(v51, v29);
      sub_1000095E8(v9, &unk_101192950, &unk_100EBDF40);
      sub_1000095E8(v66, &unk_101192950, &unk_100EBDF40);
      v53(v43, v71);
      v38 = v71;
      sub_1000095E8(v5, &unk_101192950, &unk_100EBDF40);
      v41 = v63;
      v40 = v64;
      v42 = v65;
      if (v52)
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    sub_1000095E8(v9, &unk_101192950, &unk_100EBDF40);
    v38 = v71;
    sub_1000095E8(v66, &unk_101192950, &unk_100EBDF40);
    (*(v35 + 8))(v43, v38);
    v41 = v63;
    v40 = v64;
    v42 = v65;
  }

  sub_1000095E8(v5, &unk_101189E40, &unk_100ED6620);
LABEL_17:
  v44 = swift_unknownObjectUnownedLoadStrong();
  v45 = [v44 artworkView];

  if (v45)
  {
    *&v45[OBJC_IVAR____TtC5Music21NowPlayingContentView_motionData] = v42;
    swift_retain_n();

    sub_10006ADD4();
  }

  static EditorialVideoArtworkFlavor.motionDetailSquare.getter();
  sub_1002B7108(&unk_101189E50, &type metadata accessor for EditorialVideoArtworkFlavor, &protocol conformance descriptor for EditorialVideoArtworkFlavor);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v74 == v72 && v75 == v73)
  {
    v46 = 1;
  }

  else
  {
    v46 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v47 = *(v40 + 8);
  v47(v69, v41);

  if (v46 & 1) == 0 || (LOBYTE(v74) = 11, v48 = sub_100025CE0(), (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v48)) && (v49 = [objc_opt_self() currentDevice], v50 = objc_msgSend(v49, "userInterfaceIdiom"), v49, v50 == 1) || (v54 = swift_unknownObjectUnownedLoadStrong(), v55 = objc_msgSend(v54, "artworkView"), v54, !v55))
  {

    v47(v68, v41);
    goto LABEL_36;
  }

  if (*&v55[OBJC_IVAR____TtC5Music21NowPlayingContentView_motionData])
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter(&v74);

    v56 = v75;
    if (v75 == 255)
    {

      v47(v68, v41);
      (*(v35 + 8))(v70, v71);
    }

    else
    {
      sub_10004ADFC(v74, v75);
      v57 = v71;
      if ((v56 & 1) == 0)
      {
        sub_10065F284();
        sub_10065D24C();
      }

      v47(v68, v41);
      (*(v35 + 8))(v70, v57);
    }
  }

  else
  {
    v47(v68, v41);
    (*(v35 + 8))(v70, v38);
  }
}

void sub_1002B2128(uint64_t a1, uint64_t a2)
{
  v2 = sub_100025CE0();
  if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v2) & 1) == 0)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = *(Strong + OBJC_IVAR____TtC5Music26BottomPlayerViewController_nowPlaying);
      v5 = *(*(Strong + OBJC_IVAR____TtC5Music26BottomPlayerViewController_motionArtworkManager) + OBJC_IVAR____TtC5Music20MotionArtworkManager_metadataService);
      v6 = *(v5 + 24);
      *(v5 + 24) = v4;
      v7 = Strong;
      v8 = v4;

      sub_100069C14();
    }
  }
}

double sub_1002B2200(char *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + OBJC_IVAR____TtC5Music26BottomPlayerViewController_motionArtworkManager);
    v6 = Strong;

    *(*(v5 + OBJC_IVAR____TtC5Music20MotionArtworkManager_metadataService) + 16) = v2 ^ 1;
    sub_100069C14();
  }

  return result;
}

id sub_1002B2290(uint64_t a1, int a2)
{
  v3 = v2;
  sub_10010FC20(&qword_101189D60, &unk_100EDADC0);
  __chkstk_darwin();
  v7 = &v48[-v6];
  v8 = type metadata accessor for NowPlaying.TrackMetadata(0);
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v48[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v13 = &v48[-v12];
  p_cache = &OBJC_METACLASS____TtC5Music26PresentationDonationTarget.cache;
  if (v3[OBJC_IVAR____TtC5Music26BottomPlayerViewController_isSharedListeningLoading] == 1)
  {
    v15 = NowPlaying.TrackMetadata.loading.unsafeMutableAddressor();
LABEL_3:
    sub_1002B709C(v15, v11);
    goto LABEL_11;
  }

  v16 = *&v3[OBJC_IVAR____TtC5Music26BottomPlayerViewController_nowPlaying];
  if (v16)
  {
    v49 = a2;
    v50 = a1;
    v51 = &v48[-v12];
    v17 = v16;
    v18 = [v17 tracklist];
    v19 = [v18 playingItem];

    v20 = [v17 tracklist];
    v21 = *&v3[OBJC_IVAR____TtC5Music26BottomPlayerViewController_glissandoDataSource];
    v22 = *(v21 + 24);
    v23 = *(v21 + 32);
    sub_100112878(v22, v23);
    NowPlaying.TrackMetadata.init(_:in:explicitBadgeConfigurator:)(v19, v20, v22, v23, v7);
    v24 = *(v9 + 48);
    if (v24(v7, 1, v8) == 1)
    {
      v25 = NowPlaying.TrackMetadata.notPlaying.unsafeMutableAddressor();
      sub_1002B709C(v25, v11);

      v26 = v24(v7, 1, v8);
      a1 = v50;
      v13 = v51;
      p_cache = (&OBJC_METACLASS____TtC5Music26PresentationDonationTarget + 16);
      LOBYTE(a2) = v49;
      if (v26 != 1)
      {
        sub_1000095E8(v7, &qword_101189D60, &unk_100EDADC0);
      }
    }

    else
    {

      sub_1002B7F50(v7, v11, type metadata accessor for NowPlaying.TrackMetadata);
      a1 = v50;
      v13 = v51;
      p_cache = &OBJC_METACLASS____TtC5Music26PresentationDonationTarget.cache;
      LOBYTE(a2) = v49;
    }
  }

  else
  {
    v27 = *&v3[OBJC_IVAR____TtC5Music26BottomPlayerViewController_nowPlayingPath];
    if (!v27)
    {
      v15 = NowPlaying.TrackMetadata.notPlaying.unsafeMutableAddressor();
      goto LABEL_3;
    }

    NowPlaying.TrackMetadata.init(playerPath:item:subtitled:)(v27, 0, 0, v11);
  }

LABEL_11:
  sub_1002B7F50(v11, v13, type metadata accessor for NowPlaying.TrackMetadata);
  v28 = sub_1002ADF78();
  if (UIAccessibilityIsReduceMotionEnabled())
  {
    v29 = 2;
  }

  else
  {
    result = [v3 view];
    if (!result)
    {
LABEL_36:
      __break(1u);
      return result;
    }

    v31 = result;
    v32 = [result effectiveUserInterfaceLayoutDirection];

    v29 = Gliss.Direction.init(playerDirection:layoutDirection:)(a1, a2 & 1, v32);
  }

  result = [v3 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_36;
  }

  v33 = result;
  v34 = UIView.allowsAnimatedChanges.getter();

  if (v34)
  {
    v35 = [v3 presentedViewController];
    if (!v35)
    {
      v36 = 1;
      goto LABEL_20;
    }
  }

  v36 = 0;
LABEL_20:
  (*((swift_isaMask & *v28) + 0x150))(v13, v29, v36);

  v37 = [v3 artworkView];
  if (v37)
  {
    v38 = v37;
    v39 = *&v3[OBJC_IVAR____TtC5Music26BottomPlayerViewController_nowPlayingPath];
    v40 = v39;
    sub_1000692A4(v39);
  }

  [v3 accessibilityUpdateMetadata];
  sub_10004EFF4();
  v41 = OBJC_IVAR____TtC5Music26BottomPlayerViewController_lyricsButton;
  swift_beginAccess();
  v42 = *&v3[v41];
  if (v42)
  {
    v43 = *(p_cache[329] + v3);
    if (v43)
    {
      v44 = v42;
      v45 = [v43 tracklist];
      v46 = [v45 playingItem];

      if (v46)
      {
        LOBYTE(v43) = MPCPlayerResponseItem.supportsLyrics.getter();
      }

      else
      {
        LOBYTE(v43) = 0;
      }
    }

    else
    {
      v44 = v42;
    }

    [v44 setEnabled:v43 & 1];
  }

  swift_beginAccess();
  v47 = *&v3[v41];
  if (v47)
  {
    swift_endAccess();
    [v47 setNeedsUpdateConfiguration];
    return sub_1002B8288(v13, type metadata accessor for NowPlaying.TrackMetadata);
  }

  else
  {
    sub_1002B8288(v13, type metadata accessor for NowPlaying.TrackMetadata);
    return swift_endAccess();
  }
}

uint64_t sub_1002B2810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  type metadata accessor for MainActor();
  v4[3] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[4] = v6;
  v4[5] = v5;

  return _swift_task_switch(sub_1002B28A8, v6, v5);
}

uint64_t sub_1002B28A8()
{
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC5Music26BottomPlayerViewController_shouldShowSmartTransitionTTRButton;
  v0[6] = OBJC_IVAR____TtC5Music26BottomPlayerViewController_shouldShowSmartTransitionTTRButton;
  *(v1 + v2) = 1;
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_1002B2954;

  return static Task<>.sleep(for:)(10.0);
}

uint64_t sub_1002B2954()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 32);
    v4 = *(v2 + 40);
    v5 = sub_1002B86C8;
  }

  else
  {
    v3 = *(v2 + 32);
    v4 = *(v2 + 40);
    v5 = sub_1002B2A78;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1002B2A78()
{

  if ((static Task<>.isCancelled.getter() & 1) == 0)
  {
    *(v0[2] + v0[6]) = 0;
  }

  v1 = v0[1];

  return v1();
}

void sub_1002B2AEC(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = Logger.sharePlayTogether.unsafeMutableAddressor();
  (*(v5 + 16))(v7, v8, v4);
  v9 = a2;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134349056;
    *(v12 + 4) = (*((swift_isaMask & v9->isa) + 0x1B0))();

    _os_log_impl(&_mh_execute_header, v10, v11, "[BottomPlayerViewController] session.objectWillChange participant count: %{public}ld", v12, 0xCu);
  }

  else
  {

    v10 = v9;
  }

  (*(v5 + 8))(v7, v4);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v15 = (*((swift_isaMask & v9->isa) + 0x1B0))();
    v16 = *&v14[OBJC_IVAR____TtC5Music26BottomPlayerViewController_sharedListeningParticipantsCount];
    *&v14[OBJC_IVAR____TtC5Music26BottomPlayerViewController_sharedListeningParticipantsCount] = v15;
    if (v15 != v16)
    {
      sub_10004F27C();
    }
  }
}

double sub_1002B2D4C(char a1)
{
  v2 = v1;
  v15.receiver = v2;
  v15.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v15, "viewWillDisappear:", a1 & 1);
  if (qword_10117F228 != -1)
  {
    swift_once();
  }

  sub_100663064(v2, qword_101218668);
  v4 = sub_1002AE644();
  v5 = (*((swift_isaMask & *v4) + 0xE8))(v14);
  *(v6 + 24) = 0;
  v5(v14, 0);

  v7 = *&v2[OBJC_IVAR____TtC5Music26BottomPlayerViewController____lazy_storage___nowPlayingItemStackView];
  v8 = *((swift_isaMask & *v7) + 0x100);
  v9 = v7;
  v10 = v8(v14);
  *(v11 + 24) = 0;
  v10(v14, 0);

  v13 = *&v2[OBJC_IVAR____TtC5Music26BottomPlayerViewController_shouldShowSmartTransitionTTRButtonTask];
  *&v2[OBJC_IVAR____TtC5Music26BottomPlayerViewController_shouldShowSmartTransitionTTRButtonTask] = 0;
  if (v13)
  {
    Task.cancel()();
  }

  return result;
}

void sub_1002B2F5C(uint64_t a1)
{
  v3 = v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_lastKnownViewBounds + 32];
  if (v3 == 1)
  {
    v4 = 0.0;
    if (*(a1 + 32))
    {
      return;
    }
  }

  else
  {
    Width = CGRectGetWidth(*&v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_lastKnownViewBounds]);
    if (*(a1 + 32))
    {
      goto LABEL_10;
    }

    v4 = Width;
  }

  if (v4 == CGRectGetWidth(*a1))
  {
    v6 = v3;
  }

  else
  {
    v6 = 1;
  }

  if (v6 == 1)
  {
LABEL_10:
    sub_1002B06E4();
    v7 = *&v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_queueButton];
    if (v7)
    {
      v8 = v7;
      v9 = [v1 view];
      if (!v9)
      {
        __break(1u);
        goto LABEL_22;
      }

      v10 = v9;
      [v9 bounds];
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v18 = v17;

      v36.origin.x = v12;
      v36.origin.y = v14;
      v36.size.width = v16;
      v36.size.height = v18;
      v19 = CGRectGetWidth(v36);
      if (qword_10117F530 != -1)
      {
        v34 = v19;
        swift_once();
        v19 = v34;
      }

      [v8 setHidden:v19 < *&qword_1012189C0];
    }

    v20 = OBJC_IVAR____TtC5Music26BottomPlayerViewController_lyricsButton;
    swift_beginAccess();
    v21 = *&v1[v20];
    if (!v21)
    {
      return;
    }

    v22 = v21;
    v23 = [v1 view];
    if (v23)
    {
      v24 = v23;
      [v23 bounds];
      v26 = v25;
      v28 = v27;
      v30 = v29;
      v32 = v31;

      v37.origin.x = v26;
      v37.origin.y = v28;
      v37.size.width = v30;
      v37.size.height = v32;
      v33 = CGRectGetWidth(v37);
      if (qword_10117F530 != -1)
      {
        v35 = v33;
        swift_once();
        v33 = v35;
      }

      [v22 setHidden:v33 < *&qword_1012189C0];

      return;
    }

LABEL_22:
    __break(1u);
  }
}

void sub_1002B3280(void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = sub_1002AE644();
    [v5 frame];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    v14 = [*&v4[OBJC_IVAR____TtC5Music26BottomPlayerViewController____lazy_storage___nowPlayingItemStackView] superview];
    [a1 convertRect:v14 fromView:{v7, v9, v11, v13}];

    [a1 bounds];
    CGRectGetHeight(v15);
  }

  else
  {
    [a1 bounds];
  }
}

void *sub_1002B3650(uint64_t a1)
{
  sub_10010FC20(&unk_1011838E0, &unk_100EC1670);
  __chkstk_darwin();
  v2 = &v32 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v4 = &v32 - v3;
  sub_10010FC20(&unk_1011838F0, &qword_100EC1070);
  __chkstk_darwin();
  v6 = &v32 - v5;
  sub_10010FC20(&unk_10118AB20, &unk_100EBF390);
  __chkstk_darwin();
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v32 - v9;
  __chkstk_darwin();
  v12 = &v32 - v11;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v15 = *(Strong + OBJC_IVAR____TtC5Music26BottomPlayerViewController_nowPlaying);
    if (v15)
    {
      v41 = [v15 tracklist];
      v16 = type metadata accessor for Actions.PlaybackContext(0);
      v17 = *(v16 - 8);
      v40 = *(v17 + 56);
      v40(v12, 1, 1, v16);
      v18 = type metadata accessor for MetricsEvent.Page(0);
      (*(*(v18 - 8) + 56))(v6, 1, 1, v18);
      sub_1000089F8(v12, v8, &unk_10118AB20, &unk_100EBF390);
      v39 = *(v17 + 48);
      if (v39(v8, 1, v16) == 1)
      {
        v38 = v17 + 56;
        v19 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
        (*(*(v19 - 8) + 56))(v4, 1, 1, v19);
        *&v53 = 0;
        v51 = 0u;
        v52 = 0u;
        if (qword_10117F608 != -1)
        {
          swift_once();
        }

        v20 = qword_101218AD8;
        sub_1000089F8(v4, v2, &unk_1011838E0, &unk_100EC1670);
        v37 = v20;
        v36 = UIViewController.playActivityInformation.getter();
        v35 = v21;
        v34 = v22;
        v33 = v23;
        sub_1000089F8(&v51, &v46, &unk_101183910, &unk_100EBDD00);
        if (v47)
        {
          sub_100188D80(&v46, &v48);
        }

        else
        {
          v45 = v14;
          sub_100009F78(0, &qword_101183D40, UIViewController_ptr);
          v32 = v14;
          sub_10010FC20(&unk_101183920, &unk_100EC0330);
          if (swift_dynamicCast())
          {
            sub_100188D80(&v42, &v48);
          }

          else
          {
            v44 = 0;
            v43 = 0u;
            v42 = 0u;
            *&v48 = v32;
            v25 = v32;
            v26 = String.init<A>(reflecting:)();
            *(&v49 + 1) = &type metadata for Player.CommandIssuerIdentity;
            *&v50 = &protocol witness table for Player.CommandIssuerIdentity;
            *&v48 = v26;
            *(&v48 + 1) = v27;
            if (*(&v43 + 1))
            {
              sub_1000095E8(&v42, &unk_101183910, &unk_100EBDD00);
            }
          }

          if (v47)
          {
            sub_1000095E8(&v46, &unk_101183910, &unk_100EBDD00);
          }
        }

        Actions.PlaybackContext.init(controller:intent:playActivityInformation:issuer:)(v37, v2, v36, v35, v34, v33, &v48, v10);
        sub_1000095E8(&v51, &unk_101183910, &unk_100EBDD00);
        sub_1000095E8(v4, &unk_1011838E0, &unk_100EC1670);
        if (v39(v8, 1, v16) != 1)
        {
          sub_1000095E8(v8, &unk_10118AB20, &unk_100EBF390);
        }
      }

      else
      {
        sub_1002B7F50(v8, v10, type metadata accessor for Actions.PlaybackContext);
      }

      v40(v10, 0, 1, v16);
      v28 = v41;
      sub_1001CCD5C(v14, v10, v6, variable initialization expression of Library.Context.playlistVariants, 0, &v48);
      sub_1000095E8(v10, &unk_10118AB20, &unk_100EBF390);
      if (*(&v48 + 1))
      {
        v51 = v48;
        v52 = v49;
        v53 = v50;
        *&v46 = &off_101099ED0;
        v24 = _swiftEmptyArrayStorage;
        sub_100124084(_swiftEmptyArrayStorage);
        v29 = ActionMenuBuilder.uiMenu(excluding:includeUnsupported:)(v46, 0);

        v42 = v51;
        sub_100015BB0(&v42);
        v46 = v52;
        sub_100015BB0(&v46);

        sub_1000095E8(v6, &unk_1011838F0, &qword_100EC1070);
        sub_1000095E8(v12, &unk_10118AB20, &unk_100EBF390);
        if (v29)
        {
          v30 = [v29 children];

          sub_100009F78(0, &qword_10118CDE0, UIMenuElement_ptr);
          v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          v14 = v30;
        }

        goto LABEL_23;
      }

      sub_1000095E8(v6, &unk_1011838F0, &qword_100EC1070);
      sub_1000095E8(v12, &unk_10118AB20, &unk_100EBF390);
    }

    v24 = _swiftEmptyArrayStorage;
LABEL_23:

    return v24;
  }

  return _swiftEmptyArrayStorage;
}

void sub_1002B3DF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for AppInterfaceContext.Activity.Destination(0);
  __chkstk_darwin();
  v5 = (&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = [objc_opt_self() standardUserDefaults];
  v14[3] = &type metadata for Int;
  v14[0] = a3;
  v13 = 0;
  v7 = sub_1002B8234();
  v8 = sub_100009838();
  NSUserDefaults.subscript.setter(v14, &v13, &type metadata for NowPlayingViewController.DefaultsKey, v7, v8);

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = sub_10003169C();

    if (v11)
    {
      *v5 = 5;
      swift_storeEnumTagMultiPayload();
      sub_10070BF44(v5, 0, 0, 0, 0);

      sub_1002B8288(v5, type metadata accessor for AppInterfaceContext.Activity.Destination);
    }
  }
}

void sub_1002B42A4(int a1, id a2)
{
  if ([a2 state] == 3)
  {
    sub_1007EA514(sub_1002B42F8, 0);
  }
}

void sub_1002B42F8(void *a1)
{
  type metadata accessor for NowPlayingViewController(0);
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    v3 = *(v2 + OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController);
    if (v3)
    {
      v5 = v3;
      v4 = a1;
      sub_1005E8898();
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_1002B440C(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    result = [v2 artworkView];
    if (!result)
    {
      return result;
    }

    v5 = result;
    v6 = *(a1 + 16) == 0x6B726F77747241 && *(a1 + 24) == 0xE700000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      type metadata accessor for NowPlayingContentViewDonationItem();
      v7 = swift_allocObject();
      *(v7 + 48) = 0;
      *(v7 + 56) = 0u;
      *(v7 + 72) = 0u;
      *(v7 + 88) = 0u;
      *(v7 + 104) = 0;
      *(v7 + 16) = 0x6B726F77747241;
      *(v7 + 24) = 0xE700000000000000;
      *(v7 + 32) = v5;
      *(v7 + 40) = 0;
      v8 = swift_allocObject();
      *(v8 + 16) = v2;
      *(v8 + 24) = v5;
      *(v7 + 88) = sub_1002B7040;
      *(v7 + 96) = v8;
      v9 = v5;
      v10 = v2;
      return v7;
    }
  }

  return 0;
}

id sub_1002B4514(_BYTE *a1)
{
  v2 = v1;
  v4 = UIView.forAutolayout.getter();
  [v2 setArtworkView:v4];

  result = [v2 view];
  if (!result)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  [result addSubview:a1];

  v7 = a1[OBJC_IVAR____TtC5Music21NowPlayingContentView_deferArtworkUpdates];
  a1[OBJC_IVAR____TtC5Music21NowPlayingContentView_deferArtworkUpdates] = 0;
  if (v7 == 1)
  {
    [a1 setNeedsLayout];
  }

  v8 = *&a1[OBJC_IVAR____TtC5Music21NowPlayingContentView_mode];
  *&a1[OBJC_IVAR____TtC5Music21NowPlayingContentView_mode] = 0;
  if (v8 & 0xC100) != 0 || (v8)
  {
    sub_10004C8F4();
    [a1 setNeedsLayout];
  }

  v9 = sub_100025CE0();
  if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v9))
  {
    v10 = [v2 traitCollection];
    v11 = [v10 horizontalSizeClass];

    if (v11 == 2)
    {
      v12 = OBJC_IVAR____TtC5Music21NowPlayingContentView_artworkView;
      [*&a1[OBJC_IVAR____TtC5Music21NowPlayingContentView_artworkView] setHidden:0];
      [*&a1[v12] setAlpha:1.0];
      [a1 setAlpha:1.0];
    }
  }

  sub_10010FC20(&qword_101183990, &qword_100EBC750);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100EBDC10;
  v14 = [a1 centerXAnchor];
  v15 = OBJC_IVAR____TtC5Music26BottomPlayerViewController_artworkLayoutGuide;
  result = *&v2[OBJC_IVAR____TtC5Music26BottomPlayerViewController_artworkLayoutGuide];
  if (!result)
  {
    goto LABEL_16;
  }

  v16 = [result centerXAnchor];
  v17 = [v14 constraintEqualToAnchor:v16];

  *(v13 + 32) = v17;
  v18 = [a1 centerYAnchor];
  result = *&v2[v15];
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19 = [result centerYAnchor];
  v20 = [v18 constraintEqualToAnchor:v19];

  *(v13 + 40) = v20;
  v21 = [a1 widthAnchor];
  result = *&v2[v15];
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v22 = [result widthAnchor];
  v23 = [v21 constraintEqualToAnchor:v22];

  *(v13 + 48) = v23;
  result = [a1 heightAnchor];
  v24 = *&v2[v15];
  if (v24)
  {
    v25 = result;
    v26 = objc_opt_self();
    v27 = [v24 heightAnchor];
    v28 = [v25 constraintEqualToAnchor:v27];

    *(v13 + 56) = v28;
    sub_100009F78(0, &qword_1011838A0, NSLayoutConstraint_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v26 activateConstraints:isa];

    return sub_1002B2290(0, 1);
  }

LABEL_19:
  __break(1u);
  return result;
}

id sub_1002B48F8()
{
  result = [v0 view];
  if (result)
  {
    v2 = result;
    type metadata accessor for PresentationDonationTarget();
    v3 = swift_allocObject();
    v3[9] = 0;
    v3[10] = 0;
    v3[2] = 0x6B726F77747241;
    v3[3] = 0xE700000000000000;
    v3[4] = v2;
    v4 = swift_allocObject();
    *(v4 + 16) = v0;
    v3[11] = sub_1002B7150;
    v3[12] = v4;
    v5 = swift_allocObject();
    *(v5 + 16) = v0;
    v3[5] = sub_1002B7158;
    v3[6] = v5;
    v6 = swift_allocObject();
    *(v6 + 16) = v0;
    v3[7] = sub_1002B717C;
    v3[8] = v6;
    v3[13] = sub_1002B4C64;
    v3[14] = 0;
    sub_10010FC20(&qword_101183990, &qword_100EBC750);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_100EBC6C0;
    *(v7 + 32) = v3;
    v8 = v0;
    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1002B4A54(uint64_t a1, id a2)
{
  v4 = [a2 artworkView];
  if (v4)
  {
    v5 = v4;
    [v4 setHidden:1];
  }

  v6 = *(a1 + 32);
  type metadata accessor for NowPlayingContentView(0);
  v7 = swift_dynamicCastClass();
  if (v7)
  {
    v8 = v7;
    v9 = *(v7 + OBJC_IVAR____TtC5Music21NowPlayingContentView_deferArtworkUpdates);
    *(v7 + OBJC_IVAR____TtC5Music21NowPlayingContentView_deferArtworkUpdates) = 1;
    v10 = v6;
    if ((v9 & 1) == 0)
    {
      [v8 setNeedsLayout];
    }

    v14 = v10;
    v11 = [a2 traitCollection];
    v12 = [v11 userInterfaceStyle];

    [v8 setOverrideUserInterfaceStyle:v12];
    [v8 updateTraitsIfNeeded];
    v13 = *&v8[OBJC_IVAR____TtC5Music21NowPlayingContentView_mode];
    *&v8[OBJC_IVAR____TtC5Music21NowPlayingContentView_mode] = 0;
    if (v13 & 0xC100) != 0 || (v13)
    {
      sub_10004C8F4();
      [v8 setNeedsLayout];
    }
  }
}

void sub_1002B4BDC(uint64_t a1)
{
  v1 = *(a1 + 32);
  type metadata accessor for NowPlayingContentView(0);
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    v3 = v2;
    v4 = v1;
    sub_1002B4514(v3);
  }
}

void sub_1002B4C64(char a1, uint64_t a2)
{
  if (a1)
  {
    v2 = *(a2 + 32);
    [v2 setOverrideUserInterfaceStyle:0];
    type metadata accessor for NowPlayingContentView(0);
    if (swift_dynamicCastClass())
    {
      v3 = v2;
      sub_10065CE7C(0, 1);
      sub_10065D1CC();
    }
  }
}

void sub_1002B4CFC(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = [Strong view];
    if (v8)
    {
      v9 = v8;
      v10 = [objc_opt_self() clearColor];
      [v9 setBackgroundColor:v10];

      v11 = [a3 viewControllerForKey:UITransitionContextToViewControllerKey];
      if (v11)
      {
        v12 = v11;
        type metadata accessor for NowPlayingViewController(0);
        if (swift_dynamicCastClass())
        {

          v13 = [a4 layer];
          [v13 setShadowOpacity:0.0];
        }

        else
        {
          v13 = v7;
          v7 = v12;
        }
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1002B4E48(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController;
  v4 = *(a1 + OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController);
  if (!v4)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (!*&v4[OBJC_IVAR___MusicNowPlayingControlsViewController_nowPlaying])
  {
    v6 = *(a2 + OBJC_IVAR____TtC5Music26BottomPlayerViewController_nowPlaying);
    *&v4[OBJC_IVAR___MusicNowPlayingControlsViewController_nowPlaying] = v6;
    v7 = v4;
    v8 = v6;
    v9 = v7;
    sub_100198E90(0);

    if (*(a2 + OBJC_IVAR____TtC5Music26BottomPlayerViewController_shouldShowSmartTransitionTTRButton) == 1)
    {
      v10 = *(a1 + v3);
      if (!v10)
      {
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v11 = v10;
      sub_1001AF140(0);

      v12 = *(a1 + v3);
      if (!v12)
      {
LABEL_22:
        __break(1u);
        return;
      }

      v13 = v12;
      sub_1001AF484(5.0);
    }

    v14 = *(a1 + v3);
    if (!v14)
    {
      goto LABEL_19;
    }

    v15 = a2 + OBJC_IVAR____TtC5Music26BottomPlayerViewController_autoMixTransitionInformation;
    swift_beginAccess();
    v16 = *v15;
    v17 = *(v15 + 8);
    v18 = &v14[OBJC_IVAR___MusicNowPlayingControlsViewController_autoMixTransitionInformation];
    swift_beginAccess();
    v19 = *v18;
    v20 = *(v18 + 1);
    *v18 = v16;
    *(v18 + 1) = v17;
    v21 = v14;
    v22 = v16;
    v23 = v17;

    v4 = *(a1 + v3);
    if (!v4)
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }
  }

  v24 = [v4 view];
  if (!v24)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v25 = v24;
  [v24 layoutIfNeeded];

  if (qword_10117F1F8 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v27);

  if (v27 == 1)
  {
    v26 = *(a2 + OBJC_IVAR____TtC5Music26BottomPlayerViewController_nowPlaying);
    if (v26)
    {
      if ([v26 isSharedListeningSession])
      {
        sub_10012F360();
      }
    }
  }
}

id sub_1002B50C0()
{
  v1 = [v0 artworkView];

  return v1;
}

void (*sub_1002B50F8())()
{
  v1 = v0;
  v2 = type metadata accessor for IndexPath();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v37[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v6 = __chkstk_darwin().n128_u64[0];
  v8 = &v37[-v7];
  result = [v1 view];
  if (!result)
  {
    goto LABEL_30;
  }

  v10 = result;
  v11 = [result window];

  v12 = [v11 windowScene];
  if (!v12)
  {
    v12 = [objc_opt_self() sharedApplication];
    v13 = [v12 connectedScenes];
    sub_100009F78(0, &qword_1011839F0, UIScene_ptr);
    sub_10001C070(&qword_101183DE0, &qword_1011839F0, UIScene_ptr, &protocol conformance descriptor for NSObject);
    v14 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100061FC4(v14);
    v16 = v15;

    if (v16 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result)
      {
        goto LABEL_5;
      }
    }

    else
    {
      result = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
LABEL_5:
        if ((v16 & 0xC000000000000001) != 0)
        {
          v17 = sub_1007E90D4(0, v16);
          goto LABEL_8;
        }

        if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v17 = *(v16 + 32);
LABEL_8:
          v18 = v17;

          v12 = v18;
          goto LABEL_9;
        }

        __break(1u);
LABEL_30:
        __break(1u);
        return result;
      }
    }

    goto LABEL_25;
  }

LABEL_9:
  v19 = *&v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_nowPlaying];
  if (!v19)
  {
    goto LABEL_25;
  }

  v20 = [v19 tracklist];
  if (!v20)
  {
    goto LABEL_25;
  }

  v21 = v20;
  v22 = [v20 playingItem];
  if (!v22)
  {
    goto LABEL_22;
  }

  v23 = v22;
  v24 = [v22 metadataObject];

  if (!v24)
  {
    goto LABEL_22;
  }

  v25 = [v24 innermostModelObject];

  objc_opt_self();
  v26 = swift_dynamicCastObjCClass();
  if (v26)
  {
    v27 = v26;
    v28 = [v26 album];
    if (v28)
    {
      v29 = v28;
      v30 = [v21 playingItemIndexPath];
      if (v30)
      {
        v31 = v30;
        static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

        (*(v3 + 32))(v8, v5, v2);
        v32 = v25;
        v33 = [v21 items];
        v34 = [v33 sectionAtIndex:IndexPath.section.getter()];

        v35 = [v34 metadataObject];
        v36 = sub_100483660(v29, v27, v35, v12);

        (*(v3 + 8))(v8, v2);
        if (v36)
        {
          return v36;
        }

        return 0;
      }

LABEL_22:
      goto LABEL_25;
    }
  }

  else
  {
  }

  v12 = v25;
LABEL_25:

  return 0;
}

void sub_1002B5680()
{
  v1 = [v0 traitCollection];
  [v1 horizontalSizeClass];
}

id sub_1002B5774(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v9.receiver = a1;
  v9.super_class = a5(a4, a2);
  v6 = a3;
  v7 = objc_msgSendSuper2(&v9, "initWithCoder:", v6);

  if (v7)
  {
  }

  return v7;
}

id sub_1002B5810(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_1002B5874(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  *a2 = v3;
}

double sub_1002B58F4(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  return sub_10012BCD4();
}

void sub_1002B596C(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  *a2 = v3;
}

uint64_t sub_1002B59EC(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

unint64_t sub_1002B5A68(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_1002B5AFC(a1, v2);
}

unint64_t sub_1002B5AFC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;
      if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

void sub_1002B5C00(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *, uint64_t, uint64_t), uint64_t a6)
{
  v8 = *(a4 + 32);
  v9 = v8[2];
  v10 = 16 * v9 + 16;
  v11 = v9;
  while (v11)
  {
    --v11;
    v12 = *(v8 + v10);
    v10 -= 16;
    if (v12 == a2)
    {

      v14 = a1;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v9 >= v8[3] >> 1)
      {
        v8 = sub_100059EE8(isUniquelyReferenced_nonNull_native, v9 + 1, 1, v8);
      }

      sub_1003BB890(v11, v11, 1, v14, a6);

      v16 = *(a4 + 32);
      *(a4 + 32) = v8;
      sub_100059F0C(v16);

      return;
    }
  }

  a5(a1, a4, a3);
}

void sub_1002B5D28(void *a1, id a2)
{
  v3 = [a2 preferredContentSizeCategory];
  v4 = UIContentSizeCategory.isAccessibilityCategory.getter() & 1;

  v5 = [a1 traitCollection];
  v6 = [v5 preferredContentSizeCategory];

  LODWORD(v5) = UIContentSizeCategory.isAccessibilityCategory.getter() & 1;
  if (v4 != v5)
  {
    sub_10004EFF4();
  }
}

void sub_1002B5DF8()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC5Music26BottomPlayerViewController_artworkView) = 0;
  *(v0 + OBJC_IVAR____TtC5Music26BottomPlayerViewController_nowPlaying) = 0;
  *(v0 + OBJC_IVAR____TtC5Music26BottomPlayerViewController_isInTransition) = 0;
  v2 = (v0 + OBJC_IVAR____TtC5Music26BottomPlayerViewController_autoMixTransitionInformation);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR____TtC5Music26BottomPlayerViewController_shouldShowSmartTransitionTTRButton) = 0;
  *(v0 + OBJC_IVAR____TtC5Music26BottomPlayerViewController_shouldShowSmartTransitionTTRButtonTask) = 0;
  *(v0 + OBJC_IVAR____TtC5Music26BottomPlayerViewController_invertColorsStatusDidChangeObserver) = 0;
  *(v0 + OBJC_IVAR____TtC5Music26BottomPlayerViewController_didActivateObserver) = 0;
  *(v0 + OBJC_IVAR____TtC5Music26BottomPlayerViewController_motionRestrictionsObserver) = 0;
  *(v0 + OBJC_IVAR____TtC5Music26BottomPlayerViewController_videoArtworksObserver) = 0;
  v3 = OBJC_IVAR____TtC5Music26BottomPlayerViewController_motionArtworkManager;
  type metadata accessor for MotionArtworkManager(0);
  swift_allocObject();
  *(v0 + v3) = sub_100040FAC();
  *(v0 + OBJC_IVAR____TtC5Music26BottomPlayerViewController_nowPlayingPath) = 0;
  *(v0 + OBJC_IVAR____TtC5Music26BottomPlayerViewController_sharePlayTogetherParticipantsSubscription) = 0;
  *(v0 + OBJC_IVAR____TtC5Music26BottomPlayerViewController_sharePlayTogetherSession) = 0;
  v4 = v0 + OBJC_IVAR____TtC5Music26BottomPlayerViewController_lastKnownViewBounds;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 1;
  v5 = OBJC_IVAR____TtC5Music26BottomPlayerViewController_glissandoDataSource;
  if (qword_10117F5F8 != -1)
  {
    swift_once();
  }

  v6 = qword_101218AC8;
  _s19GlissandoDataSourceCMa();
  v7 = swift_allocObject();
  *(v7 + 54) = -4864;
  *(v7 + 32) = 0;
  strcpy((v7 + 40), "Swipe Gesture");
  *(v7 + 16) = v6;
  *(v7 + 24) = 0;
  v8 = MPCPlayerRequestTracklistRange.neighboringItems.unsafeMutableAddressor();
  v9 = *v8;
  v10 = v8[1];
  v11 = *(*v6 + 752);

  v12 = v11(v26);
  v13.reverseCount = v9;
  v13.forwardCount = v10;
  Player.NowPlayingConfiguration.insert(_:)(v13);
  v12(v26, 0);
  *(v1 + v5) = v7;
  *(v1 + OBJC_IVAR____TtC5Music26BottomPlayerViewController____lazy_storage___glissCoordinator) = 0;
  *(v1 + OBJC_IVAR____TtC5Music26BottomPlayerViewController_routeButton) = 0;
  *(v1 + OBJC_IVAR____TtC5Music26BottomPlayerViewController_mediaControls) = 0;
  *(v1 + OBJC_IVAR____TtC5Music26BottomPlayerViewController____lazy_storage___nowPlayingItemStackView) = 0;
  *(v1 + OBJC_IVAR____TtC5Music26BottomPlayerViewController_routeLabel) = 0;
  *(v1 + OBJC_IVAR____TtC5Music26BottomPlayerViewController_skipButton) = 0;
  *(v1 + OBJC_IVAR____TtC5Music26BottomPlayerViewController_playPauseButton) = 0;
  *(v1 + OBJC_IVAR____TtC5Music26BottomPlayerViewController_reverseButton) = 0;
  *(v1 + OBJC_IVAR____TtC5Music26BottomPlayerViewController_sharedListeningParticipantsLabel) = 0;
  *(v1 + OBJC_IVAR____TtC5Music26BottomPlayerViewController_standardConstraints) = _swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR____TtC5Music26BottomPlayerViewController_newRegularLayoutConstraints) = _swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR____TtC5Music26BottomPlayerViewController_playerSubscriptions) = &_swiftEmptySetSingleton;
  *(v1 + OBJC_IVAR____TtC5Music26BottomPlayerViewController_artworkLayoutGuide) = 0;
  v14 = OBJC_IVAR____TtC5Music26BottomPlayerViewController_shuffleButton;
  type metadata accessor for NowPlayingShuffleButton();
  v15 = [swift_getObjCClassFromMetadata() buttonWithType:0];
  v16 = UIView.forAutolayout.getter();

  *(v1 + v14) = v16;
  v17 = OBJC_IVAR____TtC5Music26BottomPlayerViewController_repeatButton;
  type metadata accessor for NowPlayingRepeatButton();
  v18 = [swift_getObjCClassFromMetadata() buttonWithType:0];
  v19 = UIView.forAutolayout.getter();

  *(v1 + v17) = v19;
  *(v1 + OBJC_IVAR____TtC5Music26BottomPlayerViewController_playbackCancellationGesture) = 0;
  v20 = OBJC_IVAR____TtC5Music26BottomPlayerViewController_transportControlsController;
  type metadata accessor for TransportControlsController();
  v21 = swift_allocObject();
  *(v21 + 16) = 0u;
  *(v21 + 32) = 0u;
  *(v21 + 48) = 0u;
  *(v21 + 64) = 0u;
  *(v21 + 80) = 0u;
  *(v1 + v20) = v21;
  *(v1 + OBJC_IVAR____TtC5Music26BottomPlayerViewController_transportControlsStack) = 0;
  v22 = (v1 + OBJC_IVAR____TtC5Music26BottomPlayerViewController_reverseButtonConfiguration);
  v22[1] = 0;
  v22[2] = 0;
  *v22 = 0;
  v23 = (v1 + OBJC_IVAR____TtC5Music26BottomPlayerViewController_playPauseButtonConfiguration);
  v23[1] = 0;
  v23[2] = 0;
  *v23 = 0;
  v24 = (v1 + OBJC_IVAR____TtC5Music26BottomPlayerViewController_skipButtonConfiguration);
  v24[1] = 0;
  v24[2] = 0;
  *v24 = 0;
  *(v1 + OBJC_IVAR____TtC5Music26BottomPlayerViewController_contextMenuButton) = 0;
  *(v1 + OBJC_IVAR____TtC5Music26BottomPlayerViewController_lyricsButton) = 0;
  *(v1 + OBJC_IVAR____TtC5Music26BottomPlayerViewController_queueButton) = 0;
  *(v1 + OBJC_IVAR____TtC5Music26BottomPlayerViewController_trailingButtonsStackView) = 0;
  *(v1 + OBJC_IVAR____TtC5Music26BottomPlayerViewController_cancellables) = &_swiftEmptySetSingleton;
  *(v1 + OBJC_IVAR____TtC5Music26BottomPlayerViewController_dragDropController) = 0;
  *(v1 + OBJC_IVAR____TtC5Music26BottomPlayerViewController_isPreviewing) = 0;
  *(v1 + OBJC_IVAR____TtC5Music26BottomPlayerViewController_isSharedListeningLoading) = 0;
  *(v21 + 96) = 0;
  *(v1 + OBJC_IVAR____TtC5Music26BottomPlayerViewController_sharedListeningParticipantsCount) = 3;
  v25 = v1 + OBJC_IVAR____TtC5Music26BottomPlayerViewController_lastSpecifiedTabAccessoryEnvironment;
  *v25 = 0;
  *(v25 + 8) = 1;
  *(v1 + OBJC_IVAR____TtC5Music26BottomPlayerViewController_springLoadedInteraction) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t sub_1002B628C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10010FC20(&qword_101180418, &unk_100EBA6D0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000089F8(v4, &v11, &qword_101180420, &unk_100EDEFD0);
      v5 = v11;
      result = sub_1002B5A68(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_100016270(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

void sub_1002B63B4(char *a1)
{
  sub_10004F8C8();
  sub_1000511A4();
  v2 = [a1 traitCollection];
  v3 = [v2 horizontalSizeClass];

  if (v3 == 2)
  {
    sub_1002AF2CC();
  }

  else
  {
    v4 = *&a1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_trailingButtonsStackView];
    if (v4)
    {
      [v4 removeFromSuperview];
    }
  }

  v5 = objc_opt_self();
  sub_100009F78(0, &qword_1011838A0, NSLayoutConstraint_ptr);

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v5 deactivateConstraints:isa];

  v7 = Array._bridgeToObjectiveC()().super.isa;

  [v5 activateConstraints:v7];
}

uint64_t sub_1002B6524(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_motionArtworkManager];
  v2 = [a1 traitCollection];
  v3 = [objc_opt_self() currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == 1 || [v2 accessibilityContrast] == 1)
  {

    *(v1 + OBJC_IVAR____TtC5Music20MotionArtworkManager_allowNowPlayingTallMotionArtwork) = 0;
  }

  else
  {
    IsInvertColorsEnabled = UIAccessibilityIsInvertColorsEnabled();

    *(v1 + OBJC_IVAR____TtC5Music20MotionArtworkManager_allowNowPlayingTallMotionArtwork) = !IsInvertColorsEnabled;
    if (!IsInvertColorsEnabled)
    {
      sub_10010FC20(&qword_101189E10, &qword_100EC5848);
      type metadata accessor for EditorialVideoArtworkFlavor();
      *(swift_allocObject() + 16) = xmmword_100EBDC20;
      static EditorialVideoArtworkFlavor.motionDetailTall.getter();
      goto LABEL_5;
    }
  }

  sub_10010FC20(&qword_101189E10, &qword_100EC5848);
  type metadata accessor for EditorialVideoArtworkFlavor();
  *(swift_allocObject() + 16) = xmmword_100EBC6B0;
LABEL_5:
  static EditorialVideoArtworkFlavor.motionDetailSquare.getter();
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_1002B6778(void *a1)
{
  v3 = OBJC_IVAR____TtC5Music26BottomPlayerViewController_transportControlsStack;
  result = *(v1 + OBJC_IVAR____TtC5Music26BottomPlayerViewController_transportControlsStack);
  if (result)
  {
    [result bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    [a1 locationInView:*(v1 + v3)];
    v28.x = v13;
    v28.y = v14;
    v30.origin.x = v6;
    v30.origin.y = v8;
    v30.size.width = v10;
    v30.size.height = v12;
    if (CGRectContainsPoint(v30, v28))
    {
      return 0;
    }

    else
    {
      v15 = *(v1 + OBJC_IVAR____TtC5Music26BottomPlayerViewController_trailingButtonsStackView);
      if (v15)
      {
        v16 = v15;
        [v16 bounds];
        v18 = v17;
        v20 = v19;
        v22 = v21;
        v24 = v23;
        [a1 locationInView:v16];
        v29.x = v25;
        v29.y = v26;
        v31.origin.x = v18;
        v31.origin.y = v20;
        v31.size.width = v22;
        v31.size.height = v24;
        v27 = CGRectContainsPoint(v31, v29);

        return !v27;
      }

      else
      {
        return 1;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1002B688C(void *a1)
{
  v2 = [a1 state];
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      v6 = String._bridgeToObjectiveC()();
      v7 = [objc_opt_self() animationWithKeyPath:v6];

      [v7 setFromValue:0];
      v8 = [objc_opt_self() clearColor];
      v9 = [v8 CGColor];

      [v7 setToValue:v9];
      v10 = v7;
      [v10 setDuration:0.1];
      [v10 setAutoreverses:1];
      LODWORD(v11) = 2.0;
      [v10 setRepeatCount:v11];
      [v10 setRemovedOnCompletion:1];

      v12 = [v1 view];
      if (!v12)
      {
LABEL_20:
        __break(1u);
        return;
      }

      v13 = v12;
      v14 = [v12 layer];

      v15 = String._bridgeToObjectiveC()();
      [v14 addAnimation:v10 forKey:?];

      goto LABEL_15;
    }

    if (v2 != 3)
    {
      return;
    }
  }

  else if (v2)
  {
    if (v2 != 1)
    {
      return;
    }

    v3 = [v1 view];
    if (v3)
    {
      v15 = v3;
      if (qword_10117F520 != -1)
      {
        swift_once();
        v3 = v15;
      }

      [v3 setBackgroundColor:qword_1012189B0];
      goto LABEL_15;
    }

    goto LABEL_19;
  }

  v4 = [v1 view];
  if (!v4)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v5 = v4;
  v15 = [objc_opt_self() clearColor];
  [v5 setBackgroundColor:?];

LABEL_15:
}

void sub_1002B6B78(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = [v2 view];
  if (!v6)
  {
    __break(1u);
    goto LABEL_18;
  }

  v7 = v6;
  v8 = [v6 layer];

  [v8 removeAllAnimations];
  v9 = [a1 containerView];
  v10 = [v3 view];
  if (!v10)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v11 = v10;
  v12 = UIView.Shadow.identity.unsafeMutableAddressor();
  v13 = *(v12 + 1);
  v45[0] = *v12;
  v45[1] = v13;
  v46 = v12[4];
  v14 = *&v45[0];
  UIView.shadow.setter(v45);

  v15 = [v3 view];
  if (!v15)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v16 = v15;
  v43 = 0;
  aBlock = 0u;
  v42 = 0u;
  UIView._background.setter();

  v17 = [v3 view];
  if (!v17)
  {
LABEL_20:
    __break(1u);
    return;
  }

  v18 = v17;
  v19 = [objc_opt_self() clearColor];
  [v18 setBackgroundColor:v19];

  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = swift_allocObject();
  v21[2] = v20;
  v21[3] = a1;
  v21[4] = v9;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_1002B7000;
  *(v22 + 24) = v21;
  v23 = OBJC_IVAR____TtC5Music38PalettePresentationAnimationController_completionBlocks;
  swift_beginAccess();
  v24 = *(a2 + v23);

  swift_unknownObjectRetain();
  v40 = v9;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + v23) = v24;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v24 = sub_10049974C(0, v24[2] + 1, 1, v24);
    *(a2 + v23) = v24;
  }

  v27 = v24[2];
  v26 = v24[3];
  if (v27 >= v26 >> 1)
  {
    v24 = sub_10049974C((v26 > 1), v27 + 1, 1, v24);
  }

  v24[2] = v27 + 1;
  v28 = &v24[2 * v27];
  v28[4] = sub_1002B700C;
  v28[5] = v22;
  *(a2 + v23) = v24;
  swift_endAccess();

  v29 = [a1 viewControllerForKey:UITransitionContextToViewControllerKey];
  if (v29)
  {
    v30 = v29;
    type metadata accessor for NowPlayingViewController(0);
    v31 = swift_dynamicCastClass();
    if (!v31)
    {

      goto LABEL_15;
    }

    v32 = v31;
    v33 = objc_opt_self();
    v34 = swift_allocObject();
    *(v34 + 16) = v32;
    *(v34 + 24) = v3;
    v35 = swift_allocObject();
    *(v35 + 16) = sub_1002B7038;
    *(v35 + 24) = v34;
    v43 = sub_100029B94;
    v44 = v35;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v42 = sub_100029B9C;
    *(&v42 + 1) = &unk_1010A4060;
    v36 = _Block_copy(&aBlock);
    v37 = v30;
    v38 = v3;

    [v33 performWithoutAnimation:v36];

    _Block_release(v36);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  v30 = v40;
LABEL_15:
}

id sub_1002B7040(char a1)
{
  if ((a1 & 1) == 0)
  {
    return sub_1002B4514(*(v1 + 24));
  }

  v2 = *(v1 + 16);

  return [v2 setArtworkView:0];
}

uint64_t sub_1002B709C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NowPlaying.TrackMetadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002B7108(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1002B7158()
{
  result = *(*(v0 + 16) + OBJC_IVAR____TtC5Music26BottomPlayerViewController_artworkLayoutGuide);
  if (result)
  {
    return [result layoutFrame];
  }

  __break(1u);
  return result;
}

id sub_1002B7184(void *a1)
{
  v2 = sub_1002B50F8();
  if (v2)
  {
    v8[4] = v2;
    v8[5] = v3;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 1107296256;
    v8[2] = sub_10002BC98;
    v8[3] = &unk_1010A41A0;
    v4 = v2;
    v5 = v3;
    v6 = _Block_copy(v8);

    [a1 addAnimations:v6];
    _Block_release(v6);
    return sub_100020438(v4, v5);
  }

  else
  {

    return [a1 setPreferredCommitStyle:0];
  }
}

id sub_1002B7294(CGFloat a1)
{
  sub_10010FC20(&unk_1011838E0, &unk_100EC1670);
  __chkstk_darwin();
  v4 = v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v78 = v63 - v5;
  sub_10010FC20(&unk_1011838F0, &qword_100EC1070);
  __chkstk_darwin();
  v7 = v63 - v6;
  sub_10010FC20(&unk_10118AB20, &unk_100EBF390);
  __chkstk_darwin();
  v9 = v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = v63 - v10;
  __chkstk_darwin();
  v13 = v63 - v12;
  sub_10010FC20(&unk_101189DA0, &unk_100EBF370);
  __chkstk_darwin();
  v15 = v63 - v14;
  v16 = type metadata accessor for GenericMusicItem();
  v17 = *(v16 - 8);
  *&v18 = __chkstk_darwin().n128_u64[0];
  v20 = v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = *&v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_transportControlsStack];
  if (!result)
  {
    __break(1u);
    return result;
  }

  [result frame];
  x = v94.origin.x;
  y = v94.origin.y;
  width = v94.size.width;
  height = v94.size.height;
  if (CGRectGetMinX(v94) <= a1)
  {
    v95.origin.x = x;
    v95.origin.y = y;
    v95.size.width = width;
    v95.size.height = height;
    if (CGRectGetMaxX(v95) >= a1)
    {
      return 0;
    }
  }

  v77 = v13;
  v26 = OBJC_IVAR____TtC5Music26BottomPlayerViewController_nowPlaying;
  result = *&v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_nowPlaying];
  if (!result)
  {
    return result;
  }

  v74 = v20;
  v75 = v17;
  v76 = v16;
  v27 = [result tracklist];
  v28 = [v27 playingItem];

  if (!v28)
  {
    return 0;
  }

  v29 = [v28 metadataObject];

  if (!v29)
  {
    return 0;
  }

  v30 = [v29 innermostModelObject];

  v31 = v30;
  GenericMusicItem.init(_:)();
  v32 = v75;
  v33 = v76;
  if ((*(v75 + 48))(v15, 1, v76) == 1)
  {

    sub_1000095E8(v15, &unk_101189DA0, &unk_100EBF370);
    return 0;
  }

  v72 = v31;
  (*(v32 + 32))(v74, v15, v33);
  v34 = *&v1[v26];
  v73 = v1;
  if (v34)
  {
    v71 = [v34 tracklist];
    v35 = type metadata accessor for Actions.PlaybackContext(0);
    v36 = *(v35 - 8);
    v37 = v77;
    v70 = *(v36 + 56);
    v70(v77, 1, 1, v35);
    v38 = type metadata accessor for MetricsEvent.Page(0);
    v39 = v7;
    (*(*(v38 - 8) + 56))(v7, 1, 1, v38);
    sub_1000089F8(v37, v9, &unk_10118AB20, &unk_100EBF390);
    v40 = *(v36 + 48);
    if (v40(v9, 1, v35) == 1)
    {
      v69 = v40;
      v41 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
      v42 = v78;
      (*(*(v41 - 8) + 56))(v78, 1, 1, v41);
      *&v92 = 0;
      v90 = 0u;
      v91 = 0u;
      if (qword_10117F608 != -1)
      {
        swift_once();
      }

      v43 = qword_101218AD8;
      sub_1000089F8(v42, v4, &unk_1011838E0, &unk_100EC1670);
      v68 = v43;
      v67 = UIViewController.playActivityInformation.getter();
      v66 = v44;
      v65 = v45;
      v64 = v46;
      sub_1000089F8(&v90, &aBlock, &unk_101183910, &unk_100EBDD00);
      if (v81)
      {
        sub_100188D80(&aBlock, &v87);
        v1 = v73;
      }

      else
      {
        v1 = v73;
        *&v93 = v73;
        v63[1] = sub_100009F78(0, &qword_101183D40, UIViewController_ptr);
        v49 = v1;
        sub_10010FC20(&unk_101183920, &unk_100EC0330);
        if (swift_dynamicCast())
        {
          sub_100188D80(&v84, &v87);
        }

        else
        {
          v86 = 0;
          v85 = 0u;
          v84 = 0u;
          *&v87 = v49;
          v50 = v49;
          v51 = String.init<A>(reflecting:)();
          *(&v88 + 1) = &type metadata for Player.CommandIssuerIdentity;
          *&v89 = &protocol witness table for Player.CommandIssuerIdentity;
          *&v87 = v51;
          *(&v87 + 1) = v52;
          if (*(&v85 + 1))
          {
            sub_1000095E8(&v84, &unk_101183910, &unk_100EBDD00);
          }
        }

        if (v81)
        {
          sub_1000095E8(&aBlock, &unk_101183910, &unk_100EBDD00);
        }
      }

      Actions.PlaybackContext.init(controller:intent:playActivityInformation:issuer:)(v68, v4, v67, v66, v65, v64, &v87, v11);
      sub_1000095E8(&v90, &unk_101183910, &unk_100EBDD00);
      sub_1000095E8(v42, &unk_1011838E0, &unk_100EC1670);
      if (v69(v9, 1, v35) != 1)
      {
        sub_1000095E8(v9, &unk_10118AB20, &unk_100EBF390);
      }
    }

    else
    {
      sub_1002B7F50(v9, v11, type metadata accessor for Actions.PlaybackContext);
    }

    v70(v11, 0, 1, v35);
    v53 = v71;
    sub_1001CCD5C(v1, v11, v39, variable initialization expression of Library.Context.playlistVariants, 0, &v87);
    sub_1000095E8(v11, &unk_10118AB20, &unk_100EBF390);
    v48 = v72;
    if (*(&v87 + 1))
    {
      v90 = v87;
      v91 = v88;
      v92 = v89;
      *&aBlock = &off_101099EF8;
      sub_100124084(_swiftEmptyArrayStorage);
      v47 = ActionMenuBuilder.uiMenu(excluding:includeUnsupported:)(aBlock, 0);

      v93 = v90;
      sub_100015BB0(&v93);
      v84 = v91;
      sub_100015BB0(&v84);
    }

    else
    {

      v47 = 0;
    }

    sub_1000095E8(v39, &unk_1011838F0, &qword_100EC1070);
    sub_1000095E8(v77, &unk_10118AB20, &unk_100EBF390);
  }

  else
  {
    v47 = 0;
    v48 = v72;
  }

  v54 = sub_1002435F0();
  v55 = sub_1002B50F8();
  v57 = v55;
  if (v55)
  {
    sub_100020438(v55, v56);
  }

  if (((v57 != 0) ^ *(v54 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__showChevron)))
  {
    swift_getKeyPath();
    __chkstk_darwin();
    v63[-2] = v54;
    LOBYTE(v63[-1]) = v57 != 0;
    *&aBlock = v54;
    sub_1002B7108(&unk_101189DB0, type metadata accessor for ContextualPreview.Data, &unk_100EC1EA8);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *(v54 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__showChevron) = v57 != 0;
  }

  v58 = swift_allocObject();
  *(v58 + 16) = v47;
  v59 = objc_opt_self();
  v82 = sub_100218654;
  v83 = v54;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v80 = sub_100747E6C;
  v81 = &unk_1010A4150;
  v60 = _Block_copy(&aBlock);

  v82 = NowPlaying.TrackMetadata.underlyingItem.getter;
  v83 = v58;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v80 = sub_100747EBC;
  v81 = &unk_1010A4178;
  v61 = _Block_copy(&aBlock);

  v62 = [v59 configurationWithIdentifier:0 previewProvider:v60 actionProvider:v61];

  _Block_release(v61);
  _Block_release(v60);

  (*(v75 + 8))(v74, v76);
  return v62;
}

void *NowPlaying.TrackMetadata.underlyingItem.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t sub_1002B7F50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002B80C8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_1002B0F2C(a1, v4, v5, v6);
}

unint64_t sub_1002B8234()
{
  result = qword_101189E38;
  if (!qword_101189E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101189E38);
  }

  return result;
}

uint64_t sub_1002B8288(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1002B82E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_1002B1398(a1, v4, v5, v6);
}

uint64_t sub_1002B83AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_1002B2810(a1, v4, v5, v6);
}

uint64_t sub_1002B8460(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100008F30;

  return sub_1002AEB04(a1);
}

uint64_t sub_1002B850C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100008F30;

  return sub_1002AE828(a1);
}

uint64_t sub_1002B85B8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10002F3F4;

  return sub_1002AE490(a1);
}

unint64_t sub_1002B8664()
{
  result = qword_10118ACD0;
  if (!qword_10118ACD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118ACD0);
  }

  return result;
}

void sub_1002B86E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v8 = a1 + 40;
    do
    {
      v9 = *(v8 - 8);

      v9(a2, a3, a4);

      v8 += 16;
      --v4;
    }

    while (v4);
  }
}

unint64_t sub_1002B8768(unint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v28[0] = result;
      v28[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v28 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v28;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v28 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = _StringObject.sharedUTF8.getter();
        v3 = v27;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v29 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  sub_1002CE7C4(result, a2, 10);
  v6 = v25;
  v24 = v26;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

double sub_1002B8A68(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  swift_unknownObjectRetain();
  v3(a2);

  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_1002B8ABC()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LaunchOptions.Source(0);
  __chkstk_darwin();
  v7 = (&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  strcpy(v20, "LaunchOptions(");
  HIBYTE(v20[1]) = -18;
  sub_1002CF480(v1, v7, type metadata accessor for LaunchOptions.Source);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v9 = *v7;
    if (EnumCaseMultiPayload == 1)
    {
      strcpy(&v19, "Shortcut=");
      WORD1(v19._object) = 0;
      HIDWORD(v19._object) = -385875968;
      v10 = [v9 type];
    }

    else
    {
      strcpy(&v19, "UserActivity=");
      HIWORD(v19._object) = -4864;
      v10 = [v9 activityType];
    }

    v12 = v10;
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16._countAndFlagsBits = v13;
    v16._object = v15;
    String.append(_:)(v16);

    String.append(_:)(v19);
  }

  else
  {
    (*(v3 + 32))(v5, v7, v2);
    v19._countAndFlagsBits = 1028411989;
    v19._object = 0xE400000000000000;
    v11._countAndFlagsBits = URL.absoluteString.getter();
    String.append(_:)(v11);

    String.append(_:)(v19);

    (*(v3 + 8))(v5, v2);
  }

  v17._countAndFlagsBits = 41;
  v17._object = 0xE100000000000000;
  String.append(_:)(v17);
  return v20[0];
}

id sub_1002B8D68(char *a1, uint64_t a2, void *a3)
{
  v473 = a3;
  v462 = a2;
  v5 = type metadata accessor for LaunchOptions.Kind(0);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v454 = &v429 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v434 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin();
  v435 = (&v429 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10010FC20(&qword_101194980, &qword_100ECA390);
  __chkstk_darwin();
  v432 = &v429 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v437 = &v429 - v10;
  __chkstk_darwin();
  v431 = &v429 - v11;
  __chkstk_darwin();
  v436 = &v429 - v12;
  __chkstk_darwin();
  v439 = &v429 - v13;
  __chkstk_darwin();
  v446 = (&v429 - v14);
  __chkstk_darwin();
  v444 = &v429 - v15;
  __chkstk_darwin();
  v445 = &v429 - v16;
  __chkstk_darwin();
  v448 = &v429 - v17;
  __chkstk_darwin();
  v459 = &v429 - v18;
  v458 = type metadata accessor for URLComponents();
  v457 = *(v458 - 8);
  __chkstk_darwin();
  v438 = &v429 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v443 = &v429 - v20;
  __chkstk_darwin();
  v447 = &v429 - v21;
  __chkstk_darwin();
  v465 = &v429 - v22;
  v23 = type metadata accessor for URL();
  v24 = *(v23 - 8);
  __chkstk_darwin();
  v471 = &v429 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v453 = &v429 - v26;
  __chkstk_darwin();
  v450 = &v429 - v27;
  __chkstk_darwin();
  v449 = (&v429 - v28);
  __chkstk_darwin();
  v440 = &v429 - v29;
  __chkstk_darwin();
  object = &v429 - v30;
  __chkstk_darwin();
  v451 = &v429 - v31;
  __chkstk_darwin();
  v472 = &v429 - v32;
  v441 = v33;
  __chkstk_darwin();
  v35 = &v429 - v34;
  sub_10010FC20(&qword_10118A240, &qword_100EC5A00);
  __chkstk_darwin();
  v464 = &v429 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v433 = &v429 - v37;
  v38 = __chkstk_darwin();
  v40 = &v429 - v39;
  *(v3 + 16) = 7;
  *(v3 + OBJC_IVAR____TtC5Music13LaunchOptions_privacyAcknowledgementObserver) = 0;
  v41 = (v3 + OBJC_IVAR____TtC5Music13LaunchOptions_completionHandler);
  *v41 = 0;
  v41[1] = 0;
  v42 = (v3 + OBJC_IVAR____TtC5Music13LaunchOptions_sourceApplicationBundleIdentifier);
  *v42 = 0;
  v42[1] = 0;
  (*(v24 + 56))(v3 + OBJC_IVAR____TtC5Music13LaunchOptions_referrerURL, 1, 1, v23, v38);
  *(v3 + OBJC_IVAR____TtC5Music13LaunchOptions_subscriptionStatusObserver) = 0;
  v461 = v6;
  v43 = *(v6 + 56);
  v469 = v40;
  v44 = v40;
  v45 = v24;
  v467 = v5;
  v456 = v6 + 56;
  v455 = v43;
  v43(v44, 1, 1, v5);
  v47 = v24 + 16;
  v46 = *(v24 + 16);
  v48 = a1;
  v46(v3 + OBJC_IVAR____TtC5Music13LaunchOptions_source, a1, v23);
  type metadata accessor for LaunchOptions.Source(0);
  swift_storeEnumTagMultiPayload();
  v463 = v3;
  v49 = v473;
  *(v3 + OBJC_IVAR____TtC5Music13LaunchOptions_windowScene) = v473;
  v50 = qword_10117F540;
  v460 = v49;
  if (v50 != -1)
  {
    swift_once();
  }

  v51 = type metadata accessor for Logger();
  v52 = sub_1000060E4(v51, qword_101189E90);
  v46(v35, a1, v23);
  v46(v472, v35, v23);
  v442 = v45;
  v53 = *(v45 + 8);
  v53(v35, v23);
  v466 = v52;
  v54 = Logger.logObject.getter();
  v55 = v46;
  v56 = static os_log_type_t.default.getter();
  v57 = os_log_type_enabled(v54, v56);
  v473 = (v45 + 8);
  v470 = v53;
  v468 = v55;
  if (v57)
  {
    v58 = swift_slowAlloc();
    v430 = swift_slowAlloc();
    *&v480[0] = v430;
    *v58 = 136446210;
    sub_1002CF674(&qword_1011A4850, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v59 = v472;
    v60 = dispatch thunk of CustomStringConvertible.description.getter();
    v62 = sub_1000105AC(v60, v61, v480);

    v63 = v58;
    *(v58 + 4) = v62;
    v53 = v470;
    v470(v59, v23);
    _os_log_impl(&_mh_execute_header, v54, v56, "Launched with %{public}s", v63, 0xCu);
    sub_10000959C(v430);
  }

  else
  {

    v53(v472, v23);
  }

  v64 = v459;
  v65 = URL.isSafariScriptURL.getter();
  v66 = v471;
  v67 = v465;
  v474 = v48;
  if (v65)
  {
    v68 = v451;
    v69 = v468;
    v468(v451, v48, v23);
    v70 = object;
    v69(object, v68, v23);
    v53(v68, v23);
    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v472 = v23;
      v74 = v73;
      v75 = swift_slowAlloc();
      *&v480[0] = v75;
      *v74 = 136446210;
      sub_1002CF674(&qword_1011A4850, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v76 = dispatch thunk of CustomStringConvertible.description.getter();
      v78 = v47;
      v79 = v53;
      v80 = sub_1000105AC(v76, v77, v480);

      *(v74 + 4) = v80;
      v79(v70, v472);
      v47 = v78;
      _os_log_impl(&_mh_execute_header, v71, v72, "Handled -> %{public}s", v74, 0xCu);
      sub_10000959C(v75);

      v23 = v472;
    }

    else
    {
      v53(v70, v23);
    }

    v85 = v469;
    sub_1000095E8(v469, &qword_10118A240, &qword_100EC5A00);
    v84 = v467;
    v87 = v455;
    v69(v85, v474, v23);
    swift_storeEnumTagMultiPayload();
    v87(v85, 0, 1, v84);
    v86 = v464;
    v66 = v471;
    goto LABEL_32;
  }

  URLComponents.init(url:resolvingAgainstBaseURL:)();
  v81 = v457;
  v82 = *(v457 + 48);
  v83 = v458;
  if (v82(v64, 1, v458) == 1)
  {
    sub_1000095E8(v64, &qword_101194980, &qword_100ECA390);
    v84 = v467;
    v85 = v469;
LABEL_11:
    v86 = v464;
    goto LABEL_32;
  }

  v88 = v66;
  v472 = v23;
  v89 = *(v81 + 32);
  v89(v67, v64, v83);
  URLComponents.scheme.getter();
  if (!v90)
  {
    (*(v81 + 8))(v67, v83);
    goto LABEL_31;
  }

  v91 = String.lowercased()();

  v92 = sub_1002CF1C4(v91);
  if (v92 == 4 || (v93 = v92, object = v91._object, v94 = URLComponents.host.getter(), !v95))
  {
    (*(v457 + 8))(v67, v458);

    goto LABEL_31;
  }

  v96 = v95;
  v97 = v93;
  if (v93 > 1u)
  {
    v136 = v474;
    if (v97 != 2)
    {
      goto LABEL_265;
    }

    v137 = v94;

    URL._bridgeToObjectiveC()(v138);
    v140 = v139;
    v141 = [v139 searchResultIdentifier];

    v23 = v472;
    if (v141)
    {
      v142 = [v141 unsignedLongLongValue];

      v143 = Logger.logObject.getter();
      v144 = static os_log_type_t.default.getter();
      v145 = os_log_type_enabled(v143, v144);
      v146 = v471;
      if (v145)
      {
        v147 = swift_slowAlloc();
        *&v480[0] = swift_slowAlloc();
        *v147 = 136446722;
        *(v147 + 4) = sub_1000105AC(0x686372616573, 0xE600000000000000, v480);
        *(v147 + 12) = 2082;

        v148 = sub_1000105AC(v137, v96, v480);

        *(v147 + 14) = v148;
        swift_bridgeObjectRelease_n();
        *(v147 + 22) = 2050;
        *(v147 + 24) = v142;

        _os_log_impl(&_mh_execute_header, v143, v144, "Handled %{public}s %{public}s %{public}llu", v147, 0x20u);
        swift_arrayDestroy();

        v23 = v472;
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      (*(v457 + 8))(v465, v458);
      v85 = v469;
      sub_1000095E8(v469, &qword_10118A240, &qword_100EC5A00);
      v84 = v467;
      v86 = v464;
      v171 = swift_allocObject();
      *(v171 + 16) = v142;
      *v85 = sub_1002CF210;
      *(v85 + 1) = v171;
      swift_storeEnumTagMultiPayload();
      v455(v85, 0, 1, v84);
      v66 = v146;
    }

    else
    {

      v154 = Logger.logObject.getter();
      v155 = static os_log_type_t.error.getter();
      v156 = os_log_type_enabled(v154, v155);
      v157 = v469;
      v158 = v471;
      v86 = v464;
      v159 = v465;
      if (v156)
      {
        v160 = swift_slowAlloc();
        *v160 = 0;
        _os_log_impl(&_mh_execute_header, v154, v155, "Unable to resolve item PID", v160, 2u);
        v23 = v472;
      }

      (*(v457 + 8))(v159, v458);
      v66 = v158;
      v85 = v157;
      v84 = v467;
    }

LABEL_32:
    sub_1000089F8(v85, v86, &qword_10118A240, &qword_100EC5A00);
    if ((*(v461 + 48))(v86, 1, v84) == 1)
    {
      sub_1000095E8(v86, &qword_10118A240, &qword_100EC5A00);
      v113 = v453;
      v114 = v474;
      v115 = v468;
      v468(v453, v474, v23);
      v459 = v47;
      v115(v66, v113, v23);
      v116 = v470;
      v470(v113, v23);
      v117 = Logger.logObject.getter();
      v118 = v66;
      v119 = static os_log_type_t.default.getter();
      v120 = os_log_type_enabled(v117, v119);
      v121 = v462;
      if (v120)
      {
        v122 = swift_slowAlloc();
        v472 = v23;
        v123 = v122;
        v124 = swift_slowAlloc();
        *&v477 = v124;
        *v123 = 136446210;
        sub_1002CF674(&qword_1011A4850, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v125 = dispatch thunk of CustomStringConvertible.description.getter();
        v127 = sub_1000105AC(v125, v126, &v477);

        *(v123 + 4) = v127;
        v116(v118, v472);
        _os_log_impl(&_mh_execute_header, v117, v119, "Passing to resolver %{public}s", v123, 0xCu);
        sub_10000959C(v124);
        v115 = v468;
        v114 = v474;

        v23 = v472;
        v128 = v460;
      }

      else
      {

        v116(v118, v23);
        v128 = v460;
      }

      v130 = v463;
      v115((v463 + OBJC_IVAR____TtC5Music13LaunchOptions_kind), v114, v23);
      swift_storeEnumTagMultiPayload();
      v85 = v469;
      if (!v121)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v129 = v454;
      sub_1002CF4E8(v86, v454, type metadata accessor for LaunchOptions.Kind);
      v130 = v463;
      sub_1002CF4E8(v129, v463 + OBJC_IVAR____TtC5Music13LaunchOptions_kind, type metadata accessor for LaunchOptions.Kind);
      v121 = v462;
      v116 = v470;
      v128 = v460;
      if (!v462)
      {
LABEL_39:

        goto LABEL_40;
      }
    }

    v131 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1002C9C20(v121, v131, v132);

    v133 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1002C9D6C(v121, v133, v134);

LABEL_40:
    v116(v474, v23);
    sub_1000095E8(v85, &qword_10118A240, &qword_100EC5A00);
    return v130;
  }

  if (!v93)
  {
    v98 = v94;
    v99 = v95;

    URL.query.getter();
    v100 = v469;
    v66 = v88;
    if (!v101)
    {
LABEL_73:

      v180 = Logger.logObject.getter();
      v181 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v180, v181))
      {
        v182 = swift_slowAlloc();
        *&v480[0] = swift_slowAlloc();
        *v182 = 136446466;
        *(v182 + 4) = sub_1000105AC(0xD000000000000012, 0x8000000100E3C050, v480);
        *(v182 + 12) = 2082;

        v183 = sub_1000105AC(v98, v99, v480);

        *(v182 + 14) = v183;
        swift_bridgeObjectRelease_n();

        _os_log_impl(&_mh_execute_header, v180, v181, "Ignored %{public}s %{public}s", v182, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      (*(v457 + 8))(v465, v458);
      v84 = v467;
      v23 = v472;
      v86 = v464;
      v85 = v100;
      goto LABEL_32;
    }

    v459 = v47;
    v102 = String._bridgeToObjectiveC()();
    v103 = [v102 queryKeysAndValues];

    if (v103)
    {
      v104 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v475 = 0x646D636975;
      v476 = 0xE500000000000000;
      AnyHashable.init<A>(_:)();
      sub_1004075E8(v480, v104, &v477);

      sub_10001621C(v480);
      if (*(&v478 + 1))
      {
        if (swift_dynamicCast())
        {
          v106 = v475;
          v105 = v476;
          v85 = v100;
          if (v475 == 0xD000000000000017 && 0x8000000100E451C0 == v476 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            swift_bridgeObjectRetain_n();
            v107 = Logger.logObject.getter();
            v108 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v107, v108))
            {
              v109 = swift_slowAlloc();
              *&v480[0] = swift_slowAlloc();
              *v109 = 136446466;
              *(v109 + 4) = sub_1000105AC(0xD000000000000012, 0x8000000100E3C050, v480);
              *(v109 + 12) = 2082;

              v110 = sub_1000105AC(v106, v105, v480);

              *(v109 + 14) = v110;
              swift_bridgeObjectRelease_n();

              _os_log_impl(&_mh_execute_header, v107, v108, "Handled %{public}s %{public}s", v109, 0x16u);
              swift_arrayDestroy();
              v111 = v469;

              v85 = v111;

              (*(v457 + 8))(v465, v458);
              v112 = v111;
            }

            else
            {

              swift_bridgeObjectRelease_n();

              (*(v457 + 8))(v465, v458);
              v112 = v100;
            }

            sub_1000095E8(v112, &qword_10118A240, &qword_100EC5A00);
            v66 = v471;
            v47 = v459;
            v86 = v464;
            *v85 = sub_1002BE694;
            *(v85 + 1) = 0;
            v84 = v467;
            swift_storeEnumTagMultiPayload();
            v455(v85, 0, 1, v84);
            v23 = v472;
            goto LABEL_32;
          }

          swift_bridgeObjectRetain_n();

          v203 = Logger.logObject.getter();
          v204 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v203, v204))
          {
            v205 = swift_slowAlloc();
            LODWORD(v456) = v204;
            v206 = v205;
            *&v480[0] = swift_slowAlloc();
            *v206 = 136446722;
            *(v206 + 4) = sub_1000105AC(0xD000000000000012, 0x8000000100E3C050, v480);
            *(v206 + 12) = 2082;

            v207 = sub_1000105AC(v98, v99, v480);

            *(v206 + 14) = v207;
            swift_bridgeObjectRelease_n();
            *(v206 + 22) = 2082;

            v208 = sub_1000105AC(v106, v105, v480);

            *(v206 + 24) = v208;
            swift_bridgeObjectRelease_n();

            _os_log_impl(&_mh_execute_header, v203, v456, "Ignored %{public}s %{public}s %{public}s", v206, 0x20u);
            swift_arrayDestroy();
            v209 = v469;

            v85 = v209;
          }

          else
          {

            swift_bridgeObjectRelease_n();
            swift_bridgeObjectRelease_n();
          }

          (*(v457 + 8))(v465, v458);
          v84 = v467;
          goto LABEL_119;
        }
      }

      else
      {

        sub_1000095E8(&v477, &unk_101183F30, qword_100EBF960);
      }

      v66 = v471;
      v47 = v459;
      goto LABEL_73;
    }

    __break(1u);
    goto LABEL_243;
  }

  v149 = v94;
  v150 = v458;
  if (v94 == 6447476 && v95 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v451 = v96;

    v151 = v448;
    URLComponents.init(url:resolvingAgainstBaseURL:)();
    v152 = v82(v151, 1, v150);
    v153 = v149;
    if (v152 == 1)
    {
      sub_1000095E8(v151, &qword_101194980, &qword_100ECA390);
LABEL_80:
      v184 = v451;

      v185 = Logger.logObject.getter();
      v186 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v185, v186))
      {
        v187 = swift_slowAlloc();
        *&v480[0] = swift_slowAlloc();
        *v187 = 136446466;
        *(v187 + 4) = sub_1000105AC(0x636973756DLL, 0xE500000000000000, v480);
        *(v187 + 12) = 2082;

        v188 = sub_1000105AC(v153, v184, v480);

        *(v187 + 14) = v188;
        swift_bridgeObjectRelease_n();

        _os_log_impl(&_mh_execute_header, v185, v186, "Ignored %{public}s %{public}s", v187, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      (*(v457 + 8))(v67, v458);
      v84 = v467;
      v23 = v472;
      v86 = v464;
      v66 = v88;
      v85 = v469;
      goto LABEL_32;
    }

    v161 = v447;
    v89(v447, v151, v150);
    v162 = URLComponents.queryItemsDictionary.getter();
    if (!v162)
    {
      (*(v457 + 8))(v161, v150);
      goto LABEL_80;
    }

    v163 = v162;
    v164 = v149;
    v165 = sub_100407584(6447476, 0xE300000000000000, v162);
    v167 = v457;
    if (!v166)
    {
      (*(v457 + 8))(v161, v458);
      goto LABEL_79;
    }

    v168 = v165;
    v169 = v166;

    v482._countAndFlagsBits = v168;
    v482._object = v169;
    v170 = sub_10003F3A8(v482);
    if (v170 == 7)
    {
      (*(v167 + 8))(v161, v458);

LABEL_79:

      v153 = v164;
      goto LABEL_80;
    }

    v189 = v170;

    swift_bridgeObjectRetain_n();
    v190 = Logger.logObject.getter();
    v191 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v190, v191))
    {
      v192 = swift_slowAlloc();
      *&v480[0] = swift_slowAlloc();
      *v192 = 136446466;
      *(v192 + 4) = sub_1000105AC(0x636973756DLL, 0xE500000000000000, v480);
      *(v192 + 12) = 2082;

      v193 = sub_1000105AC(v168, v169, v480);

      *(v192 + 14) = v193;
      swift_bridgeObjectRelease_n();
      _os_log_impl(&_mh_execute_header, v190, v191, "Handled %{public}s tab=%{public}s", v192, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }

    type metadata accessor for AppInterfaceContext.Activity.Destination(0);
    v215 = swift_allocBox();
    v450 = v216;
    swift_storeEnumTagMultiPayload();
    v217 = sub_100017984(v189, 0);
    v218 = v458;
    if (v217)
    {
      v459 = v47;
      v219 = sub_100407584(0x2D7972617262696CLL, 0xEC000000756E656DLL, v163);
      if (v220)
      {
        v221 = v219;
        v222 = v220;

        v483._countAndFlagsBits = v221;
        v483._object = v222;
        v223 = sub_1002CF218(v483);
        if (v223 != 13)
        {
          v240 = v223;
          swift_bridgeObjectRetain_n();
          v241 = Logger.logObject.getter();
          v242 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v241, v242))
          {
            v243 = swift_slowAlloc();
            v449 = swift_slowAlloc();
            *&v480[0] = v449;
            *v243 = 136446466;
            *(v243 + 4) = sub_1000105AC(0x636973756DLL, 0xE500000000000000, v480);
            *(v243 + 12) = 2082;

            v244 = sub_1000105AC(v221, v222, v480);

            *(v243 + 14) = v244;
            swift_bridgeObjectRelease_n();

            _os_log_impl(&_mh_execute_header, v241, v242, "Handled %{public}s library-menu=%{public}s", v243, 0x16u);
            swift_arrayDestroy();
          }

          else
          {

            swift_bridgeObjectRelease_n();
          }

          v245 = *(v457 + 8);
          v246 = v458;
          v245(v447, v458);
          v245(v465, v246);
          v237 = v469;
          sub_1000095E8(v469, &qword_10118A240, &qword_100EC5A00);
          v247 = v450;
          sub_1002CF550(v450, type metadata accessor for AppInterfaceContext.Activity.Destination);
          *v247 = v240;
          v88 = v471;
          v47 = v459;
          v86 = v464;
          v239 = v455;
          goto LABEL_134;
        }

        v224 = v215;
        v225 = v189;
      }

      else
      {
        v224 = v215;
        v225 = v189;
      }

      v88 = v471;
      v47 = v459;
    }

    else
    {
      v224 = v215;
      v225 = v189;
    }

    v235 = v465;

    v236 = *(v457 + 8);
    v236(v447, v218);
    v236(v235, v218);
    v237 = v469;
    sub_1000095E8(v469, &qword_10118A240, &qword_100EC5A00);
    v238 = v450;
    sub_1002CF550(v450, type metadata accessor for AppInterfaceContext.Activity.Destination);
    *v238 = v225;
    v238[1] = 1;
    v86 = v464;
    v239 = v455;
    v215 = v224;
LABEL_134:
    swift_storeEnumTagMultiPayload();
    *v237 = sub_1002CF478;
    v237[1] = v215;
    v84 = v467;
    swift_storeEnumTagMultiPayload();
    v239(v237, 0, 1, v84);
    v23 = v472;
    v66 = v88;
    v85 = v237;
    goto LABEL_32;
  }

  if (v149 == 0x6C70736964726163 && v96 == 0xEA00000000007961 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v82 = v149;

    v173 = URL.lastPathComponent.getter();
    v174 = v172;
    if (v173 == 0xD000000000000010 && 0x8000000100E442B0 == v172 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      URL.query.getter();
      if (!v175)
      {
        goto LABEL_112;
      }

      v176 = String._bridgeToObjectiveC()();
      v177 = [v176 queryKeysAndValues];

      if (v177)
      {

        v178 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        v475 = 0x6574616D696E61;
        v476 = 0xE700000000000000;
        AnyHashable.init<A>(_:)();
        sub_1004075E8(v480, v178, &v477);

        sub_10001621C(v480);
        if (*(&v478 + 1))
        {
          if (swift_dynamicCast())
          {
            v179 = String.BOOLValue.getter();

LABEL_113:
            swift_bridgeObjectRetain_n();
            v226 = Logger.logObject.getter();
            v227 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v226, v227))
            {
              v228 = swift_slowAlloc();
              *&v480[0] = swift_slowAlloc();
              *v228 = 136446722;
              *(v228 + 4) = sub_1000105AC(0x636973756DLL, 0xE500000000000000, v480);
              *(v228 + 12) = 2082;

              v229 = sub_1000105AC(v173, v174, v480);

              *(v228 + 14) = v229;
              swift_bridgeObjectRelease_n();
              *(v228 + 22) = 1026;
              *(v228 + 24) = v179 & 1;

              _os_log_impl(&_mh_execute_header, v226, v227, "Handled %{public}s %{public}s animate=%{BOOL,public}d", v228, 0x1Cu);
              swift_arrayDestroy();

              (*(v457 + 8))(v465, v458);
            }

            else
            {

              swift_bridgeObjectRelease_n();

              (*(v457 + 8))(v67, v458);
            }

            v230 = v469;
            sub_1000095E8(v469, &qword_10118A240, &qword_100EC5A00);
            v23 = v472;
            v86 = v464;
            v231 = swift_allocObject();
            *(v231 + 16) = v179 & 1;
            *v230 = sub_1002CF470;
            v230[1] = v231;
            v84 = v467;
            swift_storeEnumTagMultiPayload();
            v455(v230, 0, 1, v84);
            v66 = v88;
            v85 = v230;
            goto LABEL_32;
          }
        }

        else
        {
          sub_1000095E8(&v477, &unk_101183F30, qword_100EBF960);
        }

LABEL_112:
        v179 = 1;
        goto LABEL_113;
      }

      __break(1u);
LABEL_259:
      v136 = v474;
      v96 = v451;
      if (v459 == 0x78696D6F747561 && v451 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && *DeviceCapabilities.isInternalInstall.unsafeMutableAddressor() == 1)
      {

        v383 = v437;
        URLComponents.init(url:resolvingAgainstBaseURL:)();
        v384 = v432;
        sub_1000089F8(v383, v432, &qword_101194980, &qword_100ECA390);
        if (v82(v384, 1, v458) == 1)
        {
          sub_1000095E8(v432, &qword_101194980, &qword_100ECA390);
        }

        else
        {
          v407 = v432;
          v408 = URLComponents.queryItemsDictionary.getter();
          v409 = *(v457 + 8);
          v409(v407, v458);
          if (v408)
          {

            v410 = sub_100407584(0x676E696F6774756FLL, 0xE800000000000000, v408);
            v412 = v411;

            if (v412)
            {
              v413 = sub_100407584(0x676E696D6F636E69, 0xE800000000000000, v408);
              v415 = v414;

              if (v415)
              {
                v416 = [objc_allocWithZone(MPCModelStorePlaybackItemsRequest) init];
                sub_10010FC20(&unk_101181640, &qword_100EBD090);
                v417 = swift_allocObject();
                *(v417 + 16) = xmmword_100EBDC20;
                *(v417 + 32) = v410;
                *(v417 + 40) = v412;
                *(v417 + 48) = v413;
                *(v417 + 56) = v415;
                isa = Array._bridgeToObjectiveC()().super.isa;

                [v416 setStoreIDs:isa];

                v419 = [objc_allocWithZone(MPCModelPlaybackIntentTracklistToken) init];
                [v419 setRequest:v416];
                v420 = [objc_allocWithZone(MPCPlaybackIntent) init];
                [v420 setTracklistToken:v419];
                [v420 setTracklistSource:3];
                [v420 setShuffleMode:0];
                v421 = v435;
                *v435 = v420;
                swift_storeEnumTagMultiPayload();
                v481 = 0;
                memset(v480, 0, sizeof(v480));
                v479 = 0;
                v477 = 0u;
                v478 = 0u;
                v422 = v420;
                v423 = v433;
                PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v421, v480, 3, 0, 0, 1, 0, 1, v433, 0, &v477);

                sub_1000095E8(v437, &qword_101194980, &qword_100ECA390);
                v409(v465, v458);
                v85 = v469;
                sub_1000095E8(v469, &qword_10118A240, &qword_100EC5A00);
                v424 = v467;
                swift_storeEnumTagMultiPayload();
                v455(v423, 0, 1, v424);
                v425 = v423;
                v84 = v424;
                sub_10003D17C(v425, v85, &qword_10118A240, &qword_100EC5A00);
                v23 = v472;
                goto LABEL_270;
              }
            }
          }
        }

        v426 = Logger.logObject.getter();
        v427 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v426, v427))
        {
          v428 = swift_slowAlloc();
          *&v477 = 0;
          v475 = 0;
          *v428 = 0;
          *&v480[0] = v428 + 2;
          sub_1002B86E0(_swiftEmptyArrayStorage, v480, &v477, &v475);
          _os_log_impl(&_mh_execute_header, v426, v427, "Unable to get song IDs from URL", v428, 2u);
        }

        sub_1000095E8(v437, &qword_101194980, &qword_100ECA390);
        goto LABEL_104;
      }

LABEL_265:
      v451 = v96;
      v385 = v449;
      v23 = v472;
      v386 = v468;
      v468(v449, v136, v472);
      v387 = v450;
      v386(v450, v385, v23);
      v388 = v470;
      v470(v385, v23);
      v389 = Logger.logObject.getter();
      v390 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v389, v390))
      {
        v391 = swift_slowAlloc();
        v392 = swift_slowAlloc();
        *&v480[0] = v392;
        *v391 = 136446210;
        sub_1002CF674(&qword_1011A4850, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v393 = dispatch thunk of CustomStringConvertible.description.getter();
        v395 = sub_1000105AC(v393, v394, v480);

        *(v391 + 4) = v395;

        v388(v387, v472);
        _os_log_impl(&_mh_execute_header, v389, v390, "Unresolved kind for URL %{public}s.", v391, 0xCu);
        sub_10000959C(v392);

        v23 = v472;
      }

      else
      {

        v388(v387, v23);
      }

      (*(v457 + 8))(v465, v458);
      v84 = v467;
      goto LABEL_269;
    }

    swift_bridgeObjectRetain_n();

    v210 = Logger.logObject.getter();
    v211 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v210, v211))
    {

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();

      (*(v457 + 8))(v67, v458);
      goto LABEL_122;
    }

    v212 = swift_slowAlloc();
    *&v480[0] = swift_slowAlloc();
    *v212 = 136446722;
    *(v212 + 4) = sub_1000105AC(0x636973756DLL, 0xE500000000000000, v480);
    *(v212 + 12) = 2082;

    v213 = sub_1000105AC(v82, v96, v480);

    *(v212 + 14) = v213;
    swift_bridgeObjectRelease_n();
    *(v212 + 22) = 2082;

    v214 = sub_1000105AC(v173, v174, v480);

    *(v212 + 24) = v214;
    swift_bridgeObjectRelease_n();

    _os_log_impl(&_mh_execute_header, v210, v211, "Ignored %{public}s %{public}s %{public}s", v212, 0x20u);
    swift_arrayDestroy();

    goto LABEL_103;
  }

  if (v149 == 0x73636972796CLL && v96 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v194 = v149;
    v459 = v47;

    v196 = URL.lastPathComponent.getter();
    v197 = v195;
    if (v196 == 0x79616C702D776F6ELL && v195 == 0xEB00000000676E69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v196 == 0x6979616C70776F6ELL && v197 == 0xEA0000000000676ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      swift_bridgeObjectRetain_n();

      v198 = Logger.logObject.getter();
      v199 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v198, v199))
      {
        v200 = swift_slowAlloc();
        *&v480[0] = swift_slowAlloc();
        *v200 = 136446722;
        *(v200 + 4) = sub_1000105AC(0x636973756DLL, 0xE500000000000000, v480);
        *(v200 + 12) = 2082;

        v201 = sub_1000105AC(v194, v96, v480);

        *(v200 + 14) = v201;
        swift_bridgeObjectRelease_n();
        *(v200 + 22) = 2082;

        v202 = sub_1000105AC(v196, v197, v480);

        *(v200 + 24) = v202;
        swift_bridgeObjectRelease_n();

        _os_log_impl(&_mh_execute_header, v198, v199, "Handled %{public}s %{public}s %{public}s", v200, 0x20u);
        swift_arrayDestroy();
      }

      else
      {

        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();
      }

      (*(v457 + 8))(v67, v458);
      v85 = v469;
      sub_1000095E8(v469, &qword_10118A240, &qword_100EC5A00);
      v84 = v467;
      v23 = v472;
      v86 = v464;
      *v85 = 1;
      swift_storeEnumTagMultiPayload();
      v455(v85, 0, 1, v84);
      v66 = v471;
      v47 = v459;
      goto LABEL_32;
    }

    if (v196 == 0x6C61646F6DLL && v197 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v252 = URLComponents.queryItemsDictionary.getter();
      if (v252)
      {
        sub_100407584(0x64692D65726F7473, 0xE800000000000000, v252);
        if (v253)
        {

          v450 = MusicItemID.init(_:)();
          v255 = v254;
          swift_bridgeObjectRetain_n();

          v256 = Logger.logObject.getter();
          v257 = static os_log_type_t.default.getter();
          v449 = v256;
          if (os_log_type_enabled(v256, v257))
          {
            v258 = swift_slowAlloc();
            v448 = swift_slowAlloc();
            *&v480[0] = v448;
            *v258 = 136446722;
            *(v258 + 4) = sub_1000105AC(0x636973756DLL, 0xE500000000000000, v480);
            *(v258 + 12) = 2082;

            v259 = sub_1000105AC(v194, v96, v480);

            *(v258 + 14) = v259;
            swift_bridgeObjectRelease_n();
            *(v258 + 22) = 2082;

            v260 = MusicItemID.description.getter();
            v262 = v261;

            v263 = sub_1000105AC(v260, v262, v480);

            *(v258 + 24) = v263;
            swift_bridgeObjectRelease_n();

            v264 = v449;
            _os_log_impl(&_mh_execute_header, v449, v257, "Handled %{public}s %{public}s %{public}s", v258, 0x20u);
            swift_arrayDestroy();
          }

          else
          {

            swift_bridgeObjectRelease_n();
            swift_bridgeObjectRelease_n();
          }

          (*(v457 + 8))(v465, v458);
          sub_1000095E8(v469, &qword_10118A240, &qword_100EC5A00);
          v317 = swift_allocObject();
          *(v317 + 16) = v450;
          *(v317 + 24) = v255;
          v85 = v469;
          *v469 = sub_1002CF468;
          *(v85 + 1) = v317;
          v84 = v467;
          swift_storeEnumTagMultiPayload();
          v455(v85, 0, 1, v84);
LABEL_119:
          v23 = v472;
LABEL_120:
          v66 = v471;
          v47 = v459;
          goto LABEL_11;
        }
      }
    }

    swift_bridgeObjectRetain_n();

    v311 = Logger.logObject.getter();
    v312 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v311, v312))
    {
      v313 = swift_slowAlloc();
      *&v480[0] = swift_slowAlloc();
      *v313 = 136446722;
      *(v313 + 4) = sub_1000105AC(0x636973756DLL, 0xE500000000000000, v480);
      *(v313 + 12) = 2082;

      v314 = sub_1000105AC(v194, v96, v480);

      *(v313 + 14) = v314;
      swift_bridgeObjectRelease_n();
      *(v313 + 22) = 2082;

      v315 = sub_1000105AC(v196, v197, v480);

      *(v313 + 24) = v315;
      swift_bridgeObjectRelease_n();

      _os_log_impl(&_mh_execute_header, v311, v312, "Ignored %{public}s %{public}s %{public}s", v313, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
    }

    (*(v457 + 8))(v465, v458);
LABEL_196:
    v84 = v467;
    v23 = v472;
    v85 = v469;
    goto LABEL_120;
  }

  if (v149 == 0x6B63756C746F70 && v96 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    LOBYTE(v480[0]) = 0;
    v232 = sub_100025CE0();
    if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v232))
    {
      v459 = v47;
      v233 = v445;
      URLComponents.init(url:resolvingAgainstBaseURL:)();
      v234 = v458;
      if (v82(v233, 1, v458) == 1)
      {

        (*(v457 + 8))(v465, v234);
        sub_1000095E8(v233, &qword_101194980, &qword_100ECA390);
        goto LABEL_196;
      }

      v89(v443, v233, v234);
      v265 = URLComponents.queryItemsDictionary.getter();
      if (v265)
      {
        v266 = v265;
        sub_100407584(25705, 0xE200000000000000, v265);
        if (v267)
        {
          sub_100407584(7955819, 0xE300000000000000, v266);
          v269 = v268;

          if (v269)
          {
            v270 = String._bridgeToObjectiveC()();

            v271 = String._bridgeToObjectiveC()();

            v272 = [objc_opt_self() propertiesWithSessionIdentifier:v270 sessionKey:v271];

            sub_100009F78(0, &unk_10118A248, ICLiveLinkIdentity_ptr);
            sub_1002C0CEC(UIScreen.Dimensions.size.getter, 0);
            v274 = v273;
            v275 = [objc_opt_self() sharedSessionIntentWithProperties:v272 identity:v273];

            v276 = *(v457 + 8);
            v277 = v458;
            v276(v443, v458);
            v276(v465, v277);
            v84 = v467;
            v66 = v471;
            v23 = v472;
            v85 = v469;
            v47 = v459;
            v86 = v464;
            if (!v275)
            {
              goto LABEL_32;
            }

            sub_1000095E8(v469, &qword_10118A240, &qword_100EC5A00);
            v278 = v440;
            v468(v440, v474, v23);
            v279 = v84;
            v280 = v442;
            v281 = (*(v442 + 80) + 24) & ~*(v442 + 80);
            v282 = swift_allocObject();
            *(v282 + 16) = v275;
            v283 = v282 + v281;
            v23 = v472;
            (*(v280 + 32))(v283, v278, v472);
            v84 = v279;
            *v85 = sub_1002CF3F4;
            *(v85 + 1) = v282;
            swift_storeEnumTagMultiPayload();
            v284 = v85;
            v285 = v279;
            goto LABEL_157;
          }
        }
      }

      v318 = *(v457 + 8);
      v319 = v458;
      v318(v443, v458);
      v318(v465, v319);
      goto LABEL_196;
    }

    (*(v457 + 8))(v67, v458);
LABEL_31:
    v84 = v467;
    v23 = v472;
    v86 = v464;
    v66 = v88;
    v85 = v469;
    goto LABEL_32;
  }

  v459 = v149;
  if (v149 == 0x696C646572616873 && v96 == 0xEF676E696E657473 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    swift_bridgeObjectRetain_n();
    v248 = Logger.logObject.getter();
    v249 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v248, v249))
    {
      v250 = swift_slowAlloc();
      *&v480[0] = swift_slowAlloc();
      *v250 = 136446466;
      *(v250 + 4) = sub_1000105AC(0x636973756DLL, 0xE500000000000000, v480);
      *(v250 + 12) = 2082;

      v251 = sub_1000105AC(v459, v96, v480);

      *(v250 + 14) = v251;
      swift_bridgeObjectRelease_n();

      _os_log_impl(&_mh_execute_header, v248, v249, "Handled %{public}s %{public}s sharedlistening", v250, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }

    v286 = v444;
    URLComponents.init(url:resolvingAgainstBaseURL:)();
    v287 = v286;
    v288 = v446;
    sub_1000089F8(v287, v446, &qword_101194980, &qword_100ECA390);
    if (v82(v288, 1, v458) == 1)
    {

      sub_1000095E8(v444, &qword_101194980, &qword_100ECA390);
      (*(v457 + 8))(v465, v458);
      sub_1000095E8(v469, &qword_10118A240, &qword_100EC5A00);
      v289 = v446;
      v290 = &qword_101194980;
      v291 = &qword_100ECA390;
    }

    else
    {
      v292 = v446;
      v293 = URLComponents.queryItemsDictionary.getter();
      v294 = *(v457 + 8);
      v294(v292, v458);
      if (v293)
      {
        sub_100407584(0x72656C61776F6873, 0xE900000000000074, v293);
        v296 = v295;

        if (v296)
        {
          v297 = String.BOOLValue.getter();

          if (v297)
          {
            if (qword_10117F600 != -1)
            {
              swift_once();
            }

            v298 = qword_101218AD0;

            sub_1000095E8(v444, &qword_101194980, &qword_100ECA390);
            v294(v465, v458);
            sub_1000095E8(v469, &qword_10118A240, &qword_100EC5A00);
            swift_beginAccess();
            v299 = v298[8];
            if (v299 != 1)
            {
              v301 = v298[9];
              v300 = v298[10];
              v302 = v298[7];
              v303 = swift_allocObject();
              v303[2] = v302;
              v303[3] = v299;
              v303[4] = v301;
              v303[5] = v300;
              v304 = v469;
              *v469 = sub_1002CF3E8;
              *(v304 + 1) = v303;
              swift_storeEnumTagMultiPayload();

LABEL_171:
              v85 = v469;
              v305 = v469;
              v84 = v467;
LABEL_191:
              v455(v305, 0, 1, v84);
              v23 = v472;
LABEL_270:
              v66 = v471;
              goto LABEL_11;
            }

LABEL_170:
            *v469 = 2;
            swift_storeEnumTagMultiPayload();
            goto LABEL_171;
          }
        }
      }

      sub_1000095E8(v444, &qword_101194980, &qword_100ECA390);
      v294(v465, v458);
      v290 = &qword_10118A240;
      v291 = &qword_100EC5A00;
      v289 = v469;
    }

    sub_1000095E8(v289, v290, v291);
    goto LABEL_170;
  }

  v451 = v96;
  if (v459 == 0xD000000000000010 && 0x8000000100E442B0 == v451 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v459 == 0x70776F6E776F6873 && v451 == 0xEE00676E6979616CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    swift_bridgeObjectRetain_n();
    v306 = Logger.logObject.getter();
    v307 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v306, v307))
    {
      v308 = swift_slowAlloc();
      *&v480[0] = swift_slowAlloc();
      *v308 = 136446466;
      *(v308 + 4) = sub_1000105AC(0x636973756DLL, 0xE500000000000000, v480);
      *(v308 + 12) = 2082;
      v309 = v451;

      v310 = sub_1000105AC(v459, v309, v480);

      *(v308 + 14) = v310;
      swift_bridgeObjectRelease_n();

      _os_log_impl(&_mh_execute_header, v306, v307, "Handled %{public}s %{public}s shownowplaying", v308, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    (*(v457 + 8))(v465, v458);
    sub_1000095E8(v469, &qword_10118A240, &qword_100EC5A00);
    v316 = 5;
LABEL_189:
    v85 = v469;
    *v469 = v316;
    v84 = v467;
LABEL_190:
    swift_storeEnumTagMultiPayload();
    v305 = v85;
    goto LABEL_191;
  }

  if (v459 == 0x72616873776F6873 && v451 == 0xEB00000000676E69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    swift_bridgeObjectRetain_n();
    v320 = Logger.logObject.getter();
    v321 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v320, v321))
    {
      v322 = swift_slowAlloc();
      *&v480[0] = swift_slowAlloc();
      *v322 = 136446466;
      *(v322 + 4) = sub_1000105AC(0x636973756DLL, 0xE500000000000000, v480);
      *(v322 + 12) = 2082;
      v323 = v451;

      v324 = sub_1000105AC(v459, v323, v480);

      *(v322 + 14) = v324;
      swift_bridgeObjectRelease_n();

      _os_log_impl(&_mh_execute_header, v320, v321, "Handled %{public}s %{public}s showsharing", v322, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    (*(v457 + 8))(v465, v458);
    sub_1000095E8(v469, &qword_10118A240, &qword_100EC5A00);
    v316 = 3;
    goto LABEL_189;
  }

  if ((v459 != 0x61636F4C776F6873 || v451 != 0xE90000000000006CLL) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    if (v459 == 0x73655370756F7267 && v451 == 0xEC0000006E6F6973 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      if (URL.lastPathComponent.getter() == 0x73676E6974746573 && v334 == 0xE800000000000000)
      {

        (*(v457 + 8))(v465, v458);
        v84 = v467;
        v66 = v471;
        v23 = v472;
        v85 = v469;
        v86 = v464;
      }

      else
      {
        v335 = _stringCompareWithSmolCheck(_:_:expecting:)();

        (*(v457 + 8))(v465, v458);
        v84 = v467;
        v66 = v471;
        v23 = v472;
        v85 = v469;
        v86 = v464;
        if ((v335 & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      sub_1000095E8(v85, &qword_10118A240, &qword_100EC5A00);
      swift_storeEnumTagMultiPayload();
      v284 = v85;
      v285 = v84;
LABEL_157:
      v455(v284, 0, 1, v285);
      goto LABEL_32;
    }

    if ((v459 != 0x7473696C79616C70 || v451 != 0xE800000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      if (v459 == 0x686372616573 && v451 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v365 = v436;
        URLComponents.init(url:resolvingAgainstBaseURL:)();
        v366 = v365;
        v367 = v431;
        sub_1000089F8(v366, v431, &qword_101194980, &qword_100ECA390);
        if (v82(v367, 1, v458) == 1)
        {
          sub_1000095E8(v431, &qword_101194980, &qword_100ECA390);
          LODWORD(v449) = 0;
          v450 = 0;
          v368 = 0;
        }

        else
        {
          v378 = v431;
          v379 = URLComponents.queryItemsDictionary.getter();
          (*(v457 + 8))(v378, v458);
          if (v379)
          {

            v450 = sub_100407584(1836213620, 0xE400000000000000, v379);
            v368 = v380;

            sub_100407584(0x636F6C6563726F66, 0xEA00000000006C61, v379);
            v382 = v381;

            if (v382)
            {
              LODWORD(v449) = String.BOOLValue.getter();
            }

            else
            {
              LODWORD(v449) = 0;
            }
          }

          else
          {
            LODWORD(v449) = 0;
            v450 = 0;
            v368 = 0;
          }
        }

        swift_bridgeObjectRetain_n();

        v396 = Logger.logObject.getter();
        v397 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v396, v397))
        {
          v398 = swift_slowAlloc();
          v448 = swift_slowAlloc();
          *&v477 = v448;
          *v398 = 136446978;
          *(v398 + 4) = sub_1000105AC(0x636973756DLL, 0xE500000000000000, &v477);
          *(v398 + 12) = 2082;
          v399 = v451;

          v400 = sub_1000105AC(v459, v399, &v477);

          *(v398 + 14) = v400;
          swift_bridgeObjectRelease_n();
          *(v398 + 22) = 2082;
          *&v480[0] = v450;
          *(&v480[0] + 1) = v368;

          sub_10010FC20(&qword_1011815E0, &qword_100EBD050);
          v401 = String.init<A>(describing:)();
          v403 = sub_1000105AC(v401, v402, &v477);

          *(v398 + 24) = v403;
          swift_bridgeObjectRelease_n();
          *(v398 + 32) = 2082;
          if (v449)
          {
            v404 = 1702195828;
          }

          else
          {
            v404 = 0x65736C6166;
          }

          if (v449)
          {
            v405 = 0xE400000000000000;
          }

          else
          {
            v405 = 0xE500000000000000;
          }

          v406 = sub_1000105AC(v404, v405, &v477);

          *(v398 + 34) = v406;

          _os_log_impl(&_mh_execute_header, v396, v397, "Handled %{public}s %{public}s term=%{public}s forceLocal=%{public}s", v398, 0x2Au);
          swift_arrayDestroy();
        }

        else
        {

          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
        }

        sub_1000095E8(v436, &qword_101194980, &qword_100ECA390);
        (*(v457 + 8))(v465, v458);
        sub_1000095E8(v469, &qword_10118A240, &qword_100EC5A00);
        *(v463 + 16) = 4;
        v85 = v469;
        *v469 = v450;
        *(v85 + 1) = v368;
        v85[16] = v449 & 1;
        v84 = v467;
        goto LABEL_190;
      }

      goto LABEL_259;
    }

    v353 = URL.lastPathComponent.getter();
    v354 = v352;
    if (v353 == 7824750 && v352 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      swift_bridgeObjectRetain_n();

      v103 = Logger.logObject.getter();
      v355 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v103, v355))
      {
        v356 = swift_slowAlloc();
        *&v480[0] = swift_slowAlloc();
        *v356 = 136446722;
        *(v356 + 4) = sub_1000105AC(0x636973756DLL, 0xE500000000000000, v480);
        *(v356 + 12) = 2082;
        v357 = v451;

        v358 = sub_1000105AC(v459, v357, v480);

        *(v356 + 14) = v358;
        swift_bridgeObjectRelease_n();
        *(v356 + 22) = 2082;

        v359 = sub_1000105AC(v353, v354, v480);

        *(v356 + 24) = v359;
        swift_bridgeObjectRelease_n();

        _os_log_impl(&_mh_execute_header, v103, v355, "Handled %{public}s %{public}s %{public}s", v356, 0x20u);
        swift_arrayDestroy();

LABEL_244:

        (*(v457 + 8))(v465, v458);
        sub_1000095E8(v469, &qword_10118A240, &qword_100EC5A00);
        v85 = v469;
        *v469 = sub_1002C19FC;
        *(v85 + 1) = 0;
        v84 = v467;
        goto LABEL_190;
      }

LABEL_243:

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      goto LABEL_244;
    }

    swift_bridgeObjectRetain_n();

    v210 = Logger.logObject.getter();
    v369 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v210, v369))
    {
      v370 = swift_slowAlloc();
      *&v480[0] = swift_slowAlloc();
      *v370 = 136446722;
      *(v370 + 4) = sub_1000105AC(0x636973756DLL, 0xE500000000000000, v480);
      *(v370 + 12) = 2082;
      v371 = v451;

      v372 = sub_1000105AC(v459, v371, v480);

      *(v370 + 14) = v372;
      swift_bridgeObjectRelease_n();
      *(v370 + 22) = 2082;

      v373 = sub_1000105AC(v353, v354, v480);

      *(v370 + 24) = v373;
      swift_bridgeObjectRelease_n();

      _os_log_impl(&_mh_execute_header, v210, v369, "Ignored %{public}s %{public}s %{public}s", v370, 0x20u);
      swift_arrayDestroy();

LABEL_103:

LABEL_104:
      (*(v457 + 8))(v465, v458);
LABEL_122:
      v84 = v467;
      v23 = v472;
LABEL_269:
      v85 = v469;
      goto LABEL_270;
    }

    swift_bridgeObjectRelease_n();
LABEL_241:
    swift_bridgeObjectRelease_n();

    goto LABEL_104;
  }

  v325 = v439;
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  if (v82(v325, 1, v458) == 1)
  {
    sub_1000095E8(v439, &qword_101194980, &qword_100ECA390);
LABEL_238:

    v360 = Logger.logObject.getter();
    v361 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v360, v361))
    {
      v362 = swift_slowAlloc();
      *&v480[0] = swift_slowAlloc();
      *v362 = 136446466;
      *(v362 + 4) = sub_1000105AC(0x636973756DLL, 0xE500000000000000, v480);
      *(v362 + 12) = 2082;
      v363 = v451;

      v364 = sub_1000105AC(v459, v363, v480);

      *(v362 + 14) = v364;
      swift_bridgeObjectRelease_n();

      _os_log_impl(&_mh_execute_header, v360, v361, "Ignored %{public}s %{public}s", v362, 0x16u);
      swift_arrayDestroy();

      goto LABEL_104;
    }

    goto LABEL_241;
  }

  v89(v438, v439, v458);
  v326 = URLComponents.queryItemsDictionary.getter();
  if (!v326)
  {
    (*(v457 + 8))(v438, v458);
    goto LABEL_238;
  }

  v327 = v326;
  v328 = sub_100407584(6580592, 0xE300000000000000, v326);
  if (!v329)
  {
    (*(v457 + 8))(v438, v458);
LABEL_237:

    goto LABEL_238;
  }

  v330 = v328;
  v331 = v329;

  v332 = sub_1002B8768(v330, v331);
  if (v333 & 1) != 0 || (v336 = v332, v337 = sub_100407584(1701869940, 0xE400000000000000, v327), v339 = sub_1002CF264(v337, v338), (v340))
  {
LABEL_236:
    (*(v457 + 8))(v438, v458);

    goto LABEL_237;
  }

  v341 = v339;
  result = [objc_opt_self() deviceMediaLibrary];
  if (result)
  {
    v342 = result;
    v343 = [result entityWithPersistentID:v336 entityType:v341];

    if (v343)
    {
      v344 = v343;

      v450 = v344;
      v345 = Logger.logObject.getter();
      v346 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v345, v346))
      {
        v347 = swift_slowAlloc();
        v348 = swift_slowAlloc();
        v449 = swift_slowAlloc();
        *&v480[0] = v449;
        *v347 = 136446722;
        *(v347 + 4) = sub_1000105AC(0x636973756DLL, 0xE500000000000000, v480);
        *(v347 + 12) = 2082;
        v349 = v451;

        v350 = sub_1000105AC(v459, v349, v480);

        *(v347 + 14) = v350;
        swift_bridgeObjectRelease_n();
        *(v347 + 22) = 2114;
        v351 = v450;
        *(v347 + 24) = v450;
        *v348 = v343;

        _os_log_impl(&_mh_execute_header, v345, v346, "Handled %{public}s %{public}s %{public}@", v347, 0x20u);
        sub_1000095E8(v348, &unk_101183D70, &unk_100EC6540);

        swift_arrayDestroy();
      }

      else
      {

        v374 = v450;

        swift_bridgeObjectRelease_n();
      }

      v375 = *(v457 + 8);
      v376 = v458;
      v375(v438, v458);
      v375(v465, v376);
      sub_1000095E8(v469, &qword_10118A240, &qword_100EC5A00);
      v377 = swift_allocObject();
      *(v377 + 16) = v450;
      v85 = v469;
      *v469 = sub_1002D0DF0;
      *(v85 + 1) = v377;
      v84 = v467;
      goto LABEL_190;
    }

    goto LABEL_236;
  }

  __break(1u);
  return result;
}

void sub_1002BE694(void (*a1)(id))
{
  v2 = [objc_opt_self() currentDevicePurchasesPlaylist];
  if (v2)
  {
    v3 = v2;
    type metadata accessor for LaunchOptions(0);
    v4 = sub_100009F78(0, &qword_10118A258, MPModelGenericObject_ptr);
    v5 = sub_1002BE84C(v4);
    v10 = [v3 genericModelObjectWithRequestedProperties:v5];

    a1(v10);
  }

  else
  {
    if (qword_10117F540 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000060E4(v6, qword_101189E90);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "No purchased playlist found", v9, 2u);
    }

    a1(0);
  }
}

id sub_1002BE84C(uint64_t a1)
{
  v1 = sub_100009F78(0, &qword_10118A260, MPModelAlbum_ptr);
  if (swift_dynamicCastMetatype())
  {
    sub_10010FC20(&unk_101181640, &qword_100EBD090);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_100EBF880;
    *(v2 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v2 + 40) = v3;
    *(v2 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v2 + 56) = v4;
    *(v2 + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v2 + 72) = v5;
    *(v2 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v2 + 88) = v6;
    *(v2 + 96) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v2 + 104) = v7;
    *(v2 + 112) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v2 + 120) = v8;
    *(v2 + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v2 + 136) = v9;
    v10.super.isa = Array._bridgeToObjectiveC()().super.isa;

    v11 = [objc_opt_self() propertySetWithProperties:v10.super.isa];
LABEL_7:
    v21 = v11;
LABEL_8:

    return v21;
  }

  v12 = sub_100009F78(0, &qword_10118A268, MPModelArtist_ptr);
  if (swift_dynamicCastMetatype())
  {
    sub_10010FC20(&unk_101181640, &qword_100EBD090);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_100EBEF50;
    *(v13 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v13 + 40) = v14;
    *(v13 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v13 + 56) = v15;
    *(v13 + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v13 + 72) = v16;
    *(v13 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v13 + 88) = v17;
    v10.super.isa = Array._bridgeToObjectiveC()().super.isa;

    v11 = [objc_opt_self() propertySetWithProperties:v10.super.isa];
    goto LABEL_7;
  }

  v18 = sub_100009F78(0, &unk_10118A270, MPModelPlaylist_ptr);
  if (swift_dynamicCastMetatype())
  {
    goto LABEL_6;
  }

  v23 = sub_100009F78(0, &qword_101183A28, MPModelSong_ptr);
  if (swift_dynamicCastMetatype())
  {
    sub_10010FC20(&unk_101181640, &qword_100EBD090);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_100EBE260;
    *(v24 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v24 + 40) = v25;
    *(v24 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v24 + 56) = v26;
    *(v24 + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v24 + 72) = v27;
    sub_10010FC20(&qword_101186F10, &unk_100EC96E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100EBC6B0;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v29;
    *(inited + 48) = sub_1002BE84C(v1);
    sub_10000BFA0(inited);
    swift_setDeallocating();
    sub_1000095E8(inited + 32, &qword_101186F18, &unk_100EC96F0);
    v30 = objc_allocWithZone(MPPropertySet);
    isa = Array._bridgeToObjectiveC()().super.isa;

    sub_100009F78(0, &qword_101186F20, MPPropertySet_ptr);
    v10.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v21 = [v30 initWithProperties:isa relationships:v10.super.isa];

    goto LABEL_8;
  }

  v32 = sub_100009F78(0, &qword_10118A280, MPModelTVEpisode_ptr);
  if (swift_dynamicCastMetatype())
  {
    sub_10010FC20(&unk_101181640, &qword_100EBD090);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_100EBC6B0;
    *(v33 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v33 + 40) = v34;
    sub_10010FC20(&qword_101186F10, &unk_100EC96E0);
    v35 = swift_initStackObject();
    *(v35 + 16) = xmmword_100EBDC20;
    *(v35 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v35 + 40) = v36;
    v37 = objc_opt_self();
    *(v35 + 48) = [v37 emptyPropertySet];
    *(v35 + 56) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v35 + 64) = v38;
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_100EBC6B0;
    *(v39 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v39 + 40) = v40;
    v41 = Array._bridgeToObjectiveC()().super.isa;

    v42 = [v37 propertySetWithProperties:v41];

    *(v35 + 72) = v42;
    sub_10000BFA0(v35);
    swift_setDeallocating();
    sub_10010FC20(&qword_101186F18, &unk_100EC96F0);
    swift_arrayDestroy();
    v43 = objc_allocWithZone(MPPropertySet);
    v44 = Array._bridgeToObjectiveC()().super.isa;

    sub_100009F78(0, &qword_101186F20, MPPropertySet_ptr);
    v10.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v21 = [v43 initWithProperties:v44 relationships:v10.super.isa];

    goto LABEL_8;
  }

  v45 = sub_100009F78(0, &qword_10118A288, MPModelMovie_ptr);
  if (swift_dynamicCastMetatype())
  {
LABEL_6:
    sub_10010FC20(&unk_101181640, &qword_100EBD090);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_100EBC6B0;
    *(v19 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v19 + 40) = v20;
    v10.super.isa = Array._bridgeToObjectiveC()().super.isa;

    v11 = [objc_opt_self() propertySetWithProperties:v10.super.isa];
    goto LABEL_7;
  }

  sub_100009F78(0, &qword_10118A258, MPModelGenericObject_ptr);
  if (swift_dynamicCastMetatype())
  {
    sub_10010FC20(&qword_101186F10, &unk_100EC96E0);
    v46 = swift_initStackObject();
    *(v46 + 16) = xmmword_100EBCED0;
    *(v46 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v46 + 40) = v47;
    *(v46 + 48) = sub_1002BE84C(v1);
    *(v46 + 56) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v46 + 64) = v48;
    *(v46 + 72) = sub_1002BE84C(v12);
    *(v46 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v46 + 88) = v49;
    *(v46 + 96) = sub_1002BE84C(v18);
    *(v46 + 104) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v46 + 112) = v50;
    *(v46 + 120) = sub_1002BE84C(v23);
    *(v46 + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v46 + 136) = v51;
    *(v46 + 144) = sub_1002BE84C(v32);
    *(v46 + 152) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v46 + 160) = v52;
    *(v46 + 168) = sub_1002BE84C(v45);
    sub_10000BFA0(v46);
    swift_setDeallocating();
    sub_10010FC20(&qword_101186F18, &unk_100EC96F0);
    swift_arrayDestroy();
    v53 = objc_allocWithZone(MPPropertySet);
    v54 = Array._bridgeToObjectiveC()().super.isa;
    sub_100009F78(0, &qword_101186F20, MPPropertySet_ptr);
    v10.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v21 = [v53 initWithProperties:v54 relationships:v10.super.isa];

    goto LABEL_8;
  }

  v55 = [objc_opt_self() emptyPropertySet];

  return v55;
}

void sub_1002BF200(uint64_t a1, uint64_t a2)
{
  v2 = *(type metadata accessor for AppInterfaceContext.Activity(0) - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = v17 - v5;
  __chkstk_darwin();
  v8 = v17 - v7;
  type metadata accessor for AppInterfaceContext.Activity.Destination(0);
  v9 = swift_projectBox();
  PresentationSource.windowScene.getter();
  if (v10)
  {
    v11 = v10;
    v12 = [v10 delegate];

    if (v12 && (v17[1] = v12, sub_10010FC20(&unk_101184050, &unk_100EBFA30), sub_10010FC20(&unk_101184EB0, &qword_100ED56D0), (swift_dynamicCast() & 1) != 0))
    {
      if (*(&v19 + 1))
      {
        v13 = *(*sub_10000954C(&v18, *(&v19 + 1)) + OBJC_IVAR____TtC5Music17MainSceneDelegate_interfaceContext);

        sub_10000959C(&v18);
        if (v13)
        {
          v14 = &v8[*(sub_10010FC20(&unk_1011841E0, &unk_100ECDA60) + 48)];
          swift_beginAccess();
          sub_1002CF480(v9, v8, type metadata accessor for AppInterfaceContext.Activity.Destination);
          *v14 = 0;
          *(v14 + 1) = 0;
          swift_storeEnumTagMultiPayload();
          sub_1002CF480(v8, v6, type metadata accessor for AppInterfaceContext.Activity);
          sub_1002CF480(v6, v4, type metadata accessor for AppInterfaceContext.Activity);
          v15 = (*(v2 + 80) + 32) & ~*(v2 + 80);
          v16 = swift_allocObject();
          *(v16 + 16) = 0;
          *(v16 + 24) = 0;
          sub_1002CF4E8(v4, v16 + v15, type metadata accessor for AppInterfaceContext.Activity);
          sub_100706900(v6, sub_100137E88, v16);

          sub_1002CF550(v6, type metadata accessor for AppInterfaceContext.Activity);
          sub_1002CF550(v8, type metadata accessor for AppInterfaceContext.Activity);
        }

        return;
      }
    }

    else
    {
      v20 = 0;
      v18 = 0u;
      v19 = 0u;
    }

    sub_1000095E8(&v18, &unk_101184EA0, &unk_100EBFA20);
  }
}

uint64_t sub_1002BF538(uint64_t a1, char a2)
{
  v3 = [objc_opt_self() sharedApplication];
  sub_1002BF5AC();
  v5 = v4;

  if (v5)
  {
    sub_1001D3268(0, a2 & 1);
  }

  return 1;
}

void sub_1002BF5AC()
{
  v1 = [v0 connectedScenes];
  sub_100009F78(0, &qword_1011839F0, UIScene_ptr);
  sub_100061F5C();
  v2 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v2 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v2 = v32;
    v3 = v33;
    v4 = v34;
    v5 = v35;
    v6 = v36;
  }

  else
  {
    v7 = -1 << *(v2 + 32);
    v3 = v2 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(v2 + 56);

    v5 = 0;
  }

  v30 = v4;
  v10 = (v4 + 64) >> 6;
  if (v2 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v11 = v5;
  v12 = v6;
  v13 = v5;
  if (v6)
  {
LABEL_12:
    v14 = (v12 - 1) & v12;
    v15 = *(*(v2 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (v15)
    {
      while (1)
      {
        v16 = v15;
        v17 = [v15 session];
        v18 = [v17 role];

        v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v21 = v20;
        if (v19 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v21 == v22)
        {
          break;
        }

        v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v24)
        {
          goto LABEL_26;
        }

        v5 = v13;
        v6 = v14;
        if ((v2 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (__CocoaSet.Iterator.next()())
        {
          swift_dynamicCast();
          v15 = v31;
          v13 = v5;
          v14 = v6;
          if (v31)
          {
            continue;
          }
        }

        goto LABEL_23;
      }

LABEL_26:
      sub_10005C9F8(v2);

      v25 = [v16 delegate];

      if (v25)
      {
        v26 = swift_dynamicCastObjCProtocolConditional();
        if (v26 && (v27 = v26, ([v26 respondsToSelector:"window"] & 1) != 0))
        {
          v28 = [v27 window];
          swift_unknownObjectRelease();
          if (v28)
          {
            v29 = [v28 rootViewController];

            if (v29)
            {
              type metadata accessor for CarPlayRootNavigationController();
              if (!swift_dynamicCastClass())
              {
              }
            }
          }
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }
    }

    else
    {
LABEL_23:
      sub_10005C9F8(v2);
    }
  }

  else
  {
    while (1)
    {
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v13 >= v10)
      {
        goto LABEL_23;
      }

      v12 = *(v3 + 8 * v13);
      ++v11;
      if (v12)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1002BF954(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v7 = &v12[-v6];
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_10012B7A8(a1, v12);
  type metadata accessor for MainActor();

  v9 = static MainActor.shared.getter();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = &protocol witness table for MainActor;
  v10[4] = a2;
  v10[5] = a3;
  sub_10012B828(v12, (v10 + 6));
  sub_1001F4CB8(0, 0, v7, &unk_100EC5A10, v10);

  return 1;
}

uint64_t sub_1002BFAAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[17] = a5;
  v6[18] = a6;
  v6[16] = a4;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  v6[19] = swift_task_alloc();
  v7 = *(sub_10010FC20(&qword_10118A308, &qword_100EC5A18) - 8);
  v6[20] = v7;
  v6[21] = *(v7 + 64);
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  v8 = sub_10010FC20(&unk_10118A310, &qword_100EBD6C0);
  v6[24] = v8;
  v6[25] = *(v8 - 8);
  v6[26] = swift_task_alloc();
  v6[27] = type metadata accessor for MainActor();
  v6[28] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[29] = v10;
  v6[30] = v9;

  return _swift_task_switch(sub_1002BFC64, v10, v9);
}

uint64_t sub_1002BFC64()
{
  v2 = v0[16];
  v1 = v0[17];
  swift_getKeyPath();
  v0[14] = v2;
  v0[15] = v1;
  type metadata accessor for Song();
  sub_1002CF674(&unk_1011929D0, &type metadata accessor for Song, &protocol conformance descriptor for Song);

  MusicCatalogResourceRequest.init<A>(matching:equalTo:)();
  v3 = swift_task_alloc();
  v0[31] = v3;
  *v3 = v0;
  v3[1] = sub_1002BFDA0;
  v4 = v0[23];
  v5 = v0[24];

  return MusicCatalogResourceRequest.response()(v4, v5);
}

uint64_t sub_1002BFDA0()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 232);
    v4 = *(v2 + 240);
    v5 = sub_1002C00F4;
  }

  else
  {
    v3 = *(v2 + 232);
    v4 = *(v2 + 240);
    v5 = sub_1002BFEC4;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1002BFEC4()
{
  v1 = v0[25];
  v2 = v0[23];
  v15 = v0[24];
  v16 = v0[26];
  v4 = v0[21];
  v3 = v0[22];
  v5 = v0[19];
  v6 = v0[20];
  v7 = v0[18];

  v8 = sub_10010FC20(&unk_10118A320, &qword_100EBD6B8);
  (*(*(v8 - 8) + 56))(v2, 0, 1, v8);
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  sub_1000089F8(v2, v3, &qword_10118A308, &qword_100EC5A18);
  sub_10012B7A8(v7, (v0 + 2));
  v10 = static MainActor.shared.getter();
  v11 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v12 + 24) = &protocol witness table for MainActor;
  sub_10003D17C(v3, v12 + v11, &qword_10118A308, &qword_100EC5A18);
  sub_10012B828((v0 + 2), v12 + ((v4 + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  sub_1001F4CB8(0, 0, v5, &unk_100EC5A50, v12);

  sub_1000095E8(v2, &qword_10118A308, &qword_100EC5A18);
  (*(v1 + 8))(v16, v15);

  v13 = v0[1];

  return v13();
}

uint64_t sub_1002C00F4()
{
  v1 = v0[25];
  v2 = v0[23];
  v15 = v0[24];
  v16 = v0[26];
  v4 = v0[21];
  v3 = v0[22];
  v5 = v0[19];
  v6 = v0[20];
  v7 = v0[18];

  v8 = sub_10010FC20(&unk_10118A320, &qword_100EBD6B8);
  (*(*(v8 - 8) + 56))(v2, 1, 1, v8);
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  sub_1000089F8(v2, v3, &qword_10118A308, &qword_100EC5A18);
  sub_10012B7A8(v7, (v0 + 2));
  v10 = static MainActor.shared.getter();
  v11 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v12 + 24) = &protocol witness table for MainActor;
  sub_10003D17C(v3, v12 + v11, &qword_10118A308, &qword_100EC5A18);
  sub_10012B828((v0 + 2), v12 + ((v4 + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  sub_1001F4CB8(0, 0, v5, &unk_100EC5A50, v12);

  sub_1000095E8(v2, &qword_10118A308, &qword_100EC5A18);
  (*(v1 + 8))(v16, v15);

  v13 = v0[1];

  return v13();
}

uint64_t sub_1002C0324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  type metadata accessor for Locale();
  v5[10] = swift_task_alloc();
  type metadata accessor for String.LocalizationValue();
  v5[11] = swift_task_alloc();
  v6 = type metadata accessor for AppInterfaceContext.Activity(0);
  v5[12] = v6;
  v7 = *(v6 - 8);
  v5[13] = v7;
  v5[14] = *(v7 + 64);
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  v8 = sub_10010FC20(&qword_10118D1A0, &qword_100EBD6B0);
  v5[18] = v8;
  v5[19] = *(v8 - 8);
  v5[20] = swift_task_alloc();
  sub_10010FC20(&qword_10118A308, &qword_100EC5A18);
  v5[21] = swift_task_alloc();
  sub_10010FC20(&unk_101183960, &unk_100EBCF90);
  v5[22] = swift_task_alloc();
  v9 = type metadata accessor for Song();
  v5[23] = v9;
  v5[24] = *(v9 - 8);
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[27] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1002C05D0, v11, v10);
}

uint64_t sub_1002C05D0()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 64);

  sub_1000089F8(v2, v1, &qword_10118A308, &qword_100EC5A18);
  v3 = sub_10010FC20(&unk_10118A320, &qword_100EBD6B8);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 48))(v1, 1, v3);
  v6 = *(v0 + 184);
  v7 = *(v0 + 192);
  v8 = *(v0 + 168);
  v9 = *(v0 + 176);
  if (v5 == 1)
  {
    sub_1000095E8(*(v0 + 168), &qword_10118A308, &qword_100EC5A18);
    (*(v7 + 56))(v9, 1, 1, v6);
LABEL_4:
    sub_1000095E8(*(v0 + 176), &unk_101183960, &unk_100EBCF90);
LABEL_5:
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v13 = String._bridgeToObjectiveC()();

    v14 = [objc_opt_self() alertControllerWithTitle:0 message:v13 preferredStyle:1];

    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v15 = String._bridgeToObjectiveC()();

    v16 = [objc_opt_self() actionWithTitle:v15 style:0 handler:0];

    [v14 addAction:v16];
    PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v14, 1, 1, 0, 0);

    goto LABEL_6;
  }

  v11 = *(v0 + 152);
  v10 = *(v0 + 160);
  v12 = *(v0 + 144);
  MusicCatalogResourceResponse.items.getter();
  (*(v4 + 8))(v8, v3);
  sub_10034DD6C(v9);
  (*(v11 + 8))(v10, v12);
  if ((*(v7 + 48))(v9, 1, v6) == 1)
  {
    goto LABEL_4;
  }

  v19 = *(v0 + 208);
  (*(*(v0 + 192) + 32))(v19, *(v0 + 176), *(v0 + 184));
  type metadata accessor for LyricsLoader();
  if ((static LyricsLoader.supportsLyrics(for:)(v19) & 1) == 0)
  {
    (*(*(v0 + 192) + 8))(*(v0 + 208), *(v0 + 184));
    goto LABEL_5;
  }

  PresentationSource.windowScene.getter();
  if (!v20)
  {
    goto LABEL_19;
  }

  v21 = v20;
  v22 = [v20 delegate];

  if (!v22 || (*(v0 + 56) = v22, sub_10010FC20(&unk_101184050, &unk_100EBFA30), sub_10010FC20(&unk_101184EB0, &qword_100ED56D0), (swift_dynamicCast() & 1) == 0))
  {
    *(v0 + 48) = 0;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    goto LABEL_18;
  }

  v23 = *(v0 + 40);
  if (!v23)
  {
LABEL_18:
    sub_1000095E8(v0 + 16, &unk_101184EA0, &unk_100EBFA20);
    goto LABEL_19;
  }

  v24 = *(*sub_10000954C((v0 + 16), v23) + OBJC_IVAR____TtC5Music17MainSceneDelegate_interfaceContext);

  sub_10000959C((v0 + 16));
  if (v24)
  {
    v25 = *(v0 + 200);
    v26 = *(v0 + 192);
    v44 = *(v0 + 184);
    v45 = *(v0 + 208);
    v28 = *(v0 + 128);
    v27 = *(v0 + 136);
    v29 = *(v0 + 120);
    v30 = *(v0 + 104);
    (*(v26 + 16))(v25);
    v31 = objc_allocWithZone(type metadata accessor for StaticLyricsViewController(0));
    v32 = sub_100336758(v25, 0, 0);
    *v27 = v32;
    *(v27 + 8) = 1;
    *(v27 + 16) = &_swiftEmptySetSingleton;
    swift_storeEnumTagMultiPayload();
    sub_1002CF480(v27, v28, type metadata accessor for AppInterfaceContext.Activity);
    sub_1002CF480(v28, v29, type metadata accessor for AppInterfaceContext.Activity);
    v33 = (*(v30 + 80) + 32) & ~*(v30 + 80);
    v34 = swift_allocObject();
    *(v34 + 16) = 0;
    *(v34 + 24) = 0;
    sub_1002CF4E8(v29, v34 + v33, type metadata accessor for AppInterfaceContext.Activity);
    v35 = v32;
    sub_100706900(v28, sub_100139B24, v34);

    sub_1002CF550(v28, type metadata accessor for AppInterfaceContext.Activity);
    sub_1002CF550(v27, type metadata accessor for AppInterfaceContext.Activity);
    (*(v26 + 8))(v45, v44);
    goto LABEL_6;
  }

LABEL_19:
  if (qword_10117F540 != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for Logger();
  sub_1000060E4(v36, qword_101189E90);
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.error.getter();
  v39 = os_log_type_enabled(v37, v38);
  v40 = *(v0 + 208);
  v41 = *(v0 + 184);
  v42 = *(v0 + 192);
  if (v39)
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&_mh_execute_header, v37, v38, "No appInterfaceContext in windowScene", v43, 2u);
  }

  (*(v42 + 8))(v40, v41);
LABEL_6:

  v17 = *(v0 + 8);

  return v17();
}

void sub_1002C0CEC(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v7[4] = sub_1002D0E14;
  v7[5] = v5;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_10006BD7C;
  v7[3] = &unk_1010A45A0;
  v6 = _Block_copy(v7);

  [v4 initWithBlock:v6];
  _Block_release(v6);

  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }
}

BOOL sub_1002C0E18(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v10 = &v19 - v9;
  PresentationSource.windowScene.getter();
  v12 = v11;
  if (v11)
  {

    v13 = type metadata accessor for TaskPriority();
    (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
    (*(v6 + 16))(&v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v5);
    type metadata accessor for MainActor();
    v14 = a2;
    v15 = static MainActor.shared.getter();
    v16 = (*(v6 + 80) + 40) & ~*(v6 + 80);
    v17 = swift_allocObject();
    *(v17 + 2) = v15;
    *(v17 + 3) = &protocol witness table for MainActor;
    *(v17 + 4) = v14;
    (*(v6 + 32))(&v17[v16], v8, v5);
    sub_1001F4F78(0, 0, v10, &unk_100EC5A60, v17);
  }

  return v12 != 0;
}

uint64_t sub_1002C1038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[7] = a1;
  type metadata accessor for MainActor();
  v5[10] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[11] = v7;
  v5[12] = v6;

  return _swift_task_switch(sub_1002C10D4, v7, v6);
}

uint64_t sub_1002C10D4(__n128 a1)
{
  if (qword_10117F608 != -1)
  {
    swift_once();
  }

  v2 = v1[9];
  v3 = qword_101218AD8;
  v1[5] = type metadata accessor for LaunchOptions.Source(0);
  v1[6] = &off_1010A43B0;
  v4 = sub_10001C8B8(v1 + 2);
  v5 = type metadata accessor for URL();
  (*(*(v5 - 8) + 16))(v4, v2, v5);
  swift_storeEnumTagMultiPayload();
  v6 = swift_task_alloc();
  v1[13] = v6;
  *v6 = v1;
  v6[1] = sub_1002C1228;
  v7 = v1[8];

  return static SharedListening.addIntent(_:playbackController:issuer:)(v7, v3, (v1 + 2));
}

uint64_t sub_1002C1228()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {

    v3 = *(v2 + 88);
    v4 = *(v2 + 96);
    v5 = sub_1002C13DC;
  }

  else
  {
    sub_1000095E8(v2 + 16, &unk_101183910, &unk_100EBDD00);
    v3 = *(v2 + 88);
    v4 = *(v2 + 96);
    v5 = sub_1002C1368;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1002C1368()
{

  **(v0 + 56) = *(v0 + 112) != 0;
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002C13DC()
{

  sub_1000095E8(v0 + 16, &unk_101183910, &unk_100EBDD00);
  **(v0 + 56) = *(v0 + 112) != 0;
  v1 = *(v0 + 8);

  return v1();
}

void sub_1002C1468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = a5;
  v27 = *(type metadata accessor for AppInterfaceContext.Activity(0) - 8);
  v9 = *(v27 + 64);
  __chkstk_darwin();
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v25 - v11;
  __chkstk_darwin();
  v14 = &v25 - v13;
  PresentationSource.windowScene.getter();
  if (v15)
  {
    v16 = v15;
    v26 = a3;
    v17 = [v15 delegate];

    if (v17 && (v32 = v17, sub_10010FC20(&unk_101184050, &unk_100EBFA30), sub_10010FC20(&unk_101184EB0, &qword_100ED56D0), (swift_dynamicCast() & 1) != 0))
    {
      if (*(&v30 + 1))
      {
        v18 = *(*sub_10000954C(&v29, *(&v30 + 1)) + OBJC_IVAR____TtC5Music17MainSceneDelegate_interfaceContext);

        sub_10000959C(&v29);
        if (v18)
        {
          v19 = *(sub_10010FC20(&unk_1011841E0, &unk_100ECDA60) + 48);
          v25 = v18;
          v20 = &v14[v19];
          *v14 = 2;
          type metadata accessor for AppInterfaceContext.Activity.Destination(0);
          swift_storeEnumTagMultiPayload();
          *v20 = 0;
          v20[1] = 0;
          swift_storeEnumTagMultiPayload();
          sub_10012B7A8(a1, &v29);
          v21 = swift_allocObject();
          v22 = v26;
          v21[2] = a2;
          v21[3] = v22;
          v21[4] = a4;
          v21[5] = v28;
          sub_10012B828(&v29, (v21 + 6));
          sub_1002CF480(v14, v12, type metadata accessor for AppInterfaceContext.Activity);
          sub_1002CF480(v12, v10, type metadata accessor for AppInterfaceContext.Activity);
          v23 = (*(v27 + 80) + 32) & ~*(v27 + 80);
          v24 = swift_allocObject();
          *(v24 + 16) = sub_1002CF8DC;
          *(v24 + 24) = v21;
          sub_1002CF4E8(v10, v24 + v23, type metadata accessor for AppInterfaceContext.Activity);

          sub_100706900(v12, sub_100139B24, v24);

          sub_1002CF550(v12, type metadata accessor for AppInterfaceContext.Activity);
          sub_1002CF550(v14, type metadata accessor for AppInterfaceContext.Activity);
        }

        return;
      }
    }

    else
    {
      v31 = 0;
      v29 = 0u;
      v30 = 0u;
    }

    sub_1000095E8(&v29, &unk_101184EA0, &unk_100EBFA20);
  }
}

void sub_1002C1804(uint64_t a1, uint64_t a2, NSString a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  if (a3)
  {
    a3 = String._bridgeToObjectiveC()();
  }

  if (a5)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  v8 = [objc_opt_self() alertControllerWithTitle:a3 message:v7 preferredStyle:1];

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v9 = String._bridgeToObjectiveC()();

  v10 = [objc_opt_self() actionWithTitle:v9 style:0 handler:0];

  [v8 addAction:v10];
  PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v8, 1, 1, 0, 0);
}

void sub_1002C19FC()
{
  v0 = *(type metadata accessor for AppInterfaceContext.Activity(0) - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin();
  v2 = v14 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v4 = v14 - v3;
  __chkstk_darwin();
  v6 = (v14 - v5);
  PresentationSource.windowScene.getter();
  if (v7)
  {
    v8 = v7;
    v9 = [v7 delegate];

    if (v9 && (v14[1] = v9, sub_10010FC20(&unk_101184050, &unk_100EBFA30), sub_10010FC20(&unk_101184EB0, &qword_100ED56D0), (swift_dynamicCast() & 1) != 0))
    {
      if (*(&v16 + 1))
      {
        v10 = *(*sub_10000954C(&v15, *(&v16 + 1)) + OBJC_IVAR____TtC5Music17MainSceneDelegate_interfaceContext);

        sub_10000959C(&v15);
        if (v10)
        {
          v11 = (v6 + *(sub_10010FC20(&unk_1011841E0, &unk_100ECDA60) + 48));
          *v6 = 0;
          type metadata accessor for AppInterfaceContext.Activity.Destination(0);
          swift_storeEnumTagMultiPayload();
          *v11 = 0;
          v11[1] = 0;
          swift_storeEnumTagMultiPayload();
          sub_1002CF480(v6, v4, type metadata accessor for AppInterfaceContext.Activity);
          sub_1002CF480(v4, v2, type metadata accessor for AppInterfaceContext.Activity);
          v12 = (*(v0 + 80) + 32) & ~*(v0 + 80);
          v13 = swift_allocObject();
          *(v13 + 16) = sub_1002CF8EC;
          *(v13 + 24) = v10;
          sub_1002CF4E8(v2, v13 + v12, type metadata accessor for AppInterfaceContext.Activity);
          swift_retain_n();
          sub_100706900(v4, sub_100139B24, v13);

          sub_1002CF550(v4, type metadata accessor for AppInterfaceContext.Activity);
          sub_1002CF550(v6, type metadata accessor for AppInterfaceContext.Activity);
        }

        return;
      }
    }

    else
    {
      v17 = 0;
      v15 = 0u;
      v16 = 0u;
    }

    sub_1000095E8(&v15, &unk_101184EA0, &unk_100EBFA20);
  }
}

void sub_1002C1D18(uint64_t a1, uint64_t a2)
{
  v31 = a2;
  v3 = type metadata accessor for AppInterfaceContext.Activity(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v30 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v28 = &v28 - v6;
  __chkstk_darwin();
  v8 = &v28 - v7;
  v9 = type metadata accessor for PlaylistCreation.Context(0);
  __chkstk_darwin();
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_1011841F0, &qword_100ECF040);
  __chkstk_darwin();
  v13 = &v28 - v12;
  sub_1000089F8(a1, &v28 - v12, &unk_1011841F0, &qword_100ECF040);
  v29 = v4;
  LODWORD(a1) = (*(v4 + 48))(v13, 1, v3);
  sub_1000095E8(v13, &unk_1011841F0, &qword_100ECF040);
  if (a1 == 1)
  {
    if (qword_10117F540 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_1000060E4(v14, qword_101189E90);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Failed to navigate to Library tab", v17, 2u);
    }
  }

  else
  {
    v18 = type metadata accessor for Playlist.Folder();
    (*(*(v18 - 8) + 56))(v11, 1, 1, v18);
    v19 = v9[6];
    v20 = sub_10010FC20(&unk_1011841D0, &qword_100EC5DB0);
    (*(*(v20 - 8) + 56))(&v11[v19], 1, 1, v20);
    v21 = &v11[v9[5]];
    *v21 = 0;
    *(v21 + 1) = 0;
    v22 = &v11[v9[7]];
    v23 = v31;
    *v22 = sub_1002CF8F4;
    v22[1] = v23;
    sub_1002CF480(v11, v8, type metadata accessor for PlaylistCreation.Context);
    swift_storeEnumTagMultiPayload();
    v24 = v28;
    sub_1002CF480(v8, v28, type metadata accessor for AppInterfaceContext.Activity);
    v25 = v30;
    sub_1002CF480(v24, v30, type metadata accessor for AppInterfaceContext.Activity);
    v26 = (*(v29 + 80) + 32) & ~*(v29 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = 0;
    *(v27 + 24) = 0;
    sub_1002CF4E8(v25, v27 + v26, type metadata accessor for AppInterfaceContext.Activity);

    sub_100706900(v24, sub_100139B24, v27);

    sub_1002CF550(v24, type metadata accessor for AppInterfaceContext.Activity);
    sub_1002CF550(v8, type metadata accessor for AppInterfaceContext.Activity);
    sub_1002CF550(v11, type metadata accessor for PlaylistCreation.Context);
  }
}

uint64_t sub_1002C21BC(char *a1, uint64_t a2)
{
  v38 = a2;
  v42 = a1;
  sub_10010FC20(&unk_1011841F0, &qword_100ECF040);
  __chkstk_darwin();
  v40 = (&v38 - v2);
  v39 = type metadata accessor for AppInterfaceContext.Activity(0);
  v41 = *(v39 - 8);
  v3 = *(v41 + 64);
  __chkstk_darwin();
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v38 - v5;
  __chkstk_darwin();
  v8 = &v38 - v7;
  type metadata accessor for PlaylistCreation.FlowResult(0);
  __chkstk_darwin();
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Playlist();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v38 - v15;
  sub_1002CF480(v42, v10, type metadata accessor for PlaylistCreation.FlowResult);
  if (swift_getEnumCaseMultiPayload())
  {
    return sub_1002CF550(v10, type metadata accessor for PlaylistCreation.FlowResult);
  }

  v18 = v6;
  v42 = v14;

  (*(v12 + 32))(v16, v10, v11);
  v19 = v40;
  sub_1007041B4(v16, 0, 0, v40);
  v20 = v11;
  v21 = v12;
  if ((*(v41 + 48))(v19, 1, v39) == 1)
  {
    sub_1000095E8(v19, &unk_1011841F0, &qword_100ECF040);
    if (qword_10117F540 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_1000060E4(v22, qword_101189E90);
    v23 = v42;
    (*(v12 + 16))(v42, v16, v20);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    v26 = v20;
    if (os_log_type_enabled(v24, v25))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v43 = v28;
      *v27 = 136446210;
      sub_1002CF674(&qword_101184200, &type metadata accessor for Playlist, &protocol conformance descriptor for Playlist);
      v29 = dispatch thunk of CustomStringConvertible.description.getter();
      v31 = v30;
      v32 = *(v21 + 8);
      v32(v23, v26);
      v33 = sub_1000105AC(v29, v31, &v43);

      *(v27 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v24, v25, "Failed to generate navigation activity to playlist=%{public}s", v27, 0xCu);
      sub_10000959C(v28);

      return (v32)(v16, v26);
    }

    else
    {

      v37 = *(v21 + 8);
      v37(v23, v20);
      return (v37)(v16, v20);
    }
  }

  else
  {
    v42 = v20;
    sub_1002CF4E8(v19, v8, type metadata accessor for AppInterfaceContext.Activity);
    v34 = v18;
    sub_1002CF480(v8, v18, type metadata accessor for AppInterfaceContext.Activity);
    sub_1002CF480(v18, v4, type metadata accessor for AppInterfaceContext.Activity);
    v35 = (*(v41 + 80) + 32) & ~*(v41 + 80);
    v36 = swift_allocObject();
    *(v36 + 16) = 0;
    *(v36 + 24) = 0;
    sub_1002CF4E8(v4, v36 + v35, type metadata accessor for AppInterfaceContext.Activity);
    sub_100706900(v34, sub_100139B24, v36);

    sub_1002CF550(v34, type metadata accessor for AppInterfaceContext.Activity);
    sub_1002CF550(v8, type metadata accessor for AppInterfaceContext.Activity);
    return (*(v12 + 8))(v16, v42);
  }
}

void sub_1002C27D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_opt_self() kindWithVariants:7];
  v7 = [objc_allocWithZone(MPModelLibraryRequest) init];
  v8 = v6;
  [v7 setItemKind:v8];
  type metadata accessor for LaunchOptions(0);
  v9 = sub_100009F78(0, &qword_101183A28, MPModelSong_ptr);
  v10 = sub_1002BE84C(v9);
  [v7 setItemProperties:v10];

  sub_10010FC20(&qword_101183990, &qword_100EBC750);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100EBC6C0;
  v19[2] = v7;
  v19[3] = a3;
  v12 = objc_allocWithZone(MPIdentifierSet);
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1002CF8FC;
  *(v13 + 24) = v19;
  v24 = sub_1001EBE40;
  v25 = v13;
  aBlock = _NSConcreteStackBlock;
  v21 = 1107296256;
  v22 = sub_10006BD7C;
  v23 = &unk_1010A46B8;
  v14 = _Block_copy(&aBlock);

  v15 = [v12 initWithModelKind:v8 block:v14];

  _Block_release(v14);

  LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

  if (v14)
  {
    __break(1u);
  }

  else
  {
    *(v11 + 32) = v15;
    sub_100009F78(0, &qword_101192200, MPIdentifierSet_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v7 setAllowedItemIdentifiers:isa];

    [v7 setContentRange:{0, 1}];
    v17 = swift_allocObject();
    *(v17 + 16) = a1;
    *(v17 + 24) = a2;
    v24 = sub_1002CF904;
    v25 = v17;
    aBlock = _NSConcreteStackBlock;
    v21 = 1107296256;
    v22 = sub_10000B378;
    v23 = &unk_1010A4708;
    v18 = _Block_copy(&aBlock);

    [v7 performWithResponseHandler:v18];
    _Block_release(v18);
  }
}

void sub_1002C2B30(void *a1, id a2, uint64_t a3)
{
  v5 = [a2 mediaLibrary];
  if (!v5)
  {
LABEL_5:
    __break(1u);
    goto LABEL_6;
  }

  v6 = v5;
  v7 = [v5 uniqueIdentifier];
  if (v7)
  {
    v8 = v7;

    v9 = swift_allocObject();
    *(v9 + 16) = a3;
    v10 = swift_allocObject();
    *(v10 + 16) = sub_1002CF96C;
    *(v10 + 24) = v9;
    v13[4] = sub_1002D0E14;
    v13[5] = v10;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 1107296256;
    v13[2] = sub_1002B8A68;
    v13[3] = &unk_1010A47F8;
    v11 = _Block_copy(v13);

    [a1 setLibraryIdentifiersWithDatabaseID:v8 block:v11];

    _Block_release(v11);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
    goto LABEL_5;
  }

LABEL_6:
  __break(1u);
}

void sub_1002C2CD8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    goto LABEL_6;
  }

  v6 = [a1 results];
  if (!v6)
  {
    goto LABEL_10;
  }

  v7 = v6;
  v8 = [v6 firstItem];

  if (v8)
  {
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (!v9)
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
LABEL_6:
    v9 = 0;
  }

  v10 = [objc_opt_self() emptyIdentifierSet];
  __chkstk_darwin();
  v17[2] = v9;
  v11 = objc_allocWithZone(MPModelGenericObject);
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1002CF90C;
  *(v12 + 24) = v17;
  aBlock[4] = sub_1002CF914;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10006BD7C;
  aBlock[3] = &unk_1010A4758;
  v13 = _Block_copy(aBlock);

  v14 = [v11 initWithIdentifiers:v10 block:v13];

  _Block_release(v13);

  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if ((v10 & 1) == 0)
  {
    sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
    v15 = swift_allocObject();
    v15[2] = a3;
    v15[3] = a4;
    v15[4] = v14;

    v16 = v14;
    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_1002CF93C, v15);

    return;
  }

  __break(1u);
LABEL_10:
  __break(1u);
}

id sub_1002C2F68(uint64_t a1, uint64_t a2)
{
  if (qword_10117F540 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000060E4(v3, qword_101189E90);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Resolved song model", v6, 2u);
  }

  objc_opt_self();
  v7 = swift_dynamicCastObjCClassUnconditional();

  return [v7 setSong:a2];
}

_BYTE *sub_1002C3090(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v93 = &v89 - v10;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v91 = &v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin();
  v100 = (&v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v102 = type metadata accessor for LaunchOptions.Kind(0);
  __chkstk_darwin();
  v101 = (&v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for Playlist.Variant();
  v94 = *(v16 - 8);
  v95 = v16;
  __chkstk_darwin();
  v18 = &v89 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10010FC20(&qword_10118A3B0, &qword_100EE4B40);
  v97 = *(v19 - 8);
  v98 = v19;
  v20 = __chkstk_darwin();
  v96 = &v89 - v21;
  *(v5 + 16) = 7;
  *(v5 + OBJC_IVAR____TtC5Music13LaunchOptions_privacyAcknowledgementObserver) = 0;
  v22 = (v5 + OBJC_IVAR____TtC5Music13LaunchOptions_completionHandler);
  *v22 = 0;
  v22[1] = 0;
  v23 = (v5 + OBJC_IVAR____TtC5Music13LaunchOptions_sourceApplicationBundleIdentifier);
  *v23 = 0;
  v23[1] = 0;
  v92 = v12;
  v12[7](v5 + OBJC_IVAR____TtC5Music13LaunchOptions_referrerURL, 1, 1, v11, v20);
  *(v5 + OBJC_IVAR____TtC5Music13LaunchOptions_subscriptionStatusObserver) = 0;
  v24 = [a1 type];
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

  v109._countAndFlagsBits = v25;
  v109._object = v27;
  v28 = sub_1003C1F00(v109);
  if (v28 == 5)
  {
    sub_100020438(a3, a4);

    p_cache = &OBJC_METACLASS____TtC5Music26PresentationDonationTarget.cache;
    v30 = &OBJC_METACLASS____TtC5Music26PresentationDonationTarget.cache;
LABEL_3:

    sub_100020438(*(p_cache[470] + v5), *(p_cache[470] + v5 + 8));

    sub_1000095E8(v30[472] + v5, &qword_101183A20, &unk_100EBCF80);

    type metadata accessor for LaunchOptions(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v90 = a3;
  v31 = a4;
  v32 = OBJC_IVAR____TtC5Music13LaunchOptions_source;
  *(v5 + OBJC_IVAR____TtC5Music13LaunchOptions_source) = a1;
  type metadata accessor for LaunchOptions.Source(0);
  swift_storeEnumTagMultiPayload();
  *(v5 + OBJC_IVAR____TtC5Music13LaunchOptions_windowScene) = a2;
  if (v28 > 1)
  {
    if (v28 == 2)
    {
      v46 = swift_allocObject();
      *(v46 + 16) = a1;
      v47 = v101;
      *v101 = sub_1002CF97C;
      v47[1] = v46;
      swift_storeEnumTagMultiPayload();
      sub_1002CF4E8(v47, v5 + OBJC_IVAR____TtC5Music13LaunchOptions_kind, type metadata accessor for LaunchOptions.Kind);
      v48 = a1;
    }

    else
    {
      if (v28 == 3)
      {
        sub_100009F78(0, &qword_10118A3B8, ICUserIdentityStore_ptr);
        v33 = a1;
        v34 = a2;
        v35 = static ICUserIdentityStore.activeAccountDSID.getter();
        if (v35)
        {
          v92 = v33;
          v93 = v34;
          v36 = v35;

          type metadata accessor for Playlist();
          type metadata accessor for Playlist.Entry();
          v37 = v96;
          MusicLibrarySectionedRequest.init()();
          swift_getKeyPath();
          v39 = v94;
          v38 = v95;
          (*(v94 + 104))(v18, enum case for Playlist.Variant.favoriteSongs(_:), v95);
          sub_1002CF674(&qword_10118A3C0, &type metadata accessor for Playlist.Variant, &protocol conformance descriptor for Playlist.Variant);
          v40 = v98;
          MusicLibrarySectionedRequest<>.filterSections<A>(matching:equalTo:)();

          (*(v39 + 8))(v18, v38);
          sub_100198A44();
          v41 = MusicPlayableRequest.playbackIntent()();
          v42 = v90;
          if (v41)
          {
            v43 = v100;
            *v100 = v41;
            swift_storeEnumTagMultiPayload();
            v108 = 0;
            v106 = 0u;
            v107 = 0u;
            v105 = 0;
            v103 = 0u;
            v104 = 0u;
            v44 = v101;
            PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v43, &v106, 3, 0, 0, 1, 0, 1, v101, 0, &v103);

            (*(v97 + 8))(v37, v40);
            swift_storeEnumTagMultiPayload();
            sub_1002CF4E8(v44, v5 + OBJC_IVAR____TtC5Music13LaunchOptions_kind, type metadata accessor for LaunchOptions.Kind);
LABEL_17:
            v59 = (v5 + OBJC_IVAR____TtC5Music13LaunchOptions_completionHandler);
            v60 = *(v5 + OBJC_IVAR____TtC5Music13LaunchOptions_completionHandler);
            v61 = *(v5 + OBJC_IVAR____TtC5Music13LaunchOptions_completionHandler + 8);
            *v59 = v42;
            v59[1] = v31;
            sub_100030444(v42, v31);
            sub_100020438(v60, v61);
            sub_100020438(v42, v31);
            return v5;
          }

          if (qword_10117F540 != -1)
          {
            swift_once();
          }

          v83 = type metadata accessor for Logger();
          sub_1000060E4(v83, qword_101189E90);
          v84 = Logger.logObject.getter();
          v85 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v84, v85))
          {
            v86 = swift_slowAlloc();
            *v86 = 0;
            _os_log_impl(&_mh_execute_header, v84, v85, "Could not create Play Favorite Songs Quick Action playback intent", v86, 2u);

            sub_100020438(v42, v31);
          }

          else
          {
            sub_100020438(v42, v31);
          }

          (*(v97 + 8))(v37, v40);
        }

        else
        {
          v78 = v90;
          if (qword_10117F540 != -1)
          {
            swift_once();
          }

          v79 = type metadata accessor for Logger();
          sub_1000060E4(v79, qword_101189E90);
          v80 = Logger.logObject.getter();
          v81 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v80, v81))
          {
            v82 = swift_slowAlloc();
            *v82 = 0;
            _os_log_impl(&_mh_execute_header, v80, v81, "No active account DSID to Play Favorite Songs", v82, 2u);
          }

          sub_100020438(v78, v31);
        }

LABEL_41:
        p_cache = (&OBJC_METACLASS____TtC5Music26PresentationDonationTarget + 16);
        v30 = (&OBJC_METACLASS____TtC5Music26PresentationDonationTarget + 16);
        sub_1002CF550(v5 + v32, type metadata accessor for LaunchOptions.Source);

        goto LABEL_3;
      }

      LOBYTE(v106) = 9;
      v49 = sub_100025CE0();
      v50 = a1;
      v51 = a2;
      if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v49) & 1) == 0)
      {
        sub_100020438(v90, v31);

        goto LABEL_41;
      }

      v52 = [objc_allocWithZone(MPCModelStorePlaybackItemsRequest) init];
      isa = Array._bridgeToObjectiveC()().super.isa;
      [v52 setStoreIDs:isa];

      v54 = [objc_allocWithZone(MPCModelPlaybackIntentTracklistToken) init];
      [v54 setRequest:v52];
      v55 = [objc_allocWithZone(MPCPlaybackIntent) init];
      [v55 setTracklistToken:v54];
      [v55 setTracklistSource:3];
      v56 = v100;
      *v100 = v55;
      swift_storeEnumTagMultiPayload();
      v108 = 0;
      v106 = 0u;
      v107 = 0u;
      v105 = 0;
      v103 = 0u;
      v104 = 0u;
      v57 = v55;
      v58 = v101;
      PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v56, &v106, 3, 0, 0, 1, 0, 1, v101, 0, &v103);

      swift_storeEnumTagMultiPayload();
      sub_1002CF4E8(v58, v5 + OBJC_IVAR____TtC5Music13LaunchOptions_kind, type metadata accessor for LaunchOptions.Kind);
    }

LABEL_16:
    v42 = v90;
    goto LABEL_17;
  }

  if (!v28)
  {
    *(v5 + 16) = 4;
    v45 = v5 + OBJC_IVAR____TtC5Music13LaunchOptions_kind;
    *v45 = 0;
    *(v45 + 8) = 0;
    *(v45 + 16) = 0;
LABEL_12:
    swift_storeEnumTagMultiPayload();
    goto LABEL_16;
  }

  v62 = a1;
  v63 = a2;
  BagProvider.shared.unsafeMutableAddressor();

  v64 = BagProvider.bag.getter();

  if (v64)
  {
    v65 = [v64 stringForBagKey:ICURLBagKeyCountryCode];

    if (v65)
    {
      v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v68 = v67;

      *&v106 = 0;
      *(&v106 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(37);

      *&v106 = 0xD000000000000018;
      *(&v106 + 1) = 0x8000000100E452A0;
      v69._countAndFlagsBits = v66;
      v69._object = v68;
      String.append(_:)(v69);

      v70._countAndFlagsBits = 0x6E6F69746174732FLL;
      v70._object = 0xEB00000000656D2FLL;
      String.append(_:)(v70);
      v71 = v93;
      URL.init(string:)();

      v72 = v92;
      if ((*(v92 + 6))(v71, 1, v11) != 1)
      {

        v87 = v72[4];
        v88 = v91;
        v87(v91, v71, v11);
        v87((v5 + OBJC_IVAR____TtC5Music13LaunchOptions_kind), v88, v11);
        goto LABEL_12;
      }

      sub_1000095E8(v71, &qword_101183A20, &unk_100EBCF80);
    }
  }

  if (qword_10117F540 != -1)
  {
    swift_once();
  }

  v73 = type metadata accessor for Logger();
  sub_1000060E4(v73, qword_101189E90);
  v74 = static os_log_type_t.error.getter();
  v75 = Logger.logObject.getter();
  if (os_log_type_enabled(v75, v74))
  {
    v76 = swift_slowAlloc();
    *v76 = 0;
    _os_log_impl(&_mh_execute_header, v75, v74, "Could not generate station URL", v76, 2u);
  }

  sub_100020438(v90, v31);

  swift_storeEnumTagMultiPayload();
  return v5;
}

uint64_t sub_1002C3EE0(uint64_t a1, void *a2)
{
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v4 = &v14 - v3;
  if (qword_10117F5F8 != -1)
  {
    swift_once();
  }

  v5 = (*(*qword_101218AC8 + 432))();
  if (v5 && (v6 = v5, v7 = [v5 state], v6, v7 == 2))
  {
    v8 = &unk_100EC5AB0;
  }

  else
  {
    v8 = &unk_100EC5AA0;
  }

  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  type metadata accessor for MainActor();
  v10 = a2;
  v11 = static MainActor.shared.getter();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = &protocol witness table for MainActor;
  v12[4] = v10;
  sub_1001F4CB8(0, 0, v4, v8, v12);

  return 1;
}

uint64_t sub_1002C40C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a4;
  type metadata accessor for MainActor();
  v4[14] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[15] = v6;
  v4[16] = v5;

  return _swift_task_switch(sub_1002C4158, v6, v5);
}

uint64_t sub_1002C4158(__n128 a1)
{
  if (qword_10117F608 != -1)
  {
    swift_once();
  }

  v2 = v1[13];
  v1[5] = &type metadata for Player.ChangeCommand;
  v1[6] = &protocol witness table for Player.ChangeCommand;
  v1[2] = 0;
  v1[10] = type metadata accessor for LaunchOptions.Source(0);
  v1[11] = &off_1010A43B0;
  *sub_10001C8B8(v1 + 7) = v2;
  swift_storeEnumTagMultiPayload();
  v3 = v2;
  v4 = swift_task_alloc();
  v1[17] = v4;
  *v4 = v1;
  v4[1] = sub_1002C4290;

  return PlaybackController.perform(_:route:intent:issuer:)((v1 + 2), 0, 0, (v1 + 7));
}

uint64_t sub_1002C4290(void *a1)
{
  v4 = *v2;
  *(*v2 + 144) = v1;

  if (v1)
  {
    v5 = v4[15];
    v6 = v4[16];
    v7 = sub_1002C43D4;
  }

  else
  {

    sub_1000095E8((v4 + 7), &unk_101183910, &unk_100EBDD00);
    sub_10000959C(v4 + 2);
    v5 = v4[15];
    v6 = v4[16];
    v7 = sub_1002D0E18;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_1002C43D4()
{
  v14 = v0;

  sub_1000095E8((v0 + 7), &unk_101183910, &unk_100EBDD00);
  sub_10000959C(v0 + 2);
  if (qword_10117F540 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000060E4(v1, qword_101189E90);
  v2 = static os_log_type_t.error.getter();
  swift_errorRetain();
  v3 = Logger.logObject.getter();

  v4 = os_log_type_enabled(v3, v2);
  v5 = v0[18];
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136446210;
    v0[12] = v5;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0, &unk_100EBE390);
    v8 = String.init<A>(describing:)();
    v10 = sub_1000105AC(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v2, "Could not perform previous player command=%{public}s", v6, 0xCu);
    sub_10000959C(v7);
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_1002C45CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a4;
  type metadata accessor for MainActor();
  v4[14] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[15] = v6;
  v4[16] = v5;

  return _swift_task_switch(sub_1002C4664, v6, v5);
}

uint64_t sub_1002C4664(__n128 a1)
{
  if (qword_10117F608 != -1)
  {
    swift_once();
  }

  v2 = *(v1 + 104);
  *(v1 + 40) = &type metadata for Player.PlaybackCommand;
  *(v1 + 48) = &protocol witness table for Player.PlaybackCommand;
  *(v1 + 16) = 0;
  *(v1 + 80) = type metadata accessor for LaunchOptions.Source(0);
  *(v1 + 88) = &off_1010A43B0;
  *sub_10001C8B8((v1 + 56)) = v2;
  swift_storeEnumTagMultiPayload();
  v3 = v2;
  v4 = swift_task_alloc();
  *(v1 + 136) = v4;
  *v4 = v1;
  v4[1] = sub_1002C479C;

  return PlaybackController.perform(_:route:intent:issuer:)(v1 + 16, 0, 0, v1 + 56);
}

uint64_t sub_1002C479C(void *a1)
{
  v4 = *v2;
  *(*v2 + 144) = v1;

  if (v1)
  {
    v5 = v4[15];
    v6 = v4[16];
    v7 = sub_1002C4940;
  }

  else
  {

    sub_1000095E8((v4 + 7), &unk_101183910, &unk_100EBDD00);
    sub_10000959C(v4 + 2);
    v5 = v4[15];
    v6 = v4[16];
    v7 = sub_1002C48E0;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_1002C48E0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002C4940()
{
  v14 = v0;

  sub_1000095E8((v0 + 7), &unk_101183910, &unk_100EBDD00);
  sub_10000959C(v0 + 2);
  if (qword_10117F540 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000060E4(v1, qword_101189E90);
  v2 = static os_log_type_t.error.getter();
  swift_errorRetain();
  v3 = Logger.logObject.getter();

  v4 = os_log_type_enabled(v3, v2);
  v5 = v0[18];
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136446210;
    v0[12] = v5;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0, &unk_100EBE390);
    v8 = String.init<A>(describing:)();
    v10 = sub_1000105AC(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v2, "Could not perform play command=%{public}s", v6, 0xCu);
    sub_10000959C(v7);
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

void *sub_1002C4B38(void *a1, void *a2)
{
  v3 = v2;
  v122 = a2;
  v121 = type metadata accessor for LaunchOptions.Kind(0);
  __chkstk_darwin();
  v6 = (&v114 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v8 = &v114 - v7;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin();
  v117 = &v114 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + 16) = 7;
  *(v3 + OBJC_IVAR____TtC5Music13LaunchOptions_privacyAcknowledgementObserver) = 0;
  v13 = (v3 + OBJC_IVAR____TtC5Music13LaunchOptions_completionHandler);
  *v13 = 0;
  v13[1] = 0;
  v14 = (v3 + OBJC_IVAR____TtC5Music13LaunchOptions_sourceApplicationBundleIdentifier);
  *v14 = 0;
  v14[1] = 0;
  (*(v10 + 56))(v3 + OBJC_IVAR____TtC5Music13LaunchOptions_referrerURL, 1, 1, v9, v11);
  *(v3 + OBJC_IVAR____TtC5Music13LaunchOptions_subscriptionStatusObserver) = 0;
  if (qword_10117F540 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_1000060E4(v15, qword_101189E90);
  v16 = a1;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  v19 = os_log_type_enabled(v17, v18);
  v116 = v6;
  v118 = v10;
  v119 = v9;
  v120 = v8;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v125 = v21;
    *v20 = 136446210;
    v22 = v16;
    v115 = v3;
    v23 = v22;
    v24 = [v22 description];
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    v3 = v115;
    v28 = sub_1000105AC(v25, v27, &v125);

    *(v20 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v17, v18, "Launched with userActivity=%{public}s", v20, 0xCu);
    sub_10000959C(v21);
  }

  v29 = [v16 activityType];
  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v31;
  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v30 && v33 == v32)
  {

    goto LABEL_10;
  }

  v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v34)
  {

LABEL_10:
    *(v3 + 16) = 4;
    v35 = [v16 userInfo];
    if (v35)
    {
      v36 = v35;
      v37 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v123 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v124 = v38;
      AnyHashable.init<A>(_:)();
      if (*(v37 + 16))
      {
        v39 = sub_1000160B4(&v125);
        if (v40)
        {
          sub_10000DD18(*(v37 + 56) + 32 * v39, &v127);
          sub_10001621C(&v125);

          if (*(&v128 + 1))
          {
            if (swift_dynamicCast())
            {
              v41 = v125;
              v42 = v126;
              v43 = HIBYTE(v126) & 0xF;
              if ((v126 & 0x2000000000000000) == 0)
              {
                v43 = v125 & 0xFFFFFFFFFFFFLL;
              }

              if (v43)
              {
                goto LABEL_23;
              }
            }

LABEL_22:
            v41 = 0;
            v42 = 0;
LABEL_23:

            v44 = Logger.logObject.getter();
            v45 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v44, v45))
            {
              v46 = swift_slowAlloc();
              v47 = swift_slowAlloc();
              *&v127 = v47;
              *v46 = 136446210;
              v125 = v41;
              v126 = v42;

              sub_10010FC20(&qword_1011815E0, &qword_100EBD050);
              v48 = String.init<A>(describing:)();
              v50 = v3;
              v51 = sub_1000105AC(v48, v49, &v127);

              *(v46 + 4) = v51;
              v3 = v50;
              _os_log_impl(&_mh_execute_header, v44, v45, "User activity resolved to search with query %{public}s", v46, 0xCu);
              sub_10000959C(v47);
            }

            v52 = v3 + OBJC_IVAR____TtC5Music13LaunchOptions_kind;
            *v52 = v41;
            *(v52 + 1) = v42;
            v52[16] = 1;
            swift_storeEnumTagMultiPayload();
LABEL_26:
            *(v3 + OBJC_IVAR____TtC5Music13LaunchOptions_source) = v16;
            type metadata accessor for LaunchOptions.Source(0);
            swift_storeEnumTagMultiPayload();
            *(v3 + OBJC_IVAR____TtC5Music13LaunchOptions_windowScene) = v122;
            return v3;
          }

LABEL_21:
          sub_1000095E8(&v127, &unk_101183F30, qword_100EBF960);
          goto LABEL_22;
        }
      }

      sub_10001621C(&v125);
    }

    v127 = 0u;
    v128 = 0u;
    goto LABEL_21;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v30 && v53 == v32)
  {
  }

  else
  {
    v54 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v54 & 1) == 0)
    {

      v78 = v16;
      v71 = Logger.logObject.getter();
      v79 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v71, v79))
      {
        v80 = swift_slowAlloc();
        v81 = swift_slowAlloc();
        v125 = v81;
        *v80 = 136446210;
        v82 = v78;
        v83 = [v82 description];
        v84 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v86 = v85;

        v87 = sub_1000105AC(v84, v86, &v125);

        *(v80 + 4) = v87;
        _os_log_impl(&_mh_execute_header, v71, v79, "Unhandled userActivity=%{public}s", v80, 0xCu);
        sub_10000959C(v81);

LABEL_56:

        sub_100020438(*(v3 + OBJC_IVAR____TtC5Music13LaunchOptions_completionHandler), *(v3 + OBJC_IVAR____TtC5Music13LaunchOptions_completionHandler + 8));

        sub_1000095E8(v3 + OBJC_IVAR____TtC5Music13LaunchOptions_referrerURL, &qword_101183A20, &unk_100EBCF80);

        type metadata accessor for LaunchOptions(0);
        swift_deallocPartialClassInstance();
        return 0;
      }

LABEL_55:
      goto LABEL_56;
    }
  }

  v55 = &selRef_setPhotosHeaderMetadata_;
  v56 = [v16 userInfo];
  if (!v56)
  {

    v127 = 0u;
    v128 = 0u;
    goto LABEL_44;
  }

  v57 = v56;
  v58 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v123 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v124 = v59;
  AnyHashable.init<A>(_:)();
  if (!*(v58 + 16) || (v60 = sub_1000160B4(&v125), (v61 & 1) == 0))
  {

    sub_10001621C(&v125);
    v127 = 0u;
    v128 = 0u;
    goto LABEL_42;
  }

  sub_10000DD18(*(v58 + 56) + 32 * v60, &v127);
  sub_10001621C(&v125);

  if (!*(&v128 + 1))
  {
LABEL_42:

LABEL_44:
    v67 = &unk_101183F30;
    v68 = qword_100EBF960;
    v69 = &v127;
    goto LABEL_45;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_60;
  }

  v62 = HIBYTE(v126) & 0xF;
  if ((v126 & 0x2000000000000000) == 0)
  {
    v62 = v125 & 0xFFFFFFFFFFFFLL;
  }

  if (!v62)
  {

LABEL_60:

    goto LABEL_46;
  }

  v63 = v120;
  URL.init(string:)();
  v64 = v118;
  v65 = v63;
  v66 = v119;
  if ((*(v118 + 48))(v65, 1, v119) == 1)
  {

    v67 = &qword_101183A20;
    v68 = &unk_100EBCF80;
    v69 = v120;
LABEL_45:
    sub_1000095E8(v69, v67, v68);
LABEL_46:
    v70 = v16;
    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v125 = v74;
      *v73 = 136446210;
      v75 = [v70 v55[191]];
      if (v75)
      {
        v76 = v75;
        v77 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
      }

      else
      {
        v77 = 0;
      }

      *&v127 = v77;
      sub_10010FC20(&qword_10118A3D0, &qword_100EC5AB8);
      v88 = String.init<A>(describing:)();
      v90 = sub_1000105AC(v88, v89, &v125);

      *(v73 + 4) = v90;
      _os_log_impl(&_mh_execute_header, v71, v72, "Unable to parse searchable activity with userInfo=%{public}s", v73, 0xCu);
      sub_10000959C(v74);

      goto LABEL_56;
    }

    goto LABEL_55;
  }

  v92 = v117;
  (*(v64 + 32))(v117, v120, v66);
  result = [objc_opt_self() deviceMediaLibrary];
  if (result)
  {
    v93 = result;

    URL._bridgeToObjectiveC()(v94);
    v96 = v95;
    v97 = [v93 entityWithLibraryURL:v95];

    if (v97)
    {
      v98 = v97;
      v99 = Logger.logObject.getter();
      v100 = static os_log_type_t.default.getter();

      v101 = os_log_type_enabled(v99, v100);
      v103 = v118;
      v102 = v119;
      if (v101)
      {
        v104 = swift_slowAlloc();
        v115 = swift_slowAlloc();
        v125 = v115;
        *v104 = 136446210;
        v105 = v98;
        v106 = v3;
        v107 = [v105 description];
        v108 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v120 = v98;
        v110 = v109;

        v3 = v106;
        v111 = sub_1000105AC(v108, v110, &v125);
        v98 = v120;

        *(v104 + 4) = v111;
        _os_log_impl(&_mh_execute_header, v99, v100, "User activity resolved to searchable activity with mediaEntity=%{public}s", v104, 0xCu);
        sub_10000959C(v115);

        (*(v118 + 8))(v117, v119);
      }

      else
      {

        (*(v103 + 8))(v117, v102);
      }

      v112 = v116;
      v113 = swift_allocObject();
      *(v113 + 16) = v98;
      *v112 = sub_1002D025C;
      v112[1] = v113;
      swift_storeEnumTagMultiPayload();
      sub_1002CF4E8(v112, v3 + OBJC_IVAR____TtC5Music13LaunchOptions_kind, type metadata accessor for LaunchOptions.Kind);
      goto LABEL_26;
    }

    (*(v118 + 8))(v92, v119);
    v55 = &selRef_setPhotosHeaderMetadata_;
    goto LABEL_46;
  }

  __break(1u);
  return result;
}

void sub_1002C5958(void (*a1)(id), uint64_t a2, void *a3)
{
  type metadata accessor for LaunchOptions(0);
  v5 = sub_100009F78(0, &qword_10118A258, MPModelGenericObject_ptr);
  v6 = sub_1002BE84C(v5);
  v7 = [a3 genericModelObjectWithRequestedProperties:v6];

  a1(v7);
}

uint64_t sub_1002C5A04()
{
  v1 = v0;
  v2 = type metadata accessor for AppInterfaceContext.Activity(0);
  v3 = *(v2 - 8);
  v126 = v2;
  v127 = v3;
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v125 = &v123 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v129 = &v123 - v5;
  __chkstk_darwin();
  v7 = &v123 - v6;
  __chkstk_darwin();
  v124 = (&v123 - v8);
  v130 = type metadata accessor for PlaybackIntentDescriptor(0);
  v135 = *(v130 - 8);
  __chkstk_darwin();
  v137 = &v123 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v139 = (&v123 - v10);
  v136 = v11;
  __chkstk_darwin();
  v138 = &v123 - v12;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v145 = &v123 - v13;
  v132 = *(type metadata accessor for LaunchURL.Resolver(0) - 8);
  __chkstk_darwin();
  v133 = v14;
  v134 = &v123 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v142 = &v123 - v15;
  v16 = type metadata accessor for URL();
  v17 = *(v16 - 8);
  v143 = v16;
  v144 = v17;
  __chkstk_darwin();
  v131 = &v123 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = v18;
  __chkstk_darwin();
  v146 = &v123 - v19;
  type metadata accessor for LaunchOptions.Kind(0);
  __chkstk_darwin();
  v21 = &v123 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v23 = &v123 - v22;
  if (qword_10117F540 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  v25 = sub_1000060E4(v24, qword_101189E90);

  v140 = v25;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();

  v28 = os_log_type_enabled(v26, v27);
  v128 = v4;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v123 = v7;
    v30 = v29;
    v31 = swift_slowAlloc();
    *&v151 = v31;
    *v30 = 136446210;
    sub_1002CF480(v1 + OBJC_IVAR____TtC5Music13LaunchOptions_kind, v23, type metadata accessor for LaunchOptions.Kind);
    v32 = String.init<A>(describing:)();
    v34 = v1;
    v35 = sub_1000105AC(v32, v33, &v151);

    *(v30 + 4) = v35;
    v1 = v34;
    _os_log_impl(&_mh_execute_header, v26, v27, "Performing %{public}s", v30, 0xCu);
    sub_10000959C(v31);

    v7 = v123;
  }

  sub_1002CF480(v1 + OBJC_IVAR____TtC5Music13LaunchOptions_kind, v21, type metadata accessor for LaunchOptions.Kind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        v45 = v143;
        v44 = v144;
        v46 = *(v144 + 32);
        v47 = v146;
        v46(v146, v21, v143);
        v48 = v46;
        v139 = v46;
        v140 = v1;
        v136 = *(v44 + 16);
        v49 = v131;
        v136(v131, v47, v45);
        v50 = *(v44 + 80);
        v51 = (v50 + 16) & ~v50;
        v137 = v50 | 7;
        v52 = (v141 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
        v53 = swift_allocObject();
        v48(v53 + v51, v49, v45);
        *(v53 + v52) = v140;
        UIScreen.Dimensions.size.getter();
        v138 = v54;
        __chkstk_darwin();
        *(&v123 - 2) = v55;
        *(&v123 - 1) = v56;

        v57 = 1;
        v58 = v142;
        LaunchURL.Resolver.init(perform:handlerBuilder:)(1, sub_1002D0814, v142);
        v59 = type metadata accessor for TaskPriority();
        (*(*(v59 - 8) + 56))(v145, 1, 1, v59);
        v60 = v58;
        v61 = v134;
        sub_1002CF480(v60, v134, type metadata accessor for LaunchURL.Resolver);
        v136(v49, v146, v45);
        type metadata accessor for MainActor();
        v62 = static MainActor.shared.getter();
        v63 = (*(v132 + 80) + 32) & ~*(v132 + 80);
        v64 = (v133 + v50 + v63) & ~v50;
        v65 = swift_allocObject();
        *(v65 + 16) = v62;
        *(v65 + 24) = &protocol witness table for MainActor;
        sub_1002CF4E8(v61, v65 + v63, type metadata accessor for LaunchURL.Resolver);
        v66 = v65 + v64;
        v1 = v140;
        v139(v66, v49, v45);
        sub_1001F5520(0, 0, v145, &unk_100EC5B28, v65);

        sub_1002CF550(v142, type metadata accessor for LaunchURL.Resolver);
        (*(v144 + 8))(v146, v45);
        goto LABEL_56;
      }

      v79 = *v21;
      v80 = *(v1 + OBJC_IVAR____TtC5Music13LaunchOptions_windowScene);
      static PresentationSource.topmost(in:)(&v151);

      sub_1000089F8(&v151, v147, &unk_1011845E0, &unk_100EBF3A0);
      if (v147[8] != 1)
      {
        sub_10012B828(v147, &v148);
        v57 = v79(&v148);

        sub_10012BA6C(&v148);
        sub_1000095E8(&v151, &unk_1011845E0, &unk_100EBF3A0);
        goto LABEL_56;
      }

      sub_1000095E8(&v151, &unk_1011845E0, &unk_100EBF3A0);
      sub_1000095E8(v147, &unk_1011845E0, &unk_100EBF3A0);
      goto LABEL_55;
    }

    if (EnumCaseMultiPayload == 2)
    {
      v67 = *v21;

      v67(sub_1002D0608, v1);

      v57 = 1;
      goto LABEL_56;
    }

    v81 = v138;
    sub_1002CF4E8(v21, v138, type metadata accessor for PlaybackIntentDescriptor);
    v82 = v81 + *(v130 + 32);
    if (*(v82 + 24))
    {
      sub_100008FE4(v81 + *(v130 + 32), &v151);
      v83 = *(&v152 + 1);
      v84 = v153;
      sub_10000954C(&v151, *(&v152 + 1));
      v85 = v1;
      v86 = OBJC_IVAR____TtC5Music13LaunchOptions_source;
      *(&v149 + 1) = type metadata accessor for LaunchOptions.Source(0);
      v150 = &off_1010A43B0;
      v87 = sub_10001C8B8(&v148);
      v88 = v85 + v86;
      v1 = v85;
      sub_1002CF480(v88, v87, type metadata accessor for LaunchOptions.Source);
      v89 = Player.CommandIssuer.appending(_:)(&v148, v83, v84);
      v91 = v90;
      sub_10000959C(&v148);
      *(&v149 + 1) = &type metadata for Player.CommandIssuerIdentity;
      v150 = &protocol witness table for Player.CommandIssuerIdentity;
      *&v148 = v89;
      *(&v148 + 1) = v91;
      sub_10000959C(&v151);
      if (*(&v149 + 1))
      {
        sub_100188D80(&v148, &v151);
LABEL_45:
        sub_10006B010(&v151, v82, &unk_101183910, &unk_100EBDD00);
        v104 = v139;
        sub_1002CF480(v81, v139, type metadata accessor for PlaybackIntentDescriptor);
        v105 = type metadata accessor for TaskPriority();
        v57 = 1;
        v106 = v145;
        (*(*(v105 - 8) + 56))(v145, 1, 1, v105);
        v107 = v137;
        sub_1002CF480(v104, v137, type metadata accessor for PlaybackIntentDescriptor);
        type metadata accessor for MainActor();
        v108 = static MainActor.shared.getter();
        v109 = (*(v135 + 80) + 32) & ~*(v135 + 80);
        v110 = swift_allocObject();
        *(v110 + 16) = v108;
        *(v110 + 24) = &protocol witness table for MainActor;
        sub_1002CF4E8(v107, v110 + v109, type metadata accessor for PlaybackIntentDescriptor);
        sub_1001F4F78(0, 0, v106, &unk_100ECA700, v110);

        v111 = type metadata accessor for PlaybackIntentDescriptor;
        sub_1002CF550(v104, type metadata accessor for PlaybackIntentDescriptor);
        v112 = v81;
        goto LABEL_46;
      }
    }

    else
    {
      v150 = 0;
      v148 = 0u;
      v149 = 0u;
    }

    v102 = OBJC_IVAR____TtC5Music13LaunchOptions_source;
    *(&v152 + 1) = type metadata accessor for LaunchOptions.Source(0);
    v153 = &off_1010A43B0;
    v103 = sub_10001C8B8(&v151);
    sub_1002CF480(v1 + v102, v103, type metadata accessor for LaunchOptions.Source);
    if (*(&v149 + 1))
    {
      sub_1000095E8(&v148, &unk_101183910, &unk_100EBDD00);
    }

    goto LABEL_45;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload == 4)
    {
      v68 = v144;
      v69 = v146;
      v70 = v21;
      v71 = v143;
      (*(v144 + 32))(v146, v70, v143);
      sub_1002C9F54();
      (*(v68 + 8))(v69, v71);
      v57 = 1;
      goto LABEL_56;
    }

    v92 = *v21;
    v93 = *(v21 + 1);
    v94 = v21[16];
    v95 = [*(v1 + OBJC_IVAR____TtC5Music13LaunchOptions_windowScene) delegate];
    if (!v95)
    {

LABEL_48:
      v153 = 0;
      v151 = 0u;
      v152 = 0u;
LABEL_51:
      sub_1000095E8(&v151, &unk_101184EA0, &unk_100EBFA20);
LABEL_52:
      v113 = Logger.logObject.getter();
      v114 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v113, v114))
      {
        v115 = swift_slowAlloc();
        *v115 = 0;
        _os_log_impl(&_mh_execute_header, v113, v114, "No appInterfaceContext in windowScene", v115, 2u);
      }

      goto LABEL_55;
    }

    *&v148 = v95;
    sub_10010FC20(&unk_101184050, &unk_100EBFA30);
    sub_10010FC20(&unk_101184EB0, &qword_100ED56D0);
    if (swift_dynamicCast())
    {
      if (*(&v152 + 1))
      {
        v96 = *(*sub_10000954C(&v151, *(&v152 + 1)) + OBJC_IVAR____TtC5Music17MainSceneDelegate_interfaceContext);

        sub_10000959C(&v151);
        if (!v96)
        {

          goto LABEL_52;
        }

        v97 = *(sub_10010FC20(&unk_10118A290, &unk_100EC73D0) + 48);
        v98 = v124;
        *v124 = v92;
        *(v98 + 8) = v93;
        if (v94)
        {
          v99 = enum case for SearchScope.library(_:);
          v100 = type metadata accessor for SearchScope();
          v101 = *(v100 - 8);
          (*(v101 + 104))(v98 + v97, v99, v100);
          (*(v101 + 56))(v98 + v97, 0, 1, v100);
        }

        else
        {
          v119 = type metadata accessor for SearchScope();
          (*(*(v119 - 8) + 56))(v98 + v97, 1, 1, v119);
        }

        v57 = 1;
        swift_storeEnumTagMultiPayload();
        sub_1002CF480(v98, v7, type metadata accessor for AppInterfaceContext.Activity);
        v120 = v129;
        sub_1002CF480(v7, v129, type metadata accessor for AppInterfaceContext.Activity);
        v121 = (*(v127 + 80) + 32) & ~*(v127 + 80);
        v122 = swift_allocObject();
        *(v122 + 16) = 0;
        *(v122 + 24) = 0;
        sub_1002CF4E8(v120, v122 + v121, type metadata accessor for AppInterfaceContext.Activity);
        sub_100706900(v7, sub_100139B24, v122);

        v111 = type metadata accessor for AppInterfaceContext.Activity;
        sub_1002CF550(v7, type metadata accessor for AppInterfaceContext.Activity);
        v112 = v98;
LABEL_46:
        sub_1002CF550(v112, v111);
        goto LABEL_56;
      }
    }

    else
    {
      v153 = 0;
      v151 = 0u;
      v152 = 0u;
    }

    goto LABEL_51;
  }

  if (EnumCaseMultiPayload == 6)
  {
    v72 = *v21;
    v73 = [*(v1 + OBJC_IVAR____TtC5Music13LaunchOptions_windowScene) delegate];
    if (v73)
    {
      *&v148 = v73;
      sub_10010FC20(&unk_101184050, &unk_100EBFA30);
      sub_10010FC20(&unk_101184EB0, &qword_100ED56D0);
      if (swift_dynamicCast())
      {
        if (*(&v152 + 1))
        {
          v74 = *(*sub_10000954C(&v151, *(&v152 + 1)) + OBJC_IVAR____TtC5Music17MainSceneDelegate_interfaceContext);

          sub_10000959C(&v151);
          if (v74)
          {
            v75 = &v7[*(sub_10010FC20(&unk_1011841E0, &unk_100ECDA60) + 48)];
            *v7 = v72;
            type metadata accessor for AppInterfaceContext.Activity.Destination(0);
            swift_storeEnumTagMultiPayload();
            *v75 = 0;
            v75[1] = 0;
            swift_storeEnumTagMultiPayload();
            v40 = v129;
            sub_1002CF480(v7, v129, type metadata accessor for AppInterfaceContext.Activity);
            v76 = v125;
            sub_1002CF480(v40, v125, type metadata accessor for AppInterfaceContext.Activity);
            v77 = (*(v127 + 80) + 32) & ~*(v127 + 80);
            v78 = swift_allocObject();
            *(v78 + 16) = 0;
            *(v78 + 24) = 0;
            sub_1002CF4E8(v76, v78 + v77, type metadata accessor for AppInterfaceContext.Activity);
            sub_100706900(v40, sub_100139B24, v78);

            goto LABEL_26;
          }

          goto LABEL_52;
        }

        goto LABEL_51;
      }
    }

    goto LABEL_48;
  }

  if (EnumCaseMultiPayload != 7)
  {
LABEL_55:
    v57 = 0;
    goto LABEL_56;
  }

  v37 = [*(v1 + OBJC_IVAR____TtC5Music13LaunchOptions_windowScene) delegate];
  if (v37 && (*&v148 = v37, sub_10010FC20(&unk_101184050, &unk_100EBFA30), sub_10010FC20(&unk_101184EB0, &qword_100ED56D0), (swift_dynamicCast() & 1) != 0))
  {
    if (*(&v152 + 1))
    {
      v38 = *(*sub_10000954C(&v151, *(&v152 + 1)) + OBJC_IVAR____TtC5Music17MainSceneDelegate_interfaceContext);

      sub_10000959C(&v151);
      if (!v38)
      {
LABEL_27:
        v57 = 1;
        goto LABEL_56;
      }

      v39 = &v7[*(sub_10010FC20(&unk_1011841E0, &unk_100ECDA60) + 48)];
      *v7 = 4;
      type metadata accessor for AppInterfaceContext.Activity.Destination(0);
      swift_storeEnumTagMultiPayload();
      *v39 = 0;
      v39[1] = 0;
      swift_storeEnumTagMultiPayload();
      v40 = v129;
      sub_1002CF480(v7, v129, type metadata accessor for AppInterfaceContext.Activity);
      v41 = v125;
      sub_1002CF480(v40, v125, type metadata accessor for AppInterfaceContext.Activity);
      v42 = (*(v127 + 80) + 32) & ~*(v127 + 80);
      v43 = swift_allocObject();
      *(v43 + 16) = 0;
      *(v43 + 24) = 0;
      sub_1002CF4E8(v41, v43 + v42, type metadata accessor for AppInterfaceContext.Activity);
      sub_100706900(v40, sub_100139B24, v43);

LABEL_26:

      sub_1002CF550(v40, type metadata accessor for AppInterfaceContext.Activity);
      sub_1002CF550(v7, type metadata accessor for AppInterfaceContext.Activity);
      goto LABEL_27;
    }
  }

  else
  {
    v153 = 0;
    v151 = 0u;
    v152 = 0u;
  }

  sub_1000095E8(&v151, &unk_101184EA0, &unk_100EBFA20);
  v57 = 1;
LABEL_56:
  v116 = *(v1 + OBJC_IVAR____TtC5Music13LaunchOptions_completionHandler);
  if (v116)
  {
    v117 = *(v1 + OBJC_IVAR____TtC5Music13LaunchOptions_completionHandler + 8);

    v116(v57 & 1);
    sub_100020438(v116, v117);
  }

  return v57 & 1;
}

uint64_t sub_1002C6E24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[18] = a2;
  v3[19] = a3;
  v4 = type metadata accessor for URL();
  v3[20] = v4;
  v5 = *(v4 - 8);
  v3[21] = v5;
  v3[22] = *(v5 + 64);
  v3[23] = swift_task_alloc();
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  v3[24] = swift_task_alloc();
  v3[25] = type metadata accessor for MainActor();
  v3[26] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1002C6F5C, v7, v6);
}

uint64_t sub_1002C6F5C()
{

  static ApplicationCapabilities.shared.getter(v0 + 16);
  sub_100014984(v0 + 16);
  if (*(v0 + 17))
  {
    goto LABEL_8;
  }

  v1 = URL.host.getter();
  if (!v2)
  {
    goto LABEL_8;
  }

  if (v1 == 0xD000000000000014 && v2 == 0x8000000100E453A0)
  {
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v4 & 1) == 0)
    {
LABEL_8:
      if (URL.lastPathComponent.getter() == 1852403562 && v5 == 0xE400000000000000)
      {
      }

      else
      {
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v7 & 1) == 0)
        {
          if (URL.lastPathComponent.getter() == 0x6E69537075746573 && v8 == 0xE900000000000067)
          {
          }

          else
          {
            v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v25 & 1) == 0)
            {
              v36 = *(v0 + 192);
              v37 = *(v0 + 184);
              v38 = *(v0 + 160);
              v39 = *(v0 + 168);
              v41 = *(v0 + 144);
              v40 = *(v0 + 152);
              v42 = type metadata accessor for TaskPriority();
              (*(*(v42 - 8) + 56))(v36, 1, 1, v42);
              (*(v39 + 16))(v37, v41, v38);

              v43 = static MainActor.shared.getter();
              v44 = (*(v39 + 80) + 40) & ~*(v39 + 80);
              v45 = swift_allocObject();
              *(v45 + 2) = v43;
              *(v45 + 3) = &protocol witness table for MainActor;
              *(v45 + 4) = v40;
              (*(v39 + 32))(&v45[v44], v37, v38);
              sub_10086E66C(0, 0, v36, &unk_100EC5B48, v45);
              goto LABEL_19;
            }
          }

          v9 = *(v0 + 192);
          v26 = *(v0 + 184);
          v27 = *(v0 + 160);
          v28 = *(v0 + 168);
          v30 = *(v0 + 144);
          v29 = *(v0 + 152);
          v31 = type metadata accessor for TaskPriority();
          (*(*(v31 - 8) + 56))(v9, 1, 1, v31);
          (*(v28 + 16))(v26, v30, v27);

          v32 = static MainActor.shared.getter();
          v33 = (*(v28 + 80) + 40) & ~*(v28 + 80);
          v18 = swift_allocObject();
          *(v18 + 2) = v32;
          *(v18 + 3) = &protocol witness table for MainActor;
          *(v18 + 4) = v29;
          (*(v28 + 32))(&v18[v33], v26, v27);
          v19 = &unk_100EC5B58;
LABEL_18:
          sub_1001F4CB8(0, 0, v9, v19, v18);
LABEL_19:

LABEL_20:

          v20 = *(v0 + 8);
          v21 = 1;
          goto LABEL_21;
        }
      }

      v9 = *(v0 + 192);
      v10 = *(v0 + 184);
      v11 = *(v0 + 160);
      v12 = *(v0 + 168);
      v14 = *(v0 + 144);
      v13 = *(v0 + 152);
      v15 = type metadata accessor for TaskPriority();
      (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
      (*(v12 + 16))(v10, v14, v11);

      v16 = static MainActor.shared.getter();
      v17 = (*(v12 + 80) + 40) & ~*(v12 + 80);
      v18 = swift_allocObject();
      *(v18 + 2) = v16;
      *(v18 + 3) = &protocol witness table for MainActor;
      *(v18 + 4) = v13;
      (*(v12 + 32))(&v18[v17], v10, v11);
      v19 = &unk_100EC5B68;
      goto LABEL_18;
    }
  }

  v23 = [objc_opt_self() defaultWorkspace];
  if (v23)
  {
    v24 = v23;
    if (LSApplicationWorkspace.openNotificationSettings()())
    {

      goto LABEL_20;
    }

    sub_1002D0D20();
    swift_allocError();
    *v35 = 1;
    swift_willThrow();
  }

  else
  {
    sub_1002D0D20();
    swift_allocError();
    *v34 = 0;
    swift_willThrow();
  }

  v20 = *(v0 + 8);
  v21 = 0;
LABEL_21:

  return v20(v21);
}

uint64_t sub_1002C74B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = type metadata accessor for MainActor();
  v5[3] = static MainActor.shared.getter();
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_1002AC1CC;

  return sub_1002CA3D8(a5);
}

uint64_t sub_1002C7574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = type metadata accessor for MainActor();
  v5[3] = static MainActor.shared.getter();
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_1001AB600;

  return sub_1002CD534(a5);
}

uint64_t sub_1002C7630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v5[11] = a1;
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  v5[14] = swift_task_alloc();
  sub_10010FC20(&qword_10118A418, &unk_100EDD860);
  v5[15] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[16] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[17] = v7;
  v5[18] = v6;

  return _swift_task_switch(sub_1002C773C, v7, v6);
}

uint64_t sub_1002C773C()
{
  v1 = [*(*(v0 + 96) + OBJC_IVAR____TtC5Music13LaunchOptions_windowScene) delegate];
  if (!v1)
  {

    *(v0 + 48) = 0;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
LABEL_12:
    sub_1000095E8(v0 + 16, &unk_101184EA0, &unk_100EBFA20);
    goto LABEL_13;
  }

  *(v0 + 80) = v1;
  sub_10010FC20(&unk_101184050, &unk_100EBFA30);
  sub_10010FC20(&unk_101184EB0, &qword_100ED56D0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(v0 + 48) = 0;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    goto LABEL_11;
  }

  v2 = *(v0 + 40);
  if (!v2)
  {
LABEL_11:

    goto LABEL_12;
  }

  v3 = *(*sub_10000954C((v0 + 16), v2) + OBJC_IVAR____TtC5Music17MainSceneDelegate_interfaceContext);

  sub_10000959C((v0 + 16));
  if (v3)
  {
    v4 = *(v3 + 16);
    *(v0 + 152) = v4;

    if (v4)
    {
      v6 = *(v0 + 112);
      v5 = *(v0 + 120);
      v7 = *(v0 + 96);
      v8 = OBJC_IVAR____TtC5Music13LaunchOptions_referrerURL;
      swift_beginAccess();
      sub_1000089F8(v7 + v8, v6, &qword_101183A20, &unk_100EBCF80);

      ReferrerInfo.init(externalReferrerURL:referringApp:)();
      v9 = type metadata accessor for ReferrerInfo();
      (*(*(v9 - 8) + 56))(v5, 0, 1, v9);
      v10 = swift_task_alloc();
      *(v0 + 160) = v10;
      *v10 = v0;
      v10[1] = sub_1002C7A50;
      v11 = *(v0 + 120);
      v12 = *(v0 + 104);
      v13 = *(v0 + 88);

      return MusicPageProvider.openURL(_:referrerInfo:)(v13, v12, v11);
    }
  }

LABEL_13:
  v14 = *(v0 + 88);
  v15 = sub_10010FC20(&unk_10118A420, &qword_100ED5700);
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1002C7A50()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  *(*v1 + 168) = v0;

  sub_1000095E8(v3, &qword_10118A418, &unk_100EDD860);

  v4 = *(v2 + 144);
  v5 = *(v2 + 136);
  if (v0)
  {
    v6 = sub_1002C7CAC;
  }

  else
  {
    v6 = sub_1002C7BDC;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_1002C7BDC()
{

  v1 = *(v0 + 88);
  v2 = sub_10010FC20(&unk_10118A420, &qword_100ED5700);
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1002C7CAC()
{

  v1 = *(v0 + 8);

  return v1();
}

void *sub_1002C7D24(uint64_t a1, uint64_t a2)
{
  sub_10010FC20(&qword_10118A400, &qword_100EC5B30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBC6B0;
  *(inited + 56) = &type metadata for LaunchURL.GenericHandler;
  *(inited + 64) = &protocol witness table for LaunchURL.GenericHandler;
  *(inited + 32) = a1;
  *(inited + 40) = a2;

  v5 = static LaunchURL.ArrayBuilder.buildBlock(_:)(inited);
  swift_setDeallocating();
  sub_1000095E8(inited + 32, &qword_10118A408, &qword_100EC5B38);
  return v5;
}

uint64_t sub_1002C7DDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a1;
  v5[3] = type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = swift_task_alloc();
  v5[5] = v7;
  *v7 = v5;
  v7[1] = sub_1002C7EA0;

  return LaunchURL.Resolver.perform(withURL:)(a5);
}

uint64_t sub_1002C7EA0(char a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v6;
    v8 = sub_1002C80A0;
  }

  else
  {
    *(v4 + 48) = a1 & 1;
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v9;
    v8 = sub_1002C8034;
  }

  return _swift_task_switch(v8, v5, v7);
}

uint64_t sub_1002C8034()
{
  v1 = *(v0 + 48);

  **(v0 + 16) = v1;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1002C80A0()
{

  **(v0 + 16) = 2;
  v1 = *(v0 + 8);

  return v1();
}

void sub_1002C810C(void *a1, NSObject *a2)
{
  v177 = a2;
  v163 = type metadata accessor for AppInterfaceContext.Activity(0);
  v164 = *(v163 - 8);
  __chkstk_darwin();
  v166 = v155 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v168 = v155 - v4;
  v165 = v5;
  __chkstk_darwin();
  v167 = v155 - v6;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v175 = v155 - v7;
  v169 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin();
  v170 = (v155 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v171 = *(type metadata accessor for PlaybackIntentDescriptor(0) - 8);
  __chkstk_darwin();
  v172 = v9;
  v173 = v155 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v174 = v155 - v10;
  v158 = _s10TVEpisodesV5ScopeOMa(0);
  __chkstk_darwin();
  v159 = v155 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101181B78, &qword_100EBD648);
  __chkstk_darwin();
  v160 = v155 - v12;
  v162 = type metadata accessor for TVSeason();
  v161 = *(v162 - 8);
  __chkstk_darwin();
  v157 = v155 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_1011846B0, &unk_100ECB630);
  __chkstk_darwin();
  v15 = v155 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = v155 - v16;
  v18 = type metadata accessor for MusicVideo();
  v176 = *(v18 - 8);
  __chkstk_darwin();
  v20 = v155 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101184930, &unk_100EC05C0);
  __chkstk_darwin();
  v22 = v155 - v21;
  v23 = type metadata accessor for Artist();
  v24 = *(v23 - 8);
  __chkstk_darwin();
  v26 = v155 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v28 = v155 - v27;
  type metadata accessor for ContainerDetail.Source(0);
  __chkstk_darwin();
  v31 = v155 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return;
  }

  v155[1] = v29;
  v156 = v31;
  v178 = a1;
  v32 = [v178 type];
  if (v32 > 3)
  {
    if (v32 != 4)
    {
      if (v32 == 6)
      {
        v96 = [v178 tvEpisode];
        if (v96)
        {
          v97 = v96;
          if ([v96 isLibraryAdded] && (v98 = objc_msgSend(v97, "season")) != 0)
          {
            v99 = v98;
            v100 = [v97 show];
            if (v100)
            {

              v101 = v99;
              v102 = v160;
              v103 = v162;
              dispatch thunk of LegacyModelObjectConvertible.init(_:)();
              v104 = v161;
              if ((*(v161 + 48))(v102, 1, v103) != 1)
              {
                v152 = v157;
                (*(v104 + 32))(v157, v102, v103);
                v153 = v159;
                (*(v104 + 16))(v159, v152, v103);
                swift_storeEnumTagMultiPayload();
                v154 = objc_allocWithZone(type metadata accessor for LibraryTVEpisodesViewController(0));
                v114 = sub_10061A47C(v153, 0);

                (*(v104 + 8))(v152, v103);
                goto LABEL_96;
              }

              sub_1000095E8(v102, &qword_101181B78, &qword_100EBD648);
              goto LABEL_105;
            }
          }

          else
          {
            v99 = v97;
          }
        }

        if (qword_10117F540 != -1)
        {
          swift_once();
        }

        v105 = type metadata accessor for Logger();
        sub_1000060E4(v105, qword_101189E90);
        v177 = Logger.logObject.getter();
        v106 = static os_log_type_t.error.getter();
        if (!os_log_type_enabled(v177, v106))
        {
          goto LABEL_74;
        }

        v107 = swift_slowAlloc();
        *v107 = 0;
        v108 = "Unable to resolve TV episode";
        goto LABEL_73;
      }

      if (v32 != 9)
      {
        goto LABEL_34;
      }

      v39 = [v178 movie];
      if (!v39)
      {
        if (qword_10117F540 != -1)
        {
          swift_once();
        }

        v111 = type metadata accessor for Logger();
        sub_1000060E4(v111, qword_101189E90);
        v177 = Logger.logObject.getter();
        v106 = static os_log_type_t.error.getter();
        if (!os_log_type_enabled(v177, v106))
        {
          goto LABEL_74;
        }

        v107 = swift_slowAlloc();
        *v107 = 0;
        v108 = "Unable to resolve movie";
        goto LABEL_73;
      }

      v176 = v39;
      if (([v39 isLibraryAdded]& 1) != 0)
      {
        if (qword_10117F540 != -1)
        {
          swift_once();
        }

        v40 = type metadata accessor for Logger();
        sub_1000060E4(v40, qword_101189E90);
        v41 = Logger.logObject.getter();
        v42 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          *v43 = 0;
          _os_log_impl(&_mh_execute_header, v41, v42, "Resolved movie", v43, 2u);
        }

        v44 = [objc_allocWithZone(MPModelLibraryRequest) init];
        v45 = String._bridgeToObjectiveC()();
        [v44 setLabel:v45];

        sub_100009F78(0, &qword_10118A288, MPModelMovie_ptr);
        v46 = static MPModelMovie.defaultMusicKind.getter();
        [v44 setItemKind:v46];

        sub_10010FC20(&qword_101183990, &qword_100EBC750);
        v47 = swift_allocObject();
        *(v47 + 16) = xmmword_100EBC6C0;
        *(v47 + 32) = [v176 identifiers];
        sub_100009F78(0, &qword_101192200, MPIdentifierSet_ptr);
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v44 setAllowedItemIdentifiers:isa];

        v49 = [v44 playbackIntentWithStartItemIdentifiers:0];
        if (v49)
        {
          v50 = v49;
          v51 = Logger.logObject.getter();
          v52 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v51, v52))
          {
            v53 = swift_slowAlloc();
            *v53 = 0;
            _os_log_impl(&_mh_execute_header, v51, v52, "Adding playback intent to engine", v53, 2u);
          }

          v54 = v170;
          *v170 = v50;
          swift_storeEnumTagMultiPayload();
          v182 = 0;
          v180 = 0u;
          v181 = 0u;
          v55 = v177;
          v56 = *(&v177->isa + OBJC_IVAR____TtC5Music13LaunchOptions_windowScene);
          v57 = v50;
          v58 = v56;
          v59 = UIWindowScene.rootViewController.getter();

          v60 = OBJC_IVAR____TtC5Music13LaunchOptions_source;
          v179[3] = type metadata accessor for LaunchOptions.Source(0);
          v179[4] = &off_1010A43B0;
          v61 = sub_10001C8B8(v179);
          sub_1002CF480(v55 + v60, v61, type metadata accessor for LaunchOptions.Source);
          v62 = v174;
          PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v54, &v180, 3, 0, 0, 1, 0, 1, v174, v59, v179);
          v63 = type metadata accessor for TaskPriority();
          v64 = v175;
          (*(*(v63 - 8) + 56))(v175, 1, 1, v63);
          v65 = v173;
          sub_1002CF480(v62, v173, type metadata accessor for PlaybackIntentDescriptor);
          type metadata accessor for MainActor();
          v66 = static MainActor.shared.getter();
          v67 = (*(v171 + 80) + 32) & ~*(v171 + 80);
          v68 = swift_allocObject();
          *(v68 + 16) = v66;
          *(v68 + 24) = &protocol witness table for MainActor;
          sub_1002CF4E8(v65, v68 + v67, type metadata accessor for PlaybackIntentDescriptor);
          sub_1001F4F78(0, 0, v64, &unk_100EC5B70, v68);

          sub_1002CF550(v62, type metadata accessor for PlaybackIntentDescriptor);
          goto LABEL_105;
        }

LABEL_86:
        v86 = v176;
        goto LABEL_75;
      }

LABEL_85:

      goto LABEL_86;
    }

    v176 = [v178 playlist];
    if (!v176)
    {
      if (qword_10117F540 != -1)
      {
        swift_once();
      }

      v109 = type metadata accessor for Logger();
      sub_1000060E4(v109, qword_101189E90);
      v177 = Logger.logObject.getter();
      v106 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v177, v106))
      {
        goto LABEL_74;
      }

      v107 = swift_slowAlloc();
      *v107 = 0;
      v108 = "Unable to resolve playlist";
      goto LABEL_73;
    }

    v77 = MPIdentifierSet.Purpose.Options.local.unsafeMutableAddressor();
    MPModelObject.bestIdentifier(for:)(*v77, 0);
    if (v78)
    {

      v79 = sub_10010FC20(&qword_10118A430, &qword_100EC8F70);
      v80 = *(v79 + 48);
      v81 = *(v79 + 64);
      v82 = _s6AlbumsV5ScopeOMa(0);
      v83 = v156;
      swift_storeEnumTagMultiPayload();
      (*(*(v82 - 8) + 56))(v83, 0, 1, v82);
      v83[v80] = 0;
      v83[v81] = 0;
      swift_storeEnumTagMultiPayload();
      v84 = v176;
      v85 = v83;
    }

    else
    {
      v116 = MPIdentifierSet.Purpose.Options.catalog.unsafeMutableAddressor();
      MPModelObject.bestIdentifier(for:)(*v116, 0);
      if (!v117)
      {
        goto LABEL_85;
      }

      v118 = v156;
      *v156 = 0;
      swift_storeEnumTagMultiPayload();
      v84 = v176;
      v85 = v118;
    }

    v95 = sub_1006A99C4(v84, v85, 0, 0);
    if (!v95)
    {
      goto LABEL_105;
    }

    goto LABEL_95;
  }

  switch(v32)
  {
    case 1:
      v69 = [v178 song];
      if (v69)
      {
        v70 = v69;
        v71 = [v69 album];
        if (v71)
        {
          v72 = v71;
          v73 = MPIdentifierSet.Purpose.Options.local.unsafeMutableAddressor();
          MPModelObject.bestIdentifier(for:)(*v73, 0);
          if (v74)
          {

            v75 = v70;
            dispatch thunk of LegacyModelObjectConvertible.init(_:)();
            v76 = v176;
            if ((v176[6].isa)(v17, 1, v18) == 1)
            {
              sub_1000095E8(v17, &unk_1011846B0, &unk_100ECB630);
            }

            else
            {
              v76[4](v20, v17, v18);
              if ([v72 trackCount] <= 1)
              {
                v76[2](v15, v20, v18);
                (v76[7])(v15, 0, 1, v18);
                v126 = objc_allocWithZone(type metadata accessor for LibraryMusicVideosViewController(0));
                v114 = sub_100507278(0, v15);

                (v76[1])(v20, v18);
                goto LABEL_96;
              }

              (v76[1])(v20, v18);
            }

            v127 = sub_10010FC20(&qword_10118A430, &qword_100EC8F70);
            v128 = *(v127 + 48);
            v129 = *(v127 + 64);
            v130 = _s6AlbumsV5ScopeOMa(0);
            v131 = v156;
            swift_storeEnumTagMultiPayload();
            (*(*(v130 - 8) + 56))(v131, 0, 1, v130);
            v131[v128] = 0;
            v131[v129] = 0;
            swift_storeEnumTagMultiPayload();
            v124 = v72;
            v125 = v131;
          }

          else
          {
            v123 = v156;
            *v156 = 0;
            swift_storeEnumTagMultiPayload();
            v124 = v72;
            v125 = v123;
          }

          v95 = sub_1006A9254(v124, v125, v70);
          if (v95)
          {
            goto LABEL_95;
          }

LABEL_105:

          return;
        }
      }

      if (qword_10117F540 != -1)
      {
        swift_once();
      }

      v115 = type metadata accessor for Logger();
      sub_1000060E4(v115, qword_101189E90);
      v177 = Logger.logObject.getter();
      v106 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v177, v106))
      {
        goto LABEL_74;
      }

      v107 = swift_slowAlloc();
      *v107 = 0;
      v108 = "Unable to resolve song";
      goto LABEL_73;
    case 2:
      v87 = [v178 album];
      if (!v87)
      {
        if (qword_10117F540 != -1)
        {
          swift_once();
        }

        v112 = type metadata accessor for Logger();
        sub_1000060E4(v112, qword_101189E90);
        v177 = Logger.logObject.getter();
        v106 = static os_log_type_t.error.getter();
        if (!os_log_type_enabled(v177, v106))
        {
          goto LABEL_74;
        }

        v107 = swift_slowAlloc();
        *v107 = 0;
        v108 = "Unable to resolve album";
LABEL_73:
        _os_log_impl(&_mh_execute_header, v177, v106, v108, v107, 2u);

LABEL_74:

        v86 = v177;
        goto LABEL_75;
      }

      v176 = v87;
      v88 = MPIdentifierSet.Purpose.Options.local.unsafeMutableAddressor();
      MPModelObject.bestIdentifier(for:)(*v88, 0);
      if (v89)
      {

        v90 = sub_10010FC20(&qword_10118A430, &qword_100EC8F70);
        v91 = *(v90 + 48);
        v92 = *(v90 + 64);
        v93 = _s6AlbumsV5ScopeOMa(0);
        v94 = v156;
        swift_storeEnumTagMultiPayload();
        (*(*(v93 - 8) + 56))(v94, 0, 1, v93);
        *(v94 + v91) = 0;
        *(v94 + v92) = 0;
        swift_storeEnumTagMultiPayload();
        v95 = sub_1006A9254(v176, v94, 0);
        if (!v95)
        {
          goto LABEL_105;
        }

LABEL_95:
        v114 = v95;
        goto LABEL_96;
      }

      v119 = objc_allocWithZone(type metadata accessor for ModelObjectBackedStoreItemMetadata());
      v120 = ModelObjectBackedStoreItemMetadata.init(modelObject:)(v176);
      if (v120)
      {
        v121 = v120;
        v122 = v156;
        *v156 = 0;
        swift_storeEnumTagMultiPayload();
        v114 = sub_1006A9254(v176, v122, 0);

        if (v114)
        {
          goto LABEL_96;
        }

        goto LABEL_105;
      }

      goto LABEL_85;
    case 3:
      v33 = [v178 artist];
      if (v33)
      {
        v34 = v33;
        dispatch thunk of LegacyModelObjectConvertible.init(_:)();
        if ((*(v24 + 48))(v22, 1, v23) == 1)
        {
          sub_1000095E8(v22, &unk_101184930, &unk_100EC05C0);
          if (qword_10117F540 != -1)
          {
            swift_once();
          }

          v35 = type metadata accessor for Logger();
          sub_1000060E4(v35, qword_101189E90);
          v36 = Logger.logObject.getter();
          v37 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v36, v37))
          {
            v38 = swift_slowAlloc();
            *v38 = 0;
            _os_log_impl(&_mh_execute_header, v36, v37, "Unable to convert to MusicKit Item", v38, 2u);
          }

          return;
        }

        (*(v24 + 32))(v28, v22, v23);
        (*(v24 + 16))(v26, v28, v23);
        v113 = objc_allocWithZone(type metadata accessor for LibraryArtistDetailViewController(0));
        v114 = sub_1001FAE8C(v26, 0);

        (*(v24 + 8))(v28, v23);
LABEL_96:
        v132 = v114;
        v133 = [*(&v177->isa + OBJC_IVAR____TtC5Music13LaunchOptions_windowScene) delegate];
        if (v133)
        {
          v179[0] = v133;
          sub_10010FC20(&unk_101184050, &unk_100EBFA30);
          sub_10010FC20(&unk_101184EB0, &qword_100ED56D0);
          if (swift_dynamicCast())
          {
            if (*(&v181 + 1))
            {
              v134 = *(*sub_10000954C(&v180, *(&v181 + 1)) + OBJC_IVAR____TtC5Music17MainSceneDelegate_interfaceContext);

              sub_10000959C(&v180);
              if (v134)
              {
                if (qword_10117F540 != -1)
                {
                  swift_once();
                }

                v135 = type metadata accessor for Logger();
                sub_1000060E4(v135, qword_101189E90);
                v136 = v132;
                v137 = Logger.logObject.getter();
                v138 = static os_log_type_t.default.getter();

                if (os_log_type_enabled(v137, v138))
                {
                  v139 = swift_slowAlloc();
                  v140 = swift_slowAlloc();
                  *v139 = 138543362;
                  *(v139 + 4) = v136;
                  *v140 = v136;
                  v141 = v136;
                  _os_log_impl(&_mh_execute_header, v137, v138, "Navigating to %{public}@", v139, 0xCu);
                  sub_1000095E8(v140, &unk_101183D70, &unk_100EC6540);
                }

                v142 = sub_10010FC20(&unk_1011841E0, &unk_100ECDA60);
                v143 = v167;
                v144 = &v167[*(v142 + 48)];
                v145 = *(sub_10010FC20(&unk_10118CE00, L"F\n.") + 48);
                *v143 = v136;
                v146 = type metadata accessor for UITraitOverrides();
                (*(*(v146 - 8) + 56))(&v143[v145], 1, 1, v146);
                type metadata accessor for AppInterfaceContext.Activity.Destination(0);
                swift_storeEnumTagMultiPayload();
                *v144 = 0;
                *(v144 + 1) = 0;
                swift_storeEnumTagMultiPayload();
                v147 = v168;
                sub_1002CF480(v143, v168, type metadata accessor for AppInterfaceContext.Activity);
                v148 = v166;
                sub_1002CF480(v147, v166, type metadata accessor for AppInterfaceContext.Activity);
                v149 = (*(v164 + 80) + 32) & ~*(v164 + 80);
                v150 = swift_allocObject();
                *(v150 + 16) = 0;
                *(v150 + 24) = 0;
                sub_1002CF4E8(v148, v150 + v149, type metadata accessor for AppInterfaceContext.Activity);
                v151 = v136;
                sub_100706900(v147, sub_100139B24, v150);

                sub_1002CF550(v147, type metadata accessor for AppInterfaceContext.Activity);
                sub_1002CF550(v143, type metadata accessor for AppInterfaceContext.Activity);
              }

              else
              {
              }

              return;
            }
          }

          else
          {
            v182 = 0;
            v180 = 0u;
            v181 = 0u;
          }
        }

        else
        {

          v182 = 0;
          v180 = 0u;
          v181 = 0u;
        }

        sub_1000095E8(&v180, &unk_101184EA0, &unk_100EBFA20);
        return;
      }

      if (qword_10117F540 != -1)
      {
        swift_once();
      }

      v110 = type metadata accessor for Logger();
      sub_1000060E4(v110, qword_101189E90);
      v177 = Logger.logObject.getter();
      v106 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v177, v106))
      {
        goto LABEL_74;
      }

      v107 = swift_slowAlloc();
      *v107 = 0;
      v108 = "Unable to resolve artist";
      goto LABEL_73;
  }

LABEL_34:
  v86 = v178;
LABEL_75:
}

double sub_1002C9C20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  *&v17[0] = a2;
  *(&v17[0] + 1) = a3;

  v7 = [(objc_class *)v6.super.isa __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v7)
  {
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
  }

  else
  {

    v15 = 0u;
    v16 = 0u;
  }

  v17[0] = v15;
  v17[1] = v16;
  if (*(&v16 + 1))
  {
    v8 = swift_dynamicCast();
    v9 = v13;
    v10 = v14;
    if (!v8)
    {
      v9 = 0;
      v10 = 0;
    }
  }

  else
  {
    sub_1000095E8(v17, &unk_101183F30, qword_100EBF960);
    v9 = 0;
    v10 = 0;
  }

  v11 = (v3 + OBJC_IVAR____TtC5Music13LaunchOptions_sourceApplicationBundleIdentifier);
  *v11 = v9;
  v11[1] = v10;

  return result;
}

double sub_1002C9D6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v9 = &v19 - v8;
  v20 = a2;
  v21 = a3;

  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v10 = sub_1000160B4(v22), (v11 & 1) != 0))
  {
    sub_10000DD18(*(a1 + 56) + 32 * v10, v23);
    sub_10001621C(v22);
    sub_10010FC20(&unk_10118A3F0, &qword_100ECDA70);
    if (swift_dynamicCast())
    {
      v13 = v20;
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      if (*(v13 + 16))
      {
        sub_100019C10(v14, v15);
        v17 = v16;

        if (v17)
        {

          URL.init(string:)();

          v18 = OBJC_IVAR____TtC5Music13LaunchOptions_referrerURL;
          swift_beginAccess();
          sub_10006B010(v9, v4 + v18, &qword_101183A20, &unk_100EBCF80);
          swift_endAccess();
          return result;
        }
      }

      else
      {
      }
    }
  }

  else
  {
    sub_10001621C(v22);
  }

  return result;
}

void sub_1002C9F54()
{
  v1 = *(v0 + OBJC_IVAR____TtC5Music13LaunchOptions_windowScene);
  v2 = PresentationSource.PresentingViewControllerOptions.allowsPresentation.unsafeMutableAddressor();
  v38 = static PresentationSource.topmostPresentedViewController(in:options:)(v1, *v2);

  if (!v38)
  {
    return;
  }

  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = v3;
    if (qword_10117F540 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000060E4(v5, qword_101189E90);
    v6 = v38;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138543362;
      *(v9 + 4) = v4;
      *v10 = v4;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v7, v8, "Passing to %{public}@", v9, 0xCu);
      sub_1000095E8(v10, &unk_101183D70, &unk_100EC6540);
    }

    URL._bridgeToObjectiveC()(v12);
    v38 = v13;
    [v4 handleSafariScriptURL:?];
  }

  else
  {
    v14 = &stru_101148000;
    v15 = [v38 presentingViewController];
    if (!v15)
    {
      goto LABEL_9;
    }

    v16 = v15;
    v17 = qword_10117F000;
    v18 = qword_101189E90;
    while (1)
    {
      if (v17[168] != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      sub_1000060E4(v19, v18);
      v20 = v16;
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = v18;
        v25 = v14;
        v26 = swift_slowAlloc();
        *v23 = 138543362;
        *(v23 + 4) = v20;
        *v26 = v16;
        v27 = v20;
        _os_log_impl(&_mh_execute_header, v21, v22, "Evaluating %{public}@", v23, 0xCu);
        sub_1000095E8(v26, &unk_101183D70, &unk_100EC6540);
        v14 = v25;
        v18 = v24;

        v17 = qword_10117F000;
      }

      objc_opt_self();
      v28 = swift_dynamicCastObjCClass();
      if (v28)
      {
        break;
      }

      v16 = [v38 v14[64].name];
      if (!v16)
      {
        goto LABEL_9;
      }
    }

    v29 = v28;
    v30 = v20;
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v33 = 138543362;
      *(v33 + 4) = v29;
      *v34 = v29;
      v35 = v30;
      _os_log_impl(&_mh_execute_header, v31, v32, "Passing to %{public}@", v33, 0xCu);
      sub_1000095E8(v34, &unk_101183D70, &unk_100EC6540);
    }

    URL._bridgeToObjectiveC()(v36);
    v6 = v37;
    [v29 handleSafariScriptURL:v37];
  }

LABEL_9:
}

uint64_t sub_1002CA3D8(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  v2[20] = swift_task_alloc();
  sub_10010FC20(&qword_101194980, &qword_100ECA390);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v3 = type metadata accessor for URLComponents();
  v2[23] = v3;
  v2[24] = *(v3 - 8);
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v4 = type metadata accessor for URL();
  v2[27] = v4;
  v5 = *(v4 - 8);
  v2[28] = v5;
  v2[29] = *(v5 + 64);
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v2[32] = v6;
  v2[33] = *(v6 - 8);
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();
  v2[40] = type metadata accessor for MainActor();
  v2[41] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[42] = v8;
  v2[43] = v7;

  return _swift_task_switch(sub_1002CA660, v8, v7);
}

uint64_t sub_1002CA660()
{
  v45 = v0;
  v1 = v0[39];
  v2 = v0[32];
  v3 = v0[33];
  v4 = v0[31];
  v6 = v0[27];
  v5 = v0[28];
  v7 = v0[18];
  v8 = Logger.sharePlayTogether.unsafeMutableAddressor();
  v0[44] = v8;
  v9 = *(v3 + 16);
  v0[45] = v9;
  v0[46] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v43 = v9;
  v9(v1, v8, v2);
  v10 = *(v5 + 16);
  v0[47] = v10;
  v0[48] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v10(v4, v7, v6);
  v11 = Logger.logObject.getter();
  v42 = static os_log_type_t.default.getter();
  v12 = os_log_type_enabled(v11, v42);
  v13 = v0[39];
  v15 = v0[32];
  v14 = v0[33];
  v16 = v0[31];
  v18 = v0[27];
  v17 = v0[28];
  if (v12)
  {
    v19 = swift_slowAlloc();
    v41 = v8;
    v20 = swift_slowAlloc();
    v44 = v20;
    *v19 = 136315138;
    sub_1002CF674(&qword_1011A4850, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v39 = v15;
    v40 = v13;
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    (*(v17 + 8))(v16, v18);
    v24 = sub_1000105AC(v21, v23, &v44);

    *(v19 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v11, v42, "Handling URL %s", v19, 0xCu);
    sub_10000959C(v20);
    v8 = v41;

    v25 = *(v14 + 8);
    v25(v40, v39);
  }

  else
  {

    (*(v17 + 8))(v16, v18);
    v25 = *(v14 + 8);
    v25(v13, v15);
  }

  v0[49] = v25;
  v26 = [objc_opt_self() sharedPrivacyInfo];
  v27 = [v26 privacyAcknowledgementRequiredForMusic];

  if (v27)
  {
    v28 = v0[34];
    v29 = v0[32];

    v43(v28, v8, v29);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    v32 = os_log_type_enabled(v30, v31);
    v33 = v0[34];
    v34 = v0[32];
    if (v32)
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "Privacy ack required, not presenting SharePlayTogether sheet.", v35, 2u);
    }

    v25(v33, v34);

    v36 = v0[1];

    return v36();
  }

  else
  {
    v0[50] = *ApplicationCapabilities.Controller.shared.unsafeMutableAddressor();

    v38 = swift_task_alloc();
    v0[51] = v38;
    *v38 = v0;
    v38[1] = sub_1002CAAEC;

    return ApplicationCapabilities.Controller.updated()((v0 + 2));
  }
}

uint64_t sub_1002CAAEC()
{
  v1 = *v0;

  v2 = *(v1 + 344);
  v3 = *(v1 + 336);

  return _swift_task_switch(sub_1002CAC30, v3, v2);
}

uint64_t sub_1002CAC30()
{
  v1 = *(v0 + 104);
  *(v0 + 416) = v1;
  if (!v1)
  {
    v19 = *(v0 + 360);
    v20 = *(v0 + 352);
    v21 = *(v0 + 280);
    v22 = *(v0 + 256);

    v19(v21, v20, v22);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Subscription status is nil, waiting for it to update", v25, 2u);
    }

    v26 = *(v0 + 392);
    v113 = *(v0 + 376);
    v27 = *(v0 + 280);
    v28 = *(v0 + 256);
    v29 = *(v0 + 240);
    v30 = *(v0 + 216);
    v31 = *(v0 + 224);
    v32 = *(v0 + 152);
    v112 = *(v0 + 144);

    v26(v27, v28);
    v33 = MPCloudServiceStatusControllerSubscriptionStatusDidChangeNotification;
    v34 = objc_opt_self();
    v35 = v33;
    v36 = [v34 sharedController];
    v113(v29, v112, v30);
    v37 = (*(v31 + 80) + 24) & ~*(v31 + 80);
    v38 = swift_allocObject();
    *(v38 + 16) = v32;
    (*(v31 + 32))(v38 + v37, v29, v30);
    type metadata accessor for NotificationObserver();
    swift_allocObject();

    v39 = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v35, v36, 1, 1, sub_1002D0280, v38);
    sub_100014984(v0 + 16);
    *(v32 + OBJC_IVAR____TtC5Music13LaunchOptions_subscriptionStatusObserver) = v39;
    goto LABEL_9;
  }

  v2 = v1;
  if ([v2 isMinorAccountHolder])
  {
    v3 = *(v0 + 360);
    v4 = *(v0 + 352);
    v5 = *(v0 + 288);
    v6 = *(v0 + 256);

    v3(v5, v4, v6);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Failed to join because account is a minor", v9, 2u);
    }

    v10 = *(v0 + 392);
    v11 = *(v0 + 288);
    v12 = *(v0 + 256);
    v14 = *(v0 + 152);
    v13 = *(v0 + 160);

    v10(v11, v12);
    v15 = type metadata accessor for TaskPriority();
    (*(*(v15 - 8) + 56))(v13, 1, 1, v15);

    v16 = static MainActor.shared.getter();
    v17 = swift_allocObject();
    v17[2] = v16;
    v17[3] = &protocol witness table for MainActor;
    v17[4] = v14;
    v18 = &unk_100EC5AE8;
LABEL_17:
    sub_1001F4CB8(0, 0, v13, v18, v17);

    sub_100014984(v0 + 16);
    goto LABEL_18;
  }

  if ((sub_10048BBDC(9, *(v0 + 48)) & 1) == 0)
  {
    v46 = *(v0 + 360);
    v47 = *(v0 + 352);
    v48 = *(v0 + 296);
    v49 = *(v0 + 256);

    v46(v48, v47, v49);
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&_mh_execute_header, v50, v51, "Failed to join because allowedServices don't contain .sharePlayTogether", v52, 2u);
    }

    v53 = *(v0 + 392);
    v54 = *(v0 + 296);
    v55 = *(v0 + 256);
    v56 = *(v0 + 152);
    v13 = *(v0 + 160);

    v53(v54, v55);
    v57 = type metadata accessor for TaskPriority();
    (*(*(v57 - 8) + 56))(v13, 1, 1, v57);

    v58 = static MainActor.shared.getter();
    v17 = swift_allocObject();
    v17[2] = v58;
    v17[3] = &protocol witness table for MainActor;
    v17[4] = v56;
    v18 = &unk_100EC5AC8;
    goto LABEL_17;
  }

  URL.absoluteString.getter();
  v40 = String._bridgeToObjectiveC()();

  v41 = [objc_opt_self() tokenForJoinURLString:v40];
  *(v0 + 424) = v41;

  if (!v41)
  {
    v61 = *(v0 + 360);
    v62 = *(v0 + 352);
    v63 = *(v0 + 304);
    v64 = *(v0 + 256);

    v61(v63, v62, v64);
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&_mh_execute_header, v65, v66, "Failed to join because token is nil", v67, 2u);
    }

    v68 = *(v0 + 392);
    v69 = *(v0 + 304);
    v70 = *(v0 + 256);
    v72 = *(v0 + 152);
    v71 = *(v0 + 160);

    v68(v69, v70);
    v73 = type metadata accessor for TaskPriority();
    (*(*(v73 - 8) + 56))(v71, 1, 1, v73);

    v74 = static MainActor.shared.getter();
    v75 = swift_allocObject();
    v75[2] = v74;
    v75[3] = &protocol witness table for MainActor;
    v75[4] = v72;
    sub_1001F4CB8(0, 0, v71, &unk_100EC5AD8, v75);

    sub_100014984(v0 + 16);
LABEL_9:

LABEL_18:

    v59 = *(v0 + 8);

    return v59();
  }

  v42 = *(v0 + 184);
  v43 = *(v0 + 192);
  v44 = *(v0 + 176);
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  v45 = *(v43 + 48);
  if (v45(v44, 1, v42) == 1)
  {
    sub_1000095E8(*(v0 + 176), &qword_101194980, &qword_100ECA390);
  }

  else
  {
    (*(*(v0 + 192) + 32))(*(v0 + 208), *(v0 + 176), *(v0 + 184));
    v76 = URLComponents.queryItemsDictionary.getter();
    if (v76)
    {
      v77 = v76;
      if (v76[2])
      {
        v78 = sub_100019C10(97, 0xE100000000000000);
        if (v79)
        {
          v80 = (v77[7] + 16 * v78);
          v82 = *v80;
          v81 = v80[1];

          v83 = *(v0 + 208);
          v84 = *(v0 + 184);
          v85 = *(v0 + 192);
          if (v82 == 1702195828 && v81 == 0xE400000000000000)
          {

            (*(v85 + 8))(v83, v84);
          }

          else
          {
            v111 = _stringCompareWithSmolCheck(_:_:expecting:)();

            (*(v85 + 8))(v83, v84);
            v86 = 0;
            if ((v111 & 1) == 0)
            {
              goto LABEL_33;
            }
          }

          v86 = 1;
          goto LABEL_33;
        }
      }
    }

    (*(*(v0 + 192) + 8))(*(v0 + 208), *(v0 + 184));
  }

  v86 = 0;
LABEL_33:
  v87 = *(v0 + 184);
  v88 = *(v0 + 168);
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  if (v45(v88, 1, v87) == 1)
  {
    sub_1000095E8(*(v0 + 168), &qword_101194980, &qword_100ECA390);
LABEL_43:
    v106 = 0;
    goto LABEL_44;
  }

  (*(*(v0 + 192) + 32))(*(v0 + 200), *(v0 + 168), *(v0 + 184));
  v89 = URLComponents.queryItemsDictionary.getter();
  if (!v89)
  {
    goto LABEL_42;
  }

  v90 = v89;
  if (!v89[2] || (v91 = sub_100019C10(29811, 0xE200000000000000), (v92 & 1) == 0))
  {

    goto LABEL_42;
  }

  v93 = (v90[7] + 16 * v91);
  v94 = *v93;
  v95 = v93[1];

  v96 = sub_1002B8768(v94, v95);
  if (v97)
  {
LABEL_42:
    (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));
    goto LABEL_43;
  }

  v98 = v96;
  v100 = *(v0 + 192);
  v99 = *(v0 + 200);
  v101 = *(v0 + 184);
  if (v98 != 1)
  {
    (*(v100 + 8))(v99, v101);
    goto LABEL_43;
  }

  *(v0 + 448) = 8;
  v102 = v99;
  v103 = v101;
  v104 = sub_100025CE0();
  v105 = FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v104);
  (*(v100 + 8))(v102, v103);
  v106 = v105 & 1;
LABEL_44:
  v107 = *(v0 + 152);
  type metadata accessor for SharePlayTogetherSession(0);
  v108 = *(v107 + OBJC_IVAR____TtC5Music13LaunchOptions_windowScene);
  *(v0 + 432) = v108;
  v109 = v108;
  v110 = swift_task_alloc();
  *(v0 + 440) = v110;
  *v110 = v0;
  v110[1] = sub_1002CB768;

  return sub_10074A0BC(v41, v109, v86, v106, 0, 0);
}