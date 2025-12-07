uint64_t sub_100255C98(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = a4;
    v6 = a3;
    v8 = a2;
    v10 = a1;
    v11 = *v7;
    v12 = *v7 >> 62;
    v18 = a5;
    if (!v12)
    {
      result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < v8)
  {
    goto LABEL_15;
  }

LABEL_4:
  v14 = v8 - v10;
  if (__OFSUB__(v8, v10))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v15 = 1 - v14;
  if (__OFSUB__(1, v14))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v12)
  {
    v16 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v16 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v17 = __OFADD__(v16, v15);
  result = v16 + v15;
  if (v17)
  {
    goto LABEL_18;
  }

  v9(result, 1);

  return v18(v10, v8, 1, v6);
}

uint64_t sub_100255DA0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = a3;
  v21 = a4;
  v22 = a1;
  v5 = type metadata accessor for PreviewingPresentationHint();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.navigation.getter();

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v19 = v5;
    v16 = v15;
    v23 = swift_slowAlloc();
    *v16 = 136315651;
    *(v16 + 4) = sub_1000153E0(0xD00000000000001ALL, 0x800000010046AFC0, &v23);
    *(v16 + 12) = 2160;
    *(v16 + 14) = 1752392040;
    *(v16 + 22) = 2081;
    *(v16 + 24) = sub_1000153E0(v22, a2, &v23);
    _os_log_impl(&_mh_execute_header, v13, v14, "%s Navigating to current show page for uuid=%{private,mask.hash}s.", v16, 0x20u);
    swift_arrayDestroy();

    v5 = v19;
  }

  (*(v10 + 8))(v12, v9);
  sub_1000044A0((v20 + OBJC_IVAR____TtC8PodcastsP33_1EBA7FB1085F92D3987B8EDF2EAB73D122GlobalActionController_episodeController), *(v20 + OBJC_IVAR____TtC8PodcastsP33_1EBA7FB1085F92D3987B8EDF2EAB73D122GlobalActionController_episodeController + 24));
  (*(v6 + 104))(v8, enum case for PreviewingPresentationHint.inferTab(_:), v5);
  dispatch thunk of EpisodeControllerProtocol.presentShowPage(asPartOf:for:from:presentationHint:suppressMetrics:)();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1002560A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PreviewingPresentationHint();
  v36 = *(v6 - 8);
  __chkstk_darwin();
  v34 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Logger();
  v32 = *(v12 - 8);
  v33 = v12;
  __chkstk_darwin();
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.navigation.getter();
  v15 = *(v9 + 16);
  v35 = a1;
  v15(v11, a1, v8);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v30 = a2;
    v19 = v18;
    v29 = swift_slowAlloc();
    v37 = v29;
    *v19 = 136315651;
    *(v19 + 4) = sub_1000153E0(0xD00000000000001ALL, 0x800000010046AFC0, &v37);
    *(v19 + 12) = 2160;
    *(v19 + 14) = 1752392040;
    *(v19 + 22) = 2081;
    v20 = URL.absoluteString.getter();
    v31 = a3;
    v21 = v6;
    v23 = v22;
    (*(v9 + 8))(v11, v8);
    v24 = sub_1000153E0(v20, v23, &v37);
    v6 = v21;

    *(v19 + 24) = v24;
    _os_log_impl(&_mh_execute_header, v16, v17, "%s Navigating to current show page at url=%{private,mask.hash}s.", v19, 0x20u);
    swift_arrayDestroy();

    a2 = v30;
  }

  else
  {

    (*(v9 + 8))(v11, v8);
  }

  (*(v32 + 8))(v14, v33);
  sub_1000044A0((a2 + OBJC_IVAR____TtC8PodcastsP33_1EBA7FB1085F92D3987B8EDF2EAB73D122GlobalActionController_episodeController), *(a2 + OBJC_IVAR____TtC8PodcastsP33_1EBA7FB1085F92D3987B8EDF2EAB73D122GlobalActionController_episodeController + 24));
  v25 = v36;
  v26 = v34;
  (*(v36 + 104))(v34, enum case for PreviewingPresentationHint.inferTab(_:), v6);
  dispatch thunk of EpisodeControllerProtocol.presentStorePage(asPartOf:for:from:presentationHint:suppressMetrics:)();
  return (*(v25 + 8))(v26, v6);
}

BOOL sub_100256714()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 delegate];

  if (!v1)
  {
    return 0;
  }

  if (([v1 respondsToSelector:"window"] & 1) == 0)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  v2 = [v1 window];
  swift_unknownObjectRelease();
  if (!v2)
  {
    return 0;
  }

  v3 = [v2 firstResponder];

  if (!v3)
  {
    return 0;
  }

  sub_100009F1C(0, &qword_100579A28, UITextView_ptr);
  if ([v3 isKindOfClass:swift_getObjCClassFromMetadata()])
  {

    return 1;
  }

  sub_100009F1C(0, &qword_100579A30, UITextField_ptr);
  v5 = [v3 isKindOfClass:swift_getObjCClassFromMetadata()];

  return (v5 & 1) != 0;
}

uint64_t sub_100256864(uint64_t a1, uint64_t a2)
{
  v4 = sub_100168088(&unk_1005783D0, &qword_1004031E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1002568D4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  sub_100168088(&qword_100578010, &qword_100401F60);
  __chkstk_darwin();
  v4 = &v64 - v3;
  v5 = type metadata accessor for PlaybackController.TransportCommand();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = (&v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for Logger();
  v69 = *(v9 - 8);
  __chkstk_darwin();
  v11 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v64 - v12;
  __chkstk_darwin();
  v15 = &v64 - v14;
  if (byte_1005933F0 != 1)
  {
    static Logger.playbackSettings.getter();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v71[0] = v28;
      *v27 = 136315138;
      v29 = _typeName(_:qualified:)();
      v31 = sub_1000153E0(v29, v30, v71);

      *(v27 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v25, v26, "[%s] Attempting to toggle on custom show settings.", v27, 0xCu);
      sub_100004590(v28);
    }

    (*(v69 + 8))(v11, v9);
    v32 = dispatch thunk of PlaybackController.nowPlayingItem.getter();
    if (v32 && (v33 = v32, v34 = [v32 podcast], v33, v34))
    {
      v35 = MPModelObject.uuid.getter();
      v37 = v36;

      if (v37)
      {
        v38 = 2;
LABEL_12:
        type metadata accessor for PlayerPerShowSettingsHelper();
        static PlayerPerShowSettingsHelper.setUseCustomSettings(contentID:)();
        sub_1001CEA54(v35, v37, v38);
        return;
      }

      v35 = 0;
    }

    else
    {
      v35 = 0;
      v37 = 0;
    }

    v38 = -1;
    goto LABEL_12;
  }

  v64 = ObjectType;
  static Logger.playbackSettings.getter();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  v18 = os_log_type_enabled(v16, v17);
  v67 = v5;
  v68 = v9;
  v65 = v4;
  v66 = v6;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v71[0] = v20;
    *v19 = 136315138;
    v21 = _typeName(_:qualified:)();
    v23 = sub_1000153E0(v21, v22, v71);

    *(v19 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v16, v17, "[%s] Attempting to toggle off custom show settings.", v19, 0xCu);
    sub_100004590(v20);

    v24 = *(v69 + 8);
    v24(v15, v68);
  }

  else
  {

    v24 = *(v69 + 8);
    v24(v15, v9);
  }

  v39 = dispatch thunk of PlaybackController.nowPlayingItem.getter();
  if (!v39 || (v40 = v39, v41 = [v39 podcast], v40, !v41))
  {
    v42 = 0;
    v44 = 0;
LABEL_19:
    v45 = -1;
    goto LABEL_20;
  }

  v42 = MPModelObject.uuid.getter();
  v44 = v43;

  if (!v44)
  {
    v42 = 0;
    goto LABEL_19;
  }

  v45 = 2;
LABEL_20:
  type metadata accessor for PlayerPerShowSettingsHelper();
  static PlayerPerShowSettingsHelper.setUseGlobalSettings(contentID:)();
  sub_1001CEA54(v42, v44, v45);
  static Logger.playbackSettings.getter();
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v71[0] = v49;
    *v48 = 136315138;
    v50 = _typeName(_:qualified:)();
    v52 = sub_1000153E0(v50, v51, v71);

    *(v48 + 4) = v52;
    _os_log_impl(&_mh_execute_header, v46, v47, "[%s] Restoring global playback settings.", v48, 0xCu);
    sub_100004590(v49);
  }

  v24(v13, v68);
  v53 = v67;
  type metadata accessor for PlaybackSettingsDefaults();
  v54 = static PlaybackSettingsDefaults.shared.getter();
  PlaybackSettingsDefaults.playbackRateGlobalValue.getter();
  v56 = v55;

  *v8 = v56;
  v57 = v66;
  (*(v66 + 104))(v8, enum case for PlaybackController.TransportCommand.changePlaybackSpeed(_:), v53);
  v71[3] = v53;
  v71[4] = &protocol witness table for PlaybackController.TransportCommand;
  v58 = sub_10000E680(v71);
  (*(v57 + 16))(v58, v8, v53);
  v59 = type metadata accessor for TaskPriority();
  v60 = v65;
  (*(*(v59 - 8) + 56))(v65, 1, 1, v59);
  sub_100004428(v71, v70);
  type metadata accessor for MainActor();
  v61 = v1;
  v62 = static MainActor.shared.getter();
  v63 = swift_allocObject();
  v63[2] = v62;
  v63[3] = &protocol witness table for MainActor;
  v63[4] = v61;
  sub_1000109E4(v70, (v63 + 5));
  sub_10023F12C(0, 0, v60, &unk_100406C90, v63);

  (*(v57 + 8))(v8, v53);
  sub_100004590(v71);
}

uint64_t sub_1002579C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10021A620;

  return sub_10024DCAC(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_100257A84()
{
  swift_unknownObjectRelease();

  sub_100004590((v0 + 40));

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100257ACC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001C51C;

  return sub_10024BF04(a1, v4, v5, v6);
}

uint64_t sub_100257B80(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10021A620;

  return sub_10024BB20(a1, v4, v5, v6);
}

uint64_t sub_100257C4C()
{
  v1 = type metadata accessor for SearchAction();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100257D28(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for SearchAction() - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

Swift::Int sub_100257E20(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100168088(&unk_100579C60, &unk_100406E18);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v14 = __clz(__rbit64(v5)) | (v9 << 6);
    sub_10016BE40(*(a1 + 48) + 40 * v14, &v33);
    sub_10001B944(*(a1 + 56) + 32 * v14, v35 + 8);
    v31[0] = v35[0];
    v31[1] = v35[1];
    v32 = v36;
    v29 = v33;
    v30 = v34;
    v22 = v33;
    v23 = v34;
    v24 = *&v35[0];
    sub_10016B7CC((v31 + 8), &v27);
    sub_100168088(&unk_1005783D0, &qword_1004031E0);
    swift_dynamicCast();
    v27 = v25;
    v28 = v26;
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*&v7[8 * (v16 >> 6)]) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *&v7[8 * v17];
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~*&v7[8 * (v16 >> 6)])) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v5 &= v5 - 1;
    v11 = v2[6] + 40 * v10;
    *v11 = v22;
    *(v11 + 16) = v23;
    *(v11 + 32) = v24;
    v12 = (v2[7] + 32 * v10);
    *v12 = v27;
    v12[1] = v28;
    ++v2[2];
  }

  while (1)
  {
    v13 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v9;
    if (v5)
    {
      v9 = v13;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_10025810C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100168088(&unk_100572D70, &unk_1003FF330);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_10001B944(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_10016B7CC(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_10016B7CC(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_10016B7CC(v31, v32);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_10016B7CC(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1002583D4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100168088(&unk_100572D70, &unk_1003FF330);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v15 = v14[1];
    v16 = *(*(a1 + 56) + 8 * v13);
    *&v32[0] = *v14;
    *(&v32[0] + 1) = v15;

    v16;
    swift_dynamicCast();
    sub_100009F1C(0, &qword_100576030, off_1004D1B70);
    swift_dynamicCast();
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_10016B7CC(&v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_10016B7CC(v31, v32);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_10016B7CC(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_1002586A4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100168088(&unk_100572CA0, &unk_1003FF2E0);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = v13 | (v12 << 6);
        v15 = (*(a1 + 48) + 16 * v14);
        v17 = *v15;
        v16 = v15[1];
        v18 = *(*(a1 + 56) + 8 * v14);
        sub_100009F1C(0, &qword_1005742A0, NSNumber_ptr);

        v19 = v18;
        swift_dynamicCast();
        sub_10016B7CC(&v25, v27);
        sub_10016B7CC(v27, v28);
        sub_10016B7CC(v28, &v26);
        result = sub_10000F9A8(v17, v16);
        if (v20)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v17;
          v9[1] = v16;
          v10 = result;

          v11 = (v2[7] + 32 * v10);
          sub_100004590(v11);
          result = sub_10016B7CC(&v26, v11);
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v21 = (v2[6] + 16 * result);
          *v21 = v17;
          v21[1] = v16;
          result = sub_10016B7CC(&v26, (v2[7] + 32 * result));
          v22 = v2[2];
          v23 = __OFADD__(v22, 1);
          v24 = v22 + 1;
          if (v23)
          {
            goto LABEL_21;
          }

          v2[2] = v24;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

void *sub_100258910@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, int64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  v9 = v8;
  v58 = a3;
  v61 = a1;
  v62 = 0xD00000000000002DLL;
  v59 = type metadata accessor for Logger();
  v16 = *(v59 - 8);
  __chkstk_darwin();
  v18 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v20 = &v57 - v19;
  v21 = *sub_1000044A0(&v9[OBJC_IVAR____TtC8Podcasts24FairPlayAssetsDownloader_config], *&v9[OBJC_IVAR____TtC8Podcasts24FairPlayAssetsDownloader_config + 24]);
  if (v21 > 1)
  {
    if (v21 == 2)
    {
      v22 = "ts.downloads.episodes.restore";
    }

    else
    {
      v22 = "ts.downloads.episodes.headers";
      v62 = 0xD00000000000002FLL;
    }
  }

  else if (v21)
  {
    v22 = "sodes.userInitiated";
  }

  else
  {
    v62 = 0xD000000000000033;
    v22 = "bytes";
  }

  v60 = (v22 | 0x8000000000000000);
  if (URL.isHLSPlaylist()())
  {
    if (a4)
    {
      static Logger.downloads.getter();
      v23 = v9;
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.error.getter();

      v26 = os_log_type_enabled(v24, v25);
      v27 = v60;
      if (v26)
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v63 = v29;
        *v28 = 136315138;
        v30 = sub_100258E2C();
        v32 = sub_1000153E0(v30, v31, &v63);

        *(v28 + 4) = v32;
        _os_log_impl(&_mh_execute_header, v24, v25, "%s Attempting to download HLS content without an AdamID.", v28, 0xCu);
        sub_100004590(v29);
      }

      result = (*(v16 + 8))(v20, v59);
      v34 = v62;
      goto LABEL_19;
    }

    v46 = a7 & 1;
    v34 = v62;
    v27 = v60;
    result = sub_100258E90(a2, v62, v60, 1, a5 & 1, a6, v46);
    if (!result)
    {
LABEL_19:
      v44 = 0;
      v45 = 0;
      v53 = v61;
      *(v61 + 32) = 0;
      *v53 = 0u;
      v53[1] = 0u;
      goto LABEL_22;
    }

    v47 = result;
    v48 = *&v9[OBJC_IVAR____TtC8Podcasts24FairPlayAssetsDownloader_taskToKeyAdamIDMap];
    __chkstk_darwin();
    v49 = v58;
    *(&v57 - 2) = v50;
    *(&v57 - 1) = v49;
    os_unfair_lock_lock((v48 + 24));
    sub_100261410((v48 + 16));
    os_unfair_lock_unlock((v48 + 24));
    type metadata accessor for FairPlayRolloutController();
    v51 = static FairPlayRolloutController.shared.getter();
    v52 = FairPlayRolloutController.isEnabled()();

    if (v52)
    {
      result = sub_100009F1C(0, &qword_100577200, AVAssetDownloadTask_ptr);
      v44 = 0;
      v45 = 0;
    }

    else
    {
      v54 = [v47 URLAsset];
      v44 = sub_100259350(v54, v47, v49);
      v45 = v55;

      result = sub_100009F1C(0, &qword_100577200, AVAssetDownloadTask_ptr);
    }

    v56 = v61;
    *(v61 + 24) = result;
    v56[4] = &off_1004E5188;
    *v56 = v47;
  }

  else
  {
    static Logger.downloads.getter();
    v35 = v9;
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v63 = v39;
      *v38 = 136315138;
      v40 = sub_100258E2C();
      v42 = sub_1000153E0(v40, v41, &v63);

      *(v38 + 4) = v42;
      sub_100004590(v39);
    }

    result = (*(v16 + 8))(v18, v59);
    v43 = v61;
    v34 = v62;
    v44 = 0;
    v45 = 0;
    *(v61 + 32) = 0;
    *v43 = 0u;
    v43[1] = 0u;
    v27 = v60;
  }

LABEL_22:
  *a8 = v44;
  *(a8 + 8) = v45;
  *(a8 + 16) = v34;
  *(a8 + 24) = v27;
  *(a8 + 32) = 1;
  return result;
}

unint64_t sub_100258E2C()
{
  v1 = (v0 + OBJC_IVAR____TtC8Podcasts24FairPlayAssetsDownloader____lazy_storage___logPrefix);
  if (*(v0 + OBJC_IVAR____TtC8Podcasts24FairPlayAssetsDownloader____lazy_storage___logPrefix + 8))
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0xD00000000000001BLL;
    *v1 = 0xD00000000000001BLL;
    v1[1] = 0x800000010046B640;
  }

  return v2;
}

id sub_100258E90(uint64_t a1, uint64_t a2, void *a3, int a4, Swift::Bool a5, int64_t a6, int a7)
{
  v8 = v7;
  v48 = a7;
  v49 = a4;
  v50 = a2;
  v12 = type metadata accessor for Logger();
  v47 = *(v12 - 8);
  __chkstk_darwin();
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&unk_100579C28, &qword_100406DD8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100400790;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v16;
  sub_100009F1C(0, &qword_1005742A0, NSNumber_ptr);
  *(inited + 48) = NSNumber.init(BOOLeanLiteral:)(a5);
  v17 = sub_10016A984(inited);
  swift_setDeallocating();
  sub_100261534(inited + 32);
  sub_1002586A4(v17);

  v18 = objc_allocWithZone(AVURLAsset);
  URL._bridgeToObjectiveC()(v19);
  v21 = v20;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v23 = [v18 initWithURL:v21 options:isa];

  v24 = *&v8[OBJC_IVAR____TtC8Podcasts24FairPlayAssetsDownloader_sessionLock];
  v54 = v8;
  v51 = sub_100262374;
  v52 = &v53;
  os_unfair_lock_lock(v24 + 4);
  sub_10026235C(v56);
  os_unfair_lock_unlock(v24 + 4);
  v25 = v56[0];
  v26 = String._bridgeToObjectiveC()();
  v27 = [v25 assetDownloadTaskWithURLAsset:v23 assetTitle:v26 assetArtworkData:0 options:0];

  if (v27)
  {
    if (v48)
    {
      v28 = NSURLSessionTransferSizeUnknown;
    }

    else
    {
      v28 = a6;
    }

    v29 = v27;
    [v29 setCountOfBytesClientExpectsToReceive:v28];
    v56[0] = 0;
    v56[1] = 0xE000000000000000;
    if (v49)
    {
      v30 = 1936484398;
    }

    else
    {
      v30 = 0x7261646E6174732ELL;
    }

    if (v49)
    {
      v31 = 0xE400000000000000;
    }

    else
    {
      v31 = 0xE900000000000064;
    }

    v55._countAndFlagsBits = v50;
    v55._object = a3;

    v32._countAndFlagsBits = v30;
    v32._object = v31;
    String.append(_:)(v32);

    String.append(_:)(v55);

    v33._countAndFlagsBits = 46;
    v33._object = 0xE100000000000000;
    String.append(_:)(v33);
    v55._countAndFlagsBits = [v29 taskIdentifier];
    v34._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v34);

    v35 = String._bridgeToObjectiveC()();

    [v29 setTaskDescription:v35];
  }

  else
  {
    v36 = v47;
    static Logger.downloads.getter();
    v37 = v8;
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v56[0] = v41;
      *v40 = 136315138;
      v42 = sub_100258E2C();
      v44 = sub_1000153E0(v42, v43, v56);

      *(v40 + 4) = v44;
      sub_100004590(v41);
    }

    (*(v36 + 8))(v14, v12);
    return 0;
  }

  return v27;
}

uint64_t (*sub_100259350(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  sub_100009F1C(0, &qword_10057AB20, off_1004D1A70);
  v7 = [swift_getObjCClassFromMetadata() sharedInstance];
  v8 = [v7 activeAccount];

  v9 = [objc_allocWithZone(IMAVSecureKeyLoader) initWithRecipient:a1 useCase:1 account:v8 urlProtocolDelegate:*&v3[OBJC_IVAR____TtC8Podcasts24FairPlayAssetsDownloader_urlProtocolDelegate]];
  v10 = *&v3[OBJC_IVAR____TtC8Podcasts24FairPlayAssetsDownloader_taskToKeyLoaderMap];
  os_unfair_lock_lock((v10 + 24));
  sub_100261478((v10 + 16));
  os_unfair_lock_unlock((v10 + 24));
  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = v4;
  v11[4] = a3;
  v11[5] = v9;
  v12 = a1;
  v13 = v4;
  return sub_100261494;
}

void sub_10025949C()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.downloads.getter();
  v5 = v0;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v21 = v1;
    v8 = 0xD00000000000002DLL;
    v9 = swift_slowAlloc();
    v23[0] = swift_slowAlloc();
    *v9 = 136315394;
    v10 = sub_100258E2C();
    v12 = sub_1000153E0(v10, v11, v23);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2082;
    v13 = *sub_1000044A0(&v5[OBJC_IVAR____TtC8Podcasts24FairPlayAssetsDownloader_config], *&v5[OBJC_IVAR____TtC8Podcasts24FairPlayAssetsDownloader_config + 24]);
    if (v13 > 1)
    {
      if (v13 == 2)
      {
        v14 = "ts.downloads.episodes.restore";
      }

      else
      {
        v14 = "ts.downloads.episodes.headers";
        v8 = 0xD00000000000002FLL;
      }
    }

    else if (v13)
    {
      v14 = "sodes.userInitiated";
    }

    else
    {
      v8 = 0xD000000000000033;
      v14 = "bytes";
    }

    strcpy(v22, "ConfigType: ");
    BYTE5(v22[1]) = 0;
    HIWORD(v22[1]) = -5120;
    v15._object = (v14 | 0x8000000000000000);
    v15._countAndFlagsBits = v8;
    String.append(_:)(v15);

    v16 = sub_1000153E0(v22[0], v22[1], v23);

    *(v9 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s Invalidation downloader for %{public}s", v9, 0x16u);
    swift_arrayDestroy();

    (*(v2 + 8))(v4, v21);
  }

  else
  {

    (*(v2 + 8))(v4, v1);
  }

  v17 = *&v5[OBJC_IVAR____TtC8Podcasts24FairPlayAssetsDownloader_sessionLock];
  __chkstk_darwin();
  *(&v20 - 2) = v5;
  __chkstk_darwin();
  *(&v20 - 2) = sub_10001EE60;
  *(&v20 - 1) = v18;
  os_unfair_lock_lock(v17 + 4);
  sub_10001EC1C(v22);
  os_unfair_lock_unlock(v17 + 4);
  v19 = v22[0];
  [v22[0] invalidateAndCancel];
}

double sub_100259924@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, int64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  sub_100258910(a1, a2, a3, a4 & 1, a5, a6, a7 & 1, &v13);
  v9 = v14;
  v10 = v15;
  v11 = v16;
  result = *&v13;
  *a8 = v13;
  *(a8 + 16) = v9;
  *(a8 + 24) = v10;
  *(a8 + 32) = v11;
  return result;
}

uint64_t sub_100259974(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC8Podcasts24FairPlayAssetsDownloader_backgroundCompletionHandler);
  v4 = *(v2 + OBJC_IVAR____TtC8Podcasts24FairPlayAssetsDownloader_backgroundCompletionHandler);
  v5 = *(v2 + OBJC_IVAR____TtC8Podcasts24FairPlayAssetsDownloader_backgroundCompletionHandler + 8);
  *v3 = a1;
  v3[1] = a2;
  return sub_1000112B4(v4, v5);
}

void sub_100259998(uint64_t *a1, void *a2, void *a3)
{
  v6 = *a1;
  if ((*a1 & 0xC000000000000001) == 0)
  {
    v10 = a3;
    goto LABEL_8;
  }

  if (v6 < 0)
  {
    v7 = *a1;
  }

  else
  {
    v7 = v6 & 0xFFFFFFFFFFFFFF8;
  }

  v8 = a3;
  v9 = __CocoaDictionary.count.getter();
  if (!__OFADD__(v9, 1))
  {
    *a1 = sub_10025E450(v7, v9 + 1);
LABEL_8:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *a1;
    sub_10025F088(a3, a2, isUniquelyReferenced_nonNull_native);
    *a1 = v12;
    return;
  }

  __break(1u);
}

uint64_t sub_100259A4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  sub_100009F1C(0, &qword_1005729D0, OS_dispatch_queue_ptr);
  v10 = static OS_dispatch_queue.main.getter();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = a1;
  v12[4] = a2;
  v12[5] = a5;
  v12[6] = a6;
  sub_100009F1C(0, &qword_100577208, AVURLAsset_ptr);

  v13 = a6;
  FairPlayAVAsset.fairPlayIdentifier(responseQueue:completion:)();
}

void sub_100259B80(void **a1, uint64_t a2, char a3, uint64_t a4, void (*a5)(void), uint64_t a6, void **a7, void **a8)
{
  v55 = a8;
  v56 = a1;
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v18 = &v51 - v17;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    v53 = a5;
    if (a3)
    {
      v54 = v13;
      static Logger.downloads.getter();
      v21 = v20;
      v22 = v56;
      sub_100261508(v56, a2, 1);
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.error.getter();

      sub_100261518(v22, a2, 1);
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v65 = v55;
        *v25 = 136315651;
        v26 = sub_100258E2C();
        v28 = sub_1000153E0(v26, v27, &v65);

        *(v25 + 4) = v28;
        *(v25 + 12) = 2160;
        *(v25 + 14) = 1752392040;
        *(v25 + 22) = 2081;
        aBlock = v22;
        v58 = a2;
        LOBYTE(v59) = 1;
        sub_100168088(&qword_100579BF8, &qword_100406DB8);
        Result.failure.getter();
        v63 = v64;
        sub_100168088(&unk_100579C00, &qword_100406DC0);
        v29 = String.init<A>(describing:)();
        v31 = sub_1000153E0(v29, v30, &v65);

        *(v25 + 24) = v31;
        _os_log_impl(&_mh_execute_header, v23, v24, "%s Unable to download FairPlay content without an encryption URI with error: %{private,mask.hash}s.", v25, 0x20u);
        swift_arrayDestroy();
      }

      else
      {
      }

      (*(v14 + 8))(v16, v54);
    }

    else
    {
      static Logger.downloads.getter();
      v33 = v20;
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v52 = a6;
        v37 = v36;
        aBlock = swift_slowAlloc();
        v51 = a2;
        *v37 = 136315651;
        v38 = sub_100258E2C();
        v40 = sub_1000153E0(v38, v39, &aBlock);
        v54 = v13;
        v41 = v40;

        *(v37 + 4) = v41;
        *(v37 + 12) = 2160;
        *(v37 + 14) = 1752392040;
        *(v37 + 22) = 2081;
        v65 = a7;
        v42 = dispatch thunk of CustomStringConvertible.description.getter();
        v44 = sub_1000153E0(v42, v43, &aBlock);

        *(v37 + 24) = v44;
        _os_log_impl(&_mh_execute_header, v34, v35, "%s Starting key loading process for adamID:  %{private,mask.hash}s.", v37, 0x20u);
        swift_arrayDestroy();

        a6 = v52;

        (*(v14 + 8))(v18, v54);
      }

      else
      {

        (*(v14 + 8))(v18, v13);
      }

      v45 = v33;
      v46 = String._bridgeToObjectiveC()();
      aBlock = a7;
      dispatch thunk of CustomStringConvertible.description.getter();
      v47 = String._bridgeToObjectiveC()();

      v48 = swift_allocObject();
      v48[2] = v33;
      v48[3] = a7;
      v48[4] = v53;
      v48[5] = a6;
      v61 = sub_100261528;
      v62 = v48;
      aBlock = _NSConcreteStackBlock;
      v58 = 1107296256;
      v59 = sub_10022AF0C;
      v60 = &unk_1004E7738;
      v49 = _Block_copy(&aBlock);
      v50 = v45;

      [v55 startKeyLoadingProcessWithKeyIdentifier:v46 contentAdamId:v47 isRenewal:0 completion:v49];
      _Block_release(v49);
    }
  }

  else
  {
    sub_1002614B4();
    swift_allocError();
    *v32 = 0;
    a5();
  }
}

uint64_t sub_10025A148(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  v42 = a3;
  v43 = a5;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v40 - v12;
  if (a1)
  {
    swift_errorRetain();
    static Logger.downloads.getter();
    swift_errorRetain();
    v14 = a2;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v41 = a4;
      v18 = v17;
      v45 = swift_slowAlloc();
      *v18 = 136315907;
      v19 = sub_100258E2C();
      v21 = sub_1000153E0(v19, v20, &v45);

      *(v18 + 4) = v21;
      *(v18 + 12) = 2160;
      *(v18 + 14) = 1752392040;
      *(v18 + 22) = 2081;
      v44 = v42;
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      v24 = sub_1000153E0(v22, v23, &v45);

      *(v18 + 24) = v24;
      *(v18 + 32) = 2080;
      swift_getErrorValue();
      v25 = Error.localizedDescription.getter();
      v27 = sub_1000153E0(v25, v26, &v45);

      *(v18 + 34) = v27;
      _os_log_impl(&_mh_execute_header, v15, v16, "%s Finished key loading process for adamID %{private,mask.hash}s with error %s.", v18, 0x2Au);
      swift_arrayDestroy();

      a4 = v41;
    }

    else
    {
    }

    (*(v9 + 8))(v13, v8);
  }

  else
  {
    static Logger.downloads.getter();
    v28 = a2;
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v41 = a4;
      v45 = v32;
      *v31 = 136315651;
      v33 = sub_100258E2C();
      v35 = sub_1000153E0(v33, v34, &v45);

      *(v31 + 4) = v35;
      *(v31 + 12) = 2160;
      *(v31 + 14) = 1752392040;
      *(v31 + 22) = 2081;
      v44 = v42;
      v36 = dispatch thunk of CustomStringConvertible.description.getter();
      v38 = sub_1000153E0(v36, v37, &v45);

      *(v31 + 24) = v38;
      _os_log_impl(&_mh_execute_header, v29, v30, "%s Finished key loading process for adamID  %{private,mask.hash}s.", v31, 0x20u);
      swift_arrayDestroy();
      a4 = v41;
    }

    (*(v9 + 8))(v11, v8);
  }

  return a4(a1);
}

void sub_10025A574(void *a1, uint64_t a2)
{
  v3 = v2;
  v49 = a2;
  v5 = type metadata accessor for AssetDownloadStatus(0);
  __chkstk_darwin();
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *&v2[OBJC_IVAR____TtC8Podcasts24FairPlayAssetsDownloader_taskToKeyAdamIDMap];
  v50 = a1;
  os_unfair_lock_lock((v12 + 24));
  sub_1002615E8((v12 + 16), &v51);
  os_unfair_lock_unlock((v12 + 24));
  v47 = v51;
  v48 = v52;
  if (v52 == 1)
  {
    v46 = v5;
    static Logger.downloads.getter();
    v13 = v2;
    v14 = a1;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v44 = v16;
      v45 = v8;
      v17 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v51 = v43;
      *v17 = 136315394;
      v18 = sub_100258E2C();
      v20 = sub_1000153E0(v18, v19, &v51);

      *(v17 + 4) = v20;
      *(v17 + 12) = 2082;
      v21 = [v14 taskDescription];
      if (v21)
      {
        v22 = v21;
        v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v25 = v24;
      }

      else
      {
        v25 = 0xEC0000005D646920;
        v23 = 0x6E776F6E6B6E755BLL;
      }

      v26 = sub_1000153E0(v23, v25, &v51);

      *(v17 + 14) = v26;
      _os_log_impl(&_mh_execute_header, v15, v44, "%s No corresponding adamID found for asset task %{public}s.", v17, 0x16u);
      swift_arrayDestroy();

      (*(v9 + 8))(v11, v45);
    }

    else
    {

      (*(v9 + 8))(v11, v8);
    }
  }

  v27 = *&v3[OBJC_IVAR____TtC8Podcasts24FairPlayAssetsDownloader_statusUpdateHandler];
  if (v27)
  {
    v28 = *&v3[OBJC_IVAR____TtC8Podcasts24FairPlayAssetsDownloader_statusUpdateHandler + 8];
    v53 = sub_100009F1C(0, &qword_100577200, AVAssetDownloadTask_ptr);
    v54 = &off_1004E5188;
    v51 = a1;
    v29 = *sub_1000044A0(&v3[OBJC_IVAR____TtC8Podcasts24FairPlayAssetsDownloader_config], *&v3[OBJC_IVAR____TtC8Podcasts24FairPlayAssetsDownloader_config + 24]);
    v30 = 0xD000000000000033;
    v31 = "bytes";
    v32 = "ts.downloads.episodes.restore";
    v33 = 0xD00000000000002FLL;
    if (v29 == 2)
    {
      v33 = 0xD00000000000002DLL;
    }

    else
    {
      v32 = "ts.downloads.episodes.headers";
    }

    if (v29)
    {
      v30 = 0xD00000000000002DLL;
      v31 = "sodes.userInitiated";
    }

    if (v29 <= 1)
    {
      v34 = v30;
    }

    else
    {
      v34 = v33;
    }

    if (v29 <= 1)
    {
      v35 = v31;
    }

    else
    {
      v35 = v32;
    }

    v36 = sub_100168088(&unk_100579C80, &unk_10040F740);
    v37 = &v7[v36[12]];
    v38 = v36[16];
    v39 = v36[20];
    v40 = type metadata accessor for URL();
    (*(*(v40 - 8) + 16))(v7, v49, v40);
    *v37 = v47;
    v37[8] = v48;
    v41 = a1;
    sub_100013CB4(v27, v28);
    *&v7[v38] = [v41 countOfBytesReceived];
    *&v7[v39] = 0;
    swift_storeEnumTagMultiPayload();
    v27(&v51, v34, v35 | 0x8000000000000000, 1, v7);

    sub_1000112B4(v27, v28);
    sub_100261604(v7);
    sub_100004590(&v51);
  }
}

uint64_t sub_10025AA40(void *a1, uint64_t a2)
{
  v75 = type metadata accessor for AssetDownloadStatus(0);
  __chkstk_darwin();
  v6 = (&v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v70 - v11;
  swift_getErrorValue();
  if (sub_10025B2C0(v79, v80))
  {
    static Logger.downloads.getter();
    v13 = v2;
    v14 = a1;
    swift_errorRetain();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    v17 = os_log_type_enabled(v15, v16);
    v72 = v14;
    if (v17)
    {
      v71 = v16;
      v73 = v7;
      v74 = v6;
      v18 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v76[0] = v70;
      *v18 = 136315650;
      v19 = sub_100258E2C();
      v21 = sub_1000153E0(v19, v20, v76);

      *(v18 + 4) = v21;
      *(v18 + 12) = 2082;
      v22 = [v14 taskDescription];
      if (v22)
      {
        v23 = v22;
        v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v26 = v25;
      }

      else
      {
        v24 = 0x6E776F6E6B6E755BLL;
        v26 = 0xEC0000005D646920;
      }

      v42 = sub_1000153E0(v24, v26, v76);

      *(v18 + 14) = v42;
      *(v18 + 22) = 2082;
      swift_getErrorValue();
      v43 = Error.localizedDescription.getter();
      v45 = sub_1000153E0(v43, v44, v76);

      *(v18 + 24) = v45;
      _os_log_impl(&_mh_execute_header, v15, v71, "%s Download for task %{public}s was cancelled %{public}s.", v18, 0x20u);
      swift_arrayDestroy();

      result = (*(v8 + 8))(v12, v73);
      v6 = v74;
    }

    else
    {

      result = (*(v8 + 8))(v12, v7);
    }

    v46 = *&v13[OBJC_IVAR____TtC8Podcasts24FairPlayAssetsDownloader_statusUpdateHandler];
    v47 = v72;
    if (v46)
    {
      v48 = *&v13[OBJC_IVAR____TtC8Podcasts24FairPlayAssetsDownloader_statusUpdateHandler + 8];
      v77 = sub_100009F1C(0, &qword_100577200, AVAssetDownloadTask_ptr);
      v78 = &off_1004E5188;
      v76[0] = v47;
      v49 = *sub_1000044A0(&v13[OBJC_IVAR____TtC8Podcasts24FairPlayAssetsDownloader_config], *&v13[OBJC_IVAR____TtC8Podcasts24FairPlayAssetsDownloader_config + 24]);
      v50 = 0xD000000000000033;
      v51 = "bytes";
      v52 = "ts.downloads.episodes.restore";
      v53 = 0xD00000000000002FLL;
      if (v49 == 2)
      {
        v53 = 0xD00000000000002DLL;
      }

      else
      {
        v52 = "ts.downloads.episodes.headers";
      }

      if (v49)
      {
        v50 = 0xD00000000000002DLL;
        v51 = "sodes.userInitiated";
      }

      if (v49 <= 1)
      {
        v54 = v50;
      }

      else
      {
        v54 = v53;
      }

      if (v49 <= 1)
      {
        v55 = v51;
      }

      else
      {
        v55 = v52;
      }

      swift_storeEnumTagMultiPayload();
      v56 = v47;
      sub_100013CB4(v46, v48);
      v46(v76, v54, v55 | 0x8000000000000000, 1, v6);
LABEL_40:

      sub_1000112B4(v46, v48);
      sub_100261604(v6);
      return sub_100004590(v76);
    }
  }

  else
  {
    static Logger.downloads.getter();
    v27 = v2;
    v28 = a1;
    swift_errorRetain();
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();

    v31 = os_log_type_enabled(v29, v30);
    v72 = v28;
    if (v31)
    {
      v71 = v30;
      v73 = v7;
      v74 = v6;
      v32 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v76[0] = v70;
      *v32 = 136315650;
      v33 = sub_100258E2C();
      v35 = sub_1000153E0(v33, v34, v76);

      *(v32 + 4) = v35;
      *(v32 + 12) = 2082;
      v36 = [v28 taskDescription];
      if (v36)
      {
        v37 = v36;
        v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v40 = v39;
      }

      else
      {
        v38 = 0x6E776F6E6B6E755BLL;
        v40 = 0xEC0000005D646920;
      }

      v57 = sub_1000153E0(v38, v40, v76);

      *(v32 + 14) = v57;
      *(v32 + 22) = 2082;
      swift_getErrorValue();
      v58 = Error.localizedDescription.getter();
      v60 = sub_1000153E0(v58, v59, v76);

      *(v32 + 24) = v60;
      _os_log_impl(&_mh_execute_header, v29, v71, "%s Download for task %{public}s failed with error %{public}s.", v32, 0x20u);
      swift_arrayDestroy();

      result = (*(v8 + 8))(v10, v73);
      v6 = v74;
    }

    else
    {

      result = (*(v8 + 8))(v10, v7);
    }

    v46 = *&v27[OBJC_IVAR____TtC8Podcasts24FairPlayAssetsDownloader_statusUpdateHandler];
    v61 = v72;
    if (v46)
    {
      v48 = *&v27[OBJC_IVAR____TtC8Podcasts24FairPlayAssetsDownloader_statusUpdateHandler + 8];
      v77 = sub_100009F1C(0, &qword_100577200, AVAssetDownloadTask_ptr);
      v78 = &off_1004E5188;
      v76[0] = v61;
      v62 = *sub_1000044A0(&v27[OBJC_IVAR____TtC8Podcasts24FairPlayAssetsDownloader_config], *&v27[OBJC_IVAR____TtC8Podcasts24FairPlayAssetsDownloader_config + 24]);
      v63 = 0xD000000000000033;
      v64 = "bytes";
      v65 = "ts.downloads.episodes.restore";
      v66 = 0xD00000000000002FLL;
      if (v62 == 2)
      {
        v66 = 0xD00000000000002DLL;
      }

      else
      {
        v65 = "ts.downloads.episodes.headers";
      }

      if (v62)
      {
        v63 = 0xD00000000000002DLL;
        v64 = "sodes.userInitiated";
      }

      if (v62 <= 1)
      {
        v67 = v63;
      }

      else
      {
        v67 = v66;
      }

      if (v62 <= 1)
      {
        v68 = v64;
      }

      else
      {
        v68 = v65;
      }

      *v6 = a2;
      swift_storeEnumTagMultiPayload();
      v69 = v61;
      swift_errorRetain();
      sub_100013CB4(v46, v48);
      v46(v76, v67, v68 | 0x8000000000000000, 1, v6);
      goto LABEL_40;
    }
  }

  return result;
}

void sub_10025B204(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_100202208(a2);
  v7 = v6;
  if (v6)
  {
    v8 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *a1;
    v12 = *a1;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1002601DC();
      v10 = v12;
    }

    v11 = *(*(v10 + 56) + 8 * v8);
    sub_10029264C(v8, v10);
    *a1 = v10;
  }

  else
  {
    v11 = 0;
  }

  *a3 = v11;
  *(a3 + 8) = (v7 & 1) == 0;
}

BOOL sub_10025B2C0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 - 8);
  v4 = __chkstk_darwin();
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v7, a1, v4);
  if (_getErrorEmbeddedNSError<A>(_:)())
  {
    (*(v3 + 8))(v6, a1);
  }

  else
  {
    swift_allocError();
    (*(v3 + 32))(v8, v6, a1);
  }

  v9 = _convertErrorToNSError(_:)();

  v10 = [v9 domain];
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  if (v11 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v13 == v14)
  {
  }

  else
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v16 & 1) == 0)
    {

      return 0;
    }
  }

  v18 = [v9 code];

  return v18 == -999;
}

uint64_t sub_10025B6DC(void *a1, void *a2, uint64_t a3)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v44 = *(v7 - 8);
  v45 = v7;
  __chkstk_darwin();
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for DispatchQoS();
  v41 = *(v43 - 8);
  __chkstk_darwin();
  v40 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for Logger();
  v10 = *(v39 - 8);
  __chkstk_darwin();
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (v13)
  {
    v14 = v13;
    v15 = a2;
    v16 = [v14 URLAsset];
    sub_100287278(v16, a3, a1, v14);
  }

  static Logger.downloads.getter();
  v17 = a2;
  v18 = v3;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v21 = 136315394;
    v22 = sub_100258E2C();
    v24 = sub_1000153E0(v22, v23, aBlock);

    *(v21 + 4) = v24;
    *(v21 + 12) = 2082;
    v25 = [v17 taskDescription];
    if (v25)
    {
      v26 = v25;
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v28;
    }

    else
    {
      v29 = 0xEC0000005D646920;
      v27 = 0x6E776F6E6B6E755BLL;
    }

    v30 = sub_1000153E0(v27, v29, aBlock);

    *(v21 + 14) = v30;
    _os_log_impl(&_mh_execute_header, v19, v20, "%s Download for task %{public}s successfully completed.", v21, 0x16u);
    swift_arrayDestroy();
  }

  (*(v10 + 8))(v12, v39);
  sub_100009F1C(0, &qword_1005729D0, OS_dispatch_queue_ptr);
  v31 = static OS_dispatch_queue.main.getter();
  v32 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1002615E0;
  aBlock[5] = v32;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F038;
  aBlock[3] = &unk_1004E7760;
  v33 = _Block_copy(aBlock);

  v34 = v40;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000E4AC(&qword_10057D380, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100168088(&unk_100575CD0, &unk_100400B50);
  sub_100182E30();
  v35 = v42;
  v36 = v45;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v33);

  (*(v44 + 8))(v35, v36);
  return (*(v41 + 8))(v34, v43);
}

void sub_10025BC30(uint64_t a1)
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    static Logger.fairPlay.getter();
    v7 = v6;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v21 = v11;
      *v10 = 136315138;
      v12 = sub_100258E2C();
      v14 = sub_1000153E0(v12, v13, &v21);

      *(v10 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v8, v9, "%s Calling background completion handlers.", v10, 0xCu);
      sub_100004590(v11);
    }

    (*(v2 + 8))(v4, v1);
    v15 = &v7[OBJC_IVAR____TtC8Podcasts24FairPlayAssetsDownloader_backgroundCompletionHandler];
    v16 = *&v7[OBJC_IVAR____TtC8Podcasts24FairPlayAssetsDownloader_backgroundCompletionHandler];
    if (v16)
    {
      v17 = v15[1];

      v16(v18);
      sub_1000112B4(v16, v17);
      v19 = *v15;
    }

    else
    {
      v19 = 0;
    }

    v20 = v15[1];
    *v15 = 0;
    v15[1] = 0;
    sub_1000112B4(v19, v20);
  }
}

uint64_t sub_10025BF10(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100168088(&unk_100572D70, &unk_1003FF330);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (v4)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        sub_10016B7CC((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        sub_10016BE40(v23, &v36);
        sub_10001B944(*(v5 + 56) + 32 * v22, v35);
      }

      result = AnyHashable._rawHashValue(seed:)(*(v7 + 40));
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

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      result = sub_10016B7CC(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_10025C1C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for MediaRequest.ContentType();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_100168088(&qword_1005813A0, &qword_10040F290);
  v39 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_10000E4AC(&unk_100579CA0, &type metadata accessor for MediaRequest.ContentType, &protocol conformance descriptor for MediaRequest.ContentType);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

Swift::Int sub_10025C5A4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v34 = *(type metadata accessor for DownloadJob(0) - 8);
  __chkstk_darwin();
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_100168088(&qword_100579C98, &unk_100406E30);
  v35 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v32 = v2;
    v33 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(v34 + 72);
      v23 = *(v7 + 48) + v22 * v21;
      if (v35)
      {
        sub_100262148(v23, v6, type metadata accessor for DownloadJob);
        sub_100184658((*(v7 + 56) + 40 * v21), v36);
      }

      else
      {
        sub_1002620E0(v23, v6, type metadata accessor for DownloadJob);
        sub_100004428(*(v7 + 56) + 40 * v21, v36);
      }

      Hasher.init(_seed:)();
      type metadata accessor for UUID();
      sub_10000E4AC(&unk_100577210, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      result = Hasher._finalize()();
      v24 = -1 << *(v9 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v16 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        v7 = v33;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v16 + 8 * v26);
          if (v30 != -1)
          {
            v17 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v25) & ~*(v16 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
      v7 = v33;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      sub_100262148(v6, *(v9 + 48) + v22 * v17, type metadata accessor for DownloadJob);
      result = sub_100184658(v36, *(v9 + 56) + 40 * v17);
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_34;
    }

    v31 = 1 << *(v7 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero(v11, ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v31;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

Swift::Int sub_10025C98C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100168088(&qword_100579C20, &qword_100406DD0);
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

    if (v4)
    {
      v30 = 1 << *(v5 + 32);
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

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

_OWORD *sub_10025CBF0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100168088(&unk_100579C70, &qword_100406E28);
  v35 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v2;
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
    v14 = result + 4;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = (v20 + 32 * v19);
      if (v35)
      {
        sub_10016B7CC(v22, v36);
      }

      else
      {
        sub_10001B944(v22, v36);
        v23 = v21;
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      String.hash(into:)();
      v24 = Hasher._finalize()();

      v25 = -1 << *(v7 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 6) + 8 * v15) = v21;
      result = sub_10016B7CC(v36, (*(v7 + 7) + 32 * v15));
      ++*(v7 + 2);
      v5 = v34;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v35 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

Swift::Int sub_10025CEC0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v36 = *(type metadata accessor for FairPlayDownloadsObserver.DownloadState(0) - 8);
  __chkstk_darwin();
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_100168088(&qword_100572F80, &qword_1003FF3B0);
  v37 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + 8 * v21);
      v23 = *(v36 + 72);
      v24 = *(v7 + 56) + v23 * v21;
      if (v37)
      {
        sub_100262148(v24, v6, type metadata accessor for FairPlayDownloadsObserver.DownloadState);
      }

      else
      {
        sub_1002620E0(v24, v6, type metadata accessor for FairPlayDownloadsObserver.DownloadState);
        v25 = v22;
      }

      result = NSObject._rawHashValue(seed:)(*(v9 + 40));
      v26 = -1 << *(v9 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v16 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v16 + 8 * v28);
          if (v32 != -1)
          {
            v17 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v27) & ~*(v16 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v22;
      result = sub_100262148(v6, *(v9 + 56) + v23 * v17, type metadata accessor for FairPlayDownloadsObserver.DownloadState);
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v7 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero((v7 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v33;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

Swift::Int sub_10025D208(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v45 = type metadata accessor for EpisodeDownloadState();
  v5 = *(v45 - 8);
  __chkstk_darwin();
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_100168088(&qword_100579C58, &qword_100406E10);
  v41 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v37 = v2;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v38 = (v5 + 16);
    v39 = v7;
    v40 = v5;
    v42 = (v5 + 32);
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = *(v7 + 48) + 24 * v22;
      v25 = *v24;
      v26 = *(v24 + 8);
      v27 = *(v24 + 16);
      v28 = v23 + *(v40 + 72) * v22;
      v43 = *(v40 + 72);
      if (v41)
      {
        (*v42)(v44, v28, v45);
      }

      else
      {
        (*v38)(v44, v28, v45);
        sub_1001C1A3C(v25, v26, v27);
      }

      Hasher.init(_seed:)();
      EpisodeStateIdentifier.hash(into:)();
      result = Hasher._finalize()();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = *(v9 + 48) + 24 * v17;
      *v18 = v25;
      *(v18 + 8) = v26;
      *(v18 + 16) = v27;
      result = (*v42)(*(v9 + 56) + v43 * v17, v44, v45);
      ++*(v9 + 16);
      v7 = v39;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

Swift::Int sub_10025D5C8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  sub_100168088(a3, a4);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v34 = v4;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + 8 * v21);
      v23 = *(*(v7 + 56) + 8 * v21);
      if ((v6 & 1) == 0)
      {
        v24 = v22;
        v25 = v23;
      }

      result = NSObject._rawHashValue(seed:)(*(v9 + 40));
      v26 = -1 << *(v9 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v16 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v16 + 8 * v28);
          if (v32 != -1)
          {
            v17 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v27) & ~*(v16 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v22;
      *(*(v9 + 56) + 8 * v17) = v23;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if (v6)
    {
      v33 = 1 << *(v7 + 32);
      if (v33 >= 64)
      {
        bzero((v7 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v11 = -1 << v33;
      }

      *(v7 + 16) = 0;
    }

    v5 = v34;
  }

  else
  {
  }

  *v5 = v9;
  return result;
}

Swift::Int sub_10025D83C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  sub_100168088(a3, a4);
  v37 = v6;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v36 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v37 & 1) == 0)
      {

        v27 = v26;
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v9 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v16 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v16 + 8 * v30);
          if (v34 != -1)
          {
            v17 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v29) & ~*(v16 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v36;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v35 = 1 << *(v7 + 32);
    v5 = v4;
    if (v35 >= 64)
    {
      bzero(v11, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v35;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

Swift::Int sub_10025DAD8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100168088(&qword_100579C48, &unk_100406DF0);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
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
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + v19);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v20);
      result = Hasher._finalize()();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
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

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
  return result;
}

Swift::Int sub_10025DD58(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v38 = *(type metadata accessor for EpisodeMetadata(0) - 8);
  __chkstk_darwin();
  v40 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v2;
  sub_100168088(&qword_100572D98, &unk_100406E00);
  v39 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v6 + 16))
  {
    v36 = v2;
    v37 = v6;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v21 = v18 | (v9 << 6);
      v22 = *(v6 + 56);
      v23 = (*(v6 + 48) + 16 * v21);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(v38 + 72);
      v27 = v22 + v26 * v21;
      if (v39)
      {
        sub_100262148(v27, v40, type metadata accessor for EpisodeMetadata);
      }

      else
      {
        sub_1002620E0(v27, v40, type metadata accessor for EpisodeMetadata);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v24;
      v17[1] = v25;
      result = sub_100262148(v40, *(v8 + 56) + v26 * v16, type metadata accessor for EpisodeMetadata);
      ++*(v8 + 16);
      v6 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v6 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v6 + 16) = 0;
  }

LABEL_34:
  *v3 = v8;
  return result;
}

Swift::Int sub_10025E0D0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v45 = type metadata accessor for MediaLibraryPid();
  v5 = *(v45 - 8);
  __chkstk_darwin();
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_100168088(&qword_100579C50, &qword_1003FF368);
  v42 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v38 = v2;
    v39 = (v5 + 16);
    v40 = v7;
    v41 = v5;
    v43 = (v5 + 32);
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v26 = *v24;
      v25 = v24[1];
      v27 = *(v41 + 72);
      v28 = v23 + v27 * v22;
      if (v42)
      {
        (*v43)(v44, v28, v45);
      }

      else
      {
        (*v39)(v44, v28, v45);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v26;
      v18[1] = v25;
      result = (*v43)(*(v9 + 56) + v27 * v17, v44, v45);
      ++*(v9 + 16);
      v7 = v40;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

Swift::Int sub_10025E450(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100168088(&qword_100579C10, &qword_100406DC8);
    v2 = static _DictionaryStorage.convert(_:capacity:)();
    v19 = v2;
    __CocoaDictionary.makeIterator()();
    v3 = __CocoaDictionary.Iterator.next()();
    if (v3)
    {
      v4 = v3;
      sub_100009F1C(0, &qword_1005748F0, NSURLSessionTask_ptr);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_100009F1C(0, &qword_100579C18, IMAVSecureKeyLoader_ptr);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_10025D5C8(v12 + 1, 1, &qword_100579C10, &qword_100406DC8);
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

Swift::Int sub_10025E6AC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100168088(&unk_100579CC0, &unk_100406E50);
    v2 = static _DictionaryStorage.convert(_:capacity:)();
    v19 = v2;
    __CocoaDictionary.makeIterator()();
    v3 = __CocoaDictionary.Iterator.next()();
    if (v3)
    {
      v4 = v3;
      sub_100009F1C(0, &unk_100573F30, NSManagedObjectID_ptr);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_100009F1C(0, &qword_100573AC0, MTPodcast_ptr);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_10025D5C8(v12 + 1, 1, &unk_100579CC0, &unk_100406E50);
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

_OWORD *sub_10025E908(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10000F9A8(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_10019AE6C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_10019B010(v16, a4 & 1);
    v11 = sub_10000F9A8(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    sub_100004590(v22);

    return sub_10016B7CC(a1, v22);
  }

  else
  {
    sub_10019AE00(v11, a2, a3, a1, v21);
  }
}

_OWORD *sub_10025EA58(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_100202028(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_10025FB74();
      goto LABEL_7;
    }

    sub_10025BF10(v13, a3 & 1);
    v19 = sub_100202028(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_10016BE40(a2, v21);
      return sub_10025F768(v10, v21, a1, v16);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  sub_100004590(v17);

  return sub_10016B7CC(a1, v17);
}

uint64_t sub_10025EBA4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for MediaRequest.ContentType();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_10020206C(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_10025FD18();
      goto LABEL_7;
    }

    sub_10025C1C8(v17, a3 & 1);
    v22 = sub_10020206C(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_10025F7E4(v14, v11, a1, v20);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

uint64_t sub_10025ED70(__int128 *a1, uint64_t a2, char a3)
{
  v4 = v3;
  type metadata accessor for DownloadJob(0);
  __chkstk_darwin();
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  v12 = sub_100202104(a2);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a3 & 1) == 0)
  {
    if (v17 >= v15 && (a3 & 1) == 0)
    {
      sub_10025FF98();
      goto LABEL_7;
    }

    sub_10025C5A4(v15, a3 & 1);
    v21 = sub_100202104(a2);
    if ((v16 & 1) == (v22 & 1))
    {
      v12 = v21;
      v18 = *v4;
      if (v16)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1002620E0(a2, v9, type metadata accessor for DownloadJob);
      return sub_10025F89C(v12, v9, a1, v18);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v4;
  if ((v16 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v19 = (v18[7] + 40 * v12);
  sub_100004590(v19);

  return sub_100184658(a1, v19);
}

unint64_t sub_10025EF24(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  result = sub_100202208(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_10025C98C(v13, a3 & 1);
      result = sub_100202208(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_16:
        sub_100009F1C(0, &qword_100577200, AVAssetDownloadTask_ptr);
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = result;
      sub_1002601DC();
      result = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * result) = a1;
    return result;
  }

  v18[(result >> 6) + 8] |= 1 << result;
  *(v18[6] + 8 * result) = a2;
  *(v18[7] + 8 * result) = a1;
  v19 = v18[2];
  v12 = __OFADD__(v19, 1);
  v20 = v19 + 1;
  if (v12)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v18[2] = v20;

  return a2;
}

void sub_10025F088(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_100202258(a2);
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
      sub_10025D5C8(v13, a3 & 1, &qword_100579C10, &qword_100406DC8);
      v8 = sub_100202258(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        sub_100009F1C(0, &qword_1005748F0, NSURLSessionTask_ptr);
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v16 = v8;
      sub_1002609A4(&qword_100579C10, &qword_100406DC8);
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    v19 = v18[7];
    v20 = *(v19 + 8 * v8);
    *(v19 + 8 * v8) = a1;

    return;
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v21 = v18[2];
  v12 = __OFADD__(v21, 1);
  v22 = v21 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v22;

  v23 = a2;
}

_OWORD *sub_10025F224(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_100202D0C();
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_100260338();
      v8 = v16;
      goto LABEL_8;
    }

    sub_10025CBF0(v13, a3 & 1);
    v8 = sub_100202D0C();
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for OpenURLOptionsKey(0);
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = (v18[7] + 32 * v8);
    sub_100004590(v19);

    return sub_10016B7CC(a1, v19);
  }

  else
  {
    sub_10025F95C(v8, a2, a1, v18);

    return a2;
  }
}

id sub_10025F364(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v9 = sub_1002021B8(a2);
  v10 = v7[2];
  v11 = (v8 & 1) == 0;
  v12 = v10 + v11;
  if (__OFADD__(v10, v11))
  {
    __break(1u);
    goto LABEL_15;
  }

  v13 = v8;
  v14 = v7[3];
  if (v14 >= v12 && (a3 & 1) != 0)
  {
LABEL_7:
    v15 = *v4;
    if (v13)
    {
LABEL_8:
      v16 = v15[7];
      v17 = type metadata accessor for FairPlayDownloadsObserver.DownloadState(0);
      return sub_100261660(a1, v16 + *(*(v17 - 8) + 72) * v9, type metadata accessor for FairPlayDownloadsObserver.DownloadState);
    }

    goto LABEL_11;
  }

  if (v14 >= v12 && (a3 & 1) == 0)
  {
    sub_1002604B8();
    goto LABEL_7;
  }

  sub_10025CEC0(v12, a3 & 1);
  v19 = sub_1002021B8(a2);
  if ((v13 & 1) != (v20 & 1))
  {
LABEL_15:
    sub_100009F1C(0, &qword_100577208, AVURLAsset_ptr);
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v9 = v19;
  v15 = *v4;
  if (v13)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_10025F9C4(v9, a2, a1, v15);

  return a2;
}

unint64_t sub_10025F4D0(char a1, char a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = a2 & 1;
  result = sub_100202384(a2 & 1);
  v11 = *(v7 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v7 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_100260C64();
    result = v17;
    goto LABEL_8;
  }

  sub_10025DAD8(v14, a3 & 1);
  result = sub_100202384(v8);
  if ((v15 & 1) == (v18 & 1))
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      *(v19[7] + result) = a1 & 1;
      return result;
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + result) = v8;
    *(v19[7] + result) = a1 & 1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10025F5FC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_10000F9A8(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for EpisodeMetadata(0);
      return sub_100261660(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for EpisodeMetadata);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_100260F30();
    goto LABEL_7;
  }

  sub_10025DD58(v15, a4 & 1);
  v22 = sub_10000F9A8(a2, a3);
  if ((v16 & 1) != (v23 & 1))
  {
LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v12 = v22;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_10025FAB4(v12, a2, a3, a1, v18);
}

_OWORD *sub_10025F768(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_10016B7CC(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

uint64_t sub_10025F7E4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for MediaRequest.ContentType();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_10025F89C(unint64_t a1, uint64_t a2, __int128 *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for DownloadJob(0);
  sub_100262148(a2, v8 + *(*(v9 - 8) + 72) * a1, type metadata accessor for DownloadJob);
  result = sub_100184658(a3, a4[7] + 40 * a1);
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

_OWORD *sub_10025F95C(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_10016B7CC(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_10025F9C4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = type metadata accessor for FairPlayDownloadsObserver.DownloadState(0);
  result = sub_100262148(a3, v7 + *(*(v8 - 8) + 72) * a1, type metadata accessor for FairPlayDownloadsObserver.DownloadState);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

unint64_t sub_10025FA6C(unint64_t result, char a2, char a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2 & 1;
  *(a4[7] + result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t sub_10025FAB4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for EpisodeMetadata(0);
  result = sub_100262148(a4, v9 + *(*(v10 - 8) + 72) * a1, type metadata accessor for EpisodeMetadata);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

void *sub_10025FB74()
{
  v1 = v0;
  sub_100168088(&unk_100572D70, &unk_1003FF330);
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
        v18 = 40 * v17;
        sub_10016BE40(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_10001B944(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_10016B7CC(v22, (*(v4 + 56) + v17));
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

char *sub_10025FD18()
{
  v1 = v0;
  v33 = type metadata accessor for MediaRequest.ContentType();
  v35 = *(v33 - 8);
  __chkstk_darwin();
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&qword_1005813A0, &qword_10040F290);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;

        v13 = v36;
      }

      while (v36);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_10025FF98()
{
  v1 = v0;
  v23 = *(type metadata accessor for DownloadJob(0) - 8);
  __chkstk_darwin();
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&qword_100579C98, &unk_100406E30);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v22 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = *(v23 + 72) * v19;
        sub_1002620E0(*(v4 + 48) + v20, v3, type metadata accessor for DownloadJob);
        v19 *= 40;
        sub_100004428(*(v4 + 56) + v19, v24);
        sub_100262148(v3, *(v6 + 48) + v20, type metadata accessor for DownloadJob);
        result = sub_100184658(v24, *(v6 + 56) + v19);
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v18 = *(v8 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

id sub_1002601DC()
{
  v1 = v0;
  sub_100168088(&qword_100579C20, &qword_100406DD0);
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
        result = v18;
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

id sub_100260338()
{
  v1 = v0;
  sub_100168088(&unk_100579C70, &qword_100406E28);
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
        sub_10001B944(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_10016B7CC(v19, (*(v4 + 56) + 32 * v17));
        result = v18;
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

id sub_1002604B8()
{
  v1 = v0;
  v26 = *(type metadata accessor for FairPlayDownloadsObserver.DownloadState(0) - 8);
  __chkstk_darwin();
  v25 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&qword_100572F80, &qword_1003FF3B0);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v24 = v1;
    result = (v4 + 64);
    v7 = v3 + 64;
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v7 + 8 * v8)
    {
      result = memmove(result, (v3 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v27 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = *(v3 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_14:
        v19 = v16 | (v9 << 6);
        v20 = *(*(v3 + 48) + 8 * v19);
        v21 = v25;
        v22 = *(v26 + 72) * v19;
        sub_1002620E0(*(v3 + 56) + v22, v25, type metadata accessor for FairPlayDownloadsObserver.DownloadState);
        v23 = v27;
        *(*(v27 + 48) + 8 * v19) = v20;
        sub_100262148(v21, *(v23 + 56) + v22, type metadata accessor for FairPlayDownloadsObserver.DownloadState);
        result = v20;
      }

      while (v14);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v15)
      {

        v1 = v24;
        v5 = v27;
        goto LABEL_18;
      }

      v18 = *(v7 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

char *sub_1002606F4()
{
  v1 = v0;
  v39 = type metadata accessor for EpisodeDownloadState();
  v41 = *(v39 - 8);
  __chkstk_darwin();
  v38 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&qword_100579C58, &qword_100406E10);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v33 = v1;
    v34 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v40 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v35 = v41 + 32;
    v36 = v41 + 16;
    v37 = v3;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v42 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = 24 * v18;
        v20 = *(v3 + 56);
        v21 = *(v3 + 48) + 24 * v18;
        v22 = *v21;
        v23 = *(v21 + 8);
        v24 = *(v21 + 16);
        v25 = v41;
        v26 = *(v41 + 72) * v18;
        v28 = v38;
        v27 = v39;
        (*(v41 + 16))(v38, v20 + v26, v39);
        v29 = v40;
        v30 = *(v40 + 48) + v19;
        *v30 = v22;
        *(v30 + 8) = v23;
        *(v30 + 16) = v24;
        v31 = *(v29 + 56);
        v32 = *(v25 + 32);
        v3 = v37;
        v32(v31 + v26, v28, v27);
        result = sub_1001C1A3C(v22, v23, v24);
        v13 = v42;
      }

      while (v42);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v33;
        v5 = v40;
        goto LABEL_18;
      }

      v17 = *(v34 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v42 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

id sub_1002609A4(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_100168088(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        v21 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        *(*(v6 + 56) + 8 * v19) = v21;
        v22 = v20;
        result = v21;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

id sub_100260B08(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_100168088(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;

        result = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_100260C64()
{
  v1 = v0;
  sub_100168088(&qword_100579C48, &unk_100406DF0);
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + v14);
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_100260DB0()
{
  v1 = v0;
  sub_100168088(&qword_100572F50, &qword_1003FF390);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + v17);
        v22 = (*(v4 + 48) + v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + v17) = v21;

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

void *sub_100260F30()
{
  v1 = v0;
  v32 = *(type metadata accessor for EpisodeMetadata(0) - 8);
  __chkstk_darwin();
  v31 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&qword_100572D98, &unk_100406E00);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v30 = v1;
    result = (v4 + 64);
    v7 = v3 + 64;
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v7 + 8 * v8)
    {
      result = memmove(result, (v3 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v33 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = 16 * v18;
        v20 = *(v3 + 56);
        v21 = (*(v3 + 48) + 16 * v18);
        v22 = v3;
        v23 = *v21;
        v24 = v21[1];
        v25 = v31;
        v26 = *(v32 + 72) * v18;
        sub_1002620E0(v20 + v26, v31, type metadata accessor for EpisodeMetadata);
        v27 = v33;
        v28 = (*(v33 + 48) + v19);
        *v28 = v23;
        v28[1] = v24;
        v3 = v22;
        sub_100262148(v25, *(v27 + 56) + v26, type metadata accessor for EpisodeMetadata);

        v13 = v34;
      }

      while (v34);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v30;
        v5 = v33;
        goto LABEL_18;
      }

      v17 = *(v7 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

char *sub_100261190()
{
  v1 = v0;
  v35 = type metadata accessor for MediaLibraryPid();
  v37 = *(v35 - 8);
  __chkstk_darwin();
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&qword_100579C50, &qword_1003FF368);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v36 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v38 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = 16 * v18;
        v20 = (*(v3 + 48) + 16 * v18);
        v21 = *v20;
        v22 = v20[1];
        v23 = v37;
        v24 = *(v37 + 72) * v18;
        v25 = v34;
        v26 = v35;
        (*(v37 + 16))(v34, *(v3 + 56) + v24, v35);
        v27 = v36;
        v28 = (*(v36 + 48) + v19);
        *v28 = v21;
        v28[1] = v22;
        (*(v23 + 32))(*(v27 + 56) + v24, v25, v26);

        v13 = v38;
      }

      while (v38);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v30;
        v5 = v36;
        goto LABEL_18;
      }

      v17 = *(v31 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

unint64_t sub_100261410(uint64_t *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *a1;
  result = sub_10025EF24(v4, v3, isUniquelyReferenced_nonNull_native);
  *a1 = v7;
  return result;
}

unint64_t sub_1002614B4()
{
  result = qword_100579BF0;
  if (!qword_100579BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100579BF0);
  }

  return result;
}

uint64_t sub_100261508(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return swift_errorRetain();
  }

  else
  {
  }
}

uint64_t sub_100261518(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_100261534(uint64_t a1)
{
  v2 = sub_100168088(&unk_100579C38, &unk_100406DE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_10026159C@<X0>(void *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

uint64_t sub_100261604(uint64_t a1)
{
  v2 = type metadata accessor for AssetDownloadStatus(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100261660(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

void sub_1002616C8(void *a1, unint64_t a2, CMTimeValue *a3)
{
  v4 = v3;
  v102 = a1;
  v100 = type metadata accessor for AssetDownloadStatus(0);
  __chkstk_darwin();
  v101 = (&v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v93 - v12;
  __chkstk_darwin();
  v15 = &v93 - v14;
  v16 = a3[5];
  time.value = a3[3];
  *&time.timescale = a3[4];
  time.epoch = v16;
  time.value = CMTimeGetSeconds(&time);
  sub_1001D4F04();
  v17 = BinaryFloatingPoint.safeInt64.getter();
  if (v18)
  {
    v19 = v9;
    static Logger.downloads.getter();
    v20 = v3;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      time.value = swift_slowAlloc();
      *v23 = 136315651;
      v24 = sub_100258E2C();
      v26 = sub_1000153E0(v24, v25, &time.value);

      *(v23 + 4) = v26;
      *(v23 + 12) = 2160;
      *(v23 + 14) = 1752392040;
      *(v23 + 22) = 2081;
      v27 = Double.description.getter();
      v29 = sub_1000153E0(v27, v28, &time.value);

      *(v23 + 24) = v29;
      _os_log_impl(&_mh_execute_header, v21, v22, "%s Unable to convert duration=%{private,mask.hash}s to Int64.", v23, 0x20u);
      swift_arrayDestroy();
    }

    (*(v19 + 8))(v11, v8);
    return;
  }

  v30 = v17;
  v31 = [objc_opt_self() progressWithTotalUnitCount:v17];
  if (a2 >> 62)
  {
    v91 = v15;
    v92 = v31;
    v32 = _CocoaArrayWrapper.endIndex.getter();
    v31 = v92;
    v15 = v91;
  }

  else
  {
    v32 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v98 = v9;
  v99 = v8;
  v96 = v30;
  v97 = v15;
  if (v32)
  {
    if (v32 < 1)
    {
      __break(1u);
      goto LABEL_45;
    }

    v33 = v31;
    v34 = 0;
    v35 = 0.0;
    do
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v36 = *(a2 + 8 * v34 + 32);
      }

      v37 = v36;
      ++v34;
      [v36 CMTimeRangeValue];
      time = v106;
      Seconds = CMTimeGetSeconds(&time);

      v35 = v35 + Seconds;
    }

    while (v32 != v34);
  }

  else
  {
    v33 = v31;
    v35 = 0.0;
  }

  *&time.value = v35;
  v39 = BinaryFloatingPoint.safeInt64.getter();
  if ((v40 & 1) == 0)
  {
    v51 = v33;
    [v33 setCompletedUnitCount:v39];
    v52 = String._bridgeToObjectiveC()();
    v53 = String._bridgeToObjectiveC()();
    [v33 setUserInfoObject:v52 forKey:v53];

    v54 = *sub_1000044A0(&v4[OBJC_IVAR____TtC8Podcasts24FairPlayAssetsDownloader_config], *&v4[OBJC_IVAR____TtC8Podcasts24FairPlayAssetsDownloader_config + 24]);
    v55 = 0xD000000000000033;
    v56 = "bytes";
    v57 = "ts.downloads.episodes.restore";
    v58 = 0xD00000000000002FLL;
    if (v54 == 2)
    {
      v58 = 0xD00000000000002DLL;
    }

    else
    {
      v57 = "ts.downloads.episodes.headers";
    }

    if (v54)
    {
      v55 = 0xD00000000000002DLL;
      v56 = "sodes.userInitiated";
    }

    if (v54 <= 1)
    {
      v59 = v55;
    }

    else
    {
      v59 = v58;
    }

    if (v54 <= 1)
    {
      v60 = v56;
    }

    else
    {
      v60 = v57;
    }

    v61 = (v60 | 0x8000000000000000);
    v62 = v97;
    static Logger.downloads.getter();
    v63 = v102;
    v64 = v4;

    v65 = v51;
    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v66, v67))
    {
      v94 = v67;
      v68 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      v104 = v93;
      *v68 = 136315906;
      v95 = v64;
      v69 = sub_100258E2C();
      v71 = sub_1000153E0(v69, v70, &v104);

      *(v68 + 4) = v71;
      *(v68 + 12) = 2048;
      v72 = [v63 taskIdentifier];

      *(v68 + 14) = v72;
      *(v68 + 22) = 2082;
      time.value = 0x496E6F6973736553;
      *&time.timescale = 0xEB00000000203A44;
      v103._countAndFlagsBits = v59;
      v103._object = v61;
      swift_bridgeObjectRetain_n();
      v73._countAndFlagsBits = 1936484398;
      v73._object = 0xE400000000000000;
      String.append(_:)(v73);
      String.append(_:)(v103);

      v74 = sub_1000153E0(time.value, *&time.timescale, &v104);

      *(v68 + 24) = v74;
      *(v68 + 32) = 2082;
      v102 = v65;
      v75 = [v65 localizedAdditionalDescription];
      if (v75)
      {
        v76 = v75;
        v77 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v79 = v78;
      }

      else
      {
        v77 = 0;
        v79 = 0;
      }

      v80 = v98;
      time.value = v77;
      *&time.timescale = v79;
      sub_100168088(&qword_100574230, &qword_100401FE0);
      v81 = String.init<A>(describing:)();
      v83 = sub_1000153E0(v81, v82, &v104);

      *(v68 + 34) = v83;
      _os_log_impl(&_mh_execute_header, v66, v94, "%s Progress update for task %ld %{public}s: %{public}s.", v68, 0x2Au);
      swift_arrayDestroy();

      (*(v80 + 8))(v62, v99);
      v65 = v102;
      v64 = v95;
    }

    else
    {

      (*(v98 + 8))(v62, v99);
    }

    v84 = &v64[OBJC_IVAR____TtC8Podcasts24FairPlayAssetsDownloader_statusUpdateHandler];
    v85 = *&v64[OBJC_IVAR____TtC8Podcasts24FairPlayAssetsDownloader_statusUpdateHandler];
    if (!v85)
    {

      return;
    }

    v86 = *(v84 + 1);
    v106.value = sub_100009F1C(0, &qword_100577200, AVAssetDownloadTask_ptr);
    *&v106.timescale = &off_1004E5188;
    time.value = v63;
    if ((*&v35 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v35 > -9.22337204e18)
      {
        if (v35 < 9.22337204e18)
        {
          v87 = v101;
          v88 = v96;
          *v101 = v65;
          *(v87 + 8) = v88;
          *(v87 + 16) = v35;
          swift_storeEnumTagMultiPayload();
          v89 = v63;
          v90 = v65;
          sub_100013CB4(v85, v86);
          v85(&time, v59, v61, 1, v87);
          sub_1000112B4(v85, v86);

          sub_100261604(v87);
          sub_100004590(&time);
          return;
        }

        goto LABEL_47;
      }

LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      return;
    }

LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  static Logger.downloads.getter();
  v41 = v4;
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    time.value = swift_slowAlloc();
    *v44 = 136315651;
    v45 = sub_100258E2C();
    v47 = sub_1000153E0(v45, v46, &time.value);

    *(v44 + 4) = v47;
    *(v44 + 12) = 2160;
    *(v44 + 14) = 1752392040;
    *(v44 + 22) = 2081;
    v48 = Double.description.getter();
    v50 = sub_1000153E0(v48, v49, &time.value);

    *(v44 + 24) = v50;
    _os_log_impl(&_mh_execute_header, v42, v43, "%s Unable to convert timeLoaded=%{private,mask.hash}s to Int64.", v44, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }

  (*(v98 + 8))(v13, v99);
}

uint64_t sub_1002620E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100262148(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t getEnumTagSinglePayload for BaseOperation.State(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for BaseOperation.State(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100262304()
{
  result = qword_100579CD0;
  if (!qword_100579CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100579CD0);
  }

  return result;
}

uint64_t sub_100262390@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for PlaybackRateHelper();
  *(a2 + 40) = static PlaybackRateHelper.extendedSupportedRates.getter();
  State.init(wrappedValue:)();
  v4 = *(&v24[0] + 1);
  *(a2 + 128) = v24[0];
  *(a2 + 136) = v4;
  v5 = type metadata accessor for ShowSettingsView(0);
  v6 = v5[8];
  *(a2 + v6) = swift_getKeyPath();
  sub_100168088(&qword_100577830, &qword_100406F60);
  swift_storeEnumTagMultiPayload();
  v7 = v5[9];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = objc_opt_self();
  v9 = [v8 _applePodcastsFoundationSharedUserDefaults];
  *(a2 + v7) = AppStorage.init<A>(wrappedValue:_:store:)();
  v10 = v5[10];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = [v8 _applePodcastsFoundationSharedUserDefaults];
  *(a2 + v10) = AppStorage.init<A>(wrappedValue:_:store:)();
  v12 = v5[11];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = MTPodcastHidesPlayedEpisodesAppWideUserDefaults();
  *(a2 + v12) = AppStorage.init<A>(wrappedValue:_:store:)();
  v14 = v5[12];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = [v8 _applePodcastsFoundationSettingsUserDefaults];
  *(a2 + v14) = AppStorage.init<A>(wrappedValue:_:store:)();
  sub_100004428(a1, a2);
  sub_1000044A0(a1, a1[3]);
  sub_1002AC67C(v24);
  v16 = v24[3];
  *(a2 + 80) = v24[2];
  *(a2 + 96) = v16;
  v17 = v25;
  v18 = v24[1];
  *(a2 + 48) = v24[0];
  *(a2 + 64) = v18;
  *(a2 + 112) = v17;
  *(a2 + 120) = 0;
  v19 = sub_1000044A0(a1, a1[3]);
  v21 = *v19;
  v20 = v19[1];
  v22 = (a2 + v5[13]);
  *v22 = v21;
  v22[1] = v20;

  return sub_100004590(a1);
}

uint64_t type metadata accessor for ShowSettingsView(uint64_t a1)
{
  result = qword_100579DA0;
  if (!qword_100579DA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10026265C@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  v3 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v67 = *(v3 - 8);
  v68 = v3;
  __chkstk_darwin();
  v66 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = *(type metadata accessor for ShowSettingsView(0) - 8);
  v70 = *(v56 + 64);
  __chkstk_darwin();
  v71 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for NavigationLinkPickerStyle();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100168088(&qword_100579E50, &qword_100407010);
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v52 - v12;
  v55 = sub_100168088(&qword_100579E48, &qword_100407008);
  v58 = *(v55 - 8);
  __chkstk_darwin();
  v52 = &v52 - v14;
  v15 = sub_100168088(&qword_100579E40, &qword_100407000);
  v16 = *(v15 - 8);
  v60 = v15;
  v61 = v16;
  __chkstk_darwin();
  v54 = &v52 - v17;
  v18 = sub_100168088(&qword_100579E38, &qword_100406FF8);
  v19 = *(v18 - 8);
  v62 = v18;
  v63 = v19;
  __chkstk_darwin();
  v57 = &v52 - v20;
  v21 = sub_100168088(&qword_100579E30, &qword_100406FF0);
  v22 = *(v21 - 8);
  v64 = v21;
  v65 = v22;
  __chkstk_darwin();
  v59 = &v52 - v23;
  v72 = a1;
  sub_100168088(&qword_100579E68, &qword_100407018);
  sub_1002644C8();
  Form.init(content:)();
  NavigationLinkPickerStyle.init()();
  v24 = sub_100009FAC(&qword_100579E58, &qword_100579E50, &qword_100407010, &protocol conformance descriptor for Form<A>);
  View.pickerStyle<A>(_:)();
  (*(v7 + 8))(v9, v6);
  (*(v11 + 8))(v13, v10);
  v25 = a1[6];
  v75 = a1[5];
  v76 = v25;
  v77 = a1[7];
  v26 = a1[4];
  v73 = a1[3];
  v74 = v26;
  sub_100168088(&qword_1005777B0, &qword_100407030);
  State.wrappedValue.getter();
  v75 = v78[2];
  v76 = v78[3];
  LOBYTE(v77) = v79;
  v73 = v78[0];
  v74 = v78[1];
  v27 = v71;
  sub_10020DCB0(a1, v71);
  v56 = *(v56 + 80);
  v28 = (v56 + 16) & ~v56;
  v53 = v28;
  v29 = swift_allocObject();
  sub_10020DD14(v27, v29 + v28);
  *&v80 = v10;
  *(&v80 + 1) = v6;
  *&v81 = v24;
  *(&v81 + 1) = &protocol witness table for NavigationLinkPickerStyle;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v31 = sub_10026446C();
  v33 = v54;
  v32 = v55;
  v34 = v52;
  View.onChange<A>(of:initial:_:)();

  v82 = v75;
  v83 = v76;
  v84 = v77;
  v80 = v73;
  v81 = v74;
  sub_10020DB40(&v80);
  (*(v58 + 8))(v34, v32);
  v35 = a1[6];
  v75 = a1[5];
  v76 = v35;
  v77 = a1[7];
  v36 = a1[4];
  v73 = a1[3];
  v74 = v36;
  State.wrappedValue.getter();
  *&v73 = v32;
  *(&v73 + 1) = &type metadata for ShowSettingsModel;
  *&v74 = OpaqueTypeConformance2;
  *(&v74 + 1) = v31;
  v37 = swift_getOpaqueTypeConformance2();
  v38 = sub_10019FA64();
  v39 = v57;
  v40 = v60;
  View.navigationTitle<A>(_:)();

  (*(v61 + 8))(v33, v40);
  v41 = v66;
  v42 = v67;
  v43 = v68;
  (*(v67 + 104))(v66, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v68);
  *&v73 = v40;
  *(&v73 + 1) = &type metadata for String;
  *&v74 = v37;
  *(&v74 + 1) = v38;
  v44 = swift_getOpaqueTypeConformance2();
  v45 = v59;
  v46 = v62;
  View.navigationBarTitleDisplayMode(_:)();
  (*(v42 + 8))(v41, v43);
  (*(v63 + 8))(v39, v46);
  v47 = v71;
  sub_10020DCB0(a1, v71);
  v48 = v53;
  v49 = swift_allocObject();
  sub_10020DD14(v47, v49 + v48);
  *&v73 = v46;
  *(&v73 + 1) = v44;
  swift_getOpaqueTypeConformance2();
  v50 = v64;
  View.modalCloseButton(active:dismiss:)();

  return (*(v65 + 8))(v45, v50);
}

uint64_t sub_100262F0C(_OWORD *a1)
{
  sub_100168088(&qword_100579E98, &qword_100407038);
  __chkstk_darwin();
  v3 = &v12[-v2];
  sub_100168088(&qword_100579E80, &qword_100407020);
  __chkstk_darwin();
  v5 = &v12[-v4];
  v6 = a1[6];
  v19 = a1[5];
  v20 = v6;
  v21 = a1[7];
  v7 = a1[4];
  v17 = a1[3];
  v18 = v7;
  sub_100168088(&qword_1005777B0, &qword_100407030);
  State.wrappedValue.getter();
  v24 = v14;
  v25 = v15;
  v26 = v16;
  v22 = *&v12[8];
  v23 = v13;
  sub_10020DB40(&v22);
  if (BYTE1(v23) == 1)
  {
    sub_100263520(a1, v5);
    sub_100010430(v5, v3, &qword_100579E80, &qword_100407020);
    swift_storeEnumTagMultiPayload();
    sub_100264554();
    _ConditionalContent<>.init(storage:)();
    return sub_100009104(v5, &qword_100579E80, &qword_100407020);
  }

  else
  {
    LocalizedStringKey.init(stringLiteral:)();
    *v3 = Text.init(_:tableName:bundle:comment:)();
    *(v3 + 1) = v9;
    v3[16] = v10 & 1;
    *(v3 + 3) = v11;
    swift_storeEnumTagMultiPayload();
    sub_100264554();
    return _ConditionalContent<>.init(storage:)();
  }
}

uint64_t sub_10026318C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 48);
  v18[2] = *(a2 + 32);
  v18[3] = v4;
  v19 = *(a2 + 64);
  v5 = *(a2 + 16);
  v18[0] = *a2;
  v18[1] = v5;
  v6 = sub_1000044A0(a3, *(a3 + 24));
  sub_1002ABF50(v18, *v6, v6[1], v6[2], v6[3], v12);
  v7 = *(a3 + 64);
  v8 = *(a3 + 96);
  v21 = *(a3 + 80);
  v22 = v8;
  v9 = *(a3 + 96);
  v23 = *(a3 + 112);
  v10 = *(a3 + 64);
  v20[0] = *(a3 + 48);
  v20[1] = v10;
  v15 = v21;
  v16 = v9;
  v17 = *(a3 + 112);
  v13 = v20[0];
  v14 = v7;
  sub_100010430(v20, v24, &qword_1005777B0, &qword_100407030);
  sub_100168088(&qword_1005777B0, &qword_100407030);
  State.wrappedValue.setter();
  v24[2] = v15;
  v24[3] = v16;
  v24[4] = v17;
  v24[0] = v13;
  v24[1] = v14;
  return sub_100009104(v24, &qword_1005777B0, &qword_100407030);
}

uint64_t sub_100263298(uint64_t a1)
{
  v16 = type metadata accessor for EnvironmentValues();
  v2 = *(v16 - 8);
  __chkstk_darwin();
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&qword_100577830, &qword_100406F60);
  __chkstk_darwin();
  v6 = &v15 - v5;
  v7 = type metadata accessor for DismissAction();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ShowSettingsView(0);
  sub_100010430(a1 + *(v11 + 32), v6, &qword_100577830, &qword_100406F60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v8 + 32))(v10, v6, v7);
  }

  else
  {
    v12 = static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v12, &_mh_execute_header, v13, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v16);
  }

  DismissAction.callAsFunction()();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_100263520@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  sub_100168088(&qword_100579EA0, &qword_100407040);
  __chkstk_darwin();
  v59 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v67 = &v55 - v4;
  v72 = sub_100168088(&qword_100579EA8, &qword_100407048);
  v73 = *(v72 - 8);
  __chkstk_darwin();
  v68 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v65 = &v55 - v6;
  v58 = sub_100168088(&qword_100579EB0, &qword_100407050);
  __chkstk_darwin();
  v8 = &v55 - v7;
  v69 = sub_100168088(&qword_100579EB8, &qword_100407058);
  v71 = *(v69 - 8);
  __chkstk_darwin();
  v64 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v61 = &v55 - v10;
  v63 = sub_100168088(&qword_100579EC0, &qword_100407060);
  v70 = *(v63 - 8);
  __chkstk_darwin();
  v74 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v55 - v12;
  sub_100168088(&qword_100579EC8, &qword_100407068);
  __chkstk_darwin();
  v62 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v66 = &v55 - v15;
  sub_100324114();
  v77 = a1;
  LocalizedStringKey.init(stringLiteral:)();
  v82 = Text.init(_:tableName:bundle:comment:)();
  v83 = v16;
  v84 = v17 & 1;
  v85 = v18;
  sub_100168088(&qword_100579ED0, &unk_100407070);
  v19 = sub_100168310(&qword_100577840, &qword_100404B78);
  v20 = type metadata accessor for InlinePickerStyle();
  v21 = sub_100009FAC(&qword_100577858, &qword_100577840, &qword_100404B78, &protocol conformance descriptor for Picker<A, B, C>);
  v78 = v19;
  v79 = v20;
  v80 = v21;
  v81 = &protocol witness table for InlinePickerStyle;
  swift_getOpaqueTypeConformance2();
  v22 = v13;
  v57 = v13;
  Section<>.init(header:content:)();
  v76 = a1;
  LocalizedStringKey.init(stringLiteral:)();
  v82 = Text.init(_:tableName:bundle:comment:)();
  v83 = v23;
  v84 = v24 & 1;
  v85 = v25;
  sub_10020CEC8(a1, v8);
  sub_100168088(&qword_100579ED8, &unk_100407080);
  sub_100009FAC(&qword_100579EE0, &qword_100579ED8, &unk_100407080, &protocol conformance descriptor for Picker<A, B, C>);
  sub_1002646F4();
  v26 = v61;
  Section<>.init(header:footer:content:)();
  v75 = a1;
  LocalizedStringKey.init(stringLiteral:)();
  v82 = Text.init(_:tableName:bundle:comment:)();
  v83 = v27;
  v84 = v28 & 1;
  v85 = v29;
  v78 = sub_100373EE0();
  v79 = v30;
  sub_10019FA64();
  v78 = Text.init<A>(_:)();
  v79 = v31;
  LOBYTE(v80) = v32 & 1;
  v81 = v33;
  sub_100168088(&qword_100579EF8, &qword_100407098);
  sub_100009FAC(&qword_100579F00, &qword_100579EF8, &qword_100407098, &protocol conformance descriptor for TupleView<A>);
  v34 = v65;
  Section<>.init(header:footer:content:)();
  v35 = v67;
  sub_1002AF098(a1, v67);
  v36 = v62;
  sub_100010430(v66, v62, &qword_100579EC8, &qword_100407068);
  v58 = *(v70 + 16);
  v37 = v22;
  v38 = v63;
  v58(v74, v37, v63);
  v56 = *(v71 + 16);
  v39 = v64;
  v56(v64, v26, v69);
  v40 = *(v73 + 16);
  v41 = v68;
  v40(v68, v34, v72);
  v42 = v59;
  sub_100010430(v35, v59, &qword_100579EA0, &qword_100407040);
  v43 = v60;
  sub_100010430(v36, v60, &qword_100579EC8, &qword_100407068);
  v44 = sub_100168088(&qword_100579F08, &qword_1004070A0);
  v58((v43 + v44[12]), v74, v38);
  v45 = v39;
  v46 = v69;
  v56((v43 + v44[16]), v45, v69);
  v47 = v72;
  v40((v43 + v44[20]), v41, v72);
  sub_100010430(v42, v43 + v44[24], &qword_100579EA0, &qword_100407040);
  sub_100009104(v67, &qword_100579EA0, &qword_100407040);
  v48 = *(v73 + 8);
  v49 = v47;
  v48(v65, v47);
  v50 = *(v71 + 8);
  v51 = v46;
  v50(v61, v46);
  v52 = *(v70 + 8);
  v53 = v63;
  v52(v57, v63);
  sub_100009104(v66, &qword_100579EC8, &qword_100407068);
  sub_100009104(v42, &qword_100579EA0, &qword_100407040);
  v48(v68, v49);
  v50(v64, v51);
  v52(v74, v53);
  return sub_100009104(v62, &qword_100579EC8, &qword_100407068);
}

uint64_t sub_100263F64()
{
  sub_100168088(&qword_100579E28, &qword_100406FE8);
  sub_100168310(&qword_100579E30, &qword_100406FF0);
  sub_100168310(&qword_100579E38, &qword_100406FF8);
  sub_100168310(&qword_100579E40, &qword_100407000);
  sub_100168310(&qword_100579E48, &qword_100407008);
  sub_100168310(&qword_100579E50, &qword_100407010);
  type metadata accessor for NavigationLinkPickerStyle();
  sub_100009FAC(&qword_100579E58, &qword_100579E50, &qword_100407010, &protocol conformance descriptor for Form<A>);
  swift_getOpaqueTypeConformance2();
  sub_10026446C();
  swift_getOpaqueTypeConformance2();
  sub_10019FA64();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return NavigationStack.init<>(root:)();
}

void sub_1002641B4(uint64_t a1)
{
  sub_10026433C();
  if (v1 <= 0x3F)
  {
    sub_1002643F8(319, &qword_100579DB8, &type metadata for Float, &type metadata accessor for Array);
    if (v2 <= 0x3F)
    {
      sub_1002643F8(319, &qword_100579DC0, &type metadata for ShowSettingsModel, &type metadata accessor for State);
      if (v3 <= 0x3F)
      {
        sub_1002643F8(319, &qword_100579DC8, &type metadata for Bool, &type metadata accessor for State);
        if (v4 <= 0x3F)
        {
          sub_1002643A0(319);
          if (v5 <= 0x3F)
          {
            sub_1002643F8(319, &unk_100579DD8, &type metadata for Bool, &type metadata accessor for AppStorage);
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

unint64_t sub_10026433C()
{
  result = qword_100579DB0;
  if (!qword_100579DB0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_100579DB0);
  }

  return result;
}

void sub_1002643A0(uint64_t a1)
{
  if (!qword_100579DD0)
  {
    type metadata accessor for DismissAction();
    v1 = type metadata accessor for Environment();
    if (!v2)
    {
      atomic_store(v1, &qword_100579DD0);
    }
  }
}

void sub_1002643F8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_10026446C()
{
  result = qword_100579E60;
  if (!qword_100579E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100579E60);
  }

  return result;
}

unint64_t sub_1002644C8()
{
  result = qword_100579E70;
  if (!qword_100579E70)
  {
    sub_100168310(&qword_100579E68, &qword_100407018);
    sub_100264554();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100579E70);
  }

  return result;
}

unint64_t sub_100264554()
{
  result = qword_100579E78;
  if (!qword_100579E78)
  {
    sub_100168310(&qword_100579E80, &qword_100407020);
    sub_100009FAC(&qword_100579E88, &qword_100579E90, &qword_100407028, &protocol conformance descriptor for TupleView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100579E78);
  }

  return result;
}

uint64_t sub_100264604(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for ShowSettingsView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_10026318C(a1, a2, v6);
}

uint64_t sub_100264684()
{
  v1 = *(type metadata accessor for ShowSettingsView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_100263298(v2);
}

unint64_t sub_1002646F4()
{
  result = qword_100579EE8;
  if (!qword_100579EE8)
  {
    sub_100168310(&qword_100579EB0, &qword_100407050);
    sub_10020DB94();
    sub_100264780();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100579EE8);
  }

  return result;
}

unint64_t sub_100264780()
{
  result = qword_100579EF0;
  if (!qword_100579EF0)
  {
    type metadata accessor for AccessibilityAttachmentModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100579EF0);
  }

  return result;
}

uint64_t sub_1002647E0(void *a1)
{
  sub_100168088(&qword_100578010, &qword_100401F60);
  __chkstk_darwin();
  v54 = &v48[-v2];
  v3 = type metadata accessor for Logger();
  v57 = *(v3 - 8);
  __chkstk_darwin();
  v5 = &v48[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v7 = &v48[-v6];
  static Logger.userActivity.getter();
  v8 = a1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v58 = v56;
    *v11 = 136315138;
    v12 = [v8 activityType];
    LODWORD(v53) = v10;
    v13 = v12;
    v14 = v3;
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    v18 = v15;
    v3 = v14;
    v19 = v57;
    v20 = sub_1000153E0(v18, v17, &v58);

    *(v11 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v9, v53, "Received request to handle '%s'", v11, 0xCu);
    sub_100004590(v56);

    v21 = v19;
  }

  else
  {

    v21 = v57;
  }

  v53 = *(v21 + 8);
  v53(v7, v3);
  v22 = [v8 itemIdentifier];
  if (v22)
  {
    v23 = v22;
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v56 = v25;
  }

  else
  {
    v24 = 0;
    v56 = 0;
  }

  v26 = [v8 containerIdentifier];
  if (v26)
  {
    v27 = v26;
    v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;
  }

  else
  {
    v52 = 0;
    v29 = 0;
  }

  v30 = v56;
  [v8 currentTime];
  v32 = v31;
  v33 = [v8 storeTrackID];
  v34 = v33;
  if (v33)
  {
    v35 = v33;
    [v35 unsignedLongLongValue];
    v51 = AdamID.init(rawValue:)();
  }

  else
  {
    v51 = 0;
  }

  static Logger.userActivity.getter();

  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();
  v38 = os_log_type_enabled(v36, v37);
  v50 = v29;
  if (v38)
  {
    v49 = v34 != 0;
    v39 = swift_slowAlloc();
    *v39 = 67109888;
    *(v39 + 4) = v30 != 0;

    *(v39 + 8) = 1024;
    *(v39 + 10) = v29 != 0;

    *(v39 + 14) = 2048;
    *(v39 + 16) = v32;
    *(v39 + 24) = 1024;
    v30 = v56;
    *(v39 + 26) = v49;
    _os_log_impl(&_mh_execute_header, v36, v37, "Activity has episodeGUID: %{BOOL}d, feedURL: '%{BOOL}d, currentTime: %f, storeTrackID: %{BOOL}d", v39, 0x1Eu);
  }

  else
  {
  }

  v53(v5, v3);
  v40 = swift_allocObject();
  *(v40 + 16) = v8;
  v41 = type metadata accessor for TaskPriority();
  v42 = v54;
  (*(*(v41 - 8) + 56))(v54, 1, 1, v41);
  v43 = swift_allocObject();
  *(v43 + 16) = 0;
  *(v43 + 24) = 0;
  *(v43 + 32) = v24;
  *(v43 + 40) = v30;
  v44 = v52;
  *(v43 + 48) = v55;
  *(v43 + 56) = v44;
  v45 = v51;
  *(v43 + 64) = v50;
  *(v43 + 72) = v45;
  *(v43 + 80) = v34 == 0;
  *(v43 + 88) = v32;
  *(v43 + 96) = sub_10026BC20;
  *(v43 + 104) = v40;
  v46 = v8;

  sub_10023EE80(0, 0, v42, &unk_100407178, v43);
}

uint64_t sub_100264D64(void *a1)
{
  type metadata accessor for Logger();
  __chkstk_darwin();
  sub_100168088(&qword_100578010, &qword_100401F60);
  __chkstk_darwin();
  v4 = &v10 - v3;
  sub_10026B140(a1, v11);
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  v7 = v11[3];
  *(v6 + 64) = v11[2];
  *(v6 + 80) = v7;
  *(v6 + 96) = v11[4];
  *(v6 + 112) = v12;
  v8 = v11[1];
  *(v6 + 32) = v11[0];
  *(v6 + 48) = v8;
  *(v6 + 120) = v1;

  sub_100217A04(0, 0, v4, &unk_1004071A8, v6);
}

uint64_t sub_10026504C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[27] = a5;
  v7 = type metadata accessor for Logger();
  v5[28] = v7;
  v5[29] = *(v7 - 8);
  v5[30] = swift_task_alloc();
  v8 = type metadata accessor for ActionMetricsBehavior();
  v5[31] = v8;
  v5[32] = *(v8 - 8);
  v5[33] = swift_task_alloc();
  type metadata accessor for ActionMetrics();
  v5[34] = swift_task_alloc();
  v9 = type metadata accessor for FlowDestinationPageHeader();
  v5[35] = v9;
  v5[36] = *(v9 - 8);
  v5[37] = swift_task_alloc();
  v10 = type metadata accessor for FlowPresentationContext();
  v5[38] = v10;
  v5[39] = *(v10 - 8);
  v5[40] = swift_task_alloc();
  v5[41] = swift_task_alloc();
  v5[42] = swift_task_alloc();
  v11 = type metadata accessor for FlowDestination();
  v5[43] = v11;
  v5[44] = *(v11 - 8);
  v5[45] = swift_task_alloc();
  v5[46] = swift_task_alloc();
  v12 = swift_task_alloc();
  v13 = *(a4 + 48);
  v14 = *(a4 + 56);
  v5[47] = v12;
  v5[48] = v13;
  v5[49] = v14;
  if (*(a4 + 80))
  {
    if (*(a4 + 80) == 1)
    {
      v15 = sub_1002659AC;
    }

    else
    {
      v15 = sub_100266004;
    }
  }

  else
  {
    v16 = *(a4 + 64);
    v5[50] = *(a4 + 72);
    v5[51] = v16;
    v15 = sub_10026531C;
  }

  return _swift_task_switch(v15, 0, 0);
}

uint64_t sub_10026531C()
{
  v2 = v0[50];
  v1 = v0[51];
  v4 = v0[48];
  v3 = v0[49];
  v5 = swift_task_alloc();
  v0[52] = v5;
  v5[2] = v1;
  v5[3] = v2;
  v5[4] = v4;
  v5[5] = v3;
  v6 = swift_task_alloc();
  v0[53] = v6;
  *v6 = v0;
  v6[1] = sub_100265424;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 24, 0, 0, 0xD000000000000019, 0x800000010046B850, sub_10026C8FC, v5, &type metadata for String);
}

uint64_t sub_100265424()
{
  *(*v1 + 432) = v0;

  if (v0)
  {
    v2 = sub_1002657B0;
  }

  else
  {
    v2 = sub_100265538;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100265538()
{
  v1 = *(v0 + 192);
  *(v0 + 512) = 1;
  v2 = *(v0 + 376);
  v3 = *(v0 + 352);
  v4 = *(v0 + 336);
  v5 = *(v0 + 304);
  v6 = *(v0 + 312);
  v7 = *(v0 + 200);
  *(v0 + 504) = 1;
  *v2 = v1;
  *(v2 + 8) = v7;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 16) = 0;
  *(v2 + 40) = *(v0 + 504);
  *(v2 + 48) = 0;
  *(v2 + 56) = *(v0 + 512);
  (*(v3 + 104))();
  (*(v6 + 104))(v4, enum case for FlowPresentationContext.infer(_:), v5);
  sub_100168088(&qword_1005742B0, &qword_100406C70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004007C0;
  LOBYTE(v6) = static Link.Presentation.textFollowsTintColor.getter();
  *(inited + 32) = v6;
  v9 = static Link.Presentation.hasDisclosureIndicatorCompactOnly.getter();
  *(inited + 33) = v9;
  Link.Presentation.init(rawValue:)();
  Link.Presentation.init(rawValue:)();
  if (Link.Presentation.init(rawValue:)() != v6)
  {
    Link.Presentation.init(rawValue:)();
  }

  Link.Presentation.init(rawValue:)();
  if (Link.Presentation.init(rawValue:)() != v9)
  {
    Link.Presentation.init(rawValue:)();
  }

  (*(*(v0 + 288) + 104))(*(v0 + 296), enum case for FlowDestinationPageHeader.standard(_:), *(v0 + 280));
  static ActionMetrics.notInstrumented.getter();
  type metadata accessor for FlowAction();
  swift_allocObject();
  v10 = FlowAction.init(_:id:title:presentationContext:animationBehavior:presentationStyle:destinationPageHeader:actionMetrics:)();

  *(v0 + 488) = v10;
  type metadata accessor for MainActor();

  *(v0 + 496) = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100266648, v12, v11);
}

uint64_t sub_1002657B0()
{

  static Logger.userActivity.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Unable to handle spotlight activity %@", v3, 0xCu);
    sub_100009104(v4, &qword_100575B20, &qword_100401F90);
  }

  else
  {
  }

  (*(v0[29] + 8))(v0[30], v0[28]);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1002659AC()
{
  v2 = v0[48];
  v1 = v0[49];
  v3 = swift_task_alloc();
  v0[55] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[56] = v4;
  v5 = type metadata accessor for StationDetail();
  *v4 = v0;
  v4[1] = sub_100265AA8;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 26, 0, 0, 0xD000000000000013, 0x800000010046B8B0, sub_10026BFA4, v3, v5);
}

uint64_t sub_100265AA8()
{
  *(*v1 + 456) = v0;

  if (v0)
  {
    v2 = sub_100265E08;
  }

  else
  {

    v2 = sub_100265BC4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100265BC4()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 328);
  v3 = *(v0 + 304);
  v4 = *(v0 + 312);
  **(v0 + 368) = *(v0 + 208);
  (*(v1 + 104))();
  (*(v4 + 104))(v2, enum case for FlowPresentationContext.infer(_:), v3);
  sub_100168088(&qword_1005742B0, &qword_100406C70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004007C0;

  v6 = static Link.Presentation.textFollowsTintColor.getter();
  *(inited + 32) = v6;
  v7 = static Link.Presentation.hasDisclosureIndicatorCompactOnly.getter();
  *(inited + 33) = v7;
  Link.Presentation.init(rawValue:)();
  Link.Presentation.init(rawValue:)();
  if (Link.Presentation.init(rawValue:)() != v6)
  {
    Link.Presentation.init(rawValue:)();
  }

  Link.Presentation.init(rawValue:)();
  if (Link.Presentation.init(rawValue:)() != v7)
  {
    Link.Presentation.init(rawValue:)();
  }

  (*(*(v0 + 288) + 104))(*(v0 + 296), enum case for FlowDestinationPageHeader.standard(_:), *(v0 + 280));
  static ActionMetrics.notInstrumented.getter();
  type metadata accessor for FlowAction();
  swift_allocObject();
  v8 = FlowAction.init(_:id:title:presentationContext:animationBehavior:presentationStyle:destinationPageHeader:actionMetrics:)();

  *(v0 + 488) = v8;
  type metadata accessor for MainActor();

  *(v0 + 496) = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100266648, v10, v9);
}

uint64_t sub_100265E08()
{

  static Logger.userActivity.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Unable to handle spotlight activity %@", v3, 0xCu);
    sub_100009104(v4, &qword_100575B20, &qword_100401F90);
  }

  else
  {
  }

  (*(v0[29] + 8))(v0[30], v0[28]);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100266004()
{
  v2 = v0[48];
  v1 = v0[49];
  v3 = swift_task_alloc();
  v0[58] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[59] = v4;
  *v4 = v0;
  v4[1] = sub_100266104;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 22, 0, 0, 0x2874736163646F70, 0xED0000293A726F66, sub_10026BF54, v3, &type metadata for String);
}

uint64_t sub_100266104()
{
  *(*v1 + 480) = v0;

  if (v0)
  {
    v2 = sub_10026644C;
  }

  else
  {

    v2 = sub_100266220;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100266220()
{
  v2 = v0[44];
  v1 = v0[45];
  v4 = v0[39];
  v3 = v0[40];
  v5 = v0[38];
  v6 = v0[23];
  *v1 = v0[22];
  v1[1] = v6;
  (*(v2 + 104))();
  (*(v4 + 104))(v3, enum case for FlowPresentationContext.infer(_:), v5);
  sub_100168088(&qword_1005742B0, &qword_100406C70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004007C0;
  v8 = static Link.Presentation.textFollowsTintColor.getter();
  *(inited + 32) = v8;
  v9 = static Link.Presentation.hasDisclosureIndicatorCompactOnly.getter();
  *(inited + 33) = v9;
  Link.Presentation.init(rawValue:)();
  Link.Presentation.init(rawValue:)();
  if (Link.Presentation.init(rawValue:)() != v8)
  {
    Link.Presentation.init(rawValue:)();
  }

  Link.Presentation.init(rawValue:)();
  if (Link.Presentation.init(rawValue:)() != v9)
  {
    Link.Presentation.init(rawValue:)();
  }

  (*(v0[36] + 104))(v0[37], enum case for FlowDestinationPageHeader.standard(_:), v0[35]);
  static ActionMetrics.notInstrumented.getter();
  type metadata accessor for FlowAction();
  swift_allocObject();
  v0[61] = FlowAction.init(_:id:title:presentationContext:animationBehavior:presentationStyle:destinationPageHeader:actionMetrics:)();
  type metadata accessor for MainActor();

  v0[62] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100266648, v11, v10);
}

uint64_t sub_10026644C()
{

  static Logger.userActivity.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Unable to handle spotlight activity %@", v3, 0xCu);
    sub_100009104(v4, &qword_100575B20, &qword_100401F90);
  }

  else
  {
  }

  (*(v0[29] + 8))(v0[30], v0[28]);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100266648()
{
  v1 = v0[61];
  v2 = v0[27];

  sub_100168088(&unk_1005747F0, &unk_1004091D0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100400790;
  *(v3 + 56) = type metadata accessor for FlowAction();
  *(v3 + 64) = sub_10026BF5C(&unk_10057A0D0, &type metadata accessor for FlowAction, &protocol conformance descriptor for Action);
  *(v3 + 32) = v1;

  Link.Presentation.init(rawValue:)();
  static ActionMetrics.notInstrumented.getter();
  v4 = type metadata accessor for TabChangeAction();
  swift_allocObject();
  v5 = TabChangeAction.init(title:navigationTab:actions:popToRoot:userInitiated:suppressMetrics:presentationStyle:actionMetrics:)();
  if (*(v2 + 48))
  {
    v7 = v0[32];
    v6 = v0[33];
    v8 = v0[31];
    swift_getObjectType();
    v0[5] = v4;
    v9 = sub_10026BF5C(&qword_10057ADD0, &type metadata accessor for TabChangeAction, &protocol conformance descriptor for Action);
    v0[2] = v5;
    v0[6] = v9;
    (*(v7 + 104))(v6, enum case for ActionMetricsBehavior.fromAction(_:), v8);
    swift_unknownObjectRetain();

    ActionRunner.perform(_:withMetrics:asPartOf:)();
    swift_unknownObjectRelease();

    (*(v7 + 8))(v6, v8);
    sub_100004590(v0 + 2);
  }

  else
  {
  }

  return _swift_task_switch(sub_1002668D4, 0, 0);
}

uint64_t sub_1002668D4()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1002669BC(uint64_t a1, uint64_t a2, void *a3)
{
  v5[4] = a1;
  v5[5] = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_100266A74;
  v5[3] = &unk_1004E7980;
  v4 = _Block_copy(v5);

  [a3 getContinuationStreamsWithCompletionHandler:v4];
  _Block_release(v4);
}

void sub_100266A74(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);

  v10 = a2;
  v8 = a3;
  v9 = a4;
  v7(a2, a3, a4);
}

uint64_t sub_100266B1C(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 128) = v18;
  *(v9 + 136) = v19;
  *(v9 + 120) = a1;
  *(v9 + 376) = v17;
  *(v9 + 104) = a9;
  *(v9 + 112) = v16;
  *(v9 + 88) = a7;
  *(v9 + 96) = a8;
  *(v9 + 72) = a5;
  *(v9 + 80) = a6;
  v10 = type metadata accessor for PlaybackController.QueueCommand();
  *(v9 + 144) = v10;
  *(v9 + 152) = *(v10 - 8);
  *(v9 + 160) = swift_task_alloc();
  sub_100168088(&unk_100573A80, &unk_100401160);
  *(v9 + 168) = swift_task_alloc();
  v11 = type metadata accessor for PlaybackIntent();
  *(v9 + 176) = v11;
  *(v9 + 184) = *(v11 - 8);
  *(v9 + 192) = swift_task_alloc();
  *(v9 + 200) = swift_task_alloc();
  *(v9 + 208) = swift_task_alloc();
  v12 = type metadata accessor for MediaIdentifier();
  *(v9 + 216) = v12;
  *(v9 + 224) = *(v12 - 8);
  *(v9 + 232) = swift_task_alloc();
  *(v9 + 240) = swift_task_alloc();
  v13 = type metadata accessor for Logger();
  *(v9 + 248) = v13;
  *(v9 + 256) = *(v13 - 8);
  *(v9 + 264) = swift_task_alloc();
  *(v9 + 272) = swift_task_alloc();
  *(v9 + 280) = swift_task_alloc();
  *(v9 + 288) = swift_task_alloc();
  sub_100168088(&qword_10057A0A0, &qword_100407188);
  *(v9 + 296) = swift_task_alloc();
  *(v9 + 304) = swift_task_alloc();
  *(v9 + 312) = swift_task_alloc();

  return _swift_task_switch(sub_100266DE4, 0, 0);
}

uint64_t sub_100266DE4()
{
  v83 = v0;
  v1 = *(v0 + 312);
  v2 = *(v0 + 216);
  v3 = *(v0 + 224);
  v4 = *(v0 + 80);
  v5 = *(v3 + 56);
  *(v0 + 320) = v5;
  *(v0 + 328) = (v3 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v5(v1, 1, 1, v2);
  if (v4)
  {
    v79 = *(v0 + 96);
    v7 = *(v0 + 72);
    v6 = *(v0 + 80);
    v8 = swift_task_alloc();
    *(v0 + 336) = v8;
    *(v8 + 16) = v79;
    *(v8 + 32) = v7;
    *(v8 + 40) = v6;
    v9 = swift_task_alloc();
    *(v0 + 344) = v9;
    *v9 = v0;
    v9[1] = sub_100267700;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 56, 0, 0, 0xD000000000000019, 0x800000010046B850, sub_10026BDA8, v8, &type metadata for String);
  }

  else
  {
    if ((*(v0 + 376) & 1) == 0)
    {
      static Logger.userActivity.getter();
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v10, v11, "Handling activity using adam id.", v12, 2u);
      }

      v13 = *(v0 + 280);
      v14 = *(v0 + 248);
      v15 = *(v0 + 256);
      v16 = *(v0 + 112);

      (*(v15 + 8))(v13, v14);
      sub_100168088(&unk_10057A0B0, &unk_100401C70);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_100400790;
      *(v17 + 32) = v16;
      v18 = *(v0 + 320);
      v20 = *(v0 + 304);
      v19 = *(v0 + 312);
      v21 = *(v0 + 216);
      v22 = *(v0 + 224);
      sub_100009104(v19, &qword_10057A0A0, &qword_100407188);
      *v20 = v17;
      (*(v22 + 104))(v20, enum case for MediaIdentifier.episodes(_:), v21);
      v18(v20, 0, 1, v21);
      sub_10026BD38(v20, v19);
    }

    v23 = *(v0 + 296);
    v24 = *(v0 + 216);
    v25 = *(v0 + 224);
    sub_100010430(*(v0 + 312), v23, &qword_10057A0A0, &qword_100407188);
    if ((*(v25 + 48))(v23, 1, v24) == 1)
    {
      sub_100009104(*(v0 + 296), &qword_10057A0A0, &qword_100407188);
      static Logger.userActivity.getter();
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&_mh_execute_header, v26, v27, "Episode not found in activity", v28, 2u);
      }

      v29 = *(v0 + 312);
      (*(*(v0 + 256) + 8))(*(v0 + 272), *(v0 + 248));
      sub_100009104(v29, &qword_10057A0A0, &qword_100407188);

      v30 = *(v0 + 8);

      return v30();
    }

    else
    {
      v31 = *(v0 + 232);
      v32 = *(v0 + 240);
      v34 = *(v0 + 216);
      v33 = *(v0 + 224);
      v35 = *(v0 + 208);
      v77 = *(v0 + 200);
      v80 = *(v0 + 184);
      v36 = *(v0 + 168);
      v75 = *(v0 + 176);
      v37 = *(v0 + 120);
      (*(v33 + 32))(v32, *(v0 + 296), v34);
      (*(v33 + 16))(v31, v32, v34);
      v38 = type metadata accessor for EpisodeListSettings();
      (*(*(v38 - 8) + 56))(v36, 1, 1, v38);
      sub_100168088(&qword_10057A0A8, &qword_100407190);
      v39 = type metadata accessor for PlaybackIntent.Option();
      v40 = *(v39 - 8);
      v41 = *(v40 + 72);
      v42 = (*(v40 + 80) + 32) & ~*(v40 + 80);
      v43 = swift_allocObject();
      *(v43 + 16) = xmmword_1004007C0;
      v44 = (v43 + v42);
      *v44 = v37;
      v45 = *(v40 + 104);
      v45(v44, enum case for PlaybackIntent.Option.initialItemPlayheadOverride(_:), v39);
      v45((v44 + v41), enum case for PlaybackIntent.Option.startPlayback(_:), v39);
      sub_10016BA80(v43);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      PlaybackIntent.init(id:baseListSettings:options:)();
      static Logger.userActivity.getter();
      v46 = *(v80 + 16);
      v46(v77, v35, v75);
      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.default.getter();
      v49 = os_log_type_enabled(v47, v48);
      v50 = *(v0 + 256);
      v51 = *(v0 + 264);
      v52 = *(v0 + 248);
      v53 = *(v0 + 200);
      if (v49)
      {
        v76 = *(v0 + 264);
        v78 = v46;
        v54 = *(v0 + 184);
        v55 = *(v0 + 192);
        v74 = *(v0 + 248);
        v56 = *(v0 + 176);
        v57 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        v82 = v73;
        *v57 = 136380675;
        v78(v55, v53, v56);
        v58 = String.init<A>(describing:)();
        v72 = v48;
        v60 = v59;
        v61 = *(v54 + 8);
        v61(v53, v56);
        v46 = v78;
        v62 = sub_1000153E0(v58, v60, &v82);

        *(v57 + 4) = v62;
        _os_log_impl(&_mh_execute_header, v47, v72, "Performing intent from playback continuity %{private}s", v57, 0xCu);
        sub_100004590(v73);

        (*(v50 + 8))(v76, v74);
      }

      else
      {
        v63 = *(v0 + 176);
        v64 = *(v0 + 184);

        v61 = *(v64 + 8);
        v61(v53, v63);
        (*(v50 + 8))(v51, v52);
      }

      *(v0 + 352) = v61;
      v66 = *(v0 + 152);
      v65 = *(v0 + 160);
      v67 = *(v0 + 144);
      v46(v65, *(v0 + 208), *(v0 + 176));
      (*(v66 + 104))(v65, enum case for PlaybackController.QueueCommand.replace(_:), v67);
      *(v0 + 40) = v67;
      *(v0 + 48) = &protocol witness table for PlaybackController.QueueCommand;
      v68 = sub_10000E680((v0 + 16));
      (*(v66 + 16))(v68, v65, v67);
      v81 = &async function pointer to dispatch thunk of PlaybackController.performWhenAvailable(_:options:timeout:) + async function pointer to dispatch thunk of PlaybackController.performWhenAvailable(_:options:timeout:);
      v69 = swift_task_alloc();
      *(v0 + 360) = v69;
      *v69 = v0;
      v69[1] = sub_100268838;
      v70.n128_u64[0] = 5.0;

      return (v81)(v0 + 16, 0, v70);
    }
  }
}

uint64_t sub_100267700()
{

  if (v0)
  {

    v1 = sub_10026803C;
  }

  else
  {

    v1 = sub_100267848;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_100267848(uint64_t a1)
{
  v75 = v1;
  v2 = v1[7];
  v3 = v1[8];
  static Logger.userActivity.getter();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Handling activity using guid/feedURL.", v6, 2u);
  }

  v7 = v1[36];
  v8 = v1[31];
  v9 = v1[32];

  (*(v9 + 8))(v7, v8);
  sub_100168088(&qword_100574690, &unk_100401BA0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100400790;
  *(v10 + 32) = v2;
  *(v10 + 40) = v3;
  v11 = v1[40];
  v13 = v1[38];
  v12 = v1[39];
  v14 = v1[27];
  v15 = v1[28];
  sub_100009104(v12, &qword_10057A0A0, &qword_100407188);
  *v13 = v10;
  (*(v15 + 104))(v13, enum case for MediaIdentifier.localEpisodes(_:), v14);
  v11(v13, 0, 1, v14);
  sub_10026BD38(v13, v12);
  v16 = v1[37];
  v17 = v1[27];
  v18 = v1[28];
  sub_100010430(v1[39], v16, &qword_10057A0A0, &qword_100407188);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_100009104(v1[37], &qword_10057A0A0, &qword_100407188);
    static Logger.userActivity.getter();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Episode not found in activity", v21, 2u);
    }

    v22 = v1[39];
    (*(v1[32] + 8))(v1[34], v1[31]);
    sub_100009104(v22, &qword_10057A0A0, &qword_100407188);

    v23 = v1[1];

    return v23();
  }

  else
  {
    v25 = v1[29];
    v26 = v1[30];
    v28 = v1[27];
    v27 = v1[28];
    v29 = v1[26];
    v70 = v1[25];
    v72 = v1[23];
    v30 = v1[21];
    v68 = v1[22];
    v31 = v1[15];
    (*(v27 + 32))(v26, v1[37], v28);
    (*(v27 + 16))(v25, v26, v28);
    v32 = type metadata accessor for EpisodeListSettings();
    (*(*(v32 - 8) + 56))(v30, 1, 1, v32);
    sub_100168088(&qword_10057A0A8, &qword_100407190);
    v33 = type metadata accessor for PlaybackIntent.Option();
    v34 = *(v33 - 8);
    v35 = *(v34 + 72);
    v36 = (*(v34 + 80) + 32) & ~*(v34 + 80);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_1004007C0;
    v38 = (v37 + v36);
    *v38 = v31;
    v39 = *(v34 + 104);
    v39(v38, enum case for PlaybackIntent.Option.initialItemPlayheadOverride(_:), v33);
    v39((v38 + v35), enum case for PlaybackIntent.Option.startPlayback(_:), v33);
    sub_10016BA80(v37);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    PlaybackIntent.init(id:baseListSettings:options:)();
    static Logger.userActivity.getter();
    v40 = *(v72 + 16);
    v40(v70, v29, v68);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();
    v43 = os_log_type_enabled(v41, v42);
    v44 = v1[32];
    v45 = v1[33];
    v46 = v1[31];
    v47 = v1[25];
    if (v43)
    {
      v69 = v1[33];
      v71 = v40;
      v48 = v1[23];
      v49 = v1[24];
      v67 = v1[31];
      v50 = v1[22];
      v51 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v74 = v66;
      *v51 = 136380675;
      v71(v49, v47, v50);
      v52 = String.init<A>(describing:)();
      v65 = v42;
      v54 = v53;
      v55 = *(v48 + 8);
      v55(v47, v50);
      v40 = v71;
      v56 = sub_1000153E0(v52, v54, &v74);

      *(v51 + 4) = v56;
      _os_log_impl(&_mh_execute_header, v41, v65, "Performing intent from playback continuity %{private}s", v51, 0xCu);
      sub_100004590(v66);

      (*(v44 + 8))(v69, v67);
    }

    else
    {
      v57 = v1[22];
      v58 = v1[23];

      v55 = *(v58 + 8);
      v55(v47, v57);
      (*(v44 + 8))(v45, v46);
    }

    v1[44] = v55;
    v60 = v1[19];
    v59 = v1[20];
    v61 = v1[18];
    v40(v59, v1[26], v1[22]);
    (*(v60 + 104))(v59, enum case for PlaybackController.QueueCommand.replace(_:), v61);
    v1[5] = v61;
    v1[6] = &protocol witness table for PlaybackController.QueueCommand;
    v62 = sub_10000E680(v1 + 2);
    (*(v60 + 16))(v62, v59, v61);
    v73 = &async function pointer to dispatch thunk of PlaybackController.performWhenAvailable(_:options:timeout:) + async function pointer to dispatch thunk of PlaybackController.performWhenAvailable(_:options:timeout:);
    v63 = swift_task_alloc();
    v1[45] = v63;
    *v63 = v1;
    v63[1] = sub_100268838;
    v64.n128_u64[0] = 5.0;

    return (v73)(v1 + 2, 0, v64);
  }
}

uint64_t sub_10026803C(uint64_t a1)
{
  v74 = v1;
  if ((*(v1 + 376) & 1) == 0)
  {
    static Logger.userActivity.getter();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Handling activity using adam id.", v4, 2u);
    }

    v5 = *(v1 + 280);
    v6 = *(v1 + 248);
    v7 = *(v1 + 256);
    v8 = *(v1 + 112);

    (*(v7 + 8))(v5, v6);
    sub_100168088(&unk_10057A0B0, &unk_100401C70);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_100400790;
    *(v9 + 32) = v8;
    v10 = *(v1 + 320);
    v12 = *(v1 + 304);
    v11 = *(v1 + 312);
    v13 = *(v1 + 216);
    v14 = *(v1 + 224);
    sub_100009104(v11, &qword_10057A0A0, &qword_100407188);
    *v12 = v9;
    (*(v14 + 104))(v12, enum case for MediaIdentifier.episodes(_:), v13);
    v10(v12, 0, 1, v13);
    sub_10026BD38(v12, v11);
  }

  v15 = *(v1 + 296);
  v16 = *(v1 + 216);
  v17 = *(v1 + 224);
  sub_100010430(*(v1 + 312), v15, &qword_10057A0A0, &qword_100407188);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_100009104(*(v1 + 296), &qword_10057A0A0, &qword_100407188);
    static Logger.userActivity.getter();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Episode not found in activity", v20, 2u);
    }

    v21 = *(v1 + 312);
    (*(*(v1 + 256) + 8))(*(v1 + 272), *(v1 + 248));
    sub_100009104(v21, &qword_10057A0A0, &qword_100407188);

    v22 = *(v1 + 8);

    return v22();
  }

  else
  {
    v24 = *(v1 + 232);
    v25 = *(v1 + 240);
    v27 = *(v1 + 216);
    v26 = *(v1 + 224);
    v28 = *(v1 + 208);
    v69 = *(v1 + 200);
    v71 = *(v1 + 184);
    v29 = *(v1 + 168);
    v67 = *(v1 + 176);
    v30 = *(v1 + 120);
    (*(v26 + 32))(v25, *(v1 + 296), v27);
    (*(v26 + 16))(v24, v25, v27);
    v31 = type metadata accessor for EpisodeListSettings();
    (*(*(v31 - 8) + 56))(v29, 1, 1, v31);
    sub_100168088(&qword_10057A0A8, &qword_100407190);
    v32 = type metadata accessor for PlaybackIntent.Option();
    v33 = *(v32 - 8);
    v34 = *(v33 + 72);
    v35 = (*(v33 + 80) + 32) & ~*(v33 + 80);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_1004007C0;
    v37 = (v36 + v35);
    *v37 = v30;
    v38 = *(v33 + 104);
    v38(v37, enum case for PlaybackIntent.Option.initialItemPlayheadOverride(_:), v32);
    v38((v37 + v34), enum case for PlaybackIntent.Option.startPlayback(_:), v32);
    sub_10016BA80(v36);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    PlaybackIntent.init(id:baseListSettings:options:)();
    static Logger.userActivity.getter();
    v39 = *(v71 + 16);
    v39(v69, v28, v67);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();
    v42 = os_log_type_enabled(v40, v41);
    v43 = *(v1 + 256);
    v44 = *(v1 + 264);
    v45 = *(v1 + 248);
    v46 = *(v1 + 200);
    if (v42)
    {
      v68 = *(v1 + 264);
      v70 = v39;
      v47 = *(v1 + 184);
      v48 = *(v1 + 192);
      v66 = *(v1 + 248);
      v49 = *(v1 + 176);
      v50 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v73 = v65;
      *v50 = 136380675;
      v70(v48, v46, v49);
      v51 = String.init<A>(describing:)();
      v64 = v41;
      v53 = v52;
      v54 = *(v47 + 8);
      v54(v46, v49);
      v39 = v70;
      v55 = sub_1000153E0(v51, v53, &v73);

      *(v50 + 4) = v55;
      _os_log_impl(&_mh_execute_header, v40, v64, "Performing intent from playback continuity %{private}s", v50, 0xCu);
      sub_100004590(v65);

      (*(v43 + 8))(v68, v66);
    }

    else
    {
      v56 = *(v1 + 176);
      v57 = *(v1 + 184);

      v54 = *(v57 + 8);
      v54(v46, v56);
      (*(v43 + 8))(v44, v45);
    }

    *(v1 + 352) = v54;
    v59 = *(v1 + 152);
    v58 = *(v1 + 160);
    v60 = *(v1 + 144);
    v39(v58, *(v1 + 208), *(v1 + 176));
    (*(v59 + 104))(v58, enum case for PlaybackController.QueueCommand.replace(_:), v60);
    *(v1 + 40) = v60;
    *(v1 + 48) = &protocol witness table for PlaybackController.QueueCommand;
    v61 = sub_10000E680((v1 + 16));
    (*(v59 + 16))(v61, v58, v60);
    v72 = &async function pointer to dispatch thunk of PlaybackController.performWhenAvailable(_:options:timeout:) + async function pointer to dispatch thunk of PlaybackController.performWhenAvailable(_:options:timeout:);
    v62 = swift_task_alloc();
    *(v1 + 360) = v62;
    *v62 = v1;
    v62[1] = sub_100268838;
    v63.n128_u64[0] = 5.0;

    return (v72)(v1 + 16, 0, v63);
  }
}

uint64_t sub_100268838(void *a1)
{
  v4 = *v2;
  *(*v2 + 368) = v1;

  if (v1)
  {
    v5 = sub_100268B18;
  }

  else
  {

    sub_100004590((v4 + 16));
    v5 = sub_100268968;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100268968()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 208);
  v3 = *(v0 + 176);
  v5 = *(v0 + 152);
  v4 = *(v0 + 160);
  v6 = *(v0 + 144);
  (*(v0 + 128))(sub_100268CAC, 0);
  (*(v5 + 8))(v4, v6);
  v1(v2, v3);
  v7 = *(v0 + 312);
  (*(*(v0 + 224) + 8))(*(v0 + 240), *(v0 + 216));
  sub_100009104(v7, &qword_10057A0A0, &qword_100407188);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100268B18()
{
  v1 = v0[44];
  v2 = v0[39];
  v3 = v0[30];
  v5 = v0[27];
  v4 = v0[28];
  v6 = v0[26];
  v7 = v0[22];
  (*(v0[19] + 8))(v0[20], v0[18]);
  v1(v6, v7);
  (*(v4 + 8))(v3, v5);
  sub_100009104(v2, &qword_10057A0A0, &qword_100407188);
  sub_100004590(v0 + 2);

  v8 = v0[1];

  return v8();
}

void sub_100268CAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    swift_errorRetain();
    static Logger.userActivity.getter();
    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      swift_errorRetain();
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v12;
      *v11 = v12;
      _os_log_impl(&_mh_execute_header, v8, v9, "Received error when opening NSUserActivity stream: %@", v10, 0xCu);
      sub_100009104(v11, &qword_100575B20, &qword_100401F90);
    }

    else
    {
    }

    (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_100268E78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[22] = a4;
  v5[23] = a5;
  v6 = type metadata accessor for Logger();
  v5[24] = v6;
  v5[25] = *(v6 - 8);
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();
  v5[28] = type metadata accessor for MainActor();
  v5[29] = static MainActor.shared.getter();

  return _swift_task_switch(sub_100268F5C, 0, 0);
}

uint64_t sub_100268F5C()
{
  v1 = v0[23];
  v2 = swift_task_alloc();
  v0[30] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[31] = v3;
  *v3 = v0;
  v3[1] = sub_100269054;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 12, 0, 0, 0xD000000000000012, 0x800000010046B830, sub_10026A21C, v2, &type metadata for EpisodeUserActivityData);
}

uint64_t sub_100269054()
{
  *(*v1 + 256) = v0;

  if (v0)
  {
    v2 = sub_100269408;
  }

  else
  {

    v2 = sub_100269170;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100269170()
{
  v1 = v0[9];
  v0[3] = v0[8];
  v0[4] = v1;
  v0[5] = v0[10];
  v2 = v0[7];
  v0[1] = v0[6];
  v0[2] = v2;
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100269200, v4, v3);
}

uint64_t sub_100269200()
{
  v1 = v0[22];

  v2 = sub_100269698();
  sub_10026AED0((v0 + 2));
  [v2 setDelegate:*(v1 + 40)];
  v3 = *(v1 + 32);
  *(v1 + 32) = v2;
  v4 = v2;

  if (dispatch thunk of PlaybackController.isPlaying.getter())
  {
    v5 = v0[23];
    static Logger.userActivity.getter();
    v6 = v5;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = v0[23];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 141558275;
      *(v10 + 4) = 1752392040;
      *(v10 + 12) = 2113;
      *(v10 + 14) = v9;
      *v11 = v9;
      v12 = v9;
      _os_log_impl(&_mh_execute_header, v7, v8, "Marking activity for %{private,mask.hash}@ as current", v10, 0x16u);
      sub_100009104(v11, &qword_100575B20, &qword_100401F90);
    }

    v13 = v0[27];
    v14 = v0[24];
    v15 = v0[25];

    (*(v15 + 8))(v13, v14);
    v16 = *(v1 + 32);
    if (v16)
    {
      v17 = v16;
      [v17 becomeCurrent];

      v4 = v17;
    }
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_100269408()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10026948C, v1, v0);
}

uint64_t sub_10026948C()
{
  v1 = v0[22];

  v2 = *(v1 + 32);
  if (v2)
  {
    [v2 invalidate];
    v3 = *(v1 + 32);
  }

  else
  {
    v3 = 0;
  }

  v4 = v0[23];
  *(v1 + 32) = 0;

  static Logger.userActivity.getter();
  v5 = v4;
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[23];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 141558531;
    *(v9 + 4) = 1752392040;
    *(v9 + 12) = 2113;
    *(v9 + 14) = v8;
    *v10 = v8;
    *(v9 + 22) = 2112;
    v11 = v8;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 24) = v12;
    v10[1] = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "Unable to create activity for episode: %{private,mask.hash}@, error: %@", v9, 0x20u);
    sub_100168088(&qword_100575B20, &qword_100401F90);
    swift_arrayDestroy();
  }

  else
  {
  }

  (*(v0[25] + 8))(v0[26], v0[24]);

  v13 = v0[1];

  return v13();
}

id sub_100269698()
{
  v1 = objc_allocWithZone(NSUserActivity);
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 initWithActivityType:v2];

  v4 = *(v0 + 56);
  if (v4)
  {
    v5 = String._bridgeToObjectiveC()();
    [v3 setTitle:v5];

    v4 = String._bridgeToObjectiveC()();
  }

  else
  {
    [v3 setTitle:0];
  }

  [v3 setItemTitle:v4];

  if (*(v0 + 72))
  {
    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
  }

  [v3 setContainerTitle:v6];

  if (*(v0 + 8))
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  [v3 setItemIdentifier:v7];

  if (*(v0 + 24))
  {
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = 0;
  }

  [v3 setContainerIdentifier:v8];

  if (*(v0 + 40))
  {
    v9 = 0;
  }

  else
  {
    v9 = [objc_allocWithZone(NSNumber) initWithUnsignedLongLong:*(v0 + 32)];
  }

  [v3 setStoreTrackID:v9];

  [v3 setSupportsContinuationStreams:1];
  return v3;
}

void sub_100269884(uint64_t a1, void *a2)
{
  v4 = sub_100168088(&qword_10057A088, &qword_100407168);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = aBlock - v6;
  v8 = [objc_opt_self() sharedInstance];
  v9 = [v8 playbackContext];

  v10 = MPModelObject.uuid.getter();
  if (v11)
  {
    v12 = v10;
    v13 = v11;
    (*(v5 + 16))(v7, a1, v4);
    v14 = (*(v5 + 80) + 40) & ~*(v5 + 80);
    v15 = swift_allocObject();
    *(v15 + 2) = v9;
    *(v15 + 3) = v12;
    *(v15 + 4) = v13;
    (*(v5 + 32))(&v15[v14], v7, v4);
    aBlock[4] = sub_10026B9EC;
    aBlock[5] = v15;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000F038;
    aBlock[3] = &unk_1004E78B8;
    v16 = _Block_copy(aBlock);
    v17 = v9;

    [v17 performBlock:v16];

    _Block_release(v16);
  }

  else
  {
    sub_10026B8D8(a2, aBlock);
    CheckedContinuation.resume(returning:)();
  }
}

void sub_100269AC8(void *a1)
{
  v2 = String._bridgeToObjectiveC()();
  v3 = [a1 episodeForUuid:v2];

  if (v3)
  {
    v4 = v3;
    sub_10026BA68(v4, v6);
    sub_100168088(&qword_10057A088, &qword_100407168);
    CheckedContinuation.resume(returning:)();
  }

  else
  {
    sub_10026BA14();
    swift_allocError();
    *v5 = 0;
    sub_100168088(&qword_10057A088, &qword_100407168);
    CheckedContinuation.resume(throwing:)();
  }
}

uint64_t sub_100269BB0()
{

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_100269C14(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = PlaybackController.currentTime.getter();
    v9 = v8;

    if ((v9 & 1) == 0)
    {
      [a1 setCurrentTime:*&v7];
      static Logger.userActivity.getter();
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 134217984;
        *(v12 + 4) = v7;
        _os_log_impl(&_mh_execute_header, v10, v11, "Current playback time updated on activity before handoff: %f", v12, 0xCu);
      }

      return (*(v3 + 8))(v5, v2);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100269E14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_100269E34, 0, 0);
}

uint64_t sub_100269E34()
{
  Strong = swift_weakLoadStrong();
  *(v0 + 32) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 40) = v2;
    *v2 = v0;
    v2[1] = sub_100269EE8;
  }

  else
  {
    __break(1u);
  }

  return PlaybackController.pause()();
}

uint64_t sub_100269EE8()
{
  *(*v1 + 48) = v0;

  if (v0)
  {

    v2 = sub_10026C904;
  }

  else
  {

    v2 = sub_10026A030;
  }

  return _swift_task_switch(v2, 0, 0);
}

id sub_10026A118()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlaybackContinuityActivityDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10026A15C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001C51C;

  return sub_100268E78(a1, v4, v5, v7, v6);
}

void sub_10026A224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = a4;
  v9 = sub_100168088(&unk_10057A0C0, &qword_100407198);
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v19 - v11;
  v13 = [objc_opt_self() sharedInstance];
  v14 = [v13 privateQueueContext];

  (*(v10 + 16))(v12, a1, v9);
  v15 = (*(v10 + 80) + 56) & ~*(v10 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = a2;
  *(v16 + 3) = a3;
  *(v16 + 4) = v20;
  *(v16 + 5) = a5;
  *(v16 + 6) = v14;
  (*(v10 + 32))(&v16[v15], v12, v9);
  aBlock[4] = sub_10026BDB4;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F038;
  aBlock[3] = &unk_1004E7958;
  v17 = _Block_copy(aBlock);

  v18 = v14;

  [v18 performBlock:v17];
  _Block_release(v17);
}

void sub_10026A458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a2)
  {
    v6 = objc_opt_self();
    v7 = String._bridgeToObjectiveC()();
    v8 = String._bridgeToObjectiveC()();
    v9 = [v6 predicateForEpisodeGuid:v7 onFeedURL:v8];
  }

  else
  {
    v10 = objc_opt_self();
    v8 = String._bridgeToObjectiveC()();
    v9 = [v10 predicateForEpisodeGuid:v8];
  }

  v11 = [a5 objectsInEntity:kMTEpisodeEntityName predicate:v9 sortDescriptors:0];
  if (!v11)
  {
    goto LABEL_20;
  }

  v12 = v11;
  sub_100009F1C(0, &qword_1005739D0, NSManagedObject_ptr);
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v13 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_7;
    }

LABEL_15:

    goto LABEL_16;
  }

  if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_15;
  }

LABEL_7:
  if ((v13 & 0xC000000000000001) != 0)
  {
    v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_10:
    v15 = v14;

    objc_opt_self();
    v16 = swift_dynamicCastObjCClass();
    if (v16)
    {
      v17 = [v16 uuid];
      if (v17)
      {
        v18 = v17;
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        sub_100168088(&unk_10057A0C0, &qword_100407198);
        CheckedContinuation.resume(returning:)();

LABEL_17:
        return;
      }
    }

LABEL_16:
    sub_10026BA14();
    swift_allocError();
    *v19 = 0;
    sub_100168088(&unk_10057A0C0, &qword_100407198);
    CheckedContinuation.resume(throwing:)();
    goto LABEL_17;
  }

  if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v14 = *(v13 + 32);
    goto LABEL_10;
  }

  __break(1u);
LABEL_20:
  __break(1u);
}

void sub_10026A6E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100168088(&unk_10057A0E0, &unk_1004071B0);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = aBlock - v8;
  v10 = [objc_opt_self() sharedInstance];
  v11 = [v10 privateQueueContext];

  (*(v7 + 16))(v9, a1, v6);
  v12 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = a2;
  *(v13 + 3) = a3;
  *(v13 + 4) = v11;
  (*(v7 + 32))(&v13[v12], v9, v6);
  aBlock[4] = sub_10026BFAC;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F038;
  aBlock[3] = &unk_1004E79F8;
  v14 = _Block_copy(aBlock);

  v15 = v11;

  [v15 performBlock:v14];
  _Block_release(v14);
}

void sub_10026A900(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = objc_opt_self();
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 predicateForVisiblePlaylistWithUUID:v5];

  v7 = [a3 objectsInEntity:kMTPlaylistEntityName predicate:v6 sortDescriptors:0];
  if (!v7)
  {
    goto LABEL_17;
  }

  v8 = v7;
  sub_100009F1C(0, &qword_1005739D0, NSManagedObject_ptr);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v9 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_4;
    }

LABEL_12:

    goto LABEL_13;
  }

  if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_12;
  }

LABEL_4:
  if ((v9 & 0xC000000000000001) != 0)
  {
    v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_7:
    v11 = v10;

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      type metadata accessor for StationDetail();
      v11 = v11;
      if (StationDetail.__allocating_init(from:excludeArtwork:excludeEpisodes:excludeShows:)())
      {

        sub_100168088(&unk_10057A0E0, &unk_1004071B0);
        CheckedContinuation.resume(returning:)();

LABEL_14:
        return;
      }
    }

LABEL_13:
    sub_10026BA14();
    swift_allocError();
    *v12 = 1;
    sub_100168088(&unk_10057A0E0, &unk_1004071B0);
    CheckedContinuation.resume(throwing:)();
    goto LABEL_14;
  }

  if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v10 = *(v9 + 32);
    goto LABEL_7;
  }

  __break(1u);
LABEL_17:
  __break(1u);
}

void sub_10026AB3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100168088(&unk_10057A0C0, &qword_100407198);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = aBlock - v8;
  v10 = [objc_opt_self() sharedInstance];
  v11 = [v10 privateQueueContext];

  (*(v7 + 16))(v9, a1, v6);
  v12 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = v11;
  *(v13 + 3) = a2;
  *(v13 + 4) = a3;
  (*(v7 + 32))(&v13[v12], v9, v6);
  aBlock[4] = sub_10026C09C;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F038;
  aBlock[3] = &unk_1004E7A48;
  v14 = _Block_copy(aBlock);
  v15 = v11;

  [v15 performBlock:v14];
  _Block_release(v14);
}

void sub_10026AD58(void *a1)
{
  v2 = String._bridgeToObjectiveC()();
  v3 = [a1 podcastForFeedUrl:v2];

  if (v3)
  {
    v4 = [v3 uuid];
    if (v4)
    {
      v5 = v4;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100168088(&unk_10057A0C0, &qword_100407198);
      CheckedContinuation.resume(returning:)();

      return;
    }
  }

  sub_10026BA14();
  swift_allocError();
  *v6 = 2;
  sub_100168088(&unk_10057A0C0, &qword_100407198);
  CheckedContinuation.resume(throwing:)();
}

BOOL sub_10026AE74(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v3 = a1[4];
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  v9[4] = a2[4];
  v6 = *a2;
  v9[1] = a2[1];
  v8[4] = v3;
  v9[0] = v6;
  return sub_10026AF00(v8, v9);
}

BOOL sub_10026AF00(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    if (*a1 != *a2 || v2 != v3)
    {
      v5 = a1;
      v6 = a2;
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v6;
      v8 = v7;
      a1 = v5;
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v3)
  {
    return 0;
  }

  v9 = *(a1 + 24);
  v10 = *(a2 + 24);
  if (v9)
  {
    if (!v10)
    {
      return 0;
    }

    if (*(a1 + 16) != *(a2 + 16) || v9 != v10)
    {
      v11 = a1;
      v12 = a2;
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v12;
      v14 = v13;
      a1 = v11;
      if ((v14 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v10)
  {
    return 0;
  }

  v15 = *(a2 + 40);
  if (*(a1 + 40))
  {
    if (!*(a2 + 40))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 32) != *(a2 + 32))
    {
      v15 = 1;
    }

    if (v15)
    {
      return 0;
    }
  }

  v16 = *(a1 + 56);
  v17 = *(a2 + 56);
  if (v16)
  {
    if (!v17)
    {
      return 0;
    }

    if (*(a1 + 48) != *(a2 + 48) || v16 != v17)
    {
      v18 = a1;
      v19 = a2;
      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v19;
      v21 = v20;
      a1 = v18;
      if ((v21 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v17)
  {
    return 0;
  }

  v22 = *(a1 + 72);
  v23 = *(a2 + 72);
  if (v22)
  {
    return v23 && (*(a1 + 64) == *(a2 + 64) && v22 == v23 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0);
  }

  return !v23;
}

unint64_t sub_10026B090(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = String.index(_:offsetBy:limitedBy:)();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return String.subscript.getter();
}

uint64_t sub_10026B140@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 userInfo];
  if (!v4)
  {
    goto LABEL_7;
  }

  v5 = v4;
  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  *&v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(&v37 + 1) = v7;
  AnyHashable.init<A>(_:)();
  if (!*(v6 + 16) || (v8 = sub_100202028(v35), (v9 & 1) == 0))
  {

    sub_10016BE9C(v35);
LABEL_7:
    v37 = 0u;
    v38 = 0u;
    goto LABEL_8;
  }

  sub_10001B944(*(v6 + 56) + 32 * v8, &v37);
  sub_10016BE9C(v35);

  if (*(&v38 + 1))
  {
    sub_10016B7CC(&v37, v39);
    goto LABEL_16;
  }

LABEL_8:
  v10 = [a1 userInfo];
  if (!v10)
  {
    goto LABEL_14;
  }

  v11 = v10;
  v12 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  if (!*(v12 + 16) || (v13 = sub_100202028(v35), (v14 & 1) == 0))
  {

    sub_10016BE9C(v35);
LABEL_14:
    memset(v39, 0, sizeof(v39));
    if (!*(&v38 + 1))
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  sub_10001B944(*(v12 + 56) + 32 * v13, v39);
  sub_10016BE9C(v35);

  if (*(&v38 + 1))
  {
LABEL_15:
    sub_100009104(&v37, &unk_1005783D0, &qword_1004031E0);
  }

LABEL_16:
  sub_100010430(v39, v35, &unk_1005783D0, &qword_1004031E0);
  if (!v36)
  {
    sub_100009104(v35, &unk_1005783D0, &qword_1004031E0);
    goto LABEL_24;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_24:
    v27 = 0;
LABEL_25:
    sub_10026C13C();
    swift_allocError();
    *v28 = v27;
    swift_willThrow();

    return sub_100009104(v39, &unk_1005783D0, &qword_1004031E0);
  }

  v15 = v37;
  v16 = sub_10033BF88(v37, *(&v37 + 1));
  if (!v17)
  {

    goto LABEL_24;
  }

  v18 = v17;
  v19._countAndFlagsBits = v16;
  v19._object = v18;
  v20 = _findStringSwitchCase(cases:string:)(&off_1004DF040, v19);

  if (v20 >= 3)
  {

    v27 = 1;
    goto LABEL_25;
  }

  v40 = v20;

  sub_10026B090(1uLL, v15, *(&v15 + 1));

  v33 = static String._fromSubstring(_:)();
  v34 = v21;

  v22 = [a1 containerIdentifier];
  if (v22)
  {
    v23 = v22;
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    sub_100009104(v39, &unk_1005783D0, &qword_1004031E0);
  }

  else
  {
    sub_100009104(v39, &unk_1005783D0, &qword_1004031E0);

    v24 = 0;
    v26 = 0;
  }

  v30 = v40;
  if (1u >> (v20 & 7))
  {

    v31 = v24;
    v32 = v26;
  }

  else
  {
    v31 = 0;
    v32 = 0;
  }

  *a2 = v15;
  *(a2 + 16) = v33;
  *(a2 + 24) = v34;
  *(a2 + 32) = v24;
  *(a2 + 40) = v26;
  *(a2 + 48) = v33;
  *(a2 + 56) = v34;
  *(a2 + 64) = v31;
  *(a2 + 72) = v32;
  *(a2 + 80) = v30;
}

uint64_t sub_10026B584(void *a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v6 = __chkstk_darwin().n128_u64[0];
  v8 = v24 - v7;
  v9 = [a1 userInfo];
  if (!v9)
  {
    goto LABEL_9;
  }

  v10 = v9;
  v11 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v24[1] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24[2] = v12;
  AnyHashable.init<A>(_:)();
  if (!*(v11 + 16) || (v13 = sub_100202028(&v25), (v14 & 1) == 0))
  {

    sub_10016BE9C(&v25);
LABEL_9:
    v26 = 0u;
    v27 = 0u;
    goto LABEL_10;
  }

  sub_10001B944(*(v11 + 56) + 32 * v13, &v26);
  sub_10016BE9C(&v25);

  if (!*(&v27 + 1))
  {
LABEL_10:
    sub_100009104(&v26, &unk_1005783D0, &qword_1004031E0);
    return 0;
  }

  if (swift_dynamicCast())
  {
    v15 = objc_opt_self();
    v16 = String._bridgeToObjectiveC()();

    v17 = [v15 searchUrlForSearchText:v16];

    if (v17)
    {
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v3 + 32))(v8, v5, v2);
      v18 = [objc_opt_self() sharedApplication];
      URL._bridgeToObjectiveC()(v19);
      v21 = v20;
      sub_10016A31C(_swiftEmptyArrayStorage);
      type metadata accessor for OpenExternalURLOptionsKey(0);
      sub_10026BF5C(&qword_100573120, type metadata accessor for OpenExternalURLOptionsKey, &unk_100400148);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v18 openURL:v21 options:isa completionHandler:0];

      (*(v3 + 8))(v8, v2);
      return 1;
    }
  }

  return 0;
}