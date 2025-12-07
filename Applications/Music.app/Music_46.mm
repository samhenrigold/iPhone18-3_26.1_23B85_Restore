uint64_t sub_1005379F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&unk_1011838F0, &qword_100EC1070);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_100537A68(void (*a1)(char *, uint64_t, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v4 = type metadata accessor for MusicRestrictions();
  v28 = *(v4 - 8);
  __chkstk_darwin();
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Artist();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for MusicPin.Item();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MusicPin.item.getter();
  v15 = (*(v12 + 88))(v14, v11);
  if (v15 == enum case for MusicPin.Item.album(_:))
  {
    goto LABEL_2;
  }

  if (v15 == enum case for MusicPin.Item.artist(_:))
  {
    (*(v12 + 96))(v14, v11);
    (*(v8 + 32))(v10, v14, v7);
    NetworkMonitor.shared.unsafeMutableAddressor();

    v19 = NetworkMonitor.isOnline.getter();

    static MusicRestrictions.current.getter();
    v20 = MusicRestrictions.allowsExplicitContent.getter();
    (*(v28 + 8))(v6, v4);
    Artist.pinPlayabilityStatus(isOnline:explicitContentIsAllowed:)(v19 & 1, v20 & 1, v29);
    (*(v8 + 8))(v10, v7);
    return;
  }

  v21 = v15 == enum case for MusicPin.Item.musicVideo(_:) || v15 == enum case for MusicPin.Item.playlist(_:);
  if (v21 || v15 == enum case for MusicPin.Item.song(_:))
  {
LABEL_2:
    (*(v12 + 8))(v14, v11);
    if (qword_10117F5F8 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for MusicPin();
    v17 = sub_10053B09C(&qword_101192000, &type metadata accessor for MusicPin, &protocol conformance descriptor for MusicPin);
    v18 = *Player.state<A>(for:)(a1, v16, v17);
    (*(v18 + 256))();
  }

  else
  {
    v23 = enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.unsupportedType(_:);
    v24 = type metadata accessor for MusicPlayer.PlayabilityStatus.UnplayableReason();
    v25 = v29;
    (*(*(v24 - 8) + 104))(v29, v23, v24);
    v26 = enum case for MusicPlayer.PlayabilityStatus.unplayable(_:);
    v27 = type metadata accessor for MusicPlayer.PlayabilityStatus();
    (*(*(v27 - 8) + 104))(v25, v26, v27);
    (*(v12 + 8))(v14, v11);
  }
}

uint64_t sub_100537EF0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  sub_10010FC20(&unk_101189DA0, &unk_100EBF370);
  __chkstk_darwin();
  v4 = &v30 - v3;
  v5 = type metadata accessor for GenericMusicItem();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101197070, &unk_100ED1BC0);
  __chkstk_darwin();
  v10 = &v30 - v9;
  v11 = type metadata accessor for MusicPin();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = (&v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v15 = a1;
    dispatch thunk of LegacyModelObjectConvertible.init(_:)();
    if ((*(v12 + 48))(v10, 1, v11) != 1)
    {
      (*(v12 + 32))(v14, v10, v11);
      sub_100537A68(v14, v31);
      return (*(v12 + 8))(v14, v11);
    }

    sub_1000095E8(v10, &unk_101197070, &unk_100ED1BC0);
  }

  v16 = a1;
  GenericMusicItem.init(_:)();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1000095E8(v4, &unk_101189DA0, &unk_100EBF370);
    if (qword_10117F828 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_1000060E4(v17, qword_101218F08);
    v18 = v16;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      *(v21 + 4) = v18;
      *v22 = v18;
      v23 = v18;
      _os_log_impl(&_mh_execute_header, v19, v20, "Could not convert modelObject to MusicPin/GenericMusicItem %@", v21, 0xCu);
      sub_1000095E8(v22, &unk_101183D70, &unk_100EC6540);
    }

    v24 = enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.contentUnavailable(_:);
    v25 = type metadata accessor for MusicPlayer.PlayabilityStatus.UnplayableReason();
    v26 = v31;
    (*(*(v25 - 8) + 104))(v31, v24, v25);
    v27 = enum case for MusicPlayer.PlayabilityStatus.unplayable(_:);
    v28 = type metadata accessor for MusicPlayer.PlayabilityStatus();
    return (*(*(v28 - 8) + 104))(v26, v27, v28);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    sub_100538C48(v8, v31);
    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t MusicPlayer.PlayabilityStatus.isPlayable.getter()
{
  v0 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin();
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for MusicPlayer.PlayabilityStatus.playable(_:), v0, v2);
  v5 = static MusicPlayer.PlayabilityStatus.== infix(_:_:)();
  (*(v1 + 8))(v4, v0);
  return v5 & 1;
}

void sub_1005384B8(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for MusicPlayer.PlayabilityStatus.UnplayableReason();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v34 - v9;
  v11 = __chkstk_darwin();
  v13 = &v34 - v12;
  v14 = *(v6 + 16);
  v14(&v34 - v12, v2, v5, v11);
  v15 = (*(v6 + 88))(v13, v5);
  if (v15 == enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.networkUnavailable(_:))
  {
    static Alert.networkUnavailableAlert(model:traitCollection:)(v38, 0, a1);
LABEL_13:
    v16 = v38[0];
    v17 = v38[1];
    v18 = v38[2];
    v19 = v38[3];
    v20 = v39;
    goto LABEL_14;
  }

  if (v15 == enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.contentUnavailable(_:))
  {
    static Alert.contentUnavailableAlert()(v38);
    goto LABEL_13;
  }

  if (v15 == enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.ageVerificationRequired(_:))
  {
    static Alert.ageVerificationFallbackAlert()(v38);
    goto LABEL_13;
  }

  if (v15 == enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.explicitRestricted(_:))
  {
    goto LABEL_8;
  }

  if (v15 == enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.cellularRestricted(_:))
  {
    static Alert.cellularRestrictedAlert(model:)(v38, 0);
    goto LABEL_13;
  }

  if (v15 == enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.accountRequired(_:))
  {
    static Alert.accountRequiredAlert(traitCollection:)(a1, v38);
    goto LABEL_13;
  }

  if (v15 == enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.musicVideoRestricted(_:))
  {
LABEL_8:
    static Alert.explicitRestrictedAlert(traitCollection:)(a1, v38);
    goto LABEL_13;
  }

  if (v15 == enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.subscriptionRequired(_:))
  {
    static Alert.subscriptionRequiredAlert(traitCollection:)(a1, v38);
    goto LABEL_13;
  }

  if (v15 == enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.userUploadRequired(_:))
  {
    static Alert.userUploadRequiredAlert()(v38);
    goto LABEL_13;
  }

  if (v15 == enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.unsupportedType(_:))
  {
    if (qword_10117F828 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_1000060E4(v21, qword_101218F08);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Tried to play unsupported type", v24, 2u);
    }
  }

  else
  {
    if (qword_10117F828 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_1000060E4(v25, qword_101218F08);
    (v14)(v10, v2, v5);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v36 = v27;
      v29 = v28;
      v37 = swift_slowAlloc();
      *&v38[0] = v37;
      *v29 = 136315138;
      (v14)(v8, v10, v5);
      v35 = String.init<A>(describing:)();
      v31 = v30;
      v32 = *(v6 + 8);
      v32(v10, v5);
      v33 = sub_1000105AC(v35, v31, v38);

      *(v29 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v26, v36, "Unknown unplayable reason=%s", v29, 0xCu);
      sub_10000959C(v37);
    }

    else
    {

      v32 = *(v6 + 8);
      v32(v10, v5);
    }

    v32(v13, v5);
  }

  v20 = 0;
  v16 = 0uLL;
  v17 = 0uLL;
  v18 = 0uLL;
  v19 = 0uLL;
LABEL_14:
  *a2 = v16;
  *(a2 + 16) = v17;
  *(a2 + 32) = v18;
  *(a2 + 48) = v19;
  *(a2 + 64) = v20;
}

id sub_100538B74(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for CarPlayPlayabilityStatusService();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_100538BCC()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, qword_101218F08);
  sub_1000060E4(v0, qword_101218F08);
  sub_100005AE4();
  OS_os_log.init(musicCategory:)(0x6C69626179616C70, 0xEB00000000797469);
  return Logger.init(_:)();
}

uint64_t sub_100538C48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a1;
  v67 = a2;
  v47 = type metadata accessor for UploadedVideo();
  v46 = *(v47 - 8);
  __chkstk_darwin();
  v45 = (&v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = type metadata accessor for UploadedAudio();
  v49 = *(v3 - 8);
  v50 = v3;
  __chkstk_darwin();
  v48 = (&v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for TVEpisode();
  v52 = *(v5 - 8);
  v53 = v5;
  __chkstk_darwin();
  v51 = (&v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for MusicMovie();
  v64 = *(v7 - 8);
  v65 = v7;
  __chkstk_darwin();
  v63 = (&v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for Station();
  v55 = *(v9 - 8);
  v56 = v9;
  __chkstk_darwin();
  v54 = (&v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for MusicVideo();
  v61 = *(v11 - 8);
  v62 = v11;
  __chkstk_darwin();
  v60 = (&v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for Album();
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = (&v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = type metadata accessor for Playlist();
  v58 = *(v17 - 8);
  v59 = v17;
  __chkstk_darwin();
  v19 = (&v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = type metadata accessor for Song();
  v57 = *(v20 - 8);
  __chkstk_darwin();
  v22 = (&v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = type metadata accessor for GenericMusicItem();
  v24 = *(v23 - 8);
  __chkstk_darwin();
  v26 = &v45 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10117F5F8 != -1)
  {
    swift_once();
  }

  (*(v24 + 16))(v26, v66, v23);
  v27 = (*(v24 + 88))(v26, v23);
  if (v27 == enum case for GenericMusicItem.album(_:))
  {
    (*(v24 + 96))(v26, v23);
    (*(v14 + 32))(v16, v26, v13);
    v28 = *Player.state<A>(for:)(v16, v13, &protocol witness table for Album);
    (*(v28 + 256))();

    return (*(v14 + 8))(v16, v13);
  }

  if (v27 == enum case for GenericMusicItem.musicMovie(_:))
  {
    (*(v24 + 96))(v26, v23);
    v31 = v63;
    v30 = v64;
    v32 = v65;
    (*(v64 + 32))(v63, v26, v65);
    v33 = &unk_1011A38E0;
    v34 = &type metadata accessor for MusicMovie;
    v35 = &protocol conformance descriptor for MusicMovie;
LABEL_9:
    v36 = sub_10053B09C(v33, v34, v35);
LABEL_10:
    v37 = *Player.state<A>(for:)(v31, v32, v36);
    (*(v37 + 256))();

    return (*(v30 + 8))(v31, v32);
  }

  if (v27 == enum case for GenericMusicItem.musicVideo(_:))
  {
    (*(v24 + 96))(v26, v23);
    v31 = v60;
    v30 = v61;
    v32 = v62;
    (*(v61 + 32))(v60, v26, v62);
    v33 = &unk_101193C00;
    v34 = &type metadata accessor for MusicVideo;
    v35 = &protocol conformance descriptor for MusicVideo;
    goto LABEL_9;
  }

  if (v27 == enum case for GenericMusicItem.playlist(_:))
  {
    (*(v24 + 96))(v26, v23);
    v39 = v58;
    v38 = v59;
    (*(v58 + 32))(v19, v26, v59);
    v40 = *Player.state<A>(for:)(v19, v38, &protocol witness table for Playlist);
    (*(v40 + 256))();

    return (*(v39 + 8))(v19, v38);
  }

  else if (v27 == enum case for GenericMusicItem.song(_:))
  {
    (*(v24 + 96))(v26, v23);
    v41 = v57;
    (*(v57 + 32))(v22, v26, v20);
    v42 = *Player.state<A>(for:)(v22, v20, &protocol witness table for Song);
    (*(v42 + 256))();

    return (*(v41 + 8))(v22, v20);
  }

  else
  {
    if (v27 == enum case for GenericMusicItem.station(_:))
    {
      (*(v24 + 96))(v26, v23);
      v31 = v54;
      v30 = v55;
      v32 = v56;
      (*(v55 + 32))(v54, v26, v56);
      v36 = &protocol witness table for Station;
      goto LABEL_10;
    }

    if (v27 == enum case for GenericMusicItem.tvEpisode(_:))
    {
      (*(v24 + 96))(v26, v23);
      v31 = v51;
      v30 = v52;
      v32 = v53;
      (*(v52 + 32))(v51, v26, v53);
      v33 = &qword_101199720;
      v34 = &type metadata accessor for TVEpisode;
      v35 = &protocol conformance descriptor for TVEpisode;
      goto LABEL_9;
    }

    if (v27 == enum case for GenericMusicItem.uploadedAudio(_:))
    {
      (*(v24 + 96))(v26, v23);
      v31 = v48;
      v30 = v49;
      v32 = v50;
      (*(v49 + 32))(v48, v26, v50);
      v33 = &unk_101193FF8;
      v34 = &type metadata accessor for UploadedAudio;
      v35 = &protocol conformance descriptor for UploadedAudio;
      goto LABEL_9;
    }

    if (v27 == enum case for GenericMusicItem.uploadedVideo(_:))
    {
      (*(v24 + 96))(v26, v23);
      v30 = v46;
      v31 = v45;
      v32 = v47;
      (*(v46 + 32))(v45, v26, v47);
      v33 = &qword_101181148;
      v34 = &type metadata accessor for UploadedVideo;
      v35 = &protocol conformance descriptor for UploadedVideo;
      goto LABEL_9;
    }

    v43 = enum case for MusicPlayer.PlayabilityStatus.playable(_:);
    v44 = type metadata accessor for MusicPlayer.PlayabilityStatus();
    (*(*(v44 - 8) + 104))(v67, v43, v44);
    return (*(v24 + 8))(v26, v23);
  }
}

uint64_t sub_1005397CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[5] = v6;
  v4[6] = v5;

  return _swift_task_switch(sub_100539864, v6, v5);
}

uint64_t sub_100539864()
{
  if (qword_10117F828 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[7] = sub_1000060E4(v1, qword_101218F08);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Presenting Age Verification", v4, 2u);
  }

  if (qword_10117F608 != -1)
  {
    swift_once();
  }

  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_1005399F4;
  v6 = v0[3];

  return PlaybackController.displayAgeVerification(for:)(v6);
}

uint64_t sub_1005399F4()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  v3 = *(v2 + 48);
  v4 = *(v2 + 40);
  if (v0)
  {
    v5 = sub_100539B30;
  }

  else
  {
    v5 = sub_100222A34;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100539B30()
{
  v12 = v0;

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[9];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    v0[2] = v3;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0, &unk_100EBE390);
    v6 = String.init<A>(describing:)();
    v8 = sub_1000105AC(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to display Age Verification with error=%s", v4, 0xCu);
    sub_10000959C(v5);
  }

  else
  {
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_100539CEC()
{
  if (qword_10117F828 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000060E4(v1, qword_101218F08);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Presenting Upsell", v4, 2u);
  }

  v5 = *(v0 + 64);

  sub_100008FE4(v5, v0 + 16);
  *(v0 + 56) = 0;
  static SubscriptionUpsellPresenter.present(for:)(v0 + 16);
  sub_100309980(v0 + 16);
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100539E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[56] = a4;
  v5[57] = a5;
  type metadata accessor for MainActor();
  v5[58] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100539EBC, v7, v6);
}

uint64_t sub_100539EBC()
{
  v26 = v0;

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong traitCollection];
  }

  else
  {
    v3 = 0;
  }

  sub_1005384B8(v3, v0 + 88);
  v22 = *(v0 + 120);
  v23 = *(v0 + 136);
  v24 = *(v0 + 152);
  v20 = *(v0 + 88);
  v21 = *(v0 + 104);

  v4 = *(v0 + 144);
  if (v4)
  {
    v5 = *(v0 + 152);
    v6 = *(v0 + 104);
    *(v0 + 16) = *(v0 + 88);
    *(v0 + 32) = v6;
    *(v0 + 48) = *(v0 + 120);
    *(v0 + 64) = *(v0 + 136);
    *(v0 + 72) = v4;
    *(v0 + 80) = v5;
    v7 = Alert.uiAlertController.getter();
    PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v7, 1, 1, 0, 0);

    if (qword_10117F828 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1000060E4(v8, qword_101218F08);
    *(v0 + 192) = v22;
    *(v0 + 208) = v23;
    *(v0 + 224) = v24;
    *(v0 + 160) = v20;
    *(v0 + 176) = v21;
    sub_10053A574(v0 + 160, v0 + 232);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    sub_1000095E8(v0 + 88, &qword_10118BFD0, &unk_100ED1B90);
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v25 = v12;
      *v11 = 136315138;
      v13 = *(v0 + 64);
      *(v0 + 336) = *(v0 + 48);
      *(v0 + 352) = v13;
      *(v0 + 368) = *(v0 + 80);
      v14 = *(v0 + 32);
      *(v0 + 304) = *(v0 + 16);
      *(v0 + 320) = v14;
      *(v0 + 264) = v22;
      *(v0 + 280) = v23;
      *(v0 + 296) = v24;
      *(v0 + 232) = v20;
      *(v0 + 248) = v21;
      sub_10053A574(v0 + 232, v0 + 376);
      v15 = String.init<A>(describing:)();
      v17 = sub_1000105AC(v15, v16, &v25);

      *(v11 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v9, v10, "Showing alert=%s", v11, 0xCu);
      sub_10000959C(v12);

      sub_1000095E8(v0 + 88, &qword_10118BFD0, &unk_100ED1B90);
    }

    else
    {

      sub_1000095E8(v0 + 88, &qword_10118BFD0, &unk_100ED1B90);
    }
  }

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_10053A1BC(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_101194000, &qword_100ED1BD0);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v15[-1] - v4;
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v6 = String.init(localized:table:bundle:locale:comment:)();
  v8 = v7;
  (*(v3 + 16))(v5, a1, v2);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  (*(v3 + 32))(v10 + v9, v5, v2);
  static Alert.dolbyAtmosDownloadsAlert(message:completion:)(v6, v8, &unk_100ED1BE0, v10, v15);

  v11 = Alert.uiAlertController.getter();
  PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v11, 1, 1, 0, 0);

  v12 = [objc_opt_self() standardUserDefaults];
  NSUserDefaults.hasSeenDolbyDownloadConflictAlert.setter();

  return sub_100344A84(v15);
}

uint64_t sub_10053A460(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  type metadata accessor for MainActor();
  *(v2 + 24) = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10053A4F8, v4, v3);
}

uint64_t sub_10053A4F8()
{

  sub_10010FC20(&qword_101194000, &qword_100ED1BD0);
  CheckedContinuation.resume(returning:)();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10053A5D0(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a3;
  v68 = a1;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v67 = &v60 - v8;
  v9 = type metadata accessor for MusicPlayer.PlayabilityStatus.UnplayableReason();
  v66 = *(v9 - 8);
  v10 = *(v66 + 64);
  __chkstk_darwin();
  v63 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v60 - v11;
  __chkstk_darwin();
  v69 = &v60 - v13;
  v14 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v62 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v65 = &v60 - v17;
  __chkstk_darwin();
  v19 = &v60 - v18;
  v71[3] = a4;
  v71[4] = a5;
  v20 = sub_10001C8B8(v71);
  v21 = *(*(a4 - 8) + 16);
  v22 = a4;
  v23 = v68;
  v21(v20, a2, v22);
  v24 = *(v15 + 16);
  v24(v19, v23, v14);
  v25 = (*(v15 + 88))(v19, v14);
  if (v25 == enum case for MusicPlayer.PlayabilityStatus.unplayable(_:))
  {
    (*(v15 + 96))(v19, v14);
    v26 = v66;
    v27 = *(v66 + 32);
    v28 = v69;
    v27(v69, v19, v9);
    v29 = *(v26 + 16);
    v29(v12, v28, v9);
    v30 = (*(v26 + 88))(v12, v9);
    v31 = v9;
    if (v30 != enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.ageVerificationRequired(_:))
    {
      v46 = v69;
      if (v30 == enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.subscriptionRequired(_:))
      {
        static ApplicationCapabilities.shared.getter(v72);
        sub_100014984(v72);
        if ((BYTE8(v72[0]) & 1) == 0)
        {
          v47 = type metadata accessor for TaskPriority();
          v48 = v67;
          (*(*(v47 - 8) + 56))(v67, 1, 1, v47);
          sub_100008FE4(v71, v70);
          v49 = swift_allocObject();
          *(v49 + 16) = 0;
          *(v49 + 24) = 0;
          sub_100059A8C(v70, v49 + 32);
          sub_1001F4CB8(0, 0, v48, &unk_100ED1BA8, v49);

          (*(v26 + 8))(v46, v31);
          return sub_10000959C(v71);
        }
      }

      else
      {
        (*(v26 + 8))(v12, v31);
      }

      v50 = type metadata accessor for TaskPriority();
      v51 = *(*(v50 - 8) + 56);
      v52 = v31;
      v61 = v31;
      v51(v67, 1, 1, v50);
      v53 = v63;
      v29(v63, v46, v52);
      sub_10012B7A8(v64, v70);
      type metadata accessor for MainActor();
      v54 = static MainActor.shared.getter();
      v55 = v46;
      v56 = (*(v26 + 80) + 32) & ~*(v26 + 80);
      v57 = swift_allocObject();
      *(v57 + 16) = v54;
      *(v57 + 24) = &protocol witness table for MainActor;
      v58 = v61;
      v27((v57 + v56), v53, v61);
      sub_10012B828(v70, v57 + ((v10 + v56 + 7) & 0xFFFFFFFFFFFFFFF8));
      sub_1001F4CB8(0, 0, v67, &unk_100ED1BA0, v57);

      (*(v26 + 8))(v55, v58);
      return sub_10000959C(v71);
    }

    v32 = type metadata accessor for TaskPriority();
    v33 = v67;
    (*(*(v32 - 8) + 56))(v67, 1, 1, v32);
    sub_100008FE4(v71, v72);
    type metadata accessor for MainActor();
    v34 = static MainActor.shared.getter();
    v35 = swift_allocObject();
    *(v35 + 16) = v34;
    *(v35 + 24) = &protocol witness table for MainActor;
    sub_100059A8C(v72, v35 + 32);
    sub_1001F4CB8(0, 0, v33, &unk_100ED1BB0, v35);

    (*(v26 + 8))(v69, v9);
  }

  else if (v25 != enum case for MusicPlayer.PlayabilityStatus.playable(_:))
  {
    v69 = *(v15 + 8);
    (v69)(v19, v14);
    if (qword_10117F828 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_1000060E4(v36, qword_101218F08);
    v37 = v65;
    v24(v65, v23, v14);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      *&v72[0] = v68;
      *v40 = 136315138;
      v24(v62, v37, v14);
      v41 = String.init<A>(describing:)();
      v42 = v37;
      v44 = v43;
      (v69)(v42, v14);
      v45 = sub_1000105AC(v41, v44, v72);

      *(v40 + 4) = v45;
      _os_log_impl(&_mh_execute_header, v38, v39, "Unknown playabilityStatus=%s", v40, 0xCu);
      sub_10000959C(v68);
    }

    else
    {

      (v69)(v37, v14);
    }
  }

  return sub_10000959C(v71);
}

uint64_t sub_10053ADE0(uint64_t a1)
{
  v4 = *(type metadata accessor for MusicPlayer.PlayabilityStatus.UnplayableReason() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100008F30;

  return sub_100539E24(a1, v7, v8, v1 + v5, v1 + v6);
}

uint64_t sub_10053AEFC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100008F30;

  return sub_100539CCC(a1, v4, v5, v1 + 32);
}

uint64_t sub_10053AFAC()
{
  swift_unknownObjectRelease();
  sub_10000959C((v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_10053AFEC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100008F30;

  return sub_1005397CC(a1, v4, v5, v1 + 32);
}

uint64_t sub_10053B09C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10053B0E4(uint64_t a1)
{
  v4 = *(sub_10010FC20(&qword_101194000, &qword_100ED1BD0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002F3F4;

  return sub_10053A460(a1, v1 + v5);
}

id sub_10053B1C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  ObjectType = swift_getObjectType();
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  *&v6 = __chkstk_darwin().n128_u64[0];
  v7 = &v3[OBJC_IVAR____TtC5Music34AudioTraitDisclosureViewController_dismissHandler];
  *v7 = 0;
  *(v7 + 1) = 0;
  v21.receiver = v3;
  v21.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v21, "initWithNibName:bundle:", 0, 0, v6);
  sub_10065B858(v4);
  v9 = String._bridgeToObjectiveC()();

  [v8 setTitle:v9];

  v10 = String._bridgeToObjectiveC()();

  [v8 setMessage:v10];

  [v8 setPreferredStyle:1];
  type metadata accessor for AudioTraitDisclosureViewController.HeaderSymbolViewController();
  sub_10053B56C(0x7373656C73736F6CLL, 0xE800000000000000);
  v12 = v11;
  [v8 _setHeaderContentViewController:v11];

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v13 = String._bridgeToObjectiveC()();

  aBlock[4] = sub_10053B66C;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10027D328;
  aBlock[3] = &unk_1010B1408;
  v14 = _Block_copy(aBlock);

  v15 = objc_opt_self();
  v16 = [v15 actionWithTitle:v13 style:0 handler:v14];
  _Block_release(v14);

  [v8 addAction:v16];
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v17 = String._bridgeToObjectiveC()();

  v18 = [v15 actionWithTitle:v17 style:0 handler:0];

  [v8 addAction:v18];
  [v8 setPreferredAction:v18];

  return v8;
}

void sub_10053B56C(uint64_t a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(v2) init];
  v4 = qword_10117F878;
  v5 = v3;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = qword_101218F90;
  v7 = String._bridgeToObjectiveC()();
  v8 = [objc_opt_self() imageNamed:v7 inBundle:v6];

  if (v8)
  {

    v9 = *&v5[OBJC_IVAR____TtCC5Music34AudioTraitDisclosureViewControllerP33_B18012DE9244B542B3AC7DEA702FBC9726HeaderSymbolViewController_image];
    *&v5[OBJC_IVAR____TtCC5Music34AudioTraitDisclosureViewControllerP33_B18012DE9244B542B3AC7DEA702FBC9726HeaderSymbolViewController_image] = v8;
  }

  else
  {
    __break(1u);
  }
}

void sub_10053B66C()
{
  v0 = [objc_opt_self() defaultWorkspace];
  if (v0)
  {
    v1 = v0;
    LSApplicationWorkspace.openAudioQuality()();
  }
}

void sub_10053B7EC()
{
  v1 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 96.0}];
  v2 = [objc_allocWithZone(UIImageView) initWithImage:*&v0[OBJC_IVAR____TtCC5Music34AudioTraitDisclosureViewControllerP33_B18012DE9244B542B3AC7DEA702FBC9726HeaderSymbolViewController_image]];
  [v2 setContentMode:1];
  [v2 setFrame:{0.0, 0.0, 0.0, 60.0}];
  [v2 setAutoresizingMask:2];
  v3 = [objc_opt_self() effectWithStyle:8];
  v4 = [objc_opt_self() effectForBlurEffect:v3 style:4];

  v5 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v4];
  v6 = [v5 contentView];
  [v6 addSubview:v2];

  v17 = v5;
  [v2 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v19.origin.x = v8;
  v19.origin.y = v10;
  v19.size.width = v12;
  v19.size.height = v14;
  [v17 setFrame:{0.0, 33.0, 0.0, CGRectGetHeight(v19)}];
  [v17 setAutoresizingMask:2];

  [v1 addSubview:v17];
  [v1 bounds];
  [v0 setPreferredContentSize:{v15, v16}];
  [v0 setView:v1];
}

id sub_10053BC00()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AudioTraitDisclosureViewController.HeaderSymbolViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10053BCD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v93 = type metadata accessor for UIView.Corner.Radius();
  v92 = *(v93 - 8);
  __chkstk_darwin();
  v91 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101195200, &qword_100EBFA50);
  __chkstk_darwin();
  v95 = &v90 - v8;
  sub_10010FC20(&unk_101184060, &qword_100EBDF50);
  __chkstk_darwin();
  v100 = &v90 - v9;
  sub_10010FC20(&unk_101188920, &qword_100EBCC50);
  __chkstk_darwin();
  v101 = &v90 - v10;
  v11 = _s11ArtworkInfoV10PropertiesVMa(0);
  v109 = *(v11 - 8);
  __chkstk_darwin();
  v94 = v12;
  v98 = &v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10010FC20(&qword_101194070, &qword_100ED1C40);
  __chkstk_darwin();
  v15 = &v90 - v14;
  sub_10010FC20(&qword_101194078, &qword_100ED1C48);
  __chkstk_darwin();
  v97 = &v90 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v18 = &v90 - v17;
  __chkstk_darwin();
  v20 = &v90 - v19;
  sub_10010FC20(&qword_10118DFA8, &qword_100ECA000);
  __chkstk_darwin();
  v105 = &v90 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v104 = &v90 - v22;
  __chkstk_darwin();
  v99 = &v90 - v23;
  __chkstk_darwin();
  v25 = &v90 - v24;
  *&v26 = __chkstk_darwin().n128_u64[0];
  v110 = &v90 - v27;
  v111 = v3;
  v28 = *(v11 + 24);
  v112 = a1;
  v29 = *(a1 + v28 + 8);
  v96 = a2;
  if (v29)
  {
    v30 = [v3 tabBarController];
    if (!v30 || (v31 = v30, v32 = [v30 traitCollection], v31, !v32))
    {
      v32 = [objc_opt_self() currentTraitCollection];
    }

    [v32 displayScale];
  }

  v107 = v11;
  v33 = *(v112 + *(v11 + 20));
  v34 = UIListContentConfiguration.imageProperties.modify();
  v35 = UIListContentConfiguration.ImageProperties.reservedLayoutSize.modify();
  *v36 = v33;
  v35(v113, 0);
  v34(v114, 0);
  v37 = UIListContentConfiguration.imageProperties.modify();
  UIListContentConfiguration.ImageProperties.maximumSize.setter();
  v37(v114, 0);
  v38 = v110;
  sub_10053CB9C(v110);
  sub_1000089F8(v38, v25, &qword_10118DFA8, &qword_100ECA000);
  v39 = _s11ArtworkInfoVMa(0);
  v40 = *(v39 - 8);
  v41 = *(v40 + 48);
  v103 = v40 + 48;
  v102 = v41;
  v42 = v41(v25, 1, v39);
  v106 = a3;
  v108 = v39;
  if (v42 == 1)
  {
    sub_1000095E8(v25, &qword_10118DFA8, &qword_100ECA000);
    v43 = 1;
  }

  else
  {
    sub_10053DB50(v25, v20, _s11ArtworkInfoV10PropertiesVMa);
    sub_10053DA10(v25, _s11ArtworkInfoVMa);
    v43 = 0;
  }

  v44 = v109;
  v45 = *(v109 + 56);
  v46 = v107;
  v45(v20, v43, 1, v107);
  sub_10053DB50(v112, v18, _s11ArtworkInfoV10PropertiesVMa);
  v45(v18, 0, 1, v46);
  v47 = *(v13 + 48);
  sub_1000089F8(v20, v15, &qword_101194078, &qword_100ED1C48);
  sub_1000089F8(v18, &v15[v47], &qword_101194078, &qword_100ED1C48);
  v48 = *(v44 + 48);
  if (v48(v15, 1, v46) == 1)
  {
    sub_1000095E8(v18, &qword_101194078, &qword_100ED1C48);
    sub_1000095E8(v20, &qword_101194078, &qword_100ED1C48);
    v49 = v48(&v15[v47], 1, v46);
    v50 = v111;
    v51 = v108;
    if (v49 == 1)
    {
      v52 = &qword_101194078;
      v53 = &qword_100ED1C48;
      v54 = v15;
LABEL_17:
      sub_1000095E8(v54, v52, v53);
      goto LABEL_23;
    }
  }

  else
  {
    v55 = v97;
    sub_1000089F8(v15, v97, &qword_101194078, &qword_100ED1C48);
    if (v48(&v15[v47], 1, v46) != 1)
    {
      v64 = v98;
      sub_10053D0CC(&v15[v47], v98);
      v65 = v55;
      v66 = sub_10053D680(v55, v64);
      sub_10053DA10(v64, _s11ArtworkInfoV10PropertiesVMa);
      sub_1000095E8(v18, &qword_101194078, &qword_100ED1C48);
      sub_1000095E8(v20, &qword_101194078, &qword_100ED1C48);
      sub_10053DA10(v65, _s11ArtworkInfoV10PropertiesVMa);
      sub_1000095E8(v15, &qword_101194078, &qword_100ED1C48);
      v50 = v111;
      v51 = v108;
      if (v66)
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    sub_1000095E8(v18, &qword_101194078, &qword_100ED1C48);
    sub_1000095E8(v20, &qword_101194078, &qword_100ED1C48);
    sub_10053DA10(v55, _s11ArtworkInfoV10PropertiesVMa);
    v50 = v111;
    v51 = v108;
  }

  sub_1000095E8(v15, &qword_101194070, &qword_100ED1C40);
LABEL_15:
  v56 = v112;
  v57 = v99;
  sub_10053DB50(v112, v99, _s11ArtworkInfoV10PropertiesVMa);
  *(v57 + *(v51 + 20)) = 0;
  (*(v40 + 56))(v57, 0, 1, v51);
  sub_10053CD3C(v57);
  v58 = v101;
  sub_1000089F8(v56, v101, &unk_101188920, &qword_100EBCC50);
  v59 = type metadata accessor for Artwork();
  v60 = *(v59 - 8);
  if ((*(v60 + 48))(v58, 1, v59) == 1)
  {
    v52 = &unk_101188920;
    v53 = &qword_100EBCC50;
    v54 = v58;
    goto LABEL_17;
  }

  v61 = type metadata accessor for Artwork.CropStyle();
  (*(*(v61 - 8) + 56))(v100, 1, 1, v61);
  v62 = type metadata accessor for Artwork.ImageFormat();
  v63 = v95;
  (*(*(v62 - 8) + 56))(v95, 1, 1, v62);
  if (v96)
  {
    sub_10053DB08(&unk_101184780, type metadata accessor for ArtworkPrefetchingController.CacheReference, &unk_100EC2A40);
  }

  v67 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v68 = v98;
  sub_10053DB50(v112, v98, _s11ArtworkInfoV10PropertiesVMa);
  v69 = (*(v109 + 80) + 24) & ~*(v109 + 80);
  v70 = swift_allocObject();
  *(v70 + 16) = v67;
  v71 = v70 + v69;
  v50 = v111;
  sub_10053D0CC(v68, v71);

  v72 = v100;
  v73 = v101;
  Artwork.loadImage(width:height:pixelLength:cropStyle:format:cacheOwner:completion:)();

  sub_1000095E8(v63, &unk_101195200, &qword_100EBFA50);
  sub_1000095E8(v72, &unk_101184060, &qword_100EBDF50);

  (*(v60 + 8))(v73, v59);
  v51 = v108;
LABEL_23:
  v74 = v104;
  sub_10053CB9C(v104);
  v75 = v102;
  if (v102(v74, 1, v51))
  {
    sub_1000095E8(v74, &qword_10118DFA8, &qword_100ECA000);
LABEL_25:
    v76 = UIListContentConfiguration.imageProperties.modify();
    UIListContentConfiguration.ImageProperties.strokeWidth.setter();
    v76(v114, 0);
    v77 = UIListContentConfiguration.imageProperties.modify();
    UIListContentConfiguration.ImageProperties.cornerRadius.setter();
    v77(v114, 0);
    goto LABEL_28;
  }

  v78 = *(v74 + *(v51 + 20));
  v79 = v78;
  sub_1000095E8(v74, &qword_10118DFA8, &qword_100ECA000);
  if (!v78)
  {
    goto LABEL_25;
  }

  v80 = UIView.Border.artwork.unsafeMutableAddressor()[2];
  v81 = UIListContentConfiguration.imageProperties.modify();
  UIListContentConfiguration.ImageProperties.strokeColor.setter();
  v81(v114, 0);
  v82 = UIListContentConfiguration.imageProperties.modify();
  UIListContentConfiguration.ImageProperties.strokeWidth.setter();
  v82(v114, 0);
  v83 = v91;
  UIView.Corner.radius.getter();
  UIView.Corner.Radius.value(in:)();
  (*(v92 + 8))(v83, v93);
  v84 = UIListContentConfiguration.imageProperties.modify();
  UIListContentConfiguration.ImageProperties.cornerRadius.setter();
  v84(v114, 0);
LABEL_28:
  v85 = v105;
  sub_10053CB9C(v105);
  if (v75(v85, 1, v51))
  {
    sub_1000095E8(v85, &qword_10118DFA8, &qword_100ECA000);
  }

  else
  {
    v87 = *(v85 + *(v51 + 20));
    v88 = v87;
    sub_1000095E8(v85, &qword_10118DFA8, &qword_100ECA000);
    if (v87)
    {
      goto LABEL_32;
    }
  }

  v86 = [v50 image];
LABEL_32:
  UIListContentConfiguration.image.setter();
  return sub_1000095E8(v110, &qword_10118DFA8, &qword_100ECA000);
}

uint64_t sub_10053CB9C@<X0>(uint64_t a1@<X8>)
{
  if (qword_10117F830 != -1)
  {
    swift_once();
  }

  if (objc_getAssociatedObject(v1, qword_101194068))
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
  if (*(&v8 + 1))
  {
    v3 = _s11ArtworkInfoVMa(0);
    v4 = swift_dynamicCast();
    return (*(*(v3 - 8) + 56))(a1, v4 ^ 1u, 1, v3);
  }

  else
  {
    sub_1000095E8(v9, &unk_101183F30, qword_100EBF960);
    v6 = _s11ArtworkInfoVMa(0);
    return (*(*(v6 - 8) + 56))(a1, 1, 1, v6);
  }
}

uint64_t sub_10053CD14()
{
  result = swift_slowAlloc();
  qword_101194068 = result;
  return result;
}

uint64_t sub_10053CD3C(uint64_t a1)
{
  v3 = _s11ArtworkInfoVMa(0);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_10118DFA8, &qword_100ECA000);
  __chkstk_darwin();
  v8 = &v12 - v7;
  if (qword_10117F830 != -1)
  {
    swift_once();
  }

  v9 = qword_101194068;
  sub_1000089F8(a1, v8, &qword_10118DFA8, &qword_100ECA000);
  if ((*(v4 + 48))(v8, 1, v3) == 1)
  {
    v10 = 0;
  }

  else
  {
    sub_10053DB50(v8, v6, _s11ArtworkInfoVMa);
    v10 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    sub_10053DA10(v8, _s11ArtworkInfoVMa);
  }

  objc_setAssociatedObject(v1, v9, v10, 0x303);
  swift_unknownObjectRelease();
  return sub_1000095E8(a1, &qword_10118DFA8, &qword_100ECA000);
}

void sub_10053CF38(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(_s11ArtworkInfoV10PropertiesVMa(0) - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
    sub_10053DB50(a4, &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), _s11ArtworkInfoV10PropertiesVMa);
    v10 = (*(v6 + 80) + 24) & ~*(v6 + 80);
    v11 = swift_allocObject();
    *(v11 + 16) = v9;
    sub_10053D0CC(&v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
    *(v11 + ((v7 + v10 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;
    v12 = a1;
    v13 = v9;
    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_10053DA70, v11);
  }
}

uint64_t sub_10053D0CC(uint64_t a1, uint64_t a2)
{
  v4 = _s11ArtworkInfoV10PropertiesVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_10053D130(void *a1, uint64_t a2)
{
  v5 = *(_s11ArtworkInfoV10PropertiesVMa(0) - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  sub_10053CF38(a1, a2, v6, v7);
}

uint64_t sub_10053D1B4(void *a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_10118DFA8, &qword_100ECA000);
  __chkstk_darwin();
  v15 = aBlock - v14;
  sub_10053DB50(a2, aBlock - v14, _s11ArtworkInfoV10PropertiesVMa);
  v16 = _s11ArtworkInfoVMa(0);
  *&v15[*(v16 + 20)] = a3;
  (*(*(v16 - 8) + 56))(v15, 0, 1, v16);
  v17 = a3;
  sub_10053CD3C(v15);
  sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
  v18 = static OS_dispatch_queue.main.getter();
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  aBlock[4] = sub_10053DB00;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002BC98;
  aBlock[3] = &unk_1010B14D0;
  v20 = _Block_copy(aBlock);
  v21 = a1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10053DB08(&qword_101183F60, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10010FC20(&qword_101182970, &qword_100EBD250);
  sub_10002489C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);

  (*(v7 + 8))(v9, v6);
  return (*(v11 + 8))(v13, v10);
}

void sub_10053D544(void *a1)
{
  v2 = [a1 tabBarController];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 sidebar];

    [v4 reconfigureItemForTab:a1];
  }
}

uint64_t sub_10053D5DC(uint64_t a1, uint64_t a2)
{
  if (sub_10053D680(a1, a2))
  {
    v4 = *(_s11ArtworkInfoVMa(0) + 20);
    v5 = *(a1 + v4);
    v6 = *(a2 + v4);
    if (v5)
    {
      if (v6)
      {
        sub_100009F78(0, &qword_101183B40, UIImage_ptr);
        v7 = v6;
        v8 = v5;
        v9 = static NSObject.== infix(_:_:)();

        if (v9)
        {
          return 1;
        }
      }
    }

    else if (!v6)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_10053D680(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Artwork();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101188920, &qword_100EBCC50);
  __chkstk_darwin();
  v9 = &v30 - v8;
  sub_10010FC20(&unk_101191420, &unk_100EC9120);
  __chkstk_darwin();
  v11 = &v30 - v10;
  v13 = *(v12 + 56);
  sub_1000089F8(a1, &v30 - v10, &unk_101188920, &qword_100EBCC50);
  sub_1000089F8(a2, &v11[v13], &unk_101188920, &qword_100EBCC50);
  v14 = *(v5 + 48);
  if (v14(v11, 1, v4) == 1)
  {
    if (v14(&v11[v13], 1, v4) == 1)
    {
      sub_1000095E8(v11, &unk_101188920, &qword_100EBCC50);
      goto LABEL_8;
    }
  }

  else
  {
    sub_1000089F8(v11, v9, &unk_101188920, &qword_100EBCC50);
    if (v14(&v11[v13], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v11[v13], v4);
      sub_10053DB08(&unk_10118D3D0, &type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
      v16 = dispatch thunk of static Equatable.== infix(_:_:)();
      v17 = *(v5 + 8);
      v17(v7, v4);
      v17(v9, v4);
      sub_1000095E8(v11, &unk_101188920, &qword_100EBCC50);
      if ((v16 & 1) == 0)
      {
LABEL_12:
        v15 = 0;
        return v15 & 1;
      }

LABEL_8:
      v18 = _s11ArtworkInfoV10PropertiesVMa(0);
      v19 = *(v18 + 20);
      v20 = *(a1 + v19);
      v21 = *(a1 + v19 + 8);
      v22 = (a2 + v19);
      if (v20 != *v22 || v21 != v22[1])
      {
        goto LABEL_12;
      }

      v25 = *(v18 + 24);
      v26 = (a1 + v25);
      v27 = *(a1 + v25 + 8);
      v28 = (a2 + v25);
      v29 = *(a2 + v25 + 8);
      if (v27)
      {
        if (!v29)
        {
          goto LABEL_12;
        }
      }

      else
      {
        if (*v26 != *v28)
        {
          LOBYTE(v29) = 1;
        }

        if (v29)
        {
          goto LABEL_12;
        }
      }

      v15 = static UIView.Corner.== infix(_:_:)();
      return v15 & 1;
    }

    (*(v5 + 8))(v9, v4);
  }

  sub_1000095E8(v11, &unk_101191420, &unk_100EC9120);
  v15 = 0;
  return v15 & 1;
}

uint64_t sub_10053DA10(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10053DA70()
{
  v1 = *(_s11ArtworkInfoV10PropertiesVMa(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_10053D1B4(v3, v0 + v2, v4);
}

uint64_t sub_10053DB08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10053DB50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_10053DBE0(uint64_t a1)
{
  _s11ArtworkInfoV10PropertiesVMa(319);
  if (v1 <= 0x3F)
  {
    sub_10025929C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10053DC8C(uint64_t a1)
{
  sub_10053DD40(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for CGSize(319);
    if (v2 <= 0x3F)
    {
      sub_10053DD98();
      if (v3 <= 0x3F)
      {
        type metadata accessor for UIView.Corner();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10053DD40(uint64_t a1)
{
  if (!qword_1011A4570)
  {
    type metadata accessor for Artwork();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1011A4570);
    }
  }
}

void sub_10053DD98()
{
  if (!qword_101194178)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_101194178);
    }
  }
}

void sub_10053DDF8(__int128 *a1)
{
  sub_10045EC58(*v1);
  String.hash(into:)();

  type metadata accessor for MusicLibrary();
  sub_10053E2D4(&qword_101180378, &type metadata accessor for MusicLibrary, &protocol conformance descriptor for MusicLibrary);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v1 + 16) & 1);
  String.hash(into:)();
  v3 = *(v1 + 41);
  String.hash(into:)();

  Hasher._combine(_:)(v3 & 1);
  String.hash(into:)();
  sub_10010B570(a1, *(v1 + 64));
  sub_10010B100(a1, *(v1 + 72));
  String.hash(into:)();
  sub_10010B4B0(a1, *(v1 + 96));
}

void sub_10053E040()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  type metadata accessor for TitledSection();
  type metadata accessor for Composer();
  sub_10053E2D4(&qword_101181C78, &type metadata accessor for Composer, &protocol conformance descriptor for Composer);
  MusicLibrarySectionedRequest.init()();

  sub_10010FC20(&unk_10118CF80, &qword_100EC8C08);
  MusicLibrarySectionedRequest.library.setter();
  MusicLibrarySectionedRequest.includeOnlyDownloadedContent.setter();
  v3._countAndFlagsBits = v1;
  v3._object = v2;
  MusicLibrarySectionedRequest.filterItems(text:)(v3);
}

Swift::Int sub_10053E138()
{
  Hasher.init(_seed:)();
  sub_10053DDF8(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10053E17C(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_10053DDF8(v2);
  return Hasher._finalize()();
}

unint64_t sub_10053E1BC()
{
  result = qword_1011941B0;
  if (!qword_1011941B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011941B0);
  }

  return result;
}

unint64_t sub_10053E258(uint64_t a1)
{
  result = sub_10053E280();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10053E280()
{
  result = qword_101194290;
  if (!qword_101194290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101194290);
  }

  return result;
}

uint64_t sub_10053E2D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10053E394(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_10010FC20(&unk_10118D180, &qword_100EC8EC0);
    return a2;
  }

  return result;
}

void *sub_10053E434()
{
  v1 = *(v0 + 16);
  if (*(v0 + 16) > 2u)
  {
    v3 = 4;
    if (v1 != 4)
    {
      v3 = 5;
    }

    if (v1 == 3)
    {
      v1 = 3;
    }

    else
    {
      v1 = v3;
    }

    goto LABEL_10;
  }

  if (*(v0 + 16))
  {
    if (v1 == 1)
    {
      v2 = 5;
      goto LABEL_32;
    }

LABEL_10:
    if (qword_10117F840 != -1)
    {
      goto LABEL_56;
    }

    goto LABEL_11;
  }

  v2 = 4;
LABEL_32:
  if (qword_10117F838 != -1)
  {
    swift_once();
  }

  v39 = qword_101194298;
  v40 = String._bridgeToObjectiveC()();
  if (v0[8])
  {
    v41 = String._bridgeToObjectiveC()();
  }

  else
  {
    v41 = 0;
  }

  v42 = String._bridgeToObjectiveC()();
  v43 = [v39 reportsForType:v2 contentID:v40 aucType:v41 commentText:v42];

  sub_100009F78(0, &qword_101194558, MPStoreContentReport_ptr);
  v44 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v44 >> 62)
  {
    v45 = _CocoaArrayWrapper.endIndex.getter();
    if (v45)
    {
LABEL_39:
      v1 = 0;
      v80 = v44 & 0xC000000000000001;
      v76 = v44 & 0xFFFFFFFFFFFFFF8;
      v0 = _swiftEmptyArrayStorage;
      v78 = v44;
      while (1)
      {
        if (v80)
        {
          v46 = sub_1007E9BD8(v1, v44);
        }

        else
        {
          if (v1 >= *(v76 + 16))
          {
            goto LABEL_55;
          }

          v46 = *(v44 + 8 * v1 + 32);
        }

        v47 = v46;
        v48 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
          break;
        }

        v49 = [v46 concernItemType];
        v50 = v49 - 4;
        if ((v49 - 4) >= 3)
        {
LABEL_62:
          result = _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
          return result;
        }

        v51 = [v47 userID];
        v98 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v96 = v52;

        v53 = [v47 contentID];
        v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v92 = v55;
        v94 = v54;

        v56 = [v47 commentText];
        v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v88 = v58;
        v90 = v57;

        v59 = [v47 aucType];
        v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v84 = v61;
        v86 = v60;

        v62 = [v47 concernTypeID];
        v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v82 = v64;

        v65 = [v47 displayText];
        v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v68 = v67;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v0 = sub_10049A8A4(0, v0[2] + 1, 1, v0);
        }

        v70 = v0[2];
        v69 = v0[3];
        if (v70 >= v69 >> 1)
        {
          v0 = sub_10049A8A4((v69 > 1), v70 + 1, 1, v0);
        }

        v0[2] = v70 + 1;
        v71 = &v0[17 * v70];
        v71[4] = v98;
        v71[5] = v96;
        v71[6] = v94;
        v71[7] = v92;
        *(v71 + 64) = v50;
        *(v71 + 65) = *v100;
        *(v71 + 17) = *&v100[3];
        v71[9] = v90;
        v71[10] = v88;
        v71[11] = v86;
        v71[12] = v84;
        v71[13] = v63;
        v71[14] = v82;
        *(v71 + 15) = 0u;
        *(v71 + 17) = 0u;
        v71[19] = v66;
        v71[20] = v68;
        ++v1;
        v44 = v78;
        if (v48 == v45)
        {
          goto LABEL_61;
        }
      }

      while (1)
      {
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        swift_once();
LABEL_11:
        v4 = qword_1011942A0;
        v5 = String._bridgeToObjectiveC()();
        v6 = String._bridgeToObjectiveC()();
        v7 = v0[3];
        v75 = v0[4];
        if (v75)
        {
          v8 = String._bridgeToObjectiveC()();
          v10 = v0[5];
          v9 = v0[6];
          if (v9)
          {
            goto LABEL_13;
          }
        }

        else
        {
          v8 = 0;
          v10 = v0[5];
          v9 = v0[6];
          if (v9)
          {
LABEL_13:
            v0 = String._bridgeToObjectiveC()();
            goto LABEL_16;
          }
        }

        v0 = 0;
LABEL_16:
        v11 = [v4 reportsForType:v1 contentID:v5 commentText:v6 concernParentItemID:v8 concernParentItemType:v0];

        sub_100009F78(0, &qword_101194560, MPMediaKitContentReport_ptr);
        v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v12 >> 62)
        {
          v13 = _CocoaArrayWrapper.endIndex.getter();
          v1 = v75;
          if (!v13)
          {
            break;
          }
        }

        else
        {
          v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v1 = v75;
          if (!v13)
          {
            break;
          }
        }

        v14 = 0;
        v73 = v12 & 0xFFFFFFFFFFFFFF8;
        v74 = v12 & 0xC000000000000001;
        v97 = _swiftEmptyArrayStorage;
        v95 = v9;
        v77 = v12;
        while (1)
        {
          if (v74)
          {
            v15 = sub_1007E9BC4(v14, v12);
          }

          else
          {
            if (v14 >= *(v73 + 16))
            {
              goto LABEL_53;
            }

            v15 = *(v12 + 8 * v14 + 32);
          }

          v16 = v15;
          v0 = (v14 + 1);
          if (__OFADD__(v14, 1))
          {
            break;
          }

          v17 = v7;
          v18 = [v15 concernItemType];
          if (v18 >= 6)
          {
            goto LABEL_62;
          }

          v19 = v18;
          v20 = [v16 userID];
          v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v91 = v22;
          v93 = v21;

          v23 = [v16 concernItemID];
          v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v87 = v25;
          v89 = v24;

          v26 = [v16 commentText];
          v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v83 = v28;
          v85 = v27;

          v29 = [v16 concernTypeID];
          v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v79 = v31;
          v81 = v30;

          v32 = [v16 displayText];
          v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v35 = v34;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v97 = sub_10049A8A4(0, *(v97 + 2) + 1, 1, v97);
          }

          v37 = *(v97 + 2);
          v36 = *(v97 + 3);
          if (v37 >= v36 >> 1)
          {
            v97 = sub_10049A8A4((v36 > 1), v37 + 1, 1, v97);
          }

          *(v97 + 2) = v37 + 1;
          v38 = &v97[136 * v37];
          *(v38 + 4) = v93;
          *(v38 + 5) = v91;
          *(v38 + 6) = v89;
          *(v38 + 7) = v87;
          v38[64] = v19;
          *(v38 + 65) = *v99;
          *(v38 + 17) = *&v99[3];
          *(v38 + 9) = v85;
          *(v38 + 10) = v83;
          *(v38 + 11) = 0;
          *(v38 + 12) = 0;
          *(v38 + 13) = v81;
          *(v38 + 14) = v79;
          v7 = v17;
          v1 = v75;
          *(v38 + 15) = v17;
          *(v38 + 16) = v75;
          *(v38 + 17) = v10;
          *(v38 + 18) = v95;
          *(v38 + 19) = v33;
          *(v38 + 20) = v35;
          ++v14;
          v12 = v77;
          if (v0 == v13)
          {
            v0 = v97;
            goto LABEL_61;
          }
        }

        __break(1u);
LABEL_53:
        __break(1u);
      }
    }
  }

  else
  {
    v45 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v45)
    {
      goto LABEL_39;
    }
  }

  v0 = _swiftEmptyArrayStorage;
LABEL_61:

  return v0;
}

uint64_t sub_10053EC10(uint64_t a1)
{
  *(v2 + 1208) = v1;
  *(v2 + 1200) = a1;

  return _swift_task_switch(sub_10053ECA4, 0, 0);
}

uint64_t sub_10053ECA4()
{
  v1 = *(v0[150].super.isa + 32);
  if ((v1 - 2) >= 4)
  {
    v19 = sub_10053FF2C();
    v0[152].super.isa = v19;
    if (v19)
    {
      v3 = v19;
      if (qword_10117F838 != -1)
      {
        swift_once();
      }

      v20 = v0 + 2;
      v21 = v0 + 112;
      v22 = qword_101194298;
      v0[2].super.isa = v0;
      v0[3].super.isa = sub_10053F8AC;
      v23 = swift_continuation_init();
      v0[119].super.isa = sub_10010FC20(&qword_101194548, &qword_100ED2070);
      v0[116].super.isa = v23;
      v0[112].super.isa = _NSConcreteStackBlock;
      v0[113].super.isa = 1107296256;
      v0[114].super.isa = sub_1005400C8;
      v0[115].super.isa = &unk_1010B1800;
      goto LABEL_19;
    }
  }

  else
  {
    v2 = sub_1005400FC();
    v0[153].super.isa = v2;
    if (v2)
    {
      v3 = v2;
      if (v1 == 2)
      {
        v72 = v0 + 144;
        isa = v0[151].super.isa;
        sub_10010FC20(&unk_1011972C0, &qword_100ECF9B0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_100EBE260;
        *(inited + 32) = 1684957547;
        *(inited + 40) = 0xE400000000000000;
        *(inited + 48) = 0x73636972796CLL;
        *(inited + 56) = 0xE600000000000000;
        *(inited + 72) = &type metadata for String;
        *(inited + 80) = 0x6E6F73616572;
        *(inited + 88) = 0xE600000000000000;
        v28 = [(objc_class *)v3 concernTypeID];
        v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v31 = v30;

        *(inited + 96) = v29;
        *(inited + 104) = v31;
        *(inited + 120) = &type metadata for String;
        *(inited + 128) = 0x73746E656D6D6F63;
        *(inited + 136) = 0xE800000000000000;
        v32 = [(objc_class *)v3 commentText];
        v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v35 = v34;

        *(inited + 168) = &type metadata for String;
        *(inited + 144) = v33;
        *(inited + 152) = v35;
        v36 = sub_10010BC60(inited);
        swift_setDeallocating();
        sub_10010FC20(&unk_1011927D0, &unk_100EBA560);
        swift_arrayDestroy();
        v37 = swift_initStackObject();
        *(v37 + 16) = xmmword_100EBE260;
        *(v37 + 32) = 0x6E7265636E6F63;
        *(v37 + 40) = 0xE700000000000000;
        v38 = sub_10010FC20(&qword_101197BD0, &qword_100EC9700);
        *(v37 + 48) = v36;
        *(v37 + 72) = v38;
        *(v37 + 80) = 1836216166;
        *(v37 + 88) = 0xE400000000000000;
        v39 = *(isa + 9);
        *(v37 + 120) = v38;
        if (v39)
        {
          v40 = v39;
        }

        else
        {
          v40 = sub_10010BC60(_swiftEmptyArrayStorage);
        }

        p_isa = &v0[148].super.isa;
        v59 = v0[151].super.isa;
        *(v37 + 96) = v40;
        *(v37 + 128) = 0x73746E65746E6F63;
        *(v37 + 136) = 0xE800000000000000;
        sub_10010FC20(&qword_1011858B0, &unk_100EC1280);
        v60 = swift_allocObject();
        *(v60 + 16) = xmmword_100EBC6B0;
        sub_10010FC20(&qword_101190BE0, &qword_100EC1580);
        v61 = swift_initStackObject();
        *(v61 + 16) = xmmword_100EBDC20;
        *(v61 + 32) = 25705;
        *(v61 + 40) = 0xE200000000000000;
        *&v72->super.isa = *v59;
        *(v61 + 48) = *v59;
        *(v61 + 64) = 1701869940;
        *(v61 + 72) = 0xE400000000000000;
        *(v61 + 80) = 0x73676E6F73;
        *(v61 + 88) = 0xE500000000000000;
        sub_100118E9C(v72, &v0[146]);

        v62 = sub_10010C578(v61);
        swift_setDeallocating();
        sub_10010FC20(&qword_101183AA0, &unk_100ECAF50);
        swift_arrayDestroy();
        *(v60 + 32) = v62;
        *(v37 + 168) = sub_10010FC20(&qword_101194550, &qword_100ED2078);
        *(v37 + 144) = v60;
        sub_10010BC60(v37);
        swift_setDeallocating();
        swift_arrayDestroy();
        if (qword_10117F840 != -1)
        {
          swift_once();
        }

        v45 = qword_1011942A0;
        v63 = objc_opt_self();
        v64 = Dictionary._bridgeToObjectiveC()().super.isa;

        *p_isa = 0;
        v65 = [v63 dataWithJSONObject:v64 options:0 error:&v0[148]];

        v66 = *p_isa;
        if (v65)
        {
          v67 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v69 = v68;

          v53.super.isa = Data._bridgeToObjectiveC()().super.isa;
          sub_10002C064(v67, v69);
        }

        else
        {
          v70 = v66;
          _convertNSErrorToError(_:)();

          swift_willThrow();

          v53.super.isa = 0;
        }

        v55 = v0 + 128;
        v56 = v0 + 18;
        v0[155].super.isa = v53.super.isa;
        v0[18].super.isa = v0;
        v0[19].super.isa = sub_10053FBEC;
        v71 = swift_continuation_init();
        v0[135].super.isa = sub_10010FC20(&qword_101194548, &qword_100ED2070);
        v0[132].super.isa = v71;
        v0[128].super.isa = _NSConcreteStackBlock;
        v0[129].super.isa = 1107296256;
        v0[130].super.isa = sub_1005400C8;
        v0[131].super.isa = &unk_1010B1850;
        goto LABEL_34;
      }

      if (v1 == 5)
      {
        v4 = v0[151].super.isa;
        sub_10010FC20(&unk_1011972C0, &qword_100ECF9B0);
        v5 = swift_initStackObject();
        *(v5 + 16) = xmmword_100EBE260;
        *(v5 + 32) = 1684957547;
        *(v5 + 40) = 0xE400000000000000;
        strcpy((v5 + 48), "query-context");
        *(v5 + 62) = -4864;
        *(v5 + 72) = &type metadata for String;
        *(v5 + 80) = 0x6E6F73616572;
        *(v5 + 88) = 0xE600000000000000;
        v6 = [(objc_class *)v3 concernTypeID];
        v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v9 = v8;

        *(v5 + 96) = v7;
        *(v5 + 104) = v9;
        *(v5 + 120) = &type metadata for String;
        *(v5 + 128) = 0x73746E656D6D6F63;
        *(v5 + 136) = 0xE800000000000000;
        v10 = [(objc_class *)v3 commentText];
        v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v13 = v12;

        *(v5 + 168) = &type metadata for String;
        *(v5 + 144) = v11;
        *(v5 + 152) = v13;
        v14 = sub_10010BC60(v5);
        swift_setDeallocating();
        sub_10010FC20(&unk_1011927D0, &unk_100EBA560);
        swift_arrayDestroy();
        v15 = swift_allocObject();
        *(v15 + 16) = xmmword_100EBDC20;
        *(v15 + 32) = 0x6E7265636E6F63;
        *(v15 + 40) = 0xE700000000000000;
        v16 = sub_10010FC20(&qword_101197BD0, &qword_100EC9700);
        *(v15 + 48) = v14;
        *(v15 + 72) = v16;
        *(v15 + 80) = 1836216166;
        *(v15 + 88) = 0xE400000000000000;
        v17 = *(v4 + 9);
        *(v15 + 120) = v16;
        if (v17)
        {
          v18 = v17;
        }

        else
        {
          v18 = sub_10010BC60(_swiftEmptyArrayStorage);
        }

        v44 = &v0[149].super.isa;
        *(v15 + 96) = v18;

        sub_10010BC60(v15);
        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
        if (qword_10117F840 != -1)
        {
          swift_once();
        }

        v45 = qword_1011942A0;
        v46 = objc_opt_self();
        v47 = Dictionary._bridgeToObjectiveC()().super.isa;

        *v44 = 0;
        v48 = [v46 dataWithJSONObject:v47 options:0 error:&v0[149]];

        v49 = *v44;
        if (v48)
        {
          v50 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v52 = v51;

          v53.super.isa = Data._bridgeToObjectiveC()().super.isa;
          sub_10002C064(v50, v52);
        }

        else
        {
          v54 = v49;
          _convertNSErrorToError(_:)();

          swift_willThrow();

          v53.super.isa = 0;
        }

        v55 = v0 + 136;
        v56 = v0 + 26;
        v0[154].super.isa = v53.super.isa;
        v0[26].super.isa = v0;
        v0[27].super.isa = sub_10053FA48;
        v57 = swift_continuation_init();
        v0[143].super.isa = sub_10010FC20(&qword_101194548, &qword_100ED2070);
        v0[140].super.isa = v57;
        v0[136].super.isa = _NSConcreteStackBlock;
        v0[137].super.isa = 1107296256;
        v0[138].super.isa = sub_1005400C8;
        v0[139].super.isa = &unk_1010B1878;
LABEL_34:
        [v45 submitReport:v3 body:v53.super.isa completion:v55];
        v43 = v56;
        goto LABEL_35;
      }

      if (qword_10117F840 != -1)
      {
        swift_once();
      }

      v21 = v0 + 120;
      v20 = v0 + 10;
      v22 = qword_1011942A0;
      v0[10].super.isa = v0;
      v0[11].super.isa = sub_10053FD90;
      v41 = swift_continuation_init();
      v0[127].super.isa = sub_10010FC20(&qword_101194548, &qword_100ED2070);
      v0[124].super.isa = v41;
      v0[120].super.isa = _NSConcreteStackBlock;
      v0[121].super.isa = 1107296256;
      v0[122].super.isa = sub_1005400C8;
      v0[123].super.isa = &unk_1010B1828;
LABEL_19:
      [v22 submitReport:v3 completion:v21];
      v43 = v20;
LABEL_35:

      return _swift_continuation_await(v43, v42);
    }
  }

  v24 = v0[1].super.isa;

  return v24();
}

uint64_t sub_10053F8AC()
{

  return _swift_task_switch(sub_10053F9B8, 0, 0);
}

uint64_t sub_10053F9B8()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10053FA48()
{

  return _swift_task_switch(sub_10053FB54, 0, 0);
}

uint64_t sub_10053FB54()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10053FBEC()
{

  return _swift_task_switch(sub_10053FCF8, 0, 0);
}

uint64_t sub_10053FCF8()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10053FD90()
{

  return _swift_task_switch(sub_10053FE9C, 0, 0);
}

uint64_t sub_10053FE9C()
{
  v1 = *(v0 + 8);

  return v1();
}

id sub_10053FF2C()
{
  if (*(v0 + 32) > 2u)
  {
    return 0;
  }

  v1 = 5;
  if (*(v0 + 32) != 1)
  {
    v1 = 6;
  }

  if (*(v0 + 32))
  {
    v2 = v1;
  }

  else
  {
    v2 = 4;
  }

  v3 = [objc_allocWithZone(MPStoreContentReport) init];
  v4 = String._bridgeToObjectiveC()();
  [v3 setUserID:v4];

  v5 = String._bridgeToObjectiveC()();
  [v3 setContentID:v5];

  v6 = String._bridgeToObjectiveC()();

  [v3 setCommentText:v6];

  [v3 setConcernItemType:v2];
  v7 = String._bridgeToObjectiveC()();
  [v3 setConcernTypeID:v7];

  v8 = String._bridgeToObjectiveC()();

  [v3 setAucType:v8];

  return v3;
}

uint64_t sub_1005400C8(uint64_t a1)
{
  sub_10000954C((a1 + 32), *(a1 + 56));

  return swift_continuation_resume();
}

id sub_1005400FC()
{
  v1 = *(v0 + 32);
  v2 = [objc_allocWithZone(MPMediaKitContentReport) init];
  v3 = String._bridgeToObjectiveC()();
  [v2 setUserID:v3];

  v4 = String._bridgeToObjectiveC()();
  [v2 setConcernItemID:v4];

  v5 = String._bridgeToObjectiveC()();

  [v2 setCommentText:v5];

  [v2 setConcernItemType:v1];
  v6 = String._bridgeToObjectiveC()();
  [v2 setConcernTypeID:v6];

  if (*(v0 + 96))
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  [v2 setParentContentID:v7];

  if (*(v0 + 112))
  {
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = 0;
  }

  [v2 setParentConcernType:v8];

  return v2;
}

id sub_1005402AC(uint64_t a1, void *a2, void *a3)
{
  result = [objc_opt_self() sharedReporter];
  *a3 = result;
  return result;
}

uint64_t sub_1005402EC(uint64_t a1)
{
  String.hash(into:)();
  String.hash(into:)();
  Hasher._combine(_:)(*(v1 + 32));
  if (*(v1 + 48))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    if (*(v1 + 64))
    {
LABEL_3:
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      goto LABEL_6;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (*(v1 + 64))
    {
      goto LABEL_3;
    }
  }

  Hasher._combine(_:)(0);
LABEL_6:
  String.hash(into:)();
  if (*(v1 + 96))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    if (*(v1 + 112))
    {
LABEL_8:
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      goto LABEL_11;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (*(v1 + 112))
    {
      goto LABEL_8;
    }
  }

  Hasher._combine(_:)(0);
LABEL_11:

  return String.hash(into:)();
}

Swift::Int sub_100540420()
{
  Hasher.init(_seed:)();
  sub_1005402EC(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100540464(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_1005402EC(v2);
  return Hasher._finalize()();
}

uint64_t sub_1005404A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 112);
  v11[6] = *(a1 + 96);
  v11[7] = v2;
  v12 = *(a1 + 128);
  v3 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v3;
  v4 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v4;
  v5 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v5;
  v6 = *(a2 + 112);
  v13[6] = *(a2 + 96);
  v13[7] = v6;
  v14 = *(a2 + 128);
  v7 = *(a2 + 48);
  v13[2] = *(a2 + 32);
  v13[3] = v7;
  v8 = *(a2 + 80);
  v13[4] = *(a2 + 64);
  v13[5] = v8;
  v9 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v9;
  return sub_100543D84(v11, v13) & 1;
}

double sub_100540524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v7 = &v50 - v6;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v50 = a3;
    v51 = a4;
    v10 = Strong;
    v52 = UIViewController.noticePresenter.getter();
    v11 = qword_1011942B0;
    v12 = *&v10[qword_1011942B0];
    swift_getKeyPath();
    *&v73 = v12;
    sub_100543B78();

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v13 = *(v12 + 112);
    v64 = *(v12 + 96);
    v65 = v13;
    v66 = *(v12 + 128);
    v67 = *(v12 + 144);
    v14 = *(v12 + 48);
    v60 = *(v12 + 32);
    v61 = v14;
    v15 = *(v12 + 80);
    v62 = *(v12 + 64);
    v63 = v15;
    v59 = *(v12 + 16);
    sub_1000089F8(&v59, &v73, &qword_10117FF40, &qword_100EB9BA8);

    v70 = v65;
    v71 = v66;
    v72 = v67;
    v68[2] = v61;
    v68[3] = v62;
    *v69 = v63;
    *&v69[16] = v64;
    v68[0] = v59;
    v68[1] = v60;
    if (sub_100543BE4(v68) != 1)
    {
      v16 = *&v10[qword_1011942A8 + 48];
      v83 = *&v10[qword_1011942A8 + 32];
      v84 = v16;
      v85 = *&v10[qword_1011942A8 + 64];
      v17 = *&v10[qword_1011942A8 + 16];
      v81 = *&v10[qword_1011942A8];
      v82 = v17;
      v18 = *&v10[v11];
      swift_getKeyPath();
      *&v73 = v18;

      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v19 = sub_10053E434();

      v20 = v19[2] + 1;
      v21 = 4;
      while (--v20)
      {
        v73 = *&v19[v21];
        v22 = *&v19[v21 + 2];
        v23 = *&v19[v21 + 4];
        v24 = *&v19[v21 + 8];
        v76 = *&v19[v21 + 6];
        *v77 = v24;
        v74 = v22;
        v75 = v23;
        v25 = *&v19[v21 + 10];
        v26 = *&v19[v21 + 12];
        v27 = *&v19[v21 + 14];
        v80 = v19[v21 + 16];
        v78 = v26;
        v79 = v27;
        *&v77[16] = v25;
        if (*&v77[8] != *&v69[8])
        {
          v21 += 17;
          if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            continue;
          }
        }

        sub_100543BFC(&v73, &v53);

        sub_1000095E8(&v59, &qword_10117FF40, &qword_100EB9BA8);
        v28 = type metadata accessor for TaskPriority();
        (*(*(v28 - 8) + 56))(v7, 1, 1, v28);
        type metadata accessor for MainActor();
        v29 = v52;

        v30 = v51;

        v31 = v10;
        v32 = static MainActor.shared.getter();
        v33 = swift_allocObject();
        v34 = *v77;
        *(v33 + 120) = *&v77[16];
        v35 = v79;
        *(v33 + 136) = v78;
        *(v33 + 152) = v35;
        v36 = v73;
        *(v33 + 56) = v74;
        v37 = v76;
        *(v33 + 72) = v75;
        *(v33 + 88) = v37;
        *(v33 + 104) = v34;
        *(v33 + 16) = v32;
        *(v33 + 24) = &protocol witness table for MainActor;
        *(v33 + 32) = v31;
        v38 = v80;
        *(v33 + 40) = v36;
        *(v33 + 168) = v38;
        *(v33 + 176) = v29;
        *(v33 + 184) = v50;
        *(v33 + 192) = v30;
        sub_10086E3AC(0, 0, v7, &unk_100ED2060, v33);

        goto LABEL_9;
      }

      sub_1000095E8(&v59, &qword_10117FF40, &qword_100EB9BA8);
    }

LABEL_9:
    v39 = [v10 navigationController];
    if (v39)
    {
      v40 = v39;
      v41 = [v39 topViewController];
      if (v41)
      {
        v42 = v41;
        sub_100009F78(0, &qword_101183D40, UIViewController_ptr);
        v43 = v10;
        v44 = static NSObject.== infix(_:_:)();

        if (v44)
        {
          v45 = [v43 parentViewController];

          if (v45)
          {
            v57 = UIScreen.Dimensions.size.getter;
            v58 = 0;
            v53 = _NSConcreteStackBlock;
            v54 = 1107296256;
            v55 = sub_10002BC98;
            v56 = &unk_1010B17B0;
            v46 = _Block_copy(&v53);
            [v45 dismissViewControllerAnimated:1 completion:v46];
            _Block_release(v46);
          }

          v47 = [v40 popViewControllerAnimated:1];

LABEL_19:

          return result;
        }
      }
    }

    v48 = [v10 parentViewController];

    if (v48)
    {
      v57 = UIScreen.Dimensions.size.getter;
      v58 = 0;
      v53 = _NSConcreteStackBlock;
      v54 = 1107296256;
      v55 = sub_10002BC98;
      v56 = &unk_1010B1788;
      v49 = _Block_copy(&v53);
      [v48 dismissViewControllerAnimated:1 completion:v49];

      _Block_release(v49);

      return result;
    }

    goto LABEL_19;
  }

  return result;
}

uint64_t sub_100540B64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = a7;
  v8[16] = a8;
  v8[13] = a5;
  v8[14] = a6;
  v8[12] = a4;
  type metadata accessor for Locale();
  v8[17] = swift_task_alloc();
  type metadata accessor for String.LocalizationValue();
  v8[18] = swift_task_alloc();
  type metadata accessor for Notice(0);
  v8[19] = swift_task_alloc();
  type metadata accessor for MainActor();
  v8[20] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v8[21] = v10;
  v8[22] = v9;

  return _swift_task_switch(sub_100540C88, v10, v9);
}

uint64_t sub_100540C88()
{
  v1 = (*(v0 + 96) + qword_1011942A8);
  *(v0 + 16) = *v1;
  v2 = v1[4];
  v4 = v1[1];
  v3 = v1[2];
  *(v0 + 64) = v1[3];
  *(v0 + 80) = v2;
  *(v0 + 32) = v4;
  *(v0 + 48) = v3;
  v5 = swift_task_alloc();
  *(v0 + 184) = v5;
  *v5 = v0;
  v5[1] = sub_100540D48;
  v6 = *(v0 + 104);

  return sub_10053EC10(v6);
}

uint64_t sub_100540D48()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  v3 = *(v2 + 176);
  v4 = *(v2 + 168);
  if (v0)
  {
    v5 = sub_100541060;
  }

  else
  {
    v5 = sub_100540E84;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100540E84()
{
  v13 = v0;
  v1 = v0[14];

  if (v1)
  {
    v2 = v0[19];
    v3 = v0[16];
    v4 = v0[14];
    v5 = v0[15];
    _StringGuts.grow(_:)(16);

    strcpy(v12, "ReportConcern.");
    HIBYTE(v12[1]) = -18;
    v6._countAndFlagsBits = v5;
    v6._object = v3;
    String.append(_:)(v6);
    v7 = Image.init(systemName:)();
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v8 = String.init(localized:table:bundle:locale:comment:)();
    Notice.init(id:image:message:headnote:link:hapticFeedback:)(v12[0], v12[1], v7, v8, v9, 0, 0, 0, v2, 0, 0, 0);
    (*(*v4 + 200))(v2, 0);
    sub_100543D10(v2);
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_100541060()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1005410E8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong parentViewController];

    if (v4)
    {
      aBlock[4] = UIScreen.Dimensions.size.getter;
      aBlock[5] = 0;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10002BC98;
      aBlock[3] = &unk_1010B1760;
      v5 = _Block_copy(aBlock);
      [v4 dismissViewControllerAnimated:1 completion:v5];
      _Block_release(v5);
    }
  }
}

void sub_1005411DC(uint64_t a1)
{
  v2 = qword_1011942B0;
  type metadata accessor for ReportConcern.ViewModel(0);
  v3 = swift_allocObject();
  sub_100543B5C(v9);
  v4 = v9[7];
  *(v3 + 112) = v9[6];
  *(v3 + 128) = v4;
  v5 = v10;
  v6 = v9[3];
  *(v3 + 48) = v9[2];
  *(v3 + 64) = v6;
  v7 = v9[5];
  *(v3 + 80) = v9[4];
  *(v3 + 96) = v7;
  v8 = v9[1];
  *(v3 + 16) = v9[0];
  *(v3 + 32) = v8;
  *(v3 + 144) = v5;
  *(v3 + 152) = 0;
  *(v3 + 160) = 0xE000000000000000;
  *(v3 + 168) = _swiftEmptyArrayStorage;
  ObservationRegistrar.init()();
  *(a1 + v2) = v3;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

double sub_1005412C8()
{

  return result;
}

id sub_100541350()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ReportConcern.ViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

double sub_100541388(uint64_t a1)
{

  return result;
}

__n128 sub_10054141C@<Q0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  *&v12 = v1;
  sub_100543B78();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = *(v1 + 128);
  v18 = *(v1 + 112);
  v19 = v3;
  v20 = *(v1 + 144);
  v4 = *(v1 + 64);
  v14 = *(v1 + 48);
  v15 = v4;
  v5 = *(v1 + 96);
  v16 = *(v1 + 80);
  v17 = v5;
  v6 = *(v1 + 32);
  v12 = *(v1 + 16);
  v13 = v6;
  sub_1000089F8(&v12, v11, &qword_10117FF40, &qword_100EB9BA8);
  v7 = v19;
  *(a1 + 96) = v18;
  *(a1 + 112) = v7;
  *(a1 + 128) = v20;
  v8 = v15;
  *(a1 + 32) = v14;
  *(a1 + 48) = v8;
  v9 = v17;
  *(a1 + 64) = v16;
  *(a1 + 80) = v9;
  result = v13;
  *a1 = v12;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100541504@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  *&v16[0] = v3;
  sub_100543B78();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 96);
  v5 = *(v3 + 112);
  v6 = *(v3 + 128);
  v17 = *(v3 + 144);
  v16[6] = v5;
  v16[7] = v6;
  v7 = *(v3 + 32);
  v8 = *(v3 + 48);
  v9 = *(v3 + 80);
  v16[3] = *(v3 + 64);
  v16[4] = v9;
  v16[1] = v7;
  v16[2] = v8;
  v16[5] = v4;
  v16[0] = *(v3 + 16);
  v10 = *(v3 + 128);
  *(a2 + 96) = *(v3 + 112);
  *(a2 + 112) = v10;
  *(a2 + 128) = *(v3 + 144);
  v11 = *(v3 + 64);
  *(a2 + 32) = *(v3 + 48);
  *(a2 + 48) = v11;
  v12 = *(v3 + 96);
  *(a2 + 64) = *(v3 + 80);
  *(a2 + 80) = v12;
  v13 = *(v3 + 32);
  *a2 = *(v3 + 16);
  *(a2 + 16) = v13;
  return sub_1000089F8(v16, v15, &qword_10117FF40, &qword_100EB9BA8);
}

void sub_1005415F4(uint64_t a1)
{
  v3 = *(v1 + 128);
  v18[6] = *(v1 + 112);
  v18[7] = v3;
  v19 = *(v1 + 144);
  v4 = *(v1 + 64);
  v18[2] = *(v1 + 48);
  v18[3] = v4;
  v5 = *(v1 + 96);
  v18[4] = *(v1 + 80);
  v18[5] = v5;
  v6 = *(v1 + 32);
  v18[0] = *(v1 + 16);
  v18[1] = v6;
  sub_1000089F8(v18, v16, &qword_10117FF40, &qword_100EB9BA8);
  v7 = sub_100544408(v18, a1);
  sub_1000095E8(v18, &qword_10117FF40, &qword_100EB9BA8);
  if (v7)
  {
    swift_getKeyPath();
    __chkstk_darwin();
    *&v16[0] = v1;
    sub_100543B78();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    sub_1000095E8(a1, &qword_10117FF40, &qword_100EB9BA8);
  }

  else
  {
    v8 = *(v1 + 128);
    v16[6] = *(v1 + 112);
    v16[7] = v8;
    v17 = *(v1 + 144);
    v9 = *(v1 + 64);
    v16[2] = *(v1 + 48);
    v16[3] = v9;
    v10 = *(v1 + 96);
    v16[4] = *(v1 + 80);
    v16[5] = v10;
    v11 = *(v1 + 32);
    v16[0] = *(v1 + 16);
    v16[1] = v11;
    v12 = *(a1 + 80);
    *(v1 + 80) = *(a1 + 64);
    *(v1 + 96) = v12;
    v13 = *(a1 + 112);
    *(v1 + 112) = *(a1 + 96);
    *(v1 + 128) = v13;
    *(v1 + 144) = *(a1 + 128);
    v14 = *(a1 + 48);
    *(v1 + 48) = *(a1 + 32);
    *(v1 + 64) = v14;
    v15 = *(a1 + 16);
    *(v1 + 16) = *a1;
    *(v1 + 32) = v15;
    sub_1000095E8(v16, &qword_10117FF40, &qword_100EB9BA8);
  }
}

uint64_t sub_1005417C0()
{
  swift_getKeyPath();
  sub_100543B78();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 152);

  return v1;
}

double sub_100541840@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100543B78();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 160);
  *a2 = *(v3 + 152);
  a2[1] = v4;

  return result;
}

double sub_1005418BC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 152) == a1 && *(v2 + 160) == a2;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    *(v2 + 152) = a1;
    *(v2 + 160) = a2;
  }

  else
  {
    swift_getKeyPath();
    __chkstk_darwin();
    sub_100543B78();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

double sub_1005419EC()
{
  swift_getKeyPath();
  sub_100543B78();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return result;
}

double sub_100541A60@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100543B78();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 168);

  return result;
}

double sub_100541ADC(uint64_t a1)
{
  if (sub_10047D4BC(*(v1 + 168), a1))
  {
    *(v1 + 168) = a1;
  }

  else
  {
    swift_getKeyPath();
    __chkstk_darwin();
    sub_100543B78();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_100541BF0()
{
  v1 = *(v0 + 128);
  v8[6] = *(v0 + 112);
  v8[7] = v1;
  v9 = *(v0 + 144);
  v2 = *(v0 + 64);
  v8[2] = *(v0 + 48);
  v8[3] = v2;
  v3 = *(v0 + 96);
  v8[4] = *(v0 + 80);
  v8[5] = v3;
  v4 = *(v0 + 32);
  v8[0] = *(v0 + 16);
  v8[1] = v4;
  sub_1000095E8(v8, &qword_10117FF40, &qword_100EB9BA8);

  v5 = OBJC_IVAR____TtCO5Music13ReportConcern9ViewModel___observationRegistrar;
  v6 = type metadata accessor for ObservationRegistrar();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return swift_deallocClassInstance();
}

uint64_t sub_100541D00(uint64_t a1)
{
  result = type metadata accessor for ObservationRegistrar();
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

void sub_100541E0C(uint64_t a1)
{
  sub_100541E78(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_100541E78(uint64_t a1)
{
  if (!qword_101194508)
  {
    type metadata accessor for ReportConcern.ViewModel(255);
    v1 = type metadata accessor for Bindable();
    if (!v2)
    {
      atomic_store(v1, &qword_101194508);
    }
  }
}

__n128 sub_100541EE0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_100541F14(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
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

uint64_t sub_100541F5C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100541FD0()
{
  result = qword_101194538;
  if (!qword_101194538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101194538);
  }

  return result;
}

uint64_t sub_100542040@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v99 = a2;
  v78 = *(type metadata accessor for ReportConcern.ContentView(0) - 8);
  __chkstk_darwin();
  v79 = v3;
  v80 = &v75 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_10010FC20(&qword_101194578, &qword_100EDC980);
  v84 = *(v86 - 8);
  __chkstk_darwin();
  v82 = &v75 - v4;
  v87 = sub_10010FC20(&qword_101194580, &qword_100ED2088);
  v85 = *(v87 - 8);
  __chkstk_darwin();
  v83 = &v75 - v5;
  v6 = sub_10010FC20(&qword_101194588, &qword_100ED2090);
  v102 = *(v6 - 8);
  v103 = v6;
  __chkstk_darwin();
  v81 = &v75 - v7;
  sub_10010FC20(&qword_101194590, &qword_100ED2098);
  __chkstk_darwin();
  v98 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v101 = &v75 - v9;
  v10 = type metadata accessor for InlinePickerStyle();
  v11 = *(v10 - 8);
  v93 = v10;
  v94 = v11;
  __chkstk_darwin();
  v92 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_10010FC20(&qword_101184C60, &qword_100EC07F0);
  __chkstk_darwin();
  v14 = &v75 - v13;
  v15 = sub_10010FC20(&qword_101194498, &qword_100ED1E90);
  v16 = *(v15 - 8);
  __chkstk_darwin();
  v18 = &v75 - v17;
  v19 = sub_10010FC20(&qword_101194598, &qword_100ED20A0);
  v20 = *(v19 - 8);
  v90 = v19;
  v91 = v20;
  __chkstk_darwin();
  v22 = &v75 - v21;
  v23 = sub_10010FC20(&qword_1011945A0, &qword_100ED20A8);
  v96 = *(v23 - 8);
  v97 = v23;
  __chkstk_darwin();
  v95 = &v75 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v104 = &v75 - v25;
  v88 = a1;
  Bindable.projectedValue.getter();
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  v26 = *(v16 + 8);
  v76 = v18;
  v77 = v16 + 8;
  v75 = v26;
  v26(v18, v15);
  v116 = v126;
  v117 = v127;
  v118 = v128;
  v119 = v129;
  v112 = v122;
  v113 = v123;
  v114 = v124;
  v115 = v125;
  v110 = v120;
  v111 = v121;
  v105 = a1;
  LocalizedStringKey.init(stringLiteral:)();
  v27 = Text.init(_:tableName:bundle:comment:)();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = &v14[*(sub_10010FC20(&qword_101184C58, &unk_100EDCC30) + 36)];
  v35 = *(sub_10010FC20(&qword_101184CD8, &qword_100EC0930) + 28);
  v36 = type metadata accessor for Text.Case();
  v37 = *(*(v36 - 8) + 56);
  v100 = 1;
  v37(v34 + v35, 1, 1, v36);
  *v34 = swift_getKeyPath();
  v38 = v15;
  *v14 = v27;
  *(v14 + 1) = v29;
  v14[16] = v31 & 1;
  *(v14 + 3) = v33;
  v39 = static Font.body.getter();
  KeyPath = swift_getKeyPath();
  v41 = &v14[*(v89 + 36)];
  *v41 = KeyPath;
  v41[1] = v39;
  sub_10010FC20(&qword_10117FF40, &qword_100EB9BA8);
  sub_10010FC20(&qword_1011945A8, &qword_100ED2110);
  sub_10021CEE8();
  sub_100543F60();
  sub_100544038();
  Picker.init(selection:label:content:)();
  v42 = v92;
  InlinePickerStyle.init()();
  sub_100020674(&qword_1011945C8, &qword_101194598, &qword_100ED20A0, &protocol conformance descriptor for Picker<A, B, C>);
  v43 = v90;
  v44 = v93;
  View.pickerStyle<A>(_:)();
  (*(v94 + 8))(v42, v44);
  (*(v91 + 8))(v22, v43);
  v45 = v88;
  Bindable.wrappedValue.getter();
  v46 = v120;
  swift_getKeyPath();
  *&v120 = v46;
  v47 = sub_100543B78();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v48 = *(v46 + 112);
  v115 = *(v46 + 96);
  v116 = v48;
  v117 = *(v46 + 128);
  *&v118 = *(v46 + 144);
  v49 = *(v46 + 48);
  v111 = *(v46 + 32);
  v112 = v49;
  v50 = *(v46 + 80);
  v113 = *(v46 + 64);
  v114 = v50;
  v110 = *(v46 + 16);
  sub_1000089F8(&v110, &v120, &qword_10117FF40, &qword_100EB9BA8);

  v126 = v116;
  v127 = v117;
  *&v128 = v118;
  v122 = v112;
  v123 = v113;
  v124 = v114;
  v125 = v115;
  v120 = v110;
  v121 = v111;
  if (sub_100543BE4(&v120) != 1)
  {
    sub_1000095E8(&v110, &qword_10117FF40, &qword_100EB9BA8);
    LocalizedStringKey.init(stringLiteral:)();
    v94 = v47;
    v51 = v76;
    Bindable.projectedValue.getter();
    swift_getKeyPath();
    Bindable<A>.subscript.getter();

    v75(v51, v38);
    v52 = v82;
    TextField<>.init(_:text:axis:)();
    Bindable.wrappedValue.getter();
    v53 = v106;
    swift_getKeyPath();
    v106 = v53;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v54 = *(v53 + 152);
    v55 = *(v53 + 160);

    v106 = v54;
    v107 = v55;
    v56 = v80;
    sub_1005441A8(v45, v80);
    v57 = (*(v78 + 80) + 16) & ~*(v78 + 80);
    v58 = swift_allocObject();
    sub_10054420C(v56, v58 + v57);
    v59 = sub_100020674(&qword_1011945D8, &qword_101194578, &qword_100EDC980, &protocol conformance descriptor for TextField<A>);
    v60 = v83;
    v61 = v86;
    View.onChange<A>(of:initial:_:)();

    (*(v84 + 8))(v52, v61);
    v106 = v61;
    v107 = &type metadata for String;
    v108 = v59;
    v109 = &protocol witness table for String;
    swift_getOpaqueTypeConformance2();
    v62 = v81;
    v63 = v87;
    View.lineLimit(_:)();
    (*(v85 + 8))(v60, v63);
    (*(v102 + 32))(v101, v62, v103);
    v100 = 0;
  }

  v64 = v101;
  (*(v102 + 56))(v101, v100, 1, v103);
  v66 = v95;
  v65 = v96;
  v67 = *(v96 + 16);
  v68 = v104;
  v69 = v97;
  v67(v95, v104, v97);
  v70 = v98;
  sub_10008FD0C(v64, v98);
  v71 = v99;
  v67(v99, v66, v69);
  v72 = sub_10010FC20(&qword_1011945D0, &qword_100ED2118);
  sub_10008FD0C(v70, &v71[*(v72 + 48)]);
  sub_10008FD7C(v64);
  v73 = *(v65 + 8);
  v73(v68, v69);
  sub_10008FD7C(v70);
  return (v73)(v66, v69);
}

uint64_t sub_100542CBC()
{
  sub_10010FC20(&qword_101194498, &qword_100ED1E90);
  Bindable.wrappedValue.getter();
  swift_getKeyPath();
  sub_100543B78();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10010FC20(&qword_1011945E0, &qword_100ED2168);
  sub_10010FC20(&qword_1011945E8, &qword_100ED2170);
  sub_100020674(&qword_1011945F0, &qword_1011945E0, &qword_100ED2168, &protocol conformance descriptor for [A]);
  sub_1001109D0(&qword_10117FF50, &qword_100ED7890);
  sub_1001109D0(&qword_10117FF40, &qword_100EB9BA8);
  sub_100544124();
  sub_100543F60();
  swift_getOpaqueTypeConformance2();
  return ForEach<>.init(_:id:content:)();
}

uint64_t sub_100542E8C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[7];
  v43 = a1[6];
  v44 = v3;
  v45 = *(a1 + 16);
  v4 = a1[3];
  v39 = a1[2];
  v40 = v4;
  v5 = a1[5];
  v41 = a1[4];
  v42 = v5;
  v6 = a1[1];
  v37 = *a1;
  v38 = v6;
  sub_100009838();

  v7 = Text.init<A>(_:)();
  v9 = v8;
  v11 = v10;
  static Font.body.getter();
  v12 = Text.font(_:)();
  v14 = v13;
  v16 = v15;
  v35 = v17;

  sub_10011895C(v7, v9, v11 & 1);

  LOBYTE(v7) = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v36[160] = v16 & 1;
  v36[152] = 0;
  v52 = v43;
  v53 = v44;
  v54 = v45;
  v48 = v39;
  v49 = v40;
  v50 = v41;
  v51 = v42;
  v46 = v37;
  v47 = v38;
  UIScreen.Dimensions.size.getter();
  v58 = v45;
  v27 = v42;
  v57[6] = v43;
  v26 = v43;
  v57[7] = v44;
  v28 = v38;
  v57[2] = v39;
  v29 = v39;
  v57[3] = v40;
  v30 = v40;
  v57[4] = v41;
  v31 = v41;
  v57[5] = v42;
  v57[0] = v37;
  v32 = v37;
  v57[1] = v38;
  v33 = v44;
  v55[6] = v43;
  *v56 = v44;
  *&v56[16] = v45;
  v55[2] = v39;
  v55[3] = v40;
  v55[4] = v41;
  v55[5] = v42;
  v55[0] = v37;
  v55[1] = v38;
  v56[24] = 1;
  *a2 = v12;
  *(a2 + 8) = v14;
  *(a2 + 16) = v16 & 1;
  *(a2 + 24) = v35;
  *(a2 + 32) = v7;
  *(a2 + 40) = v19;
  *(a2 + 48) = v21;
  *(a2 + 56) = v23;
  *(a2 + 64) = v25;
  *(a2 + 72) = 0;
  *(a2 + 176) = v26;
  *(a2 + 192) = v33;
  *(a2 + 112) = v29;
  *(a2 + 128) = v30;
  *(a2 + 144) = v31;
  *(a2 + 160) = v27;
  *(a2 + 80) = v32;
  *(a2 + 96) = v28;
  *(a2 + 201) = *&v56[9];
  v59 = 1;
  sub_100543BFC(&v37, v36);
  sub_1000089F8(v55, v36, &qword_10117FF48, &unk_100EB9BB0);
  return sub_1000095E8(v57, &qword_10117FF48, &unk_100EB9BB0);
}

double sub_1005430D8(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  sub_10010FC20(&qword_101194498, &qword_100ED1E90);
  Bindable.wrappedValue.getter();

  sub_1005442F0(400, v2, v3);

  v4 = static String._fromSubstring(_:)();
  v6 = v5;

  sub_1005418BC(v4, v6);

  return result;
}

uint64_t sub_10054319C()
{
  sub_10010FC20(&qword_101194568, &qword_100ED2080);
  sub_100020674(&qword_101194570, &qword_101194568, &qword_100ED2080, &protocol conformance descriptor for TupleView<A>);
  return Form.init(content:)();
}

uint64_t sub_100543240(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 128) = a4;
  *(v5 + 136) = a5;
  *(v5 + 152) = a3;
  *(v5 + 112) = a1;
  *(v5 + 120) = a2;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  *(v5 + 144) = swift_task_alloc();

  return _swift_task_switch(sub_1005432E4, 0, 0);
}

uint64_t sub_1005432E4()
{
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v4 = *(v0 + 120);
  v3 = *(v0 + 128);
  v5 = *(v0 + 152);
  v6 = *(v0 + 112);
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v1, 1, 1, v7);
  sub_10012B7A8(v2, v0 + 16);
  type metadata accessor for MainActor();

  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = &protocol witness table for MainActor;
  *(v9 + 32) = v6;
  *(v9 + 40) = v4;
  *(v9 + 48) = v5;
  *(v9 + 56) = v3;
  sub_10012B828(v0 + 16, v9 + 64);
  sub_1001F4CB8(0, 0, v1, &unk_100ED2000, v9);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_100543448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 256) = a7;
  *(v8 + 264) = a8;
  *(v8 + 304) = a6;
  *(v8 + 240) = a4;
  *(v8 + 248) = a5;
  type metadata accessor for Locale();
  *(v8 + 272) = swift_task_alloc();
  type metadata accessor for String.LocalizationValue();
  *(v8 + 280) = swift_task_alloc();
  type metadata accessor for ReportConcern.ContentView(0);
  *(v8 + 288) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v8 + 296) = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10054356C, v10, v9);
}

uint64_t sub_10054356C()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 304);
  v4 = *(v0 + 240);
  v3 = *(v0 + 248);

  v5 = objc_allocWithZone(type metadata accessor for ReportConcern.ViewController(0));
  v6 = qword_1011942B0;
  type metadata accessor for ReportConcern.ViewModel(0);
  v7 = swift_allocObject();
  sub_100543B5C(v0 + 16);
  v8 = *(v0 + 128);
  *(v7 + 112) = *(v0 + 112);
  *(v7 + 128) = v8;
  v9 = *(v0 + 144);
  v10 = *(v0 + 64);
  *(v7 + 48) = *(v0 + 48);
  *(v7 + 64) = v10;
  v11 = *(v0 + 96);
  *(v7 + 80) = *(v0 + 80);
  *(v7 + 96) = v11;
  v12 = *(v0 + 32);
  *(v7 + 16) = *(v0 + 16);
  *(v7 + 32) = v12;
  *(v7 + 144) = v9;
  *(v7 + 152) = 0;
  *(v7 + 160) = 0xE000000000000000;
  *(v7 + 168) = _swiftEmptyArrayStorage;
  ObservationRegistrar.init()();
  *&v5[v6] = v7;
  v13 = &v5[qword_1011942A8];
  *v13 = v4;
  *(v13 + 1) = v3;
  v13[16] = v2;
  *(v13 + 24) = 0u;
  *(v13 + 40) = 0u;
  *(v13 + 56) = 0u;
  *(v13 + 9) = v1;
  sub_100543B78();

  Bindable<A>.init(wrappedValue:)();
  v14 = UIHostingController.init(rootView:)();
  v15 = *&v14[qword_1011942B0];
  v16 = &v14[qword_1011942A8];
  *(v0 + 152) = *&v14[qword_1011942A8];
  v17 = *(v16 + 3);
  v18 = *(v16 + 4);
  v19 = *(v16 + 2);
  *(v0 + 168) = *(v16 + 1);
  *(v0 + 216) = v18;
  *(v0 + 200) = v17;
  *(v0 + 184) = v19;
  swift_getKeyPath();
  *(v0 + 232) = v15;
  v20 = v14;

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v21 = sub_10053E434();

  sub_100541ADC(v21);

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v22 = String._bridgeToObjectiveC()();

  [v20 setTitle:v22];

  v23 = v20;
  v24 = [v23 navigationItem];
  sub_100009F78(0, &qword_101181580, UIBarButtonItem_ptr);
  sub_100009F78(0, &qword_1011839A0, UIAction_ptr);
  v25 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v26 = swift_allocObject();
  v26[2] = v25;
  v26[3] = v4;
  v26[4] = v3;

  v36.value.super.super.isa = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v36.is_nil = 0;
  isa = UIBarButtonItem.init(systemItem:primaryAction:menu:)(UIBarButtonSystemItemDone, v36, v38).super.super.isa;
  [v24 setRightBarButtonItem:{isa, 0, 0, 0, sub_100543BD0, v26}];

  v28 = [v23 navigationItem];
  v29 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v34 = v29;
  v37.value.super.super.isa = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v37.is_nil = 0;
  v30 = UIBarButtonItem.init(systemItem:primaryAction:menu:)(UIBarButtonSystemItemCancel, v37, v39).super.super.isa;
  [v28 setLeftBarButtonItem:{v30, 0, 0, 0, sub_100543BDC, v34}];

  v31 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v23];
  PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v31, 1, 1, 0, 0);

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_100543A80(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 56);
  v9 = *(v1 + 48);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10002F3F4;

  return sub_100543448(a1, v4, v5, v6, v7, v9, v8, v1 + 64);
}

double sub_100543B5C(uint64_t a1)
{
  *(a1 + 128) = 0;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

unint64_t sub_100543B78()
{
  result = qword_101194540;
  if (!qword_101194540)
  {
    type metadata accessor for ReportConcern.ViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101194540);
  }

  return result;
}

uint64_t sub_100543BE4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100543C34(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[22];
  v8 = v1[23];
  v9 = v1[24];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10002F3F4;

  return sub_100540B64(a1, v4, v5, v6, (v1 + 5), v7, v8, v9);
}

uint64_t sub_100543D10(uint64_t a1)
{
  v2 = type metadata accessor for Notice(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100543D84(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == *(a2 + 16) && a1[3] == *(a2 + 24);
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  v6 = a1[6];
  v7 = *(a2 + 48);
  if (v6)
  {
    if (!v7 || (a1[5] != *(a2 + 40) || v6 != v7) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v8 = a1[8];
  v9 = *(a2 + 64);
  if (v8)
  {
    if (!v9 || (a1[7] != *(a2 + 56) || v8 != v9) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if ((a1[9] != *(a2 + 72) || a1[10] != *(a2 + 80)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v10 = a1[12];
  v11 = *(a2 + 96);
  if (v10)
  {
    if (!v11 || (a1[11] != *(a2 + 88) || v10 != v11) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  v12 = a1[14];
  v13 = *(a2 + 112);
  if (v12)
  {
    if (v13 && (a1[13] == *(a2 + 104) && v12 == v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      goto LABEL_41;
    }

    return 0;
  }

  if (v13)
  {
    return 0;
  }

LABEL_41:
  if (a1[15] == *(a2 + 120) && a1[16] == *(a2 + 128))
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

unint64_t sub_100543F60()
{
  result = qword_1011945B0;
  if (!qword_1011945B0)
  {
    sub_1001109D0(&qword_10117FF40, &qword_100EB9BA8);
    sub_100543FE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011945B0);
  }

  return result;
}

unint64_t sub_100543FE4()
{
  result = qword_1011945B8;
  if (!qword_1011945B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011945B8);
  }

  return result;
}

unint64_t sub_100544038()
{
  result = qword_1011945C0;
  if (!qword_1011945C0)
  {
    sub_1001109D0(&qword_1011945A8, &qword_100ED2110);
    sub_1001109D0(&qword_10117FF50, &qword_100ED7890);
    sub_1001109D0(&qword_10117FF40, &qword_100EB9BA8);
    sub_100544124();
    sub_100543F60();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011945C0);
  }

  return result;
}

unint64_t sub_100544124()
{
  result = qword_1011A1630;
  if (!qword_1011A1630)
  {
    sub_1001109D0(&qword_10117FF50, &qword_100ED7890);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A1630);
  }

  return result;
}

uint64_t sub_1005441A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReportConcern.ContentView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10054420C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReportConcern.ContentView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_100544270(uint64_t a1, uint64_t *a2)
{
  type metadata accessor for ReportConcern.ContentView(0);

  return sub_1005430D8(a1, a2);
}

uint64_t sub_1005442F0(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    String.index(_:offsetBy:limitedBy:)();

    return String.subscript.getter();
  }

  return result;
}

void sub_10054438C()
{
  *(*(v0 + 16) + 168) = *(v0 + 24);
}

void sub_1005443C8()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 152) = v0[3];
  *(v1 + 160) = v2;
}

uint64_t sub_100544408(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 80);
  v5 = *(a1 + 112);
  __src[6] = *(a1 + 96);
  __src[7] = v5;
  v6 = *(a1 + 16);
  v7 = *(a1 + 48);
  __src[2] = *(a1 + 32);
  __src[3] = v7;
  v8 = *(a1 + 48);
  v9 = *(a1 + 80);
  __src[4] = *(a1 + 64);
  __src[5] = v9;
  v10 = *(a1 + 16);
  __src[0] = *a1;
  __src[1] = v10;
  v11 = a2[4];
  *(&__src[13] + 8) = a2[5];
  v12 = a2[7];
  *(&__src[14] + 8) = a2[6];
  *(&__src[15] + 8) = v12;
  v13 = *a2;
  *(&__src[9] + 8) = a2[1];
  v14 = a2[3];
  *(&__src[10] + 8) = a2[2];
  *(&__src[11] + 8) = v14;
  *(&__src[12] + 8) = v11;
  *(&__src[8] + 8) = v13;
  v15 = *(a1 + 112);
  v37[6] = __src[6];
  v37[7] = v15;
  v37[2] = __src[2];
  v37[3] = v8;
  v37[4] = __src[4];
  v37[5] = v4;
  v16 = *(a2 + 16);
  *&__src[8] = *(a1 + 128);
  *(&__src[16] + 1) = v16;
  v38 = *(a1 + 128);
  v37[0] = __src[0];
  v37[1] = v6;
  if (sub_100543BE4(v37) != 1)
  {
    v24[6] = *(&__src[14] + 8);
    v24[7] = *(&__src[15] + 8);
    v25 = *(&__src[16] + 1);
    v24[2] = *(&__src[10] + 8);
    v24[3] = *(&__src[11] + 8);
    v24[4] = *(&__src[12] + 8);
    v24[5] = *(&__src[13] + 8);
    v24[0] = *(&__src[8] + 8);
    v24[1] = *(&__src[9] + 8);
    if (sub_100543BE4(v24) != 1)
    {
      v20[6] = *(&__src[14] + 8);
      v20[7] = *(&__src[15] + 8);
      v21 = *(&__src[16] + 1);
      v20[2] = *(&__src[10] + 8);
      v20[3] = *(&__src[11] + 8);
      v20[4] = *(&__src[12] + 8);
      v20[5] = *(&__src[13] + 8);
      v20[0] = *(&__src[8] + 8);
      v20[1] = *(&__src[9] + 8);
      __dst[6] = *(&__src[14] + 8);
      __dst[7] = *(&__src[15] + 8);
      *&__dst[8] = *(&__src[16] + 1);
      __dst[2] = *(&__src[10] + 8);
      __dst[3] = *(&__src[11] + 8);
      __dst[4] = *(&__src[12] + 8);
      __dst[5] = *(&__src[13] + 8);
      __dst[0] = *(&__src[8] + 8);
      __dst[1] = *(&__src[9] + 8);
      v34 = __src[6];
      v35 = __src[7];
      v36 = *&__src[8];
      v30 = __src[2];
      v31 = __src[3];
      v33 = __src[5];
      v32 = __src[4];
      v28 = __src[0];
      v29 = __src[1];
      v18 = sub_100543D84(&v28, __dst);
      sub_1000089F8(a1, v22, &qword_10117FF40, &qword_100EB9BA8);
      sub_1000089F8(a2, v22, &qword_10117FF40, &qword_100EB9BA8);
      sub_1000095E8(v20, &qword_10117FF40, &qword_100EB9BA8);
      v22[6] = __src[6];
      v22[7] = __src[7];
      v23 = *&__src[8];
      v22[2] = __src[2];
      v22[3] = __src[3];
      v22[4] = __src[4];
      v22[5] = __src[5];
      v22[0] = __src[0];
      v22[1] = __src[1];
      sub_1000095E8(v22, &qword_10117FF40, &qword_100EB9BA8);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    goto LABEL_5;
  }

  __dst[6] = *(&__src[14] + 8);
  __dst[7] = *(&__src[15] + 8);
  *&__dst[8] = *(&__src[16] + 1);
  __dst[2] = *(&__src[10] + 8);
  __dst[3] = *(&__src[11] + 8);
  __dst[4] = *(&__src[12] + 8);
  __dst[5] = *(&__src[13] + 8);
  __dst[0] = *(&__src[8] + 8);
  __dst[1] = *(&__src[9] + 8);
  if (sub_100543BE4(__dst) != 1)
  {
LABEL_5:
    memcpy(__dst, __src, sizeof(__dst));
    sub_1000089F8(a1, &v28, &qword_10117FF40, &qword_100EB9BA8);
    sub_1000089F8(a2, &v28, &qword_10117FF40, &qword_100EB9BA8);
    sub_1000095E8(__dst, &qword_1011945F8, &qword_100ED2178);
    v17 = 1;
    return v17 & 1;
  }

  v34 = __src[6];
  v35 = __src[7];
  v36 = *&__src[8];
  v30 = __src[2];
  v31 = __src[3];
  v33 = __src[5];
  v32 = __src[4];
  v28 = __src[0];
  v29 = __src[1];
  sub_1000089F8(a1, v24, &qword_10117FF40, &qword_100EB9BA8);
  sub_1000089F8(a2, v24, &qword_10117FF40, &qword_100EB9BA8);
  sub_1000095E8(&v28, &qword_10117FF40, &qword_100EB9BA8);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_100544794()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v2 + 112);
  v14[5] = *(v2 + 96);
  v14[6] = v3;
  v14[7] = *(v2 + 128);
  v15 = *(v2 + 144);
  v4 = *(v2 + 48);
  v14[1] = *(v2 + 32);
  v14[2] = v4;
  v5 = *(v2 + 80);
  v14[3] = *(v2 + 64);
  v14[4] = v5;
  v14[0] = *(v2 + 16);
  v6 = *(v1 + 128);
  v7 = *(v1 + 80);
  v8 = *(v1 + 112);
  *(v2 + 112) = *(v1 + 96);
  *(v2 + 128) = v8;
  *(v2 + 96) = v7;
  v10 = *(v1 + 48);
  v9 = *(v1 + 64);
  v11 = *(v1 + 32);
  *(v2 + 32) = *(v1 + 16);
  *(v2 + 48) = v11;
  *(v2 + 64) = v10;
  *(v2 + 80) = v9;
  *(v2 + 16) = *v1;
  *(v2 + 144) = v6;
  sub_1000089F8(v1, v13, &qword_10117FF40, &qword_100EB9BA8);
  return sub_1000095E8(v14, &qword_10117FF40, &qword_100EB9BA8);
}

unint64_t sub_100544874()
{
  result = qword_101194610;
  if (!qword_101194610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101194610);
  }

  return result;
}

id sub_10054492C(unint64_t a1)
{
  v2 = v1;
  v4 = [v1 isReversed];
  v5 = &UITransitionContextToViewKey;
  if (v4)
  {
    v5 = &UITransitionContextFromViewKey;
  }

  result = [a1 viewForKey:*v5];
  if (result)
  {
    v7 = result;
    v96 = OBJC_IVAR____TtC5Music38PalettePresentationAnimationController_interaction;
    v8 = *(v1 + OBJC_IVAR____TtC5Music38PalettePresentationAnimationController_interaction);
    v9 = OBJC_IVAR____TtC5Music30PalettePresentationInteraction_viewProvider;
    swift_beginAccess();
    sub_100546E34(v8 + v9, &aBlock);
    if (v103)
    {
      sub_100059A8C(&aBlock, v111);
      v10 = *(*sub_10000954C(v111, v111[3]) + OBJC_IVAR____TtC5Music16TabBarController_bottomPlayerViewController);
      if (v10 && (v11 = [v10 view]) != 0)
      {
        v85 = v11;
        v87 = v7;
        v12 = _swiftEmptyArrayStorage;
        v110 = _swiftEmptyArrayStorage;
        v13 = &selRef_setPhotosHeaderMetadata_;
        v14 = [a1 viewControllerForKey:UITransitionContextFromViewControllerKey];
        if (v14)
        {
          v15 = v14;
          swift_getObjectType();
          v16 = swift_conformsToProtocol2();
          if (v16)
          {
            ObjectType = v16;
            v12 = sub_100056354(0, 1, 1, _swiftEmptyArrayStorage);
            v19 = v12[2];
            v18 = v12[3];
            v20 = (v19 + 1);
            if (v19 >= v18 >> 1)
            {
              goto LABEL_62;
            }

            goto LABEL_10;
          }
        }

LABEL_14:
        v22 = [a1 v13[154]];
        if (v22)
        {
          v23 = v22;
          swift_getObjectType();
          v24 = swift_conformsToProtocol2();
          if (v24)
          {
            v25 = v24;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v12 = sub_100056354(0, v12[2] + 1, 1, v12);
            }

            v27 = v12[2];
            v26 = v12[3];
            if (v27 >= v26 >> 1)
            {
              v12 = sub_100056354((v26 > 1), v27 + 1, 1, v12);
            }

            v12[2] = v27 + 1;
            v28 = &v12[2 * v27];
            v28[4] = v23;
            v28[5] = v25;
            v110 = v12;
          }

          else
          {
          }
        }

        v29 = *(v2 + v96);
        v30 = &v29[OBJC_IVAR____TtC5Music30PalettePresentationInteraction_transitioningDelegate];
        Strong = swift_unknownObjectWeakLoadStrong();
        v89 = a1;
        if (Strong)
        {
          v32 = *(v30 + 1);
          v33 = Strong;
          ObjectType = swift_getObjectType();
          v13 = (v32 + 16);
          v20 = *(v32 + 16);
          swift_unknownObjectRetain();
          v19 = v29;
          v12 = v33;
          v15 = v20();

          v94 = v15[2];
          if (v94)
          {
            a1 = 0;
            v92 = v15 + 4;
            v34 = _swiftEmptyArrayStorage;
            v90 = v15;
            while (1)
            {
              v18 = v15[2];
              if (a1 >= v18)
              {
                __break(1u);
LABEL_58:
                __break(1u);
LABEL_59:
                __break(1u);
LABEL_60:
                __break(1u);
LABEL_61:
                __break(1u);
LABEL_62:
                v12 = sub_100056354((v18 > 1), v20, 1, v12);
LABEL_10:
                v12[2] = v20;
                v21 = &v12[2 * v19];
                v21[4] = v15;
                v21[5] = ObjectType;
                v110 = v12;
                goto LABEL_14;
              }

              v98 = *&v92[2 * a1];
              v35 = v92[2 * a1];
              swift_getObjectType();
              v20 = v2;
              v36 = *(v2 + v96);
              v13 = *(&v98 + 1);
              v37 = *(*(&v98 + 1) + 16);
              v38 = v35;
              v39 = v36;
              v19 = v37();

              v12 = v38;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v34 = sub_100056354(0, v34[2] + 1, 1, v34);
              }

              v41 = v34[2];
              v40 = v34[3];
              ObjectType = v41 + 1;
              v2 = v20;
              if (v41 >= v40 >> 1)
              {
                v34 = sub_100056354((v40 > 1), v41 + 1, 1, v34);
              }

              v34[2] = ObjectType;
              v18 = &v34[2 * v41];
              *(v18 + 32) = v98;
              v15 = *(v19 + 16);
              v42 = v15 + ObjectType;
              if (__OFADD__(ObjectType, v15))
              {
                goto LABEL_58;
              }

              v43 = v34[3] >> 1;
              if (v43 < v42)
              {
                if (ObjectType <= v42)
                {
                  v46 = v15 + ObjectType;
                }

                else
                {
                  v46 = ObjectType;
                }

                v34 = sub_100056354(1, v46, 1, v34);
                ObjectType = v34[2];
                v43 = v34[3] >> 1;
                if (*(v19 + 16))
                {
LABEL_35:
                  v18 = v43 - ObjectType;
                  if (v18 < v15)
                  {
                    goto LABEL_60;
                  }

                  v13 = &v34[2 * ObjectType];
                  sub_10010FC20(&unk_1011815B0, &unk_100EBD030);
                  swift_arrayInitWithCopy();

                  if (v15)
                  {
                    v44 = v34[2];
                    v45 = __OFADD__(v44, v15);
                    v18 = v15 + v44;
                    if (v45)
                    {
                      goto LABEL_61;
                    }

                    v34[2] = v18;
                  }

                  goto LABEL_26;
                }
              }

              else if (v15)
              {
                goto LABEL_35;
              }

              if (v15)
              {
                goto LABEL_59;
              }

LABEL_26:
              ++a1;

              v15 = v90;
              if (v94 == a1)
              {
                goto LABEL_46;
              }
            }
          }

          v34 = _swiftEmptyArrayStorage;
LABEL_46:

          swift_unknownObjectRelease_n();
          a1 = v89;
        }

        else
        {
          v34 = _swiftEmptyArrayStorage;
        }

        sub_1001258E8(v34);

        v48 = sub_10018E23C(v47);
        sub_10028D0DC(v48, [v2 isReversed]);
        v93 = v49;

        v97 = swift_allocObject();
        *(v97 + 16) = 0;
        v83 = (v97 + 16);
        v88 = swift_allocObject();
        swift_unknownObjectWeakInit();
        sub_100008FE4(v111, v109);
        sub_100008FE4(v109, v108);
        v50 = swift_allocObject();
        v50[2] = v88;
        v50[3] = v85;
        v50[4] = v87;
        sub_100059A8C(v109, (v50 + 5));
        v50[10] = v97;
        v95 = swift_allocObject();
        swift_unknownObjectWeakInit();
        sub_100008FE4(v111, v107);
        sub_100008FE4(v107, v106);
        v51 = swift_allocObject();
        v51[2] = v95;
        v51[3] = v47;
        v99 = v47;
        v51[4] = a1;
        v51[5] = v93;
        v51[6] = v87;
        v51[7] = v85;
        sub_100059A8C(v107, (v51 + 8));
        v52 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v53 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v54 = swift_allocObject();
        v54[2] = v52;
        v54[3] = v53;
        v54[4] = v85;
        v54[5] = v97;
        v54[6] = sub_100546F0C;
        v54[7] = v50;
        v54[8] = sub_100546F74;
        v54[9] = v51;
        v54[10] = v47;
        v54[11] = v93;
        v54[12] = v87;
        v104 = sub_100546FEC;
        v105 = v54;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        v102 = sub_10002BC98;
        v103 = &unk_1010B1A48;
        v55 = _Block_copy(&aBlock);
        v56 = v85;
        v57 = v87;
        v58 = v56;
        v59 = v57;
        swift_retain_n();
        swift_bridgeObjectRetain_n();

        v91 = v58;
        v60 = v59;

        swift_unknownObjectRetain();

        [v2 addNoninteractiveAnimations:v55];
        _Block_release(v55);
        v61 = swift_allocObject();
        *(v61 + 16) = v60;
        *(v61 + 24) = v93;
        v104 = sub_10054702C;
        v105 = v61;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        v102 = sub_1005C3688;
        v103 = &unk_1010B1A98;
        v62 = _Block_copy(&aBlock);
        v63 = v60;

        v64 = v89;

        [v2 addNoninteractiveCompletion:v62];
        _Block_release(v62);
        v100.receiver = v2;
        v100.super_class = type metadata accessor for PalettePresentationAnimationController();
        v65 = objc_msgSendSuper2(&v100, "interruptibleAnimatorForTransition:", v89);
        swift_unknownObjectRelease();
        if ([v2 isReversed])
        {
          sub_10000959C(v108);
        }

        else
        {
          v66 = *sub_10000954C(v108, v108[3]);
          v103 = type metadata accessor for TabBarController(0);
          v104 = &off_1010BAC08;
          *&aBlock = v66;
          swift_beginAccess();
          v67 = swift_unknownObjectWeakLoadStrong();
          v68 = v66;
          if (v67)
          {
            [v91 setTranslatesAutoresizingMaskIntoConstraints:0];
            [v63 addSubview:v91];
            sub_10000954C(&aBlock, v103);
            sub_1006BE154();
            v86 = objc_opt_self();
            sub_10010FC20(&qword_101183990, &qword_100EBC750);
            v69 = swift_allocObject();
            *(v69 + 16) = xmmword_100EBDC10;
            v84 = v67;
            v70 = [v91 leadingAnchor];
            v71 = [v63 leadingAnchor];
            v72 = [v70 constraintEqualToAnchor:v71];

            *(v69 + 32) = v72;
            v73 = [v91 trailingAnchor];
            v74 = [v63 trailingAnchor];
            v75 = [v73 constraintEqualToAnchor:v74];

            *(v69 + 40) = v75;
            v76 = [v91 topAnchor];
            v77 = [v63 topAnchor];
            v78 = [v76 constraintEqualToAnchor:v77];

            *(v69 + 48) = v78;
            v64 = v89;
            v79 = [v91 heightAnchor];
            [v91 frame];
            v80 = [v79 constraintEqualToConstant:CGRectGetHeight(v112)];

            *(v69 + 56) = v80;
            sub_100294F58();
            isa = Array._bridgeToObjectiveC()().super.isa;

            [v86 activateConstraints:isa];

            swift_beginAccess();
            *v83 = 1;
          }

          sub_10000959C(&aBlock);

          sub_10000959C(v108);
        }

        if ([v64 isInteractive])
        {
          sub_10000959C(v106);
        }

        else
        {
          v82 = sub_10000954C(v106, v106[3]);
          sub_10054665C(v95, v99, v64, v93, v63, v91, *v82);

          sub_10000959C(v106);
        }
      }

      else
      {
      }

      return sub_10000959C(v111);
    }

    else
    {

      return sub_100546EA4(&aBlock);
    }
  }

  return result;
}

void sub_10054563C(void *a1, double a2)
{
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  v8[4] = sub_100547124;
  v8[5] = v5;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_10002BC98;
  v8[3] = &unk_1010B1BD8;
  v6 = _Block_copy(v8);
  v7 = a1;

  [v4 animateKeyframesWithDuration:0 delay:v6 options:0 animations:a2 completion:0.0];
  _Block_release(v6);
}

void sub_100545740(void *a1)
{
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v6[4] = sub_1001D2724;
  v6[5] = v3;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_10002BC98;
  v6[3] = &unk_1010B1C28;
  v4 = _Block_copy(v6);
  v5 = a1;

  [v2 addKeyframeWithRelativeStartTime:v4 relativeDuration:0.0 animations:0.5];
  _Block_release(v4);
}

void sub_100545830(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, void *a11)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v18 = Strong;
  swift_beginAccess();
  v19 = swift_unknownObjectWeakLoadStrong();
  if (!v19)
  {

    return;
  }

  v20 = v19;
  v21 = a4 + 16;
  [a3 frame];
  v22 = objc_opt_self();
  v23 = swift_allocObject();
  v23[2] = v21;
  v23[3] = a5;
  v23[4] = a6;
  v23[5] = v18;
  v23[6] = a7;
  v23[7] = a8;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_10054712C;
  *(v24 + 24) = v23;
  aBlock[4] = sub_100029B94;
  aBlock[5] = v24;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100029B9C;
  aBlock[3] = &unk_1010B1CA0;
  v25 = _Block_copy(aBlock);

  v26 = v18;

  [v22 performWithoutAnimation:v25];
  _Block_release(v25);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_37;
  }

  v18 = a10;
  v28 = *(a9 + 16);
  if (v28)
  {
    v29 = (a9 + 40);
    do
    {
      v30 = *(v29 - 1);
      v31 = *v29;
      ObjectType = swift_getObjectType();
      v33 = *(v31 + 32);
      v34 = v30;
      v33(v20, a10, v26, ObjectType, v31);

      v29 += 2;
      --v28;
    }

    while (v28);
  }

  [objc_opt_self() setFrameStallSkipRequest:1];
  [*&v26[OBJC_IVAR____TtC5Music38PalettePresentationAnimationController_basicAnimator] startAnimation];
  [*&v26[OBJC_IVAR____TtC5Music38PalettePresentationAnimationController_easingAnimator] startAnimation];
  if (a10 >> 62)
  {
LABEL_37:
    v35 = _CocoaArrayWrapper.endIndex.getter();
    if (v35)
    {
      goto LABEL_9;
    }

LABEL_38:

    swift_unknownObjectRelease();
    return;
  }

  v35 = *((a10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v35)
  {
    goto LABEL_38;
  }

LABEL_9:
  if (v35 >= 1)
  {
    v36 = 0;
    v37 = v18 & 0xC000000000000001;
    v85 = v20;
    v87 = v35;
    while (1)
    {
      if (v37)
      {
        v38 = sub_1007E9A10(v36, v18);
        v39 = *(v38 + 40);
        if (v39)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v38 = *(v18 + 8 * v36 + 32);

        v39 = *(v38 + 40);
        if (v39)
        {
LABEL_17:
          v40 = *(v39 + 40);
          if (v40)
          {
            v41 = *(v39 + 48);
            sub_100030444(*(v39 + 40), v41);

            v42 = v40(v38);
            v44 = v43;
            v46 = v45;
            v48 = v47;
            sub_100020438(v40, v41);
            v49 = *(v39 + 88);
            if (v49)
            {
              v50 = *(v39 + 96);

              v49(v38);
              sub_100020438(v49, v50);
            }

            (*(*v38 + 256))(v39);
            if (*(v38 + 48))
            {
              v89.origin.x = v42;
              v89.origin.y = v44;
              v89.size.width = v46;
              v89.size.height = v48;
              MaxX = CGRectGetMaxX(v89);
              v52 = v26;
              [v52 sourceFrame];
              if (CGRectGetMaxX(v90) >= MaxX)
              {
              }

              else
              {
                [a11 frame];
                Width = CGRectGetWidth(v91);
                [v52 sourceFrame];
                v54 = v53;
                v56 = v55;
                v58 = v57;
                v60 = v59;

                v92.origin.x = v54;
                v92.origin.y = v56;
                v92.size.width = v58;
                v92.size.height = v60;
                v42 = v42 - (Width - CGRectGetWidth(v92));
              }

              v35 = v87;
              v75 = *(v38 + 32);
              [v75 setFrame:{v42, v44, v46, v48}];
            }

            else
            {
              v61 = *(v39 + 32);
              v62 = [v20 containerView];
              [v61 convertRect:v62 toCoordinateSpace:{v42, v44, v46, v48}];
              v64 = v63;
              v66 = v65;
              v68 = v67;
              v70 = v69;

              v71 = v26;
              if ([v71 isReversed])
              {
                [a11 frame];
                MinY = CGRectGetMinY(v93);
                [v71 sourceFrame];
                if (MinY != CGRectGetMinY(v94))
                {
                  [v71 sourceFrame];
                  v73 = CGRectGetMinY(v95);
                  [a11 frame];
                  v66 = v66 + v73 - CGRectGetMinY(v96);
                }

                [a11 frame];
                MinX = CGRectGetMinX(v97);
                [v71 sourceFrame];
                if (MinX == CGRectGetMinX(v98))
                {
                }

                else
                {
                  [v71 sourceFrame];
                  v77 = v76;
                  v79 = v78;
                  v81 = v80;
                  v83 = v82;

                  v99.origin.x = v77;
                  v99.origin.y = v79;
                  v99.size.width = v81;
                  v99.size.height = v83;
                  v84 = CGRectGetMinX(v99);
                  [a11 frame];
                  v64 = v64 + v84 - CGRectGetMinX(v100);
                }

                v20 = v85;
              }

              else
              {
              }

              v75 = *(v38 + 32);
              [v75 setFrame:{v64, v66, v68, v70}];
              v35 = v87;
            }

            v37 = v18 & 0xC000000000000001;
          }

          else
          {
            v35 = v87;
          }
        }
      }

      ++v36;

      if (v35 == v36)
      {
        goto LABEL_38;
      }
    }
  }

  __break(1u);
}

void sub_100545EE8(int a1, id a2, unint64_t a3)
{
  [a2 setUserInteractionEnabled:1];
  if (a3 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
    if (!v4)
    {
      return;
    }
  }

  else
  {
    v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return;
    }
  }

  if (v4 >= 1)
  {
    v5 = 0;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v6 = sub_1007E9A10(v5, a3);
        v7 = v6[5];
        if (!v7)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v6 = *(a3 + 8 * v5 + 32);

        v7 = v6[5];
        if (!v7)
        {
          goto LABEL_5;
        }
      }

      v8 = v7[7];
      if (v8)
      {
        v9 = v7[8];

        sub_100030444(v8, v9);
        v8(v6);
        sub_100020438(v8, v9);
      }

      else
      {
      }

      (*(*v6 + 264))(v7, 1);
      v10 = v7[13];
      if (v10)
      {
        v11 = v7[14];

        v10(1, v6);

        sub_100020438(v10, v11);
        goto LABEL_6;
      }

LABEL_5:

LABEL_6:
      if (v4 == ++v5)
      {
        return;
      }
    }
  }

  __break(1u);
}

id sub_1005460C4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PalettePresentationAnimationController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10054622C(char a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC5Music38PalettePresentationAnimationController_completionBlocks;
  swift_beginAccess();
  v5 = *&v2[v4];
  v6 = *(v5 + 16);
  if (v6)
  {

    v7 = v5 + 40;
    do
    {
      v8 = *(v7 - 8);
      v10 = a1 & 1;

      v8(&v10);

      v7 += 16;
      --v6;
    }

    while (v6);
  }

  *&v2[v4] = _swiftEmptyArrayStorage;

  [v2 setNoninteractiveAnimations:0];
  return [v2 setNoninteractiveCompletion:0];
}

uint64_t sub_100546374(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v29 = type metadata accessor for TabBarController(0);
  v30 = &off_1010BAC08;
  v28[0] = a4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = a4;
    [a2 setTranslatesAutoresizingMaskIntoConstraints:0];
    [a3 addSubview:a2];
    sub_10000954C(v28, v29);
    sub_1006BE154();
    v12 = objc_opt_self();
    sub_10010FC20(&qword_101183990, &qword_100EBC750);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_100EBDC10;
    v14 = [a2 leadingAnchor];
    v15 = [a3 leadingAnchor];
    v16 = [v14 constraintEqualToAnchor:v15];

    *(v13 + 32) = v16;
    v17 = [a2 trailingAnchor];
    v18 = [a3 trailingAnchor];
    v19 = [v17 constraintEqualToAnchor:v18];

    *(v13 + 40) = v19;
    v20 = [a2 topAnchor];
    v21 = [a3 topAnchor];
    v22 = [v20 constraintEqualToAnchor:v21];

    *(v13 + 48) = v22;
    v23 = [a2 heightAnchor];
    [a2 frame];
    v24 = [v23 constraintEqualToConstant:CGRectGetHeight(v31)];

    *(v13 + 56) = v24;
    sub_100294F58();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v12 activateConstraints:isa];

    swift_beginAccess();
    *(a5 + 16) = 1;
  }

  else
  {
    v26 = a4;
  }

  return sub_10000959C(v28);
}

void sub_10054665C(uint64_t a1, uint64_t a2, void *a3, unint64_t a4, void *a5, void *a6, void *a7)
{
  v78[3] = swift_getObjectType();
  v78[4] = &off_1010BAC08;
  v78[0] = a7;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v16 = a7;
LABEL_41:
    sub_10000959C(v78);
    return;
  }

  v14 = Strong;
  if (*(Strong + OBJC_IVAR____TtC5Music38PalettePresentationAnimationController_isPrepared))
  {
    v15 = a7;
LABEL_40:

    goto LABEL_41;
  }

  v75 = a5;
  v76 = a6;
  v73 = OBJC_IVAR____TtC5Music38PalettePresentationAnimationController_isPrepared;
  v17 = *(a2 + 16);
  if (v17)
  {
    v18 = a7;
    v19 = (a2 + 40);
    do
    {
      v20 = *(v19 - 1);
      v21 = *v19;
      ObjectType = swift_getObjectType();
      v23 = *(v21 + 24);
      v24 = v20;
      v23(a3, a4, v14, ObjectType, v21);

      v19 += 2;
      --v17;
    }

    while (v17);
  }

  else
  {
    v25 = a7;
  }

  [v75 setUserInteractionEnabled:{0, v73}];
  if ([v14 isReversed])
  {
    v26 = v76;
    [v76 setAlpha:0.0];
    v27 = swift_allocObject();
    *(v27 + 16) = v76;
    v28 = *&v14[OBJC_IVAR____TtC5Music38PalettePresentationAnimationController_basicAnimator];
    v29 = swift_allocObject();
    v29[2] = sub_1001D2178;
    v29[3] = v27;
    v29[4] = v28;
    v30 = v28;
    v31 = v76;

    v32 = sub_1005471C4;
  }

  else
  {
    v33 = swift_allocObject();
    v26 = v76;
    *(v33 + 16) = v76;
    v34 = *&v14[OBJC_IVAR____TtC5Music38PalettePresentationAnimationController_basicAnimator];
    v29 = swift_allocObject();
    v29[2] = sub_100547034;
    v29[3] = v33;
    v29[4] = v34;
    v35 = v34;
    v36 = v76;
    v30 = v35;

    v32 = sub_10054703C;
  }

  UIViewPropertyAnimator.addModifiedAnimations(with:animations:)(0, v32, v29);

  sub_100008FE4(v78, v77);
  v37 = swift_allocObject();
  sub_100059A8C(v77, v37 + 16);
  *(v37 + 56) = v26;
  v38 = swift_allocObject();
  *(v38 + 16) = sub_100547040;
  *(v38 + 24) = v37;
  v39 = OBJC_IVAR____TtC5Music38PalettePresentationAnimationController_completionBlocks;
  swift_beginAccess();
  v40 = *&v14[v39];
  v41 = v26;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v14[v39] = v40;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v40 = sub_10049974C(0, v40[2] + 1, 1, v40);
    *&v14[v39] = v40;
  }

  v44 = v40[2];
  v43 = v40[3];
  if (v44 >= v43 >> 1)
  {
    v40 = sub_10049974C((v43 > 1), v44 + 1, 1, v40);
  }

  v40[2] = v44 + 1;
  v45 = &v40[2 * v44];
  v45[4] = sub_100547098;
  v45[5] = v38;
  *&v14[v39] = v40;
  swift_endAccess();

  if (!(a4 >> 62))
  {
    v46 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v46)
    {
      goto LABEL_19;
    }

LABEL_39:
    v14[v74] = 1;
    goto LABEL_40;
  }

  v46 = _CocoaArrayWrapper.endIndex.getter();
  if (!v46)
  {
    goto LABEL_39;
  }

LABEL_19:
  if (v46 >= 1)
  {
    v47 = 0;
    while (1)
    {
      if ((a4 & 0xC000000000000001) != 0)
      {
        v53 = sub_1007E9A10(v47, a4);
      }

      else
      {
        v53 = *(a4 + 8 * v47 + 32);
      }

      if (*(v53 + 48) == 1)
      {
        v48 = *(v53 + 56);
        if (!v48)
        {
          [*(v53 + 32) frame];
          v56 = v55;
          v58 = v57;
          v60 = v59;
          v62 = v61;
          [*(v53 + 32) setTranslatesAutoresizingMaskIntoConstraints:1];
          [*(v53 + 32) setFrame:{v56, v58, v60, v62}];
LABEL_37:

          goto LABEL_25;
        }

        v49 = *(v53 + 64);

        v50 = [a3 containerView];
        v51 = v53;
        v52 = 1;
      }

      else
      {
        v54 = *(v53 + 40);
        if (v54)
        {
          v48 = *(v54 + 72);
          if (v48)
          {
            v49 = *(v54 + 80);

            v48(v53);
            goto LABEL_24;
          }
        }

        v48 = *(v53 + 56);
        if (!v48)
        {
          v63 = [a3 containerView];
          [*(v53 + 32) bounds];
          [v63 convertRect:*(v53 + 32) fromCoordinateSpace:?];
          v65 = v64;
          v67 = v66;
          v69 = v68;
          v71 = v70;

          [*(v53 + 32) setTranslatesAutoresizingMaskIntoConstraints:1];
          [*(v53 + 32) setFrame:{v65, v67, v69, v71}];
          v72 = [a3 containerView];
          [v72 addSubview:*(v53 + 32)];

          goto LABEL_37;
        }

        v49 = *(v53 + 64);

        v50 = [a3 containerView];
        v51 = v53;
        v52 = 0;
      }

      (v48)(v51, v52, v50);

LABEL_24:

      sub_100020438(v48, v49);
LABEL_25:
      if (v46 == ++v47)
      {
        goto LABEL_39;
      }
    }
  }

  __break(1u);
}

id sub_100546CA0(void *a1)
{
  *&v1[OBJC_IVAR____TtC5Music38PalettePresentationAnimationController_completionBlocks] = _swiftEmptyArrayStorage;
  v1[OBJC_IVAR____TtC5Music38PalettePresentationAnimationController_isPrepared] = 0;
  *&v1[OBJC_IVAR____TtC5Music38PalettePresentationAnimationController_interaction] = a1;
  v3 = objc_allocWithZone(UICubicTimingParameters);
  v4 = a1;
  v5 = [v3 init];
  v6 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:v5 timingParameters:0.5];

  *&v1[OBJC_IVAR____TtC5Music38PalettePresentationAnimationController_basicAnimator] = v6;
  v7 = [objc_allocWithZone(MPCubicSpringTimingParameters) initWithMass:3.0 stiffness:500.0 damping:1000.0 initialVelocity:{0.0, 0.0}];
  v8 = [objc_allocWithZone(UICubicTimingParameters) initWithControlPoint1:0.187800005 controlPoint2:{0.00230000005, 0.539900005, 0.962899983}];
  [v7 setSpringCubicTimingParameters:v8];

  v9 = [objc_allocWithZone(MPCubicSpringAnimator) initWithDuration:v7 timingParameters:0.0];
  *&v1[OBJC_IVAR____TtC5Music38PalettePresentationAnimationController_easingAnimator] = v9;
  v11.receiver = v1;
  v11.super_class = type metadata accessor for PalettePresentationAnimationController();
  return objc_msgSendSuper2(&v11, "init");
}

uint64_t sub_100546E34(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_101194670, &qword_100ED2258);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100546EA4(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_101194670, &qword_100ED2258);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100546F0C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[10];
  v5 = *sub_10000954C(v0 + 5, v0[8]);

  return sub_100546374(v1, v2, v3, v5, v4);
}

void sub_100546F74()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = *sub_10000954C(v0 + 8, v0[11]);

  sub_10054665C(v1, v2, v3, v4, v5, v6, v7);
}

id sub_100547040()
{
  v1 = v0[7];
  sub_10000954C(v0 + 2, v0[5]);
  sub_1006BE37C(v1);

  return [v1 setAlpha:1.0];
}

uint64_t sub_1005470A0()
{

  return swift_deallocObject();
}

void sub_10054712C()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[5];
  v3 = v0[6];
  v5 = swift_beginAccess();
  if ((*v1 & 1) == 0)
  {
    v5 = v2(v5);
  }

  if ((*(v4 + OBJC_IVAR____TtC5Music38PalettePresentationAnimationController_isPrepared) & 1) == 0)
  {
    v3(v5);
  }
}

uint64_t sub_1005471D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_100547220(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10054727C()
{
  result = qword_101194678;
  if (!qword_101194678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101194678);
  }

  return result;
}

unint64_t sub_1005472D0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  if (qword_10117F898 != -1)
  {
    swift_once();
  }

  v6 = qword_101219020;
  v7 = objc_allocWithZone(type metadata accessor for WaveformPlayIndicator(0));
  v8 = WaveformPlayIndicator.init(settings:)(v6);
  WaveformPlayIndicator.colorPalette.setter(v2, v3, v4, v5);
  if (v1)
  {
    v9 = 1;
  }

  else
  {
    v9 = 3;
  }

  WaveformPlayIndicator.mode.setter(v9);
  return v8;
}

void sub_1005473A8()
{
  v1 = *v0;
  WaveformPlayIndicator.colorPalette.setter(v0[1], v0[2], v0[3], v0[4]);
  if (v1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 3;
  }

  WaveformPlayIndicator.mode.setter(v2);
}

uint64_t sub_100547428(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100547518();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10054748C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100547518();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1005474F0(uint64_t a1)
{
  sub_100547518();
  UIViewRepresentable.body.getter();
  __break(1u);
}

unint64_t sub_100547518()
{
  result = qword_101194680;
  if (!qword_101194680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101194680);
  }

  return result;
}

unint64_t sub_100547580()
{
  result = qword_101194688;
  if (!qword_101194688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101194688);
  }

  return result;
}

void sub_10054761C(uint64_t a1)
{
  type metadata accessor for MusicLibrary();
  if (v1 <= 0x3F)
  {
    sub_10005BAFC(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100547710(uint64_t a1)
{
  result = type metadata accessor for DragDropToFolder.Origin(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1005477AC(uint64_t a1)
{
  result = type metadata accessor for Playlist.Folder.Item();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

Swift::Int sub_100547818()
{
  Hasher.init(_seed:)();
  Playlist.Folder.Item.id.getter();
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_100547874(uint64_t a1)
{
  Playlist.Folder.Item.id.getter();
  String.hash(into:)();

  return result;
}

Swift::Int sub_1005478C4(uint64_t a1)
{
  Hasher.init(_seed:)();
  Playlist.Folder.Item.id.getter();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10054791C(uint64_t a1)
{
  v1 = Playlist.Folder.Item.id.getter();
  v3 = v2;
  if (v1 == Playlist.Folder.Item.id.getter() && v3 == v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

uint64_t sub_1005479F0(uint64_t a1)
{
  result = sub_100547A48(&qword_101194850, type metadata accessor for DragDropToFolder.Origin, &unk_100ED2460);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100547A48(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

BOOL sub_100547A90(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for MusicAuthorization.Status();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = v20 - v8;
  type metadata accessor for MusicLibrary();
  static MusicLibrary.shared.getter();
  v10 = static MusicLibrary.== infix(_:_:)();

  if ((v10 & 1) == 0)
  {
    return 0;
  }

  static MusicAuthorization.currentStatus.getter();
  (*(v5 + 104))(v7, enum case for MusicAuthorization.Status.authorized(_:), v4);
  sub_100547A48(&unk_1011948E0, &type metadata accessor for MusicAuthorization.Status, &protocol conformance descriptor for MusicAuthorization.Status);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v20[4] == v20[2] && v20[5] == v20[3])
  {
    v11 = *(v5 + 8);
    v11(v7, v4);
    v11(v9, v4);

    goto LABEL_6;
  }

  v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v13 = *(v5 + 8);
  v13(v7, v4);
  v13(v9, v4);

  if ((v12 & 1) == 0)
  {
    return 0;
  }

LABEL_6:
  v14 = 0;
  v15 = *(a1 + 16);
  do
  {
    v16 = v15 == v14;
    if (v15 == v14)
    {
      break;
    }

    v17 = *(type metadata accessor for DragDropToFolder(0) - 8);
    v18 = sub_100547D74(a1 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v14++, v2);
  }

  while ((v18 & 1) != 0);
  return v16;
}

uint64_t sub_100547D74(uint64_t a1, char *a2)
{
  v88 = a1;
  v89 = a2;
  v2 = type metadata accessor for Playlist.Folder();
  v87 = *(v2 - 8);
  __chkstk_darwin();
  v4 = &v74 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118F670, &unk_100EC89B0);
  __chkstk_darwin();
  v6 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v74 = &v74 - v7;
  v76 = type metadata accessor for MusicLibrary.AddAction.UnsupportedReason();
  v78 = *(v76 - 8);
  __chkstk_darwin();
  v75 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v77 = &v74 - v9;
  v10 = type metadata accessor for MusicLibrary.AddAction();
  v79 = *(v10 - 8);
  v80 = v10;
  __chkstk_darwin();
  v12 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10010FC20(&unk_101193E20, &qword_100EBF7D0);
  v14 = *(v13 - 8);
  v81 = v13;
  v82 = v14;
  __chkstk_darwin();
  v16 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v86 = &v74 - v17;
  v18 = type metadata accessor for Playlist();
  v83 = *(v18 - 8);
  v84 = v18;
  __chkstk_darwin();
  v85 = &v74 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Playlist.Folder.Item();
  v21 = *(v20 - 8);
  __chkstk_darwin();
  v23 = &v74 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DragDropToFolder.Origin(0);
  __chkstk_darwin();
  v25 = &v74 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10054AEC4(v88, v25, type metadata accessor for DragDropToFolder.Origin);
  (*(v21 + 32))(v23, v25, v20);
  v26 = (*(v21 + 88))(v23, v20);
  if (v26 == enum case for Playlist.Folder.Item.folder(_:))
  {
    (*(v21 + 96))(v23, v20);
    v27 = v87;
    (*(v87 + 32))(v4, v23, v2);
    v28 = Playlist.Folder.id.getter();
    v30 = v29;
    v31 = type metadata accessor for DragDropToFolder.Destination(0);
    sub_1000089F8(&v89[*(v31 + 20)], v6, &unk_10118F670, &unk_100EC89B0);
    if ((*(v27 + 48))(v6, 1, v2) == 1)
    {
      sub_1000095E8(v6, &unk_10118F670, &unk_100EC89B0);

      v32 = 1;
      (*(v27 + 8))(v4, v2);
    }

    else
    {
      v89 = v4;
      v50 = Playlist.Folder.id.getter();
      v52 = v51;
      v53 = *(v27 + 8);
      v53(v6, v2);
      if (v28 == v50 && v30 == v52)
      {

        v32 = 0;
      }

      else
      {
        v54 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v32 = v54 ^ 1;
      }

      v53(v89, v2);
    }

    return v32 & 1;
  }

  v33 = v89;
  v88 = v2;
  if (v26 != enum case for Playlist.Folder.Item.playlist(_:))
  {
    (*(v21 + 8))(v23, v20);
LABEL_21:
    v32 = 0;
    return v32 & 1;
  }

  (*(v21 + 96))(v23, v20);
  v34 = v83;
  v35 = v84;
  v36 = v85;
  (*(v83 + 32))(v85, v23, v84);
  static MusicLibraryAction<>.add.getter();
  v37 = v86;
  v38 = v80;
  MusicLibrary.supportedStatus<A, B>(for:action:)();
  (*(v79 + 8))(v12, v38);
  v39 = v81;
  v40 = v82;
  (*(v82 + 16))(v16, v37, v81);
  v41 = (*(v40 + 88))(v16, v39);
  if (v41 != enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    v55 = v41;
    v56 = v39;
    v57 = enum case for MusicLibrary.SupportedStatus.supported<A>(_:);
    (*(v34 + 8))(v36, v35);
    v58 = *(v40 + 8);
    if (v55 != v57)
    {
      v58(v16, v56);
    }

    v58(v86, v56);
    goto LABEL_21;
  }

  (*(v40 + 96))(v16, v39);
  v43 = v77;
  v42 = v78;
  v44 = v16;
  v45 = v76;
  (*(v78 + 32))(v77, v44, v76);
  v46 = v75;
  (*(v42 + 16))(v75, v43, v45);
  v47 = (*(v42 + 88))(v46, v45);
  if (v47 == enum case for MusicLibrary.AddAction.UnsupportedReason.unaddable(_:))
  {
    v48 = v39;
    (*(v83 + 8))(v85, v84);
    v49 = *(v42 + 8);
    v49(v46, v45);
LABEL_20:
    v49(v43, v45);
    (*(v40 + 8))(v86, v48);
    goto LABEL_21;
  }

  if (v47 == enum case for MusicLibrary.AddAction.UnsupportedReason.unsupportedType(_:))
  {
    v48 = v39;
    (*(v83 + 8))(v85, v84);
    v49 = *(v42 + 8);
    goto LABEL_20;
  }

  if (v47 != enum case for MusicLibrary.AddAction.UnsupportedReason.alreadyAdded(_:) && v47 != enum case for MusicLibrary.AddAction.UnsupportedReason.networkRequired(_:))
  {
    (*(v83 + 8))(v85, v84);
    v60 = *(v42 + 8);
    v60(v46, v45);
    v60(v43, v45);
    (*(v40 + 8))(v86, v39);
    goto LABEL_21;
  }

  v61 = v39;
  v62 = Playlist.id.getter();
  v64 = v63;
  v65 = type metadata accessor for DragDropToFolder.Destination(0);
  v66 = v74;
  sub_1000089F8(&v33[*(v65 + 20)], v74, &unk_10118F670, &unk_100EC89B0);
  v68 = v87;
  v67 = v88;
  if ((*(v87 + 48))(v66, 1, v88) == 1)
  {
    sub_1000095E8(v66, &unk_10118F670, &unk_100EC89B0);

    v32 = 1;
  }

  else
  {
    v69 = Playlist.Folder.id.getter();
    v71 = v70;
    (*(v68 + 8))(v66, v67);
    if (v62 == v69 && v64 == v71)
    {

      v32 = 0;
    }

    else
    {
      v72 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v32 = v72 ^ 1;
    }

    v40 = v82;
  }

  v73 = v77;
  (*(v83 + 8))(v85, v84);
  (*(v78 + 8))(v73, v45);
  (*(v40 + 8))(v86, v61);
  return v32 & 1;
}

uint64_t sub_100548830(uint64_t a1, uint64_t a2)
{
  v3[15] = a2;
  v3[16] = v2;
  v3[14] = a1;
  v4 = type metadata accessor for Playlist.Folder();
  v3[17] = v4;
  v5 = *(v4 - 8);
  v3[18] = v5;
  v3[19] = *(v5 + 64);
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = type metadata accessor for Notice.Variant(0);
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v6 = type metadata accessor for Notice(0);
  v3[26] = v6;
  v3[27] = *(v6 - 8);
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v7 = type metadata accessor for Playlist.Folder.Item();
  v3[30] = v7;
  v3[31] = *(v7 - 8);
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = *(sub_10010FC20(&qword_1011831B0, &qword_100ED2570) - 8);
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v3[40] = sub_10010FC20(&unk_10118F670, &unk_100EC89B0);
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();
  v3[44] = swift_task_alloc();
  v3[45] = swift_task_alloc();
  v8 = type metadata accessor for DragDropToFolder.Destination(0);
  v3[46] = v8;
  v9 = *(v8 - 8);
  v3[47] = v9;
  v3[48] = *(v9 + 64);
  v3[49] = swift_task_alloc();
  v3[50] = swift_task_alloc();

  return _swift_task_switch(sub_100548B90, 0, 0);
}

uint64_t sub_100548B90()
{
  v26 = v0;
  if (qword_10117F268 != -1)
  {
    swift_once();
  }

  v1 = v0[50];
  v2 = v0[16];
  v3 = type metadata accessor for Logger();
  sub_1000060E4(v3, qword_1012186C8);
  sub_10054AEC4(v2, v1, type metadata accessor for DragDropToFolder.Destination);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[50];
  if (v6)
  {
    v8 = v0[45];
    v9 = v0[46];
    v10 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v10 = 136446466;
    type metadata accessor for DragDropToFolder(0);
    v11 = Array.description.getter();
    v13 = sub_1000105AC(v11, v12, &v25);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2082;
    sub_1000089F8(v7 + *(v9 + 20), v8, &unk_10118F670, &unk_100EC89B0);
    v14 = String.init<A>(describing:)();
    v16 = v15;
    sub_10054ADFC(v7, type metadata accessor for DragDropToFolder.Destination);
    v17 = sub_1000105AC(v14, v16, &v25);

    *(v10 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v4, v5, "Received intents=%{public}s for drop to folder=%{public}s", v10, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10054ADFC(v7, type metadata accessor for DragDropToFolder.Destination);
  }

  v18 = v0[49];
  v19 = v0[47];
  sub_10054AEC4(v0[16], v18, type metadata accessor for DragDropToFolder.Destination);
  v20 = (*(v19 + 80) + 16) & ~*(v19 + 80);
  v21 = swift_allocObject();
  v0[51] = v21;
  sub_10054AE5C(v18, v21 + v20, type metadata accessor for DragDropToFolder.Destination);
  v22 = swift_task_alloc();
  v0[52] = v22;
  *v22 = v0;
  v22[1] = sub_100548EF0;
  v23 = v0[15];

  return sub_1007191B4(&unk_100ED2580, v21, v23);
}

uint64_t sub_100548EF0(uint64_t a1)
{
  *(*v2 + 424) = a1;

  if (v1)
  {
  }

  else
  {

    return _swift_task_switch(sub_100549030, 0, 0);
  }
}

uint64_t sub_100549030()
{
  v1 = v0;
  v2 = v0[53];
  v3 = *(v2 + 16);
  if (!v3)
  {

    v9 = _swiftEmptyArrayStorage;
    v22 = _swiftEmptyArrayStorage[2];
    if (v22)
    {
      goto LABEL_12;
    }

LABEL_26:

LABEL_27:
    (*(v1[27] + 56))(v1[14], 1, 1, v1[26]);
LABEL_42:

    v89 = v1[1];

    return v89();
  }

  v4 = v0[37];
  v5 = v0[31];
  v6 = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v7 = *(v4 + 72);
  v8 = (v5 + 48);
  v112 = v5;
  v113 = (v5 + 32);
  v9 = _swiftEmptyArrayStorage;
  v10 = &qword_1011831B0;
  do
  {
    v11 = v9;
    v13 = v1[38];
    v12 = v1[39];
    v14 = v115[30];
    sub_1000089F8(v6, v12, v10, &qword_100ED2570);
    sub_10054AD8C(v12, v13);
    v15 = v14;
    v1 = v115;
    if ((*v8)(v13, 1, v15) == 1)
    {
      sub_1000095E8(v115[38], v10, &qword_100ED2570);
      v9 = v11;
    }

    else
    {
      v16 = v10;
      v17 = *v113;
      (*v113)(v115[35], v115[38], v115[30]);
      v9 = v11;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_100498F10(0, v11[2] + 1, 1, v11);
      }

      v19 = v9[2];
      v18 = v9[3];
      if (v19 >= v18 >> 1)
      {
        v9 = sub_100498F10((v18 > 1), v19 + 1, 1, v9);
      }

      v20 = v115[35];
      v21 = v115[30];
      v9[2] = v19 + 1;
      v17(v9 + ((*(v112 + 80) + 32) & ~*(v112 + 80)) + *(v112 + 72) * v19, v20, v21);
      v10 = v16;
    }

    v6 += v7;
    --v3;
  }

  while (v3);

  v22 = v9[2];
  if (!v22)
  {
    goto LABEL_26;
  }

LABEL_12:
  v114 = 0;
  v23 = v1[31];
  v24 = *(v23 + 16);
  v23 += 16;
  v25 = v9 + ((*(v23 + 64) + 32) & ~*(v23 + 64));
  v107 = *(v23 + 56);
  v110 = (v23 + 16);
  v111 = v24;
  v109 = (v23 + 72);
  v106 = enum case for Playlist.Folder.Item.playlist(_:);
  v108 = (v23 - 8);
  v26 = v25;
  v27 = v22;
  while (1)
  {
    v28 = v115[36];
    v29 = v115[33];
    v30 = v115[30];
    v111(v28, v26, v30);
    v31 = *v110;
    (*v110)(v29, v28, v30);
    v32 = *v109;
    v33 = (*v109)(v29, v30) == v106;
    v34 = *v108;
    v35 = (*v108)(v29, v30);
    v38 = __OFADD__(v114, v33);
    v114 += v33;
    if (v38)
    {
      break;
    }

    v26 += v107;
    if (!--v22)
    {
      v39 = enum case for Playlist.Folder.Item.folder(_:);
      do
      {
        v40 = v115[34];
        v41 = v115[32];
        v42 = v115[30];
        v111(v40, v25, v42);
        v31(v41, v40, v42);
        v43 = v32(v41, v42) == v39;
        v35 = v34(v41, v42);
        v38 = __OFADD__(v22, v43);
        v22 += v43;
        if (v38)
        {
          goto LABEL_52;
        }

        v25 += v107;
        --v27;
      }

      while (v27);

      if (v114)
      {
        if (v22)
        {
          v44 = 1;
        }

        else
        {
          v44 = v114 < 2;
        }

        v1 = v115;
        if (!v44)
        {
          v45 = v115[43];
          v46 = v115[17];
          v47 = v115[18];
          sub_1000089F8(v115[16] + *(v115[46] + 20), v45, &unk_10118F670, &unk_100EC89B0);
          v48 = *(v47 + 48);
          v49 = v48(v45, 1, v46);
          v50 = v115[43];
          if (v49 == 1)
          {
            sub_1000095E8(v115[43], &unk_10118F670, &unk_100EC89B0);
            v51 = 0;
            v52 = 0;
          }

          else
          {
            v72 = v115[17];
            v73 = v115[18];
            v51 = Playlist.Folder.name.getter();
            v52 = v74;
            (*(v73 + 8))(v50, v72);
          }

          v71 = v115 + 24;
          v75 = v115[24];
          *v75 = v114;
          v75[1] = v51;
          v75[2] = v52;
LABEL_40:
          swift_storeEnumTagMultiPayload();
          v80 = *v71;
          v81 = v1[46];
          v82 = v1[41];
          v84 = v1[16];
          v83 = v1[17];
          static Notice.variant(_:)(v80, v1[29]);
          sub_10054ADFC(v80, type metadata accessor for Notice.Variant);
          sub_1000089F8(v84 + *(v81 + 20), v82, &unk_10118F670, &unk_100EC89B0);
          if (v48(v82, 1, v83) == 1)
          {
            v85 = v1[29];
            v86 = v1[26];
            v87 = v1[27];
            v88 = v1[14];
            sub_1000095E8(v1[41], &unk_10118F670, &unk_100EC89B0);
            sub_10054AE5C(v85, v88, type metadata accessor for Notice);
            (*(v87 + 56))(v88, 0, 1, v86);
            goto LABEL_42;
          }

          v91 = v1[46];
          v92 = v1[41];
          v93 = v1[28];
          v94 = v1[29];
          v95 = v1[21];
          v96 = v1[17];
          v97 = v1[18];
          v98 = v1[16];
          v99 = *(v97 + 32);
          v1[54] = v99;
          v1[55] = (v97 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
          v99(v95, v92, v96);
          sub_10054AEC4(v94, v93, type metadata accessor for Notice);
          sub_10012B7A8(v98 + *(v91 + 24), (v1 + 2));
          Strong = swift_unknownObjectWeakLoadStrong();
          v1[56] = Strong;
          sub_10012BA6C((v1 + 2));
          if (Strong)
          {
            type metadata accessor for MainActor();
            v1[57] = static MainActor.shared.getter();
            v101 = dispatch thunk of Actor.unownedExecutor.getter();
            v103 = v102;
            v104 = sub_1005499EC;
          }

          else
          {
            v1[59] = 0;
            type metadata accessor for MainActor();
            v1[60] = static MainActor.shared.getter();
            v101 = dispatch thunk of Actor.unownedExecutor.getter();
            v103 = v105;
            v104 = sub_100549AFC;
          }

          v35 = v104;
          v36 = v101;
          v37 = v103;

          return _swift_task_switch(v35, v36, v37);
        }
      }

      else
      {
        v1 = v115;
        if (!v22)
        {
          goto LABEL_27;
        }

        if (v22 >= 2)
        {
          v53 = v115[44];
          v54 = v115[17];
          v55 = v115[18];
          sub_1000089F8(v115[16] + *(v115[46] + 20), v53, &unk_10118F670, &unk_100EC89B0);
          v48 = *(v55 + 48);
          v56 = v48(v53, 1, v54);
          v57 = v115[44];
          if (v56 == 1)
          {
            sub_1000095E8(v115[44], &unk_10118F670, &unk_100EC89B0);
            v58 = 0;
            v59 = 0;
          }

          else
          {
            v76 = v115[17];
            v77 = v115[18];
            v58 = Playlist.Folder.name.getter();
            v59 = v78;
            (*(v77 + 8))(v57, v76);
          }

          v71 = v115 + 25;
          v79 = v115[25];
          *v79 = v22;
          v79[1] = v58;
          v79[2] = v59;
          goto LABEL_40;
        }
      }

      v60 = v1[42];
      v61 = v1[17];
      v62 = v1[18];
      sub_1000089F8(v1[16] + *(v1[46] + 20), v60, &unk_10118F670, &unk_100EC89B0);
      v48 = *(v62 + 48);
      v63 = v48(v60, 1, v61);
      v64 = v1[42];
      if (v63 == 1)
      {
        sub_1000095E8(v1[42], &unk_10118F670, &unk_100EC89B0);
        v65 = 0;
        v66 = 0;
      }

      else
      {
        v67 = v1[17];
        v68 = v1[18];
        v65 = Playlist.Folder.name.getter();
        v66 = v69;
        (*(v68 + 8))(v64, v67);
      }

      v71 = v1 + 23;
      v70 = v1[23];
      *v70 = v65;
      v70[1] = v66;
      goto LABEL_40;
    }
  }

  __break(1u);
LABEL_52:
  __break(1u);
  return _swift_task_switch(v35, v36, v37);
}

uint64_t sub_1005499EC()
{
  v1 = *(v0 + 448);

  *(v0 + 464) = sub_10003169C();

  return _swift_task_switch(sub_100549A60, 0, 0);
}

uint64_t sub_100549A60()
{
  v0[59] = v0[58];
  type metadata accessor for MainActor();
  v0[60] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100549AFC, v2, v1);
}

uint64_t sub_100549AFC()
{
  v1 = v0[59];
  v2 = v0[54];
  v13 = v0[28];
  v14 = v0[26];
  v4 = v0[20];
  v3 = v0[21];
  v5 = v0[18];
  v6 = v0[19];
  v7 = v0[17];
  v8 = v0[14];

  (*(v5 + 16))(v4, v3, v7);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  v2(v10 + v9, v4, v7);
  *(v10 + ((v6 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = v1;
  sub_10054AE5C(v13, v8, type metadata accessor for Notice);
  v11 = (v8 + *(v14 + 32));
  sub_100020438(*v11, v11[1]);
  *v11 = sub_10035B02C;
  v11[1] = v10;

  return _swift_task_switch(sub_100549C4C, 0, 0);
}

uint64_t sub_100549C4C()
{
  v1 = v0[29];
  v2 = v0[26];
  v3 = v0[27];
  v4 = v0[14];
  (*(v0[18] + 8))(v0[21], v0[17]);
  sub_10054ADFC(v1, type metadata accessor for Notice);
  (*(v3 + 56))(v4, 0, 1, v2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100549E14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a2;
  v3[21] = a3;
  v3[19] = a1;
  v3[22] = sub_10010FC20(&unk_10118F670, &unk_100EC89B0);
  v3[23] = swift_task_alloc();
  v3[24] = type metadata accessor for DragDropToFolder.Destination(0);
  v3[25] = swift_task_alloc();
  type metadata accessor for DragDropToFolder.Origin(0);
  v3[26] = swift_task_alloc();
  v4 = type metadata accessor for Playlist.Folder.Item();
  v3[27] = v4;
  v3[28] = *(v4 - 8);
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();

  return _swift_task_switch(sub_100549F7C, 0, 0);
}

uint64_t sub_100549F7C(__n128 a1)
{
  v2 = *(v1 + 240);
  v3 = *(v1 + 216);
  v4 = *(v1 + 224);
  v5 = *(v1 + 208);
  v6 = *(v1 + 192);
  v7 = *(v1 + 168);
  sub_10054AEC4(*(v1 + 160), v5, type metadata accessor for DragDropToFolder.Origin);
  v8 = *(v4 + 32);
  *(v1 + 248) = v8;
  *(v1 + 256) = (v4 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v8(v2, v5, v3);
  v9 = *(v6 + 20);
  *(v1 + 280) = v9;
  v10 = swift_task_alloc();
  *(v1 + 264) = v10;
  *v10 = v1;
  v10[1] = sub_10054A084;

  return sub_100354500(v7 + v9);
}

uint64_t sub_10054A084(char a1)
{
  *(*v1 + 284) = a1;

  return _swift_task_switch(sub_10054A184, 0, 0);
}

uint64_t sub_10054A184()
{
  v36 = v0;
  if (*(v0 + 284) == 1)
  {
    v1 = *(v0 + 280);
    v2 = *(v0 + 168);
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0u;
    *(v0 + 64) = 0u;
    *(v0 + 16) = 0u;
    *(v0 + 80) = 1;
    *(v0 + 88) = 0;
    *(v0 + 96) = 0;
    *(v0 + 104) = 0;
    v3 = swift_task_alloc();
    *(v0 + 272) = v3;
    *v3 = v0;
    v3[1] = sub_10054A5C4;

    return sub_1003566B8(v2 + v1, v0 + 16);
  }

  else
  {
    if (qword_10117F268 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 232);
    v6 = *(v0 + 240);
    v7 = *(v0 + 216);
    v8 = *(v0 + 224);
    v9 = *(v0 + 200);
    v10 = *(v0 + 168);
    v11 = type metadata accessor for Logger();
    sub_1000060E4(v11, qword_1012186C8);
    (*(v8 + 16))(v5, v6, v7);
    sub_10054AEC4(v10, v9, type metadata accessor for DragDropToFolder.Destination);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    v14 = os_log_type_enabled(v12, v13);
    v15 = *(v0 + 232);
    v16 = *(v0 + 240);
    v17 = *(v0 + 216);
    v18 = *(v0 + 224);
    v19 = *(v0 + 200);
    if (v14)
    {
      v32 = *(v0 + 192);
      v33 = *(v0 + 184);
      v34 = *(v0 + 240);
      v20 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v20 = 136446466;
      sub_10048D214((v0 + 112));
      sub_10010FC20(&unk_10118AB50, &unk_100EBE7D0);
      v21 = String.init<A>(describing:)();
      v23 = v22;
      v24 = *(v18 + 8);
      v24(v15, v17);
      v25 = sub_1000105AC(v21, v23, &v35);

      *(v20 + 4) = v25;
      *(v20 + 12) = 2082;
      sub_1000089F8(v19 + *(v32 + 20), v33, &unk_10118F670, &unk_100EC89B0);
      v26 = String.init<A>(describing:)();
      v28 = v27;
      sub_10054ADFC(v19, type metadata accessor for DragDropToFolder.Destination);
      v29 = sub_1000105AC(v26, v28, &v35);

      *(v20 + 14) = v29;
      _os_log_impl(&_mh_execute_header, v12, v13, "Cannot move item=%{public}s to folder=%{public}s", v20, 0x16u);
      swift_arrayDestroy();

      v24(v34, v17);
    }

    else
    {

      sub_10054ADFC(v19, type metadata accessor for DragDropToFolder.Destination);
      v30 = *(v18 + 8);
      v30(v15, v17);
      v30(v16, v17);
    }

    (*(*(v0 + 224) + 56))(*(v0 + 152), 1, 1, *(v0 + 216));

    v31 = *(v0 + 8);

    return v31();
  }
}

uint64_t sub_10054A5C4(char a1)
{
  v2 = *v1;
  *(v2 + 285) = a1;

  sub_1000095E8(v2 + 16, &unk_1011845E0, &unk_100EBF3A0);

  return _swift_task_switch(sub_10054A6DC, 0, 0);
}

uint64_t sub_10054A6DC()
{
  if (*(v0 + 285) == 1)
  {
    (*(v0 + 248))(*(v0 + 152), *(v0 + 240), *(v0 + 216));
    v1 = 0;
  }

  else
  {
    (*(*(v0 + 224) + 8))(*(v0 + 240), *(v0 + 216));
    v1 = 1;
  }

  (*(*(v0 + 224) + 56))(*(v0 + 152), v1, 1, *(v0 + 216));

  v2 = *(v0 + 8);

  return v2();
}

double sub_10054A7DC(uint64_t a1)
{
  sub_10010FC20(&unk_10118F670, &unk_100EC89B0);
  __chkstk_darwin();
  v3 = v8 - v2;
  v8[1] = *v1;
  type metadata accessor for MusicLibrary();
  sub_100547A48(&qword_101180378, &type metadata accessor for MusicLibrary, &protocol conformance descriptor for MusicLibrary);
  dispatch thunk of Hashable.hash(into:)();
  v4 = type metadata accessor for DragDropToFolder.Destination(0);
  sub_1000089F8(v1 + *(v4 + 20), v3, &unk_10118F670, &unk_100EC89B0);
  v5 = type metadata accessor for Playlist.Folder();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v3, 1, v5) == 1)
  {
    sub_1000095E8(v3, &unk_10118F670, &unk_100EC89B0);
    Hasher._combine(_:)(0);
  }

  else
  {
    Playlist.Folder.id.getter();
    (*(v6 + 8))(v3, v5);
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  return result;
}

id sub_10054A9C0()
{
  v0 = objc_allocWithZone(UICollectionViewDropProposal);

  return [v0 initWithDropOperation:3 intent:2];
}

uint64_t sub_10054AA04(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002F3F4;

  return sub_100548830(a1, a2);
}

Swift::Int sub_10054AAAC()
{
  Hasher.init(_seed:)();
  sub_10054A7DC(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10054AAF0(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_10054A7DC(v2);
  return Hasher._finalize()();
}

uint64_t sub_10054ABC0(uint64_t a1)
{
  result = sub_100547A48(&qword_101194898, type metadata accessor for DragDropToFolder.Destination, &unk_100ED24E4);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10054ACA8(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for DragDropToFolder.Destination(0) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10002F3F4;

  return sub_100549E14(a1, a2, v2 + v7);
}

uint64_t sub_10054AD8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011831B0, &qword_100ED2570);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10054ADFC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10054AE5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10054AEC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10054AF2C(void *a1, void *a2)
{
  v4 = type metadata accessor for Playlist.Folder();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118F670, &unk_100EC89B0);
  __chkstk_darwin();
  v9 = &v21 - v8;
  v10 = sub_10010FC20(&qword_1011831A8, &unk_100ED2590);
  __chkstk_darwin();
  v12 = &v21 - v11;
  type metadata accessor for MusicLibrary();
  if ((static MusicLibrary.== infix(_:_:)() & 1) == 0)
  {
    v17 = 0;
    return v17 & 1;
  }

  v22 = v7;
  v13 = v5;
  v14 = *(type metadata accessor for DragDropToFolder.Destination(0) + 20);
  v15 = *(v10 + 48);
  sub_1000089F8(a1 + v14, v12, &unk_10118F670, &unk_100EC89B0);
  sub_1000089F8(a2 + v14, &v12[v15], &unk_10118F670, &unk_100EC89B0);
  v16 = *(v13 + 48);
  if (v16(v12, 1, v4) != 1)
  {
    sub_1000089F8(v12, v9, &unk_10118F670, &unk_100EC89B0);
    if (v16(&v12[v15], 1, v4) != 1)
    {
      v18 = v22;
      (*(v13 + 32))(v22, &v12[v15], v4);
      sub_100547A48(&unk_1011828D0, &type metadata accessor for Playlist.Folder, &protocol conformance descriptor for Playlist.Folder);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      v19 = *(v13 + 8);
      v19(v18, v4);
      v19(v9, v4);
      sub_1000095E8(v12, &unk_10118F670, &unk_100EC89B0);
      return v17 & 1;
    }

    (*(v13 + 8))(v9, v4);
    goto LABEL_8;
  }

  if (v16(&v12[v15], 1, v4) != 1)
  {
LABEL_8:
    sub_1000095E8(v12, &qword_1011831A8, &unk_100ED2590);
    v17 = 0;
    return v17 & 1;
  }

  sub_1000095E8(v12, &unk_10118F670, &unk_100EC89B0);
  v17 = 1;
  return v17 & 1;
}

void *sub_10054B328()
{
  v1 = v0;
  v2 = type metadata accessor for URLQueryItem();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101194980, &qword_100ECA390);
  __chkstk_darwin();
  v7 = &v26 - v6;
  v8 = type metadata accessor for URLComponents();
  v9 = *(v8 - 8);
  *&v10 = __chkstk_darwin().n128_u64[0];
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v1 mediaContainer];
  if (result)
  {
    v14 = result;
    v15 = [result identifier];

    if (!v15)
    {
      return 0;
    }

    static String._unconditionallyBridgeFromObjectiveC(_:)();

    URLComponents.init(string:)();

    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      sub_10054CD5C(v7);
      return 0;
    }

    (*(v9 + 32))(v12, v7, v8);
    result = URLComponents.queryItems.getter();
    if (!result)
    {
      (*(v9 + 8))(v12, v8);
      return 0;
    }

    v16 = result;
    v31 = result[2];
    if (!v31)
    {
      (*(v9 + 8))(v12, v8);

      return 0;
    }

    v27 = v12;
    v28 = v9;
    v17 = 0;
    v18 = result + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v29 = v8;
    v30 = v18;
    v19 = (v3 + 8);
    while (1)
    {
      if (v17 >= v16[2])
      {
        __break(1u);
        return result;
      }

      (*(v3 + 16))(v5, &v30[*(v3 + 72) * v17], v2);
      if (URLQueryItem.name.getter() == 0xD000000000000014 && 0x8000000100E4F0B0 == v20)
      {
      }

      else
      {
        v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v21 & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      v22 = URLQueryItem.value.getter();
      if (!v23)
      {
LABEL_8:
        result = (*v19)(v5, v2);
        goto LABEL_9;
      }

      if (v22 == 1702195828 && v23 == 0xE400000000000000)
      {

        (*v19)(v5, v2);
LABEL_26:
        v25 = 1;
LABEL_27:

        (*(v28 + 8))(v27, v29);
        return v25;
      }

      v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

      result = (*v19)(v5, v2);
      if (v24)
      {
        goto LABEL_26;
      }

LABEL_9:
      if (v31 == ++v17)
      {
        v25 = 0;
        goto LABEL_27;
      }
    }
  }

  return result;
}

void sub_10054B770(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, void (*a5)(void), uint64_t a6)
{
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 >> 60 == 15)
  {
    v16 = Logger.siriIntents.unsafeMutableAddressor();
    (*(v13 + 16))(v15, v16, v12);
    v17 = a4;
    swift_errorRetain();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *&v45 = v40;
      *v20 = 136446466;
      v21 = v17;
      v22 = [v21 description];
      v42 = a5;
      v23 = v22;
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = a6;
      v25 = v24;
      v39 = v12;
      v27 = v26;

      v28 = sub_1000105AC(v25, v27, &v45);

      *(v20 + 4) = v28;
      *(v20 + 12) = 2082;
      *&v44[0] = a3;
      swift_errorRetain();
      sub_10010FC20(&qword_101194978, &unk_100ED25B8);
      v29 = String.init<A>(describing:)();
      v31 = sub_1000105AC(v29, v30, &v45);
      a5 = v42;

      *(v20 + 14) = v31;
      _os_log_impl(&_mh_execute_header, v18, v19, "Failed to get playback queue for intent=%{public}s error=%{public}s", v20, 0x16u);
      swift_arrayDestroy();

      (*(v13 + 8))(v15, v39);
    }

    else
    {

      (*(v13 + 8))(v15, v12);
    }

    v36 = [objc_allocWithZone(INPlayMediaIntentResponse) initWithCode:6 userActivity:0];
    a5();
    goto LABEL_8;
  }

  if (kMRMediaRemoteOptionSystemAppPlaybackQueueData)
  {
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;
    v46 = &type metadata for Data;
    *&v45 = a1;
    *(&v45 + 1) = a2;
    sub_100016270(&v45, v44);
    sub_10002D6A4(a1, a2);
    sub_10002BC44(a1, a2);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v43 = _swiftEmptyDictionarySingleton;
    sub_1006C5E68(v44, v32, v34, isUniquelyReferenced_nonNull_native);

    v36 = [objc_allocWithZone(INPlayMediaIntentResponse) initWithCode:1 userActivity:0];
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v36 setNowPlayingInfo:isa];

    (a5)(v36);
    sub_100029CA4(a1, a2);
LABEL_8:

    return;
  }

  __break(1u);
}

double sub_10054BB74(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {

    v6 = v4;
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {

    v8 = 0xF000000000000000;
  }

  v9 = a3;
  v5(v4, v8, a3);

  sub_100029CA4(v4, v8);

  return result;
}

id sub_10054BCE8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MediaIntentHandler();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10054BD40(void *a1, void *a2, uint64_t a3)
{
  v62 = a2;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v66 = &v55 - v5;
  v60 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin();
  v61 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for PlaybackIntentDescriptor(0);
  v64 = *(v63 - 8);
  __chkstk_darwin();
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = v7;
  __chkstk_darwin();
  v10 = &v55 - v9;
  v11 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v72 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Logger();
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v71 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v18 = &v55 - v17;
  v19 = Logger.siriIntents.unsafeMutableAddressor();
  v73 = v15;
  v20 = *(v15 + 16);
  v68 = v19;
  v69 = v15 + 16;
  v67 = v20;
  v20(v18);
  v21 = a1;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  LODWORD(v70) = v23;
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v59 = v11;
    v25 = v24;
    v55 = v24;
    v56 = swift_slowAlloc();
    *&v75[0] = v56;
    *v25 = 136446210;
    v26 = v21;
    v58 = v12;
    v27 = v26;
    v28 = [v26 description];
    v29 = v21;
    v30 = v8;
    v31 = v10;
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v57 = a3;
    v34 = v33;

    v12 = v58;
    v35 = v32;
    v10 = v31;
    v8 = v30;
    v21 = v29;
    v36 = sub_1000105AC(v35, v34, v75);
    a3 = v57;

    v37 = v55;
    *(v55 + 4) = v36;
    _os_log_impl(&_mh_execute_header, v22, v70, "Will handle intent=%{public}s", v37, 0xCu);
    sub_10000959C(v56);

    v11 = v59;
  }

  v70 = *(v73 + 8);
  v70(v18, v14);
  v38 = v21;
  v39 = v72;
  MusicPlaybackIntentDescriptor.init(from:)();
  v40 = [objc_allocWithZone(INPlayMediaIntentResponse) initWithCode:4 userActivity:0];
  (*(a3 + 16))(a3, v40);

  v41 = v61;
  (*(v12 + 16))(v61, v39, v11);
  swift_storeEnumTagMultiPayload();
  v76 = 0;
  memset(v75, 0, sizeof(v75));
  v74[0] = v62;
  v42 = v62;
  v43 = String.init<A>(reflecting:)();
  v74[3] = &type metadata for Player.CommandIssuerIdentity;
  v74[4] = &protocol witness table for Player.CommandIssuerIdentity;
  v74[0] = v43;
  v74[1] = v44;
  PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v41, v75, 3, 0, 0, 1, 0, 1, v10, 0, v74);
  v45 = MPCPlaybackIntent.PlayActivityInformation.init(featureName:recommendationData:)(0x6E6F642D69726973, 0xEE00736E6F697461, 0, 0xF000000000000000);
  PlaybackIntentDescriptor.playActivityInformation.setter(v45, v46, v47, v48);
  v10[*(v63 + 40)] = 1;
  v49 = type metadata accessor for TaskPriority();
  v50 = v66;
  (*(*(v49 - 8) + 56))(v66, 1, 1, v49);
  sub_1001DFCE4(v10, v8);
  type metadata accessor for MainActor();
  v51 = static MainActor.shared.getter();
  v52 = (*(v64 + 80) + 32) & ~*(v64 + 80);
  v53 = swift_allocObject();
  *(v53 + 16) = v51;
  *(v53 + 24) = &protocol witness table for MainActor;
  sub_1001DFD58(v8, v53 + v52);
  sub_1001F4F78(0, 0, v50, &unk_100ECA700, v53);

  sub_100188CDC(v10);
  return (*(v12 + 8))(v39, v11);
}

double sub_10054C5B8(void *a1, void (**a2)(void, void))
{
  v4 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v42 = *(v4 - 8);
  v43 = v4;
  __chkstk_darwin();
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  __chkstk_darwin();
  v10 = &v38 - v9;
  v50 = swift_allocObject();
  *(v50 + 16) = a2;
  _Block_copy(a2);
  v11 = Logger.siriIntents.unsafeMutableAddressor();
  v12 = *(v8 + 16);
  v46 = v11;
  v47 = v8 + 16;
  v45 = v12;
  v12(v10);
  v13 = a1;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  LODWORD(v44) = v15;
  v49 = v14;
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v39 = v16;
    v40 = swift_slowAlloc();
    aBlock[0] = v40;
    *v16 = 136446210;
    v17 = v13;
    v18 = [v17 description];
    v41 = v13;
    v19 = v8;
    v20 = v7;
    v21 = v18;
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v48 = a2;
    v23 = v22;
    v25 = v24;

    v7 = v20;
    v8 = v19;
    v13 = v41;
    v26 = v23;
    a2 = v48;
    v27 = sub_1000105AC(v26, v25, aBlock);

    v28 = v39;
    *(v39 + 1) = v27;
    v29 = v49;
    _os_log_impl(&_mh_execute_header, v49, v44, "Will confirm intent=%{public}s", v28, 0xCu);
    sub_10000959C(v40);
  }

  else
  {
  }

  v49 = *(v8 + 8);
  (v49)(v10, v7);
  v30 = v13;
  MusicPlaybackIntentDescriptor.init(from:)();
  v31 = v6;
  if (sub_10054B328())
  {
    v32 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
    v33 = swift_allocObject();
    v33[2] = v30;
    v33[3] = sub_10054CD3C;
    v33[4] = v50;
    aBlock[4] = sub_10054CD50;
    aBlock[5] = v33;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10054BB74;
    aBlock[3] = &unk_1010B1E88;
    v34 = _Block_copy(aBlock);
    v35 = v30;

    [v32 getRemotePlaybackQueueDataWithCompletion:v34];
    _Block_release(v34);
  }

  else
  {
    v36 = [objc_allocWithZone(INPlayMediaIntentResponse) initWithCode:1 userActivity:0];
    (a2)[2](a2, v36);
  }

  (*(v42 + 8))(v31, v43);

  return result;
}

uint64_t sub_10054CD5C(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_101194980, &qword_100ECA390);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_10054CDC4(__n128 a1)
{
  v1 = *(**CloudLibrary.StatusObserver.shared.unsafeMutableAddressor() + 168);

  v1(1);

  return result;
}

void sub_10054CE38(uint64_t a1)
{
  v2 = v1;
  _s16ActionButtonViewV5ModelVMa(0);
  __chkstk_darwin();
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LibraryImport.ViewModel(0);
  __chkstk_darwin();
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10054EFD0(v2, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_10054F034(v7, v5, _s16ActionButtonViewV5ModelVMa);
      Hasher._combine(_:)(1uLL);
      sub_10062CB80(a1);
      sub_10003CCD8(v5, _s16ActionButtonViewV5ModelVMa);
    }

    else
    {
      Hasher._combine(_:)(2uLL);
    }

    return;
  }

  v9 = *(v7 + 1);
  v10 = *(v7 + 3);
  v11 = *(v7 + 4);
  Hasher._combine(_:)(0);
  if (!v9)
  {
    Hasher._combine(_:)(0);
    if (v10)
    {
      goto LABEL_6;
    }

LABEL_9:
    Hasher._combine(_:)(0);
    goto LABEL_10;
  }

  Hasher._combine(_:)(1u);
  String.hash(into:)();
  if (!v10)
  {
    goto LABEL_9;
  }

LABEL_6:
  Hasher._combine(_:)(1u);
  String.hash(into:)();
LABEL_10:
  v12 = 0.0;
  if (v11 != 0.0)
  {
    v12 = v11;
  }

  Hasher._combine(_:)(*&v12);
}

Swift::Int sub_10054D014()
{
  Hasher.init(_seed:)();
  sub_10054CE38(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10054D058(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_10054CE38(v2);
  return Hasher._finalize()();
}

void sub_10054D094(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_10010FC20(&qword_10118EB30, &unk_100ECAF90);
  __chkstk_darwin();
  v7 = &v35 - v6;
  v8 = sub_10010FC20(&unk_1011A4B90, &unk_100ED2800);
  v38 = *(v8 - 8);
  v39 = v8;
  __chkstk_darwin();
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v35 - v11;
  __chkstk_darwin();
  v14 = &v35 - v13;
  v15 = sub_10010FC20(&qword_101194B88, &unk_100ED2820);
  __chkstk_darwin();
  v17 = &v35 - v16;
  if (!swift_unknownObjectWeakLoadStrong())
  {
    v29 = &unk_1011A4B90;
    v30 = &unk_100ED2800;
    v31 = a1;
    goto LABEL_23;
  }

  v36 = v7;
  v37 = v3;
  v40 = a1;
  v18 = *(v3 + 8);
  ObjectType = swift_getObjectType();
  v20 = *(v18 + 8);
  v35 = ObjectType;
  v21 = v20(ObjectType, v18);
  v22 = a2;
  v23 = sub_1005192B8(a2, v21);

  if (v23)
  {
    v24 = *(v15 + 48);
    *v17 = v22;
    sub_10003272C(v40, &v17[v24]);
    v25 = type metadata accessor for LibraryImport.ViewModel(0);
    v26 = (*(*(v25 - 8) + 48))(&v17[v24], 1, v25);
    v27 = v22;
    if (v22)
    {
      if (v22 == 1)
      {
        if (v26 != 1)
        {
          sub_10003272C(&v17[v24], v12);
          if (swift_getEnumCaseMultiPayload() == 2)
          {
            sub_1000095E8(v40, &unk_1011A4B90, &unk_100ED2800);
            swift_unknownObjectRelease();
            v28 = v12;
LABEL_18:
            sub_10003CCD8(v28, type metadata accessor for LibraryImport.ViewModel);
            v31 = &v17[v24];
            v29 = &unk_1011A4B90;
            v30 = &unk_100ED2800;
            goto LABEL_23;
          }

          v10 = v12;
          goto LABEL_21;
        }
      }

      else if (v26 != 1)
      {
        sub_10003272C(&v17[v24], v10);
        if (swift_getEnumCaseMultiPayload() <= 1)
        {
          sub_1000095E8(v40, &unk_1011A4B90, &unk_100ED2800);
          swift_unknownObjectRelease();
          v28 = v10;
          goto LABEL_18;
        }

        goto LABEL_21;
      }

LABEL_22:
      v32 = v40;
      v33 = v36;
      sub_10003272C(v40, v36);
      (*(v38 + 56))(v33, 0, 1, v39);
      v34 = v37;
      sub_100407A84(v33, v27);
      (*(v18 + 16))(v34, v35, v18);
      swift_unknownObjectRelease();
      sub_1000095E8(v32, &unk_1011A4B90, &unk_100ED2800);
      v29 = &qword_101194B88;
      v30 = &unk_100ED2820;
      v31 = v17;
      goto LABEL_23;
    }

    if (v26 == 1)
    {
      goto LABEL_22;
    }

    sub_10003272C(&v17[v24], v14);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      v10 = v14;
LABEL_21:
      sub_10003CCD8(v10, type metadata accessor for LibraryImport.ViewModel);
      goto LABEL_22;
    }

    sub_1000095E8(v40, &unk_1011A4B90, &unk_100ED2800);
    swift_unknownObjectRelease();
    sub_10003CCD8(v14, type metadata accessor for LibraryImport.ViewModel);
    v31 = &v17[v24];
    v29 = &unk_1011A4B90;
    v30 = &unk_100ED2800;
LABEL_23:
    sub_1000095E8(v31, v29, v30);
    return;
  }

  sub_1000095E8(v40, &unk_1011A4B90, &unk_100ED2800);

  swift_unknownObjectRelease();
}

uint64_t sub_10054D5A8(uint64_t a1, uint64_t a2)
{
  sub_10010FC20(&unk_1011A4B90, &unk_100ED2800);
  __chkstk_darwin();
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v12 - v5;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;

    v9 = sub_100366EA8();

    if (v9)
    {
      sub_10003272C(a1, v6);
    }

    else
    {
      v10 = type metadata accessor for LibraryImport.ViewModel(0);
      (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
    }

    v11 = OBJC_IVAR____TtCO5Music13LibraryImport8Observer_mliViewModel;
    swift_beginAccess();
    sub_10003272C(v8 + v11, v4);
    swift_beginAccess();
    sub_10054EB04(v6, v8 + v11);
    swift_endAccess();
    sub_10054D8F4(v4, &OBJC_IVAR____TtCO5Music13LibraryImport8Observer_mliViewModel, 1u);

    sub_1000095E8(v4, &unk_1011A4B90, &unk_100ED2800);
    return sub_1000095E8(v6, &unk_1011A4B90, &unk_100ED2800);
  }

  return result;
}

uint64_t sub_10054D790()
{
  v1 = *(**(v0 + OBJC_IVAR____TtCO5Music13LibraryImport8Observer_cloudLibraryStatusObserver) + 224);

  v1(v0, &off_1010B2008);

  sub_10054F178(v0 + 16);
  sub_1000095E8(v0 + OBJC_IVAR____TtCO5Music13LibraryImport8Observer_cloudLibraryViewModel, &unk_1011A4B90, &unk_100ED2800);
  sub_1000095E8(v0 + OBJC_IVAR____TtCO5Music13LibraryImport8Observer_mliViewModel, &unk_1011A4B90, &unk_100ED2800);
  sub_1000095E8(v0 + OBJC_IVAR____TtCO5Music13LibraryImport8Observer_inlineBubbleTipViewModel, &unk_1011A4B90, &unk_100ED2800);

  return swift_deallocClassInstance();
}

uint64_t sub_10054D8F4(uint64_t a1, uint64_t *a2, unsigned int a3)
{
  v23 = a3;
  v6 = type metadata accessor for LibraryImport.ViewModel(0);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10010FC20(&unk_1011A4B90, &unk_100ED2800);
  __chkstk_darwin();
  v11 = &v22[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v13 = &v22[-v12];
  v14 = sub_10010FC20(&qword_10118CA98, &qword_100EC7F80) - 8;
  __chkstk_darwin();
  v16 = &v22[-v15];
  v17 = *a2;
  swift_beginAccess();
  v18 = *(v14 + 56);
  sub_10003272C(a1, v16);
  sub_10003272C(v3 + v17, &v16[v18]);
  v19 = *(v7 + 48);
  if (v19(v16, 1, v6) == 1)
  {
    if (v19(&v16[v18], 1, v6) == 1)
    {
      return sub_1000095E8(v16, &unk_1011A4B90, &unk_100ED2800);
    }

    goto LABEL_6;
  }

  sub_10003272C(v16, v13);
  if (v19(&v16[v18], 1, v6) == 1)
  {
    sub_10003CCD8(v13, type metadata accessor for LibraryImport.ViewModel);
LABEL_6:
    sub_1000095E8(v16, &qword_10118CA98, &qword_100EC7F80);
LABEL_7:
    sub_10003272C(v3 + v17, v11);
    swift_beginAccess();
    sub_10054D094(v11, v23);
    return swift_endAccess();
  }

  sub_10054F034(&v16[v18], v9, type metadata accessor for LibraryImport.ViewModel);
  v21 = sub_10054EB74(v13, v9);
  sub_10003CCD8(v9, type metadata accessor for LibraryImport.ViewModel);
  sub_10003CCD8(v13, type metadata accessor for LibraryImport.ViewModel);
  result = sub_1000095E8(v16, &unk_1011A4B90, &unk_100ED2800);
  if ((v21 & 1) == 0)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_10054DC14@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10010FC20(&qword_101199B50, &qword_100ED8540);
  __chkstk_darwin();
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v35 - v6;
  if ((CloudLibrary.Status.shouldDisplayBanner.getter(a1) & 1) == 0)
  {
    goto LABEL_11;
  }

  if (CloudLibrary.Status.shouldShowActionButton.getter(a1))
  {
    v8 = CloudLibrary.Status.message.getter(a1);
    v37 = v9;
    v38 = v8;
    v10 = CloudLibrary.Status.actionTitle.getter(a1);
    v12 = v11;
    v13 = CloudLibrary.Status.action.getter(a1);
    v36 = v14;
    v15 = _s12ClickMetricsVMa(0);
    v16 = *(*(v15 - 8) + 56);
    v16(v7, 1, 1, v15);
    v16(v5, 1, 1, v15);
    v17 = v37;
    *a2 = v38;
    *(a2 + 8) = v17;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 32) = v10;
    *(a2 + 40) = v12;
    *(a2 + 48) = 0;
    *(a2 + 56) = 0;
    if (v13)
    {
      v18 = swift_allocObject();
      v19 = v36;
      *(v18 + 16) = v13;
      *(v18 + 24) = v19;
      v20 = sub_100029B6C;
    }

    else
    {
      v20 = 0;
      v18 = 0;
    }

    v32 = a1 >> 30 != 1 && (a1 >> 30 != 2 || a1 != 2147483652);
    *(a2 + 64) = v20;
    *(a2 + 72) = v18;
    *(a2 + 80) = sub_10054CDC4;
    *(a2 + 88) = 0u;
    *(a2 + 104) = 0u;
    *(a2 + 120) = 0u;
    *(a2 + 136) = 0;
    *(a2 + 144) = v32;
    v33 = _s16ActionButtonViewV5ModelVMa(0);
    sub_10054F09C(v7, a2 + *(v33 + 48));
    sub_10054F09C(v5, a2 + *(v33 + 52));
    v34 = type metadata accessor for LibraryImport.ViewModel(0);
    swift_storeEnumTagMultiPayload();
    return (*(*(v34 - 8) + 56))(a2, 0, 1, v34);
  }

  v21 = a1 >> 30;
  if (a1 >> 30 == 1 || v21 == 2 && a1 == 2147483652)
  {
    v22 = CloudLibrary.Status.message.getter(a1);
    v23 = *(&a1 + 1);
    *a2 = v22;
    *(a2 + 8) = v24;
    if (v21 != 1)
    {
      v23 = 0.0;
    }

    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 32) = v23;
    v25 = type metadata accessor for LibraryImport.ViewModel(0);
    swift_storeEnumTagMultiPayload();
    v26 = *(*(v25 - 8) + 56);
    v27 = a2;
    v28 = 0;
    v29 = v25;
  }

  else
  {
LABEL_11:
    v30 = type metadata accessor for LibraryImport.ViewModel(0);
    v26 = *(*(v30 - 8) + 56);
    v29 = v30;
    v27 = a2;
    v28 = 1;
  }

  return v26(v27, v28, 1, v29);
}

uint64_t sub_10054DFAC(unint64_t a1)
{
  sub_10010FC20(&unk_1011A4B90, &unk_100ED2800);
  __chkstk_darwin();
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v11[-v5];
  v7 = *(v1 + OBJC_IVAR____TtCO5Music13LibraryImport8Observer_cloudLibraryStatus);
  v8 = ~*(v1 + OBJC_IVAR____TtCO5Music13LibraryImport8Observer_cloudLibraryStatus);
  *(v1 + OBJC_IVAR____TtCO5Music13LibraryImport8Observer_cloudLibraryStatus) = a1;
  if ((v8 & 0xFFFFFFF8) == 0 || (result = static CloudLibrary.Status.__derived_enum_equals(_:_:)(v7), (result & 1) == 0))
  {
    sub_10054DC14(a1, v6);
    v10 = OBJC_IVAR____TtCO5Music13LibraryImport8Observer_cloudLibraryViewModel;
    swift_beginAccess();
    sub_10003272C(v1 + v10, v4);
    swift_beginAccess();
    sub_10054EB04(v6, v1 + v10);
    swift_endAccess();
    sub_10054D8F4(v4, &OBJC_IVAR____TtCO5Music13LibraryImport8Observer_cloudLibraryViewModel, 0);
    sub_1000095E8(v4, &unk_1011A4B90, &unk_100ED2800);
    return sub_1000095E8(v6, &unk_1011A4B90, &unk_100ED2800);
  }

  return result;
}

double sub_10054E11C()
{
  v1 = v0;
  v2 = sub_10010FC20(&qword_101194B90, &unk_100ED2830);
  v3 = *(v2 - 8);
  *&result = __chkstk_darwin().n128_u64[0];
  v6 = &v9 - v5;
  if (*(v0 + OBJC_IVAR____TtCO5Music13LibraryImport8Observer_inlineBubbleTipProvider))
  {

    dispatch thunk of InlineBubbleTipProvider.$placement.getter();

    swift_allocObject();
    swift_weakInit();
    sub_10054F114();
    v7 = Publisher<>.sink(receiveValue:)();

    (*(v3 + 8))(v6, v2);
  }

  else
  {
    v7 = 0;
  }

  v8 = *(v0 + OBJC_IVAR____TtCO5Music13LibraryImport8Observer_inlineBubbleTipObserver);
  *(v1 + OBJC_IVAR____TtCO5Music13LibraryImport8Observer_inlineBubbleTipObserver) = v7;
  if (v8)
  {

    AnyCancellable.cancel()();
  }

  return result;
}

double sub_10054E2AC(uint64_t a1, uint64_t a2)
{
  sub_10010FC20(&unk_1011A4B90, &unk_100ED2800);
  __chkstk_darwin();
  v4 = &v28[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = (&v28[-1] - v5);
  v7 = type metadata accessor for InlineBubbleTipProvider.Placement();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = (&v28[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    (*(v8 + 16))(v10, a1, v7);
    if ((*(v8 + 88))(v10, v7) == enum case for InlineBubbleTipProvider.Placement.inlineBubbleTip(_:))
    {
      (*(v8 + 96))(v10, v7);
      v14 = *v10;
      *v6 = *v10;
      v15 = type metadata accessor for LibraryImport.ViewModel(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v15 - 8) + 56))(v6, 0, 1, v15);
      v16 = OBJC_IVAR____TtCO5Music13LibraryImport8Observer_inlineBubbleTipViewModel;
      swift_beginAccess();
      sub_10003272C(v13 + v16, v4);
      swift_beginAccess();

      sub_10054EB04(v6, v13 + v16);
      swift_endAccess();
      sub_10054D8F4(v4, &OBJC_IVAR____TtCO5Music13LibraryImport8Observer_inlineBubbleTipViewModel, 2u);
      sub_1000095E8(v4, &unk_1011A4B90, &unk_100ED2800);
      sub_1000095E8(v6, &unk_1011A4B90, &unk_100ED2800);
      if (qword_10117F750 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      sub_1000060E4(v17, static Logger.libraryView);

      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v27 = v14;
        v28[0] = v21;
        *v20 = 136315138;
        type metadata accessor for InlineBubbleTipProvider.InlineBubbleTip();

        v22 = String.init<A>(describing:)();
        v24 = sub_1000105AC(v22, v23, v28);

        *(v20 + 4) = v24;
        _os_log_impl(&_mh_execute_header, v18, v19, "🫧 Inline bubble tip did change – inlineBubbleTip: %s", v20, 0xCu);
        sub_10000959C(v21);
      }

      else
      {
      }
    }

    else
    {
      v25 = type metadata accessor for LibraryImport.ViewModel(0);
      (*(*(v25 - 8) + 56))(v6, 1, 1, v25);
      v26 = OBJC_IVAR____TtCO5Music13LibraryImport8Observer_inlineBubbleTipViewModel;
      swift_beginAccess();
      sub_10003272C(v13 + v26, v4);
      swift_beginAccess();
      sub_10054EB04(v6, v13 + v26);
      swift_endAccess();
      sub_10054D8F4(v4, &OBJC_IVAR____TtCO5Music13LibraryImport8Observer_inlineBubbleTipViewModel, 2u);

      sub_1000095E8(v4, &unk_1011A4B90, &unk_100ED2800);
      sub_1000095E8(v6, &unk_1011A4B90, &unk_100ED2800);
      (*(v8 + 8))(v10, v7);
    }
  }

  return result;
}

void sub_10054E894(uint64_t a1)
{
  sub_100030554(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_10054E96C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  if ((*(a1 + 8) & 0xF000000000000007) != 0)
  {
    v2 = *a1 & 0x7FFFFFFF;
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10054E9B8(uint64_t result, int a2, int a3)
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
      *(result + 8) = 1;
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

uint64_t sub_10054EA64(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10054EAB0()
{
  result = qword_101194B78;
  if (!qword_101194B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101194B78);
  }

  return result;
}

uint64_t sub_10054EB04(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&unk_1011A4B90, &unk_100ED2800);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_10054EB74(uint64_t a1, uint64_t a2)
{
  _s16ActionButtonViewV5ModelVMa(0);
  __chkstk_darwin();
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LibraryImport.ViewModel(0);
  __chkstk_darwin();
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v30 - v8;
  __chkstk_darwin();
  v11 = &v30 - v10;
  sub_10010FC20(&qword_101194B80, &unk_100ED2810);
  __chkstk_darwin();
  v13 = &v30 - v12;
  v15 = &v30 + *(v14 + 56) - v12;
  sub_10054EFD0(a1, &v30 - v12);
  sub_10054EFD0(a2, v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_10054EFD0(v13, v11);
    v19 = *v11;
    v18 = *(v11 + 1);
    v21 = *(v11 + 2);
    v20 = *(v11 + 3);
    v22 = *(v11 + 4);
    if (swift_getEnumCaseMultiPayload())
    {

LABEL_12:
      sub_1000095E8(v13, &qword_101194B80, &unk_100ED2810);
LABEL_13:
      v17 = 0;
      return v17 & 1;
    }

    v24 = *(v15 + 1);
    v25 = *(v15 + 2);
    v26 = *(v15 + 3);
    v27 = *(v15 + 4);
    if (v18)
    {
      if (!v24)
      {
        goto LABEL_36;
      }

      v28 = v19 == *v15 && v18 == v24;
      if (!v28 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {

LABEL_36:

LABEL_37:

LABEL_38:
        sub_10003CCD8(v13, type metadata accessor for LibraryImport.ViewModel);
        goto LABEL_13;
      }
    }

    else if (v24)
    {
      goto LABEL_36;
    }

    if (v20)
    {
      if (!v26)
      {
        goto LABEL_36;
      }

      v29 = v21 == v25 && v20 == v26;
      if (!v29 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {

        goto LABEL_37;
      }
    }

    else if (v26)
    {
      goto LABEL_36;
    }

    if (v22 == v27)
    {
      sub_10003CCD8(v13, type metadata accessor for LibraryImport.ViewModel);
      v17 = 1;
      return v17 & 1;
    }

    goto LABEL_38;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_10054EFD0(v13, v7);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      type metadata accessor for InlineBubbleTipProvider.InlineBubbleTip();
      v17 = static InlineBubbleTipProvider.InlineBubbleTip.== infix(_:_:)();

      goto LABEL_9;
    }

    goto LABEL_12;
  }

  sub_10054EFD0(v13, v9);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_10003CCD8(v9, _s16ActionButtonViewV5ModelVMa);
    goto LABEL_12;
  }

  sub_10054F034(v15, v5, _s16ActionButtonViewV5ModelVMa);
  v17 = sub_10062CB7C(v9, v5);
  sub_10003CCD8(v5, _s16ActionButtonViewV5ModelVMa);
  sub_10003CCD8(v9, _s16ActionButtonViewV5ModelVMa);
LABEL_9:
  sub_10003CCD8(v13, type metadata accessor for LibraryImport.ViewModel);
  return v17 & 1;
}

uint64_t sub_10054EFD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LibraryImport.ViewModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10054F034(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10054F09C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_101199B50, &qword_100ED8540);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10054F114()
{
  result = qword_101194B98;
  if (!qword_101194B98)
  {
    sub_1001109D0(&qword_101194B90, &unk_100ED2830);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101194B98);
  }

  return result;
}

uint64_t sub_10054F1A8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_10000954C(a1, a1[3]);
  result = dispatch thunk of SongFilter.id.getter();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_10054F238()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, qword_101194BA0);
  sub_1000060E4(v0, qword_101194BA0);
  return static Logger.music(_:)(0xD000000000000017, 0x8000000100ED28B0);
}

id sub_10054F29C(unsigned __int8 a1, void *a2, uint64_t a3)
{
  v7 = OBJC_IVAR____TtC5Music23ShareModelStoryActivity_model;
  *&v3[OBJC_IVAR____TtC5Music23ShareModelStoryActivity_model] = 0;
  v8 = &v3[OBJC_IVAR____TtC5Music23ShareModelStoryActivity_musicItem];
  *v8 = 0u;
  *(v8 + 16) = 0u;
  *(v8 + 32) = 0;
  v9 = OBJC_IVAR____TtC5Music23ShareModelStoryActivity_effectiveStorePlatformDictionary;
  *&v3[v9] = sub_100060CB0(_swiftEmptyArrayStorage);
  v10 = OBJC_IVAR____TtC5Music23ShareModelStoryActivity_jsModel;
  *&v3[OBJC_IVAR____TtC5Music23ShareModelStoryActivity_jsModel] = 0;
  v11 = &v3[OBJC_IVAR____TtC5Music23ShareModelStoryActivity_metricsReporter];
  *v11 = 0u;
  *(v11 + 16) = 0u;
  *(v11 + 32) = 0;
  if (sub_10044BC7C(a1))
  {
    v3[OBJC_IVAR____TtC5Music23ShareModelStoryActivity_socialNetwork] = a1;
    sub_100008FE4(a2, v15);
    swift_beginAccess();
    sub_100552B14(v15, v8);
    swift_endAccess();
    sub_10012B7A8(a3, &v3[OBJC_IVAR____TtC5Music23ShareModelStoryActivity_presentationSource]);
    v14.receiver = v3;
    v14.super_class = type metadata accessor for ShareModelStoryActivity();
    v12 = objc_msgSendSuper2(&v14, "init");
    sub_10012BA6C(a3);
    sub_10000959C(a2);
    return v12;
  }

  else
  {
    sub_10012BA6C(a3);
    sub_10000959C(a2);

    sub_1000095E8(v8, &unk_1011814F0, &unk_100EBF9C0);

    sub_1000095E8(v11, &qword_101194C18, &qword_100ED2910);
    type metadata accessor for ShareModelStoryActivity();
    swift_deallocPartialClassInstance();
    return 0;
  }
}

id sub_10054F66C()
{
  objc_opt_self();
  v0 = swift_dynamicCastObjCClass();
  if (v0)
  {
    result = [v0 title];
    if (!result)
    {
      return result;
    }

LABEL_9:
    v3 = result;
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v4;
  }

  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    result = [v2 title];
    if (result)
    {
      goto LABEL_9;
    }
  }

  else
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      result = [result name];
      if (result)
      {
        goto LABEL_9;
      }
    }
  }

  return result;
}

id sub_10054F758()
{
  objc_opt_self();
  v0 = swift_dynamicCastObjCClass();
  if (v0)
  {
    result = [v0 artist];
    if (!result)
    {
      return result;
    }

LABEL_6:
    v3 = result;
    v4 = [result name];

    if (v4)
    {
LABEL_7:
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      return v5;
    }

    return 0;
  }

  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    result = [v2 artist];
    if (!result)
    {
      return result;
    }

    goto LABEL_6;
  }

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    result = [result curator];
    if (result)
    {
      v6 = result;
      v4 = [result name];

      if (v4)
      {
        goto LABEL_7;
      }

      return 0;
    }
  }

  return result;
}

id sub_10054F8B0()
{
  result = MPModelObject.bestIdentifier(for:)(3, 2u);
  if (v1)
  {
    v2 = v1;
    v3 = result;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v4 = 0x72743A656C707061;
    }

    else
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v4 = 0x6C613A656C707061;
      }

      else
      {
        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {

          return 0;
        }

        _StringGuts.grow(_:)(17);

        v4 = 0x6C703A656C707061;
      }
    }

    v6 = v4;
    v5._countAndFlagsBits = v3;
    v5._object = v2;
    String.append(_:)(v5);

    return v6;
  }

  return result;
}

uint64_t sub_10054F9F8@<X0>(uint64_t a1@<X8>)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if ((v2 || (objc_opt_self(), (v2 = swift_dynamicCastObjCClass()) != 0) || (objc_opt_self(), (v2 = swift_dynamicCastObjCClass()) != 0)) && [v2 artworkCatalog])
  {
    Artwork.init(_:)();
    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = type metadata accessor for Artwork();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, v3, 1, v4);
}

double sub_10054FAE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v11 = &v25 - v10;
  sub_1000089F8(a3, &v25, &unk_1011814F0, &unk_100EBF9C0);
  if (v26)
  {
    sub_100059A8C(&v25, v27);
    v12 = type metadata accessor for TaskPriority();
    (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
    v13 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_100008FE4(v27, &v25);
    type metadata accessor for MainActor();

    v14 = static MainActor.shared.getter();
    v15 = swift_allocObject();
    v15[2] = v14;
    v15[3] = &protocol witness table for MainActor;
    sub_100059A8C(&v25, (v15 + 4));
    v15[9] = v13;
    v15[10] = a1;
    v15[11] = a2;

    sub_1001F4CB8(0, 0, v11, &unk_100ED2938, v15);

    sub_10000959C(v27);
  }

  else
  {
    sub_1000095E8(&v25, &unk_1011814F0, &unk_100EBF9C0);
    v17 = a6;

    JSShareRequest.RequestContent.init(contentDictionary:contentType:jsModel:)(v18, 1, a6, v27);
    v19 = objc_allocWithZone(type metadata accessor for JSShareRequest());
    v20 = JSShareRequest.init(requestContent:activityType:)(v27, UIActivityTypeCopyToPasteboard);
    type metadata accessor for JSShareRequestCoordinator();
    swift_allocObject();
    v21 = JSShareRequestCoordinator.init()();
    v22 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v23 = swift_allocObject();
    v23[2] = v22;
    v23[3] = a1;
    v23[4] = a2;
    v24 = *(*v21 + 152);

    v24(v20, sub_100553734, v23);
  }

  return result;
}

uint64_t sub_10054FDF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  sub_10010FC20(&qword_101194C20, &unk_100ED2940);
  v7[9] = swift_task_alloc();
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  v7[10] = swift_task_alloc();
  v7[11] = swift_task_alloc();
  v7[12] = swift_task_alloc();
  v8 = type metadata accessor for URL();
  v7[13] = v8;
  v7[14] = *(v8 - 8);
  v7[15] = swift_task_alloc();
  v7[16] = swift_task_alloc();
  type metadata accessor for MainActor();
  v7[17] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v7[18] = v10;
  v7[19] = v9;

  return _swift_task_switch(sub_10054FF80, v10, v9);
}

uint64_t sub_10054FF80()
{
  v1 = v0[5];
  v2 = v1[3];
  v3 = v1[4];
  sub_10000954C(v1, v2);
  v4 = *(v3 + 8);
  v8 = (*(v4 + 24) + **(v4 + 24));
  v5 = swift_task_alloc();
  v0[20] = v5;
  *v5 = v0;
  v5[1] = sub_1005500B0;
  v6 = v0[12];

  return v8(v6, v2, v4);
}

uint64_t sub_1005500B0()
{
  v1 = *v0;

  v2 = *(v1 + 152);
  v3 = *(v1 + 144);

  return _swift_task_switch(sub_1005501D0, v3, v2);
}

uint64_t sub_1005501D0()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];
  v4 = *(v2 + 48);
  if (v4(v3, 1, v1) == 1)
  {

LABEL_8:
    sub_1000095E8(v3, &qword_101183A20, &unk_100EBCF80);
    v14 = v0[9];
    v15 = v0[7];
    v16 = type metadata accessor for StorySharingController.ShareData(0);
    (*(*(v16 - 8) + 56))(v14, 1, 1, v16);
    v15(v14);
    sub_1000095E8(v14, &qword_101194C20, &unk_100ED2940);

    v17 = v0[1];

    return v17();
  }

  v5 = *(v2 + 32);
  v5(v0[16], v3, v1);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v10 = v0[16];
    v11 = v0[13];
    v12 = v0[14];
    v13 = v0[11];

    (*(v12 + 8))(v10, v11);
    (*(v12 + 56))(v13, 1, 1, v11);
    goto LABEL_7;
  }

  v7 = Strong;
  v8 = v0[13];
  v9 = v0[11];
  sub_100551530(v9);

  if (v4(v9, 1, v8) == 1)
  {
    (*(v0[14] + 8))(v0[16], v0[13]);

LABEL_7:
    v3 = v0[11];
    goto LABEL_8;
  }

  v19 = v0[5];
  v5(v0[15], v0[11], v0[13]);
  v20 = v19[3];
  v21 = v19[4];
  sub_10000954C(v19, v20);
  v24 = (*(v21 + 48) + **(v21 + 48));
  v22 = swift_task_alloc();
  v0[21] = v22;
  *v22 = v0;
  v22[1] = sub_10055054C;
  v23 = v0[10];

  return v24(v23, v20, v21);
}

uint64_t sub_10055054C()
{
  v1 = *v0;

  v2 = *(v1 + 152);
  v3 = *(v1 + 144);

  return _swift_task_switch(sub_10055066C, v3, v2);
}

uint64_t sub_10055066C()
{
  v11 = v0[16];
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[13];
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[7];

  (*(v1 + 16))(v5, v2, v3);
  v7 = type metadata accessor for StorySharingController.ShareData(0);
  sub_1000089F8(v4, v5 + *(v7 + 20), &qword_101183A20, &unk_100EBCF80);
  (*(*(v7 - 8) + 56))(v5, 0, 1, v7);
  v6(v5);
  sub_1000095E8(v5, &qword_101194C20, &unk_100ED2940);
  sub_1000095E8(v4, &qword_101183A20, &unk_100EBCF80);
  v8 = *(v1 + 8);
  v8(v2, v3);
  v8(v11, v3);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100550824(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *), uint64_t a5)
{
  sub_10010FC20(&qword_101194C20, &unk_100ED2940);
  __chkstk_darwin();
  v10 = &v31 - v9;
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v37 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v31 - v12;
  v14 = type metadata accessor for URL();
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v18 = __chkstk_darwin();
  if (a1)
  {
    v19 = &v31 - v16;
    v34 = v17;
    v35 = a3;
    v36 = a5;
    (*((swift_isaMask & *a1) + 0x110))(v18);
    v20 = *(v15 + 48);
    if (v20(v13, 1, v14) != 1)
    {
      v32 = a4;
      v33 = v19;
      v31 = *(v15 + 32);
      v31(v19, v13, v14);
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v22 = Strong;
        v23 = v37;
        v24 = v33;
        sub_100551530(v37);

        if (v20(v23, 1, v14) != 1)
        {
          v27 = v34;
          v31(v34, v23, v14);
          (*(v15 + 16))(v10, v27, v14);
          v28 = *((swift_isaMask & *a1) + 0xE0);
          v29 = type metadata accessor for StorySharingController.ShareData(0);
          v28();
          (*(*(v29 - 8) + 56))(v10, 0, 1, v29);
          v32(v10);
          sub_1000095E8(v10, &qword_101194C20, &unk_100ED2940);
          v30 = *(v15 + 8);
          v30(v27, v14);
          return (v30)(v33, v14);
        }

        (*(v15 + 8))(v24, v14);
        v13 = v23;
      }

      else
      {
        (*(v15 + 8))(v33, v14);
        v13 = v37;
        (*(v15 + 56))(v37, 1, 1, v14);
      }

      a4 = v32;
    }
  }

  else
  {
    (*(v15 + 56))(v13, 1, 1, v14, v18);
  }

  sub_1000095E8(v13, &qword_101183A20, &unk_100EBCF80);
  v25 = type metadata accessor for StorySharingController.ShareData(0);
  (*(*(v25 - 8) + 56))(v10, 1, 1, v25);
  a4(v10);
  return sub_1000095E8(v10, &qword_101194C20, &unk_100ED2940);
}

uint64_t sub_100550D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 48) = a6;
  *(v6 + 112) = a5;
  sub_10010FC20(&unk_1011838F0, &qword_100EC1070);
  *(v6 + 56) = swift_task_alloc();
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  *(v6 + 64) = swift_task_alloc();
  type metadata accessor for MetricsEvent.Click(0);
  *(v6 + 72) = swift_task_alloc();
  *(v6 + 80) = type metadata accessor for MainActor();
  *(v6 + 88) = static MainActor.shared.getter();
  v7 = swift_task_alloc();
  *(v6 + 96) = v7;
  *v7 = v6;
  v7[1] = sub_100550E50;

  return sub_10072E678();
}

uint64_t sub_100550E50()
{
  *(*v1 + 104) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_100551288;
  }

  else
  {
    v4 = sub_100550FAC;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_100550FAC()
{
  v1 = *(v0 + 112);

  v2 = MetricsReportingController.shared.unsafeMutableAddressor();
  v3 = 0xE800000000000000;
  v4 = *v2;
  v5 = 0x6B6F6F6265636166;
  v6 = 0xE800000000000000;
  v7 = 0x7461686370616E73;
  if (v1 != 2)
  {
    v7 = 0x6B6F546B6974;
    v6 = 0xE600000000000000;
  }

  if (!v1)
  {
    v5 = 0x6172676174736E69;
    v3 = 0xE90000000000006DLL;
  }

  v8 = v1 <= 1;
  if (v1 <= 1)
  {
    v9 = v5;
  }

  else
  {
    v9 = v7;
  }

  if (v8)
  {
    v10 = v3;
  }

  else
  {
    v10 = v6;
  }

  v11 = *(v0 + 64);
  v12 = *(v0 + 72);
  v13 = *(v0 + 56);
  v14 = type metadata accessor for URL();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = type metadata accessor for MetricsEvent.Page(0);
  (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
  v16 = v4;
  MetricsEvent.Click.init(targetIdentifier:targetType:actionType:actionURL:locations:actionContext:actionDetails:page:snapshotImpressions:)(v9, v10, 2, 48, v11, 0, 0, 2, v12, 0, 0, 0xFF00u, v13, 0);
  v17 = sub_10053771C();
  v19 = v18;
  if (qword_10117F600 != -1)
  {
    swift_once();
  }

  v20 = *(v0 + 72);
  v21 = *(v0 + 48);
  v22 = qword_101218AD0;
  v23 = GroupActivitiesManager.hasJoined.getter();
  v24 = GroupActivitiesManager.participantsCount.getter();
  v25 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
  swift_beginAccess();
  (*((swift_isaMask & *v16) + 0xB8))(v20, v17, v19, v23 & 1, v24, *(v22 + v25));

  sub_1003CD02C(v20, v26);
  [v21 activityDidFinish:1];

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_100551288()
{
  v13 = v0;

  if (qword_10117F848 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000060E4(v1, qword_101194BA0);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 104);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315138;
    *(v0 + 40) = v4;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0, &unk_100EBE390);
    v7 = String.init<A>(describing:)();
    v9 = sub_1000105AC(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to share story: %s", v5, 0xCu);
    sub_10000959C(v6);
  }

  [*(v0 + 48) activityDidFinish:0];

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_100551530@<X0>(uint64_t a2@<X8>)
{
  v3 = type metadata accessor for URLQueryItem();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v45 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v44 = &v41 - v6;
  __chkstk_darwin();
  v8 = &v41 - v7;
  __chkstk_darwin();
  v10 = &v41 - v9;
  sub_10010FC20(&qword_101194980, &qword_100ECA390);
  __chkstk_darwin();
  v12 = &v41 - v11;
  v13 = type metadata accessor for URLComponents();
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1000095E8(v12, &qword_101194980, &qword_100ECA390);
    v17 = type metadata accessor for URL();
    return (*(*(v17 - 8) + 56))(a2, 1, 1, v17);
  }

  else
  {
    v46 = v3;
    v43 = a2;
    (*(v14 + 32))(v16, v12, v13);
    v19 = v10;
    URLQueryItem.init(name:value:)();
    v20 = OBJC_IVAR____TtC5Music23ShareModelStoryActivity_socialNetwork;
    v21 = v47;
    URLQueryItem.init(name:value:)();

    v22 = URLComponents.queryItems.getter();
    if (v22)
    {
      v23 = v22;
    }

    else
    {
      v23 = _swiftEmptyArrayStorage;
    }

    v48 = v23;
    v24 = *(v21 + v20);
    v41 = v13;
    v42 = v8;
    if (v24 > 2)
    {
    }

    else
    {
      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v25 & 1) == 0)
      {
        v26 = v44;
        URLQueryItem.init(name:value:)();
        v27 = v45;
        (*(v4 + 16))(v45, v26, v46);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_10049A5A8(0, v23[2] + 1, 1, v23);
        }

        v29 = v23[2];
        v28 = v23[3];
        if (v29 >= v28 >> 1)
        {
          v23 = sub_10049A5A8((v28 > 1), v29 + 1, 1, v23);
        }

        v30 = v26;
        v31 = v46;
        (*(v4 + 8))(v30, v46);
        v23[2] = v29 + 1;
        (*(v4 + 32))(v23 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v29, v27, v31);
        v48 = v23;
      }
    }

    sub_10010FC20(&unk_101197BC0, &unk_100ECF170);
    v32 = *(v4 + 72);
    v33 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_100EBDC20;
    v35 = v34 + v33;
    v36 = *(v4 + 16);
    v37 = v46;
    v36(v35, v19, v46);
    v38 = v35 + v32;
    v39 = v42;
    v36(v38, v42, v37);
    sub_1001259EC(v34);
    URLComponents.queryItems.setter();
    URLComponents.url.getter();
    v40 = *(v4 + 8);
    v40(v39, v37);
    v40(v19, v37);
    return (*(v14 + 8))(v16, v41);
  }
}

id sub_100551B5C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ShareModelStoryActivity();
  return objc_msgSendSuper2(&v3, "dealloc");
}

double sub_100551C88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t))
{
  v5 = a3();
  if (!v6)
  {
    v5 = a4(v5);
  }

  String.append(_:)(*&v5);

  return result;
}

uint64_t Composer.url.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for URL();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t Playlist.contentIdentifier.getter()
{
  _StringGuts.grow(_:)(17);

  v0 = Playlist.catalogID.getter();
  if (!v1)
  {
    v0 = Playlist.id.getter();
  }

  String.append(_:)(*&v0);

  return 0x6C703A656C707061;
}

uint64_t Song.previewURL.getter(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_10010FC20(&qword_10118D1A0, &qword_100EBD6B0);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  sub_10010FC20(&unk_101183960, &unk_100EBCF90);
  v2[9] = swift_task_alloc();
  v4 = type metadata accessor for PreviewAsset();
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = sub_10010FC20(&unk_10118A320, &qword_100EBD6B8);
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  v6 = sub_10010FC20(&unk_10118A310, &qword_100EBD6C0);
  v2[16] = v6;
  v2[17] = *(v6 - 8);
  v2[18] = swift_task_alloc();

  return _swift_task_switch(sub_100552074, 0, 0);
}

uint64_t sub_100552074(__n128 a1)
{
  v2 = Song.catalogID.getter();
  v1[19] = v2;
  v1[20] = v3;
  if (v3)
  {
    v4 = v2;
    v5 = v3;
    swift_getKeyPath();
    v1[2] = v4;
    v1[3] = v5;
    v1[21] = type metadata accessor for Song();
    sub_100552B84(&unk_1011929D0, &type metadata accessor for Song, &protocol conformance descriptor for Song);

    MusicCatalogResourceRequest.init<A>(matching:equalTo:)();
    v6 = swift_task_alloc();
    v1[22] = v6;
    *v6 = v1;
    v6[1] = sub_100552278;
    v7 = v1[15];
    v8 = v1[16];

    return MusicCatalogResourceRequest.response()(v7, v8);
  }

  else
  {
    v9 = v1[4];
    v10 = type metadata accessor for URL();
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);

    v11 = v1[1];

    return v11();
  }
}

uint64_t sub_100552278()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_1005526B4;
  }

  else
  {

    v2 = sub_100552394;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100552394()
{
  v1 = v0[21];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[6];
  v5 = v0[7];
  MusicCatalogResourceResponse.items.getter();
  sub_10034DD6C(v2);
  (*(v5 + 8))(v3, v4);
  v6 = *(v1 - 8);
  if ((*(v6 + 48))(v2, 1, v1) == 1)
  {
    v8 = v0[17];
    v7 = v0[18];
    v9 = v0[16];
    v10 = v0[9];
    (*(v0[14] + 8))(v0[15], v0[13]);
    (*(v8 + 8))(v7, v9);
    sub_1000095E8(v10, &unk_101183960, &unk_100EBCF90);
  }

  else
  {
    v11 = v0[21];
    v12 = v0[9];
    v13 = Song.previewAssets.getter();
    (*(v6 + 8))(v12, v11);
    if (v13)
    {
      v15 = v0[17];
      v14 = v0[18];
      v16 = v0[15];
      v17 = v0[16];
      v19 = v0[13];
      v18 = v0[14];
      if (*(v13 + 16))
      {
        v30 = v0[18];
        v31 = v0[16];
        v20 = v0[11];
        v21 = v0[12];
        v22 = v0[10];
        (*(v20 + 16))(v21, v13 + ((*(v20 + 80) + 32) & ~*(v20 + 80)), v22);

        PreviewAsset.url.getter();
        (*(v20 + 8))(v21, v22);
        (*(v18 + 8))(v16, v19);
        (*(v15 + 8))(v30, v31);
        goto LABEL_9;
      }

      (*(v18 + 8))(v16, v19);
      (*(v15 + 8))(v14, v17);
    }

    else
    {
      v24 = v0[17];
      v23 = v0[18];
      v25 = v0[16];
      (*(v0[14] + 8))(v0[15], v0[13]);
      (*(v24 + 8))(v23, v25);
    }
  }

  v26 = v0[4];
  v27 = type metadata accessor for URL();
  (*(*(v27 - 8) + 56))(v26, 1, 1, v27);
LABEL_9:

  v28 = v0[1];

  return v28();
}

uint64_t sub_1005526B4()
{
  v23 = v0;
  if (qword_10117F848 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000060E4(v1, qword_101194BA0);

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v19 = v0[17];
    v20 = v0[16];
    v21 = v0[18];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v22 = v6;
    *v4 = 136315394;
    v7 = MusicItemID.description.getter();
    v9 = v8;

    v10 = sub_1000105AC(v7, v9, &v22);

    *(v4 + 4) = v10;
    *(v4 + 12) = 2112;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v11;
    *v5 = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to get preview URL for song with catalogID: %s: %@", v4, 0x16u);
    sub_1000095E8(v5, &unk_101183D70, &unk_100EC6540);

    sub_10000959C(v6);

    (*(v19 + 8))(v21, v20);
  }

  else
  {
    v13 = v0[17];
    v12 = v0[18];
    v14 = v0[16];

    (*(v13 + 8))(v12, v14);
  }

  v15 = v0[4];
  v16 = type metadata accessor for URL();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);

  v17 = v0[1];

  return v17();
}

uint64_t sub_100552A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t (*a6)(uint64_t))
{
  v7 = a5(a1, a2);
  if (!v8)
  {
    v7 = a6(v7);
  }

  String.append(_:)(*&v7);

  return a3;
}

uint64_t sub_100552A58(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10002F3F4;

  return Song.previewURL.getter(a1);
}

uint64_t sub_100552B14(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&unk_1011814F0, &unk_100EBF9C0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100552B84(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100552BCC()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() sharedApplication];
  v7 = OBJC_IVAR____TtC5Music23ShareModelStoryActivity_socialNetwork;
  sub_10044B664(*(v1 + OBJC_IVAR____TtC5Music23ShareModelStoryActivity_socialNetwork), v5);
  URL._bridgeToObjectiveC()(v8);
  v10 = v9;
  (*(v3 + 8))(v5, v2);
  LODWORD(v5) = [v6 canOpenURL:v10];

  if (v5)
  {
    v11 = sub_10044BC7C(*(v1 + v7));
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t sub_100552D10()
{
  v1 = v0;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v69 = &v66 - v2;
  sub_10010FC20(&unk_101188920, &qword_100EBCC50);
  __chkstk_darwin();
  v4 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v70 = &v66 - v5;
  v71 = v0[OBJC_IVAR____TtC5Music23ShareModelStoryActivity_socialNetwork];
  v6 = *&v0[OBJC_IVAR____TtC5Music23ShareModelStoryActivity_model];
  v7 = OBJC_IVAR____TtC5Music23ShareModelStoryActivity_musicItem;
  swift_beginAccess();
  sub_1000089F8(&v0[v7], v77, &unk_1011814F0, &unk_100EBF9C0);
  v8 = *&v0[OBJC_IVAR____TtC5Music23ShareModelStoryActivity_jsModel];
  v9 = *&v0[OBJC_IVAR____TtC5Music23ShareModelStoryActivity_effectiveStorePlatformDictionary];
  sub_1000089F8(v77, v74, &unk_1011814F0, &unk_100EBF9C0);
  v10 = v75;
  v68 = v8;
  v67 = v9;
  if (v75)
  {
    v11 = v76;
    sub_10000954C(v74, v75);
    v12 = *(v11 + 16);
    v13 = v8;

    v14 = v6;
    v15 = v12(v10, v11);
    v17 = v16;
    sub_10000959C(v74);
    if (v17)
    {
      goto LABEL_9;
    }

    if (!v6)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v18 = v8;

    v19 = v6;
    sub_1000095E8(v74, &unk_1011814F0, &unk_100EBF9C0);
    if (!v6)
    {
      goto LABEL_8;
    }
  }

  v20 = sub_10054F66C();
  if (v21)
  {
    v15 = v20;
    v17 = v21;

    goto LABEL_9;
  }

LABEL_8:
  swift_bridgeObjectRelease_n();
  v15 = 0;
  v17 = 0xE000000000000000;
LABEL_9:
  sub_1000089F8(v77, v74, &unk_1011814F0, &unk_100EBF9C0);
  v22 = v75;
  if (v75)
  {
    v23 = v76;
    sub_10000954C(v74, v75);
    v24 = (*(v23 + 24))(v22, v23);
    v26 = v25;
    sub_10000959C(v74);
    if (v26)
    {
      goto LABEL_17;
    }

    if (!v6)
    {
      goto LABEL_16;
    }
  }

  else
  {
    sub_1000095E8(v74, &unk_1011814F0, &unk_100EBF9C0);
    if (!v6)
    {
      goto LABEL_16;
    }
  }

  v27 = sub_10054F758();
  if (v28)
  {
    v24 = v27;
    v26 = v28;

    goto LABEL_17;
  }

LABEL_16:
  swift_bridgeObjectRelease_n();
  v24 = 0;
  v26 = 0xE000000000000000;
LABEL_17:
  sub_1000089F8(v77, v74, &unk_1011814F0, &unk_100EBF9C0);
  v29 = v75;
  if (v75)
  {
    v30 = v76;
    sub_10000954C(v74, v75);
    v31 = (*(v30 + 40))(v29, v30);
    v33 = v32;
    sub_10000959C(v74);
  }

  else
  {
    sub_1000095E8(v74, &unk_1011814F0, &unk_100EBF9C0);
    if (v6 && (v34 = sub_10054F8B0(), v35))
    {
      v31 = v34;
      v33 = v35;
    }

    else
    {

      v31 = 0;
      v33 = 0xE000000000000000;
    }
  }

  type metadata accessor for ShareModelStoryRenderer();
  v36 = swift_allocObject();
  *(v36 + 16) = v71;
  *(v36 + 24) = v15;
  *(v36 + 32) = v17;
  *(v36 + 40) = v24;
  *(v36 + 48) = v26;
  *(v36 + 56) = v31;
  *(v36 + 64) = v33;
  sub_1000089F8(v77, v74, &unk_1011814F0, &unk_100EBF9C0);
  v37 = v75;
  if (v75)
  {
    v38 = v76;
    sub_10000954C(v74, v75);
    (*(v38 + 32))(v37, v38);
    sub_10000959C(v74);
    v39 = type metadata accessor for Artwork();
    v40 = *(v39 - 8);
    v41 = (*(v40 + 48))(v4, 1, v39);
    v42 = v67;
    if (v41 != 1)
    {
      v43 = v70;
      (*(v40 + 32))(v70, v4, v39);
      (*(v40 + 56))(v43, 0, 1, v39);
      goto LABEL_32;
    }
  }

  else
  {
    sub_1000095E8(v74, &unk_1011814F0, &unk_100EBF9C0);
    v44 = type metadata accessor for Artwork();
    (*(*(v44 - 8) + 56))(v4, 1, 1, v44);
    v42 = v67;
  }

  if (v6)
  {
    v45 = v6;
    sub_10054F9F8(v70);
  }

  else
  {
    v46 = type metadata accessor for Artwork();
    (*(*(v46 - 8) + 56))(v70, 1, 1, v46);
  }

  v47 = type metadata accessor for Artwork();
  if ((*(*(v47 - 8) + 48))(v4, 1, v47) != 1)
  {
    sub_1000095E8(v4, &unk_101188920, &qword_100EBCC50);
  }

LABEL_32:
  sub_10012B7A8(v1 + OBJC_IVAR____TtC5Music23ShareModelStoryActivity_presentationSource, v74);
  sub_1000089F8(v77, v72, &unk_1011814F0, &unk_100EBF9C0);
  v48 = swift_allocObject();
  v49 = v72[1];
  *(v48 + 16) = v72[0];
  *(v48 + 32) = v49;
  *(v48 + 48) = v73;
  *(v48 + 56) = v1;
  v50 = v68;
  *(v48 + 64) = v42;
  *(v48 + 72) = v50;
  type metadata accessor for StorySharingController(0);
  v51 = swift_allocObject();
  v52 = (v51 + OBJC_IVAR____TtC5Music22StorySharingController_openURL);
  v53 = objc_opt_self();
  v54 = v50;
  v55 = v1;

  v56 = [v53 sharedApplication];
  v57 = swift_allocObject();
  *(v57 + 16) = v56;
  *v52 = sub_1005535F0;
  v52[1] = v57;
  LOBYTE(v52) = v71;
  *(v51 + 16) = v71;
  sub_1005535F8(v70, v51 + OBJC_IVAR____TtC5Music22StorySharingController_artwork);
  sub_10012B828(v74, v51 + OBJC_IVAR____TtC5Music22StorySharingController_presentationSource);
  v58 = (v51 + OBJC_IVAR____TtC5Music22StorySharingController_renderer);
  *v58 = v36;
  v58[1] = &off_1010BEEA0;
  *(v51 + OBJC_IVAR____TtC5Music22StorySharingController_artworkSize) = vdupq_n_s64(0x406B400000000000uLL);
  v59 = (v51 + OBJC_IVAR____TtC5Music22StorySharingController_shareDataBuilder);
  *v59 = sub_1005535E0;
  v59[1] = v48;
  v60 = type metadata accessor for TaskPriority();
  v61 = v69;
  (*(*(v60 - 8) + 56))(v69, 1, 1, v60);
  type metadata accessor for MainActor();
  v62 = v55;

  v63 = static MainActor.shared.getter();
  v64 = swift_allocObject();
  *(v64 + 16) = v63;
  *(v64 + 24) = &protocol witness table for MainActor;
  *(v64 + 32) = v51;
  *(v64 + 40) = v52;
  *(v64 + 48) = v62;
  sub_1001F4CB8(0, 0, v61, &unk_100ED2920, v64);

  sub_1000095E8(v77, &unk_1011814F0, &unk_100EBF9C0);
  return 1;
}