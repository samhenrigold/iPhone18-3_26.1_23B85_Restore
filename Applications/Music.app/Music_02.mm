uint64_t Logger.scenes.unsafeMutableAddressor()
{
  if (qword_1011B05F0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return sub_1000060E4(v0, static Logger.scenes);
}

uint64_t sub_10002A27C()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, static Logger.scenes);
  sub_1000060E4(v0, static Logger.scenes);
  return static Logger.music(_:)(0x73656E656353, 0xE600000000000000);
}

id sub_10002A314()
{
  *&v0[OBJC_IVAR____TtC5Music17MainSceneDelegate_snapshotter] = 0;
  *&v0[OBJC_IVAR____TtC5Music17MainSceneDelegate_responder] = 0;
  *&v0[OBJC_IVAR____TtC5Music17MainSceneDelegate_interfaceContext] = 0;
  *&v0[OBJC_IVAR____TtC5Music17MainSceneDelegate_observers] = &_swiftEmptySetSingleton;
  *&v0[OBJC_IVAR____TtC5Music17MainSceneDelegate_signpostDidBecomeActiveIntervalState] = 0;
  v0[OBJC_IVAR____TtC5Music17MainSceneDelegate_hasStartedFromUserAction] = 0;
  *&v0[OBJC_IVAR____TtC5Music17MainSceneDelegate_window] = 0;
  *&v0[OBJC_IVAR____TtC5Music17MainSceneDelegate____lazy_storage___tabBarController] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MainSceneDelegate();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_10002A4A8(uint64_t a1)
{
  v1 = sub_100009F78(0, &qword_101183A28, MPModelSong_ptr);
  if (swift_dynamicCastMetatype())
  {
    sub_10010FC20(&unk_101181640, &qword_100EBD090);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_100ED1A60;
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
    *(v2 + 144) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v2 + 152) = v10;
    *(v2 + 160) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v2 + 168) = v11;
    *(v2 + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v2 + 184) = v12;
    *(v2 + 192) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v2 + 200) = v13;
    *(v2 + 208) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v2 + 216) = v14;
    *(v2 + 224) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v2 + 232) = v15;
    sub_10010FC20(&qword_101186F10, &unk_100EC96E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100EBE260;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v17;
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_100EBC6B0;
    *(v18 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v18 + 40) = v19;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v111 = objc_opt_self();
    v21 = [v111 propertySetWithProperties:isa];

    *(inited + 48) = v21;
    *(inited + 56) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 64) = v22;
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_100EC6C60;
    *(v23 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v23 + 40) = v24;
    *(v23 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v23 + 56) = v25;
    *(v23 + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v23 + 72) = v26;
    *(v23 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v23 + 88) = v27;
    *(v23 + 96) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v23 + 104) = v28;
    v29 = swift_initStackObject();
    *(v29 + 16) = xmmword_100EBDC20;
    *(v29 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v29 + 40) = v30;
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_100EBC6B0;
    *(v31 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v31 + 40) = v32;
    v33 = Array._bridgeToObjectiveC()().super.isa;

    v34 = [v111 propertySetWithProperties:v33];

    *(v29 + 48) = v34;
    *(v29 + 56) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v29 + 64) = v35;
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_100EBDC20;
    *(v36 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v36 + 40) = v37;
    *(v36 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v36 + 56) = v38;
    v39 = Array._bridgeToObjectiveC()().super.isa;

    v40 = [v111 propertySetWithProperties:v39];

    *(v29 + 72) = v40;
    sub_10000BFA0(v29);
    swift_setDeallocating();
    sub_10010FC20(&qword_101186F18, &unk_100EC96F0);
    swift_arrayDestroy();
    v41 = objc_allocWithZone(MPPropertySet);
    v42 = Array._bridgeToObjectiveC()().super.isa;

    sub_100009F78(0, &qword_101186F20, MPPropertySet_ptr);
    v43 = Dictionary._bridgeToObjectiveC()().super.isa;

    v44 = [v41 initWithProperties:v42 relationships:v43];

    *(inited + 72) = v44;
    *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 88) = v45;
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_100EBC6B0;
    *(v46 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v46 + 40) = v47;
    v48 = Array._bridgeToObjectiveC()().super.isa;

    v49 = [v111 propertySetWithProperties:v48];

    *(inited + 96) = v49;
    sub_10000BFA0(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    v50 = objc_allocWithZone(MPPropertySet);
    v51 = Array._bridgeToObjectiveC()().super.isa;

    v52 = Dictionary._bridgeToObjectiveC()().super.isa;

    v53 = [v50 initWithProperties:v51 relationships:v52];

    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v55 = [ObjCClassFromMetadata requiredLibraryRemovalProperties];
    v56 = [v53 propertySetByCombiningWithPropertySet:v55];

    v57 = [ObjCClassFromMetadata requiredLibraryAddStatusObservationProperties];
    v58 = [v56 propertySetByCombiningWithPropertySet:v57];

    v59 = [ObjCClassFromMetadata requiredKeepLocalStatusObservationProperties];
    v60 = [v58 propertySetByCombiningWithPropertySet:v59];
LABEL_5:
    v70 = v60;

LABEL_6:
    return v70;
  }

  v61 = sub_100009F78(0, &unk_10118A270, MPModelPlaylist_ptr);
  if (swift_dynamicCastMetatype())
  {
    sub_10010FC20(&unk_101181640, &qword_100EBD090);
    v62 = swift_allocObject();
    *(v62 + 16) = xmmword_100EBC6B0;
    *(v62 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v62 + 40) = v63;
    v64 = Array._bridgeToObjectiveC()().super.isa;

    v65 = [objc_opt_self() propertySetWithProperties:v64];

    v66 = swift_getObjCClassFromMetadata();
    v67 = [v66 requiredLibraryRemovalProperties];
    v68 = [v65 propertySetByCombiningWithPropertySet:v67];

    v69 = [v66 requiredLibraryAddStatusObservationProperties];
    v58 = [v68 propertySetByCombiningWithPropertySet:v69];

    v59 = [v66 requiredKeepLocalStatusObservationProperties];
    v60 = [v58 propertySetByCombiningWithPropertySet:v59];
    goto LABEL_5;
  }

  sub_100009F78(0, qword_101186D10, MPModelPlaylistEntry_ptr);
  if (swift_dynamicCastMetatype())
  {
    sub_10010FC20(&unk_101181640, &qword_100EBD090);
    v72 = swift_allocObject();
    *(v72 + 16) = xmmword_100EBC6B0;
    *(v72 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v72 + 40) = v73;
    sub_10010FC20(&qword_101186F10, &unk_100EC96E0);
    v74 = swift_initStackObject();
    *(v74 + 16) = xmmword_100EBEF50;
    *(v74 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v74 + 40) = v75;
    *(v74 + 48) = sub_10002A4A8(v61);
    *(v74 + 56) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v74 + 64) = v76;
    *(v74 + 72) = sub_10002A4A8(v1);
    *(v74 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v74 + 88) = v77;
    v78 = sub_100009F78(0, &qword_10118A288, MPModelMovie_ptr);
    *(v74 + 96) = sub_10002A4A8(v78);
    *(v74 + 104) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v74 + 112) = v79;
    v80 = sub_100009F78(0, &qword_10118A280, MPModelTVEpisode_ptr);
    *(v74 + 120) = sub_10002A4A8(v80);
    sub_10000BFA0(v74);
    swift_setDeallocating();
    sub_10010FC20(&qword_101186F18, &unk_100EC96F0);
    swift_arrayDestroy();
    v81 = objc_allocWithZone(MPPropertySet);
    v82 = Array._bridgeToObjectiveC()().super.isa;

    sub_100009F78(0, &qword_101186F20, MPPropertySet_ptr);
    v83 = Dictionary._bridgeToObjectiveC()().super.isa;

    v84 = [v81 initWithProperties:v82 relationships:v83];

    v85 = swift_getObjCClassFromMetadata();
    v86 = [v85 requiredLibraryRemovalProperties];
    v87 = [v84 propertySetByCombiningWithPropertySet:v86];

    v88 = [v85 requiredLibraryAddStatusObservationProperties];
    v89 = [v87 propertySetByCombiningWithPropertySet:v88];

    v59 = [v85 requiredKeepLocalStatusObservationProperties];
    v70 = [v89 propertySetByCombiningWithPropertySet:v59];

    goto LABEL_6;
  }

  v90 = sub_100009F78(0, &unk_1011BEC80, MPModelTVShow_ptr);
  if (swift_dynamicCastMetatype())
  {
    sub_10010FC20(&unk_101181640, &qword_100EBD090);
    v91 = swift_allocObject();
    *(v91 + 16) = xmmword_100EBC6B0;
    *(v91 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v91 + 40) = v92;
    v93.super.isa = Array._bridgeToObjectiveC()().super.isa;

    v94 = [objc_opt_self() propertySetWithProperties:v93.super.isa];
LABEL_12:
    v95 = v94;
LABEL_15:

    return v95;
  }

  sub_100009F78(0, &qword_10118A280, MPModelTVEpisode_ptr);
  if (swift_dynamicCastMetatype())
  {
    sub_10010FC20(&unk_101181640, &qword_100EBD090);
    v96 = swift_allocObject();
    *(v96 + 16) = xmmword_100EBEF50;
    *(v96 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v96 + 40) = v97;
    *(v96 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v96 + 56) = v98;
    *(v96 + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v96 + 72) = v99;
    *(v96 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v96 + 88) = v100;
    sub_10010FC20(&qword_101186F10, &unk_100EC96E0);
    v101 = swift_initStackObject();
    *(v101 + 16) = xmmword_100EBC6B0;
    *(v101 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v101 + 40) = v102;
    *(v101 + 48) = sub_10002A4A8(v90);
    sub_10000BFA0(v101);
    swift_setDeallocating();
    sub_10001ADCC(v101 + 32);
    v103 = objc_allocWithZone(MPPropertySet);
    v104 = Array._bridgeToObjectiveC()().super.isa;

    sub_100009F78(0, &qword_101186F20, MPPropertySet_ptr);
    v93.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v95 = [v103 initWithProperties:v104 relationships:v93.super.isa];

    goto LABEL_15;
  }

  sub_100009F78(0, &qword_10118A288, MPModelMovie_ptr);
  if (swift_dynamicCastMetatype())
  {
    sub_10010FC20(&unk_101181640, &qword_100EBD090);
    v105 = swift_allocObject();
    *(v105 + 16) = xmmword_100EBEF50;
    *(v105 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v105 + 40) = v106;
    *(v105 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v105 + 56) = v107;
    *(v105 + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v105 + 72) = v108;
    *(v105 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v105 + 88) = v109;
    v93.super.isa = Array._bridgeToObjectiveC()().super.isa;

    v94 = [objc_opt_self() propertySetWithProperties:v93.super.isa];
    goto LABEL_12;
  }

  v110 = [objc_opt_self() emptyPropertySet];

  return v110;
}

id sub_10002B3C8()
{
  sub_10010FC20(&qword_101186F10, &unk_100EC96E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBE260;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v1;
  sub_10010FC20(&unk_101181640, &qword_100EBD090);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100EBC6B0;
  *(v2 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v2 + 40) = v3;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v5 = objc_opt_self();
  v6 = [v5 propertySetWithProperties:isa];

  *(inited + 48) = v6;
  *(inited + 56) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 64) = v7;
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100EBC6B0;
  *(v8 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v8 + 40) = v9;
  v10 = Array._bridgeToObjectiveC()().super.isa;

  v11 = [v5 propertySetWithProperties:v10];

  *(inited + 72) = v11;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100EBC6B0;
  *(v13 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v13 + 40) = v14;
  v15 = Array._bridgeToObjectiveC()().super.isa;

  v16 = [v5 propertySetWithProperties:v15];

  *(inited + 96) = v16;
  sub_10000BFA0(inited);
  swift_setDeallocating();
  sub_10010FC20(&qword_101186F18, &unk_100EC96F0);
  swift_arrayDestroy();
  v17 = objc_allocWithZone(MPPropertySet);
  v18 = Array._bridgeToObjectiveC()().super.isa;
  sub_100009F78(0, &qword_101186F20, MPPropertySet_ptr);
  v19 = Dictionary._bridgeToObjectiveC()().super.isa;

  v20 = [v17 initWithProperties:v18 relationships:v19];

  return v20;
}

void sub_10002B6B0()
{
  v1 = sub_10002E360();
  v2 = *&v1[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_request];

  v3 = (v0 + OBJC_IVAR____TtC9MusicCore6Player_nowPlayingConfiguration);
  swift_beginAccess();
  v4 = v3[1];
  v5 = *v3;
  v6 = v4;

  v8 = sub_10002B904(v7);
  v10 = v9;

  v11 = [v2 playingItemProperties];
  if (v11 && (v12 = v11, v13 = [v11 containsPropertySet:*v3], v12, v13) && (v14 = objc_msgSend(v2, "queueSectionProperties")) != 0)
  {
    v15 = v14;
    v16 = [v14 containsPropertySet:v3[1]];

    v17 = v16 ^ 1;
  }

  else
  {
    v17 = 1;
  }

  if ([v2 tracklistRange] != v8 || (v17 & 1) != 0 || v18 != v10)
  {
    [v2 setPlayingItemProperties:*v3];
    [v2 setQueueItemProperties:*v3];
    [v2 setQueueSectionProperties:v3[1]];
    [v2 setTracklistRange:{v8, v10}];
    v19 = sub_10001B5D8();
    v20 = *&v19[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_request];

    [v20 setPlayingItemProperties:*v3];
    v21 = OBJC_IVAR____TtC9MusicCore6Player_engineState;
    swift_beginAccess();
    if (*(v0 + v21) == 2)
    {
      v22 = *(*(v0 + OBJC_IVAR____TtC9MusicCore6Player____lazy_storage___nowPlayingDataSource) + OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_controller);
      v23 = v22;
      v24 = &selRef_setNeedsReloadForSignificantRequestChange;
      if (!v17)
      {
        v24 = &selRef_setNeedsReload;
      }

      [v22 *v24];
    }
  }
}

uint64_t sub_10002B904(uint64_t result)
{
  v1 = 0;
  v2 = 1 << *(result + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(result + 64);
  v5 = (v2 + 63) >> 6;
  for (i = 0uLL; v4; i = vbslq_s8(vcgtq_s64(v9, i), v9, i))
  {
    v7 = v1;
LABEL_9:
    v8 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v9 = *(*(result + 48) + ((v7 << 10) | (16 * v8)));
  }

  while (1)
  {
    v7 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    if (v7 >= v5)
    {
      return i.i64[0];
    }

    v4 = *(result + 64 + 8 * v7);
    ++v1;
    if (v4)
    {
      v1 = v7;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_10002B9A8(void **a1, uint64_t a2)
{
  sub_10010FC20(&qword_1011A7F00, &qword_100EEDE10);
  __chkstk_darwin();
  v4 = &v13 - v3;
  v5 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = type metadata accessor for TaskPriority();
    (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
    type metadata accessor for MainActor();
    v9 = v5;
    v10 = v7;
    v11 = static MainActor.shared.getter();
    v12 = swift_allocObject();
    v12[2] = v11;
    v12[3] = &protocol witness table for MainActor;
    v12[4] = v10;
    v12[5] = v5;
    sub_100969440(0, 0, v4, &unk_100EF7380, v12);
  }
}

uint64_t sub_10002BB10()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t type metadata accessor for MPCPlayerResponse.VideoContext(uint64_t a1)
{
  result = qword_1011AC780;
  if (!qword_1011AC780)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10002BBA4(void *a1, uint64_t *a2, uint64_t *a3)
{
  swift_beginAccess();
  sub_10010FC20(a2, a3);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t sub_10002BC44(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_10002BC98(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_10002BCDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  swift_beginAccess();

  sub_10002BC44(a4, a5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(a1 + 16);
  *(a1 + 16) = 0x8000000000000000;
  sub_10002A004(a4, a5, a2, a3, isUniquelyReferenced_nonNull_native);

  *(a1 + 16) = v12;
  return swift_endAccess();
}

Swift::Int sub_10002BDA8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10010FC20(&qword_1011B1648, &qword_100F00540);
  v33 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 16 * (v18 | (v8 << 6));
      v22 = (*(v5 + 48) + v21);
      v23 = *v22;
      v24 = v22[1];
      v34 = *(*(v5 + 56) + v21);
      if ((v33 & 1) == 0)
      {

        sub_10002BC44(v34, *(&v34 + 1));
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v7 + 56) + v16) = v34;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_10002C064(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

id sub_10002C0B8(void *a1, void *a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = Logger.scenes.unsafeMutableAddressor();
  (*(v5 + 16))(v7, v8, v4);
  v9 = a1;
  v10 = a2;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  v13 = &stru_101148000;
  if (os_log_type_enabled(v11, v12))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v43 = v41;
    *v14 = 136446466;
    v42 = [v9 role];
    type metadata accessor for Role(0);
    v16 = String.init<A>(describing:)();
    v18 = sub_1000105AC(v16, v17, &v43);
    v40 = v4;
    v19 = v18;
    v13 = &stru_101148000;

    *(v14 + 4) = v19;
    *(v14 + 12) = 2114;
    *(v14 + 14) = v10;
    *v15 = v10;
    v20 = v10;
    _os_log_impl(&_mh_execute_header, v11, v12, "Configuring scene for role=%{public}s, options: %{public}@", v14, 0x16u);
    sub_1000095E8(v15, &unk_101183D70, &unk_100EC6540);

    sub_10000959C(v41);

    (*(v5 + 8))(v7, v40);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  v21 = [v9 v13[174].name];
  v22 = [objc_allocWithZone(UISceneConfiguration) initWithName:0 sessionRole:v21];

  v23 = [v9 v13[174].name];
  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;
  if (v24 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v26 == v27)
  {

LABEL_9:
    type metadata accessor for MainSceneDelegate();
    goto LABEL_10;
  }

  v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v28)
  {

    goto LABEL_9;
  }

  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v31;
  if (v30 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v32 == v33)
  {

LABEL_17:
    type metadata accessor for CarPlaySceneDelegate();
    goto LABEL_10;
  }

  v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v34)
  {

    goto LABEL_17;
  }

  v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v37 = v36;
  if (v35 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v37 == v38)
  {
  }

  else
  {
    v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v39 & 1) == 0)
    {
      return v22;
    }
  }

  type metadata accessor for ClarityUISceneDelegate();
LABEL_10:
  [v22 setDelegateClass:swift_getObjCClassFromMetadata()];
  return v22;
}

uint64_t sub_10002C53C(void *a1, void *a2, void *a3)
{
  v130 = a2;
  v124 = type metadata accessor for OSSignpostError();
  v127 = *(v124 - 8);
  __chkstk_darwin();
  v126 = &v123 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = type metadata accessor for Logger();
  v133 = *(v134 - 1);
  __chkstk_darwin();
  v132 = &v123 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = type metadata accessor for OSSignpostID();
  v7 = *(v143 - 8);
  __chkstk_darwin();
  v128 = &v123 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v141 = &v123 - v9;
  __chkstk_darwin();
  v11 = &v123 - v10;
  __chkstk_darwin();
  v13 = &v123 - v12;
  v14 = type metadata accessor for OSSignposter();
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v125 = &v123 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v18 = &v123 - v17;
  __chkstk_darwin();
  v20 = &v123 - v19;
  objc_opt_self();
  v21 = swift_dynamicCastObjCClass();
  if (v21)
  {
    v131 = a3;
    v145 = v21;
    v129 = a1;
    v22 = OSSignposter.launch.unsafeMutableAddressor();
    v144 = v15;
    v23 = *(v15 + 16);
    v136 = v15 + 16;
    v137 = v22;
    v142 = v14;
    v135 = v23;
    (v23)(v20);
    static OSSignpostID.exclusive.getter();
    v24 = OSSignposter.logHandle.getter();
    v25 = static os_signpost_type_t.begin.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      v27 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v24, v25, v27, "MainScene.DidBecomeActive", "", v26, 2u);
    }

    v28 = *(v7 + 16);
    v29 = v143;
    v28(v11, v13, v143);
    type metadata accessor for OSSignpostIntervalState();
    swift_allocObject();
    v30 = OSSignpostIntervalState.init(id:isOpen:)();
    v139 = *(v7 + 8);
    v140 = v7 + 8;
    v139(v13, v29);
    v31 = *(v144 + 8);
    v32 = v142;
    v144 += 8;
    v138 = v31;
    v31(v20, v142);
    v33 = v146;
    *(v146 + OBJC_IVAR____TtC5Music17MainSceneDelegate_signpostDidBecomeActiveIntervalState) = v30;

    v135(v18, v137, v32);
    v34 = v141;
    static OSSignpostID.exclusive.getter();
    v35 = OSSignposter.logHandle.getter();
    v36 = static os_signpost_type_t.begin.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      v38 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v35, v36, v38, "MainScene.DidLoad", "", v37, 2u);
      v34 = v141;
    }

    v39 = v143;
    v28(v11, v34, v143);
    swift_allocObject();
    v141 = OSSignpostIntervalState.init(id:isOpen:)();
    v139(v34, v39);
    v138(v18, v142);
    v40 = Logger.scenes.unsafeMutableAddressor();
    v41 = v133;
    v42 = v132;
    v43 = v134;
    (v133[2])(v132, v40, v134);
    v44 = v129;
    v45 = v130;
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v149 = swift_slowAlloc();
      *v48 = 136446466;
      v49 = [v44 description];
      v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v52 = v51;

      v53 = sub_1000105AC(v50, v52, &v149);

      *(v48 + 4) = v53;
      *(v48 + 12) = 2082;
      v33 = v146;
      v54 = [v45 description];
      v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v57 = v56;

      v58 = sub_1000105AC(v55, v57, &v149);

      *(v48 + 14) = v58;
      _os_log_impl(&_mh_execute_header, v46, v47, "Main scene: %{public}s willConnectTo: %{public}s", v48, 0x16u);
      swift_arrayDestroy();

      v133[1](v132, v134);
    }

    else
    {

      v41[1](v42, v43);
    }

    v59 = v131;
    v60 = objc_allocWithZone(type metadata accessor for Window());
    v133 = v44;
    v61 = v145;
    v62 = [v60 initWithWindowScene:v145];
    v63 = *(v33 + OBJC_IVAR____TtC5Music17MainSceneDelegate_window);
    *(v33 + OBJC_IVAR____TtC5Music17MainSceneDelegate_window) = v62;
    v64 = v62;

    v65 = UIWindowScene.noticePresenter.getter();
    LOBYTE(v63) = *NoticePresenter.defaultEdge.unsafeMutableAddressor();
    v66 = (*(*v65 + 304))(&v149);
    *(v67 + 8) = v63;
    v66(&v149, 0);

    v68 = [objc_opt_self() currentTraitCollection];
    v69 = [v68 userInterfaceIdiom];

    v70 = UIWindowScene.noticePresenter.getter();
    v71 = v70;
    if (v69 == 6)
    {
      v72 = (*(*v70 + 304))(&v149);
      *(v73 + 16) = 0x4034000000000000;
    }

    else
    {
      v74 = *NoticePresenter.defaultEdgePadding.unsafeMutableAddressor();
      v72 = (*(*v71 + 304))(&v149);
      *(v75 + 16) = v74;
    }

    v72(&v149, 0);

    v76 = UIWindowScene.noticePresenter.getter();
    v77 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v78 = *(*v76 + 344);

    v78(sub_10045D98C, v77);

    v79 = sub_100030474();
    [v64 setRootViewController:v79];

    type metadata accessor for AppInterfaceContext();
    swift_allocObject();
    v132 = v79;
    v80 = v59;
    *(v33 + OBJC_IVAR____TtC5Music17MainSceneDelegate_interfaceContext) = sub_100033504(v79, v80);

    sub_1000593FC();

    [v64 makeKeyAndVisible];
    if (qword_10117F718 == -1)
    {
      goto LABEL_13;
    }

    while (1)
    {
      swift_once();
LABEL_13:
      [v61 setActivityItemsConfigurationSource:static GroupActivitiesManager.suggestionProvider];
      sub_10005AC24();
      v81 = [v80 URLContexts];
      sub_100009F78(0, &qword_101189758, UIOpenURLContext_ptr);
      sub_10005C54C(&qword_101189760, &qword_101189758, UIOpenURLContext_ptr);
      v82 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10005C59C(v61, v82);

      v83 = [v80 shortcutItem];
      if (v83)
      {
        v84 = v83;
        sub_10045D310(v61, v83, UIScreen.Dimensions.size.getter, 0);
      }

      v134 = v64;
      v85 = [v80 userActivities];
      v80 = sub_100009F78(0, &qword_101190C20, NSUserActivity_ptr);
      sub_10005C54C(&qword_101190C28, &qword_101190C20, NSUserActivity_ptr);
      v86 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      if ((v86 & 0xC000000000000001) != 0)
      {
        __CocoaSet.makeIterator()();
        Set.Iterator.init(_cocoa:)();
        v86 = v149;
        v64 = v150;
        v87 = v151;
        v88 = v152;
        v89 = v153;
      }

      else
      {
        v88 = 0;
        v90 = -1 << *(v86 + 32);
        v64 = (v86 + 56);
        v87 = ~v90;
        v91 = -v90;
        v92 = v91 < 64 ? ~(-1 << v91) : -1;
        v89 = v92 & *(v86 + 56);
      }

      v131 = v87;
      v93 = (v87 + 64) >> 6;
      if (v86 < 0)
      {
        break;
      }

LABEL_22:
      v94 = v88;
      v95 = v89;
      v96 = v88;
      if (v89)
      {
LABEL_26:
        v97 = (v95 - 1) & v95;
        v61 = *(*(v86 + 48) + ((v96 << 9) | (8 * __clz(__rbit64(v95)))));
        if (v61)
        {
          goto LABEL_30;
        }

        goto LABEL_32;
      }

      while (1)
      {
        v96 = v94 + 1;
        if (__OFADD__(v94, 1))
        {
          break;
        }

        if (v96 >= v93)
        {
          goto LABEL_32;
        }

        v95 = *(v64 + v96);
        ++v94;
        if (v95)
        {
          goto LABEL_26;
        }
      }

      __break(1u);
    }

    while (1)
    {
      v98 = __CocoaSet.Iterator.next()();
      if (!v98)
      {
        break;
      }

      v147 = v98;
      swift_dynamicCast();
      v61 = v148;
      v96 = v88;
      v97 = v89;
      if (!v148)
      {
        break;
      }

LABEL_30:
      sub_10045C984(v145, v61);

      v88 = v96;
      v89 = v97;
      if ((v86 & 0x8000000000000000) == 0)
      {
        goto LABEL_22;
      }
    }

LABEL_32:
    sub_10005C9F8(v86);
    v99 = qword_10117F5F8;
    v133 = v133;
    if (v99 != -1)
    {
      swift_once();
    }

    v100 = qword_101218AC8;
    type metadata accessor for Player.SnapshotController();
    swift_allocObject();

    v101 = Player.SnapshotController.init(windowScene:player:)(v145, v100);
    *(v146 + OBJC_IVAR____TtC5Music17MainSceneDelegate_snapshotter) = v101;

    v102 = v125;
    v103 = v142;
    v135(v125, v137, v142);
    v104 = OSSignposter.logHandle.getter();
    v105 = v128;
    OSSignpostIntervalState.signpostID.getter();
    v106 = static os_signpost_type_t.end.getter();
    v107 = OS_os_log.signpostsEnabled.getter();
    v108 = v127;
    v109 = v126;
    if (v107)
    {

      checkForErrorAndConsumeState(state:)();

      v110 = v124;
      if ((*(v108 + 88))(v109, v124) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v111 = "[Error] Interval already ended";
      }

      else
      {
        (*(v108 + 8))(v109, v110);
        v111 = "";
      }

      v112 = swift_slowAlloc();
      *v112 = 0;
      v113 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v104, v106, v113, "MainScene.DidLoad", v111, v112, 2u);
    }

    v114 = v133;

    v139(v105, v143);
    return (v138)(v102, v103);
  }

  else
  {
    v149 = 0;
    v150 = 0xE000000000000000;
    _StringGuts.grow(_:)(41);

    v149 = 0xD000000000000011;
    v150 = 0x8000000100E4C700;
    v116 = a1;
    v117 = [v116 description];
    v118 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v120 = v119;

    v121._countAndFlagsBits = v118;
    v121._object = v120;
    String.append(_:)(v121);

    v122._countAndFlagsBits = 0xD000000000000016;
    v122._object = 0x8000000100E4C720;
    String.append(_:)(v122);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_10002D61C()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t *GroupActivitiesManager.Activity.playingProperties.unsafeMutableAddressor()
{
  if (qword_1011A6B08 != -1)
  {
    swift_once();
  }

  return &static GroupActivitiesManager.Activity.playingProperties;
}

uint64_t sub_10002D6A4(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10002BC44(result, a2);
  }

  return result;
}

uint64_t sub_10002D774(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for OSSignposter();

  return sub_1000060E4(v4, a2);
}

uint64_t sub_10002D7C8()
{
  v0 = type metadata accessor for OSSignposter();
  sub_100006080(v0, static OSSignposter.launch);
  sub_1000060E4(v0, static OSSignposter.launch);
  return OSSignposter.init(subsystem:category:)();
}

void sub_10002D83C()
{
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v1 = v14 - v0;
  v2 = [objc_opt_self() standardUserDefaults];
  v14[0] = 0x54656C6261736964;
  v14[1] = 0xEF737069546C6F6FLL;
  sub_100009838();
  NSUserDefaults.subscript.getter(&v15);
  if (!v16)
  {
    sub_1000095E8(&v15, &unk_101183F30, qword_100EBF960);
    goto LABEL_10;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:

    byte_101196188 = 0;
    goto LABEL_11;
  }

  v3 = v14[0];

  byte_101196188 = v3;
  if (v3)
  {
    if (qword_10117F8B0 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000060E4(v4, qword_1011961A0);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "🤖 ToolTips are disabled; skipping prewarm.", v7, 2u);
    }

    return;
  }

LABEL_11:
  if (qword_10117F8B0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_1000060E4(v8, qword_1011961A0);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "🔥 Prewarming tooltips…", v11, 2u);
  }

  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v1, 1, 1, v12);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  sub_10035EB10(0, 0, v1, &unk_100ED4710, v13);

  sub_1000095E8(v1, &unk_101181520, &qword_100EBCC60);
}

uint64_t sub_10002DB88()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t *MetricsReportingController.shared.unsafeMutableAddressor()
{
  if (qword_1011A6810 != -1)
  {
    swift_once();
  }

  return &static MetricsReportingController.shared;
}

id sub_10002DC10()
{
  result = [objc_allocWithZone(type metadata accessor for MetricsReportingController()) init];
  static MetricsReportingController.shared = result;
  return result;
}

uint64_t sub_10002DC40(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100008F30;

  return sub_10002DCEC();
}

uint64_t sub_10002DD90()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10002DDD0()
{

  return swift_deallocObject();
}

uint64_t UIWindowScene.noticePresenter.getter()
{
  UIWindowScene.noticePresenting.getter(v5);
  if (!v6)
  {
    sub_1000095E8(v5, &qword_1011B26B0, &qword_100F02480);
    goto LABEL_5;
  }

  sub_10010FC20(&qword_1011B26B8, &qword_100F02488);
  type metadata accessor for NoticePresenter(0);
  if (!swift_dynamicCast())
  {
LABEL_5:
    v1 = type metadata accessor for NoticePresenter(0);
    v0 = swift_allocObject();
    NoticePresenter.init()();
    v6 = v1;
    v7 = &protocol witness table for NoticePresenter;
    v5[0] = v0;

    UIWindowScene.noticePresenting.setter(v5);
    swift_getKeyPath();
    v5[0] = v0;
    sub_10002FB28(&qword_1011B2660, type metadata accessor for NoticePresenter, &protocol conformance descriptor for NoticePresenter);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v5[0] = v0;
    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    v2 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__configuration;
    swift_beginAccess();
    sub_10002FB70(v0 + v2, v5);
    swift_unknownObjectWeakAssign();
    sub_10002FB70(v0 + v2, v4);
    swift_beginAccess();
    sub_10002FBA8(v5, v0 + v2);
    swift_endAccess();
    sub_10002FBE0(v4);
    sub_10002FF10(v4);
    sub_10002FF10(v5);
    v5[0] = v0;
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();

    return v0;
  }

  return v4[0];
}

double UIWindowScene.noticePresenting.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_1011A6AD0 != -1)
  {
    swift_once();
  }

  if (objc_getAssociatedObject(v1, qword_1011AE628))
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (!*(&v5 + 1))
  {
    sub_1000095E8(v6, &qword_1011ABB20, &unk_100EF1530);
    goto LABEL_10;
  }

  sub_10010FC20(&qword_1011AE630, &unk_100EFA200);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t sub_10002E200()
{
  result = swift_slowAlloc();
  qword_1011AE628 = result;
  return result;
}

uint64_t type metadata accessor for NoticePresenter(uint64_t a1)
{
  result = qword_1011B26E8;
  if (!qword_1011B26E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10002E274(uint64_t a1)
{
  sub_10002EE20(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ObservationRegistrar();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

char *sub_10002E360()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MusicCore6Player____lazy_storage___nowPlayingDataSource);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC9MusicCore6Player____lazy_storage___nowPlayingDataSource);
  }

  else
  {
    v3 = v0;
    v35 = OBJC_IVAR____TtC9MusicCore6Player____lazy_storage___nowPlayingDataSource;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(v36);

    v4 = v36[0];
    v5 = [v36[0] route];

    if (!v5)
    {
      v5 = [objc_opt_self() systemRoute];
    }

    v6 = [v5 isDeviceRoute];
    v7 = objc_opt_self();
    if (v6)
    {
      v8 = v7;
      if (qword_1011A6A50 != -1)
      {
        swift_once();
      }

      v9 = String._bridgeToObjectiveC()();
      v10 = [v8 systemMusicPathWithRoute:v5 playerID:v9];
    }

    else
    {
      v10 = [v7 pathWithRoute:v5 bundleID:0 playerID:0];
    }

    v11 = swift_allocObject();
    swift_weakInit();
    v12 = swift_allocObject();
    swift_weakInit();
    v13 = type metadata accessor for Player.DataSource();
    v14 = objc_allocWithZone(v13);
    v15 = OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_request;
    *&v14[v15] = [objc_allocWithZone(MPCPlayerRequest) init];
    v14[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_automaticallyReloads] = 0;
    v16 = OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_controller;
    *&v14[v16] = [objc_allocWithZone(MPRequestResponseController) init];
    *&v14[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_path] = v10;
    v17 = &v14[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_onResponseChanged];
    *v17 = sub_100A6F9F0;
    v17[1] = v11;
    v18 = &v14[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_onError];
    *v18 = sub_100A6F9F8;
    v18[1] = v12;
    v37.receiver = v14;
    v37.super_class = v13;
    v19 = v10;

    v20 = objc_msgSendSuper2(&v37, "init");
    v21 = OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_controller;
    v22 = *&v20[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_controller];
    v23 = v20;
    [v22 setDelegate:v23];
    v24 = OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_request;
    v25 = qword_1011A6A88;
    v26 = *&v23[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_request];
    if (v25 != -1)
    {
      swift_once();
    }

    [v26 setPlayingItemProperties:{qword_1011ACFD0, v11}];

    [*&v23[v24] setTracklistRange:{0, 0}];
    [*&v23[v24] setPlayerPath:v19];
    v27 = *&v23[v24];
    v36[0] = 0xD000000000000012;
    v36[1] = 0x8000000100E617E0;
    v28 = v27;
    v29._countAndFlagsBits = 0x6979616C50776F4ELL;
    v29._object = 0xEA0000000000676ELL;
    String.append(_:)(v29);
    v30 = v19;
    v31 = String._bridgeToObjectiveC()();

    [v28 setLabel:v31];

    [*&v20[v21] setRequest:*&v23[v24]];

    v32 = *(v3 + v35);
    *(v3 + v35) = v20;
    v2 = v23;

    v1 = 0;
  }

  v33 = v1;
  return v2;
}

uint64_t sub_10002E7BC()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, qword_1011961A0);
  sub_1000060E4(v0, qword_1011961A0);
  return static Logger.music(_:)(0x7069746C6F6F54, 0xE700000000000000);
}

char *sub_10002E820()
{
  v1 = OBJC_IVAR____TtC9MusicCore26MetricsReportingController_componentRenderEventSampler;
  sub_10010FC20(&qword_1011A71E8, &unk_100EE9580);
  v2 = swift_allocObject();
  v3 = objc_opt_self();
  *(v2 + 16) = [v3 standardUserDefaults];
  *&v0[v1] = v2;
  v4 = OBJC_IVAR____TtC9MusicCore26MetricsReportingController_pageRenderEventSampler;
  sub_10010FC20(&unk_1011A71F0, &unk_100EF1540);
  v5 = swift_allocObject();
  *(v5 + 16) = [v3 standardUserDefaults];
  *&v0[v4] = v5;
  *&v0[OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsConfiguration] = 0;
  v6 = OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsController;
  *&v0[v6] = [objc_allocWithZone(SSMetricsController) init];
  v7 = OBJC_IVAR____TtC9MusicCore26MetricsReportingController_carFocusedMetricsController;
  *&v0[v7] = [objc_allocWithZone(SSMetricsController) init];
  v8 = OBJC_IVAR____TtC9MusicCore26MetricsReportingController_carMetricsReporter;
  type metadata accessor for CarNowPlayingMetrics.Reporter();
  *&v0[v8] = swift_allocObject();
  *&v0[OBJC_IVAR____TtC9MusicCore26MetricsReportingController_backgroundObserver] = 0;
  *&v0[OBJC_IVAR____TtC9MusicCore26MetricsReportingController_urlBagObserver] = 0;
  *&v0[OBJC_IVAR____TtC9MusicCore26MetricsReportingController_pageHistory] = _swiftEmptyArrayStorage;
  v19.receiver = v0;
  v19.super_class = type metadata accessor for MetricsReportingController();
  v9 = objc_msgSendSuper2(&v19, "init");
  v10 = qword_1011A68E8;
  v11 = v9;
  if (v10 != -1)
  {
    swift_once();
  }

  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for BagProvider.Observer();
  v13 = swift_allocObject();
  swift_weakInit();
  *(v13 + 24) = 0;
  *(v13 + 32) = 0;
  swift_weakAssign();
  v14 = *(v13 + 24);
  v15 = *(v13 + 32);
  *(v13 + 24) = sub_1009544A8;
  *(v13 + 32) = v12;
  swift_retain_n();
  sub_100020438(v14, v15);
  __chkstk_darwin();
  UnfairLock.locked<A>(_:)(sub_10001A4A4);
  sub_10000679C(0);

  *&v11[OBJC_IVAR____TtC9MusicCore26MetricsReportingController_urlBagObserver] = v13;

  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = UISceneDidEnterBackgroundNotification;

  type metadata accessor for NotificationObserver();
  swift_allocObject();
  *&v11[OBJC_IVAR____TtC9MusicCore26MetricsReportingController_backgroundObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v17, 0, 1, 1, sub_1009544B0, v16);

  return v11;
}

uint64_t sub_10002EC44()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

id sub_10002ECEC(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC5Music6Window_screenDimensionsDidChangeHandler];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = &v1[OBJC_IVAR____TtC5Music6Window_boundsSizeDidChangeHandler];
  *v5 = 0;
  *(v5 + 1) = 0;
  *&v1[OBJC_IVAR____TtC5Music6Window_overrideTraitCollection] = 0;
  v6 = [a1 effectiveGeometry];
  v7 = [v6 coordinateSpace];

  [v7 bounds];
  v9 = v8;
  v11 = v10;
  swift_unknownObjectRelease();
  v12 = [a1 screen];
  v13 = UIScreen.dimensions.getter();
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v20 = &v2[OBJC_IVAR____TtC5Music6Window_lastSeenDimensions];
  *v20 = v9;
  *(v20 + 1) = v11;
  v20[2] = v13;
  *(v20 + 3) = v15;
  *(v20 + 4) = v17;
  *(v20 + 5) = v19;
  v22.receiver = v2;
  v22.super_class = type metadata accessor for Window();
  return objc_msgSendSuper2(&v22, "initWithWindowScene:", a1);
}

void sub_10002EE20(uint64_t a1)
{
  if (!qword_1011B26F8)
  {
    type metadata accessor for Notice(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1011B26F8);
    }
  }
}

void sub_10002EE78(uint64_t a1)
{
  sub_10002F598(319, &qword_1011ABCE8, type metadata accessor for Notice.Thumbnail);
  if (v1 <= 0x3F)
  {
    sub_10002F6C8();
    if (v2 <= 0x3F)
    {
      sub_10002EFE0(319);
      if (v3 <= 0x3F)
      {
        sub_10002F598(319, &unk_1011ABCF0, type metadata accessor for FeedbackType);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10002EF7C(uint64_t a1)
{
  if (!qword_1011A11C0)
  {
    sub_1001109D0(&unk_10118F700, "dM\n");
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1011A11C0);
    }
  }
}

void sub_10002EFE0(uint64_t a1)
{
  if (!qword_1011A81E0)
  {
    sub_1001109D0(&qword_1011A7C60, &qword_100EEC3B0);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1011A81E0);
    }
  }
}

void sub_10002F044(uint64_t a1)
{
  if (!qword_1011B3898)
  {
    sub_1001109D0(&qword_1011B6050, &qword_100F07030);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1011B3898);
    }
  }
}

uint64_t sub_10002F0A8()
{
  *(v0 + 48) = type metadata accessor for MainActor();
  *(v0 + 56) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100067658, v2, v1);
}

uint64_t static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(uint64_t (*a1)(void), uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([objc_opt_self() isMainThread])
  {
    return a1();
  }

  sub_100027140();
  v13 = static OS_dispatch_queue.main.getter();
  aBlock[4] = a1;
  aBlock[5] = a2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002BC98;
  aBlock[3] = &unk_1010F10E0;
  v14 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100024844();
  sub_10010FC20(&unk_1011BADE0, &qword_100F0C060);
  sub_100024A2C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v5 + 8))(v7, v4);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_10002F3F4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

double UIScreen.dimensions.getter()
{
  [v0 bounds];
  v2 = v1;
  [objc_msgSend(v0 "fixedCoordinateSpace")];
  swift_unknownObjectRelease();
  return v2;
}

void sub_10002F598(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10002F60C(uint64_t a1)
{
  result = type metadata accessor for Artwork();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_10002F678()
{
  if (!qword_10118F6F0)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10118F6F0);
    }
  }
}

void sub_10002F6C8()
{
  if (!qword_1011AEEF0)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1011AEEF0);
    }
  }
}

uint64_t NoticePresenter.init()()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__notice;
  v2 = type metadata accessor for Notice(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__dismissalWorkItem) = 0;
  swift_unknownObjectWeakInit();
  v6[8] = 2;
  v7 = 0x4024000000000000;
  v3 = *&NSDirectionalEdgeInsetsZero.bottom;
  v8 = *&NSDirectionalEdgeInsetsZero.top;
  v9 = v3;
  sub_10002F8D8(v6, v0 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__configuration);
  v4 = (v0 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__willPresentHandler);
  *v4 = 0;
  v4[1] = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow) = 0;
  ObservationRegistrar.init()();
  return v0;
}

uint64_t sub_10002F828(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_10010FC20(&qword_1011ABC70, &qword_100EF6198);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t UIWindowScene.noticePresenting.setter(uint64_t a1)
{
  if (qword_1011A6AD0 != -1)
  {
    swift_once();
  }

  v3 = qword_1011AE628;
  sub_10002FAA8(a1, v12);
  v4 = v13;
  if (v13)
  {
    sub_10000954C(v12, v13);
    v5 = *(v4 - 8);
    v6 = __chkstk_darwin();
    v8 = &v12[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v8, v6);
    v9 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v5 + 8))(v8, v4);
    sub_10000959C(v12);
  }

  else
  {
    v9 = 0;
  }

  objc_setAssociatedObject(v1, v3, v9, 1);
  swift_unknownObjectRelease();
  return sub_1000095E8(a1, &qword_1011A86F0, &qword_100EEDD10);
}

uint64_t sub_10002FAA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011A86F0, &qword_100EEDD10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002FB28(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10002FBE0(uint64_t a1)
{
  v2 = v1;
  swift_getKeyPath();
  v9[0] = v1;
  sub_10002FB28(&qword_1011B2660, type metadata accessor for NoticePresenter, &protocol conformance descriptor for NoticePresenter);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__configuration;
  swift_beginAccess();
  sub_10002FB70(v1 + v4, v9);
  v5 = _s11MusicCoreUI15NoticePresenterC13ConfigurationV23__derived_struct_equalsySbAE_AEtFZ_0(a1, v9);
  sub_10002FF10(v9);
  if ((v5 & 1) == 0)
  {
    swift_getKeyPath();
    v9[0] = v2;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v6 = *(v2 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow);
    if (v6)
    {
      v7 = [v6 rootViewController];
      if (v7)
      {
        v8 = v7;
        type metadata accessor for NoticePresenter.UIRootViewController();
        if (swift_dynamicCastClass())
        {
          swift_getKeyPath();
          v9[0] = v2;
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          sub_10002FB70(v2 + v4, v9);
          sub_100B43BF4(v9);
        }
      }
    }
  }
}

void sub_10002FDE0(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_100B41C8C(v1);
}

uint64_t _s11MusicCoreUI15NoticePresenterC13ConfigurationV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = swift_unknownObjectWeakLoadStrong();
  v6 = v5;
  if (Strong)
  {
    if (v5)
    {
      sub_100009F78(0, &qword_1011B2438, UIWindowScene_ptr);
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }

LABEL_11:
    v9 = 0;
    return v9 & 1;
  }

  if (v5)
  {

    goto LABEL_11;
  }

LABEL_7:
  v8 = Edge.rawValue.getter();
  if (v8 != Edge.rawValue.getter() || *(a1 + 16) != *(a2 + 16))
  {
    goto LABEL_11;
  }

  v9 = vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 24), *(a2 + 24)), vceqq_f64(*(a1 + 40), *(a2 + 40)))));
  return v9 & 1;
}

uint64_t (*NoticePresenter.configuration.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_10002FB28(&qword_1011B2660, type metadata accessor for NoticePresenter, &protocol conformance descriptor for NoticePresenter);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = sub_1000300A8(v4);
  return sub_100030140;
}

void (*sub_1000300A8(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xE8uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__configuration;
  *(v3 + 216) = v1;
  *(v3 + 224) = v5;
  swift_beginAccess();
  sub_10002FB70(v1 + v5, v4);
  return sub_1000301E0;
}

void sub_10003014C(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v3 = v3[4];
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  free(v3);
}

void sub_1000301E0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 216);
  v4 = *(*a1 + 224);
  if (a2)
  {
    sub_10002FB70(*a1, v2 + 56);
    sub_10002FB70(v3 + v4, v2 + 112);
    swift_beginAccess();
    sub_10002FBA8(v2 + 56, v3 + v4);
    swift_endAccess();
    sub_10002FBE0(v2 + 112);
    sub_10002FF10(v2 + 112);
  }

  else
  {
    sub_10002FB70(v3 + v4, v2 + 56);
    swift_beginAccess();
    sub_10002FBA8(v2, v3 + v4);
    swift_endAccess();
    sub_10002FBE0(v2 + 56);
  }

  sub_10002FF10(v2 + 56);
  sub_10002FF10(v2);

  free(v2);
}

uint64_t NoticePresenter.willPresentHandler.setter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_10002FB28(&qword_1011B2660, type metadata accessor for NoticePresenter, &protocol conformance descriptor for NoticePresenter);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_100020438(a1, a2);
}

uint64_t sub_1000303C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (a1 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__willPresentHandler);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a2;
  v5[1] = a3;
  sub_100030444(a2, a3);
  return sub_100020438(v6, v7);
}

uint64_t sub_100030444(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

id sub_100030474()
{
  v1 = OBJC_IVAR____TtC5Music17MainSceneDelegate____lazy_storage___tabBarController;
  v2 = *(v0 + OBJC_IVAR____TtC5Music17MainSceneDelegate____lazy_storage___tabBarController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Music17MainSceneDelegate____lazy_storage___tabBarController);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for TabBarController(0)) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t type metadata accessor for TabBarController(uint64_t a1)
{
  result = qword_10119EB48;
  if (!qword_10119EB48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100030554(uint64_t a1)
{
  if (!qword_10118C670)
  {
    type metadata accessor for LibraryImport.ViewModel(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_10118C670);
    }
  }
}

void sub_1000305AC(uint64_t a1)
{
  sub_100030554(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1000306A8(uint64_t a1)
{
  result = _s16ActionButtonViewV5ModelVMa(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for InlineBubbleTipProvider.InlineBubbleTip();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_100030728(uint64_t a1)
{
  sub_1000308A0(319, &qword_10118F6F0, &type metadata for String);
  if (v1 <= 0x3F)
  {
    sub_10003093C(319, &qword_101199BC8, &qword_101199BD0, &qword_100ED8550, type metadata accessor for HashableIgnored);
    if (v2 <= 0x3F)
    {
      sub_1000308A0(319, &qword_101199BD8, &_s5ModelVN);
      if (v3 <= 0x3F)
      {
        sub_100030A40(319, &unk_101199BE0, _s12ClickMetricsVMa);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100030850(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1000308A0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1000308EC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_10003093C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1001109D0(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1000309D0(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_100030A40(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100030AB4(uint64_t a1)
{
  sub_100030A40(319, &qword_1011814C0, &type metadata accessor for URL);
  if (v1 <= 0x3F)
  {
    sub_1000308A0(319, &unk_101199CA8, &type metadata for MetricsEvent.Click.ActionContext);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

char *sub_100030B84()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC5Music16TabBarController_barDelegate] = 0;
  *&v0[OBJC_IVAR____TtC5Music16TabBarController_sidebarDelegate] = 0;
  v0[OBJC_IVAR____TtC5Music16TabBarController_appearanceState] = 0x80;
  *&v0[OBJC_IVAR____TtC5Music16TabBarController_miniPlayerPaletteInteraction] = 0;
  *&v0[OBJC_IVAR____TtC5Music16TabBarController_bottomPlayerViewController] = 0;
  *&v0[OBJC_IVAR____TtC5Music16TabBarController____lazy_storage___libraryImportObserver] = 0;
  v2 = OBJC_IVAR____TtC5Music16TabBarController_libraryImportViewModel;
  v3 = type metadata accessor for LibraryImport.ViewModel(0);
  (*(*(v3 - 8) + 56))(&v0[v2], 1, 1, v3);
  *&v0[OBJC_IVAR____TtC5Music16TabBarController_libraryImportViewModelsToListenFor] = &off_10109C190;
  *&v0[OBJC_IVAR____TtC5Music16TabBarController_accountButtonCoordinator] = 0;
  *&v0[OBJC_IVAR____TtC5Music16TabBarController_sidebarAccountButton] = 0;
  *&v0[OBJC_IVAR____TtC5Music16TabBarController_sidebarActivityView] = 0;
  v4 = &v0[OBJC_IVAR____TtC5Music16TabBarController_onMusicTabsChanged];
  *v4 = 0;
  v4[1] = 0;
  v5 = &v0[OBJC_IVAR____TtC5Music16TabBarController_onSelectedMusicTabChanged];
  *v5 = 0;
  v5[1] = 0;
  v6 = OBJC_IVAR____TtC5Music16TabBarController_stackAuthorities;
  *&v0[v6] = sub_10010DA58(_swiftEmptyArrayStorage);
  *&v0[OBJC_IVAR____TtC5Music16TabBarController_observers] = &_swiftEmptySetSingleton;
  *&v0[OBJC_IVAR____TtC5Music16TabBarController__pendingTabIdentifiers] = 0;
  *&v0[OBJC_IVAR____TtC5Music16TabBarController_bindings] = _swiftEmptyArrayStorage;
  v0[OBJC_IVAR____TtC5Music16TabBarController_forceReloadTabViewControllers] = 0;
  v0[OBJC_IVAR____TtC5Music16TabBarController_canRestoreLastSelectedTab] = 1;
  *&v0[OBJC_IVAR____TtC5Music16TabBarController_tabSelectionTimeout] = 0;
  v33.receiver = v0;
  v33.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v33, "initWithNibName:bundle:", 0, 0);
  v8 = [v7 viewControllers];
  if (!v8 || (v8, (v9 = [v7 viewControllers]) != 0) && ((v10 = v9, sub_100009F78(0, &qword_101183D40, UIViewController_ptr), v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v10, v11 >> 62) ? (v12 = _CocoaArrayWrapper.endIndex.getter()) : (v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10)), , !v12))
  {
    sub_10010FC20(&qword_101183990, &qword_100EBC750);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_100EBC6C0;
    *(v13 + 32) = [objc_allocWithZone(UIViewController) init];
    sub_100009F78(0, &qword_101183D40, UIViewController_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v7 setViewControllers:isa];
  }

  v15 = [v7 sidebar];
  [v15 setPreferredLayout:static UITabBarControllerSidebarLayout._insetOverlap.getter()];

  [v7 setTabBarMinimizeBehavior:2];
  v16 = _s11BarDelegateCMa();
  v17 = objc_allocWithZone(v16);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v32.receiver = v17;
  v32.super_class = v16;
  v18 = v7;
  v19 = objc_msgSendSuper2(&v32, "init");
  v20 = v19;
  [v18 setDelegate:v20];

  v21 = *&v18[OBJC_IVAR____TtC5Music16TabBarController_barDelegate];
  *&v18[OBJC_IVAR____TtC5Music16TabBarController_barDelegate] = v19;

  v22 = _s15SidebarDelegateCMa();
  v23 = objc_allocWithZone(v22);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v31.receiver = v23;
  v31.super_class = v22;
  v24 = v18;
  v25 = objc_msgSendSuper2(&v31, "init");
  v26 = [v24 sidebar];
  [v26 setDelegate:v25];

  v27 = *&v24[OBJC_IVAR____TtC5Music16TabBarController_sidebarDelegate];
  *&v24[OBJC_IVAR____TtC5Music16TabBarController_sidebarDelegate] = v25;

  v28 = [v24 traitCollection];
  v29 = [v28 userInterfaceIdiom];

  if (v29 == 1)
  {
    sub_1006BAE98();
  }

  return v24;
}

id sub_1000310C8()
{
  v1 = v0;
  v34.receiver = v0;
  v34.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v34, "viewDidLoad");
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = qword_10117F7C8;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = qword_1011921E8;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_100031C8C;
  *(v5 + 24) = v2;

  sub_10010FC20(&qword_1011921F8, qword_100ED5E90);
  v6 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  objc_setAssociatedObject(v1, v4, v6, 3);
  swift_unknownObjectRelease();
  v7 = sub_10003169C();
  sub_100031928(v7);

  sub_100031E08();
  v8 = [v1 traitCollection];
  v9 = [v8 userInterfaceIdiom];

  if (v9 == 6)
  {
    goto LABEL_6;
  }

  result = [v1 view];
  if (result)
  {
    v11 = result;
    v12 = [objc_opt_self() systemBackgroundColor];
    [v11 setBackgroundColor:v12];

LABEL_6:
    v13 = [v1 tabBar];
    v14 = [v1 traitCollection];
    v15 = [v14 horizontalSizeClass];

    [v13 setTintAdjustmentMode:v15 != 2];
    v16 = [v1 tabBar];
    v17 = [v1 tabBar];
    v18 = [v17 standardAppearance];

    [v16 setScrollEdgeAppearance:v18];
    v19 = [v1 tabBar];
    [v19 setSpringLoaded:1];

    sub_10010FC20(&qword_101183990, &qword_100EBC750);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_100EBC6D0;
    sub_10010FC20(&qword_101183B78, &unk_100EBF5D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100EBC6B0;
    v22 = *ApplicationCapabilities.NotificationNames.supportedTabsDidChange.unsafeMutableAddressor();
    ApplicationCapabilities.Controller.shared.unsafeMutableAddressor();
    UIScreen.Dimensions.size.getter();
    *(inited + 56) = &type metadata for NotificationTrigger;
    *(inited + 64) = &protocol witness table for NotificationTrigger;
    *(inited + 32) = v23;
    *(inited + 40) = v24;
    v25 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for Whitetail.Binding();
    swift_allocObject();

    v26 = Whitetail.Binding.init(_:needsInitialConfiguration:configurationBlock:)(inited, 1, sub_100032898, v25);

    *(v20 + 32) = v26;
    v27 = swift_initStackObject();
    *(v27 + 16) = xmmword_100EBC6B0;
    v28 = *ApplicationCapabilities.NotificationNames.hasNetworkConnectivityDidChange.unsafeMutableAddressor();
    UIScreen.Dimensions.size.getter();
    *(v27 + 56) = &type metadata for NotificationTrigger;
    *(v27 + 64) = &protocol witness table for NotificationTrigger;
    *(v27 + 32) = v29;
    *(v27 + 40) = v30;
    v31 = swift_allocObject();
    swift_unknownObjectWeakInit();
    swift_allocObject();
    v32 = v28;

    v33 = Whitetail.Binding.init(_:needsInitialConfiguration:configurationBlock:)(v27, 0, sub_1006CC710, v31);

    *(v20 + 40) = v33;
    *&v1[OBJC_IVAR____TtC5Music16TabBarController_bindings] = v20;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000315E0()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100031618()
{

  return swift_deallocObject();
}

uint64_t sub_100031650()
{
  result = swift_slowAlloc();
  qword_1011921E8 = result;
  return result;
}

id sub_10003169C()
{
  if (qword_10117F7C0 != -1)
  {
    swift_once();
  }

  if (objc_getAssociatedObject(v0, qword_1011921E0))
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
  }

  v10 = v13;
  v11 = v14;
  if (*(&v14 + 1))
  {
    type metadata accessor for AppInterfaceContext();
    if (swift_dynamicCast())
    {
      return v9;
    }
  }

  else
  {
    sub_1000095E8(&v10, &unk_101183F30, qword_100EBF960);
  }

  v2 = [v0 parentViewController];
  if (v2)
  {
    v3 = v2;
    v4 = sub_10003169C();

    return v4;
  }

  result = [v0 view];
  if (result)
  {
    v5 = result;
    v6 = [result window];

    if (v6)
    {
      v7 = [v6 windowScene];

      if (v7)
      {
        v8 = [v7 delegate];

        if (v8 && (*&v13 = v8, sub_10010FC20(&unk_101184050, &unk_100EBFA30), sub_10010FC20(&unk_101184EB0, &qword_100ED56D0), (swift_dynamicCast() & 1) != 0))
        {
          if (*(&v11 + 1))
          {
            v4 = *(*sub_10000954C(&v10, *(&v11 + 1)) + OBJC_IVAR____TtC5Music17MainSceneDelegate_interfaceContext);

            sub_10000959C(&v10);
            return v4;
          }
        }

        else
        {
          v12 = 0;
          v10 = 0u;
          v11 = 0u;
        }

        sub_1000095E8(&v10, &unk_101184EA0, &unk_100EBFA20);
      }
    }

    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100031900()
{
  result = swift_slowAlloc();
  qword_1011921E0 = result;
  return result;
}

uint64_t sub_100031928(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100031A7C();
  if (v4)
  {
    v6 = v4;
    v7 = v5;
    v4(a1);
    sub_100020438(v6, v7);
  }

  v8 = [v2 childViewControllers];
  sub_100009F78(0, &qword_101183D40, UIViewController_ptr);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v9 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v11 = 0;
    while (1)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v12 = sub_10004056C(v11, v9);
      }

      else
      {
        if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v12 = *(v9 + 8 * v11 + 32);
      }

      v13 = v12;
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      sub_100031928(a1);

      ++v11;
      if (v14 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:
}

uint64_t (*sub_100031A7C())(uint64_t a1)
{
  if (qword_10117F7C8 != -1)
  {
    swift_once();
  }

  if (objc_getAssociatedObject(v0, qword_1011921E8))
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    sub_10010FC20(&qword_1011921F8, qword_100ED5E90);
    if (swift_dynamicCast())
    {
      *(swift_allocObject() + 16) = v2;
      return sub_100031BE4;
    }
  }

  else
  {
    sub_1000095E8(v5, &unk_101183F30, qword_100EBF960);
  }

  return 0;
}

uint64_t sub_100031BAC()
{

  return swift_deallocObject();
}

uint64_t sub_100031BE4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

void sub_100031C1C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    *(Strong + OBJC_IVAR____TtC5Music16TabBarController_forceReloadTabViewControllers) = a1 != 0;
    sub_100031CC8();
    sub_100031E08();
  }
}

void sub_100031CC8()
{
  if (*(v0 + OBJC_IVAR____TtC5Music16TabBarController_forceReloadTabViewControllers) == 1)
  {
    v1 = v0;
    if (qword_10117F7A0 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000060E4(v2, qword_101218E00);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Forcing tab reload", v5, 2u);
    }

    if (*(v1 + OBJC_IVAR____TtC5Music16TabBarController__pendingTabIdentifiers))
    {
      v6 = *(v1 + OBJC_IVAR____TtC5Music16TabBarController__pendingTabIdentifiers);
    }

    else
    {
      static ApplicationCapabilities.shared.getter(v7);
      v6 = v7[13];

      sub_100014984(v7);
    }

    sub_1000328A0(v6);
  }
}

void sub_100031E08()
{
  v1 = type metadata accessor for SocialProfileButtonDisplayStyle();
  v2 = *(v1 - 8);
  *&v3 = __chkstk_darwin().n128_u64[0];
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = [v0 traitCollection];
  v7 = [v6 userInterfaceIdiom];

  if (v7 == 1)
  {
    v8 = v0;
    v9 = sub_10003169C();
    if (v9)
    {
      if (v9[2])
      {

        v10 = sub_100674BE4(0);

        if (v10)
        {
          v11 = MusicPageProvider.accountButtonCoordinator.getter();
          *&v0[OBJC_IVAR____TtC5Music16TabBarController_accountButtonCoordinator] = v11;

          (*(v2 + 104))(v5, enum case for SocialProfileButtonDisplayStyle.titleAndIcon(_:), v1);
          v12 = MusicPageProvider.accountButton(displayStyle:stackAuthority:)();
          (*(v2 + 8))(v5, v1);
          v13 = *&v8[OBJC_IVAR____TtC5Music16TabBarController_sidebarAccountButton];
          *&v8[OBJC_IVAR____TtC5Music16TabBarController_sidebarAccountButton] = v12;

          v14 = swift_allocObject();
          swift_unknownObjectWeakInit();
          __chkstk_darwin();
          *&v16[-32] = v11;
          *&v16[-24] = sub_1006CC7FC;
          *&v16[-16] = v14;

          withObservationTracking<A>(_:onChange:)();
          dispatch thunk of AccountButtonCoordinator.isAccountButtonAvailable.getter();
          sub_1006CC9C4(v11, v14);

          return;
        }
      }
    }
  }

  *&v0[OBJC_IVAR____TtC5Music16TabBarController_accountButtonCoordinator] = 0;

  v15 = *&v0[OBJC_IVAR____TtC5Music16TabBarController_sidebarAccountButton];
  *&v0[OBJC_IVAR____TtC5Music16TabBarController_sidebarAccountButton] = 0;

  sub_100032128();
}

void sub_100032128()
{
  v1 = v0;
  v2 = *(type metadata accessor for SidebarActivityView.Activity(0) - 8);
  __chkstk_darwin();
  v4 = (&v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v6 = &v34 - v5;
  sub_10010FC20(&unk_1011A4B90, &unk_100ED2800);
  __chkstk_darwin();
  v8 = &v34 - v7;
  v9 = type metadata accessor for LibraryImport.ViewModel(0);
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC5Music16TabBarController_libraryImportViewModel;
  swift_beginAccess();
  sub_10003272C(&v1[v13], v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1000095E8(v8, &unk_1011A4B90, &unk_100ED2800);
    v14 = _swiftEmptyArrayStorage;
  }

  else
  {
    sub_1006CCB48(v8, v12, type metadata accessor for LibraryImport.ViewModel);
    sub_1006CCAE0(v12, v6, type metadata accessor for LibraryImport.ViewModel);
    swift_storeEnumTagMultiPayload();
    v14 = sub_10049AFD0(0, 1, 1, _swiftEmptyArrayStorage);
    v16 = v14[2];
    v15 = v14[3];
    if (v16 >= v15 >> 1)
    {
      v14 = sub_10049AFD0((v15 > 1), v16 + 1, 1, v14);
    }

    sub_1006CB5E8(v12, type metadata accessor for LibraryImport.ViewModel);
    v14[2] = v16 + 1;
    sub_1006CCB48(v6, v14 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v16, type metadata accessor for SidebarActivityView.Activity);
  }

  v17 = [v1 traitCollection];
  v18 = [v17 userInterfaceIdiom];

  if (v18 == 1)
  {
    if (*&v1[OBJC_IVAR____TtC5Music16TabBarController_accountButtonCoordinator])
    {

      v19 = dispatch thunk of AccountButtonCoordinator.isAccountButtonAvailable.getter();

      if (v19)
      {
        v20 = *&v1[OBJC_IVAR____TtC5Music16TabBarController_sidebarAccountButton];
        if (v20)
        {
          *v4 = v20;
          swift_storeEnumTagMultiPayload();
          v21 = v20;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v14 = sub_10049AFD0(0, v14[2] + 1, 1, v14);
          }

          v23 = v14[2];
          v22 = v14[3];
          if (v23 >= v22 >> 1)
          {
            v14 = sub_10049AFD0((v22 > 1), v23 + 1, 1, v14);
          }

          v14[2] = v23 + 1;
          sub_1006CCB48(v4, v14 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v23, type metadata accessor for SidebarActivityView.Activity);
        }
      }
    }
  }

  if (v14[2])
  {
    v24 = OBJC_IVAR____TtC5Music16TabBarController_sidebarActivityView;
    v25 = *&v1[OBJC_IVAR____TtC5Music16TabBarController_sidebarActivityView];
    if (v25)
    {
      v26 = *&v1[OBJC_IVAR____TtC5Music16TabBarController_sidebarActivityView];
    }

    else
    {
      v26 = [objc_allocWithZone(type metadata accessor for SidebarActivityView()) init];
      v25 = 0;
    }

    v30 = *&v26[OBJC_IVAR____TtC5Music19SidebarActivityView_activities];
    *&v26[OBJC_IVAR____TtC5Music19SidebarActivityView_activities] = v14;
    v31 = v25;
    sub_1005A102C(v30);

    v32 = *&v1[v24];
    *&v1[v24] = v26;
    v33 = v26;

    v29 = [v1 sidebar];
    [v29 setBottomBarView:*&v1[v24]];
  }

  else
  {

    v27 = OBJC_IVAR____TtC5Music16TabBarController_sidebarActivityView;
    v28 = *&v1[OBJC_IVAR____TtC5Music16TabBarController_sidebarActivityView];
    *&v1[OBJC_IVAR____TtC5Music16TabBarController_sidebarActivityView] = 0;

    v29 = [v1 sidebar];
    [v29 setBottomBarView:*&v1[v27]];
  }
}

uint64_t type metadata accessor for SidebarActivityView.Activity(uint64_t a1)
{
  result = qword_101196B78;
  if (!qword_101196B78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000326A8(uint64_t a1)
{
  result = type metadata accessor for LibraryImport.ViewModel(319);
  if (v2 <= 0x3F)
  {
    result = sub_100009F78(319, &qword_101181620, UIView_ptr);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10003272C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&unk_1011A4B90, &unk_100ED2800);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t *ApplicationCapabilities.NotificationNames.supportedTabsDidChange.unsafeMutableAddressor()
{
  if (qword_1011A6878 != -1)
  {
    swift_once();
  }

  return &static ApplicationCapabilities.NotificationNames.supportedTabsDidChange;
}

NSString sub_1000327EC()
{
  result = String._bridgeToObjectiveC()();
  static ApplicationCapabilities.NotificationNames.supportedTabsDidChange = result;
  return result;
}

void sub_100032824(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    static ApplicationCapabilities.shared.getter(v4);
    v3 = v5;

    sub_100014984(v4);
    sub_1000328A0(v3);
  }
}

void sub_1000328A0(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = sub_100033104();
  v5 = sub_10001F358(v4, a1);

  if ((v5 & 1) != 0 && *(v2 + OBJC_IVAR____TtC5Music16TabBarController_forceReloadTabViewControllers) != 1)
  {

    return;
  }

  v53 = OBJC_IVAR____TtC5Music16TabBarController__pendingTabIdentifiers;
  *(v2 + OBJC_IVAR____TtC5Music16TabBarController__pendingTabIdentifiers) = a1;
  swift_bridgeObjectRetain_n();

  if (*(v2 + OBJC_IVAR____TtC5Music16TabBarController_miniPlayerPaletteInteraction))
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      type metadata accessor for NowPlayingViewController(0);
      v8 = swift_dynamicCastClass();
      if (v8)
      {
        v9 = [v8 transitionCoordinator];

        if (v9)
        {

          v10 = swift_allocObject();
          *(v10 + 16) = v2;
          *(v10 + 24) = a1;
          v65 = sub_1006CC718;
          v66 = v10;
          aBlock = _NSConcreteStackBlock;
          v62 = 1107296256;
          v63 = sub_1007E9F28;
          v64 = &unk_1010BAF60;
          v11 = _Block_copy(&aBlock);
          v12 = v2;

          [v9 animateAlongsideTransition:0 completion:v11];
          _Block_release(v11);
          swift_unknownObjectRelease();
          return;
        }
      }

      else
      {
      }
    }
  }

  v54 = sub_10003169C();
  if (!v54)
  {

    if (qword_10117F7A0 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_1000060E4(v33, qword_101218E00);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "Skipping tabs update: No app interface context set yet", v36, 2u);
    }

    v37 = v53;
    v38 = &qword_10119E000;
    goto LABEL_68;
  }

  v13 = *(a1 + 16);
  if (v13)
  {
    v70 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v14 = 0;
    v57 = v2;
    v58 = a1 + 32;
    v55 = v13;
    v56 = a1;
    while (v14 < *(a1 + 16))
    {
      a1 = *(v58 + v14);
      v69.receiver = v2;
      v69.super_class = ObjectType;
      v15 = objc_msgSendSuper2(&v69, "tabs");
      sub_100009F78(0, &qword_101181F70, UITab_ptr);
      v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v60 = v14;
      if (v2 >> 62)
      {
        v16 = _CocoaArrayWrapper.endIndex.getter();
        if (v16)
        {
LABEL_20:
          v17 = 0;
          while (1)
          {
            if ((v2 & 0xC000000000000001) != 0)
            {
              v18 = sub_1007E914C(v17, v2);
            }

            else
            {
              if (v17 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_74;
              }

              v18 = *(v2 + 8 * v17 + 32);
            }

            v19 = v18;
            v20 = v17 + 1;
            if (__OFADD__(v17, 1))
            {
              break;
            }

            v21 = [v18 identifier];
            v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v24 = v23;

            if (a1 <= 2)
            {
              if (a1)
              {
                if (a1 == 1)
                {
                  v29 = 0x6F4E6E657473696CLL;
                }

                else
                {
                  v29 = 0x6573776F7262;
                }

                if (a1 == 1)
                {
                  v30 = 0xE900000000000077;
                }

                else
                {
                  v30 = 0xE600000000000000;
                }
              }

              else
              {
                v30 = 0xE700000000000000;
                v29 = 0x7972617262696CLL;
              }
            }

            else
            {
              v25 = 0x736F65646976;
              if (a1 != 5)
              {
                v25 = 0x7473696C79616C70;
              }

              v26 = 0xE900000000000073;
              v27 = 0xE600000000000000;
              if (a1 == 5)
              {
                v26 = 0xE600000000000000;
              }

              v28 = 0x6F69646172;
              if (a1 == 3)
              {
                v27 = 0xE500000000000000;
              }

              else
              {
                v28 = 0x686372616573;
              }

              if (a1 <= 4)
              {
                v29 = v28;
              }

              else
              {
                v29 = v25;
              }

              if (a1 <= 4)
              {
                v30 = v27;
              }

              else
              {
                v30 = v26;
              }
            }

            aBlock = 0xD000000000000014;
            v62 = 0x8000000100E3E560;
            v31 = v30;
            String.append(_:)(*&v29);

            if (v22 == 0xD000000000000014 && v24 == v62)
            {

              goto LABEL_16;
            }

            v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v32)
            {

              goto LABEL_16;
            }

            ++v17;
            if (v20 == v16)
            {
              goto LABEL_15;
            }
          }

          __break(1u);
LABEL_74:
          __break(1u);
          break;
        }
      }

      else
      {
        v16 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v16)
        {
          goto LABEL_20;
        }
      }

LABEL_15:

      sub_100034240(v54, a1);
LABEL_16:
      v14 = v60 + 1;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      a1 = v56;
      v2 = v57;
      if (v60 + 1 == v55)
      {

        goto LABEL_64;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_64:
    sub_100009F78(0, &qword_101181F70, UITab_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v68.receiver = v2;
    v68.super_class = ObjectType;
    objc_msgSendSuper2(&v68, "setTabs:", isa);

    sub_10003F5A0();
    sub_10003F950();
    if (qword_10117F7A0 == -1)
    {
      goto LABEL_65;
    }
  }

  swift_once();
LABEL_65:
  v40 = type metadata accessor for Logger();
  sub_1000060E4(v40, qword_101218E00);
  v41 = v2;
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    aBlock = v45;
    *v44 = 136446210;
    v67.receiver = v41;
    v67.super_class = ObjectType;
    v46 = objc_msgSendSuper2(&v67, "tabs");
    static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v47 = Array.description.getter();
    v49 = v48;

    v50 = sub_1000105AC(v47, v49, &aBlock);

    *(v44 + 4) = v50;
    _os_log_impl(&_mh_execute_header, v42, v43, "Successfully updated TabBarController with tab=%{public}s", v44, 0xCu);
    sub_10000959C(v45);
  }

  v37 = v53;
  v38 = &qword_10119E000;
  sub_1006BA068();

LABEL_68:
  *(v2 + v38[353]) = 0;
  sub_100031CC8();
  if (*(v2 + v37))
  {

    v52 = sub_10001F358(v51, a1);

    if ((v52 & 1) == 0)
    {
      return;
    }

    *(v2 + v37) = 0;
  }
}

char *sub_100033104()
{
  v16.receiver = v0;
  v16.super_class = swift_getObjectType();
  v1 = objc_msgSendSuper2(&v16, "tabs");
  sub_100009F78(0, &qword_101181F70, UITab_ptr);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v4 = 0;
    v5 = _swiftEmptyArrayStorage;
    v13 = i;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = sub_1007E914C(v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v6 = *(v2 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v15 = v6;
      sub_1006BAF5C(&v15, &v14);

      v9 = v14;
      if (v14 != 7)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_100014748(0, *(v5 + 2) + 1, 1, v5);
        }

        v11 = *(v5 + 2);
        v10 = *(v5 + 3);
        if (v11 >= v10 >> 1)
        {
          v5 = sub_100014748((v10 > 1), v11 + 1, 1, v5);
        }

        *(v5 + 2) = v11 + 1;
        v5[v11 + 32] = v9;
        i = v13;
      }

      ++v4;
      if (v8 == i)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v5 = _swiftEmptyArrayStorage;
LABEL_20:

  return v5;
}

uint64_t sub_1000332D4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for Logger();
  sub_100006080(v7, a2);
  sub_1000060E4(v7, a2);
  return static Logger.music(_:)(a3, a4);
}

uint64_t *ApplicationCapabilities.NotificationNames.hasNetworkConnectivityDidChange.unsafeMutableAddressor()
{
  if (qword_1011A6890 != -1)
  {
    swift_once();
  }

  return &static ApplicationCapabilities.NotificationNames.hasNetworkConnectivityDidChange;
}

NSString sub_10003339C()
{
  result = String._bridgeToObjectiveC()();
  static ApplicationCapabilities.NotificationNames.hasNetworkConnectivityDidChange = result;
  return result;
}

uint64_t sub_1000333D8(double a1)
{
  if (a1 <= 374.0)
  {
    return 0;
  }

  if (a1 <= 500.0)
  {
    return 1;
  }

  if (a1 <= 726.0)
  {
    return 2;
  }

  if (a1 <= 981.0)
  {
    return 3;
  }

  if (a1 > 2500.0)
  {
    v1 = 7;
  }

  else
  {
    v1 = 6;
  }

  if (a1 > 1500.0)
  {
    v2 = v1;
  }

  else
  {
    v2 = 5;
  }

  if (a1 > 1194.0)
  {
    return v2;
  }

  else
  {
    return 4;
  }
}

void *sub_100033504(uint64_t a1, void *a2)
{
  v3 = v2;
  v3[2] = 0;
  swift_unknownObjectWeakInit();
  v3[6] = &_swiftEmptySetSingleton;
  v3[7] = 0;
  v3[8] = 0;
  v3[9] = _swiftEmptyArrayStorage;
  v3[4] = a1;
  v6 = (a1 & 0x7FFFFFFFFFFFFFFFLL);
  if (a1 >= 0)
  {
    v7 = a1;
  }

  else
  {
    v7 = (a1 & 0x7FFFFFFFFFFFFFFFLL);
  }

  swift_getObjectType();
  v8 = swift_conformsToProtocol2();
  v9 = 0;
  v10 = 0;
  if (v8)
  {
    v11 = v7 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    v12 = v8;
    v13 = v6;
    v9 = v7;
    v10 = v12;
  }

  type metadata accessor for MusicTabsAuthority();
  swift_allocObject();
  v14 = v6;
  v3[3] = sub_1006749CC(v9, v10);
  sub_100033724(a2);
  v15 = qword_10117F7C0;
  v16 = v14;

  if (v15 != -1)
  {
    swift_once();
  }

  objc_setAssociatedObject(v7, qword_1011921E0, v3, 0);
  sub_100031928(v3);

  v17 = [v7 traitCollection];
  v18 = [v17 userInterfaceIdiom];

  if (v18 != 6)
  {
    v19 = v3[4];
    v20 = (v19 & 0x7FFFFFFFFFFFFFFFLL);
    if (v19 >= 0)
    {
      v21 = v3[4];
    }

    else
    {
      v21 = v19 & 0x7FFFFFFFFFFFFFFFLL;
    }

    swift_getObjectType();
    if (swift_conformsToProtocol2() && v21)
    {
      v22 = v20;
      v23 = sub_1000405A4();
      v24 = sub_100055824();
      sub_100055BBC(v23, v24);
    }
  }

  return v3;
}

void sub_100033724(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for NSNotificationCenter.Publisher();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v9 = v32 - v8;
  if (!*(v2 + 16))
  {
    v33 = v7;
    v34 = v5;
    v35 = v4;
    if (qword_10117F5F0 != -1)
    {
      swift_once();
    }

    v10 = qword_10117F608;

    if (v10 != -1)
    {
      swift_once();
    }

    v11 = qword_101218AD8;
    v46 = type metadata accessor for PlaybackController();
    v47 = sub_1000340AC(&qword_10118E138, type metadata accessor for PlaybackController, &protocol conformance descriptor for PlaybackController);
    v45 = v11;
    v43 = &type metadata for MusicAppEntityAnnotationProvider;
    v44 = sub_1000340F4();
    v42 = 0;
    v40 = 0u;
    v41 = 0u;
    v39 = 0;
    v37 = 0u;
    v38 = 0u;
    v36 = v2;
    sub_10010FC20(&qword_10118E148, &qword_100ECA4C0);
    swift_allocObject();
    v12 = v11;

    v13 = a1;
    v14 = MusicPageProvider.init(bootstrap:appTabs:appDestinationPageProvider:appPlayer:entityAnnotationProvider:pinsCoordinator:singConnectedStatusProvider:sceneConnectionOptions:)();
    *(v2 + 16) = v14;

    Bootstrap.load()();

    sub_1000340AC(&qword_10118E150, type metadata accessor for AppInterfaceContext, &unk_100ECA0E4);

    MusicPageProvider.presentationStackDelegate.setter();
    v15 = type metadata accessor for TaskPriority();
    v16 = *(*(v15 - 8) + 56);
    v16(v9, 1, 1, v15);
    type metadata accessor for MainActor();

    v17 = static MainActor.shared.getter();
    v18 = swift_allocObject();
    v18[2] = v17;
    v18[3] = &protocol witness table for MainActor;
    v18[4] = v14;
    v18[5] = v2;
    sub_1001F4CB8(0, 0, v9, &unk_100ECA4D0, v18);

    v16(v9, 1, 1, v15);

    v19 = static MainActor.shared.getter();
    v20 = swift_allocObject();
    v20[2] = v19;
    v20[3] = &protocol witness table for MainActor;
    v20[4] = v14;
    sub_1001F4CB8(0, 0, v9, &unk_100ECA4E0, v20);

    v21 = String._bridgeToObjectiveC()();
    v22 = swift_allocObject();
    swift_weakInit();
    v23 = objc_opt_self();

    v24 = [v23 defaultCenter];
    v25 = v33;
    NSNotificationCenter.publisher(for:object:)();

    v26 = swift_allocObject();
    *(v26 + 16) = &unk_100ECA4F0;
    *(v26 + 24) = v22;
    v32[1] = sub_1000340AC(&qword_101183B80, &type metadata accessor for NSNotificationCenter.Publisher, &protocol conformance descriptor for NSNotificationCenter.Publisher);

    v27 = v35;
    Publisher<>.sink(receiveValue:)();

    v34 = *(v34 + 8);
    (v34)(v25, v27);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    v28 = String._bridgeToObjectiveC()();
    v29 = swift_allocObject();
    swift_weakInit();

    v30 = [v23 defaultCenter];
    NSNotificationCenter.publisher(for:object:)();

    v31 = swift_allocObject();
    *(v31 + 16) = &unk_100ECA500;
    *(v31 + 24) = v29;

    Publisher<>.sink(receiveValue:)();

    (v34)(v25, v27);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();
  }
}

uint64_t sub_100033E3C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100033E84()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100033EC4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100033EFC()
{

  return swift_deallocObject();
}

uint64_t sub_100033F38()
{
  v0 = type metadata accessor for MusicConfiguration.PrivacyDisclaimerPolicy();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MusicConfiguration();
  v4 = __chkstk_darwin();
  (*(v1 + 104))(v3, enum case for MusicConfiguration.PrivacyDisclaimerPolicy.shouldPresentDisclaimer(_:), v0, v4);
  MusicConfiguration.init(bagProfileName:bagProfileVersion:mediaAPIClientIdentifier:privacyDisclaimerPolicy:)();
  type metadata accessor for Bootstrap();
  swift_allocObject();
  result = Bootstrap.init(configuration:)();
  qword_101218AC0 = result;
  return result;
}

uint64_t sub_1000340AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000340F4()
{
  result = qword_10118E140;
  if (!qword_10118E140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118E140);
  }

  return result;
}

void sub_100034168(uint64_t a1, __n128 a2)
{
  sub_1003F6C04(319, a2);
  if (v2 <= 0x3F)
  {
    type metadata accessor for Playlist();
    if (v3 <= 0x3F)
    {
      type metadata accessor for Song();
      if (v4 <= 0x3F)
      {
        type metadata accessor for ReportableMusicItem();
        if (v5 <= 0x3F)
        {
          type metadata accessor for ShareableMusicItem();
          if (v6 <= 0x3F)
          {
            type metadata accessor for MusicAppDestination.SharePageDescriptor();
            if (v7 <= 0x3F)
            {
              type metadata accessor for URL();
              if (v8 <= 0x3F)
              {
                swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

char *sub_100034240(void *a1, uint64_t a2)
{
  v4 = [a1[4] & 0x7FFFFFFFFFFFFFFFLL traitCollection];
  v5 = [v4 userInterfaceIdiom];

  v6 = sub_100034638(a2, v5);
  if (qword_10117F7D0 != -1)
  {
    swift_once();
  }

  objc_setAssociatedObject(v6, qword_1011921F0, a1, 0);
  if (a2 == 1)
  {
LABEL_8:

    goto LABEL_9;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v7 & 1) == 0)
  {
    if (a2 != 2)
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v8 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_9:
  [v6 setPreferredPlacement:5];
LABEL_10:
  v9 = TabIdentifier.accessibilityIdentifier.getter(a2);
  v11 = v10;
  v13 = v12;
  v15 = v14;
  sub_100035A7C();
  UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(v9, v11, v13, v15);
  v16 = v6;
  sub_100035AC8(a2);
  v17 = String._bridgeToObjectiveC()();

  [v16 setAccessibilityLabel:v17];

  [v16 setSpringLoaded:a2 == 0];
  v18 = String._bridgeToObjectiveC()();

  [v16 setPlayActivityFeatureName:v18];

  return v16;
}

char *sub_100034638(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a1 == 4)
    {
      v2 = type metadata accessor for MusicTab.Search();
      v3 = objc_allocWithZone(v2);
      v4 = swift_allocObject();
      *(v4 + 16) = 4;
      aBlock[4] = sub_100036648;
      aBlock[5] = v4;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10003640C;
      aBlock[3] = &unk_1010AE6D0;
      v5 = _Block_copy(aBlock);

      v10.receiver = v3;
      v10.super_class = v2;
      v6 = objc_msgSendSuper2(&v10, "initWithViewControllerProvider:", v5);
      _Block_release(v5);
      return v6;
    }
  }

  else if (a2 == 6 || a2 == 1)
  {
    v8 = objc_allocWithZone(_s3TabCMa(0));
    return sub_1003D5AB0();
  }

  sub_100035EA0(a1, aBlock);
  v9 = objc_allocWithZone(type metadata accessor for MusicTab());
  return sub_10003622C(aBlock);
}

uint64_t PlaybackController.musicPlayer.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011A4CA8, &qword_100EE5758);
  __chkstk_darwin();
  v7 = &v33 - v6;
  v8 = type metadata accessor for MusicPlayerPath();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  swift_beginAccess();
  v13 = *&v0[v12];
  v35 = v3;
  if (v13)
  {
    v34 = v2;
    v14 = *(*v13 + 360);

    v16 = v14(v15);

    v17 = v16;
    MusicPlayerPath.init(_:)();
    if ((*(v9 + 48))(v7, 1, v8) != 1)
    {
      (*(v9 + 32))(v11, v7, v8);
      type metadata accessor for InternalMusicPlayer();
      v31 = static InternalMusicPlayer.player(for:)();

      (*(v9 + 8))(v11, v8);
      goto LABEL_11;
    }

    sub_1000095E8(v7, &qword_1011A4CA8, &qword_100EE5758);
    v2 = v34;
    v3 = v35;
  }

  v18 = Logger.playbackController.unsafeMutableAddressor();
  (*(v3 + 16))(v5, v18, v2);
  v19 = v1;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v22 = 138543362;
    v24 = *&v1[v12];
    if (v24)
    {
      v25 = v2;
      v26 = *(*v24 + 360);

      v28 = v26(v27);
      v2 = v25;
      v29 = v28;

      v30 = v29;
    }

    else
    {
      v29 = 0;
      v30 = 0;
    }

    *(v22 + 4) = v29;
    *v23 = v30;
    _os_log_impl(&_mh_execute_header, v20, v21, "Could not create MusicPlayerPath based on %{public}@, returning .localDevice", v22, 0xCu);
    sub_1000095E8(v23, &unk_101183D70, &unk_100EC6540);

    v3 = v35;
  }

  (*(v3 + 8))(v5, v2);
  type metadata accessor for InternalMusicPlayer();
  v31 = static InternalMusicPlayer.localDevice.getter();
LABEL_11:

  sub_100034CA0();

  return v31;
}

uint64_t Player.path.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

uint64_t sub_100034CA0()
{
  sub_10010FC20(&qword_101182140, &unk_100EBD2A0);
  __chkstk_darwin();
  v1 = v12 - v0;
  v2 = sub_10010FC20(&qword_1011A4CC0, &qword_100EE5890);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = v12 - v4;
  InternalMusicPlayer.state.getter();
  v6 = InternalMusicPlayer.State.objectWillChange.getter();

  v12[3] = v6;
  sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
  v7 = static OS_dispatch_queue.main.getter();
  v12[2] = v7;
  v8 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v8 - 8) + 56))(v1, 1, 1, v8);
  sub_10010FC20(&qword_1011A4CC8, &unk_100EE5898);
  sub_100020674(&qword_1011A4CD0, &qword_1011A4CC8, &unk_100EE5898, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_1000206BC();
  v9 = v12[1];
  Publisher.receive<A>(on:options:)();
  sub_1000095E8(v1, &qword_101182140, &unk_100EBD2A0);

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100020674(&qword_1011A4CD8, &qword_1011A4CC0, &qword_100EE5890, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v10 = Publisher<>.sink(receiveValue:)();

  (*(v3 + 8))(v5, v2);
  if (qword_10117FE40 != -1)
  {
    swift_once();
  }

  objc_setAssociatedObject(v9, qword_1011A4CA0, v10, 1);
}

uint64_t sub_100034FCC()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100035004()
{
  result = swift_slowAlloc();
  qword_1011A4CA0 = result;
  return result;
}

uint64_t sub_10003502C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  if (qword_10117FE38 != -1)
  {
    swift_once();
  }

  v6 = qword_1011A4C98;
  if (a1)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    *(v7 + 24) = a2;

    sub_10010FC20(&qword_1011A4CB0, qword_100EE5760);
    v8 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  }

  else
  {
    v8 = 0;
  }

  objc_setAssociatedObject(v5, v6, v8, 3);
  swift_unknownObjectRelease();
  return sub_100020438(a1, a2);
}

uint64_t sub_100035130()
{

  return swift_deallocObject();
}

uint64_t sub_10003516C()
{
  result = swift_slowAlloc();
  qword_1011A4C98 = result;
  return result;
}

uint64_t sub_100035194()
{
  result = swift_slowAlloc();
  qword_1011921F0 = result;
  return result;
}

uint64_t TabIdentifier.accessibilityIdentifier.getter(unsigned __int8 a1)
{
  if (a1 > 2u)
  {
    if (a1 > 4u)
    {
      if (a1 != 5)
      {
        v3 = 0x8000000100E62CB0;
        if (qword_1011A6B58 != -1)
        {
          swift_once();
        }

        v16 = qword_1011AFC00;

        v13._countAndFlagsBits = 46;
        v13._object = 0xE100000000000000;
        String.append(_:)(v13);

        v10 = 0xD000000000000010;
        goto LABEL_34;
      }

      if (qword_1011A6B58 != -1)
      {
        swift_once();
      }

      v1 = 0x762E726142626174;
      v16 = qword_1011AFC00;

      v5._countAndFlagsBits = 46;
      v5._object = 0xE100000000000000;
      String.append(_:)(v5);

      v6 = 0x736F656469;
    }

    else
    {
      if (a1 == 3)
      {
        if (qword_1011A6B58 != -1)
        {
          swift_once();
        }

        v1 = 0x722E726142626174;
        v16 = qword_1011AFC00;

        v2._countAndFlagsBits = 46;
        v2._object = 0xE100000000000000;
        String.append(_:)(v2);

        v3 = 0xEC0000006F696461;
        goto LABEL_33;
      }

      if (qword_1011A6B58 != -1)
      {
        swift_once();
      }

      v1 = 0x732E726142626174;
      v16 = qword_1011AFC00;

      v12._countAndFlagsBits = 46;
      v12._object = 0xE100000000000000;
      String.append(_:)(v12);

      v6 = 0x6863726165;
    }

LABEL_32:
    v3 = v6 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
LABEL_33:
    v10 = v1;
LABEL_34:
    v11 = v3;
    goto LABEL_35;
  }

  if (!a1)
  {
    if (qword_1011A6B58 != -1)
    {
      swift_once();
    }

    v1 = 0x6C2E726142626174;
    v16 = qword_1011AFC00;

    v7._countAndFlagsBits = 46;
    v7._object = 0xE100000000000000;
    String.append(_:)(v7);

    v3 = 0xEE00797261726269;
    goto LABEL_33;
  }

  if (a1 == 1)
  {
    if (qword_1011A6B58 != -1)
    {
      swift_once();
    }

    v1 = 0x682E726142626174;
    v16 = qword_1011AFC00;

    v4._countAndFlagsBits = 46;
    v4._object = 0xE100000000000000;
    String.append(_:)(v4);

    v3 = 0xEB00000000656D6FLL;
    goto LABEL_33;
  }

  v8 = sub_100025D34();
  if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v8) & 1) == 0)
  {
    if (qword_1011A6B58 != -1)
    {
      swift_once();
    }

    v1 = 0x622E726142626174;
    v16 = qword_1011AFC00;

    v14._countAndFlagsBits = 46;
    v14._object = 0xE100000000000000;
    String.append(_:)(v14);

    v6 = 0x6573776F72;
    goto LABEL_32;
  }

  if (qword_1011A6B58 != -1)
  {
    swift_once();
  }

  v16 = qword_1011AFC00;

  v9._countAndFlagsBits = 46;
  v9._object = 0xE100000000000000;
  String.append(_:)(v9);

  v10 = 0x6E2E726142626174;
  v11 = 0xEA00000000007765;
LABEL_35:
  String.append(_:)(*&v10);

  return v16;
}

void sub_10003568C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_1000356F0();
  v3 = v2;

  qword_1011AFC00 = v1;
  *algn_1011AFC08 = v3;
}

uint64_t sub_1000356F0()
{
  v1 = v0;
  sub_10010FC20(&qword_1011A77F0, &unk_100EEAA20);
  __chkstk_darwin();
  v3 = &v27[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v4 = __chkstk_darwin().n128_u64[0];
  v6 = &v27[-v5];
  v30 = 0;
  v31 = 0xE000000000000000;
  v7 = [v1 bundleIdentifier];
  if (v7)
  {
    v8 = v7;
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v28 = 46;
    v29 = 0xE100000000000000;
    __chkstk_darwin();
    *&v27[-16] = &v28;
    if (sub_100ADD004(0x7FFFFFFFFFFFFFFFLL, 1, sub_10044CFC0, &v27[-32], v9, v11, v27)[2])
    {

      goto LABEL_12;
    }
  }

  v28 = 0;
  v29 = 0xE000000000000000;
  v12 = [v1 executableURL];
  if (v12)
  {
    v13 = v12;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v14 = 0;
  }

  else
  {
    v14 = 1;
  }

  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  (*(v16 + 56))(v3, v14, 1, v15);
  sub_100027A78(v3, v6);
  if ((*(v16 + 48))(v6, 1, v15) == 1)
  {
    sub_100028B08(v6);
    v17 = 0xE500000000000000;
    v18 = 0x636973754DLL;
  }

  else
  {
    v19 = URL.lastPathComponent.getter();
    v17 = v20;
    (*(v16 + 8))(v6, v15);
    v18 = v19;
  }

  v21 = v17;
  String.append(_:)(*&v18);

  Substring.init(_:)();
LABEL_12:
  v22 = static String._fromSubstring(_:)();
  v24 = v23;

  v25._countAndFlagsBits = v22;
  v25._object = v24;
  String.append(_:)(v25);

  return v30;
}

void UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {

    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  [v4 setAccessibilityIdentifier:v5];
}

unint64_t sub_100035A7C()
{
  result = qword_101181F70;
  if (!qword_101181F70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_101181F70);
  }

  return result;
}

uint64_t sub_100035AC8(unsigned __int8 a1)
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  if (a1 == 2)
  {
    v2 = sub_100025CE0();
    FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v2);
  }

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  return String.init(localized:table:bundle:locale:comment:)();
}

void sub_100035DCC(void *a1, uint64_t a2, void *a3)
{
  v4 = qword_1011A6960;
  v5 = a3;
  v6 = a1;
  v7 = v6;
  if (v4 != -1)
  {
    swift_once();
    v6 = v7;
  }

  objc_setAssociatedObject(v6, qword_1011AAE00, v5, 3);
}

uint64_t sub_100035E78()
{
  result = swift_slowAlloc();
  qword_1011AAE00 = result;
  return result;
}

void sub_100035EA0(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v2 = a1;
  sub_10010FC20(&unk_101182EA0, &unk_100EBE980);
  __chkstk_darwin();
  v5 = &v36 - v4;
  v6 = 0xE700000000000000;
  v7 = 0x7972617262696CLL;
  v8 = 0xE600000000000000;
  v9 = 0x736F65646976;
  if (v2 != 5)
  {
    v9 = 0x7473696C79616C70;
    v8 = 0xE900000000000073;
  }

  v10 = 0xE500000000000000;
  v11 = 0x6F69646172;
  if (v2 != 3)
  {
    v11 = 0x686372616573;
    v10 = 0xE600000000000000;
  }

  if (v2 <= 4u)
  {
    v9 = v11;
    v8 = v10;
  }

  v12 = 0xE900000000000077;
  v13 = 0x6F4E6E657473696CLL;
  if (v2 != 1)
  {
    v13 = 0x6573776F7262;
    v12 = 0xE600000000000000;
  }

  if (v2)
  {
    v7 = v13;
    v6 = v12;
  }

  if (v2 <= 2u)
  {
    v14 = v7;
  }

  else
  {
    v14 = v9;
  }

  if (v2 <= 2u)
  {
    v15 = v6;
  }

  else
  {
    v15 = v8;
  }

  v40 = 0xD000000000000014;
  v41 = 0x8000000100E3E560;
  v16 = v15;
  String.append(_:)(*&v14);

  v17 = v40;
  v18 = v41;
  v19 = sub_100035AC8(v2);
  v36 = v20;
  v37 = v19;
  v21 = sub_10048940C(v2);
  v22 = swift_allocObject();
  *(v22 + 16) = v2;
  v40 = v17;
  v41 = v18;
  v38 = 0xD000000000000014;
  v39 = 0x8000000100E3E560;
  v23 = type metadata accessor for Locale();
  (*(*(v23 - 8) + 56))(v5, 1, 1, v23);
  sub_100009838();
  StringProtocol.range<A>(of:options:range:locale:)();
  v25 = v24;
  v27 = v26;
  sub_1000095E8(v5, &unk_101182EA0, &unk_100EBE980);
  if (v27)
  {
    v40 = 0xD000000000000014;
    v41 = 0x8000000100E3E560;
    v28._countAndFlagsBits = v17;
    v28._object = v18;
    String.append(_:)(v28);
    v29 = v40;
    v30 = v41;
LABEL_23:
    *a2 = v29;
    a2[1] = v30;
    a2[2] = v17;
    a2[3] = v18;
    v35 = v36;
    a2[4] = v37;
    a2[5] = v35;
    a2[6] = v21;
    a2[7] = sub_100038FFC;
    a2[8] = v22;
    return;
  }

  v31 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v31 = v17 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v31 >= v25 >> 14)
  {

    String.subscript.getter();

    v32 = static String._fromSubstring(_:)();
    v34 = v33;

    v29 = v17;
    v30 = v18;
    v17 = v32;
    v18 = v34;
    goto LABEL_23;
  }

  __break(1u);
}

void *sub_10003622C(void *a1)
{
  v3 = String._bridgeToObjectiveC()();
  v4 = String._bridgeToObjectiveC()();
  if (a1[7])
  {
    v5 = a1[8];
    v11[4] = a1[7];
    v11[5] = v5;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 1107296256;
    v11[2] = sub_10003640C;
    v11[3] = &unk_1010AE680;
    v6 = _Block_copy(v11);
  }

  else
  {
    v6 = 0;
  }

  v7 = a1[6];
  v8 = type metadata accessor for MusicTab();
  v12.receiver = v1;
  v12.super_class = v8;
  v9 = objc_msgSendSuper2(&v12, "initWithTitle:image:identifier:viewControllerProvider:", v3, v7, v4, v6);
  _Block_release(v6);

  sub_100036360(a1);
  return v9;
}

uint64_t sub_1000363B4(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

id sub_10003640C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

id sub_100036474(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000364F8();
  v4 = sub_100036650(v3, a2);
  v5 = [objc_allocWithZone(type metadata accessor for NavigationController()) initWithRootViewController:v4];
  sub_100038BCC(a2);

  return v5;
}

id sub_1000364F8()
{
  if (qword_10117F7D0 != -1)
  {
    swift_once();
  }

  if (objc_getAssociatedObject(v0, qword_1011921F0))
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    type metadata accessor for AppInterfaceContext();
    if (swift_dynamicCast())
    {
      return v5;
    }
  }

  else
  {
    sub_1000095E8(v8, &unk_101183F30, qword_100EBF960);
  }

  v2 = [v0 parent];
  if (v2)
  {
    v3 = v2;
    v4 = sub_1000364F8();
  }

  else
  {
    result = [v0 tabBarController];
    if (!result)
    {
      return result;
    }

    v3 = result;
    v4 = sub_10003169C();
  }

  return v4;
}

void *sub_100036650(void *a1, uint64_t a2)
{
  v4 = _s9PlaylistsV5ScopeVMa(0);
  __chkstk_darwin();
  v6 = (&v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_10010FC20(&unk_10119DA70, &qword_100EC0AC0);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v58 - v9;
  if (!a1)
  {
    v13 = [objc_opt_self() sharedApplication];
    v14 = [v13 connectedScenes];
    sub_100062364();
    sub_100061F5C();
    v15 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100061FC4(v15);
    v17 = v16;

    if (v17 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_10;
      }
    }

    else if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_10:
      if ((v17 & 0xC000000000000001) != 0)
      {
        v18 = sub_1007E90D4(0, v17);
      }

      else
      {
        if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_42;
        }

        v18 = *(v17 + 32);
      }

      v19 = v18;

      v20 = [v19 delegate];

      if (v20 && (v59 = v20, sub_10010FC20(&unk_101184050, &unk_100EBFA30), sub_10010FC20(&unk_101184EB0, &qword_100ED56D0), (swift_dynamicCast() & 1) != 0))
      {
        if (*(&v61 + 1))
        {
          v21 = *(*sub_10000954C(&v60, *(&v61 + 1)) + OBJC_IVAR____TtC5Music17MainSceneDelegate_interfaceContext);

          sub_10000959C(&v60);
          if (v21)
          {
            if (qword_10117F618 != -1)
            {
              swift_once();
            }

            v22 = type metadata accessor for Logger();
            sub_1000060E4(v22, qword_101218AF0);
            v23 = Logger.logObject.getter();
            v24 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v23, v24))
            {
              v25 = swift_slowAlloc();
              v26 = swift_slowAlloc();
              *&v60 = v26;
              *v25 = 136315138;
              *(v25 + 4) = sub_1000105AC(0xD000000000000018, 0x8000000100E541F0, &v60);
              _os_log_impl(&_mh_execute_header, v23, v24, "No interface context provided for %s — Defaulting to the main scene's AIC. Please provide a AIC when you can!", v25, 0xCu);
              sub_10000959C(v26);
            }

            v28 = sub_100036650(v27, a2);
            goto LABEL_37;
          }

          goto LABEL_45;
        }
      }

      else
      {
        v62 = 0;
        v60 = 0u;
        v61 = 0u;
      }

      sub_10069180C(&v60);
LABEL_45:
      if (qword_10117F618 != -1)
      {
        swift_once();
      }

      v38 = type metadata accessor for Logger();
      sub_1000060E4(v38, qword_101218AF0);

      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v59 = a1;
        *&v60 = v42;
        *v41 = 136446210;

        sub_10010FC20(&qword_10119DA80, &unk_100EDC6F0);
        v43 = String.init<A>(describing:)();
        v45 = sub_1000105AC(v43, v44, &v60);

        *(v41 + 4) = v45;
        _os_log_impl(&_mh_execute_header, v39, v40, "Failed to retrieve page provider on appInterfaceContext=%{public}s", v41, 0xCu);
        sub_10000959C(v42);
      }

      goto LABEL_55;
    }

    goto LABEL_45;
  }

  if (!a1[2])
  {
    goto LABEL_45;
  }

  v11 = sub_100674BE4(a2);

  if (v11)
  {
    if (a2 <= 2u)
    {
      if (a2)
      {
        if (a2 == 1)
        {
          v12 = &enum case for MusicPageProvider.Destination.listenNow<A, B>(_:);
        }

        else
        {
          v12 = &enum case for MusicPageProvider.Destination.browse<A, B>(_:);
        }

        goto LABEL_29;
      }

      v29 = objc_allocWithZone(type metadata accessor for LibraryMainViewController(0));
      v30 = sub_100039DB0(0);
LABEL_35:
      v28 = v30;
      goto LABEL_36;
    }

    if (a2 <= 4u)
    {
      if (a2 != 3)
      {
        (*(v8 + 104))(v10, enum case for MusicPageProvider.Destination.search<A, B>(_:), v7);
        v28 = MusicPageProvider.page(for:stackAuthority:motionCacheBucketID:)();
        (*(v8 + 8))(v10, v7);
        v31 = [a1[4] & 0x7FFFFFFFFFFFFFFFLL traitCollection];
        if ([v31 userInterfaceIdiom] == 1)
        {
          v32 = [v28 navigationItem];
          [v32 setLargeTitleDisplayMode:2];
        }

        goto LABEL_36;
      }

      v12 = &enum case for MusicPageProvider.Destination.radio<A, B>(_:);
      goto LABEL_29;
    }

    if (a2 == 5)
    {
      v12 = &enum case for MusicPageProvider.Destination.videos<A, B>(_:);
LABEL_29:
      (*(v8 + 104))(v10, *v12, v7);
      v28 = MusicPageProvider.page(for:stackAuthority:motionCacheBucketID:)();
      (*(v8 + 8))(v10, v7);
LABEL_36:
      sub_100035AC8(a2);
      v35 = String._bridgeToObjectiveC()();

      [v28 setTitle:v35];

      v36 = String._bridgeToObjectiveC()();

      [v28 setPlayActivityFeatureName:v36];

LABEL_37:

      return v28;
    }

    v33 = *(v4 + 20);
    v34 = type metadata accessor for Playlist.Folder();
    (*(*(v34 - 8) + 56))(v6 + v33, 1, 1, v34);
    if (qword_10117F5D8 == -1)
    {
LABEL_34:
      *v6 = qword_101218AB8;
      *(v6 + *(v4 + 24)) = 0;
      objc_allocWithZone(type metadata accessor for LibraryPlaylistsViewController(0));

      v30 = sub_10037E11C(v6, 0, 0);
      goto LABEL_35;
    }

LABEL_42:
    swift_once();
    goto LABEL_34;
  }

  if (qword_10117F618 != -1)
  {
    swift_once();
  }

  v46 = type metadata accessor for Logger();
  sub_1000060E4(v46, qword_101218AF0);

  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v59 = a1;
    *&v60 = v50;
    *v49 = 136446466;
    type metadata accessor for AppInterfaceContext();

    v51 = String.init<A>(describing:)();
    v53 = sub_1000105AC(v51, v52, &v60);

    *(v49 + 4) = v53;
    *(v49 + 12) = 2082;
    LOBYTE(v59) = a2;
    v54 = String.init<A>(describing:)();
    v56 = sub_1000105AC(v54, v55, &v60);

    *(v49 + 14) = v56;
    _os_log_impl(&_mh_execute_header, v47, v48, "Failed to retrieve stack authority on appInterfaceContext=%{public}s for tab=%{public}s", v49, 0x16u);
    swift_arrayDestroy();
  }

  *&v60 = 0;
  *(&v60 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(40);

  *&v60 = 0xD000000000000026;
  *(&v60 + 1) = 0x8000000100E54210;
  LOBYTE(v59) = a2;
  v57._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v57);

LABEL_55:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1000371D8()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, qword_1012194A8);
  sub_1000060E4(v0, qword_1012194A8);
  return static Logger.music(_:)(0xD000000000000013, 0x8000000100EDF020);
}

void sub_100037268(uint64_t a1)
{
  if (!qword_10118E2B8)
  {
    type metadata accessor for MusicAppDestination.AlbumDescriptor();
    sub_1001109D0(&unk_1011A49A0, &qword_100ECF970);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_10118E2B8);
    }
  }
}

void sub_1000372E8(uint64_t a1)
{
  sub_100037268(319);
  if (v1 <= 0x3F)
  {
    sub_1000373D4(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for MusicAppDestination.AlbumDescriptor();
      if (v3 <= 0x3F)
      {
        type metadata accessor for Playlist();
        if (v4 <= 0x3F)
        {
          type metadata accessor for Playlist.Folder();
          if (v5 <= 0x3F)
          {
            type metadata accessor for Artist();
            if (v6 <= 0x3F)
            {
              type metadata accessor for Composer();
              if (v7 <= 0x3F)
              {
                sub_100037478(319);
                if (v8 <= 0x3F)
                {
                  swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1000373D4(uint64_t a1)
{
  if (!qword_10118E2C0)
  {
    type metadata accessor for MusicAppDestination.PlaylistDescriptor();
    sub_1001109D0(&unk_1011A49A0, &qword_100ECF970);
    sub_1001109D0(&qword_101183A20, &unk_100EBCF80);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_10118E2C0);
    }
  }
}

void sub_100037478(uint64_t a1)
{
  if (!qword_10118E2C8)
  {
    type metadata accessor for URL();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_10118E2C8);
    }
  }
}

id sub_10003765C(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  *&v2[OBJC_IVAR____TtC5Music20NavigationController__pushingViewController] = 0;
  *&v2[OBJC_IVAR____TtC5Music20NavigationController_existingTopPalette] = 0;
  if (!a1)
  {
    ObjCClassFromMetadata = 0;
    if (!a2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  if (v3)
  {
LABEL_3:
    v3 = swift_getObjCClassFromMetadata();
  }

LABEL_4:
  v6.receiver = v2;
  v6.super_class = type metadata accessor for NavigationController();
  return objc_msgSendSuper2(&v6, "initWithNavigationBarClass:toolbarClass:", ObjCClassFromMetadata, v3);
}

void sub_100037910(void *a1, uint64_t a2, int a3)
{
  v4 = v3;
  v32 = a3;
  v33 = a1;
  sub_10010FC20(&unk_10119F3A0, &qword_100EC7CD0);
  __chkstk_darwin();
  v7 = &v31[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v9 = &v31[-v8];
  v10 = type metadata accessor for UITraitOverrides();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v31[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v14 = __chkstk_darwin().n128_u64[0];
  v16 = &v31[-v15];
  v17 = [v4 viewControllers];
  sub_100009F78(0, &qword_101183D40, UIViewController_ptr);
  v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v18 >> 62)
  {
    v19 = _CocoaArrayWrapper.endIndex.getter();
    if (v19)
    {
LABEL_3:
      v20 = __OFSUB__(v19, 1);
      v21 = v19 - 1;
      if (v20)
      {
        __break(1u);
      }

      else if ((v18 & 0xC000000000000001) == 0)
      {
        if ((v21 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v21 < *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v22 = *(v18 + 8 * v21 + 32);
LABEL_8:
          v23 = v22;

          goto LABEL_11;
        }

        __break(1u);
        return;
      }

      v22 = sub_1000260B0(v21, v18, &qword_101183D40, UIViewController_ptr);
      goto LABEL_8;
    }
  }

  else
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v19)
    {
      goto LABEL_3;
    }
  }

  v23 = 0;
LABEL_11:
  v24 = sub_100037DF4(v23, v33);

  if ((v24 & 1) == 0)
  {
    sub_10003895C(a2, v7);
    v25 = *(v11 + 48);
    if (v25(v7, 1, v10) == 1)
    {
      v26 = [v4 topViewController];
      if (v26)
      {
        v27 = v26;
        UIViewController.traitOverrides.getter();

        v28 = 0;
      }

      else
      {
        v28 = 1;
      }

      (*(v11 + 56))(v9, v28, 1, v10);
      if (v25(v7, 1, v10) != 1)
      {
        sub_1000095E8(v7, &unk_10119F3A0, &qword_100EC7CD0);
      }
    }

    else
    {
      (*(v11 + 32))(v9, v7, v10);
      (*(v11 + 56))(v9, 0, 1, v10);
    }

    if (v25(v9, 1, v10) == 1)
    {
      sub_1000095E8(v9, &unk_10119F3A0, &qword_100EC7CD0);
      v29 = v33;
    }

    else
    {
      (*(v11 + 32))(v16, v9, v10);
      (*(v11 + 16))(v13, v16, v10);
      v29 = v33;
      UIViewController.traitOverrides.setter();
      (*(v11 + 8))(v16, v10);
    }

    v30 = type metadata accessor for TraitNavigationController();
    v34.receiver = v4;
    v34.super_class = v30;
    objc_msgSendSuper2(&v34, "pushViewController:animated:", v29, v32 & 1);
  }
}

uint64_t sub_100037DF4(void *a1, void *a2)
{
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v5 = &v71 - v4;
  v6 = type metadata accessor for URL();
  v86 = *(v6 - 8);
  __chkstk_darwin();
  v8 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AlbumDetailDataSource.ProminentTrackSource(0);
  v10 = *(v9 - 8);
  v87 = v9;
  v88 = v10;
  __chkstk_darwin();
  v12 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10010FC20(&qword_101192848, &unk_100ECFAF0);
  __chkstk_darwin();
  v15 = &v71 - v14;
  sub_10010FC20(&qword_1011846D0, &qword_100EDD110);
  __chkstk_darwin();
  __chkstk_darwin();
  __chkstk_darwin();
  __chkstk_darwin();
  v17 = &v71 - v16;
  __chkstk_darwin();
  v22 = &v71 - v21;
  if (!a1)
  {
    return 0;
  }

  v79 = v20;
  v80 = v19;
  v81 = v18;
  v82 = v5;
  v83 = v6;
  type metadata accessor for ContainerDetail.ViewController(0);
  result = swift_dynamicCastClass();
  if (result)
  {
    v24 = result;
    result = swift_dynamicCastClass();
    if (result)
    {
      v25 = result;
      v74 = v12;
      v75 = v8;
      v84 = a1;
      v85 = a2;
      v26 = OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_dataSource;
      swift_beginAccess();
      v27 = *(v24 + v26);
      type metadata accessor for AlbumDetailDataSource(0);
      v78 = v27;
      v28 = swift_dynamicCastClass();
      if (v28)
      {
        v73 = v15;
        v76 = v28;
        v77 = v24;
        v29 = OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_dataSource;
        swift_beginAccess();
        v30 = *(v25 + v29);
        v24 = v77;
        v31 = swift_dynamicCastClass();
        v32 = v84;
        v33 = v85;
        if (v31)
        {
          v71 = v33;
          v72 = v32;
          v34 = v31;
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          v35 = v76;
          if (sub_1004E2338(v76, v34))
          {
            v86 = v30;
            v36 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_prominentTrackSource;
            swift_beginAccess();
            sub_1000089F8(v35 + v36, v22, &qword_1011846D0, &qword_100EDD110);
            v37 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_prominentTrackSource;
            swift_beginAccess();
            v38 = *(v13 + 48);
            v39 = v73;
            sub_1000089F8(v22, v73, &qword_1011846D0, &qword_100EDD110);
            v84 = v37;
            v85 = v34;
            sub_1000089F8(v37 + v34, v39 + v38, &qword_1011846D0, &qword_100EDD110);
            v40 = v87;
            v41 = *(v88 + 48);
            if (v41(v39, 1, v87) == 1)
            {
              sub_1000095E8(v22, &qword_1011846D0, &qword_100EDD110);
              v42 = v41(v39 + v38, 1, v40);
              v43 = v77;
              if (v42 == 1)
              {
                sub_1000095E8(v39, &qword_1011846D0, &qword_100EDD110);
LABEL_40:
                v69 = v79;
                sub_1000089F8(v76 + v36, v79, &qword_1011846D0, &qword_100EDD110);
                v70 = v41(v69, 1, v40);
                sub_1000095E8(v69, &qword_1011846D0, &qword_100EDD110);
                v58 = v72;
                if (v70 == 1)
                {
LABEL_43:
                  sub_1006A4A18();

LABEL_44:
                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();
                  return 1;
                }

                *(v77 + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_hasScrolledToProminentItem) = 0;
LABEL_42:
                sub_100503D5C();
                goto LABEL_43;
              }
            }

            else
            {
              sub_1000089F8(v39, v17, &qword_1011846D0, &qword_100EDD110);
              if (v41(v39 + v38, 1, v40) != 1)
              {
                v67 = v74;
                sub_1006AA2C8(v39 + v38, v74, type metadata accessor for AlbumDetailDataSource.ProminentTrackSource);
                v68 = sub_1004E1FC0(v17, v67);
                sub_1006AA268(v67, type metadata accessor for AlbumDetailDataSource.ProminentTrackSource);
                sub_1000095E8(v22, &qword_1011846D0, &qword_100EDD110);
                sub_1006AA268(v17, type metadata accessor for AlbumDetailDataSource.ProminentTrackSource);
                sub_1000095E8(v39, &qword_1011846D0, &qword_100EDD110);
                v43 = v77;
                if (v68)
                {
                  goto LABEL_40;
                }

LABEL_30:
                v55 = v80;
                (*(v88 + 56))(v80, 1, 1, v40);
                v56 = v76;
                v57 = v81;
                sub_1000089F8(v76 + v36, v81, &qword_1011846D0, &qword_100EDD110);
                swift_beginAccess();
                sub_1006ABA78(v55, v56 + v36);
                swift_endAccess();
                sub_1004CDAA4(v57);
                sub_1000095E8(v57, &qword_1011846D0, &qword_100EDD110);
                sub_1000095E8(v55, &qword_1011846D0, &qword_100EDD110);
                *(v43 + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_hasScrolledToProminentItem) = 0;
                sub_1000089F8(v84 + v85, v55, &qword_1011846D0, &qword_100EDD110);
                sub_1000089F8(v56 + v36, v57, &qword_1011846D0, &qword_100EDD110);
                swift_beginAccess();
                sub_1006ABA78(v55, v56 + v36);
                swift_endAccess();
                sub_1004CDAA4(v57);
                sub_1000095E8(v57, &qword_1011846D0, &qword_100EDD110);
                sub_1000095E8(v55, &qword_1011846D0, &qword_100EDD110);
                v58 = v72;
                goto LABEL_42;
              }

              sub_1000095E8(v22, &qword_1011846D0, &qword_100EDD110);
              sub_1006AA268(v17, type metadata accessor for AlbumDetailDataSource.ProminentTrackSource);
              v43 = v77;
            }

            sub_1000095E8(v39, &qword_101192848, &unk_100ECFAF0);
            goto LABEL_30;
          }

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
        }
      }

      else
      {
        v44 = v84;
        v45 = v85;
      }

      type metadata accessor for PlaylistDetailDataSource(0);
      v46 = swift_dynamicCastClass();
      if (v46)
      {
        v47 = v46;
        swift_beginAccess();
        v48 = swift_dynamicCastClass();
        v49 = v84;
        if (v48)
        {
          v50 = v48;
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          if (sub_1008653FC(v47, v50))
          {
            v51 = (v47 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_prominentEntryID);
            v52 = *(v47 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_prominentEntryID + 8);
            v53 = (v50 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_prominentEntryID);
            v54 = *(v50 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_prominentEntryID + 8);
            if (v52)
            {
              if (v54 && (*v51 == *v53 && v52 == v54 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
              {
                *(v24 + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_hasScrolledToProminentItem) = 0;
                sub_100503D5C();
LABEL_35:
                v61 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_collaborationURL;
                swift_beginAccess();
                v62 = v50 + v61;
                v63 = v82;
                sub_1000089F8(v62, v82, &qword_101183A20, &unk_100EBCF80);
                v64 = v86;
                v65 = v83;
                if ((*(v86 + 48))(v63, 1, v83) == 1)
                {
                  sub_1000095E8(v63, &qword_101183A20, &unk_100EBCF80);
                }

                else
                {
                  v66 = v75;
                  (*(v64 + 32))(v75, v63, v65);
                  sub_100831124(v66);
                  (*(v64 + 8))(v66, v65);
                }

                sub_1006A4A18();

                goto LABEL_44;
              }

              *v51 = 0;
              v51[1] = 0;
              sub_100842788();
            }

            else
            {
              if (!v54)
              {
                goto LABEL_35;
              }

              *v51 = 0;
              v51[1] = 0;
            }

            *(v24 + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_hasScrolledToProminentItem) = 0;
            v59 = *v53;
            v60 = v53[1];

            sub_100842480(v59, v60);
            goto LABEL_35;
          }

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
        }
      }

      else
      {
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_1000388F0(uint64_t a1)
{
  result = type metadata accessor for Track();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10003895C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&unk_10119F3A0, &qword_100EC7CD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100038A14()
{
  swift_getObjectType();
  v4.receiver = v0;
  v4.super_class = type metadata accessor for NavigationController();
  objc_msgSendSuper2(&v4, "viewDidLoad");
  [v0 setDelegate:v0];
  v1 = [v0 navigationBar];
  [v1 setPrefersLargeTitles:1];

  sub_10010FC20(&unk_101182D80, "ʫ\n");
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100EBC6B0;
  *(v2 + 32) = type metadata accessor for UITraitHorizontalSizeClass();
  *(v2 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  UIViewController.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();
}

void sub_100038BCC(unsigned __int8 a1)
{
  v2 = v1;
  sub_100035AC8(a1);
  v4 = String._bridgeToObjectiveC()();

  [v1 setTitle:v4];

  v5 = [v1 tabBarItem];
  if (v5)
  {
    v6 = v5;
    v7 = String._bridgeToObjectiveC()();

    v8 = [objc_opt_self() _systemImageNamed:v7];

    [v6 setImage:v8];
  }

  v9 = [v2 tabBarItem];
  if (v9)
  {
    v10 = v9;
    v11 = TabIdentifier.accessibilityIdentifier.getter(a1);
    v13 = v12;
    v15 = v14;
    v17 = v16;
    sub_100038ED8();
    UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(v11, v13, v15, v17);
  }

  v18 = [v2 tabBarItem];
  if (v18)
  {
    v19 = v18;
    sub_100035AC8(a1);
    v20 = String._bridgeToObjectiveC()();

    [v19 setAccessibilityLabel:v20];
  }

  v21 = [v2 tabBarItem];
  if (v21)
  {
    v22 = v21;
    [v21 setSpringLoaded:a1 == 0];
  }
}

unint64_t sub_100038ED8()
{
  result = qword_10118DFE8;
  if (!qword_10118DFE8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10118DFE8);
  }

  return result;
}

char *sub_100038F24(uint64_t a1, uint64_t a2)
{
  if (a2 || (_s3TabCMa(0), !swift_dynamicCastClass()))
  {
    v3 = sub_1000364F8();
    v4 = sub_100036650(v3, a2);
    v5 = [objc_allocWithZone(type metadata accessor for NavigationController()) initWithRootViewController:v4];
    sub_100038BCC(a2);
  }

  else
  {
    v6 = objc_allocWithZone(type metadata accessor for LibraryMainViewController(0));
    v5 = sub_100039DB0(0);
    sub_100038BCC(0);
  }

  return v5;
}

uint64_t _s3TabCMa(uint64_t a1)
{
  result = qword_10118DF50;
  if (!qword_10118DF50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100039050(uint64_t a1)
{
  sub_100039144(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100039144(uint64_t a1)
{
  if (!qword_10119EDA0)
  {
    type metadata accessor for Playlist();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_10119EDA0);
    }
  }
}

uint64_t type metadata accessor for LibraryMainViewController(uint64_t a1)
{
  result = qword_101196E48;
  if (!qword_101196E48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10003920C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_1001109D0(a3, a4);
    v5 = type metadata accessor for Optional();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_100039260(uint64_t a1)
{
  sub_10003920C(319, &unk_101184560, &unk_10118A650, &qword_100EC02B0);
  if (v1 <= 0x3F)
  {
    sub_10003920C(319, &qword_101196E58, &qword_101196E60, &qword_100ED5990);
    if (v2 <= 0x3F)
    {
      sub_10003920C(319, &qword_101196E68, &qword_101196E70, &qword_100ED5998);
      if (v3 <= 0x3F)
      {
        sub_10003920C(319, &qword_101196E78, &qword_101196E80, &qword_100ED59A0);
        if (v4 <= 0x3F)
        {
          sub_10003920C(319, &qword_101196E88, &qword_101196E90, &qword_100ED59A8);
          if (v5 <= 0x3F)
          {
            sub_10003920C(319, &qword_101196E98, qword_101196EA0, &qword_100ED59B0);
            if (v6 <= 0x3F)
            {
              sub_1005BEB74(319, &qword_10118BAB0, &type metadata accessor for NSNotificationCenter.ObservationToken);
              if (v7 <= 0x3F)
              {
                sub_1005BEB74(319, &qword_1011845B0, type metadata accessor for Actions.MetricsReportingContext);
                if (v8 <= 0x3F)
                {
                  sub_1005BEB74(319, &qword_10118C670, type metadata accessor for LibraryImport.ViewModel);
                  if (v9 <= 0x3F)
                  {
                    type metadata accessor for MusicMetrics.PageFields();
                    if (v10 <= 0x3F)
                    {
                      type metadata accessor for MetricsPageProperties(319);
                      if (v11 <= 0x3F)
                      {
                        swift_updateClassMetadata2();
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_100039720(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100039774(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1000397C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t type metadata accessor for Actions.MetricsReportingContext(uint64_t a1)
{
  result = qword_1011A7FA0;
  if (!qword_1011A7FA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100039868(uint64_t a1)
{
  sub_1000308A0(319, &qword_1011A7FB0, &type metadata for MetricsEvent.Click.ActionContext);
  if (v1 <= 0x3F)
  {
    sub_1000399BC(319);
    if (v2 <= 0x3F)
    {
      sub_1000308A0(319, &qword_1011AEEF0, &type metadata for String);
      if (v3 <= 0x3F)
      {
        sub_10003920C(319, &qword_1011A7FC0, &qword_1011A7FC8, &qword_100EF1250);
        if (v4 <= 0x3F)
        {
          sub_10003920C(319, &qword_1011A7FD0, &qword_1011A7FD8, &qword_100EED050);
          if (v5 <= 0x3F)
          {
            sub_100039BEC();
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

void sub_1000399BC(uint64_t a1)
{
  if (!qword_1011A7FB8)
  {
    type metadata accessor for MetricsEvent.Page(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1011A7FB8);
    }
  }
}

void sub_100039A14(uint64_t a1)
{
  sub_100039B94(319);
  if (v1 <= 0x3F)
  {
    sub_10003920C(319, &qword_1011A9990, &qword_1011A98D0, &unk_100EF0DC0);
    if (v2 <= 0x3F)
    {
      sub_1000308A0(319, &qword_1011AEEF0, &type metadata for String);
      if (v3 <= 0x3F)
      {
        sub_1000308A0(319, &qword_1011A9998, &type metadata for MetricsEvent.Page.DisplayType);
        if (v4 <= 0x3F)
        {
          sub_1000308A0(319, &unk_1011A99A0, &type metadata for Bool);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100039B3C(uint64_t a1)
{
  if (!qword_1011814C0)
  {
    type metadata accessor for URL();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1011814C0);
    }
  }
}

void sub_100039B94(uint64_t a1)
{
  if (!qword_1011A9988)
  {
    type metadata accessor for URL();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1011A9988);
    }
  }
}

void sub_100039BEC()
{
  if (!qword_1011A7FE0)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1011A7FE0);
    }
  }
}

uint64_t type metadata accessor for MetricsPageProperties(uint64_t a1)
{
  result = qword_1011A9B98;
  if (!qword_1011A9B98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100039CA0(uint64_t a1)
{
  sub_100039B94(319);
  if (v1 <= 0x3F)
  {
    sub_100039D4C(319);
    if (v2 <= 0x3F)
    {
      sub_10002F6C8();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100039D4C(uint64_t a1)
{
  if (!qword_1011A9990)
  {
    sub_1001109D0(&qword_1011A98D0, &unk_100EF0DC0);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1011A9990);
    }
  }
}

char *sub_100039DB0(int a1)
{
  v2 = v1;
  v82 = a1;
  ObjectType = swift_getObjectType();
  type metadata accessor for Locale();
  __chkstk_darwin();
  v73[1] = v73 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v73[0] = v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v81 = v73 - v5;
  v6 = type metadata accessor for MusicMetrics.FeatureName();
  v79 = *(v6 - 8);
  v80 = v6;
  __chkstk_darwin();
  v78 = v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MetricsPageProperties(0);
  __chkstk_darwin();
  v77 = v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MetricsEvent.Page(0);
  __chkstk_darwin();
  v10 = (v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for MusicMetrics.PageType();
  v75 = *(v11 - 8);
  v76 = v11;
  __chkstk_darwin();
  v74 = v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v1[OBJC_IVAR____TtC5Music25LibraryMainViewController_contentOffsetObservation] = 0;
  *&v1[OBJC_IVAR____TtC5Music25LibraryMainViewController_scrollEdgeAppearanceProgress] = 0;
  v13 = OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___headerRegistration;
  v14 = sub_10010FC20(&unk_10118A650, &qword_100EC02B0);
  (*(*(v14 - 8) + 56))(&v2[v13], 1, 1, v14);
  v15 = OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___inlineBubbleTipRegistration;
  v16 = sub_10010FC20(&qword_101196E60, &qword_100ED5990);
  (*(*(v16 - 8) + 56))(&v2[v15], 1, 1, v16);
  v17 = OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___libraryImportCellRegistration;
  v18 = sub_10010FC20(&qword_101196E70, &qword_100ED5998);
  (*(*(v18 - 8) + 56))(&v2[v17], 1, 1, v18);
  v19 = OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___pinCellRegistration;
  v20 = sub_10010FC20(&qword_101196E80, &qword_100ED59A0);
  (*(*(v20 - 8) + 56))(&v2[v19], 1, 1, v20);
  v21 = OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___menuCellRegistration;
  v22 = sub_10010FC20(&qword_101196E90, &qword_100ED59A8);
  (*(*(v22 - 8) + 56))(&v2[v21], 1, 1, v22);
  v23 = OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___recentCellRegistration;
  v24 = sub_10010FC20(qword_101196EA0, &qword_100ED59B0);
  (*(*(v24 - 8) + 56))(&v2[v23], 1, 1, v24);
  *&v2[OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___collectionView] = 0;
  v25 = OBJC_IVAR____TtC5Music25LibraryMainViewController_prefetchingController;
  v26 = objc_allocWithZone(type metadata accessor for ArtworkPrefetchingController());
  *&v2[v25] = sub_10003AAD8(0xD000000000000024, 0x8000000100E514B0);
  *&v2[OBJC_IVAR____TtC5Music25LibraryMainViewController_observers] = &_swiftEmptySetSingleton;
  v27 = &v2[OBJC_IVAR____TtC5Music25LibraryMainViewController_pinsObserver];
  *v27 = 0u;
  *(v27 + 1) = 0u;
  *(v27 + 4) = 0;
  v28 = OBJC_IVAR____TtC5Music25LibraryMainViewController_pinsControllerToken;
  v29 = type metadata accessor for NSNotificationCenter.ObservationToken();
  (*(*(v29 - 8) + 56))(&v2[v28], 1, 1, v29);
  v30 = OBJC_IVAR____TtC5Music25LibraryMainViewController_menuResponseController;
  Library.Menu.Request.init()(&v99);
  sub_10010FC20(&unk_101197030, &unk_100ECAA00);
  swift_allocObject();
  *&v2[v30] = RequestResponse.Controller.init(request:)(&v99, v31, v32, v33);
  v34 = OBJC_IVAR____TtC5Music25LibraryMainViewController_sharedLibrariesController;
  type metadata accessor for SharedLibrariesController(0);
  swift_allocObject();
  *&v2[v34] = sub_10003C170();
  *&v2[OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___downloadsController] = 0;
  *&v2[OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___libraryImportObserver] = 0;
  v35 = OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___actionMetricsReportingContext;
  v36 = type metadata accessor for Actions.MetricsReportingContext(0);
  (*(*(v36 - 8) + 56))(&v2[v35], 1, 1, v36);
  *&v2[OBJC_IVAR____TtC5Music25LibraryMainViewController_libraryFilter] = &_swiftEmptySetSingleton;
  v2[OBJC_IVAR____TtC5Music25LibraryMainViewController_editingContext] = 2;
  *&v2[OBJC_IVAR____TtC5Music25LibraryMainViewController_availableEditingContexts] = &_swiftEmptySetSingleton;
  *&v2[OBJC_IVAR____TtC5Music25LibraryMainViewController_downloadSpinner] = 0;
  v37 = OBJC_IVAR____TtC5Music25LibraryMainViewController_accountButton;
  v38 = type metadata accessor for AccountButtonWrapper();
  v39 = objc_allocWithZone(v38);
  *&v39[OBJC_IVAR____TtC5Music20AccountButtonWrapper_button] = 0;
  v39[OBJC_IVAR____TtC5Music20AccountButtonWrapper_location] = 1;
  v98.receiver = v39;
  v98.super_class = v38;
  v40 = objc_msgSendSuper2(&v98, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v40 sizeToFit];
  v41 = AccessibilityIdentifier.accountButton.unsafeMutableAddressor();
  v42 = *v41;
  v43 = v41[1];
  v45 = v41[2];
  v44 = v41[3];

  UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(v42, v43, v45, v44);

  *&v2[v37] = v40;
  *&v2[OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___accountBarButtonItem] = 0;
  *&v2[OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___contextBarButtonItem] = 0;
  v46 = &v2[OBJC_IVAR____TtC5Music25LibraryMainViewController_currentMenu];
  *v46 = 0u;
  v46[1] = 0u;
  v46[2] = 0u;
  v2[OBJC_IVAR____TtC5Music25LibraryMainViewController_allowsAnimatedChanges] = 0;
  *&v2[OBJC_IVAR____TtC5Music25LibraryMainViewController_pinnedItems] = 0;
  *&v2[OBJC_IVAR____TtC5Music25LibraryMainViewController_displayedPinnedItems] = 0;
  v2[OBJC_IVAR____TtC5Music25LibraryMainViewController_pendingSelectedIdentifier] = 13;
  *&v2[OBJC_IVAR____TtC5Music25LibraryMainViewController_recentlyAddedRevision] = 0;
  v47 = OBJC_IVAR____TtC5Music25LibraryMainViewController_libraryImportViewModel;
  v48 = type metadata accessor for LibraryImport.ViewModel(0);
  (*(*(v48 - 8) + 56))(&v2[v47], 1, 1, v48);
  v49 = &v2[OBJC_IVAR____TtC5Music25LibraryMainViewController_viewModels];
  *v49 = xmmword_100EBCEE0;
  *(v49 + 2) = 0;
  *&v2[OBJC_IVAR____TtC5Music25LibraryMainViewController_inlineBubbleTipProvider] = 0;
  (*(v75 + 104))(v74, enum case for MusicMetrics.PageType.library(_:), v76);
  v50 = MetricsEvent.Page.libraryLanding.unsafeMutableAddressor();
  sub_10003C9B0(v50, v10, type metadata accessor for MetricsEvent.Page);
  v51 = v77;
  MetricsEvent.Page.metricsPageProperties.getter(v77);
  sub_1005C3434(v10, type metadata accessor for MetricsEvent.Page);

  sub_1005C3434(v51, type metadata accessor for MetricsPageProperties);
  (*(v79 + 104))(v78, enum case for MusicMetrics.FeatureName.library(_:), v80);
  v52 = type metadata accessor for URL();
  (*(*(v52 - 8) + 56))(v81, 1, 1, v52);
  MusicMetrics.PageFields.init(pageType:pageId:featureName:pageURL:pageContext:searchTerm:pageDetails:)();
  *&v2[OBJC_IVAR____TtC5Music25LibraryMainViewController_libraryImportViewModelsToListenFor] = &off_101099048;
  *&v2[OBJC_IVAR____TtC5Music25LibraryMainViewController_dragDropController] = 0;
  *&v2[OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___dropIndicationView] = 0;
  v2[OBJC_IVAR____TtC5Music25LibraryMainViewController_isActiveDropSessionInsideView] = 0;
  v53 = OBJC_IVAR____TtC5Music25LibraryMainViewController_metricsPageProperties;
  sub_10003CD38(0, v10);
  MetricsEvent.Page.metricsPageProperties.getter(&v2[v53]);
  sub_1005C3434(v10, type metadata accessor for MetricsEvent.Page);
  v2[OBJC_IVAR____TtC5Music25LibraryMainViewController_shouldSkipRecordingPageMetrics] = 0;
  *&v2[OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___editingTrailingBarButtonGroup] = 0;
  *&v2[OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___standardTrailingBarButtonGroup] = 0;
  *&v2[OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___updateCoalescer] = 0;
  type metadata accessor for MusicLibrary();
  v54 = static MusicLibrary.shared.getter();
  LOBYTE(v99) = 10;
  *(&v99 + 1) = v92;
  DWORD1(v99) = *(&v92 + 3);
  *(&v99 + 1) = v54;
  LOBYTE(v42) = v82;
  v100 = v82;
  *v101 = v86;
  *&v101[3] = *(&v86 + 3);
  v102 = 0;
  v103 = 0xE000000000000000;
  v104 = 260;
  v105 = v84;
  v106 = v85;
  v107 = 0;
  v108 = 0xE000000000000000;
  v109 = _swiftEmptyArrayStorage;
  v110 = &_swiftEmptySetSingleton;
  v111 = 0;
  v112 = 0xE000000000000000;
  v113 = _swiftEmptyArrayStorage;
  sub_10010FC20(&qword_1011A3DC0, &unk_100ED5D50);
  swift_allocObject();
  *&v2[OBJC_IVAR____TtC5Music25LibraryMainViewController_recentlyAddedResponseController] = sub_10003D358(&v99);
  v97.receiver = v2;
  v97.super_class = ObjectType;
  v55 = objc_msgSendSuper2(&v97, "initWithNibName:bundle:", 0, 0);
  v56 = v55;
  if (v42)
  {
    v57 = *&v55[OBJC_IVAR____TtC5Music25LibraryMainViewController_menuResponseController];
    swift_beginAccess();
    v58 = *(v57 + 48);
    v93 = *(v57 + 32);
    v94 = v58;
    v59 = *(v57 + 80);
    v95 = *(v57 + 64);
    v96 = v59;
    v92 = *(v57 + 16);
    v86 = *(v57 + 16);
    v87 = v93 | 2;
    v60 = *(v57 + 40);
    v61 = *(v57 + 56);
    v90 = *(v57 + 72);
    v91 = *(v57 + 88);
    v89 = v61;
    v88 = v60;

    sub_1003E1510(&v92, &v84);
    RequestResponse.Controller.request.setter(&v86);

    v62 = OBJC_IVAR____TtC5Music25LibraryMainViewController_libraryFilter;
    *&v86 = *&v56[OBJC_IVAR____TtC5Music25LibraryMainViewController_libraryFilter];
    v56;

    sub_1003B3FC0();
    v63 = *&v56[v62];
    *&v56[v62] = v86;
    sub_1005B39C4(v63);
  }

  else
  {
    swift_beginAccess();
    sub_10003E5E0(&v86, 0);
    swift_endAccess();
    v64 = v56;
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v65 = String._bridgeToObjectiveC()();

    [v64 setTitle:v65];

    v66 = String._bridgeToObjectiveC()();
    [v64 setPlayActivityFeatureName:v66];
  }

  v67 = [v56 traitCollection];

  v68 = UITraitCollection.preferredLargeTitleDisplayMode.getter();
  v70 = v69;

  if ((v70 & 1) == 0)
  {
    v71 = [v56 navigationItem];
    [v71 setLargeTitleDisplayMode:v68];
  }

  return v56;
}

id sub_10003AAD8(uint64_t a1, uint64_t a2)
{
  v5 = &v2[OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_defaultArtworkMetricsProvider];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = &v2[OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_artworkMetricsProvider];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = &v2[OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_artworkProvider];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = &v2[OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_context];
  type metadata accessor for ArtworkPrefetchingController.CacheReference();
  *v8 = 0u;
  *(v8 + 1) = 0u;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  *(v9 + 32) = 0;
  *(v9 + 40) = 1;
  *&v2[OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_cachingReference] = v9;
  v11.receiver = v2;
  v11.super_class = type metadata accessor for ArtworkPrefetchingController();
  return objc_msgSendSuper2(&v11, "init");
}

id Library.Menu.Request.init()@<X0>(uint64_t a1@<X8>)
{
  result = [objc_opt_self() deviceMediaLibrary];
  if (result)
  {
    *a1 = result;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = &_swiftEmptySetSingleton;
    *(a1 + 40) = 257;
    *(a1 + 42) = 0;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_10003AC48()
{
  result = qword_1011ABA30;
  if (!qword_1011ABA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011ABA30);
  }

  return result;
}

unint64_t sub_10003AC9C(uint64_t a1)
{
  result = sub_10003AC48();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10003ACE0(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    type metadata accessor for RequestResponse.Revision(255, result, *(a1 + 88), v3);
    result = type metadata accessor for Published();
    if (v5 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_10003AE14(uint64_t a1)
{
  v1 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    sub_1001109D0(&qword_1011AB640, L"D\v\a");
    v1 = type metadata accessor for Result();
    if (v3 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return v1;
}

uint64_t *sub_10003AF5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = *v5;
  v8 = (v5 + *(*v5 + 112));
  *v8 = 0;
  v8[1] = 0;
  v9 = (v5 + *(*v5 + 120));
  *v9 = 0;
  v9[1] = 0;
  v10 = (v5 + *(*v5 + 128));
  *v10 = 0;
  v10[1] = 0;
  v11 = (v5 + *(*v5 + 136));
  *v11 = 0;
  v11[1] = 0;
  *(v5 + *(*v5 + 144)) = 0;
  *(v5 + *(*v5 + 152)) = 0;
  v12 = *(*v5 + 160);
  v13 = *(v7 + 80);
  type metadata accessor for RequestResponse.Revision(255, v13, *(v7 + 88), a4);
  swift_getFunctionTypeMetadata2();
  *(v5 + v12) = static Array._allocateUninitialized(_:)();
  v14 = *(*v5 + 168);
  v15 = type metadata accessor for Array();
  swift_getTupleTypeMetadata2();
  v16 = static Array._allocateUninitialized(_:)();
  v17 = sub_10003B32C(v16, &type metadata for Int, v15, &protocol witness table for Int);

  *(v5 + v14) = v17;
  *(v5 + *(*v5 + 176)) = 0;
  *(v5 + *(*v5 + 184)) = 0;
  *(v5 + *(*v5 + 192)) = 0;
  *(v5 + *(*v5 + 200)) = &_swiftEmptySetSingleton;
  (*(*(v13 - 8) + 16))(v5 + *(*v5 + 96), a1, v13);
  swift_checkMetadataState();
  swift_allocObject();
  v18 = sub_10003B910(0, a1);
  sub_10003BC8C();
  swift_beginAccess();
  v19 = *v18;
  v21 = v18;
  sub_10003BE8C(&v21, v19);
  swift_endAccess();
  return v5;
}

uint64_t *RequestResponse.Controller.init(request:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  v7 = sub_10003AF5C(a1, a2, a3, a4);
  (*(*(*(v6 + 80) - 8) + 8))(a1);
  return v7;
}

unint64_t sub_10003B32C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = v23 - v11;
  if (Array.count.getter())
  {
    type metadata accessor for _DictionaryStorage();
    v13 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v13 = _swiftEmptyDictionarySingleton;
  }

  result = Array._getCount()();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (Array._hoistableIsNativeTypeChecked()())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = _ArrayBuffer._getElementSlowPath(_:)();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_100942CCC(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

unint64_t sub_10003B618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = v23 - v11;
  if (Array.count.getter())
  {
    type metadata accessor for _DictionaryStorage();
    v13 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v13 = _swiftEmptyDictionarySingleton;
  }

  result = Array._getCount()();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (Array._hoistableIsNativeTypeChecked()())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = _ArrayBuffer._getElementSlowPath(_:)();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_100C30A34(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

uint64_t *sub_10003B910(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 88);
  v7 = *(*v2 + 80);
  swift_getAssociatedTypeWitness();
  sub_1001109D0(&qword_1011AB640, L"D\v\a");
  v8 = type metadata accessor for Result();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin();
  v12 = (&v18 - v11);
  *(v2 + *(v5 + 112)) = a1;
  (*(*(v7 - 8) + 16))(v2 + *(*v2 + 96), a2, v7, v10);
  type metadata accessor for RequestResponse.Revision.InitialResponseLoadingError(0, v7, v6, v13);
  swift_getWitnessTable();
  *v12 = swift_allocError();
  swift_storeEnumTagMultiPayload();
  (*(v9 + 32))(v2 + *(*v2 + 104), v12, v8);
  type metadata accessor for GenericRequestResponseInvalidation();
  v14 = swift_allocObject();
  *(v14 + 32) = 0;
  *(v14 + 40) = 0;
  *(v14 + 48) = 0;
  *(v14 + 16) = 0x636972656E6547;
  *(v14 + 24) = 0xE700000000000000;
  v15 = sub_1000297E8(qword_1011AEA88, type metadata accessor for GenericRequestResponseInvalidation, &protocol conformance descriptor for GenericRequestResponseInvalidation);
  v16 = (v2 + *(*v2 + 120));
  *v16 = v14;
  v16[1] = v15;
  return v2;
}

uint64_t sub_10003BBF0(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10003BC34(uint64_t a1)
{
  result = sub_10003BBF0(&qword_1011AEB18, type metadata accessor for GenericRequestResponseInvalidation, &protocol conformance descriptor for GenericRequestResponseInvalidation);
  *(a1 + 8) = result;
  return result;
}

double sub_10003BC8C()
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  RequestResponseInvalidatable.invalidate()();

  swift_unknownObjectRelease();
  return result;
}

Swift::Void __swiftcall RequestResponseInvalidatable.invalidate()()
{
  v3 = v1;
  v4 = v0;
  if (((*(v1 + 40))() & 1) == 0)
  {
    (*(v3 + 48))(1, v4, v3);
    v5 = (*(v3 + 16))(v4, v3);
    if (v5)
    {
      v7 = v5;
      v8 = v6;
      v5(v2, v3);

      sub_100020438(v7, v8);
    }
  }
}

uint64_t GenericRequestResponseInvalidation.onInvalidation.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  sub_100030444(v1, *(v0 + 40));
  return v1;
}

uint64_t GenericRequestResponseInvalidation.isInvalid.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 48) = a1;
  return result;
}

uint64_t sub_10003BE8C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = __chkstk_darwin();
  (*(v4 + 16))(&v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2, v5);
  Published.init(initialValue:)();
  return (*(v4 + 8))(a1, a2);
}

uint64_t type metadata accessor for SharedLibrariesController(uint64_t a1)
{
  result = qword_101190528;
  if (!qword_101190528)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10003BFC8(uint64_t a1)
{
  if (!qword_101190538)
  {
    sub_1001109D0(&qword_101181560, &qword_100ECD1D0);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &qword_101190538);
    }
  }
}

void sub_10003C02C(uint64_t a1)
{
  sub_10003BFC8(319);
  if (v1 <= 0x3F)
  {
    sub_10003C118(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10003C118(uint64_t a1)
{
  if (!qword_101190540)
  {
    type metadata accessor for MusicLibrary();
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &qword_101190540);
    }
  }
}

uint64_t sub_10003C170()
{
  v1 = v0;
  v2 = sub_10010FC20(&unk_101197250, &qword_100EC9FC0);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v14 - v4;
  v6 = sub_10010FC20(&unk_101197240, &unk_100ECD2C0);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v14 - v8;
  v10 = OBJC_IVAR____TtC5Music25SharedLibrariesController__availableSharedLibraries;
  v15 = _swiftEmptyArrayStorage;
  sub_10010FC20(&qword_101181560, &qword_100ECD1D0);
  Published.init(initialValue:)();
  (*(v7 + 32))(v1 + v10, v9, v6);
  v11 = OBJC_IVAR____TtC5Music25SharedLibrariesController__selectedLibrary;
  type metadata accessor for MusicLibrary();
  v15 = static MusicLibrary.shared.getter();
  Published.init(initialValue:)();
  (*(v3 + 32))(v1 + v11, v5, v2);
  *(v1 + OBJC_IVAR____TtC5Music25SharedLibrariesController_isAutomaticReloadingEnabled) = 0;
  *(v1 + OBJC_IVAR____TtC5Music25SharedLibrariesController_autoupdatingResponse) = 0;
  v12 = v1 + OBJC_IVAR____TtC5Music25SharedLibrariesController_autoupdatingResponseSubscription;
  *v12 = 0u;
  *(v12 + 16) = 0u;
  *(v12 + 32) = 0;
  *(v1 + OBJC_IVAR____TtC5Music25SharedLibrariesController_isCurrentlyConnecting) = 0;
  return v1;
}

uint64_t sub_10003C3A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10010FC20(&qword_1011A7F08, &unk_100EECDE0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

uint64_t sub_10003C480(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_10010FC20(&qword_1011A77F0, &unk_100EEAA20);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

id sub_10003C5A0()
{
  result = *(v0 + OBJC_IVAR____TtC5Music20AccountButtonWrapper_button);
  if (result)
  {
    return [result intrinsicContentSize];
  }

  return result;
}

uint64_t *AccessibilityIdentifier.accountButton.unsafeMutableAddressor()
{
  if (qword_1011A6D58 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.accountButton;
}

uint64_t sub_10003C668()
{
  if (qword_1011A6B58 != -1)
  {
    swift_once();
  }

  v3 = qword_1011AFC00;
  v4 = *algn_1011AFC08;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0x42746E756F636361;
  v1._object = 0xED00006E6F747475;
  String.append(_:)(v1);

  static AccessibilityIdentifier.accountButton = v3;
  *algn_10121A638 = v4;
  strcpy(&qword_10121A640, "accountButton");
  unk_10121A64E = -4864;
  return result;
}

unint64_t sub_10003C744(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10010FC20(&qword_101180268, &qword_100EBA5A0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100019C10(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

uint64_t sub_10003C840(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for MetricsEvent.Page(0);

  return sub_1000060E4(v4, a2);
}

uint64_t sub_10003C8B8()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  sub_100006080(v0, static MetricsEvent.Page.libraryLanding);
  v1 = sub_1000060E4(v0, static MetricsEvent.Page.libraryLanding);
  v2 = v0[6];
  v3 = type metadata accessor for URL();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0x7972617262694CLL;
  *(v1 + 1) = 0xE700000000000000;
  *(v1 + 2) = 0x676E69646E614CLL;
  *(v1 + 3) = 0xE700000000000000;
  *&v1[v0[7]] = 0;
  v5 = &v1[v0[8]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v1[v0[9]] = 1;
  v6 = &v1[v0[10]];
  *v6 = 0;
  *(v6 + 1) = 0;
  v1[v0[11]] = 2;
  return result;
}

uint64_t sub_10003C9B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t MetricsEvent.Page.metricsPageProperties.getter@<X0>(char *a1@<X8>)
{
  sub_10010FC20(&qword_1011A77F0, &unk_100EEAA20);
  __chkstk_darwin();
  v4 = &v18 - v3;
  v5 = v1[1];
  v18 = *v1;
  v7 = v1[2];
  v6 = v1[3];
  v8 = type metadata accessor for MetricsEvent.Page(0);
  sub_1000089F8(v1 + v8[6], v4, &qword_1011A77F0, &unk_100EEAA20);
  v9 = *(v1 + v8[7]);
  v10 = (v1 + v8[10]);
  v11 = v10[1];
  v19 = *v10;
  v12 = type metadata accessor for MetricsPageProperties(0);
  v13 = v12[6];
  v14 = type metadata accessor for URL();
  (*(*(v14 - 8) + 56))(&a1[v13], 1, 1, v14);
  v15 = v12[7];
  v16 = &a1[v12[8]];
  *a1 = v18;
  *(a1 + 1) = v5;
  *(a1 + 2) = v7;
  *(a1 + 3) = v6;

  result = sub_10003CB98(v4, &a1[v13]);
  *&a1[v15] = v9;
  *v16 = v19;
  *(v16 + 1) = v11;
  return result;
}

uint64_t sub_10003CB98(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011A77F0, &unk_100EEAA20);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003CC08(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003CC78(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10003CCD8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10003CD38@<X0>(unsigned __int8 a1@<W0>, void *a2@<X8>)
{
  v4 = a1;
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v6 = &v28[-v5];
  type metadata accessor for MetricsEvent.Page(0);
  __chkstk_darwin();
  v8 = &v28[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for MetricsPageProperties(0);
  __chkstk_darwin();
  v10 = &v28[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (v4 == 2)
  {
    v11 = MetricsEvent.Page.libraryMenuEdit.unsafeMutableAddressor();
    return sub_10003C9B0(v11, a2, type metadata accessor for MetricsEvent.Page);
  }

  else
  {
    v13 = MetricsEvent.Page.libraryLanding.unsafeMutableAddressor();
    sub_10003C9B0(v13, v8, type metadata accessor for MetricsEvent.Page);
    MetricsEvent.Page.metricsPageProperties.getter(v10);
    sub_1005C3434(v8, type metadata accessor for MetricsEvent.Page);
    if (a1)
    {
      if (qword_10117F630 != -1)
      {
        swift_once();
      }

      v14 = *(qword_101218B28 + 128);
      v16 = *(qword_101218B28 + 136);
      v15 = *(qword_101218B28 + 144);
      sub_10010FC20(&qword_101190BE0, &qword_100EC1580);
      inited = swift_initStackObject();
      v18 = inited;
      *(inited + 16) = xmmword_100EBC6B0;
      *(inited + 32) = 0x6C61727265666572;
      v19 = inited + 32;
      *(inited + 40) = 0xEE00737574617453;
      if (v14)
      {
        if (v14 == 1)
        {
          v20 = 0xE700000000000000;
          v21 = 0x64657472617473;
        }

        else
        {
          v20 = 0xE800000000000000;
          v21 = 0x6465776569766572;
        }
      }

      else
      {
        v20 = 0xE700000000000000;
        v21 = 0x6E776F6E6B6E75;
      }

      *(inited + 48) = v21;
      *(inited + 56) = v20;

      v22 = sub_10010C578(v18);
      swift_setDeallocating();
      sub_1000095E8(v19, &qword_101183AA0, &unk_100ECAF50);
    }

    else
    {
      v16 = 0;
      v15 = 0;
      v22 = 0;
    }

    v23 = *v10;
    v24 = *(v10 + 1);
    v25 = *(v10 + 2);
    v26 = *(v10 + 3);

    sub_1005C3434(v10, type metadata accessor for MetricsPageProperties);
    v27 = type metadata accessor for URL();
    (*(*(v27 - 8) + 56))(v6, 1, 1, v27);
    return MetricsEvent.Page.init(pageIdentifier:pageType:pageURL:pageDetails:searchTerm:pageDisplayType:extRefUrl:attenuationAvailable:)(v23, v24, v25, v26, v6, v22, 0, 0, a2, 1, v16, v15, 2);
  }
}

uint64_t MetricsEvent.Page.init(pageIdentifier:pageType:pageURL:pageDetails:searchTerm:pageDisplayType:extRefUrl:attenuationAvailable:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, char a10, uint64_t a11, uint64_t a12, char a13)
{
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  v18 = type metadata accessor for MetricsEvent.Page(0);
  result = sub_10003D17C(a5, a9 + v18[6], &qword_1011A77F0, &unk_100EEAA20);
  *(a9 + v18[7]) = a6;
  v20 = (a9 + v18[8]);
  *v20 = a7;
  v20[1] = a8;
  *(a9 + v18[9]) = a10 & 1;
  v21 = (a9 + v18[10]);
  *v21 = a11;
  v21[1] = a12;
  *(a9 + v18[11]) = a13;
  return result;
}

uint64_t sub_10003D17C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10010FC20(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_10003D1F4()
{
  result = qword_1011909F8;
  if (!qword_1011909F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011909F8);
  }

  return result;
}

unint64_t sub_10003D248(uint64_t a1)
{
  result = sub_10003D1F4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10003D274()
{
  result = qword_101190918;
  if (!qword_101190918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101190918);
  }

  return result;
}

uint64_t sub_10003D358(__int128 *a1)
{
  v2 = v1;
  v4 = sub_10010FC20(&qword_10118CFF0, &qword_100EC8CB8);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  __chkstk_darwin();
  v9 = v30 - v8 + 16;
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 72) = 0;
  *(v2 + 80) = 0;
  *(v2 + 88) = _swiftEmptyDictionarySingleton;
  v10 = a1[5];
  v37 = a1[4];
  v38 = v10;
  v39 = *(a1 + 12);
  v11 = a1[1];
  v33 = *a1;
  v34 = v11;
  v12 = a1[3];
  v35 = a1[2];
  v36 = v12;
  sub_10003D868(a1, v30);
  type metadata accessor for TitledSection();
  type metadata accessor for RecentlyAddedMusicItem();
  sub_10003D8C4(&qword_10118CFF8, &type metadata accessor for RecentlyAddedMusicItem, &protocol conformance descriptor for RecentlyAddedMusicItem);
  MusicLibrarySectionedRequest.init()();

  MusicLibrarySectionedRequest.library.setter();
  v13 = *(a1 + 16);
  MusicLibrarySectionedRequest.includeOnlyDownloadedContent.setter();
  MusicLibrarySectionedRequest.filterItems(text:)(*(a1 + 24));
  MusicLibrarySectionedRequest.limit.setter();
  swift_getKeyPath();
  MusicLibrarySectionedRequest.sortItems<A>(by:ascending:)();
  if (v13 == 1)
  {

    MusicLibrarySectionedRequest.excludeNonPinnedPlaylists.setter();
    sub_10003D90C(a1);
  }

  else
  {
    sub_10003D90C(a1);
  }

  (*(v5 + 32))(v9, v7, v4);
  sub_100020674(&qword_10118D000, &qword_10118CFF0, &qword_100EC8CB8, &protocol conformance descriptor for MusicLibrarySectionedRequest<A, B>);
  v14 = MusicAutoupdatableRequest.autoupdatingResponse.getter();
  (*(v5 + 8))(v9, v4);
  v30[4] = v37;
  v30[5] = v38;
  v30[0] = v33;
  v30[1] = v34;
  v30[3] = v36;
  v30[2] = v35;
  v31 = v39;
  v32 = v14;
  sub_10010FC20(&unk_10118D008, &unk_100EC8D30);
  swift_allocObject();
  *(v2 + 48) = RequestResponse.Controller.init(request:)(v30, v15, v16, v17);
  sub_10003DD5C(&unk_1010A9928, sub_1003BFFD8);
  sub_10003E4A4(&unk_1010A9928, sub_1003BFEE0);
  sub_1003A647C(&unk_1010A9928, sub_1003BFDAC);
  v18 = *(v2 + 48);
  v19 = swift_allocObject();
  swift_weakInit();
  v20 = (v18 + *(*v18 + 120));
  swift_beginAccess();
  v21 = *v20;
  v22 = v20[1];
  *v20 = sub_1003BC908;
  v20[1] = v19;

  sub_100020438(v21, v22);

  v23 = *(v2 + 48);
  v24 = swift_allocObject();
  swift_weakInit();

  v25 = (v23 + *(*v23 + 128));
  swift_beginAccess();
  v26 = *v25;
  v27 = v25[1];
  *v25 = sub_1003BC938;
  v25[1] = v24;

  sub_100020438(v26, v27);

  return v2;
}

uint64_t sub_10003D824()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10003D8C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10003D984(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedConformanceWitness();
    type metadata accessor for MusicLibrarySectionedRequest();
    swift_getWitnessTable();
    result = type metadata accessor for MusicAutoupdatingResponse();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10003DB40(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10003DB88(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void sub_10003DBDC(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for MusicLibrarySectionedResponse();
  if (v1 <= 0x3F)
  {
    sub_10003DD0C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10003DD0C()
{
  if (!qword_1011A1C80)
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_1011A1C80);
    }
  }
}

void sub_10003DD5C(uint64_t a1, uint64_t a2)
{
  v5 = sub_10003DE24(a1, a2);
  v6 = *(v2 + 48);
  swift_beginAccess();
  [(objc_class *)v5 setHidden:*(*(v6 + 112) + 16) == 0];

  v7 = sub_10003DE24(a1, a2);
  v8 = v7;
  if (*(*(v6 + 88) + 16))
  {
    v9 = *(*(v6 + 112) + 16) != 0;
  }

  else
  {
    v9 = 0;
  }

  [(objc_class *)v7 setSelected:v9];
}

objc_class *sub_10003DE24(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v4 = *(v2 + 56);
  if (v4)
  {
    v5 = *(v2 + 56);
  }

  else
  {
    sub_100009F78(0, &qword_101181580, UIBarButtonItem_ptr);
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v6 = String.init(localized:table:bundle:locale:comment:)();
    v8 = v7;
    v9 = String._bridgeToObjectiveC()();
    v10 = [objc_opt_self() systemImageNamed:v9];

    sub_100009F78(0, &unk_1011845F0, UIMenu_ptr);
    v11 = swift_allocObject();
    swift_weakInit();

    v12.value = 0;
    v13 = v2;
    isa = static UIMenu.lazy(title:image:options:cached:childrenProvider:)(0, 0, 0, v12, 0, a2, v11).super.super.isa;

    v15 = AccessibilityIdentifier.libraryFilterOptionsButton.unsafeMutableAddressor();
    v16 = *v15;
    v17 = v15[1];
    v19 = v15[2];
    v18 = v15[3];

    v20 = UIBarButtonItem.init(title:image:style:primaryAction:accessibilityIdentifier:)(v6, v8, v10, 0, isa, 1, v16, v17, v19, v18);
    v21 = *(v13 + 56);
    *(v13 + 56) = v20;
    v5 = v20;

    v4 = 0;
  }

  v22 = v4;
  return v5;
}

UIMenu static UIMenu.lazy(title:image:options:cached:childrenProvider:)(uint64_t a1, void *a2, void *a3, UIMenuIdentifier_optional a4, char a5, uint64_t a6, uint64_t a7)
{
  sub_10010FC20(&qword_1011B5630, "\b)\n");
  preferredElementSize = swift_allocObject();
  *(preferredElementSize + 16) = xmmword_100EBC6C0;
  if (a5)
  {
    v15 = swift_allocObject();
    *(v15 + 16) = a6;
    *(v15 + 24) = a7;
    v31 = sub_100B128E0;
    v32 = v15;
    aBlock = _NSConcreteStackBlock;
    v28 = 1107296256;
    v29 = sub_100B127D0;
    v30 = &unk_1010E2128;
    v16 = _Block_copy(&aBlock);
    v17 = objc_opt_self();

    v18 = [v17 elementWithProvider:v16];
    _Block_release(v16);
  }

  else
  {
    v19 = objc_opt_self();
    v20 = swift_allocObject();
    *(v20 + 16) = a6;
    *(v20 + 24) = a7;
    v31 = sub_100B18314;
    v32 = v20;
    aBlock = _NSConcreteStackBlock;
    v28 = 1107296256;
    v29 = sub_100B127D0;
    v30 = &unk_1010E20D8;
    v21 = _Block_copy(&aBlock);

    v18 = [v19 elementWithUncachedProvider:v21];
    _Block_release(v21);
  }

  *(preferredElementSize + 32) = v18;
  if (a2)
  {
    v22 = a2;
  }

  else
  {
    a1 = 0;
    v22 = 0xE000000000000000;
  }

  sub_100009F78(0, &qword_1011B15A8, UIMenu_ptr);
  v23 = a3;

  v24._countAndFlagsBits = a1;
  v24._object = v22;
  v33.value.super.isa = a3;
  v33.is_nil = 0;
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v24, 0, v33, a4, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v26);
}

uint64_t sub_10003E330()
{

  return swift_deallocObject();
}

uint64_t *AccessibilityIdentifier.libraryFilterOptionsButton.unsafeMutableAddressor()
{
  if (qword_1011A6DB0 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryFilterOptionsButton;
}

uint64_t sub_10003E3BC()
{
  if (qword_1011A6B58 != -1)
  {
    swift_once();
  }

  v3 = qword_1011AFC00;
  v4 = *algn_1011AFC08;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD00000000000001BLL;
  v1._object = 0x8000000100E63330;
  String.append(_:)(v1);

  static AccessibilityIdentifier.libraryFilterOptionsButton = v3;
  *algn_10121A798 = v4;
  qword_10121A7A0 = 0xD00000000000001BLL;
  unk_10121A7A8 = 0x8000000100E63330;
  return result;
}

uint64_t sub_10003E4A4(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = *(v2 + 48);
  swift_beginAccess();
  v7 = *(v5 + 96);
  v6 = *(v5 + 104);
  v8 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v8 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    sub_100009F78(0, &qword_10118CE58, NSUserDefaults_ptr);
    v13[0] = v7;
    v13[1] = v6;
    v9 = swift_allocObject();
    swift_weakInit();
    v10 = sub_100009838();

    v11 = static NSUserDefaults.observe<A>(_:in:valueChanged:)(v13, 0, 0, a2, v9, &type metadata for String, v10);
  }

  else
  {
    v11 = 0;
  }

  *(v4 + 72) = v11;
}

uint64_t sub_10003E610(_BYTE *a1, char a2, uint64_t *a3, uint64_t *a4, unint64_t a5, uint64_t (*a6)(void))
{
  v11 = v6;
  v14 = *v11;
  Hasher.init(_seed:)();
  v15 = a2 & 1;
  Hasher._combine(_:)(v15);
  v16 = Hasher._finalize()();
  v17 = -1 << *(v14 + 32);
  v18 = v16 & ~v17;
  if ((*(v14 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
  {
    v19 = ~v17;
    while (1)
    {
      v20 = *(v14 + 48);
      if (*(v20 + v18) == v15)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v14 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    LOBYTE(v15) = *(v20 + v18);
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v11;
    sub_10003E740(v15, v18, isUniquelyReferenced_nonNull_native, a3, a4, a5, a6);
    *v11 = v23;
    result = 1;
  }

  *a1 = v15;
  return result;
}

Swift::Int sub_10003E740(Swift::Int result, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, unint64_t a6, uint64_t (*a7)(void))
{
  v8 = result;
  v9 = *(*v7 + 16);
  v10 = *(*v7 + 24);
  if (v10 > v9 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1003B069C(v9 + 1, a4, a5);
  }

  else
  {
    if (v10 > v9)
    {
      v11 = a2;
      result = a7();
      a2 = v11;
      goto LABEL_12;
    }

    sub_10003E8B4(v9 + 1, a4, a5);
  }

  v12 = *v7;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v8 & 1);
  result = Hasher._finalize()();
  v13 = -1 << *(v12 + 32);
  a2 = result & ~v13;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v14 = ~v13;
    while (*(*(v12 + 48) + a2) != (v8 & 1))
    {
      a2 = (a2 + 1) & v14;
      if (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v15 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v15 + 48) + a2) = v8 & 1;
  v16 = *(v15 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v15 + 16) = v18;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int sub_10003E8B4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  sub_10010FC20(a2, a3);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v5 + 48) + (v15 | (v8 << 6)));
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v18);
      result = Hasher._finalize()();
      v19 = -1 << *(v7 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + v14) = v18;
      ++*(v7 + 16);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v4 = v3;
        goto LABEL_26;
      }

      v17 = *(v5 + 56 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v4 = v7;
  }

  return result;
}

unint64_t sub_10003EAE0()
{
  result = qword_101196F38;
  if (!qword_101196F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101196F38);
  }

  return result;
}

void sub_10003EBC4(void *a1, id a2, void *a3)
{
  v6 = [a2 managingTabGroup];
  if (!v6)
  {
    v6 = a2;
  }

  v50[1] = &OBJC_PROTOCOL___UITabBarControllerDelegate;
  v7 = swift_dynamicCastObjCProtocolConditional();
  if (v7)
  {
    v8 = v7;
    if ([v7 respondsToSelector:"tabBarController:didSelectTab:previousTab:"])
    {
      [v8 tabBarController:a1 didSelectTab:a2 previousTab:a3];
    }
  }

  if (!a3 || (sub_100009F78(0, &qword_101181F70, UITab_ptr), v9 = a2, v10 = a3, v11 = static NSObject.== infix(_:_:)(), v9, v10, (v11 & 1) == 0))
  {
    type metadata accessor for TabBarController(0);
    v12 = swift_dynamicCastClass();
    if (v12)
    {
      v13 = v12;
      v14 = qword_10117F7B8;
      v49 = a1;
      if (v14 != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      sub_1000060E4(v15, qword_101218E48);
      v16 = a3;
      v17 = a2;
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v50[0] = swift_slowAlloc();
        *v20 = 136446466;
        v21 = v16;
        sub_10010FC20(&unk_10118DAF0, &unk_100EC9BA0);
        v22 = String.init<A>(describing:)();
        v24 = sub_1000105AC(v22, v23, v50);

        *(v20 + 4) = v24;
        *(v20 + 12) = 2082;
        v25 = v17;
        v26 = [v25 description];
        v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v28 = v17;
        v30 = v29;

        v31 = sub_1000105AC(v27, v30, v50);
        v17 = v28;

        *(v20 + 14) = v31;
        _os_log_impl(&_mh_execute_header, v18, v19, "Tab switched from %{public}s to %{public}s", v20, 0x16u);
        swift_arrayDestroy();
      }

      v32 = sub_10003F0FC();
      if (v32 != 7)
      {
        v33 = v32;
        if (a3)
        {
          v34 = sub_10003F0FC();
          if (v34 != 7 && (sub_10001777C(v33, v34) & 1) != 0)
          {
            goto LABEL_22;
          }
        }

        v35 = Logger.logObject.getter();
        v36 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          v38 = swift_slowAlloc();
          v50[0] = v38;
          *v37 = 136446210;
          v39 = String.init<A>(describing:)();
          v41 = sub_1000105AC(v39, v40, v50);

          *(v37 + 4) = v41;
          _os_log_impl(&_mh_execute_header, v35, v36, "Telling MusicUI core tab changed to %{public}s", v37, 0xCu);
          sub_10000959C(v38);
        }

        v42 = *(v13 + OBJC_IVAR____TtC5Music16TabBarController_onSelectedMusicTabChanged);
        if (v42)
        {
          v43 = *(v13 + OBJC_IVAR____TtC5Music16TabBarController_onSelectedMusicTabChanged + 8);

          v42(v33);
          sub_100020438(v42, v43);
        }
      }

      if (!a3)
      {
LABEL_26:

        return;
      }

LABEL_22:
      if ((*(v13 + OBJC_IVAR____TtC5Music16TabBarController_canRestoreLastSelectedTab) & 1) == 0)
      {
        if (!UIApp)
        {
          __break(1u);
          return;
        }

        if (([UIApp launchedToTest] & 1) == 0)
        {
          v44 = [objc_opt_self() standardUserDefaults];
          v45 = [v17 identifier];
          v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v48 = v47;

          sub_1006B9E20(v46, v48);
        }
      }

      goto LABEL_26;
    }
  }
}

uint64_t sub_10003F0FC()
{
  sub_10010FC20(&unk_101182EA0, &unk_100EBE980);
  *&v1 = __chkstk_darwin().n128_u64[0];
  v3 = v20 - v2;
  v4 = [v0 managingTabGroup];
  if (!v4)
  {
    v4 = v0;
  }

  v5 = [v4 identifier];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v20[2] = v6;
  v20[3] = v8;
  v20[0] = 0xD000000000000014;
  v20[1] = 0x8000000100E3E560;
  v9 = type metadata accessor for Locale();
  (*(*(v9 - 8) + 56))(v3, 1, 1, v9);
  sub_100009838();
  StringProtocol.range<A>(of:options:range:locale:)();
  v11 = v10;
  v13 = v12;
  result = sub_10003F340(v3);
  if (v13)
  {

    return 7;
  }

  v15 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v15 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v15 < v11 >> 14)
  {
    __break(1u);
    return result;
  }

  String.subscript.getter();

  v16 = static String._fromSubstring(_:)();
  v18 = v17;

  v21._countAndFlagsBits = v16;
  v21._object = v18;
  v19 = sub_10003F3A8(v21);

  result = v19;
  if (v19 == 7)
  {
    return 7;
  }

  return result;
}

uint64_t sub_10003F340(uint64_t a1)
{
  v2 = sub_10010FC20(&unk_101182EA0, &unk_100EBE980);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10003F3A8(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101098D10, v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

unint64_t _s9MusicCore13TabIdentifierO8rawValueACSgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1010C75C8, v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10003F440()
{
  result = qword_10119DA60;
  if (!qword_10119DA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119DA60);
  }

  return result;
}

uint64_t sub_10003F498@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  if (v3 <= 2)
  {
    if (*v1)
    {
      if (v3 == 1)
      {
        v4 = &enum case for MusicTabID.listenNow(_:);
      }

      else
      {
        v4 = &enum case for MusicTabID.browse(_:);
      }
    }

    else
    {
      v4 = &enum case for MusicTabID.library(_:);
    }
  }

  else if (*v1 > 4u)
  {
    if (v3 == 5)
    {
      v4 = &enum case for MusicTabID.videos(_:);
    }

    else
    {
      *a1 = 0x7473696C79616C70;
      a1[1] = 0xE900000000000073;
      v4 = &enum case for MusicTabID.other(_:);
    }
  }

  else if (v3 == 3)
  {
    v4 = &enum case for MusicTabID.radio(_:);
  }

  else
  {
    v4 = &enum case for MusicTabID.search(_:);
  }

  v5 = *v4;
  v6 = type metadata accessor for MusicTabID();
  v7 = *(*(v6 - 8) + 104);

  return v7(a1, v5, v6);
}

void sub_10003F5A0()
{
  v1 = v0;
  v2 = type metadata accessor for UIListContentConfiguration();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() currentTraitCollection];
  v7 = [v6 userInterfaceIdiom];

  if (v7 != 6)
  {
    goto LABEL_30;
  }

  v22 = v1;
  v8 = [v1 tabs];
  sub_100009F78(0, &qword_101181F70, UITab_ptr);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  *&v24 = _swiftEmptyArrayStorage;
  if (!(v9 >> 62))
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v3;
    if (v10)
    {
      goto LABEL_4;
    }

LABEL_21:
    v11 = _swiftEmptyArrayStorage;
    goto LABEL_22;
  }

LABEL_20:
  v10 = _CocoaArrayWrapper.endIndex.getter();
  v23 = v3;
  if (!v10)
  {
    goto LABEL_21;
  }

LABEL_4:
  v3 = 0;
  v11 = _swiftEmptyArrayStorage;
  do
  {
    v12 = v3;
    while (1)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v13 = sub_1007E914C(v12, v9);
      }

      else
      {
        if (v12 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v13 = *(v9 + 8 * v12 + 32);
      }

      v14 = v13;
      v3 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      _s3TabCMa(0);
      if (swift_dynamicCastClass())
      {
        break;
      }

      ++v12;
      if (v3 == v10)
      {
        goto LABEL_22;
      }
    }

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v11 = v24;
  }

  while (v3 != v10);
LABEL_22:

  v15 = v23;
  if (v11 >> 62)
  {
    v20 = _CocoaArrayWrapper.endIndex.getter();
    v1 = v22;
    if (v20)
    {
      goto LABEL_24;
    }

    goto LABEL_29;
  }

  v1 = v22;
  if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_29:

LABEL_30:
    v21 = [v1 sidebar];
    v26 = 0;
    v24 = 0u;
    v25 = 0u;
    UITabBarControllerSidebar.headerContentConfiguration.setter();

    return;
  }

LABEL_24:
  if ((v11 & 0xC000000000000001) != 0)
  {
    v16 = sub_1007E9748(0, v11);
    goto LABEL_27;
  }

  if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v16 = *(v11 + 32);
LABEL_27:
    v17 = v16;

    static UIListContentConfiguration.header()();
    sub_1003D58AC();
    UIListContentConfiguration.text.setter();
    v18 = [v1 sidebar];
    *(&v25 + 1) = v2;
    v26 = &protocol witness table for UIListContentConfiguration;
    v19 = sub_10001C8B8(&v24);
    (*(v15 + 16))(v19, v5, v2);
    UITabBarControllerSidebar.headerContentConfiguration.setter();

    (*(v15 + 8))(v5, v2);
    return;
  }

  __break(1u);
}

void sub_10003F950()
{
  v1 = [v0 tabs];
  sub_100009F78(0, &qword_101181F70, UITab_ptr);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    goto LABEL_53;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v42 = v2;
  while (v3)
  {
    v4 = 0;
    v5 = v42 & 0xC000000000000001;
    v6 = v42 & 0xFFFFFFFFFFFFFF8;
    v7 = _swiftEmptyArrayStorage;
    v8 = v42 + 32;
    v41 = v3;
    while (1)
    {
      if (v5)
      {
        v9 = sub_1007E914C(v4, v42);
      }

      else
      {
        if (v4 >= *(v6 + 16))
        {
          goto LABEL_48;
        }

        v9 = *(v8 + 8 * v4);
      }

      v2 = v9;
      v10 = __OFADD__(v4++, 1);
      if (v10)
      {
        break;
      }

      swift_getObjectType();
      v11 = swift_conformsToProtocol2();
      if (!v11 || !v2)
      {

        goto LABEL_5;
      }

      v12 = v11;
      ObjectType = swift_getObjectType();
      v14 = *(v12 + 8);

      v15 = v14(ObjectType, v12);
      if (!v15)
      {

LABEL_41:
        v8 = v42 + 32;
        v6 = v42 & 0xFFFFFFFFFFFFFF8;
        goto LABEL_5;
      }

      v16 = v15;
      v44 = v2;
      v17 = v15 >> 62;
      if (v15 >> 62)
      {
        v2 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v2 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v18 = v7 >> 62;
      if (v7 >> 62)
      {
        v35 = _CocoaArrayWrapper.endIndex.getter();
        v20 = v35 + v2;
        if (__OFADD__(v35, v2))
        {
LABEL_46:
          __break(1u);
          break;
        }
      }

      else
      {
        v19 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v20 = v19 + v2;
        if (__OFADD__(v19, v2))
        {
          goto LABEL_46;
        }
      }

      if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (v18)
        {
LABEL_23:
          _CocoaArrayWrapper.endIndex.getter();
        }

LABEL_24:
        v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v21 = v22 & 0xFFFFFFFFFFFFFF8;
        goto LABEL_25;
      }

      if (v18)
      {
        goto LABEL_23;
      }

      v21 = v7 & 0xFFFFFFFFFFFFFF8;
      v22 = v7;
      if (v20 > *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_24;
      }

LABEL_25:
      v23 = *(v21 + 16);
      v24 = *(v21 + 24);
      if (v17)
      {
        v27 = v21;
        v28 = _CocoaArrayWrapper.endIndex.getter();
        v21 = v27;
        v25 = v28;
        if (v28)
        {
LABEL_27:
          if (((v24 >> 1) - v23) < v2)
          {
            goto LABEL_50;
          }

          v26 = v21 + 8 * v23 + 32;
          v43 = v21;
          if (v17)
          {
            if (v25 < 1)
            {
              goto LABEL_52;
            }

            sub_1002D2EF4();
            for (i = 0; i != v25; ++i)
            {
              sub_10010FC20(&qword_101181550, &unk_100EBCFF0);
              v30 = sub_1006CAE94(aBlock, i, v16);
              v32 = *v31;
              (v30)(aBlock, 0);
              *(v26 + 8 * i) = v32;
            }

            v3 = v41;
          }

          else
          {
            sub_100009F78(0, &qword_10118CDE0, UIMenuElement_ptr);
            swift_arrayInitWithCopy();
          }

          v5 = v42 & 0xC000000000000001;
          if (v2 > 0)
          {
            v33 = *(v43 + 16);
            v10 = __OFADD__(v33, v2);
            v34 = v33 + v2;
            if (v10)
            {
              goto LABEL_51;
            }

            *(v43 + 16) = v34;
          }

          v7 = v22;
          goto LABEL_41;
        }
      }

      else
      {
        v25 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v25)
        {
          goto LABEL_27;
        }
      }

      v7 = v22;
      v5 = v42 & 0xC000000000000001;
      v8 = v42 + 32;
      v6 = v42 & 0xFFFFFFFFFFFFFF8;
      if (v2 > 0)
      {
        goto LABEL_49;
      }

LABEL_5:
      if (v4 == v3)
      {
        goto LABEL_55;
      }
    }

    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    v3 = _CocoaArrayWrapper.endIndex.getter();
    v42 = v2;
  }

  v7 = _swiftEmptyArrayStorage;
LABEL_55:

  if (v7 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_57;
    }

LABEL_59:

    v39 = [v40 sidebar];
    [v39 setNavigationOverflowItems:0];
    goto LABEL_60;
  }

  if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_59;
  }

LABEL_57:
  v36 = [v40 sidebar];
  v37 = swift_allocObject();
  *(v37 + 16) = v7;
  aBlock[4] = sub_1002D2F58;
  aBlock[5] = v37;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1002D0E1C;
  aBlock[3] = &unk_1010A4CA8;
  v38 = _Block_copy(aBlock);
  v39 = [objc_opt_self() elementWithProvider:v38];
  _Block_release(v38);

  [v36 setNavigationOverflowItems:v39];

LABEL_60:
}

uint64_t sub_10003FED0()
{

  return swift_deallocObject();
}

uint64_t sub_10003FFC0()
{
  sub_100009838();
  NSUserDefaults.subscript.getter(&v1);
  if (v2)
  {
    if (swift_dynamicCast())
    {
      return 0xD000000000000019;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1000095E8(&v1, &unk_101183F30, qword_100EBF960);
    return 0;
  }
}

uint64_t static Task<>.delayed(by:priority:task:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  sub_10010FC20(&unk_1011BA2C0, &qword_100F0C668);
  __chkstk_darwin();
  v11 = &v14 - v10;
  sub_100020A9C(a1, &v14 - v10);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  *(v12 + 32) = a4;
  *(v12 + 40) = a5;
  *(v12 + 48) = a2;
  *(v12 + 56) = a3;

  return sub_100C23E34(0, 0, v11, &unk_100F0C678, v12, a4);
}

uint64_t sub_100040174()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000401B4(uint64_t a1)
{
  v4 = *(v1 + 3);
  v5 = *(v1 + 2);
  v6 = v1[5];
  v8 = *(v1 + 6);
  v7 = *(v1 + 7);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002F3F4;

  return sub_10004028C(a1, v6, v5, v4, v8, v7);
}

uint64_t sub_10004028C(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 32) = a5;
  *(v6 + 40) = a6;
  *(v6 + 24) = a2;
  *(v6 + 16) = a1;
  return _swift_task_switch(sub_1000402B4, 0, 0);
}

uint64_t sub_1000402B4(unint64_t a1)
{
  v3 = *(v1 + 24) * 1000000000.0;
  if (COERCE__INT64(fabs(v3)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v3 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v3 >= 1.84467441e19)
  {
LABEL_9:
    __break(1u);
    return static Task<>.sleep(nanoseconds:)(a1);
  }

  v4 = v3;
  v5 = swift_task_alloc();
  *(v1 + 48) = v5;
  *v5 = v1;
  v5[1] = sub_10004039C;
  a1 = v4;

  return static Task<>.sleep(nanoseconds:)(a1);
}

uint64_t sub_10004039C()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v4 = v3[1];

    return v4();
  }

  else
  {
    v8 = (v2[4] + *v2[4]);
    v6 = swift_task_alloc();
    v2[7] = v6;
    *v6 = v3;
    v6[1] = sub_100725DC4;
    v7 = v2[2];

    return v8(v7);
  }
}

id sub_1000405A4()
{
  v1 = *(v0 + 56);
  if (v1)
  {
    v2 = *(v0 + 56);
  }

  else
  {
    v3 = [objc_allocWithZone(type metadata accessor for BottomPlayerViewController()) init];
    v4 = *(v0 + 56);
    *(v0 + 56) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

id sub_100040610()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC5Music26BottomPlayerViewController_artworkView] = 0;
  *&v0[OBJC_IVAR____TtC5Music26BottomPlayerViewController_nowPlaying] = 0;
  v0[OBJC_IVAR____TtC5Music26BottomPlayerViewController_isInTransition] = 0;
  v3 = &v0[OBJC_IVAR____TtC5Music26BottomPlayerViewController_autoMixTransitionInformation];
  *v3 = 0;
  v3[1] = 0;
  v0[OBJC_IVAR____TtC5Music26BottomPlayerViewController_shouldShowSmartTransitionTTRButton] = 0;
  *&v0[OBJC_IVAR____TtC5Music26BottomPlayerViewController_shouldShowSmartTransitionTTRButtonTask] = 0;
  *&v0[OBJC_IVAR____TtC5Music26BottomPlayerViewController_invertColorsStatusDidChangeObserver] = 0;
  *&v0[OBJC_IVAR____TtC5Music26BottomPlayerViewController_didActivateObserver] = 0;
  *&v0[OBJC_IVAR____TtC5Music26BottomPlayerViewController_motionRestrictionsObserver] = 0;
  *&v0[OBJC_IVAR____TtC5Music26BottomPlayerViewController_videoArtworksObserver] = 0;
  v4 = OBJC_IVAR____TtC5Music26BottomPlayerViewController_motionArtworkManager;
  type metadata accessor for MotionArtworkManager(0);
  swift_allocObject();
  *&v0[v4] = sub_100040FAC();
  *&v0[OBJC_IVAR____TtC5Music26BottomPlayerViewController_nowPlayingPath] = 0;
  *&v0[OBJC_IVAR____TtC5Music26BottomPlayerViewController_sharePlayTogetherParticipantsSubscription] = 0;
  *&v0[OBJC_IVAR____TtC5Music26BottomPlayerViewController_sharePlayTogetherSession] = 0;
  v5 = &v0[OBJC_IVAR____TtC5Music26BottomPlayerViewController_lastKnownViewBounds];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  v5[32] = 1;
  v6 = OBJC_IVAR____TtC5Music26BottomPlayerViewController_glissandoDataSource;
  if (qword_10117F5F8 != -1)
  {
    swift_once();
  }

  v7 = qword_101218AC8;
  _s19GlissandoDataSourceCMa();
  v8 = swift_allocObject();
  *(v8 + 54) = -4864;
  *(v8 + 32) = 0;
  strcpy((v8 + 40), "Swipe Gesture");
  *(v8 + 16) = v7;
  *(v8 + 24) = 0;
  v9 = MPCPlayerRequestTracklistRange.neighboringItems.unsafeMutableAddressor();
  v10 = *v9;
  v11 = v9[1];
  v12 = *(*v7 + 752);

  v13 = v12(v32);
  v14.reverseCount = v10;
  v14.forwardCount = v11;
  Player.NowPlayingConfiguration.insert(_:)(v14);
  v13(v32, 0);
  *&v1[v6] = v8;
  *&v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController____lazy_storage___glissCoordinator] = 0;
  *&v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_routeButton] = 0;
  *&v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_mediaControls] = 0;
  *&v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController____lazy_storage___nowPlayingItemStackView] = 0;
  *&v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_routeLabel] = 0;
  *&v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_skipButton] = 0;
  *&v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_playPauseButton] = 0;
  *&v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_reverseButton] = 0;
  *&v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_sharedListeningParticipantsLabel] = 0;
  *&v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_standardConstraints] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_newRegularLayoutConstraints] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_playerSubscriptions] = &_swiftEmptySetSingleton;
  *&v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_artworkLayoutGuide] = 0;
  v15 = OBJC_IVAR____TtC5Music26BottomPlayerViewController_shuffleButton;
  type metadata accessor for NowPlayingShuffleButton();
  v16 = [swift_getObjCClassFromMetadata() buttonWithType:0];
  v17 = UIView.forAutolayout.getter();

  *&v1[v15] = v17;
  v18 = OBJC_IVAR____TtC5Music26BottomPlayerViewController_repeatButton;
  type metadata accessor for NowPlayingRepeatButton();
  v19 = [swift_getObjCClassFromMetadata() buttonWithType:0];
  v20 = UIView.forAutolayout.getter();

  *&v1[v18] = v20;
  *&v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_playbackCancellationGesture] = 0;
  v21 = OBJC_IVAR____TtC5Music26BottomPlayerViewController_transportControlsController;
  type metadata accessor for TransportControlsController();
  v22 = swift_allocObject();
  *(v22 + 16) = 0u;
  *(v22 + 32) = 0u;
  *(v22 + 48) = 0u;
  *(v22 + 64) = 0u;
  *(v22 + 80) = 0u;
  *(v22 + 96) = 0;
  *&v1[v21] = v22;
  *&v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_transportControlsStack] = 0;
  v23 = &v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_reverseButtonConfiguration];
  v23[1] = 0;
  v23[2] = 0;
  *v23 = 0;
  v24 = &v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_playPauseButtonConfiguration];
  v24[1] = 0;
  v24[2] = 0;
  *v24 = 0;
  v25 = &v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_skipButtonConfiguration];
  v25[1] = 0;
  v25[2] = 0;
  *v25 = 0;
  *&v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_contextMenuButton] = 0;
  *&v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_lyricsButton] = 0;
  *&v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_queueButton] = 0;
  *&v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_trailingButtonsStackView] = 0;
  *&v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_cancellables] = &_swiftEmptySetSingleton;
  *&v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_dragDropController] = 0;
  v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_isPreviewing] = 0;
  v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_isSharedListeningLoading] = 0;
  *&v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_sharedListeningParticipantsCount] = 3;
  v26 = &v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_lastSpecifiedTabAccessoryEnvironment];
  *v26 = 0;
  v26[8] = 1;
  *&v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_springLoadedInteraction] = 0;
  v31.receiver = v1;
  v31.super_class = ObjectType;
  v27 = objc_msgSendSuper2(&v31, "initWithNibName:bundle:", 0, 0);
  UIViewController.playActivityFeatureIdentifier.setter(19);
  result = [v27 view];
  if (result)
  {
    v29 = result;
    v30 = [result layer];

    [v30 setAllowsGroupBlending:0];
    return v27;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for MotionArtworkManager(uint64_t a1)
{
  result = qword_10118A6F0;
  if (!qword_10118A6F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100040B8C(uint64_t a1)
{
  sub_1000054CC(319, &qword_10118A700, &qword_10118A708, &qword_100EC5EE8);
  if (v1 <= 0x3F)
  {
    sub_1000054CC(319, &qword_10118A710, &qword_10118A718, &qword_100EC5F08);
    if (v2 <= 0x3F)
    {
      sub_1000054CC(319, &qword_10118A720, &unk_10118A728, &qword_100EC5F10);
      if (v3 <= 0x3F)
      {
        sub_100008E30();
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t type metadata accessor for MotionData(uint64_t a1)
{
  result = qword_101188160;
  if (!qword_101188160)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100040DA4(uint64_t a1)
{
  type metadata accessor for VideoArtwork();
  if (v1 <= 0x3F)
  {
    type metadata accessor for EditorialVideoArtworkFlavor();
    if (v2 <= 0x3F)
    {
      sub_100040ED0(319);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_100040ED0(uint64_t a1)
{
  if (!qword_101188170)
  {
    sub_1001109D0(&unk_101188178, &qword_100EC3860);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &qword_101188170);
    }
  }
}

unint64_t sub_100040F54()
{
  result = qword_10118A810;
  if (!qword_10118A810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118A810);
  }

  return result;
}

uint64_t sub_100040FAC()
{
  v1 = v0;
  v68 = sub_10010FC20(&qword_10118A830, L"L\v7");
  v67 = *(v68 - 8);
  __chkstk_darwin();
  v66 = v65 - v2;
  v3 = sub_10010FC20(&unk_101182130, &unk_100EBF5B0);
  v4 = *(v3 - 8);
  v80 = v3;
  v81 = v4;
  __chkstk_darwin();
  v78 = v65 - v5;
  v83 = sub_10010FC20(&qword_10118A838, aT);
  __chkstk_darwin();
  v77 = v65 - v6;
  v91 = sub_10010FC20(&qword_10118A840, &qword_100EC60E8);
  v96 = *(v91 - 8);
  __chkstk_darwin();
  v89 = v65 - v7;
  v90 = sub_10010FC20(&qword_10118A848, &qword_100EC60F0);
  v95 = *(v90 - 8);
  __chkstk_darwin();
  v88 = v65 - v8;
  v87 = sub_10010FC20(&qword_10118A850, &qword_100EC60F8);
  __chkstk_darwin();
  v86 = v65 - v9;
  v71 = sub_10010FC20(&qword_10118A858, &qword_100EC6100);
  v72 = *(v71 - 1);
  __chkstk_darwin();
  v70 = v65 - v10;
  v74 = sub_10010FC20(&qword_10118A860, &qword_100EC6108);
  __chkstk_darwin();
  v92 = v65 - v11;
  v85 = sub_10010FC20(&qword_10118A868, &qword_100EC6110);
  __chkstk_darwin();
  v94 = v65 - v12;
  v75 = sub_10010FC20(&qword_10118A870, &qword_100EC6118);
  v76 = *(v75 - 8);
  __chkstk_darwin();
  v73 = v65 - v13;
  v93 = sub_10010FC20(&unk_101189E60, &unk_100EC0CF0);
  v82 = *(v93 - 8);
  __chkstk_darwin();
  v79 = v65 - v14;
  v84 = sub_10010FC20(&qword_10118A820, &unk_100EC6070);
  v15 = *(v84 - 8);
  __chkstk_darwin();
  v17 = v65 - v16;
  v18 = sub_10010FC20(&qword_10118A818, &qword_100EC6068);
  v19 = *(v18 - 8);
  __chkstk_darwin();
  v21 = v65 - v20;
  v22 = sub_10010FC20(&qword_101189E18, &qword_100EC6060);
  v23 = *(v22 - 8);
  __chkstk_darwin();
  v25 = v65 - v24;
  v26 = OBJC_IVAR____TtC5Music20MotionArtworkManager__currentNowPlayingMotionData;
  v97 = 0;
  sub_10010FC20(&qword_10118A708, &qword_100EC5EE8);
  Published.init(initialValue:)();
  (*(v23 + 32))(v1 + v26, v25, v22);
  *(v1 + OBJC_IVAR____TtC5Music20MotionArtworkManager_allowNowPlayingTallMotionArtwork) = 0;
  v27 = OBJC_IVAR____TtC5Music20MotionArtworkManager_metadataService;
  type metadata accessor for MotionArtworkMetadataService(0);
  swift_allocObject();
  *(v1 + v27) = sub_100042424(2, 12);
  v28 = OBJC_IVAR____TtC5Music20MotionArtworkManager__supportedNowPlayingArtworkFlavors;
  v97 = _swiftEmptyArrayStorage;
  sub_10010FC20(&qword_10118A718, &qword_100EC5F08);
  Published.init(initialValue:)();
  (*(v19 + 32))(v1 + v28, v21, v18);
  v29 = OBJC_IVAR____TtC5Music20MotionArtworkManager__motionDataClients;
  v97 = &_swiftEmptySetSingleton;
  sub_10010FC20(&unk_10118A728, &qword_100EC5F10);
  Published.init(initialValue:)();
  (*(v15 + 32))(v1 + v29, v17, v84);
  v30 = OBJC_IVAR____TtC5Music20MotionArtworkManager__isInForeground;
  LOBYTE(v97) = 0;
  v31 = v79;
  Published.init(initialValue:)();
  (*(v82 + 32))(v1 + v30, v31, v93);
  *(v1 + OBJC_IVAR____TtC5Music20MotionArtworkManager____lazy_storage___nowPlayingInfoCenterPublisher) = 0;
  v32 = OBJC_IVAR____TtC5Music20MotionArtworkManager_cachedMotionData;
  *(v1 + v32) = sub_10010CA80(_swiftEmptyArrayStorage);
  swift_unknownObjectWeakInit();
  v69 = OBJC_IVAR____TtC5Music20MotionArtworkManager_cancellables;
  *(v1 + OBJC_IVAR____TtC5Music20MotionArtworkManager_cancellables) = &_swiftEmptySetSingleton;
  v79 = OBJC_IVAR____TtC5Music20MotionArtworkManager_didActivateObserver;
  *(v1 + OBJC_IVAR____TtC5Music20MotionArtworkManager_didActivateObserver) = 0;
  v82 = OBJC_IVAR____TtC5Music20MotionArtworkManager_didEnterBackgroundObserver;
  *(v1 + OBJC_IVAR____TtC5Music20MotionArtworkManager_didEnterBackgroundObserver) = 0;
  *(v1 + OBJC_IVAR____TtC5Music20MotionArtworkManager_windowSceneDidUpdateEffectiveGeometryObserver) = 0;
  *(v1 + OBJC_IVAR____TtC5Music20MotionArtworkManager_nowPlayingInfoCenterMotionDataObservationTask) = 0;
  v65[2] = OBJC_IVAR____TtC5Music20MotionArtworkManager_metadataService;
  swift_beginAccess();
  v65[1] = sub_10010FC20(&qword_10118A878, &unk_100EC6120);
  Published.projectedValue.getter();
  swift_endAccess();
  swift_beginAccess();
  v33 = v70;
  Published.projectedValue.getter();
  swift_endAccess();
  sub_100020674(&qword_10118A880, &qword_10118A858, &qword_100EC6100, &protocol conformance descriptor for Published<A>.Publisher);
  sub_10004299C();
  v34 = v71;
  Publisher<>.removeDuplicates()();
  (*(v72 + 8))(v33, v34);
  swift_beginAccess();
  v72 = v29;
  v35 = v89;
  Published.projectedValue.getter();
  swift_endAccess();
  sub_100020674(&qword_10118A890, &qword_10118A840, &qword_100EC60E8, &protocol conformance descriptor for Published<A>.Publisher);
  v36 = v88;
  v37 = v91;
  Publisher.map<A>(_:)();
  v38 = *(v96 + 8);
  v96 += 8;
  v71 = v38;
  (v38)(v35, v37);
  v39 = sub_100020674(&qword_10118A898, &qword_10118A848, &qword_100EC60F0, &protocol conformance descriptor for Publishers.Map<A, B>);
  v40 = v90;
  v70 = v39;
  Publisher<>.removeDuplicates()();
  v41 = *(v95 + 8);
  v95 += 8;
  v65[0] = v41;
  v41(v36, v40);
  swift_beginAccess();
  v42 = v78;
  Published.projectedValue.getter();
  swift_endAccess();
  sub_100020674(&qword_101184280, &unk_101182130, &unk_100EBF5B0, &protocol conformance descriptor for Published<A>.Publisher);
  v43 = v80;
  Publisher<>.removeDuplicates()();
  (*(v81 + 8))(v42, v43);
  sub_100020674(&qword_10118A8A0, &qword_10118A868, &qword_100EC6110, &protocol conformance descriptor for Published<A>.Publisher);
  sub_100020674(&qword_10118A8A8, &qword_10118A860, &qword_100EC6108, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  sub_100020674(&qword_10118A8B0, &qword_10118A850, &qword_100EC60F8, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  sub_100020674(&qword_10118A8B8, &qword_10118A838, aT, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  v44 = v73;
  Publishers.CombineLatest4.init(_:_:_:_:)();
  v45 = swift_allocObject();
  swift_weakInit();
  v46 = swift_allocObject();
  *(v46 + 16) = sub_100043050;
  *(v46 + 24) = v45;
  sub_100020674(&qword_10118A8C0, &qword_10118A870, &qword_100EC6118, &protocol conformance descriptor for Publishers.CombineLatest4<A, B, C, D>);

  v47 = v75;
  Publisher<>.sink(receiveValue:)();

  (*(v76 + 8))(v44, v47);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  LOBYTE(v97) = 10;
  v48 = sub_100025CE0();
  if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v48))
  {
    swift_beginAccess();
    Published.projectedValue.getter();
    swift_endAccess();
    swift_beginAccess();
    v49 = v89;
    Published.projectedValue.getter();
    swift_endAccess();
    v50 = v88;
    v51 = v91;
    Publisher.map<A>(_:)();
    (v71)(v49, v51);
    v52 = v90;
    Publisher<>.removeDuplicates()();
    (v65[0])(v50, v52);
    v53 = v66;
    Publishers.CombineLatest.init(_:_:)();
    v54 = swift_allocObject();
    swift_weakInit();
    v55 = swift_allocObject();
    *(v55 + 16) = sub_100043524;
    *(v55 + 24) = v54;
    sub_100020674(&qword_10118A8C8, &qword_10118A830, L"L\v7", &protocol conformance descriptor for Publishers.CombineLatest<A, B>);
    v56 = v68;
    Publisher<>.sink(receiveValue:)();

    (*(v67 + 8))(v53, v56);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();
  }

  v57 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for NotificationObserver();
  swift_allocObject();
  v58 = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(UISceneDidActivateNotification, 0, 1, 1, sub_10006BA9C, v57);
  *&v79[v1] = v58;

  v59 = swift_allocObject();
  swift_weakInit();
  v60 = UISceneDidEnterBackgroundNotification;

  swift_allocObject();
  v61 = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v60, 0, 1, 1, sub_1002DC5A4, v59);
  *(v1 + v82) = v61;

  v62 = *(v1 + OBJC_IVAR____TtC5Music20MotionArtworkManager_allowNowPlayingTallMotionArtwork);
  sub_10010FC20(&qword_101189E10, &qword_100EC5848);
  type metadata accessor for EditorialVideoArtworkFlavor();
  v63 = swift_allocObject();
  if (v62 == 1)
  {
    *(v63 + 16) = xmmword_100EBDC20;
    static EditorialVideoArtworkFlavor.motionDetailTall.getter();
  }

  else
  {
    *(v63 + 16) = xmmword_100EBC6B0;
  }

  static EditorialVideoArtworkFlavor.motionDetailSquare.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  v97 = v63;

  static Published.subscript.setter();
  return v1;
}

uint64_t sub_100042240()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100042280()
{

  return swift_deallocObject();
}

void sub_1000422EC(uint64_t a1)
{
  if (!qword_101195708)
  {
    sub_1001109D0(&unk_101195710, &qword_100ED3980);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &qword_101195708);
    }
  }
}

void sub_100042350(uint64_t a1)
{
  sub_1000422EC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100042424(uint64_t a1, uint64_t a2)
{
  v5 = sub_10010FC20(&qword_10118A878, &unk_100EC6120);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = v15 - v7;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  v9 = OBJC_IVAR____TtC5Music28MotionArtworkMetadataService__queueMetadata;
  v15[0] = 0;
  v15[1] = 0;
  sub_10010FC20(&unk_101195710, &qword_100ED3980);
  Published.init(initialValue:)();
  (*(v6 + 32))(v2 + v9, v8, v5);
  v10 = (v2 + OBJC_IVAR____TtC5Music28MotionArtworkMetadataService_queueState);
  *v10 = 0;
  v10[1] = 0;
  *(v2 + OBJC_IVAR____TtC5Music28MotionArtworkMetadataService_inProgressRequests) = &_swiftEmptySetSingleton;
  v11 = OBJC_IVAR____TtC5Music28MotionArtworkMetadataService_cache;
  type metadata accessor for Cache();
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1000425CC(_swiftEmptyArrayStorage);
  *(v2 + v11) = v12;
  v13 = (v2 + OBJC_IVAR____TtC5Music28MotionArtworkMetadataService_loadRange);
  *v13 = a1;
  v13[1] = a2;
  return v2;
}

unint64_t sub_1000425CC(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_101180570, &qword_100EBA7B8);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10010FC20(&qword_101180578, &qword_100EBA7C0);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1000089F8(v9, v5, &qword_101180570, &qword_100EBA7B8);
      v11 = *v5;
      v12 = v5[1];
      result = sub_100019C10(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for Cache.Entry(0);
      result = sub_100110A60(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15, type metadata accessor for Cache.Entry);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

void sub_1000427D4(uint64_t a1)
{
  type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    sub_100042858(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100042858(uint64_t a1)
{
  if (!qword_101195988)
  {
    type metadata accessor for EditorialVideoArtworkFlavor();
    type metadata accessor for VideoArtwork();
    sub_100042904(qword_10118EB48, &type metadata accessor for EditorialVideoArtworkFlavor, &protocol conformance descriptor for EditorialVideoArtworkFlavor);
    v1 = type metadata accessor for Dictionary();
    if (!v2)
    {
      atomic_store(v1, &qword_101195988);
    }
  }
}

uint64_t sub_100042904(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100042954(uint64_t *a1, int a2)
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

unint64_t sub_10004299C()
{
  result = qword_10118A888;
  if (!qword_10118A888)
  {
    sub_1001109D0(&qword_10118A718, &qword_100EC5F08);
    sub_1002DCB30(&qword_1011882F0, &type metadata accessor for EditorialVideoArtworkFlavor, &protocol conformance descriptor for EditorialVideoArtworkFlavor);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118A888);
  }

  return result;
}

uint64_t sub_100042A54@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100042A50();
  *a1 = result & 1;
  return result;
}

void sub_100042A88(uint64_t a1, uint64_t a2, uint64_t a3, int a4, char a5, uint64_t a6)
{
  v11 = sub_10010FC20(&qword_10118A828, &qword_100EC6080);
  __chkstk_darwin();
  v13 = &v60 - v12;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    if ((a5 & 1) == 0)
    {

      return;
    }

    if (a1)
    {
      HIDWORD(v60) = a4;
      v64 = a2;
      v61 = a3;
      v62 = a1;
      v16 = OBJC_IVAR____TtC5Music20MotionArtworkManager_cachedMotionData;
      swift_beginAccess();
      v63 = v15;
      v17 = *(v15 + v16);
      v18 = v17 + 64;
      v19 = 1 << *(v17 + 32);
      v20 = -1;
      if (v19 < 64)
      {
        v20 = ~(-1 << v19);
      }

      v21 = v20 & *(v17 + 64);
      v22 = (v19 + 63) >> 6;
      v68 = v17;
      swift_bridgeObjectRetain_n();
      v23 = 0;
      v66 = v13;
      v67 = v11;
      v65 = v18;
      while (v21)
      {
LABEL_13:
        v25 = __clz(__rbit64(v21)) | (v23 << 6);
        v26 = v68;
        v27 = *(v68 + 48);
        v28 = type metadata accessor for EditorialVideoArtworkFlavor();
        (*(*(v28 - 8) + 16))(v13, v27 + *(*(v28 - 8) + 72) * v25, v28);
        v29 = *(*(v26 + 56) + 8 * v25);
        *&v13[*(v11 + 48)] = v29;
        if (v29 >> 62)
        {
          v30 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v30)
        {
          v31 = 0;
          do
          {
            if ((v29 & 0xC000000000000001) != 0)
            {
              v32 = sub_1007E9718(v31, v29);
              v33 = v31 + 1;
              if (__OFADD__(v31, 1))
              {
                goto LABEL_61;
              }
            }

            else
            {
              if (v31 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_62;
              }

              v32 = *(v29 + 8 * v31 + 32);

              v33 = v31 + 1;
              if (__OFADD__(v31, 1))
              {
LABEL_61:
                __break(1u);
LABEL_62:
                __break(1u);
LABEL_63:
                __break(1u);
LABEL_64:
                __break(1u);
                goto LABEL_65;
              }
            }

            v34 = *(v32 + OBJC_IVAR____TtC5Music10MotionData_shouldSnapshotKeyframe);
            *(v32 + OBJC_IVAR____TtC5Music10MotionData_shouldSnapshotKeyframe) = 0;
            if (v34)
            {
              sub_100276998();
            }

            ++v31;
          }

          while (v33 != v30);
        }

        v21 &= v21 - 1;
        v13 = v66;
        sub_1000095E8(v66, &qword_10118A828, &qword_100EC6080);
        v11 = v67;
        v18 = v65;
      }

      while (1)
      {
        v24 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          goto LABEL_63;
        }

        if (v24 >= v22)
        {
          break;
        }

        v21 = *(v18 + 8 * v24);
        ++v23;
        if (v21)
        {
          v23 = v24;
          goto LABEL_13;
        }
      }

      v35 = 0;
      v36 = *(v62 + 16);
      if (v64 < 0)
      {
        v37 = 0;
        v38 = 0;
        v39 = v63;
        v40 = v61;
      }

      else
      {
        v37 = 0;
        v38 = 0;
        v39 = v63;
        v40 = v61;
        if (v36 > v64)
        {
          v41 = (v62 + 24 * v64);
          v35 = v41[4];
          v37 = v41[5];
          v38 = v41[6];
          sub_1002DC3D8(v35, v37, v38);
        }
      }

      v42 = sub_1002DB854(v35, v37, v38, v40, v39);
      sub_1002DC5C4(v35, v37, v38);
      if (v42)
      {
        v43 = *(v42 + OBJC_IVAR____TtC5Music10MotionData_shouldSnapshotKeyframe);
        *(v42 + OBJC_IVAR____TtC5Music10MotionData_shouldSnapshotKeyframe) = 1;
        if ((v43 & 1) == 0)
        {

          sub_100276998();
        }
      }

      if ((v60 & 0x100000000) != 0)
      {
        v44 = v64 - 1;
        if (__OFSUB__(v64, 1))
        {
          goto LABEL_64;
        }

        v45 = 0;
        v46 = 0;
        v47 = 0;
        if ((v44 & 0x8000000000000000) == 0 && v44 < v36)
        {
          v48 = (v62 + 24 * v44);
          v45 = v48[4];
          v46 = v48[5];
          v47 = v48[6];
          sub_1002DC3D8(v45, v46, v47);
        }

        v49 = sub_1002DB854(v45, v46, v47, v40, v39);
        sub_1002DC5C4(v45, v46, v47);
        v50 = v64 + 1;
        if (__OFADD__(v64, 1))
        {
LABEL_65:
          __break(1u);
          return;
        }

        v51 = 0;
        v52 = 0;
        v53 = 0;
        if ((v50 & 0x8000000000000000) == 0 && v50 < v36)
        {
          v54 = (v62 + 24 * v50);
          v51 = v54[4];
          v52 = v54[5];
          v53 = v54[6];
          sub_1002DC3D8(v51, v52, v53);
        }

        v55 = sub_1002DB854(v51, v52, v53, v61, v63);
        sub_1002DC5C4(v51, v52, v53);
        if (v49)
        {
          v56 = *(v49 + OBJC_IVAR____TtC5Music10MotionData_shouldSnapshotKeyframe);
          *(v49 + OBJC_IVAR____TtC5Music10MotionData_shouldSnapshotKeyframe) = 1;
          if ((v56 & 1) == 0)
          {

            sub_100276998();
          }
        }

        if (v55)
        {
          v57 = *(v55 + OBJC_IVAR____TtC5Music10MotionData_shouldSnapshotKeyframe);
          *(v55 + OBJC_IVAR____TtC5Music10MotionData_shouldSnapshotKeyframe) = 1;
          if ((v57 & 1) == 0)
          {

            sub_100276998();
          }
        }

        if (v49)
        {

          sub_1002DBAE8(v58);
        }

        if (v55)
        {
          sub_1002DBAE8(v55);
        }
      }

      if (v42)
      {

        sub_1002DBAE8(v59);
      }

      sub_1002DA1E8();
    }

    else
    {
      v42 = 0;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v69 = v42;
    static Published.subscript.setter();
  }
}

uint64_t sub_100043094@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100042A50();
  *a1 = result & 1;
  return result;
}

void sub_1000430C8(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if (!a1)
    {
LABEL_32:

      return;
    }

    v9 = [objc_opt_self() currentDevice];
    v10 = [v9 userInterfaceIdiom];

    sub_10010FC20(&qword_101189E10, &qword_100EC5848);
    v43 = type metadata accessor for EditorialVideoArtworkFlavor();
    v11 = *(v43 - 8);
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_100EBC6B0;
    if (v10 == 1)
    {
      static EditorialVideoArtworkFlavor.motionDetailSquare.getter();
    }

    else
    {
      static EditorialVideoArtworkFlavor.motionDetailTall.getter();
    }

    v14 = *(a1 + 16);
    v15 = a2 < 0 || v14 <= a2;
    v16 = !v15;
    v44 = v16;
    v45 = a1;
    if (v15)
    {
      v19 = 0;
      v18 = 0;
      v20 = 0;
    }

    else
    {
      v17 = (a1 + 24 * a2);
      v19 = v17[4];
      v18 = v17[5];
      v20 = v17[6];
      sub_1002DC3D8(v19, v18, v20);
    }

    v42 = sub_1002DB854(v19, v18, v20, v13, v8);
    sub_1002DC5C4(v19, v18, v20);
    if (a3)
    {
      v21 = a2 - 1;
      if (__OFSUB__(a2, 1))
      {
        __break(1u);
      }

      else
      {
        v22 = 0;
        v23 = 0;
        v24 = 0;
        if ((v21 & 0x8000000000000000) == 0 && v21 < v14)
        {
          v25 = (v45 + 24 * v21);
          v22 = v25[4];
          v23 = v25[5];
          v24 = v25[6];
          sub_1002DC3D8(v22, v23, v24);
        }

        v26 = sub_1002DB854(v22, v23, v24, v13, v8);
        sub_1002DC5C4(v22, v23, v24);
        v27 = a2 + 1;
        if (!__OFADD__(a2, 1))
        {
          v41 = a2;
          v28 = 0;
          v29 = 0;
          v30 = 0;
          if (v27 < 0)
          {
            v31 = v42;
          }

          else
          {
            v15 = v27 < v14;
            v31 = v42;
            if (v15)
            {
              v32 = (v45 + 24 * v27);
              v28 = v32[4];
              v29 = v32[5];
              v30 = v32[6];
              sub_1002DC3D8(v28, v29, v30);
            }
          }

          v39 = sub_1002DB854(v28, v29, v30, v13, v8);
          sub_1002DC5C4(v28, v29, v30);
          swift_setDeallocating();
          (*(v11 + 8))(v13 + v12, v43);
          swift_deallocClassInstance();
          if (v26)
          {

            sub_1002DBAE8(v40);
          }

          a2 = v41;
          v33 = v45;
          if (v39)
          {
            sub_1002DBAE8(v39);
          }

          if (!v31)
          {
            goto LABEL_28;
          }

          goto LABEL_27;
        }
      }

      __break(1u);
      return;
    }

    swift_setDeallocating();
    (*(v11 + 8))(v13 + v12, v43);
    swift_deallocClassInstance();
    v33 = v45;
    v31 = v42;
    if (!v42)
    {
LABEL_28:
      if ((v44 & 1) != 0 && (v35 = v33 + 24 * a2, (v36 = *(v35 + 40)) != 0))
      {
        v37 = *(v35 + 32);

        sub_1002DA024();
        sub_1007CE514(v37, v36, v31);
      }

      else
      {
        sub_1002DA024();
        v38 = sub_10010BC60(_swiftEmptyArrayStorage);
        sub_1007D1D30(0, 0, 0, 0, v38);
      }

      goto LABEL_32;
    }

LABEL_27:

    sub_1002DBAE8(v34);

    goto LABEL_28;
  }
}