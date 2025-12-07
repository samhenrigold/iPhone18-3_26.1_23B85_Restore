uint64_t sub_100002230()
{
  type metadata accessor for MainActor();
  *(v0 + 24) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000022C4, v2, v1);
}

uint64_t sub_1000022C4()
{
  v1 = *(v0 + 16);

  v2 = v1;
  v3 = [v2 description];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  MAGPointAndSpeakEventHandler.register(_:asActionHandler:)();

  v4 = *(v0 + 8);

  return v4();
}

void sub_1000023E8()
{
  sub_10000298C();
  sub_100002AD4();
  sub_100002E20();
  sub_100002E50();
  v1 = objc_opt_self();
  v2 = [v1 sharedInstance];
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = sub_10000E8F4;
  v22 = v3;
  v17 = _NSConcreteStackBlock;
  v18 = 1107296256;
  v19 = sub_10000288C;
  v20 = &unk_10004A008;
  v4 = _Block_copy(&v17);

  [v2 registerUpdateBlock:v4 forRetrieveSelector:Selector.init(_:)() withListener:v0];
  _Block_release(v4);

  v5 = [v1 sharedInstance];
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = sub_10000E924;
  v22 = v6;
  v17 = _NSConcreteStackBlock;
  v18 = 1107296256;
  v19 = sub_10000288C;
  v20 = &unk_10004A030;
  v7 = _Block_copy(&v17);

  [v5 registerUpdateBlock:v7 forRetrieveSelector:Selector.init(_:)() withListener:v0];
  _Block_release(v7);

  v8 = [v1 sharedInstance];
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = sub_10000E954;
  v22 = v9;
  v17 = _NSConcreteStackBlock;
  v18 = 1107296256;
  v19 = sub_10000288C;
  v20 = &unk_10004A058;
  v10 = _Block_copy(&v17);

  [v8 registerUpdateBlock:v10 forRetrieveSelector:Selector.init(_:)() withListener:v0];
  _Block_release(v10);

  v11 = [v1 sharedInstance];
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = sub_10000E984;
  v22 = v12;
  v17 = _NSConcreteStackBlock;
  v18 = 1107296256;
  v19 = sub_10000288C;
  v20 = &unk_10004A080;
  v13 = _Block_copy(&v17);

  [v11 registerUpdateBlock:v13 forRetrieveSelector:Selector.init(_:)() withListener:v0];
  _Block_release(v13);

  v14 = [v1 sharedInstance];
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = sub_10000E9B4;
  v22 = v15;
  v17 = _NSConcreteStackBlock;
  v18 = 1107296256;
  v19 = sub_10000288C;
  v20 = &unk_10004A0A8;
  v16 = _Block_copy(&v17);

  [v14 registerUpdateBlock:v16 forRetrieveSelector:Selector.init(_:)() withListener:v0];
  _Block_release(v16);
}

uint64_t sub_10000288C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_1000028D0(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    a2();
  }
}

void sub_10000292C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_10000298C();
    sub_100002AD4();
    sub_100002E20();
    sub_100002E50();
  }
}

uint64_t sub_1000029BC(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = __CocoaSet.contains(_:)();
  }

  else if (*(a2 + 16) && (sub_10000E844(0, &qword_10004F8D0, NSNumber_ptr), v5 = NSObject._rawHashValue(seed:)(*(a2 + 40)), v6 = -1 << *(a2 + 32), v7 = v5 & ~v6, ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0))
  {
    v8 = ~v6;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v7);
      v4 = static NSObject.== infix(_:_:)();

      if (v4)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
    }

    while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

void sub_100002B04(uint64_t (*a1)(void), SEL *a2, SEL *a3, SEL *a4)
{
  v9 = v4;
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  if (v32 == 1 && (v10 = [objc_opt_self() sharedInstance], v11 = objc_msgSend(v10, "liveRecognitionActivity"), v10, v11))
  {
    v12 = OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_pulseFeedbackProcessor;
    v13 = *(v9 + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_pulseFeedbackProcessor);
    v14 = a1();

    [v14 setUseSoundFeedback:{objc_msgSend(v11, *a2)}];
    v15 = *(v9 + v12);
    v16 = a1();

    [v16 setUseHapticFeedback:{objc_msgSend(v11, *a3)}];
  }

  else
  {
    v17 = [objc_opt_self() sharedInstance];
    v18 = [v17 *a4];

    if (v18)
    {
      sub_10000E844(0, &qword_10004F8D0, NSNumber_ptr);
      sub_10000E88C();
      v19 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      v20 = OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_pulseFeedbackProcessor;
      v21 = *(v9 + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_pulseFeedbackProcessor);
      v22 = a1();

      isa = Int._bridgeToObjectiveC()().super.super.isa;
      v24 = sub_1000029BC(isa, v19);

      [v22 setUseSoundFeedback:v24 & 1];
      v25 = *(v9 + v20);
      v16 = a1();

      v26 = Int._bridgeToObjectiveC()().super.super.isa;
      v27 = sub_1000029BC(v26, v19);

      [v16 setUseHapticFeedback:v27 & 1];
    }

    else
    {
      v28 = OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_pulseFeedbackProcessor;
      v29 = *(v9 + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_pulseFeedbackProcessor);
      v30 = a1();

      [v30 setUseSoundFeedback:1];
      v31 = *(v9 + v28);
      v16 = a1();

      [v16 setUseHapticFeedback:1];
    }
  }
}

uint64_t sub_100002E80(uint64_t a1, uint64_t a2)
{
  v2[17] = a1;
  v2[18] = a2;
  v3 = sub_10000D3B8(&unk_10004F860, &qword_1000383D0);
  v2[19] = v3;
  v2[20] = *(v3 - 8);
  v2[21] = swift_task_alloc();
  type metadata accessor for MAGAngelClientRequest(0);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v2[24] = v4;
  v2[25] = *(v4 - 8);
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v5 = type metadata accessor for Date();
  v2[28] = v5;
  v2[29] = *(v5 - 8);
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v6 = type metadata accessor for MAGAREvent.AREventType();
  v2[32] = v6;
  v2[33] = *(v6 - 8);
  v2[34] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[35] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[36] = v8;
  v2[37] = v7;

  return _swift_task_switch(sub_1000030E4, v8, v7);
}

uint64_t sub_1000030E4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 304) = Strong;
  if (!Strong)
  {

    goto LABEL_81;
  }

  v2 = Strong;
  v4 = *(v0 + 264);
  v3 = *(v0 + 272);
  v5 = *(v0 + 256);
  MAGAREvent.eventType.getter();
  v6 = (*(v4 + 88))(v3, v5);
  if (v6 != enum case for MAGAREvent.AREventType.didReceiveARFrame(_:))
  {
    if (v6 != enum case for MAGAREvent.AREventType.didReceiveARSpatialMappingPointClouds(_:))
    {
      if (v6 == enum case for MAGAREvent.AREventType.sessionWasInterrupted(_:))
      {

        swift_getKeyPath();
        swift_getKeyPath();

        static Published.subscript.getter();

        if (*(v0 + 393) == 1)
        {
          v51 = *&v2[OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_objectUnderstandingService];
          dispatch thunk of MAGObjectUnderstandingService.stopService()();

          goto LABEL_81;
        }
      }

      else
      {
        if (v6 != enum case for MAGAREvent.AREventType.sessionInterruptionEnded(_:))
        {
          v56 = *(v0 + 264);
          v55 = *(v0 + 272);
          v57 = *(v0 + 256);

          (*(v56 + 8))(v55, v57);
          goto LABEL_81;
        }

        swift_getKeyPath();
        swift_getKeyPath();

        static Published.subscript.getter();

        if (*(v0 + 392) == 1)
        {
          v52 = *&v2[OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_scene];
          v53 = *&v2[OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_objectUnderstandingService];
          v54 = v52;
          dispatch thunk of MAGObjectUnderstandingService.startService(with:)();
        }
      }

      goto LABEL_81;
    }

    v49 = *(v0 + 272);
    (*(*(v0 + 264) + 96))(v49, *(v0 + 256));
    v50 = *v49;
    *(v0 + 384) = *(v49 + 8);

    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    if (*(v0 + 394) == 1)
    {
      v34 = sub_100004A9C;
      v35 = 0;
      v36 = 0;

      return _swift_task_switch(v34, v35, v36);
    }

LABEL_81:

    v97 = *(v0 + 8);

    return v97();
  }

  v7 = *(v0 + 272);
  (*(*(v0 + 264) + 96))(v7, *(v0 + 256));
  v8 = *v7;
  v9 = *(v7 + 8);
  *(v0 + 312) = v9;

  v10 = [v9 capturedImage];
  v11 = *&v2[OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_lastPixelBuffer];
  *&v2[OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_lastPixelBuffer] = v10;

  v12 = dispatch thunk of MAGOutputEngine.isSpeaking.getter();

  if (v12)
  {
    goto LABEL_79;
  }

  v13 = dispatch thunk of MAGOutputEngine.isElligbleForNewEvent.getter();

  if ((v13 & 1) == 0)
  {
    goto LABEL_79;
  }

  v15 = *(v0 + 240);
  v14 = *(v0 + 248);
  v16 = *(v0 + 224);
  v17 = *(v0 + 232);
  Date.init()();
  v18 = OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_lastAnnouncementTime;
  swift_beginAccess();
  v19 = *(v17 + 16);
  v19(v15, &v2[v18], v16);
  Date.timeIntervalSince(_:)();
  v21 = v20;
  v22 = *(v17 + 8);
  v22(v15, v16);
  v22(v14, v16);
  v105 = v9;
  if (*&v2[OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_angelInactiveTimeOut] >= v21 || (v24 = *(v0 + 240), v23 = *(v0 + 248), v25 = *(v0 + 224), Date.init()(), v26 = v19, v27 = OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_lastPixelBufferCheckTime, swift_beginAccess(), v103 = v27, v28 = &v2[v27], v19 = v26, v26(v24, v28, v25), Date.timeIntervalSince(_:)(), v30 = v29, v22(v24, v25), v22(v23, v25), v30 <= 1.0))
  {
    v26 = v19;
    *&v2[OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_consecutiveSimilarFrames] = 0;
    goto LABEL_32;
  }

  v31 = [v9 capturedImage];
  [*&v2[OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_luminanceManager] computeLuminanceFromPixelBuffer:v31];
  v33 = v32;

  v37 = &off_10004F000;
  if (v33 < 1.0 && vabdd_f64(v33, *&v2[OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_lastFramePixelValue]) < 0.5)
  {
    v38 = *&v2[OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_consecutiveSimilarFrames];
    v39 = __OFADD__(v38, 1);
    v40 = v38 + 1;
    if (!v39)
    {
      *&v2[OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_consecutiveSimilarFrames] = v40;
      if (v40 >= 9001)
      {
        static AXLog.magangel.getter();
        v41 = Logger.logObject.getter();
        v42 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          *v43 = 0;
          _os_log_impl(&_mh_execute_header, v41, v42, "Deactivating UIScene because the angel has not been used for an extended period of time", v43, 2u);
        }

        v44 = *(v0 + 216);
        v45 = v41;
        v47 = *(v0 + 192);
        v46 = *(v0 + 200);
        v98 = *(v0 + 176);
        v99 = *(v0 + 168);
        v100 = *(v0 + 160);
        v101 = *(v0 + 152);
        v102 = *(v0 + 184);

        (*(v46 + 8))(v44, v47);
        v48 = type metadata accessor for MAGSimulatedEvent();
        (*(*(v48 - 8) + 56))(v102, 2, 13, v48);
        sub_10000DF00(v102, v98);

        sub_10000D3B8(&unk_1000506F0, &unk_100038540);
        AsyncStream.Continuation.yield(_:)();

        (*(v100 + 8))(v99, v101);
        sub_10000DF64(v102);
        v37 = &off_10004F000;
      }

      goto LABEL_31;
    }

    __break(1u);
    return _swift_task_switch(v34, v35, v36);
  }

  *&v2[OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_consecutiveSimilarFrames] = 0;
LABEL_31:
  v58 = *(v0 + 248);
  v59 = *(v0 + 224);
  v60 = *(v0 + 232);
  *(&v37[233]->Flags + v2) = v33;
  Date.init()();
  swift_beginAccess();
  (*(v60 + 40))(&v2[v103], v58, v59);
  swift_endAccess();
LABEL_32:
  v62 = *(v0 + 240);
  v61 = *(v0 + 248);
  v63 = *(v0 + 224);
  Date.init()();
  v64 = OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_angelLaunchTime;
  swift_beginAccess();
  v26(v62, &v2[v64], v63);
  Date.timeIntervalSince(_:)();
  v66 = v65;
  v22(v62, v63);
  v22(v61, v63);
  if (*&v2[OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_maxAngelRuntime] < v66)
  {
    static AXLog.magangel.getter();
    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&_mh_execute_header, v67, v68, "Deactivating angel because it has been active for 30 minutes", v69, 2u);
    }

    v70 = *(v0 + 200);
    v71 = *(v0 + 208);
    v72 = *(v0 + 184);
    v73 = *(v0 + 192);
    v74 = *(v0 + 168);
    v75 = *(v0 + 176);
    v76 = *(v0 + 160);
    v104 = *(v0 + 152);

    (*(v70 + 8))(v71, v73);
    v77 = type metadata accessor for MAGSimulatedEvent();
    (*(*(v77 - 8) + 56))(v72, 2, 13, v77);
    sub_10000DF00(v72, v75);

    sub_10000D3B8(&unk_1000506F0, &unk_100038540);
    AsyncStream.Continuation.yield(_:)();

    (*(v76 + 8))(v74, v104);
    sub_10000DF64(v72);
    v9 = v105;
  }

  if (sub_100005740())
  {
    v78 = OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_torchStatus;
    if (!*&v2[OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_torchStatus])
    {
      v79 = *&v2[OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_luminanceManager];
      v80 = [v9 capturedImage];
      [v79 computeLuminanceFromPixelBuffer:v80];
      v82 = v81;

      v83 = v82 / 96.0;
      if (v83 > 0.0)
      {
        static Detection.luminanceThreshold.getter();
        if (v83 < v84)
        {
          sub_10000BEEC();
          *&v2[v78] = 1;
        }
      }
    }
  }

  v85 = OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_nextEligibleDetector;
  v86 = v2[OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_nextEligibleDetector];
  if (v2[OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_nextEligibleDetector])
  {
    if (v86 != 1)
    {
      goto LABEL_54;
    }

LABEL_43:
    v2[v85] = 2;
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    if (*(v0 + 399))
    {
      v87 = swift_task_alloc();
      *(v0 + 328) = v87;
      *v87 = v0;
      v87[1] = sub_1000043E4;

      return sub_100007D20(v9);
    }

    v86 = v2[v85];
LABEL_54:
    if (v86 == 2)
    {
      v2[v85] = 3;
      swift_getKeyPath();
      swift_getKeyPath();

      static Published.subscript.getter();

      if (*(v0 + 398) == 1)
      {
        v90 = swift_task_alloc();
        *(v0 + 336) = v90;
        *v90 = v0;
        v90[1] = sub_100004504;

        return sub_10000A13C(v9);
      }

      v86 = v2[v85];
    }

    if (v86 == 3)
    {

      v91 = dispatch thunk of MAGOutputEngine.isSpeaking.getter();

      if (v91)
      {

LABEL_80:
        goto LABEL_81;
      }

      v2[v85] = 5;
      swift_getKeyPath();
      swift_getKeyPath();

      static Published.subscript.getter();

      if (*(v0 + 397))
      {
        v92 = [v9 capturedImage];
        *(v0 + 344) = v92;
        v93 = swift_task_alloc();
        *(v0 + 352) = v93;
        *v93 = v0;
        v93[1] = sub_100004624;

        return sub_10000B58C(v92);
      }

      v86 = v2[v85];
    }

    if (v86 == 5)
    {
      v2[v85] = 4;
      swift_getKeyPath();
      swift_getKeyPath();

      static Published.subscript.getter();

      if (*(v0 + 396) == 1)
      {
        v94 = swift_task_alloc();
        *(v0 + 360) = v94;
        *v94 = v0;
        v94[1] = sub_100004764;

        return sub_10000B140(v9);
      }

      v86 = v2[v85];
    }

    if (v86 == 4)
    {
      v2[v85] = 0;
      swift_getKeyPath();
      swift_getKeyPath();

      static Published.subscript.getter();

      if (*(v0 + 395) == 1)
      {

        dispatch thunk of MAGOutputEngine.isElligbleForNewEvent.setter();

        v95 = [v9 capturedImage];
        *(v0 + 368) = v95;
        v96 = swift_task_alloc();
        *(v0 + 376) = v96;
        *v96 = v0;
        v96[1] = sub_10000495C;

        return sub_10000585C(v95);
      }
    }

LABEL_79:

    goto LABEL_80;
  }

  v2[OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_nextEligibleDetector] = 1;
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  if ((*(v0 + 400) & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    if (*(v0 + 401) != 1)
    {
      v86 = v2[v85];
      if (v86 != 1)
      {
        goto LABEL_54;
      }

      goto LABEL_43;
    }
  }

  v89 = swift_task_alloc();
  *(v0 + 320) = v89;
  *v89 = v0;
  v89[1] = sub_1000042C4;

  return sub_10000680C(v9);
}

uint64_t sub_1000042C4()
{
  v1 = *v0;

  v2 = *(v1 + 296);
  v3 = *(v1 + 288);

  return _swift_task_switch(sub_10000EC04, v3, v2);
}

uint64_t sub_1000043E4()
{
  v1 = *v0;

  v2 = *(v1 + 296);
  v3 = *(v1 + 288);

  return _swift_task_switch(sub_10000EC04, v3, v2);
}

uint64_t sub_100004504()
{
  v1 = *v0;

  v2 = *(v1 + 296);
  v3 = *(v1 + 288);

  return _swift_task_switch(sub_10000EC04, v3, v2);
}

uint64_t sub_100004624()
{
  v1 = *v0;
  v2 = *(*v0 + 344);

  v3 = *(v1 + 296);
  v4 = *(v1 + 288);

  return _swift_task_switch(sub_10000EC04, v4, v3);
}

uint64_t sub_100004764()
{
  v1 = *v0;

  v2 = *(v1 + 296);
  v3 = *(v1 + 288);

  return _swift_task_switch(sub_100004884, v3, v2);
}

uint64_t sub_100004884()
{
  v1 = v0[38];
  v2 = v0[39];

  v3 = v0[1];

  return v3();
}

uint64_t sub_10000495C()
{
  v1 = *v0;
  v2 = *(*v0 + 368);

  v3 = *(v1 + 296);
  v4 = *(v1 + 288);

  return _swift_task_switch(sub_10000EC04, v4, v3);
}

uint64_t sub_100004A9C()
{
  v1 = *(v0[38] + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_objectUnderstandingService);
  dispatch thunk of MAGObjectUnderstandingService.understandObjects(spatialMappingPointClouds:)();

  v2 = v0[36];
  v3 = v0[37];

  return _swift_task_switch(sub_100004B28, v2, v3);
}

uint64_t sub_100004B28()
{
  v1 = *(v0 + 304);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100004BFC(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = type metadata accessor for DetectedObject();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v4 = type metadata accessor for MAGOUEvent.MAGOUEventType();
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[13] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[14] = v6;
  v2[15] = v5;

  return _swift_task_switch(sub_100004D4C, v6, v5);
}

uint64_t sub_100004D4C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 128) = Strong;
  if (!Strong)
  {

LABEL_23:

    v25 = *(v0 + 8);

    return v25();
  }

  v2 = Strong;
  v4 = *(v0 + 88);
  v3 = *(v0 + 96);
  v5 = *(v0 + 80);
  MAGOUEvent.eventType.getter();
  v6 = (*(v4 + 88))(v3, v5);
  if (v6 == enum case for MAGOUEvent.MAGOUEventType.didRecievePointerContactWithObject(_:))
  {
    v7 = *(v0 + 96);
    v8 = *(v0 + 72);
    v9 = *(v0 + 56);
    v10 = *(v0 + 64);
    (*(*(v0 + 88) + 96))(v7, *(v0 + 80));
    v11 = *(v7 + *(sub_10000D3B8(&qword_10004F858, &qword_1000383C0) + 48));
    *(v0 + 136) = v11;
    (*(v10 + 32))(v8, v7, v9);
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    if (*(v0 + 194) == 1)
    {
      v12 = swift_task_alloc();
      *(v0 + 144) = v12;
      *v12 = v0;
      v12[1] = sub_100005230;
      v13 = *(v0 + 72);

      return sub_100009094(v13, v11);
    }

    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
LABEL_14:

LABEL_21:

    goto LABEL_23;
  }

  if (v6 == enum case for MAGOUEvent.MAGOUEventType.didRecievePointerContactWithObjectGroup(_:))
  {
    v15 = *(v0 + 96);
    (*(*(v0 + 88) + 96))(v15, *(v0 + 80));
    v16 = *v15;
    *(v0 + 152) = *v15;
    v17 = v15[1];
    *(v0 + 160) = v17;
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    if (*(v0 + 193) != 1)
    {

      goto LABEL_21;
    }

    v18 = swift_task_alloc();
    *(v0 + 168) = v18;
    *v18 = v0;
    v18[1] = sub_10000541C;

    return sub_1000096B4(v16, v17);
  }

  else
  {
    if (v6 != enum case for MAGOUEvent.MAGOUEventType.didReceivePointerContactsWithFurnitureDetections(_:))
    {
      v22 = *(v0 + 96);
      v23 = *(v0 + 80);
      v24 = *(v0 + 88);

      (*(v24 + 8))(v22, v23);
      goto LABEL_23;
    }

    v19 = *(v0 + 96);
    (*(*(v0 + 88) + 96))(v19, *(v0 + 80));
    v20 = *v19;
    *(v0 + 176) = v20;
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    if (*(v0 + 192) != 1)
    {
      goto LABEL_14;
    }

    v21 = swift_task_alloc();
    *(v0 + 184) = v21;
    *v21 = v0;
    v21[1] = sub_1000055FC;

    return sub_100009C00(v20);
  }
}

uint64_t sub_100005230()
{
  v1 = *v0;

  v2 = *(v1 + 120);
  v3 = *(v1 + 112);

  return _swift_task_switch(sub_100005374, v3, v2);
}

uint64_t sub_100005374()
{
  v1 = v0[16];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[7];

  (*(v3 + 8))(v2, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_10000541C()
{
  v1 = *v0;

  v2 = *(v1 + 120);
  v3 = *(v1 + 112);

  return _swift_task_switch(sub_10000557C, v3, v2);
}

uint64_t sub_10000557C()
{
  v1 = *(v0 + 128);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000055FC()
{
  v1 = *v0;

  v2 = *(v1 + 120);
  v3 = *(v1 + 112);

  return _swift_task_switch(sub_10000EC48, v3, v2);
}

uint64_t sub_100005740()
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  v0 = [objc_opt_self() sharedInstance];
  v1 = v0;
  if (v5 == 1)
  {
    v2 = [v0 liveRecognitionActivity];

    if (!v2)
    {
      return 1;
    }

    v3 = [v2 automaticFlashlightEnabled];
    v1 = v2;
  }

  else
  {
    v3 = [v0 liveRecognitionAutomaticFlashlightEnabled];
  }

  return v3;
}

uint64_t sub_10000585C(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  v4 = type metadata accessor for DispatchQoS();
  v2[14] = v4;
  v2[15] = *(v4 - 8);
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_100005978, 0, 0);
}

uint64_t sub_100005978()
{
  v1 = v0[16];
  v2 = v0[13];
  v15 = v0[15];
  v16 = v0[14];
  v3 = v0[11];
  v14 = v0[12];
  v5 = v0[9];
  v4 = v0[10];
  type metadata accessor for MAGCVPixelBufferWrapper();
  swift_allocObject();
  v6 = v5;
  v7 = MAGCVPixelBufferWrapper.init(_:)();

  v8 = MAGTextDetectionService.queue.getter();

  v9 = swift_allocObject();
  *(v9 + 16) = v4;
  *(v9 + 24) = v7;
  v0[6] = sub_10000E584;
  v0[7] = v9;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_10000288C;
  v0[5] = &unk_100049F40;
  v10 = _Block_copy(v0 + 2);
  v11 = v4;
  static DispatchQoS.unspecified.getter();
  v0[8] = &_swiftEmptyArrayStorage;
  sub_10000DC2C(&qword_10004F880, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000D3B8(&unk_100050430, &unk_100038570);
  sub_10000E1A4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();

  _Block_release(v10);

  (*(v14 + 8))(v2, v3);
  (*(v15 + 8))(v1, v16);

  v12 = v0[1];

  return v12();
}

uint64_t sub_100005BD8(char *a1, uint64_t a2)
{
  *(swift_allocObject() + 16) = a1;

  v3 = a1;
  dispatch thunk of MAGTextDetectionService.detectText(fromPixelBufferWrapper:languageCorrection:completionBlock:)();
}

uint64_t sub_100005C7C(void *a1, char *a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v40 - v13;
  v15 = sub_10000D3B8(&unk_10004F870, &qword_100038BF0);
  __chkstk_darwin(v15 - 8);
  v17 = &v40 - v16;
  if (a1)
  {
    v42 = v5;
    v18 = a1;
    v19 = detectTextBlocks(forDocument:)();
    if (*(v19 + 16))
    {
      v40 = v18;
      v41 = a2;
      static AXLog.magangel.getter();

      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 134217984;
        *(v22 + 4) = *(v19 + 16);

        _os_log_impl(&_mh_execute_header, v20, v21, "%ld text blocks detected from document", v22, 0xCu);
      }

      else
      {
      }

      (*(v9 + 8))(v12, v8);
      Date.init()();
      v34 = OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_lastAnnouncementTime;
      v35 = v41;
      swift_beginAccess();
      (*(v42 + 40))(&v35[v34], v7, v4);
      swift_endAccess();
      v36 = type metadata accessor for TaskPriority();
      (*(*(v36 - 8) + 56))(v17, 1, 1, v36);
      v37 = swift_allocObject();
      v37[2] = 0;
      v37[3] = 0;
      v37[4] = v35;
      v37[5] = v19;
      v38 = v35;
      sub_1000107D4(0, 0, v17, &unk_1000385C8, v37);
    }

    else
    {

      static AXLog.magangel.getter();
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&_mh_execute_header, v27, v28, "No text blocks detected from document", v29, 2u);
      }

      (*(v9 + 8))(v14, v8);
      v30 = type metadata accessor for TaskPriority();
      (*(*(v30 - 8) + 56))(v17, 1, 1, v30);
      type metadata accessor for MainActor();
      v31 = a2;
      v32 = static MainActor.shared.getter();
      v33 = swift_allocObject();
      v33[2] = v32;
      v33[3] = &protocol witness table for MainActor;
      v33[4] = v31;
      sub_1000107D4(0, 0, v17, &unk_1000385D8, v33);
    }
  }

  else
  {
    v23 = type metadata accessor for TaskPriority();
    (*(*(v23 - 8) + 56))(v17, 1, 1, v23);
    type metadata accessor for MainActor();
    v24 = a2;
    v25 = static MainActor.shared.getter();
    v26 = swift_allocObject();
    v26[2] = v25;
    v26[3] = &protocol witness table for MainActor;
    v26[4] = v24;
    sub_1000107D4(0, 0, v17, &unk_1000385B8, v26);
  }
}

uint64_t sub_1000061EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10000EC08, v6, v5);
}

uint64_t sub_100006284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10000631C, v6, v5);
}

uint64_t sub_10000631C()
{

  dispatch thunk of MAGOutputEngine.isElligbleForNewEvent.setter();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000063A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for MAGOutputEventEnvironment();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v7 = type metadata accessor for MAGOutputEventSource();
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();
  v8 = type metadata accessor for MAGOutputEvent();
  v5[10] = v8;
  v5[11] = *(v8 - 8);
  v5[12] = swift_task_alloc();

  return _swift_task_switch(sub_100006518, 0, 0);
}

uint64_t sub_100006518()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  v10 = *(v0 + 56);
  v11 = *(v0 + 72);
  v3 = *(v0 + 40);
  v12 = *(v0 + 32);
  v4 = *(v0 + 24);
  *(v0 + 104) = *(*(v0 + 16) + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_outputEngine);
  sub_10000D3B8(&qword_10004F8C8, &unk_1000385E0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100037F70;
  *(v5 + 32) = v4;
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  v6 = &enum case for MAGOutputEventSource.liveDetectionActivity(_:);
  if (!*(v0 + 120))
  {
    v6 = &enum case for MAGOutputEventSource.liveDetection(_:);
  }

  (*(v1 + 104))(v11, *v6, v10);
  (*(v3 + 104))(v2, enum case for MAGOutputEventEnvironment.angel(_:), v12);
  static MAGOutputEvent.detectedText(_:source:environment:)();

  (*(v3 + 8))(v2, v12);
  (*(v1 + 8))(v11, v10);
  type metadata accessor for MainActor();
  *(v0 + 112) = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100006750, v8, v7);
}

uint64_t sub_100006750()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];

  dispatch thunk of MAGOutputEngine.schedule(_:)();

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10000680C(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v3 = type metadata accessor for Date();
  v2[14] = v3;
  v2[15] = *(v3 - 8);
  v2[16] = swift_task_alloc();
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v2[17] = v4;
  v2[18] = *(v4 - 8);
  v2[19] = swift_task_alloc();
  v5 = type metadata accessor for DispatchQoS();
  v2[20] = v5;
  v2[21] = *(v5 - 8);
  v2[22] = swift_task_alloc();

  return _swift_task_switch(sub_100006984, 0, 0);
}

uint64_t sub_100006984()
{
  v1 = v0[13];
  [v0[12] timestamp];
  v3 = v2;
  v4 = OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_arService;
  v5 = *(v1 + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_arService);
  dispatch thunk of MAGARService.lastARFrameTimestamp.getter();
  v7 = v6;

  if (v3 - v7 >= 0.1)
  {
    v8 = v0[12];
    v9 = v0[13];
    v10 = *(v1 + v4);
    [v8 timestamp];
    dispatch thunk of MAGARService.lastARFrameTimestamp.setter();

    v11 = OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_personDetectionManager;
    [*(v9 + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_personDetectionManager) computePersonDetectionFromFrame:v8 interfaceOrientation:1];

    v12 = [v8 capturedImage];
    dispatch thunk of ANSTPersonDetectionManager.computePersonDetectionFromPixelBuffer(pixelBuffer:interfaceOrientation:)();
    v13 = v0[12];

    v14 = *(v9 + v11);

    v15 = [v14 detectedPersonArray];
    sub_10000E844(0, &qword_10004F8C0, DetectedPersonData_ptr);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v16 = [v13 capturedImage];
    dispatch thunk of ANSTPersonDetectionManager.matchANSTDetections(to:anstDetections:orientation:capturedImage:)();

    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    if (*(v0 + 184) == 1)
    {
      v17 = v0[13];
      v18 = [*(v9 + v11) detectedPersonArray];
      sub_10000E844(0, &qword_10004F8C0, DetectedPersonData_ptr);
      static Array._unconditionallyBridgeFromObjectiveC(_:)();

      static SpatialPersonDetection.spatialize(_:frame:orientation:)();

      v19 = *(v17 + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_objectUnderstandingService);
      dispatch thunk of MAGObjectUnderstandingService.updateSeatOccupancy(for:)();
    }

    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    if (*(v0 + 185) != 1)
    {
      goto LABEL_17;
    }

    v20 = [*(v9 + v11) detectedPersonArray];
    sub_10000E844(0, &qword_10004F8C0, DetectedPersonData_ptr);
    v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v21 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result)
      {
        goto LABEL_7;
      }
    }

    else
    {
      result = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
LABEL_7:
        if ((v21 & 0xC000000000000001) != 0)
        {
          v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          v23 = *(v21 + 32);
        }

        v24 = v23;

        if ([v24 isEnabled] && objc_msgSend(v24, "isValid"))
        {
          [v24 position];
          v26 = v25;
          if (v25 >= 1)
          {
            v27 = v0[22];
            v28 = v0[19];
            v44 = v0[21];
            v45 = v0[20];
            v29 = v0[17];
            v43 = v0[18];
            v46 = v0[16];
            v47 = v0[15];
            v30 = v0[13];
            v48 = v0[14];
            v49 = v0[12];
            v42 = v25;
            sub_10000E844(0, &qword_100050420, OS_dispatch_queue_ptr);
            v41 = static OS_dispatch_queue.main.getter();
            v31 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v32 = swift_allocObject();
            *(v32 + 16) = v31;
            *(v32 + 24) = v24;
            *(v32 + 32) = v26;
            v0[6] = sub_10000E440;
            v0[7] = v32;
            v0[2] = _NSConcreteStackBlock;
            v0[3] = 1107296256;
            v0[4] = sub_10000288C;
            v0[5] = &unk_100049EC8;
            v33 = _Block_copy(v0 + 2);

            v34 = v24;
            static DispatchQoS.unspecified.getter();
            v0[11] = &_swiftEmptyArrayStorage;
            sub_10000DC2C(&qword_10004F880, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
            sub_10000D3B8(&unk_100050430, &unk_100038570);
            sub_10000E1A4();
            dispatch thunk of SetAlgebra.init<A>(_:)();
            OS_dispatch_queue.async(group:qos:flags:execute:)();
            _Block_release(v33);

            (*(v43 + 8))(v28, v29);
            (*(v44 + 8))(v27, v45);

            Date.init()();
            v35 = OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_lastAnnouncementTime;
            swift_beginAccess();
            (*(v47 + 40))(&v30[v35], v46, v48);
            swift_endAccess();
            v36 = swift_allocObject();
            *(v36 + 16) = v30;
            *(v36 + 24) = v49;
            *(v36 + 32) = v34;
            *(v36 + 40) = v42;
            v24 = v34;

            v37 = v30;
            v38 = v49;
            dispatch thunk of AXSerialQueue.async(_:)();
          }

          goto LABEL_18;
        }

LABEL_17:
        v39 = *(v0[13] + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_pulseFeedbackProcessor);
        v24 = dispatch thunk of MAGPulseFeedbackProcessor.toneGenerator.getter();

        [v24 stopPulse];
LABEL_18:

        goto LABEL_19;
      }
    }

    goto LABEL_17;
  }

LABEL_19:

  v40 = v0[1];

  return v40();
}

void sub_100007108(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_pulseFeedbackProcessor);

    dispatch thunk of MAGPulseFeedbackProcessor.processPulseFeedback(nearestPersonData:depth:)();
  }
}

uint64_t sub_100007190(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  *(v4 + 200) = a4;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 16) = a1;
  v5 = type metadata accessor for MAGOutputEventEnvironment();
  *(v4 + 40) = v5;
  *(v4 + 48) = *(v5 - 8);
  *(v4 + 56) = swift_task_alloc();
  v6 = type metadata accessor for MAGOutputEventSource();
  *(v4 + 64) = v6;
  *(v4 + 72) = *(v6 - 8);
  *(v4 + 80) = swift_task_alloc();
  *(v4 + 88) = swift_task_alloc();
  v7 = type metadata accessor for MAGOutputEvent();
  *(v4 + 96) = v7;
  *(v4 + 104) = *(v7 - 8);
  *(v4 + 112) = swift_task_alloc();
  *(v4 + 120) = swift_task_alloc();

  return _swift_task_switch(sub_100007328, 0, 0);
}

uint64_t sub_100007328()
{
  v2 = v0[3];
  v1 = v0[4];
  v0[16] = *(v0[2] + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_videoCaptioningService);

  v3 = [v2 capturedImage];
  v0[17] = v3;
  [v1 screenRect];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v18 = (&async function pointer to dispatch thunk of MAGVideoCaptioningService.generateActionCaption(from:nearestPersonNormalizedRect:) + async function pointer to dispatch thunk of MAGVideoCaptioningService.generateActionCaption(from:nearestPersonNormalizedRect:));
  v12 = swift_task_alloc();
  v0[18] = v12;
  *v12 = v0;
  v12[1] = sub_100007454;
  v13.n128_u64[0] = v5;
  v14.n128_u64[0] = v7;
  v15.n128_u64[0] = v9;
  v16.n128_u64[0] = v11;

  return v18(v3, v13, v14, v15, v16);
}

uint64_t sub_100007454(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  *(v5 + 152) = a1;
  *(v5 + 160) = a2;

  v6 = *(v4 + 136);
  if (v2)
  {

    v7 = sub_100007B20;
  }

  else
  {

    v7 = sub_1000075C0;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1000075C0()
{
  if (*(v0 + 160))
  {
    v1 = *(v0 + 72);
    v2 = *(v0 + 80);
    v3 = *(v0 + 56);
    v4 = *(v0 + 48);
    v18 = *(v0 + 40);
    v19 = *(v0 + 64);
    *(v0 + 168) = *(*(v0 + 16) + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_outputEngine);
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    v5 = &enum case for MAGOutputEventSource.liveDetectionActivity(_:);
    if (!*(v0 + 205))
    {
      v5 = &enum case for MAGOutputEventSource.liveDetection(_:);
    }

    (*(v1 + 104))(v2, *v5, v19);
    (*(v4 + 104))(v3, enum case for MAGOutputEventEnvironment.angel(_:), v18);
    static MAGOutputEvent.peopleDetection(closestPerson:depth:closestPersonAction:source:environment:)();

    (*(v4 + 8))(v3, v18);
    (*(v1 + 8))(v2, v19);
    type metadata accessor for MainActor();
    *(v0 + 176) = static MainActor.shared.getter();
    v6 = dispatch thunk of Actor.unownedExecutor.getter();
    v8 = v7;
    v9 = sub_100007970;
  }

  else
  {
    v10 = *(v0 + 88);
    v11 = *(v0 + 72);
    v12 = *(v0 + 48);
    v13 = *(v0 + 56);
    v14 = *(v0 + 40);
    v20 = *(v0 + 64);
    *(v0 + 184) = *(*(v0 + 16) + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_outputEngine);
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    v15 = &enum case for MAGOutputEventSource.liveDetectionActivity(_:);
    if (!*(v0 + 204))
    {
      v15 = &enum case for MAGOutputEventSource.liveDetection(_:);
    }

    (*(v11 + 104))(v10, *v15, v20);
    (*(v12 + 104))(v13, enum case for MAGOutputEventEnvironment.angel(_:), v14);
    static MAGOutputEvent.peopleDetection(closestPerson:depth:source:environment:)();
    (*(v12 + 8))(v13, v14);
    (*(v11 + 8))(v10, v20);
    type metadata accessor for MainActor();
    *(v0 + 192) = static MainActor.shared.getter();
    v6 = dispatch thunk of Actor.unownedExecutor.getter();
    v8 = v16;
    v9 = sub_100007A48;
  }

  return _swift_task_switch(v9, v6, v8);
}

uint64_t sub_100007970()
{
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[13];

  dispatch thunk of MAGOutputEngine.schedule(_:)();

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100007A48()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[13];

  dispatch thunk of MAGOutputEngine.schedule(_:)();

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100007B20()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 72);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = *(v0 + 40);
  v10 = *(v0 + 64);
  *(v0 + 184) = *(*(v0 + 16) + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_outputEngine);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  v6 = &enum case for MAGOutputEventSource.liveDetectionActivity(_:);
  if (!*(v0 + 204))
  {
    v6 = &enum case for MAGOutputEventSource.liveDetection(_:);
  }

  (*(v2 + 104))(v1, *v6, v10);
  (*(v3 + 104))(v4, enum case for MAGOutputEventEnvironment.angel(_:), v5);
  static MAGOutputEvent.peopleDetection(closestPerson:depth:source:environment:)();
  (*(v3 + 8))(v4, v5);
  (*(v2 + 8))(v1, v10);
  type metadata accessor for MainActor();
  *(v0 + 192) = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100007A48, v8, v7);
}

uint64_t sub_100007D20(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v3 = type metadata accessor for MAGOutputEventEnvironment();
  v2[14] = v3;
  v2[15] = *(v3 - 8);
  v2[16] = swift_task_alloc();
  v4 = type metadata accessor for MAGOutputEventSource();
  v2[17] = v4;
  v2[18] = *(v4 - 8);
  v2[19] = swift_task_alloc();
  v5 = type metadata accessor for MAGOutputEvent();
  v2[20] = v5;
  v2[21] = *(v5 - 8);
  v2[22] = swift_task_alloc();
  v6 = type metadata accessor for Date();
  v2[23] = v6;
  v2[24] = *(v6 - 8);
  v2[25] = swift_task_alloc();
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v2[26] = v7;
  v2[27] = *(v7 - 8);
  v2[28] = swift_task_alloc();
  v8 = type metadata accessor for DispatchQoS();
  v2[29] = v8;
  v2[30] = *(v8 - 8);
  v2[31] = swift_task_alloc();
  v9 = type metadata accessor for DetectedDoor();
  v2[32] = v9;
  v2[33] = *(v9 - 8);
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v10 = sub_10000D3B8(&qword_10004F8A8, &qword_100038588);
  v2[36] = v10;
  v2[37] = *(v10 - 8);
  v2[38] = swift_task_alloc();
  sub_10000D3B8(&qword_10004F8B0, &qword_100038590);
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();
  sub_10000D3B8(&qword_10004F8B8, &qword_100038598);
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();

  return _swift_task_switch(sub_100008104, 0, 0);
}

uint64_t sub_100008104()
{
  v1 = v0[13];
  v2 = OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_doorDetectionService;
  v0[43] = OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_doorDetectionService;
  v0[44] = *(v1 + v2);
  v0[45] = objc_opt_self();
  v0[46] = type metadata accessor for MainActor();

  v0[47] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000081CC, v4, v3);
}

uint64_t sub_1000081CC()
{
  v1 = *(v0 + 360);

  *(v0 + 384) = [v1 mainScreen];

  return _swift_task_switch(sub_100008254, 0, 0);
}

uint64_t sub_100008254(uint64_t a1)
{
  *(v1 + 392) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000082E0, v3, v2);
}

uint64_t sub_1000082E0()
{
  v1 = v0[48];

  [v1 bounds];
  v3 = v2;
  v5 = v4;

  v11 = (&async function pointer to dispatch thunk of MAGDoorDetectionService.detectDoorsWithFrame(frame:size:detectDecorations:) + async function pointer to dispatch thunk of MAGDoorDetectionService.detectDoorsWithFrame(frame:size:detectDecorations:));
  v6 = swift_task_alloc();
  v0[50] = v6;
  *v6 = v0;
  v6[1] = sub_1000083C4;
  v7 = v0[12];
  v8.n128_u64[0] = v3;
  v9.n128_u64[0] = v5;

  return v11(v7, 1, v8, v9);
}

uint64_t sub_1000083C4(uint64_t a1)
{
  *(*v1 + 408) = a1;

  return _swift_task_switch(sub_1000084E4, 0, 0);
}

uint64_t sub_1000084E4()
{
  v1 = *(v0 + 408);
  if (!v1)
  {
    goto LABEL_22;
  }

  v2 = *(v1 + 16);
  if (!v2)
  {
    v31 = *(v0 + 104);

    v32 = *(v31 + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_pulseFeedbackProcessor);
    v33 = dispatch thunk of MAGPulseFeedbackProcessor.doorToneGenerator.getter();

    [v33 stopPulse];
LABEL_22:

    v34 = *(v0 + 8);

    return v34();
  }

  v3 = *(v0 + 336);
  v4 = *(v0 + 296);
  v68 = *(v0 + 288);
  v5 = *(v0 + 256);
  v6 = *(v0 + 264);
  v64 = *(v0 + 408);
  v60 = v1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v58 = *(v6 + 16);
  v58(v3);
  v57 = *(v6 + 56);
  v7 = v57(v3, 0, 1, v5);
  v10 = 0;
  v62 = v6;
  v65 = (v6 + 8);
  v66 = (v6 + 32);
  v11 = 3.4028e38;
  while (1)
  {
    if (v10 == v2)
    {
      v12 = 1;
      v10 = v2;
    }

    else
    {
      if (v10 >= *(v64 + 16))
      {
        __break(1u);
LABEL_33:
        __break(1u);
        return _swift_task_switch(v7, v8, v9);
      }

      v14 = *(v0 + 304);
      v13 = *(v0 + 312);
      v15 = *(v0 + 256);
      v16 = v60 + *(v62 + 72) * v10;
      v17 = *(v68 + 48);
      *v14 = v10;
      (v58)(v14 + v17, v16, v15);
      sub_10000E284(v14, v13, &qword_10004F8A8, &qword_100038588);
      v12 = 0;
      ++v10;
    }

    v19 = *(v0 + 312);
    v18 = *(v0 + 320);
    v20 = *(v0 + 288);
    (*(v4 + 56))(v19, v12, 1, v20);
    sub_10000E284(v19, v18, &qword_10004F8B0, &qword_100038590);
    if ((*(v4 + 48))(v18, 1, v20) == 1)
    {
      break;
    }

    v21 = *v66;
    (*v66)(*(v0 + 280), *(v0 + 320) + *(v68 + 48), *(v0 + 256));
    if ((DetectedDoor.depth.getter() & 0x100000000) != 0)
    {
      goto LABEL_12;
    }

    v7 = DetectedDoor.depth.getter();
    if ((v7 & 0x100000000) != 0)
    {
      goto LABEL_33;
    }

    if (*&v7 > 4.0)
    {
LABEL_12:

      DetectedDoor.normalizedBbox.getter();
      dispatch thunk of MAGDoorDetectionService.getAverageRectDistance(_:inFrame:)();

      DetectedDoor.depth.setter();
    }

    v22 = DetectedDoor.depth.getter();
    if ((v22 & &_mh_execute_header) != 0)
    {
      v23 = 3.4028e38;
    }

    else
    {
      v23 = *&v22;
    }

    if (v23 < v11)
    {
      v24 = *(v0 + 336);
      v25 = *(v0 + 280);
      v26 = *(v0 + 256);
      sub_10000E35C(v24, &qword_10004F8B8, &qword_100038598);
      v21(v24, v25, v26);
      v7 = v57(v24, 0, 1, v26);
      v11 = v23;
    }

    else
    {
      v7 = (*v65)(*(v0 + 280), *(v0 + 256));
    }
  }

  v27 = *(v0 + 328);
  v29 = *(v0 + 256);
  v28 = *(v0 + 264);
  sub_10000E2EC(*(v0 + 336), v27);
  if ((*(v28 + 48))(v27, 1, v29) == 1)
  {
    v30 = *(v0 + 328);
    sub_10000E35C(*(v0 + 336), &qword_10004F8B8, &qword_100038598);

    sub_10000E35C(v30, &qword_10004F8B8, &qword_100038598);
    goto LABEL_22;
  }

  (*v66)(*(v0 + 272), *(v0 + 328), *(v0 + 256));
  if (v11 < 3.4028e38)
  {
    v36 = *(v0 + 240);
    v37 = *(v0 + 248);
    v38 = *(v0 + 224);
    v69 = *(v0 + 232);
    v39 = *(v0 + 208);
    v40 = *(v0 + 216);
    sub_10000E844(0, &qword_100050420, OS_dispatch_queue_ptr);
    v67 = static OS_dispatch_queue.main.getter();
    v41 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v42 = swift_allocObject();
    *(v42 + 16) = v41;
    *(v42 + 24) = v11;
    *(v0 + 48) = sub_10000E3F4;
    *(v0 + 56) = v42;
    *(v0 + 16) = _NSConcreteStackBlock;
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_10000288C;
    *(v0 + 40) = &unk_100049E78;
    v43 = _Block_copy((v0 + 16));

    static DispatchQoS.unspecified.getter();
    *(v0 + 88) = &_swiftEmptyArrayStorage;
    sub_10000DC2C(&qword_10004F880, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10000D3B8(&unk_100050430, &unk_100038570);
    sub_10000E1A4();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v43);

    (*(v40 + 8))(v38, v39);
    (*(v36 + 8))(v37, v69);
  }

  v45 = *(v0 + 192);
  v44 = *(v0 + 200);
  v46 = *(v0 + 184);
  v47 = *(v0 + 144);
  v48 = *(v0 + 128);
  v59 = *(v0 + 136);
  v61 = *(v0 + 152);
  v49 = *(v0 + 120);
  v63 = *(v0 + 112);
  v50 = *(v0 + 104);
  Date.init()();
  v51 = OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_lastAnnouncementTime;
  swift_beginAccess();
  (*(v45 + 40))(v50 + v51, v44, v46);
  swift_endAccess();
  *(v0 + 416) = *(v50 + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_outputEngine);

  v52 = dispatch thunk of MAGDoorDetectionService.openStateConfidenceThreshold.getter();

  Float.init(truncating:)();

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  v53 = &enum case for MAGOutputEventSource.liveDetectionActivity(_:);
  if (!*(v0 + 432))
  {
    v53 = &enum case for MAGOutputEventSource.liveDetection(_:);
  }

  (*(v47 + 104))(v61, *v53, v59);
  (*(v49 + 104))(v48, enum case for MAGOutputEventEnvironment.angel(_:), v63);
  static MAGOutputEvent.doorDetection(_:_:openStateConfidenceThreshold:source:environment:)();

  (*(v49 + 8))(v48, v63);
  (*(v47 + 8))(v61, v59);
  *(v0 + 424) = static MainActor.shared.getter();
  v54 = dispatch thunk of Actor.unownedExecutor.getter();
  v56 = v55;
  v7 = sub_100008DEC;
  v8 = v54;
  v9 = v56;

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_100008DEC()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];

  dispatch thunk of MAGOutputEngine.schedule(_:)();

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_100008E8C, 0, 0);
}

uint64_t sub_100008E8C()
{
  v1 = v0[42];
  (*(v0[33] + 8))(v0[34], v0[32]);
  sub_10000E35C(v1, &qword_10004F8B8, &qword_100038598);

  v2 = v0[1];

  return v2();
}

void sub_100008FCC(uint64_t a1, float a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_pulseFeedbackProcessor);

    v6 = a2 * 1000.0;
    if (COERCE_INT(fabs(a2 * 1000.0)) > 2139095039)
    {
      __break(1u);
    }

    else if (v6 > -2147500000.0)
    {
      if (v6 < 2147500000.0)
      {
        dispatch thunk of MAGPulseFeedbackProcessor.processDoorPulseFeedback(depth:)();

        return;
      }

LABEL_9:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_9;
  }
}

uint64_t sub_100009094(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = type metadata accessor for MAGOutputEventEnvironment();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v5 = type metadata accessor for MAGOutputEventSource();
  v3[11] = v5;
  v3[12] = *(v5 - 8);
  v3[13] = swift_task_alloc();
  sub_10000D3B8(&qword_10004F8A0, &qword_100038580);
  v3[14] = swift_task_alloc();
  v6 = type metadata accessor for MAGOutputEvent();
  v3[15] = v6;
  v3[16] = *(v6 - 8);
  v3[17] = swift_task_alloc();
  v7 = type metadata accessor for Date();
  v3[18] = v7;
  v3[19] = *(v7 - 8);
  v3[20] = swift_task_alloc();

  return _swift_task_switch(sub_1000092A4, 0, 0);
}

uint64_t sub_1000092A4(uint64_t a1)
{
  v3 = *(v1 + 152);
  v2 = *(v1 + 160);
  v4 = *(v1 + 144);
  v5 = *(v1 + 112);
  v6 = *(v1 + 96);
  v20 = *(v1 + 88);
  v21 = *(v1 + 104);
  v7 = *(v1 + 72);
  v8 = *(v1 + 56);
  v22 = *(v1 + 64);
  v23 = *(v1 + 80);
  v9 = *(v1 + 40);
  Date.init()();
  v10 = OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_lastAnnouncementTime;
  swift_beginAccess();
  (*(v3 + 40))(v8 + v10, v2, v4);
  swift_endAccess();
  *(v1 + 168) = *(v8 + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_outputEngine);
  v11 = type metadata accessor for DetectedObject();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v5, v9, v11);
  (*(v12 + 56))(v5, 0, 1, v11);
  v13 = *(v8 + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_objectUnderstandingService);

  v14 = v13;
  v15 = dispatch thunk of MAGObjectUnderstandingService.objectPointerParentNode.getter();

  SCNNode.base.getter();
  SIMD3<>.init(_:)();
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  v16 = &enum case for MAGOutputEventSource.liveDetectionActivity(_:);
  if (!*(v1 + 184))
  {
    v16 = &enum case for MAGOutputEventSource.liveDetection(_:);
  }

  (*(v6 + 104))(v21, *v16, v20);
  (*(v7 + 104))(v23, enum case for MAGOutputEventEnvironment.angel(_:), v22);
  static MAGOutputEvent.objectUnderstanding(detectedObject:cameraPosition:detectedOccupants:source:environment:)();
  (*(v7 + 8))(v23, v22);
  (*(v6 + 8))(v21, v20);
  sub_10000E35C(v5, &qword_10004F8A0, &qword_100038580);
  type metadata accessor for MainActor();
  *(v1 + 176) = static MainActor.shared.getter();
  v18 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000095D8, v18, v17);
}

uint64_t sub_1000095D8()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];

  dispatch thunk of MAGOutputEngine.schedule(_:)();

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000096B4(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = type metadata accessor for MAGOutputEventEnvironment();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v5 = type metadata accessor for MAGOutputEventSource();
  v3[11] = v5;
  v3[12] = *(v5 - 8);
  v3[13] = swift_task_alloc();
  v6 = type metadata accessor for MAGOutputEvent();
  v3[14] = v6;
  v3[15] = *(v6 - 8);
  v3[16] = swift_task_alloc();
  v7 = type metadata accessor for Date();
  v3[17] = v7;
  v3[18] = *(v7 - 8);
  v3[19] = swift_task_alloc();

  return _swift_task_switch(sub_10000988C, 0, 0);
}

uint64_t sub_10000988C(uint64_t a1)
{
  v3 = *(v1 + 144);
  v2 = *(v1 + 152);
  v4 = *(v1 + 136);
  v6 = *(v1 + 96);
  v5 = *(v1 + 104);
  v7 = *(v1 + 80);
  v8 = *(v1 + 72);
  v18 = *(v1 + 88);
  v19 = *(v1 + 64);
  v9 = *(v1 + 56);
  Date.init()();
  v10 = OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_lastAnnouncementTime;
  swift_beginAccess();
  (*(v3 + 40))(v9 + v10, v2, v4);
  swift_endAccess();
  *(v1 + 160) = *(v9 + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_outputEngine);
  v11 = *(v9 + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_objectUnderstandingService);

  v12 = v11;
  v13 = dispatch thunk of MAGObjectUnderstandingService.objectPointerParentNode.getter();

  SCNNode.base.getter();
  SIMD3<>.init(_:)();
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  v14 = &enum case for MAGOutputEventSource.liveDetectionActivity(_:);
  if (!*(v1 + 176))
  {
    v14 = &enum case for MAGOutputEventSource.liveDetection(_:);
  }

  (*(v6 + 104))(v5, *v14, v18);
  (*(v8 + 104))(v7, enum case for MAGOutputEventEnvironment.angel(_:), v19);
  static MAGOutputEvent.objectUnderstanding(detectedObjectGroup:cameraPosition:detectedOccupants:source:environment:)();
  (*(v8 + 8))(v7, v19);
  (*(v6 + 8))(v5, v18);
  type metadata accessor for MainActor();
  *(v1 + 168) = static MainActor.shared.getter();
  v16 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100009B30, v16, v15);
}

uint64_t sub_100009B30()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];

  dispatch thunk of MAGOutputEngine.schedule(_:)();

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100009C00(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = type metadata accessor for MAGOutputEventEnvironment();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v4 = type metadata accessor for MAGOutputEventSource();
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = type metadata accessor for MAGOutputEvent();
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  v6 = type metadata accessor for Date();
  v2[16] = v6;
  v2[17] = *(v6 - 8);
  v2[18] = swift_task_alloc();

  return _swift_task_switch(sub_100009DD4, 0, 0);
}

uint64_t sub_100009DD4(uint64_t a1)
{
  v3 = *(v1 + 136);
  v2 = *(v1 + 144);
  v4 = *(v1 + 128);
  v6 = *(v1 + 88);
  v5 = *(v1 + 96);
  v7 = *(v1 + 72);
  v8 = *(v1 + 64);
  v18 = *(v1 + 80);
  v19 = *(v1 + 56);
  v9 = *(v1 + 48);
  Date.init()();
  v10 = OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_lastAnnouncementTime;
  swift_beginAccess();
  (*(v3 + 40))(v9 + v10, v2, v4);
  swift_endAccess();
  *(v1 + 152) = *(v9 + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_outputEngine);
  v11 = *(v9 + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_objectUnderstandingService);

  v12 = v11;
  v13 = dispatch thunk of MAGObjectUnderstandingService.objectPointerParentNode.getter();

  SCNNode.base.getter();
  SIMD3<>.init(_:)();
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  v14 = &enum case for MAGOutputEventSource.liveDetectionActivity(_:);
  if (!*(v1 + 168))
  {
    v14 = &enum case for MAGOutputEventSource.liveDetection(_:);
  }

  (*(v6 + 104))(v5, *v14, v18);
  (*(v8 + 104))(v7, enum case for MAGOutputEventEnvironment.angel(_:), v19);
  static MAGOutputEvent.objectUnderstanding(furnitureDetections:cameraPosition:source:environment:)();
  (*(v8 + 8))(v7, v19);
  (*(v6 + 8))(v5, v18);
  type metadata accessor for MainActor();
  *(v1 + 160) = static MainActor.shared.getter();
  v16 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10000A06C, v16, v15);
}

uint64_t sub_10000A06C()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];

  dispatch thunk of MAGOutputEngine.schedule(_:)();

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10000A13C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_10000A15C, 0, 0);
}

uint64_t sub_10000A15C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  if (*(v0 + 32) == 1)
  {
    v1 = *(v0 + 16);
    v2 = *(v0 + 24);
    v3 = *(v2 + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_objectUnderstandingService);
    dispatch thunk of MAGObjectUnderstandingService.understandObjects(frame:)();

    v4 = *(v2 + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_sceneRenderer);
    [v1 timestamp];
    [v4 updateAtTime:?];
  }

  v5 = *(v0 + 8);

  return v5();
}

void sub_10000A284()
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  v1 = *(v0 + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_objectUnderstandingService);
  if (v5 == 1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_scene);
    v3 = v1;
    v4 = v2;
    dispatch thunk of MAGObjectUnderstandingService.startService(with:)();
  }

  else
  {
    v4 = v1;
    dispatch thunk of MAGObjectUnderstandingService.stopService()();
  }
}

uint64_t sub_10000A360(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;
  v3 = type metadata accessor for DetectedTextBlock();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v4 = type metadata accessor for DetectedTextAndLanguage();
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();
  v5 = type metadata accessor for MAGOutputEventEnvironment();
  v2[16] = v5;
  v2[17] = *(v5 - 8);
  v2[18] = swift_task_alloc();
  v6 = type metadata accessor for MAGOutputEventSource();
  v2[19] = v6;
  v2[20] = *(v6 - 8);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v7 = type metadata accessor for MAGOutputAnnouncement();
  v2[25] = v7;
  v2[26] = *(v7 - 8);
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v8 = type metadata accessor for MAGOutputEvent();
  v2[29] = v8;
  v2[30] = *(v8 - 8);
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  v9 = type metadata accessor for MAGPointAndSpeakEvent.PointAndSpeakEventType();
  v2[35] = v9;
  v2[36] = *(v9 - 8);
  v2[37] = swift_task_alloc();
  v10 = type metadata accessor for Date();
  v2[38] = v10;
  v2[39] = *(v10 - 8);
  v2[40] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[41] = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10000A72C, v12, v11);
}

uint64_t sub_10000A72C()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(v0 + 312);
    v4 = *(v0 + 320);
    v6 = *(v0 + 296);
    v5 = *(v0 + 304);
    v7 = *(v0 + 280);
    v8 = *(v0 + 288);
    Date.init()();
    v9 = OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_lastAnnouncementTime;
    swift_beginAccess();
    (*(v3 + 40))(&v2[v9], v4, v5);
    swift_endAccess();
    MAGPointAndSpeakEvent.eventType.getter();
    v10 = (*(v8 + 88))(v6, v7);
    v64 = v2;
    if (v10 == enum case for MAGPointAndSpeakEvent.PointAndSpeakEventType.processPointAndSpeakUpdate(_:))
    {
      v62 = (v0 + 256);
      v11 = *(v0 + 176);
      v12 = *(v0 + 160);
      v14 = *(v0 + 136);
      v13 = *(v0 + 144);
      v54 = *(v0 + 152);
      v57 = *(v0 + 128);
      (*(*(v0 + 288) + 96))(*(v0 + 296), *(v0 + 280));
      swift_getKeyPath();
      swift_getKeyPath();

      static Published.subscript.getter();

      v15 = &enum case for MAGOutputEventSource.liveDetectionActivity(_:);
      if (!*(v0 + 337))
      {
        v15 = &enum case for MAGOutputEventSource.magAction(_:);
      }

      (*(v12 + 104))(v11, *v15, v54);
      (*(v14 + 104))(v13, enum case for MAGOutputEventEnvironment.angel(_:), v57);
      static MAGOutputEvent.pointAndSpeak(_:source:environment:)();

      (*(v14 + 8))(v13, v57);
      (*(v12 + 8))(v11, v54);
    }

    else
    {
      if (v10 == enum case for MAGPointAndSpeakEvent.PointAndSpeakEventType.handDetected(_:))
      {
        v50 = *(v0 + 224);
        v17 = *(v0 + 208);
        v59 = *(v0 + 200);
        v18 = *(v0 + 192);
        v19 = *(v0 + 160);
        v48 = *(v0 + 152);
        v20 = *(v0 + 136);
        v21 = *(v0 + 144);
        v52 = *(v0 + 128);
        (*(v17 + 104))();
        swift_getKeyPath();
        swift_getKeyPath();

        static Published.subscript.getter();

        v22 = &enum case for MAGOutputEventSource.liveDetectionActivity(_:);
        if (!*(v0 + 338))
        {
          v22 = &enum case for MAGOutputEventSource.magAction(_:);
        }

        (*(v19 + 104))(v18, *v22, v48);
        (*(v20 + 104))(v21, enum case for MAGOutputEventEnvironment.angel(_:), v52);
        static MAGOutputEvent.announcement(_:source:environment:)();
        (*(v20 + 8))(v21, v52);
        (*(v19 + 8))(v18, v48);
        (*(v17 + 8))(v50, v59);
        dispatch thunk of MAGOutputEngine.schedule(_:)();
        v16 = (v0 + 272);
        goto LABEL_11;
      }

      if (v10 != enum case for MAGPointAndSpeakEvent.PointAndSpeakEventType.handTooClose(_:))
      {
        if (v10 == enum case for MAGPointAndSpeakEvent.PointAndSpeakEventType.handleNoContentAvailable(_:))
        {
          v16 = (v0 + 120);
          v40 = *(v0 + 120);
          v47 = *(v0 + 248);
          v49 = *(v0 + 240);
          v51 = *(v0 + 232);
          v43 = *(v0 + 168);
          v61 = *(v0 + 160);
          v58 = *(v0 + 152);
          v44 = *(v0 + 136);
          v45 = *(v0 + 128);
          v46 = *(v0 + 144);
          v23 = v0 + 112;
          v34 = *(v0 + 112);
          v24 = (v0 + 104);
          v42 = *(v0 + 104);
          v53 = *(v0 + 96);
          v56 = *(v0 + 88);
          v63 = *(v0 + 80);
          String.localized.getter();
          v35 = [objc_opt_self() currentLanguageCode];
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          DetectedTextAndLanguage.init(text:locale:)();
          sub_10000D3B8(&qword_10004F848, &qword_100038318);
          v36 = (*(v34 + 80) + 32) & ~*(v34 + 80);
          v37 = swift_allocObject();
          *(v37 + 16) = xmmword_100037F70;
          (*(v34 + 16))(v37 + v36, v40, v42);
          DetectedTextBlock.init(stringLocaleMap:normalizedBbox:confidence:detectLanguages:outputRegion:)();
          sub_10000D3B8(&qword_10004F850, &qword_100038320);
          v38 = (*(v56 + 80) + 32) & ~*(v56 + 80);
          v41 = swift_allocObject();
          *(v41 + 16) = xmmword_100037F70;
          (*(v56 + 16))(v41 + v38, v53, v63);
          swift_getKeyPath();
          swift_getKeyPath();

          static Published.subscript.getter();

          v39 = &enum case for MAGOutputEventSource.liveDetectionActivity(_:);
          if (!*(v0 + 336))
          {
            v39 = &enum case for MAGOutputEventSource.liveDetection(_:);
          }

          (*(v61 + 104))(v43, *v39, v58);
          (*(v44 + 104))(v46, enum case for MAGOutputEventEnvironment.app(_:), v45);
          static MAGOutputEvent.pointAndSpeak(_:source:environment:)();

          (*(v44 + 8))(v46, v45);
          (*(v61 + 8))(v43, v58);
          dispatch thunk of MAGOutputEngine.schedule(_:)();

          (*(v49 + 8))(v47, v51);
          (*(v56 + 8))(v53, v63);
        }

        else
        {
          v16 = (v0 + 296);
          v23 = v0 + 288;
          v24 = (v0 + 280);
        }

        goto LABEL_12;
      }

      v62 = (v0 + 264);
      v27 = *(v0 + 208);
      v55 = *(v0 + 216);
      v60 = *(v0 + 200);
      v28 = *(v0 + 184);
      v30 = *(v0 + 152);
      v29 = *(v0 + 160);
      v31 = *(v0 + 136);
      v32 = *(v0 + 144);
      v33 = *(v0 + 128);
      (*(v27 + 104))();
      (*(v29 + 104))(v28, enum case for MAGOutputEventSource.magAction(_:), v30);
      (*(v31 + 104))(v32, enum case for MAGOutputEventEnvironment.angel(_:), v33);

      static MAGOutputEvent.announcement(_:source:environment:)();
      (*(v31 + 8))(v32, v33);
      (*(v29 + 8))(v28, v30);
      (*(v27 + 8))(v55, v60);
    }

    dispatch thunk of MAGOutputEngine.schedule(_:)();
    v16 = v62;
LABEL_11:

    v23 = v0 + 240;
    v24 = (v0 + 232);
LABEL_12:
    (*(*v23 + 8))(*v16, *v24);
  }

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_10000B140(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for Logger();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_10000B200, 0, 0);
}

uint64_t sub_10000B200()
{
  v1 = v0[2];
  v0[7] = *(v0[3] + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_pointAndSpeakService);

  v2 = [v1 capturedImage];
  type metadata accessor for MAGCVPixelBufferWrapper();
  swift_allocObject();
  v3 = MAGCVPixelBufferWrapper.init(_:)();
  v0[8] = v3;
  v6 = (&async function pointer to dispatch thunk of MAGPointAndSpeakService.predictHandPose(fromPixelBufferWrapper:) + async function pointer to dispatch thunk of MAGPointAndSpeakService.predictHandPose(fromPixelBufferWrapper:));
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_10000B310;

  return v6(v3);
}

uint64_t sub_10000B310()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10000B45C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_10000B45C()
{

  static AXLog.magangel.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();
  v3 = os_log_type_enabled(v1, v2);
  v5 = v0[5];
  v4 = v0[6];
  v6 = v0[4];
  if (v3)
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Magnifier Angel requests hand pose prediction, but none could be created", v7, 2u);
  }

  (*(v5 + 8))(v4, v6);

  v8 = v0[1];

  return v8();
}

uint64_t sub_10000B58C(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = type metadata accessor for Logger();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v4 = type metadata accessor for MAGOutputEventEnvironment();
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = type metadata accessor for MAGOutputEventSource();
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  v6 = type metadata accessor for MAGOutputEvent();
  v2[16] = v6;
  v2[17] = *(v6 - 8);
  v2[18] = swift_task_alloc();
  v7 = type metadata accessor for Date();
  v2[19] = v7;
  v2[20] = *(v7 - 8);
  v2[21] = swift_task_alloc();

  return _swift_task_switch(sub_10000B7BC, 0, 0);
}

uint64_t sub_10000B7BC()
{
  v1 = v0[5];
  v0[22] = *(v0[6] + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_imageCaptionService);
  type metadata accessor for MAGCVPixelBufferWrapper();
  swift_allocObject();

  v2 = v1;
  v3 = MAGCVPixelBufferWrapper.init(_:)();
  v0[23] = v3;
  v4 = swift_task_alloc();
  v0[24] = v4;
  *v4 = v0;
  v4[1] = sub_10000B8A0;

  return MAGImageCaptionService.generateImageCaption(for:)(v3);
}

uint64_t sub_10000B8A0(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 200) = v2;

  if (v2)
  {
    v7 = sub_10000BD20;
  }

  else
  {

    *(v6 + 208) = a2;
    *(v6 + 216) = a1;
    v7 = sub_10000B9E4;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10000B9E4(uint64_t a1)
{
  v2 = *(v1 + 160);
  v3 = *(v1 + 168);
  v4 = *(v1 + 152);
  v5 = *(v1 + 112);
  v13 = *(v1 + 104);
  v14 = *(v1 + 120);
  v16 = *(v1 + 96);
  v6 = *(v1 + 88);
  v15 = *(v1 + 80);
  v7 = *(v1 + 48);
  Date.init()();
  v8 = OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_lastAnnouncementTime;
  swift_beginAccess();
  (*(v2 + 40))(v7 + v8, v3, v4);
  swift_endAccess();
  *(v1 + 224) = *(v7 + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_outputEngine);

  String.localized.getter();

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  v9 = &enum case for MAGOutputEventSource.liveDetectionActivity(_:);
  if (!*(v1 + 240))
  {
    v9 = &enum case for MAGOutputEventSource.liveDetection(_:);
  }

  (*(v5 + 104))(v14, *v9, v13);
  (*(v6 + 104))(v16, enum case for MAGOutputEventEnvironment.angel(_:), v15);
  static MAGOutputEvent.imageCaptionResult(_:source:environment:)();

  (*(v6 + 8))(v16, v15);
  (*(v5 + 8))(v14, v13);
  type metadata accessor for MainActor();
  *(v1 + 232) = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10000BC50, v11, v10);
}

uint64_t sub_10000BC50()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];

  dispatch thunk of MAGOutputEngine.schedule(_:)();

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10000BD20()
{

  static AXLog.magangel.getter();
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
    _os_log_impl(&_mh_execute_header, v1, v2, "Magnifier Angel could not generate image descrioption: %@", v3, 0xCu);
    sub_10000E35C(v4, &unk_100050B50, &qword_100039760);
  }

  else
  {
  }

  (*(v0[8] + 8))(v0[9], v0[7]);

  v6 = v0[1];

  return v6();
}

uint64_t sub_10000BEEC()
{
  v1 = type metadata accessor for DispatchTimeInterval();
  v49 = *(v1 - 8);
  v50 = v1;
  __chkstk_darwin(v1);
  v48 = (v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v47 = type metadata accessor for DispatchWorkItemFlags();
  v45 = *(v47 - 8);
  __chkstk_darwin(v47);
  v4 = v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v42 = *(v5 - 8);
  v43 = v5;
  __chkstk_darwin(v5);
  v7 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchTime();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v34 - v13;
  v46 = OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_detectionModeFlashlightDispatchItem;
  if (*&v0[OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_detectionModeFlashlightDispatchItem])
  {

    dispatch thunk of DispatchWorkItem.cancel()();
  }

  v44 = sub_10000E844(0, &qword_100050420, OS_dispatch_queue_ptr);
  v36 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v39 = *(v9 + 8);
  v39(v12, v8);
  v15 = swift_allocObject();
  *(v15 + 16) = v0;
  v56 = sub_10000E164;
  v57 = v15;
  aBlock = _NSConcreteStackBlock;
  v53 = 1107296256;
  v54 = sub_10000288C;
  v55 = &unk_100049DD8;
  v16 = _Block_copy(&aBlock);
  v41 = v0;
  v17 = v0;
  v38 = v8;
  v35 = v17;

  static DispatchQoS.unspecified.getter();
  aBlock = &_swiftEmptyArrayStorage;
  sub_10000DC2C(&qword_10004F880, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  v37 = v9 + 8;
  v18 = sub_10000D3B8(&unk_100050430, &unk_100038570);
  v40 = v12;
  v34[1] = v18;
  sub_10000E1A4();
  v19 = v47;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v20 = v36;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v16);

  (*(v45 + 8))(v4, v19);
  (*(v42 + 8))(v7, v43);
  v21 = v8;
  v22 = v39;
  v39(v14, v21);
  v23 = swift_allocObject();
  v24 = v35;
  *(v23 + 16) = v35;
  v56 = sub_10000E250;
  v57 = v23;
  aBlock = _NSConcreteStackBlock;
  v53 = 1107296256;
  v54 = sub_10000288C;
  v55 = &unk_100049E28;
  _Block_copy(&aBlock);
  v51 = &_swiftEmptyArrayStorage;
  v25 = v24;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  type metadata accessor for DispatchWorkItem();
  swift_allocObject();
  v26 = DispatchWorkItem.init(flags:block:)();

  *&v41[v46] = v26;

  v27 = static OS_dispatch_queue.main.getter();
  v28 = v40;
  static DispatchTime.now()();
  v30 = v48;
  v29 = v49;
  *v48 = 15;
  v31 = v50;
  (*(v29 + 104))(v30, enum case for DispatchTimeInterval.seconds(_:), v50);
  + infix(_:_:)();
  (*(v29 + 8))(v30, v31);
  v32 = v38;
  v22(v28, v38);
  OS_dispatch_queue.asyncAfter(deadline:execute:)();

  return (v22)(v14, v32);
}

void sub_10000C548(uint64_t a1)
{
  v3 = sub_10000D3B8(&unk_10004F870, &qword_100038BF0);
  __chkstk_darwin(v3 - 8);
  v5 = &v16 - v4;
  v6 = [objc_opt_self() defaultDeviceWithMediaType:AVMediaTypeVideo];
  if (!v6)
  {
    return;
  }

  v7 = v6;
  if ([v6 torchMode] == 1 && a1 == 0)
  {
    v10 = &unk_100038568;
  }

  else
  {
    if ([v7 torchMode])
    {
      v9 = 0;
    }

    else
    {
      v9 = a1 == 1;
    }

    if (!v9)
    {
      goto LABEL_14;
    }

    v10 = &unk_100038558;
  }

  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v1;
  v13 = v1;
  sub_1000107D4(0, 0, v5, v10, v12);

LABEL_14:
  v17 = 0;
  if ([v7 lockForConfiguration:&v17])
  {
    v14 = v17;
    if ([v7 isTorchModeSupported:a1])
    {
      [v7 setTorchMode:a1];
    }

    [v7 unlockForConfiguration];
  }

  else
  {
    v15 = v17;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

uint64_t sub_10000C7A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for MAGOutputEventEnvironment();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  v6 = type metadata accessor for MAGOutputEventSource();
  v4[6] = v6;
  v4[7] = *(v6 - 8);
  v4[8] = swift_task_alloc();
  v7 = type metadata accessor for MAGOutputAnnouncement();
  v4[9] = v7;
  v4[10] = *(v7 - 8);
  v4[11] = swift_task_alloc();
  v8 = type metadata accessor for MAGOutputEvent();
  v4[12] = v8;
  v4[13] = *(v8 - 8);
  v4[14] = swift_task_alloc();

  return _swift_task_switch(sub_10000C97C, 0, 0);
}

uint64_t sub_10000C97C()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[8];
  v12 = v0[9];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[3];
  v0[15] = *(v0[2] + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_outputEngine);
  (*(v2 + 104))(v1, enum case for MAGOutputAnnouncement.automaticFlashlightOff(_:));
  (*(v5 + 104))(v3, enum case for MAGOutputEventSource.magAction(_:), v4);
  (*(v6 + 104))(v7, enum case for MAGOutputEventEnvironment.angel(_:), v8);

  static MAGOutputEvent.announcement(_:source:environment:)();
  (*(v6 + 8))(v7, v8);
  (*(v5 + 8))(v3, v4);
  (*(v2 + 8))(v1, v12);
  type metadata accessor for MainActor();
  v0[16] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10000EC54, v10, v9);
}

uint64_t sub_10000CB34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for MAGOutputEventEnvironment();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  v6 = type metadata accessor for MAGOutputEventSource();
  v4[6] = v6;
  v4[7] = *(v6 - 8);
  v4[8] = swift_task_alloc();
  v7 = type metadata accessor for MAGOutputAnnouncement();
  v4[9] = v7;
  v4[10] = *(v7 - 8);
  v4[11] = swift_task_alloc();
  v8 = type metadata accessor for MAGOutputEvent();
  v4[12] = v8;
  v4[13] = *(v8 - 8);
  v4[14] = swift_task_alloc();

  return _swift_task_switch(sub_10000CD08, 0, 0);
}

uint64_t sub_10000CD08()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[8];
  v12 = v0[9];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[3];
  v0[15] = *(v0[2] + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_outputEngine);
  (*(v2 + 104))(v1, enum case for MAGOutputAnnouncement.tooDarkAutomaticFlashlightOn(_:));
  (*(v5 + 104))(v3, enum case for MAGOutputEventSource.magAction(_:), v4);
  (*(v6 + 104))(v7, enum case for MAGOutputEventEnvironment.angel(_:), v8);

  static MAGOutputEvent.announcement(_:source:environment:)();
  (*(v6 + 8))(v7, v8);
  (*(v5 + 8))(v3, v4);
  (*(v2 + 8))(v1, v12);
  type metadata accessor for MainActor();
  v0[16] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10000CEC0, v10, v9);
}

uint64_t sub_10000CEC0()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];

  dispatch thunk of MAGOutputEngine.schedule(_:)();

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

id sub_10000CFC0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MAGAngelDetectionManager(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10000D210(uint64_t *a1)
{
  if (sub_10003518C(2, 26, 4, 0))
  {
    type metadata accessor for _TaskModifier2();
  }

  else
  {
    type metadata accessor for _TaskModifier();
  }

  return type metadata accessor for ModifiedContent();
}

uint64_t sub_10000D278(uint64_t *a1)
{
  if (sub_10003518C(2, 26, 4, 0))
  {
    type metadata accessor for _TaskModifier2();
    type metadata accessor for ModifiedContent();
    sub_10000D36C();
  }

  else
  {
    type metadata accessor for _TaskModifier();
    type metadata accessor for ModifiedContent();
    sub_10000DC2C(&qword_10004F668, &type metadata accessor for _TaskModifier, &protocol conformance descriptor for _TaskModifier);
  }

  return swift_getWitnessTable();
}

unint64_t sub_10000D36C()
{
  result = qword_10004F660;
  if (!qword_10004F660)
  {
    type metadata accessor for _TaskModifier2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004F660);
  }

  return result;
}

uint64_t sub_10000D3B8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void *sub_10000D400@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_10000D434@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10000D460(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_10000D4D8(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_10000D558@<X0>(void *a2@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

uint64_t sub_10000D5A0(uint64_t a1)
{
  v2 = sub_10000DC2C(&qword_10004F930, type metadata accessor for LaunchOptionsKey, &unk_1000388BC);
  v3 = sub_10000DC2C(&qword_10004F938, type metadata accessor for LaunchOptionsKey, &unk_1000386B8);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10000D65C(uint64_t a1)
{
  v2 = sub_10000DC2C(&qword_10004F920, type metadata accessor for Role, &unk_10003882C);
  v3 = sub_10000DC2C(&qword_10004F928, type metadata accessor for Role, &unk_1000387CC);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10000D718@<X0>(void *a2@<X8>)
{
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

uint64_t sub_10000D760(uint64_t a1)
{
  v2 = sub_10000DC2C(&qword_10004F838, type metadata accessor for SBUISystemApertureElementIdentifier, &unk_100038278);
  v3 = sub_10000DC2C(&qword_10004F840, type metadata accessor for SBUISystemApertureElementIdentifier, &unk_100038220);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10000D828()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.hashValue.getter();

  return v0;
}

uint64_t sub_10000D864(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_10000D8B8(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v1 = Hasher._finalize()();

  return v1;
}

uint64_t sub_10000D92C(void *a1, uint64_t *a2)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

uint64_t type metadata accessor for MAGAngelDetectionManager(uint64_t a1)
{
  result = qword_10004F780;
  if (!qword_10004F780)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000DA08(uint64_t a1)
{
  result = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

__n128 sub_10000DB14(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_10000DB24(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000DB44(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_10000DC2C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000DD04()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000DD3C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10000DDD4;

  return sub_10000A360(a1, v1);
}

uint64_t sub_10000DDD4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10000DF00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MAGAngelClientRequest(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000DF64(uint64_t a1)
{
  v2 = type metadata accessor for MAGAngelClientRequest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000DFC4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000EC40;

  return sub_10000CB34(a1, v4, v5, v6);
}

uint64_t sub_10000E078(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000EC40;

  return sub_10000C7A8(a1, v4, v5, v6);
}

uint64_t sub_10000E12C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000E18C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10000E1A4()
{
  result = qword_10004F890;
  if (!qword_10004F890)
  {
    sub_10000E208(&unk_100050430, &unk_100038570);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004F890);
  }

  return result;
}

uint64_t sub_10000E208(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void sub_10000E250()
{
  v1 = *(v0 + 16);
  sub_10000C548(0);
  *(v1 + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_torchStatus) = 0;
}

uint64_t sub_10000E284(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000D3B8(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000E2EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000D3B8(&qword_10004F8B8, &qword_100038598);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000E35C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10000D3B8(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000E3BC()
{

  return _swift_deallocObject(v0, 28, 7);
}

uint64_t sub_10000E400()
{

  return _swift_deallocObject(v0, 36, 7);
}

uint64_t sub_10000E44C()
{

  return _swift_deallocObject(v0, 44, 7);
}

uint64_t sub_10000E494()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000EC40;

  return sub_100007190(v2, v3, v4, v5);
}

uint64_t sub_10000E544()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000E594(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000EC40;

  return sub_1000061EC(a1, v4, v5, v6);
}

uint64_t sub_10000E648()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000E690(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000EC40;

  return sub_1000063A0(a1, v4, v5, v7, v6);
}

uint64_t sub_10000E750()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000E790(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000DDD4;

  return sub_100006284(a1, v4, v5, v6);
}

uint64_t sub_10000E844(uint64_t a1, unint64_t *a2, void *a3)
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

unint64_t sub_10000E88C()
{
  result = qword_10004F8D8;
  if (!qword_10004F8D8)
  {
    sub_10000E844(255, &qword_10004F8D0, NSNumber_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004F8D8);
  }

  return result;
}

void sub_10000E9E4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_10000EC80()
{
  v1 = OBJC_IVAR____TtC14MagnifierAngel27MAGAngelClientRequestStream_stream;
  v2 = sub_10000D3B8(&qword_100050480, &qword_100038948);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC14MagnifierAngel27MAGAngelClientRequestStream_continuation;
  v4 = sub_10000D3B8(&unk_1000506F0, &unk_100038540);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v5, v6);
}

void sub_10000ED9C(uint64_t a1)
{
  sub_10000EEF8(319, &qword_10004F9E8, &type metadata accessor for AsyncStream);
  if (v1 <= 0x3F)
  {
    sub_10000EEF8(319, &unk_10004F9F0, &type metadata accessor for AsyncStream.Continuation);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_10000EEC0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000EEF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for MAGAngelClientRequest(255);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_10000EF6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MAGSimulatedEvent();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 0xE)
  {
    return v5 - 13;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000EFEC(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 13);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for MAGSimulatedEvent();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_10000F074(uint64_t a1)
{
  v1 = type metadata accessor for MAGSimulatedEvent();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

id sub_10000F0CC(void *a1)
{
  v16.receiver = v1;
  v16.super_class = type metadata accessor for MAGAngelWindow();
  v3 = objc_msgSendSuper2(&v16, "initWithWindowScene:", a1);
  v4 = objc_opt_self();
  v5 = v3;
  v6 = [v4 clearColor];
  [v5 setBackgroundColor:v6];

  [v5 setClipsToBounds:1];
  sub_10000F388(v7, v8, v9);
  AnyView.init<A>(_:)();
  v10 = _makeUIHostingController(_:tracksContentSize:secure:)();

  objc_opt_self();
  v11 = swift_dynamicCastObjCClassUnconditional();
  result = [v11 view];
  if (result)
  {
    v13 = result;
    v14 = [v4 clearColor];
    [v13 setBackgroundColor:v14];

    v15 = v10;
    [v5 setRootViewController:v11];

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10000F330()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MAGAngelWindow();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10000F388(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10004FB40;
  if (!qword_10004FB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004FB40);
  }

  return result;
}

uint64_t sub_10000F3DC(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  v2[13] = a2;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v2[14] = v3;
  v2[15] = *(v3 - 8);
  v2[16] = swift_task_alloc();
  v4 = type metadata accessor for DispatchQoS();
  v2[17] = v4;
  v2[18] = *(v4 - 8);
  v2[19] = swift_task_alloc();
  v5 = type metadata accessor for DispatchTime();
  v2[20] = v5;
  v2[21] = *(v5 - 8);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v6 = type metadata accessor for MAGOutputEventEnvironment();
  v2[24] = v6;
  v2[25] = *(v6 - 8);
  v2[26] = swift_task_alloc();
  v7 = type metadata accessor for MAGOutputEventSource();
  v2[27] = v7;
  v2[28] = *(v7 - 8);
  v2[29] = swift_task_alloc();
  v8 = type metadata accessor for MAGOutputEvent();
  v2[30] = v8;
  v2[31] = *(v8 - 8);
  v2[32] = swift_task_alloc();
  v9 = type metadata accessor for MAGAdvancedEvent.AdvancedEventType();
  v2[33] = v9;
  v2[34] = *(v9 - 8);
  v2[35] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[36] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10000F704, v11, v10);
}

uint64_t sub_10000F704()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = v0[34];
    v4 = v0[35];
    v5 = v0[33];
    MAGAdvancedEvent.eventType.getter();
    v6 = (*(v3 + 88))(v4, v5);
    if (v6 == enum case for MAGAdvancedEvent.AdvancedEventType.didGenerateFramingGuidance(_:))
    {
      v37 = v0[32];
      v39 = v0[31];
      v41 = v0[30];
      v7 = v0[28];
      v8 = v0[29];
      v9 = v0[26];
      v10 = v0[27];
      v12 = v0[24];
      v11 = v0[25];
      (*(v0[34] + 96))(v0[35], v0[33]);
      (*(v7 + 104))(v8, enum case for MAGOutputEventSource.magAction(_:), v10);
      (*(v11 + 104))(v9, enum case for MAGOutputEventEnvironment.angel(_:), v12);

      static MAGOutputEvent.documentFraming(_:source:environment:)();

      (*(v11 + 8))(v9, v12);
      (*(v7 + 8))(v8, v10);
      dispatch thunk of MAGOutputEngine.schedule(_:)();

      (*(v39 + 8))(v37, v41);
    }

    else if (v6 == enum case for MAGAdvancedEvent.AdvancedEventType.didCompleteFraming(_:))
    {
      v13 = v0[31];
      v14 = v0[32];
      v15 = v0[29];
      v28 = v0[30];
      v17 = v0[27];
      v16 = v0[28];
      v43 = v2;
      v19 = v0[25];
      v18 = v0[26];
      v20 = v0[24];
      v29 = v0[22];
      v30 = v0[23];
      v31 = v0[21];
      v38 = v0[18];
      v40 = v0[17];
      v42 = v0[20];
      v33 = v0[19];
      v34 = v0[16];
      v36 = v0[15];
      v35 = v0[14];
      (*(v16 + 104))(v15, enum case for MAGOutputEventSource.magAction(_:), v17);
      (*(v19 + 104))(v18, enum case for MAGOutputEventEnvironment.angel(_:), v20);

      static MAGOutputEvent.didCompleteFraming(source:environment:)();
      (*(v19 + 8))(v18, v20);
      (*(v16 + 8))(v15, v17);
      dispatch thunk of MAGOutputEngine.schedule(_:)();

      (*(v13 + 8))(v14, v28);
      sub_10000FC70();
      v21 = static OS_dispatch_queue.main.getter();
      static DispatchTime.now()();
      + infix(_:_:)();
      v32 = *(v31 + 8);
      v32(v29, v42);
      v0[6] = sub_10000FCBC;
      v0[7] = 0;
      v0[2] = _NSConcreteStackBlock;
      v0[3] = 1107296256;
      v0[4] = sub_10000288C;
      v0[5] = &unk_10004A120;
      v22 = _Block_copy(v0 + 2);
      static DispatchQoS.unspecified.getter();
      v0[11] = &_swiftEmptyArrayStorage;
      sub_10000FCDC();
      sub_10000D3B8(&unk_100050430, &unk_100038570);
      sub_10000E1A4();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v22);

      (*(v36 + 8))(v34, v35);
      (*(v38 + 8))(v33, v40);
      v32(v30, v42);
    }

    else
    {
      v23 = v0[34];
      v24 = v0[35];
      v25 = v0[33];

      (*(v23 + 8))(v24, v25);
    }
  }

  v26 = v0[1];

  return v26();
}

unint64_t sub_10000FC70()
{
  result = qword_100050420;
  if (!qword_100050420)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100050420);
  }

  return result;
}

uint64_t sub_10000FCC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10000FCDC()
{
  result = qword_10004F880;
  if (!qword_10004F880)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004F880);
  }

  return result;
}

uint64_t sub_10000FDC0(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v3;
}

uint64_t sub_10000FE2C()
{
  type metadata accessor for MAGAngelPreferences(0);
  v0 = swift_allocObject();
  result = sub_100010514();
  qword_100050D70 = v0;
  return result;
}

uint64_t sub_10000FE6C@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v4;
  return result;
}

uint64_t sub_10000FEEC(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

unint64_t sub_10000FF60()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v7 == 1)
  {
    v0._object = 0x800000010003E190;
    v0._countAndFlagsBits = 0xD000000000000017;
    String.append(_:)(v0);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v7 == 1)
  {
    v1._countAndFlagsBits = 0xD000000000000019;
    v1._object = 0x800000010003E170;
    String.append(_:)(v1);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v7 == 1)
  {
    v2._object = 0x800000010003E150;
    v2._countAndFlagsBits = 0xD000000000000017;
    String.append(_:)(v2);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v7 == 1)
  {
    v3._countAndFlagsBits = 0xD00000000000001BLL;
    v3._object = 0x800000010003E130;
    String.append(_:)(v3);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v7 == 1)
  {
    v4._countAndFlagsBits = 0xD000000000000018;
    v4._object = 0x800000010003E110;
    String.append(_:)(v4);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v7 == 1)
  {
    v5._countAndFlagsBits = 0xD000000000000011;
    v5._object = 0x800000010003E0F0;
    String.append(_:)(v5);
  }

  return 0xD000000000000015;
}

uint64_t sub_100010264()
{
  v1 = OBJC_IVAR____TtC14MagnifierAngel19MAGAngelPreferences__textDetectionEnabled;
  v2 = sub_10000D3B8(&qword_10004FC68, &qword_100038BB8);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC14MagnifierAngel19MAGAngelPreferences__peopleDetectionEnabled, v2);
  v3(v0 + OBJC_IVAR____TtC14MagnifierAngel19MAGAngelPreferences__doorDetectionEnabled, v2);
  v3(v0 + OBJC_IVAR____TtC14MagnifierAngel19MAGAngelPreferences__objectUnderstandingEnabled, v2);
  v3(v0 + OBJC_IVAR____TtC14MagnifierAngel19MAGAngelPreferences__imageDescriptionsEnabled, v2);
  v3(v0 + OBJC_IVAR____TtC14MagnifierAngel19MAGAngelPreferences__pointSpeakEnabled, v2);
  v3(v0 + OBJC_IVAR____TtC14MagnifierAngel19MAGAngelPreferences__activityEnabled, v2);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v4, v5);
}

uint64_t type metadata accessor for MAGAngelPreferences(uint64_t a1)
{
  result = qword_10004FBA8;
  if (!qword_10004FBA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10001041C(uint64_t a1)
{
  sub_1000104B8();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1000104B8()
{
  if (!qword_10004FBB8)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_10004FBB8);
    }
  }
}

uint64_t sub_100010514()
{
  v1 = sub_10000D3B8(&qword_10004FC68, &qword_100038BB8);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14[-v3];
  v5 = OBJC_IVAR____TtC14MagnifierAngel19MAGAngelPreferences__textDetectionEnabled;
  v14[15] = 0;
  Published.init(initialValue:)();
  v6 = *(v2 + 32);
  v6(v0 + v5, v4, v1);
  v7 = OBJC_IVAR____TtC14MagnifierAngel19MAGAngelPreferences__peopleDetectionEnabled;
  v14[14] = 0;
  Published.init(initialValue:)();
  v6(v0 + v7, v4, v1);
  v8 = OBJC_IVAR____TtC14MagnifierAngel19MAGAngelPreferences__doorDetectionEnabled;
  v14[13] = 0;
  Published.init(initialValue:)();
  v6(v0 + v8, v4, v1);
  v9 = OBJC_IVAR____TtC14MagnifierAngel19MAGAngelPreferences__objectUnderstandingEnabled;
  v14[12] = 0;
  Published.init(initialValue:)();
  v6(v0 + v9, v4, v1);
  v10 = OBJC_IVAR____TtC14MagnifierAngel19MAGAngelPreferences__imageDescriptionsEnabled;
  v14[11] = 0;
  Published.init(initialValue:)();
  v6(v0 + v10, v4, v1);
  v11 = OBJC_IVAR____TtC14MagnifierAngel19MAGAngelPreferences__pointSpeakEnabled;
  v14[10] = 0;
  Published.init(initialValue:)();
  v6(v0 + v11, v4, v1);
  v12 = OBJC_IVAR____TtC14MagnifierAngel19MAGAngelPreferences__activityEnabled;
  v14[9] = 0;
  Published.init(initialValue:)();
  v6(v0 + v12, v4, v1);
  return v0;
}

uint64_t sub_10001074C@<X0>(uint64_t *a1@<X8>)
{
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000107D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10000D3B8(&unk_10004F870, &qword_100038BF0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100012760(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1000127D0(v11);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
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

      sub_1000127D0(a3);

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

  sub_1000127D0(a3);
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

uint64_t sub_100010A94()
{
  v0 = sub_10000D3B8(&qword_10004FC70, &qword_100038BE8);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v13 - v2);
  v14 = sub_10000D3B8(&unk_1000506F0, &unk_100038540);
  v4 = *(v14 - 8);
  __chkstk_darwin(v14);
  v6 = &v13 - v5;
  v7 = sub_10000D3B8(&qword_100050480, &qword_100038948);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v13 - v9;
  type metadata accessor for MAGAngelClientRequestStream(0);
  v11 = swift_allocObject();
  type metadata accessor for MAGAngelClientRequest(0);
  *v3 = 5;
  (*(v1 + 104))(v3, enum case for AsyncStream.Continuation.BufferingPolicy.bufferingNewest<A>(_:), v0);
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v1 + 8))(v3, v0);
  (*(v8 + 32))(v11 + OBJC_IVAR____TtC14MagnifierAngel27MAGAngelClientRequestStream_stream, v10, v7);
  result = (*(v4 + 32))(v11 + OBJC_IVAR____TtC14MagnifierAngel27MAGAngelClientRequestStream_continuation, v6, v14);
  qword_100050D78 = v11;
  return result;
}

char *sub_100010D2C()
{
  if (qword_10004F568 != -1)
  {
    swift_once();
  }

  v0 = objc_allocWithZone(type metadata accessor for MAGAngelConnectionManager());

  result = sub_100030BDC(v1);
  qword_100050D80 = result;
  return result;
}

uint64_t sub_100010DA4()
{
  v0 = [objc_opt_self() sharedInstance];
  type metadata accessor for MAGAudioService();
  swift_allocObject();
  result = MAGAudioService.init(audioSession:)();
  qword_100050D88 = result;
  return result;
}

uint64_t sub_100010E0C()
{
  if (qword_10004F578 != -1)
  {
    swift_once();
  }

  type metadata accessor for MAGOutputEngine();
  swift_allocObject();

  result = MAGOutputEngine.init(audioService:audioSessionAutomaticallyDeactivatesAfterSpeaking:)();
  qword_100050D90 = result;
  return result;
}

id sub_100010E90()
{
  result = [objc_allocWithZone(type metadata accessor for MAGPulseFeedbackProcessor()) init];
  static MAGAngelCompositionRoot.pulseFeedbackProcessor = result;
  return result;
}

uint64_t *MAGAngelCompositionRoot.pulseFeedbackProcessor.unsafeMutableAddressor()
{
  if (qword_10004F588 != -1)
  {
    swift_once();
  }

  return &static MAGAngelCompositionRoot.pulseFeedbackProcessor;
}

id static MAGAngelCompositionRoot.pulseFeedbackProcessor.getter()
{
  if (qword_10004F588 != -1)
  {
    swift_once();
  }

  v1 = static MAGAngelCompositionRoot.pulseFeedbackProcessor;

  return v1;
}

uint64_t sub_100010F70()
{
  if (qword_10004F578 != -1)
  {
    swift_once();
  }

  type metadata accessor for MAGSpeechRecognitionService();
  swift_allocObject();

  result = MAGSpeechRecognitionService.init(audioService:)();
  static MAGAngelCompositionRoot.speechRecognitionService = result;
  return result;
}

uint64_t *MAGAngelCompositionRoot.speechRecognitionService.unsafeMutableAddressor()
{
  if (qword_10004F590 != -1)
  {
    swift_once();
  }

  return &static MAGAngelCompositionRoot.speechRecognitionService;
}

uint64_t sub_100011100()
{
  type metadata accessor for MAGCaptureService();
  [objc_allocWithZone(AVCaptureSession) init];
  if (qword_10004F5A8 != -1)
  {
    swift_once();
  }

  result = MAGCaptureService.__allocating_init(captureSession:eventHandler:)();
  qword_100050DC0 = result;
  return result;
}

uint64_t sub_1000111D4()
{
  if (qword_10004F5B8 != -1)
  {
    swift_once();
  }

  v0 = qword_10004F5B0;

  if (v0 != -1)
  {
    swift_once();
  }

  v1 = qword_100050DC0;
  MAGCaptureService.captureSessionQueue.getter();

  v2 = objc_allocWithZone(type metadata accessor for MAGARService());
  result = MAGARService.init(eventHandler:captureSessionQueue:)();
  qword_100050DD0 = result;
  return result;
}

uint64_t sub_1000112A8()
{
  if (qword_10004F598 != -1)
  {
    swift_once();
  }

  v0 = qword_10004F5C0;

  if (v0 != -1)
  {
    swift_once();
  }

  v1 = qword_100050DD0;
  type metadata accessor for MAGDoorDetectionService();
  swift_allocObject();
  v2 = v1;
  result = MAGDoorDetectionService.init(textDetectionService:arService:)();
  qword_100050DD8 = result;
  return result;
}

uint64_t sub_1000113A8()
{
  if (qword_10004F5C0 != -1)
  {
    swift_once();
  }

  v0 = qword_10004F5D0;
  v1 = qword_100050DD0;
  if (v0 != -1)
  {
    swift_once();
  }

  v2 = qword_10004F588;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = static MAGAngelCompositionRoot.pulseFeedbackProcessor;
  v4 = objc_allocWithZone(type metadata accessor for MAGObjectUnderstandingService());
  v5 = v3;
  result = MAGObjectUnderstandingService.init(arService:eventHandler:pulseFeedbackProcessor:)();
  qword_100050DE8 = result;
  return result;
}

uint64_t *MAGAngelCompositionRoot.pointAndSpeakEventHandler.unsafeMutableAddressor()
{
  if (qword_10004F5E0 != -1)
  {
    swift_once();
  }

  return &static MAGAngelCompositionRoot.pointAndSpeakEventHandler;
}

uint64_t sub_10001155C()
{
  if (qword_10004F5E0 != -1)
  {
    swift_once();
  }

  v0 = qword_10004F5C0;

  if (v0 != -1)
  {
    swift_once();
  }

  v1 = qword_10004F598;
  v2 = qword_100050DD0;
  if (v1 != -1)
  {
    swift_once();
  }

  v3 = qword_10004F580;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = qword_10004F588;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = static MAGAngelCompositionRoot.pulseFeedbackProcessor;
  type metadata accessor for MAGPointAndSpeakService();
  swift_allocObject();
  v6 = v5;
  result = MAGPointAndSpeakService.init(eventHandler:arService:textDetectionService:outputEngine:pulseFeedbackProcessor:)();
  qword_100050DF8 = result;
  return result;
}

uint64_t sub_100011700()
{
  if (qword_10004F560 != -1)
  {
    swift_once();
  }

  qword_100050E00 = qword_100050D70;
}

id sub_100011764()
{
  static Detection.centerDetectionRectSize.getter();
  v1 = v0;
  v3 = v2;
  static Detection.labellingTolerance.getter();
  v5 = v4;
  static Detection.significantAreaThresholdMM.getter();
  v7 = v6;
  static Detection.closeDetectionFactor.getter();
  v9 = v8;
  v10 = objc_allocWithZone(PersonDetectionManager);
  LODWORD(v11) = v5;
  LODWORD(v12) = v7;
  LODWORD(v13) = v9;
  result = [v10 initWithCenterDetectionSize:v1 labellingTolerance:v3 significantAreaThresholdMM:v11 closeDetectionFactor:{v12, v13}];
  qword_100050E08 = result;
  return result;
}

uint64_t sub_10001181C()
{
  type metadata accessor for MAGVideoCaptioningService();
  result = MAGVideoCaptioningService.__allocating_init()();
  static MAGAngelCompositionRoot.videoCaptioningService = result;
  return result;
}

uint64_t *MAGAngelCompositionRoot.videoCaptioningService.unsafeMutableAddressor()
{
  if (qword_10004F608 != -1)
  {
    swift_once();
  }

  return &static MAGAngelCompositionRoot.videoCaptioningService;
}

uint64_t sub_1000118C4()
{
  if (qword_10004F5C0 != -1)
  {
    swift_once();
  }

  v0 = qword_100050DD0;
  type metadata accessor for MAGFrameProviderService();
  swift_allocObject();
  v1 = v0;
  result = MAGFrameProviderService.init(arService:)();
  static MAGAngelCompositionRoot.frameProviderService = result;
  return result;
}

uint64_t *MAGAngelCompositionRoot.frameProviderService.unsafeMutableAddressor()
{
  if (qword_10004F610 != -1)
  {
    swift_once();
  }

  return &static MAGAngelCompositionRoot.frameProviderService;
}

uint64_t *MAGAngelCompositionRoot.followUpContext.unsafeMutableAddressor()
{
  if (qword_10004F618 != -1)
  {
    swift_once();
  }

  return &static MAGAngelCompositionRoot.followUpContext;
}

uint64_t sub_100011A5C()
{
  if (qword_10004F628 != -1)
  {
    swift_once();
  }

  v0 = qword_10004F610;

  if (v0 != -1)
  {
    swift_once();
  }

  v1 = qword_10004F5B0;

  if (v1 != -1)
  {
    swift_once();
  }

  v2 = qword_100050DC0;
  type metadata accessor for MAGDocumentFramingService();
  swift_allocObject();
  v3 = v2;
  result = MAGDocumentFramingService.init(eventHandler:frameProviderService:captureService:)();
  static MAGAngelCompositionRoot.documentFramingService = result;
  return result;
}

uint64_t *MAGAngelCompositionRoot.advancedEventHandler.unsafeMutableAddressor()
{
  if (qword_10004F628 != -1)
  {
    swift_once();
  }

  return &static MAGAngelCompositionRoot.advancedEventHandler;
}

uint64_t *MAGAngelCompositionRoot.documentFramingService.unsafeMutableAddressor()
{
  if (qword_10004F620 != -1)
  {
    swift_once();
  }

  return &static MAGAngelCompositionRoot.documentFramingService;
}

uint64_t sub_100011C68(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  a2(0);
  swift_allocObject();
  result = a3();
  *a4 = result;
  return result;
}

uint64_t sub_100011CE0(void *a1, uint64_t *a2, uint64_t a3)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

uint64_t sub_100011D50()
{
  v0 = sub_10000D3B8(&unk_10004F870, &qword_100038BF0);
  __chkstk_darwin(v0 - 8);
  v52 = &v41 - v1;
  if (qword_10004F5C0 != -1)
  {
    swift_once();
  }

  v2 = qword_10004F598;
  v51 = qword_100050DD0;
  if (v2 != -1)
  {
    swift_once();
  }

  v3 = qword_10004F580;
  v4 = qword_100050DA8;

  if (v3 != -1)
  {
    swift_once();
  }

  v5 = qword_10004F5F0;
  v6 = qword_100050D90;

  if (v5 != -1)
  {
    swift_once();
  }

  v7 = qword_10004F5F8;
  v8 = qword_100050E00;

  if (v7 != -1)
  {
    swift_once();
  }

  v9 = qword_10004F600;
  v50 = qword_100050E08;
  if (v9 != -1)
  {
    swift_once();
  }

  v10 = qword_10004F608;
  v53 = qword_100050E10;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = qword_10004F5C8;
  v12 = static MAGAngelCompositionRoot.videoCaptioningService;

  if (v11 != -1)
  {
    swift_once();
  }

  v13 = qword_10004F5D8;
  v55 = qword_100050DD8;

  if (v13 != -1)
  {
    swift_once();
  }

  v14 = qword_10004F5E8;
  v49 = qword_100050DE8;
  if (v14 != -1)
  {
    swift_once();
  }

  v15 = qword_10004F5A0;
  v57 = qword_100050DF8;

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = qword_10004F5E0;
  v59 = qword_100050DB0;

  if (v16 != -1)
  {
    swift_once();
  }

  v17 = qword_10004F588;
  v58 = static MAGAngelCompositionRoot.pointAndSpeakEventHandler;

  if (v17 != -1)
  {
    swift_once();
  }

  v18 = qword_10004F5B8;
  v19 = static MAGAngelCompositionRoot.pulseFeedbackProcessor;
  if (v18 != -1)
  {
    swift_once();
  }

  v20 = qword_10004F5D0;
  v56 = qword_100050DC8;

  if (v20 != -1)
  {
    swift_once();
  }

  v21 = qword_10004F568;
  v54 = qword_100050DE0;

  if (v21 != -1)
  {
    swift_once();
  }

  v46 = qword_100050D78;
  v48 = type metadata accessor for MAGAngelDetectionManager(0);
  v22 = objc_allocWithZone(v48);
  *(v22 + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_detectionModeFlashlightDispatchItem) = 0;
  v23 = OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_scene;
  v45 = OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_scene;
  v24 = objc_allocWithZone(SCNScene);

  *(v22 + v23) = [v24 init];
  v25 = OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_sceneRenderer;
  v43 = OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_sceneRenderer;
  *(v22 + v25) = [objc_opt_self() rendererWithDevice:0 options:0];
  Date.init()();
  Date.init()();
  *(v22 + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_torchStatus) = 0;
  *(v22 + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_lastPixelBuffer) = 0;
  *(v22 + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_nextEligibleDetector) = 0;
  Date.init()();
  v26 = OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_luminanceManager;
  *(v22 + v26) = [objc_allocWithZone(ARFrameLuminanceManager) init];
  *(v22 + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_maxAngelRuntime) = 0x409C200000000000;
  *(v22 + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_angelInactiveTimeOut) = 0x404E000000000000;
  *(v22 + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_lastFramePixelValue) = 0;
  *(v22 + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_consecutiveSimilarFrames) = 0;
  v27 = OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_peopleSessionDispatchQueue;
  type metadata accessor for AXSerialQueue();
  *(v22 + v27) = AXSerialQueue.__allocating_init()();
  v29 = v50;
  v28 = v51;
  *(v22 + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_arService) = v51;
  *(v22 + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_textDetectionService) = v4;
  *(v22 + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_outputEngine) = v6;
  v44 = v8;
  *(v22 + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_angelPreferences) = v8;
  *(v22 + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_personDetectionManager) = v29;
  *(v22 + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_anstPersonDetectionManager) = v53;
  *(v22 + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_videoCaptioningService) = v12;
  v47 = v12;
  *(v22 + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_doorDetectionService) = v55;
  v30 = v49;
  *(v22 + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_objectUnderstandingService) = v49;
  *(v22 + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_pointAndSpeakService) = v57;
  v31 = v58;
  *(v22 + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_imageCaptionService) = v59;
  *(v22 + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_pointAndSpeakEventHandler) = v31;
  v42 = v19;
  *(v22 + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_pulseFeedbackProcessor) = v19;
  *(v22 + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_arEventHandler) = v56;
  *(v22 + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_ouEventHandler) = v54;
  *(v22 + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_clientRequestStream) = v46;
  v43 = *&v43[v22];
  v45 = *&v45[v22];
  v51 = v28;

  v50 = v29;

  v49 = v30;

  v32 = v42;

  v33 = v43;
  v34 = v45;
  [v33 setScene:v34];

  v60.receiver = v22;
  v60.super_class = v48;
  v35 = objc_msgSendSuper2(&v60, "init");
  v36 = type metadata accessor for TaskPriority();
  v37 = v52;
  (*(*(v36 - 8) + 56))(v52, 1, 1, v36);
  v38 = swift_allocObject();
  v38[2] = 0;
  v38[3] = 0;
  v38[4] = v35;
  v39 = v35;
  sub_1000107D4(0, 0, v37, &unk_100038BF8, v38);

  sub_1000023E8();

  qword_100050E40 = v39;
  return result;
}

uint64_t sub_10001266C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000126AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000DDD4;

  return sub_100002210(a1, v4, v5, v6);
}

uint64_t sub_100012760(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000D3B8(&unk_10004F870, &qword_100038BF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000127D0(uint64_t a1)
{
  v2 = sub_10000D3B8(&unk_10004F870, &qword_100038BF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100012838(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100012930;

  return v6(a1);
}

uint64_t sub_100012930()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100012A28()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100012A60(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000EC40;

  return sub_100012838(a1, v4);
}

uint64_t sub_100012B18(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000DDD4;

  return sub_100012838(a1, v4);
}

void sub_100012BF0()
{
  if (qword_10004F570 != -1)
  {
    swift_once();
  }

  sub_100031180();
  v0 = static CommandLine.argc.getter();
  v1 = static CommandLine.unsafeArgv.getter();
  sub_100012D08();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v3 = String._bridgeToObjectiveC()();
  }

  type metadata accessor for MAGAngelAppDelegate(0);
  v4 = swift_getObjCClassFromMetadata();
  v5 = NSStringFromClass(v4);
  if (!v5)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    delegateClassNamea = String._bridgeToObjectiveC()();

    v5 = delegateClassNamea;
  }

  delegateClassName = v5;
  UIApplicationMain(v0, v1, v3, v5);
}

unint64_t sub_100012D08()
{
  result = qword_10004FC78;
  if (!qword_10004FC78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10004FC78);
  }

  return result;
}

__n128 sub_100012D64(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100012D88(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_100012DD0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100012E44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Control();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100012F04(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Control();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100012FC8(uint64_t a1)
{
  sub_10001305C(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Control();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10001305C(uint64_t a1)
{
  if (!qword_10004FCE8)
  {
    type metadata accessor for MAGAngelPreferences(255);
    sub_10001B510(&unk_10004FCF0, type metadata accessor for MAGAngelPreferences, &unk_100038984);
    v1 = type metadata accessor for StateObject();
    if (!v2)
    {
      atomic_store(v1, &qword_10004FCE8);
    }
  }
}

uint64_t sub_1000131E8@<X0>(_BYTE *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a4 = v6;
  return result;
}

uint64_t sub_100013278(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_100013324(uint64_t a1, SEL *a2, uint64_t *a3)
{
  v4 = [objc_opt_self() *a2];
  result = Color.init(_:)();
  *a3 = result;
  return result;
}

uint64_t sub_10001336C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for LiveRecognitionView(0);
  __chkstk_darwin(v2 - 8);
  v4 = (v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_10000D3B8(&qword_10004FF50, &qword_100039200);
  v6 = v5 - 8;
  __chkstk_darwin(v5);
  v8 = v16 - v7;
  sub_10001353C(v4);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10001C8E4(v4, v8, type metadata accessor for LiveRecognitionView);
  v9 = &v8[*(v6 + 44)];
  v10 = v16[5];
  *(v9 + 4) = v16[4];
  *(v9 + 5) = v10;
  *(v9 + 6) = v16[6];
  v11 = v16[1];
  *v9 = v16[0];
  *(v9 + 1) = v11;
  v12 = v16[3];
  *(v9 + 2) = v16[2];
  *(v9 + 3) = v12;
  static Color.black.getter();
  v13 = Color.opacity(_:)();

  LOBYTE(v4) = static Edge.Set.all.getter();
  sub_10000E284(v8, a1, &qword_10004FF50, &qword_100039200);
  result = sub_10000D3B8(&qword_10004FF58, &qword_100039208);
  v15 = a1 + *(result + 36);
  *v15 = v13;
  *(v15 + 8) = v4;
  return result;
}

void *sub_10001353C@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_10000D3B8(&qword_10004FF60, &qword_100039240);
  swift_storeEnumTagMultiPayload();
  v2 = type metadata accessor for LiveRecognitionView(0);
  v3 = a1 + v2[5];
  *v3 = sub_1000136F8;
  *(v3 + 1) = 0;
  v3[16] = 0;
  AccessibilityFocusState.init<>()();
  v4 = a1 + v2[7];
  State.init(wrappedValue:)();
  *v4 = v10;
  *(v4 + 1) = v11;
  v5 = a1 + v2[8];
  State.init(wrappedValue:)();
  *v5 = v10;
  *(v5 + 1) = v11;
  v6 = (a1 + v2[9]);
  sub_10000D3B8(&qword_10004FF68, &qword_100039248);
  State.init(wrappedValue:)();
  *v6 = v10;
  v6[1] = v11;
  v7 = a1 + v2[10];
  State.init(wrappedValue:)();
  *v7 = v10;
  *(v7 + 1) = v11;
  v8 = a1 + v2[11];
  result = State.init(wrappedValue:)();
  *v8 = v10;
  *(v8 + 1) = v11;
  return result;
}

uint64_t sub_1000136F8()
{
  if (qword_10004F5F0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_100013754@<X0>(uint64_t a1@<X8>)
{
  v85 = a1;
  v83 = sub_10000D3B8(&qword_100050070, &qword_1000392E0);
  v2 = __chkstk_darwin(v83);
  v84 = v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v82 = v72 - v4;
  v5 = sub_10000D3B8(&qword_100050078, &qword_1000392E8);
  v80 = *(v5 - 8);
  v81 = v5;
  __chkstk_darwin(v5);
  v90 = v72 - v6;
  v89 = sub_10000D3B8(&qword_10004F670, &qword_1000392F0);
  v87 = *(v89 - 1);
  __chkstk_darwin(v89);
  v8 = (v72 - v7);
  v9 = sub_10000D3B8(&qword_100050080, &qword_1000392F8);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v72 - v11;
  v13 = sub_10000D3B8(&qword_100050088, &qword_100039300);
  __chkstk_darwin(v13);
  v15 = v72 - v14;
  *v15 = static HorizontalAlignment.center.getter();
  *(v15 + 1) = 0;
  v15[16] = 1;
  v16 = &v15[*(sub_10000D3B8(&qword_100050090, &qword_100039308) + 44)];
  v88 = v1;
  sub_100014324(v1, v16);
  v15[*(v13 + 36)] = 1;
  v17 = sub_10001CFEC();
  View.allowsSecureDrawing()();
  sub_10000E35C(v15, &qword_100050088, &qword_100039300);
  v18 = type metadata accessor for LiveRecognitionView(0);
  sub_10000D3B8(&qword_10004FF78, &qword_100039258);
  AccessibilityFocusState.projectedValue.getter();
  v93 = v13;
  v94 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v86 = v8;
  v78 = OpaqueTypeConformance2;
  View.accessibilityFocused(_:)();

  v20 = *(v10 + 8);
  v79 = v9;
  v21 = v20(v12, v9);
  v22 = *(v18 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  sub_10001BD74(v88, v72 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LiveRecognitionView);
  type metadata accessor for MainActor();
  v24 = static MainActor.shared.getter();
  v25 = *(v22 + 80);
  v26 = ~v25;
  v27 = (v25 + 32) & ~v25;
  v77 = v23;
  v91 = v25;
  v28 = swift_allocObject();
  *(v28 + 16) = v24;
  *(v28 + 24) = &protocol witness table for MainActor;
  sub_10001C8E4(v72 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), v28 + v27, type metadata accessor for LiveRecognitionView);
  v29 = type metadata accessor for TaskPriority();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  __chkstk_darwin(v29);
  v32 = (v31 + 15) & 0xFFFFFFFFFFFFFFF0;
  v33 = v72 - v32;
  static TaskPriority.userInitiated.getter();
  if (sub_10003518C(2, 26, 4, 0))
  {
    v75 = type metadata accessor for _TaskModifier2();
    v76 = v72;
    v74 = *(v75 - 8);
    __chkstk_darwin(v75);
    v73 = (v72 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
    v93 = 0;
    v94 = 0xE000000000000000;
    _StringGuts.grow(_:)(17);

    v93 = 0xD000000000000032;
    v94 = 0x800000010003E230;
    v92 = 207;
    v35._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v35);

    __chkstk_darwin(v36);
    (*(v30 + 16))(v72 - v32, v72 - v32, v29);
    v37 = v73;
    _s7SwiftUI14_TaskModifier2V4name18executorPreference8priority6actionACSS_Sch_pSgScPyyYaYAcntcfC();
    (*(v30 + 8))(v33, v29);
    v38 = v90;
    (*(v87 + 32))(v90, v86, v89);
    v39 = sub_10000D3B8(&qword_10004F678, &qword_100037F90);
    (*(v74 + 32))(&v38[*(v39 + 36)], v37, v75);
  }

  else
  {
    v40 = sub_10000D3B8(&qword_10004F680, &qword_100037F98);
    v41 = v90;
    v42 = &v90[*(v40 + 36)];
    v43 = type metadata accessor for _TaskModifier();
    (*(v30 + 32))(&v42[*(v43 + 20)], v72 - v32, v29);
    *v42 = &unk_100039320;
    *(v42 + 1) = v28;
    (*(v87 + 32))(v41, v86, v89);
  }

  v87 = type metadata accessor for AccessibilityActionKind();
  v76 = v72;
  v44 = *(v87 - 8);
  v45 = *(v44 + 64);
  __chkstk_darwin(v87);
  v75 = (v45 + 15) & 0xFFFFFFFFFFFFFFF0;
  v46 = v72 - v75;
  v47 = static AccessibilityActionKind.escape.getter();
  v72[1] = v72;
  v48 = v77;
  __chkstk_darwin(v47);
  v74 = (v48 + 15) & 0xFFFFFFFFFFFFFFF0;
  v49 = v72 - v74;
  v73 = type metadata accessor for LiveRecognitionView;
  v50 = v88;
  sub_10001BD74(v88, v72 - v74, type metadata accessor for LiveRecognitionView);
  v51 = (v91 + 16) & v26;
  v52 = swift_allocObject();
  v86 = type metadata accessor for LiveRecognitionView;
  sub_10001C8E4(v49, v52 + v51, type metadata accessor for LiveRecognitionView);
  v93 = v79;
  v94 = v78;
  v53 = swift_getOpaqueTypeConformance2();
  v93 = v89;
  v94 = v53;
  swift_getOpaqueTypeConformance2();
  v55 = v81;
  v54 = v82;
  v56 = v90;
  View.accessibilityAction(_:_:)();

  v57 = *(v44 + 8);
  v79 = v44 + 8;
  v89 = v57;
  v57(v46, v87);
  v58 = (*(v80 + 8))(v56, v55);
  v90 = v72;
  __chkstk_darwin(v58);
  v59 = v72 - v75;
  v60 = static AccessibilityActionKind.magicTap.getter();
  v81 = v72;
  __chkstk_darwin(v60);
  v61 = v74;
  v62 = v50;
  v63 = v50;
  v64 = v73;
  sub_10001BD74(v63, v72 - v74, v73);
  v65 = swift_allocObject();
  sub_10001C8E4(v72 - v61, v65 + v51, v86);
  v66 = v84;
  ModifiedContent<>.accessibilityAction(_:_:)();

  v89(v59, v87);
  sub_10000E35C(v54, &qword_100050070, &qword_1000392E0);
  v67 = sub_100016ED8();
  __chkstk_darwin(v67);
  sub_10001BD74(v62, v72 - v61, v64);
  v68 = swift_allocObject();
  sub_10001C8E4(v72 - v61, v68 + v51, v86);
  v69 = v85;
  sub_10000E284(v66, v85, &qword_100050070, &qword_1000392E0);
  result = sub_10000D3B8(&qword_1000500B8, &unk_100039330);
  *(v69 + *(result + 52)) = v67;
  v71 = (v69 + *(result + 56));
  *v71 = sub_10001D6D0;
  v71[1] = v68;
  return result;
}

uint64_t sub_100014324@<X0>(uint64_t (*a1)(uint64_t a1)@<X0>, void *a2@<X8>)
{
  v72 = a2;
  v71 = sub_10000D3B8(&qword_1000500E8, &qword_100039350);
  __chkstk_darwin(v71);
  v67 = (v61 - v3);
  v68 = type metadata accessor for MAGDetectedTextView();
  v66 = *(v68 - 8);
  __chkstk_darwin(v68);
  v65 = v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_10000D3B8(&qword_1000500F0, &qword_100039358);
  __chkstk_darwin(v69);
  v6 = v61 - v5;
  v7 = sub_10000D3B8(&qword_1000500F8, &qword_100039360);
  __chkstk_darwin(v7);
  v9 = v61 - v8;
  v10 = sub_10000D3B8(&qword_100050100, &qword_100039368);
  __chkstk_darwin(v10);
  v12 = v61 - v11;
  v13 = sub_10000D3B8(&qword_100050108, &qword_100039370);
  v14 = __chkstk_darwin(v13 - 8);
  v70 = v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = v61 - v16;
  v18 = type metadata accessor for LiveRecognitionView(0);
  v19 = a1 + v18[10];
  v20 = *v19;
  v21 = *(v19 + 1);
  LOBYTE(v73) = v20;
  v74 = v21;
  sub_10000D3B8(&qword_10004FE00, &qword_100038F00);
  State.wrappedValue.getter();
  if (v75 == 1)
  {
    swift_storeEnumTagMultiPayload();
    sub_10001B510(&qword_100050140, &type metadata accessor for MAGDetectedTextView, &protocol conformance descriptor for MAGDetectedTextView);
    _ConditionalContent<>.init(storage:)();
    sub_10001DA50(v12, v6, &qword_100050100, &qword_100039368);
    swift_storeEnumTagMultiPayload();
    sub_10001D740();
    sub_10001C6B4(&qword_100050148, &qword_1000500E8, &qword_100039350, sub_10001D7FC);
    _ConditionalContent<>.init(storage:)();
    sub_10000E35C(v12, &qword_100050100, &qword_100039368);
  }

  else
  {
    v61[1] = v7;
    v62 = v9;
    v63 = v12;
    v64 = v10;
    v22 = v68;
    v23 = a1 + v18[8];
    v24 = *v23;
    v25 = *(v23 + 1);
    LOBYTE(v73) = *v23;
    v74 = v25;
    State.wrappedValue.getter();
    if (v75 == 1)
    {
      v26 = (a1 + v18[9]);
      v28 = *v26;
      v27 = v26[1];
      v73 = v28;
      v74 = v27;
      sub_10000D3B8(&qword_100050190, &qword_1000393B8);
      State.wrappedValue.getter();
      LOBYTE(v75) = v24;
      v76 = v25;
      State.projectedValue.getter();
      v29 = v65;
      MAGDetectedTextView.init(textBlocks:showingTextView:)();
      v30 = v66;
      (*(v66 + 16))(v62, v29, v22);
      swift_storeEnumTagMultiPayload();
      sub_10001B510(&qword_100050140, &type metadata accessor for MAGDetectedTextView, &protocol conformance descriptor for MAGDetectedTextView);
      v31 = v63;
      _ConditionalContent<>.init(storage:)();
      sub_10001DA50(v31, v6, &qword_100050100, &qword_100039368);
      swift_storeEnumTagMultiPayload();
      sub_10001D740();
      sub_10001C6B4(&qword_100050148, &qword_1000500E8, &qword_100039350, sub_10001D7FC);
      _ConditionalContent<>.init(storage:)();
      sub_10000E35C(v31, &qword_100050100, &qword_100039368);
      (*(v30 + 8))(v29, v22);
    }

    else
    {
      v32 = static Alignment.center.getter();
      v33 = v67;
      *v67 = v32;
      *(v33 + 8) = v34;
      v35 = v33 + *(sub_10000D3B8(&qword_100050110, &qword_100039378) + 44);
      *v35 = static HorizontalAlignment.center.getter();
      *(v35 + 8) = 0;
      *(v35 + 16) = 1;
      v36 = sub_10000D3B8(&qword_100050118, &qword_100039380);
      sub_100014BD4(a1, v35 + *(v36 + 44));
      v37 = *(sub_10000D3B8(&qword_100050120, &qword_100039388) + 36);
      v38 = enum case for ColorScheme.dark(_:);
      v39 = type metadata accessor for ColorScheme();
      v40 = *(v39 - 8);
      (*(v40 + 104))(v33 + v37, v38, v39);
      (*(v40 + 56))(v33 + v37, 0, 1, v39);
      v41 = v33 + *(sub_10000D3B8(&qword_100050128, &qword_100039390) + 36);
      static Material.thin.getter();
      v42 = sub_10000D3B8(&qword_100050130, &qword_100039398);
      v43 = (v41 + *(v42 + 52));
      v44 = *(type metadata accessor for RoundedRectangle() + 20);
      v45 = enum case for RoundedCornerStyle.continuous(_:);
      v46 = type metadata accessor for RoundedCornerStyle();
      (*(*(v46 - 8) + 104))(&v43[v44], v45, v46);
      __asm { FMOV            V0.2D, #25.0 }

      *v43 = _Q0;
      *(v41 + *(v42 + 56)) = 256;
      LOBYTE(v41) = static Edge.Set.all.getter();
      EdgeInsets.init(_all:)();
      v52 = v33 + *(v71 + 36);
      *v52 = v41;
      *(v52 + 8) = v53;
      *(v52 + 16) = v54;
      *(v52 + 24) = v55;
      *(v52 + 32) = v56;
      *(v52 + 40) = 0;
      sub_10001DA50(v33, v6, &qword_1000500E8, &qword_100039350);
      swift_storeEnumTagMultiPayload();
      sub_10001D740();
      sub_10001C6B4(&qword_100050148, &qword_1000500E8, &qword_100039350, sub_10001D7FC);
      _ConditionalContent<>.init(storage:)();
      sub_10000E35C(v33, &qword_1000500E8, &qword_100039350);
    }
  }

  v57 = v70;
  sub_10001DA50(v17, v70, &qword_100050108, &qword_100039370);
  v58 = v72;
  *v72 = 0;
  *(v58 + 8) = 1;
  v59 = sub_10000D3B8(&qword_100050188, &qword_1000393B0);
  sub_10001DA50(v57, v58 + *(v59 + 48), &qword_100050108, &qword_100039370);
  sub_10000E35C(v17, &qword_100050108, &qword_100039370);
  return sub_10000E35C(v57, &qword_100050108, &qword_100039370);
}

uint64_t sub_100014BD4@<X0>(uint64_t (*a1)(uint64_t a1)@<X0>, uint64_t a2@<X8>)
{
  v62 = a1;
  v63 = a2;
  *(&v61 + 1) = sub_10000D3B8(&qword_100050198, &qword_1000393C0);
  v2 = __chkstk_darwin(*(&v61 + 1));
  v66 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v65 = (&v55 - v4);
  v5 = type metadata accessor for AccessibilityChildBehavior();
  v57 = *(v5 - 8);
  v58 = v5;
  __chkstk_darwin(v5);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000D3B8(&qword_1000501A0, &qword_1000393C8);
  v60 = *(v8 - 8);
  *&v61 = v8;
  __chkstk_darwin(v8);
  v59 = &v55 - v9;
  v10 = sub_10000D3B8(&qword_1000501A8, &qword_1000393D0);
  v11 = __chkstk_darwin(v10 - 8);
  v64 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v67 = &v55 - v13;
  v56 = static VerticalAlignment.center.getter();
  v104 = 1;
  sub_100015508(v79);
  v116 = v79[10];
  v117 = v79[11];
  v112 = v79[6];
  v113 = v79[7];
  v115 = v79[9];
  v114 = v79[8];
  v108 = v79[2];
  v109 = v79[3];
  v111 = v79[5];
  v110 = v79[4];
  v107 = v79[1];
  v106 = v79[0];
  v119[10] = v79[10];
  v119[11] = v79[11];
  v119[6] = v79[6];
  v119[7] = v79[7];
  v119[9] = v79[9];
  v119[8] = v79[8];
  v119[2] = v79[2];
  v119[3] = v79[3];
  v119[5] = v79[5];
  v119[4] = v79[4];
  v118 = v79[12];
  v120 = v79[12];
  v119[1] = v79[1];
  v119[0] = v79[0];
  sub_10001DA50(&v106, v78, &qword_1000501B0, &qword_1000393D8);
  sub_10000E35C(v119, &qword_1000501B0, &qword_1000393D8);
  *&v103[151] = v115;
  *&v103[167] = v116;
  *&v103[183] = v117;
  *&v103[87] = v111;
  *&v103[103] = v112;
  *&v103[119] = v113;
  *&v103[135] = v114;
  *&v103[23] = v107;
  *&v103[39] = v108;
  *&v103[55] = v109;
  *&v103[71] = v110;
  v103[199] = v118;
  *&v103[7] = v106;
  v14 = v104;
  sub_10000D3B8(&qword_10004FE08, &qword_100038F08);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_100038C20;
  v16 = static Edge.Set.leading.getter();
  *(v15 + 32) = v16;
  v17 = static Edge.Set.top.getter();
  *(v15 + 33) = v17;
  v18 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v16)
  {
    v18 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v17)
  {
    v18 = Edge.Set.init(rawValue:)();
  }

  EdgeInsets.init(_all:)();
  *(&v78[10] + 1) = *&v103[144];
  *(&v78[11] + 1) = *&v103[160];
  *(&v78[12] + 1) = *&v103[176];
  *(&v78[6] + 1) = *&v103[80];
  *(&v78[7] + 1) = *&v103[96];
  *(&v78[8] + 1) = *&v103[112];
  *(&v78[9] + 1) = *&v103[128];
  *(&v78[2] + 1) = *&v103[16];
  *(&v78[3] + 1) = *&v103[32];
  *(&v78[4] + 1) = *&v103[48];
  *(&v78[5] + 1) = *&v103[64];
  v105 = 0;
  v78[0] = v56;
  LOBYTE(v78[1]) = v14;
  *(&v78[13] + 1) = *&v103[192];
  *(&v78[1] + 1) = *v103;
  LOBYTE(v78[14]) = v18;
  *(&v78[14] + 1) = v19;
  *&v78[15] = v20;
  *(&v78[15] + 1) = v21;
  *&v78[16] = v22;
  BYTE8(v78[16]) = 0;
  static AccessibilityChildBehavior.combine.getter();
  v23 = sub_10000D3B8(&qword_1000501B8, &qword_1000393E0);
  v24 = sub_10001D998();
  v25 = v59;
  View.accessibilityElement(children:)();
  (*(v57 + 8))(v7, v58);
  memcpy(v79, v78, 0x109uLL);
  sub_10000E35C(v79, &qword_1000501B8, &qword_1000393E0);
  *&v78[0] = String.localized.getter();
  *(&v78[0] + 1) = v26;
  *&v92 = v23;
  *(&v92 + 1) = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_10001B928(OpaqueTypeConformance2, v28, v29);
  v30 = v67;
  v31 = v61;
  View.accessibilityLabel<A>(_:)();

  (*(v60 + 8))(v25, v31);
  v32 = static VerticalAlignment.center.getter();
  v33 = v65;
  *v65 = v32;
  *(v33 + 8) = 0;
  *(v33 + 16) = 1;
  v34 = sub_10000D3B8(&qword_1000501D8, &qword_1000393F0);
  sub_100015BFC(v62, v33 + *(v34 + 44));
  v35 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v36 = v33 + *(*(&v61 + 1) + 36);
  *v36 = v35;
  *(v36 + 8) = v37;
  *(v36 + 16) = v38;
  *(v36 + 24) = v39;
  *(v36 + 32) = v40;
  *(v36 + 40) = 0;
  *&v61 = static Alignment.center.getter();
  *(&v61 + 1) = v41;
  sub_100016644(v78);
  v88 = v78[8];
  v89[0] = v78[9];
  *(v89 + 9) = *(&v78[9] + 9);
  v84 = v78[4];
  v85 = v78[5];
  v86 = v78[6];
  v87 = v78[7];
  v80 = v78[0];
  v81 = v78[1];
  v82 = v78[2];
  v83 = v78[3];
  v90[8] = v78[8];
  v91[0] = v78[9];
  *(v91 + 9) = *(&v78[9] + 9);
  v90[4] = v78[4];
  v90[5] = v78[5];
  v90[7] = v78[7];
  v90[6] = v78[6];
  v90[0] = v78[0];
  v90[1] = v78[1];
  v90[3] = v78[3];
  v90[2] = v78[2];
  sub_10001DA50(&v80, &v92, &qword_1000501E0, &qword_1000393F8);
  sub_10000E35C(v90, &qword_1000501E0, &qword_1000393F8);
  v76 = v88;
  v77[0] = v89[0];
  *(v77 + 9) = *(v89 + 9);
  v72 = v84;
  v73 = v85;
  v74 = v86;
  v75 = v87;
  v68 = v80;
  v69 = v81;
  v70 = v82;
  v71 = v83;
  v42 = v30;
  v43 = v64;
  sub_10001DA50(v42, v64, &qword_1000501A8, &qword_1000393D0);
  v44 = v66;
  sub_10001DA50(v33, v66, &qword_100050198, &qword_1000393C0);
  v45 = v63;
  sub_10001DA50(v43, v63, &qword_1000501A8, &qword_1000393D0);
  v46 = sub_10000D3B8(&qword_1000501E8, &qword_100039400);
  sub_10001DA50(v44, v45 + *(v46 + 48), &qword_100050198, &qword_1000393C0);
  v47 = (v45 + *(v46 + 64));
  v48 = v61;
  v92 = v61;
  v101 = v76;
  v102[0] = v77[0];
  *(v102 + 9) = *(v77 + 9);
  v97 = v72;
  v98 = v73;
  v99 = v74;
  v100 = v75;
  v93 = v68;
  v94 = v69;
  v95 = v70;
  v96 = v71;
  v49 = v76;
  v47[8] = v75;
  v47[9] = v49;
  v47[10] = v102[0];
  *(v47 + 169) = *(v102 + 9);
  v50 = v97;
  v47[4] = v96;
  v47[5] = v50;
  v51 = v99;
  v47[6] = v98;
  v47[7] = v51;
  v52 = v93;
  *v47 = v92;
  v47[1] = v52;
  v53 = v95;
  v47[2] = v94;
  v47[3] = v53;
  sub_10001DA50(&v92, v78, &qword_1000501F0, &qword_100039408);
  sub_10000E35C(v33, &qword_100050198, &qword_1000393C0);
  sub_10000E35C(v67, &qword_1000501A8, &qword_1000393D0);
  v78[0] = v48;
  v78[9] = v76;
  v78[10] = v77[0];
  *(&v78[10] + 9) = *(v77 + 9);
  v78[5] = v72;
  v78[6] = v73;
  v78[7] = v74;
  v78[8] = v75;
  v78[1] = v68;
  v78[2] = v69;
  v78[3] = v70;
  v78[4] = v71;
  sub_10000E35C(v78, &qword_1000501F0, &qword_100039408);
  sub_10000E35C(v44, &qword_100050198, &qword_1000393C0);
  return sub_10000E35C(v43, &qword_1000501A8, &qword_1000393D0);
}

uint64_t sub_100015508@<X0>(uint64_t a2@<X8>)
{
  v3 = static Alignment.center.getter();
  v28 = v4;
  v29 = v3;
  sub_100015818(&v60);
  v36 = v66;
  v37 = v67;
  v32 = v62;
  v33 = v63;
  v34 = v64;
  v35 = v65;
  v30 = v60;
  v31 = v61;
  v39[6] = v66;
  v39[7] = v67;
  v39[2] = v62;
  v39[3] = v63;
  v39[4] = v64;
  v39[5] = v65;
  v38 = v68;
  v40 = v68;
  v39[0] = v60;
  v39[1] = v61;
  sub_10001DA50(&v30, &v50, &qword_10004FDC0, &qword_100038E98);
  sub_10000E35C(v39, &qword_10004FDC0, &qword_100038E98);
  v47 = v36;
  v48 = v37;
  v49 = v38;
  v43 = v32;
  v44 = v33;
  v45 = v34;
  v46 = v35;
  v41 = v30;
  v42 = v31;
  *&v60 = String.localized.getter();
  *(&v60 + 1) = v5;
  sub_10001B928(v60, v5, v6);
  v7 = Text.init<A>(_:)();
  v9 = v8;
  v11 = v10;
  if (qword_10004F640 != -1)
  {
    swift_once();
  }

  v12 = Text.foregroundColor(_:)();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  sub_10001BC4C(v7, v9, v11 & 1);

  *&v50 = v29;
  *(&v50 + 1) = v28;
  v57 = v47;
  v58 = v48;
  v59 = v49;
  v53 = v43;
  v54 = v44;
  v55 = v45;
  v56 = v46;
  v19 = v42;
  v51 = v41;
  v52 = v42;
  v20 = v47;
  v21 = v48;
  *(a2 + 96) = v46;
  *(a2 + 112) = v20;
  *(a2 + 128) = v21;
  v22 = v59;
  v23 = v53;
  v24 = v54;
  *(a2 + 32) = v19;
  *(a2 + 48) = v23;
  v25 = v55;
  *(a2 + 64) = v24;
  *(a2 + 80) = v25;
  v26 = v51;
  *a2 = v50;
  *(a2 + 16) = v26;
  *(a2 + 144) = v22;
  *(a2 + 152) = v12;
  *(a2 + 160) = v14;
  *(a2 + 168) = v16 & 1;
  *(a2 + 176) = v18;
  *(a2 + 184) = 0;
  *(a2 + 192) = 1;
  sub_10001DA50(&v50, &v60, &qword_10004FD58, &qword_100038E20);
  sub_10001BC3C(v12, v14, v16 & 1);

  sub_10001BC4C(v12, v14, v16 & 1);

  *&v60 = v29;
  *(&v60 + 1) = v28;
  v67 = v47;
  v68 = v48;
  v69 = v49;
  v63 = v43;
  v64 = v44;
  v66 = v46;
  v65 = v45;
  v62 = v42;
  v61 = v41;
  return sub_10000E35C(&v60, &qword_10004FD58, &qword_100038E20);
}

uint64_t sub_100015818@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Image.ResizingMode();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10004F648 != -1)
  {
    swift_once();
  }

  v6 = qword_100050E58;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v40[3] = *&v40[27];
  *&v40[11] = *&v40[35];
  *&v40[19] = *&v40[43];
  v27 = v6;

  Image.init(_internalSystemName:)();
  (*(v3 + 104))(v5, enum case for Image.ResizingMode.stretch(_:), v2);
  v7 = Image.resizable(capInsets:resizingMode:)();

  (*(v3 + 8))(v5, v2);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v8 = v41;
  v9 = v42;
  v10 = v43;
  v11 = v44;
  v25 = v46;
  v26 = v45;
  if (qword_10004F640 != -1)
  {
    swift_once();
  }

  v12 = qword_100050E50;
  KeyPath = swift_getKeyPath();
  *&v47[0] = v27;
  WORD4(v47[0]) = 256;
  *(v47 + 10) = *v40;
  *(&v47[1] + 10) = *&v40[8];
  *(&v47[2] + 10) = *&v40[16];
  *(&v47[3] + 1) = *&v40[23];
  *&v32[31] = v47[2];
  *&v32[39] = v47[3];
  *&v32[15] = v47[0];
  *&v32[23] = v47[1];
  *&v48 = v7;
  *(&v48 + 1) = v8;
  LOBYTE(v49) = v9;
  DWORD1(v49) = *&v39[3];
  *(&v49 + 1) = *v39;
  *(&v49 + 1) = v10;
  LOBYTE(v50) = v11;
  DWORD1(v50) = *&v38[3];
  v14 = *v38;
  *(&v50 + 1) = *v38;
  v16 = v25;
  v15 = v26;
  *(&v50 + 1) = v26;
  *&v51 = v25;
  *(&v51 + 1) = KeyPath;
  v52 = v12;
  v37 = v12;
  v35 = v50;
  v36 = v51;
  v33 = v48;
  v34 = v49;
  v17 = v47[0];
  v18 = v47[1];
  v19 = v47[3];
  *(a1 + 32) = v47[2];
  *(a1 + 48) = v19;
  *a1 = v17;
  *(a1 + 16) = v18;
  v20 = v33;
  v21 = v34;
  v22 = v35;
  v23 = v36;
  *(a1 + 128) = v37;
  *(a1 + 96) = v22;
  *(a1 + 112) = v23;
  *(a1 + 64) = v20;
  *(a1 + 80) = v21;
  v53[0] = v7;
  v53[1] = v8;
  v54 = v9;
  *v55 = *v39;
  *&v55[3] = *&v39[3];
  v56 = v10;
  v57 = v11;
  *v58 = v14;
  *&v58[3] = *&v38[3];
  v59 = v15;
  v60 = v16;
  v61 = KeyPath;
  v62 = v12;

  sub_10001DA50(v47, &v28, &qword_10004FDC8, &qword_100038ED0);
  sub_10001DA50(&v48, &v28, &qword_10004FDD0, &qword_100038ED8);
  sub_10000E35C(v53, &qword_10004FDD0, &qword_100038ED8);
  v28 = v27;
  v29 = 256;
  v30 = *v40;
  v31 = *&v40[8];
  *v32 = *&v40[16];
  *&v32[7] = *&v40[23];
  return sub_10000E35C(&v28, &qword_10004FDC8, &qword_100038ED0);
}

uint64_t sub_100015BFC@<X0>(uint64_t (*a1)(uint64_t a1)@<X0>, uint64_t a2@<X8>)
{
  v84 = a2;
  v3 = sub_10000D3B8(&qword_100050210, &qword_100039428);
  v80 = *(v3 - 8);
  v81 = v3;
  __chkstk_darwin(v3);
  v78 = &v75 - v4;
  v5 = sub_10000D3B8(&qword_100050218, &qword_100039430);
  v6 = __chkstk_darwin(v5 - 8);
  v83 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v93 = &v75 - v8;
  v9 = type metadata accessor for LiveRecognitionView(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DetectionButton(0);
  v14 = __chkstk_darwin(v13);
  v82 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v90 = &v75 - v17;
  v18 = __chkstk_darwin(v16);
  v91 = &v75 - v19;
  v20 = __chkstk_darwin(v18);
  v88 = &v75 - v21;
  v22 = __chkstk_darwin(v20);
  v24 = &v75 - v23;
  __chkstk_darwin(v22);
  v26 = &v75 - v25;
  v94 = a1;
  sub_10001BD74(a1, v12, type metadata accessor for LiveRecognitionView);
  v27 = v11;
  v28 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v92 = *(v10 + 80);
  v29 = swift_allocObject();
  sub_10001C8E4(v12, v29 + v28, type metadata accessor for LiveRecognitionView);
  v30 = *(v13 + 28);
  v31 = enum case for Control.imageCaption(_:);
  v32 = type metadata accessor for Control();
  v33 = *(v32 - 8);
  v34 = *(v33 + 104);
  v89 = v32;
  v87 = v33 + 104;
  v34(&v26[v30], v31);
  v97 = "control.button.off.value";
  *v26 = String.localized.getter();
  *(v26 + 1) = v35;
  v96 = "document.mode.button";
  *(v26 + 2) = String.localized.getter();
  *(v26 + 3) = v36;
  *(v26 + 4) = sub_10001DC44;
  *(v26 + 5) = v29;
  v95 = v26;
  v26[48] = 0;
  v37 = static Detection.isLidarAvailable.getter();
  v79 = v34;
  v85 = v13;
  v86 = v27;
  if (v37)
  {
    v77 = type metadata accessor for LiveRecognitionView;
    sub_10001BD74(v94, v12, type metadata accessor for LiveRecognitionView);
    v38 = swift_allocObject();
    v76 = type metadata accessor for LiveRecognitionView;
    sub_10001C8E4(v12, v38 + v28, type metadata accessor for LiveRecognitionView);
    v39 = v89;
    (v34)(&v24[*(v13 + 28)], enum case for Control.peopleDetection(_:), v89);
    *v24 = String.localized.getter();
    *(v24 + 1) = v40;
    *(v24 + 2) = String.localized.getter();
    *(v24 + 3) = v41;
    *(v24 + 4) = sub_10001DBA0;
    *(v24 + 5) = v38;
    v24[48] = 0;
    sub_10001BD74(v94, v12, v77);
    v42 = swift_allocObject();
    sub_10001C8E4(v12, v42 + v28, v76);
    v43 = v85;
    v44 = v34;
    v45 = v88;
    (v44)(&v88[*(v85 + 28)], enum case for Control.doorDetection(_:), v39);
    *v45 = String.localized.getter();
    *(v45 + 8) = v46;
    *(v45 + 16) = String.localized.getter();
    *(v45 + 24) = v47;
    *(v45 + 32) = sub_10001DC44;
    *(v45 + 40) = v42;
    *(v45 + 48) = 0;
    v48 = v91;
    sub_10001BD74(v24, v91, type metadata accessor for DetectionButton);
    v49 = v90;
    sub_10001BD74(v45, v90, type metadata accessor for DetectionButton);
    v50 = v78;
    sub_10001BD74(v48, v78, type metadata accessor for DetectionButton);
    v51 = sub_10000D3B8(&qword_100050228, &qword_100039440);
    sub_10001BD74(v49, v50 + *(v51 + 48), type metadata accessor for DetectionButton);
    sub_10001DB40(v45, type metadata accessor for DetectionButton);
    sub_10001DB40(v24, type metadata accessor for DetectionButton);
    sub_10001DB40(v49, type metadata accessor for DetectionButton);
    sub_10001DB40(v48, type metadata accessor for DetectionButton);
    v52 = v93;
    sub_10000E284(v50, v93, &qword_100050210, &qword_100039428);
    v53 = 0;
    v54 = v52;
    v55 = v43;
  }

  else
  {
    v53 = 1;
    v54 = v93;
    v55 = v13;
  }

  v56 = v94;
  (*(v80 + 56))(v54, v53, 1, v81);
  sub_10001BD74(v56, v12, type metadata accessor for LiveRecognitionView);
  v57 = swift_allocObject();
  v94 = type metadata accessor for LiveRecognitionView;
  sub_10001C8E4(v12, v57 + v28, type metadata accessor for LiveRecognitionView);
  v58 = &v24[*(v55 + 28)];
  v59 = v89;
  v60 = v79;
  (v79)(v58, enum case for Control.textDetection(_:), v89);
  *v24 = String.localized.getter();
  *(v24 + 1) = v61;
  *(v24 + 2) = String.localized.getter();
  *(v24 + 3) = v62;
  *(v24 + 4) = sub_10001DC44;
  *(v24 + 5) = v57;
  v24[48] = 0;
  sub_10001BD74(v56, v12, type metadata accessor for LiveRecognitionView);
  v63 = swift_allocObject();
  sub_10001C8E4(v12, v63 + v28, v94);
  v64 = v88;
  (v60)(&v88[*(v85 + 28)], enum case for Control.pointSpeak(_:), v59);
  *v64 = String.localized.getter();
  *(v64 + 8) = v65;
  *(v64 + 16) = String.localized.getter();
  *(v64 + 24) = v66;
  *(v64 + 32) = sub_10001DC44;
  *(v64 + 40) = v63;
  *(v64 + 48) = 0;
  v67 = v91;
  sub_10001BD74(v95, v91, type metadata accessor for DetectionButton);
  v68 = v93;
  v69 = v83;
  sub_10001DA50(v93, v83, &qword_100050218, &qword_100039430);
  v70 = v90;
  sub_10001BD74(v24, v90, type metadata accessor for DetectionButton);
  v71 = v82;
  sub_10001BD74(v64, v82, type metadata accessor for DetectionButton);
  v72 = v84;
  sub_10001BD74(v67, v84, type metadata accessor for DetectionButton);
  v73 = sub_10000D3B8(&qword_100050220, &qword_100039438);
  sub_10001DA50(v69, v72 + v73[12], &qword_100050218, &qword_100039430);
  sub_10001BD74(v70, v72 + v73[16], type metadata accessor for DetectionButton);
  sub_10001BD74(v71, v72 + v73[20], type metadata accessor for DetectionButton);
  sub_10001DB40(v64, type metadata accessor for DetectionButton);
  sub_10001DB40(v24, type metadata accessor for DetectionButton);
  sub_10000E35C(v68, &qword_100050218, &qword_100039430);
  sub_10001DB40(v95, type metadata accessor for DetectionButton);
  sub_10001DB40(v71, type metadata accessor for DetectionButton);
  sub_10001DB40(v70, type metadata accessor for DetectionButton);
  sub_10000E35C(v69, &qword_100050218, &qword_100039430);
  return sub_10001DB40(v67, type metadata accessor for DetectionButton);
}

uint64_t sub_1000165A0(uint64_t a1)
{
  type metadata accessor for LiveRecognitionView(0);
  type metadata accessor for MAGAngelPreferences(0);
  sub_10001B510(&unk_10004FCF0, type metadata accessor for MAGAngelPreferences, &unk_100038984);

  return StateObject.wrappedValue.getter();
}

uint64_t sub_100016644@<X0>(_OWORD *a2@<X8>)
{
  v3 = static VerticalAlignment.center.getter();
  LOBYTE(v29) = 1;
  sub_1000168E4(&v33);
  v18 = *&v34[16];
  v19 = *&v34[32];
  v20 = *&v34[48];
  v21 = v34[64];
  v16 = v33;
  v17 = *v34;
  v23 = v34[64];
  v22[2] = *&v34[16];
  v22[3] = *&v34[32];
  v22[4] = *&v34[48];
  v22[0] = v33;
  v22[1] = *v34;
  sub_10001DA50(&v16, &v27, &qword_1000501F8, &qword_100039410);
  sub_10000E35C(v22, &qword_1000501F8, &qword_100039410);
  *&v15[39] = v18;
  *&v15[55] = v19;
  *&v15[71] = v20;
  v15[87] = v21;
  *&v15[7] = v16;
  *&v15[23] = v17;
  v4 = v29;
  v5 = static VerticalAlignment.center.getter();
  if (qword_10004F568 != -1)
  {
    swift_once();
  }

  v6 = qword_100050D78;
  v26 = 1;
  v25 = 1;
  v24 = 1;

  v27 = v3;
  v28[0] = v4;
  *&v28[1] = *v15;
  *&v28[17] = *&v15[16];
  *&v28[81] = *&v15[80];
  *&v28[65] = *&v15[64];
  *&v28[49] = *&v15[48];
  *&v28[33] = *&v15[32];
  *&v12[9] = *&v28[73];
  v11 = *&v28[48];
  *v12 = *&v28[64];
  v9 = *&v28[16];
  v10 = *&v28[32];
  v29 = v5;
  LOBYTE(v30) = 1;
  v31 = 0;
  v32[0] = 1;
  *&v32[8] = v6;
  *&v32[16] = 0;
  v32[24] = 1;
  *&v14[9] = *&v32[9];
  v13 = v30;
  *v14 = *v32;
  v7 = *v28;
  *a2 = v3;
  a2[1] = v7;
  a2[4] = v11;
  a2[5] = *v12;
  a2[2] = v9;
  a2[3] = v10;
  *(a2 + 153) = *&v14[9];
  a2[8] = v13;
  a2[9] = *v14;
  a2[6] = *&v12[16];
  a2[7] = v5;
  sub_10001DA50(&v27, &v33, &qword_100050200, &qword_100039418);
  sub_10001DA50(&v29, &v33, &qword_100050208, &qword_100039420);

  v33 = v3;
  v34[0] = v4;
  *&v34[33] = *&v15[32];
  *&v34[49] = *&v15[48];
  v35 = *&v15[64];
  v36 = *&v15[80];
  *&v34[1] = *v15;
  *&v34[17] = *&v15[16];
  return sub_10000E35C(&v33, &qword_100050200, &qword_100039418);
}

uint64_t sub_1000168E4@<X0>(uint64_t a2@<X8>)
{
  type metadata accessor for LiveRecognitionView(0);
  sub_10000D3B8(&qword_10004FE00, &qword_100038F00);
  State.projectedValue.getter();
  v3 = v17;
  v4 = v18;
  sub_10000D3B8(&qword_100050190, &qword_1000393B8);
  State.projectedValue.getter();
  v5 = v17;
  v6 = v18;
  State.init(wrappedValue:)();
  v7 = v17;
  v8 = *(&v17 + 1);
  v13 = v17;
  v14[0] = v18;
  *&v14[8] = v17;
  *&v14[24] = v18;
  LOBYTE(v15) = v17;
  *(&v15 + 1) = *(&v17 + 1);
  v16 = 5;
  v12[72] = 1;
  v9 = v15;
  *(a2 + 32) = *&v14[16];
  *(a2 + 48) = v9;
  v10 = *v14;
  *a2 = v13;
  *(a2 + 16) = v10;
  *(a2 + 64) = 5;
  *(a2 + 72) = 0;
  *(a2 + 80) = 1;
  v17 = v3;
  LOBYTE(v18) = v4;
  v19 = v5;
  v20 = v6;
  v21 = v7;
  v22 = v8;
  v23 = 5;
  sub_10001BA3C(&v13, v12);
  return sub_10001DAB8(&v17);
}

uint64_t sub_100016A38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a3;
  type metadata accessor for MainActor();
  *(v3 + 24) = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100016AD0, v5, v4);
}

uint64_t sub_100016AD0()
{

  type metadata accessor for LiveRecognitionView(0);
  *(v0 + 32) = 1;
  sub_10000D3B8(&qword_10004FF78, &qword_100039258);
  AccessibilityFocusState.wrappedValue.setter();
  v1 = *(v0 + 8);

  return v1();
}

void sub_100016B74(uint64_t a1)
{
  v2 = sub_10000D3B8(&unk_10004F860, &qword_1000383D0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17[-v4];
  v6 = type metadata accessor for MAGAngelClientRequest(0);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v17[-v10];
  v12 = (a1 + *(type metadata accessor for LiveRecognitionView(0) + 28));
  v13 = *v12;
  v14 = *(v12 + 1);
  v17[16] = v13;
  v18 = v14;
  sub_10000D3B8(&qword_10004FE00, &qword_100038F00);
  State.wrappedValue.getter();
  if (v17[15] == 1)
  {
    v15 = [objc_opt_self() sharedApplication];
    [v15 sendAction:"resignFirstResponder" to:0 from:0 forEvent:0];
  }

  else
  {
    if (qword_10004F568 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for MAGSimulatedEvent();
    (*(*(v16 - 8) + 56))(v11, 3, 13, v16);
    sub_10001BD74(v11, v9, type metadata accessor for MAGAngelClientRequest);
    sub_10000D3B8(&unk_1000506F0, &unk_100038540);
    AsyncStream.Continuation.yield(_:)();
    (*(v3 + 8))(v5, v2);
    sub_10001DB40(v11, type metadata accessor for MAGAngelClientRequest);
  }
}

uint64_t sub_100016E2C(uint64_t a1)
{
  type metadata accessor for LiveRecognitionView(0);

  sub_10000D3B8(&qword_10004FE00, &qword_100038F00);
  State.wrappedValue.getter();
  State.wrappedValue.setter();
}

uint64_t sub_100016ED8()
{
  v0 = type metadata accessor for NSNotificationCenter.Publisher();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10000D3B8(&qword_1000500C0, &qword_100039340);
  v4 = __chkstk_darwin(v19);
  __chkstk_darwin(v4);
  v5 = sub_10000D3B8(&qword_1000500C8, &qword_100039348);
  v6 = *(v5 - 8);
  v17 = v5;
  v18 = v6;
  __chkstk_darwin(v5);
  v8 = &v16 - v7;
  v9 = objc_opt_self();
  v10 = [v9 defaultCenter];
  NSNotificationCenter.publisher(for:object:)();

  sub_10001B510(&qword_1000500D0, &type metadata accessor for NSNotificationCenter.Publisher, &protocol conformance descriptor for NSNotificationCenter.Publisher);
  Publisher.map<A>(_:)();
  v11 = *(v1 + 8);
  v11(v3, v0);
  v12 = [v9 defaultCenter];
  NSNotificationCenter.publisher(for:object:)();

  Publisher.map<A>(_:)();
  v11(v3, v0);
  sub_10001DBE8(&qword_1000500D8, &qword_1000500C0, &qword_100039340, &protocol conformance descriptor for Publishers.Map<A, B>);
  Publishers.Merge.init(_:_:)();
  sub_10001DBE8(&qword_1000500E0, &qword_1000500C8, &qword_100039348, &protocol conformance descriptor for Publishers.Merge<A, B>);
  v13 = v17;
  v14 = Publisher.eraseToAnyPublisher()();
  (*(v18 + 8))(v8, v13);
  return v14;
}

uint64_t sub_100017288(char *a1, uint64_t a2)
{
  type metadata accessor for LiveRecognitionView(0);
  sub_10000D3B8(&qword_10004FE00, &qword_100038F00);
  return State.wrappedValue.setter();
}

uint64_t sub_100017300@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v56 = a1;
  v3 = type metadata accessor for BorderedProminentButtonStyle();
  v47 = *(v3 - 8);
  v48 = v3;
  __chkstk_darwin(v3);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for DetectionButton(0);
  v6 = *(v55 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v55);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_10000D3B8(&qword_10004FEB0, &qword_100038F98);
  v9 = *(v46 - 8);
  __chkstk_darwin(v46);
  v11 = &v45 - v10;
  v45 = sub_10000D3B8(&qword_10004FEB8, &qword_100038FA0);
  __chkstk_darwin(v45);
  v13 = &v45 - v12;
  v49 = sub_10000D3B8(&qword_10004FEC0, &qword_100038FA8);
  __chkstk_darwin(v49);
  v50 = &v45 - v14;
  v51 = sub_10000D3B8(&qword_10004FEC8, &qword_100038FB0);
  __chkstk_darwin(v51);
  v52 = &v45 - v15;
  v53 = sub_10000D3B8(&qword_10004FED0, &qword_100038FB8);
  __chkstk_darwin(v53);
  v54 = &v45 - v16;
  if (qword_10004F568 != -1)
  {
    swift_once();
  }

  v17 = qword_100050D78;
  sub_10001BD74(v2, &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DetectionButton);
  v18 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v19 = (v7 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  v21 = sub_10001C8E4(v8, v20 + v18, type metadata accessor for DetectionButton);
  *(v20 + v19) = v17;
  __chkstk_darwin(v21);
  *(&v45 - 2) = v2;

  sub_10000D3B8(&qword_10004FED8, &qword_100038FC0);
  sub_10001BF88();
  Button.init(action:label:)();
  BorderedProminentButtonStyle.init()();
  sub_10001DBE8(&qword_10004FEF8, &qword_10004FEB0, &qword_100038F98, &protocol conformance descriptor for Button<A>);
  sub_10001B510(&qword_10004FD80, &type metadata accessor for BorderedProminentButtonStyle, &protocol conformance descriptor for BorderedProminentButtonStyle);
  v22 = v46;
  v23 = v48;
  View.buttonStyle<A>(_:)();
  (*(v47 + 8))(v5, v23);
  (*(v9 + 8))(v11, v22);
  v24 = &v13[*(v45 + 36)];
  sub_10000D3B8(&qword_10004FD88, &qword_100038E28);
  static ButtonBorderShape.circle.getter();
  *v24 = swift_getKeyPath();
  if (sub_10001827C())
  {
    v25 = v50;
    if (qword_10004F640 != -1)
    {
      swift_once();
    }

    v26 = &qword_100050E50;
  }

  else
  {
    v25 = v50;
    if (qword_10004F638 != -1)
    {
      swift_once();
    }

    v26 = &qword_100050E48;
  }

  v27 = *v26;

  KeyPath = swift_getKeyPath();
  v57 = v27;
  v29 = AnyShapeStyle.init<A>(_:)();
  sub_10000E284(v13, v25, &qword_10004FEB8, &qword_100038FA0);
  v30 = (v25 + *(v49 + 36));
  *v30 = KeyPath;
  v30[1] = v29;
  if (sub_10001827C())
  {
    if (qword_10004F638 != -1)
    {
      swift_once();
    }

    v31 = &qword_100050E48;
  }

  else
  {
    if (qword_10004F640 != -1)
    {
      swift_once();
    }

    v31 = &qword_100050E50;
  }

  v32 = *v31;

  v33 = v52;
  sub_10000E284(v25, v52, &qword_10004FEC0, &qword_100038FA8);
  *(v33 + *(v51 + 36)) = v32;
  v57 = Control.accessibilityLabel.getter();
  v58 = v34;
  v35 = sub_10001C0A0();
  sub_10001B928(v35, v36, v37);
  v38 = v54;
  View.accessibilityLabel<A>(_:)();

  sub_10000E35C(v33, &qword_10004FEC8, &qword_100038FB0);
  v39 = sub_10001827C();
  v40 = 16;
  if (v39)
  {
    v40 = 0;
  }

  v41 = 24;
  if (v39)
  {
    v41 = 8;
  }

  v42 = *(v2 + v40);
  v43 = *(v2 + v41);

  v57 = v42;
  v58 = v43;
  ModifiedContent<>.accessibilityValue<A>(_:)();

  return sub_10000E35C(v38, &qword_10004FED0, &qword_100038FB8);
}

uint64_t sub_100017AD8(uint64_t a1)
{
  v2 = sub_10000D3B8(&unk_10004F860, &qword_1000383D0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v28[-v4];
  v6 = type metadata accessor for MAGAngelClientRequest(0);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v28[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v28[-v10];
  v12 = type metadata accessor for Control();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v28[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = type metadata accessor for DetectionButton(0);
  (*(v13 + 16))(v15, a1 + *(v16 + 28), v12);
  v17 = (*(v13 + 88))(v15, v12);
  if (v17 == enum case for Control.peopleDetection(_:))
  {
    v18 = type metadata accessor for MAGSimulatedEvent();
    (*(*(v18 - 8) + 56))(v11, 7, 13, v18);
LABEL_11:
    sub_10001BD74(v11, v9, type metadata accessor for MAGAngelClientRequest);
    sub_10000D3B8(&unk_1000506F0, &unk_100038540);
    AsyncStream.Continuation.yield(_:)();
    (*(v3 + 8))(v5, v2);
    return sub_10001DB40(v11, type metadata accessor for MAGAngelClientRequest);
  }

  if (v17 == enum case for Control.doorDetection(_:))
  {
    v19 = type metadata accessor for MAGSimulatedEvent();
    (*(*(v19 - 8) + 56))(v11, 8, 13, v19);
    goto LABEL_11;
  }

  if (v17 == enum case for Control.objectUnderstanding(_:))
  {
    v20 = type metadata accessor for MAGSimulatedEvent();
    (*(*(v20 - 8) + 56))(v11, 6, 13, v20);
    goto LABEL_11;
  }

  if (v17 == enum case for Control.imageCaption(_:))
  {
    v21 = type metadata accessor for MAGSimulatedEvent();
    (*(*(v21 - 8) + 56))(v11, 9, 13, v21);
    goto LABEL_11;
  }

  if (v17 == enum case for Control.pointSpeak(_:))
  {
    v22 = type metadata accessor for MAGSimulatedEvent();
    (*(*(v22 - 8) + 56))(v11, 10, 13, v22);
    goto LABEL_11;
  }

  v29 = enum case for Control.textDetection(_:);
  v24 = v17;
  v25 = type metadata accessor for MAGSimulatedEvent();
  v26 = *(*(v25 - 8) + 56);
  v27 = (v3 + 8);
  if (v24 != v29)
  {
    v26(v11, 2, 13, v25);
    sub_10001BD74(v11, v9, type metadata accessor for MAGAngelClientRequest);
    sub_10000D3B8(&unk_1000506F0, &unk_100038540);
    AsyncStream.Continuation.yield(_:)();
    (*v27)(v5, v2);
    sub_10001DB40(v11, type metadata accessor for MAGAngelClientRequest);
    return (*(v13 + 8))(v15, v12);
  }

  v26(v11, 5, 13, v25);
  sub_10001BD74(v11, v9, type metadata accessor for MAGAngelClientRequest);
  sub_10000D3B8(&unk_1000506F0, &unk_100038540);
  AsyncStream.Continuation.yield(_:)();
  (*v27)(v5, v2);
  return sub_10001DB40(v11, type metadata accessor for MAGAngelClientRequest);
}

void sub_100018030(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Image.ResizingMode();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 6];
  type metadata accessor for DetectionButton(0);
  Control.angelIconName.getter();
  Image.init(_internalSystemName:)();
  (*(v3 + 104))(v5, enum case for Image.ResizingMode.stretch(_:), v2);
  v6 = Image.resizable(capInsets:resizingMode:)();

  (*(v3 + 8))(v5, v2);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v15[54] = v17[3];
  *&v15[70] = v17[4];
  *&v15[86] = v17[5];
  *&v15[102] = v17[6];
  *&v15[6] = v17[0];
  *&v15[22] = v17[1];
  v16 = 1;
  *&v15[38] = v17[2];
  LOBYTE(v2) = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v7 = *&v15[80];
  *(a1 + 82) = *&v15[64];
  *(a1 + 98) = v7;
  *(a1 + 114) = *&v15[96];
  v8 = *&v15[16];
  *(a1 + 18) = *v15;
  *(a1 + 34) = v8;
  v9 = *&v15[48];
  *(a1 + 50) = *&v15[32];
  *a1 = v6;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 128) = *&v15[110];
  *(a1 + 66) = v9;
  *(a1 + 136) = v2;
  *(a1 + 144) = v10;
  *(a1 + 152) = v11;
  *(a1 + 160) = v12;
  *(a1 + 168) = v13;
  *(a1 + 176) = 0;
}

uint64_t sub_10001827C()
{
  v1 = type metadata accessor for Control();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for DetectionButton(0);
  (*(v2 + 16))(v4, v0 + *(v5 + 28), v1);
  v6 = (*(v2 + 88))(v4, v1);
  if (v6 == enum case for Control.peopleDetection(_:))
  {
    type metadata accessor for MAGAngelPreferences(0);
    sub_10001B510(&unk_10004FCF0, type metadata accessor for MAGAngelPreferences, &unk_100038984);
    StateObject.wrappedValue.getter();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    return v8[11];
  }

  else if (v6 == enum case for Control.doorDetection(_:))
  {
    type metadata accessor for MAGAngelPreferences(0);
    sub_10001B510(&unk_10004FCF0, type metadata accessor for MAGAngelPreferences, &unk_100038984);
    StateObject.wrappedValue.getter();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    return v8[12];
  }

  else if (v6 == enum case for Control.objectUnderstanding(_:))
  {
    type metadata accessor for MAGAngelPreferences(0);
    sub_10001B510(&unk_10004FCF0, type metadata accessor for MAGAngelPreferences, &unk_100038984);
    StateObject.wrappedValue.getter();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    return v8[13];
  }

  else if (v6 == enum case for Control.imageCaption(_:))
  {
    type metadata accessor for MAGAngelPreferences(0);
    sub_10001B510(&unk_10004FCF0, type metadata accessor for MAGAngelPreferences, &unk_100038984);
    StateObject.wrappedValue.getter();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    return v8[10];
  }

  else if (v6 == enum case for Control.pointSpeak(_:))
  {
    type metadata accessor for MAGAngelPreferences(0);
    sub_10001B510(&unk_10004FCF0, type metadata accessor for MAGAngelPreferences, &unk_100038984);
    StateObject.wrappedValue.getter();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    return v8[15];
  }

  else if (v6 == enum case for Control.textDetection(_:))
  {
    type metadata accessor for MAGAngelPreferences(0);
    sub_10001B510(&unk_10004FCF0, type metadata accessor for MAGAngelPreferences, &unk_100038984);
    StateObject.wrappedValue.getter();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    return v8[14];
  }

  else
  {
    (*(v2 + 8))(v4, v1);
    return 0;
  }
}

uint64_t sub_10001886C@<X0>(uint64_t a2@<X8>)
{
  v63 = a2;
  v2 = type metadata accessor for BorderedProminentButtonStyle();
  v61 = *(v2 - 8);
  v62 = v2;
  __chkstk_darwin(v2);
  v60 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_10000D3B8(&qword_10004FD28, &qword_100038DF0);
  v4 = *(v53 - 8);
  __chkstk_darwin(v53);
  v6 = &v52 - v5;
  v52 = sub_10000D3B8(&qword_10004FD30, &qword_100038DF8);
  __chkstk_darwin(v52);
  v8 = &v52 - v7;
  v55 = sub_10000D3B8(&qword_10004FD38, &qword_100038E00);
  __chkstk_darwin(v55);
  v10 = &v52 - v9;
  v11 = sub_10000D3B8(&qword_10004FD40, &qword_100038E08);
  v57 = *(v11 - 8);
  v58 = v11;
  __chkstk_darwin(v11);
  v56 = &v52 - v12;
  v54 = sub_10000D3B8(&qword_10004FD48, &qword_100038E10);
  __chkstk_darwin(v54);
  v14 = &v52 - v13;
  v59 = sub_10000D3B8(&qword_10004FD50, &qword_100038E18);
  __chkstk_darwin(v59);
  v16 = &v52 - v15;

  sub_10000D3B8(&qword_10004FD58, &qword_100038E20);
  sub_10001DBE8(&qword_10004FD60, &qword_10004FD58, &qword_100038E20, &protocol conformance descriptor for ZStack<A>);
  Button.init(action:label:)();
  v17 = static Edge.Set.top.getter();
  v18 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v17)
  {
    v18 = Edge.Set.init(rawValue:)();
  }

  EdgeInsets.init(_all:)();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  (*(v4 + 32))(v8, v6, v53);
  v27 = &v8[*(v52 + 36)];
  *v27 = v18;
  *(v27 + 1) = v20;
  *(v27 + 2) = v22;
  *(v27 + 3) = v24;
  *(v27 + 4) = v26;
  v27[40] = 0;
  v28 = static Edge.Set.bottom.getter();
  v29 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v28)
  {
    v29 = Edge.Set.init(rawValue:)();
  }

  EdgeInsets.init(_all:)();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  sub_10000E284(v8, v10, &qword_10004FD30, &qword_100038DF8);
  v38 = &v10[*(v55 + 36)];
  *v38 = v29;
  *(v38 + 1) = v31;
  *(v38 + 2) = v33;
  *(v38 + 3) = v35;
  *(v38 + 4) = v37;
  v38[40] = 0;
  v39 = v60;
  BorderedProminentButtonStyle.init()();
  sub_10001C6B4(&qword_10004FD68, &qword_10004FD38, &qword_100038E00, sub_10001B458);
  sub_10001B510(&qword_10004FD80, &type metadata accessor for BorderedProminentButtonStyle, &protocol conformance descriptor for BorderedProminentButtonStyle);
  v40 = v56;
  v41 = v62;
  View.buttonStyle<A>(_:)();
  (*(v61 + 8))(v39, v41);
  sub_10000E35C(v10, &qword_10004FD38, &qword_100038E00);
  v42 = &v14[*(v54 + 36)];
  sub_10000D3B8(&qword_10004FD88, &qword_100038E28);
  static ButtonBorderShape.circle.getter();
  *v42 = swift_getKeyPath();
  (*(v57 + 32))(v14, v40, v58);
  if (qword_10004F640 != -1)
  {
    swift_once();
  }

  v43 = qword_100050E50;
  KeyPath = swift_getKeyPath();
  v64 = v43;

  v45 = AnyShapeStyle.init<A>(_:)();
  sub_10000E284(v14, v16, &qword_10004FD48, &qword_100038E10);
  v46 = &v16[*(v59 + 36)];
  *v46 = KeyPath;
  v46[1] = v45;
  v64 = String.localized.getter();
  v65 = v47;
  v48 = sub_10001B6F8();
  sub_10001B928(v48, v49, v50);
  View.accessibilityLabel<A>(_:)();

  return sub_10000E35C(v16, &qword_10004FD50, &qword_100038E18);
}

uint64_t sub_100018F64()
{
  v0 = sub_10000D3B8(&unk_10004F860, &qword_1000383D0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - v2;
  v4 = type metadata accessor for MAGAngelClientRequest(0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v12 - v8;
  v10 = type metadata accessor for MAGSimulatedEvent();
  (*(*(v10 - 8) + 56))(v9, 2, 13, v10);
  sub_10001BD74(v9, v7, type metadata accessor for MAGAngelClientRequest);
  sub_10000D3B8(&unk_1000506F0, &unk_100038540);
  AsyncStream.Continuation.yield(_:)();
  (*(v1 + 8))(v3, v0);
  return sub_10001DB40(v9, type metadata accessor for MAGAngelClientRequest);
}

__n128 sub_100019148@<Q0>(uint64_t a2@<X8>)
{
  v3 = static Alignment.center.getter();
  v5 = v4;
  sub_10001924C(&v11);
  v26 = v17;
  v27 = v18;
  v22 = v13;
  v23 = v14;
  v24 = v15;
  v25 = v16;
  v20 = v11;
  v21 = v12;
  v29[6] = v17;
  v29[7] = v18;
  v29[2] = v13;
  v29[3] = v14;
  v29[4] = v15;
  v29[5] = v16;
  v28 = v19;
  v30 = v19;
  v29[0] = v11;
  v29[1] = v12;
  sub_10001DA50(&v20, &v10, &qword_10004FDC0, &qword_100038E98);
  sub_10000E35C(v29, &qword_10004FDC0, &qword_100038E98);
  *a2 = v3;
  *(a2 + 8) = v5;
  v6 = v27;
  *(a2 + 112) = v26;
  *(a2 + 128) = v6;
  *(a2 + 144) = v28;
  v7 = v23;
  *(a2 + 48) = v22;
  *(a2 + 64) = v7;
  v8 = v25;
  *(a2 + 80) = v24;
  *(a2 + 96) = v8;
  result = v21;
  *(a2 + 16) = v20;
  *(a2 + 32) = result;
  return result;
}

uint64_t sub_10001924C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Image.ResizingMode();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10004F640 != -1)
  {
    swift_once();
  }

  v6 = qword_100050E50;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v40[3] = *&v40[27];
  *&v40[11] = *&v40[35];
  *&v40[19] = *&v40[43];
  v27 = v6;

  Image.init(_internalSystemName:)();
  (*(v3 + 104))(v5, enum case for Image.ResizingMode.stretch(_:), v2);
  v7 = Image.resizable(capInsets:resizingMode:)();

  (*(v3 + 8))(v5, v2);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v8 = v41;
  v9 = v42;
  v10 = v43;
  v11 = v44;
  v25 = v46;
  v26 = v45;
  if (qword_10004F638 != -1)
  {
    swift_once();
  }

  v12 = qword_100050E48;
  KeyPath = swift_getKeyPath();
  *&v47[0] = v27;
  WORD4(v47[0]) = 256;
  *(v47 + 10) = *v40;
  *(&v47[1] + 10) = *&v40[8];
  *(&v47[2] + 10) = *&v40[16];
  *(&v47[3] + 1) = *&v40[23];
  *&v32[31] = v47[2];
  *&v32[39] = v47[3];
  *&v32[15] = v47[0];
  *&v32[23] = v47[1];
  *&v48 = v7;
  *(&v48 + 1) = v8;
  LOBYTE(v49) = v9;
  DWORD1(v49) = *&v39[3];
  *(&v49 + 1) = *v39;
  *(&v49 + 1) = v10;
  LOBYTE(v50) = v11;
  DWORD1(v50) = *&v38[3];
  v14 = *v38;
  *(&v50 + 1) = *v38;
  v16 = v25;
  v15 = v26;
  *(&v50 + 1) = v26;
  *&v51 = v25;
  *(&v51 + 1) = KeyPath;
  v52 = v12;
  v37 = v12;
  v35 = v50;
  v36 = v51;
  v33 = v48;
  v34 = v49;
  v17 = v47[0];
  v18 = v47[1];
  v19 = v47[3];
  *(a1 + 32) = v47[2];
  *(a1 + 48) = v19;
  *a1 = v17;
  *(a1 + 16) = v18;
  v20 = v33;
  v21 = v34;
  v22 = v35;
  v23 = v36;
  *(a1 + 128) = v37;
  *(a1 + 96) = v22;
  *(a1 + 112) = v23;
  *(a1 + 64) = v20;
  *(a1 + 80) = v21;
  v53[0] = v7;
  v53[1] = v8;
  v54 = v9;
  *v55 = *v39;
  *&v55[3] = *&v39[3];
  v56 = v10;
  v57 = v11;
  *v58 = v14;
  *&v58[3] = *&v38[3];
  v59 = v15;
  v60 = v16;
  v61 = KeyPath;
  v62 = v12;

  sub_10001DA50(v47, &v28, &qword_10004FDC8, &qword_100038ED0);
  sub_10001DA50(&v48, &v28, &qword_10004FDD0, &qword_100038ED8);
  sub_10000E35C(v53, &qword_10004FDD0, &qword_100038ED8);
  v28 = v27;
  v29 = 256;
  v30 = *v40;
  v31 = *&v40[8];
  *v32 = *&v40[16];
  *&v32[7] = *&v40[23];
  return sub_10000E35C(&v28, &qword_10004FDC8, &qword_100038ED0);
}

uint64_t sub_100019638@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v44 = a1;
  v42 = type metadata accessor for AccessibilityChildBehavior();
  v3 = *(v42 - 8);
  __chkstk_darwin(v42);
  v5 = v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000D3B8(&qword_10004FDD8, &qword_100038EE0);
  __chkstk_darwin(v6);
  v8 = v39 - v7;
  v41 = sub_10000D3B8(&qword_10004FDE0, &qword_100038EE8);
  v9 = *(v41 - 8);
  __chkstk_darwin(v41);
  v11 = v39 - v10;
  v43 = sub_10000D3B8(&qword_10004FDE8, &qword_100038EF0);
  v12 = __chkstk_darwin(v43);
  v14 = v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v40 = v39 - v15;
  *v8 = static HorizontalAlignment.center.getter();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v16 = sub_10000D3B8(&qword_10004FDF0, &qword_100038EF8);
  sub_100019B64(v2, &v8[*(v16 + 44)]);
  static AccessibilityChildBehavior.combine.getter();
  v17 = sub_10001DBE8(&qword_10004FDF8, &qword_10004FDD8, &qword_100038EE0, &protocol conformance descriptor for VStack<A>);
  View.accessibilityElement(children:)();
  (*(v3 + 8))(v5, v42);
  sub_10000E35C(v8, &qword_10004FDD8, &qword_100038EE0);
  *&v47 = String.localized.getter();
  *(&v47 + 1) = v18;
  v45 = v6;
  v46 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_10001B928(OpaqueTypeConformance2, v20, v21);
  v22 = v41;
  View.accessibilityLabel<A>(_:)();

  (*(v9 + 8))(v11, v22);
  v23 = v40;
  v47 = *(v39[1] + 48);
  sub_10000D3B8(&qword_10004FE00, &qword_100038F00);
  State.wrappedValue.getter();
  *&v47 = String.localized.getter();
  *(&v47 + 1) = v24;
  ModifiedContent<>.accessibilityValue<A>(_:)();

  sub_10000E35C(v14, &qword_10004FDE8, &qword_100038EF0);
  sub_10000D3B8(&qword_10004FE08, &qword_100038F08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100038C20;
  LOBYTE(v11) = static Edge.Set.leading.getter();
  *(inited + 32) = v11;
  v26 = static Edge.Set.bottom.getter();
  *(inited + 33) = v26;
  v27 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v11)
  {
    v27 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v26)
  {
    v27 = Edge.Set.init(rawValue:)();
  }

  EdgeInsets.init(_all:)();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v36 = v44;
  sub_10000E284(v23, v44, &qword_10004FDE8, &qword_100038EF0);
  result = sub_10000D3B8(&qword_10004FE10, &qword_100038F10);
  v38 = v36 + *(result + 36);
  *v38 = v27;
  *(v38 + 8) = v29;
  *(v38 + 16) = v31;
  *(v38 + 24) = v33;
  *(v38 + 32) = v35;
  *(v38 + 40) = 0;
  return result;
}

uint64_t sub_100019B64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v50 = type metadata accessor for BorderedProminentButtonStyle();
  v3 = *(v50 - 8);
  __chkstk_darwin(v50);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000D3B8(&qword_10004FE18, &qword_100038F18);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v49 - v8;
  v10 = sub_10000D3B8(&qword_10004FE20, &qword_100038F20);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v49 - v12;
  v51 = sub_10000D3B8(&qword_10004FE28, &qword_100038F28);
  __chkstk_darwin(v51);
  v54 = &v49 - v14;
  v53 = sub_10000D3B8(&qword_10004FE30, &qword_100038F30);
  v15 = __chkstk_darwin(v53);
  v56 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v52 = &v49 - v18;
  __chkstk_darwin(v17);
  v55 = &v49 - v19;
  v20 = swift_allocObject();
  v21 = *(a1 + 48);
  *(v20 + 48) = *(a1 + 32);
  *(v20 + 64) = v21;
  *(v20 + 80) = *(a1 + 64);
  v22 = *(a1 + 16);
  *(v20 + 16) = *a1;
  *(v20 + 32) = v22;
  sub_10001BA3C(a1, v60);
  sub_10000D3B8(&qword_10004FE38, &qword_100038F38);
  sub_10001BA74();
  Button.init(action:label:)();
  BorderedProminentButtonStyle.init()();
  sub_10001DBE8(&qword_10004FE80, &qword_10004FE18, &qword_100038F18, &protocol conformance descriptor for Button<A>);
  sub_10001B510(&qword_10004FD80, &type metadata accessor for BorderedProminentButtonStyle, &protocol conformance descriptor for BorderedProminentButtonStyle);
  v23 = v50;
  View.buttonStyle<A>(_:)();
  v24 = v5;
  v25 = v13;
  (*(v3 + 8))(v24, v23);
  (*(v7 + 8))(v9, v6);
  v26 = &v13[*(v11 + 44)];
  sub_10000D3B8(&qword_10004FD88, &qword_100038E28);
  static ButtonBorderShape.circle.getter();
  *v26 = swift_getKeyPath();
  v59 = *(a1 + 48);
  v60[0] = v59;
  sub_10000D3B8(&qword_10004FE00, &qword_100038F00);
  State.wrappedValue.getter();
  if (v58 == 1)
  {
    if (qword_10004F640 != -1)
    {
      swift_once();
    }

    v27 = &qword_100050E50;
  }

  else
  {
    if (qword_10004F638 != -1)
    {
      swift_once();
    }

    v27 = &qword_100050E48;
  }

  v28 = v54;
  v29 = *v27;

  KeyPath = swift_getKeyPath();
  *&v59 = v29;
  v31 = AnyShapeStyle.init<A>(_:)();
  sub_10000E284(v25, v28, &qword_10004FE20, &qword_100038F20);
  v32 = (v28 + *(v51 + 36));
  *v32 = KeyPath;
  v32[1] = v31;
  v59 = v60[0];
  State.wrappedValue.getter();
  if (v58 == 1)
  {
    v33 = static Color.black.getter();
  }

  else
  {
    if (qword_10004F640 != -1)
    {
      swift_once();
    }

    v33 = qword_100050E50;
  }

  v34 = v52;
  sub_10000E284(v28, v52, &qword_10004FE28, &qword_100038F28);
  *(v34 + *(v53 + 36)) = v33;
  v35 = v55;
  sub_10000E284(v34, v55, &qword_10004FE30, &qword_100038F30);
  *&v59 = String.localized.getter();
  *(&v59 + 1) = v36;
  sub_10001B928(v59, v36, v37);
  v38 = Text.init<A>(_:)();
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v45 = v56;
  sub_10001DA50(v35, v56, &qword_10004FE30, &qword_100038F30);
  v46 = v57;
  sub_10001DA50(v45, v57, &qword_10004FE30, &qword_100038F30);
  v47 = v46 + *(sub_10000D3B8(&qword_10004FE88, &unk_100038F58) + 48);
  *v47 = v38;
  *(v47 + 8) = v40;
  v42 &= 1u;
  *(v47 + 16) = v42;
  *(v47 + 24) = v44;
  sub_10001BC3C(v38, v40, v42);

  sub_10000E35C(v35, &qword_10004FE30, &qword_100038F30);
  sub_10001BC4C(v38, v40, v42);

  return sub_10000E35C(v45, &qword_10004FE30, &qword_100038F30);
}

uint64_t sub_10001A258(uint64_t a1)
{
  v2 = sub_10000D3B8(&unk_10004F870, &qword_100038BF0);
  __chkstk_darwin(v2 - 8);
  v4 = v11 - v3;
  v13 = *(a1 + 48);
  v11[0] = *(a1 + 48);
  v14 = *(&v13 + 1);
  sub_10001DA50(&v14, &v12, &qword_10004FE90, &qword_100038F68);
  sub_10000D3B8(&qword_10004FE00, &qword_100038F00);
  State.wrappedValue.getter();
  if (v12)
  {
    return sub_10000E35C(&v13, &qword_10004FE00, &qword_100038F00);
  }

  v11[0] = v13;
  LOBYTE(v12) = 1;
  State.wrappedValue.setter();
  sub_10000E35C(&v13, &qword_10004FE00, &qword_100038F00);
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  type metadata accessor for MainActor();
  sub_10001BA3C(a1, v11);
  v7 = static MainActor.shared.getter();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = &protocol witness table for MainActor;
  v9 = *(a1 + 48);
  *(v8 + 64) = *(a1 + 32);
  *(v8 + 80) = v9;
  *(v8 + 96) = *(a1 + 64);
  v10 = *(a1 + 16);
  *(v8 + 32) = *a1;
  *(v8 + 48) = v10;
  sub_10001AE10(0, 0, v4, &unk_100038F78, v8);
}

uint64_t sub_10001A448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[17] = a4;
  sub_10000D3B8(&qword_10004FE98, &qword_100038F80);
  v4[18] = swift_task_alloc();
  v5 = type metadata accessor for MAGDocumentData();
  v4[19] = v5;
  v4[20] = *(v5 - 8);
  v4[21] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[22] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[23] = v7;
  v4[24] = v6;

  return _swift_task_switch(sub_10001A574, v7, v6);
}

uint64_t sub_10001A574()
{
  if (qword_10004F620 != -1)
  {
    swift_once();
  }

  v1 = *(v0[17] + 64);
  v5 = &async function pointer to dispatch thunk of MAGDocumentFramingService.gatherDocumentWithFeedback(maxFeedbackAttempts:cropToDocument:checkForDocumentMode:) + async function pointer to dispatch thunk of MAGDocumentFramingService.gatherDocumentWithFeedback(maxFeedbackAttempts:cropToDocument:checkForDocumentMode:);
  v2 = swift_task_alloc();
  v0[25] = v2;
  *v2 = v0;
  v2[1] = sub_10001A670;
  v3 = v0[18];

  return (v5)(v3, v1, 1, 0);
}

uint64_t sub_10001A670()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  v3 = *(v2 + 192);
  v4 = *(v2 + 184);
  if (v0)
  {
    v5 = sub_10001ACF4;
  }

  else
  {
    v5 = sub_10001A7AC;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10001A7AC()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);
  v3 = *(v0 + 144);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {

    sub_10000E35C(v3, &qword_10004FE98, &qword_100038F80);
LABEL_8:
    *(v0 + 80) = *(*(v0 + 136) + 48);
    *(v0 + 57) = 0;
    sub_10000D3B8(&qword_10004FE00, &qword_100038F00);
    State.wrappedValue.setter();

    v10 = *(v0 + 8);

    return v10();
  }

  (*(v2 + 32))(*(v0 + 168), v3, v1);
  v4 = MAGDocumentData.pixelBuffer.getter();
  *(v0 + 216) = v4;
  if (!v4)
  {
    (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));

    goto LABEL_8;
  }

  v5 = v4;
  *(v0 + 224) = static CompositionRoot.textDetectionService.getter();
  type metadata accessor for MAGCVPixelBufferWrapper();
  swift_allocObject();
  v6 = v5;
  v7 = MAGCVPixelBufferWrapper.init(_:)();
  *(v0 + 232) = v7;
  v11 = (&async function pointer to dispatch thunk of MAGTextDetectionService.detectText(fromPixelBufferWrapper:) + async function pointer to dispatch thunk of MAGTextDetectionService.detectText(fromPixelBufferWrapper:));
  v8 = swift_task_alloc();
  *(v0 + 240) = v8;
  *v8 = v0;
  v8[1] = sub_10001A9C8;

  return v11(v7);
}

uint64_t sub_10001A9C8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 248) = v1;

  if (v1)
  {
    v5 = v4[23];
    v6 = v4[24];
    v7 = sub_10001AD6C;
  }

  else
  {
    v4[32] = a1;
    v5 = v4[23];
    v6 = v4[24];
    v7 = sub_10001AB30;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_10001AB30()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 216);
  v3 = *(v0 + 168);
  v4 = *(v0 + 152);
  v5 = *(v0 + 160);
  v6 = *(v0 + 136);

  v7 = detectTextBlocks(forDocument:)();
  v8 = *(v6 + 5);
  *(v0 + 16) = *(v6 + 24);
  *(v0 + 32) = v8;
  *(v0 + 120) = v7;
  sub_10000D3B8(&qword_10004FEA0, &qword_100038F88);
  Binding.wrappedValue.setter();
  v9 = *v6;
  *(v0 + 56) = *(v6 + 16);
  *(v0 + 40) = v9;
  *(v0 + 58) = 1;
  sub_10000D3B8(&qword_10004FEA8, &qword_100038F90);
  Binding.wrappedValue.setter();
  *(v0 + 64) = v6[3];
  *(v0 + 96) = v6[3];
  *(v0 + 59) = 0;
  *(v0 + 112) = *(v0 + 72);
  sub_10001DA50(v0 + 112, v0 + 128, &qword_10004FE90, &qword_100038F68);
  sub_10000D3B8(&qword_10004FE00, &qword_100038F00);
  State.wrappedValue.setter();

  sub_10000E35C(v0 + 64, &qword_10004FE00, &qword_100038F00);
  (*(v5 + 8))(v3, v4);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_10001ACF4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10001AD6C()
{
  v1 = v0[27];
  v2 = v0[21];
  v3 = v0[19];
  v4 = v0[20];

  (*(v4 + 8))(v2, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_10001AE10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_10000D3B8(&unk_10004F870, &qword_100038BF0);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_10001DA50(a3, v22 - v9, &unk_10004F870, &qword_100038BF0);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_10000E35C(v10, &unk_10004F870, &qword_100038BF0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;

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

      sub_10000E35C(a3, &unk_10004F870, &qword_100038BF0);

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

  sub_10000E35C(a3, &unk_10004F870, &qword_100038BF0);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_10001B0BC@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Image.ResizingMode();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000D3B8(&qword_10004FE60, &qword_100038F48);
  __chkstk_darwin(v6 - 8);
  v8 = &v28 - v7;
  v9 = sub_10000D3B8(&qword_10004FE50, &qword_100038F40);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v28 - v11;
  Image.init(_internalSystemName:)();
  (*(v3 + 104))(v5, enum case for Image.ResizingMode.stretch(_:), v2);
  v13 = Image.resizable(capInsets:resizingMode:)();

  (*(v3 + 8))(v5, v2);
  v28 = v13;
  LOWORD(v29) = 1;
  sub_10000D3B8(&qword_10004FE70, &qword_100038F50);
  sub_10001BBB8();
  View.accessibilityHidden(_:)();

  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10000E284(v8, v12, &qword_10004FE60, &qword_100038F48);
  v14 = &v12[*(v10 + 44)];
  v15 = v33;
  *(v14 + 4) = v32;
  *(v14 + 5) = v15;
  *(v14 + 6) = v34;
  v16 = v29;
  *v14 = v28;
  *(v14 + 1) = v16;
  v17 = v31;
  *(v14 + 2) = v30;
  *(v14 + 3) = v17;
  LOBYTE(v2) = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  sub_10000E284(v12, a1, &qword_10004FE50, &qword_100038F40);
  result = sub_10000D3B8(&qword_10004FE38, &qword_100038F38);
  v27 = a1 + *(result + 36);
  *v27 = v2;
  *(v27 + 8) = v19;
  *(v27 + 16) = v21;
  *(v27 + 24) = v23;
  *(v27 + 32) = v25;
  *(v27 + 40) = 0;
  return result;
}

unint64_t sub_10001B458()
{
  result = qword_10004FD70;
  if (!qword_10004FD70)
  {
    sub_10000E208(&qword_10004FD30, &qword_100038DF8);
    sub_10001DBE8(&qword_10004FD78, &qword_10004FD28, &qword_100038DF0, &protocol conformance descriptor for Button<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004FD70);
  }

  return result;
}

uint64_t sub_10001B510(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10001B590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t sub_10001B6A0@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tint.getter();
  *a1 = result;
  return result;
}

unint64_t sub_10001B6F8()
{
  result = qword_10004FD90;
  if (!qword_10004FD90)
  {
    sub_10000E208(&qword_10004FD50, &qword_100038E18);
    sub_10001B7B0();
    sub_10001DBE8(&qword_10004FDA8, &qword_10004FDB0, &qword_100038E90, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004FD90);
  }

  return result;
}

unint64_t sub_10001B7B0()
{
  result = qword_10004FD98;
  if (!qword_10004FD98)
  {
    sub_10000E208(&qword_10004FD48, &qword_100038E10);
    sub_10000E208(&qword_10004FD38, &qword_100038E00);
    type metadata accessor for BorderedProminentButtonStyle();
    sub_10001C6B4(&qword_10004FD68, &qword_10004FD38, &qword_100038E00, sub_10001B458);
    sub_10001B510(&qword_10004FD80, &type metadata accessor for BorderedProminentButtonStyle, &protocol conformance descriptor for BorderedProminentButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_10001DBE8(&qword_10004FDA0, &qword_10004FD88, &qword_100038E28, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004FD98);
  }

  return result;
}

unint64_t sub_10001B928(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10004FDB8;
  if (!qword_10004FDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004FDB8);
  }

  return result;
}

uint64_t sub_10001B97C@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10001B9D4()
{

  return _swift_deallocObject(v0, 88, 7);
}

unint64_t sub_10001BA74()
{
  result = qword_10004FE40;
  if (!qword_10004FE40)
  {
    sub_10000E208(&qword_10004FE38, &qword_100038F38);
    sub_10001BB00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004FE40);
  }

  return result;
}

unint64_t sub_10001BB00()
{
  result = qword_10004FE48;
  if (!qword_10004FE48)
  {
    sub_10000E208(&qword_10004FE50, &qword_100038F40);
    sub_10001C5BC(&qword_10004FE58, &qword_10004FE60, &qword_100038F48, sub_10001BBB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004FE48);
  }

  return result;
}

unint64_t sub_10001BBB8()
{
  result = qword_10004FE68;
  if (!qword_10004FE68)
  {
    sub_10000E208(&qword_10004FE70, &qword_100038F50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004FE68);
  }

  return result;
}

uint64_t sub_10001BC3C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_10001BC4C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_10001BC5C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_10001BCC4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000DDD4;

  return sub_10001A448(a1, v4, v5, v1 + 32);
}

uint64_t sub_10001BD74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10001BDDC()
{
  v1 = (type metadata accessor for DetectionButton(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;

  sub_10001BEEC(*(v5 + 32), *(v5 + 40));
  v6 = v1[9];
  v7 = type metadata accessor for Control();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

uint64_t sub_10001BEF4()
{
  v1 = *(type metadata accessor for DetectionButton(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_100017AD8(v2);
}

unint64_t sub_10001BF88()
{
  result = qword_10004FEE0;
  if (!qword_10004FEE0)
  {
    sub_10000E208(&qword_10004FED8, &qword_100038FC0);
    sub_10001C014();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004FEE0);
  }

  return result;
}

unint64_t sub_10001C014()
{
  result = qword_10004FEE8;
  if (!qword_10004FEE8)
  {
    sub_10000E208(&qword_10004FEF0, &qword_100038FC8);
    sub_10001BBB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004FEE8);
  }

  return result;
}

unint64_t sub_10001C0A0()
{
  result = qword_10004FF00;
  if (!qword_10004FF00)
  {
    sub_10000E208(&qword_10004FEC8, &qword_100038FB0);
    sub_10001C158();
    sub_10001DBE8(&qword_10004FF18, &qword_10004FF20, &qword_100038FD0, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004FF00);
  }

  return result;
}

unint64_t sub_10001C158()
{
  result = qword_10004FF08;
  if (!qword_10004FF08)
  {
    sub_10000E208(&qword_10004FEC0, &qword_100038FA8);
    sub_10001C210();
    sub_10001DBE8(&qword_10004FDA8, &qword_10004FDB0, &qword_100038E90, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004FF08);
  }

  return result;
}

unint64_t sub_10001C210()
{
  result = qword_10004FF10;
  if (!qword_10004FF10)
  {
    sub_10000E208(&qword_10004FEB8, &qword_100038FA0);
    sub_10000E208(&qword_10004FEB0, &qword_100038F98);
    type metadata accessor for BorderedProminentButtonStyle();
    sub_10001DBE8(&qword_10004FEF8, &qword_10004FEB0, &qword_100038F98, &protocol conformance descriptor for Button<A>);
    sub_10001B510(&qword_10004FD80, &type metadata accessor for BorderedProminentButtonStyle, &protocol conformance descriptor for BorderedProminentButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_10001DBE8(&qword_10004FDA0, &qword_10004FD88, &qword_100038E28, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004FF10);
  }

  return result;
}

uint64_t sub_10001C5BC(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000E208(a2, a3);
    a4();
    sub_10001B510(&qword_10004FE78, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10001C6B4(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000E208(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10001C738()
{
  result = qword_10004FF40;
  if (!qword_10004FF40)
  {
    sub_10000E208(&qword_10004FDE8, &qword_100038EF0);
    sub_10000E208(&qword_10004FDD8, &qword_100038EE0);
    sub_10001DBE8(&qword_10004FDF8, &qword_10004FDD8, &qword_100038EE0, &protocol conformance descriptor for VStack<A>);
    swift_getOpaqueTypeConformance2();
    sub_10001B510(&qword_10004FE78, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004FF40);
  }

  return result;
}

uint64_t sub_10001C8E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10001C9C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000D3B8(&qword_10004FF70, &qword_100039250);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_10000D3B8(&qword_10004FF78, &qword_100039258);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 36));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_10001CAFC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_10000D3B8(&qword_10004FF70, &qword_100039250);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_10000D3B8(&qword_10004FF78, &qword_100039258);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 36)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  return v11(v12, a2, a2, v10);
}

void sub_10001CC1C(uint64_t a1)
{
  sub_10001CCF4(319);
  if (v1 <= 0x3F)
  {
    sub_10001305C(319);
    if (v2 <= 0x3F)
    {
      sub_10001CD4C();
      if (v3 <= 0x3F)
      {
        sub_10001CDA4();
        if (v4 <= 0x3F)
        {
          sub_10001CDF4(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10001CCF4(uint64_t a1)
{
  if (!qword_10004FFE8)
  {
    type metadata accessor for ColorScheme();
    v1 = type metadata accessor for Environment();
    if (!v2)
    {
      atomic_store(v1, &qword_10004FFE8);
    }
  }
}

void sub_10001CD4C()
{
  if (!qword_10004FFF0)
  {
    v0 = type metadata accessor for AccessibilityFocusState();
    if (!v1)
    {
      atomic_store(v0, &qword_10004FFF0);
    }
  }
}

void sub_10001CDA4()
{
  if (!qword_10004FFF8)
  {
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_10004FFF8);
    }
  }
}

void sub_10001CDF4(uint64_t a1)
{
  if (!qword_100050000)
  {
    sub_10000E208(&qword_10004FF68, &qword_100039248);
    v1 = type metadata accessor for State();
    if (!v2)
    {
      atomic_store(v1, &qword_100050000);
    }
  }
}

unint64_t sub_10001CE5C()
{
  result = qword_100050048;
  if (!qword_100050048)
  {
    sub_10000E208(&qword_10004FF58, &qword_100039208);
    sub_10001CF14();
    sub_10001DBE8(&qword_100050060, &qword_100050068, &qword_100039278, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100050048);
  }

  return result;
}

unint64_t sub_10001CF14()
{
  result = qword_100050050;
  if (!qword_100050050)
  {
    sub_10000E208(&qword_10004FF50, &qword_100039200);
    sub_10001B510(&qword_100050058, type metadata accessor for LiveRecognitionView, &unk_100039290);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100050050);
  }

  return result;
}

unint64_t sub_10001CFEC()
{
  result = qword_100050098;
  if (!qword_100050098)
  {
    sub_10000E208(&qword_100050088, &qword_100039300);
    v3 = sub_10001DBE8(&qword_1000500A0, &qword_1000500A8, &qword_100039310, &protocol conformance descriptor for VStack<A>);
    sub_10001D0A4(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100050098);
  }

  return result;
}

unint64_t sub_10001D0A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000500B0;
  if (!qword_1000500B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000500B0);
  }

  return result;
}

uint64_t sub_10001D0F8()
{
  v1 = type metadata accessor for LiveRecognitionView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;
  sub_10000D3B8(&qword_10004FF60, &qword_100039240);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for ColorScheme();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  sub_10001BEEC(*(v5 + *(v1 + 20)), *(v5 + *(v1 + 20) + 8));
  v7 = v5 + *(v1 + 24);
  v8 = type metadata accessor for AccessibilityTechnologies();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v7, 1, v8))
  {
    (*(v9 + 8))(v7, v8);
  }

  sub_10000D3B8(&qword_10004FF78, &qword_100039258);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10001D328()
{
  v2 = *(type metadata accessor for LiveRecognitionView(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000DDD4;

  return sub_100016A38(v4, v5, v0 + v3);
}

uint64_t sub_10001D41C()
{
  v1 = type metadata accessor for LiveRecognitionView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  sub_10000D3B8(&qword_10004FF60, &qword_100039240);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for ColorScheme();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  sub_10001BEEC(*(v5 + *(v1 + 20)), *(v5 + *(v1 + 20) + 8));
  v7 = v5 + *(v1 + 24);
  v8 = type metadata accessor for AccessibilityTechnologies();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v7, 1, v8))
  {
    (*(v9 + 8))(v7, v8);
  }

  sub_10000D3B8(&qword_10004FF78, &qword_100039258);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10001D65C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for LiveRecognitionView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_10001D6D0(char *a1)
{
  v3 = *(type metadata accessor for LiveRecognitionView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100017288(a1, v4);
}

unint64_t sub_10001D740()
{
  result = qword_100050138;
  if (!qword_100050138)
  {
    sub_10000E208(&qword_100050100, &qword_100039368);
    sub_10001B510(&qword_100050140, &type metadata accessor for MAGDetectedTextView, &protocol conformance descriptor for MAGDetectedTextView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100050138);
  }

  return result;
}

unint64_t sub_10001D7FC()
{
  result = qword_100050150;
  if (!qword_100050150)
  {
    sub_10000E208(&qword_100050128, &qword_100039390);
    sub_10001D8B4();
    sub_10001DBE8(&qword_100050180, &qword_100050130, &qword_100039398, &protocol conformance descriptor for _InsettableBackgroundShapeModifier<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100050150);
  }

  return result;
}

unint64_t sub_10001D8B4()
{
  result = qword_100050158;
  if (!qword_100050158)
  {
    sub_10000E208(&qword_100050120, &qword_100039388);
    sub_10001DBE8(&qword_100050160, &qword_100050168, &qword_1000393A0, &protocol conformance descriptor for ZStack<A>);
    sub_10001DBE8(&qword_100050170, &qword_100050178, &qword_1000393A8, &protocol conformance descriptor for _PreferenceWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100050158);
  }

  return result;
}

unint64_t sub_10001D998()
{
  result = qword_1000501C0;
  if (!qword_1000501C0)
  {
    sub_10000E208(&qword_1000501B8, &qword_1000393E0);
    sub_10001DBE8(&qword_1000501C8, &qword_1000501D0, &qword_1000393E8, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000501C0);
  }

  return result;
}

uint64_t sub_10001DA50(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000D3B8(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10001DB40(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10001DBE8(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_10000E208(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10001DC5C(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = __CocoaSet.startIndex.getter();
    v5 = v4;
    v6 = __CocoaSet.endIndex.getter();
    v8 = v7;
    v9 = static __CocoaSet.Index.== infix(_:_:)();
    sub_100028E70(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_100028E70(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v3 = _HashTable.startBucket.getter();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_100027DEC(v3, v5, v2 != 0, a1);
  v12 = v11;
  sub_100028E70(v3, v5, v2 != 0);
  return v12;
}

uint64_t sub_10001DD78(uint64_t a1)
{
  v2 = _HashTable.startBucket.getter();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v4 = sub_100028010(v2, *(a1 + 36), 0, a1);

  return v4;
}

Swift::Int sub_10001DE08()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10001DE7C(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_10001DEC0(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_10001DF80, 0, 0);
}

uint64_t sub_10001DF80()
{
  *(v0 + 48) = OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_angelDetectionManager;
  type metadata accessor for MainActor();
  *(v0 + 56) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10001E020, v2, v1);
}

uint64_t sub_10001E020()
{
  v1 = v0[6];
  v2 = v0[2];

  v3 = *(v2 + v1);
  v0[8] = v3;
  v4 = v3;

  return _swift_task_switch(sub_10001E09C, 0, 0);
}

uint64_t sub_10001E09C()
{
  v1 = v0[8];
  v0[9] = *&v1[OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_videoCaptioningService];

  v4 = (&async function pointer to dispatch thunk of MAGVideoCaptioningService.prewarm() + async function pointer to dispatch thunk of MAGVideoCaptioningService.prewarm());
  v2 = swift_task_alloc();
  v0[10] = v2;
  *v2 = v0;
  v2[1] = sub_10001E164;

  return v4();
}

uint64_t sub_10001E164()
{
  v2 = *v1;
  *(v2 + 88) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10001E2A8, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_10001E2A8()
{

  static AXLog.magvideoCaptionService.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Video caption service prewarm() failed: %@", v3, 0xCu);
    sub_100028E94(v4);
  }

  else
  {
  }

  (*(v0[4] + 8))(v0[5], v0[3]);

  v6 = v0[1];

  return v6();
}

uint64_t sub_10001E574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[23] = a4;
  v5 = type metadata accessor for MAGSimulatedEvent();
  v4[24] = v5;
  v4[25] = *(v5 - 8);
  v4[26] = swift_task_alloc();
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v4[27] = v6;
  v4[28] = *(v6 - 8);
  v4[29] = swift_task_alloc();
  v7 = type metadata accessor for DispatchQoS();
  v4[30] = v7;
  v4[31] = *(v7 - 8);
  v4[32] = swift_task_alloc();
  v8 = type metadata accessor for DispatchTime();
  v4[33] = v8;
  v4[34] = *(v8 - 8);
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  v4[37] = v9;
  v4[38] = *(v9 - 8);
  v4[39] = swift_task_alloc();
  v10 = type metadata accessor for MAGAngelClientRequest(0);
  v4[40] = v10;
  v4[41] = *(v10 - 8);
  v4[42] = swift_task_alloc();
  v4[43] = swift_task_alloc();
  v4[44] = swift_task_alloc();
  v4[45] = swift_task_alloc();
  v4[46] = swift_task_alloc();
  sub_10000D3B8(&qword_100050478, &unk_1000397B0);
  v4[47] = swift_task_alloc();
  v11 = sub_10000D3B8(&qword_100050480, &qword_100038948);
  v4[48] = v11;
  v4[49] = *(v11 - 8);
  v4[50] = swift_task_alloc();
  v12 = sub_10000D3B8(&qword_100050488, &qword_1000397C0);
  v4[51] = v12;
  v4[52] = *(v12 - 8);
  v4[53] = swift_task_alloc();
  v4[54] = type metadata accessor for MainActor();
  v4[55] = static MainActor.shared.getter();
  v14 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[56] = v14;
  v4[57] = v13;

  return _swift_task_switch(sub_10001E97C, v14, v13);
}

uint64_t sub_10001E97C()
{
  if (qword_10004F568 != -1)
  {
    swift_once();
  }

  v2 = v0[49];
  v1 = v0[50];
  v3 = v0[48];
  (*(v2 + 16))(v1, qword_100050D78 + OBJC_IVAR____TtC14MagnifierAngel27MAGAngelClientRequestStream_stream, v3);
  AsyncStream.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  v4 = OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_outputEngine;
  v0[58] = OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_startedLiveRecognition;
  v0[59] = v4;
  v5 = OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_sceneRequestFrameCheckDelay;
  v0[60] = OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_generatingImageCaption;
  v0[61] = v5;
  v6 = OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_sceneActive;
  v0[62] = OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_angelPreferences;
  v0[63] = v6;
  v0[64] = OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_figCameraViewFinder;
  swift_beginAccess();
  v7 = static MainActor.shared.getter();
  v0[65] = v7;
  v8 = swift_task_alloc();
  v0[66] = v8;
  *v8 = v0;
  v8[1] = sub_10001EB3C;
  v9 = v0[51];
  v10 = v0[47];

  return AsyncStream.Iterator.next(isolation:)(v10, v7, &protocol witness table for MainActor, v9);
}

uint64_t sub_10001EB3C()
{
  v1 = *v0;

  v2 = *(v1 + 456);
  v3 = *(v1 + 448);

  return _swift_task_switch(sub_10001EC80, v3, v2);
}

uint64_t sub_10001EC80()
{
  v85 = v0;
  v1 = v0[47];
  if ((*(v0[41] + 48))(v1, 1, v0[40]) == 1)
  {
    (*(v0[52] + 8))(v0[53], v0[51]);

    v2 = v0[1];

    return v2();
  }

  v4 = v0[45];
  v5 = v0[46];
  sub_1000293E4(v1, v5);
  static AXLog.magangel.getter();
  sub_10000DF00(v5, v4);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[45];
  if (v8)
  {
    v10 = v0[44];
    v82 = v0[39];
    v12 = v0[37];
    v11 = v0[38];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v84 = v14;
    *v13 = 136315138;
    sub_10000DF00(v9, v10);
    v15 = String.init<A>(describing:)();
    v17 = v16;
    sub_10000DF64(v9);
    v18 = sub_100034404(v15, v17, &v84);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v6, v7, "App delegate did receive client request: %s", v13, 0xCu);
    sub_100029000(v14);

    (*(v11 + 8))(v82, v12);
  }

  else
  {
    v20 = v0[38];
    v19 = v0[39];
    v21 = v0[37];

    sub_10000DF64(v9);
    (*(v20 + 8))(v19, v21);
  }

  v22 = v0[43];
  v23 = v0[24];
  v24 = v0[25];
  sub_10000DF00(v0[46], v22);
  v25 = *(v24 + 48);
  v0[67] = v25;
  v0[68] = (v24 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v26 = v25(v22, 13, v23);
  if (v26 <= 0xC && ((1 << v26) & 0x101C) != 0)
  {
LABEL_10:
    v27 = v0[42];
    v28 = v0[24];
    sub_10000DF00(v0[46], v27);
    switch(v25(v27, 13, v28))
    {
      case 1u:
        sub_100020BC8();
        break;
      case 2u:
      case 3u:
        sub_1000227C0();
        break;
      case 4u:
        v0[70] = static MainActor.shared.getter();
        v44 = dispatch thunk of Actor.unownedExecutor.getter();
        v0[71] = v44;
        v0[72] = v43;

        return _swift_task_switch(sub_10002019C, v44, v43);
      case 5u:
        swift_getKeyPath();
        swift_getKeyPath();

        v52 = static Published.subscript.modify();
        *v53 = !*v53;
        v52(v0 + 12, 0);

        if (sub_100024F2C())
        {
          v54 = v0[63];
          v55 = v0[23];
          sub_100022F10();
          if ((*(v55 + v54) & 1) == 0)
          {
            sub_100020BC8();
          }
        }

        sub_100024394();
        sub_100025194();
        break;
      case 6u:
        sub_100021024();
        break;
      case 7u:
        sub_1000211EC();
        break;
      case 8u:
        v56 = &unk_100039550;
        v57 = &unk_100039578;
        v58 = sub_100002AD4;
        v59 = &dispatch thunk of MAGPulseFeedbackProcessor.doorToneGenerator.getter;
        goto LABEL_38;
      case 9u:
        swift_getKeyPath();
        swift_getKeyPath();

        v45 = static Published.subscript.modify();
        *v46 = !*v46;
        v45(v0 + 8, 0);

        sub_100024394();
        sub_100025194();
        if ((sub_100024F2C() & 1) != 0 && (*(v0[23] + v0[63]) & 1) == 0)
        {
          sub_100020BC8();
        }

        v47 = [objc_opt_self() shared];
        v48 = [v47 downloadManager];

        [v48 downloadImageCaptionAssets];
        break;
      case 0xAu:
        v56 = &unk_100039598;
        v57 = &unk_1000395C0;
        v58 = sub_100002E50;
        v59 = &dispatch thunk of MAGPulseFeedbackProcessor.pointSpeakDistanceToneGenerator.getter;
LABEL_38:
        sub_100021408(v56, v57, v58, v59);
        break;
      case 0xBu:
        v33 = v0[60];
        v34 = v0[23];
        if ((*(v34 + v33) & 1) == 0)
        {
          v36 = v0[35];
          v35 = v0[36];
          v37 = v0[33];
          v38 = v0[34];
          v39 = v0[32];
          v81 = v0[31];
          v83 = v0[30];
          v79 = v0[29];
          v80 = v0[28];
          v78 = v0[27];
          *(v34 + v33) = 1;
          sub_10000E844(0, &qword_100050420, OS_dispatch_queue_ptr);
          v77 = static OS_dispatch_queue.main.getter();
          static DispatchTime.now()();
          + infix(_:_:)();
          v40 = *(v38 + 8);
          v40(v36, v37);
          v41 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v0[6] = sub_100029448;
          v0[7] = v41;
          v0[2] = _NSConcreteStackBlock;
          v0[3] = 1107296256;
          v0[4] = sub_10000288C;
          v0[5] = &unk_10004A710;
          v42 = _Block_copy(v0 + 2);

          static DispatchQoS.unspecified.getter();
          v0[22] = &_swiftEmptyArrayStorage;
          sub_10002904C(&qword_10004F880, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
          sub_10000D3B8(&unk_100050430, &unk_100038570);
          sub_10000E1A4();
          dispatch thunk of SetAlgebra.init<A>(_:)();
          OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
          _Block_release(v42);

          (*(v80 + 8))(v79, v78);
          (*(v81 + 8))(v39, v83);
          v40(v35, v37);
        }

        break;
      case 0xCu:

        dispatch thunk of MAGOutputEngine.stopSpeechImmediately()();

        dispatch thunk of MAGOutputEngine.clearEventQueue()();

        break;
      case 0xDu:
        sub_1000219A0();
        break;
      default:
        v50 = v0[25];
        v49 = v0[26];
        v51 = v0[24];
        (*(v50 + 32))(v49, v0[42], v51);
        sub_100022134(v49);
        (*(v50 + 8))(v49, v51);
        break;
    }

    v60 = v0[64];
    v61 = v0[23];
    if (*(v61 + v60) || *(v61 + v0[58]) != 1)
    {
      v72 = v0[46];
    }

    else
    {
      v62 = [objc_allocWithZone(FigCameraViewfinder) init];
      v63 = *(v61 + v60);
      *(v61 + v60) = v62;

      v64 = *(v61 + v60);
      if (v64)
      {
        v65 = v0[23];
        sub_10000E844(0, &qword_100050420, OS_dispatch_queue_ptr);
        v66 = v64;
        v67 = static OS_dispatch_queue.main.getter();
        [v66 setDelegate:v65 queue:v67];
      }

      v68 = v0[64];
      v69 = v0[23];
      swift_beginAccess();
      v70 = *(v69 + v68);
      v71 = v0[46];
      if (!v70)
      {
        sub_10000DF64(v0[46]);
        swift_endAccess();
        goto LABEL_47;
      }

      swift_endAccess();
      [v70 startWithOptions:0];
      v72 = v71;
    }

    sub_10000DF64(v72);
LABEL_47:
    v73 = static MainActor.shared.getter();
    v0[65] = v73;
    v74 = swift_task_alloc();
    v0[66] = v74;
    *v74 = v0;
    v74[1] = sub_10001EB3C;
    v75 = v0[51];
    v76 = v0[47];

    return AsyncStream.Iterator.next(isolation:)(v76, v73, &protocol witness table for MainActor, v75);
  }

  v29 = v0[58];
  v30 = v0[23];
  sub_10000DF64(v0[43]);
  if (*(v30 + v29) == 1)
  {
    v25 = v0[67];
    goto LABEL_10;
  }

  *(v0[23] + v0[58]) = 1;
  v31 = swift_task_alloc();
  v0[69] = v31;
  *v31 = v0;
  v31[1] = sub_10001F854;
  v32 = v0[46];

  return sub_100020640(v32);
}

uint64_t sub_10001F854()
{
  v1 = *v0;

  v2 = *(v1 + 456);
  v3 = *(v1 + 448);

  return _swift_task_switch(sub_10001F974, v3, v2);
}

uint64_t sub_10001F974()
{
  v1 = v0[67];
  v2 = v0[42];
  v3 = v0[24];
  sub_10000DF00(v0[46], v2);
  switch(v1(v2, 13, v3))
  {
    case 1u:
      sub_100020BC8();
      break;
    case 2u:
    case 3u:
      sub_1000227C0();
      break;
    case 4u:
      v0[70] = static MainActor.shared.getter();
      v15 = dispatch thunk of Actor.unownedExecutor.getter();
      v0[71] = v15;
      v0[72] = v14;

      return _swift_task_switch(sub_10002019C, v15, v14);
    case 5u:
      swift_getKeyPath();
      swift_getKeyPath();

      v23 = static Published.subscript.modify();
      *v24 = !*v24;
      v23(v0 + 12, 0);

      if (sub_100024F2C())
      {
        v25 = v0[63];
        v26 = v0[23];
        sub_100022F10();
        if ((*(v26 + v25) & 1) == 0)
        {
          sub_100020BC8();
        }
      }

      sub_100024394();
      sub_100025194();
      break;
    case 6u:
      sub_100021024();
      break;
    case 7u:
      sub_1000211EC();
      break;
    case 8u:
      v27 = &unk_100039550;
      v28 = &unk_100039578;
      v29 = sub_100002AD4;
      v30 = &dispatch thunk of MAGPulseFeedbackProcessor.doorToneGenerator.getter;
      goto LABEL_24;
    case 9u:
      swift_getKeyPath();
      swift_getKeyPath();

      v16 = static Published.subscript.modify();
      *v17 = !*v17;
      v16(v0 + 8, 0);

      sub_100024394();
      sub_100025194();
      if ((sub_100024F2C() & 1) != 0 && (*(v0[23] + v0[63]) & 1) == 0)
      {
        sub_100020BC8();
      }

      v18 = [objc_opt_self() shared];
      v19 = [v18 downloadManager];

      [v19 downloadImageCaptionAssets];
      break;
    case 0xAu:
      v27 = &unk_100039598;
      v28 = &unk_1000395C0;
      v29 = sub_100002E50;
      v30 = &dispatch thunk of MAGPulseFeedbackProcessor.pointSpeakDistanceToneGenerator.getter;
LABEL_24:
      sub_100021408(v27, v28, v29, v30);
      break;
    case 0xBu:
      v4 = v0[60];
      v5 = v0[23];
      if ((*(v5 + v4) & 1) == 0)
      {
        v7 = v0[35];
        v6 = v0[36];
        v8 = v0[33];
        v9 = v0[34];
        v10 = v0[32];
        v53 = v0[31];
        v54 = v0[30];
        v51 = v0[29];
        v52 = v0[28];
        v50 = v0[27];
        *(v5 + v4) = 1;
        sub_10000E844(0, &qword_100050420, OS_dispatch_queue_ptr);
        v49 = static OS_dispatch_queue.main.getter();
        static DispatchTime.now()();
        + infix(_:_:)();
        v11 = *(v9 + 8);
        v11(v7, v8);
        v12 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v0[6] = sub_100029448;
        v0[7] = v12;
        v0[2] = _NSConcreteStackBlock;
        v0[3] = 1107296256;
        v0[4] = sub_10000288C;
        v0[5] = &unk_10004A710;
        v13 = _Block_copy(v0 + 2);

        static DispatchQoS.unspecified.getter();
        v0[22] = &_swiftEmptyArrayStorage;
        sub_10002904C(&qword_10004F880, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_10000D3B8(&unk_100050430, &unk_100038570);
        sub_10000E1A4();
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
        _Block_release(v13);

        (*(v52 + 8))(v51, v50);
        (*(v53 + 8))(v10, v54);
        v11(v6, v8);
      }

      break;
    case 0xCu:

      dispatch thunk of MAGOutputEngine.stopSpeechImmediately()();

      dispatch thunk of MAGOutputEngine.clearEventQueue()();

      break;
    case 0xDu:
      sub_1000219A0();
      break;
    default:
      v21 = v0[25];
      v20 = v0[26];
      v22 = v0[24];
      (*(v21 + 32))(v20, v0[42], v22);
      sub_100022134(v20);
      (*(v21 + 8))(v20, v22);
      break;
  }

  v31 = v0[64];
  v32 = v0[23];
  if (*(v32 + v31) || *(v32 + v0[58]) != 1)
  {
    v43 = v0[46];
  }

  else
  {
    v33 = [objc_allocWithZone(FigCameraViewfinder) init];
    v34 = *(v32 + v31);
    *(v32 + v31) = v33;

    v35 = *(v32 + v31);
    if (v35)
    {
      v36 = v0[23];
      sub_10000E844(0, &qword_100050420, OS_dispatch_queue_ptr);
      v37 = v35;
      v38 = static OS_dispatch_queue.main.getter();
      [v37 setDelegate:v36 queue:v38];
    }

    v39 = v0[64];
    v40 = v0[23];
    swift_beginAccess();
    v41 = *(v40 + v39);
    v42 = v0[46];
    if (!v41)
    {
      sub_10000DF64(v0[46]);
      swift_endAccess();
      goto LABEL_33;
    }

    swift_endAccess();
    [v41 startWithOptions:0];
    v43 = v42;
  }

  sub_10000DF64(v43);
LABEL_33:
  v44 = static MainActor.shared.getter();
  v0[65] = v44;
  v45 = swift_task_alloc();
  v0[66] = v45;
  *v45 = v0;
  v45[1] = sub_10001EB3C;
  v46 = v0[51];
  v47 = v0[47];

  return AsyncStream.Iterator.next(isolation:)(v47, v44, &protocol witness table for MainActor, v46);
}

uint64_t sub_10002019C()
{
  v1 = v0[23];
  if (*(v1 + v0[63]) == 1)
  {

    sub_1000227C0();
LABEL_5:
    v2 = v0[56];
    v3 = v0[57];

    return _swift_task_switch(sub_1000202C8, v2, v3);
  }

  if (*(v1 + v0[58]))
  {

    sub_100020BC8();
    goto LABEL_5;
  }

  (*(v0[25] + 56))(v0[44], 1, 13, v0[24]);
  v4 = swift_task_alloc();
  v0[73] = v4;
  *v4 = v0;
  v4[1] = sub_100020490;
  v5 = v0[44];

  return sub_100020640(v5);
}

uint64_t sub_1000202C8()
{
  v1 = v0[64];
  v2 = v0[23];
  if (*(v2 + v1) || *(v2 + v0[58]) != 1)
  {
    v13 = v0[46];
    goto LABEL_8;
  }

  v3 = [objc_allocWithZone(FigCameraViewfinder) init];
  v4 = *(v2 + v1);
  *(v2 + v1) = v3;

  v5 = *(v2 + v1);
  if (v5)
  {
    v6 = v0[23];
    sub_10000E844(0, &qword_100050420, OS_dispatch_queue_ptr);
    v7 = v5;
    v8 = static OS_dispatch_queue.main.getter();
    [v7 setDelegate:v6 queue:v8];
  }

  v9 = v0[64];
  v10 = v0[23];
  swift_beginAccess();
  v11 = *(v10 + v9);
  v12 = v0[46];
  if (v11)
  {
    swift_endAccess();
    [v11 startWithOptions:0];
    v13 = v12;
LABEL_8:
    sub_10000DF64(v13);
    goto LABEL_9;
  }

  sub_10000DF64(v0[46]);
  swift_endAccess();
LABEL_9:
  v14 = static MainActor.shared.getter();
  v0[65] = v14;
  v15 = swift_task_alloc();
  v0[66] = v15;
  *v15 = v0;
  v15[1] = sub_10001EB3C;
  v16 = v0[51];
  v17 = v0[47];

  return AsyncStream.Iterator.next(isolation:)(v17, v14, &protocol witness table for MainActor, v16);
}

uint64_t sub_100020490()
{
  v1 = *v0;
  v2 = *(*v0 + 352);

  sub_10000DF64(v2);
  v3 = *(v1 + 576);
  v4 = *(v1 + 568);

  return _swift_task_switch(sub_1000205D4, v4, v3);
}

uint64_t sub_1000205D4()
{

  sub_100020BC8();
  v1 = *(v0 + 448);
  v2 = *(v0 + 456);

  return _swift_task_switch(sub_1000202C8, v1, v2);
}

uint64_t sub_100020640(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = type metadata accessor for Date();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  type metadata accessor for MAGAngelClientRequest(0);
  v2[10] = swift_task_alloc();
  v4 = type metadata accessor for MAGOutputEventEnvironment();
  v2[11] = v4;
  v2[12] = *(v4 - 8);
  v2[13] = swift_task_alloc();
  v5 = type metadata accessor for MAGOutputEventSource();
  v2[14] = v5;
  v2[15] = *(v5 - 8);
  v2[16] = swift_task_alloc();
  v6 = type metadata accessor for MAGOutputEvent();
  v2[17] = v6;
  v2[18] = *(v6 - 8);
  v2[19] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[20] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100020874, v8, v7);
}

uint64_t sub_100020874()
{

  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 liveRecognitionActive];

  if ((v2 & 1) == 0)
  {
    v4 = v0[18];
    v3 = v0[19];
    v5 = v0[16];
    v7 = v0[14];
    v6 = v0[15];
    v8 = v0[12];
    v9 = v0[13];
    v10 = v0[11];
    v24 = v0[10];
    v25 = v0[17];
    v23 = v0[5];
    MSNMonitorBeginException();
    (*(v6 + 104))(v5, enum case for MAGOutputEventSource.liveDetection(_:), v7);
    (*(v8 + 104))(v9, enum case for MAGOutputEventEnvironment.angel(_:), v10);

    static MAGOutputEvent.liveRecognitionStarted(source:environment:)();
    (*(v8 + 8))(v9, v10);
    (*(v6 + 8))(v5, v7);
    dispatch thunk of MAGOutputEngine.schedule(_:)();

    (*(v4 + 8))(v3, v25);
    sub_10000DF00(v23, v24);
    v11 = type metadata accessor for MAGSimulatedEvent();
    v12 = (*(*(v11 - 8) + 48))(v24, 13, v11);
    if (v12 > 0xC || ((1 << v12) & 0x100C) == 0)
    {
      sub_10000DF64(v0[10]);
      sub_100022F10();
    }

    v14 = v0[8];
    v13 = v0[9];
    v15 = v0[6];
    v16 = v0[7];
    v17 = [objc_opt_self() defaultCenter];
    [v17 addObserver:v15 selector:"checkForDeactivationReasonWithNotification:" name:UIAccessibilityVoiceOverStatusDidChangeNotification object:0];

    v18 = OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_angelDetectionManager;
    v19 = *(v15 + OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_angelDetectionManager);
    Date.init()();
    v20 = OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_lastAnnouncementTime;
    swift_beginAccess();
    (*(v14 + 40))(&v19[v20], v13, v16);
    swift_endAccess();

    *(*(v15 + v18) + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_torchStatus) = 0;

    dispatch thunk of MAGOutputEngine.isElligbleForNewEvent.setter();
  }

  v21 = v0[1];

  return v21();
}

void sub_100020BC8()
{
  v0 = type metadata accessor for Date();
  v25 = *(v0 - 8);
  v26 = v0;
  __chkstk_darwin(v0);
  v24 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  v6 = *(v22 - 8);
  __chkstk_darwin(v22);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_allocWithZone(SBSUIMagnifierSceneSpecification) init];
  v10 = [v9 uiSceneSessionRole];

  sub_10000E844(0, &qword_100050420, OS_dispatch_queue_ptr);
  v11 = static OS_dispatch_queue.main.getter();
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  aBlock[4] = sub_10002951C;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000288C;
  aBlock[3] = &unk_10004A788;
  v13 = _Block_copy(aBlock);
  v14 = v10;
  static DispatchQoS.unspecified.getter();
  v27 = &_swiftEmptyArrayStorage;
  sub_10002904C(&qword_10004F880, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000D3B8(&unk_100050430, &unk_100038570);
  sub_10000E1A4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v3 + 8))(v5, v2);
  (*(v6 + 8))(v8, v22);

  v15 = objc_opt_self();
  v16 = [v15 sharedInstance];
  [v16 setLiveRecognitionActive:1];

  v17 = v23;
  *(v23 + OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_sceneActive) = 1;
  v18 = [v15 sharedInstance];
  [v18 setLiveRecognitionOverlayOpen:1];

  v19 = *(v17 + OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_angelDetectionManager);
  v20 = v24;
  Date.init()();

  v21 = OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_angelLaunchTime;
  swift_beginAccess();
  (*(v25 + 40))(&v19[v21], v20, v26);
  swift_endAccess();
}

void sub_100021024()
{
  v1 = v0;
  swift_getKeyPath();
  swift_getKeyPath();

  v2 = static Published.subscript.modify();
  *v3 = !*v3;
  v2(v9, 0);

  if (sub_100024F2C())
  {
    sub_100022F10();
    if ((*(v0 + OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_sceneActive) & 1) == 0)
    {
      sub_100020BC8();
    }
  }

  v4 = OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_angelDetectionManager;
  v5 = *(v0 + OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_angelDetectionManager);
  sub_10000A284();

  sub_100024394();
  sub_100025194();
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  v6 = *(v1 + v4);
  if (v9[0] == 1)
  {
    v7 = v6;
    sub_100002E20();
  }

  else
  {
    v8 = *&v6[OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_pulseFeedbackProcessor];
    v7 = dispatch thunk of MAGPulseFeedbackProcessor.objectUnderstandingToneGenerator.getter();

    [v7 stopPulse];
  }
}

void sub_1000211EC()
{
  v1 = v0;
  swift_getKeyPath();
  swift_getKeyPath();

  v2 = static Published.subscript.modify();
  *v3 = !*v3;
  v2(v9, 0);

  if (sub_100024F2C())
  {
    sub_100022F10();
    if ((v0[OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_sceneActive] & 1) == 0)
    {
      sub_100020BC8();
    }
  }

  sub_100024394();
  sub_100025194();
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  v4 = *&v0[OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_angelDetectionManager];
  if (v9[0] == 1)
  {
    v5 = v4;
    sub_10000298C();

    *(swift_allocObject() + 16) = v1;

    v6 = v1;
    dispatch thunk of AXSerialQueue.async(_:)();
  }

  else
  {
    v7 = *&v4[OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_pulseFeedbackProcessor];
    v8 = dispatch thunk of MAGPulseFeedbackProcessor.toneGenerator.getter();

    [v8 stopPulse];
  }
}

void sub_100021408(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t (*a4)(void))
{
  swift_getKeyPath();
  swift_getKeyPath();

  v7 = static Published.subscript.modify();
  *v8 = !*v8;
  v7(v12, 0);

  if (sub_100024F2C())
  {
    sub_100022F10();
    if ((*(v4 + OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_sceneActive) & 1) == 0)
    {
      sub_100020BC8();
    }
  }

  sub_100024394();
  sub_100025194();
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  v9 = *(v4 + OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_angelDetectionManager);
  if (v12[0] == 1)
  {
    v10 = v9;
    a3();
  }

  else
  {
    v11 = *&v9[OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_pulseFeedbackProcessor];
    v10 = a4();

    [v10 stopPulse];
  }
}

uint64_t sub_1000215BC()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DispatchQoS();
  v5 = *(v24 - 8);
  __chkstk_darwin(v24);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchTime();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v10);
  v15 = &v20 - v14;
  if ((*(v0 + OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_generatingImageCaption) & 1) == 0)
  {
    *(v0 + OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_generatingImageCaption) = 1;
    v16 = result;
    v22 = result;
    sub_10000E844(0, &qword_100050420, OS_dispatch_queue_ptr);
    v23 = v5;
    v20 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    + infix(_:_:)();
    v21 = *(v9 + 8);
    v21(v12, v16);
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_100029664;
    aBlock[5] = v17;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000288C;
    aBlock[3] = &unk_10004A800;
    v18 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v25 = &_swiftEmptyArrayStorage;
    sub_10002904C(&qword_10004F880, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10000D3B8(&unk_100050430, &unk_100038570);
    sub_10000E1A4();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v19 = v20;
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v18);

    (*(v2 + 8))(v4, v1);
    (*(v23 + 8))(v7, v24);
    v21(v15, v22);
  }

  return result;
}

uint64_t sub_1000219A0()
{
  v1 = v0;
  swift_getKeyPath();
  swift_getKeyPath();

  v2 = static Published.subscript.modify();
  *v3 = !*v3;
  v2(v28, 0);

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  if (v28[0] == 1 && (v4 = [objc_opt_self() sharedInstance], v5 = objc_msgSend(v4, "liveRecognitionActivity"), v4, v5))
  {

    v6 = [v5 scenes];
    swift_getKeyPath();
    swift_getKeyPath();
    v28[0] = v6;
    static Published.subscript.setter();

    v7 = [v5 peopleDetection];
    swift_getKeyPath();
    swift_getKeyPath();
    v28[0] = v7;
    static Published.subscript.setter();

    v8 = [v5 doorsDetection];
    swift_getKeyPath();
    swift_getKeyPath();
    v28[0] = v8;
    static Published.subscript.setter();

    v9 = [v5 furnitureDetection];
    swift_getKeyPath();
    swift_getKeyPath();
    v28[0] = v9;
    static Published.subscript.setter();

    v10 = [v5 textDetection];
    swift_getKeyPath();
    swift_getKeyPath();
    v28[0] = v10;
    static Published.subscript.setter();

    v11 = [v5 pointAndSpeak];
    swift_getKeyPath();
    swift_getKeyPath();
    v28[0] = v11;
    static Published.subscript.setter();
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v28[0] = 0;

    static Published.subscript.setter();
    swift_getKeyPath();
    swift_getKeyPath();
    v28[0] = 0;

    static Published.subscript.setter();
    swift_getKeyPath();
    swift_getKeyPath();
    v28[0] = 0;

    static Published.subscript.setter();
    swift_getKeyPath();
    swift_getKeyPath();
    v28[0] = 0;

    static Published.subscript.setter();
    swift_getKeyPath();
    swift_getKeyPath();
    v28[0] = 0;

    static Published.subscript.setter();
    swift_getKeyPath();
    swift_getKeyPath();
    v28[0] = 0;

    static Published.subscript.setter();
  }

  if (sub_100024F2C())
  {
    sub_100022F10();
    if ((*(v1 + OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_sceneActive) & 1) == 0)
    {
      sub_100020BC8();
    }
  }

  v12 = objc_opt_self();
  v13 = [v12 sharedInstance];
  v14 = [v13 liveRecognitionActivities];

  if (v14)
  {
    sub_10000E844(0, &qword_100050490, AXVOLiveRecognitionActivity_ptr);
    v15 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v15 = 0;
  }

  v16 = [v12 sharedInstance];
  isa = [v16 liveRecognitionActivity];

  if (isa)
  {
    v18 = [(objc_class *)isa name];
    if (v18)
    {
      v19 = v18;
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      swift_getKeyPath();
      swift_getKeyPath();

      static Published.subscript.getter();

      [(objc_class *)isa setIsActive:v28[0]];
      v23 = [v12 sharedInstance];
      v24 = isa;
      [v23 setLiveRecognitionActivity:v24];

      if (v15)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v28 = v15;
        sub_100027764(v24, v20, v22, isUniquelyReferenced_nonNull_native);

        v15 = *v28;
      }

      else
      {
      }

      v26 = [v12 sharedInstance];
      if (v15)
      {
        sub_10000E844(0, &qword_100050490, AXVOLiveRecognitionActivity_ptr);
        isa = Dictionary._bridgeToObjectiveC()().super.isa;
      }

      else
      {
        isa = 0;
      }

      [v26 setLiveRecognitionActivities:isa];
    }
  }

  sub_100024394();
}